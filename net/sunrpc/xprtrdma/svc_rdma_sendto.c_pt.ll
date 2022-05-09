; ModuleID = '/llk/IR_all_yes/net/sunrpc/xprtrdma/svc_rdma_sendto.c_pt.bc'
source_filename = "../net/sunrpc/xprtrdma/svc_rdma_sendto.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.svc_rdma_send_ctxt = type { %struct.llist_node, %struct.rpc_rdma_cid, %struct.ib_send_wr, %struct.ib_cqe, %struct.completion, %struct.xdr_buf, %struct.xdr_stream, ptr, i32, [0 x %struct.ib_sge] }
%struct.llist_node = type { ptr }
%struct.rpc_rdma_cid = type { i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.167, ptr, i32, i32, i32, %union.anon.168 }
%union.anon.167 = type { i64 }
%union.anon.168 = type { i32 }
%struct.ib_cqe = type { ptr }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.ib_sge = type { i64, i32, i32 }
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
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.147, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.147 = type { %struct.work_struct }
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
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.170 }
%struct.anon.170 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.svc_rdma_pullup_data = type { ptr, i32, i32 }
%struct.svc_rdma_map_data = type { ptr, ptr }
%struct.svc_rdma_recv_ctxt = type { %struct.llist_node, %struct.list_head, %struct.ib_recv_wr, %struct.ib_cqe, %struct.rpc_rdma_cid, %struct.ib_sge, ptr, %struct.xdr_stream, i8, i32, i32, i32, i32, %struct.svc_rdma_pcl, %struct.svc_rdma_pcl, ptr, %struct.svc_rdma_pcl, %struct.svc_rdma_pcl }
%struct.ib_recv_wr = type { ptr, %union.anon.169, ptr, i32 }
%union.anon.169 = type { i64 }
%struct.svc_rdma_pcl = type { i32, %struct.list_head }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.svc_rdma_chunk = type { %struct.list_head, i32, i32, i32, i32, [0 x %struct.svc_rdma_segment] }
%struct.svc_rdma_segment = type { i32, i32, i64 }
%struct.ib_wc = type { %union.anon.145, i32, i32, i32, i32, ptr, %union.anon.146, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.145 = type { i64 }
%union.anon.146 = type { i32 }

@svcrdma_stat_sq_starve = external dso_local global %struct.percpu_counter, align 8
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"net/sunrpc/xprtrdma/svc_rdma_sendto.c\00", [58 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__tracepoint_svcrdma_wc_send = external dso_local global %struct.tracepoint, align 4
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/trace/events/rpcrdma.h\00", [33 x i8] zeroinitializer }, align 32
@trace_svcrdma_wc_send.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_svcrdma_wc_send_err = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_wc_send_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_wc_send_flush = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_wc_send_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_dma_unmap_page = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_dma_unmap_page.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_svcrdma_sq_full = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_sq_full.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_sq_retry = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_sq_retry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_post_send = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_post_send.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_sq_post_err = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_sq_post_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_send_pullup = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_send_pullup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_dma_map_page = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_dma_map_page.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_dma_map_err = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_dma_map_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_err_vers = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_err_vers.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_err_chunk = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_err_chunk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_encode_wseg = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_encode_wseg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_send_err = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_send_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967274, i64 4294967289]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@___asan_gen_.9 = private constant [41 x i8] c"../net/sunrpc/xprtrdma/svc_rdma_sendto.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 327, i32 4 }
@___asan_gen_.15 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 326, i32 6 }
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 87, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [34 x i8] c"../include/trace/events/rpcrdma.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 2023, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 108, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @init_completion.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svc_rdma_send_ctxts_destroy(ptr noundef %rdma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_send_ctxts = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 15
  %call5 = tail call ptr @llist_del_first(ptr noundef %sc_send_ctxts) #9
  %cmp.not6 = icmp eq ptr %call5, null
  br i1 %cmp.not6, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sc_pd = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 13
  %sc_max_req_size = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call7 = phi ptr [ %call5, %while.body.lr.ph ], [ %call, %while.body.while.body_crit_edge ]
  %0 = ptrtoint ptr %sc_pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_pd, align 4
  %device = getelementptr inbounds %struct.ib_pd, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %sc_sges = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call7, i32 0, i32 9
  %4 = ptrtoint ptr %sc_sges to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sc_sges, align 8
  %6 = ptrtoint ptr %sc_max_req_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sc_max_req_size, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %conv.i = trunc i64 %5 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %conv.i, i32 noundef %7, i32 noundef 1, i32 noundef 0) #9
  %sc_xprt_buf = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call7, i32 0, i32 7
  %10 = ptrtoint ptr %sc_xprt_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc_xprt_buf, align 4
  tail call void @kfree(ptr noundef %11) #9
  tail call void @kfree(ptr noundef nonnull %call7) #9
  %call = tail call ptr @llist_del_first(ptr noundef %sc_send_ctxts) #9
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
define dso_local ptr @svc_rdma_send_ctxt_get(ptr noundef %rdma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_send_lock = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %sc_send_lock) #9
  %sc_send_ctxts = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 15
  %call = tail call ptr @llist_del_first(ptr noundef %sc_send_ctxts) #9
  %tobool.not = icmp eq ptr %call, null
  tail call void @_raw_spin_unlock(ptr noundef %sc_send_lock) #9
  br i1 %tobool.not, label %out_empty, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %for.body.i.out_crit_edge, %if.end13.i.out_crit_edge, %entry.out_crit_edge
  %ctxt.0 = phi ptr [ %call, %entry.out_crit_edge ], [ %call9.i.i, %if.end13.i.out_crit_edge ], [ %call9.i.i, %for.body.i.out_crit_edge ]
  %sc_hdrbuf = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %ctxt.0, i32 0, i32 5
  %iov_len.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %ctxt.0, i32 0, i32 5, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %iov_len.i, align 4
  %len1.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %ctxt.0, i32 0, i32 5, i32 8
  %1 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %len1.i, align 4
  %sc_stream = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %ctxt.0, i32 0, i32 6
  %sc_xprt_buf = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %ctxt.0, i32 0, i32 7
  %2 = ptrtoint ptr %sc_xprt_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_xprt_buf, align 4
  tail call void @xdr_init_encode(ptr noundef %sc_stream, ptr noundef %sc_hdrbuf, ptr noundef %3, ptr noundef null) #9
  %num_sge = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %ctxt.0, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %num_sge, align 4
  %sc_cur_sge_no = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %ctxt.0, i32 0, i32 8
  %5 = ptrtoint ptr %sc_cur_sge_no to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %sc_cur_sge_no, align 8
  br label %cleanup

out_empty:                                        ; preds = %entry
  %sc_max_send_sges.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 4
  %6 = ptrtoint ptr %sc_max_send_sges.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sc_max_send_sges.i, align 4
  %mul.i = shl i32 %7, 4
  %add.i = add i32 %mul.i, 208
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %out_empty.cleanup_crit_edge, label %if.end.i

out_empty.cleanup_crit_edge:                      ; preds = %out_empty
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %out_empty
  %sc_max_req_size.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 11
  %8 = ptrtoint ptr %sc_max_req_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sc_max_req_size.i, align 4
  %call9.i88.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3264) #12
  %tobool2.not.i = icmp eq ptr %call9.i88.i, null
  br i1 %tobool2.not.i, label %if.end.i.fail1.i_crit_edge, label %if.end4.i

if.end.i.fail1.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail1.i

if.end4.i:                                        ; preds = %if.end.i
  %sc_pd.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 13
  %10 = ptrtoint ptr %sc_pd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc_pd.i, align 4
  %device.i = getelementptr inbounds %struct.ib_pd, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device.i, align 4
  %14 = ptrtoint ptr %sc_max_req_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sc_max_req_size.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 8
  %call.i.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i88.i) #9
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end4.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge, label %if.then.i.i.i, !prof !69

land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ib_dma_map_single.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %17) #9
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %21, %if.end.i.i.i.i ], [ %19, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #9
  br label %ib_dma_map_single.exit.i

if.end39.i.i.i:                                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %17, ptr noundef nonnull %call9.i88.i, i32 noundef %15) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %22 = load ptr, ptr @mem_map, align 4
  %23 = ptrtoint ptr %call9.i88.i to i32
  %sub.i.i.i = add i32 %23, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %22, i32 %shr.i.i.i
  %and.i.i.i = and i32 %23, 3968
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %17, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef %15, i32 noundef 1, i32 noundef 0) #9
  br label %ib_dma_map_single.exit.i

ib_dma_map_single.exit.i:                         ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge ]
  %24 = ptrtoint ptr %sc_pd.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sc_pd.i, align 4
  %device8.i = getelementptr inbounds %struct.ib_pd, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %device8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device8.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %29, i32 noundef %retval.0.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i)
  %cmp.i.i92.not.i = icmp eq i32 %retval.0.i.i.i, -1
  br i1 %cmp.i.i92.not.i, label %fail2.i, label %if.end13.i

