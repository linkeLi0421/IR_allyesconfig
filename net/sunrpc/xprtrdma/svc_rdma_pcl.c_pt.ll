; ModuleID = '/llk/IR_all_yes/net/sunrpc/xprtrdma/svc_rdma_pcl.c_pt.bc'
source_filename = "../net/sunrpc/xprtrdma/svc_rdma_pcl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.127 }
%struct.atomic_t = type { i32 }
%union.anon.127 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.svc_rdma_pcl = type { i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.svc_rdma_recv_ctxt = type { %struct.llist_node, %struct.list_head, %struct.ib_recv_wr, %struct.ib_cqe, %struct.rpc_rdma_cid, %struct.ib_sge, ptr, %struct.xdr_stream, i8, i32, i32, i32, i32, %struct.svc_rdma_pcl, %struct.svc_rdma_pcl, ptr, %struct.svc_rdma_pcl, %struct.svc_rdma_pcl }
%struct.llist_node = type { ptr }
%struct.ib_recv_wr = type { ptr, %union.anon, ptr, i32 }
%union.anon = type { i64 }
%struct.ib_cqe = type { ptr }
%struct.rpc_rdma_cid = type { i32, i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.svc_rdma_chunk = type { %struct.list_head, i32, i32, i32, i32, [0 x %struct.svc_rdma_segment] }
%struct.svc_rdma_segment = type { i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }

@__tracepoint_svcrdma_decode_rseg = external dso_local global %struct.tracepoint, align 4
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/trace/events/rpcrdma.h\00", [33 x i8] zeroinitializer }, align 32
@trace_svcrdma_decode_rseg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_svcrdma_decode_wseg = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_decode_wseg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_ = private constant [38 x i8] c"../net/sunrpc/xprtrdma/svc_rdma_pcl.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [34 x i8] c"../include/trace/events/rpcrdma.h\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 1677, i32 1 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 108, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcl_free(ptr noundef %pcl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_chunks = getelementptr inbounds %struct.svc_rdma_pcl, ptr %pcl, i32 0, i32 1
  %0 = ptrtoint ptr %cl_chunks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cl_chunks, align 4
  %cmp.i.not4 = icmp eq ptr %1, %cl_chunks
  br i1 %cmp.i.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = ptrtoint ptr %cl_chunks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %cl_chunks, align 4
  %cmp.i.i.i = icmp eq ptr %3, %cl_chunks
  %spec.select.i = select i1 %cmp.i.i.i, ptr null, ptr %3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %spec.select.i) #7
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spec.select.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %10 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %spec.select.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %spec.select.i) #7
  %12 = ptrtoint ptr %cl_chunks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %cl_chunks, align 4
  %cmp.i.not = icmp eq ptr %13, %cl_chunks
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @pcl_alloc_call(ptr noundef %rctxt, ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rc_call_pcl = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %rctxt, i32 0, i32 13
  %0 = ptrtoint ptr %rc_call_pcl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rc_call_pcl, align 4
  store i32 0, ptr %rc_call_pcl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp34.not = icmp eq i32 %1, 0
  br i1 %cmp34.not, label %entry.cleanup13_crit_edge, label %for.body.lr.ph

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup13

for.body.lr.ph:                                   ; preds = %entry
  %cl_chunks.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %rctxt, i32 0, i32 13, i32 1
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 16) #7
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %4, i32 24) #7
  %retval.0.i.i = select i1 %3, i32 -1, i32 %spec.select.i.i
  %rc_cid.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %rctxt, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cmp37 = phi i1 [ true, %for.body.lr.ph ], [ %cmp, %for.inc.for.body_crit_edge ]
  %p.addr.036 = phi ptr [ %p, %for.body.lr.ph ], [ %add.ptr.i.i.i, %for.inc.for.body_crit_edge ]
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %p.addr.036, i32 1
  %incdec.ptr.i = getelementptr i32, ptr %p.addr.036, i32 2
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %incdec.ptr, align 4
  %incdec.ptr.i.i = getelementptr i32, ptr %p.addr.036, i32 3
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %incdec.ptr.i, align 4
  %incdec.ptr1.i.i = getelementptr i32, ptr %p.addr.036, i32 4
  %9 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %incdec.ptr.i.i, align 4
  %11 = ptrtoint ptr %incdec.ptr1.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %incdec.ptr1.i.i, align 1
  %add.ptr.i.i.i = getelementptr i32, ptr %p.addr.036, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.not = icmp eq i32 %6, 0
  br i1 %cmp2.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %13 = ptrtoint ptr %cl_chunks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %cl_chunks.i, align 4
  %cmp.i.i = icmp eq ptr %14, %cl_chunks.i
  br i1 %cmp.i.i, label %if.end8.i.i, label %if.else

