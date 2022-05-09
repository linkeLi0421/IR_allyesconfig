; ModuleID = '/llk/IR_all_yes/net/llc/llc_s_ac.c_pt.bc'
source_filename = "../net/llc/llc_s_ac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sk_buff = type { %union.anon, %union.anon.97, %union.anon.98, [48 x i8], %union.anon.99, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.101, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.97 = type { ptr }
%union.anon.98 = type { i64 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, ptr }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.103, i32, i32, i32, i16, i16, %union.anon.105, i32, %union.anon.106, %union.anon.107, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.103 = type { i32 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.llc_pdu_un = type { i8, i8, i8 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.llc_sap = type { i8, i8, i8, %struct.refcount_struct, ptr, %struct.llc_addr, %struct.list_head, %struct.spinlock, i32, [64 x %struct.hlist_nulls_head], [64 x %struct.hlist_head], %struct.callback_head }
%struct.llc_addr = type { i8, [6 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_nulls_head = type { ptr }
%struct.hlist_head = type { ptr }
%struct.callback_head = type { ptr, ptr }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_sap_action_unitdata_ind(ptr noundef %sap, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @llc_sap_rtn_pdu(ptr noundef %sap, ptr noundef %skb) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_sap_rtn_pdu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_sap_action_send_ui(ptr nocapture noundef readnone %sap, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %saddr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %saddr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %saddr, align 1
  %daddr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %2 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %daddr, align 1
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 3) #5
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %conv.i.i.i
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %3, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %1, ptr %ssap4.i, align 1
  %11 = load ptr, ptr %head.i.i, align 8
  %12 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i21 = zext i16 %12 to i32
  %add.ptr.i.i.i22 = getelementptr i8, ptr %11, i32 %conv.i.i.i21
  %ctrl_1.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i22, i32 0, i32 2
  %13 = ptrtoint ptr %ctrl_1.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %ctrl_1.i, align 1
  %mac = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %mac4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %call6 = tail call i32 @llc_mac_hdr_init(ptr noundef %skb, ptr noundef %mac, ptr noundef %mac4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !prof !9

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #5
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #5, !srcloc !10
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !11

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !9

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #5
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %call11 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #5
  br label %if.end

if.end:                                           ; preds = %skb_get.exit, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call11, %skb_get.exit ], [ %call6, %entry.if.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_mac_hdr_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_sap_action_send_xid_c(ptr nocapture noundef readnone %sap, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %saddr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %saddr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %saddr, align 1
  %daddr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %2 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %daddr, align 1
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 6) #5
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %conv.i.i.i
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %3, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %1, ptr %ssap4.i, align 1
  %11 = load ptr, ptr %head.i.i, align 8
  %12 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i21 = zext i16 %12 to i32
  %add.ptr.i.i.i22 = getelementptr i8, ptr %11, i32 %conv.i.i.i21
  %ctrl_1.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i22, i32 0, i32 2
  %13 = ptrtoint ptr %ctrl_1.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -65, ptr %ctrl_1.i, align 1
  %add.ptr.i = getelementptr %struct.llc_pdu_un, ptr %add.ptr.i.i.i22, i32 1
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -127, ptr %add.ptr.i, align 1
  %type.i = getelementptr %struct.llc_pdu_un, ptr %add.ptr.i.i.i22, i32 1, i32 1
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %type.i, align 1
  %rw.i = getelementptr %struct.llc_pdu_un, ptr %add.ptr.i.i.i22, i32 1, i32 2
  %16 = ptrtoint ptr %rw.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %rw.i, align 1
  %mac = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %mac4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %call6 = tail call i32 @llc_mac_hdr_init(ptr noundef %skb, ptr noundef %mac, ptr noundef %mac4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !prof !9

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #5
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #5, !srcloc !10
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !11

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !9

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #5
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %call11 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #5
  br label %if.end

if.end:                                           ; preds = %skb_get.exit, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call11, %skb_get.exit ], [ %call6, %entry.if.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_sap_action_send_xid_r(ptr nocapture noundef readonly %sap, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  %mac_da = alloca [6 x i8], align 1
  %mac_sa = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_da) #5
  %0 = call ptr @memset(ptr %mac_da, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_sa) #5
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %1 = call ptr @memset(ptr %mac_sa, i32 255, i32 6)
  %2 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp.i = icmp eq i16 %3, 4
  br i1 %cmp.i, label %if.then.i26, label %entry.llc_pdu_decode_da.exit_crit_edge

entry.llc_pdu_decode_da.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %llc_pdu_decode_da.exit

if.then.i26:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %7 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %conv.i.i.i
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %mac_da, ptr %h_source.i, i32 6)
  %9 = call ptr @memcpy(ptr %mac_sa, ptr %add.ptr.i.i.i, i32 6)
  br label %llc_pdu_decode_da.exit

llc_pdu_decode_da.exit:                           ; preds = %if.then.i26, %entry.llc_pdu_decode_da.exit_crit_edge
  %head.i.i.i27 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i.i27, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i28 = zext i16 %13 to i32
  %add.ptr.i.i.i29 = getelementptr i8, ptr %11, i32 %conv.i.i.i28
  %ssap1.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i29, i32 0, i32 1
  %14 = ptrtoint ptr %ssap1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ssap1.i, align 1
  %16 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %call = tail call ptr @llc_alloc_frame(ptr noundef null, ptr noundef %18, i8 noundef zeroext 3, i32 noundef 3) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %llc_pdu_decode_da.exit.out_crit_edge, label %if.end

llc_pdu_decode_da.exit.out_crit_edge:             ; preds = %llc_pdu_decode_da.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %llc_pdu_decode_da.exit
  %19 = and i8 %15, -2
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %sap, i32 0, i32 5
  %20 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %laddr, align 4
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 3) #5
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 18
  %24 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 20
  %26 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i30 = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i31 = getelementptr i8, ptr %25, i32 %conv.i.i.i30
  %27 = ptrtoint ptr %add.ptr.i.i.i31 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %19, ptr %add.ptr.i.i.i31, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i31, i32 0, i32 1
  %or13.i = or i8 %21, 1
  %28 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %or13.i, ptr %ssap4.i, align 1
  %29 = load ptr, ptr %head.i.i, align 8
  %30 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i34 = zext i16 %30 to i32
  %add.ptr.i.i.i35 = getelementptr i8, ptr %29, i32 %conv.i.i.i34
  %ctrl_1.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i35, i32 0, i32 2
  %31 = ptrtoint ptr %ctrl_1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -65, ptr %ctrl_1.i, align 1
  %add.ptr.i = getelementptr %struct.llc_pdu_un, ptr %add.ptr.i.i.i35, i32 1
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -127, ptr %add.ptr.i, align 1
  %type.i = getelementptr %struct.llc_pdu_un, ptr %add.ptr.i.i.i35, i32 1, i32 1
  %33 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 3, ptr %type.i, align 1
  %rw.i = getelementptr %struct.llc_pdu_un, ptr %add.ptr.i.i.i35, i32 1, i32 2
  %34 = ptrtoint ptr %rw.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %rw.i, align 1
  %call10.i = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 3) #5
  %call4 = call i32 @llc_mac_hdr_init(ptr noundef nonnull %call, ptr noundef nonnull %mac_sa, ptr noundef nonnull %mac_da) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then9, label %if.end.out_crit_edge, !prof !9

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = call i32 @dev_queue_xmit(ptr noundef nonnull %call) #5
  br label %out

out:                                              ; preds = %if.then9, %if.end.out_crit_edge, %llc_pdu_decode_da.exit.out_crit_edge
  %rc.0 = phi i32 [ %call10, %if.then9 ], [ %call4, %if.end.out_crit_edge ], [ 1, %llc_pdu_decode_da.exit.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_sa) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_da) #5
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @llc_alloc_frame(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_sap_action_send_test_c(ptr nocapture noundef readnone %sap, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %saddr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %saddr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %saddr, align 1
  %daddr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %2 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %daddr, align 1
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 3) #5
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %conv.i.i.i
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %3, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %1, ptr %ssap4.i, align 1
  %11 = load ptr, ptr %head.i.i, align 8
  %12 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i21 = zext i16 %12 to i32
  %add.ptr.i.i.i22 = getelementptr i8, ptr %11, i32 %conv.i.i.i21
  %ctrl_1.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i22, i32 0, i32 2
  %13 = ptrtoint ptr %ctrl_1.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -13, ptr %ctrl_1.i, align 1
  %mac = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %mac4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %call6 = tail call i32 @llc_mac_hdr_init(ptr noundef %skb, ptr noundef %mac, ptr noundef %mac4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !prof !9

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #5
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #5, !srcloc !10
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !11

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !9

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #5
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %call11 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #5
  br label %if.end

if.end:                                           ; preds = %skb_get.exit, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ %call11, %skb_get.exit ], [ %call6, %entry.if.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_sap_action_send_test_r(ptr nocapture noundef readonly %sap, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  %mac_da = alloca [6 x i8], align 1
  %mac_sa = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_da) #5
  %0 = call ptr @memset(ptr %mac_da, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_sa) #5
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %1 = call ptr @memset(ptr %mac_sa, i32 255, i32 6)
  %2 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp.i = icmp eq i16 %3, 4
  br i1 %cmp.i, label %if.then.i29, label %entry.llc_pdu_decode_da.exit_crit_edge

entry.llc_pdu_decode_da.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %llc_pdu_decode_da.exit

if.then.i29:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %7 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %conv.i.i.i
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %mac_da, ptr %h_source.i, i32 6)
  %9 = call ptr @memcpy(ptr %mac_sa, ptr %add.ptr.i.i.i, i32 6)
  br label %llc_pdu_decode_da.exit

llc_pdu_decode_da.exit:                           ; preds = %if.then.i29, %entry.llc_pdu_decode_da.exit_crit_edge
  %head.i.i.i30 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i.i30, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i31 = zext i16 %13 to i32
  %add.ptr.i.i.i32 = getelementptr i8, ptr %11, i32 %conv.i.i.i31
  %ssap1.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i32, i32 0, i32 1
  %14 = ptrtoint ptr %ssap1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ssap1.i, align 1
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %16 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %17 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %h_proto, align 1
  %conv = zext i16 %19 to i32
  %sub = add nsw i32 %conv, -3
  %20 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %call2 = tail call ptr @llc_alloc_frame(ptr noundef null, ptr noundef %22, i8 noundef zeroext 3, i32 noundef %sub) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %llc_pdu_decode_da.exit.out_crit_edge, label %if.end

llc_pdu_decode_da.exit.out_crit_edge:             ; preds = %llc_pdu_decode_da.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %llc_pdu_decode_da.exit
  %23 = and i8 %15, -2
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %sap, i32 0, i32 5
  %24 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %laddr, align 4
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call2, i32 noundef 3) #5
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i, align 4
  %head.i.i33 = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 18
  %28 = ptrtoint ptr %head.i.i33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i33, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i34 = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 15, i32 0, i32 20
  %30 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i.i34, ptr %network_header.i.i, align 4
  %conv.i.i.i35 = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i36 = getelementptr i8, ptr %29, i32 %conv.i.i.i35
  %31 = ptrtoint ptr %add.ptr.i.i.i36 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %23, ptr %add.ptr.i.i.i36, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i36, i32 0, i32 1
  %or13.i = or i8 %25, 1
  %32 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %or13.i, ptr %ssap4.i, align 1
  %33 = load ptr, ptr %head.i.i33, align 8
  %34 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i39 = zext i16 %34 to i32
  %add.ptr.i.i.i40 = getelementptr i8, ptr %33, i32 %conv.i.i.i39
  %ctrl_1.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i40, i32 0, i32 2
  %35 = ptrtoint ptr %ctrl_1.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -13, ptr %ctrl_1.i, align 1
  %36 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %37)
  %cmp.i42 = icmp eq i16 %37, 4
  br i1 %cmp.i42, label %if.then.i44, label %if.end.llc_pdu_init_as_test_rsp.exit_crit_edge

if.end.llc_pdu_init_as_test_rsp.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %llc_pdu_init_as_test_rsp.exit

if.then.i44:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %head.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i.i30, align 8
  %40 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i23.i = zext i16 %41 to i32
  %add.ptr.i.i24.i = getelementptr i8, ptr %39, i32 %conv.i.i23.i
  %42 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i26.i = zext i16 %43 to i32
  %add.ptr.i.i27.i = getelementptr i8, ptr %39, i32 %conv.i.i26.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i27.i, i32 0, i32 2
  %44 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %h_proto.i, align 1
  %conv11.i = zext i16 %45 to i32
  %sub.i = add nsw i32 %conv11.i, -3
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i.i40, i32 3
  %add.ptr12.i = getelementptr i8, ptr %add.ptr.i.i24.i, i32 3
  %46 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr12.i, i32 %sub.i)
  %call13.i = tail call ptr @skb_put(ptr noundef nonnull %call2, i32 noundef %sub.i) #5
  br label %llc_pdu_init_as_test_rsp.exit

llc_pdu_init_as_test_rsp.exit:                    ; preds = %if.then.i44, %if.end.llc_pdu_init_as_test_rsp.exit_crit_edge
  %call5 = call i32 @llc_mac_hdr_init(ptr noundef nonnull %call2, ptr noundef nonnull %mac_sa, ptr noundef nonnull %mac_da) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then10, label %llc_pdu_init_as_test_rsp.exit.out_crit_edge, !prof !9

llc_pdu_init_as_test_rsp.exit.out_crit_edge:      ; preds = %llc_pdu_init_as_test_rsp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then10:                                        ; preds = %llc_pdu_init_as_test_rsp.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = call i32 @dev_queue_xmit(ptr noundef nonnull %call2) #5
  br label %out

out:                                              ; preds = %if.then10, %llc_pdu_init_as_test_rsp.exit.out_crit_edge, %llc_pdu_decode_da.exit.out_crit_edge
  %rc.0 = phi i32 [ %call11, %if.then10 ], [ %call5, %llc_pdu_init_as_test_rsp.exit.out_crit_edge ], [ 1, %llc_pdu_decode_da.exit.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_sa) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_da) #5
  ret i32 %rc.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_sap_action_report_status(ptr nocapture noundef readnone %sap, ptr nocapture noundef readnone %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_sap_action_xid_ind(ptr noundef %sap, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @llc_sap_rtn_pdu(ptr noundef %sap, ptr noundef %skb) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_sap_action_test_ind(ptr noundef %sap, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @llc_sap_rtn_pdu(ptr noundef %sap, ptr noundef %skb) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148487718, i64 2148487750, i64 2148487779, i64 2148487813, i64 2148487844, i64 2148487867}
!11 = !{!"branch_weights", i32 1, i32 2000}