if.end13.i:                                       ; preds = %ib_dma_map_single.exit.i
  %conv2.i.i = zext i32 %retval.0.i.i.i to i64
  %sc_cid.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call9.i.i, i32 0, i32 1
  %sc_sq_cq.i.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 24
  %30 = ptrtoint ptr %sc_sq_cq.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sc_sq_cq.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.ib_cq, ptr %31, i32 0, i32 17, i32 8
  %32 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id.i.i, align 8
  %34 = ptrtoint ptr %sc_cid.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %sc_cid.i, align 4
  %sc_completion_ids.i.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 30
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sc_completion_ids.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %sc_completion_ids.i.i, i32 1, i32 3, i32 1) #9
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sc_completion_ids.i.i, ptr %sc_completion_ids.i.i, i32 1, ptr elementtype(i32) %sc_completion_ids.i.i) #9, !srcloc !71
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  %ci_completion_id.i.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call9.i.i, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %ci_completion_id.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %asmresult.i.i.i.i.i.i, ptr %ci_completion_id.i.i, align 8
  %sc_send_wr.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call9.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %sc_send_wr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %sc_send_wr.i, align 16
  %sc_cqe.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call9.i.i, i32 0, i32 3
  %38 = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call9.i.i, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %sc_cqe.i, ptr %38, align 8
  %sc_sges.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call9.i.i, i32 0, i32 9
  %sg_list.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call9.i.i, i32 0, i32 2, i32 2
  %40 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %sc_sges.i, ptr %sg_list.i, align 32
  %send_flags.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call9.i.i, i32 0, i32 2, i32 5
  %41 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %send_flags.i, align 4
  %sc_done.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call9.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %sc_done.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %sc_done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call9.i.i, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #9
  %43 = ptrtoint ptr %sc_cqe.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @svc_rdma_wc_send, ptr %sc_cqe.i, align 8
  %sc_xprt_buf.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call9.i.i, i32 0, i32 7
  %44 = ptrtoint ptr %sc_xprt_buf.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call9.i88.i, ptr %sc_xprt_buf.i, align 4
  %sc_hdrbuf.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call9.i.i, i32 0, i32 5
  %45 = ptrtoint ptr %sc_max_req_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sc_max_req_size.i, align 4
  %47 = ptrtoint ptr %sc_hdrbuf.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call9.i88.i, ptr %sc_hdrbuf.i, align 4
  %iov_len.i.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call9.i.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %48 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %46, ptr %iov_len.i.i, align 8
  %iov_len4.i.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call9.i.i, i32 0, i32 5, i32 1, i32 0, i32 1
  %49 = ptrtoint ptr %iov_len4.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %iov_len4.i.i, align 128
  %pages.i.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call9.i.i, i32 0, i32 5, i32 3
  %50 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %pages.i.i, align 8
  %page_len.i.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call9.i.i, i32 0, i32 5, i32 5
  %51 = ptrtoint ptr %page_len.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %page_len.i.i, align 16
  %flags.i.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call9.i.i, i32 0, i32 5, i32 6
  %52 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %flags.i.i, align 4
  %len5.i.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call9.i.i, i32 0, i32 5, i32 8
  %53 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %len5.i.i, align 4
  %buflen.i.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call9.i.i, i32 0, i32 5, i32 7
  %54 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %46, ptr %buflen.i.i, align 8
  %55 = ptrtoint ptr %sc_sges.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv2.i.i, ptr %sc_sges.i, align 16
  %56 = ptrtoint ptr %sc_max_send_sges.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sc_max_send_sges.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp100.i = icmp sgt i32 %57, 0
  br i1 %cmp100.i, label %for.body.i.preheader, label %if.end13.i.out_crit_edge

if.end13.i.out_crit_edge:                         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.i.preheader:                             ; preds = %if.end13.i
  %58 = ptrtoint ptr %sc_pd.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sc_pd.i, align 4
  %60 = ptrtoint ptr %sc_max_send_sges.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sc_max_send_sges.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.0101.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %59, align 4
  %lkey.i = getelementptr %struct.svc_rdma_send_ctxt, ptr %call9.i.i, i32 0, i32 9, i32 %i.0101.i, i32 2
  %64 = ptrtoint ptr %lkey.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %lkey.i, align 4
  %inc.i = add nuw nsw i32 %i.0101.i, 1
  %cmp.i = icmp slt i32 %inc.i, %61
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.out_crit_edge

for.body.i.out_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

fail2.i:                                          ; preds = %ib_dma_map_single.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call9.i88.i) #9
  br label %fail1.i

fail1.i:                                          ; preds = %fail2.i, %if.end.i.fail1.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %fail1.i, %out_empty.cleanup_crit_edge, %out
  %retval.0 = phi ptr [ %ctxt.0, %out ], [ null, %out_empty.cleanup_crit_edge ], [ null, %fail1.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svc_rdma_send_ctxt_put(ptr noundef %rdma, ptr noundef %ctxt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_cm_id = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 1
  %0 = ptrtoint ptr %sc_cm_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_cm_id, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %num_sge = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %ctxt, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp22 = icmp ugt i32 %5, 1
  br i1 %cmp22, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.svc_rdma_send_ctxt, ptr %ctxt, i32 0, i32 9, i32 %i.023
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  %length = getelementptr %struct.svc_rdma_send_ctxt, ptr %ctxt, i32 0, i32 9, i32 %i.023, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %conv.i = trunc i64 %7 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %conv.i, i32 noundef %9, i32 noundef 1, i32 noundef 0) #9
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx, align 8
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 8
  tail call fastcc void @trace_svcrdma_dma_unmap_page(ptr noundef %rdma, i64 noundef %13, i32 noundef %15)
  %inc = add nuw i32 %i.023, 1
  %16 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_sge, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %sc_send_ctxts = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 15
  %call.i = tail call zeroext i1 @llist_add_batch(ptr noundef %ctxt, ptr noundef %ctxt, ptr noundef %sc_send_ctxts) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_dma_unmap_page(ptr noundef %rdma, i64 noundef %dma_addr, i32 noundef %length) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_dma_unmap_page, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_dma_unmap_page, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !73

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !74
  %call42 = tail call i32 @__traceiter_svcrdma_dma_unmap_page(ptr noundef null, ptr noundef %rdma, i64 noundef %dma_addr, i32 noundef %length) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !75
  %13 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !69

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_dma_unmap_page, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_dma_unmap_page, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_dma_unmap_page.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_dma_unmap_page.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1824, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  %31 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
define dso_local void @svc_rdma_wake_send_waiters(ptr noundef %rdma, i32 noundef %avail) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_sq_avail = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sc_sq_avail, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %sc_sq_avail, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sc_sq_avail, ptr %sc_sq_avail, i32 %avail, ptr elementtype(i32) %sc_sq_avail) #9, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !79
  %head.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 26, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %2, %head.i
  br i1 %cmp.i.i.not, label %entry.if.end_crit_edge, label %if.then, !prof !69

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sc_send_wait = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %sc_send_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svc_rdma_send(ptr noundef %rdma, ptr noundef %ctxt) local_unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_send_wr = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %ctxt, i32 0, i32 2
  %sc_done = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %ctxt, i32 0, i32 4
  %0 = ptrtoint ptr %sc_done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sc_done, align 4
  %sc_pd = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 13
  %1 = ptrtoint ptr %sc_pd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sc_pd, align 4
  %device = getelementptr inbounds %struct.ib_pd, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %sg_list = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %ctxt, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sg_list, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %6, align 8
  %length = getelementptr inbounds %struct.ib_sge, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 8
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 8
  %conv.i = trunc i64 %8 to i32
  tail call void @dma_sync_single_for_device(ptr noundef %12, i32 noundef %conv.i, i32 noundef %10, i32 noundef 1) #9
  %sc_sq_avail = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 6
  %call.i.i60 = call zeroext i1 @__kasan_check_write(ptr noundef %sc_sq_avail, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  call void @llvm.prefetch.p0(ptr %sc_sq_avail, i32 1, i32 3, i32 1) #9
  %13 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sc_sq_avail, ptr %sc_sq_avail, i32 1, ptr elementtype(i32) %sc_sq_avail) #9, !srcloc !81
  %asmresult.i.i.i.i61 = extractvalue { i32, i32 } %13, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i61)
  %cmp62 = icmp slt i32 %asmresult.i.i.i.i61, 0
  br i1 %cmp62, label %if.then.lr.ph, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then.lr.ph:                                    ; preds = %entry
  %sc_send_wait = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 26
  %xpt_flags = getelementptr inbounds %struct.svc_xprt, ptr %rdma, i32 0, i32 5
  br label %if.then

if.then:                                          ; preds = %if.end23.if.then_crit_edge, %if.then.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %14 = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @svcrdma_stat_sq_starve, i64 noundef 1, i32 noundef %14) #9
  call fastcc void @trace_svcrdma_sq_full(ptr noundef %rdma)
  %call.i.i52 = call zeroext i1 @__kasan_check_write(ptr noundef %sc_sq_avail, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %sc_sq_avail, i32 1, i32 3, i32 1) #9
  %15 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sc_sq_avail, ptr %sc_sq_avail, i32 1, ptr elementtype(i32) %sc_sq_avail) #9, !srcloc !78
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 328) #9
  %call.i.i53 = call zeroext i1 @__kasan_check_read(ptr noundef %sc_sq_avail, i32 noundef 4) #9
  %16 = ptrtoint ptr %sc_sq_avail to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %sc_sq_avail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp10 = icmp sgt i32 %17, 1
  br i1 %cmp10, label %if.then.do.end20_crit_edge, label %if.end

if.then.do.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %18 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call1257 = call i32 @prepare_to_wait_event(ptr noundef %sc_send_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %call.i.i5458 = call zeroext i1 @__kasan_check_read(ptr noundef %sc_sq_avail, i32 noundef 4) #9
  %19 = ptrtoint ptr %sc_sq_avail to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %sc_sq_avail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp1559 = icmp sgt i32 %20, 1
  br i1 %cmp1559, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #9
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %sc_send_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %call.i.i54 = call zeroext i1 @__kasan_check_read(ptr noundef %sc_sq_avail, i32 noundef 4) #9
  %21 = ptrtoint ptr %sc_sq_avail to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %sc_sq_avail, align 4
  %cmp15 = icmp sgt i32 %22, 1
  br i1 %cmp15, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %sc_send_wait, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %do.end20

do.end20:                                         ; preds = %for.end, %if.then.do.end20_crit_edge
  %23 = ptrtoint ptr %xpt_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %xpt_flags, align 4
  %25 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %if.end23, label %do.end20.cleanup31_crit_edge

do.end20.cleanup31_crit_edge:                     ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup31

if.end23:                                         ; preds = %do.end20
  call fastcc void @trace_svcrdma_sq_retry(ptr noundef %rdma)
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sc_sq_avail, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  call void @llvm.prefetch.p0(ptr %sc_sq_avail, i32 1, i32 3, i32 1) #9
  %26 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sc_sq_avail, ptr %sc_sq_avail, i32 1, ptr elementtype(i32) %sc_sq_avail) #9, !srcloc !81
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %26, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !82
  %cmp = icmp slt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.end23.if.then_crit_edge, label %if.end23.if.end24_crit_edge

