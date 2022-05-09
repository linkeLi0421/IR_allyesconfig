; ModuleID = '/llk/IR_all_yes/net/sctp/stream_sched.c_pt.bc'
source_filename = "../net/sctp/stream_sched.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sctp_sched_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.109, i32, %struct.spinlock }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.sctp_datahdr = type { i32, i16, i16, i32, [0 x i8] }
%struct.sk_buff = type { %union.anon.9, %union.anon.147, %union.anon.148, [48 x i8], %union.anon.149, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.151, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { ptr, ptr, %union.anon.11 }
%union.anon.11 = type { ptr }
%union.anon.147 = type { ptr }
%union.anon.148 = type { i64 }
%union.anon.149 = type { %struct.anon.150 }
%struct.anon.150 = type { i32, ptr }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.153, i32, i32, i32, i16, i16, %union.anon.155, i32, %union.anon.156, %union.anon.157, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.153 = type { i32 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { i32 }
%union.anon.157 = type { i16 }
%struct.sctp_stream_out_ext = type { [3 x i64], [3 x i64], %struct.list_head, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.list_head, ptr }

@sctp_sched_ops = internal global { [3 x ptr], [20 x i8] } zeroinitializer, align 32
@sctp_sched_fcfs = internal global { %struct.sctp_sched_ops, [56 x i8] } { %struct.sctp_sched_ops { ptr @sctp_sched_fcfs_set, ptr @sctp_sched_fcfs_get, ptr @sctp_sched_fcfs_init, ptr @sctp_sched_fcfs_init_sid, ptr @sctp_sched_fcfs_free, ptr @sctp_sched_fcfs_enqueue, ptr @sctp_sched_fcfs_dequeue, ptr @sctp_sched_fcfs_dequeue_done, ptr @sctp_sched_fcfs_sched_all, ptr @sctp_sched_fcfs_unsched_all }, [56 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [15 x i8] c"sctp_sched_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 114, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"sctp_sched_fcfs\00", align 1
@___asan_gen_.5 = private constant [27 x i8] c"../net/sctp/stream_sched.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 94, i32 30 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @sctp_sched_ops, ptr @sctp_sched_fcfs], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_sched_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_sched_fcfs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @sctp_sched_ops_register(i32 noundef %sched, ptr noundef %sched_ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x ptr], ptr @sctp_sched_ops, i32 0, i32 %sched
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %sched_ops, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_sched_ops_init() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr @sctp_sched_fcfs, ptr @sctp_sched_ops, align 4
  tail call void @sctp_sched_ops_prio_init() #7
  tail call void @sctp_sched_ops_rr_init() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_sched_ops_prio_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_sched_ops_rr_init() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_sched_set_sched(ptr noundef %asoc, i32 noundef %sched) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x ptr], ptr @sctp_sched_ops, i32 0, i32 %sched
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %outqueue = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61
  %sched1 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 2
  %2 = ptrtoint ptr %sched1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched1, align 4
  %cmp = icmp eq ptr %3, %1
  br i1 %cmp, label %entry.cleanup68_crit_edge, label %if.end

entry.cleanup68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sched)
  %cmp2 = icmp ugt i32 %sched, 2
  br i1 %cmp2, label %if.end.cleanup68_crit_edge, label %if.end4

if.end.cleanup68_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

if.end4:                                          ; preds = %if.end
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end4.if.end14_crit_edge, label %if.then5

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then5:                                         ; preds = %if.end4
  %free = getelementptr inbounds %struct.sctp_sched_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %free, align 4
  %stream = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60
  tail call void %5(ptr noundef %stream) #7
  %outcnt = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 2
  %6 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %outcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp7117.not = icmp eq i16 %7, 0
  br i1 %cmp7117.not, label %if.then5.if.end14_crit_edge, label %if.then5.for.body_crit_edge

if.then5.for.body_crit_edge:                      ; preds = %if.then5
  br label %for.body

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.then5.for.body_crit_edge
  %i.0118 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %if.then5.for.body_crit_edge ]
  %conv.i = shl i32 %i.0118, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %conv.i) #7
  %ext = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 2
  %8 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ext, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %for.body.cleanup_crit_edge, label %if.end13

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %9, i32 56
  %10 = call ptr @memset(ptr %add.ptr, i32 0, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.0118, 1
  %11 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %outcnt, align 4
  %conv = zext i16 %12 to i32
  %cmp7 = icmp ult i32 %inc, %conv
  br i1 %cmp7, label %cleanup.for.body_crit_edge, label %cleanup.if.end14_crit_edge

cleanup.if.end14_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end14:                                         ; preds = %cleanup.if.end14_crit_edge, %if.then5.if.end14_crit_edge, %if.end4.if.end14_crit_edge
  %13 = ptrtoint ptr %sched1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %sched1, align 4
  %init = getelementptr inbounds %struct.sctp_sched_ops, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init, align 4
  %stream17 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60
  %call18 = tail call i32 %15(ptr noundef %stream17) #7
  %outcnt21 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 2
  %16 = ptrtoint ptr %outcnt21 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %outcnt21, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp23120.not = icmp eq i16 %17, 0
  br i1 %cmp23120.not, label %if.end14.for.end41_crit_edge, label %for.body25.lr.ph

if.end14.for.end41_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end41

for.body25.lr.ph:                                 ; preds = %if.end14
  %init_sid = getelementptr inbounds %struct.sctp_sched_ops, ptr %1, i32 0, i32 3
  br label %for.body25

for.body25:                                       ; preds = %for.inc39.for.body25_crit_edge, %for.body25.lr.ph
  %i.1121 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc40, %for.inc39.for.body25_crit_edge ]
  %conv.i113 = shl i32 %i.1121, 4
  %call1.i115 = tail call ptr @__genradix_ptr(ptr noundef %stream17, i32 noundef %conv.i113) #7
  %ext29 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i115, i32 0, i32 2
  %18 = ptrtoint ptr %ext29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ext29, align 4
  %tobool30.not = icmp eq ptr %19, null
  br i1 %tobool30.not, label %for.body25.for.inc39_crit_edge, label %if.end32

