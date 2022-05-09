; ModuleID = '/llk/IR_all_yes/net/x25/x25_in.c_pt.bc'
source_filename = "../net/x25/x25_in.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.x25_address = type { [16 x i8] }
%struct.x25_sock = type { %struct.sock, %struct.x25_address, %struct.x25_address, ptr, i32, i32, i8, i8, i16, i16, i16, i16, i32, i32, i32, i32, i16, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.timer_list, %struct.x25_causediag, %struct.x25_facilities, %struct.x25_dte_facilities, %struct.x25_calluserdata, i32 }
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
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.x25_causediag = type { i8, i8 }
%struct.x25_facilities = type { i32, i32, i32, i32, i32, i32 }
%struct.x25_dte_facilities = type { i16, i16, i16, i8, i8, i8, i8, [20 x i8], [20 x i8] }
%struct.x25_calluserdata = type { i32, [128 x i8] }
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
%struct.x25_neigh = type { %struct.list_head, ptr, i32, i32, %struct.sk_buff_head, i32, %struct.timer_list, i32, %struct.refcount_struct }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.114, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.114 = type { ptr }

@x25_state3_machine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014X25: unknown %02X in state 3\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"x25_state3_machine\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/x25/x25_in.c\00", [47 x i8] zeroinitializer }, align 32
@x25_state3_machine._entry_ptr = internal global ptr @x25_state3_machine._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 11, i64 15, i64 19]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 19, i64 23]
@__sancov_gen_cov_switch_values.5 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 5, i64 19, i64 27, i64 35, i64 39]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 19, i64 27, i64 31]
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [20 x i8] c"../net/x25/x25_in.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 326, i32 4 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @x25_state3_machine._entry, ptr @x25_state3_machine._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_state3_machine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x25_process_rx_frame(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %source_addr.i = alloca %struct.x25_address, align 1
  %dest_addr.i = alloca %struct.x25_address, align 1
  %ns = alloca i32, align 4
  %nr = alloca i32, align 4
  %q = alloca i32, align 4
  %d = alloca i32, align 4
  %m = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ns) #5
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ns, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr) #5
  %1 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %nr, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %q) #5
  %2 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %q, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d) #5
  %3 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %d, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #5
  %4 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %m, align 4, !annotation !15
  %state = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 6
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @x25_decode(ptr noundef %sk, ptr noundef %skb, ptr noundef nonnull %ns, ptr noundef nonnull %nr, ptr noundef nonnull %q, ptr noundef nonnull %d, ptr noundef nonnull %m) #5
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %state, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %8, label %if.end.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb6
    i8 3, label %sw.bb8
    i8 4, label %sw.bb10
    i8 5, label %sw.bb12
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %source_addr.i) #5
  %10 = call ptr @memset(ptr %source_addr.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest_addr.i) #5
  %11 = call ptr @memset(ptr %dest_addr.i, i32 255, i32 16)
  %12 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %call2, label %sw.bb.x25_state1_machine.exit_crit_edge [
    i32 15, label %sw.bb.i
    i32 11, label %sw.bb34.i
    i32 19, label %sw.bb36.i
  ]

sw.bb.x25_state1_machine.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %x25_state1_machine.exit

sw.bb.i:                                          ; preds = %sw.bb
  call void @x25_stop_timer(ptr noundef %sk) #5
  %condition.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 7
  %13 = call ptr @memset(ptr %condition.i, i32 0, i32 9)
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %state, align 4
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %15 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store volatile i8 1, ptr %skc_state.i, align 2
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %18 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %17, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ult i32 %sub.i.i.i, 3
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb.i.if.end.i_crit_edge, !prof !16

sw.bb.i.if.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp3.i.i = icmp ult i32 %17, 3
  br i1 %cmp3.i.i, label %if.end.i.i.out_clear.i_crit_edge, label %pskb_may_pull.exit.i, !prof !16

if.end.i.i.out_clear.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clear.i

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub nuw nsw i32 3, %sub.i.i.i
  %call13.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #5
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.out_clear.i_crit_edge, label %pskb_may_pull.exit.i.if.end.i_crit_edge

pskb_may_pull.exit.i.if.end.i_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

pskb_may_pull.exit.i.out_clear.i_crit_edge:       ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clear.i

if.end.i:                                         ; preds = %pskb_may_pull.exit.i.if.end.i_crit_edge, %sw.bb.i.if.end.i_crit_edge
  %call2.i = call ptr @skb_pull(ptr noundef %skb, i32 noundef 3) #5
  %call3.i = call i32 @x25_parse_address_block(ptr noundef %skb, ptr noundef nonnull %source_addr.i, ptr noundef nonnull %dest_addr.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp sgt i32 %call3.i, 0
  br i1 %cmp.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = call ptr @skb_pull(ptr noundef %skb, i32 noundef %call3.i) #5
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp6.i = icmp slt i32 %call3.i, 0
  br i1 %cmp6.i, label %if.else.i.out_clear.i_crit_edge, label %if.else.i.if.end9.i_crit_edge

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.else.i.out_clear.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clear.i

if.end9.i:                                        ; preds = %if.else.i.if.end9.i_crit_edge, %if.then4.i
  %facilities.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 24
  %dte_facilities.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 25
  %vc_facil_mask.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 27
  %call10.i = call i32 @x25_parse_facilities(ptr noundef %skb, ptr noundef %facilities.i, ptr noundef %dte_facilities.i, ptr noundef %vc_facil_mask.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp sgt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.else14.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %call13.i = call ptr @skb_pull(ptr noundef %skb, i32 noundef %call10.i) #5
  br label %if.end18.i

if.else14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp15.i = icmp slt i32 %call10.i, 0
  br i1 %cmp15.i, label %if.else14.i.out_clear.i_crit_edge, label %if.else14.i.if.end18.i_crit_edge

if.else14.i.if.end18.i_crit_edge:                 ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

if.else14.i.out_clear.i_crit_edge:                ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clear.i

if.end18.i:                                       ; preds = %if.else14.i.if.end18.i_crit_edge, %if.then12.i
  %20 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp20.not.i = icmp eq i32 %21, 0
  br i1 %cmp20.not.i, label %if.end18.i.if.end30.i_crit_edge, label %if.then21.i

if.end18.i.if.end30.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %21)
  %cmp23.i = icmp ugt i32 %21, 128
  br i1 %cmp23.i, label %if.then21.i.out_clear.i_crit_edge, label %if.end25.i

if.then21.i.out_clear.i_crit_edge:                ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clear.i

if.end25.i:                                       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #7
  %calluserdata.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 26
  %cuddata.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 26, i32 1
  %call27.i = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 0, ptr noundef %cuddata.i, i32 noundef %21) #5
  %22 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i.i.i, align 4
  %24 = ptrtoint ptr %calluserdata.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %calluserdata.i, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end25.i, %if.end18.i.if.end30.i_crit_edge
  %25 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %28 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i, label %if.then32.i, label %if.end30.i.x25_state1_machine.exit_crit_edge

