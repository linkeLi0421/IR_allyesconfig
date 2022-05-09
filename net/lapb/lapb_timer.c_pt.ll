; ModuleID = '/llk/IR_all_yes/net/lapb/lapb_timer.c_pt.bc'
source_filename = "../net/lapb/lapb_timer.c"
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

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lapb_start_t1timer(ptr noundef %lapb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %t1timer = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 12
  %call = tail call i32 @del_timer(ptr noundef %t1timer) #3
  %function = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 12, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @lapb_t1timer_expiry, ptr %function, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %t1 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 10
  %2 = ptrtoint ptr %t1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %t1, align 2
  %conv = zext i16 %3 to i32
  %add = add i32 %1, %conv
  %expires = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %expires, align 4
  %t1timer_running = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 14
  %5 = ptrtoint ptr %t1timer_running to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %t1timer_running, align 4
  tail call void @add_timer(ptr noundef %t1timer) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lapb_t1timer_expiry(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -36
  %lock = getelementptr i8, ptr %t, i32 232
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #3
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end:                                           ; preds = %entry
  %t1timer_running = getelementptr i8, ptr %t, i32 96
  %2 = ptrtoint ptr %t1timer_running to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %t1timer_running, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end3:                                          ; preds = %if.end
  %state = getelementptr i8, ptr %t, i32 -20
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %if.end3.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb12
    i8 2, label %sw.bb38
    i8 3, label %sw.bb58
    i8 4, label %sw.bb75
  ]

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end3
  %mode = getelementptr i8, ptr %t, i32 -24
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 4
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %sw.bb.if.else_crit_edge, label %land.lhs.true

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %n2count = getelementptr i8, ptr %t, i32 -8
  %9 = ptrtoint ptr %n2count to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %n2count, align 4
  %n2 = getelementptr i8, ptr %t, i32 -10
  %11 = ptrtoint ptr %n2 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %n2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %12)
  %cmp.not = icmp eq i16 %10, %12
  br i1 %cmp.not, label %land.lhs.true.if.else_crit_edge, label %if.then8

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %inc = add i16 %10, 1
  %13 = ptrtoint ptr %n2count to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %inc, ptr %n2count, align 4
  tail call void @lapb_send_control(ptr noundef %add.ptr, i32 noundef 15, i32 noundef 0, i32 noundef 2) #3
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %state, align 4
  tail call void @lapb_establish_data_link(ptr noundef %add.ptr) #3
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end3
  %n2count13 = getelementptr i8, ptr %t, i32 -8
  %15 = ptrtoint ptr %n2count13 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %n2count13, align 4
  %n215 = getelementptr i8, ptr %t, i32 -10
  %17 = ptrtoint ptr %n215 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %n215, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp17 = icmp eq i16 %16, %18
  br i1 %cmp17, label %if.then19, label %if.else22

if.then19:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @lapb_clear_queues(ptr noundef %add.ptr) #3
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %state, align 4
  tail call void @lapb_disconnect_indication(ptr noundef %add.ptr, i32 noundef 6) #3
  %20 = ptrtoint ptr %t1timer_running to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %t1timer_running, align 4
  br label %out

if.else22:                                        ; preds = %sw.bb12
  %inc24 = add i16 %16, 1
  %21 = ptrtoint ptr %n2count13 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %inc24, ptr %n2count13, align 4
  %mode25 = getelementptr i8, ptr %t, i32 -24
  %22 = ptrtoint ptr %mode25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode25, align 4
  %and26 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.end35, label %do.end31

do.end31:                                         ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @lapb_send_control(ptr noundef %add.ptr, i32 noundef 111, i32 noundef 1, i32 noundef 1) #3
  br label %sw.epilog

do.end35:                                         ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @lapb_send_control(ptr noundef %add.ptr, i32 noundef 47, i32 noundef 1, i32 noundef 1) #3
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end3
  %n2count39 = getelementptr i8, ptr %t, i32 -8
  %24 = ptrtoint ptr %n2count39 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %n2count39, align 4
  %n241 = getelementptr i8, ptr %t, i32 -10
  %26 = ptrtoint ptr %n241 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %n241, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp43 = icmp eq i16 %25, %27
  br i1 %cmp43, label %if.then45, label %if.else51

if.then45:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @lapb_clear_queues(ptr noundef %add.ptr) #3
  %28 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %state, align 4
  tail call void @lapb_disconnect_confirmation(ptr noundef %add.ptr, i32 noundef 6) #3
  %29 = ptrtoint ptr %t1timer_running to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %t1timer_running, align 4
  br label %out

if.else51:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #5
  %inc53 = add i16 %25, 1
  %30 = ptrtoint ptr %n2count39 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %inc53, ptr %n2count39, align 4
  tail call void @lapb_send_control(ptr noundef %add.ptr, i32 noundef 67, i32 noundef 1, i32 noundef 1) #3
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end3
  %n2count59 = getelementptr i8, ptr %t, i32 -8
  %31 = ptrtoint ptr %n2count59 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %n2count59, align 4
  %n261 = getelementptr i8, ptr %t, i32 -10
  %33 = ptrtoint ptr %n261 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %n261, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %34)
  %cmp63 = icmp eq i16 %32, %34
  br i1 %cmp63, label %if.then65, label %if.else71

