; ModuleID = '/llk/IR_all_yes/net/sctp/stream_sched_prio.c_pt.bc'
source_filename = "../net/sctp/stream_sched_prio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sctp_sched_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sctp_stream_out = type { %union.anon, i32, ptr, i8 }
%union.anon = type { i32 }
%struct.sctp_stream = type { %struct.anon, %struct.anon.3, i16, i16, ptr, %union.anon.5, ptr }
%struct.anon = type { %struct.__genradix, [0 x %struct.sctp_stream_out] }
%struct.__genradix = type { ptr }
%struct.anon.3 = type { %struct.__genradix, [0 x %struct.sctp_stream_in] }
%struct.sctp_stream_in = type { %union.anon.4, i32, i32, i32, i8, i8 }
%union.anon.4 = type { i32 }
%union.anon.5 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.sctp_stream_priorities = type { %struct.list_head, %struct.list_head, ptr, i16 }
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

@sctp_sched_prio = internal global { %struct.sctp_sched_ops, [56 x i8] } { %struct.sctp_sched_ops { ptr @sctp_sched_prio_set, ptr @sctp_sched_prio_get, ptr @sctp_sched_prio_init, ptr @sctp_sched_prio_init_sid, ptr @sctp_sched_prio_free, ptr @sctp_sched_prio_enqueue, ptr @sctp_sched_prio_dequeue, ptr @sctp_sched_prio_dequeue_done, ptr @sctp_sched_prio_sched_all, ptr @sctp_sched_prio_unsched_all }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"sctp_sched_prio\00", align 1
@___asan_gen_.2 = private constant [32 x i8] c"../net/sctp/stream_sched_prio.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 321, i32 30 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @sctp_sched_prio], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_sched_prio to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_sched_ops_prio_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sctp_sched_ops_register(i32 noundef 1, ptr noundef nonnull @sctp_sched_prio) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_sched_ops_register(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_sched_prio_set(ptr noundef %stream, i16 noundef zeroext %sid, i16 noundef zeroext %prio, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i16 %sid to i32
  %mul17.i.i = shl nuw nsw i32 %conv.i, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %mul17.i.i) #5
  %ext = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 2
  %0 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext, align 4
  %2 = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %entry
  %p.0.in.i = phi ptr [ %2, %entry ], [ %p.0.i, %if.end.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %p.0.i = load ptr, ptr %p.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %p.0.i, %2
  br i1 %cmp.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %prio2.i = getelementptr inbounds %struct.sctp_stream_priorities, ptr %p.0.i, i32 0, i32 3
  %4 = ptrtoint ptr %prio2.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %prio2.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %prio)
  %cmp3.i = icmp eq i16 %5, %prio
  br i1 %cmp3.i, label %sctp_sched_prio_get_head.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %cmp7.i = icmp ugt i16 %5, %prio
  br i1 %cmp7.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %outcnt.i = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 2
  %6 = ptrtoint ptr %outcnt.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %outcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp1865.not.i = icmp eq i16 %7, 0
  br i1 %cmp1865.not.i, label %for.end.i.for.end37.i_crit_edge, label %for.end.i.for.body20.i_crit_edge

for.end.i.for.body20.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body20.i

for.end.i.for.end37.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end37.i

for.body20.i:                                     ; preds = %for.inc36.i.for.body20.i_crit_edge, %for.end.i.for.body20.i_crit_edge
  %i.066.i = phi i32 [ %inc.i, %for.inc36.i.for.body20.i_crit_edge ], [ 0, %for.end.i.for.body20.i_crit_edge ]
  %conv.i.i = shl i32 %i.066.i, 4
  %call1.i.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %conv.i.i) #5
  %ext.i = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %ext.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ext.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body20.i.for.inc36.i_crit_edge, label %if.end23.i

for.body20.i.for.inc36.i_crit_edge:               ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc36.i

if.end23.i:                                       ; preds = %for.body20.i
  %call1.i60.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %conv.i.i) #5
  %ext26.i = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i60.i, i32 0, i32 2
  %10 = ptrtoint ptr %ext26.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ext26.i, align 4
  %prio_head.i = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %11, i32 0, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %prio_head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prio_head.i, align 8
  %tobool27.not.i = icmp eq ptr %13, null
  br i1 %tobool27.not.i, label %if.end23.i.for.end37.i_crit_edge, label %if.end29.i

if.end23.i.for.end37.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end37.i

