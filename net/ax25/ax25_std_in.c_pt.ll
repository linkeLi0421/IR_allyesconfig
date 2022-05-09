; ModuleID = '/llk/IR_all_yes/net/ax25/ax25_std_in.c_pt.bc'
source_filename = "../net/ax25/ax25_std_in.c"
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

@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.1 = internal global [7 x i64] [i64 5, i64 32, i64 15, i64 47, i64 67, i64 99, i64 111]
@__sancov_gen_cov_switch_values.2 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 5, i64 9, i64 15, i64 47, i64 67, i64 99, i64 111]
@__sancov_gen_cov_switch_values.3 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 5, i64 9, i64 15, i64 47, i64 67, i64 111, i64 135, i64 256]
@__sancov_gen_cov_switch_values.4 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 5, i64 9, i64 15, i64 47, i64 67, i64 111, i64 135, i64 256]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ax25_std_frame_in(ptr noundef %ax25, ptr noundef %skb, i32 noundef %type) local_unnamed_addr #0 align 64 {
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
    i8 4, label %sw.bb6
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
  switch i32 %call, label %sw.bb.sw.epilog_crit_edge [
    i32 47, label %sw.bb.i
    i32 111, label %sw.bb1.i
    i32 67, label %sw.bb8.i
    i32 99, label %sw.bb9.i
    i32 15, label %sw.bb23.i
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %sw.bb9.i.sw.epilog_crit_edge, label %if.then.i

sw.bb9.i.sw.epilog_crit_edge:                     ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb9.i
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
  br i1 %cmp.not.i, label %if.then.i.sw.epilog_crit_edge, label %if.then11.i

if.then.i.sw.epilog_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then11.i:                                      ; preds = %if.then.i
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
  br i1 %tobool.i.not.i, label %if.then15.i, label %if.then11.i.if.end.i_crit_edge

if.then11.i.if.end.i_crit_edge:                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then15.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #5
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %31, i32 0, i32 76
  %35 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sk_state_change.i, align 4
  call void %36(ptr noundef %31) #3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then15.i, %if.then11.i.if.end.i_crit_edge
  %37 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sk.i, align 4
  %sk_lock19.i = getelementptr inbounds %struct.sock, ptr %38, i32 0, i32 4
  call void @_raw_spin_unlock(ptr noundef %sk_lock19.i) #3
  br label %sw.epilog

sw.bb23.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool24.not.i = icmp eq i32 %7, 0
  br i1 %tobool24.not.i, label %sw.bb23.i.sw.epilog_crit_edge, label %if.then25.i

sw.bb23.i.sw.epilog_crit_edge:                    ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then25.i:                                      ; preds = %sw.bb23.i
  %modulus26.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  %39 = ptrtoint ptr %modulus26.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %modulus26.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %40)
  %cmp28.i = icmp eq i8 %40, 8
  br i1 %cmp28.i, label %if.then30.i, label %if.else.i

if.then30.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_disconnect(ptr noundef %ax25, i32 noundef 111) #3
  br label %sw.epilog

if.else.i:                                        ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #5
  %41 = ptrtoint ptr %modulus26.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 8, ptr %modulus26.i, align 2
  %ax25_dev32.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %42 = ptrtoint ptr %ax25_dev32.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ax25_dev32.i, align 4
  %arrayidx34.i = getelementptr %struct.ax25_dev, ptr %43, i32 0, i32 5, i32 4
  %44 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx34.i, align 4
  %conv35.i = trunc i32 %45 to i8
  %window36.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 32
  %46 = ptrtoint ptr %window36.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv35.i, ptr %window36.i, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %47 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pf, align 4
  %49 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %call, label %sw.bb2.sw.epilog_crit_edge [
    i32 47, label %sw.bb2.sw.bb.i24_crit_edge
    i32 111, label %sw.bb2.sw.bb.i24_crit_edge74
    i32 67, label %sw.bb1.i25
    i32 15, label %sw.bb2.sw.bb2.i_crit_edge
    i32 99, label %sw.bb2.sw.bb2.i_crit_edge75
    i32 0, label %sw.bb2.sw.bb3.i_crit_edge
    i32 9, label %sw.bb2.sw.bb3.i_crit_edge76
    i32 5, label %sw.bb2.sw.bb3.i_crit_edge77
    i32 1, label %sw.bb2.sw.bb3.i_crit_edge78
  ]

sw.bb2.sw.bb3.i_crit_edge78:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3.i

sw.bb2.sw.bb3.i_crit_edge77:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3.i

sw.bb2.sw.bb3.i_crit_edge76:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3.i

sw.bb2.sw.bb3.i_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3.i

sw.bb2.sw.bb2.i_crit_edge75:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb2.i

sw.bb2.sw.bb2.i_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb2.i

sw.bb2.sw.bb.i24_crit_edge74:                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i24

