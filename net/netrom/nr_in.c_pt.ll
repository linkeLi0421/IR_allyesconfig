; ModuleID = '/llk/IR_all_yes/net/netrom/nr_in.c_pt.bc'
source_filename = "../net/netrom/nr_in.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nr_sock = type { %struct.sock, %struct.ax25_address, %struct.ax25_address, %struct.ax25_address, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i16, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
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
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.121 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.ax25_address = type { [7 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }

@sysctl_netrom_reset_circuit = external dso_local local_unnamed_addr global i32, align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 7, i64 130]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 4, i64 7, i64 130]
@__sancov_gen_cov_switch_values.3 = internal global [19 x i64] [i64 17, i64 8, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 37, i64 69, i64 70, i64 101, i64 130, i64 133, i64 134, i64 165, i64 197, i64 198, i64 229]
@___asan_gen_ = private constant [22 x i8] c"../net/netrom/nr_in.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 1984, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @skb_queue_head_init.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nr_process_rx_frame(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %temp_queue.i = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 19
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %5 to i32
  %6 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %if.end.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb5
    i8 3, label %sw.bb7
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %7 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %5, label %sw.bb.sw.epilog_crit_edge [
    i8 2, label %sw.bb.i
    i8 -126, label %sw.bb5.i
    i8 7, label %sw.bb6.i
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb
  tail call void @nr_stop_t1timer(ptr noundef %sk) #3
  tail call void @nr_start_idletimer(ptr noundef %sk) #3
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %arrayidx.i = getelementptr i8, ptr %9, i32 17
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %your_index.i = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 7
  %12 = ptrtoint ptr %your_index.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %your_index.i, align 2
  %13 = load ptr, ptr %data, align 4
  %arrayidx2.i = getelementptr i8, ptr %13, i32 18
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx2.i, align 1
  %your_id.i = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 8
  %16 = ptrtoint ptr %your_id.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %your_id.i, align 1
  %vs.i = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 13
  %17 = ptrtoint ptr %vs.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 0, ptr %vs.i, align 4
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %state, align 8
  %n2count.i = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 18
  %19 = ptrtoint ptr %n2count.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %n2count.i, align 1
  %20 = load ptr, ptr %data, align 4
  %arrayidx4.i = getelementptr i8, ptr %20, i32 20
  %21 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx4.i, align 1
  %window.i = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 12
  %23 = ptrtoint ptr %window.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %window.i, align 1
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %24 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store volatile i8 1, ptr %skc_state.i, align 2
  %25 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and1.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %sw.bb.i.sw.epilog_crit_edge

sw.bb.i.sw.epilog_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %28 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk_state_change.i, align 4
  tail call void %29(ptr noundef %sk) #3
  br label %sw.epilog

sw.bb5.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nr_disconnect(ptr noundef %sk, i32 noundef 111) #3
  br label %sw.epilog

sw.bb6.i:                                         ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_netrom_reset_circuit to i32))
  %30 = load i32, ptr @sysctl_netrom_reset_circuit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %sw.bb6.i.sw.epilog_crit_edge, label %if.then7.i

sw.bb6.i.sw.epilog_crit_edge:                     ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then7.i:                                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nr_disconnect(ptr noundef %sk, i32 noundef 104) #3
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %31 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %5, label %sw.bb5.sw.epilog_crit_edge [
    i8 -126, label %sw.bb5.sw.epilog.sink.split.i_crit_edge
    i8 3, label %sw.bb1.i
    i8 4, label %sw.bb5.sw.bb2.i_crit_edge
    i8 7, label %sw.bb3.i
  ]

sw.bb5.sw.bb2.i_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb2.i

sw.bb5.sw.epilog.sink.split.i_crit_edge:          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split.i

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb1.i:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nr_write_internal(ptr noundef %sk, i32 noundef 4) #3
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb1.i, %sw.bb5.sw.bb2.i_crit_edge
  br label %sw.epilog.sink.split.i

sw.bb3.i:                                         ; preds = %sw.bb5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_netrom_reset_circuit to i32))
  %32 = load i32, ptr @sysctl_netrom_reset_circuit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i21 = icmp eq i32 %32, 0
  br i1 %tobool.not.i21, label %sw.bb3.i.sw.epilog_crit_edge, label %sw.bb3.i.sw.epilog.sink.split.i_crit_edge

