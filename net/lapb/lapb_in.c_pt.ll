; ModuleID = '/llk/IR_all_yes/net/lapb/lapb_in.c_pt.bc'
source_filename = "../net/lapb/lapb_in.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lapb_frame = type { i16, i16, i16, i8, i8, [2 x i8] }
%struct.lapb_cb = type { %struct.list_head, ptr, i32, i8, i16, i16, i16, i8, i16, i16, i16, i16, %struct.timer_list, %struct.timer_list, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head, i8, ptr, %struct.lapb_frame, i8, %struct.spinlock, %struct.refcount_struct }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }

@lapb_state3_machine.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lapb\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lapb_state3_machine\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/lapb/lapb_in.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx congestion\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lapb: rx congestion\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 16, i64 47, i64 67, i64 111]
@__sancov_gen_cov_switch_values.6 = internal global [7 x i64] [i64 5, i64 16, i64 15, i64 47, i64 67, i64 99, i64 111]
@__sancov_gen_cov_switch_values.7 = internal global [11 x i64] [i64 9, i64 16, i64 0, i64 1, i64 5, i64 9, i64 15, i64 47, i64 67, i64 99, i64 111]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 47, i64 111]
@__sancov_gen_cov_switch_values.9 = internal global [12 x i64] [i64 10, i64 16, i64 0, i64 1, i64 5, i64 9, i64 15, i64 47, i64 67, i64 111, i64 135, i64 256]
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [22 x i8] c"../net/lapb/lapb_in.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 412, i32 5 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lapb_data_input(ptr noundef %lapb, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %frame = alloca %struct.lapb_frame, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %frame) #3
  %0 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 4
  %1 = call ptr @memset(ptr %frame, i32 255, i32 10)
  %call = call i32 @lapb_decode(ptr noundef %lapb, ptr noundef %skb, ptr noundef nonnull %frame) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %if.end.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 2, label %sw.bb2
    i8 3, label %sw.bb3
    i8 4, label %sw.bb4
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %5 = ptrtoint ptr %frame to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %frame, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %6, label %sw.bb.lapb_state0_machine.exit_crit_edge [
    i16 47, label %do.end.i
    i16 111, label %do.end12.i
    i16 67, label %do.end39.i
  ]

sw.bb.lapb_state0_machine.exit_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %lapb_state0_machine.exit

do.end.i:                                         ; preds = %sw.bb
  %mode.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 2
  %8 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %0, align 1
  %conv9.i = zext i8 %11 to i32
  br i1 %tobool.not.i, label %do.end7.i, label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @lapb_send_control(ptr noundef %lapb, i32 noundef 15, i32 noundef %conv9.i, i32 noundef 2) #3
  br label %lapb_state0_machine.exit

do.end7.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @lapb_send_control(ptr noundef %lapb, i32 noundef 99, i32 noundef %conv9.i, i32 noundef 2) #3
  call void @lapb_stop_t1timer(ptr noundef %lapb) #3
  call void @lapb_stop_t2timer(ptr noundef %lapb) #3
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %state, align 4
  %n2count.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 9
  %13 = ptrtoint ptr %n2count.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %n2count.i, align 4
  %vs.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 4
  %14 = call ptr @memset(ptr %vs.i, i32 0, i32 7)
  call void @lapb_connect_indication(ptr noundef %lapb, i32 noundef 0) #3
  br label %lapb_state0_machine.exit

do.end12.i:                                       ; preds = %sw.bb
  %mode13.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 2
  %15 = ptrtoint ptr %mode13.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode13.i, align 4
  %and14.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %0, align 1
  %conv33.i = zext i8 %18 to i32
  br i1 %tobool15.not.i, label %do.end31.i, label %do.end20.i

do.end20.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @lapb_send_control(ptr noundef %lapb, i32 noundef 99, i32 noundef %conv33.i, i32 noundef 2) #3
  call void @lapb_stop_t1timer(ptr noundef %lapb) #3
  call void @lapb_stop_t2timer(ptr noundef %lapb) #3
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %state, align 4
  %n2count25.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 9
  %20 = ptrtoint ptr %n2count25.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %n2count25.i, align 4
  %vs26.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 4
  %21 = call ptr @memset(ptr %vs26.i, i32 0, i32 7)
  call void @lapb_connect_indication(ptr noundef %lapb, i32 noundef 0) #3
  br label %lapb_state0_machine.exit

do.end31.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @lapb_send_control(ptr noundef %lapb, i32 noundef 15, i32 noundef %conv33.i, i32 noundef 2) #3
  br label %lapb_state0_machine.exit

