; ModuleID = '/llk/IR_all_yes/net/rose/rose_in.c_pt.bc'
source_filename = "../net/rose/rose_in.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rose_sock = type { %struct.sock, %struct.rose_address, %struct.rose_address, %struct.ax25_address, %struct.ax25_address, i8, i8, [6 x %struct.ax25_address], [6 x %struct.ax25_address], ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, i32, i32, i32, %struct.sk_buff_head, %struct.rose_facilities_struct, %struct.timer_list, %struct.timer_list }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.156, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.157, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.158, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.152, [0 x i32], %union.anon.153, i16, i16, %union.anon.154, %struct.refcount_struct, [0 x i32], %union.anon.155 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.152 = type { i32 }
%union.anon.153 = type { %struct.hlist_node }
%union.anon.154 = type { i32 }
%union.anon.155 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.156 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.157 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.158 = type { ptr }
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
%struct.rose_address = type { [5 x i8] }
%struct.ax25_address = type { [7 x i8] }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.rose_facilities_struct = type { %struct.rose_address, %struct.rose_address, %struct.ax25_address, %struct.ax25_address, i8, i8, [6 x %struct.ax25_address], [6 x %struct.ax25_address], i32, %struct.rose_address, %struct.ax25_address }
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
%struct.rose_neigh = type { ptr, %struct.ax25_address, ptr, ptr, ptr, i16, i16, i32, i8, i8, i8, %struct.sk_buff_head, %struct.timer_list, %struct.timer_list }