if.end8.i.i:                                      ; preds = %if.end
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.cleanup13_crit_edge, label %if.end7

if.end8.i.i.cleanup13_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup13

if.end7:                                          ; preds = %if.end8.i.i
  %ch_position.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %call9.i.i, i32 0, i32 1
  %15 = call ptr @memset(ptr %ch_position.i, i32 0, i32 16)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end7
  %pos.0.in.i = phi ptr [ %cl_chunks.i, %if.end7 ], [ %pos.0.i, %for.body.i.for.cond.i_crit_edge ]
  %16 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %pos.0.i, %cl_chunks.i
  br i1 %cmp.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %ch_position.i28 = getelementptr inbounds %struct.svc_rdma_chunk, ptr %pos.0.i, i32 0, i32 1
  %17 = ptrtoint ptr %ch_position.i28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ch_position.i28, align 8
  %19 = ptrtoint ptr %ch_position.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ch_position.i, align 8
  %cmp3.i = icmp ugt i32 %18, %20
  br i1 %cmp3.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %pos.0.lcssa.i = phi ptr [ %pos.0.i, %for.body.i.for.end.i_crit_edge ], [ %cl_chunks.i, %for.cond.i.for.end.i_crit_edge ]
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.0.lcssa.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %22, ptr noundef %pos.0.lcssa.i) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.end.i.pcl_insert_position.exit_crit_edge

for.end.i.pcl_insert_position.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcl_insert_position.exit

if.end.i.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i.i, ptr %prev.i, align 4
  %24 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %pos.0.lcssa.i, ptr %call9.i.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call9.i.i, ptr %22, align 4
  br label %pcl_insert_position.exit

pcl_insert_position.exit:                         ; preds = %if.end.i.i, %for.end.i.pcl_insert_position.exit_crit_edge
  %27 = ptrtoint ptr %rc_call_pcl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rc_call_pcl, align 4
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %rc_call_pcl, align 4
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %cl_chunks.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cl_chunks.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %pcl_insert_position.exit
  %chunk.0 = phi ptr [ %call9.i.i, %pcl_insert_position.exit ], [ %30, %if.else ]
  %ch_segcount.i29 = getelementptr inbounds %struct.svc_rdma_chunk, ptr %chunk.0, i32 0, i32 4
  %31 = ptrtoint ptr %ch_segcount.i29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ch_segcount.i29, align 4
  %arrayidx.i = getelementptr %struct.svc_rdma_chunk, ptr %chunk.0, i32 0, i32 5, i32 %32
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %8, ptr %arrayidx.i, align 8
  %rs_length.i = getelementptr %struct.svc_rdma_chunk, ptr %chunk.0, i32 0, i32 5, i32 %32, i32 1
  %34 = ptrtoint ptr %rs_length.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %10, ptr %rs_length.i, align 4
  %rs_offset.i = getelementptr %struct.svc_rdma_chunk, ptr %chunk.0, i32 0, i32 5, i32 %32, i32 2
  %35 = ptrtoint ptr %rs_offset.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %12, ptr %rs_offset.i, align 8
  tail call fastcc void @trace_svcrdma_decode_rseg(ptr noundef %rc_cid.i, ptr noundef %chunk.0, ptr noundef %arrayidx.i) #7
  %ch_length.i30 = getelementptr inbounds %struct.svc_rdma_chunk, ptr %chunk.0, i32 0, i32 2
  %36 = ptrtoint ptr %ch_length.i30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ch_length.i30, align 4
  %add.i = add i32 %37, %10
  store i32 %add.i, ptr %ch_length.i30, align 4
  %38 = ptrtoint ptr %ch_segcount.i29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ch_segcount.i29, align 4
  %inc.i31 = add i32 %39, 1
  store i32 %inc.i31, ptr %ch_segcount.i29, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.035, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %1)
  %cmp = icmp ult i32 %inc, %1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup13_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup13_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup13