sw.bb2.sw.bb.i24_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i24

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb.i24:                                        ; preds = %sw.bb2.sw.bb.i24_crit_edge, %sw.bb2.sw.bb.i24_crit_edge74
  call void @ax25_send_control(ptr noundef %ax25, i32 noundef 15, i32 noundef %48, i32 noundef 2) #3
  br label %sw.epilog

sw.bb1.i25:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_send_control(ptr noundef %ax25, i32 noundef 99, i32 noundef %48, i32 noundef 2) #3
  call void @ax25_disconnect(ptr noundef %ax25, i32 noundef 0) #3
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %sw.bb2.sw.bb2.i_crit_edge, %sw.bb2.sw.bb2.i_crit_edge75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i26 = icmp eq i32 %48, 0
  br i1 %tobool.not.i26, label %sw.bb2.i.sw.epilog_crit_edge, label %if.then.i27

sw.bb2.i.sw.epilog_crit_edge:                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then.i27:                                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_disconnect(ptr noundef %ax25, i32 noundef 0) #3
  br label %sw.epilog

sw.bb3.i:                                         ; preds = %sw.bb2.sw.bb3.i_crit_edge, %sw.bb2.sw.bb3.i_crit_edge76, %sw.bb2.sw.bb3.i_crit_edge77, %sw.bb2.sw.bb3.i_crit_edge78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool4.not.i = icmp eq i32 %48, 0
  br i1 %tobool4.not.i, label %sw.bb3.i.sw.epilog_crit_edge, label %if.then5.i

sw.bb3.i.sw.epilog_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then5.i:                                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_send_control(ptr noundef %ax25, i32 noundef 15, i32 noundef 1, i32 noundef 2) #3
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %50 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ns, align 4
  %52 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr, align 4
  %54 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pf, align 4
  %56 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %call, label %sw.bb4.sw.epilog_crit_edge [
    i32 256, label %sw.bb4.sw.bb135.i_crit_edge
    i32 135, label %sw.bb4.sw.bb135.i_crit_edge79
    i32 67, label %sw.bb7.i
    i32 15, label %sw.bb8.i35
    i32 111, label %if.else.i32
    i32 47, label %if.then.i31
    i32 9, label %sw.bb32.i
    i32 0, label %sw.bb51.i
    i32 1, label %if.then12.i
    i32 5, label %if.else16.i
  ]

sw.bb4.sw.bb135.i_crit_edge79:                    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb135.i

sw.bb4.sw.bb135.i_crit_edge:                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb135.i

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then.i31:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  %modulus.i28 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  %57 = ptrtoint ptr %modulus.i28 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 8, ptr %modulus.i28, align 2
  %ax25_dev.i29 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %58 = ptrtoint ptr %ax25_dev.i29 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ax25_dev.i29, align 4
  %arrayidx.i30 = getelementptr %struct.ax25_dev, ptr %59, i32 0, i32 5, i32 4
  br label %if.end.i34

if.else.i32:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  %modulus1.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  %60 = ptrtoint ptr %modulus1.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -128, ptr %modulus1.i, align 2
  %ax25_dev2.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %61 = ptrtoint ptr %ax25_dev2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ax25_dev2.i, align 4
  %arrayidx4.i = getelementptr %struct.ax25_dev, ptr %62, i32 0, i32 5, i32 5
  br label %if.end.i34

if.end.i34:                                       ; preds = %if.else.i32, %if.then.i31
  %arrayidx4.sink.i = phi ptr [ %arrayidx4.i, %if.else.i32 ], [ %arrayidx.i30, %if.then.i31 ]
  %63 = ptrtoint ptr %arrayidx4.sink.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx4.sink.i, align 4
  %conv5.i = trunc i32 %64 to i8
  %window6.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 32
  %65 = ptrtoint ptr %window6.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv5.i, ptr %window6.i, align 4
  call void @ax25_send_control(ptr noundef %ax25, i32 noundef 99, i32 noundef %55, i32 noundef 2) #3
  call void @ax25_stop_t1timer(ptr noundef %ax25) #3
  call void @ax25_stop_t2timer(ptr noundef %ax25) #3
  call void @ax25_start_t3timer(ptr noundef %ax25) #3
  call void @ax25_start_idletimer(ptr noundef %ax25) #3
  %vs.i33 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 9
  %66 = call ptr @memset(ptr %vs.i33, i32 0, i32 7)
  call void @ax25_requeue_frames(ptr noundef %ax25) #3
  br label %sw.epilog

sw.bb7.i:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_send_control(ptr noundef %ax25, i32 noundef 99, i32 noundef %55, i32 noundef 2) #3
  call void @ax25_disconnect(ptr noundef %ax25, i32 noundef 0) #3
  br label %sw.epilog

sw.bb8.i35:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_disconnect(ptr noundef %ax25, i32 noundef 104) #3
  br label %sw.epilog

if.then12.i:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  %condition13.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %67 = ptrtoint ptr %condition13.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %condition13.i, align 2
  %69 = and i8 %68, -5
  store i8 %69, ptr %condition13.i, align 2
  br label %if.end20.i