if.end29.i:                                       ; preds = %if.end23.i
  %prio30.i = getelementptr inbounds %struct.sctp_stream_priorities, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %prio30.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %prio30.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %prio)
  %cmp32.i = icmp eq i16 %15, %prio
  br i1 %cmp32.i, label %if.end29.i.if.end_crit_edge, label %if.end29.i.for.inc36.i_crit_edge

if.end29.i.for.inc36.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc36.i

if.end29.i.if.end_crit_edge:                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.inc36.i:                                      ; preds = %if.end29.i.for.inc36.i_crit_edge, %for.body20.i.for.inc36.i_crit_edge
  %inc.i = add nuw nsw i32 %i.066.i, 1
  %16 = ptrtoint ptr %outcnt.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %outcnt.i, align 4
  %conv17.i = zext i16 %17 to i32
  %cmp18.i = icmp ult i32 %inc.i, %conv17.i
  br i1 %cmp18.i, label %for.inc36.i.for.body20.i_crit_edge, label %for.inc36.i.for.end37.i_crit_edge

for.inc36.i.for.end37.i_crit_edge:                ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end37.i

for.inc36.i.for.body20.i_crit_edge:               ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body20.i

for.end37.i:                                      ; preds = %for.inc36.i.for.end37.i_crit_edge, %if.end23.i.for.end37.i_crit_edge, %for.end.i.for.end37.i_crit_edge
  %and.i.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %for.end37.i.kmalloc.exit.i.i_crit_edge, label %if.end.i.i.i.i, !prof !11

for.end37.i.kmalloc.exit.i.i_crit_edge:           ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %kmalloc.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.end37.i
  %and2.i.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i.i.i.i.kmalloc.exit.i.i_crit_edge

if.end.i.i.i.i.kmalloc.exit.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %kmalloc.exit.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %and6.i.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kmalloc.exit.i.i

kmalloc.exit.i.i:                                 ; preds = %if.end5.i.i.i.i, %if.end.i.i.i.i.kmalloc.exit.i.i_crit_edge, %for.end37.i.kmalloc.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ 0, %for.end37.i.kmalloc.exit.i.i_crit_edge ], [ 3, %if.end.i.i.i.i.kmalloc.exit.i.i_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i.i, i32 7
  %18 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef %gfp, i32 noundef 24) #8
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %kmalloc.exit.i.i.cleanup_crit_edge, label %if.end.i.i

kmalloc.exit.i.i.cleanup_crit_edge:               ; preds = %kmalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %kmalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i.i, ptr %prev.i.i.i, align 4
  %active.i.i = getelementptr inbounds %struct.sctp_stream_priorities, ptr %call7.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %active.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %active.i.i, ptr %active.i.i, align 8
  %prev.i1.i.i = getelementptr inbounds %struct.sctp_stream_priorities, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %active.i.i, ptr %prev.i1.i.i, align 4
  %next.i.i = getelementptr inbounds %struct.sctp_stream_priorities, ptr %call7.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %next.i.i, align 8
  %prio1.i.i = getelementptr inbounds %struct.sctp_stream_priorities, ptr %call7.i.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %prio1.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %prio, ptr %prio1.i.i, align 4
  br label %if.end

sctp_sched_prio_get_head.exit:                    ; preds = %for.body.i
  %tobool.not = icmp eq ptr %p.0.i, null
  br i1 %tobool.not, label %sctp_sched_prio_get_head.exit.cleanup_crit_edge, label %sctp_sched_prio_get_head.exit.if.end_crit_edge

sctp_sched_prio_get_head.exit.if.end_crit_edge:   ; preds = %sctp_sched_prio_get_head.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sctp_sched_prio_get_head.exit.cleanup_crit_edge:  ; preds = %sctp_sched_prio_get_head.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sctp_sched_prio_get_head.exit.if.end_crit_edge, %if.end.i.i, %if.end29.i.if.end_crit_edge
  %retval.0.i51 = phi ptr [ %p.0.i, %sctp_sched_prio_get_head.exit.if.end_crit_edge ], [ %call7.i.i.i, %if.end.i.i ], [ %13, %if.end29.i.if.end_crit_edge ]
  %26 = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %26, align 4
  %cmp.i.i.not = icmp eq ptr %28, %26
  %prio_head3 = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %1, i32 0, i32 3, i32 0, i32 1
  %29 = ptrtoint ptr %prio_head3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prio_head3, align 8
  br i1 %cmp.i.i.not, label %sctp_sched_prio_unsched.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %next.i = getelementptr inbounds %struct.sctp_stream_priorities, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %next.i, align 4
  %cmp.i = icmp eq ptr %32, %1
  br i1 %cmp.i, label %if.then2.i, label %if.then.i.if.end.i44_crit_edge

