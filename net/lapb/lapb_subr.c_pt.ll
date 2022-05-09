; ModuleID = '/llk/IR_all_yes/net/lapb/lapb_subr.c_pt.bc'
source_filename = "../net/lapb/lapb_subr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lapb_cb = type { %struct.list_head, ptr, i32, i8, i16, i16, i16, i8, i16, i16, i16, i16, %struct.timer_list, %struct.timer_list, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head, i8, ptr, %struct.lapb_frame, i8, %struct.spinlock, %struct.refcount_struct }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.lapb_frame = type { i16, i16, i16, i8, i8, [2 x i8] }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lapb_clear_queues(ptr noundef %lapb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %write_queue = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 16
  tail call void @skb_queue_purge(ptr noundef %write_queue) #3
  %ack_queue = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 17
  tail call void @skb_queue_purge(ptr noundef %ack_queue) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lapb_frames_acked(ptr noundef %lapb, i16 noundef zeroext %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %va = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 6
  %2 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %va, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %nr)
  %cmp.not = icmp eq i16 %3, %nr
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %while.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

while.cond.preheader:                             ; preds = %entry
  %ack_queue = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 17
  %4 = ptrtoint ptr %ack_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ack_queue, align 4
  %cmp.i23 = icmp eq ptr %5, %ack_queue
  %tobool3.not2224 = icmp eq ptr %5, null
  %tobool3.not25 = or i1 %cmp.i23, %tobool3.not2224
  br i1 %tobool3.not25, label %while.cond.preheader.if.end_crit_edge, label %land.rhs.lr.ph

while.cond.preheader.if.end_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %6 = select i1 %tobool.not, i16 7, i16 127
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %7 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %va, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %nr)
  %cmp7.not = icmp eq i16 %8, %nr
  br i1 %cmp7.not, label %land.rhs.if.end_crit_edge, label %while.body

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

while.body:                                       ; preds = %land.rhs
  %call10 = tail call ptr @skb_dequeue(ptr noundef %ack_queue) #3
  tail call void @kfree_skb_reason(ptr noundef %call10, i32 noundef 0) #3
  %9 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %va, align 2
  %add = add i16 %10, 1
  %rem = and i16 %add, %6
  store i16 %rem, ptr %va, align 2
  %11 = ptrtoint ptr %ack_queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ack_queue, align 4
  %cmp.i = icmp eq ptr %12, %ack_queue
  %tobool3.not22 = icmp eq ptr %12, null
  %tobool3.not = or i1 %cmp.i, %tobool3.not22
  br i1 %tobool3.not, label %while.body.if.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %while.body.if.end_crit_edge, %land.rhs.if.end_crit_edge, %while.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lapb_requeue_frames(ptr noundef %lapb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ack_queue = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 17
  %call7 = tail call ptr @skb_dequeue(ptr noundef %ack_queue) #3
  %cmp.not8 = icmp eq ptr %call7, null
  br i1 %cmp.not8, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %write_queue1 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %call10 = phi ptr [ %call7, %while.body.lr.ph ], [ %call, %if.end.while.body_crit_edge ]
  %skb_prev.09 = phi ptr [ null, %while.body.lr.ph ], [ %call10, %if.end.while.body_crit_edge ]
  %tobool.not = icmp eq ptr %skb_prev.09, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @skb_queue_head(ptr noundef %write_queue1, ptr noundef nonnull %call10) #3
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @skb_append(ptr noundef nonnull %skb_prev.09, ptr noundef nonnull %call10, ptr noundef %write_queue1) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = tail call ptr @skb_dequeue(ptr noundef %ack_queue) #3
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_append(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lapb_validate_nr(ptr nocapture noundef readonly %lapb, i16 noundef zeroext %nr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %va = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 6
  %0 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %va, align 2
  %vs = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 4
  %2 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vs, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not22 = icmp eq i16 %1, %3
  br i1 %cmp.not22, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %mode = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %6 = select i1 %tobool.not, i16 7, i16 127
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %vc.023 = phi i16 [ %1, %while.body.lr.ph ], [ %rem, %if.end.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %vc.023, i16 %nr)
  %cmp5 = icmp eq i16 %vc.023, %nr
  br i1 %cmp5, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %while.body
  %add = add i16 %vc.023, 1
  %rem = and i16 %add, %6
  %cmp.not = icmp eq i16 %rem, %3
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %nr)
  %cmp12 = icmp eq i16 %3, %nr
  %conv13 = zext i1 %cmp12 to i32
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv13, %while.end ], [ 1, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lapb_decode(ptr nocapture noundef readonly %lapb, ptr noundef %skb, ptr noundef writeonly %frame) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %frame to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 256, ptr %frame, align 2
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %sub.i.i, 1
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !9

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp3.i = icmp ult i32 %2, 2
  br i1 %cmp3.i, label %if.end.i.return_crit_edge, label %pskb_may_pull.exit, !prof !10

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 2, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #3
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.return_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

pskb_may_pull.exit.return_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %mode = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 2
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and36 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %data56 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data56 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data56, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  br i1 %tobool.not, label %if.else34, label %if.then1

if.then1:                                         ; preds = %if.end
  br i1 %tobool37.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %10)
  %cmp = icmp eq i8 %10, 7
  br i1 %cmp, label %if.then7, label %if.then5.if.end8_crit_edge

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  %cr = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 3
  %11 = ptrtoint ptr %cr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %cr, align 2
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then5.if.end8_crit_edge
  %12 = ptrtoint ptr %data56 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data56, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %15)
  %cmp12 = icmp eq i8 %15, 15
  br i1 %cmp12, label %if.end8.if.end73.sink.split_crit_edge, label %if.end8.if.end73_crit_edge

