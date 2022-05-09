; ModuleID = '/llk/IR_all_yes/net/sunrpc/xprtrdma/backchannel.c_pt.bc'
source_filename = "../net/sunrpc/xprtrdma/backchannel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.109 }
%struct.atomic_t = type { i32 }
%union.anon.109 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.rpcrdma_xprt = type { %struct.rpc_xprt, ptr, %struct.rpcrdma_buffer, %struct.delayed_work, %struct.rpc_timeout, %struct.rpcrdma_stats }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.131, ptr, ptr, [6 x ptr], ptr, %struct.callback_head, ptr, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.127 }
%union.anon.127 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.anon.131 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
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
%struct.rpcrdma_ep = type { %struct.kref, ptr, ptr, i32, i32, ptr, i32, %struct.completion, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.ib_qp_init_attr, %struct.wait_queue_head, ptr, %struct.rpcrdma_connect_private, %struct.rdma_conn_param, i32, i32, i32, i32, %struct.atomic_t, [4 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rpcrdma_connect_private = type { i32, i8, i8, i8, i8 }
%struct.rdma_conn_param = type { ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.rpcrdma_regbuf = type { %struct.ib_sge, ptr, i32, ptr }
%struct.ib_sge = type { i64, i32, i32 }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.126, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.126 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.rpcrdma_rep = type { %struct.ib_cqe, %struct.rpc_rdma_cid, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, %struct.xdr_buf, %struct.xdr_stream, %struct.llist_node, %struct.ib_recv_wr, %struct.list_head }
%struct.ib_cqe = type { ptr }
%struct.rpc_rdma_cid = type { i32, i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.llist_node = type { ptr }
%struct.ib_recv_wr = type { ptr, %union.anon.169, ptr, i32 }
%union.anon.169 = type { i64 }
%struct.rpcrdma_req = type { %struct.list_head, %struct.rpc_rqst, ptr, %struct.xdr_stream, %struct.xdr_buf, %struct.ib_send_wr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.kref, %struct.list_head, %struct.list_head, [260 x %struct.rpcrdma_mr_seg] }
%struct.ib_send_wr = type { ptr, %union.anon.167, ptr, i32, i32, i32, %union.anon.168 }
%union.anon.167 = type { i64 }
%union.anon.168 = type { i32 }
%struct.rpcrdma_mr_seg = type { i32, ptr, i64 }
%struct.svc_serv = type { ptr, ptr, %struct.spinlock, %struct.kref, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, %struct.timer_list, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8 }

@rpcrdma_bc_receive_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014RPC/RDMA backchannel overflow\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rpcrdma_bc_receive_call\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"net/sunrpc/xprtrdma/backchannel.c\00", [62 x i8] zeroinitializer }, align 32
@rpcrdma_bc_receive_call._entry_ptr = internal global ptr @rpcrdma_bc_receive_call._entry, section ".printk_index", align 4
@__tracepoint_xprtrdma_cb_setup = external dso_local global %struct.tracepoint, align 4
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/trace/events/rpcrdma.h\00", [33 x i8] zeroinitializer }, align 32
@trace_xprtrdma_cb_setup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xprtrdma_cb_reply = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_cb_reply.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xprtrdma_cb_call = external dso_local global %struct.tracepoint, align 4
@trace_xprtrdma_cb_call.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.16 = private constant [37 x i8] c"../net/sunrpc/xprtrdma/backchannel.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 276, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [34 x i8] c"../include/trace/events/rpcrdma.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 1453, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 108, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @rpcrdma_bc_receive_call._entry, ptr @rpcrdma_bc_receive_call._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcrdma_bc_receive_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xprt_rdma_bc_setup(ptr noundef %xprt, i32 noundef %reqs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rb_bc_srv_max_requests = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 2, i32 13
  %0 = ptrtoint ptr %rb_bc_srv_max_requests to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16, ptr %rb_bc_srv_max_requests, align 4
  tail call fastcc void @trace_xprtrdma_cb_setup(ptr noundef %xprt, i32 noundef %reqs)
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_cb_setup(ptr noundef %r_xprt, i32 noundef %reqs) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_cb_setup, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_cb_setup, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !30

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !20) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !31

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !20) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !32
  %call42 = tail call i32 @__traceiter_xprtrdma_cb_setup(ptr noundef null, ptr noundef %r_xprt, i32 noundef %reqs) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !33
  %13 = tail call i32 @llvm.read_register.i32(metadata !20) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !20) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !31

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !20) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_cb_setup, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_cb_setup, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_cb_setup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xprtrdma_cb_setup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1476, ptr noundef nonnull @.str.4) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !35
  %31 = tail call i32 @llvm.read_register.i32(metadata !20) #8
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xprt_rdma_bc_maxpayload(ptr nocapture noundef readonly %xprt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ep = getelementptr inbounds %struct.rpcrdma_xprt, ptr %xprt, i32 0, i32 1
  %0 = ptrtoint ptr %rx_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ep, align 8
  %re_inline_send = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %re_inline_send to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %re_inline_send, align 4
  %re_inline_recv = getelementptr inbounds %struct.rpcrdma_ep, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %re_inline_recv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %re_inline_recv, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %3, i32 %5)
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 4096)
  %sub = add nsw i32 %7, -28
  ret i32 %sub
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xprt_rdma_bc_max_slots(ptr nocapture noundef readnone %xprt) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xprt_rdma_bc_send_reply(ptr noundef %rqst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rqst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rqst, align 8
  %add.ptr.i = getelementptr i8, ptr %rqst, i32 -8
  %state.i = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @xprt_request_get_cong(ptr noundef %1, ptr noundef %rqst) #8
  br i1 %call2, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %rqst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rqst, align 8
  %rl_hdrbuf.i = getelementptr i8, ptr %rqst, i32 328
  %iov_len.i.i = getelementptr i8, ptr %rqst, i32 332
  %7 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %iov_len.i.i, align 4
  %len1.i.i = getelementptr i8, ptr %rqst, i32 368
  %8 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %len1.i.i, align 4
  %rl_stream.i = getelementptr i8, ptr %rqst, i32 292
  %rl_rdmabuf.i = getelementptr i8, ptr %rqst, i32 420
  %9 = ptrtoint ptr %rl_rdmabuf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rl_rdmabuf.i, align 4
  %rg_data.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %rg_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rg_data.i.i, align 8
  tail call void @xdr_init_encode(ptr noundef %rl_stream.i, ptr noundef %rl_hdrbuf.i, ptr noundef %12, ptr noundef %rqst) #8
  %call4.i = tail call ptr @xdr_reserve_space(ptr noundef %rl_stream.i, i32 noundef 28) #8
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %if.end4.cleanup_crit_edge, label %if.end.i, !prof !36

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end4
  %rq_xid.i = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 5
  %13 = ptrtoint ptr %rq_xid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rq_xid.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %call4.i, i32 1
  %15 = ptrtoint ptr %call4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %call4.i, align 4
  %incdec.ptr8.i = getelementptr i32, ptr %call4.i, i32 2
  %16 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %incdec.ptr.i, align 4
  %rb_bc_srv_max_requests.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %6, i32 0, i32 2, i32 13
  %17 = ptrtoint ptr %rb_bc_srv_max_requests.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rb_bc_srv_max_requests.i, align 4
  %incdec.ptr9.i = getelementptr i32, ptr %call4.i, i32 3
  %19 = ptrtoint ptr %incdec.ptr8.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %incdec.ptr8.i, align 4
  %rq_snd_buf.i = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 1
  %20 = call ptr @memset(ptr %incdec.ptr9.i, i32 0, i32 16)
  %call13.i = tail call i32 @rpcrdma_prepare_send_sges(ptr noundef %6, ptr noundef %add.ptr.i, i32 noundef 28, ptr noundef %rq_snd_buf.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end7, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end.i
  tail call fastcc void @trace_xprtrdma_cb_reply(ptr noundef %6, ptr noundef %rqst) #8
  %call8 = tail call i32 @frwr_send(ptr noundef %1, ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %drop_connection

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

drop_connection:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xprt_rdma_close(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %drop_connection, %if.end7.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -107, %drop_connection ], [ -107, %entry.cleanup_crit_edge ], [ -57, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ -5, %if.end4.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xprt_request_get_cong(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @frwr_send(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_rdma_close(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xprt_rdma_bc_destroy(ptr noundef %xprt, i32 noundef %reqs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_pa_lock = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 45
  tail call void @_raw_spin_lock(ptr noundef %bc_pa_lock) #8
  %bc_pa_list = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 46
  %0 = ptrtoint ptr %bc_pa_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_pa_list, align 4
  %cmp.not27 = icmp eq ptr %1, %bc_pa_list
  br i1 %cmp.not27, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in28 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in28, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in28) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in28, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in28, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in28, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in28, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %bc_pa_lock) #8
  %add.ptr.i = getelementptr i8, ptr %.pn.in28, i32 -288
  tail call void @rpcrdma_req_destroy(ptr noundef %add.ptr.i) #8
  tail call void @_raw_spin_lock(ptr noundef %bc_pa_lock) #8
  %cmp.not = icmp eq ptr %.pn, %bc_pa_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %bc_pa_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcrdma_req_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xprt_rdma_bc_free_rqst(ptr noundef %rqst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rl_reply = getelementptr i8, ptr %rqst, i32 288
  %0 = ptrtoint ptr %rl_reply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rl_reply, align 8
  %2 = ptrtoint ptr %rqst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rqst, align 8
  %rx_buf = getelementptr inbounds %struct.rpcrdma_xprt, ptr %3, i32 0, i32 2
  tail call void @rpcrdma_rep_put(ptr noundef %rx_buf, ptr noundef %1) #8
  %4 = ptrtoint ptr %rl_reply to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %rl_reply, align 8
  %bc_pa_lock = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 45
  tail call void @_raw_spin_lock(ptr noundef %bc_pa_lock) #8
  %rq_bc_pa_list = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 33
  %bc_pa_list = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 46
  %prev.i = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 46, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rq_bc_pa_list, ptr noundef %6, ptr noundef %bc_pa_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rq_bc_pa_list, ptr %prev.i, align 4
  %8 = ptrtoint ptr %rq_bc_pa_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %bc_pa_list, ptr %rq_bc_pa_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %rqst, i32 0, i32 33, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %rq_bc_pa_list, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %bc_pa_lock) #8
  tail call void @xprt_put(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcrdma_rep_put(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpcrdma_bc_receive_call(ptr noundef %r_xprt, ptr noundef %rep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rr_stream = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 12
  %call = tail call ptr @xdr_inline_decode(ptr noundef %rr_stream, i32 noundef 0) #8
  %nwords.i = getelementptr inbounds %struct.rpcrdma_rep, ptr %rep, i32 0, i32 12, i32 6
  %0 = ptrtoint ptr %nwords.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nwords.i, align 4
  %shl.i = shl i32 %1, 2
  %bc_pa_lock.i = getelementptr inbounds %struct.rpc_xprt, ptr %r_xprt, i32 0, i32 45
  tail call void @_raw_spin_lock(ptr noundef %bc_pa_lock.i) #8
  %bc_pa_list.i = getelementptr inbounds %struct.rpc_xprt, ptr %r_xprt, i32 0, i32 46
  %2 = ptrtoint ptr %bc_pa_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %bc_pa_list.i, align 4
  %cmp.not.i = icmp eq ptr %3, %bc_pa_list.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 -280
  %tobool.not51.i = icmp eq ptr %add.ptr.i, null
  %tobool.not.i = or i1 %cmp.not.i, %tobool.not51.i
  br i1 %tobool.not.i, label %create_req.i, label %if.end.i

if.end.i:                                         ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.rpcrdma_bc_rqst_get.exit.thread44_crit_edge

if.end.i.rpcrdma_bc_rqst_get.exit.thread44_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpcrdma_bc_rqst_get.exit.thread44

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %rpcrdma_bc_rqst_get.exit.thread44

rpcrdma_bc_rqst_get.exit.thread44:                ; preds = %if.end.i.i.i, %if.end.i.rpcrdma_bc_rqst_get.exit.thread44_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %bc_pa_lock.i) #8
  br label %if.end

create_req.i:                                     ; preds = %entry
  tail call void @_raw_spin_unlock(ptr noundef %bc_pa_lock.i) #8
  %bc_alloc_count.i = getelementptr inbounds %struct.rpc_xprt, ptr %r_xprt, i32 0, i32 43
  %12 = ptrtoint ptr %bc_alloc_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bc_alloc_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %13)
  %cmp5.i = icmp ugt i32 %13, 31
  br i1 %cmp5.i, label %create_req.i.do.end_crit_edge, label %if.end7.i

create_req.i.do.end_crit_edge:                    ; preds = %create_req.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end7.i:                                        ; preds = %create_req.i
  %rx_ep.i = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 1
  %14 = ptrtoint ptr %rx_ep.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_ep.i, align 8
  %re_inline_recv.i = getelementptr inbounds %struct.rpcrdma_ep, ptr %15, i32 0, i32 24
  %16 = ptrtoint ptr %re_inline_recv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %re_inline_recv.i, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 4096) #8
  %call.i = tail call ptr @rpcrdma_req_create(ptr noundef %r_xprt, i32 noundef %18, i32 noundef 3264) #8
  %tobool14.not.i = icmp eq ptr %call.i, null
  br i1 %tobool14.not.i, label %if.end7.i.do.end_crit_edge, label %if.end16.i

if.end7.i.do.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end16.i:                                       ; preds = %if.end7.i
  %call17.i = tail call i32 @rpcrdma_req_setup(ptr noundef %r_xprt, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %rpcrdma_bc_rqst_get.exit, label %if.then19.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rpcrdma_req_destroy(ptr noundef nonnull %call.i) #8
  br label %do.end

rpcrdma_bc_rqst_get.exit:                         ; preds = %if.end16.i
  %19 = ptrtoint ptr %bc_alloc_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bc_alloc_count.i, align 8
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %bc_alloc_count.i, align 8
  %rl_slot.i = getelementptr inbounds %struct.rpcrdma_req, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %rl_slot.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %r_xprt, ptr %rl_slot.i, align 8
  %rq_bc_pa_state.i = getelementptr inbounds %struct.rpcrdma_req, ptr %call.i, i32 0, i32 1, i32 32
  %22 = ptrtoint ptr %rq_bc_pa_state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rq_bc_pa_state.i, align 4
  %or.i.i = or i32 %23, 2
  store i32 %or.i.i, ptr %rq_bc_pa_state.i, align 4
  %rq_snd_buf.i = getelementptr inbounds %struct.rpcrdma_req, ptr %call.i, i32 0, i32 1, i32 1
  %rl_sendbuf.i = getelementptr inbounds %struct.rpcrdma_req, ptr %call.i, i32 0, i32 8
  %24 = ptrtoint ptr %rl_sendbuf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rl_sendbuf.i, align 8
  %rg_data.i.i = getelementptr inbounds %struct.rpcrdma_regbuf, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %rg_data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rg_data.i.i, align 8
  %28 = ptrtoint ptr %rq_snd_buf.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %rq_snd_buf.i, align 4
  %iov_len.i.i = getelementptr inbounds %struct.rpcrdma_req, ptr %call.i, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %29 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %18, ptr %iov_len.i.i, align 4
  %iov_len4.i.i = getelementptr inbounds %struct.rpcrdma_req, ptr %call.i, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %iov_len4.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %iov_len4.i.i, align 4
  %pages.i.i = getelementptr inbounds %struct.rpcrdma_req, ptr %call.i, i32 0, i32 1, i32 1, i32 3
  %31 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %pages.i.i, align 4
  %page_len.i.i = getelementptr inbounds %struct.rpcrdma_req, ptr %call.i, i32 0, i32 1, i32 1, i32 5
  %32 = ptrtoint ptr %page_len.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %page_len.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.rpcrdma_req, ptr %call.i, i32 0, i32 1, i32 1, i32 6
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %flags.i.i, align 4
  %len5.i.i = getelementptr inbounds %struct.rpcrdma_req, ptr %call.i, i32 0, i32 1, i32 1, i32 8
  %34 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %len5.i.i, align 4
  %buflen.i.i = getelementptr inbounds %struct.rpcrdma_req, ptr %call.i, i32 0, i32 1, i32 1, i32 7
  %35 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %18, ptr %buflen.i.i, align 4
  %tobool.not = icmp eq ptr %rl_slot.i, null
  br i1 %tobool.not, label %rpcrdma_bc_rqst_get.exit.do.end_crit_edge, label %rpcrdma_bc_rqst_get.exit.if.end_crit_edge

rpcrdma_bc_rqst_get.exit.if.end_crit_edge:        ; preds = %rpcrdma_bc_rqst_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

rpcrdma_bc_rqst_get.exit.do.end_crit_edge:        ; preds = %rpcrdma_bc_rqst_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end:                                           ; preds = %rpcrdma_bc_rqst_get.exit.if.end_crit_edge, %rpcrdma_bc_rqst_get.exit.thread44
  %retval.0.i47 = phi ptr [ %add.ptr.i, %rpcrdma_bc_rqst_get.exit.thread44 ], [ %rl_slot.i, %rpcrdma_bc_rqst_get.exit.if.end_crit_edge ]
  %rq_reply_bytes_recvd = getelementptr inbounds %struct.rpc_rqst, ptr %retval.0.i47, i32 0, i32 19
  %36 = ptrtoint ptr %rq_reply_bytes_recvd to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %rq_reply_bytes_recvd, align 4
  %37 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call, align 4
  %rq_xid = getelementptr inbounds %struct.rpc_rqst, ptr %retval.0.i47, i32 0, i32 5
  %39 = ptrtoint ptr %rq_xid to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %rq_xid, align 4
  %len = getelementptr inbounds %struct.rpc_rqst, ptr %retval.0.i47, i32 0, i32 20, i32 8
  %40 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shl.i, ptr %len, align 8
  %rq_rcv_buf = getelementptr inbounds %struct.rpc_rqst, ptr %retval.0.i47, i32 0, i32 2
  %41 = getelementptr inbounds %struct.rpc_rqst, ptr %retval.0.i47, i32 0, i32 2, i32 1
  %42 = call ptr @memset(ptr %41, i32 0, i32 32)
  %43 = ptrtoint ptr %rq_rcv_buf to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call, ptr %rq_rcv_buf, align 4
  %iov_len = getelementptr inbounds %struct.rpc_rqst, ptr %retval.0.i47, i32 0, i32 2, i32 0, i32 0, i32 1
  %44 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shl.i, ptr %iov_len, align 4
  %len6 = getelementptr inbounds %struct.rpc_rqst, ptr %retval.0.i47, i32 0, i32 2, i32 8
  %45 = ptrtoint ptr %len6 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shl.i, ptr %len6, align 4
  %rl_reply = getelementptr i8, ptr %retval.0.i47, i32 288
  %46 = ptrtoint ptr %rl_reply to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %rep, ptr %rl_reply, align 8
  tail call fastcc void @trace_xprtrdma_cb_call(ptr noundef %r_xprt, ptr noundef nonnull %retval.0.i47)
  %bc_serv8 = getelementptr inbounds %struct.rpc_xprt, ptr %r_xprt, i32 0, i32 41
  %47 = ptrtoint ptr %bc_serv8 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bc_serv8, align 8
  %call9 = tail call ptr @xprt_get(ptr noundef %r_xprt) #8
  %sv_cb_lock = getelementptr inbounds %struct.svc_serv, ptr %48, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %sv_cb_lock) #8
  %rq_bc_list = getelementptr inbounds %struct.rpc_rqst, ptr %retval.0.i47, i32 0, i32 31
  %sv_cb_list = getelementptr inbounds %struct.svc_serv, ptr %48, i32 0, i32 17
  %49 = ptrtoint ptr %sv_cb_list to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sv_cb_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rq_bc_list, ptr noundef %sv_cb_list, ptr noundef %50) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %rq_bc_list, ptr %prev1.i.i, align 4
  %52 = ptrtoint ptr %rq_bc_list to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %50, ptr %rq_bc_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.rpc_rqst, ptr %retval.0.i47, i32 0, i32 31, i32 1
  %53 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %sv_cb_list, ptr %prev3.i.i, align 4
  %54 = ptrtoint ptr %sv_cb_list to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %rq_bc_list, ptr %sv_cb_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sv_cb_lock) #8
  %sv_cb_waitq = getelementptr inbounds %struct.svc_serv, ptr %48, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %sv_cb_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %bcall_count = getelementptr inbounds %struct.rpcrdma_xprt, ptr %r_xprt, i32 0, i32 5, i32 17
  %55 = ptrtoint ptr %bcall_count to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bcall_count, align 4
  %inc = add i32 %56, 1
  store i32 %inc, ptr %bcall_count, align 4
  br label %cleanup

do.end:                                           ; preds = %rpcrdma_bc_rqst_get.exit.do.end_crit_edge, %if.then19.i, %if.end7.i.do.end_crit_edge, %create_req.i.do.end_crit_edge
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  tail call void @xprt_force_disconnect(ptr noundef %r_xprt) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %list_add.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_cb_call(ptr noundef %r_xprt, ptr noundef %rqst) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_cb_call, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_cb_call, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !30

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !20) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !31

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !20) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !37
  %call42 = tail call i32 @__traceiter_xprtrdma_cb_call(ptr noundef null, ptr noundef %r_xprt, ptr noundef %rqst) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !38
  %13 = tail call i32 @llvm.read_register.i32(metadata !20) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !20) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !31

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !20) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_cb_call, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_cb_call, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_cb_call.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xprtrdma_cb_call.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1478, ptr noundef nonnull @.str.4) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !35
  %31 = tail call i32 @llvm.read_register.i32(metadata !20) #8
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
declare dso_local ptr @xprt_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_force_disconnect(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_cb_setup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcrdma_prepare_send_sges(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xprtrdma_cb_reply(ptr noundef %r_xprt, ptr noundef %rqst) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_cb_reply, i32 0, i32 1), ptr blockaddress(@trace_xprtrdma_cb_reply, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !30

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !20) #8
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !31

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !20) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !39
  %call42 = tail call i32 @__traceiter_xprtrdma_cb_reply(ptr noundef null, ptr noundef %r_xprt, ptr noundef %rqst) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !40
  %13 = tail call i32 @llvm.read_register.i32(metadata !20) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !20) #8
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !31

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !20) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_cb_reply, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xprtrdma_cb_reply, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xprtrdma_cb_reply.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_xprtrdma_cb_reply.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1479, ptr noundef nonnull @.str.4) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !35
  %31 = tail call i32 @llvm.read_register.i32(metadata !20) #8
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
declare dso_local i32 @__traceiter_xprtrdma_cb_reply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpcrdma_req_create(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcrdma_req_setup(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xprtrdma_cb_call(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !16, !17, !19}
!llvm.named.register.sp = !{!20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sunrpc/xprtrdma/backchannel.c", i32 276, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rpcrdma_bc_receive_call._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rpcrdma_bc_receive_call._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/trace/events/rpcrdma.h", i32 1453, i32 1}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/trace/events/rpcrdma.h", i32 1479, i32 1}
!16 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/trace/events/rpcrdma.h", i32 1478, i32 1}
!19 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!20 = !{!"sp"}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 2148722196, i64 2148722201, i64 2148722214, i64 2148722258, i64 2148722292, i64 2148722313}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2159255205}
!33 = !{i64 2159255426}
!34 = !{i64 2149326779}
!35 = !{i64 2149327815}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{i64 2159272498}
!38 = !{i64 2159272717}
!39 = !{i64 2159289807}
!40 = !{i64 2159290028}