if.end30.i.x25_state1_machine.exit_crit_edge:     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %x25_state1_machine.exit

if.then32.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %29 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sk_state_change.i, align 4
  call void %30(ptr noundef %sk) #5
  br label %x25_state1_machine.exit

sw.bb34.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %causediag.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 23
  %31 = ptrtoint ptr %causediag.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %causediag.i, align 8
  %diagnostic.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 23, i32 1
  %32 = ptrtoint ptr %diagnostic.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 72, ptr %diagnostic.i, align 1
  call void @x25_write_internal(ptr noundef %sk, i32 noundef 19) #5
  call void @x25_disconnect(ptr noundef %sk, i32 noundef 106, i8 noundef zeroext 1, i8 noundef zeroext 72) #5
  br label %x25_state1_machine.exit

sw.bb36.i:                                        ; preds = %sw.bb
  %len.i.i1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %33 = ptrtoint ptr %len.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i.i1.i, align 4
  %data_len.i.i2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %35 = ptrtoint ptr %data_len.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_len.i.i2.i, align 8
  %sub.i.i3.i = sub i32 %34, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.i.i3.i)
  %cmp.not.i4.i = icmp ult i32 %sub.i.i3.i, 5
  br i1 %cmp.not.i4.i, label %if.end.i6.i, label %sw.bb36.i.if.end39.i_crit_edge, !prof !16

sw.bb36.i.if.end39.i_crit_edge:                   ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

if.end.i6.i:                                      ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %34)
  %cmp3.i5.i = icmp ult i32 %34, 5
  br i1 %cmp3.i5.i, label %if.end.i6.i.out_clear.i_crit_edge, label %pskb_may_pull.exit12.i, !prof !16

if.end.i6.i.out_clear.i_crit_edge:                ; preds = %if.end.i6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clear.i

pskb_may_pull.exit12.i:                           ; preds = %if.end.i6.i
  %sub.i7.i = sub nuw nsw i32 5, %sub.i.i3.i
  %call13.i8.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i7.i) #5
  %cmp14.i9.not.i = icmp eq ptr %call13.i8.i, null
  br i1 %cmp14.i9.not.i, label %pskb_may_pull.exit12.i.out_clear.i_crit_edge, label %pskb_may_pull.exit12.i.if.end39.i_crit_edge

pskb_may_pull.exit12.i.if.end39.i_crit_edge:      ; preds = %pskb_may_pull.exit12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

pskb_may_pull.exit12.i.out_clear.i_crit_edge:     ; preds = %pskb_may_pull.exit12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clear.i

if.end39.i:                                       ; preds = %pskb_may_pull.exit12.i.if.end39.i_crit_edge, %sw.bb36.i.if.end39.i_crit_edge
  call void @x25_write_internal(ptr noundef %sk, i32 noundef 23) #5
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %38, i32 3
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i, align 1
  %arrayidx41.i = getelementptr i8, ptr %38, i32 4
  %41 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx41.i, align 1
  call void @x25_disconnect(ptr noundef %sk, i32 noundef 111, i8 noundef zeroext %40, i8 noundef zeroext %42) #5
  br label %x25_state1_machine.exit

out_clear.i:                                      ; preds = %pskb_may_pull.exit12.i.out_clear.i_crit_edge, %if.end.i6.i.out_clear.i_crit_edge, %if.then21.i.out_clear.i_crit_edge, %if.else14.i.out_clear.i_crit_edge, %if.else.i.out_clear.i_crit_edge, %pskb_may_pull.exit.i.out_clear.i_crit_edge, %if.end.i.i.out_clear.i_crit_edge
  call void @x25_write_internal(ptr noundef %sk, i32 noundef 19) #5
  %43 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %state, align 4
  call void @x25_start_t23timer(ptr noundef %sk) #5
  br label %x25_state1_machine.exit

x25_state1_machine.exit:                          ; preds = %out_clear.i, %if.end39.i, %sw.bb34.i, %if.then32.i, %if.end30.i.x25_state1_machine.exit_crit_edge, %sw.bb.x25_state1_machine.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest_addr.i) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %source_addr.i) #5
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %44 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %call2, label %sw.bb6.sw.epilog_crit_edge [
    i32 19, label %sw.bb.i42
    i32 23, label %sw.bb3.i
  ]

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb.i42:                                        ; preds = %sw.bb6
  %len.i.i.i38 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %45 = ptrtoint ptr %len.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i.i.i38, align 4
  %data_len.i.i.i39 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %47 = ptrtoint ptr %data_len.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_len.i.i.i39, align 8
  %sub.i.i.i40 = sub i32 %46, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.i.i.i40)
  %cmp.not.i.i41 = icmp ult i32 %sub.i.i.i40, 5
  br i1 %cmp.not.i.i41, label %if.end.i.i44, label %sw.bb.i42.if.end.i51_crit_edge, !prof !16

sw.bb.i42.if.end.i51_crit_edge:                   ; preds = %sw.bb.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i51

if.end.i.i44:                                     ; preds = %sw.bb.i42
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %46)
  %cmp3.i.i43 = icmp ult i32 %46, 5
  br i1 %cmp3.i.i43, label %if.end.i.i44.out_clear.i52_crit_edge, label %pskb_may_pull.exit.i48, !prof !16

if.end.i.i44.out_clear.i52_crit_edge:             ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clear.i52

pskb_may_pull.exit.i48:                           ; preds = %if.end.i.i44
  %sub.i.i45 = sub nuw nsw i32 5, %sub.i.i.i40
  %call13.i.i46 = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i45) #5
  %cmp14.i.not.i47 = icmp eq ptr %call13.i.i46, null
  br i1 %cmp14.i.not.i47, label %pskb_may_pull.exit.i48.out_clear.i52_crit_edge, label %pskb_may_pull.exit.i48.if.end.i51_crit_edge

pskb_may_pull.exit.i48.if.end.i51_crit_edge:      ; preds = %pskb_may_pull.exit.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i51

pskb_may_pull.exit.i48.out_clear.i52_crit_edge:   ; preds = %pskb_may_pull.exit.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clear.i52