if.else16.i:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #5
  %condition17.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %70 = ptrtoint ptr %condition17.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %condition17.i, align 2
  %72 = or i8 %71, 4
  store i8 %72, ptr %condition17.i, align 2
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else16.i, %if.then12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp21.i = icmp ne i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i36 = icmp eq i32 %55, 0
  %or.cond.i = or i1 %cmp21.i, %tobool.not.i36
  br i1 %or.cond.i, label %if.end20.i.if.end24.i_crit_edge, label %if.then23.i

if.end20.i.if.end24.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_std_enquiry_response(ptr noundef %ax25) #3
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end24.i_crit_edge
  %conv25.i = trunc i32 %53 to i16
  %call.i = call i32 @ax25_validate_nr(ptr noundef %ax25, i16 noundef zeroext %conv25.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool26.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool26.not.i, label %if.else30.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #5
  %call29.i = call i32 @ax25_check_iframes_acked(ptr noundef %ax25, i16 noundef zeroext %conv25.i) #3
  br label %sw.epilog

if.else30.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_std_nr_error_recovery(ptr noundef %ax25) #3
  %73 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %state, align 1
  br label %sw.epilog

sw.bb32.i:                                        ; preds = %sw.bb4
  %condition33.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %74 = ptrtoint ptr %condition33.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %condition33.i, align 2
  %76 = and i8 %75, -5
  store i8 %76, ptr %condition33.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp37.i = icmp ne i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool40.not.i = icmp eq i32 %55, 0
  %or.cond216.i = or i1 %cmp37.i, %tobool40.not.i
  br i1 %or.cond216.i, label %sw.bb32.i.if.end42.i_crit_edge, label %if.then41.i

sw.bb32.i.if.end42.i_crit_edge:                   ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end42.i

if.then41.i:                                      ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_std_enquiry_response(ptr noundef %ax25) #3
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then41.i, %sw.bb32.i.if.end42.i_crit_edge
  %conv43.i = trunc i32 %53 to i16
  %call44.i = call i32 @ax25_validate_nr(ptr noundef %ax25, i16 noundef zeroext %conv43.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.else48.i, label %if.then46.i

if.then46.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_frames_acked(ptr noundef %ax25, i16 noundef zeroext %conv43.i) #3
  call void @ax25_calculate_rtt(ptr noundef %ax25) #3
  call void @ax25_stop_t1timer(ptr noundef %ax25) #3
  call void @ax25_start_t3timer(ptr noundef %ax25) #3
  call void @ax25_requeue_frames(ptr noundef %ax25) #3
  br label %sw.epilog

if.else48.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_std_nr_error_recovery(ptr noundef %ax25) #3
  %77 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %state, align 1
  br label %sw.epilog

sw.bb51.i:                                        ; preds = %sw.bb4
  %conv52.i = trunc i32 %53 to i16
  %call53.i = call i32 @ax25_validate_nr(ptr noundef %ax25, i16 noundef zeroext %conv52.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.then55.i, label %if.end57.i

if.then55.i:                                      ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_std_nr_error_recovery(ptr noundef %ax25) #3
  %78 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %state, align 1
  br label %sw.epilog

if.end57.i:                                       ; preds = %sw.bb51.i
  %condition58.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %79 = ptrtoint ptr %condition58.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %condition58.i, align 2
  %81 = and i8 %80, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool61.not.i = icmp eq i8 %81, 0
  br i1 %tobool61.not.i, label %if.else64.i, label %if.then62.i

if.then62.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_frames_acked(ptr noundef %ax25, i16 noundef zeroext %conv52.i) #3
  br label %if.end67.i

if.else64.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #5
  %call66.i = call i32 @ax25_check_iframes_acked(ptr noundef %ax25, i16 noundef zeroext %conv52.i) #3
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.else64.i, %if.then62.i
  %82 = ptrtoint ptr %condition58.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %condition58.i, align 2
  %conv69.i = zext i8 %83 to i32
  %and70.i = and i32 %conv69.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool71.not.i = icmp eq i32 %and70.i, 0
  br i1 %tobool71.not.i, label %if.end76.i, label %if.then72.i

if.then72.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool73.not.i = icmp eq i32 %55, 0
  br i1 %tobool73.not.i, label %if.then72.i.sw.epilog_crit_edge, label %if.then74.i

if.then72.i.sw.epilog_crit_edge:                  ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then74.i:                                      ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_std_enquiry_response(ptr noundef %ax25) #3
  br label %sw.epilog

if.end76.i:                                       ; preds = %if.end67.i
  %vr77.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 10
  %84 = ptrtoint ptr %vr77.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %vr77.i, align 2
  %conv78.i = zext i16 %85 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %conv78.i)
  %cmp79.i = icmp eq i32 %51, %conv78.i
  br i1 %cmp79.i, label %if.then81.i, label %if.else115.i

if.then81.i:                                      ; preds = %if.end76.i
  %add.i = add nuw nsw i32 %51, 1
  %modulus84.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  %86 = ptrtoint ptr %modulus84.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %modulus84.i, align 2
  %conv85.i = zext i8 %87 to i32
  %rem.i = urem i32 %add.i, %conv85.i
  %conv86.i = trunc i32 %rem.i to i16
  %88 = ptrtoint ptr %vr77.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv86.i, ptr %vr77.i, align 2
  %call88.i = call i32 @ax25_rx_iframe(ptr noundef %ax25, ptr noundef %skb) #3
  %89 = ptrtoint ptr %condition58.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %condition58.i, align 2
  %91 = and i8 %90, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool92.not.i = icmp eq i8 %91, 0
  br i1 %tobool92.not.i, label %if.then81.i.if.end96.i_crit_edge, label %if.then93.i

if.then81.i.if.end96.i_crit_edge:                 ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end96.i

if.then93.i:                                      ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv94.i = trunc i32 %51 to i16
  %92 = ptrtoint ptr %vr77.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv94.i, ptr %vr77.i, align 2
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.then93.i, %if.then81.i.if.end96.i_crit_edge
  %93 = and i8 %90, -3
  %94 = ptrtoint ptr %condition58.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %condition58.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool101.not.i = icmp eq i32 %55, 0
  br i1 %tobool101.not.i, label %if.else103.i, label %if.then102.i

if.then102.i:                                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_std_enquiry_response(ptr noundef %ax25) #3
  br label %sw.epilog

if.else103.i:                                     ; preds = %if.end96.i
  %95 = and i8 %90, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool107.not.i = icmp eq i8 %95, 0
  br i1 %tobool107.not.i, label %if.then108.i, label %if.else103.i.sw.epilog_crit_edge

if.else103.i.sw.epilog_crit_edge:                 ; preds = %if.else103.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then108.i:                                     ; preds = %if.else103.i
  call void @__sanitizer_cov_trace_pc() #5
  %or111.i = or i8 %93, 1
  %96 = ptrtoint ptr %condition58.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %or111.i, ptr %condition58.i, align 2
  call void @ax25_start_t2timer(ptr noundef %ax25) #3
  br label %sw.epilog

if.else115.i:                                     ; preds = %if.end76.i
  %and118.i = and i32 %conv69.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118.i)
  %tobool119.not.i = icmp eq i32 %and118.i, 0
  br i1 %tobool119.not.i, label %if.else124.i, label %if.then120.i

if.then120.i:                                     ; preds = %if.else115.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool121.not.i = icmp eq i32 %55, 0
  br i1 %tobool121.not.i, label %if.then120.i.sw.epilog_crit_edge, label %if.then122.i

if.then120.i.sw.epilog_crit_edge:                 ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then122.i:                                     ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_std_enquiry_response(ptr noundef %ax25) #3
  br label %sw.epilog

if.else124.i:                                     ; preds = %if.else115.i
  call void @__sanitizer_cov_trace_pc() #5
  %or127.i = or i8 %83, 2
  %97 = ptrtoint ptr %condition58.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %or127.i, ptr %condition58.i, align 2
  call void @ax25_send_control(ptr noundef %ax25, i32 noundef 9, i32 noundef %55, i32 noundef 2) #3
  %98 = ptrtoint ptr %condition58.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %condition58.i, align 2
  %100 = and i8 %99, -2
  store i8 %100, ptr %condition58.i, align 2
  br label %sw.epilog

sw.bb135.i:                                       ; preds = %sw.bb4.sw.bb135.i_crit_edge, %sw.bb4.sw.bb135.i_crit_edge79
  call void @ax25_std_establish_data_link(ptr noundef %ax25) #3
  %101 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %state, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %102 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ns, align 4
  %104 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %nr, align 4
  %106 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pf, align 4
  %108 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %call, label %sw.bb6.sw.epilog_crit_edge [
    i32 256, label %sw.bb6.sw.bb176.i_crit_edge
    i32 135, label %sw.bb6.sw.bb176.i_crit_edge80
    i32 67, label %sw.bb7.i53
    i32 15, label %sw.bb8.i54
    i32 111, label %if.else.i45
    i32 47, label %if.then.i41
    i32 9, label %sw.bb57.i
    i32 0, label %sw.bb101.i
    i32 1, label %if.then12.i56
    i32 5, label %if.else16.i58
  ]

sw.bb6.sw.bb176.i_crit_edge80:                    ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb176.i

sw.bb6.sw.bb176.i_crit_edge:                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb176.i

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then.i41:                                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  %modulus.i38 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  %109 = ptrtoint ptr %modulus.i38 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 8, ptr %modulus.i38, align 2
  %ax25_dev.i39 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %110 = ptrtoint ptr %ax25_dev.i39 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ax25_dev.i39, align 4
  %arrayidx.i40 = getelementptr %struct.ax25_dev, ptr %111, i32 0, i32 5, i32 4
  br label %if.end.i52

if.else.i45:                                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  %modulus1.i42 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  %112 = ptrtoint ptr %modulus1.i42 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 -128, ptr %modulus1.i42, align 2
  %ax25_dev2.i43 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %113 = ptrtoint ptr %ax25_dev2.i43 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ax25_dev2.i43, align 4
  %arrayidx4.i44 = getelementptr %struct.ax25_dev, ptr %114, i32 0, i32 5, i32 5
  br label %if.end.i52

if.end.i52:                                       ; preds = %if.else.i45, %if.then.i41
  %arrayidx4.sink.i46 = phi ptr [ %arrayidx4.i44, %if.else.i45 ], [ %arrayidx.i40, %if.then.i41 ]
  %115 = ptrtoint ptr %arrayidx4.sink.i46 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx4.sink.i46, align 4
  %conv5.i47 = trunc i32 %116 to i8
  %window6.i48 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 32
  %117 = ptrtoint ptr %window6.i48 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv5.i47, ptr %window6.i48, align 4
  call void @ax25_send_control(ptr noundef %ax25, i32 noundef 99, i32 noundef %107, i32 noundef 2) #3
  call void @ax25_stop_t1timer(ptr noundef %ax25) #3
  call void @ax25_stop_t2timer(ptr noundef %ax25) #3
  call void @ax25_start_t3timer(ptr noundef %ax25) #3
  call void @ax25_start_idletimer(ptr noundef %ax25) #3
  %vs.i49 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 9
  %118 = call ptr @memset(ptr %vs.i49, i32 0, i32 7)
  %119 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 3, ptr %state, align 1
  %n2count.i51 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 15
  %120 = ptrtoint ptr %n2count.i51 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %n2count.i51, align 1
  call void @ax25_requeue_frames(ptr noundef %ax25) #3
  br label %sw.epilog

sw.bb7.i53:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_send_control(ptr noundef %ax25, i32 noundef 99, i32 noundef %107, i32 noundef 2) #3
  call void @ax25_disconnect(ptr noundef %ax25, i32 noundef 0) #3
  br label %sw.epilog

sw.bb8.i54:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_disconnect(ptr noundef %ax25, i32 noundef 104) #3
  br label %sw.epilog

if.then12.i56:                                    ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  %condition13.i55 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %121 = ptrtoint ptr %condition13.i55 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %condition13.i55, align 2
  %123 = and i8 %122, -5
  store i8 %123, ptr %condition13.i55, align 2
  br label %if.end20.i62

if.else16.i58:                                    ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #5
  %condition17.i57 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %124 = ptrtoint ptr %condition17.i57 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %condition17.i57, align 2
  %126 = or i8 %125, 4
  store i8 %126, ptr %condition17.i57, align 2
  br label %if.end20.i62

if.end20.i62:                                     ; preds = %if.else16.i58, %if.then12.i56
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp21.i59 = icmp ne i32 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not.i60 = icmp eq i32 %107, 0
  %or.cond.i61 = or i1 %cmp21.i59, %tobool.not.i60
  br i1 %or.cond.i61, label %if.end42.i68, label %if.then23.i66

if.then23.i66:                                    ; preds = %if.end20.i62
  call void @ax25_stop_t1timer(ptr noundef %ax25) #3
  %n2count24.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 15
  %127 = ptrtoint ptr %n2count24.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %n2count24.i, align 1
  %conv25.i63 = trunc i32 %105 to i16
  %call.i64 = call i32 @ax25_validate_nr(ptr noundef %ax25, i16 noundef zeroext %conv25.i63) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool26.not.i65 = icmp eq i32 %call.i64, 0
  br i1 %tobool26.not.i65, label %if.else39.i, label %if.then27.i67

if.then27.i67:                                    ; preds = %if.then23.i66
  call void @ax25_frames_acked(ptr noundef %ax25, i16 noundef zeroext %conv25.i63) #3
  %vs29.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 9
  %128 = ptrtoint ptr %vs29.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %vs29.i, align 4
  %va31.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 11
  %130 = ptrtoint ptr %va31.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %va31.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %129, i16 %131)
  %cmp33.i = icmp eq i16 %129, %131
  br i1 %cmp33.i, label %if.then35.i, label %if.else37.i