if.end8.if.end73_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end73

if.end8.if.end73.sink.split_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end73.sink.split

if.else:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %10)
  %cmp20 = icmp eq i8 %10, 15
  br i1 %cmp20, label %if.then22, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %cr23 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 3
  %16 = ptrtoint ptr %cr23 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %cr23, align 2
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.else.if.end24_crit_edge
  %17 = ptrtoint ptr %data56 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data56, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %20)
  %cmp28 = icmp eq i8 %20, 7
  br i1 %cmp28, label %if.end24.if.end73.sink.split_crit_edge, label %if.end24.if.end73_crit_edge

if.end24.if.end73_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end73

if.end24.if.end73.sink.split_crit_edge:           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end73.sink.split

if.else34:                                        ; preds = %if.end
  br i1 %tobool37.not, label %if.else55, label %if.then38

if.then38:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp42 = icmp eq i8 %10, 1
  br i1 %cmp42, label %if.then44, label %if.then38.if.end46_crit_edge

if.then38.if.end46_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end46

if.then44:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #5
  %cr45 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 3
  %21 = ptrtoint ptr %cr45 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %cr45, align 2
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.then38.if.end46_crit_edge
  %22 = ptrtoint ptr %data56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data56, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %cmp50 = icmp eq i8 %25, 3
  br i1 %cmp50, label %if.end46.if.end73.sink.split_crit_edge, label %if.end46.if.end73_crit_edge

if.end46.if.end73_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end73

if.end46.if.end73.sink.split_crit_edge:           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end73.sink.split

if.else55:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp59 = icmp eq i8 %10, 3
  br i1 %cmp59, label %if.then61, label %if.else55.if.end63_crit_edge

if.else55.if.end63_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end63

if.then61:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #5
  %cr62 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 3
  %26 = ptrtoint ptr %cr62 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %cr62, align 2
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.else55.if.end63_crit_edge
  %27 = ptrtoint ptr %data56 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data56, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp67 = icmp eq i8 %30, 1
  br i1 %cmp67, label %if.end63.if.end73.sink.split_crit_edge, label %if.end63.if.end73_crit_edge

if.end63.if.end73_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end73

if.end63.if.end73.sink.split_crit_edge:           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end73.sink.split

if.end73.sink.split:                              ; preds = %if.end63.if.end73.sink.split_crit_edge, %if.end46.if.end73.sink.split_crit_edge, %if.end24.if.end73.sink.split_crit_edge, %if.end8.if.end73.sink.split_crit_edge
  %cr53 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 3
  %31 = ptrtoint ptr %cr53 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %cr53, align 2
  br label %if.end73

if.end73:                                         ; preds = %if.end73.sink.split, %if.end63.if.end73_crit_edge, %if.end46.if.end73_crit_edge, %if.end24.if.end73_crit_edge, %if.end8.if.end73_crit_edge
  %call74 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #3
  %32 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode, align 4
  %and76 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %data183 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data183 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data183, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 1
  %conv185 = zext i8 %37 to i32
  %and186 = and i32 %conv185, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool77.not, label %if.else182, label %if.then78

