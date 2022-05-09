; ModuleID = '/llk/IR_all_yes/net/rose/rose_timer.c_pt.bc'
source_filename = "../net/rose/rose_timer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { %struct.hlist_node }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.121 = type { ptr }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.rose_sock = type { %struct.sock, %struct.rose_address, %struct.rose_address, %struct.ax25_address, %struct.ax25_address, i8, i8, [6 x %struct.ax25_address], [6 x %struct.ax25_address], ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i32, i32, i32, %struct.sk_buff_head, %struct.rose_facilities_struct, %struct.timer_list, %struct.timer_list }
%struct.rose_address = type { [5 x i8] }
%struct.ax25_address = type { [7 x i8] }
%struct.rose_facilities_struct = type { %struct.rose_address, %struct.rose_address, %struct.ax25_address, %struct.ax25_address, i8, i8, [6 x %struct.ax25_address], [6 x %struct.ax25_address], i32, %struct.rose_address, %struct.ax25_address }
%struct.rose_neigh = type { ptr, %struct.ax25_address, ptr, ptr, ptr, i16, i16, i32, i8, i8, i8, %struct.sk_buff_head, %struct.timer_list, %struct.timer_list }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_start_heartbeat(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_timer = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 32
  %call = tail call i32 @del_timer(ptr noundef %sk_timer) #2
  %function = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 32, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @rose_heartbeat_expiry, ptr %function, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %1, 500
  %expires = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 32, i32 1
  %2 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %sk_timer) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rose_heartbeat_expiry(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -532
  %sk_lock = getelementptr i8, ptr %t, i32 -408
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #2
  %state = getelementptr i8, ptr %t, i32 556
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 3, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %3 = getelementptr i8, ptr %t, i32 -452
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %sw.bb.if.then_crit_edge

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

lor.lhs.false:                                    ; preds = %sw.bb
  %skc_state = getelementptr i8, ptr %t, i32 -514
  %7 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %8)
  %cmp = icmp eq i8 %8, 10
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

land.lhs.true:                                    ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %3, align 4
  %11 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i44.not = icmp eq i32 %11, 0
  br i1 %tobool.i44.not, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %sw.bb.if.then_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #2
  tail call void @rose_destroy_socket(ptr noundef %add.ptr) #2
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %sk_backlog = getelementptr i8, ptr %t, i32 -160
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog, i32 noundef 4) #2
  %12 = ptrtoint ptr %sk_backlog to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %sk_backlog, align 4
  %sk_rcvbuf = getelementptr i8, ptr %t, i32 -124
  %14 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sk_rcvbuf, align 8
  %div = sdiv i32 %15, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %div)
  %cmp10 = icmp slt i32 %13, %div
  br i1 %cmp10, label %land.lhs.true12, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

land.lhs.true12:                                  ; preds = %sw.bb8
  %condition = getelementptr i8, ptr %t, i32 557
  %16 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %condition, align 1
  %18 = and i8 %17, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %land.lhs.true12.sw.epilog_crit_edge, label %if.then14