for.body25.for.inc39_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39

if.end32:                                         ; preds = %for.body25
  %conv27 = trunc i32 %i.1121 to i16
  %20 = ptrtoint ptr %init_sid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_sid, align 4
  %call35 = tail call i32 %21(ptr noundef %stream17, i16 noundef zeroext %conv27, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end32.for.inc39_crit_edge, label %err

if.end32.for.inc39_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc39

for.inc39:                                        ; preds = %if.end32.for.inc39_crit_edge, %for.body25.for.inc39_crit_edge
  %inc40 = add nuw nsw i32 %i.1121, 1
  %22 = ptrtoint ptr %outcnt21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %outcnt21, align 4
  %conv22 = zext i16 %23 to i32
  %cmp23 = icmp ult i32 %inc40, %conv22
  br i1 %cmp23, label %for.inc39.for.body25_crit_edge, label %for.inc39.for.end41_crit_edge

for.inc39.for.end41_crit_edge:                    ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end41

for.inc39.for.body25_crit_edge:                   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body25

for.end41:                                        ; preds = %for.inc39.for.end41_crit_edge, %if.end14.for.end41_crit_edge
  %out_chunk_list = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 1
  %24 = ptrtoint ptr %out_chunk_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %ch.0123 = load ptr, ptr %out_chunk_list, align 4
  %cmp47.not124 = icmp eq ptr %ch.0123, %out_chunk_list
  br i1 %cmp47.not124, label %for.end41.cleanup68_crit_edge, label %for.body49.lr.ph

for.end41.cleanup68_crit_edge:                    ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

for.body49.lr.ph:                                 ; preds = %for.end41
  %enqueue = getelementptr inbounds %struct.sctp_sched_ops, ptr %1, i32 0, i32 5
  br label %for.body49

for.body49:                                       ; preds = %for.inc57.for.body49_crit_edge, %for.body49.lr.ph
  %ch.0126 = phi ptr [ %ch.0123, %for.body49.lr.ph ], [ %ch.0, %for.inc57.for.body49_crit_edge ]
  %msg.0125 = phi ptr [ null, %for.body49.lr.ph ], [ %msg.1, %for.inc57.for.body49_crit_edge ]
  %msg50 = getelementptr inbounds %struct.sctp_chunk, ptr %ch.0126, i32 0, i32 18
  %25 = ptrtoint ptr %msg50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %msg50, align 4
  %cmp51 = icmp eq ptr %26, %msg.0125
  br i1 %cmp51, label %for.body49.for.inc57_crit_edge, label %if.end54

for.body49.for.inc57_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc57

if.end54:                                         ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %enqueue, align 4
  tail call void %28(ptr noundef %outqueue, ptr noundef %26) #7
  br label %for.inc57

for.inc57:                                        ; preds = %if.end54, %for.body49.for.inc57_crit_edge
  %msg.1 = phi ptr [ %msg.0125, %for.body49.for.inc57_crit_edge ], [ %26, %if.end54 ]
  %29 = ptrtoint ptr %ch.0126 to i32
  call void @__asan_load4_noabort(i32 %29)
  %ch.0 = load ptr, ptr %ch.0126, align 4
  %cmp47.not = icmp eq ptr %ch.0, %out_chunk_list
  br i1 %cmp47.not, label %for.inc57.cleanup68_crit_edge, label %for.inc57.for.body49_crit_edge

for.inc57.for.body49_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body49

for.inc57.cleanup68_crit_edge:                    ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup68

err:                                              ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %free64 = getelementptr inbounds %struct.sctp_sched_ops, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %free64 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %free64, align 4
  tail call void %31(ptr noundef %stream17) #7
  %32 = ptrtoint ptr %sched1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @sctp_sched_fcfs, ptr %sched1, align 4
  br label %cleanup68

cleanup68:                                        ; preds = %err, %for.inc57.cleanup68_crit_edge, %for.end41.cleanup68_crit_edge, %if.end.cleanup68_crit_edge, %entry.cleanup68_crit_edge
  %retval.0 = phi i32 [ %call35, %err ], [ 0, %entry.cleanup68_crit_edge ], [ -22, %if.end.cleanup68_crit_edge ], [ 0, %for.end41.cleanup68_crit_edge ], [ 0, %for.inc57.cleanup68_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_sched_get_sched(ptr nocapture noundef readonly %asoc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sched = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 2
  %0 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched, align 4
  %2 = load ptr, ptr @sctp_sched_ops, align 4
  %cmp1 = icmp eq ptr %1, %2
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %for.inc

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %entry
  %3 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @sctp_sched_ops, i32 0, i32 1), align 4
  %cmp1.1 = icmp eq ptr %1, %3
  br i1 %cmp1.1, label %for.inc.cleanup_crit_edge, label %for.inc.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @sctp_sched_ops, i32 0, i32 2), align 4
  %cmp1.2 = icmp eq ptr %1, %4
  %spec.select = select i1 %cmp1.2, i32 2, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.inc.1, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ], [ %spec.select, %for.inc.1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_sched_set_value(ptr noundef %asoc, i16 noundef zeroext %sid, i16 noundef zeroext %value, i32 noundef %gfp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60
  %outcnt = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 2
  %0 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %outcnt, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %sid)
  %cmp.not = icmp ugt i16 %1, %sid
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %conv.i = zext i16 %sid to i32
  %mul17.i.i = shl nuw nsw i32 %conv.i, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %mul17.i.i) #7
  %ext = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 2
  %2 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then4, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %call6 = tail call i32 @sctp_stream_init_ext(ptr noundef %stream, i16 noundef zeroext %sid) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then4.if.end10_crit_edge, label %if.then4.return_crit_edge