if.then65:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @lapb_clear_queues(ptr noundef %add.ptr) #3
  %35 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %state, align 4
  %t2timer_running.i = getelementptr i8, ptr %t, i32 97
  %36 = ptrtoint ptr %t2timer_running.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %t2timer_running.i, align 1
  %t2timer.i = getelementptr i8, ptr %t, i32 48
  %call.i = tail call i32 @del_timer(ptr noundef %t2timer.i) #3
  tail call void @lapb_disconnect_indication(ptr noundef %add.ptr, i32 noundef 6) #3
  %37 = ptrtoint ptr %t1timer_running to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %t1timer_running, align 4
  br label %out

if.else71:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #5
  %inc73 = add i16 %32, 1
  %38 = ptrtoint ptr %n2count59 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %inc73, ptr %n2count59, align 4
  tail call void @lapb_requeue_frames(ptr noundef %add.ptr) #3
  tail call void @lapb_kick(ptr noundef %add.ptr) #3
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.end3
  %n2count76 = getelementptr i8, ptr %t, i32 -8
  %39 = ptrtoint ptr %n2count76 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %n2count76, align 4
  %n278 = getelementptr i8, ptr %t, i32 -10
  %41 = ptrtoint ptr %n278 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %n278, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %40, i16 %42)
  %cmp80 = icmp eq i16 %40, %42
  br i1 %cmp80, label %if.then82, label %if.else88

if.then82:                                        ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @lapb_clear_queues(ptr noundef %add.ptr) #3
  %43 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %state, align 4
  tail call void @lapb_disconnect_indication(ptr noundef %add.ptr, i32 noundef 6) #3
  %44 = ptrtoint ptr %t1timer_running to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %t1timer_running, align 4
  br label %out

if.else88:                                        ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #5
  %inc90 = add i16 %40, 1
  %45 = ptrtoint ptr %n2count76 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %inc90, ptr %n2count76, align 4
  tail call void @lapb_transmit_frmr(ptr noundef %add.ptr) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else88, %if.else71, %if.else51, %do.end35, %do.end31, %if.else, %if.then8, %if.end3.sw.epilog_crit_edge
  %call.i141 = tail call i32 @del_timer(ptr noundef %t) #3
  %function.i = getelementptr i8, ptr %t, i32 12
  %46 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @lapb_t1timer_expiry, ptr %function.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %t1.i = getelementptr i8, ptr %t, i32 -6
  %48 = ptrtoint ptr %t1.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %t1.i, align 2
  %conv.i = zext i16 %49 to i32
  %add.i = add i32 %47, %conv.i
  %expires.i = getelementptr i8, ptr %t, i32 8
  %50 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add.i, ptr %expires.i, align 4
  %51 = ptrtoint ptr %t1timer_running to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %t1timer_running, align 4
  tail call void @add_timer(ptr noundef %t) #3
  br label %out

out:                                              ; preds = %sw.epilog, %if.then82, %if.then65, %if.then45, %if.then19, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lapb_start_t2timer(ptr noundef %lapb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %t2timer = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 13
  %call = tail call i32 @del_timer(ptr noundef %t2timer) #3
  %function = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 13, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @lapb_t2timer_expiry, ptr %function, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %t2 = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 11
  %2 = ptrtoint ptr %t2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %t2, align 4
  %conv = zext i16 %3 to i32
  %add = add i32 %1, %conv
  %expires = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %expires, align 4
  %t2timer_running = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 15
  %5 = ptrtoint ptr %t2timer_running to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %t2timer_running, align 1
  tail call void @add_timer(ptr noundef %t2timer) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lapb_t2timer_expiry(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -84
  %lock = getelementptr i8, ptr %t, i32 184
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #3
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end:                                           ; preds = %entry
  %t2timer_running = getelementptr i8, ptr %t, i32 49
  %2 = ptrtoint ptr %t2timer_running to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %t2timer_running, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end3:                                          ; preds = %if.end
  %condition = getelementptr i8, ptr %t, i32 -60
  %4 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %condition, align 4
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %if.end3.if.end10_crit_edge, label %if.then5

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  %and8 = and i8 %5, -2
  %7 = ptrtoint ptr %condition to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %and8, ptr %condition, align 4
  tail call void @lapb_timeout_response(ptr noundef %add.ptr) #3
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end3.if.end10_crit_edge
  %8 = ptrtoint ptr %t2timer_running to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %t2timer_running, align 1
  br label %out

out:                                              ; preds = %if.end10, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lapb_stop_t1timer(ptr noundef %lapb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %t1timer_running = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 14
  %0 = ptrtoint ptr %t1timer_running to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %t1timer_running, align 4
  %t1timer = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 12
  %call = tail call i32 @del_timer(ptr noundef %t1timer) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lapb_stop_t2timer(ptr noundef %lapb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %t2timer_running = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 15
  %0 = ptrtoint ptr %t2timer_running to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %t2timer_running, align 1
  %t2timer = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 13
  %call = tail call i32 @del_timer(ptr noundef %t2timer) #3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @lapb_t1timer_running(ptr nocapture noundef readonly %lapb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %t1timer_running = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 14
  %0 = ptrtoint ptr %t1timer_running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %t1timer_running, align 4, !range !9
  %2 = zext i8 %1 to i32
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_timeout_response(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_send_control(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_establish_data_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_clear_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_disconnect_indication(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_disconnect_confirmation(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_requeue_frames(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_kick(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_transmit_frmr(ptr noundef) local_unnamed_addr #1

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

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i8 0, i8 2}