do.end39.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %0, align 1
  %conv41.i = zext i8 %23 to i32
  call void @lapb_send_control(ptr noundef %lapb, i32 noundef 99, i32 noundef %conv41.i, i32 noundef 2) #3
  br label %lapb_state0_machine.exit

lapb_state0_machine.exit:                         ; preds = %do.end39.i, %do.end31.i, %do.end20.i, %do.end7.i, %do.end2.i, %sw.bb.lapb_state0_machine.exit_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #3
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  %24 = ptrtoint ptr %frame to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %frame, align 2
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %25, label %sw.bb1.lapb_state1_machine.exit_crit_edge [
    i16 47, label %do.end.i21
    i16 111, label %do.end10.i
    i16 67, label %do.end29.i
    i16 99, label %do.end34.i
    i16 15, label %do.end43.i
  ]

sw.bb1.lapb_state1_machine.exit_crit_edge:        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  br label %lapb_state1_machine.exit

do.end.i21:                                       ; preds = %sw.bb1
  %mode.i18 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 2
  %27 = ptrtoint ptr %mode.i18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode.i18, align 4
  %and.i19 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19)
  %tobool.not.i20 = icmp eq i32 %and.i19, 0
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %0, align 1
  %conv7.i = zext i8 %30 to i32
  br i1 %tobool.not.i20, label %do.end5.i, label %do.end2.i22

do.end2.i22:                                      ; preds = %do.end.i21
  call void @__sanitizer_cov_trace_pc() #5
  call void @lapb_send_control(ptr noundef %lapb, i32 noundef 15, i32 noundef %conv7.i, i32 noundef 2) #3
  br label %lapb_state1_machine.exit

do.end5.i:                                        ; preds = %do.end.i21
  call void @__sanitizer_cov_trace_pc() #5
  call void @lapb_send_control(ptr noundef %lapb, i32 noundef 99, i32 noundef %conv7.i, i32 noundef 2) #3
  br label %lapb_state1_machine.exit

do.end10.i:                                       ; preds = %sw.bb1
  %mode11.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 2
  %31 = ptrtoint ptr %mode11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mode11.i, align 4
  %and12.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %0, align 1
  %conv23.i = zext i8 %34 to i32
  br i1 %tobool13.not.i, label %do.end21.i, label %do.end16.i

do.end16.i:                                       ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @lapb_send_control(ptr noundef %lapb, i32 noundef 99, i32 noundef %conv23.i, i32 noundef 2) #3
  br label %lapb_state1_machine.exit

do.end21.i:                                       ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @lapb_send_control(ptr noundef %lapb, i32 noundef 15, i32 noundef %conv23.i, i32 noundef 2) #3
  br label %lapb_state1_machine.exit

do.end29.i:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %0, align 1
  %conv31.i = zext i8 %36 to i32
  call void @lapb_send_control(ptr noundef %lapb, i32 noundef 15, i32 noundef %conv31.i, i32 noundef 2) #3
  br label %lapb_state1_machine.exit

do.end34.i:                                       ; preds = %sw.bb1
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool36.not.i = icmp eq i8 %38, 0
  br i1 %tobool36.not.i, label %do.end34.i.lapb_state1_machine.exit_crit_edge, label %do.end39.i26

do.end34.i.lapb_state1_machine.exit_crit_edge:    ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %lapb_state1_machine.exit

do.end39.i26:                                     ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @lapb_stop_t1timer(ptr noundef %lapb) #3
  call void @lapb_stop_t2timer(ptr noundef %lapb) #3
  %39 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 3, ptr %state, align 4
  %n2count.i24 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 9
  %40 = ptrtoint ptr %n2count.i24 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %n2count.i24, align 4
  %vs.i25 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 4
  %41 = call ptr @memset(ptr %vs.i25, i32 0, i32 7)
  call void @lapb_connect_confirmation(ptr noundef %lapb, i32 noundef 0) #3
  br label %lapb_state1_machine.exit

do.end43.i:                                       ; preds = %sw.bb1
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool45.not.i = icmp eq i8 %43, 0
  br i1 %tobool45.not.i, label %do.end43.i.lapb_state1_machine.exit_crit_edge, label %do.end48.i

do.end43.i.lapb_state1_machine.exit_crit_edge:    ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %lapb_state1_machine.exit

do.end48.i:                                       ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @lapb_clear_queues(ptr noundef %lapb) #3
  %44 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %state, align 4
  call void @lapb_start_t1timer(ptr noundef %lapb) #3
  call void @lapb_stop_t2timer(ptr noundef %lapb) #3
  call void @lapb_disconnect_indication(ptr noundef %lapb, i32 noundef 5) #3
  br label %lapb_state1_machine.exit

