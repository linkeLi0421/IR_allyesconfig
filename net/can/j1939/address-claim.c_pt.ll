; ModuleID = '/llk/IR_all_yes/net/can/j1939/address-claim.c_pt.bc'
source_filename = "../net/can/j1939/address-claim.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sk_buff = type { %union.anon.0, %union.anon.3, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.j1939_priv = type { %struct.list_head, %struct.rwlock_t, ptr, [256 x %struct.j1939_addr_ent], %struct.kref, %struct.list_head, %struct.spinlock, i32, %struct.spinlock, %struct.list_head, %struct.kref, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.j1939_addr_ent = type { ptr, i32 }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.14 }
%union.anon.14 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.j1939_ecu = type { %struct.list_head, i64, i8, %struct.hrtimer, %struct.kref, ptr, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }

@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"tx drop: invalid sa for name 0x%016llx\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"tx drop: invalid da for name 0x%016llx\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tx address claim with dlc %i\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"tx address claim with different name\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tx address claim with broadcast sa\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"tx address claim with dest, not broadcast\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rx address claim with wrong dlc %i\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rx address claim without name\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rx address claim with broadcast sa\0A\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 106, i32 30 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 117, i32 30 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 56, i32 29 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 62, i32 29 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 67, i32 29 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 73, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 133, i32 29 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 141, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [33 x i8] c"../net/can/j1939/address-claim.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 146, i32 29 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @j1939_ac_fixup(ptr noundef %priv, ptr nocapture noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %addr1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %pgn = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %0 = ptrtoint ptr %pgn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pgn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 60928, i32 %1)
  %cmp = icmp eq i32 %1, 60928
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 8
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %ndev.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef %3) #7
  br label %cleanup47

if.end.i:                                         ; preds = %if.then
  %6 = ptrtoint ptr %addr1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %addr1, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #4
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %12)
  %cmp3.not.i = icmp eq i64 %7, %12
  br i1 %cmp3.not.i, label %if.end6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %ndev5.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %13 = ptrtoint ptr %ndev5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev5.i, align 4
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %14, ptr noundef nonnull @.str.3) #7
  br label %cleanup47

if.end6.i:                                        ; preds = %if.end.i
  %sa.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %15 = ptrtoint ptr %sa.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sa.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp8.i = icmp eq i8 %16, -1
  br i1 %cmp8.i, label %if.then10.i, label %if.end12.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  %ndev11.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %17 = ptrtoint ptr %ndev11.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev11.i, align 4
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %18, ptr noundef nonnull @.str.4) #7
  br label %cleanup47

if.end12.i:                                       ; preds = %if.end6.i
  %dst_name.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %19 = ptrtoint ptr %dst_name.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %dst_name.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool.not.i = icmp eq i64 %20, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end12.i.if.then18.i_crit_edge

if.end12.i.if.then18.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18.i

lor.lhs.false.i:                                  ; preds = %if.end12.i
  %da.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %21 = ptrtoint ptr %da.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %da.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %cmp16.not.i = icmp eq i8 %22, -1
  br i1 %cmp16.not.i, label %if.end, label %lor.lhs.false.i.if.then18.i_crit_edge

lor.lhs.false.i.if.then18.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then18.i

if.then18.i:                                      ; preds = %lor.lhs.false.i.if.then18.i_crit_edge, %if.end12.i.if.then18.i_crit_edge
  %ndev19.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %23 = ptrtoint ptr %ndev19.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndev19.i, align 4
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %24, ptr noundef nonnull @.str.5) #7
  br label %cleanup47

if.end:                                           ; preds = %lor.lhs.false.i
  %25 = ptrtoint ptr %addr1 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %addr1, align 8
  %call6 = tail call ptr @j1939_ecu_get_by_name(ptr noundef %priv, i64 noundef %26) #4
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end.cleanup47_crit_edge, label %if.end8

if.end.cleanup47_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup47

if.end8:                                          ; preds = %if.end
  %addr9 = getelementptr inbounds %struct.j1939_ecu, ptr %call6, i32 0, i32 2
  %27 = ptrtoint ptr %addr9 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %addr9, align 8
  %29 = ptrtoint ptr %sa.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sa.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %30)
  %cmp12.not = icmp eq i8 %28, %30
  br i1 %cmp12.not, label %if.end8.cleanup_crit_edge, label %if.then14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @j1939_ecu_unmap(ptr noundef nonnull %call6) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end8.cleanup_crit_edge
  tail call void @j1939_ecu_put(ptr noundef nonnull %call6) #4
  br label %if.end32

