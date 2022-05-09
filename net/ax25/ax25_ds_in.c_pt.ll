; ModuleID = '/llk/IR_all_yes/net/ax25/ax25_ds_in.c_pt.bc'
source_filename = "../net/ax25/ax25_ds_in.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ax25_cb = type { %struct.hlist_node, %struct.ax25_address, %struct.ax25_address, ptr, ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, i32, i16, i16, i16, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, i8, %struct.timer_list, %struct.timer_list, ptr, %struct.refcount_struct }
%struct.hlist_node = type { ptr, ptr }
%struct.ax25_address = type { [7 x i8] }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ax25_dev = type { ptr, ptr, ptr, ptr, ptr, [14 x i32], %struct.ax25_dama_info, %struct.refcount_struct }
%struct.ax25_dama_info = type { i8, %struct.timer_list, i16 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.104, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.105, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.106, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.104 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }

@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [7 x i64] [i64 5, i64 32, i64 15, i64 47, i64 67, i64 99, i64 111]
@__sancov_gen_cov_switch_values.2 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 5, i64 9, i64 15, i64 47, i64 67, i64 99, i64 111]
@__sancov_gen_cov_switch_values.3 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 5, i64 9, i64 15, i64 47, i64 67, i64 111, i64 135, i64 256]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ax25_ds_frame_in(ptr noundef %ax25, ptr noundef %skb, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %ns = alloca i32, align 4
  %nr = alloca i32, align 4
  %pf = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ns) #3
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ns, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr) #3
  %1 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %nr, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pf) #3
  %2 = ptrtoint ptr %pf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pf, align 4, !annotation !9
  %call = call i32 @ax25_decode(ptr noundef %ax25, ptr noundef %skb, ptr noundef nonnull %ns, ptr noundef nonnull %nr, ptr noundef nonnull %pf) #3
  %state = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 6
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %state, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb2
    i8 3, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %6 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pf, align 4
  %8 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %call, label %sw.default.i [
    i32 47, label %sw.bb.i
    i32 111, label %sw.bb1.i
    i32 67, label %sw.bb8.i
    i32 99, label %sw.bb9.i
    i32 15, label %sw.bb21.i
  ]

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %modulus.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  %9 = ptrtoint ptr %modulus.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 8, ptr %modulus.i, align 2
  %ax25_dev.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %10 = ptrtoint ptr %ax25_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ax25_dev.i, align 4
  %arrayidx.i = getelementptr %struct.ax25_dev, ptr %11, i32 0, i32 5, i32 4
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %conv.i = trunc i32 %13 to i8
  %window.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 32
  %14 = ptrtoint ptr %window.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %window.i, align 4
  call void @ax25_send_control(ptr noundef %ax25, i32 noundef 99, i32 noundef %7, i32 noundef 2) #3
  br label %sw.epilog

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %modulus2.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  %15 = ptrtoint ptr %modulus2.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -128, ptr %modulus2.i, align 2
  %ax25_dev3.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %16 = ptrtoint ptr %ax25_dev3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ax25_dev3.i, align 4
  %arrayidx5.i = getelementptr %struct.ax25_dev, ptr %17, i32 0, i32 5, i32 5
  %18 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx5.i, align 4
  %conv6.i = trunc i32 %19 to i8
  %window7.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 32
  %20 = ptrtoint ptr %window7.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv6.i, ptr %window7.i, align 4
  call void @ax25_send_control(ptr noundef %ax25, i32 noundef 99, i32 noundef %7, i32 noundef 2) #3
  br label %sw.epilog

sw.bb8.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_send_control(ptr noundef %ax25, i32 noundef 15, i32 noundef %7, i32 noundef 2) #3
  br label %sw.epilog

sw.bb9.i:                                         ; preds = %sw.bb
  call void @ax25_calculate_rtt(ptr noundef %ax25) #3
  call void @ax25_stop_t1timer(ptr noundef %ax25) #3
  call void @ax25_start_t3timer(ptr noundef %ax25) #3
  call void @ax25_start_idletimer(ptr noundef %ax25) #3
  %vs.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 9
  %21 = ptrtoint ptr %vs.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %vs.i, align 4
  %va.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 11
  %22 = ptrtoint ptr %va.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %va.i, align 4
  %vr.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 10
  %23 = ptrtoint ptr %vr.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %vr.i, align 2
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %state, align 1
  %n2count.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 15
  %25 = ptrtoint ptr %n2count.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %n2count.i, align 1
  %sk.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 35
  %26 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sk.i, align 4
  %cmp.not.i = icmp eq ptr %27, null
  br i1 %cmp.not.i, label %sw.bb9.i.if.end20.i_crit_edge, label %if.then.i

