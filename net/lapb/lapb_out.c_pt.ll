; ModuleID = '/llk/IR_all_yes/net/lapb/lapb_out.c_pt.bc'
source_filename = "../net/lapb/lapb_out.c"
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

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lapb_kick(ptr noundef %lapb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 2
  %ack_queue = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 17
  %0 = ptrtoint ptr %ack_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ack_queue, align 4
  %cmp.i = icmp eq ptr %1, %ack_queue
  %tobool1.not87 = icmp eq ptr %1, null
  %tobool1.not = or i1 %cmp.i, %tobool1.not87
  %va = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 6
  %vs = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 4
  %cond4.in.in = select i1 %tobool1.not, ptr %va, ptr %vs
  %2 = ptrtoint ptr %cond4.in.in to i32
  call void @__asan_load2_noabort(i32 %2)
  %cond4.in84 = load i16, ptr %cond4.in.in, align 2
  %condition = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 7
  %3 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %condition, align 4
  %5 = and i8 %4, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool13.not = icmp eq i8 %5, 0
  br i1 %tobool13.not, label %land.lhs.true, label %entry.if.end55_crit_edge

entry.if.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end55

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %8 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %va, align 2
  %conv7 = zext i16 %9 to i32
  %window = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 18
  %10 = ptrtoint ptr %window to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %window, align 4
  %conv8 = zext i8 %11 to i32
  %add = add nuw nsw i32 %conv8, %conv7
  %12 = select i1 %tobool.not, i32 65543, i32 65663
  %rem = and i32 %add, %12
  %13 = trunc i32 %rem to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %cond4.in84, i16 %13)
  %cmp.not = icmp eq i16 %cond4.in84, %13
  br i1 %cmp.not, label %land.lhs.true.if.end55_crit_edge, label %land.lhs.true17

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end55

land.lhs.true17:                                  ; preds = %land.lhs.true
  %write_queue = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 16
  %14 = ptrtoint ptr %write_queue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_queue, align 4
  %cmp.i85 = icmp eq ptr %15, %write_queue
  %tobool19.not88 = icmp eq ptr %15, null
  %tobool19.not = or i1 %cmp.i85, %tobool19.not88
  br i1 %tobool19.not, label %land.lhs.true17.if.end55_crit_edge, label %if.then

land.lhs.true17.if.end55_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end55

if.then:                                          ; preds = %land.lhs.true17
  %16 = ptrtoint ptr %vs to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %cond4.in84, ptr %vs, align 2
  %call22 = tail call ptr @skb_dequeue(ptr noundef %write_queue) #2
  %vr.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.then
  %skb.0 = phi ptr [ %call22, %if.then ], [ %call44, %land.rhs.do.body_crit_edge ]
  %call23 = tail call ptr @skb_copy(ptr noundef %skb.0, i32 noundef 2592) #2
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.then25, label %if.end

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @skb_queue_head(ptr noundef %write_queue, ptr noundef %skb.0) #2
  br label %do.end

if.end:                                           ; preds = %do.body
  %17 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool27.not = icmp eq ptr %19, null
  br i1 %tobool27.not, label %if.end.if.end.i_crit_edge, label %if.then28

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.i

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @skb_set_owner_w(ptr noundef nonnull %call23, ptr noundef nonnull %19) #2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then28, %if.end.if.end.i_crit_edge
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode, align 4
  %and.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call23, i32 noundef 2) #2
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %call.i, align 1
  %23 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vs, align 2
  %conv.i = trunc i16 %24 to i8
  %shl.i = shl i8 %conv.i, 1
  store i8 %shl.i, ptr %call.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %call.i, i32 1
  %25 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx8.i, align 1
  %26 = ptrtoint ptr %vr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vr.i, align 4
  %conv9.i = trunc i16 %27 to i8
  %shl10.i = shl i8 %conv9.i, 1
  store i8 %shl10.i, ptr %arrayidx8.i, align 1
  br label %do.end.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %call15.i = tail call ptr @skb_push(ptr noundef nonnull %call23, i32 noundef 1) #2
  %28 = ptrtoint ptr %call15.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %call15.i, align 1
  %29 = ptrtoint ptr %vr.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vr.i, align 4
  %conv22.i = trunc i16 %30 to i8
  %shl23.i = shl i8 %conv22.i, 5
  store i8 %shl23.i, ptr %call15.i, align 1
  %31 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vs, align 2
  %conv28.i = trunc i16 %32 to i8
  %shl29.i = shl i8 %conv28.i, 1
  %or31.i = or i8 %shl29.i, %shl23.i
  store i8 %or31.i, ptr %call15.i, align 1
  br label %do.end.i