@sysctl_rose_window_size = external dso_local local_unnamed_addr global i32, align 4
@rose_state3_machine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014ROSE: unknown %02X in state 3\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rose_state3_machine\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/rose/rose_in.c\00", [45 x i8] zeroinitializer }, align 32
@rose_state3_machine._entry_ptr = internal global ptr @rose_state3_machine._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 15, i64 19]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 19, i64 23]
@__sancov_gen_cov_switch_values.5 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 5, i64 19, i64 27]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 19, i64 27, i64 31]
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [22 x i8] c"../net/rose/rose_in.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 201, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @rose_state3_machine._entry, ptr @rose_state3_machine._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rose_state3_machine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rose_process_rx_frame(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %ns = alloca i32, align 4
  %nr = alloca i32, align 4
  %q = alloca i32, align 4
  %d = alloca i32, align 4
  %m = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ns) #4
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ns, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr) #4
  %1 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %nr, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %q) #4
  %2 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %q, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d) #4
  %3 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %d, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #4
  %4 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %m, align 4, !annotation !15
  %state = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 13
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @rose_decode(ptr noundef %skb, ptr noundef nonnull %ns, ptr noundef nonnull %nr, ptr noundef nonnull %q, ptr noundef nonnull %d, ptr noundef nonnull %m) #4
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %state, align 8
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %8, label %if.end.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb5
    i8 3, label %sw.bb7
    i8 4, label %sw.bb9
    i8 5, label %sw.bb11
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %10 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %call, label %sw.bb.sw.epilog_crit_edge [
    i32 15, label %sw.bb.i
    i32 19, label %sw.bb1.i
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb
  call void @rose_stop_timer(ptr noundef %sk) #4
  call void @rose_start_idletimer(ptr noundef %sk) #4
  %condition.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 14
  %11 = ptrtoint ptr %condition.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %condition.i, align 1
  %vs.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 19
  %12 = ptrtoint ptr %vs.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 0, ptr %vs.i, align 2
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %state, align 8
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %14 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store volatile i8 1, ptr %skc_state.i, align 2
  %15 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and1.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %sw.bb.i.sw.epilog_crit_edge

sw.bb.i.sw.epilog_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %18 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk_state_change.i, align 4
  call void %19(ptr noundef %sk) #4
  br label %sw.epilog

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  call void @rose_write_internal(ptr noundef %sk, i32 noundef 23) #4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %21, i32 3
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %23 to i32
  %arrayidx3.i = getelementptr i8, ptr %21, i32 4
  %24 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %25 to i32
  call void @rose_disconnect(ptr noundef %sk, i32 noundef 111, i32 noundef %conv.i, i32 noundef %conv4.i) #4
  %neighbour.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 9
  %26 = ptrtoint ptr %neighbour.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %neighbour.i, align 8
  %use.i = getelementptr inbounds %struct.rose_neigh, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %use.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %use.i, align 2
  %dec.i = add i16 %29, -1
  store i16 %dec.i, ptr %use.i, align 2
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %30 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %call, label %sw.bb5.sw.epilog_crit_edge [
    i32 19, label %sw.bb.i39
    i32 23, label %sw.bb4.i
  ]

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb.i39:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  call void @rose_write_internal(ptr noundef %sk, i32 noundef 23) #4
  %data.i36 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %31 = ptrtoint ptr %data.i36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i36, align 4
  %arrayidx.i37 = getelementptr i8, ptr %32, i32 3
  %33 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i37, align 1
  %conv.i38 = zext i8 %34 to i32
  %arrayidx2.i = getelementptr i8, ptr %32, i32 4
  %35 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %36 to i32
  call void @rose_disconnect(ptr noundef %sk, i32 noundef 0, i32 noundef %conv.i38, i32 noundef %conv3.i) #4
  br label %sw.epilog.sink.split.i

sw.bb4.i:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  call void @rose_disconnect(ptr noundef %sk, i32 noundef 0, i32 noundef -1, i32 noundef -1) #4
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb4.i, %sw.bb.i39
  %neighbour.i40 = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 9
  %37 = ptrtoint ptr %neighbour.i40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %neighbour.i40, align 8
  %use.i41 = getelementptr inbounds %struct.rose_neigh, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %use.i41 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %use.i41, align 2
  %dec7.i = add i16 %40, -1
  store i16 %dec7.i, ptr %use.i41, align 2
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %41 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ns, align 4
  %43 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr, align 4
  %45 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %call, label %do.end.i [
    i32 27, label %sw.bb.i44
    i32 19, label %sw.bb1.i53
    i32 1, label %sw.bb7.sw.bb5.i_crit_edge
    i32 5, label %sw.bb7.sw.bb5.i_crit_edge77
    i32 0, label %sw.bb23.i
  ]

sw.bb7.sw.bb5.i_crit_edge77:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5.i

sw.bb7.sw.bb5.i_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5.i

sw.bb.i44:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  call void @rose_stop_timer(ptr noundef %sk) #4
  call void @rose_start_idletimer(ptr noundef %sk) #4
  call void @rose_write_internal(ptr noundef %sk, i32 noundef 31) #4
  %condition.i42 = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 14
  %46 = ptrtoint ptr %condition.i42 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %condition.i42, align 1
  %vs.i43 = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 19
  %47 = ptrtoint ptr %vs.i43 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 0, ptr %vs.i43, align 2
  call void @rose_requeue_frames(ptr noundef %sk) #4
  br label %sw.epilog

sw.bb1.i53:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  call void @rose_write_internal(ptr noundef %sk, i32 noundef 23) #4
  %data.i45 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %48 = ptrtoint ptr %data.i45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i45, align 4
  %arrayidx.i46 = getelementptr i8, ptr %49, i32 3
  %50 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i46, align 1
  %conv.i47 = zext i8 %51 to i32
  %arrayidx3.i48 = getelementptr i8, ptr %49, i32 4
  %52 = ptrtoint ptr %arrayidx3.i48 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx3.i48, align 1
  %conv4.i49 = zext i8 %53 to i32
  call void @rose_disconnect(ptr noundef %sk, i32 noundef 0, i32 noundef %conv.i47, i32 noundef %conv4.i49) #4
  %neighbour.i50 = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 9
  %54 = ptrtoint ptr %neighbour.i50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %neighbour.i50, align 8
  %use.i51 = getelementptr inbounds %struct.rose_neigh, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %use.i51 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %use.i51, align 2
  %dec.i52 = add i16 %57, -1
  store i16 %dec.i52, ptr %use.i51, align 2
  br label %sw.epilog

sw.bb5.i:                                         ; preds = %sw.bb7.sw.bb5.i_crit_edge, %sw.bb7.sw.bb5.i_crit_edge77
  %conv6.i = trunc i32 %44 to i16
  %call.i = call i32 @rose_validate_nr(ptr noundef %sk, i16 noundef zeroext %conv6.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i55, label %if.else.i

if.then.i55:                                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @rose_write_internal(ptr noundef %sk, i32 noundef 27) #4
  %condition7.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 14
  %58 = ptrtoint ptr %condition7.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %condition7.i, align 1
  %vs8.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 19
  %59 = ptrtoint ptr %vs8.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 0, ptr %vs8.i, align 2
  %60 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 4, ptr %state, align 8
  call void @rose_start_t2timer(ptr noundef %sk) #4
  call void @rose_stop_idletimer(ptr noundef %sk) #4
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb5.i
  call void @rose_frames_acked(ptr noundef %sk, i16 noundef zeroext %conv6.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call)
  %cmp.i = icmp eq i32 %call, 5
  %condition15.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 14
  %61 = ptrtoint ptr %condition15.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %condition15.i, align 1
  br i1 %cmp.i, label %if.then14.i, label %if.else18.i

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %63 = or i8 %62, 2
  %64 = ptrtoint ptr %condition15.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %condition15.i, align 1
  br label %sw.epilog

if.else18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %65 = and i8 %62, -3
  %66 = ptrtoint ptr %condition15.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %condition15.i, align 1
  br label %sw.epilog

sw.bb23.i:                                        ; preds = %sw.bb7
  %condition24.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 14
  %67 = ptrtoint ptr %condition24.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %condition24.i, align 1
  %69 = and i8 %68, -3
  store i8 %69, ptr %condition24.i, align 1
  %conv28.i = trunc i32 %44 to i16
  %call29.i = call i32 @rose_validate_nr(ptr noundef %sk, i16 noundef zeroext %conv28.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.end38.i

if.then31.i:                                      ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @rose_write_internal(ptr noundef %sk, i32 noundef 27) #4
  %70 = ptrtoint ptr %condition24.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %condition24.i, align 1
  %vs33.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 19
  %71 = ptrtoint ptr %vs33.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 8)
  store i64 0, ptr %vs33.i, align 2
  %72 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 4, ptr %state, align 8
  call void @rose_start_t2timer(ptr noundef %sk) #4
  call void @rose_stop_idletimer(ptr noundef %sk) #4
  br label %sw.epilog

if.end38.i:                                       ; preds = %sw.bb23.i
  call void @rose_frames_acked(ptr noundef %sk, i16 noundef zeroext %conv28.i) #4
  %vr40.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 20
  %73 = ptrtoint ptr %vr40.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %vr40.i, align 8
  %conv41.i = zext i16 %74 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %conv41.i)
  %cmp42.i = icmp eq i32 %42, %conv41.i
  br i1 %cmp42.i, label %if.then44.i, label %if.end38.i.if.end73.i_crit_edge

if.end38.i.if.end73.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end73.i

if.then44.i:                                      ; preds = %if.end38.i
  call void @rose_start_idletimer(ptr noundef %sk) #4
  %call45.i = call i32 @sk_filter_trim_cap(ptr noundef %sk, ptr noundef %skb, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp46.i = icmp eq i32 %call45.i, 0
  br i1 %cmp46.i, label %land.lhs.true.i, label %if.then44.i.if.else56.i_crit_edge

if.then44.i.if.else56.i_crit_edge:                ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else56.i

land.lhs.true.i:                                  ; preds = %if.then44.i
  %call48.i = call i32 @__sock_queue_rcv_skb(ptr noundef %sk, ptr noundef %skb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.i = icmp eq i32 %call48.i, 0
  br i1 %cmp49.i, label %if.then51.i, label %land.lhs.true.i.if.else56.i_crit_edge

land.lhs.true.i.if.else56.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else56.i

if.then51.i:                                      ; preds = %land.lhs.true.i
  %75 = ptrtoint ptr %vr40.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %vr40.i, align 8
  %77 = add i16 %76, 1
  %78 = and i16 %77, 7
  store i16 %78, ptr %vr40.i, align 8
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #4
  %79 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %sk_backlog.i, align 4
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %81 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sk_rcvbuf.i, align 8
  %shr.i = ashr i32 %82, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %shr.i)
  %cmp65.i = icmp sgt i32 %80, %shr.i
  br i1 %cmp65.i, label %if.then67.i, label %if.then51.i.if.end73.i_crit_edge

if.then51.i.if.end73.i_crit_edge:                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end73.i

if.else56.i:                                      ; preds = %land.lhs.true.i.if.else56.i_crit_edge, %if.then44.i.if.else56.i_crit_edge
  call void @rose_write_internal(ptr noundef %sk, i32 noundef 27) #4
  %83 = ptrtoint ptr %condition24.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %condition24.i, align 1
  %vs58.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 19
  %84 = ptrtoint ptr %vs58.i to i32
  call void @__asan_storeN_noabort(i32 %84, i32 8)
  store i64 0, ptr %vs58.i, align 2
  %85 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 4, ptr %state, align 8
  call void @rose_start_t2timer(ptr noundef %sk) #4
  call void @rose_stop_idletimer(ptr noundef %sk) #4
  br label %sw.epilog

if.then67.i:                                      ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #6
  %86 = ptrtoint ptr %condition24.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %condition24.i, align 1
  %88 = or i8 %87, 4
  store i8 %88, ptr %condition24.i, align 1
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then67.i, %if.then51.i.if.end73.i_crit_edge, %if.end38.i.if.end73.i_crit_edge
  %queued.0.i = phi i32 [ 1, %if.then67.i ], [ 1, %if.then51.i.if.end73.i_crit_edge ], [ 0, %if.end38.i.if.end73.i_crit_edge ]
  %vl74.i = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 22
  %89 = ptrtoint ptr %vl74.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %vl74.i, align 4
  %conv75.i = zext i16 %90 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_rose_window_size to i32))
  %91 = load i32, ptr @sysctl_rose_window_size, align 4
  %add76.i = add i32 %91, %conv75.i
  %rem77.i = srem i32 %add76.i, 8
  %92 = ptrtoint ptr %vr40.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %vr40.i, align 8
  %conv79.i = zext i16 %93 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem77.i, i32 %conv79.i)
  %cmp80.i = icmp eq i32 %rem77.i, %conv79.i
  %94 = ptrtoint ptr %condition24.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %condition24.i, align 1
  br i1 %cmp80.i, label %if.then82.i, label %if.else87.i