sw.bb3.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split.i

sw.bb3.i.sw.epilog_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog.sink.split.i:                           ; preds = %sw.bb3.i.sw.epilog.sink.split.i_crit_edge, %sw.bb2.i, %sw.bb5.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 0, %sw.bb2.i ], [ 104, %sw.bb5.sw.epilog.sink.split.i_crit_edge ], [ 104, %sw.bb3.i.sw.epilog.sink.split.i_crit_edge ]
  tail call void @nr_disconnect(ptr noundef %sk, i32 noundef %.sink.i) #3
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %temp_queue.i) #3
  %33 = call ptr @memset(ptr %temp_queue.i, i32 255, i32 56)
  %arrayidx.i23 = getelementptr i8, ptr %3, i32 18
  %34 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i23, align 1
  %conv.i = zext i8 %35 to i16
  %36 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %5, label %sw.bb7.nr_state3_machine.exit_crit_edge [
    i8 1, label %sw.bb.i24
    i8 3, label %sw.bb1.i25
    i8 -126, label %sw.bb7.sw.bb2.i26_crit_edge
    i8 4, label %sw.bb7.sw.bb2.i26_crit_edge31
    i8 6, label %sw.bb7.sw.bb3.i28_crit_edge
    i8 -122, label %sw.bb7.sw.bb3.i28_crit_edge32
    i8 70, label %sw.bb7.sw.bb3.i28_crit_edge33
    i8 -58, label %sw.bb7.sw.bb3.i28_crit_edge34
    i8 5, label %sw.bb7.sw.bb25.i_crit_edge
    i8 69, label %sw.bb7.sw.bb25.i_crit_edge35
    i8 -123, label %sw.bb7.sw.bb25.i_crit_edge36
    i8 37, label %sw.bb7.sw.bb25.i_crit_edge37
    i8 -59, label %sw.bb7.sw.bb25.i_crit_edge38
    i8 -91, label %sw.bb7.sw.bb25.i_crit_edge39
    i8 101, label %sw.bb7.sw.bb25.i_crit_edge40
    i8 -27, label %sw.bb7.sw.bb25.i_crit_edge41
    i8 7, label %sw.bb128.i
  ]

sw.bb7.sw.bb25.i_crit_edge41:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb25.i

sw.bb7.sw.bb25.i_crit_edge40:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb25.i

sw.bb7.sw.bb25.i_crit_edge39:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb25.i

sw.bb7.sw.bb25.i_crit_edge38:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb25.i

sw.bb7.sw.bb25.i_crit_edge37:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb25.i

sw.bb7.sw.bb25.i_crit_edge36:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb25.i

sw.bb7.sw.bb25.i_crit_edge35:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb25.i

sw.bb7.sw.bb25.i_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb25.i

sw.bb7.sw.bb3.i28_crit_edge34:                    ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3.i28

sw.bb7.sw.bb3.i28_crit_edge33:                    ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3.i28

sw.bb7.sw.bb3.i28_crit_edge32:                    ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3.i28

sw.bb7.sw.bb3.i28_crit_edge:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3.i28

sw.bb7.sw.bb2.i26_crit_edge31:                    ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb2.i26

sw.bb7.sw.bb2.i26_crit_edge:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb2.i26

sw.bb7.nr_state3_machine.exit_crit_edge:          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %nr_state3_machine.exit

sw.bb.i24:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nr_write_internal(ptr noundef %sk, i32 noundef 2) #3
  br label %nr_state3_machine.exit

sw.bb1.i25:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nr_write_internal(ptr noundef %sk, i32 noundef 4) #3
  tail call void @nr_disconnect(ptr noundef %sk, i32 noundef 0) #3
  br label %nr_state3_machine.exit

sw.bb2.i26:                                       ; preds = %sw.bb7.sw.bb2.i26_crit_edge, %sw.bb7.sw.bb2.i26_crit_edge31
  tail call void @nr_disconnect(ptr noundef %sk, i32 noundef 104) #3
  br label %nr_state3_machine.exit