lapb_state1_machine.exit:                         ; preds = %do.end48.i, %do.end43.i.lapb_state1_machine.exit_crit_edge, %do.end39.i26, %do.end34.i.lapb_state1_machine.exit_crit_edge, %do.end29.i, %do.end21.i, %do.end16.i, %do.end5.i, %do.end2.i22, %sw.bb1.lapb_state1_machine.exit_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #3
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %45 = ptrtoint ptr %frame to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %frame, align 2
  %47 = zext i16 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %46, label %sw.bb2.lapb_state2_machine.exit_crit_edge [
    i16 47, label %sw.bb2.do.end2.i27_crit_edge
    i16 111, label %sw.bb2.do.end2.i27_crit_edge55
    i16 67, label %do.end8.i
    i16 99, label %do.end13.i
    i16 15, label %do.end19.i
    i16 0, label %sw.bb2.do.end31.i32_crit_edge
    i16 9, label %sw.bb2.do.end31.i32_crit_edge56
    i16 5, label %sw.bb2.do.end31.i32_crit_edge57
    i16 1, label %sw.bb2.do.end31.i32_crit_edge58
  ]

sw.bb2.do.end31.i32_crit_edge58:                  ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end31.i32

sw.bb2.do.end31.i32_crit_edge57:                  ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end31.i32

sw.bb2.do.end31.i32_crit_edge56:                  ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end31.i32

sw.bb2.do.end31.i32_crit_edge:                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end31.i32

sw.bb2.do.end2.i27_crit_edge55:                   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end2.i27

sw.bb2.do.end2.i27_crit_edge:                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end2.i27

sw.bb2.lapb_state2_machine.exit_crit_edge:        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %lapb_state2_machine.exit

do.end2.i27:                                      ; preds = %sw.bb2.do.end2.i27_crit_edge, %sw.bb2.do.end2.i27_crit_edge55
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %0, align 1
  %conv3.i = zext i8 %49 to i32
  call void @lapb_send_control(ptr noundef %lapb, i32 noundef 15, i32 noundef %conv3.i, i32 noundef 2) #3
  br label %lapb_state2_machine.exit

do.end8.i:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  %50 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %0, align 1
  %conv10.i = zext i8 %51 to i32
  call void @lapb_send_control(ptr noundef %lapb, i32 noundef 99, i32 noundef %conv10.i, i32 noundef 2) #3
  br label %lapb_state2_machine.exit

do.end13.i:                                       ; preds = %sw.bb2
  %52 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i28 = icmp eq i8 %53, 0
  br i1 %tobool.not.i28, label %do.end13.i.lapb_state2_machine.exit_crit_edge, label %do.end16.i30

do.end13.i.lapb_state2_machine.exit_crit_edge:    ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %lapb_state2_machine.exit

do.end16.i30:                                     ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #5
  %54 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %state, align 4
  call void @lapb_start_t1timer(ptr noundef %lapb) #3
  call void @lapb_stop_t2timer(ptr noundef %lapb) #3
  call void @lapb_disconnect_confirmation(ptr noundef %lapb, i32 noundef 0) #3
  br label %lapb_state2_machine.exit

do.end19.i:                                       ; preds = %sw.bb2
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool21.not.i = icmp eq i8 %56, 0
  br i1 %tobool21.not.i, label %do.end19.i.lapb_state2_machine.exit_crit_edge, label %do.end24.i

do.end19.i.lapb_state2_machine.exit_crit_edge:    ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %lapb_state2_machine.exit

do.end24.i:                                       ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #5
  %57 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %state, align 4
  call void @lapb_start_t1timer(ptr noundef %lapb) #3
  call void @lapb_stop_t2timer(ptr noundef %lapb) #3
  call void @lapb_disconnect_confirmation(ptr noundef %lapb, i32 noundef 4) #3
  br label %lapb_state2_machine.exit

do.end31.i32:                                     ; preds = %sw.bb2.do.end31.i32_crit_edge, %sw.bb2.do.end31.i32_crit_edge56, %sw.bb2.do.end31.i32_crit_edge57, %sw.bb2.do.end31.i32_crit_edge58
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool33.not.i = icmp eq i8 %59, 0
  br i1 %tobool33.not.i, label %do.end31.i32.lapb_state2_machine.exit_crit_edge, label %if.then34.i