if.else:                                          ; preds = %entry
  %31 = ptrtoint ptr %addr1 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %addr1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool18.not = icmp eq i64 %32, 0
  br i1 %tobool18.not, label %if.else.if.end32_crit_edge, label %if.then19

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then19:                                        ; preds = %if.else
  %call22 = tail call zeroext i8 @j1939_name_to_addr(ptr noundef %priv, i64 noundef %32) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %call22)
  %cmp.i = icmp ult i8 %call22, -2
  br i1 %cmp.i, label %if.then19.if.end28_crit_edge, label %land.lhs.true

if.then19.if.end28_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

land.lhs.true:                                    ; preds = %if.then19
  %len.i75 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %33 = ptrtoint ptr %len.i75 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp.i76 = icmp ult i32 %34, 3
  br i1 %cmp.i76, label %land.lhs.true.if.then25_crit_edge, label %lor.lhs.false.i77

land.lhs.true.if.then25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then25

lor.lhs.false.i77:                                ; preds = %land.lhs.true
  %35 = ptrtoint ptr %pgn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pgn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 59904, i32 %36)
  %cmp1.not.i = icmp eq i32 %36, 59904
  br i1 %cmp1.not.i, label %j1939_ac_msg_is_request.exit, label %lor.lhs.false.i77.if.then25_crit_edge

lor.lhs.false.i77.if.then25_crit_edge:            ; preds = %lor.lhs.false.i77
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then25

j1939_ac_msg_is_request.exit:                     ; preds = %lor.lhs.false.i77
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 1
  %conv.i = zext i8 %40 to i32
  %arrayidx3.i = getelementptr i8, ptr %38, i32 1
  %41 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %42 to i32
  %shl.i = shl nuw nsw i32 %conv4.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %arrayidx6.i = getelementptr i8, ptr %38, i32 2
  %43 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %44 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 16
  %or9.i = or i32 %or.i, %shl8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 60928, i32 %or9.i)
  %cmp10.i = icmp eq i32 %or9.i, 60928
  br i1 %cmp10.i, label %j1939_ac_msg_is_request.exit.if.end28_crit_edge, label %j1939_ac_msg_is_request.exit.if.then25_crit_edge

j1939_ac_msg_is_request.exit.if.then25_crit_edge: ; preds = %j1939_ac_msg_is_request.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then25

j1939_ac_msg_is_request.exit.if.end28_crit_edge:  ; preds = %j1939_ac_msg_is_request.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then25:                                        ; preds = %j1939_ac_msg_is_request.exit.if.then25_crit_edge, %lor.lhs.false.i77.if.then25_crit_edge, %land.lhs.true.if.then25_crit_edge
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %45 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ndev, align 4
  %47 = ptrtoint ptr %addr1 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %addr1, align 8
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %46, ptr noundef nonnull @.str, i64 noundef %48) #7
  br label %cleanup47

if.end28:                                         ; preds = %j1939_ac_msg_is_request.exit.if.end28_crit_edge, %if.then19.if.end28_crit_edge
  %sa30 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %49 = ptrtoint ptr %sa30 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %call22, ptr %sa30, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end28, %if.else.if.end32_crit_edge, %cleanup
  %dst_name = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %50 = ptrtoint ptr %dst_name to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %dst_name, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %51)
  %tobool34.not = icmp eq i64 %51, 0
  br i1 %tobool34.not, label %if.end32.cleanup47_crit_edge, label %if.then35

if.end32.cleanup47_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup47

if.then35:                                        ; preds = %if.end32
  %call38 = tail call zeroext i8 @j1939_name_to_addr(ptr noundef %priv, i64 noundef %51) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %call38)
  %cmp.i80 = icmp ult i8 %call38, -2
  br i1 %cmp.i80, label %if.end44, label %if.then40

if.then40:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  %ndev41 = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %52 = ptrtoint ptr %ndev41 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ndev41, align 4
  %54 = ptrtoint ptr %dst_name to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %dst_name, align 8
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %53, ptr noundef nonnull @.str.1, i64 noundef %55) #7
  br label %cleanup47

if.end44:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  %da = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %56 = ptrtoint ptr %da to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %call38, ptr %da, align 1
  br label %cleanup47