sw.bb3.i28:                                       ; preds = %sw.bb7.sw.bb3.i28_crit_edge, %sw.bb7.sw.bb3.i28_crit_edge32, %sw.bb7.sw.bb3.i28_crit_edge33, %sw.bb7.sw.bb3.i28_crit_edge34
  %and.i = and i32 %conv2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i27 = icmp eq i32 %and.i, 0
  %condition6.i = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 10
  %37 = ptrtoint ptr %condition6.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %condition6.i, align 1
  br i1 %tobool.not.i27, label %if.else.i, label %if.then.i29

if.then.i29:                                      ; preds = %sw.bb3.i28
  call void @__sanitizer_cov_trace_pc() #5
  %39 = or i8 %38, 4
  %40 = ptrtoint ptr %condition6.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %condition6.i, align 1
  tail call void @nr_start_t4timer(ptr noundef %sk) #3
  br label %if.end.i

if.else.i:                                        ; preds = %sw.bb3.i28
  call void @__sanitizer_cov_trace_pc() #5
  %41 = and i8 %38, -5
  %42 = ptrtoint ptr %condition6.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %condition6.i, align 1
  tail call void @nr_stop_t4timer(ptr noundef %sk) #3
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i29
  %call.i = tail call i32 @nr_validate_nr(ptr noundef %sk, i16 noundef zeroext %conv.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool10.not.i, label %if.end.i.nr_state3_machine.exit_crit_edge, label %if.end12.i

if.end.i.nr_state3_machine.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nr_state3_machine.exit

if.end12.i:                                       ; preds = %if.end.i
  %and13.i = and i32 %conv2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.else16.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nr_frames_acked(ptr noundef %sk, i16 noundef zeroext %conv.i) #3
  tail call void @nr_send_nak_frame(ptr noundef %sk) #3
  br label %nr_state3_machine.exit

if.else16.i:                                      ; preds = %if.end12.i
  %43 = ptrtoint ptr %condition6.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %condition6.i, align 1
  %45 = and i8 %44, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool20.not.i = icmp eq i8 %45, 0
  br i1 %tobool20.not.i, label %if.else22.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nr_frames_acked(ptr noundef %sk, i16 noundef zeroext %conv.i) #3
  br label %nr_state3_machine.exit

if.else22.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nr_check_iframes_acked(ptr noundef %sk, i16 noundef zeroext %conv.i) #3
  br label %nr_state3_machine.exit

sw.bb25.i:                                        ; preds = %sw.bb7.sw.bb25.i_crit_edge, %sw.bb7.sw.bb25.i_crit_edge35, %sw.bb7.sw.bb25.i_crit_edge36, %sw.bb7.sw.bb25.i_crit_edge37, %sw.bb7.sw.bb25.i_crit_edge38, %sw.bb7.sw.bb25.i_crit_edge39, %sw.bb7.sw.bb25.i_crit_edge40, %sw.bb7.sw.bb25.i_crit_edge41
  %and26.i = and i32 %conv2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %condition34.i = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 10
  %46 = ptrtoint ptr %condition34.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %condition34.i, align 1
  br i1 %tobool27.not.i, label %if.else33.i, label %if.then28.i

if.then28.i:                                      ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #5
  %48 = or i8 %47, 4
  %49 = ptrtoint ptr %condition34.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %condition34.i, align 1
  tail call void @nr_start_t4timer(ptr noundef %sk) #3
  br label %if.end38.i

if.else33.i:                                      ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #5
  %50 = and i8 %47, -5
  %51 = ptrtoint ptr %condition34.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %condition34.i, align 1
  tail call void @nr_stop_t4timer(ptr noundef %sk) #3
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else33.i, %if.then28.i
  %call39.i = tail call i32 @nr_validate_nr(ptr noundef %sk, i16 noundef zeroext %conv.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end38.i.if.end54.i_crit_edge, label %if.then41.i

if.end38.i.if.end54.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end54.i

if.then41.i:                                      ; preds = %if.end38.i
  %and42.i = and i32 %conv2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %if.else45.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nr_frames_acked(ptr noundef %sk, i16 noundef zeroext %conv.i) #3
  tail call void @nr_send_nak_frame(ptr noundef %sk) #3
  br label %if.end54.i

if.else45.i:                                      ; preds = %if.then41.i
  %52 = ptrtoint ptr %condition34.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %condition34.i, align 1
  %54 = and i8 %53, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool49.not.i = icmp eq i8 %54, 0
  br i1 %tobool49.not.i, label %if.else51.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nr_frames_acked(ptr noundef %sk, i16 noundef zeroext %conv.i) #3
  br label %if.end54.i

if.else51.i:                                      ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nr_check_iframes_acked(ptr noundef %sk, i16 noundef zeroext %conv.i) #3
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.else51.i, %if.then50.i, %if.then44.i, %if.end38.i.if.end54.i_crit_edge
  %reseq_queue.i = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 29
  tail call void @skb_queue_head(ptr noundef %reseq_queue.i, ptr noundef %skb) #3
  %55 = ptrtoint ptr %condition34.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %condition34.i, align 1
  %57 = and i8 %56, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool58.not.i = icmp eq i8 %57, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %if.end54.i.nr_state3_machine.exit_crit_edge

if.end54.i.nr_state3_machine.exit_crit_edge:      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nr_state3_machine.exit

if.end60.i:                                       ; preds = %if.end54.i
  %lock.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %temp_queue.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #3
  %58 = ptrtoint ptr %temp_queue.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %temp_queue.i, ptr %temp_queue.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.anon.67, ptr %temp_queue.i, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %temp_queue.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %temp_queue.i, i32 0, i32 1
  %60 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %qlen.i.i.i, align 4
  %vr.i = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 14
  %and73.i = and i32 %conv2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool.not.i.i = icmp eq i32 %and73.i, 0
  %fraglen.i.i = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 23
  %frag_queue.i.i = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 30
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end60.i
  %61 = ptrtoint ptr %vr.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %vr.i, align 2
  %call62199.i = call ptr @skb_dequeue(ptr noundef %reseq_queue.i) #3
  %cmp.not200.i = icmp eq ptr %call62199.i, null
  br i1 %cmp.not200.i, label %do.body.i.while.cond95.preheader.i_crit_edge, label %do.body.i.while.body.i_crit_edge

do.body.i.while.body.i_crit_edge:                 ; preds = %do.body.i
  br label %while.body.i

do.body.i.while.cond95.preheader.i_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond95.preheader.i

while.cond95.preheader.i:                         ; preds = %if.end94.i.while.cond95.preheader.i_crit_edge, %do.body.i.while.cond95.preheader.i_crit_edge
  %call96204.i = call ptr @skb_dequeue(ptr noundef nonnull %temp_queue.i) #3
  %cmp97.not205.i = icmp eq ptr %call96204.i, null
  br i1 %cmp97.not205.i, label %while.cond95.preheader.i.do.cond.i_crit_edge, label %while.cond95.preheader.i.while.body99.i_crit_edge

while.cond95.preheader.i.while.body99.i_crit_edge: ; preds = %while.cond95.preheader.i
  br label %while.body99.i

while.cond95.preheader.i.do.cond.i_crit_edge:     ; preds = %while.cond95.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.cond.i

while.body.i:                                     ; preds = %if.end94.i.while.body.i_crit_edge, %do.body.i.while.body.i_crit_edge
  %call62201.i = phi ptr [ %call62.i, %if.end94.i.while.body.i_crit_edge ], [ %call62199.i, %do.body.i.while.body.i_crit_edge ]
  %data64.i = getelementptr inbounds %struct.sk_buff, ptr %call62201.i, i32 0, i32 19
  %63 = ptrtoint ptr %data64.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data64.i, align 4
  %arrayidx65.i = getelementptr i8, ptr %64, i32 17
  %65 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx65.i, align 1
  %67 = ptrtoint ptr %vr.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vr.i, align 2
  %69 = zext i8 %66 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %68, i16 %69)
  %cmp70.i = icmp eq i16 %68, %69
  br i1 %cmp70.i, label %if.then72.i, label %if.else88.i

if.then72.i:                                      ; preds = %while.body.i
  %call.i.i = call ptr @skb_pull(ptr noundef nonnull %call62201.i, i32 noundef 20) #3
  call void @nr_start_idletimer(ptr noundef %sk) #3
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %nr_queue_rx_frame.exit.thread.i

nr_queue_rx_frame.exit.thread.i:                  ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call62201.i, i32 0, i32 6
  %70 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len.i.i, align 4
  %72 = ptrtoint ptr %fraglen.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %fraglen.i.i, align 8
  %74 = trunc i32 %71 to i16
  %conv1.i.i = add i16 %73, %74
  store i16 %conv1.i.i, ptr %fraglen.i.i, align 8
  call void @skb_queue_tail(ptr noundef %frag_queue.i.i, ptr noundef nonnull %call62201.i) #3
  br label %if.then77.i

land.lhs.true.i.i:                                ; preds = %if.then72.i
  %75 = ptrtoint ptr %fraglen.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %fraglen.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %cmp.not.i.i = icmp eq i16 %76, 0
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.nr_queue_rx_frame.exit.i_crit_edge, label %if.then6.i.i

land.lhs.true.i.i.nr_queue_rx_frame.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nr_queue_rx_frame.exit.i

if.then6.i.i:                                     ; preds = %land.lhs.true.i.i
  %len7.i.i = getelementptr inbounds %struct.sk_buff, ptr %call62201.i, i32 0, i32 6
  %77 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len7.i.i, align 4
  %79 = trunc i32 %78 to i16
  %conv11.i.i = add i16 %76, %79
  %80 = ptrtoint ptr %fraglen.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv11.i.i, ptr %fraglen.i.i, align 8
  call void @skb_queue_tail(ptr noundef %frag_queue.i.i, ptr noundef nonnull %call62201.i) #3
  %81 = ptrtoint ptr %fraglen.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %fraglen.i.i, align 8
  %conv14.i.i = zext i16 %82 to i32
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef %conv14.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #3
  %cmp16.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp16.i.i, label %if.then6.i.i.if.else82.i_crit_edge, label %if.end19.i.i

if.then6.i.i.if.else82.i_crit_edge:               ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else82.i

if.end19.i.i:                                     ; preds = %if.then6.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %83 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 18
  %85 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %84 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %86 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 19
  %87 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  %call2153.i.i = call ptr @skb_dequeue(ptr noundef %frag_queue.i.i) #3
  %cmp22.not54.i.i = icmp eq ptr %call2153.i.i, null
  br i1 %cmp22.not54.i.i, label %if.end19.i.i.while.end.i.i_crit_edge, label %if.end19.i.i.while.body.i.i_crit_edge

if.end19.i.i.while.body.i.i_crit_edge:            ; preds = %if.end19.i.i
  br label %while.body.i.i

if.end19.i.i.while.end.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end19.i.i.while.body.i.i_crit_edge
  %call2155.i.i = phi ptr [ %call21.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %call2153.i.i, %if.end19.i.i.while.body.i.i_crit_edge ]
  %len24.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2155.i.i, i32 0, i32 6
  %88 = ptrtoint ptr %len24.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len24.i.i, align 4
  %call25.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %89) #3
  %90 = ptrtoint ptr %len24.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len24.i.i, align 4
  %data.i52.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2155.i.i, i32 0, i32 19
  %92 = ptrtoint ptr %data.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data.i52.i.i, align 4
  %94 = call ptr @memcpy(ptr %call25.i.i, ptr %93, i32 %91)
  call void @kfree_skb_reason(ptr noundef nonnull %call2155.i.i, i32 noundef 0) #3
  %call21.i.i = call ptr @skb_dequeue(ptr noundef %frag_queue.i.i) #3
  %cmp22.not.i.i = icmp eq ptr %call21.i.i, null
  br i1 %cmp22.not.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %if.end19.i.i.while.end.i.i_crit_edge
  %95 = ptrtoint ptr %fraglen.i.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 0, ptr %fraglen.i.i, align 8
  br label %nr_queue_rx_frame.exit.i