land.lhs.true12.sw.epilog_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #4
  %19 = and i8 %17, -6
  %20 = ptrtoint ptr %condition to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %condition, align 1
  %vr = getelementptr i8, ptr %t, i32 564
  %21 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vr, align 8
  %vl = getelementptr i8, ptr %t, i32 568
  %23 = ptrtoint ptr %vl to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %vl, align 4
  tail call void @rose_write_internal(ptr noundef %add.ptr, i32 noundef 1) #2
  %timer.i = getelementptr i8, ptr %t, i32 776
  %call.i = tail call i32 @del_timer(ptr noundef %timer.i) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then14, %land.lhs.true12.sw.epilog_crit_edge, %sw.bb8.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %call.i45 = tail call i32 @del_timer(ptr noundef %t) #2
  %function.i = getelementptr i8, ptr %t, i32 12
  %24 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @rose_heartbeat_expiry, ptr %function.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %25, 500
  %expires.i = getelementptr i8, ptr %t, i32 8
  %26 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %t) #2
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #2
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_start_t1timer(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 30
  %call = tail call i32 @del_timer(ptr noundef %timer) #2
  %function = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 30, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @rose_timer_expiry, ptr %function, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %t1 = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 23
  %2 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t1, align 8
  %add = add i32 %3, %1
  %expires = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 30, i32 1
  %4 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rose_timer_expiry(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1308
  %sk_lock = getelementptr i8, ptr %t, i32 -1184
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #2
  %state = getelementptr i8, ptr %t, i32 -220
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 1, label %entry.sw.bb_crit_edge
    i8 4, label %entry.sw.bb_crit_edge21
    i8 2, label %sw.bb2
    i8 3, label %sw.bb3
  ]

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge21
  tail call void @rose_write_internal(ptr noundef %add.ptr, i32 noundef 19) #2
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %state, align 8
  %call.i = tail call i32 @del_timer(ptr noundef %t) #2
  %function.i = getelementptr i8, ptr %t, i32 12
  %4 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @rose_timer_expiry, ptr %function.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %t3.i = getelementptr i8, ptr %t, i32 -196
  %6 = ptrtoint ptr %t3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t3.i, align 8
  %add.i = add i32 %7, %5
  %expires.i = getelementptr i8, ptr %t, i32 8
  %8 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %t) #2
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %neighbour = getelementptr i8, ptr %t, i32 -236
  %9 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %neighbour, align 8
  %use = getelementptr inbounds %struct.rose_neigh, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %use to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %use, align 2
  %dec = add i16 %12, -1
  store i16 %dec, ptr %use, align 2
  tail call void @rose_disconnect(ptr noundef %add.ptr, i32 noundef 110, i32 noundef -1, i32 noundef -1) #2
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %condition = getelementptr i8, ptr %t, i32 -219
  %13 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %condition, align 1
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %sw.bb3.sw.epilog_crit_edge, label %if.then

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #4
  %and7 = and i8 %14, -2
  %16 = ptrtoint ptr %condition to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %and7, ptr %condition, align 1
  tail call void @rose_enquiry_response(ptr noundef %add.ptr) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb3.sw.epilog_crit_edge, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_start_t2timer(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 30
  %call = tail call i32 @del_timer(ptr noundef %timer) #2
  %function = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 30, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @rose_timer_expiry, ptr %function, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %t2 = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 24
  %2 = ptrtoint ptr %t2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t2, align 4
  %add = add i32 %3, %1
  %expires = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 30, i32 1
  %4 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_start_t3timer(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 30
  %call = tail call i32 @del_timer(ptr noundef %timer) #2
  %function = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 30, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @rose_timer_expiry, ptr %function, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %t3 = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 25
  %2 = ptrtoint ptr %t3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t3, align 8
  %add = add i32 %3, %1
  %expires = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 30, i32 1
  %4 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_start_hbtimer(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 30
  %call = tail call i32 @del_timer(ptr noundef %timer) #2
  %function = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 30, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @rose_timer_expiry, ptr %function, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %hb = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 26
  %2 = ptrtoint ptr %hb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hb, align 4
  %add = add i32 %3, %1
  %expires = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 30, i32 1
  %4 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_start_idletimer(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %idletimer = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 31
  %call = tail call i32 @del_timer(ptr noundef %idletimer) #2
  %idle = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 27
  %0 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idle, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %function = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 31, i32 2
  %2 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @rose_idletimer_expiry, ptr %function, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %3, %1
  %expires = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 31, i32 1
  %4 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %idletimer) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rose_idletimer_expiry(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1356
  %sk_lock = getelementptr i8, ptr %t, i32 -1232
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #2
  tail call void @rose_clear_queues(ptr noundef %add.ptr) #2
  tail call void @rose_write_internal(ptr noundef %add.ptr, i32 noundef 19) #2
  %state = getelementptr i8, ptr %t, i32 -268
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %state, align 8
  %timer.i = getelementptr i8, ptr %t, i32 -48
  %call.i = tail call i32 @del_timer(ptr noundef %timer.i) #2
  %function.i = getelementptr i8, ptr %t, i32 -36
  %1 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @rose_timer_expiry, ptr %function.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %t3.i = getelementptr i8, ptr %t, i32 -244
  %3 = ptrtoint ptr %t3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %t3.i, align 8
  %add.i = add i32 %4, %2
  %expires.i = getelementptr i8, ptr %t, i32 -40
  %5 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %timer.i) #2
  %skc_state = getelementptr i8, ptr %t, i32 -1338
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %6)
  store volatile i8 7, ptr %skc_state, align 2
  %sk_err = getelementptr i8, ptr %t, i32 -664
  %7 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %sk_err, align 4
  %sk_shutdown = getelementptr i8, ptr %t, i32 -490
  %8 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sk_shutdown, align 2
  %10 = or i8 %9, 2
  store i8 %10, ptr %sk_shutdown, align 2
  %11 = getelementptr i8, ptr %t, i32 -1276
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %14 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not = icmp eq i32 %14, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %sk_state_change = getelementptr i8, ptr %t, i32 -448
  %15 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sk_state_change, align 4
  tail call void %16(ptr noundef %add.ptr) #2
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %11, align 4
  %or.i.i = or i32 %18, 1
  store i32 %or.i.i, ptr %11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_stop_heartbeat(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_timer = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 32
  %call = tail call i32 @del_timer(ptr noundef %sk_timer) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_stop_timer(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 30
  %call = tail call i32 @del_timer(ptr noundef %timer) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rose_stop_idletimer(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %idletimer = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 31
  %call = tail call i32 @del_timer(ptr noundef %idletimer) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_destroy_socket(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_write_internal(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_disconnect(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_enquiry_response(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_clear_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
