; ModuleID = '/llk/IR_all_yes/net/llc/llc_if.c_pt.bc'
source_filename = "../net/llc/llc_if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.llc_sock = type { %struct.sock, %struct.sockaddr_llc, i8, ptr, %struct.llc_addr, %struct.llc_addr, ptr, ptr, i32, i8, i8, i8, i8, %struct.llc_timer, %struct.llc_timer, %struct.llc_timer, %struct.llc_timer, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, %struct.sk_buff_head, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, %struct.hlist_node }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.121 = type { ptr }
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
%struct.sockaddr_llc = type { i16, i16, i8, i8, i8, i8, [6 x i8], [2 x i8] }
%struct.llc_addr = type { i8, [6 x i8] }
%struct.llc_timer = type { %struct.timer_list, i32 }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.llc_sap = type { i8, i8, i8, %struct.refcount_struct, ptr, %struct.llc_addr, %struct.list_head, %struct.spinlock, i32, [64 x %struct.hlist_nulls_head], [64 x %struct.hlist_head], %struct.callback_head }
%struct.hlist_nulls_head = type { ptr }
%struct.hlist_head = type { ptr }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_build_and_send_pkt(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.out_free_crit_edge, label %if.end, !prof !9

entry.out_free_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free

if.end:                                           ; preds = %entry
  %call4 = tail call zeroext i8 @llc_data_accept_state(i8 noundef zeroext %1) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4)
  %tobool6.not = icmp eq i8 %call4, 0
  br i1 %tobool6.not, label %lor.rhs, label %if.end.if.then15_crit_edge, !prof !10

if.end.if.then15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

lor.rhs:                                          ; preds = %if.end
  %p_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 23
  %2 = ptrtoint ptr %p_flag to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p_flag, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool8.not = icmp eq i8 %3, 0
  br i1 %tobool8.not, label %if.end16, label %lor.rhs.if.then15_crit_edge, !prof !10

lor.rhs.if.then15_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

if.then15:                                        ; preds = %lor.rhs.if.then15_crit_edge, %if.end.if.then15_crit_edge
  %failed_data_req = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 33
  %4 = ptrtoint ptr %failed_data_req to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %failed_data_req, align 8
  br label %out_free

if.end16:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %5 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %cb.i, align 1
  %prim = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prim to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %prim, align 1
  %prim_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %prim_type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %prim_type, align 1
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %10 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %10, align 8
  %call18 = tail call i32 @llc_conn_state_process(ptr noundef %sk, ptr noundef %skb) #4
  br label %cleanup

out_free:                                         ; preds = %if.then15, %entry.out_free_crit_edge
  %rc.0 = phi i32 [ -103, %entry.out_free_crit_edge ], [ -16, %if.then15 ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end16
  %retval.0 = phi i32 [ %rc.0, %out_free ], [ %call18, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @llc_data_accept_state(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_conn_state_process(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_establish_connection(ptr noundef %sk, ptr nocapture noundef readonly %lmac, ptr nocapture noundef readonly %dmac, i8 noundef zeroext %dsap) local_unnamed_addr #0 align 64 {
entry:
  %laddr = alloca %struct.llc_addr, align 1
  %daddr = alloca %struct.llc_addr, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %laddr) #4
  %0 = getelementptr inbounds %struct.llc_addr, ptr %laddr, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %daddr) #4
  %1 = getelementptr inbounds %struct.llc_addr, ptr %daddr, i32 0, i32 1
  %sap = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %sap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sap, align 4
  %laddr1 = getelementptr inbounds %struct.llc_sap, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %laddr1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %laddr1, align 4
  %6 = ptrtoint ptr %laddr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %laddr, align 1
  %7 = ptrtoint ptr %daddr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %dsap, ptr %daddr, align 1
  %8 = call ptr @memcpy(ptr %1, ptr %dmac, i32 6)
  %9 = call ptr @memcpy(ptr %0, ptr %lmac, i32 6)
  %call7 = call ptr @llc_lookup_established(ptr noundef %3, ptr noundef nonnull %daddr, ptr noundef nonnull %laddr) #4
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then:                                          ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call7, i32 0, i32 4
  %10 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp = icmp eq i8 %11, 1
  br i1 %cmp, label %if.then.out_put_crit_edge, label %if.else

if.then.out_put_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_put

if.else:                                          ; preds = %if.then
  %skc_refcnt.i30 = getelementptr inbounds %struct.sock_common, ptr %call7, i32 0, i32 19
  %call.i.i.i.i.i.i31 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i30, i32 noundef 4) #4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i30, i32 1, i32 3, i32 1) #4
  %12 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i30, ptr %skc_refcnt.i30, i32 1, ptr elementtype(i32) %skc_refcnt.i30) #4, !srcloc !12
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i32 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i32, label %if.end5.i.i.i.i.if.end10_crit_edge, label %if.then10.i.i.i.i, !prof !10

if.end5.i.i.i.i.if.end10_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i30, i32 noundef 3) #4
  br label %if.end10

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !13
  call void @sk_free(ptr noundef nonnull %call7) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end10_crit_edge, %entry.if.end10_crit_edge
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #4
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #4
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #4, !srcloc !14
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end10.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !9