nr_queue_rx_frame.exit.i:                         ; preds = %while.end.i.i, %land.lhs.true.i.i.nr_queue_rx_frame.exit.i_crit_edge
  %skbn.0.i.i = phi ptr [ %call.i.i.i, %while.end.i.i ], [ %call62201.i, %land.lhs.true.i.i.nr_queue_rx_frame.exit.i_crit_edge ]
  %call29.i.i = call i32 @sock_queue_rcv_skb(ptr noundef %sk, ptr noundef nonnull %skbn.0.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %cmp75.i = icmp eq i32 %call29.i.i, 0
  br i1 %cmp75.i, label %nr_queue_rx_frame.exit.i.if.then77.i_crit_edge, label %nr_queue_rx_frame.exit.i.if.else82.i_crit_edge

nr_queue_rx_frame.exit.i.if.else82.i_crit_edge:   ; preds = %nr_queue_rx_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else82.i

nr_queue_rx_frame.exit.i.if.then77.i_crit_edge:   ; preds = %nr_queue_rx_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then77.i

if.then77.i:                                      ; preds = %nr_queue_rx_frame.exit.i.if.then77.i_crit_edge, %nr_queue_rx_frame.exit.thread.i
  %96 = ptrtoint ptr %vr.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %vr.i, align 2
  %98 = add i16 %97, 1
  %99 = and i16 %98, 255
  store i16 %99, ptr %vr.i, align 2
  br label %if.end94.i

if.else82.i:                                      ; preds = %nr_queue_rx_frame.exit.i.if.else82.i_crit_edge, %if.then6.i.i.if.else82.i_crit_edge
  %100 = ptrtoint ptr %condition34.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %condition34.i, align 1
  %102 = or i8 %101, 8
  store i8 %102, ptr %condition34.i, align 1
  call void @skb_queue_tail(ptr noundef nonnull %temp_queue.i, ptr noundef nonnull %call62201.i) #3
  br label %if.end94.i

if.else88.i:                                      ; preds = %while.body.i
  %call89.i = call i32 @nr_in_rx_window(ptr noundef %sk, i16 noundef zeroext %69) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %tobool90.not.i = icmp eq i32 %call89.i, 0
  br i1 %tobool90.not.i, label %if.else92.i, label %if.then91.i

if.then91.i:                                      ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @skb_queue_tail(ptr noundef nonnull %temp_queue.i, ptr noundef nonnull %call62201.i) #3
  br label %if.end94.i

if.else92.i:                                      ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @kfree_skb_reason(ptr noundef nonnull %call62201.i, i32 noundef 0) #3
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.else92.i, %if.then91.i, %if.else82.i, %if.then77.i
  %call62.i = call ptr @skb_dequeue(ptr noundef %reseq_queue.i) #3
  %cmp.not.i = icmp eq ptr %call62.i, null
  br i1 %cmp.not.i, label %if.end94.i.while.cond95.preheader.i_crit_edge, label %if.end94.i.while.body.i_crit_edge

if.end94.i.while.body.i_crit_edge:                ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

if.end94.i.while.cond95.preheader.i_crit_edge:    ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond95.preheader.i

while.body99.i:                                   ; preds = %while.body99.i.while.body99.i_crit_edge, %while.cond95.preheader.i.while.body99.i_crit_edge
  %call96206.i = phi ptr [ %call96.i, %while.body99.i.while.body99.i_crit_edge ], [ %call96204.i, %while.cond95.preheader.i.while.body99.i_crit_edge ]
  call void @skb_queue_tail(ptr noundef %reseq_queue.i, ptr noundef nonnull %call96206.i) #3
  %call96.i = call ptr @skb_dequeue(ptr noundef nonnull %temp_queue.i) #3
  %cmp97.not.i = icmp eq ptr %call96.i, null
  br i1 %cmp97.not.i, label %while.body99.i.do.cond.i_crit_edge, label %while.body99.i.while.body99.i_crit_edge

while.body99.i.while.body99.i_crit_edge:          ; preds = %while.body99.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body99.i

while.body99.i.do.cond.i_crit_edge:               ; preds = %while.body99.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.cond.i

do.cond.i:                                        ; preds = %while.body99.i.do.cond.i_crit_edge, %while.cond95.preheader.i.do.cond.i_crit_edge
  %103 = ptrtoint ptr %vr.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %vr.i, align 2
  %cmp105.not.i = icmp eq i16 %62, %104
  br i1 %cmp105.not.i, label %do.end.i, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

do.end.i:                                         ; preds = %do.cond.i
  %conv104.i = zext i16 %62 to i32
  %vl.i = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 16
  %105 = ptrtoint ptr %vl.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %vl.i, align 2
  %conv107.i = zext i16 %106 to i32
  %window.i30 = getelementptr inbounds %struct.nr_sock, ptr %sk, i32 0, i32 12
  %107 = ptrtoint ptr %window.i30 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %window.i30, align 1
  %conv108.i = zext i8 %108 to i32
  %add109.i = add nuw nsw i32 %conv108.i, %conv107.i
  %rem110.i = and i32 %add109.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %rem110.i, i32 %conv104.i)
  %cmp113.i = icmp eq i32 %rem110.i, %conv104.i
  br i1 %cmp113.i, label %if.then115.i, label %if.else116.i