sw.bb9.i.if.end20.i_crit_edge:                    ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20.i

if.then.i:                                        ; preds = %sw.bb9.i
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %27, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %sk_lock.i) #3
  %28 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk.i, align 4
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store volatile i8 1, ptr %skc_state.i, align 2
  %31 = load ptr, ptr %sk.i, align 4
  %32 = getelementptr inbounds %struct.sock_common, ptr %31, i32 0, i32 13
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %and1.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then14.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then14.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %31, i32 0, i32 76
  %35 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sk_state_change.i, align 4
  call void %36(ptr noundef %31) #3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then14.i, %if.then.i.if.end.i_crit_edge
  %37 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sk.i, align 4
  %sk_lock18.i = getelementptr inbounds %struct.sock, ptr %38, i32 0, i32 4
  call void @_raw_spin_unlock(ptr noundef %sk_lock18.i) #3
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end.i, %sw.bb9.i.if.end20.i_crit_edge
  call void @ax25_dama_on(ptr noundef %ax25) #3
  call void @ax25_std_enquiry_response(ptr noundef %ax25) #3
  br label %sw.epilog

sw.bb21.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %sw.bb21.i.sw.epilog_crit_edge, label %if.then22.i

sw.bb21.i.sw.epilog_crit_edge:                    ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then22.i:                                      ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_disconnect(ptr noundef %ax25, i32 noundef 111) #3
  br label %sw.epilog

sw.default.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool24.not.i = icmp eq i32 %7, 0
  br i1 %tobool24.not.i, label %sw.default.i.sw.epilog_crit_edge, label %if.then25.i

sw.default.i.sw.epilog_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then25.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_send_control(ptr noundef %ax25, i32 noundef 47, i32 noundef 1, i32 noundef 1) #3
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %39 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pf, align 4
  %41 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %call, label %sw.bb2.sw.epilog_crit_edge [
    i32 47, label %sw.bb2.sw.bb.i17_crit_edge
    i32 111, label %sw.bb2.sw.bb.i17_crit_edge33
    i32 67, label %sw.bb1.i18
    i32 15, label %sw.bb2.sw.bb2.i_crit_edge
    i32 99, label %sw.bb2.sw.bb2.i_crit_edge34
    i32 0, label %sw.bb2.sw.bb3.i_crit_edge
    i32 9, label %sw.bb2.sw.bb3.i_crit_edge35
    i32 5, label %sw.bb2.sw.bb3.i_crit_edge36
    i32 1, label %sw.bb2.sw.bb3.i_crit_edge37
  ]

sw.bb2.sw.bb3.i_crit_edge37:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3.i

sw.bb2.sw.bb3.i_crit_edge36:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3.i

sw.bb2.sw.bb3.i_crit_edge35:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3.i

sw.bb2.sw.bb3.i_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3.i

sw.bb2.sw.bb2.i_crit_edge34:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb2.i

sw.bb2.sw.bb2.i_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb2.i

sw.bb2.sw.bb.i17_crit_edge33:                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i17

sw.bb2.sw.bb.i17_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i17

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb.i17:                                        ; preds = %sw.bb2.sw.bb.i17_crit_edge, %sw.bb2.sw.bb.i17_crit_edge33
  call void @ax25_send_control(ptr noundef %ax25, i32 noundef 67, i32 noundef 1, i32 noundef 1) #3
  call void @ax25_dama_off(ptr noundef %ax25) #3
  br label %sw.epilog

sw.bb1.i18:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_send_control(ptr noundef %ax25, i32 noundef 99, i32 noundef %40, i32 noundef 2) #3
  call void @ax25_dama_off(ptr noundef %ax25) #3
  call void @ax25_disconnect(ptr noundef %ax25, i32 noundef 0) #3
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %sw.bb2.sw.bb2.i_crit_edge, %sw.bb2.sw.bb2.i_crit_edge34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i19 = icmp eq i32 %40, 0
  br i1 %tobool.not.i19, label %sw.bb2.i.sw.epilog_crit_edge, label %if.then.i20

sw.bb2.i.sw.epilog_crit_edge:                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then.i20:                                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_dama_off(ptr noundef %ax25) #3
  call void @ax25_disconnect(ptr noundef %ax25, i32 noundef 0) #3
  br label %sw.epilog