if.end.i51:                                       ; preds = %pskb_may_pull.exit.i48.if.end.i51_crit_edge, %sw.bb.i42.if.end.i51_crit_edge
  call void @x25_write_internal(ptr noundef %sk, i32 noundef 23) #5
  %data.i49 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %49 = ptrtoint ptr %data.i49 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i49, align 4
  %arrayidx.i50 = getelementptr i8, ptr %50, i32 3
  %51 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i50, align 1
  %arrayidx2.i = getelementptr i8, ptr %50, i32 4
  %53 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx2.i, align 1
  call void @x25_disconnect(ptr noundef %sk, i32 noundef 0, i8 noundef zeroext %52, i8 noundef zeroext %54) #5
  br label %sw.epilog

sw.bb3.i:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  call void @x25_disconnect(ptr noundef %sk, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  br label %sw.epilog

out_clear.i52:                                    ; preds = %pskb_may_pull.exit.i48.out_clear.i52_crit_edge, %if.end.i.i44.out_clear.i52_crit_edge
  call void @x25_write_internal(ptr noundef %sk, i32 noundef 19) #5
  call void @x25_start_t23timer(ptr noundef %sk) #5
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %55 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ns, align 4
  %57 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nr, align 4
  %59 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %m, align 4
  %neighbour.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 3
  %61 = ptrtoint ptr %neighbour.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %neighbour.i, align 8
  %extended.i = getelementptr inbounds %struct.x25_neigh, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %extended.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %extended.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i = icmp eq i32 %64, 0
  %cond.i = select i1 %tobool.not.i, i32 8, i32 128
  %65 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %call2, label %do.end.i [
    i32 27, label %sw.bb.i54
    i32 19, label %sw.bb1.i
    i32 1, label %sw.bb8.sw.bb5.i_crit_edge
    i32 5, label %sw.bb8.sw.bb5.i_crit_edge108
    i32 0, label %sw.bb26.i
    i32 39, label %sw.bb97.i
    i32 35, label %sw.bb98.i
  ]

sw.bb8.sw.bb5.i_crit_edge108:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

sw.bb8.sw.bb5.i_crit_edge:                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

sw.bb.i54:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  call void @x25_write_internal(ptr noundef %sk, i32 noundef 31) #5
  call void @x25_stop_timer(ptr noundef %sk) #5
  %condition.i53 = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 7
  %66 = call ptr @memset(ptr %condition.i53, i32 0, i32 9)
  call void @x25_requeue_frames(ptr noundef %sk) #5
  br label %sw.epilog

sw.bb1.i:                                         ; preds = %sw.bb8
  %len.i.i.i55 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %67 = ptrtoint ptr %len.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len.i.i.i55, align 4
  %data_len.i.i.i56 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %69 = ptrtoint ptr %data_len.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %data_len.i.i.i56, align 8
  %sub.i.i.i57 = sub i32 %68, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.i.i.i57)
  %cmp.not.i.i58 = icmp ult i32 %sub.i.i.i57, 5
  br i1 %cmp.not.i.i58, label %if.end.i.i60, label %sw.bb1.i.if.end.i67_crit_edge, !prof !16

sw.bb1.i.if.end.i67_crit_edge:                    ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i67

if.end.i.i60:                                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %68)
  %cmp3.i.i59 = icmp ult i32 %68, 5
  br i1 %cmp3.i.i59, label %if.end.i.i60.out_clear.i73_crit_edge, label %pskb_may_pull.exit.i64, !prof !16

if.end.i.i60.out_clear.i73_crit_edge:             ; preds = %if.end.i.i60
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clear.i73

pskb_may_pull.exit.i64:                           ; preds = %if.end.i.i60
  %sub.i.i61 = sub nuw nsw i32 5, %sub.i.i.i57
  %call13.i.i62 = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i61) #5
  %cmp14.i.not.i63 = icmp eq ptr %call13.i.i62, null
  br i1 %cmp14.i.not.i63, label %pskb_may_pull.exit.i64.out_clear.i73_crit_edge, label %pskb_may_pull.exit.i64.if.end.i67_crit_edge

pskb_may_pull.exit.i64.if.end.i67_crit_edge:      ; preds = %pskb_may_pull.exit.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i67

pskb_may_pull.exit.i64.out_clear.i73_crit_edge:   ; preds = %pskb_may_pull.exit.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clear.i73

if.end.i67:                                       ; preds = %pskb_may_pull.exit.i64.if.end.i67_crit_edge, %sw.bb1.i.if.end.i67_crit_edge
  call void @x25_write_internal(ptr noundef %sk, i32 noundef 23) #5
  %data.i65 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %71 = ptrtoint ptr %data.i65 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i65, align 4
  %arrayidx.i66 = getelementptr i8, ptr %72, i32 3
  %73 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i66, align 1
  %arrayidx4.i = getelementptr i8, ptr %72, i32 4
  %75 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx4.i, align 1
  call void @x25_disconnect(ptr noundef %sk, i32 noundef 0, i8 noundef zeroext %74, i8 noundef zeroext %76) #5
  br label %sw.epilog

sw.bb5.i:                                         ; preds = %sw.bb8.sw.bb5.i_crit_edge, %sw.bb8.sw.bb5.i_crit_edge108
  %conv.i = trunc i32 %58 to i16
  %call6.i = call i32 @x25_validate_nr(ptr noundef %sk, i16 noundef zeroext %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.else.i70

if.then8.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @x25_clear_queues(ptr noundef %sk) #5
  call void @x25_write_internal(ptr noundef %sk, i32 noundef 27) #5
  call void @x25_start_t22timer(ptr noundef %sk) #5
  %condition9.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 7
  %77 = call ptr @memset(ptr %condition9.i, i32 0, i32 9)
  %78 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 4, ptr %state, align 4
  br label %sw.epilog

if.else.i70:                                      ; preds = %sw.bb5.i
  call void @x25_frames_acked(ptr noundef %sk, i16 noundef zeroext %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call2)
  %cmp.i69 = icmp eq i32 %call2, 5
  %condition17.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 7
  %79 = ptrtoint ptr %condition17.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %condition17.i, align 1
  br i1 %cmp.i69, label %if.then16.i, label %if.else20.i

if.then16.i:                                      ; preds = %if.else.i70
  call void @__sanitizer_cov_trace_pc() #7
  %81 = or i8 %80, 4
  %82 = ptrtoint ptr %condition17.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %condition17.i, align 1
  br label %sw.epilog

if.else20.i:                                      ; preds = %if.else.i70
  call void @__sanitizer_cov_trace_pc() #7
  %83 = and i8 %80, -5
  %84 = ptrtoint ptr %condition17.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %condition17.i, align 1
  br label %sw.epilog

sw.bb26.i:                                        ; preds = %sw.bb8
  %condition27.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 7
  %85 = ptrtoint ptr %condition27.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %condition27.i, align 1
  %87 = and i8 %86, -5
  store i8 %87, ptr %condition27.i, align 1
  %vr31.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 9
  %88 = ptrtoint ptr %vr31.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %vr31.i, align 8
  %conv32.i = zext i16 %89 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %conv32.i)
  %cmp33.not.i = icmp eq i32 %56, %conv32.i
  br i1 %cmp33.not.i, label %lor.lhs.false.i, label %sw.bb26.i.if.then38.i_crit_edge