if.end10.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end10
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !10

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end10.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end10.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #4
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %call.i = call ptr @__alloc_skb(i32 noundef 0, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #4
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %sock_hold.exit.out_put_crit_edge, label %if.then13

sock_hold.exit.out_put_crit_edge:                 ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_put

if.then13:                                        ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #6
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %cb.i, align 1
  %prim = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prim to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %prim, align 1
  %prim_type = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %prim_type to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %prim_type, align 1
  call void @skb_set_owner_w(ptr noundef nonnull %call.i, ptr noundef %sk) #4
  %call15 = call i32 @llc_conn_state_process(ptr noundef %sk, ptr noundef nonnull %call.i) #4
  br label %out_put

out_put:                                          ; preds = %if.then13, %sock_hold.exit.out_put_crit_edge, %if.then.out_put_crit_edge
  %rc.0 = phi i32 [ %call15, %if.then13 ], [ -12, %sock_hold.exit.out_put_crit_edge ], [ -106, %if.then.out_put_crit_edge ]
  %sk.addr.0 = phi ptr [ %sk, %if.then13 ], [ %sk, %sock_hold.exit.out_put_crit_edge ], [ %call7, %if.then.out_put_crit_edge ]
  %skc_refcnt.i33 = getelementptr inbounds %struct.sock_common, ptr %sk.addr.0, i32 0, i32 19
  %call.i.i.i.i.i.i34 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i33, i32 noundef 4) #4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i33, i32 1, i32 3, i32 1) #4
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i33, ptr %skc_refcnt.i33, i32 1, ptr elementtype(i32) %skc_refcnt.i33) #4, !srcloc !12
  %asmresult.i.i.i.i.i.i.i35 = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i35)
  %cmp.i.i.i.i36 = icmp eq i32 %asmresult.i.i.i.i.i.i.i35, 1
  br i1 %cmp.i.i.i.i36, label %if.then.i40, label %if.end5.i.i.i.i38

if.end5.i.i.i.i38:                                ; preds = %out_put
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i35)
  %.not.i.i.i.i37 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i35, 0
  br i1 %.not.i.i.i.i37, label %if.end5.i.i.i.i38.sock_put.exit41_crit_edge, label %if.then10.i.i.i.i39, !prof !10

if.end5.i.i.i.i38.sock_put.exit41_crit_edge:      ; preds = %if.end5.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #6
  br label %sock_put.exit41

if.then10.i.i.i.i39:                              ; preds = %if.end5.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #6
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i33, i32 noundef 3) #4
  br label %sock_put.exit41

if.then.i40:                                      ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !13
  call void @sk_free(ptr noundef %sk.addr.0) #4
  br label %sock_put.exit41

sock_put.exit41:                                  ; preds = %if.then.i40, %if.then10.i.i.i.i39, %if.end5.i.i.i.i38.sock_put.exit41_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %daddr) #4
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %laddr) #4
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @llc_lookup_established(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_send_disc(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #4
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #4, !srcloc !14
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !9

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !10

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #4
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %2 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.not = icmp eq i16 %3, 1
  br i1 %cmp.not, label %lor.lhs.false, label %sock_hold.exit.out_crit_edge

sock_hold.exit.out_crit_edge:                     ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false:                                    ; preds = %sock_hold.exit
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp3.not = icmp eq i8 %5, 1
  br i1 %cmp3.not, label %lor.lhs.false5, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %switch = icmp ult i8 %7, 2
  br i1 %switch, label %lor.lhs.false5.out_crit_edge, label %if.end

lor.lhs.false5.out_crit_edge:                     ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %lor.lhs.false5
  %call.i = tail call ptr @__alloc_skb(i32 noundef 0, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end17

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i, ptr noundef %sk) #4
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %8)
  store volatile i8 11, ptr %skc_state, align 2
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %cb.i, align 1
  %prim = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prim to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %prim, align 1
  %prim_type = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %prim_type to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %prim_type, align 1
  %call21 = tail call i32 @llc_conn_state_process(ptr noundef %sk, ptr noundef nonnull %call.i) #4
  %phi.cast = and i32 %call21, 65535
  br label %out

out:                                              ; preds = %if.end17, %if.end.out_crit_edge, %lor.lhs.false5.out_crit_edge, %lor.lhs.false.out_crit_edge, %sock_hold.exit.out_crit_edge
  %rc.0 = phi i32 [ 1, %sock_hold.exit.out_crit_edge ], [ 1, %lor.lhs.false.out_crit_edge ], [ %phi.cast, %if.end17 ], [ 1, %if.end.out_crit_edge ], [ 1, %lor.lhs.false5.out_crit_edge ]
  %call.i.i.i.i.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #4
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #4, !srcloc !12
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i39 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i39, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !10

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #4
  br label %sock_put.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !13
  tail call void @sk_free(ptr noundef %sk) #4
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148648747}
!12 = !{i64 2148563187, i64 2148563219, i64 2148563248, i64 2148563282, i64 2148563313, i64 2148563336}
!13 = !{i64 2149846520}
!14 = !{i64 2148560722, i64 2148560754, i64 2148560783, i64 2148560817, i64 2148560848, i64 2148560871}