if.then4.return_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10:                                         ; preds = %if.then4.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %sched = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 2
  %4 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sched, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call12 = tail call i32 %7(ptr noundef %stream, i16 noundef zeroext %sid, i16 noundef zeroext %value, i32 noundef %gfp) #7
  br label %return

return:                                           ; preds = %if.end10, %if.then4.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ %call12, %if.end10 ], [ %call6, %if.then4.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_stream_init_ext(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_sched_get_value(ptr noundef %asoc, i16 noundef zeroext %sid, ptr noundef %value) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60
  %outcnt = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 2
  %0 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %outcnt, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %sid)
  %cmp.not = icmp ugt i16 %1, %sid
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %conv.i = zext i16 %sid to i32
  %mul17.i.i = shl nuw nsw i32 %conv.i, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %mul17.i.i) #7
  %ext = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 2
  %2 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end5

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sched = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 2
  %4 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sched, align 4
  %get = getelementptr inbounds %struct.sctp_sched_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get, align 4
  %call7 = tail call i32 %7(ptr noundef %stream, i16 noundef zeroext %sid, ptr noundef %value) #7
  br label %return

return:                                           ; preds = %if.end5, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ -22, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_sched_dequeue_done(ptr noundef %q, ptr noundef %ch) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frag_list = getelementptr inbounds %struct.sctp_chunk, ptr %ch, i32 0, i32 4
  %msg = getelementptr inbounds %struct.sctp_chunk, ptr %ch, i32 0, i32 18
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  %2 = ptrtoint ptr %frag_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %frag_list, align 4
  %cmp.i.not = icmp eq ptr %3, %1
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q, align 4
  %intl_capable = getelementptr inbounds %struct.sctp_association, ptr %5, i32 0, i32 5, i32 12
  %6 = ptrtoint ptr %intl_capable to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %intl_capable, align 2
  %7 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool1.not = icmp eq i16 %7, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %subh.i = getelementptr inbounds %struct.sctp_chunk, ptr %ch, i32 0, i32 8
  %8 = ptrtoint ptr %subh.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %subh.i, align 4
  %stream.i = getelementptr inbounds %struct.sctp_datahdr, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %stream.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %stream.i, align 4
  %stream = getelementptr inbounds %struct.sctp_association, ptr %5, i32 0, i32 60
  %conv.i18 = zext i16 %11 to i32
  %mul17.i.i = shl nuw nsw i32 %conv.i18, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %mul17.i.i) #7
  %12 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %q, align 4
  %out_curr = getelementptr inbounds %struct.sctp_association, ptr %13, i32 0, i32 60, i32 4
  %14 = ptrtoint ptr %out_curr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call1.i, ptr %out_curr, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %q, align 4
  %out_curr9 = getelementptr inbounds %struct.sctp_association, ptr %16, i32 0, i32 60, i32 4
  %17 = ptrtoint ptr %out_curr9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %out_curr9, align 4
  %sched = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 2
  %18 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sched, align 4
  %dequeue_done = getelementptr inbounds %struct.sctp_sched_ops, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %dequeue_done to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dequeue_done, align 4
  tail call void %21(ptr noundef %q, ptr noundef %ch) #7
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_sched_dequeue_common(ptr nocapture noundef %q, ptr noundef %ch) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ch) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ch, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %ch, ptr %ch, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %ch, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ch, ptr %prev.i3.i, align 4
  %8 = getelementptr inbounds %struct.sctp_chunk, ptr %ch, i32 0, i32 3
  %call.i.i3 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #7
  br i1 %call.i.i3, label %if.end.i.i6, label %list_del_init.exit.list_del_init.exit8_crit_edge