sw.bb26.i.if.then38.i_crit_edge:                  ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

lor.lhs.false.i:                                  ; preds = %sw.bb26.i
  %conv35.i = trunc i32 %58 to i16
  %call36.i = call i32 @x25_validate_nr(ptr noundef %sk, i16 noundef zeroext %conv35.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %lor.lhs.false.i.if.then38.i_crit_edge, label %if.end45.i

lor.lhs.false.i.if.then38.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

if.then38.i:                                      ; preds = %lor.lhs.false.i.if.then38.i_crit_edge, %sw.bb26.i.if.then38.i_crit_edge
  call void @x25_clear_queues(ptr noundef %sk) #5
  call void @x25_write_internal(ptr noundef %sk, i32 noundef 27) #5
  call void @x25_start_t22timer(ptr noundef %sk) #5
  %90 = call ptr @memset(ptr %condition27.i, i32 0, i32 9)
  %91 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 4, ptr %state, align 4
  br label %sw.epilog

if.end45.i:                                       ; preds = %lor.lhs.false.i
  call void @x25_frames_acked(ptr noundef %sk, i16 noundef zeroext %conv35.i) #5
  %92 = ptrtoint ptr %vr31.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %vr31.i, align 8
  %conv48.i = zext i16 %93 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %conv48.i)
  %cmp49.i = icmp eq i32 %56, %conv48.i
  br i1 %cmp49.i, label %if.then51.i, label %if.end45.i.if.end77.i_crit_edge

if.end45.i.if.end77.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77.i

if.then51.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i.i, label %if.end.i2.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then51.i
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %94 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len.i.i, align 4
  %fraglen.i.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 16
  %96 = ptrtoint ptr %fraglen.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %fraglen.i.i, align 8
  %98 = trunc i32 %95 to i16
  %conv1.i.i = add i16 %97, %98
  store i16 %conv1.i.i, ptr %fraglen.i.i, align 8
  %fragment_queue.i.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 19
  call void @skb_queue_tail(ptr noundef %fragment_queue.i.i, ptr noundef %skb) #5
  %destructor.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %99 = ptrtoint ptr %destructor.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %destructor.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %100, null
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %100(ptr noundef %skb) #5
  br label %skb_orphan.exit.i.i.i

do.body.i.i.i.i:                                  ; preds = %if.then.i.i
  %101 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %tobool3.not.i.i.i.i = icmp eq ptr %103, null
  br i1 %tobool3.not.i.i.i.i, label %do.body.i.i.i.i.skb_orphan.exit.i.i.i_crit_edge, label %do.body7.i.i.i.i, !prof !17

do.body.i.i.i.i.skb_orphan.exit.i.i.i_crit_edge:  ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_orphan.exit.i.i.i

do.body7.i.i.i.i:                                 ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #5, !srcloc !18
  unreachable

skb_orphan.exit.i.i.i:                            ; preds = %do.body.i.i.i.i.skb_orphan.exit.i.i.i_crit_edge, %if.then.i.i.i.i
  %104 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %sk, ptr %104, align 4
  %106 = ptrtoint ptr %destructor.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @sock_rfree, ptr %destructor.i.i.i.i, align 4
  %truesize.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %107 = ptrtoint ptr %truesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %truesize.i.i.i, align 8
  %sk_backlog.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i.i.i, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %sk_backlog.i.i.i, i32 1, i32 3, i32 1) #5
  %109 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i.i.i, ptr %sk_backlog.i.i.i, i32 %108, ptr elementtype(i32) %sk_backlog.i.i.i) #5, !srcloc !19
  %skc_prot.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %110 = ptrtoint ptr %skc_prot.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %skc_prot.i.i.i.i.i, align 8
  %memory_allocated.i.i.i.i.i = getelementptr inbounds %struct.proto, ptr %111, i32 0, i32 32
  %112 = ptrtoint ptr %memory_allocated.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %memory_allocated.i.i.i.i.i, align 4
  %tobool.i.not.i.i.i.i = icmp eq ptr %113, null
  br i1 %tobool.i.not.i.i.i.i, label %skb_orphan.exit.i.i.i.if.then55.i_crit_edge, label %if.end.i.i.i.i

skb_orphan.exit.i.i.i.if.then55.i_crit_edge:      ; preds = %skb_orphan.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then55.i

if.end.i.i.i.i:                                   ; preds = %skb_orphan.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %114 = ptrtoint ptr %truesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %truesize.i.i.i, align 8
  %sk_forward_alloc.i.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %116 = ptrtoint ptr %sk_forward_alloc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %sk_forward_alloc.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %117, %115
  store i32 %sub.i.i.i.i, ptr %sk_forward_alloc.i.i.i.i, align 8
  br label %if.then55.i

if.end.i2.i:                                      ; preds = %if.then51.i
  %fraglen2.i.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 16
  %118 = ptrtoint ptr %fraglen2.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %fraglen2.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %cmp.not.i1.i = icmp eq i16 %119, 0
  br i1 %cmp.not.i1.i, label %if.end.i2.i.if.end32.i.i_crit_edge, label %if.then5.i.i

if.end.i2.i.if.end32.i.i_crit_edge:               ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i.i