if.then35.i:                                      ; preds = %if.then27.i67
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_start_t3timer(ptr noundef %ax25) #3
  %132 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 3, ptr %state, align 1
  br label %sw.epilog

if.else37.i:                                      ; preds = %if.then27.i67
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_requeue_frames(ptr noundef %ax25) #3
  br label %sw.epilog

if.else39.i:                                      ; preds = %if.then23.i66
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_std_nr_error_recovery(ptr noundef %ax25) #3
  %133 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 1, ptr %state, align 1
  br label %sw.epilog

if.end42.i68:                                     ; preds = %if.end20.i62
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp43.i = icmp ne i32 %type, 1
  %or.cond283.i = or i1 %cmp43.i, %tobool.not.i60
  br i1 %or.cond283.i, label %if.end42.i68.if.end48.i_crit_edge, label %if.then47.i

if.end42.i68.if.end48.i_crit_edge:                ; preds = %if.end42.i68
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48.i

if.then47.i:                                      ; preds = %if.end42.i68
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_std_enquiry_response(ptr noundef %ax25) #3
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then47.i, %if.end42.i68.if.end48.i_crit_edge
  %conv49.i = trunc i32 %105 to i16
  %call50.i = call i32 @ax25_validate_nr(ptr noundef %ax25, i16 noundef zeroext %conv49.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.else54.i, label %if.then52.i

if.then52.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_frames_acked(ptr noundef %ax25, i16 noundef zeroext %conv49.i) #3
  br label %sw.epilog

if.else54.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_std_nr_error_recovery(ptr noundef %ax25) #3
  %134 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 1, ptr %state, align 1
  br label %sw.epilog

sw.bb57.i:                                        ; preds = %sw.bb6
  %condition58.i69 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %135 = ptrtoint ptr %condition58.i69 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %condition58.i69, align 2
  %137 = and i8 %136, -5
  store i8 %137, ptr %condition58.i69, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool62.not.i = icmp eq i32 %107, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp64.i = icmp ne i32 %type, 2
  %138 = or i1 %cmp64.i, %tobool62.not.i
  br i1 %138, label %if.end86.i, label %if.then66.i

if.then66.i:                                      ; preds = %sw.bb57.i
  call void @ax25_stop_t1timer(ptr noundef %ax25) #3
  %n2count67.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 15
  %139 = ptrtoint ptr %n2count67.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %n2count67.i, align 1
  %conv68.i = trunc i32 %105 to i16
  %call69.i = call i32 @ax25_validate_nr(ptr noundef %ax25, i16 noundef zeroext %conv68.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %if.else83.i, label %if.then71.i

if.then71.i:                                      ; preds = %if.then66.i
  call void @ax25_frames_acked(ptr noundef %ax25, i16 noundef zeroext %conv68.i) #3
  %vs73.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 9
  %140 = ptrtoint ptr %vs73.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %vs73.i, align 4
  %va75.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 11
  %142 = ptrtoint ptr %va75.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %va75.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %141, i16 %143)
  %cmp77.i = icmp eq i16 %141, %143
  br i1 %cmp77.i, label %if.then79.i, label %if.else81.i

if.then79.i:                                      ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_start_t3timer(ptr noundef %ax25) #3
  %144 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 3, ptr %state, align 1
  br label %sw.epilog

if.else81.i:                                      ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_requeue_frames(ptr noundef %ax25) #3
  br label %sw.epilog

if.else83.i:                                      ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_std_nr_error_recovery(ptr noundef %ax25) #3
  %145 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 1, ptr %state, align 1
  br label %sw.epilog

if.end86.i:                                       ; preds = %sw.bb57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp87.i = icmp ne i32 %type, 1
  %brmerge.i = or i1 %cmp87.i, %tobool62.not.i
  br i1 %brmerge.i, label %if.end86.i.if.end92.i_crit_edge, label %if.then91.i

if.end86.i.if.end92.i_crit_edge:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end92.i

if.then91.i:                                      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_std_enquiry_response(ptr noundef %ax25) #3
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then91.i, %if.end86.i.if.end92.i_crit_edge
  %conv93.i = trunc i32 %105 to i16
  %call94.i = call i32 @ax25_validate_nr(ptr noundef %ax25, i16 noundef zeroext %conv93.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %tobool95.not.i = icmp eq i32 %call94.i, 0
  br i1 %tobool95.not.i, label %if.else98.i, label %if.then96.i

if.then96.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_frames_acked(ptr noundef %ax25, i16 noundef zeroext %conv93.i) #3
  call void @ax25_requeue_frames(ptr noundef %ax25) #3
  br label %sw.epilog

if.else98.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_std_nr_error_recovery(ptr noundef %ax25) #3
  %146 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 1, ptr %state, align 1
  br label %sw.epilog

sw.bb101.i:                                       ; preds = %sw.bb6
  %conv102.i = trunc i32 %105 to i16
  %call103.i = call i32 @ax25_validate_nr(ptr noundef %ax25, i16 noundef zeroext %conv102.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103.i)
  %tobool104.not.i = icmp eq i32 %call103.i, 0
  br i1 %tobool104.not.i, label %if.then105.i, label %if.end107.i

if.then105.i:                                     ; preds = %sw.bb101.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_std_nr_error_recovery(ptr noundef %ax25) #3
  %147 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 1, ptr %state, align 1
  br label %sw.epilog

if.end107.i:                                      ; preds = %sw.bb101.i
  call void @ax25_frames_acked(ptr noundef %ax25, i16 noundef zeroext %conv102.i) #3
  %condition109.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %148 = ptrtoint ptr %condition109.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %condition109.i, align 2
  %conv110.i = zext i8 %149 to i32
  %and111.i = and i32 %conv110.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111.i)
  %tobool112.not.i = icmp eq i32 %and111.i, 0
  br i1 %tobool112.not.i, label %if.end117.i, label %if.then113.i

if.then113.i:                                     ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool114.not.i = icmp eq i32 %107, 0
  br i1 %tobool114.not.i, label %if.then113.i.sw.epilog_crit_edge, label %if.then115.i

if.then113.i.sw.epilog_crit_edge:                 ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then115.i:                                     ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_std_enquiry_response(ptr noundef %ax25) #3
  br label %sw.epilog

if.end117.i:                                      ; preds = %if.end107.i
  %vr118.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 10
  %150 = ptrtoint ptr %vr118.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %vr118.i, align 2
  %conv119.i = zext i16 %151 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %conv119.i)
  %cmp120.i = icmp eq i32 %103, %conv119.i
  br i1 %cmp120.i, label %if.then122.i72, label %if.else156.i