if.then.i.if.end.i44_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i44

if.then2.i:                                       ; preds = %if.then.i
  %active.i.i43 = getelementptr inbounds %struct.sctp_stream_priorities, ptr %30, i32 0, i32 1
  %cmp.i18.i = icmp eq ptr %28, %active.i.i43
  br i1 %cmp.i18.i, label %if.then.i.i, label %if.then2.i.sctp_sched_prio_next_stream.exit.i_crit_edge

if.then2.i.sctp_sched_prio_next_stream.exit.i_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sctp_sched_prio_next_stream.exit.i

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %28, align 4
  br label %sctp_sched_prio_next_stream.exit.i

sctp_sched_prio_next_stream.exit.i:               ; preds = %if.then.i.i, %if.then2.i.sctp_sched_prio_next_stream.exit.i_crit_edge
  %pos.0.i.i = phi ptr [ %34, %if.then.i.i ], [ %28, %if.then2.i.sctp_sched_prio_next_stream.exit.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %pos.0.i.i, i32 -56
  %35 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i.i, ptr %next.i, align 4
  br label %if.end.i44

if.end.i44:                                       ; preds = %sctp_sched_prio_next_stream.exit.i, %if.then.i.if.end.i44_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %26) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i44.list_del_init.exit.i_crit_edge

if.end.i44.list_del_init.exit.i_crit_edge:        ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i45 = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i.i45, align 4
  %38 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %26, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i44.list_del_init.exit.i_crit_edge
  %42 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %26, ptr %26, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %26, ptr %prev.i3.i.i, align 4
  %active.i = getelementptr inbounds %struct.sctp_stream_priorities, ptr %30, i32 0, i32 1
  %44 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %active.i, align 4
  %cmp.i19.not.i = icmp eq ptr %45, %active.i
  br i1 %cmp.i19.not.i, label %if.then6.i, label %list_del_init.exit.i.if.then6_crit_edge

list_del_init.exit.i.if.then6_crit_edge:          ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

if.then6.i:                                       ; preds = %list_del_init.exit.i
  %call.i.i21.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %30) #5
  br i1 %call.i.i21.i, label %if.end.i.i24.i, label %if.then6.i.list_del_init.exit26.i_crit_edge

if.then6.i.list_del_init.exit26.i_crit_edge:      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit26.i

if.end.i.i24.i:                                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i22.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i22.i, align 4
  %48 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %30, align 4
  %prev1.i.i.i23.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i23.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i23.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %list_del_init.exit26.i

list_del_init.exit26.i:                           ; preds = %if.end.i.i24.i, %if.then6.i.list_del_init.exit26.i_crit_edge
  %52 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %30, ptr %30, align 4
  %prev.i3.i25.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i3.i25.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %30, ptr %prev.i3.i25.i, align 4
  %54 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %next.i, align 4
  br label %if.then6

sctp_sched_prio_unsched.exit:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %prio_head3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %retval.0.i51, ptr %prio_head3, align 8
  br label %if.end7