if.then5.i.i:                                     ; preds = %if.end.i2.i
  %conv3.i.i = zext i16 %119 to i32
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %120 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %len9.i.i, align 4
  %add10.i.i = add i32 %121, %conv3.i.i
  %call.i.i3.i = call ptr @__alloc_skb(i32 noundef %add10.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #5
  %cmp12.i.i = icmp eq ptr %call.i.i3.i, null
  br i1 %cmp12.i.i, label %if.else60.i, label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then5.i.i
  %fragment_queue16.i.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 19
  call void @skb_queue_tail(ptr noundef %fragment_queue16.i.i, ptr noundef %skb) #5
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i3.i, i32 0, i32 19
  %122 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i3.i, i32 0, i32 18
  %124 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %123 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %125 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i3.i, i32 0, i32 15, i32 0, i32 19
  %126 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  %call18.i.i = call ptr @skb_dequeue(ptr noundef %fragment_queue16.i.i) #5
  %len19.i.i = getelementptr inbounds %struct.sk_buff, ptr %call18.i.i, i32 0, i32 6
  %127 = ptrtoint ptr %len19.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %len19.i.i, align 4
  %call20.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i3.i, i32 noundef %128) #5
  %129 = ptrtoint ptr %len19.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %len19.i.i, align 4
  %data.i72.i.i = getelementptr inbounds %struct.sk_buff, ptr %call18.i.i, i32 0, i32 19
  %131 = ptrtoint ptr %data.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %data.i72.i.i, align 4
  %133 = call ptr @memcpy(ptr %call20.i.i, ptr %132, i32 %130)
  call void @kfree_skb_reason(ptr noundef %call18.i.i, i32 noundef 0) #5
  %call2391.i.i = call ptr @skb_dequeue(ptr noundef %fragment_queue16.i.i) #5
  %cmp24.not92.i.i = icmp eq ptr %call2391.i.i, null
  br i1 %cmp24.not92.i.i, label %if.end15.i.i.while.end.i.i_crit_edge, label %if.end15.i.i.while.body.i.i_crit_edge

if.end15.i.i.while.body.i.i_crit_edge:            ; preds = %if.end15.i.i
  br label %while.body.i.i

if.end15.i.i.while.end.i.i_crit_edge:             ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end15.i.i.while.body.i.i_crit_edge
  %call2393.i.i = phi ptr [ %call23.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %call2391.i.i, %if.end15.i.i.while.body.i.i_crit_edge ]
  %134 = ptrtoint ptr %neighbour.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %neighbour.i, align 8
  %extended.i.i = getelementptr inbounds %struct.x25_neigh, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %extended.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %extended.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool26.not.i.i = icmp eq i32 %137, 0
  %cond.i.i = select i1 %tobool26.not.i.i, i32 3, i32 4
  %call27.i.i = call ptr @skb_pull(ptr noundef nonnull %call2393.i.i, i32 noundef %cond.i.i) #5
  %len28.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2393.i.i, i32 0, i32 6
  %138 = ptrtoint ptr %len28.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %len28.i.i, align 4
  %call29.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i3.i, i32 noundef %139) #5
  %140 = ptrtoint ptr %len28.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %len28.i.i, align 4
  %data.i73.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2393.i.i, i32 0, i32 19
  %142 = ptrtoint ptr %data.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %data.i73.i.i, align 4
  %144 = call ptr @memcpy(ptr %call29.i.i, ptr %143, i32 %141)
  call void @kfree_skb_reason(ptr noundef nonnull %call2393.i.i, i32 noundef 0) #5
  %call23.i.i = call ptr @skb_dequeue(ptr noundef %fragment_queue16.i.i) #5
  %cmp24.not.i.i = icmp eq ptr %call23.i.i, null
  br i1 %cmp24.not.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %if.end15.i.i.while.end.i.i_crit_edge
  %145 = ptrtoint ptr %fraglen2.i.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 0, ptr %fraglen2.i.i, align 8
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %while.end.i.i, %if.end.i2.i.if.end32.i.i_crit_edge
  %skbn.0.i.i = phi ptr [ %call.i.i3.i, %while.end.i.i ], [ %skb, %if.end.i2.i.if.end32.i.i_crit_edge ]
  %destructor.i.i74.i.i = getelementptr inbounds %struct.sk_buff, ptr %skbn.0.i.i, i32 0, i32 4, i32 0, i32 1
  %146 = ptrtoint ptr %destructor.i.i74.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %destructor.i.i74.i.i, align 4
  %tobool.not.i.i75.i.i = icmp eq ptr %147, null
  br i1 %tobool.not.i.i75.i.i, label %do.body.i.i78.i.i, label %if.then.i.i76.i.i

if.then.i.i76.i.i:                                ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %147(ptr noundef %skbn.0.i.i) #5
  br label %skb_orphan.exit.i86.i.i

do.body.i.i78.i.i:                                ; preds = %if.end32.i.i
  %148 = getelementptr inbounds %struct.sk_buff, ptr %skbn.0.i.i, i32 0, i32 1
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %148, align 4
  %tobool3.not.i.i77.i.i = icmp eq ptr %150, null
  br i1 %tobool3.not.i.i77.i.i, label %do.body.i.i78.i.i.skb_orphan.exit.i86.i.i_crit_edge, label %do.body7.i.i79.i.i, !prof !17

do.body.i.i78.i.i.skb_orphan.exit.i86.i.i_crit_edge: ; preds = %do.body.i.i78.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_orphan.exit.i86.i.i

do.body7.i.i79.i.i:                               ; preds = %do.body.i.i78.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #5, !srcloc !18
  unreachable

skb_orphan.exit.i86.i.i:                          ; preds = %do.body.i.i78.i.i.skb_orphan.exit.i86.i.i_crit_edge, %if.then.i.i76.i.i
  %151 = getelementptr inbounds %struct.sk_buff, ptr %skbn.0.i.i, i32 0, i32 1
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %sk, ptr %151, align 4
  %153 = ptrtoint ptr %destructor.i.i74.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr @sock_rfree, ptr %destructor.i.i74.i.i, align 4
  %truesize.i80.i.i = getelementptr inbounds %struct.sk_buff, ptr %skbn.0.i.i, i32 0, i32 20
  %154 = ptrtoint ptr %truesize.i80.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %truesize.i80.i.i, align 8
  %sk_backlog.i81.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i82.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i81.i.i, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %sk_backlog.i81.i.i, i32 1, i32 3, i32 1) #5
  %156 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i81.i.i, ptr %sk_backlog.i81.i.i, i32 %155, ptr elementtype(i32) %sk_backlog.i81.i.i) #5, !srcloc !19
  %skc_prot.i.i.i83.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %157 = ptrtoint ptr %skc_prot.i.i.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %skc_prot.i.i.i83.i.i, align 8
  %memory_allocated.i.i.i84.i.i = getelementptr inbounds %struct.proto, ptr %158, i32 0, i32 32
  %159 = ptrtoint ptr %memory_allocated.i.i.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %memory_allocated.i.i.i84.i.i, align 4
  %tobool.i.not.i.i85.i.i = icmp eq ptr %160, null
  br i1 %tobool.i.not.i.i85.i.i, label %skb_orphan.exit.i86.i.i.skb_set_owner_r.exit90.i.i_crit_edge, label %if.end.i.i89.i.i