list_del_init.exit.list_del_init.exit8_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit8

if.end.i.i6:                                      ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i4 = getelementptr inbounds %struct.sctp_chunk, ptr %ch, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i4, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i5 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i5, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit8

list_del_init.exit8:                              ; preds = %if.end.i.i6, %list_del_init.exit.list_del_init.exit8_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %8, ptr %8, align 4
  %prev.i3.i7 = getelementptr inbounds %struct.sctp_chunk, ptr %ch, i32 0, i32 3, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %8, ptr %prev.i3.i7, align 4
  %skb = getelementptr inbounds %struct.sctp_chunk, ptr %ch, i32 0, i32 5
  %17 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %out_qlen = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 3
  %21 = ptrtoint ptr %out_qlen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %out_qlen, align 4
  %sub = sub i32 %22, %20
  store i32 %sub, ptr %out_qlen, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_sched_init_sid(ptr noundef %stream, i16 noundef zeroext %sid, i32 noundef %gfp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sched.i = getelementptr i8, ptr %stream, i32 44
  %0 = ptrtoint ptr %sched.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched.i, align 4
  %conv.i = zext i16 %sid to i32
  %mul17.i.i = shl nuw nsw i32 %conv.i, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %mul17.i.i) #7
  %ext2 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 2
  %2 = ptrtoint ptr %ext2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext2, align 4
  %outq = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %outq to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %outq, ptr %outq, align 4
  %prev.i = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %3, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %outq, ptr %prev.i, align 4
  %init_sid = getelementptr inbounds %struct.sctp_sched_ops, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %init_sid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_sid, align 4
  %call3 = tail call i32 %7(ptr noundef %stream, i16 noundef zeroext %sid, i32 noundef %gfp) #7
  ret i32 %call3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @sctp_sched_ops_from_stream(ptr nocapture noundef readonly %stream) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sched = getelementptr i8, ptr %stream, i32 44
  %0 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched, align 4
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__genradix_ptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_sched_fcfs_set(ptr nocapture noundef readnone %stream, i16 noundef zeroext %sid, i16 noundef zeroext %value, i32 noundef %gfp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sctp_sched_fcfs_get(ptr nocapture noundef readnone %stream, i16 noundef zeroext %sid, ptr nocapture noundef writeonly %value) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %value, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_sched_fcfs_init(ptr nocapture noundef readnone %stream) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_sched_fcfs_init_sid(ptr nocapture noundef readnone %stream, i16 noundef zeroext %sid, i32 noundef %gfp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sctp_sched_fcfs_free(ptr nocapture noundef %stream) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sctp_sched_fcfs_enqueue(ptr nocapture noundef %q, ptr nocapture noundef %msg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sctp_sched_fcfs_dequeue(ptr noundef %q) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %out_curr = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 60, i32 4
  %4 = ptrtoint ptr %out_curr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out_curr, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %if.then4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ext = getelementptr inbounds %struct.sctp_stream_out, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ext, align 4
  %outq = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %outq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %outq, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 -16
  br label %if.end11

if.end11:                                         ; preds = %if.then4, %if.end.if.end11_crit_edge
  %ch.0 = phi ptr [ %add.ptr, %if.then4 ], [ %3, %if.end.if.end11_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ch.0) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end11.list_del_init.exit.i_crit_edge

if.end11.list_del_init.exit.i_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %ch.0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %ch.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ch.0, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end11.list_del_init.exit.i_crit_edge
  %16 = ptrtoint ptr %ch.0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %ch.0, ptr %ch.0, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %ch.0, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ch.0, ptr %prev.i3.i.i, align 4
  %18 = getelementptr inbounds %struct.sctp_chunk, ptr %ch.0, i32 0, i32 3
  %call.i.i3.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %18) #7
  br i1 %call.i.i3.i, label %if.end.i.i6.i, label %list_del_init.exit.i.sctp_sched_dequeue_common.exit_crit_edge

list_del_init.exit.i.sctp_sched_dequeue_common.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sctp_sched_dequeue_common.exit

if.end.i.i6.i:                                    ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i4.i = getelementptr inbounds %struct.sctp_chunk, ptr %ch.0, i32 0, i32 3, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i4.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %prev1.i.i.i5.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i5.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %sctp_sched_dequeue_common.exit

sctp_sched_dequeue_common.exit:                   ; preds = %if.end.i.i6.i, %list_del_init.exit.i.sctp_sched_dequeue_common.exit_crit_edge
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %18, ptr %18, align 4
  %prev.i3.i7.i = getelementptr inbounds %struct.sctp_chunk, ptr %ch.0, i32 0, i32 3, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i3.i7.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %18, ptr %prev.i3.i7.i, align 4
  %skb.i = getelementptr inbounds %struct.sctp_chunk, ptr %ch.0, i32 0, i32 5
  %27 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skb.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i, align 4
  %out_qlen.i = getelementptr inbounds %struct.sctp_outq, ptr %q, i32 0, i32 3
  %31 = ptrtoint ptr %out_qlen.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %out_qlen.i, align 4
  %sub.i = sub i32 %32, %30
  store i32 %sub.i, ptr %out_qlen.i, align 4
  br label %out

out:                                              ; preds = %sctp_sched_dequeue_common.exit, %entry.out_crit_edge
  %ch.1 = phi ptr [ null, %entry.out_crit_edge ], [ %ch.0, %sctp_sched_dequeue_common.exit ]
  ret ptr %ch.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sctp_sched_fcfs_dequeue_done(ptr nocapture noundef %q, ptr nocapture noundef %chunk) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sctp_sched_fcfs_sched_all(ptr nocapture noundef %stream) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sctp_sched_fcfs_unsched_all(ptr nocapture noundef %stream) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @sctp_sched_ops, !1, !"sctp_sched_ops", i1 false, i1 false}
!1 = !{!"../net/sctp/stream_sched.c", i32 114, i32 31}
!2 = !{ptr @sctp_sched_fcfs, !3, !"sctp_sched_fcfs", i1 false, i1 false}
!3 = !{!"../net/sctp/stream_sched.c", i32 94, i32 30}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