if.then6:                                         ; preds = %list_del_init.exit26.i, %list_del_init.exit.i.if.then6_crit_edge
  %56 = ptrtoint ptr %prio_head3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prio_head3, align 8
  store ptr %retval.0.i51, ptr %prio_head3, align 8
  tail call fastcc void @sctp_sched_prio_sched(ptr noundef %stream, ptr noundef %1)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %sctp_sched_prio_unsched.exit
  %58 = phi ptr [ %57, %if.then6 ], [ %30, %sctp_sched_prio_unsched.exit ]
  %tobool8.not = icmp eq ptr %58, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %for.cond.preheader

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7
  %outcnt = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 2
  %59 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %outcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp58.not = icmp eq i16 %60, 0
  br i1 %cmp58.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.059 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %conv.i46 = shl i32 %i.059, 4
  %call1.i48 = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %conv.i46) #5
  %ext15 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i48, i32 0, i32 2
  %61 = ptrtoint ptr %ext15 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ext15, align 4
  %tobool16.not = icmp eq ptr %62, null
  br i1 %tobool16.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %prio_head17 = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %62, i32 0, i32 3, i32 0, i32 1
  %63 = ptrtoint ptr %prio_head17 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prio_head17, align 8
  %cmp18 = icmp eq ptr %64, %58
  br i1 %cmp18, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.059, 1
  %65 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %outcnt, align 4
  %conv11 = zext i16 %66 to i32
  %cmp = icmp ult i32 %inc, %conv11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %58) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.lhs.true.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %sctp_sched_prio_get_head.exit.cleanup_crit_edge, %kmalloc.exit.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %sctp_sched_prio_get_head.exit.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ -12, %kmalloc.exit.i.i.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_sched_prio_get(ptr noundef %stream, i16 noundef zeroext %sid, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i16 %sid to i32
  %mul17.i.i = shl nuw nsw i32 %conv.i, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %mul17.i.i) #5
  %ext = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 2
  %0 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext, align 4
  %prio_head = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %1, i32 0, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %prio_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prio_head, align 8
  %prio = getelementptr inbounds %struct.sctp_stream_priorities, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %prio to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %prio, align 4
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %value, align 2
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_sched_prio_init(ptr noundef %stream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %0, ptr %0, align 4
  %prev.i = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 5, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_sched_prio_init_sid(ptr noundef %stream, i16 noundef zeroext %sid, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i16 %sid to i32
  %mul17.i.i = shl nuw nsw i32 %conv.i, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %mul17.i.i) #5
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
  %call1 = tail call i32 @sctp_sched_prio_set(ptr noundef %stream, i16 noundef zeroext %sid, i16 noundef zeroext 0, i32 noundef %gfp)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_sched_prio_free(ptr noundef %stream) #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #5
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  call void @sctp_sched_prio_unsched_all(ptr noundef %stream)
  %outcnt = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 2
  %3 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %outcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp51.not = icmp eq i16 %4, 0
  br i1 %cmp51.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %conv.i = shl i32 %i.052, 4
  %call1.i = call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %conv.i) #5
  %ext = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 2
  %5 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ext, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call1.i46 = call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %conv.i) #5
  %ext5 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i46, i32 0, i32 2
  %7 = ptrtoint ptr %ext5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ext5, align 4
  %prio_head = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %8, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %prio_head to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prio_head, align 8
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %if.end.for.inc_crit_edge, label %land.lhs.true

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %10, align 4
  %cmp.i.not = icmp eq ptr %12, %10
  br i1 %cmp.i.not, label %if.then9, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then9:                                         ; preds = %land.lhs.true
  %13 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %10, ptr noundef nonnull %list, ptr noundef %14) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then9.for.inc_crit_edge

if.then9.for.inc_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %10, ptr %prev1.i.i, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %10, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %10, ptr %list, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.then9.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.052, 1
  %19 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %outcnt, align 4
  %conv = zext i16 %20 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %21 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %list, align 4
  %cmp20.not53 = icmp eq ptr %22, %list
  br i1 %cmp20.not53, label %for.end.for.end30_crit_edge, label %for.end.for.body22_crit_edge

for.end.for.body22_crit_edge:                     ; preds = %for.end
  br label %for.body22

for.end.for.end30_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end30

for.body22:                                       ; preds = %list_del_init.exit.for.body22_crit_edge, %for.end.for.body22_crit_edge
  %prio.054 = phi ptr [ %n.0, %list_del_init.exit.for.body22_crit_edge ], [ %22, %for.end.for.body22_crit_edge ]
  %23 = ptrtoint ptr %prio.054 to i32
  call void @__asan_load4_noabort(i32 %23)
  %n.0 = load ptr, ptr %prio.054, align 4
  %call.i.i48 = call zeroext i1 @__list_del_entry_valid(ptr noundef %prio.054) #5
  br i1 %call.i.i48, label %if.end.i.i49, label %for.body22.list_del_init.exit_crit_edge

for.body22.list_del_init.exit_crit_edge:          ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i49:                                     ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %prio.054, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %prio.054 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prio.054, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i49, %for.body22.list_del_init.exit_crit_edge
  %30 = ptrtoint ptr %prio.054 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %prio.054, ptr %prio.054, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %prio.054, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %prio.054, ptr %prev.i3.i, align 4
  call void @kfree(ptr noundef %prio.054) #5
  %cmp20.not = icmp eq ptr %n.0, %list
  br i1 %cmp20.not, label %list_del_init.exit.for.end30_crit_edge, label %list_del_init.exit.for.body22_crit_edge

list_del_init.exit.for.body22_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body22

list_del_init.exit.for.end30_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end30