do.end31.i32.lapb_state2_machine.exit_crit_edge:  ; preds = %do.end31.i32
  call void @__sanitizer_cov_trace_pc() #5
  br label %lapb_state2_machine.exit

if.then34.i:                                      ; preds = %do.end31.i32
  call void @__sanitizer_cov_trace_pc() #5
  %conv36.i = zext i8 %59 to i32
  call void @lapb_send_control(ptr noundef %lapb, i32 noundef 15, i32 noundef %conv36.i, i32 noundef 2) #3
  br label %lapb_state2_machine.exit

lapb_state2_machine.exit:                         ; preds = %if.then34.i, %do.end31.i32.lapb_state2_machine.exit_crit_edge, %do.end24.i, %do.end19.i.lapb_state2_machine.exit_crit_edge, %do.end16.i30, %do.end13.i.lapb_state2_machine.exit_crit_edge, %do.end8.i, %do.end2.i27, %sw.bb2.lapb_state2_machine.exit_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #3
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @lapb_state3_machine(ptr noundef %lapb, ptr noundef %skb, ptr noundef nonnull %frame)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %60 = ptrtoint ptr %frame to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %frame, align 2
  %62 = zext i16 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %61, label %sw.bb4.lapb_state4_machine.exit_crit_edge [
    i16 47, label %do.end.i38
    i16 111, label %do.end12.i49
  ]

sw.bb4.lapb_state4_machine.exit_crit_edge:        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  br label %lapb_state4_machine.exit

do.end.i38:                                       ; preds = %sw.bb4
  %mode.i33 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 2
  %63 = ptrtoint ptr %mode.i33 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mode.i33, align 4
  %and.i34 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool.not.i35 = icmp eq i32 %and.i34, 0
  %65 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %0, align 1
  %conv9.i37 = zext i8 %66 to i32
  br i1 %tobool.not.i35, label %do.end7.i43, label %do.end2.i39

do.end2.i39:                                      ; preds = %do.end.i38
  call void @__sanitizer_cov_trace_pc() #5
  call void @lapb_send_control(ptr noundef %lapb, i32 noundef 15, i32 noundef %conv9.i37, i32 noundef 2) #3
  br label %lapb_state4_machine.exit

do.end7.i43:                                      ; preds = %do.end.i38
  call void @__sanitizer_cov_trace_pc() #5
  call void @lapb_send_control(ptr noundef %lapb, i32 noundef 99, i32 noundef %conv9.i37, i32 noundef 2) #3
  call void @lapb_stop_t1timer(ptr noundef %lapb) #3
  call void @lapb_stop_t2timer(ptr noundef %lapb) #3
  %67 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 3, ptr %state, align 4
  %n2count.i41 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 9
  %68 = ptrtoint ptr %n2count.i41 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %n2count.i41, align 4
  %vs.i42 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 4
  %69 = call ptr @memset(ptr %vs.i42, i32 0, i32 7)
  call void @lapb_connect_indication(ptr noundef %lapb, i32 noundef 0) #3
  br label %lapb_state4_machine.exit

do.end12.i49:                                     ; preds = %sw.bb4
  %mode13.i44 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 2
  %70 = ptrtoint ptr %mode13.i44 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mode13.i44, align 4
  %and14.i45 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i45)
  %tobool15.not.i46 = icmp eq i32 %and14.i45, 0
  %72 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %0, align 1
  %conv33.i48 = zext i8 %73 to i32
  br i1 %tobool15.not.i46, label %do.end31.i54, label %do.end20.i53

do.end20.i53:                                     ; preds = %do.end12.i49
  call void @__sanitizer_cov_trace_pc() #5
  call void @lapb_send_control(ptr noundef %lapb, i32 noundef 99, i32 noundef %conv33.i48, i32 noundef 2) #3
  call void @lapb_stop_t1timer(ptr noundef %lapb) #3
  call void @lapb_stop_t2timer(ptr noundef %lapb) #3
  %74 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 3, ptr %state, align 4
  %n2count25.i51 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 9
  %75 = ptrtoint ptr %n2count25.i51 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %n2count25.i51, align 4
  %vs26.i52 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 4
  %76 = call ptr @memset(ptr %vs26.i52, i32 0, i32 7)
  call void @lapb_connect_indication(ptr noundef %lapb, i32 noundef 0) #3
  br label %lapb_state4_machine.exit

do.end31.i54:                                     ; preds = %do.end12.i49
  call void @__sanitizer_cov_trace_pc() #5
  call void @lapb_send_control(ptr noundef %lapb, i32 noundef 15, i32 noundef %conv33.i48, i32 noundef 2) #3
  br label %lapb_state4_machine.exit