cleanup47:                                        ; preds = %if.end44, %if.then40, %if.end32.cleanup47_crit_edge, %if.then25, %if.end.cleanup47_crit_edge, %if.then18.i, %if.then10.i, %if.then4.i, %if.then.i
  %retval.1 = phi i32 [ -99, %if.then40 ], [ -99, %if.then25 ], [ 0, %if.end44 ], [ 0, %if.end32.cleanup47_crit_edge ], [ -19, %if.end.cleanup47_crit_edge ], [ -71, %if.then.i ], [ -71, %if.then4.i ], [ -71, %if.then10.i ], [ -71, %if.then18.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @j1939_ecu_get_by_name(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_ecu_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_ecu_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @j1939_name_to_addr(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_ac_recv(ptr noundef %priv, ptr nocapture noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %pgn = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %0 = ptrtoint ptr %pgn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pgn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 60928, i32 %1)
  %cmp = icmp eq i32 %1, 60928
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 8
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %ndev.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %3) #7
  br label %if.end10

if.end.i:                                         ; preds = %if.then
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  %10 = tail call i64 @llvm.bswap.i64(i64 %9) #4
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not.i = icmp eq i64 %9, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %ndev4.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %12 = ptrtoint ptr %ndev4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev4.i, align 4
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %13, ptr noundef nonnull @.str.7) #7
  br label %if.end10

if.end5.i:                                        ; preds = %if.end.i
  %sa.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %14 = ptrtoint ptr %sa.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sa.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp.i.not.i = icmp eq i8 %15, -1
  br i1 %cmp.i.not.i, label %if.then8.i, label %if.end10.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  %ndev9.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %16 = ptrtoint ptr %ndev9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev9.i, align 4
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %17, ptr noundef nonnull @.str.8) #7
  br label %if.end10

if.end10.i:                                       ; preds = %if.end5.i
  %lock.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 1
  tail call void @_raw_write_lock_bh(ptr noundef %lock.i) #4
  %call11.i = tail call ptr @j1939_ecu_get_by_name_locked(ptr noundef %priv, i64 noundef %10) #4
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %land.lhs.true.i, label %if.end10.i.if.end18.i_crit_edge

if.end10.i.if.end18.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %if.end10.i
  %18 = ptrtoint ptr %sa.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sa.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %19)
  %cmp.i87.i = icmp ult i8 %19, -2
  br i1 %cmp.i87.i, label %if.then16.i, label %land.lhs.true.i.out_unlock_bh.i_crit_edge

land.lhs.true.i.out_unlock_bh.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_unlock_bh.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %call17.i = tail call ptr @j1939_ecu_create_locked(ptr noundef %priv, i64 noundef %10) #4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end10.i.if.end18.i_crit_edge
  %ecu.0.i = phi ptr [ %call11.i, %if.end10.i.if.end18.i_crit_edge ], [ %call17.i, %if.then16.i ]
  %tobool.not.i.i = icmp eq ptr %ecu.0.i, null
  %cmp.i88.i = icmp ugt ptr %ecu.0.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i88.i
  br i1 %spec.select.i.i, label %if.end18.i.out_unlock_bh.i_crit_edge, label %if.end21.i

if.end18.i.out_unlock_bh.i_crit_edge:             ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_unlock_bh.i

if.end21.i:                                       ; preds = %if.end18.i
  tail call void @j1939_ecu_timer_cancel(ptr noundef nonnull %ecu.0.i) #4
  %20 = ptrtoint ptr %sa.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sa.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %21)
  %cmp.i89.i = icmp eq i8 %21, -2
  br i1 %cmp.i89.i, label %if.then25.i, label %if.end26.i

if.then25.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @j1939_ecu_unmap_locked(ptr noundef nonnull %ecu.0.i) #4
  br label %out_ecu_put.i

if.end26.i:                                       ; preds = %if.end21.i
  %addr27.i = getelementptr inbounds %struct.j1939_ecu, ptr %ecu.0.i, i32 0, i32 2
  %22 = ptrtoint ptr %addr27.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %addr27.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %21)
  %cmp31.not.i = icmp eq i8 %23, %21
  br i1 %cmp31.not.i, label %if.end26.i.if.end34.i_crit_edge, label %if.then33.i

if.end26.i.if.end34.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