cleanup13:                                        ; preds = %for.inc.cleanup13_crit_edge, %if.end8.i.i.cleanup13_crit_edge, %entry.cleanup13_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.cleanup13_crit_edge ], [ %cmp37, %if.end8.i.i.cleanup13_crit_edge ], [ %cmp, %for.inc.cleanup13_crit_edge ]
  %40 = xor i1 %cmp.lcssa, true
  ret i1 %40
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @pcl_alloc_read(ptr noundef %rctxt, ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rc_read_pcl = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %rctxt, i32 0, i32 14
  %0 = ptrtoint ptr %rc_read_pcl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rc_read_pcl, align 4
  store i32 0, ptr %rc_read_pcl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp44.not = icmp eq i32 %1, 0
  br i1 %cmp44.not, label %entry.cleanup14_crit_edge, label %for.body.lr.ph

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup14

for.body.lr.ph:                                   ; preds = %entry
  %cl_chunks.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %rctxt, i32 0, i32 14, i32 1
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 16) #7
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %4, i32 24) #7
  %retval.0.i.i = select i1 %3, i32 -1, i32 %spec.select.i.i
  %rc_cid.i = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %rctxt, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cmp47 = phi i1 [ true, %for.body.lr.ph ], [ %cmp, %for.inc.for.body_crit_edge ]
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %p.addr.045 = phi ptr [ %p, %for.body.lr.ph ], [ %add.ptr.i.i.i, %for.inc.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %p.addr.045, i32 1
  %incdec.ptr.i = getelementptr i32, ptr %p.addr.045, i32 2
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %incdec.ptr, align 4
  %incdec.ptr.i.i = getelementptr i32, ptr %p.addr.045, i32 3
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %incdec.ptr.i, align 4
  %incdec.ptr1.i.i = getelementptr i32, ptr %p.addr.045, i32 4
  %9 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %incdec.ptr.i.i, align 4
  %11 = ptrtoint ptr %incdec.ptr1.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %incdec.ptr1.i.i, align 1
  %add.ptr.i.i.i = getelementptr i32, ptr %p.addr.045, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %for.body.for.cond.i_crit_edge

for.body.for.cond.i_crit_edge:                    ; preds = %for.body
  br label %for.cond.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.for.cond.i_crit_edge
  %pos.0.in.i = phi ptr [ %pos.0.i, %for.body.i.for.cond.i_crit_edge ], [ %cl_chunks.i, %for.body.for.cond.i_crit_edge ]
  %13 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %pos.0.i, %cl_chunks.i
  br i1 %cmp.not.i, label %for.cond.i.if.end8.i.i_crit_edge, label %for.body.i

for.cond.i.if.end8.i.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

for.body.i:                                       ; preds = %for.cond.i
  %ch_position.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %pos.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %ch_position.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ch_position.i, align 8
  %cmp2.i = icmp eq i32 %15, %6
  br i1 %cmp2.i, label %pcl_lookup_position.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

pcl_lookup_position.exit:                         ; preds = %for.body.i
  %tobool.not = icmp eq ptr %pos.0.i, null
  br i1 %tobool.not, label %pcl_lookup_position.exit.if.end8.i.i_crit_edge, label %pcl_lookup_position.exit.if.end9_crit_edge

pcl_lookup_position.exit.if.end9_crit_edge:       ; preds = %pcl_lookup_position.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

pcl_lookup_position.exit.if.end8.i.i_crit_edge:   ; preds = %pcl_lookup_position.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %pcl_lookup_position.exit.if.end8.i.i_crit_edge, %for.cond.i.if.end8.i.i_crit_edge
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.cleanup14_crit_edge, label %if.end8

if.end8.i.i.cleanup14_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup14

if.end8:                                          ; preds = %if.end8.i.i
  %ch_position.i28 = getelementptr inbounds %struct.svc_rdma_chunk, ptr %call9.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %ch_position.i28 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %6, ptr %ch_position.i28, align 8
  %ch_length.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %call9.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %ch_length.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %ch_length.i, align 4
  %ch_payload_length.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %call9.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %ch_payload_length.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %ch_payload_length.i, align 16
  %ch_segcount.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %call9.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %ch_segcount.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ch_segcount.i, align 4
  br label %for.cond.i33

for.cond.i33:                                     ; preds = %for.body.i35.for.cond.i33_crit_edge, %if.end8
  %pos.0.in.i30 = phi ptr [ %cl_chunks.i, %if.end8 ], [ %pos.0.i31, %for.body.i35.for.cond.i33_crit_edge ]
  %20 = ptrtoint ptr %pos.0.in.i30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %pos.0.i31 = load ptr, ptr %pos.0.in.i30, align 4
  %cmp.not.i32 = icmp eq ptr %pos.0.i31, %cl_chunks.i
  br i1 %cmp.not.i32, label %for.cond.i33.for.end.i_crit_edge, label %for.body.i35

for.cond.i33.for.end.i_crit_edge:                 ; preds = %for.cond.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i35:                                     ; preds = %for.cond.i33
  %ch_position.i34 = getelementptr inbounds %struct.svc_rdma_chunk, ptr %pos.0.i31, i32 0, i32 1
  %21 = ptrtoint ptr %ch_position.i34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ch_position.i34, align 8
  %23 = ptrtoint ptr %ch_position.i28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ch_position.i28, align 8
  %cmp3.i = icmp ugt i32 %22, %24
  br i1 %cmp3.i, label %for.body.i35.for.end.i_crit_edge, label %for.body.i35.for.cond.i33_crit_edge

for.body.i35.for.cond.i33_crit_edge:              ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i33

for.body.i35.for.end.i_crit_edge:                 ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i35.for.end.i_crit_edge, %for.cond.i33.for.end.i_crit_edge
  %pos.0.lcssa.i = phi ptr [ %pos.0.i31, %for.body.i35.for.end.i_crit_edge ], [ %cl_chunks.i, %for.cond.i33.for.end.i_crit_edge ]
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.0.lcssa.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %26, ptr noundef %pos.0.lcssa.i) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.end.i.pcl_insert_position.exit_crit_edge