if.then115.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @nr_enquiry_response(ptr noundef %sk) #3
  br label %nr_state3_machine.exit

if.else116.i:                                     ; preds = %do.end.i
  %109 = ptrtoint ptr %condition34.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %condition34.i, align 1
  %111 = and i8 %110, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool120.not.i = icmp eq i8 %111, 0
  br i1 %tobool120.not.i, label %if.then121.i, label %if.else116.i.nr_state3_machine.exit_crit_edge

if.else116.i.nr_state3_machine.exit_crit_edge:    ; preds = %if.else116.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nr_state3_machine.exit

if.then121.i:                                     ; preds = %if.else116.i
  call void @__sanitizer_cov_trace_pc() #5
  %or124.i = or i8 %110, 1
  %112 = ptrtoint ptr %condition34.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %or124.i, ptr %condition34.i, align 1
  call void @nr_start_t2timer(ptr noundef %sk) #3
  br label %nr_state3_machine.exit

sw.bb128.i:                                       ; preds = %sw.bb7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_netrom_reset_circuit to i32))
  %113 = load i32, ptr @sysctl_netrom_reset_circuit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool129.not.i = icmp eq i32 %113, 0
  br i1 %tobool129.not.i, label %sw.bb128.i.nr_state3_machine.exit_crit_edge, label %if.then130.i

