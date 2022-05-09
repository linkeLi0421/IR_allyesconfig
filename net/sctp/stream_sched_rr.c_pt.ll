; ModuleID = '/llk/IR_all_yes/net/sctp/stream_sched_rr.c_pt.bc'
source_filename = "../net/sctp/stream_sched_rr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sctp_sched_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sctp_stream = type { %struct.anon, %struct.anon.3, i16, i16, ptr, %union.anon.5, ptr }
%struct.anon = type { %struct.__genradix, [0 x %struct.sctp_stream_out] }
%struct.__genradix = type { ptr }
%struct.sctp_stream_out = type { %union.anon, i32, ptr, i8 }
%union.anon = type { i32 }
%struct.anon.3 = type { %struct.__genradix, [0 x %struct.sctp_stream_in] }
%struct.sctp_stream_in = type { %union.anon.4, i32, i32, i32, i8, i8 }
%union.anon.4 = type { i32 }
%union.anon.5 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.sctp_stream_out_ext = type { [3 x i64], [3 x i64], %struct.list_head, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.list_head, ptr }
%struct.sctp_datahdr = type { i32, i16, i16, i32, [0 x i8] }
%struct.sctp_association = type { %struct.sctp_ep_common, %struct.list_head, i32, ptr, %struct.sctp_cookie, %struct.anon.176, i32, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i32, [12 x i32], [12 x %struct.timer_list], ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i16, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.sctp_stream, %struct.sctp_outq, %struct.sctp_ulpq, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, [2 x i32], ptr, %struct.sctp_priv_assoc_stats, i32, i16, [3 x i64], [3 x i64], i32, i32, %struct.callback_head }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.sctp_cookie = type { i32, i32, i32, i32, i64, i16, i16, i32, %union.sctp_addr, i16, i8, i8, i32, [36 x i8], [10 x i8], [20 x i8], i32, [0 x %struct.sctp_init_chunk] }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.38 }
%union.anon.38 = type { [4 x i32] }
%struct.sctp_init_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_inithdr }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.anon.176 = type { %struct.list_head, i32, i16, i16, ptr, %union.sctp_addr, ptr, ptr, ptr, ptr, %struct.sctp_tsnmap, i16, i16, i32, i32, %struct.sctp_inithdr_host, ptr, i32, i32, ptr, ptr, ptr }
%struct.sctp_tsnmap = type { ptr, i32, i32, i32, i16, i16, i16, [16 x i32] }
%struct.sctp_inithdr_host = type { i32, i32, i16, i16, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.16 }
%union.anon.16 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.17 }
%union.anon.17 = type { i32 }
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.109, i32, %struct.spinlock }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { ptr, ptr }
%struct.sctp_priv_assoc_stats = type { %struct.__kernel_sockaddr_storage, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.__kernel_sockaddr_storage = type { %union.anon.172 }
%union.anon.172 = type { ptr, [124 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.sctp_chunk = type { %struct.list_head, %struct.refcount_struct, i32, %union.anon.8, %struct.list_head, ptr, %union.anon.164, %union.sctp_params, %union.anon.165, ptr, ptr, ptr, %struct.sctp_sndrcvinfo, ptr, ptr, i32, %union.sctp_addr, %union.sctp_addr, ptr, ptr, ptr, i16 }
%union.anon.8 = type { %struct.list_head }
%union.anon.164 = type { ptr }
%union.sctp_params = type { ptr }
%union.anon.165 = type { ptr }
%struct.sctp_sndrcvinfo = type { i16, i16, i16, i32, i32, i32, i32, i32, i32 }

@sctp_sched_rr = internal global { %struct.sctp_sched_ops, [56 x i8] } { %struct.sctp_sched_ops { ptr @sctp_sched_rr_set, ptr @sctp_sched_rr_get, ptr @sctp_sched_rr_init, ptr @sctp_sched_rr_init_sid, ptr @sctp_sched_rr_free, ptr @sctp_sched_rr_enqueue, ptr @sctp_sched_rr_dequeue, ptr @sctp_sched_rr_dequeue_done, ptr @sctp_sched_rr_sched_all, ptr @sctp_sched_rr_unsched_all }, [56 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"sctp_sched_rr\00", align 1
@___asan_gen_.2 = private constant [30 x i8] c"../net/sctp/stream_sched_rr.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 175, i32 30 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @sctp_sched_rr], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_sched_rr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_sched_ops_rr_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sctp_sched_ops_register(i32 noundef 2, ptr noundef nonnull @sctp_sched_rr) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_sched_ops_register(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_sched_rr_set(ptr nocapture noundef readnone %stream, i16 noundef zeroext %sid, i16 noundef zeroext %prio, i32 noundef %gfp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_sched_rr_get(ptr nocapture noundef readnone %stream, i16 noundef zeroext %sid, ptr nocapture noundef readnone %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_sched_rr_init(ptr noundef %stream) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %0, ptr %0, align 4
  %prev.i = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 5, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev.i, align 4
  %rr_next = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %rr_next to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %rr_next, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_sched_rr_init_sid(ptr noundef %stream, i16 noundef zeroext %sid, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i16 %sid to i32
  %mul17.i.i = shl nuw nsw i32 %conv.i, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %mul17.i.i) #4
  %ext = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 2
  %0 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext, align 4
  %2 = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %2, ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %prev.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_sched_rr_free(ptr noundef %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %cmp.not20.i = icmp eq ptr %2, %0
  br i1 %cmp.not20.i, label %entry.sctp_sched_rr_unsched_all.exit_crit_edge, label %for.body.lr.ph.i

entry.sctp_sched_rr_unsched_all.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sctp_sched_rr_unsched_all.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %rr_next.i.i = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 5, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %sctp_sched_rr_unsched.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in21.i = phi ptr [ %2, %for.body.lr.ph.i ], [ %.pn.i, %sctp_sched_rr_unsched.exit.i.for.body.i_crit_edge ]
  %soute.0.i = getelementptr i8, ptr %.pn.in21.i, i32 -56
  %3 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn.in21.i, align 8
  %4 = ptrtoint ptr %rr_next.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rr_next.i.i, align 4
  %cmp.i.i = icmp eq ptr %5, %soute.0.i
  br i1 %cmp.i.i, label %if.then.i.i, label %for.body.i.if.end.i.i_crit_edge

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i
  %cmp.i.i.i = icmp eq ptr %.pn.i, %0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then.i.i.sctp_sched_rr_next_stream.exit.i.i_crit_edge

if.then.i.i.sctp_sched_rr_next_stream.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sctp_sched_rr_next_stream.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 4
  br label %sctp_sched_rr_next_stream.exit.i.i

sctp_sched_rr_next_stream.exit.i.i:               ; preds = %if.then.i.i.i, %if.then.i.i.sctp_sched_rr_next_stream.exit.i.i_crit_edge
  %pos.0.i.i.i = phi ptr [ %7, %if.then.i.i.i ], [ %.pn.i, %if.then.i.i.sctp_sched_rr_next_stream.exit.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %pos.0.i.i.i, i32 -56
  %8 = ptrtoint ptr %rr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i.i.i, ptr %rr_next.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %sctp_sched_rr_next_stream.exit.i.i, %for.body.i.if.end.i.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in21.i) #4
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_del_init.exit.i.i_crit_edge

if.end.i.i.list_del_init.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in21.i, i32 4
  %9 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i.i, align 4
  %11 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in21.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end.i.i.list_del_init.exit.i.i_crit_edge
  %15 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %.pn.in21.i, ptr %.pn.in21.i, align 4
  %prev.i3.i.i.i = getelementptr i8, ptr %.pn.in21.i, i32 4
  %16 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %.pn.in21.i, ptr %prev.i3.i.i.i, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %0, align 4
  %cmp.i9.not.i.i = icmp eq ptr %18, %0
  br i1 %cmp.i9.not.i.i, label %if.then2.i.i, label %list_del_init.exit.i.i.sctp_sched_rr_unsched.exit.i_crit_edge

list_del_init.exit.i.i.sctp_sched_rr_unsched.exit.i_crit_edge: ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sctp_sched_rr_unsched.exit.i

if.then2.i.i:                                     ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %rr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %rr_next.i.i, align 4
  br label %sctp_sched_rr_unsched.exit.i

sctp_sched_rr_unsched.exit.i:                     ; preds = %if.then2.i.i, %list_del_init.exit.i.i.sctp_sched_rr_unsched.exit.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn.i, %0
  br i1 %cmp.not.i, label %sctp_sched_rr_unsched.exit.i.sctp_sched_rr_unsched_all.exit_crit_edge, label %sctp_sched_rr_unsched.exit.i.for.body.i_crit_edge

sctp_sched_rr_unsched.exit.i.for.body.i_crit_edge: ; preds = %sctp_sched_rr_unsched.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

sctp_sched_rr_unsched.exit.i.sctp_sched_rr_unsched_all.exit_crit_edge: ; preds = %sctp_sched_rr_unsched.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sctp_sched_rr_unsched_all.exit

sctp_sched_rr_unsched_all.exit:                   ; preds = %sctp_sched_rr_unsched.exit.i.sctp_sched_rr_unsched_all.exit_crit_edge, %entry.sctp_sched_rr_unsched_all.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_sched_rr_enqueue(ptr nocapture noundef readonly %q, ptr nocapture noundef readonly %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  %subh.i = getelementptr i8, ptr %1, i32 20
  %2 = ptrtoint ptr %subh.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subh.i, align 4
  %stream.i = getelementptr inbounds %struct.sctp_datahdr, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stream.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %stream.i, align 4
  %6 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %q, align 4
  %stream1 = getelementptr inbounds %struct.sctp_association, ptr %7, i32 0, i32 60
  %conv.i = zext i16 %5 to i32
  %mul17.i.i = shl nuw nsw i32 %conv.i, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream1, i32 noundef %mul17.i.i) #4
  %ext = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 2
  %8 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ext, align 4
  %10 = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %9, i32 0, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %10, align 4
  %cmp.i.not.i = icmp eq ptr %12, %10
  br i1 %cmp.i.not.i, label %if.end.i, label %entry.sctp_sched_rr_sched.exit_crit_edge

entry.sctp_sched_rr_sched.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sctp_sched_rr_sched.exit

if.end.i:                                         ; preds = %entry
  %13 = getelementptr inbounds %struct.sctp_association, ptr %7, i32 0, i32 60, i32 5
  %prev.i.i = getelementptr inbounds %struct.sctp_association, ptr %7, i32 0, i32 60, i32 5, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %10, ptr noundef %15, ptr noundef %13) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %10, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %13, ptr %10, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %9, i32 0, i32 3, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %10, ptr %15, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  %rr_next.i = getelementptr inbounds %struct.sctp_association, ptr %7, i32 0, i32 60, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %rr_next.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rr_next.i, align 4
  %tobool3.not.i = icmp eq ptr %21, null
  br i1 %tobool3.not.i, label %if.then4.i, label %list_add_tail.exit.i.sctp_sched_rr_sched.exit_crit_edge

list_add_tail.exit.i.sctp_sched_rr_sched.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sctp_sched_rr_sched.exit

if.then4.i:                                       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %rr_next.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %9, ptr %rr_next.i, align 4
  br label %sctp_sched_rr_sched.exit

sctp_sched_rr_sched.exit:                         ; preds = %if.then4.i, %list_add_tail.exit.i.sctp_sched_rr_sched.exit_crit_edge, %entry.sctp_sched_rr_sched.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sctp_sched_rr_dequeue(ptr noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  %out_chunk_list = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 1
  %2 = ptrtoint ptr %out_chunk_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %out_chunk_list, align 4
  %cmp.i.not = icmp eq ptr %3, %out_chunk_list
  br i1 %cmp.i.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %out_curr = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 60, i32 4
  %4 = ptrtoint ptr %out_curr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out_curr, align 4
  %tobool2.not = icmp eq ptr %5, null
  %ext = getelementptr inbounds %struct.sctp_stream_out, ptr %5, i32 0, i32 2
  %rr_next = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 60, i32 5, i32 0, i32 1
  %soute.0.in = select i1 %tobool2.not, ptr %rr_next, ptr %ext
  %6 = ptrtoint ptr %soute.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %soute.0 = load ptr, ptr %soute.0.in, align 4
  %outq = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %soute.0, i32 0, i32 2
  %7 = ptrtoint ptr %outq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %outq, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 -16
  tail call void @sctp_sched_dequeue_common(ptr noundef %q, ptr noundef %add.ptr) #4
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %ch.0 = phi ptr [ null, %entry.out_crit_edge ], [ %add.ptr, %if.end ]
  ret ptr %ch.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_sched_rr_dequeue_done(ptr nocapture noundef readonly %q, ptr nocapture noundef readonly %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %subh.i = getelementptr inbounds %struct.sctp_chunk, ptr %ch, i32 0, i32 8
  %0 = ptrtoint ptr %subh.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subh.i, align 4
  %stream.i = getelementptr inbounds %struct.sctp_datahdr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %stream.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %stream.i, align 4
  %4 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q, align 4
  %stream = getelementptr inbounds %struct.sctp_association, ptr %5, i32 0, i32 60
  %conv.i = zext i16 %3 to i32
  %mul17.i.i = shl nuw nsw i32 %conv.i, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %mul17.i.i) #4
  %ext = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 2
  %6 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ext, align 4
  %8 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %q, align 4
  %10 = getelementptr inbounds %struct.sctp_association, ptr %9, i32 0, i32 60, i32 5
  %rr_next.i = getelementptr inbounds %struct.sctp_association, ptr %9, i32 0, i32 60, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %rr_next.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rr_next.i, align 4
  %13 = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %12, i32 0, i32 3
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %cmp.i = icmp eq ptr %15, %10
  br i1 %cmp.i, label %if.then.i, label %entry.sctp_sched_rr_next_stream.exit_crit_edge

entry.sctp_sched_rr_next_stream.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sctp_sched_rr_next_stream.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %10, align 4
  br label %sctp_sched_rr_next_stream.exit

sctp_sched_rr_next_stream.exit:                   ; preds = %if.then.i, %entry.sctp_sched_rr_next_stream.exit_crit_edge
  %pos.0.i = phi ptr [ %17, %if.then.i ], [ %15, %entry.sctp_sched_rr_next_stream.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %pos.0.i, i32 -56
  %18 = ptrtoint ptr %rr_next.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i, ptr %rr_next.i, align 4
  %outq = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %7, i32 0, i32 2
  %19 = ptrtoint ptr %outq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %outq, align 4
  %cmp.i10.not = icmp eq ptr %20, %outq
  br i1 %cmp.i10.not, label %if.then, label %sctp_sched_rr_next_stream.exit.if.end_crit_edge

sctp_sched_rr_next_stream.exit.if.end_crit_edge:  ; preds = %sctp_sched_rr_next_stream.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %sctp_sched_rr_next_stream.exit
  %21 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %q, align 4
  %23 = getelementptr inbounds %struct.sctp_association, ptr %22, i32 0, i32 60, i32 5
  %rr_next.i12 = getelementptr inbounds %struct.sctp_association, ptr %22, i32 0, i32 60, i32 5, i32 0, i32 1
  %24 = ptrtoint ptr %rr_next.i12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rr_next.i12, align 4
  %cmp.i13 = icmp eq ptr %25, %7
  br i1 %cmp.i13, label %if.then.i14, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i14:                                      ; preds = %if.then
  %26 = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %7, i32 0, i32 3
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %cmp.i.i = icmp eq ptr %28, %23
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i14.sctp_sched_rr_next_stream.exit.i_crit_edge

if.then.i14.sctp_sched_rr_next_stream.exit.i_crit_edge: ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #6
  br label %sctp_sched_rr_next_stream.exit.i

if.then.i.i:                                      ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %23, align 4
  br label %sctp_sched_rr_next_stream.exit.i

sctp_sched_rr_next_stream.exit.i:                 ; preds = %if.then.i.i, %if.then.i14.sctp_sched_rr_next_stream.exit.i_crit_edge
  %pos.0.i.i = phi ptr [ %30, %if.then.i.i ], [ %28, %if.then.i14.sctp_sched_rr_next_stream.exit.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %pos.0.i.i, i32 -56
  %31 = ptrtoint ptr %rr_next.i12 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr.i.i, ptr %rr_next.i12, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %sctp_sched_rr_next_stream.exit.i, %if.then.if.end.i_crit_edge
  %32 = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %7, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %32) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %7, i32 0, i32 3, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.i, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %32, ptr %32, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %7, i32 0, i32 3, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %32, ptr %prev.i3.i.i, align 4
  %41 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %23, align 4
  %cmp.i9.not.i = icmp eq ptr %42, %23
  br i1 %cmp.i9.not.i, label %if.then2.i, label %list_del_init.exit.i.if.end_crit_edge

list_del_init.exit.i.if.end_crit_edge:            ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then2.i:                                       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %rr_next.i12 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %rr_next.i12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2.i, %list_del_init.exit.i.if.end_crit_edge, %sctp_sched_rr_next_stream.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_sched_rr_sched_all(ptr noundef %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %out_chunk_list = getelementptr i8, ptr %stream, i32 36
  %0 = ptrtoint ptr %out_chunk_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %ch.018 = load ptr, ptr %out_chunk_list, align 4
  %cmp.not19 = icmp eq ptr %ch.018, %out_chunk_list
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 5
  %prev.i.i = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 5, i32 0, i32 0, i32 1
  %rr_next.i = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 5, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %ch.020 = phi ptr [ %ch.018, %for.body.lr.ph ], [ %ch.0, %if.end.for.body_crit_edge ]
  %subh.i = getelementptr inbounds %struct.sctp_chunk, ptr %ch.020, i32 0, i32 8
  %2 = ptrtoint ptr %subh.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subh.i, align 4
  %stream.i = getelementptr inbounds %struct.sctp_datahdr, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stream.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %stream.i, align 4
  %conv.i = zext i16 %5 to i32
  %mul17.i.i = shl nuw nsw i32 %conv.i, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %mul17.i.i) #4
  %ext = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 2
  %6 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ext, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %for.body
  %8 = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %7, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %8, align 4
  %cmp.i.not.i = icmp eq ptr %10, %8
  br i1 %cmp.i.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %8, ptr noundef %12, ptr noundef %1) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %8, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %8, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %7, i32 0, i32 3, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %8, ptr %12, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  %17 = ptrtoint ptr %rr_next.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rr_next.i, align 4
  %tobool3.not.i = icmp eq ptr %18, null
  br i1 %tobool3.not.i, label %if.then4.i, label %list_add_tail.exit.i.if.end_crit_edge

list_add_tail.exit.i.if.end_crit_edge:            ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then4.i:                                       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %rr_next.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %7, ptr %rr_next.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4.i, %list_add_tail.exit.i.if.end_crit_edge, %if.then.if.end_crit_edge, %for.body.if.end_crit_edge
  %20 = ptrtoint ptr %ch.020 to i32
  call void @__asan_load4_noabort(i32 %20)
  %ch.0 = load ptr, ptr %ch.020, align 4
  %cmp.not = icmp eq ptr %ch.0, %out_chunk_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_sched_rr_unsched_all(ptr noundef %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %cmp.not20 = icmp eq ptr %2, %0
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rr_next.i = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 5, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %sctp_sched_rr_unsched.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in21 = phi ptr [ %2, %for.body.lr.ph ], [ %.pn, %sctp_sched_rr_unsched.exit.for.body_crit_edge ]
  %soute.0 = getelementptr i8, ptr %.pn.in21, i32 -56
  %3 = ptrtoint ptr %.pn.in21 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn.in21, align 8
  %4 = ptrtoint ptr %rr_next.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rr_next.i, align 4
  %cmp.i = icmp eq ptr %5, %soute.0
  br i1 %cmp.i, label %if.then.i, label %for.body.if.end.i_crit_edge

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  %6 = ptrtoint ptr %.pn.in21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.pn.in21, align 8
  %cmp.i.i = icmp eq ptr %7, %0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.sctp_sched_rr_next_stream.exit.i_crit_edge

if.then.i.sctp_sched_rr_next_stream.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sctp_sched_rr_next_stream.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  br label %sctp_sched_rr_next_stream.exit.i

sctp_sched_rr_next_stream.exit.i:                 ; preds = %if.then.i.i, %if.then.i.sctp_sched_rr_next_stream.exit.i_crit_edge
  %pos.0.i.i = phi ptr [ %9, %if.then.i.i ], [ %7, %if.then.i.sctp_sched_rr_next_stream.exit.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %pos.0.i.i, i32 -56
  %10 = ptrtoint ptr %rr_next.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i.i, ptr %rr_next.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %sctp_sched_rr_next_stream.exit.i, %for.body.if.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in21) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr i8, ptr %.pn.in21, i32 4
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %.pn.in21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn.in21, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %17 = ptrtoint ptr %.pn.in21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %.pn.in21, ptr %.pn.in21, align 4
  %prev.i3.i.i = getelementptr i8, ptr %.pn.in21, i32 4
  %18 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %.pn.in21, ptr %prev.i3.i.i, align 4
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %0, align 4
  %cmp.i9.not.i = icmp eq ptr %20, %0
  br i1 %cmp.i9.not.i, label %if.then2.i, label %list_del_init.exit.i.sctp_sched_rr_unsched.exit_crit_edge

list_del_init.exit.i.sctp_sched_rr_unsched.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sctp_sched_rr_unsched.exit

if.then2.i:                                       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %rr_next.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %rr_next.i, align 4
  br label %sctp_sched_rr_unsched.exit

sctp_sched_rr_unsched.exit:                       ; preds = %if.then2.i, %list_del_init.exit.i.sctp_sched_rr_unsched.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, %0
  br i1 %cmp.not, label %sctp_sched_rr_unsched.exit.for.end_crit_edge, label %sctp_sched_rr_unsched.exit.for.body_crit_edge

sctp_sched_rr_unsched.exit.for.body_crit_edge:    ; preds = %sctp_sched_rr_unsched.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

sctp_sched_rr_unsched.exit.for.end_crit_edge:     ; preds = %sctp_sched_rr_unsched.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %sctp_sched_rr_unsched.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__genradix_ptr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_sched_dequeue_common(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @sctp_sched_rr, !1, !"sctp_sched_rr", i1 false, i1 false}
!1 = !{!"../net/sctp/stream_sched_rr.c", i32 175, i32 30}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