lapb_state4_machine.exit:                         ; preds = %do.end31.i54, %do.end20.i53, %do.end7.i43, %do.end2.i39, %sw.bb4.lapb_state4_machine.exit_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %lapb_state4_machine.exit, %sw.bb3, %lapb_state2_machine.exit, %lapb_state1_machine.exit, %lapb_state0_machine.exit, %if.end.sw.epilog_crit_edge
  call void @lapb_kick(ptr noundef %lapb) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %frame) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lapb_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lapb_state3_machine(ptr noundef %lapb, ptr noundef %skb, ptr noundef readonly %frame) unnamed_addr #0 align 64 {
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
  %2 = ptrtoint ptr %frame to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %frame, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %3, label %entry.if.then241_crit_edge [
    i16 47, label %do.end
    i16 111, label %do.end16
    i16 67, label %do.end44
    i16 15, label %do.end53
    i16 5, label %do.end58
    i16 1, label %do.end78
    i16 9, label %do.end104
    i16 0, label %do.end131
    i16 135, label %do.end224
    i16 256, label %do.end232
  ]

entry.if.then241_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then241

do.end:                                           ; preds = %entry
  %pf11 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 4
  %5 = ptrtoint ptr %pf11 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pf11, align 1
  %conv12 = zext i8 %6 to i32
  br i1 %tobool.not, label %do.end10, label %do.end6

do.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @lapb_send_control(ptr noundef %lapb, i32 noundef 15, i32 noundef %conv12, i32 noundef 2) #3
  br label %if.then241

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @lapb_send_control(ptr noundef %lapb, i32 noundef 99, i32 noundef %conv12, i32 noundef 2) #3
  tail call void @lapb_stop_t1timer(ptr noundef %lapb) #3
  tail call void @lapb_stop_t2timer(ptr noundef %lapb) #3
  %n2count = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 9
  %7 = ptrtoint ptr %n2count to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %n2count, align 4
  %vs = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 4
  %8 = call ptr @memset(ptr %vs, i32 0, i32 7)
  tail call void @lapb_requeue_frames(ptr noundef %lapb) #3
  br label %if.then241

do.end16:                                         ; preds = %entry
  %pf35 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 4
  %9 = ptrtoint ptr %pf35 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pf35, align 1
  %conv36 = zext i8 %10 to i32
  br i1 %tobool.not, label %do.end34, label %do.end23

do.end23:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @lapb_send_control(ptr noundef %lapb, i32 noundef 99, i32 noundef %conv36, i32 noundef 2) #3
  tail call void @lapb_stop_t1timer(ptr noundef %lapb) #3
  tail call void @lapb_stop_t2timer(ptr noundef %lapb) #3
  %n2count27 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 9
  %11 = ptrtoint ptr %n2count27 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %n2count27, align 4
  %vs28 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 4
  %12 = call ptr @memset(ptr %vs28, i32 0, i32 7)
  tail call void @lapb_requeue_frames(ptr noundef %lapb) #3
  br label %if.then241

do.end34:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @lapb_send_control(ptr noundef %lapb, i32 noundef 15, i32 noundef %conv36, i32 noundef 2) #3
  br label %if.then241

do.end44:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @lapb_clear_queues(ptr noundef %lapb) #3
  %pf45 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 4
  %13 = ptrtoint ptr %pf45 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pf45, align 1
  %conv46 = zext i8 %14 to i32
  tail call void @lapb_send_control(ptr noundef %lapb, i32 noundef 99, i32 noundef %conv46, i32 noundef 2) #3
  tail call void @lapb_start_t1timer(ptr noundef %lapb) #3
  tail call void @lapb_stop_t2timer(ptr noundef %lapb) #3
  %state = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 3
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %state, align 4
  tail call void @lapb_disconnect_indication(ptr noundef %lapb, i32 noundef 0) #3
  br label %if.then241

do.end53:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @lapb_clear_queues(ptr noundef %lapb) #3
  %state54 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 3
  %16 = ptrtoint ptr %state54 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %state54, align 4
  tail call void @lapb_start_t1timer(ptr noundef %lapb) #3
  tail call void @lapb_stop_t2timer(ptr noundef %lapb) #3
  tail call void @lapb_disconnect_indication(ptr noundef %lapb, i32 noundef 4) #3
  br label %if.then241