skb_orphan.exit.i86.i.i.skb_set_owner_r.exit90.i.i_crit_edge: ; preds = %skb_orphan.exit.i86.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_set_owner_r.exit90.i.i

if.end.i.i89.i.i:                                 ; preds = %skb_orphan.exit.i86.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %161 = ptrtoint ptr %truesize.i80.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %truesize.i80.i.i, align 8
  %sk_forward_alloc.i.i87.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %163 = ptrtoint ptr %sk_forward_alloc.i.i87.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %sk_forward_alloc.i.i87.i.i, align 8
  %sub.i.i88.i.i = sub i32 %164, %162
  store i32 %sub.i.i88.i.i, ptr %sk_forward_alloc.i.i87.i.i, align 8
  br label %skb_set_owner_r.exit90.i.i

skb_set_owner_r.exit90.i.i:                       ; preds = %if.end.i.i89.i.i, %skb_orphan.exit.i86.i.i.skb_set_owner_r.exit90.i.i_crit_edge
  %sk_receive_queue.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  call void @skb_queue_tail(ptr noundef %sk_receive_queue.i.i, ptr noundef %skbn.0.i.i) #5
  %165 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile i32, ptr %165, align 4
  %168 = and i32 %167, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool.i.not.i.i = icmp eq i32 %168, 0
  br i1 %tobool.i.not.i.i, label %if.then34.i.i, label %skb_set_owner_r.exit90.i.i.if.then55.i_crit_edge

skb_set_owner_r.exit90.i.i.if.then55.i_crit_edge: ; preds = %skb_set_owner_r.exit90.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then55.i

if.then34.i.i:                                    ; preds = %skb_set_owner_r.exit90.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sk_data_ready.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %169 = ptrtoint ptr %sk_data_ready.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %sk_data_ready.i.i, align 8
  call void %170(ptr noundef %sk) #5
  br label %if.then55.i

if.then55.i:                                      ; preds = %if.then34.i.i, %skb_set_owner_r.exit90.i.i.if.then55.i_crit_edge, %if.end.i.i.i.i, %skb_orphan.exit.i.i.i.if.then55.i_crit_edge
  %171 = ptrtoint ptr %vr31.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %vr31.i, align 8
  %conv57.i = zext i16 %172 to i32
  %add.i = add nuw nsw i32 %conv57.i, 1
  %173 = add nuw nsw i32 %cond.i, 65535
  %rem.i = and i32 %add.i, %173
  %conv58.i = trunc i32 %rem.i to i16
  store i16 %conv58.i, ptr %vr31.i, align 8
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #5
  %174 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %sk_backlog.i, align 4
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %176 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %sk_rcvbuf.i, align 8
  %shr.i = ashr i32 %177, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %175, i32 %shr.i)
  %cmp69.i = icmp sgt i32 %175, %shr.i
  br i1 %cmp69.i, label %if.then71.i, label %if.then55.i.if.end77.i_crit_edge

if.then55.i.if.end77.i_crit_edge:                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77.i

if.else60.i:                                      ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  call void @x25_clear_queues(ptr noundef %sk) #5
  call void @x25_write_internal(ptr noundef %sk, i32 noundef 27) #5
  call void @x25_start_t22timer(ptr noundef %sk) #5
  %178 = call ptr @memset(ptr %condition27.i, i32 0, i32 9)
  %179 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 4, ptr %state, align 4
  br label %sw.epilog

if.then71.i:                                      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #7
  %180 = ptrtoint ptr %condition27.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %condition27.i, align 1
  %182 = or i8 %181, 2
  store i8 %182, ptr %condition27.i, align 1
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then71.i, %if.then55.i.if.end77.i_crit_edge, %if.end45.i.if.end77.i_crit_edge
  %queued.0.i = phi i32 [ 1, %if.then71.i ], [ 1, %if.then55.i.if.end77.i_crit_edge ], [ 0, %if.end45.i.if.end77.i_crit_edge ]
  %vl78.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 11
  %183 = ptrtoint ptr %vl78.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %vl78.i, align 4
  %conv79.i = zext i16 %184 to i32
  %facilities.i71 = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 24
  %185 = ptrtoint ptr %facilities.i71 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %facilities.i71, align 4
  %add80.i = add i32 %186, %conv79.i
  %187 = add nsw i32 %cond.i, -1
  %rem81.i = and i32 %add80.i, %187
  %188 = ptrtoint ptr %vr31.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %vr31.i, align 8
  %conv83.i = zext i16 %189 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem81.i, i32 %conv83.i)
  %cmp84.i = icmp eq i32 %rem81.i, %conv83.i
  %190 = ptrtoint ptr %condition27.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %condition27.i, align 1
  br i1 %cmp84.i, label %if.then86.i, label %if.else91.i

if.then86.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #7
  %192 = and i8 %191, -2
  %193 = ptrtoint ptr %condition27.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %192, ptr %condition27.i, align 1
  call void @x25_stop_timer(ptr noundef %sk) #5
  call void @x25_enquiry_response(ptr noundef %sk) #5
  br label %sw.epilog

if.else91.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #7
  %194 = or i8 %191, 1
  %195 = ptrtoint ptr %condition27.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %194, ptr %condition27.i, align 1
  call void @x25_start_t2timer(ptr noundef %sk) #5
  br label %sw.epilog

sw.bb97.i:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %flags.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 17
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i) #5
  br label %sw.epilog

sw.bb98.i:                                        ; preds = %sw.bb8
  %196 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %196, align 4
  %199 = and i32 %198, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool.i.not.i72 = icmp eq i32 %199, 0
  br i1 %tobool.i.not.i72, label %if.else103.i, label %if.then100.i

if.then100.i:                                     ; preds = %sw.bb98.i
  call void @__sanitizer_cov_trace_pc() #7
  %call101.i = call i32 @sock_queue_rcv_skb(ptr noundef %sk, ptr noundef %skb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101.i)
  %tobool102.not.i = icmp eq i32 %call101.i, 0
  %lnot.ext.i = zext i1 %tobool102.not.i to i32
  br label %if.end104.i

if.else103.i:                                     ; preds = %sw.bb98.i
  %destructor.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %200 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %destructor.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %201, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.else103.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %201(ptr noundef %skb) #5
  br label %skb_orphan.exit.i.i