if.then122.i72:                                   ; preds = %if.end117.i
  %add.i70 = add nuw nsw i32 %103, 1
  %modulus125.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  %152 = ptrtoint ptr %modulus125.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %modulus125.i, align 2
  %conv126.i = zext i8 %153 to i32
  %rem.i71 = urem i32 %add.i70, %conv126.i
  %conv127.i = trunc i32 %rem.i71 to i16
  %154 = ptrtoint ptr %vr118.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %conv127.i, ptr %vr118.i, align 2
  %call129.i = call i32 @ax25_rx_iframe(ptr noundef %ax25, ptr noundef %skb) #3
  %155 = ptrtoint ptr %condition109.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %condition109.i, align 2
  %157 = and i8 %156, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool133.not.i = icmp eq i8 %157, 0
  br i1 %tobool133.not.i, label %if.then122.i72.if.end137.i_crit_edge, label %if.then134.i

if.then122.i72.if.end137.i_crit_edge:             ; preds = %if.then122.i72
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end137.i

if.then134.i:                                     ; preds = %if.then122.i72
  call void @__sanitizer_cov_trace_pc() #5
  %conv135.i = trunc i32 %103 to i16
  %158 = ptrtoint ptr %vr118.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %conv135.i, ptr %vr118.i, align 2
  br label %if.end137.i