do.end58:                                         ; preds = %entry
  %condition59 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 7
  %17 = ptrtoint ptr %condition59 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %condition59, align 4
  %19 = or i8 %18, 4
  store i8 %19, ptr %condition59, align 4
  %cr = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 3
  %20 = ptrtoint ptr %cr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cr, align 2
  %conv62 = zext i8 %21 to i32
  %pf63 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 4
  %22 = ptrtoint ptr %pf63 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pf63, align 1
  %conv64 = zext i8 %23 to i32
  tail call void @lapb_check_need_response(ptr noundef %lapb, i32 noundef %conv62, i32 noundef %conv64) #3
  %nr = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 1
  %24 = ptrtoint ptr %nr to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %nr, align 2
  %call = tail call i32 @lapb_validate_nr(ptr noundef %lapb, i16 noundef zeroext %25) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool65.not = icmp eq i32 %call, 0
  br i1 %tobool65.not, label %if.else68, label %if.then66

if.then66:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #5
  %26 = ptrtoint ptr %nr to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %nr, align 2
  tail call void @lapb_check_iframes_acked(ptr noundef %lapb, i16 noundef zeroext %27) #3
  br label %if.then241

if.else68:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #5
  %frmr_data = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 20
  %28 = call ptr @memcpy(ptr %frmr_data, ptr %frame, i32 10)
  %frmr_type = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 21
  %29 = ptrtoint ptr %frmr_type to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 8, ptr %frmr_type, align 2
  tail call void @lapb_transmit_frmr(ptr noundef %lapb) #3
  tail call void @lapb_start_t1timer(ptr noundef %lapb) #3
  tail call void @lapb_stop_t2timer(ptr noundef %lapb) #3
  %state72 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 3
  %30 = ptrtoint ptr %state72 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 4, ptr %state72, align 4
  %n2count73 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 9
  %31 = ptrtoint ptr %n2count73 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %n2count73, align 4
  br label %if.then241

do.end78:                                         ; preds = %entry
  %condition79 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 7
  %32 = ptrtoint ptr %condition79 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %condition79, align 4
  %34 = and i8 %33, -5
  store i8 %34, ptr %condition79, align 4
  %cr83 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 3
  %35 = ptrtoint ptr %cr83 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cr83, align 2
  %conv84 = zext i8 %36 to i32
  %pf85 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 4
  %37 = ptrtoint ptr %pf85 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pf85, align 1
  %conv86 = zext i8 %38 to i32
  tail call void @lapb_check_need_response(ptr noundef %lapb, i32 noundef %conv84, i32 noundef %conv86) #3
  %nr87 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 1
  %39 = ptrtoint ptr %nr87 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %nr87, align 2
  %call88 = tail call i32 @lapb_validate_nr(ptr noundef %lapb, i16 noundef zeroext %40) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.else92, label %if.then90

if.then90:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #5
  %41 = ptrtoint ptr %nr87 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %nr87, align 2
  tail call void @lapb_check_iframes_acked(ptr noundef %lapb, i16 noundef zeroext %42) #3
  br label %if.then241

if.else92:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #5
  %frmr_data93 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 20
  %43 = call ptr @memcpy(ptr %frmr_data93, ptr %frame, i32 10)
  %frmr_type94 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 21
  %44 = ptrtoint ptr %frmr_type94 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 8, ptr %frmr_type94, align 2
  tail call void @lapb_transmit_frmr(ptr noundef %lapb) #3
  tail call void @lapb_start_t1timer(ptr noundef %lapb) #3
  tail call void @lapb_stop_t2timer(ptr noundef %lapb) #3
  %state98 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 3
  %45 = ptrtoint ptr %state98 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 4, ptr %state98, align 4
  %n2count99 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 9
  %46 = ptrtoint ptr %n2count99 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %n2count99, align 4
  br label %if.then241

do.end104:                                        ; preds = %entry
  %condition105 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 7
  %47 = ptrtoint ptr %condition105 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %condition105, align 4
  %49 = and i8 %48, -5
  store i8 %49, ptr %condition105, align 4
  %cr109 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 3
  %50 = ptrtoint ptr %cr109 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %cr109, align 2
  %conv110 = zext i8 %51 to i32
  %pf111 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 4
  %52 = ptrtoint ptr %pf111 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pf111, align 1
  %conv112 = zext i8 %53 to i32
  tail call void @lapb_check_need_response(ptr noundef %lapb, i32 noundef %conv110, i32 noundef %conv112) #3
  %nr113 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 1
  %54 = ptrtoint ptr %nr113 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %nr113, align 2
  %call114 = tail call i32 @lapb_validate_nr(ptr noundef %lapb, i16 noundef zeroext %55) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.else119, label %if.then116