do.end.i:                                         ; preds = %if.else.i, %if.then2.i
  %call.i.i = tail call ptr @skb_push(ptr noundef nonnull %call23, i32 noundef 1) #2
  %33 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mode, align 4
  %and.i.i = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and18.i.i = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool19.not.i.i = icmp eq i32 %and18.i.i, 0
  %spec.select.i = select i1 %tobool19.not.i.i, i8 7, i8 15
  %spec.select1.i = select i1 %tobool19.not.i.i, i8 1, i8 3
  %.sink.i.i = select i1 %tobool.not.i.i, i8 %spec.select1.i, i8 %spec.select.i
  %35 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink.i.i, ptr %call.i.i, align 1
  %call36.i.i = tail call i32 @lapb_data_transmit(ptr noundef %lapb, ptr noundef nonnull %call23) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i)
  %tobool37.not.i.i = icmp eq i32 %call36.i.i, 0
  br i1 %tobool37.not.i.i, label %if.then38.i.i, label %do.end.i.lapb_send_iframe.exit_crit_edge

do.end.i.lapb_send_iframe.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %lapb_send_iframe.exit

if.then38.i.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @kfree_skb_reason(ptr noundef nonnull %call23, i32 noundef 0) #2
  br label %lapb_send_iframe.exit

lapb_send_iframe.exit:                            ; preds = %if.then38.i.i, %do.end.i.lapb_send_iframe.exit_crit_edge
  %36 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vs, align 2
  %conv31 = zext i16 %37 to i32
  %add32 = add nuw nsw i32 %conv31, 1
  %rem34 = and i32 %add32, %12
  %conv35 = trunc i32 %rem34 to i16
  store i16 %conv35, ptr %vs, align 2
  tail call void @skb_queue_tail(ptr noundef %ack_queue, ptr noundef %skb.0) #2
  %38 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vs, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %13)
  %cmp41.not = icmp eq i16 %39, %13
  br i1 %cmp41.not, label %lapb_send_iframe.exit.do.end_crit_edge, label %land.rhs

lapb_send_iframe.exit.do.end_crit_edge:           ; preds = %lapb_send_iframe.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

land.rhs:                                         ; preds = %lapb_send_iframe.exit
  %call44 = tail call ptr @skb_dequeue(ptr noundef %write_queue) #2
  %cmp45.not = icmp eq ptr %call44, null
  br i1 %cmp45.not, label %land.rhs.do.end_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %lapb_send_iframe.exit.do.end_crit_edge, %if.then25
  %40 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %condition, align 4
  %42 = and i8 %41, -2
  store i8 %42, ptr %condition, align 4
  %call51 = tail call i32 @lapb_t1timer_running(ptr noundef %lapb) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then53, label %do.end.if.end55_crit_edge

do.end.if.end55_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end55

