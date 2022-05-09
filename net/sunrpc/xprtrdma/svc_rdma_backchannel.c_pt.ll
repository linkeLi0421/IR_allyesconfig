; ModuleID = '/llk/IR_all_yes/net/sunrpc/xprtrdma/svc_rdma_backchannel.c_pt.bc'
source_filename = "../net/sunrpc/xprtrdma/svc_rdma_backchannel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xprt_class = type { %struct.list_head, i32, ptr, ptr, [32 x i8], [0 x ptr] }
%struct.list_head = type { ptr, ptr }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%struct.rpc_xprt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.126 }
%struct.atomic_t = type { i32 }
%union.anon.126 = type { i32 }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.129 }
%union.anon.129 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.svc_rdma_recv_ctxt = type { %struct.llist_node, %struct.list_head, %struct.ib_recv_wr, %struct.ib_cqe, %struct.rpc_rdma_cid, %struct.ib_sge, ptr, %struct.xdr_stream, i8, i32, i32, i32, i32, %struct.svc_rdma_pcl, %struct.svc_rdma_pcl, ptr, %struct.svc_rdma_pcl, %struct.svc_rdma_pcl }
%struct.llist_node = type { ptr }
%struct.ib_recv_wr = type { ptr, %union.anon.157, ptr, i32 }
%union.anon.157 = type { i64 }
%struct.ib_cqe = type { ptr }
%struct.rpc_rdma_cid = type { i32, i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.svc_rdma_pcl = type { i32, %struct.list_head }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.131, ptr, ptr, [6 x ptr], ptr, %struct.callback_head, ptr, ptr, i8 }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.anon.131 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.132, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.132 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rpcrdma_xprt = type { %struct.rpc_xprt, ptr, %struct.rpcrdma_buffer, %struct.delayed_work, %struct.rpc_timeout, %struct.rpcrdma_stats }
%struct.rpcrdma_buffer = type { %struct.spinlock, %struct.list_head, %struct.list_head, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.llist_head, i32, i32, i32, i32, %struct.work_struct }
%struct.llist_head = type { ptr }
%struct.rpcrdma_stats = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.xprt_create = type { i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.127, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.127 = type { %struct.work_struct }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.svc_rdma_send_ctxt = type { %struct.llist_node, %struct.rpc_rdma_cid, %struct.ib_send_wr, %struct.ib_cqe, %struct.completion, %struct.xdr_buf, %struct.xdr_stream, ptr, i32, [0 x %struct.ib_sge] }
%struct.ib_send_wr = type { ptr, %union.anon.165, ptr, i32, i32, i32, %union.anon.166 }
%union.anon.165 = type { i64 }
%union.anon.166 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@xprt_rdma_bc = dso_local global { %struct.xprt_class, [44 x i8] } { %struct.xprt_class { %struct.list_head { ptr @xprt_rdma_bc, ptr @xprt_rdma_bc }, i32 -2147483392, ptr @xprt_setup_rdma_bc, ptr null, [32 x i8] c"rdma backchannel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [0 x ptr] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@xprt_rdma_bc_timeout = internal constant { %struct.rpc_timeout, [44 x i8] } { %struct.rpc_timeout { i32 6000, i32 6000, i32 0, i32 0, i8 0 }, [44 x i8] zeroinitializer }, align 32
@xprt_rdma_bc_procs = internal constant { %struct.rpc_xprt_ops, [52 x i8] } { %struct.rpc_xprt_ops { ptr null, ptr @xprt_reserve_xprt_cong, ptr @xprt_release_xprt_cong, ptr @xprt_alloc_slot, ptr @xprt_free_slot, ptr null, ptr null, ptr null, ptr @xprt_rdma_bc_allocate, ptr @xprt_rdma_bc_free, ptr null, ptr @xprt_rdma_bc_send_request, ptr @xprt_wait_for_reply_request_def, ptr null, ptr @xprt_release_rqst_cong, ptr @xprt_rdma_bc_close, ptr @xprt_rdma_bc_put, ptr null, ptr @xprt_rdma_print_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@xprt_rdma_max_inline_read = external dso_local local_unnamed_addr global i32, align 4
@xprt_rdma_bc_allocate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"net/sunrpc/xprtrdma/svc_rdma_backchannel.c\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"svcrdma: large bc buffer request (size %zu)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"xprt_rdma_bc\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 287, i32 19 }
@___asan_gen_.8 = private unnamed_addr constant [21 x i8] c"xprt_rdma_bc_timeout\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 234, i32 33 }
@___asan_gen_.11 = private unnamed_addr constant [19 x i8] c"xprt_rdma_bc_procs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 219, i32 34 }
@___asan_gen_.18 = private constant [46 x i8] c"../net/sunrpc/xprtrdma/svc_rdma_backchannel.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 117, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 717, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 1160, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @xprt_rdma_bc, ptr @xprt_rdma_bc_timeout, ptr @xprt_rdma_bc_procs, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_rdma_bc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_rdma_bc_timeout to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_rdma_bc_procs to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svc_rdma_handle_bc_reply(ptr nocapture noundef %rqstp, ptr nocapture noundef readonly %rctxt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %0 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt, align 8
  %xpt_bc_xprt = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %xpt_bc_xprt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xpt_bc_xprt, align 4
  %rq_arg = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15
  %rc_recv_buf = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %rctxt, i32 0, i32 6
  %4 = ptrtoint ptr %rc_recv_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rc_recv_buf, align 8
  %queue_lock = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 35
  tail call void @_raw_spin_lock(ptr noundef %queue_lock) #5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %call = tail call ptr @xprt_lookup_rqst(ptr noundef %3, i32 noundef %7) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end:                                           ; preds = %entry
  %rq_private_buf = getelementptr inbounds %struct.rpc_rqst, ptr %call, i32 0, i32 20
  %rq_rcv_buf = getelementptr inbounds %struct.rpc_rqst, ptr %call, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %rq_private_buf, ptr %rq_rcv_buf, i32 44)
  %iov_len = getelementptr inbounds %struct.rpc_rqst, ptr %call, i32 0, i32 20, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iov_len, align 4
  %iov_len4 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %iov_len4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iov_len4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp = icmp ult i32 %10, %12
  br i1 %cmp, label %if.end.out_unlock_crit_edge, label %if.end6

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end6:                                          ; preds = %if.end
  %13 = ptrtoint ptr %rq_private_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rq_private_buf, align 4
  %15 = ptrtoint ptr %rq_arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rq_arg, align 4
  %17 = call ptr @memcpy(ptr %14, ptr %16, i32 %12)
  tail call void @xprt_pin_rqst(ptr noundef nonnull %call) #5
  tail call void @_raw_spin_unlock(ptr noundef %queue_lock) #5
  %add.ptr10 = getelementptr i32, ptr %5, i32 2
  %18 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp12 = icmp eq i32 %19, 0
  br i1 %cmp12, label %if.end6.if.end19_crit_edge, label %if.else

if.end6.if.end19_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %rb_bc_max_requests = getelementptr inbounds %struct.rpcrdma_xprt, ptr %3, i32 0, i32 2, i32 14
  %20 = ptrtoint ptr %rb_bc_max_requests to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rb_bc_max_requests, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %19, i32 %21)
  %phi.bo = shl i32 %22, 8
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end6.if.end19_crit_edge
  %credits.0 = phi i32 [ 256, %if.end6.if.end19_crit_edge ], [ %phi.bo, %if.else ]
  %transport_lock = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %transport_lock) #5
  %cwnd = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 8
  %23 = ptrtoint ptr %cwnd to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %credits.0, ptr %cwnd, align 4
  tail call void @_raw_spin_unlock(ptr noundef %transport_lock) #5
  tail call void @_raw_spin_lock(ptr noundef %queue_lock) #5
  %rq_task = getelementptr inbounds %struct.rpc_rqst, ptr %call, i32 0, i32 3
  %24 = ptrtoint ptr %rq_task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rq_task, align 4
  %len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 8
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  tail call void @xprt_complete_rqst(ptr noundef %25, i32 noundef %27) #5
  tail call void @xprt_unpin_rqst(ptr noundef nonnull %call) #5
  %28 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %len, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.end19, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %queue_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_lookup_rqst(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_pin_rqst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_complete_rqst(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_unpin_rqst(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xprt_setup_rdma_bc(ptr nocapture noundef readonly %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %addrlen = getelementptr inbounds %struct.xprt_create, ptr %args, i32 0, i32 4
  %0 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addrlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %1)
  %cmp = icmp ugt i32 %1, 128
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %net = getelementptr inbounds %struct.xprt_create, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %call1 = tail call ptr @xprt_alloc(ptr noundef %3, i32 noundef 1864, i32 noundef 2, i32 noundef 2) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @xprt_rdma_bc_timeout, ptr %timeout, align 4
  %state.i = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 18
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %state.i) #5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i) #5
  %bind_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 23
  %5 = ptrtoint ptr %bind_timeout to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bind_timeout, align 8
  %reestablish_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 24
  %6 = ptrtoint ptr %reestablish_timeout to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %reestablish_timeout, align 4
  %idle_timeout = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 29
  %7 = ptrtoint ptr %idle_timeout to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %idle_timeout, align 4
  %prot = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 6
  %8 = ptrtoint ptr %prot to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -2147483392, ptr %prot, align 4
  %ops = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 1
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @xprt_rdma_bc_procs, ptr %ops, align 4
  %addr = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 4
  %dstaddr = getelementptr inbounds %struct.xprt_create, ptr %args, i32 0, i32 3
  %10 = ptrtoint ptr %dstaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dstaddr, align 4
  %12 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addrlen, align 4
  %14 = call ptr @memcpy(ptr %addr, ptr %11, i32 %13)
  %15 = load i32, ptr %addrlen, align 4
  %addrlen7 = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 5
  %16 = ptrtoint ptr %addrlen7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %addrlen7, align 8
  tail call void @xprt_rdma_format_addresses(ptr noundef nonnull %call1, ptr noundef %addr) #5
  %resvport = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 19
  %17 = ptrtoint ptr %resvport to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %resvport, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %resvport, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xprt_rdma_max_inline_read to i32))
  %18 = load i32, ptr @xprt_rdma_max_inline_read, align 4
  %max_payload = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 9
  %19 = ptrtoint ptr %max_payload to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %max_payload, align 8
  %max_reqs = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 15
  %20 = ptrtoint ptr %max_reqs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_reqs, align 4
  %rb_bc_max_requests = getelementptr inbounds %struct.rpcrdma_xprt, ptr %call1, i32 0, i32 2, i32 14
  %22 = ptrtoint ptr %rb_bc_max_requests to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %rb_bc_max_requests, align 4
  %call9 = tail call ptr @xprt_get(ptr noundef nonnull %call1) #5
  %bc_xprt = getelementptr inbounds %struct.xprt_create, ptr %args, i32 0, i32 6
  %23 = ptrtoint ptr %bc_xprt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bc_xprt, align 4
  %xpt_bc_xprt = getelementptr inbounds %struct.svc_xprt, ptr %24, i32 0, i32 21
  %25 = ptrtoint ptr %xpt_bc_xprt to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call1, ptr %xpt_bc_xprt, align 4
  %26 = load ptr, ptr %bc_xprt, align 4
  %bc_xprt11 = getelementptr inbounds %struct.rpc_xprt, ptr %call1, i32 0, i32 40
  %27 = ptrtoint ptr %bc_xprt11 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %bc_xprt11, align 4
  %call12 = tail call ptr @xprt_get(ptr noundef nonnull %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end4 ], [ inttoptr (i32 -9 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_rdma_format_addresses(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_reserve_xprt_cong(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_release_xprt_cong(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_alloc_slot(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_free_slot(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xprt_rdma_bc_allocate(ptr nocapture noundef readonly %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %0 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tk_rqstp, align 8
  %rq_callsize = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %rq_callsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rq_callsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %3)
  %cmp = icmp ugt i32 %3, 4096
  br i1 %cmp, label %land.end, label %if.end34

land.end:                                         ; preds = %entry
  %.b55 = load i1, ptr @xprt_rdma_bc_allocate.__already_done, align 1
  br i1 %.b55, label %land.end.cleanup_crit_edge, label %if.then5, !prof !26

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @xprt_rdma_bc_allocate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %3) #5
  br label %cleanup

if.end34:                                         ; preds = %entry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 11264, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  %tobool35.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool35.not, label %if.end34.cleanup_crit_edge, label %if.end37

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %if.end34
  %call38 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #5
  %rq_buffer = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %rq_buffer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call38, ptr %rq_buffer, align 8
  %rq_rcvsize = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %rq_rcvsize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rq_rcvsize, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 11264) #8
  %rq_rbuffer = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %rq_rbuffer to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i, ptr %rq_rbuffer, align 8
  %tobool41.not = icmp eq ptr %call9.i, null
  br i1 %tobool41.not, label %if.then42, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then42:                                        ; preds = %if.end37
  %8 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i56 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i56, label %if.end.i.i57, label %if.then.i.i, !prof !26

if.then.i.i:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i57:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i57, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i57 ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #5
  %13 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i.i.i = icmp eq i32 %14, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !27

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.3) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #5, !srcloc !28
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #5
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #5, !srcloc !30
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@xprt_rdma_bc_allocate, %if.then.i.i.i.i.i)) #5
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !32

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %12, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #5
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__put_page(ptr noundef %12) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then5, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then5 ], [ -22, %land.end.cleanup_crit_edge ], [ -12, %if.end34.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ], [ -12, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ -12, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xprt_rdma_bc_free(ptr nocapture noundef readonly %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %0 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tk_rqstp, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %rq_buffer = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %rq_buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rq_buffer, align 8
  %5 = ptrtoint ptr %4 to i32
  %sub = add i32 %5, 1073741824
  %shr = lshr i32 %sub, 12
  %6 = getelementptr %struct.page, ptr %2, i32 %shr, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !26

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = add i32 %8, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr %struct.page, ptr %2, i32 %shr
  %9 = ptrtoint ptr %add.ptr to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %9, %if.end.i.i ]
  %10 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #5
  %11 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !27

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.3) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #5, !srcloc !28
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #5
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #5, !srcloc !30
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@xprt_rdma_bc_free, %if.then.i.i.i.i.i)) #5
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !32

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %10, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #5
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__put_page(ptr noundef %10) #5
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %rq_rbuffer = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %rq_rbuffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rq_rbuffer, align 8
  tail call void @kfree(ptr noundef %15) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xprt_rdma_bc_send_request(ptr noundef %rqst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rqst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqst, align 8
  %bc_xprt = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %bc_xprt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bc_xprt, align 4
  %xpt_flags = getelementptr inbounds %struct.svc_xprt, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %xpt_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %xpt_flags, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @svc_rdma_send_ctxt_get(ptr noundef %3) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.if.then2_crit_edge, label %if.end.i

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

if.end.i:                                         ; preds = %if.end
  %sc_stream.i = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %call.i, i32 0, i32 6
  %call1.i = tail call ptr @xdr_reserve_space(ptr noundef %sc_stream.i, i32 noundef 28) #5
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.put_ctxt.i_crit_edge, label %if.end4.i

if.end.i.put_ctxt.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %put_ctxt.i

if.end4.i:                                        ; preds = %if.end.i
  %rq_xid.i = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 5
  %7 = ptrtoint ptr %rq_xid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rq_xid.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %call1.i, i32 1
  %9 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call1.i, align 4
  %incdec.ptr5.i = getelementptr i32, ptr %call1.i, i32 2
  %10 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %incdec.ptr.i, align 4
  %rb_bc_max_requests.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %1, i32 0, i32 2, i32 14
  %11 = ptrtoint ptr %rb_bc_max_requests.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rb_bc_max_requests.i, align 4
  %incdec.ptr6.i = getelementptr i32, ptr %call1.i, i32 3
  %13 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %incdec.ptr5.i, align 4
  %14 = call ptr @memset(ptr %incdec.ptr6.i, i32 0, i32 16)
  %call10.i = tail call i64 @ktime_get() #5
  %rq_xtime.i = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 29
  %15 = ptrtoint ptr %rq_xtime.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call10.i, ptr %rq_xtime.i, align 8
  %call11.i = tail call fastcc i32 @svc_rdma_bc_sendto(ptr noundef %3, ptr noundef %rqst, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end4.i.cleanup_crit_edge, label %if.end4.i.put_ctxt.i_crit_edge

if.end4.i.put_ctxt.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %put_ctxt.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

put_ctxt.i:                                       ; preds = %if.end4.i.put_ctxt.i_crit_edge, %if.end.i.put_ctxt.i_crit_edge
  tail call void @svc_rdma_send_ctxt_put(ptr noundef %3, ptr noundef nonnull %call.i) #5
  br label %if.then2

if.then2:                                         ; preds = %put_ctxt.i, %if.end.if.then2_crit_edge
  tail call void @svc_close_xprt(ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end4.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -107, %entry.cleanup_crit_edge ], [ -107, %if.then2 ], [ 0, %if.end4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_wait_for_reply_request_def(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_release_rqst_cong(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xprt_rdma_bc_close(ptr noundef %xprt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xprt_disconnect_done(ptr noundef %xprt) #5
  %cwnd = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 8
  %0 = ptrtoint ptr %cwnd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8, ptr %cwnd, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xprt_rdma_bc_put(ptr noundef %xprt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xprt_rdma_free_addresses(ptr noundef %xprt) #5
  tail call void @xprt_free(ptr noundef %xprt) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_rdma_print_stats(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_close_xprt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svc_rdma_send_ctxt_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @svc_rdma_bc_sendto(ptr noundef %rdma, ptr noundef %rqst, ptr noundef %sctxt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @svc_rdma_recv_ctxt_get(ptr noundef %rdma) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %rq_snd_buf = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 1
  %call1 = tail call i32 @svc_rdma_map_reply_msg(ptr noundef %rdma, ptr noundef %sctxt, ptr noundef nonnull %call, ptr noundef %rq_snd_buf) #5
  tail call void @svc_rdma_recv_ctxt_put(ptr noundef %rdma, ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %rq_buffer = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 14
  %1 = ptrtoint ptr %rq_buffer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rq_buffer, align 8
  %3 = ptrtoint ptr %2 to i32
  %sub = add i32 %3, 1073741824
  %shr = lshr i32 %sub, 12
  %4 = getelementptr %struct.page, ptr %0, i32 %shr, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !26

if.then.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr %struct.page, ptr %0, i32 %shr
  %7 = ptrtoint ptr %add.ptr to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #5
  %9 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %10, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !27

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.4) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #5, !srcloc !33
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #5
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #5, !srcloc !34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@svc_rdma_bc_sendto, %if.then.i.i.i.i)) #5
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !32

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__page_ref_mod(ptr noundef %8, i32 noundef 1) #5
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %opcode = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %sctxt, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %opcode, align 8
  %call5 = tail call i32 @svc_rdma_send(ptr noundef %rdma, ptr noundef %sctxt) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %get_page.exit.cleanup_crit_edge, label %if.end8

get_page.exit.cleanup_crit_edge:                  ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sc_done = getelementptr inbounds %struct.svc_rdma_send_ctxt, ptr %sctxt, i32 0, i32 4
  %call9 = tail call i32 @wait_for_completion_killable(ptr noundef %sc_done) #5
  tail call void @svc_rdma_send_ctxt_put(ptr noundef %rdma, ptr noundef %sctxt) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %get_page.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ %call5, %get_page.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_rdma_send_ctxt_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svc_rdma_recv_ctxt_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_rdma_map_reply_msg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_rdma_recv_ctxt_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_rdma_send(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_disconnect_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_rdma_free_addresses(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14}
!llvm.named.register.sp = !{!16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @xprt_rdma_bc, !1, !"xprt_rdma_bc", i1 false, i1 false}
!1 = !{!"../net/sunrpc/xprtrdma/svc_rdma_backchannel.c", i32 287, i32 19}
!2 = !{ptr @xprt_rdma_bc_timeout, !3, !"xprt_rdma_bc_timeout", i1 false, i1 false}
!3 = !{!"../net/sunrpc/xprtrdma/svc_rdma_backchannel.c", i32 234, i32 33}
!4 = !{ptr @xprt_rdma_bc_procs, !5, !"xprt_rdma_bc_procs", i1 false, i1 false}
!5 = !{!"../net/sunrpc/xprtrdma/svc_rdma_backchannel.c", i32 219, i32 34}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../net/sunrpc/xprtrdma/svc_rdma_backchannel.c", i32 117, i32 3}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/mm.h", i32 717, i32 2}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!16 = !{!"sp"}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 2153180195, i64 2153180678, i64 2153180232, i64 2153180288, i64 2153180322, i64 2153180346, i64 2153180387, i64 2153180408, i64 2153180436, i64 2153180470}
!29 = !{i64 2148229550}
!30 = !{i64 2148144283, i64 2148144315, i64 2148144344, i64 2148144378, i64 2148144409, i64 2148144432}
!31 = !{i64 2148229779}
!32 = !{i64 2148750026, i64 2148750031, i64 2148750044, i64 2148750088, i64 2148750122, i64 2148750143}
!33 = !{i64 2153204168, i64 2153204652, i64 2153204205, i64 2153204261, i64 2153204295, i64 2153204319, i64 2153204360, i64 2153204381, i64 2153204409, i64 2153204443}
!34 = !{i64 2148141098, i64 2148141124, i64 2148141153, i64 2148141187, i64 2148141218, i64 2148141241}