for.end30:                                        ; preds = %list_del_init.exit.for.end30_crit_edge, %for.end.for.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_sched_prio_enqueue(ptr nocapture noundef readonly %q, ptr nocapture noundef readonly %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream1, i32 noundef %mul17.i.i) #5
  %ext = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 2
  %8 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ext, align 4
  tail call fastcc void @sctp_sched_prio_sched(ptr noundef %stream1, ptr noundef %9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sctp_sched_prio_dequeue(ptr noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %out_curr = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 60, i32 4
  %4 = ptrtoint ptr %out_curr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out_curr, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ext = getelementptr inbounds %struct.sctp_stream_out, ptr %5, i32 0, i32 2
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 60, i32 5
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %next5 = getelementptr inbounds %struct.sctp_stream_priorities, ptr %8, i32 0, i32 2
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %soute.0.in = phi ptr [ %ext, %if.then3 ], [ %next5, %if.else ]
  %9 = ptrtoint ptr %soute.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %soute.0 = load ptr, ptr %soute.0.in, align 4
  %outq = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %soute.0, i32 0, i32 2
  %10 = ptrtoint ptr %outq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %outq, align 8
  %add.ptr10 = getelementptr i8, ptr %11, i32 -16
  tail call void @sctp_sched_dequeue_common(ptr noundef %q, ptr noundef %add.ptr10) #5
  br label %out

out:                                              ; preds = %if.end6, %entry.out_crit_edge
  %ch.0 = phi ptr [ null, %entry.out_crit_edge ], [ %add.ptr10, %if.end6 ]
  ret ptr %ch.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_sched_prio_dequeue_done(ptr nocapture noundef readonly %q, ptr nocapture noundef readonly %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %mul17.i.i) #5
  %ext = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 2
  %6 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ext, align 4
  %prio_head = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %7, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %prio_head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prio_head, align 8
  %next.i = getelementptr inbounds %struct.sctp_stream_priorities, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next.i, align 4
  %12 = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %11, i32 0, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %active.i = getelementptr inbounds %struct.sctp_stream_priorities, ptr %9, i32 0, i32 1
  %cmp.i = icmp eq ptr %14, %active.i
  br i1 %cmp.i, label %if.then.i, label %entry.sctp_sched_prio_next_stream.exit_crit_edge

entry.sctp_sched_prio_next_stream.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sctp_sched_prio_next_stream.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  br label %sctp_sched_prio_next_stream.exit

sctp_sched_prio_next_stream.exit:                 ; preds = %if.then.i, %entry.sctp_sched_prio_next_stream.exit_crit_edge
  %pos.0.i = phi ptr [ %16, %if.then.i ], [ %14, %entry.sctp_sched_prio_next_stream.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %pos.0.i, i32 -56
  %17 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %next.i, align 4
  %outq = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %7, i32 0, i32 2
  %18 = ptrtoint ptr %outq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %outq, align 4
  %cmp.i6.not = icmp eq ptr %19, %outq
  br i1 %cmp.i6.not, label %if.then, label %sctp_sched_prio_next_stream.exit.if.end_crit_edge

sctp_sched_prio_next_stream.exit.if.end_crit_edge: ; preds = %sctp_sched_prio_next_stream.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %sctp_sched_prio_next_stream.exit
  %20 = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %7, i32 0, i32 3
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %20, align 4
  %cmp.i.i.not = icmp eq ptr %22, %20
  br i1 %cmp.i.i.not, label %if.then.if.end_crit_edge, label %if.then.i10

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i10:                                      ; preds = %if.then
  %23 = ptrtoint ptr %prio_head to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prio_head, align 8
  %next.i8 = getelementptr inbounds %struct.sctp_stream_priorities, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %next.i8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %next.i8, align 4
  %cmp.i9 = icmp eq ptr %26, %7
  br i1 %cmp.i9, label %if.then2.i, label %if.then.i10.if.end.i_crit_edge

if.then.i10.if.end.i_crit_edge:                   ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i10
  %active.i.i = getelementptr inbounds %struct.sctp_stream_priorities, ptr %24, i32 0, i32 1
  %cmp.i18.i = icmp eq ptr %22, %active.i.i
  br i1 %cmp.i18.i, label %if.then.i.i, label %if.then2.i.sctp_sched_prio_next_stream.exit.i_crit_edge

if.then2.i.sctp_sched_prio_next_stream.exit.i_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sctp_sched_prio_next_stream.exit.i

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %22, align 4
  br label %sctp_sched_prio_next_stream.exit.i

sctp_sched_prio_next_stream.exit.i:               ; preds = %if.then.i.i, %if.then2.i.sctp_sched_prio_next_stream.exit.i_crit_edge
  %pos.0.i.i = phi ptr [ %28, %if.then.i.i ], [ %22, %if.then2.i.sctp_sched_prio_next_stream.exit.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %pos.0.i.i, i32 -56
  %29 = ptrtoint ptr %next.i8 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr.i.i, ptr %next.i8, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %sctp_sched_prio_next_stream.exit.i, %if.then.i10.if.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %20) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %7, i32 0, i32 3, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %20, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %36 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %20, ptr %20, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %7, i32 0, i32 3, i32 0, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %20, ptr %prev.i3.i.i, align 4
  %active.i11 = getelementptr inbounds %struct.sctp_stream_priorities, ptr %24, i32 0, i32 1
  %38 = ptrtoint ptr %active.i11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %active.i11, align 4
  %cmp.i19.not.i = icmp eq ptr %39, %active.i11
  br i1 %cmp.i19.not.i, label %if.then6.i, label %list_del_init.exit.i.if.end_crit_edge

list_del_init.exit.i.if.end_crit_edge:            ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then6.i:                                       ; preds = %list_del_init.exit.i
  %call.i.i21.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #5
  br i1 %call.i.i21.i, label %if.end.i.i24.i, label %if.then6.i.list_del_init.exit26.i_crit_edge

if.then6.i.list_del_init.exit26.i_crit_edge:      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit26.i

if.end.i.i24.i:                                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i22.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i22.i, align 4
  %42 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %24, align 4
  %prev1.i.i.i23.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i23.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i23.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del_init.exit26.i

list_del_init.exit26.i:                           ; preds = %if.end.i.i24.i, %if.then6.i.list_del_init.exit26.i_crit_edge
  %46 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %24, ptr %24, align 4
  %prev.i3.i25.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i3.i25.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %24, ptr %prev.i3.i25.i, align 4
  %48 = ptrtoint ptr %next.i8 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %next.i8, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit26.i, %list_del_init.exit.i.if.end_crit_edge, %if.then.if.end_crit_edge, %sctp_sched_prio_next_stream.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_sched_prio_sched_all(ptr noundef %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %out_chunk_list = getelementptr i8, ptr %stream, i32 36
  %0 = ptrtoint ptr %out_chunk_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %ch.019 = load ptr, ptr %out_chunk_list, align 4
  %cmp.not20 = icmp eq ptr %ch.019, %out_chunk_list
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %ch.021 = phi ptr [ %ch.0, %if.end.for.body_crit_edge ], [ %ch.019, %entry.for.body_crit_edge ]
  %subh.i = getelementptr inbounds %struct.sctp_chunk, ptr %ch.021, i32 0, i32 8
  %1 = ptrtoint ptr %subh.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %subh.i, align 4
  %stream.i = getelementptr inbounds %struct.sctp_datahdr, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %stream.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %stream.i, align 4
  %conv.i = zext i16 %4 to i32
  %mul17.i.i = shl nuw nsw i32 %conv.i, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %mul17.i.i) #5
  %ext = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 2
  %5 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ext, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @sctp_sched_prio_sched(ptr noundef %stream, ptr noundef nonnull %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %7 = ptrtoint ptr %ch.021 to i32
  call void @__asan_load4_noabort(i32 %7)
  %ch.0 = load ptr, ptr %ch.021, align 4
  %cmp.not = icmp eq ptr %ch.0, %out_chunk_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sctp_sched_prio_unsched_all(ptr noundef readonly %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %cmp.not48 = icmp eq ptr %2, %0
  br i1 %cmp.not48, label %entry.for.end34_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end34

for.cond.loopexit:                                ; preds = %sctp_sched_prio_unsched.exit.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %cmp.not = icmp eq ptr %tmp.050, %0
  br i1 %cmp.not, label %for.cond.loopexit.for.end34_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.loopexit.for.end34_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end34

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %p.049 = phi ptr [ %tmp.050, %for.cond.loopexit.for.body_crit_edge ], [ %2, %entry.for.body_crit_edge ]
  %3 = ptrtoint ptr %p.049 to i32
  call void @__asan_load4_noabort(i32 %3)
  %tmp.050 = load ptr, ptr %p.049, align 4
  %active = getelementptr inbounds %struct.sctp_stream_priorities, ptr %p.049, i32 0, i32 1
  %4 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active, align 4
  %cmp20.not44 = icmp eq ptr %5, %active
  br i1 %cmp20.not44, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body22_crit_edge

for.body.for.body22_crit_edge:                    ; preds = %for.body
  br label %for.body22

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.loopexit

for.body22:                                       ; preds = %sctp_sched_prio_unsched.exit.for.body22_crit_edge, %for.body.for.body22_crit_edge
  %.pn.in45 = phi ptr [ %.pn, %sctp_sched_prio_unsched.exit.for.body22_crit_edge ], [ %5, %for.body.for.body22_crit_edge ]
  %6 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in45, align 8
  %7 = load volatile ptr, ptr %.pn.in45, align 4
  %cmp.i.i.not = icmp eq ptr %7, %.pn.in45
  br i1 %cmp.i.i.not, label %for.body22.sctp_sched_prio_unsched.exit_crit_edge, label %if.then.i

for.body22.sctp_sched_prio_unsched.exit_crit_edge: ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sctp_sched_prio_unsched.exit

if.then.i:                                        ; preds = %for.body22
  %soute.0 = getelementptr i8, ptr %.pn.in45, i32 -56
  %prio_head1.i = getelementptr i8, ptr %.pn.in45, i32 8
  %8 = ptrtoint ptr %prio_head1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prio_head1.i, align 8
  %next.i = getelementptr inbounds %struct.sctp_stream_priorities, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next.i, align 4
  %cmp.i = icmp eq ptr %11, %soute.0
  br i1 %cmp.i, label %if.then2.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  %active.i.i = getelementptr inbounds %struct.sctp_stream_priorities, ptr %9, i32 0, i32 1
  %cmp.i18.i = icmp eq ptr %7, %active.i.i
  br i1 %cmp.i18.i, label %if.then.i.i, label %if.then2.i.sctp_sched_prio_next_stream.exit.i_crit_edge

if.then2.i.sctp_sched_prio_next_stream.exit.i_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sctp_sched_prio_next_stream.exit.i

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  br label %sctp_sched_prio_next_stream.exit.i

sctp_sched_prio_next_stream.exit.i:               ; preds = %if.then.i.i, %if.then2.i.sctp_sched_prio_next_stream.exit.i_crit_edge
  %pos.0.i.i = phi ptr [ %13, %if.then.i.i ], [ %7, %if.then2.i.sctp_sched_prio_next_stream.exit.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %pos.0.i.i, i32 -56
  %14 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i.i, ptr %next.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %sctp_sched_prio_next_stream.exit.i, %if.then.i.if.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in45) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr i8, ptr %.pn.in45, i32 4
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn.in45, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %21 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %.pn.in45, ptr %.pn.in45, align 4
  %prev.i3.i.i = getelementptr i8, ptr %.pn.in45, i32 4
  %22 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %.pn.in45, ptr %prev.i3.i.i, align 4
  %active.i = getelementptr inbounds %struct.sctp_stream_priorities, ptr %9, i32 0, i32 1
  %23 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %active.i, align 4
  %cmp.i19.not.i = icmp eq ptr %24, %active.i
  br i1 %cmp.i19.not.i, label %if.then6.i, label %list_del_init.exit.i.sctp_sched_prio_unsched.exit_crit_edge

list_del_init.exit.i.sctp_sched_prio_unsched.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sctp_sched_prio_unsched.exit

if.then6.i:                                       ; preds = %list_del_init.exit.i
  %call.i.i21.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #5
  br i1 %call.i.i21.i, label %if.end.i.i24.i, label %if.then6.i.list_del_init.exit26.i_crit_edge

if.then6.i.list_del_init.exit26.i_crit_edge:      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit26.i

if.end.i.i24.i:                                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i22.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i22.i, align 4
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %9, align 4
  %prev1.i.i.i23.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i23.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i23.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del_init.exit26.i

list_del_init.exit26.i:                           ; preds = %if.end.i.i24.i, %if.then6.i.list_del_init.exit26.i_crit_edge
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %9, ptr %9, align 4
  %prev.i3.i25.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i3.i25.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %9, ptr %prev.i3.i25.i, align 4
  %33 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %next.i, align 4
  br label %sctp_sched_prio_unsched.exit

sctp_sched_prio_unsched.exit:                     ; preds = %list_del_init.exit26.i, %list_del_init.exit.i.sctp_sched_prio_unsched.exit_crit_edge, %for.body22.sctp_sched_prio_unsched.exit_crit_edge
  %cmp20.not = icmp eq ptr %.pn, %active
  br i1 %cmp20.not, label %sctp_sched_prio_unsched.exit.for.cond.loopexit_crit_edge, label %sctp_sched_prio_unsched.exit.for.body22_crit_edge

sctp_sched_prio_unsched.exit.for.body22_crit_edge: ; preds = %sctp_sched_prio_unsched.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body22

sctp_sched_prio_unsched.exit.for.cond.loopexit_crit_edge: ; preds = %sctp_sched_prio_unsched.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.loopexit

for.end34:                                        ; preds = %for.cond.loopexit.for.end34_crit_edge, %entry.for.end34_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_sched_prio_sched(ptr noundef %stream, ptr noundef %soute) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %soute, i32 0, i32 3
  %prio_head1 = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %soute, i32 0, i32 3, i32 0, i32 1
  %1 = ptrtoint ptr %prio_head1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prio_head1, align 8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %0, align 4
  %cmp.i.not = icmp eq ptr %4, %0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct.sctp_stream_priorities, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.end7, label %if.then3

if.then3:                                         ; preds = %if.end
  %prev = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %6, i32 0, i32 3, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %8, ptr noundef %10) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %0, ptr %prev1.i.i, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %0, align 4
  %prev3.i.i = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %soute, i32 0, i32 3, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %8, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %0, ptr %8, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %active = getelementptr inbounds %struct.sctp_stream_priorities, ptr %2, i32 0, i32 1
  %15 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %active, align 4
  %call.i.i46 = tail call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %active, ptr noundef %16) #5
  br i1 %call.i.i46, label %if.end.i.i49, label %if.end7.list_add.exit50_crit_edge

if.end7.list_add.exit50_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit50

if.end.i.i49:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i47 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i47 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %0, ptr %prev1.i.i47, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %0, align 4
  %prev3.i.i48 = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %soute, i32 0, i32 3, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i48 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %active, ptr %prev3.i.i48, align 4
  %20 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %0, ptr %active, align 4
  br label %list_add.exit50

list_add.exit50:                                  ; preds = %if.end.i.i49, %if.end7.list_add.exit50_crit_edge
  %21 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %soute, ptr %next, align 4
  %22 = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 5
  %prio14 = getelementptr inbounds %struct.sctp_stream_priorities, ptr %2, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %list_add.exit50
  %prio.0.in = phi ptr [ %22, %list_add.exit50 ], [ %prio.0, %for.body.for.cond_crit_edge ]
  %23 = ptrtoint ptr %prio.0.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %prio.0 = load ptr, ptr %prio.0.in, align 4
  %cmp.not = icmp eq ptr %prio.0, %22
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %prio13 = getelementptr inbounds %struct.sctp_stream_priorities, ptr %prio.0, i32 0, i32 3
  %24 = ptrtoint ptr %prio13 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %prio13, align 4
  %26 = ptrtoint ptr %prio14 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %prio14, align 4
  %cmp16 = icmp ugt i16 %25, %27
  br i1 %cmp16, label %if.then18, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then18:                                        ; preds = %for.body
  %prev21 = getelementptr inbounds %struct.list_head, ptr %prio.0, i32 0, i32 1
  %28 = ptrtoint ptr %prev21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev21, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call.i.i51 = tail call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %29, ptr noundef %31) #5
  br i1 %call.i.i51, label %if.end.i.i54, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i54:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i52 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i52 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %2, ptr %prev1.i.i52, align 4
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %2, align 4
  %prev3.i.i53 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i53 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %29, ptr %prev3.i.i53, align 4
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %2, ptr %29, align 4
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %prev.i = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 5, i32 0, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i, align 4
  %call.i.i56 = tail call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %37, ptr noundef %22) #5
  br i1 %call.i.i56, label %if.end.i.i58, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i58:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %2, ptr %prev.i, align 4
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %22, ptr %2, align 4
  %prev3.i.i57 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i57 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i57, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %2, ptr %37, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i58, %for.end.cleanup_crit_edge, %if.end.i.i54, %if.then18.cleanup_crit_edge, %if.end.i.i, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__genradix_ptr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_sched_dequeue_common(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @sctp_sched_prio, !1, !"sctp_sched_prio", i1 false, i1 false}
!1 = !{!"../net/sctp/stream_sched_prio.c", i32 321, i32 30}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 2000, i32 1}