if.end137.i:                                      ; preds = %if.then134.i, %if.then122.i72.if.end137.i_crit_edge
  %159 = and i8 %156, -3
  %160 = ptrtoint ptr %condition109.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %condition109.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool142.not.i = icmp eq i32 %107, 0
  br i1 %tobool142.not.i, label %if.else144.i, label %if.then143.i

if.then143.i:                                     ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_std_enquiry_response(ptr noundef %ax25) #3
  br label %sw.epilog

if.else144.i:                                     ; preds = %if.end137.i
  %161 = and i8 %156, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool148.not.i = icmp eq i8 %161, 0
  br i1 %tobool148.not.i, label %if.then149.i, label %if.else144.i.sw.epilog_crit_edge

if.else144.i.sw.epilog_crit_edge:                 ; preds = %if.else144.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then149.i:                                     ; preds = %if.else144.i
  call void @__sanitizer_cov_trace_pc() #5
  %or152.i = or i8 %159, 1
  %162 = ptrtoint ptr %condition109.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %or152.i, ptr %condition109.i, align 2
  call void @ax25_start_t2timer(ptr noundef %ax25) #3
  br label %sw.epilog

if.else156.i:                                     ; preds = %if.end117.i
  %and159.i = and i32 %conv110.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159.i)
  %tobool160.not.i = icmp eq i32 %and159.i, 0
  br i1 %tobool160.not.i, label %if.else165.i, label %if.then161.i