if.then82.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #6
  %96 = and i8 %95, -2
  %97 = ptrtoint ptr %condition24.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %condition24.i, align 1
  call void @rose_stop_timer(ptr noundef %sk) #4
  call void @rose_enquiry_response(ptr noundef %sk) #4
  br label %sw.epilog

if.else87.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #6
  %98 = or i8 %95, 1
  %99 = ptrtoint ptr %condition24.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %condition24.i, align 1
  call void @rose_start_hbtimer(ptr noundef %sk) #4
  br label %sw.epilog

do.end.i:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  %call93.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #7
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %100 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %call, label %sw.bb9.sw.epilog_crit_edge [
    i32 27, label %sw.bb.i56
    i32 31, label %sw.bb9.sw.bb1.i60_crit_edge
    i32 19, label %sw.bb2.i
  ]

sw.bb9.sw.bb1.i60_crit_edge:                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1.i60

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb.i56:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #6
  call void @rose_write_internal(ptr noundef %sk, i32 noundef 31) #4
  br label %sw.bb1.i60

sw.bb1.i60:                                       ; preds = %sw.bb.i56, %sw.bb9.sw.bb1.i60_crit_edge
  call void @rose_stop_timer(ptr noundef %sk) #4
  call void @rose_start_idletimer(ptr noundef %sk) #4
  %condition.i57 = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 14
  %101 = ptrtoint ptr %condition.i57 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %condition.i57, align 1
  %vs.i58 = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 19
  %102 = ptrtoint ptr %vs.i58 to i32
  call void @__asan_storeN_noabort(i32 %102, i32 8)
  store i64 0, ptr %vs.i58, align 2
  %103 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 3, ptr %state, align 8
  call void @rose_requeue_frames(ptr noundef %sk) #4
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #6
  call void @rose_write_internal(ptr noundef %sk, i32 noundef 23) #4
  %data.i61 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %104 = ptrtoint ptr %data.i61 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data.i61, align 4
  %arrayidx.i62 = getelementptr i8, ptr %105, i32 3
  %106 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx.i62, align 1
  %conv.i63 = zext i8 %107 to i32
  %arrayidx4.i = getelementptr i8, ptr %105, i32 4
  %108 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %109 to i32
  call void @rose_disconnect(ptr noundef %sk, i32 noundef 0, i32 noundef %conv.i63, i32 noundef %conv5.i) #4
  %neighbour.i64 = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 9
  %110 = ptrtoint ptr %neighbour.i64 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %neighbour.i64, align 8
  %use.i65 = getelementptr inbounds %struct.rose_neigh, ptr %111, i32 0, i32 6
  %112 = ptrtoint ptr %use.i65 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %use.i65, align 2
  %dec.i66 = add i16 %113, -1
  store i16 %dec.i66, ptr %use.i65, align 2
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %call)
  %cmp.i67 = icmp eq i32 %call, 19
  br i1 %cmp.i67, label %if.then.i76, label %sw.bb11.sw.epilog_crit_edge

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then.i76:                                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #6
  call void @rose_write_internal(ptr noundef %sk, i32 noundef 23) #4
  %data.i68 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %114 = ptrtoint ptr %data.i68 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data.i68, align 4
  %arrayidx.i69 = getelementptr i8, ptr %115, i32 3
  %116 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.i69, align 1
  %conv.i70 = zext i8 %117 to i32
  %arrayidx2.i71 = getelementptr i8, ptr %115, i32 4
  %118 = ptrtoint ptr %arrayidx2.i71 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx2.i71, align 1
  %conv3.i72 = zext i8 %119 to i32
  call void @rose_disconnect(ptr noundef %sk, i32 noundef 0, i32 noundef %conv.i70, i32 noundef %conv3.i72) #4
  %neighbour.i73 = getelementptr inbounds %struct.rose_sock, ptr %sk, i32 0, i32 9
  %120 = ptrtoint ptr %neighbour.i73 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %neighbour.i73, align 8
  %use.i74 = getelementptr inbounds %struct.rose_neigh, ptr %121, i32 0, i32 6
  %122 = ptrtoint ptr %use.i74 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %use.i74, align 2
  %dec.i75 = add i16 %123, -1
  store i16 %dec.i75, ptr %use.i74, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i76, %sw.bb11.sw.epilog_crit_edge, %sw.bb2.i, %sw.bb1.i60, %sw.bb9.sw.epilog_crit_edge, %do.end.i, %if.else87.i, %if.then82.i, %if.else56.i, %if.then31.i, %if.else18.i, %if.then14.i, %if.then.i55, %sw.bb1.i53, %sw.bb.i44, %sw.epilog.sink.split.i, %sw.bb5.sw.epilog_crit_edge, %sw.bb1.i, %if.then.i, %sw.bb.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %queued.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %sw.bb.i.sw.epilog_crit_edge ], [ 0, %if.then.i ], [ 0, %sw.bb1.i ], [ 0, %sw.bb5.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split.i ], [ 0, %do.end.i ], [ %queued.0.i, %if.then82.i ], [ %queued.0.i, %if.else87.i ], [ 0, %if.else56.i ], [ 0, %if.then31.i ], [ 0, %if.then14.i ], [ 0, %if.else18.i ], [ 0, %if.then.i55 ], [ 0, %sw.bb1.i53 ], [ 0, %sw.bb.i44 ], [ 0, %sw.bb9.sw.epilog_crit_edge ], [ 0, %sw.bb1.i60 ], [ 0, %sw.bb2.i ], [ 0, %sw.bb11.sw.epilog_crit_edge ], [ 0, %if.then.i76 ]
  call void @rose_kick(ptr noundef %sk) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %queued.0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %q) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ns) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rose_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_kick(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_stop_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_start_idletimer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_write_internal(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_disconnect(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_requeue_frames(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rose_validate_nr(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_start_t2timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_stop_idletimer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_frames_acked(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_filter_trim_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_enquiry_response(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rose_start_hbtimer(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rose/rose_in.c", i32 201, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rose_state3_machine._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rose_state3_machine._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