if.end23.if.end24_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end23.if.then_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end24:                                         ; preds = %if.end23.if.end24_crit_edge, %entry.if.end24_crit_edge
  call fastcc void @trace_svcrdma_post_send(ptr noundef %ctxt)
  %sc_qp = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 22
  %27 = ptrtoint ptr %sc_qp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sc_qp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #9
  %29 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !83
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %28, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %31, i32 0, i32 1, i32 6
  %32 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %33(ptr noundef %28, ptr noundef %sc_send_wr, ptr noundef nonnull %dummy.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool26.not = icmp eq i32 %call.i, 0
  br i1 %tobool26.not, label %if.end24.cleanup31_crit_edge, label %while.end

if.end24.cleanup31_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup31

while.end:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trace_svcrdma_sq_post_err(ptr noundef %rdma, i32 noundef %call.i)
  call void @svc_xprt_deferred_close(ptr noundef %rdma) #9
  %sc_send_wait30 = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 26
  call void @__wake_up(ptr noundef %sc_send_wait30, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %cleanup31

cleanup31:                                        ; preds = %while.end, %if.end24.cleanup31_crit_edge, %do.end20.cleanup31_crit_edge
  %retval.0 = phi i32 [ %call.i, %while.end ], [ 0, %if.end24.cleanup31_crit_edge ], [ -107, %do.end20.cleanup31_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_sq_full(ptr noundef %rdma) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_sq_full, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_sq_full, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !73

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !84
  %call42 = tail call i32 @__traceiter_svcrdma_sq_full(ptr noundef null, ptr noundef %rdma) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !85
  %13 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !69

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 2210, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  %31 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
          to label %if.end48 [label %do.body], !srcloc !73

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !86
  %call42 = tail call i32 @__traceiter_svcrdma_sq_retry(ptr noundef null, ptr noundef %rdma) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !87
  %13 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !69

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 2211, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  %31 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
define internal fastcc void @trace_svcrdma_post_send(ptr noundef %ctxt) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_post_send, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_post_send, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !73

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  %call42 = tail call i32 @__traceiter_svcrdma_post_send(ptr noundef null, ptr noundef %ctxt) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  %13 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !69

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_post_send, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_post_send, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_post_send.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_post_send.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 2021, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  %31 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
          to label %if.end48 [label %do.body], !srcloc !73

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !90
  %call42 = tail call i32 @__traceiter_svcrdma_sq_post_err(ptr noundef null, ptr noundef %rdma, i32 noundef %status) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  %13 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !69

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 2239, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  %31 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svc_rdma_map_reply_msg(ptr noundef %rdma, ptr noundef %sctxt, ptr noundef %rctxt, ptr noundef %xdr) local_unnamed_addr #0 align 64 {
entry:
  %args.i18 = alloca %struct.svc_rdma_pullup_data, align 4
  %args.i = alloca %struct.svc_rdma_pullup_data, align 4
  %args = alloca %struct.svc_rdma_map_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args) #9
  %0 = getelementptr inbounds %struct.svc_rdma_map_data, ptr %args, i32 0, i32 1
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rdma, ptr %args, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sctxt, ptr %0, align 4
  %num_sge = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %sctxt, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %num_sge, align 4
  %len = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %sctxt, i32 0, i32 5, i32 8
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %length = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %sctxt, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %length, align 8
  %cl_chunks.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %rctxt, i32 0, i32 17, i32 1
  %7 = ptrtoint ptr %cl_chunks.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %cl_chunks.i, align 4
  %cmp.i.i = icmp eq ptr %8, %cl_chunks.i
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args.i) #9
  %9 = getelementptr inbounds %struct.svc_rdma_pullup_data, ptr %args.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.svc_rdma_pullup_data, ptr %args.i, i32 0, i32 2
  %11 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %args.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %9, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %10, align 4
  %rc_write_pcl.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %rctxt, i32 0, i32 16
  %call.i = call i32 @pcl_process_nonpayloads(ptr noundef %rc_write_pcl.i, ptr noundef %xdr, ptr noundef nonnull @svc_rdma_xb_count_sges, ptr noundef nonnull %args.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %svc_rdma_pull_up_needed.exit.thread26, label %if.end.i

svc_rdma_pull_up_needed.exit.thread26:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i) #9
  br label %if.end4

if.end.i:                                         ; preds = %if.end
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %15)
  %cmp2.i = icmp ult i32 %15, 512
  br i1 %cmp2.i, label %svc_rdma_pull_up_needed.exit.thread, label %svc_rdma_pull_up_needed.exit

svc_rdma_pull_up_needed.exit.thread:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i) #9
  br label %if.then2

svc_rdma_pull_up_needed.exit:                     ; preds = %if.end.i
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %10, align 4
  %sc_max_send_sges.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 4
  %18 = ptrtoint ptr %sc_max_send_sges.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sc_max_send_sges.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp6.i.not = icmp ult i32 %17, %19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i) #9
  br i1 %cmp6.i.not, label %svc_rdma_pull_up_needed.exit.if.end4_crit_edge, label %svc_rdma_pull_up_needed.exit.if.then2_crit_edge

svc_rdma_pull_up_needed.exit.if.then2_crit_edge:  ; preds = %svc_rdma_pull_up_needed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2