do.body.i.i.i:                                    ; preds = %if.else103.i
  %202 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %202, align 4
  %tobool3.not.i.i.i = icmp eq ptr %204, null
  br i1 %tobool3.not.i.i.i, label %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, label %do.body7.i.i.i, !prof !17

do.body.i.i.i.skb_orphan.exit.i.i_crit_edge:      ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_orphan.exit.i.i

do.body7.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #5, !srcloc !18
  unreachable

skb_orphan.exit.i.i:                              ; preds = %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, %if.then.i.i.i
  %205 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %sk, ptr %205, align 4
  %207 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr @sock_rfree, ptr %destructor.i.i.i, align 4
  %truesize.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %208 = ptrtoint ptr %truesize.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %truesize.i.i, align 8
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i.i, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %sk_backlog.i.i, i32 1, i32 3, i32 1) #5
  %210 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i.i, ptr %sk_backlog.i.i, i32 %209, ptr elementtype(i32) %sk_backlog.i.i) #5, !srcloc !19
  %skc_prot.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %211 = ptrtoint ptr %skc_prot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %skc_prot.i.i.i.i, align 8
  %memory_allocated.i.i.i.i = getelementptr inbounds %struct.proto, ptr %212, i32 0, i32 32
  %213 = ptrtoint ptr %memory_allocated.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %memory_allocated.i.i.i.i, align 4
  %tobool.i.not.i.i.i = icmp eq ptr %214, null
  br i1 %tobool.i.not.i.i.i, label %skb_orphan.exit.i.i.skb_set_owner_r.exit.i_crit_edge, label %if.end.i.i.i

skb_orphan.exit.i.i.skb_set_owner_r.exit.i_crit_edge: ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_set_owner_r.exit.i

if.end.i.i.i:                                     ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %215 = ptrtoint ptr %truesize.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %truesize.i.i, align 8
  %sk_forward_alloc.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %217 = ptrtoint ptr %sk_forward_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %sk_forward_alloc.i.i.i, align 8
  %sub.i.i4.i = sub i32 %218, %216
  store i32 %sub.i.i4.i, ptr %sk_forward_alloc.i.i.i, align 8
  br label %skb_set_owner_r.exit.i

skb_set_owner_r.exit.i:                           ; preds = %if.end.i.i.i, %skb_orphan.exit.i.i.skb_set_owner_r.exit.i_crit_edge
  %interrupt_in_queue.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 20
  call void @skb_queue_tail(ptr noundef %interrupt_in_queue.i, ptr noundef %skb) #5
  br label %if.end104.i

if.end104.i:                                      ; preds = %skb_set_owner_r.exit.i, %if.then100.i
  %queued.1.i = phi i32 [ %lnot.ext.i, %if.then100.i ], [ 1, %skb_set_owner_r.exit.i ]
  call void @sk_send_sigurg(ptr noundef %sk) #5
  call void @x25_write_internal(ptr noundef %sk, i32 noundef 39) #5
  br label %sw.epilog

do.end.i:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %call105.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call2) #8
  br label %sw.epilog

out_clear.i73:                                    ; preds = %pskb_may_pull.exit.i64.out_clear.i73_crit_edge, %if.end.i.i60.out_clear.i73_crit_edge
  call void @x25_write_internal(ptr noundef %sk, i32 noundef 19) #5
  %219 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 2, ptr %state, align 4
  call void @x25_start_t23timer(ptr noundef %sk) #5
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %220 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %220, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %call2, label %sw.bb10.sw.epilog_crit_edge [
    i32 27, label %sw.bb.i74
    i32 31, label %sw.bb10.sw.bb1.i77_crit_edge
    i32 19, label %sw.bb2.i
  ]

sw.bb10.sw.bb1.i77_crit_edge:                     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i77

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb.i74:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  call void @x25_write_internal(ptr noundef %sk, i32 noundef 31) #5
  br label %sw.bb1.i77

sw.bb1.i77:                                       ; preds = %sw.bb.i74, %sw.bb10.sw.bb1.i77_crit_edge
  call void @x25_stop_timer(ptr noundef %sk) #5
  %condition.i75 = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 7
  %221 = call ptr @memset(ptr %condition.i75, i32 0, i32 9)
  %222 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 3, ptr %state, align 4
  call void @x25_requeue_frames(ptr noundef %sk) #5
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %sw.bb10
  %len.i.i.i78 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %223 = ptrtoint ptr %len.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %len.i.i.i78, align 4
  %data_len.i.i.i79 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %225 = ptrtoint ptr %data_len.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %data_len.i.i.i79, align 8
  %sub.i.i.i80 = sub i32 %224, %226
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.i.i.i80)
  %cmp.not.i.i81 = icmp ult i32 %sub.i.i.i80, 5
  br i1 %cmp.not.i.i81, label %if.end.i.i83, label %sw.bb2.i.if.end.i90_crit_edge, !prof !16

sw.bb2.i.if.end.i90_crit_edge:                    ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i90

if.end.i.i83:                                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %224)
  %cmp3.i.i82 = icmp ult i32 %224, 5
  br i1 %cmp3.i.i82, label %if.end.i.i83.out_clear.i91_crit_edge, label %pskb_may_pull.exit.i87, !prof !16

if.end.i.i83.out_clear.i91_crit_edge:             ; preds = %if.end.i.i83
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clear.i91

pskb_may_pull.exit.i87:                           ; preds = %if.end.i.i83
  %sub.i.i84 = sub nuw nsw i32 5, %sub.i.i.i80
  %call13.i.i85 = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i84) #5
  %cmp14.i.not.i86 = icmp eq ptr %call13.i.i85, null
  br i1 %cmp14.i.not.i86, label %pskb_may_pull.exit.i87.out_clear.i91_crit_edge, label %pskb_may_pull.exit.i87.if.end.i90_crit_edge

pskb_may_pull.exit.i87.if.end.i90_crit_edge:      ; preds = %pskb_may_pull.exit.i87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i90

pskb_may_pull.exit.i87.out_clear.i91_crit_edge:   ; preds = %pskb_may_pull.exit.i87
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clear.i91

if.end.i90:                                       ; preds = %pskb_may_pull.exit.i87.if.end.i90_crit_edge, %sw.bb2.i.if.end.i90_crit_edge
  call void @x25_write_internal(ptr noundef %sk, i32 noundef 23) #5
  %data.i88 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %227 = ptrtoint ptr %data.i88 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %data.i88, align 4
  %arrayidx.i89 = getelementptr i8, ptr %228, i32 3
  %229 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %arrayidx.i89, align 1
  %arrayidx5.i = getelementptr i8, ptr %228, i32 4
  %231 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx5.i, align 1
  call void @x25_disconnect(ptr noundef %sk, i32 noundef 0, i8 noundef zeroext %230, i8 noundef zeroext %232) #5
  br label %sw.epilog