for.end.i.pcl_insert_position.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcl_insert_position.exit

if.end.i.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call9.i.i, ptr %prev.i, align 4
  %28 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %pos.0.lcssa.i, ptr %call9.i.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call9.i.i, ptr %26, align 4
  br label %pcl_insert_position.exit

pcl_insert_position.exit:                         ; preds = %if.end.i.i, %for.end.i.pcl_insert_position.exit_crit_edge
  %31 = ptrtoint ptr %rc_read_pcl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rc_read_pcl, align 4
  %inc.i = add i32 %32, 1
  store i32 %inc.i, ptr %rc_read_pcl, align 4
  br label %if.end9

if.end9:                                          ; preds = %pcl_insert_position.exit, %pcl_lookup_position.exit.if.end9_crit_edge
  %chunk.0 = phi ptr [ %pos.0.i, %pcl_lookup_position.exit.if.end9_crit_edge ], [ %call9.i.i, %pcl_insert_position.exit ]
  %ch_segcount.i36 = getelementptr inbounds %struct.svc_rdma_chunk, ptr %chunk.0, i32 0, i32 4
  %33 = ptrtoint ptr %ch_segcount.i36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ch_segcount.i36, align 4
  %arrayidx.i = getelementptr %struct.svc_rdma_chunk, ptr %chunk.0, i32 0, i32 5, i32 %34
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %8, ptr %arrayidx.i, align 8
  %rs_length.i = getelementptr %struct.svc_rdma_chunk, ptr %chunk.0, i32 0, i32 5, i32 %34, i32 1
  %36 = ptrtoint ptr %rs_length.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %10, ptr %rs_length.i, align 4
  %rs_offset.i = getelementptr %struct.svc_rdma_chunk, ptr %chunk.0, i32 0, i32 5, i32 %34, i32 2
  %37 = ptrtoint ptr %rs_offset.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %12, ptr %rs_offset.i, align 8
  tail call fastcc void @trace_svcrdma_decode_rseg(ptr noundef %rc_cid.i, ptr noundef %chunk.0, ptr noundef %arrayidx.i) #7
  %ch_length.i37 = getelementptr inbounds %struct.svc_rdma_chunk, ptr %chunk.0, i32 0, i32 2
  %38 = ptrtoint ptr %ch_length.i37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ch_length.i37, align 4
  %add.i = add i32 %39, %10
  store i32 %add.i, ptr %ch_length.i37, align 4
  %40 = ptrtoint ptr %ch_segcount.i36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ch_segcount.i36, align 4
  %inc.i38 = add i32 %41, 1
  store i32 %inc.i38, ptr %ch_segcount.i36, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end9, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.046, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %1)
  %cmp = icmp ult i32 %inc, %1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup14_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup14_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup14