svc_rdma_pull_up_needed.exit.if.end4_crit_edge:   ; preds = %svc_rdma_pull_up_needed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %svc_rdma_pull_up_needed.exit.if.then2_crit_edge, %svc_rdma_pull_up_needed.exit.thread
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args.i18) #9
  %20 = getelementptr inbounds %struct.svc_rdma_pullup_data, ptr %args.i18, i32 0, i32 1
  %21 = getelementptr inbounds %struct.svc_rdma_pullup_data, ptr %args.i18, i32 0, i32 2
  %sc_xprt_buf.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %sctxt, i32 0, i32 7
  %22 = ptrtoint ptr %sc_xprt_buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sc_xprt_buf.i, align 4
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 %25
  %26 = ptrtoint ptr %args.i18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i, ptr %args.i18, align 4
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %20, align 4
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %21, align 4
  %call.i21 = call i32 @pcl_process_nonpayloads(ptr noundef %rc_write_pcl.i, ptr noundef %xdr, ptr noundef nonnull @svc_rdma_xb_linearize, ptr noundef nonnull %args.i18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %cmp.i22 = icmp slt i32 %call.i21, 0
  br i1 %cmp.i22, label %if.then2.svc_rdma_pull_up_reply_msg.exit_crit_edge, label %if.end.i23

if.then2.svc_rdma_pull_up_reply_msg.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %svc_rdma_pull_up_reply_msg.exit

if.end.i23:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %31 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %20, align 4
  %add.i = add i32 %32, %30
  %33 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.i, ptr %length, align 8
  call fastcc void @trace_svcrdma_send_pullup(ptr noundef %sctxt, i32 noundef %32) #9
  br label %svc_rdma_pull_up_reply_msg.exit

svc_rdma_pull_up_reply_msg.exit:                  ; preds = %if.end.i23, %if.then2.svc_rdma_pull_up_reply_msg.exit_crit_edge
  %retval.0.i24 = phi i32 [ 0, %if.end.i23 ], [ %call.i21, %if.then2.svc_rdma_pull_up_reply_msg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i18) #9
  br label %cleanup

if.end4:                                          ; preds = %svc_rdma_pull_up_needed.exit.if.end4_crit_edge, %svc_rdma_pull_up_needed.exit.thread26
  %call5 = call i32 @pcl_process_nonpayloads(ptr noundef %rc_write_pcl.i, ptr noundef %xdr, ptr noundef nonnull @svc_rdma_xb_dma_map, ptr noundef nonnull %args) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %svc_rdma_pull_up_reply_msg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i24, %svc_rdma_pull_up_reply_msg.exit ], [ %call5, %if.end4 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcl_process_nonpayloads(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_rdma_xb_dma_map(ptr nocapture noundef readonly %xdr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iov_len.i = getelementptr inbounds %struct.kvec, ptr %xdr, i32 0, i32 1
  %0 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iov_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %svc_rdma_iov_dma_map.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

svc_rdma_iov_dma_map.exit:                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %3 = ptrtoint ptr %xdr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xdr, align 4
  %5 = ptrtoint ptr %4 to i32
  %sub.i = add i32 %5, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %2, i32 %shr.i
  %and.i = and i32 %5, 4095
  %call.i = tail call fastcc i32 @svc_rdma_page_dma_map(ptr noundef %data, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %svc_rdma_iov_dma_map.exit.cleanup_crit_edge, label %svc_rdma_iov_dma_map.exit.if.end_crit_edge

svc_rdma_iov_dma_map.exit.if.end_crit_edge:       ; preds = %svc_rdma_iov_dma_map.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

svc_rdma_iov_dma_map.exit.cleanup_crit_edge:      ; preds = %svc_rdma_iov_dma_map.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %svc_rdma_iov_dma_map.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %page_len = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 5
  %6 = ptrtoint ptr %page_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not51 = icmp eq i32 %7, 0
  br i1 %tobool.not51, label %if.end.while.end_crit_edge, label %while.body.preheader

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.preheader:                             ; preds = %if.end
  %page_base = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 4
  %8 = ptrtoint ptr %page_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %page_base, align 4
  %and = and i32 %9, 4095
  %pages = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 3
  %10 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pages, align 4
  %shr = lshr i32 %9, 12
  %add.ptr = getelementptr ptr, ptr %11, i32 %shr
  br label %while.body

while.body:                                       ; preds = %if.end6.while.body_crit_edge, %while.body.preheader
  %ppages.054 = phi ptr [ %incdec.ptr, %if.end6.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %pageoff.053 = phi i32 [ 0, %if.end6.while.body_crit_edge ], [ %and, %while.body.preheader ]
  %remaining.052 = phi i32 [ %sub7, %if.end6.while.body_crit_edge ], [ %7, %while.body.preheader ]
  %sub = sub nuw nsw i32 4096, %pageoff.053
  %12 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %remaining.052)
  %13 = ptrtoint ptr %ppages.054 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ppages.054, align 4
  %call3 = tail call fastcc i32 @svc_rdma_page_dma_map(ptr noundef %data, ptr noundef %14, i32 noundef %pageoff.053, i32 noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %while.body.cleanup_crit_edge, label %if.end6

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %while.body
  %incdec.ptr = getelementptr ptr, ptr %ppages.054, i32 1
  %sub7 = sub i32 %remaining.052, %12
  %tobool.not = icmp eq i32 %sub7, 0
  br i1 %tobool.not, label %if.end6.while.end_crit_edge, label %if.end6.while.body_crit_edge

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end6.while.end_crit_edge, %if.end.while.end_crit_edge
  %iov_len.i37 = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %iov_len.i37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iov_len.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i38 = icmp eq i32 %16, 0
  br i1 %tobool.not.i38, label %while.end.if.end12_crit_edge, label %svc_rdma_iov_dma_map.exit46

while.end.if.end12_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

svc_rdma_iov_dma_map.exit46:                      ; preds = %while.end
  %tail = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %17 = load ptr, ptr @mem_map, align 4
  %18 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail, align 4
  %20 = ptrtoint ptr %19 to i32
  %sub.i39 = add i32 %20, 1073741824
  %shr.i40 = lshr i32 %sub.i39, 12
  %add.ptr.i41 = getelementptr %struct.page, ptr %17, i32 %shr.i40
  %and.i42 = and i32 %20, 4095
  %call.i43 = tail call fastcc i32 @svc_rdma_page_dma_map(ptr noundef %data, ptr noundef %add.ptr.i41, i32 noundef %and.i42, i32 noundef %16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %cmp10 = icmp slt i32 %call.i43, 0
  br i1 %cmp10, label %svc_rdma_iov_dma_map.exit46.cleanup_crit_edge, label %svc_rdma_iov_dma_map.exit46.if.end12_crit_edge

svc_rdma_iov_dma_map.exit46.if.end12_crit_edge:   ; preds = %svc_rdma_iov_dma_map.exit46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

svc_rdma_iov_dma_map.exit46.cleanup_crit_edge:    ; preds = %svc_rdma_iov_dma_map.exit46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %svc_rdma_iov_dma_map.exit46.if.end12_crit_edge, %while.end.if.end12_crit_edge
  %len13 = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 8
  %21 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %svc_rdma_iov_dma_map.exit46.cleanup_crit_edge, %while.body.cleanup_crit_edge, %svc_rdma_iov_dma_map.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %if.end12 ], [ %call.i, %svc_rdma_iov_dma_map.exit.cleanup_crit_edge ], [ %call.i43, %svc_rdma_iov_dma_map.exit46.cleanup_crit_edge ], [ %call3, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svc_rdma_send_error_msg(ptr noundef %rdma, ptr noundef %sctxt, ptr nocapture noundef readonly %rctxt, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rc_recv_buf = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %rctxt, i32 0, i32 6
  %0 = ptrtoint ptr %rc_recv_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rc_recv_buf, align 8
  %sc_hdrbuf = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %sctxt, i32 0, i32 5
  %iov_len.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %sctxt, i32 0, i32 5, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %iov_len.i, align 4
  %len1.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %sctxt, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %len1.i, align 4
  %sc_stream = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %sctxt, i32 0, i32 6
  %sc_xprt_buf = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %sctxt, i32 0, i32 7
  %4 = ptrtoint ptr %sc_xprt_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc_xprt_buf, align 4
  tail call void @xdr_init_encode(ptr noundef %sc_stream, ptr noundef %sc_hdrbuf, ptr noundef %5, ptr noundef null) #9
  %call = tail call ptr @xdr_reserve_space(ptr noundef %sc_stream, i32 noundef 16) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.put_ctxt_crit_edge, label %if.end

entry.put_ctxt_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_ctxt

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %incdec.ptr = getelementptr i32, ptr %call, i32 1
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %call, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 1
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  %incdec.ptr3 = getelementptr i32, ptr %call, i32 2
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %incdec.ptr, align 4
  %sc_fc_credits = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 8
  %12 = ptrtoint ptr %sc_fc_credits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sc_fc_credits, align 4
  %incdec.ptr4 = getelementptr i32, ptr %call, i32 3
  %14 = ptrtoint ptr %incdec.ptr3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %incdec.ptr3, align 4
  %15 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %incdec.ptr4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -93, i32 %status)
  %cond = icmp eq i32 %status, -93
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  %call6 = tail call ptr @xdr_reserve_space(ptr noundef %sc_stream, i32 noundef 12) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %sw.bb.put_ctxt_crit_edge, label %if.end9

sw.bb.put_ctxt_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_ctxt

if.end9:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr10 = getelementptr i32, ptr %call6, i32 1
  %16 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %call6, align 4
  %incdec.ptr11 = getelementptr i32, ptr %call6, i32 2
  %17 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %incdec.ptr10, align 4
  %18 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %incdec.ptr11, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  tail call fastcc void @trace_svcrdma_err_vers(i32 noundef %20)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %call13 = tail call ptr @xdr_reserve_space(ptr noundef %sc_stream, i32 noundef 4) #9
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %sw.default.put_ctxt_crit_edge, label %if.end16

sw.default.put_ctxt_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_ctxt

if.end16:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %call13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %call13, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  tail call fastcc void @trace_svcrdma_err_chunk(i32 noundef %23)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end16, %if.end9
  %num_sge = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %sctxt, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %num_sge, align 4
  %opcode = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %sctxt, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %opcode, align 8
  %26 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len1.i, align 4
  %length = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %sctxt, i32 1, i32 1, i32 1
  %28 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %length, align 8
  %call19 = tail call i32 @svc_rdma_send(ptr noundef %rdma, ptr noundef %sctxt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %sw.epilog.put_ctxt_crit_edge

sw.epilog.put_ctxt_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_ctxt

if.end22:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %sc_done = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %sctxt, i32 0, i32 4
  %call23 = tail call i32 @wait_for_completion_killable(ptr noundef %sc_done) #9
  br label %put_ctxt

put_ctxt:                                         ; preds = %if.end22, %sw.epilog.put_ctxt_crit_edge, %sw.default.put_ctxt_crit_edge, %sw.bb.put_ctxt_crit_edge, %entry.put_ctxt_crit_edge
  %sc_cm_id.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 1
  %29 = ptrtoint ptr %sc_cm_id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sc_cm_id.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %num_sge.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %sctxt, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_sge.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp22.i = icmp ugt i32 %34, 1
  br i1 %cmp22.i, label %put_ctxt.for.body.i_crit_edge, label %put_ctxt.svc_rdma_send_ctxt_put.exit_crit_edge

put_ctxt.svc_rdma_send_ctxt_put.exit_crit_edge:   ; preds = %put_ctxt
  call void @__sanitizer_cov_trace_pc() #11
  br label %svc_rdma_send_ctxt_put.exit

put_ctxt.for.body.i_crit_edge:                    ; preds = %put_ctxt
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %put_ctxt.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %put_ctxt.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.svc_rdma_send_ctxt, ptr %sctxt, i32 0, i32 9, i32 %i.023.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx.i, align 8
  %length.i = getelementptr %struct.svc_rdma_send_ctxt, ptr %sctxt, i32 0, i32 9, i32 %i.023.i, i32 1
  %37 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %length.i, align 8
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %32, align 8
  %conv.i.i = trunc i64 %36 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %40, i32 noundef %conv.i.i, i32 noundef %38, i32 noundef 1, i32 noundef 0) #9
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx.i, align 8
  %43 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length.i, align 8
  tail call fastcc void @trace_svcrdma_dma_unmap_page(ptr noundef %rdma, i64 noundef %42, i32 noundef %44) #9
  %inc.i = add nuw i32 %i.023.i, 1
  %45 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_sge.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %46
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.svc_rdma_send_ctxt_put.exit_crit_edge

for.body.i.svc_rdma_send_ctxt_put.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %svc_rdma_send_ctxt_put.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

svc_rdma_send_ctxt_put.exit:                      ; preds = %for.body.i.svc_rdma_send_ctxt_put.exit_crit_edge, %put_ctxt.svc_rdma_send_ctxt_put.exit_crit_edge
  %sc_send_ctxts.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %rdma, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @llist_add_batch(ptr noundef %sctxt, ptr noundef %sctxt, ptr noundef %sc_send_ctxts.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_err_vers(i32 noundef %xid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_err_vers, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_err_vers, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !73

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !92
  %call42 = tail call i32 @__traceiter_svcrdma_err_vers(ptr noundef null, i32 noundef %xid) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
  %13 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !69

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_err_vers, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_err_vers, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_err_vers.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_err_vers.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1777, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  %31 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
define internal fastcc void @trace_svcrdma_err_chunk(i32 noundef %xid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_err_chunk, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_err_chunk, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !73

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !94
  %call42 = tail call i32 @__traceiter_svcrdma_err_chunk(ptr noundef null, i32 noundef %xid) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !95
  %13 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !69

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_err_chunk, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_err_chunk, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_err_chunk.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_err_chunk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1778, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  %31 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
declare dso_local i32 @wait_for_completion_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svc_rdma_sendto(ptr noundef %rqstp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %0 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt, align 8
  %rq_xprt_ctxt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 12
  %2 = ptrtoint ptr %rq_xprt_ctxt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_xprt_ctxt, align 4
  %rc_recv_buf = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %rc_recv_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rc_recv_buf, align 8
  %xpt_flags.i = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %xpt_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %xpt_flags.i, align 4
  %8 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %svc_xprt_is_dead.exit, label %entry.drop_connection_crit_edge

entry.drop_connection_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_connection

svc_xprt_is_dead.exit:                            ; preds = %entry
  %9 = ptrtoint ptr %xpt_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %xpt_flags.i, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3.i.not = icmp eq i32 %11, 0
  br i1 %cmp3.i.not, label %if.end, label %svc_xprt_is_dead.exit.drop_connection_crit_edge

svc_xprt_is_dead.exit.drop_connection_crit_edge:  ; preds = %svc_xprt_is_dead.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_connection

if.end:                                           ; preds = %svc_xprt_is_dead.exit
  %call1 = tail call ptr @svc_rdma_send_ctxt_get(ptr noundef %1)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.drop_connection_crit_edge, label %if.end3

if.end.drop_connection_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_connection

if.end3:                                          ; preds = %if.end
  %sc_stream = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call1, i32 0, i32 6
  %call4 = tail call ptr @xdr_reserve_space(ptr noundef %sc_stream, i32 noundef 16) #9
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.put_ctxt_crit_edge, label %if.end7

if.end3.put_ctxt_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_ctxt

if.end7:                                          ; preds = %if.end3
  %rq_res = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  %call8 = tail call i32 @svc_rdma_send_reply_chunk(ptr noundef %1, ptr noundef %3, ptr noundef %rq_res) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %reply_chunk, label %if.end10

if.end10:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  %incdec.ptr = getelementptr i32, ptr %call4, i32 1
  %14 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %call4, align 4
  %add.ptr11 = getelementptr i32, ptr %5, i32 1
  %15 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr11, align 4
  %incdec.ptr12 = getelementptr i32, ptr %call4, i32 2
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %incdec.ptr, align 4
  %sc_fc_credits = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %sc_fc_credits to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sc_fc_credits, align 4
  %incdec.ptr13 = getelementptr i32, ptr %call4, i32 3
  %20 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %incdec.ptr12, align 4
  %cl_chunks.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %3, i32 0, i32 17, i32 1
  %21 = ptrtoint ptr %cl_chunks.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %cl_chunks.i, align 4
  %cmp.i.i = icmp ne ptr %22, %cl_chunks.i
  %cond = zext i1 %cmp.i.i to i32
  %23 = ptrtoint ptr %incdec.ptr13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond, ptr %incdec.ptr13, align 4
  %call.i.i = tail call ptr @xdr_reserve_space(ptr noundef %sc_stream, i32 noundef 4) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end10.put_ctxt_crit_edge, label %if.end18, !prof !96

if.end10.put_ctxt_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_ctxt

if.end18:                                         ; preds = %if.end10
  %24 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %call.i.i, align 4
  %cl_chunks.i82 = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %3, i32 0, i32 16, i32 1
  %25 = ptrtoint ptr %cl_chunks.i82 to i32
  call void @__asan_load4_noabort(i32 %25)
  %chunk.031.i = load ptr, ptr %cl_chunks.i82, align 4
  %cmp.not32.i = icmp eq ptr %chunk.031.i, %cl_chunks.i82
  br i1 %cmp.not32.i, label %if.end18.for.end.i_crit_edge, label %if.end18.for.body.i_crit_edge

if.end18.for.body.i_crit_edge:                    ; preds = %if.end18
  br label %for.body.i

if.end18.for.end.i_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end18.for.body.i_crit_edge
  %chunk.034.i = phi ptr [ %chunk.0.i, %if.end.i.for.body.i_crit_edge ], [ %chunk.031.i, %if.end18.for.body.i_crit_edge ]
  %len.033.i = phi i32 [ %add.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.end18.for.body.i_crit_edge ]
  %call.i = tail call fastcc i32 @svc_rdma_encode_write_chunk(ptr noundef nonnull %call1, ptr noundef %chunk.034.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i83 = icmp slt i32 %call.i, 0
  br i1 %cmp3.i83, label %for.body.i.put_ctxt_crit_edge, label %if.end.i

for.body.i.put_ctxt_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_ctxt

if.end.i:                                         ; preds = %for.body.i
  %add.i = add i32 %call.i, %len.033.i
  %26 = ptrtoint ptr %chunk.034.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %chunk.0.i = load ptr, ptr %chunk.034.i, align 4
  %cmp.not.i84 = icmp eq ptr %chunk.0.i, %cl_chunks.i82
  br i1 %cmp.not.i84, label %for.end.loopexit.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo.i = add i32 %add.i, 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %if.end18.for.end.i_crit_edge
  %len.0.lcssa.i = phi i32 [ 4, %if.end18.for.end.i_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %call.i.i86 = tail call ptr @xdr_reserve_space(ptr noundef %sc_stream, i32 noundef 4) #9
  %tobool.not.i.i87 = icmp eq ptr %call.i.i86, null
  br i1 %tobool.not.i.i87, label %for.end.i.put_ctxt_crit_edge, label %svc_rdma_encode_write_list.exit, !prof !96

for.end.i.put_ctxt_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_ctxt

svc_rdma_encode_write_list.exit:                  ; preds = %for.end.i
  %27 = ptrtoint ptr %call.i.i86 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %call.i.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.lcssa.i)
  %cmp20 = icmp slt i32 %len.0.lcssa.i, 0
  br i1 %cmp20, label %svc_rdma_encode_write_list.exit.put_ctxt_crit_edge, label %if.end22

svc_rdma_encode_write_list.exit.put_ctxt_crit_edge: ; preds = %svc_rdma_encode_write_list.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_ctxt

if.end22:                                         ; preds = %svc_rdma_encode_write_list.exit
  %28 = ptrtoint ptr %cl_chunks.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %cl_chunks.i, align 4
  %cmp.i.i.i = icmp eq ptr %29, %cl_chunks.i
  br i1 %cmp.i.i.i, label %if.then.i, label %if.end.i92

if.then.i:                                        ; preds = %if.end22
  %call.i.i89 = tail call ptr @xdr_reserve_space(ptr noundef %sc_stream, i32 noundef 4) #9
  %tobool.not.i.i90 = icmp eq ptr %call.i.i89, null
  br i1 %tobool.not.i.i90, label %if.then.i.put_ctxt_crit_edge, label %svc_rdma_encode_reply_chunk.exit.thread109, !prof !96

if.then.i.put_ctxt_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_ctxt

svc_rdma_encode_reply_chunk.exit.thread109:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %call.i.i89 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %call.i.i89, align 4
  br label %if.end26

if.end.i92:                                       ; preds = %if.end22
  %31 = ptrtoint ptr %cl_chunks.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %cl_chunks.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %32, %cl_chunks.i
  %spec.select.i.i = select i1 %cmp.i.i.i.i, ptr null, ptr %32
  %ch_length.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %spec.select.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %ch_length.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ch_length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %call8)
  %cmp.i = icmp ult i32 %34, %call8
  br i1 %cmp.i, label %if.end.i92.put_ctxt_crit_edge, label %svc_rdma_encode_reply_chunk.exit

if.end.i92.put_ctxt_crit_edge:                    ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_ctxt

svc_rdma_encode_reply_chunk.exit:                 ; preds = %if.end.i92
  %ch_payload_length.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %spec.select.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %ch_payload_length.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call8, ptr %ch_payload_length.i, align 8
  %call6.i = tail call fastcc i32 @svc_rdma_encode_write_chunk(ptr noundef nonnull %call1, ptr noundef %spec.select.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp24 = icmp slt i32 %call6.i, 0
  br i1 %cmp24, label %svc_rdma_encode_reply_chunk.exit.put_ctxt_crit_edge, label %svc_rdma_encode_reply_chunk.exit.if.end26_crit_edge

svc_rdma_encode_reply_chunk.exit.if.end26_crit_edge: ; preds = %svc_rdma_encode_reply_chunk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

svc_rdma_encode_reply_chunk.exit.put_ctxt_crit_edge: ; preds = %svc_rdma_encode_reply_chunk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_ctxt

if.end26:                                         ; preds = %svc_rdma_encode_reply_chunk.exit.if.end26_crit_edge, %svc_rdma_encode_reply_chunk.exit.thread109
  %call.i94 = tail call i32 @svc_rdma_map_reply_msg(ptr noundef %1, ptr noundef nonnull %call1, ptr noundef %3, ptr noundef %rq_res) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %cmp.i95 = icmp slt i32 %call.i94, 0
  br i1 %cmp.i95, label %if.end26.put_ctxt_crit_edge, label %if.end.i96

if.end26.put_ctxt_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_ctxt

if.end.i96:                                       ; preds = %if.end26
  %rc_inv_rkey.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %3, i32 0, i32 11
  %36 = ptrtoint ptr %rc_inv_rkey.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rc_inv_rkey.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  %opcode5.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call1, i32 0, i32 2, i32 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %opcode5.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 9, ptr %opcode5.i, align 8
  %39 = ptrtoint ptr %rc_inv_rkey.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rc_inv_rkey.i, align 4
  %ex.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call1, i32 0, i32 2, i32 6
  %41 = ptrtoint ptr %ex.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %ex.i, align 8
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %opcode5.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %opcode5.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then1.i
  %call7.i = tail call i32 @svc_rdma_send(ptr noundef %1, ptr noundef nonnull %call1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end6.i.put_ctxt_crit_edge, label %if.end10.i

if.end6.i.put_ctxt_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_ctxt

if.end10.i:                                       ; preds = %if.end6.i
  %sc_done.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call1, i32 0, i32 4
  %call11.i = tail call i32 @wait_for_completion_killable(ptr noundef %sc_done.i) #9
  %sc_cm_id.i.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %sc_cm_id.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sc_cm_id.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %num_sge.i.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call1, i32 0, i32 2, i32 3
  %47 = ptrtoint ptr %num_sge.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_sge.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp22.i.i = icmp ugt i32 %48, 1
  br i1 %cmp22.i.i, label %if.end10.i.for.body.i.i_crit_edge, label %if.end10.i.svc_rdma_send_reply_msg.exit_crit_edge

if.end10.i.svc_rdma_send_reply_msg.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %svc_rdma_send_reply_msg.exit

if.end10.i.for.body.i.i_crit_edge:                ; preds = %if.end10.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end10.i.for.body.i.i_crit_edge
  %i.023.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 1, %if.end10.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.svc_rdma_send_ctxt, ptr %call1, i32 0, i32 9, i32 %i.023.i.i
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx.i.i, align 8
  %length.i.i = getelementptr %struct.svc_rdma_send_ctxt, ptr %call1, i32 0, i32 9, i32 %i.023.i.i, i32 1
  %51 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %length.i.i, align 8
  %53 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %46, align 8
  %conv.i.i.i = trunc i64 %50 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %54, i32 noundef %conv.i.i.i, i32 noundef %52, i32 noundef 1, i32 noundef 0) #9
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %arrayidx.i.i, align 8
  %57 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %length.i.i, align 8
  tail call fastcc void @trace_svcrdma_dma_unmap_page(ptr noundef %1, i64 noundef %56, i32 noundef %58) #9
  %inc.i.i = add nuw i32 %i.023.i.i, 1
  %59 = ptrtoint ptr %num_sge.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_sge.i.i, align 4
  %cmp.i.i97 = icmp ult i32 %inc.i.i, %60
  br i1 %cmp.i.i97, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.svc_rdma_send_reply_msg.exit_crit_edge

for.body.i.i.svc_rdma_send_reply_msg.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %svc_rdma_send_reply_msg.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

svc_rdma_send_reply_msg.exit:                     ; preds = %for.body.i.i.svc_rdma_send_reply_msg.exit_crit_edge, %if.end10.i.svc_rdma_send_reply_msg.exit_crit_edge
  %sc_send_ctxts.i.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @llist_add_batch(ptr noundef nonnull %call1, ptr noundef nonnull %call1, ptr noundef %sc_send_ctxts.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp28 = icmp slt i32 %call11.i, 0
  br i1 %cmp28, label %svc_rdma_send_reply_msg.exit.put_ctxt_crit_edge, label %if.end30

svc_rdma_send_reply_msg.exit.put_ctxt_crit_edge:  ; preds = %svc_rdma_send_reply_msg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_ctxt

if.end30:                                         ; preds = %svc_rdma_send_reply_msg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %rq_respages = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 21
  %61 = ptrtoint ptr %rq_respages to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rq_respages, align 4
  %incdec.ptr31 = getelementptr ptr, ptr %62, i32 1
  store ptr %incdec.ptr31, ptr %rq_respages, align 4
  br label %cleanup

reply_chunk:                                      ; preds = %if.end7
  %63 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call8, label %reply_chunk.put_ctxt_crit_edge [
    i32 -7, label %reply_chunk.if.end35_crit_edge
    i32 -22, label %reply_chunk.if.end35_crit_edge120
  ]

reply_chunk.if.end35_crit_edge120:                ; preds = %reply_chunk
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

reply_chunk.if.end35_crit_edge:                   ; preds = %reply_chunk
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

reply_chunk.put_ctxt_crit_edge:                   ; preds = %reply_chunk
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_ctxt

if.end35:                                         ; preds = %reply_chunk.if.end35_crit_edge, %reply_chunk.if.end35_crit_edge120
  tail call void @svc_rdma_send_error_msg(ptr noundef %1, ptr noundef nonnull %call1, ptr noundef %3, i32 noundef %call8)
  br label %cleanup

put_ctxt:                                         ; preds = %reply_chunk.put_ctxt_crit_edge, %svc_rdma_send_reply_msg.exit.put_ctxt_crit_edge, %if.end6.i.put_ctxt_crit_edge, %if.end26.put_ctxt_crit_edge, %svc_rdma_encode_reply_chunk.exit.put_ctxt_crit_edge, %if.end.i92.put_ctxt_crit_edge, %if.then.i.put_ctxt_crit_edge, %svc_rdma_encode_write_list.exit.put_ctxt_crit_edge, %for.end.i.put_ctxt_crit_edge, %for.body.i.put_ctxt_crit_edge, %if.end10.put_ctxt_crit_edge, %if.end3.put_ctxt_crit_edge
  %ret.0 = phi i32 [ %len.0.lcssa.i, %svc_rdma_encode_write_list.exit.put_ctxt_crit_edge ], [ %call6.i, %svc_rdma_encode_reply_chunk.exit.put_ctxt_crit_edge ], [ %call11.i, %svc_rdma_send_reply_msg.exit.put_ctxt_crit_edge ], [ -90, %if.end3.put_ctxt_crit_edge ], [ %call8, %reply_chunk.put_ctxt_crit_edge ], [ -90, %if.end10.put_ctxt_crit_edge ], [ -90, %for.end.i.put_ctxt_crit_edge ], [ -90, %if.then.i.put_ctxt_crit_edge ], [ -7, %if.end.i92.put_ctxt_crit_edge ], [ %call7.i, %if.end6.i.put_ctxt_crit_edge ], [ %call.i94, %if.end26.put_ctxt_crit_edge ], [ %call.i, %for.body.i.put_ctxt_crit_edge ]
  %sc_cm_id.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %sc_cm_id.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sc_cm_id.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %num_sge.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call1, i32 0, i32 2, i32 3
  %68 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_sge.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp22.i = icmp ugt i32 %69, 1
  br i1 %cmp22.i, label %put_ctxt.for.body.i100_crit_edge, label %put_ctxt.svc_rdma_send_ctxt_put.exit_crit_edge

put_ctxt.svc_rdma_send_ctxt_put.exit_crit_edge:   ; preds = %put_ctxt
  call void @__sanitizer_cov_trace_pc() #11
  br label %svc_rdma_send_ctxt_put.exit

put_ctxt.for.body.i100_crit_edge:                 ; preds = %put_ctxt
  br label %for.body.i100

for.body.i100:                                    ; preds = %for.body.i100.for.body.i100_crit_edge, %put_ctxt.for.body.i100_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.body.i100.for.body.i100_crit_edge ], [ 1, %put_ctxt.for.body.i100_crit_edge ]
  %arrayidx.i = getelementptr %struct.svc_rdma_send_ctxt, ptr %call1, i32 0, i32 9, i32 %i.023.i
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx.i, align 8
  %length.i = getelementptr %struct.svc_rdma_send_ctxt, ptr %call1, i32 0, i32 9, i32 %i.023.i, i32 1
  %72 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %length.i, align 8
  %74 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %67, align 8
  %conv.i.i = trunc i64 %71 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %75, i32 noundef %conv.i.i, i32 noundef %73, i32 noundef 1, i32 noundef 0) #9
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %arrayidx.i, align 8
  %78 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %length.i, align 8
  tail call fastcc void @trace_svcrdma_dma_unmap_page(ptr noundef %1, i64 noundef %77, i32 noundef %79) #9
  %inc.i = add nuw i32 %i.023.i, 1
  %80 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_sge.i, align 4
  %cmp.i99 = icmp ult i32 %inc.i, %81
  br i1 %cmp.i99, label %for.body.i100.for.body.i100_crit_edge, label %for.body.i100.svc_rdma_send_ctxt_put.exit_crit_edge

for.body.i100.svc_rdma_send_ctxt_put.exit_crit_edge: ; preds = %for.body.i100
  call void @__sanitizer_cov_trace_pc() #11
  br label %svc_rdma_send_ctxt_put.exit

for.body.i100.for.body.i100_crit_edge:            ; preds = %for.body.i100
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i100

svc_rdma_send_ctxt_put.exit:                      ; preds = %for.body.i100.svc_rdma_send_ctxt_put.exit_crit_edge, %put_ctxt.svc_rdma_send_ctxt_put.exit_crit_edge
  %sc_send_ctxts.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 15
  %call.i.i101 = tail call zeroext i1 @llist_add_batch(ptr noundef nonnull %call1, ptr noundef nonnull %call1, ptr noundef %sc_send_ctxts.i) #9
  br label %drop_connection

drop_connection:                                  ; preds = %svc_rdma_send_ctxt_put.exit, %if.end.drop_connection_crit_edge, %svc_xprt_is_dead.exit.drop_connection_crit_edge, %entry.drop_connection_crit_edge
  %ret.1 = phi i32 [ -107, %svc_xprt_is_dead.exit.drop_connection_crit_edge ], [ %ret.0, %svc_rdma_send_ctxt_put.exit ], [ -12, %if.end.drop_connection_crit_edge ], [ -107, %entry.drop_connection_crit_edge ]
  tail call fastcc void @trace_svcrdma_send_err(ptr noundef %rqstp, i32 noundef %ret.1)
  tail call void @svc_xprt_deferred_close(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %drop_connection, %if.end35, %if.end30
  %retval.0 = phi i32 [ -107, %drop_connection ], [ 0, %if.end35 ], [ 0, %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_rdma_send_reply_chunk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_send_err(ptr noundef %rqst, i32 noundef %status) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_send_err, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_send_err, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !73

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !97
  %call42 = tail call i32 @__traceiter_svcrdma_send_err(ptr noundef null, ptr noundef %rqst, i32 noundef %status) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !98
  %13 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !69

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_send_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_send_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_send_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_send_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1991, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  %31 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
define dso_local i32 @svc_rdma_result_payload(ptr noundef %rqstp, i32 noundef %offset, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %subbuf = alloca %struct.xdr_buf, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt_ctxt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 12
  %0 = ptrtoint ptr %rq_xprt_ctxt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt_ctxt, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %subbuf) #9
  %2 = call ptr @memset(ptr %subbuf, i32 255, i32 44)
  %rc_cur_result_payload = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %rc_cur_result_payload to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rc_cur_result_payload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool.not = icmp eq i32 %length, 0
  %tobool1.not = icmp eq ptr %4, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cl_chunks.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %1, i32 0, i32 16, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %cmp.i.not.i = icmp eq ptr %6, %cl_chunks.i
  %spec.select.i = select i1 %cmp.i.not.i, ptr null, ptr %6
  %7 = ptrtoint ptr %rc_cur_result_payload to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select.i, ptr %rc_cur_result_payload, align 4
  %ch_length = getelementptr inbounds %struct.svc_rdma_chunk, ptr %4, i32 0, i32 2
  %8 = ptrtoint ptr %ch_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ch_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %length)
  %cmp = icmp ult i32 %9, %length
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ch_position = getelementptr inbounds %struct.svc_rdma_chunk, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %ch_position to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %offset, ptr %ch_position, align 8
  %ch_payload_length = getelementptr inbounds %struct.svc_rdma_chunk, ptr %4, i32 0, i32 3
  %11 = ptrtoint ptr %ch_payload_length to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %length, ptr %ch_payload_length, align 8
  %rq_res = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  %call5 = call i32 @xdr_buf_subsegment(ptr noundef %rq_res, ptr noundef nonnull %subbuf, i32 noundef %offset, i32 noundef %length) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %12 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rq_xprt, align 8
  %call9 = call i32 @svc_rdma_send_write_chunk(ptr noundef %13, ptr noundef nonnull %4, ptr noundef nonnull %subbuf) #9
  %14 = call i32 @llvm.smin.i32(i32 %call9, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -7, %if.end.cleanup_crit_edge ], [ -90, %if.end4.cleanup_crit_edge ], [ %14, %if.end8 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %subbuf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_buf_subsegment(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_rdma_send_write_chunk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_rdma_wc_send(ptr nocapture noundef readonly %cq, ptr noundef %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 4
  %0 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq_context, align 8
  %2 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wc, align 8
  %sc_sq_avail.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sc_sq_avail.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %sc_sq_avail.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sc_sq_avail.i, ptr %sc_sq_avail.i, i32 1, ptr elementtype(i32) %sc_sq_avail.i) #9, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !79
  %head.i.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 26, i32 1
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %6, %head.i.i
  br i1 %cmp.i.i.not.i, label %entry.svc_rdma_wake_send_waiters.exit_crit_edge, label %if.then.i, !prof !69

entry.svc_rdma_wake_send_waiters.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %svc_rdma_wake_send_waiters.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sc_send_wait.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 26
  tail call void @__wake_up(ptr noundef %sc_send_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %svc_rdma_wake_send_waiters.exit

svc_rdma_wake_send_waiters.exit:                  ; preds = %if.then.i, %entry.svc_rdma_wake_send_waiters.exit_crit_edge
  %sc_done = getelementptr i8, ptr %3, i32 4
  tail call void @complete(ptr noundef %sc_done) #9
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %8, label %if.then4 [
    i32 0, label %if.end
    i32 5, label %if.else
  ], !prof !99

if.end:                                           ; preds = %svc_rdma_wake_send_waiters.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sc_cid = getelementptr i8, ptr %3, i32 -52
  tail call fastcc void @trace_svcrdma_wc_send(ptr noundef %wc, ptr noundef %sc_cid)
  br label %cleanup

if.then4:                                         ; preds = %svc_rdma_wake_send_waiters.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sc_cid5 = getelementptr i8, ptr %3, i32 -52
  tail call fastcc void @trace_svcrdma_wc_send_err(ptr noundef %wc, ptr noundef %sc_cid5)
  br label %if.end7

if.else:                                          ; preds = %svc_rdma_wake_send_waiters.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sc_cid6 = getelementptr i8, ptr %3, i32 -52
  tail call fastcc void @trace_svcrdma_wc_send_flush(ptr noundef %wc, ptr noundef %sc_cid6)
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  tail call void @svc_xprt_deferred_close(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end
  ret void
}

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_wc_send(ptr noundef %wc, ptr noundef %cid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_send, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_wc_send, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !73

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !100
  %call42 = tail call i32 @__traceiter_svcrdma_wc_send(ptr noundef null, ptr noundef %wc, ptr noundef %cid) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !101
  %13 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !69

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_send, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_send, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_wc_send.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_wc_send.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 2023, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  %31 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
define internal fastcc void @trace_svcrdma_wc_send_err(ptr noundef %wc, ptr noundef %cid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_send_err, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_wc_send_err, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !73

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %call42 = tail call i32 @__traceiter_svcrdma_wc_send_err(ptr noundef null, ptr noundef %wc, ptr noundef %cid) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  %13 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !69

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_send_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_send_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_wc_send_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_wc_send_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 2025, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  %31 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
define internal fastcc void @trace_svcrdma_wc_send_flush(ptr noundef %wc, ptr noundef %cid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_send_flush, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_wc_send_flush, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !73

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  %call42 = tail call i32 @__traceiter_svcrdma_wc_send_flush(ptr noundef null, ptr noundef %wc, ptr noundef %cid) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  %13 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !69

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_send_flush, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_wc_send_flush, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_wc_send_flush.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_wc_send_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 2024, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  %31 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
declare dso_local i32 @__traceiter_svcrdma_wc_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_wc_send_err(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_wc_send_flush(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_dma_unmap_page(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_sq_full(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_sq_retry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_post_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_sq_post_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_rdma_xb_count_sges(ptr nocapture noundef readonly %xdr, ptr nocapture noundef %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iov_len = getelementptr inbounds %struct.kvec, ptr %xdr, i32 0, i32 1
  %0 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pd_num_sges = getelementptr inbounds %struct.svc_rdma_pullup_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %pd_num_sges to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pd_num_sges, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %pd_num_sges, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %page_len = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 5
  %4 = ptrtoint ptr %page_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not23 = icmp eq i32 %5, 0
  br i1 %tobool1.not23, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %page_base = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 4
  %6 = ptrtoint ptr %page_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_base, align 4
  %and = and i32 %7, 4095
  %phi.bo = sub nuw nsw i32 4096, %and
  %pd_num_sges2 = getelementptr inbounds %struct.svc_rdma_pullup_data, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %pd_num_sges2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %pd_num_sges2.promoted = load i32, ptr %pd_num_sges2, align 4
  %inc3.peel = add i32 %pd_num_sges2.promoted, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %phi.bo)
  %tobool1.not.not.peel = icmp ugt i32 %5, %phi.bo
  br i1 %tobool1.not.not.peel, label %while.body.peel.next, label %while.body.lr.ph.while.cond.while.end_crit_edge_crit_edge

while.body.lr.ph.while.cond.while.end_crit_edge_crit_edge: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.while.end_crit_edge

while.body.peel.next:                             ; preds = %while.body.lr.ph
  %9 = tail call i32 @llvm.usub.sat.i32(i32 %5, i32 %phi.bo)
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.peel.next
  %inc326 = phi i32 [ %inc3.peel, %while.body.peel.next ], [ %inc3, %while.body.while.body_crit_edge ]
  %remaining.024 = phi i32 [ %9, %while.body.peel.next ], [ %10, %while.body.while.body_crit_edge ]
  %inc3 = add i32 %inc326, 1
  %10 = tail call i32 @llvm.usub.sat.i32(i32 %remaining.024, i32 4096)
  %tobool1.not.not = icmp ugt i32 %remaining.024, 4096
  br i1 %tobool1.not.not, label %while.body.while.body_crit_edge, label %while.body.while.cond.while.end_crit_edge_crit_edge, !llvm.loop !106

while.body.while.cond.while.end_crit_edge_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.while.end_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.body.while.cond.while.end_crit_edge_crit_edge, %while.body.lr.ph.while.cond.while.end_crit_edge_crit_edge
  %inc3.lcssa = phi i32 [ %inc3.peel, %while.body.lr.ph.while.cond.while.end_crit_edge_crit_edge ], [ %inc3, %while.body.while.cond.while.end_crit_edge_crit_edge ]
  %11 = ptrtoint ptr %pd_num_sges2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc3.lcssa, ptr %pd_num_sges2, align 4
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end.while.end_crit_edge
  %iov_len6 = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %iov_len6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iov_len6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not = icmp eq i32 %13, 0
  br i1 %tobool7.not, label %while.end.if.end11_crit_edge, label %if.then8

while.end.if.end11_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %pd_num_sges9 = getelementptr inbounds %struct.svc_rdma_pullup_data, ptr %data, i32 0, i32 2
  %14 = ptrtoint ptr %pd_num_sges9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pd_num_sges9, align 4
  %inc10 = add i32 %15, 1
  store i32 %inc10, ptr %pd_num_sges9, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %while.end.if.end11_crit_edge
  %len = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 8
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %pd_length = getelementptr inbounds %struct.svc_rdma_pullup_data, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %pd_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pd_length, align 4
  %add = add i32 %19, %17
  store i32 %add, ptr %pd_length, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_rdma_xb_linearize(ptr nocapture noundef readonly %xdr, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iov_len = getelementptr inbounds %struct.kvec, ptr %xdr, i32 0, i32 1
  %0 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %xdr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xdr, align 4
  %6 = call ptr @memcpy(ptr %3, ptr %5, i32 %1)
  %7 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iov_len, align 4
  %9 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %8
  store ptr %add.ptr, ptr %data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %page_len = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 5
  %10 = ptrtoint ptr %page_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not63 = icmp eq i32 %11, 0
  br i1 %tobool12.not63, label %if.end.while.end_crit_edge, label %while.body.preheader

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.preheader:                             ; preds = %if.end
  %page_base = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 4
  %12 = ptrtoint ptr %page_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %page_base, align 4
  %and = and i32 %13, 4095
  %pages = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 3
  %14 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pages, align 4
  %shr = lshr i32 %13, 12
  %add.ptr10 = getelementptr ptr, ptr %15, i32 %shr
  %sub.peel = sub nuw nsw i32 4096, %and
  %16 = tail call i32 @llvm.umin.i32(i32 %sub.peel, i32 %11)
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr10, align 4
  %call.peel = tail call ptr @page_address(ptr noundef %20) #9
  %add.ptr14.peel = getelementptr i8, ptr %call.peel, i32 %and
  %21 = call ptr @memcpy(ptr %18, ptr %add.ptr14.peel, i32 %16)
  %sub15.peel = sub i32 %11, %16
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %add.ptr17.peel = getelementptr i8, ptr %23, i32 %16
  store ptr %add.ptr17.peel, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15.peel)
  %tobool12.not.peel = icmp eq i32 %sub15.peel, 0
  br i1 %tobool12.not.peel, label %while.body.preheader.while.end_crit_edge, label %while.body.preheader.while.body_crit_edge

while.body.preheader.while.body_crit_edge:        ; preds = %while.body.preheader
  br label %while.body

while.body.preheader.while.end_crit_edge:         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader.while.body_crit_edge
  %ppages.066.pn = phi ptr [ %ppages.066, %while.body.while.body_crit_edge ], [ %add.ptr10, %while.body.preheader.while.body_crit_edge ]
  %remaining.064 = phi i32 [ %sub15, %while.body.while.body_crit_edge ], [ %sub15.peel, %while.body.preheader.while.body_crit_edge ]
  %ppages.066 = getelementptr ptr, ptr %ppages.066.pn, i32 1
  %24 = tail call i32 @llvm.umin.i32(i32 %remaining.064, i32 4096)
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %27 = ptrtoint ptr %ppages.066 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ppages.066, align 4
  %call = tail call ptr @page_address(ptr noundef %28) #9
  %29 = call ptr @memcpy(ptr %26, ptr %call, i32 %24)
  %sub15 = sub i32 %remaining.064, %24
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %add.ptr17 = getelementptr i8, ptr %31, i32 %24
  store ptr %add.ptr17, ptr %data, align 4
  %tobool12.not = icmp eq i32 %sub15, 0
  br i1 %tobool12.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge, !llvm.loop !108

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.body.preheader.while.end_crit_edge, %if.end.while.end_crit_edge
  %iov_len19 = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %iov_len19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iov_len19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool20.not = icmp eq i32 %33, 0
  br i1 %tobool20.not, label %while.end.if.end34_crit_edge, label %if.then21

while.end.if.end34_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then21:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %tail = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 1
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %36 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tail, align 4
  %38 = call ptr @memcpy(ptr %35, ptr %37, i32 %33)
  %39 = ptrtoint ptr %iov_len19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iov_len19, align 4
  %41 = load ptr, ptr %data, align 4
  %add.ptr33 = getelementptr i8, ptr %41, i32 %40
  store ptr %add.ptr33, ptr %data, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then21, %while.end.if.end34_crit_edge
  %len35 = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 8
  %42 = ptrtoint ptr %len35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len35, align 4
  %pd_length = getelementptr inbounds %struct.svc_rdma_pullup_data, ptr %data, i32 0, i32 1
  %44 = ptrtoint ptr %pd_length to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pd_length, align 4
  %add = add i32 %45, %43
  store i32 %add, ptr %pd_length, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_send_pullup(ptr noundef %ctxt, i32 noundef %msglen) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_send_pullup, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_send_pullup, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !73

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !109
  %call42 = tail call i32 @__traceiter_svcrdma_send_pullup(ptr noundef null, ptr noundef %ctxt, i32 noundef %msglen) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !110
  %13 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !69

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_send_pullup, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_send_pullup, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_send_pullup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_send_pullup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1966, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  %31 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_send_pullup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @svc_rdma_page_dma_map(ptr nocapture noundef readonly %data, ptr noundef %page, i32 noundef %offset, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %md_ctxt = getelementptr inbounds %struct.svc_rdma_map_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %md_ctxt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %md_ctxt, align 4
  %sc_cm_id = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %sc_cm_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc_cm_id, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %sc_cur_sge_no = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %sc_cur_sge_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sc_cur_sge_no, align 8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %sc_cur_sge_no, align 8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %11, ptr noundef %page, i32 noundef %offset, i32 noundef %len, i32 noundef 1, i32 noundef 0) #9
  %conv3.i = zext i32 %call2.i to i64
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %13, i32 noundef %call2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i.i.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i.i.not, label %out_maperr, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_svcrdma_dma_map_page(ptr noundef %1, i64 noundef %conv3.i, i32 noundef %len)
  %14 = ptrtoint ptr %sc_cur_sge_no to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sc_cur_sge_no, align 8
  %arrayidx = getelementptr %struct.svc_rdma_send_ctxt, ptr %3, i32 0, i32 9, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv3.i, ptr %arrayidx, align 8
  %length = getelementptr %struct.svc_rdma_send_ctxt, ptr %3, i32 0, i32 9, i32 %15, i32 1
  %17 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %len, ptr %length, align 8
  %num_sge = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %3, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_sge, align 4
  %inc9 = add i32 %19, 1
  store i32 %inc9, ptr %num_sge, align 4
  br label %cleanup

out_maperr:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_svcrdma_dma_map_err(ptr noundef %1, i64 noundef %conv3.i, i32 noundef %len)
  br label %cleanup

cleanup:                                          ; preds = %out_maperr, %if.end
  %retval.0 = phi i32 [ -5, %out_maperr ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_dma_map_page(ptr noundef %rdma, i64 noundef %dma_addr, i32 noundef %length) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_dma_map_page, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_dma_map_page, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !73

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !111
  %call42 = tail call i32 @__traceiter_svcrdma_dma_map_page(ptr noundef null, ptr noundef %rdma, i64 noundef %dma_addr, i32 noundef %length) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !112
  %13 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !69

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_dma_map_page, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_dma_map_page, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_dma_map_page.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_dma_map_page.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1822, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  %31 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
define internal fastcc void @trace_svcrdma_dma_map_err(ptr noundef %rdma, i64 noundef %dma_addr, i32 noundef %length) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_dma_map_err, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_dma_map_err, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !73

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !113
  %call42 = tail call i32 @__traceiter_svcrdma_dma_map_err(ptr noundef null, ptr noundef %rdma, i64 noundef %dma_addr, i32 noundef %length) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !114
  %13 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !69

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_dma_map_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_dma_map_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_dma_map_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_dma_map_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1823, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  %31 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
declare dso_local i32 @__traceiter_svcrdma_dma_map_page(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_dma_map_err(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_err_vers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_err_chunk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @svc_rdma_encode_write_chunk(ptr noundef %sctxt, ptr nocapture noundef readonly %chunk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_payload_length = getelementptr inbounds %struct.svc_rdma_chunk, ptr %chunk, i32 0, i32 3
  %0 = ptrtoint ptr %ch_payload_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ch_payload_length, align 8
  %sc_stream = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %sctxt, i32 0, i32 6
  %call.i = tail call ptr @xdr_reserve_space(ptr noundef %sc_stream, i32 noundef 4) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end, !prof !96

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %call.i, align 4
  %ch_segcount = getelementptr inbounds %struct.svc_rdma_chunk, ptr %chunk, i32 0, i32 4
  %3 = ptrtoint ptr %ch_segcount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ch_segcount, align 4
  %call.i35 = tail call ptr @xdr_reserve_space(ptr noundef %sc_stream, i32 noundef 4) #9
  %tobool.not.i36 = icmp eq ptr %call.i35, null
  br i1 %tobool.not.i36, label %if.end.cleanup_crit_edge, label %if.end5, !prof !96

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call.i35 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %call.i35, align 4
  %6 = ptrtoint ptr %ch_segcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ch_segcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp850.not = icmp eq i32 %7, 0
  br i1 %cmp850.not, label %if.end5.cleanup_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %if.end5.for.body_crit_edge
  %len.053 = phi i32 [ %add13, %if.end12.for.body_crit_edge ], [ 8, %if.end5.for.body_crit_edge ]
  %segno.052 = phi i32 [ %inc, %if.end12.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %remaining.051 = phi i32 [ %sub.i, %if.end12.for.body_crit_edge ], [ %1, %if.end5.for.body_crit_edge ]
  %call.i39 = tail call ptr @xdr_reserve_space(ptr noundef %sc_stream, i32 noundef 16) #9
  %tobool.not.i40 = icmp eq ptr %call.i39, null
  br i1 %tobool.not.i40, label %for.body.cleanup_crit_edge, label %if.end12

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %arrayidx.i = getelementptr %struct.svc_rdma_chunk, ptr %chunk, i32 0, i32 5, i32 %segno.052
  %rs_length.i = getelementptr %struct.svc_rdma_chunk, ptr %chunk, i32 0, i32 5, i32 %segno.052, i32 1
  %8 = ptrtoint ptr %rs_length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rs_length.i, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %remaining.051, i32 %9) #9
  %sub.i = sub i32 %remaining.051, %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 8
  %rs_offset.i = getelementptr %struct.svc_rdma_chunk, ptr %chunk, i32 0, i32 5, i32 %segno.052, i32 2
  %13 = ptrtoint ptr %rs_offset.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rs_offset.i, align 8
  %incdec.ptr.i.i = getelementptr i32, ptr %call.i39, i32 1
  %15 = ptrtoint ptr %call.i39 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %call.i39, align 4
  %incdec.ptr1.i.i = getelementptr i32, ptr %call.i39, i32 2
  %16 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %10, ptr %incdec.ptr.i.i, align 4
  %17 = ptrtoint ptr %incdec.ptr1.i.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %14, ptr %incdec.ptr1.i.i, align 1
  %18 = load i32, ptr %arrayidx.i, align 8
  %19 = load i64, ptr %rs_offset.i, align 8
  tail call fastcc void @trace_svcrdma_encode_wseg(ptr noundef %sctxt, i32 noundef %segno.052, i32 noundef %18, i32 noundef %10, i64 noundef %19) #9
  %add13 = add i32 %len.053, 16
  %inc = add nuw i32 %segno.052, 1
  %20 = ptrtoint ptr %ch_segcount to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ch_segcount, align 4
  %cmp8 = icmp ult i32 %inc, %21
  br i1 %cmp8, label %if.end12.for.body_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %if.end12.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ 8, %if.end5.cleanup_crit_edge ], [ %add13, %if.end12.cleanup_crit_edge ], [ -90, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_encode_wseg(ptr noundef %ctxt, i32 noundef %segno, i32 noundef %handle, i32 noundef %length, i64 noundef %offset) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_encode_wseg, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_encode_wseg, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !73

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !115
  %call42 = tail call i32 @__traceiter_svcrdma_encode_wseg(ptr noundef null, ptr noundef %ctxt, i32 noundef %segno, i32 noundef %handle, i32 noundef %length, i64 noundef %offset) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !116
  %13 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !69

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_encode_wseg, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_encode_wseg, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_svcrdma_encode_wseg.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_svcrdma_encode_wseg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1675, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  %31 = tail call i32 @llvm.read_register.i32(metadata !59) #9
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
declare dso_local i32 @__traceiter_svcrdma_encode_wseg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_send_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !11, !12, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58}
!llvm.named.register.sp = !{!59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sunrpc/xprtrdma/svc_rdma_sendto.c", i32 327, i32 4}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @init_completion.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../include/linux/completion.h", i32 87, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../include/trace/events/rpcrdma.h", i32 2023, i32 1}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!13 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/trace/events/rpcrdma.h", i32 2025, i32 1}
!19 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/trace/events/rpcrdma.h", i32 2024, i32 1}
!22 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/trace/events/rpcrdma.h", i32 1824, i32 1}
!25 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/trace/events/rpcrdma.h", i32 2210, i32 1}
!28 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/trace/events/rpcrdma.h", i32 2211, i32 1}
!31 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/trace/events/rpcrdma.h", i32 1993, i32 1}
!34 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/trace/events/rpcrdma.h", i32 2213, i32 1}
!37 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/trace/events/rpcrdma.h", i32 1940, i32 1}
!40 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/trace/events/rpcrdma.h", i32 1822, i32 1}
!43 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/trace/events/rpcrdma.h", i32 1823, i32 1}
!46 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../include/trace/events/rpcrdma.h", i32 1777, i32 1}
!49 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/trace/events/rpcrdma.h", i32 1778, i32 1}
!52 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/trace/events/rpcrdma.h", i32 1641, i32 1}
!55 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/trace/events/rpcrdma.h", i32 1968, i32 1}
!58 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!59 = !{!"sp"}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 2148591376}
!71 = !{i64 2148506661, i64 2148506693, i64 2148506722, i64 2148506756, i64 2148506787, i64 2148506810}
!72 = !{i64 2148591605}
!73 = !{i64 2148330539, i64 2148330544, i64 2148330557, i64 2148330601, i64 2148330635, i64 2148330656}
!74 = !{i64 2159668021}
!75 = !{i64 2159668272}
!76 = !{i64 2149629734}
!77 = !{i64 2149630770}
!78 = !{i64 2148505941, i64 2148505967, i64 2148505996, i64 2148506030, i64 2148506061, i64 2148506084}
!79 = !{i64 2160201538}
!80 = !{i64 2148594417}
!81 = !{i64 2148509126, i64 2148509158, i64 2148509187, i64 2148509221, i64 2148509252, i64 2148509275}
!82 = !{i64 2148594646}
!83 = !{!"auto-init"}
!84 = !{i64 2160146854}
!85 = !{i64 2160147055}
!86 = !{i64 2160163268}
!87 = !{i64 2160163471}
!88 = !{i64 2159798454}
!89 = !{i64 2159798659}
!90 = !{i64 2160179947}
!91 = !{i64 2160180172}
!92 = !{i64 2159594682}
!93 = !{i64 2159594883}
!94 = !{i64 2159610814}
!95 = !{i64 2159611017}
!96 = !{!"branch_weights", i32 1, i32 2000}
!97 = !{i64 2159777890}
!98 = !{i64 2159778109}
!99 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!100 = !{i64 2159815432}
!101 = !{i64 2159815639}
!102 = !{i64 2159850026}
!103 = !{i64 2159850241}
!104 = !{i64 2159832606}
!105 = !{i64 2159832825}
!106 = distinct !{!106, !107}
!107 = !{!"llvm.loop.peeled.count", i32 1}
!108 = distinct !{!108, !107}
!109 = !{i64 2159761097}
!110 = !{i64 2159761322}
!111 = !{i64 2159628242}
!112 = !{i64 2159628489}
!113 = !{i64 2159646068}
!114 = !{i64 2159646313}
!115 = !{i64 2159538261}
!116 = !{i64 2159538532}