if.then78:                                        ; preds = %if.end73
  br i1 %tobool187.not, label %if.then84, label %if.else113

if.then84:                                        ; preds = %if.then78
  %38 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i.i, align 4
  %40 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i347 = sub i32 %39, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i347)
  %cmp.i348 = icmp ugt i32 %sub.i.i347, 1
  br i1 %cmp.i348, label %if.then84.if.end87_crit_edge, label %if.end.i350, !prof !9

if.then84.if.end87_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end87

if.end.i350:                                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp3.i349 = icmp ult i32 %39, 2
  br i1 %cmp3.i349, label %if.end.i350.return_crit_edge, label %pskb_may_pull.exit356, !prof !10

if.end.i350.return_crit_edge:                     ; preds = %if.end.i350
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

pskb_may_pull.exit356:                            ; preds = %if.end.i350
  %sub.i351 = sub nuw nsw i32 2, %sub.i.i347
  %call13.i352 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i351) #3
  %cmp14.i353.not = icmp eq ptr %call13.i352, null
  br i1 %cmp14.i353.not, label %pskb_may_pull.exit356.return_crit_edge, label %pskb_may_pull.exit356.if.end87_crit_edge

pskb_may_pull.exit356.if.end87_crit_edge:         ; preds = %pskb_may_pull.exit356
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end87

pskb_may_pull.exit356.return_crit_edge:           ; preds = %pskb_may_pull.exit356
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end87:                                         ; preds = %pskb_may_pull.exit356.if.end87_crit_edge, %if.then84.if.end87_crit_edge
  %42 = ptrtoint ptr %frame to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %frame, align 2
  %43 = ptrtoint ptr %data183 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data183, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  %47 = lshr i8 %46, 1
  %conv93 = zext i8 %47 to i16
  %ns = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 2
  %48 = ptrtoint ptr %ns to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv93, ptr %ns, align 2
  %49 = load ptr, ptr %data183, align 4
  %arrayidx95 = getelementptr i8, ptr %49, i32 1
  %50 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx95, align 1
  %52 = lshr i8 %51, 1
  %conv99 = zext i8 %52 to i16
  %nr = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 1
  %53 = ptrtoint ptr %nr to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv99, ptr %nr, align 2
  %54 = load ptr, ptr %data183, align 4
  %arrayidx101 = getelementptr i8, ptr %54, i32 1
  %55 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx101, align 1
  %57 = and i8 %56, 1
  %pf = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 4
  %58 = ptrtoint ptr %pf to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %pf, align 1
  %59 = load ptr, ptr %data183, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %59, align 1
  %control = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 5
  %62 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %control, align 2
  %63 = load ptr, ptr %data183, align 4
  %arrayidx109 = getelementptr i8, ptr %63, i32 1
  %64 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx109, align 1
  %arrayidx111 = getelementptr %struct.lapb_frame, ptr %frame, i32 0, i32 5, i32 1
  %66 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx111, align 1
  br label %return.sink.split

if.else113:                                       ; preds = %if.then78
  %and117 = and i32 %conv185, 3
  %67 = zext i32 %and117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and117, label %if.else113.return_crit_edge [
    i32 1, label %if.then120
    i32 3, label %if.then159
  ]

if.else113.return_crit_edge:                      ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then120:                                       ; preds = %if.else113
  %68 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len.i.i, align 4
  %70 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i359 = sub i32 %69, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i359)
  %cmp.i360 = icmp ugt i32 %sub.i.i359, 1
  br i1 %cmp.i360, label %if.then120.if.end123_crit_edge, label %if.end.i362, !prof !9

if.then120.if.end123_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end123

if.end.i362:                                      ; preds = %if.then120
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %69)
  %cmp3.i361 = icmp ult i32 %69, 2
  br i1 %cmp3.i361, label %if.end.i362.return_crit_edge, label %pskb_may_pull.exit368, !prof !10

if.end.i362.return_crit_edge:                     ; preds = %if.end.i362
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

pskb_may_pull.exit368:                            ; preds = %if.end.i362
  %sub.i363 = sub nuw nsw i32 2, %sub.i.i359
  %call13.i364 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i363) #3
  %cmp14.i365.not = icmp eq ptr %call13.i364, null
  br i1 %cmp14.i365.not, label %pskb_may_pull.exit368.return_crit_edge, label %pskb_may_pull.exit368.if.end123_crit_edge