sw.bb128.i.nr_state3_machine.exit_crit_edge:      ; preds = %sw.bb128.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nr_state3_machine.exit

if.then130.i:                                     ; preds = %sw.bb128.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nr_disconnect(ptr noundef %sk, i32 noundef 104) #3
  br label %nr_state3_machine.exit

nr_state3_machine.exit:                           ; preds = %if.then130.i, %sw.bb128.i.nr_state3_machine.exit_crit_edge, %if.then121.i, %if.else116.i.nr_state3_machine.exit_crit_edge, %if.then115.i, %if.end54.i.nr_state3_machine.exit_crit_edge, %if.else22.i, %if.then21.i, %if.then15.i, %if.end.i.nr_state3_machine.exit_crit_edge, %sw.bb2.i26, %sw.bb1.i25, %sw.bb.i24, %sw.bb7.nr_state3_machine.exit_crit_edge
  %queued.0.i = phi i32 [ 0, %sw.bb7.nr_state3_machine.exit_crit_edge ], [ 0, %if.then130.i ], [ 0, %sw.bb128.i.nr_state3_machine.exit_crit_edge ], [ 1, %if.end54.i.nr_state3_machine.exit_crit_edge ], [ 1, %if.then115.i ], [ 1, %if.else116.i.nr_state3_machine.exit_crit_edge ], [ 1, %if.then121.i ], [ 0, %if.then15.i ], [ 0, %if.then21.i ], [ 0, %if.else22.i ], [ 0, %if.end.i.nr_state3_machine.exit_crit_edge ], [ 0, %sw.bb2.i26 ], [ 0, %sw.bb1.i25 ], [ 0, %sw.bb.i24 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %temp_queue.i) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %nr_state3_machine.exit, %sw.epilog.sink.split.i, %sw.bb3.i.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %if.then7.i, %sw.bb6.i.sw.epilog_crit_edge, %sw.bb5.i, %if.then.i, %sw.bb.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %queued.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %queued.0.i, %nr_state3_machine.exit ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %sw.bb.i.sw.epilog_crit_edge ], [ 0, %if.then.i ], [ 0, %sw.bb5.i ], [ 0, %sw.bb6.i.sw.epilog_crit_edge ], [ 0, %if.then7.i ], [ 0, %sw.bb5.sw.epilog_crit_edge ], [ 0, %sw.bb3.i.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split.i ]
  call void @nr_kick(ptr noundef %sk) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %queued.0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_kick(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_stop_t1timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_start_idletimer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_disconnect(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_write_internal(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_start_t4timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_stop_t4timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_validate_nr(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_frames_acked(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_send_nak_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_check_iframes_acked(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_in_rx_window(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_enquiry_response(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nr_start_t2timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @skb_queue_head_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