if.then116:                                       ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #5
  %56 = ptrtoint ptr %nr113 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %nr113, align 2
  tail call void @lapb_frames_acked(ptr noundef %lapb, i16 noundef zeroext %57) #3
  tail call void @lapb_stop_t1timer(ptr noundef %lapb) #3
  %n2count118 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 9
  %58 = ptrtoint ptr %n2count118 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %n2count118, align 4
  tail call void @lapb_requeue_frames(ptr noundef %lapb) #3
  br label %if.then241

if.else119:                                       ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #5
  %frmr_data120 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 20
  %59 = call ptr @memcpy(ptr %frmr_data120, ptr %frame, i32 10)
  %frmr_type121 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 21
  %60 = ptrtoint ptr %frmr_type121 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 8, ptr %frmr_type121, align 2
  tail call void @lapb_transmit_frmr(ptr noundef %lapb) #3
  tail call void @lapb_start_t1timer(ptr noundef %lapb) #3
  tail call void @lapb_stop_t2timer(ptr noundef %lapb) #3
  %state125 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 3
  %61 = ptrtoint ptr %state125 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 4, ptr %state125, align 4
  %n2count126 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 9
  %62 = ptrtoint ptr %n2count126 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %n2count126, align 4
  br label %if.then241

do.end131:                                        ; preds = %entry
  %nr132 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 1
  %63 = ptrtoint ptr %nr132 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %nr132, align 2
  %call133 = tail call i32 @lapb_validate_nr(ptr noundef %lapb, i16 noundef zeroext %64) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then135, label %if.end143

if.then135:                                       ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #5
  %frmr_data136 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 20
  %65 = call ptr @memcpy(ptr %frmr_data136, ptr %frame, i32 10)
  %frmr_type137 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 21
  %66 = ptrtoint ptr %frmr_type137 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 8, ptr %frmr_type137, align 2
  tail call void @lapb_transmit_frmr(ptr noundef %lapb) #3
  tail call void @lapb_start_t1timer(ptr noundef %lapb) #3
  tail call void @lapb_stop_t2timer(ptr noundef %lapb) #3
  %state141 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 3
  %67 = ptrtoint ptr %state141 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 4, ptr %state141, align 4
  %n2count142 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 9
  %68 = ptrtoint ptr %n2count142 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %n2count142, align 4
  br label %if.then241

if.end143:                                        ; preds = %do.end131
  %condition144 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 7
  %69 = ptrtoint ptr %condition144 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %condition144, align 4
  %71 = and i8 %70, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool147.not = icmp eq i8 %71, 0
  %72 = ptrtoint ptr %nr132 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %nr132, align 2
  br i1 %tobool147.not, label %if.else150, label %if.then148

if.then148:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @lapb_frames_acked(ptr noundef %lapb, i16 noundef zeroext %73) #3
  br label %if.end152

if.else150:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @lapb_check_iframes_acked(ptr noundef %lapb, i16 noundef zeroext %73) #3
  br label %if.end152

if.end152:                                        ; preds = %if.else150, %if.then148
  %ns = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 2
  %74 = ptrtoint ptr %ns to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %ns, align 2
  %vr154 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 5
  %76 = ptrtoint ptr %vr154 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %vr154, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %75, i16 %77)
  %cmp = icmp eq i16 %75, %77
  br i1 %cmp, label %if.then157, label %if.else195

if.then157:                                       ; preds = %if.end152
  %call158 = tail call i32 @lapb_data_indication(ptr noundef %lapb, ptr noundef %skb) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call158)
  %cmp159 = icmp eq i32 %call158, 1
  br i1 %cmp159, label %do.body162, label %if.end171

do.body162:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lapb_state3_machine.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lapb_state3_machine, %if.then167)) #3
          to label %if.end242 [label %if.then167], !srcloc !16

if.then167:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lapb_state3_machine.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.4) #3
  br label %if.end242

if.end171:                                        ; preds = %if.then157
  %78 = ptrtoint ptr %vr154 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %vr154, align 4
  %add = add i16 %79, 1
  %80 = select i1 %tobool.not, i16 7, i16 127
  %rem = and i16 %add, %80
  store i16 %rem, ptr %vr154, align 4
  %81 = ptrtoint ptr %condition144 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %condition144, align 4
  %83 = and i8 %82, -3
  store i8 %83, ptr %condition144, align 4
  %pf180 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 4
  %84 = ptrtoint ptr %pf180 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %pf180, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool181.not = icmp eq i8 %85, 0
  br i1 %tobool181.not, label %if.else183, label %if.then182