pskb_may_pull.exit368.if.end123_crit_edge:        ; preds = %pskb_may_pull.exit368
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end123

pskb_may_pull.exit368.return_crit_edge:           ; preds = %pskb_may_pull.exit368
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end123:                                        ; preds = %pskb_may_pull.exit368.if.end123_crit_edge, %if.then120.if.end123_crit_edge
  %72 = ptrtoint ptr %data183 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data183, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %73, align 1
  %76 = and i8 %75, 15
  %conv128 = zext i8 %76 to i16
  %77 = ptrtoint ptr %frame to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv128, ptr %frame, align 2
  %78 = load ptr, ptr %data183, align 4
  %arrayidx131 = getelementptr i8, ptr %78, i32 1
  %79 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx131, align 1
  %81 = lshr i8 %80, 1
  %conv135 = zext i8 %81 to i16
  %nr136 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 1
  %82 = ptrtoint ptr %nr136 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv135, ptr %nr136, align 2
  %83 = load ptr, ptr %data183, align 4
  %arrayidx138 = getelementptr i8, ptr %83, i32 1
  %84 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx138, align 1
  %86 = and i8 %85, 1
  %pf142 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 4
  %87 = ptrtoint ptr %pf142 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %pf142, align 1
  %88 = load ptr, ptr %data183, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %88, align 1
  %control145 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 5
  %91 = ptrtoint ptr %control145 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %control145, align 2
  %92 = load ptr, ptr %data183, align 4
  %arrayidx148 = getelementptr i8, ptr %92, i32 1
  %93 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx148, align 1
  %arrayidx150 = getelementptr %struct.lapb_frame, ptr %frame, i32 0, i32 5, i32 1
  %95 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %arrayidx150, align 1
  br label %return.sink.split

if.then159:                                       ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #5
  %96 = and i8 %37, -17
  %conv164 = zext i8 %96 to i16
  %97 = ptrtoint ptr %frame to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv164, ptr %frame, align 2
  %98 = ptrtoint ptr %data183 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data183, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %99, align 1
  %102 = and i8 %101, 16
  %pf171 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 4
  %103 = ptrtoint ptr %pf171 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %pf171, align 1
  %104 = load ptr, ptr %data183, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %104, align 1
  %control174 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 5
  %107 = ptrtoint ptr %control174 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %control174, align 2
  %arrayidx177 = getelementptr %struct.lapb_frame, ptr %frame, i32 0, i32 5, i32 1
  %108 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %arrayidx177, align 1
  br label %return.sink.split

if.else182:                                       ; preds = %if.end73
  br i1 %tobool187.not, label %if.then188, label %if.else210

if.then188:                                       ; preds = %if.else182
  call void @__sanitizer_cov_trace_pc() #5
  %109 = ptrtoint ptr %frame to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %frame, align 2
  %110 = ptrtoint ptr %data183 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data183, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %111, align 1
  %114 = lshr i8 %113, 1
  %115 = and i8 %114, 7
  %conv195 = zext i8 %115 to i16
  %ns196 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 2
  %116 = ptrtoint ptr %ns196 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv195, ptr %ns196, align 2
  %117 = load ptr, ptr %data183, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %117, align 1
  %120 = lshr i8 %119, 5
  %conv202 = zext i8 %120 to i16
  %nr203 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 1
  %121 = ptrtoint ptr %nr203 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv202, ptr %nr203, align 2
  br label %if.end259.sink.split

if.else210:                                       ; preds = %if.else182
  %and214 = and i32 %conv185, 3
  %122 = zext i32 %and214 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %and214, label %if.else210.if.end259_crit_edge [
    i32 1, label %if.then217
    i32 3, label %if.then244
  ]

if.else210.if.end259_crit_edge:                   ; preds = %if.else210
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end259

if.then217:                                       ; preds = %if.else210
  call void @__sanitizer_cov_trace_pc() #5
  %123 = and i8 %37, 15
  %conv222 = zext i8 %123 to i16
  %124 = ptrtoint ptr %frame to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv222, ptr %frame, align 2
  %125 = ptrtoint ptr %data183 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data183, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %126, align 1
  %129 = lshr i8 %128, 5
  %conv229 = zext i8 %129 to i16
  %nr230 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 1
  %130 = ptrtoint ptr %nr230 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv229, ptr %nr230, align 2
  br label %if.end259.sink.split