out_clear.i91:                                    ; preds = %pskb_may_pull.exit.i87.out_clear.i91_crit_edge, %if.end.i.i83.out_clear.i91_crit_edge
  call void @x25_write_internal(ptr noundef %sk, i32 noundef 19) #5
  %233 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 2, ptr %state, align 4
  call void @x25_start_t23timer(ptr noundef %sk) #5
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %call2)
  %cond.i92 = icmp eq i32 %call2, 19
  br i1 %cond.i92, label %sw.bb.i97, label %sw.bb12.sw.epilog_crit_edge

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb.i97:                                        ; preds = %sw.bb12
  %len.i.i.i93 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %234 = ptrtoint ptr %len.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %len.i.i.i93, align 4
  %data_len.i.i.i94 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %236 = ptrtoint ptr %data_len.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %data_len.i.i.i94, align 8
  %sub.i.i.i95 = sub i32 %235, %237
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.i.i.i95)
  %cmp.not.i.i96 = icmp ult i32 %sub.i.i.i95, 5
  br i1 %cmp.not.i.i96, label %if.end.i.i99, label %sw.bb.i97.if.end.i107_crit_edge, !prof !16

sw.bb.i97.if.end.i107_crit_edge:                  ; preds = %sw.bb.i97
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i107

if.end.i.i99:                                     ; preds = %sw.bb.i97
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %235)
  %cmp3.i.i98 = icmp ult i32 %235, 5
  br i1 %cmp3.i.i98, label %if.end.i.i99.if.then.i_crit_edge, label %pskb_may_pull.exit.i103, !prof !16

if.end.i.i99.if.then.i_crit_edge:                 ; preds = %if.end.i.i99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

pskb_may_pull.exit.i103:                          ; preds = %if.end.i.i99
  %sub.i.i100 = sub nuw nsw i32 5, %sub.i.i.i95
  %call13.i.i101 = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i100) #5
  %cmp14.i.not.i102 = icmp eq ptr %call13.i.i101, null
  br i1 %cmp14.i.not.i102, label %pskb_may_pull.exit.i103.if.then.i_crit_edge, label %pskb_may_pull.exit.i103.if.end.i107_crit_edge

pskb_may_pull.exit.i103.if.end.i107_crit_edge:    ; preds = %pskb_may_pull.exit.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i107

pskb_may_pull.exit.i103.if.then.i_crit_edge:      ; preds = %pskb_may_pull.exit.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %pskb_may_pull.exit.i103.if.then.i_crit_edge, %if.end.i.i99.if.then.i_crit_edge
  call void @x25_write_internal(ptr noundef %sk, i32 noundef 19) #5
  %238 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 2, ptr %state, align 4
  call void @x25_start_t23timer(ptr noundef %sk) #5
  br label %sw.epilog

if.end.i107:                                      ; preds = %pskb_may_pull.exit.i103.if.end.i107_crit_edge, %sw.bb.i97.if.end.i107_crit_edge
  call void @x25_write_internal(ptr noundef %sk, i32 noundef 23) #5
  %data.i105 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %239 = ptrtoint ptr %data.i105 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %data.i105, align 4
  %arrayidx.i106 = getelementptr i8, ptr %240, i32 3
  %241 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx.i106, align 1
  %arrayidx3.i = getelementptr i8, ptr %240, i32 4
  %243 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx3.i, align 1
  call void @x25_disconnect(ptr noundef %sk, i32 noundef 0, i8 noundef zeroext %242, i8 noundef zeroext %244) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i107, %if.then.i, %sw.bb12.sw.epilog_crit_edge, %out_clear.i91, %if.end.i90, %sw.bb1.i77, %sw.bb10.sw.epilog_crit_edge, %out_clear.i73, %do.end.i, %if.end104.i, %sw.bb97.i, %if.else91.i, %if.then86.i, %if.else60.i, %if.then38.i, %if.else20.i, %if.then16.i, %if.then8.i, %if.end.i67, %sw.bb.i54, %out_clear.i52, %sw.bb3.i, %if.end.i51, %sw.bb6.sw.epilog_crit_edge, %x25_state1_machine.exit, %if.end.sw.epilog_crit_edge
  %queued.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ 0, %x25_state1_machine.exit ], [ 0, %sw.bb6.sw.epilog_crit_edge ], [ 0, %if.end.i51 ], [ 0, %sw.bb3.i ], [ 0, %out_clear.i52 ], [ 0, %out_clear.i73 ], [ 0, %do.end.i ], [ %queued.1.i, %if.end104.i ], [ 0, %sw.bb97.i ], [ 0, %if.then38.i ], [ %queued.0.i, %if.then86.i ], [ %queued.0.i, %if.else91.i ], [ 0, %if.else60.i ], [ 0, %if.then16.i ], [ 0, %if.else20.i ], [ 0, %if.then8.i ], [ 0, %if.end.i67 ], [ 0, %sw.bb.i54 ], [ 0, %sw.bb10.sw.epilog_crit_edge ], [ 0, %sw.bb1.i77 ], [ 0, %if.end.i90 ], [ 0, %out_clear.i91 ], [ 0, %sw.bb12.sw.epilog_crit_edge ], [ 0, %if.then.i ], [ 0, %if.end.i107 ]
  call void @x25_kick(ptr noundef %sk) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %queued.0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %q) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ns) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x25_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_kick(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x25_backlog_rcv(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @x25_process_rx_frame(ptr noundef %sk, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_stop_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x25_parse_address_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x25_parse_facilities(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_write_internal(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_disconnect(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_start_t23timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_requeue_frames(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @x25_validate_nr(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_clear_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_start_t22timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_frames_acked(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_enquiry_response(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_start_t2timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_send_sigurg(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_rfree(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/x25/x25_in.c", i32 326, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @x25_state3_machine._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @x25_state3_machine._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
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
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2154588440, i64 2154588928, i64 2154588477, i64 2154588533, i64 2154588567, i64 2154588591, i64 2154588632, i64 2154588653, i64 2154588681, i64 2154588715}
!19 = !{i64 2148589351, i64 2148589377, i64 2148589406, i64 2148589440, i64 2148589471, i64 2148589494}