if.then182:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @lapb_enquiry_response(ptr noundef %lapb) #3
  br label %if.end242

if.else183:                                       ; preds = %if.end171
  %86 = and i8 %82, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool187.not = icmp eq i8 %86, 0
  br i1 %tobool187.not, label %if.then188, label %if.else183.if.end242_crit_edge

if.else183.if.end242_crit_edge:                   ; preds = %if.else183
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end242

if.then188:                                       ; preds = %if.else183
  call void @__sanitizer_cov_trace_pc() #5
  %or191 = or i8 %83, 1
  %87 = ptrtoint ptr %condition144 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %or191, ptr %condition144, align 4
  tail call void @lapb_start_t2timer(ptr noundef %lapb) #3
  br label %if.end242

if.else195:                                       ; preds = %if.end152
  %88 = ptrtoint ptr %condition144 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %condition144, align 4
  %90 = and i8 %89, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool199.not = icmp eq i8 %90, 0
  br i1 %tobool199.not, label %do.end208, label %if.then200

if.then200:                                       ; preds = %if.else195
  %pf201 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 4
  %91 = ptrtoint ptr %pf201 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %pf201, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool202.not = icmp eq i8 %92, 0
  br i1 %tobool202.not, label %if.then200.if.then241_crit_edge, label %if.then203

if.then200.if.then241_crit_edge:                  ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then241

if.then203:                                       ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @lapb_enquiry_response(ptr noundef %lapb) #3
  br label %if.then241

do.end208:                                        ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #5
  %or211 = or i8 %89, 2
  %93 = ptrtoint ptr %condition144 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %or211, ptr %condition144, align 4
  %pf213 = getelementptr inbounds %struct.lapb_frame, ptr %frame, i32 0, i32 4
  %94 = ptrtoint ptr %pf213 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %pf213, align 1
  %conv214 = zext i8 %95 to i32
  tail call void @lapb_send_control(ptr noundef %lapb, i32 noundef 9, i32 noundef %conv214, i32 noundef 2) #3
  %96 = ptrtoint ptr %condition144 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %condition144, align 4
  %98 = and i8 %97, -2
  store i8 %98, ptr %condition144, align 4
  br label %if.then241

do.end224:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @lapb_establish_data_link(ptr noundef %lapb) #3
  tail call void @lapb_requeue_frames(ptr noundef %lapb) #3
  %state228 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 3
  %99 = ptrtoint ptr %state228 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %state228, align 4
  br label %if.then241

do.end232:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %frmr_data233 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 20
  %100 = call ptr @memcpy(ptr %frmr_data233, ptr %frame, i32 10)
  %frmr_type234 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 21
  %101 = ptrtoint ptr %frmr_type234 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %frmr_type234, align 2
  tail call void @lapb_transmit_frmr(ptr noundef %lapb) #3
  tail call void @lapb_start_t1timer(ptr noundef %lapb) #3
  tail call void @lapb_stop_t2timer(ptr noundef %lapb) #3
  %state238 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 3
  %102 = ptrtoint ptr %state238 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 4, ptr %state238, align 4
  %n2count239 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 9
  %103 = ptrtoint ptr %n2count239 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 0, ptr %n2count239, align 4
  br label %if.then241

if.then241:                                       ; preds = %do.end232, %do.end224, %do.end208, %if.then203, %if.then200.if.then241_crit_edge, %if.then135, %if.else119, %if.then116, %if.else92, %if.then90, %if.else68, %if.then66, %do.end53, %do.end44, %do.end34, %do.end23, %do.end10, %do.end6, %entry.if.then241_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #3
  br label %if.end242

if.end242:                                        ; preds = %if.then241, %if.then188, %if.else183.if.end242_crit_edge, %if.then182, %if.then167, %do.body162
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_kick(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_send_control(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_stop_t1timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_stop_t2timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_connect_indication(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_connect_confirmation(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_clear_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_start_t1timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_disconnect_indication(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_disconnect_confirmation(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_requeue_frames(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_check_need_response(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lapb_validate_nr(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_check_iframes_acked(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_transmit_frmr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_frames_acked(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lapb_data_indication(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_enquiry_response(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_start_t2timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_establish_data_link(ptr noundef) local_unnamed_addr #2

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/lapb/lapb_in.c", i32 412, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @lapb_state3_machine.__UNIQUE_ID_ddebug507, !1, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{i64 2148741778, i64 2148741783, i64 2148741796, i64 2148741840, i64 2148741874, i64 2148741895}