if.then161.i:                                     ; preds = %if.else156.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool162.not.i = icmp eq i32 %107, 0
  br i1 %tobool162.not.i, label %if.then161.i.sw.epilog_crit_edge, label %if.then163.i

if.then161.i.sw.epilog_crit_edge:                 ; preds = %if.then161.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then163.i:                                     ; preds = %if.then161.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ax25_std_enquiry_response(ptr noundef %ax25) #3
  br label %sw.epilog

if.else165.i:                                     ; preds = %if.else156.i
  call void @__sanitizer_cov_trace_pc() #5
  %or168.i = or i8 %149, 2
  %163 = ptrtoint ptr %condition109.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %or168.i, ptr %condition109.i, align 2
  call void @ax25_send_control(ptr noundef %ax25, i32 noundef 9, i32 noundef %107, i32 noundef 2) #3
  %164 = ptrtoint ptr %condition109.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %condition109.i, align 2
  %166 = and i8 %165, -2
  store i8 %166, ptr %condition109.i, align 2
  br label %sw.epilog

sw.bb176.i:                                       ; preds = %sw.bb6.sw.bb176.i_crit_edge, %sw.bb6.sw.bb176.i_crit_edge80
  call void @ax25_std_establish_data_link(ptr noundef %ax25) #3
  %167 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 1, ptr %state, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb176.i, %if.else165.i, %if.then163.i, %if.then161.i.sw.epilog_crit_edge, %if.then149.i, %if.else144.i.sw.epilog_crit_edge, %if.then143.i, %if.then115.i, %if.then113.i.sw.epilog_crit_edge, %if.then105.i, %if.else98.i, %if.then96.i, %if.else83.i, %if.else81.i, %if.then79.i, %if.else54.i, %if.then52.i, %if.else39.i, %if.else37.i, %if.then35.i, %sw.bb8.i54, %sw.bb7.i53, %if.end.i52, %sw.bb6.sw.epilog_crit_edge, %sw.bb135.i, %if.else124.i, %if.then122.i, %if.then120.i.sw.epilog_crit_edge, %if.then108.i, %if.else103.i.sw.epilog_crit_edge, %if.then102.i, %if.then74.i, %if.then72.i.sw.epilog_crit_edge, %if.then55.i, %if.else48.i, %if.then46.i, %if.else30.i, %if.then27.i, %sw.bb8.i35, %sw.bb7.i, %if.end.i34, %sw.bb4.sw.epilog_crit_edge, %if.then5.i, %sw.bb3.i.sw.epilog_crit_edge, %if.then.i27, %sw.bb2.i.sw.epilog_crit_edge, %sw.bb1.i25, %sw.bb.i24, %sw.bb2.sw.epilog_crit_edge, %if.else.i, %if.then30.i, %sw.bb23.i.sw.epilog_crit_edge, %if.end.i, %if.then.i.sw.epilog_crit_edge, %sw.bb9.i.sw.epilog_crit_edge, %sw.bb8.i, %sw.bb1.i, %sw.bb.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %queued.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %sw.bb.i ], [ 0, %sw.bb1.i ], [ 0, %sw.bb8.i ], [ 0, %sw.bb9.i.sw.epilog_crit_edge ], [ 0, %if.then.i.sw.epilog_crit_edge ], [ 0, %if.end.i ], [ 0, %sw.bb23.i.sw.epilog_crit_edge ], [ 0, %if.then30.i ], [ 0, %if.else.i ], [ 0, %sw.bb2.sw.epilog_crit_edge ], [ 0, %sw.bb.i24 ], [ 0, %sw.bb1.i25 ], [ 0, %sw.bb2.i.sw.epilog_crit_edge ], [ 0, %if.then.i27 ], [ 0, %sw.bb3.i.sw.epilog_crit_edge ], [ 0, %if.then5.i ], [ 0, %sw.bb4.sw.epilog_crit_edge ], [ 0, %sw.bb135.i ], [ 0, %if.then74.i ], [ 0, %if.then72.i.sw.epilog_crit_edge ], [ %call88.i, %if.then102.i ], [ %call88.i, %if.else103.i.sw.epilog_crit_edge ], [ %call88.i, %if.then108.i ], [ 0, %if.then122.i ], [ 0, %if.then120.i.sw.epilog_crit_edge ], [ 0, %if.else124.i ], [ 0, %if.then55.i ], [ 0, %if.then46.i ], [ 0, %if.else48.i ], [ 0, %if.then27.i ], [ 0, %if.else30.i ], [ 0, %sw.bb8.i35 ], [ 0, %sw.bb7.i ], [ 0, %if.end.i34 ], [ 0, %sw.bb6.sw.epilog_crit_edge ], [ 0, %sw.bb176.i ], [ 0, %if.then115.i ], [ 0, %if.then113.i.sw.epilog_crit_edge ], [ %call129.i, %if.then143.i ], [ %call129.i, %if.else144.i.sw.epilog_crit_edge ], [ %call129.i, %if.then149.i ], [ 0, %if.then163.i ], [ 0, %if.then161.i.sw.epilog_crit_edge ], [ 0, %if.else165.i ], [ 0, %if.then105.i ], [ 0, %if.then79.i ], [ 0, %if.else81.i ], [ 0, %if.else83.i ], [ 0, %if.then96.i ], [ 0, %if.else98.i ], [ 0, %if.then35.i ], [ 0, %if.else37.i ], [ 0, %if.else39.i ], [ 0, %if.then52.i ], [ 0, %if.else54.i ], [ 0, %sw.bb8.i54 ], [ 0, %sw.bb7.i53 ], [ 0, %if.end.i52 ]
  call void @ax25_kick(ptr noundef %ax25) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pf) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ns) #3
  ret i32 %queued.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_kick(ptr noundef) local_unnamed_addr #2

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
declare dso_local void @ax25_disconnect(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_stop_t2timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_requeue_frames(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_std_enquiry_response(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_validate_nr(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_check_iframes_acked(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_std_nr_error_recovery(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_frames_acked(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_rx_iframe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_start_t2timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_std_establish_data_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