cleanup14:                                        ; preds = %for.inc.cleanup14_crit_edge, %if.end8.i.i.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.cleanup14_crit_edge ], [ %cmp47, %if.end8.i.i.cleanup14_crit_edge ], [ %cmp, %for.inc.cleanup14_crit_edge ]
  %42 = xor i1 %cmp.lcssa, true
  ret i1 %42
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @pcl_alloc_write(ptr noundef %rctxt, ptr noundef %pcl, ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pcl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp35.not = icmp eq i32 %1, 0
  br i1 %cmp35.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %cl_chunks = getelementptr inbounds %struct.svc_rdma_pcl, ptr %pcl, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.svc_rdma_pcl, ptr %pcl, i32 0, i32 1, i32 1
  %rc_cid = getelementptr inbounds %struct.svc_rdma_recv_ctxt, ptr %rctxt, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc9.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc10, %for.inc9.for.body_crit_edge ]
  %p.addr.036 = phi ptr [ %p, %for.body.lr.ph ], [ %p.addr.1.lcssa, %for.inc9.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %p.addr.036, i32 1
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %incdec.ptr, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 16) #7
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %6, i32 24) #7
  %retval.0.i.i = select i1 %5, i32 -1, i32 %spec.select.i.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %for.body.cleanup.loopexit_crit_edge, label %if.end

for.body.cleanup.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit

if.end:                                           ; preds = %for.body
  %ch_position.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %call9.i.i, i32 0, i32 1
  %ch_length.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %call9.i.i, i32 0, i32 2
  %ch_segcount.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %call9.i.i, i32 0, i32 4
  %incdec.ptr1 = getelementptr i32, ptr %p.addr.036, i32 2
  %7 = call ptr @memset(ptr %ch_position.i, i32 0, i32 16)
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %9, ptr noundef %cl_chunks) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i.i, ptr %prev.i, align 4
  %11 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cl_chunks, ptr %call9.i.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call9.i.i, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp432.not = icmp eq i32 %3, 0
  br i1 %cmp432.not, label %list_add_tail.exit.for.inc9_crit_edge, label %list_add_tail.exit.for.body5_crit_edge

list_add_tail.exit.for.body5_crit_edge:           ; preds = %list_add_tail.exit
  br label %for.body5

list_add_tail.exit.for.inc9_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %list_add_tail.exit.for.body5_crit_edge
  %j.034 = phi i32 [ %inc8, %for.body5.for.body5_crit_edge ], [ 0, %list_add_tail.exit.for.body5_crit_edge ]
  %p.addr.133 = phi ptr [ %add.ptr.i.i, %for.body5.for.body5_crit_edge ], [ %incdec.ptr1, %list_add_tail.exit.for.body5_crit_edge ]
  %arrayidx = getelementptr %struct.svc_rdma_chunk, ptr %call9.i.i, i32 0, i32 5, i32 %j.034
  %rs_length = getelementptr %struct.svc_rdma_chunk, ptr %call9.i.i, i32 0, i32 5, i32 %j.034, i32 1
  %rs_offset = getelementptr %struct.svc_rdma_chunk, ptr %call9.i.i, i32 0, i32 5, i32 %j.034, i32 2
  %incdec.ptr.i = getelementptr i32, ptr %p.addr.133, i32 1
  %14 = ptrtoint ptr %p.addr.133 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %p.addr.133, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx, align 8
  %incdec.ptr1.i = getelementptr i32, ptr %p.addr.133, i32 2
  %17 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr.i, align 4
  %19 = ptrtoint ptr %rs_length to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %rs_length, align 4
  %20 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %incdec.ptr1.i, align 1
  %22 = ptrtoint ptr %rs_offset to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %rs_offset, align 16
  %add.ptr.i.i = getelementptr i32, ptr %p.addr.133, i32 4
  tail call fastcc void @trace_svcrdma_decode_wseg(ptr noundef %rc_cid, ptr noundef nonnull %call9.i.i, i32 noundef %j.034)
  %23 = ptrtoint ptr %rs_length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rs_length, align 4
  %25 = ptrtoint ptr %ch_length.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ch_length.i, align 4
  %add = add i32 %26, %24
  store i32 %add, ptr %ch_length.i, align 4
  %27 = ptrtoint ptr %ch_segcount.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ch_segcount.i, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %ch_segcount.i, align 4
  %inc8 = add nuw i32 %j.034, 1
  %exitcond.not = icmp eq i32 %inc8, %3
  br i1 %exitcond.not, label %for.body5.for.inc9_crit_edge, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5