if.then33.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @j1939_ecu_unmap_locked(ptr noundef nonnull %ecu.0.i) #4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then33.i, %if.end26.i.if.end34.i_crit_edge
  %24 = ptrtoint ptr %sa.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sa.i, align 4
  %26 = ptrtoint ptr %addr27.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %addr27.i, align 8
  %27 = load i8, ptr %sa.i, align 4
  %call40.i = tail call ptr @j1939_ecu_get_by_addr_locked(ptr noundef %priv, i8 noundef zeroext %27) #4
  %tobool41.not.i = icmp eq ptr %call40.i, null
  br i1 %tobool41.not.i, label %if.end34.i.if.end49.i_crit_edge, label %if.then42.i

if.end34.i.if.end49.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49.i

if.then42.i:                                      ; preds = %if.end34.i
  %name43.i = getelementptr inbounds %struct.j1939_ecu, ptr %ecu.0.i, i32 0, i32 1
  %28 = ptrtoint ptr %name43.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %name43.i, align 8
  %name44.i = getelementptr inbounds %struct.j1939_ecu, ptr %call40.i, i32 0, i32 1
  %30 = ptrtoint ptr %name44.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %name44.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %31)
  %cmp45.i = icmp ugt i64 %29, %31
  br i1 %cmp45.i, label %if.then47.i, label %if.else.i

if.then47.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @j1939_ecu_unmap_locked(ptr noundef nonnull %ecu.0.i) #4
  tail call void @j1939_ecu_put(ptr noundef nonnull %call40.i) #4
  br label %out_ecu_put.i

if.else.i:                                        ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @j1939_ecu_unmap_locked(ptr noundef nonnull %call40.i) #4
  tail call void @j1939_ecu_put(ptr noundef nonnull %call40.i) #4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.else.i, %if.end34.i.if.end49.i_crit_edge
  tail call void @j1939_ecu_timer_start(ptr noundef nonnull %ecu.0.i) #4
  br label %out_ecu_put.i

out_ecu_put.i:                                    ; preds = %if.end49.i, %if.then47.i, %if.then25.i
  tail call void @j1939_ecu_put(ptr noundef nonnull %ecu.0.i) #4
  br label %out_unlock_bh.i

out_unlock_bh.i:                                  ; preds = %out_ecu_put.i, %if.end18.i.out_unlock_bh.i_crit_edge, %land.lhs.true.i.out_unlock_bh.i_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %lock.i) #4
  br label %if.end10

if.else:                                          ; preds = %entry
  %sa = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %32 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sa, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %33)
  %cmp.i = icmp ult i8 %33, -2
  br i1 %cmp.i, label %if.then3, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then3:                                         ; preds = %if.else
  %call6 = tail call ptr @j1939_ecu_get_by_addr(ptr noundef %priv, i8 noundef zeroext %33) #4
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.then3.if.end10_crit_edge, label %if.then7

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.j1939_ecu, ptr %call6, i32 0, i32 1
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %name, align 8
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %addr, align 8
  tail call void @j1939_ecu_put(ptr noundef nonnull %call6) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then3.if.end10_crit_edge, %if.else.if.end10_crit_edge, %out_unlock_bh.i, %if.then8.i, %if.then3.i, %if.then.i
  %da = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %37 = ptrtoint ptr %da to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %da, align 1
  %call12 = tail call ptr @j1939_ecu_get_by_addr(ptr noundef %priv, i8 noundef zeroext %38) #4
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end10.if.end17_crit_edge, label %if.then14

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %name15 = getelementptr inbounds %struct.j1939_ecu, ptr %call12, i32 0, i32 1
  %39 = ptrtoint ptr %name15 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %name15, align 8
  %dst_name = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %41 = ptrtoint ptr %dst_name to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %dst_name, align 8
  tail call void @j1939_ecu_put(ptr noundef nonnull %call12) #4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end10.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @j1939_ecu_get_by_addr(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @j1939_ecu_get_by_name_locked(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @j1939_ecu_create_locked(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_ecu_timer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_ecu_unmap_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @j1939_ecu_get_by_addr_locked(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_ecu_timer_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/can/j1939/address-claim.c", i32 106, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/can/j1939/address-claim.c", i32 117, i32 30}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/can/j1939/address-claim.c", i32 56, i32 29}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/can/j1939/address-claim.c", i32 62, i32 29}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/can/j1939/address-claim.c", i32 67, i32 29}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/can/j1939/address-claim.c", i32 73, i32 29}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/can/j1939/address-claim.c", i32 133, i32 29}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/can/j1939/address-claim.c", i32 141, i32 29}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/can/j1939/address-claim.c", i32 146, i32 29}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