if.then244:                                       ; preds = %if.else210
  call void @__sanitizer_cov_trace_pc() #5
  %131 = and i8 %37, -17
  %conv249 = zext i8 %131 to i16
  %132 = ptrtoint ptr %frame to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %conv249, ptr %frame, align 2
  br label %if.end259.sink.split

if.end259.sink.split:                             ; preds = %if.then244, %if.then217, %if.then188
  %133 = ptrtoint ptr %data183 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %data183, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %134, align 1
  %137 = and i8 %136, 16
  %pf236 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 4
  %138 = ptrtoint ptr %pf236 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %pf236, align 1
  br label %if.end259

if.end259:                                        ; preds = %if.end259.sink.split, %if.else210.if.end259_crit_edge
  %139 = ptrtoint ptr %data183 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data183, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %140, align 1
  %control262 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 5
  %143 = ptrtoint ptr %control262 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %control262, align 2
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end259, %if.then159, %if.end123, %if.end87
  %.sink = phi i32 [ 1, %if.end259 ], [ 2, %if.end123 ], [ 1, %if.then159 ], [ 2, %if.end87 ]
  %call264 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %.sink) #3
  br label %return

return:                                           ; preds = %return.sink.split, %pskb_may_pull.exit368.return_crit_edge, %if.end.i362.return_crit_edge, %if.else113.return_crit_edge, %pskb_may_pull.exit356.return_crit_edge, %if.end.i350.return_crit_edge, %pskb_may_pull.exit.return_crit_edge, %if.end.i.return_crit_edge
  %retval.0 = phi i32 [ -1, %pskb_may_pull.exit.return_crit_edge ], [ -1, %pskb_may_pull.exit356.return_crit_edge ], [ -1, %pskb_may_pull.exit368.return_crit_edge ], [ 0, %if.else113.return_crit_edge ], [ -1, %if.end.i.return_crit_edge ], [ -1, %if.end.i350.return_crit_edge ], [ -1, %if.end.i362.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lapb_send_control(ptr noundef %lapb, i32 noundef %frametype, i32 noundef %poll_bit, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__alloc_skb(i32 noundef 23, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #3
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 21
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 21
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %mode = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else21, label %if.then1

if.then1:                                         ; preds = %if.end
  %and2 = and i32 %frametype, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and2)
  %cmp3 = icmp eq i32 %and2, 3
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #5
  %call5 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %poll_bit)
  %tobool6.not = icmp eq i32 %poll_bit, 0
  %cond = select i1 %tobool6.not, i32 0, i32 16
  %or = or i32 %cond, %frametype
  %conv8 = trunc i32 %or to i8
  %6 = ptrtoint ptr %call5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv8, ptr %call5, align 1
  br label %if.end40

if.else:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #5
  %call9 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #3
  %conv10 = trunc i32 %frametype to i8
  %7 = ptrtoint ptr %call9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv10, ptr %call9, align 1
  %vr = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 5
  %8 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vr, align 4
  %conv11 = trunc i16 %9 to i8
  %shl = shl i8 %conv11, 1
  %arrayidx13 = getelementptr i8, ptr %call9, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %poll_bit)
  %tobool14.not = icmp ne i32 %poll_bit, 0
  %cond15 = zext i1 %tobool14.not to i8
  %or18 = or i8 %shl, %cond15
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %or18, ptr %arrayidx13, align 1
  br label %if.end40

if.else21:                                        ; preds = %if.end
  %call22 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %poll_bit)
  %tobool24.not = icmp eq i32 %poll_bit, 0
  %cond25 = select i1 %tobool24.not, i32 0, i32 16
  %or27 = or i32 %cond25, %frametype
  %conv28 = trunc i32 %or27 to i8
  %11 = ptrtoint ptr %call22 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv28, ptr %call22, align 1
  %and29 = and i32 %frametype, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and29)
  %cmp30 = icmp eq i32 %and29, 1
  br i1 %cmp30, label %if.then32, label %if.else21.if.end40_crit_edge

if.else21.if.end40_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40