for.body5.for.inc9_crit_edge:                     ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9

for.inc9:                                         ; preds = %for.body5.for.inc9_crit_edge, %list_add_tail.exit.for.inc9_crit_edge
  %p.addr.1.lcssa = phi ptr [ %incdec.ptr1, %list_add_tail.exit.for.inc9_crit_edge ], [ %add.ptr.i.i, %for.body5.for.inc9_crit_edge ]
  %inc10 = add nuw i32 %i.037, 1
  %29 = ptrtoint ptr %pcl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pcl, align 4
  %cmp = icmp ult i32 %inc10, %30
  br i1 %cmp, label %for.inc9.for.body_crit_edge, label %for.inc9.cleanup.loopexit_crit_edge

for.inc9.cleanup.loopexit_crit_edge:              ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit

for.inc9.for.body_crit_edge:                      ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.loopexit:                                 ; preds = %for.inc9.cleanup.loopexit_crit_edge, %for.body.cleanup.loopexit_crit_edge
  %phi.bo = xor i1 %tobool.not.i, true
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ true, %entry.cleanup_crit_edge ], [ %phi.bo, %cleanup.loopexit ]
  ret i1 %cmp.lcssa
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_decode_wseg(ptr noundef %cid, ptr noundef %chunk, i32 noundef %segno) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_wseg, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_decode_wseg, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !21

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !11) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !22

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !11) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  %call42 = tail call i32 @__traceiter_svcrdma_decode_wseg(ptr noundef null, ptr noundef %cid, ptr noundef %chunk, i32 noundef %segno) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !24
  %13 = tail call i32 @llvm.read_register.i32(metadata !11) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !11) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !22

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !11) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_wseg, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_wseg, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_svcrdma_decode_wseg.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_svcrdma_decode_wseg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1748, ptr noundef nonnull @.str.1) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !26
  %31 = tail call i32 @llvm.read_register.i32(metadata !11) #7
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
define dso_local i32 @pcl_process_nonpayloads(ptr noundef %pcl, ptr noundef %xdr, ptr nocapture noundef readonly %actor, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %subbuf.i68 = alloca %struct.xdr_buf, align 4
  %subbuf.i54 = alloca %struct.xdr_buf, align 4
  %subbuf.i = alloca %struct.xdr_buf, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_chunks.i.i = getelementptr inbounds %struct.svc_rdma_pcl, ptr %pcl, i32 0, i32 1
  %0 = ptrtoint ptr %cl_chunks.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cl_chunks.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %1, %cl_chunks.i.i
  %tobool.not87 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i.i.i, %tobool.not87
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %ch_payload_length = getelementptr inbounds %struct.svc_rdma_chunk, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ch_payload_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch_payload_length, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call2 = tail call i32 %actor(ptr noundef %xdr, ptr noundef %data) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ch_position = getelementptr inbounds %struct.svc_rdma_chunk, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ch_position to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ch_position, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %subbuf.i) #7
  %6 = call ptr @memset(ptr %subbuf.i, i32 255, i32 44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %pcl_process_region.exit.thread93, label %if.end.i

pcl_process_region.exit.thread93:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %subbuf.i) #7
  br label %while.cond.preheader

if.end.i:                                         ; preds = %if.end
  %call.i = call i32 @xdr_buf_subsegment(ptr noundef %xdr, ptr noundef nonnull %subbuf.i, i32 noundef 0, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %pcl_process_region.exit, label %pcl_process_region.exit.thread

pcl_process_region.exit.thread:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %subbuf.i) #7
  br label %cleanup

pcl_process_region.exit:                          ; preds = %if.end.i
  %call4.i = call i32 %actor(ptr noundef nonnull %subbuf.i, ptr noundef %data) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %subbuf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp slt i32 %call4.i, 0
  br i1 %cmp, label %pcl_process_region.exit.cleanup_crit_edge, label %pcl_process_region.exit.while.cond.preheader_crit_edge