sw.bb3.i:                                         ; preds = %sw.bb2.sw.bb3.i_crit_edge, %sw.bb2.sw.bb3.i_crit_edge35, %sw.bb2.sw.bb3.i_crit_edge36, %sw.bb2.sw.bb3.i_crit_edge37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool4.not.i = icmp eq i32 %40, 0
  br i1 %tobool4.not.i, label %sw.bb3.i.sw.epilog_crit_edge, label %if.then5.i

sw.bb3.i.sw.epilog_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then5.i:                                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_send_control(ptr noundef %ax25, i32 noundef 67, i32 noundef 1, i32 noundef 1) #3
  call void @ax25_dama_off(ptr noundef %ax25) #3
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %42 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ns, align 4
  %44 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr, align 4
  %46 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pf, align 4
  %48 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %call, label %sw.bb4.sw.epilog_crit_edge [
    i32 256, label %sw.bb4.sw.bb150.i_crit_edge
    i32 135, label %sw.bb4.sw.bb150.i_crit_edge38
    i32 67, label %sw.bb7.i
    i32 15, label %sw.bb8.i27
    i32 111, label %if.else.i
    i32 47, label %if.then.i24
    i32 9, label %sw.bb35.i
    i32 0, label %sw.bb61.i
    i32 1, label %if.then12.i
    i32 5, label %if.else16.i
  ]

sw.bb4.sw.bb150.i_crit_edge38:                    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb150.i

sw.bb4.sw.bb150.i_crit_edge:                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb150.i

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then.i24:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  %modulus.i21 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  %49 = ptrtoint ptr %modulus.i21 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 8, ptr %modulus.i21, align 2
  %ax25_dev.i22 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %50 = ptrtoint ptr %ax25_dev.i22 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ax25_dev.i22, align 4
  %arrayidx.i23 = getelementptr %struct.ax25_dev, ptr %51, i32 0, i32 5, i32 4
  br label %if.end.i26

if.else.i:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  %modulus1.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  %52 = ptrtoint ptr %modulus1.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -128, ptr %modulus1.i, align 2
  %ax25_dev2.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %53 = ptrtoint ptr %ax25_dev2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ax25_dev2.i, align 4
  %arrayidx4.i = getelementptr %struct.ax25_dev, ptr %54, i32 0, i32 5, i32 5
  br label %if.end.i26

if.end.i26:                                       ; preds = %if.else.i, %if.then.i24
  %arrayidx4.sink.i = phi ptr [ %arrayidx4.i, %if.else.i ], [ %arrayidx.i23, %if.then.i24 ]
  %55 = ptrtoint ptr %arrayidx4.sink.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx4.sink.i, align 4
  %conv5.i = trunc i32 %56 to i8
  %window6.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 32
  %57 = ptrtoint ptr %window6.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv5.i, ptr %window6.i, align 4
  call void @ax25_send_control(ptr noundef %ax25, i32 noundef 99, i32 noundef %47, i32 noundef 2) #3
  call void @ax25_stop_t1timer(ptr noundef %ax25) #3
  call void @ax25_start_t3timer(ptr noundef %ax25) #3
  call void @ax25_start_idletimer(ptr noundef %ax25) #3
  %vs.i25 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 9
  %58 = call ptr @memset(ptr %vs.i25, i32 0, i32 7)
  call void @ax25_requeue_frames(ptr noundef %ax25) #3
  call void @ax25_dama_on(ptr noundef %ax25) #3
  br label %sw.epilog

sw.bb7.i:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_send_control(ptr noundef %ax25, i32 noundef 99, i32 noundef %47, i32 noundef 2) #3
  call void @ax25_dama_off(ptr noundef %ax25) #3
  call void @ax25_disconnect(ptr noundef %ax25, i32 noundef 0) #3
  br label %sw.epilog

sw.bb8.i27:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_dama_off(ptr noundef %ax25) #3
  call void @ax25_disconnect(ptr noundef %ax25, i32 noundef 104) #3
  br label %sw.epilog

if.then12.i:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  %condition13.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %59 = ptrtoint ptr %condition13.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %condition13.i, align 2
  %61 = and i8 %60, -5
  store i8 %61, ptr %condition13.i, align 2
  br label %if.end20.i29

if.else16.i:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  %condition17.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %62 = ptrtoint ptr %condition17.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %condition17.i, align 2
  %64 = or i8 %63, 4
  store i8 %64, ptr %condition17.i, align 2
  br label %if.end20.i29