if.then32:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #5
  %vr33 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 5
  %12 = ptrtoint ptr %vr33 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vr33, align 4
  %conv34 = zext i16 %13 to i32
  %shl35 = shl nuw nsw i32 %conv34, 5
  %or37 = or i32 %shl35, %or27
  %conv38 = trunc i32 %or37 to i8
  %14 = ptrtoint ptr %call22 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv38, ptr %call22, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then32, %if.else21.if.end40_crit_edge, %if.else, %if.then4
  tail call void @lapb_transmit_buffer(ptr noundef %lapb, ptr noundef nonnull %call.i, i32 noundef %type) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_transmit_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lapb_transmit_frmr(ptr noundef %lapb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__alloc_skb(i32 noundef 27, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #3
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 21
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 21
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %mode = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %call2 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 6) #3
  %incdec.ptr = getelementptr i8, ptr %call2, i32 1
  %6 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -121, ptr %call2, align 1
  %control = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 20, i32 5
  %7 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %control, align 4
  %incdec.ptr3 = getelementptr i8, ptr %call2, i32 2
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %incdec.ptr, align 1
  %arrayidx6 = getelementptr %struct.lapb_cb, ptr %lapb, i32 0, i32 20, i32 5, i32 1
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx6, align 1
  %incdec.ptr7 = getelementptr i8, ptr %call2, i32 3
  %12 = ptrtoint ptr %incdec.ptr3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %incdec.ptr3, align 1
  %vs = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 4
  %13 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vs, align 2
  %conv = trunc i16 %14 to i8
  %shl = shl i8 %conv, 1
  %incdec.ptr10 = getelementptr i8, ptr %call2, i32 4
  %15 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %shl, ptr %incdec.ptr7, align 1
  %vr = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 5
  %16 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vr, align 4
  %conv11 = trunc i16 %17 to i8
  %shl12 = shl i8 %conv11, 1
  %18 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %shl12, ptr %incdec.ptr10, align 1
  %cr = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 20, i32 3
  %19 = ptrtoint ptr %cr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp17 = icmp eq i8 %20, 2
  br i1 %cmp17, label %if.then19, label %if.then1.if.end22_crit_edge

if.then1.if.end22_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

if.then19:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #5
  %21 = or i8 %shl12, 1
  %22 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %incdec.ptr10, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.then1.if.end22_crit_edge
  %incdec.ptr23 = getelementptr i8, ptr %call2, i32 5
  br label %if.end59

if.else:                                          ; preds = %if.end
  %call25 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #3
  %incdec.ptr26 = getelementptr i8, ptr %call25, i32 1
  %23 = ptrtoint ptr %call25 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -121, ptr %call25, align 1
  %control28 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 20, i32 5
  %24 = ptrtoint ptr %control28 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %control28, align 4
  %incdec.ptr30 = getelementptr i8, ptr %call25, i32 2
  %26 = ptrtoint ptr %incdec.ptr26 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %incdec.ptr26, align 1
  %vs31 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 4
  %27 = ptrtoint ptr %vs31 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vs31, align 2
  %conv32 = trunc i16 %28 to i8
  %shl33 = shl i8 %conv32, 1
  %and34 = and i8 %shl33, 14
  %29 = ptrtoint ptr %incdec.ptr30 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %and34, ptr %incdec.ptr30, align 1
  %vr36 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 5
  %30 = ptrtoint ptr %vr36 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vr36, align 4
  %conv37 = trunc i16 %31 to i8
  %shl38 = shl i8 %conv37, 5
  %or41 = or i8 %shl38, %and34
  store i8 %or41, ptr %incdec.ptr30, align 1
  %cr44 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 20, i32 3
  %32 = ptrtoint ptr %cr44 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cr44, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp46 = icmp eq i8 %33, 2
  br i1 %cmp46, label %if.then48, label %if.else.if.end52_crit_edge

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end52

if.then48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %34 = or i8 %or41, 16
  %35 = ptrtoint ptr %incdec.ptr30 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %incdec.ptr30, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.else.if.end52_crit_edge
  %incdec.ptr53 = getelementptr i8, ptr %call25, i32 3
  br label %if.end59

if.end59:                                         ; preds = %if.end52, %if.end22
  %incdec.ptr53.sink = phi ptr [ %incdec.ptr53, %if.end52 ], [ %incdec.ptr23, %if.end22 ]
  %frmr_type54 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 21
  %36 = ptrtoint ptr %frmr_type54 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %frmr_type54, align 2
  %38 = ptrtoint ptr %incdec.ptr53.sink to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %incdec.ptr53.sink, align 1
  tail call void @lapb_transmit_buffer(ptr noundef %lapb, ptr noundef nonnull %call.i, i32 noundef 2) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