pcl_process_region.exit.while.cond.preheader_crit_edge: ; preds = %pcl_process_region.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader

pcl_process_region.exit.cleanup_crit_edge:        ; preds = %pcl_process_region.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %pcl_process_region.exit.while.cond.preheader_crit_edge, %pcl_process_region.exit.thread93
  br label %while.cond

while.cond:                                       ; preds = %pcl_process_region.exit62.while.cond_crit_edge, %while.cond.preheader
  %chunk.0 = phi ptr [ %8, %pcl_process_region.exit62.while.cond_crit_edge ], [ %1, %while.cond.preheader ]
  %7 = ptrtoint ptr %chunk.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chunk.0, align 4
  %cmp.i.not.i = icmp eq ptr %8, %cl_chunks.i.i
  %tobool7.not88 = icmp eq ptr %8, null
  %tobool7.not = or i1 %cmp.i.not.i, %tobool7.not88
  br i1 %tobool7.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.cond
  %ch_payload_length8 = getelementptr inbounds %struct.svc_rdma_chunk, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ch_payload_length8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ch_payload_length8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp eq i32 %10, 0
  br i1 %tobool9.not, label %while.body.while.end_crit_edge, label %if.end11

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end11:                                         ; preds = %while.body
  %ch_position.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %chunk.0, i32 0, i32 1
  %11 = ptrtoint ptr %ch_position.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ch_position.i, align 8
  %ch_payload_length.i = getelementptr inbounds %struct.svc_rdma_chunk, ptr %chunk.0, i32 0, i32 3
  %13 = ptrtoint ptr %ch_payload_length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ch_payload_length.i, align 8
  %add.i = add i32 %12, 3
  %add.i.i = add i32 %add.i, %14
  %and.i.i = and i32 %add.i.i, -4
  %ch_position13 = getelementptr inbounds %struct.svc_rdma_chunk, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %ch_position13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ch_position13, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %subbuf.i54) #7
  %17 = call ptr @memset(ptr %subbuf.i54, i32 255, i32 44)
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %and.i.i)
  %tobool.not.i55 = icmp eq i32 %16, %and.i.i
  br i1 %tobool.not.i55, label %if.end11.pcl_process_region.exit62_crit_edge, label %if.end.i58

if.end11.pcl_process_region.exit62_crit_edge:     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %pcl_process_region.exit62

if.end.i58:                                       ; preds = %if.end11
  %sub = sub i32 %16, %and.i.i
  %call.i56 = call i32 @xdr_buf_subsegment(ptr noundef %xdr, ptr noundef nonnull %subbuf.i54, i32 noundef %and.i.i, i32 noundef %sub) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool1.not.i57 = icmp eq i32 %call.i56, 0
  br i1 %tobool1.not.i57, label %if.end3.i60, label %pcl_process_region.exit62.thread

pcl_process_region.exit62.thread:                 ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %subbuf.i54) #7
  br label %cleanup

if.end3.i60:                                      ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i59 = call i32 %actor(ptr noundef nonnull %subbuf.i54, ptr noundef %data) #7
  br label %pcl_process_region.exit62

pcl_process_region.exit62:                        ; preds = %if.end3.i60, %if.end11.pcl_process_region.exit62_crit_edge
  %retval.0.i61 = phi i32 [ %call4.i59, %if.end3.i60 ], [ 0, %if.end11.pcl_process_region.exit62_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %subbuf.i54) #7
  %cmp15 = icmp slt i32 %retval.0.i61, 0
  br i1 %cmp15, label %pcl_process_region.exit62.cleanup_crit_edge, label %pcl_process_region.exit62.while.cond_crit_edge

pcl_process_region.exit62.while.cond_crit_edge:   ; preds = %pcl_process_region.exit62
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