if.end20.i29:                                     ; preds = %if.else16.i, %if.then12.i
  %conv21.i = trunc i32 %45 to i16
  %call.i = call i32 @ax25_validate_nr(ptr noundef %ax25, i16 noundef zeroext %conv21.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i28 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i28, label %if.else33.i, label %if.then22.i30

if.then22.i30:                                    ; preds = %if.end20.i29
  %call24.i = call i32 @ax25_check_iframes_acked(ptr noundef %ax25, i16 noundef zeroext %conv21.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.then22.i30.if.end27.i_crit_edge, label %if.then26.i

if.then22.i30.if.end27.i_crit_edge:               ; preds = %if.then22.i30
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27.i

if.then26.i:                                      ; preds = %if.then22.i30
  call void @__sanitizer_cov_trace_pc() #5
  %n2count.i31 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 15
  %65 = ptrtoint ptr %n2count.i31 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %n2count.i31, align 1
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %if.then22.i30.if.end27.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp28.i = icmp ne i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool30.not.i = icmp eq i32 %47, 0
  %or.cond.i = or i1 %cmp28.i, %tobool30.not.i
  br i1 %or.cond.i, label %if.end27.i.sw.epilog_crit_edge, label %if.then31.i

if.end27.i.sw.epilog_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then31.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_ds_enquiry_response(ptr noundef %ax25) #3
  br label %sw.epilog

if.else33.i:                                      ; preds = %if.end20.i29
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_ds_nr_error_recovery(ptr noundef %ax25) #3
  %66 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %state, align 1
  br label %sw.epilog

sw.bb35.i:                                        ; preds = %sw.bb4
  %condition36.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %67 = ptrtoint ptr %condition36.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %condition36.i, align 2
  %69 = and i8 %68, -5
  store i8 %69, ptr %condition36.i, align 2
  %conv40.i = trunc i32 %45 to i16
  %call41.i = call i32 @ax25_validate_nr(ptr noundef %ax25, i16 noundef zeroext %conv40.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.else58.i, label %if.then43.i

if.then43.i:                                      ; preds = %sw.bb35.i
  %va44.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 11
  %70 = ptrtoint ptr %va44.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %va44.i, align 4
  %conv45.i = zext i16 %71 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv45.i)
  %cmp46.not.i = icmp eq i32 %45, %conv45.i
  br i1 %cmp46.not.i, label %if.then43.i.if.end50.i_crit_edge, label %if.then48.i

if.then43.i.if.end50.i_crit_edge:                 ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end50.i

if.then48.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #5
  %n2count49.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 15
  %72 = ptrtoint ptr %n2count49.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %n2count49.i, align 1
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then48.i, %if.then43.i.if.end50.i_crit_edge
  call void @ax25_frames_acked(ptr noundef %ax25, i16 noundef zeroext %conv40.i) #3
  call void @ax25_calculate_rtt(ptr noundef %ax25) #3
  call void @ax25_stop_t1timer(ptr noundef %ax25) #3
  call void @ax25_start_t3timer(ptr noundef %ax25) #3
  call void @ax25_requeue_frames(ptr noundef %ax25) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp52.i = icmp ne i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool55.not.i = icmp eq i32 %47, 0
  %or.cond238.i = or i1 %cmp52.i, %tobool55.not.i
  br i1 %or.cond238.i, label %if.end50.i.sw.epilog_crit_edge, label %if.then56.i

if.end50.i.sw.epilog_crit_edge:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then56.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_ds_enquiry_response(ptr noundef %ax25) #3
  br label %sw.epilog

if.else58.i:                                      ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_ds_nr_error_recovery(ptr noundef %ax25) #3
  %73 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %state, align 1
  br label %sw.epilog

sw.bb61.i:                                        ; preds = %sw.bb4
  %conv62.i = trunc i32 %45 to i16
  %call63.i = call i32 @ax25_validate_nr(ptr noundef %ax25, i16 noundef zeroext %conv62.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %if.then65.i, label %if.end67.i

if.then65.i:                                      ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_ds_nr_error_recovery(ptr noundef %ax25) #3
  %74 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %state, align 1
  br label %sw.epilog

if.end67.i:                                       ; preds = %sw.bb61.i
  %condition68.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %75 = ptrtoint ptr %condition68.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %condition68.i, align 2
  %77 = and i8 %76, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool71.not.i = icmp eq i8 %77, 0
  br i1 %tobool71.not.i, label %if.else75.i, label %if.then72.i

if.then72.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_frames_acked(ptr noundef %ax25, i16 noundef zeroext %conv62.i) #3
  br label %if.end82.sink.split.i

if.else75.i:                                      ; preds = %if.end67.i
  %call77.i = call i32 @ax25_check_iframes_acked(ptr noundef %ax25, i16 noundef zeroext %conv62.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %if.else75.i.if.end82.i_crit_edge, label %if.else75.i.if.end82.sink.split.i_crit_edge

if.else75.i.if.end82.sink.split.i_crit_edge:      ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end82.sink.split.i

if.else75.i.if.end82.i_crit_edge:                 ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end82.i

if.end82.sink.split.i:                            ; preds = %if.else75.i.if.end82.sink.split.i_crit_edge, %if.then72.i
  %n2count80.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 15
  %78 = ptrtoint ptr %n2count80.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %n2count80.i, align 1
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.end82.sink.split.i, %if.else75.i.if.end82.i_crit_edge
  %79 = ptrtoint ptr %condition68.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %condition68.i, align 2
  %conv84.i = zext i8 %80 to i32
  %and85.i = and i32 %conv84.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i)
  %tobool86.not.i = icmp eq i32 %and85.i, 0
  br i1 %tobool86.not.i, label %if.end91.i, label %if.then87.i

if.then87.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool88.not.i = icmp eq i32 %47, 0
  br i1 %tobool88.not.i, label %if.then87.i.sw.epilog_crit_edge, label %if.then89.i

if.then87.i.sw.epilog_crit_edge:                  ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then89.i:                                      ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_ds_enquiry_response(ptr noundef %ax25) #3
  br label %sw.epilog

if.end91.i:                                       ; preds = %if.end82.i
  %vr92.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 10
  %81 = ptrtoint ptr %vr92.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %vr92.i, align 2
  %conv93.i = zext i16 %82 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %conv93.i)
  %cmp94.i = icmp eq i32 %43, %conv93.i
  br i1 %cmp94.i, label %if.then96.i, label %if.else130.i

if.then96.i:                                      ; preds = %if.end91.i
  %add.i = add nuw nsw i32 %43, 1
  %modulus99.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  %83 = ptrtoint ptr %modulus99.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %modulus99.i, align 2
  %conv100.i = zext i8 %84 to i32
  %rem.i = urem i32 %add.i, %conv100.i
  %conv101.i = trunc i32 %rem.i to i16
  %85 = ptrtoint ptr %vr92.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv101.i, ptr %vr92.i, align 2
  %call103.i = call i32 @ax25_rx_iframe(ptr noundef %ax25, ptr noundef %skb) #3
  %86 = ptrtoint ptr %condition68.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %condition68.i, align 2
  %88 = and i8 %87, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool107.not.i = icmp eq i8 %88, 0
  br i1 %tobool107.not.i, label %if.then96.i.if.end111.i_crit_edge, label %if.then108.i

if.then96.i.if.end111.i_crit_edge:                ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end111.i

if.then108.i:                                     ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv109.i = trunc i32 %43 to i16
  %89 = ptrtoint ptr %vr92.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv109.i, ptr %vr92.i, align 2
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then108.i, %if.then96.i.if.end111.i_crit_edge
  %90 = and i8 %87, -3
  %91 = ptrtoint ptr %condition68.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %condition68.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool116.not.i = icmp eq i32 %47, 0
  br i1 %tobool116.not.i, label %if.else118.i, label %if.then117.i

if.then117.i:                                     ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_ds_enquiry_response(ptr noundef %ax25) #3
  br label %sw.epilog

if.else118.i:                                     ; preds = %if.end111.i
  %92 = and i8 %87, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool122.not.i = icmp eq i8 %92, 0
  br i1 %tobool122.not.i, label %if.then123.i, label %if.else118.i.sw.epilog_crit_edge

if.else118.i.sw.epilog_crit_edge:                 ; preds = %if.else118.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then123.i:                                     ; preds = %if.else118.i
  call void @__sanitizer_cov_trace_pc() #5
  %or126.i = or i8 %90, 1
  %93 = ptrtoint ptr %condition68.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %or126.i, ptr %condition68.i, align 2
  call void @ax25_start_t2timer(ptr noundef %ax25) #3
  br label %sw.epilog

if.else130.i:                                     ; preds = %if.end91.i
  %and133.i = and i32 %conv84.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133.i)
  %tobool134.not.i = icmp eq i32 %and133.i, 0
  br i1 %tobool134.not.i, label %if.else139.i, label %if.then135.i

if.then135.i:                                     ; preds = %if.else130.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool136.not.i = icmp eq i32 %47, 0
  br i1 %tobool136.not.i, label %if.then135.i.sw.epilog_crit_edge, label %if.then137.i

if.then135.i.sw.epilog_crit_edge:                 ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then137.i:                                     ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_ds_enquiry_response(ptr noundef %ax25) #3
  br label %sw.epilog

if.else139.i:                                     ; preds = %if.else130.i
  call void @__sanitizer_cov_trace_pc() #5
  %or142.i = or i8 %80, 2
  %94 = ptrtoint ptr %condition68.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %or142.i, ptr %condition68.i, align 2
  call void @ax25_ds_enquiry_response(ptr noundef %ax25) #3
  %95 = ptrtoint ptr %condition68.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %condition68.i, align 2
  %97 = and i8 %96, -2
  store i8 %97, ptr %condition68.i, align 2
  br label %sw.epilog

sw.bb150.i:                                       ; preds = %sw.bb4.sw.bb150.i_crit_edge, %sw.bb4.sw.bb150.i_crit_edge38
  call void @ax25_ds_establish_data_link(ptr noundef %ax25) #3
  %98 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %state, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb150.i, %if.else139.i, %if.then137.i, %if.then135.i.sw.epilog_crit_edge, %if.then123.i, %if.else118.i.sw.epilog_crit_edge, %if.then117.i, %if.then89.i, %if.then87.i.sw.epilog_crit_edge, %if.then65.i, %if.else58.i, %if.then56.i, %if.end50.i.sw.epilog_crit_edge, %if.else33.i, %if.then31.i, %if.end27.i.sw.epilog_crit_edge, %sw.bb8.i27, %sw.bb7.i, %if.end.i26, %sw.bb4.sw.epilog_crit_edge, %if.then5.i, %sw.bb3.i.sw.epilog_crit_edge, %if.then.i20, %sw.bb2.i.sw.epilog_crit_edge, %sw.bb1.i18, %sw.bb.i17, %sw.bb2.sw.epilog_crit_edge, %if.then25.i, %sw.default.i.sw.epilog_crit_edge, %if.then22.i, %sw.bb21.i.sw.epilog_crit_edge, %if.end20.i, %sw.bb8.i, %sw.bb1.i, %sw.bb.i, %entry.sw.epilog_crit_edge
  %queued.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb.i ], [ 0, %sw.bb1.i ], [ 0, %sw.bb8.i ], [ 0, %if.end20.i ], [ 0, %sw.bb21.i.sw.epilog_crit_edge ], [ 0, %if.then22.i ], [ 0, %sw.default.i.sw.epilog_crit_edge ], [ 0, %if.then25.i ], [ 0, %sw.bb2.sw.epilog_crit_edge ], [ 0, %sw.bb.i17 ], [ 0, %sw.bb1.i18 ], [ 0, %sw.bb2.i.sw.epilog_crit_edge ], [ 0, %if.then.i20 ], [ 0, %sw.bb3.i.sw.epilog_crit_edge ], [ 0, %if.then5.i ], [ 0, %sw.bb4.sw.epilog_crit_edge ], [ 0, %sw.bb150.i ], [ 0, %if.then89.i ], [ 0, %if.then87.i.sw.epilog_crit_edge ], [ %call103.i, %if.then117.i ], [ %call103.i, %if.else118.i.sw.epilog_crit_edge ], [ %call103.i, %if.then123.i ], [ 0, %if.then137.i ], [ 0, %if.then135.i.sw.epilog_crit_edge ], [ 0, %if.else139.i ], [ 0, %if.then65.i ], [ 0, %if.then56.i ], [ 0, %if.end50.i.sw.epilog_crit_edge ], [ 0, %if.else58.i ], [ 0, %if.then31.i ], [ 0, %if.end27.i.sw.epilog_crit_edge ], [ 0, %if.else33.i ], [ 0, %sw.bb8.i27 ], [ 0, %sw.bb7.i ], [ 0, %if.end.i26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pf) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ns) #3
  ret i32 %queued.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_send_control(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_calculate_rtt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_stop_t1timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_start_t3timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_start_idletimer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_dama_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_std_enquiry_response(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_disconnect(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_dama_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_requeue_frames(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_validate_nr(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_check_iframes_acked(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_ds_enquiry_response(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_ds_nr_error_recovery(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_frames_acked(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_rx_iframe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_start_t2timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_ds_establish_data_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{!"auto-init"}