if.then53:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @lapb_start_t1timer(ptr noundef %lapb) #2
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %do.end.if.end55_crit_edge, %land.lhs.true17.if.end55_crit_edge, %land.lhs.true.if.end55_crit_edge, %entry.if.end55_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lapb_t1timer_running(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_start_t1timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lapb_transmit_buffer(ptr noundef %lapb, ptr noundef %skb, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #2
  %mode = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and18 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool.not, label %if.else16, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool19.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.then4.do.end_crit_edge [
    i32 1, label %if.then4.do.end.sink.split_crit_edge
    i32 2, label %if.then7
  ]

if.then4.do.end.sink.split_crit_edge:             ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end.sink.split

if.then4.do.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end.sink.split

if.else:                                          ; preds = %if.then
  %3 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %type, label %if.else.do.end_crit_edge [
    i32 1, label %if.else.do.end.sink.split_crit_edge
    i32 2, label %if.then13
  ]

if.else.do.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end.sink.split

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end.sink.split

if.else16:                                        ; preds = %entry
  br i1 %tobool19.not, label %if.else27, label %if.then20

if.then20:                                        ; preds = %if.else16
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %type, label %if.then20.do.end_crit_edge [
    i32 1, label %if.then20.do.end.sink.split_crit_edge
    i32 2, label %if.then25
  ]

if.then20.do.end.sink.split_crit_edge:            ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end.sink.split

if.then20.do.end_crit_edge:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

if.then25:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end.sink.split

if.else27:                                        ; preds = %if.else16
  %5 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %type, label %if.else27.do.end_crit_edge [
    i32 1, label %if.else27.do.end.sink.split_crit_edge
    i32 2, label %if.then32
  ]

if.else27.do.end.sink.split_crit_edge:            ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end.sink.split

if.else27.do.end_crit_edge:                       ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end

if.then32:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end.sink.split

do.end.sink.split:                                ; preds = %if.then32, %if.else27.do.end.sink.split_crit_edge, %if.then25, %if.then20.do.end.sink.split_crit_edge, %if.then13, %if.else.do.end.sink.split_crit_edge, %if.then7, %if.then4.do.end.sink.split_crit_edge
  %.sink = phi i8 [ 15, %if.then13 ], [ 7, %if.then7 ], [ 3, %if.then32 ], [ 1, %if.then25 ], [ 15, %if.then4.do.end.sink.split_crit_edge ], [ 7, %if.else.do.end.sink.split_crit_edge ], [ 3, %if.then20.do.end.sink.split_crit_edge ], [ 1, %if.else27.do.end.sink.split_crit_edge ]
  %6 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink, ptr %call, align 1
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %if.else27.do.end_crit_edge, %if.then20.do.end_crit_edge, %if.else.do.end_crit_edge, %if.then4.do.end_crit_edge
  %call36 = tail call i32 @lapb_data_transmit(ptr noundef %lapb, ptr noundef %skb) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %do.end.if.end39_crit_edge

do.end.if.end39_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end39

if.then38:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #2
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %do.end.if.end39_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lapb_data_transmit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lapb_establish_data_link(ptr noundef %lapb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %condition = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 7
  %0 = ptrtoint ptr %condition to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %condition, align 4
  %n2count = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 9
  %1 = ptrtoint ptr %n2count to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %n2count, align 4
  %mode = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 47, i32 111
  tail call void @lapb_send_control(ptr noundef %lapb, i32 noundef %., i32 noundef 1, i32 noundef 1) #2
  tail call void @lapb_start_t1timer(ptr noundef %lapb) #2
  tail call void @lapb_stop_t2timer(ptr noundef %lapb) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_send_control(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_stop_t2timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lapb_enquiry_response(ptr noundef %lapb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lapb_send_control(ptr noundef %lapb, i32 noundef 1, i32 noundef 1, i32 noundef 2) #2
  %condition = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 7
  %0 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %condition, align 4
  %2 = and i8 %1, -2
  store i8 %2, ptr %condition, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lapb_timeout_response(ptr noundef %lapb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lapb_send_control(ptr noundef %lapb, i32 noundef 1, i32 noundef 0, i32 noundef 2) #2
  %condition = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 7
  %0 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %condition, align 4
  %2 = and i8 %1, -2
  store i8 %2, ptr %condition, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lapb_check_iframes_acked(ptr noundef %lapb, i16 noundef zeroext %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %vs = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 4
  %0 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vs, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %nr)
  %cmp = icmp eq i16 %1, %nr
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @lapb_frames_acked(ptr noundef %lapb, i16 noundef zeroext %nr) #2
  tail call void @lapb_stop_t1timer(ptr noundef %lapb) #2
  %n2count = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 9
  %2 = ptrtoint ptr %n2count to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %n2count, align 4
  br label %if.end8

if.else:                                          ; preds = %entry
  %va = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 6
  %3 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %va, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %nr)
  %cmp5.not = icmp eq i16 %4, %nr
  br i1 %cmp5.not, label %if.else.if.end8_crit_edge, label %if.then7

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @lapb_frames_acked(ptr noundef %lapb, i16 noundef zeroext %nr) #2
  tail call void @lapb_start_t1timer(ptr noundef %lapb) #2
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.else.if.end8_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_frames_acked(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_stop_t1timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lapb_check_need_response(ptr noundef %lapb, i32 noundef %type, i32 noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp ne i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pf)
  %tobool.not = icmp eq i32 %pf, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @lapb_send_control(ptr noundef %lapb, i32 noundef 1, i32 noundef 1, i32 noundef 2) #2
  %condition.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 7
  %0 = ptrtoint ptr %condition.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %condition.i, align 4
  %2 = and i8 %1, -2
  store i8 %2, ptr %condition.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

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
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

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