pcl_process_region.exit62.cleanup_crit_edge:      ; preds = %pcl_process_region.exit62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %ch_position.i63 = getelementptr inbounds %struct.svc_rdma_chunk, ptr %chunk.0, i32 0, i32 1
  %18 = ptrtoint ptr %ch_position.i63 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ch_position.i63, align 8
  %ch_payload_length.i64 = getelementptr inbounds %struct.svc_rdma_chunk, ptr %chunk.0, i32 0, i32 3
  %20 = ptrtoint ptr %ch_payload_length.i64 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ch_payload_length.i64, align 8
  %add.i65 = add i32 %19, 3
  %add.i.i66 = add i32 %add.i65, %21
  %and.i.i67 = and i32 %add.i.i66, -4
  %len = getelementptr inbounds %struct.xdr_buf, ptr %xdr, i32 0, i32 8
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %subbuf.i68) #7
  %24 = call ptr @memset(ptr %subbuf.i68, i32 255, i32 44)
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %and.i.i67)
  %tobool.not.i69 = icmp eq i32 %23, %and.i.i67
  br i1 %tobool.not.i69, label %pcl_process_region.exit76.thread84, label %if.end.i72

pcl_process_region.exit76.thread84:               ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %subbuf.i68) #7
  br label %cleanup

if.end.i72:                                       ; preds = %while.end
  %sub19 = sub i32 %23, %and.i.i67
  %call.i70 = call i32 @xdr_buf_subsegment(ptr noundef %xdr, ptr noundef nonnull %subbuf.i68, i32 noundef %and.i.i67, i32 noundef %sub19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool1.not.i71 = icmp eq i32 %call.i70, 0
  br i1 %tobool1.not.i71, label %pcl_process_region.exit76, label %pcl_process_region.exit76.thread

pcl_process_region.exit76.thread:                 ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %subbuf.i68) #7
  br label %25

pcl_process_region.exit76:                        ; preds = %if.end.i72
  %call4.i73 = call i32 %actor(ptr noundef nonnull %subbuf.i68, ptr noundef %data) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %subbuf.i68) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i73)
  %cmp21 = icmp slt i32 %call4.i73, 0
  br i1 %cmp21, label %pcl_process_region.exit76._crit_edge, label %pcl_process_region.exit76.cleanup_crit_edge

pcl_process_region.exit76.cleanup_crit_edge:      ; preds = %pcl_process_region.exit76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pcl_process_region.exit76._crit_edge:             ; preds = %pcl_process_region.exit76
  call void @__sanitizer_cov_trace_pc() #9
  br label %25

25:                                               ; preds = %pcl_process_region.exit76._crit_edge, %pcl_process_region.exit76.thread
  %retval.0.i7583 = phi i32 [ -90, %pcl_process_region.exit76.thread ], [ %call4.i73, %pcl_process_region.exit76._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %25, %pcl_process_region.exit76.cleanup_crit_edge, %pcl_process_region.exit76.thread84, %pcl_process_region.exit62.cleanup_crit_edge, %pcl_process_region.exit62.thread, %pcl_process_region.exit.cleanup_crit_edge, %pcl_process_region.exit.thread, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call4.i, %pcl_process_region.exit.cleanup_crit_edge ], [ -90, %pcl_process_region.exit.thread ], [ -90, %pcl_process_region.exit62.thread ], [ %retval.0.i7583, %25 ], [ 0, %pcl_process_region.exit76.cleanup_crit_edge ], [ 0, %pcl_process_region.exit76.thread84 ], [ %retval.0.i61, %pcl_process_region.exit62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_decode_rseg(ptr noundef %cid, ptr noundef %chunk, ptr noundef %segment) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_rseg, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_decode_rseg, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !21

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !11) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !22

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !11) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !27
  %call42 = tail call i32 @__traceiter_svcrdma_decode_rseg(ptr noundef null, ptr noundef %cid, ptr noundef %chunk, ptr noundef %segment) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !28
  %13 = tail call i32 @llvm.read_register.i32(metadata !11) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !11) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !22

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !11) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_rseg, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_decode_rseg, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_svcrdma_decode_rseg.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_svcrdma_decode_rseg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1711, ptr noundef nonnull @.str.1) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !26
  %31 = tail call i32 @llvm.read_register.i32(metadata !11) #7
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_decode_rseg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_decode_wseg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_buf_subsegment(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !10}
!llvm.named.register.sp = !{!11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/trace/events/rpcrdma.h", i32 1677, i32 1}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/trace/events/rpcrdma.h", i32 1713, i32 1}
!10 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!11 = !{!"sp"}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2148750413, i64 2148750418, i64 2148750431, i64 2148750475, i64 2148750509, i64 2148750530}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2159551425}
!24 = !{i64 2159551660}
!25 = !{i64 2149340235}
!26 = !{i64 2149341271}
!27 = !{i64 2159533757}
!28 = !{i64 2159533996}
