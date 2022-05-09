; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/rtl8712_efuse.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/rtl8712_efuse.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.PGPKT_STRUCT = type { i8, i8, [8 x i8] }

@efuse_available_max_size = internal global { i32, [28 x i8] } { i32 509, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [25 x i8] c"efuse_available_max_size\00", align 1
@___asan_gen_.2 = private constant [43 x i8] c"../drivers/staging/rtl8712/rtl8712_efuse.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 24, i32 12 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @efuse_available_max_size], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efuse_available_max_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @r8712_efuse_reg_init(ptr nocapture readnone %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_efuse_reg_uninit(ptr noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860343) #6
  %0 = and i8 %call2.i, 127
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860343, i8 noundef zeroext %0) #6
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270861048, i8 noundef zeroext 2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_efuse_change_max_size(ptr noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  %pre_pg_data = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %pre_pg_data) #6
  %0 = getelementptr inbounds [5 x i8], ptr %pre_pg_data, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i8], ptr %pre_pg_data, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i8], ptr %pre_pg_data, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i8], ptr %pre_pg_data, i32 0, i32 4
  %4 = call ptr @memset(ptr %pre_pg_data, i32 255, i32 5)
  %call = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext 507, ptr noundef nonnull %pre_pg_data)
  %call.1 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext 508, ptr noundef %0)
  %call.2 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext 509, ptr noundef %1)
  %call.3 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext 510, ptr noundef %2)
  %call.4 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext 511, ptr noundef %3)
  %5 = ptrtoint ptr %pre_pg_data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pre_pg_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp8 = icmp eq i8 %6, 3
  br i1 %cmp8, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp12 = icmp eq i8 %8, 0
  br i1 %cmp12, label %land.lhs.true14, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true14:                                  ; preds = %land.lhs.true
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp17 = icmp eq i8 %10, 0
  br i1 %cmp17, label %land.lhs.true19, label %land.lhs.true14.if.end_crit_edge

land.lhs.true14.if.end_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true19:                                  ; preds = %land.lhs.true14
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp22 = icmp eq i8 %12, 0
  br i1 %cmp22, label %land.lhs.true24, label %land.lhs.true19.if.end_crit_edge

land.lhs.true19.if.end_crit_edge:                 ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %14)
  %cmp27 = icmp eq i8 %14, 12
  br i1 %cmp27, label %if.then, label %land.lhs.true24.if.end_crit_edge

land.lhs.true24.if.end_crit_edge:                 ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #8
  %15 = load i32, ptr @efuse_available_max_size, align 4
  %sub = add i32 %15, -5
  store i32 %sub, ptr @efuse_available_max_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true24.if.end_crit_edge, %land.lhs.true19.if.end_crit_edge, %land.lhs.true14.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %pre_pg_data) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %addr, ptr nocapture noundef writeonly %data) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1 = trunc i16 %addr to i8
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860337, i8 noundef zeroext %conv1) #6
  %0 = lshr i16 %addr, 8
  %1 = trunc i16 %0 to i8
  %conv4 = and i8 %1, 3
  %call = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860338) #6
  %2 = and i8 %call, -4
  %or = or i8 %2, %conv4
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860338, i8 noundef zeroext %or) #6
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860339, i8 noundef zeroext 114) #6
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %tmpidx.0 = phi i8 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call9 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860339) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call9)
  %tobool.not = icmp sgt i8 %call9, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %tmpidx.0)
  %cmp = icmp ult i8 %tmpidx.0, 100
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  %inc = add nuw nsw i8 %tmpidx.0, 1
  br i1 %or.cond, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br i1 %cmp, label %if.then, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860336) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  %storemerge = phi i8 [ %call17, %if.then ], [ -1, %while.end.if.end_crit_edge ]
  %bResult.0 = phi i8 [ 1, %if.then ], [ 0, %while.end.if.end_crit_edge ]
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %storemerge, ptr %data, align 1
  ret i8 %bResult.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @r8712_efuse_get_max_size(ptr nocapture noundef readnone %adapter) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @efuse_available_max_size, align 4
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @r8712_efuse_get_current_size(ptr noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  %efuse_data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %efuse_data) #6
  %0 = ptrtoint ptr %efuse_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %efuse_data, align 1, !annotation !11
  %call20 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext 0, ptr noundef nonnull %efuse_data)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call20)
  %tobool1.not21 = icmp eq i8 %call20, 0
  br i1 %tobool1.not21, label %entry.while.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %efuse_addr.01822 = phi i16 [ %add12, %if.end.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %conv2 = zext i16 %efuse_addr.01822 to i32
  %1 = load i32, ptr @efuse_available_max_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv2)
  %cmp = icmp sgt i32 %1, %conv2
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %2 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %efuse_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp5.not = icmp eq i8 %3, -1
  br i1 %cmp5.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end:                                           ; preds = %while.body
  %and.i = and i8 %3, 1
  %4 = xor i8 %and.i, 1
  %and.1.i = lshr i8 %3, 1
  %and.1.lobit.i = and i8 %and.1.i, 1
  %5 = xor i8 %and.1.lobit.i, 1
  %spec.select.1.i = add nuw nsw i8 %5, %4
  %and.2.i = lshr i8 %3, 2
  %and.2.lobit.i = and i8 %and.2.i, 1
  %6 = xor i8 %and.2.lobit.i, 1
  %spec.select.2.i = add nuw nsw i8 %spec.select.1.i, %6
  %7 = lshr i8 %3, 3
  %8 = and i8 %7, 1
  %9 = xor i8 %8, 1
  %spec.select.3.i = add nuw nsw i8 %spec.select.2.i, %9
  %10 = shl nuw nsw i8 %spec.select.3.i, 1
  %mul = zext i8 %10 to i16
  %add = add i16 %efuse_addr.01822, 1
  %add12 = add i16 %add, %mul
  %call = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %add12, ptr noundef nonnull %efuse_data)
  %tobool1.not = icmp eq i8 %call, 0
  br i1 %tobool1.not, label %if.end.while.end_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %efuse_addr.018.lcssa = phi i16 [ 0, %entry.while.end_crit_edge ], [ %efuse_addr.01822, %land.rhs.while.end_crit_edge ], [ %add12, %if.end.while.end_crit_edge ], [ %efuse_addr.01822, %while.body.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %efuse_data) #6
  ret i16 %efuse_addr.018.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @r8712_efuse_pg_packet_read(ptr noundef %adapter, i8 noundef zeroext %offset, ptr noundef writeonly %data) local_unnamed_addr #1 align 64 {
entry:
  %efuse_data = alloca i8, align 1
  %tmpdata = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %efuse_data) #6
  %0 = ptrtoint ptr %efuse_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %efuse_data, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmpdata) #6
  %1 = getelementptr inbounds [8 x i8], ptr %tmpdata, i32 0, i32 1
  %tobool.not = icmp eq ptr %data, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %offset)
  %cmp = icmp ugt i8 %offset, 15
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 -1, ptr %data, align 1
  %3 = load i32, ptr @efuse_available_max_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp573 = icmp sgt i32 %3, 0
  br i1 %cmp573, label %while.body.lr.ph, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end3
  %arrayidx12.i = getelementptr i8, ptr %data, i32 1
  %arrayidx7.1.i = getelementptr i8, ptr %data, i32 2
  %arrayidx12.1.i = getelementptr i8, ptr %data, i32 3
  %arrayidx7.2.i = getelementptr i8, ptr %data, i32 4
  %arrayidx12.2.i = getelementptr i8, ptr %data, i32 5
  %arrayidx7.3.i = getelementptr i8, ptr %data, i32 6
  %arrayidx12.3.i = getelementptr i8, ptr %data, i32 7
  %arrayidx.1 = getelementptr inbounds [8 x i8], ptr %tmpdata, i32 0, i32 1
  %arrayidx.2 = getelementptr inbounds [8 x i8], ptr %tmpdata, i32 0, i32 2
  %arrayidx.3 = getelementptr inbounds [8 x i8], ptr %tmpdata, i32 0, i32 3
  %arrayidx.4 = getelementptr inbounds [8 x i8], ptr %tmpdata, i32 0, i32 4
  %arrayidx.5 = getelementptr inbounds [8 x i8], ptr %tmpdata, i32 0, i32 5
  %arrayidx.6 = getelementptr inbounds [8 x i8], ptr %tmpdata, i32 0, i32 6
  %arrayidx.7 = getelementptr inbounds [8 x i8], ptr %tmpdata, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end38.while.body_crit_edge, %while.body.lr.ph
  %conv476 = phi i32 [ 0, %while.body.lr.ph ], [ %conv4, %if.end38.while.body_crit_edge ]
  %ret.075 = phi i8 [ 1, %while.body.lr.ph ], [ %ret.3, %if.end38.while.body_crit_edge ]
  %efuse_addr.074 = phi i16 [ 0, %while.body.lr.ph ], [ %add43, %if.end38.while.body_crit_edge ]
  %call = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %efuse_addr.074, ptr noundef nonnull %efuse_data)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool7.not = icmp eq i8 %call, 0
  br i1 %tobool7.not, label %while.body.cleanup_crit_edge, label %if.then8

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %while.body
  %4 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %efuse_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp10 = icmp eq i8 %5, -1
  br i1 %cmp10, label %if.then8.cleanup_crit_edge, label %if.end13

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.then8
  %6 = lshr i8 %5, 4
  %7 = and i8 %5, 15
  %and.i = and i8 %5, 1
  %8 = xor i8 %and.i, 1
  %and.1.i = lshr i8 %5, 1
  %and.1.lobit.i = and i8 %and.1.i, 1
  %9 = xor i8 %and.1.lobit.i, 1
  %spec.select.1.i = add nuw nsw i8 %9, %8
  %and.2.i = lshr i8 %5, 2
  %and.2.lobit.i = and i8 %and.2.i, 1
  %10 = xor i8 %and.2.lobit.i, 1
  %spec.select.2.i = add nuw nsw i8 %spec.select.1.i, %10
  %11 = lshr i8 %7, 3
  %12 = xor i8 %11, 1
  %spec.select.3.i = add nuw nsw i8 %spec.select.2.i, %12
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %offset)
  %cmp22 = icmp eq i8 %6, %offset
  br i1 %cmp22, label %if.then24, label %if.end13.if.end38_crit_edge

if.end13.if.end38_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = shl nuw nsw i8 %spec.select.3.i, 1
  br label %if.end38

if.then24:                                        ; preds = %if.end13
  %13 = ptrtoint ptr %tmpdata to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %tmpdata, align 8
  %14 = shl nuw nsw i8 %spec.select.3.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.3.i)
  %cmp2769.not = icmp eq i8 %spec.select.3.i, 0
  br i1 %cmp2769.not, label %if.then24.for.end_crit_edge, label %for.body.lr.ph

if.then24.for.end_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then24
  %umax = call i8 @llvm.umax.i8(i8 %14, i8 1)
  %15 = trunc i32 %conv476 to i16
  %conv32 = add i16 %15, 1
  %call33 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %conv32, ptr noundef nonnull %efuse_data)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call33)
  %tobool34.not = icmp eq i8 %call33, 0
  br i1 %tobool34.not, label %for.body.lr.ph.for.body.1_crit_edge, label %if.then35

for.body.lr.ph.for.body.1_crit_edge:              ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.1

if.then35:                                        ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %efuse_data, align 1
  %18 = ptrtoint ptr %tmpdata to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %tmpdata, align 8
  br label %for.body.1

for.body.1:                                       ; preds = %if.then35, %for.body.lr.ph.for.body.1_crit_edge
  %ret.2 = phi i8 [ %ret.075, %if.then35 ], [ 0, %for.body.lr.ph.for.body.1_crit_edge ]
  %19 = trunc i32 %conv476 to i16
  %conv32.1 = add i16 %19, 2
  %call33.1 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %conv32.1, ptr noundef nonnull %efuse_data)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call33.1)
  %tobool34.not.1 = icmp eq i8 %call33.1, 0
  br i1 %tobool34.not.1, label %for.body.1.for.inc.1_crit_edge, label %if.then35.1

for.body.1.for.inc.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then35.1:                                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %efuse_data, align 1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then35.1, %for.body.1.for.inc.1_crit_edge
  %ret.2.1 = phi i8 [ %ret.2, %if.then35.1 ], [ 0, %for.body.1.for.inc.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %umax)
  %exitcond.not.1 = icmp eq i8 %umax, 2
  br i1 %exitcond.not.1, label %for.inc.1.for.end_crit_edge, label %for.body.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.2:                                       ; preds = %for.inc.1
  %23 = trunc i32 %conv476 to i16
  %conv32.2 = add i16 %23, 3
  %call33.2 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %conv32.2, ptr noundef nonnull %efuse_data)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call33.2)
  %tobool34.not.2 = icmp eq i8 %call33.2, 0
  br i1 %tobool34.not.2, label %for.body.2.for.inc.2_crit_edge, label %if.then35.2

for.body.2.for.inc.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then35.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %efuse_data, align 1
  %26 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx.2, align 2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then35.2, %for.body.2.for.inc.2_crit_edge
  %ret.2.2 = phi i8 [ %ret.2.1, %if.then35.2 ], [ 0, %for.body.2.for.inc.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %umax)
  %exitcond.not.2 = icmp eq i8 %umax, 3
  br i1 %exitcond.not.2, label %for.inc.2.for.end_crit_edge, label %for.body.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.3:                                       ; preds = %for.inc.2
  %27 = trunc i32 %conv476 to i16
  %conv32.3 = add i16 %27, 4
  %call33.3 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %conv32.3, ptr noundef nonnull %efuse_data)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call33.3)
  %tobool34.not.3 = icmp eq i8 %call33.3, 0
  br i1 %tobool34.not.3, label %for.body.3.for.inc.3_crit_edge, label %if.then35.3

for.body.3.for.inc.3_crit_edge:                   ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then35.3:                                      ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %efuse_data, align 1
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx.3, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then35.3, %for.body.3.for.inc.3_crit_edge
  %ret.2.3 = phi i8 [ %ret.2.2, %if.then35.3 ], [ 0, %for.body.3.for.inc.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %umax)
  %exitcond.not.3 = icmp eq i8 %umax, 4
  br i1 %exitcond.not.3, label %for.inc.3.for.end_crit_edge, label %for.body.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.4:                                       ; preds = %for.inc.3
  %31 = trunc i32 %conv476 to i16
  %conv32.4 = add i16 %31, 5
  %call33.4 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %conv32.4, ptr noundef nonnull %efuse_data)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call33.4)
  %tobool34.not.4 = icmp eq i8 %call33.4, 0
  br i1 %tobool34.not.4, label %for.body.4.for.inc.4_crit_edge, label %if.then35.4

for.body.4.for.inc.4_crit_edge:                   ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.then35.4:                                      ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %efuse_data, align 1
  %34 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then35.4, %for.body.4.for.inc.4_crit_edge
  %ret.2.4 = phi i8 [ %ret.2.3, %if.then35.4 ], [ 0, %for.body.4.for.inc.4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %umax)
  %exitcond.not.4 = icmp eq i8 %umax, 5
  br i1 %exitcond.not.4, label %for.inc.4.for.end_crit_edge, label %for.body.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.5:                                       ; preds = %for.inc.4
  %35 = trunc i32 %conv476 to i16
  %conv32.5 = add i16 %35, 6
  %call33.5 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %conv32.5, ptr noundef nonnull %efuse_data)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call33.5)
  %tobool34.not.5 = icmp eq i8 %call33.5, 0
  br i1 %tobool34.not.5, label %for.body.5.for.inc.5_crit_edge, label %if.then35.5

for.body.5.for.inc.5_crit_edge:                   ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

if.then35.5:                                      ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %efuse_data, align 1
  %38 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx.5, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then35.5, %for.body.5.for.inc.5_crit_edge
  %ret.2.5 = phi i8 [ %ret.2.4, %if.then35.5 ], [ 0, %for.body.5.for.inc.5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %umax)
  %exitcond.not.5 = icmp eq i8 %umax, 6
  br i1 %exitcond.not.5, label %for.inc.5.for.end_crit_edge, label %for.body.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.6:                                       ; preds = %for.inc.5
  %39 = trunc i32 %conv476 to i16
  %conv32.6 = add i16 %39, 7
  %call33.6 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %conv32.6, ptr noundef nonnull %efuse_data)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call33.6)
  %tobool34.not.6 = icmp eq i8 %call33.6, 0
  br i1 %tobool34.not.6, label %for.body.6.for.inc.6_crit_edge, label %if.then35.6

for.body.6.for.inc.6_crit_edge:                   ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

if.then35.6:                                      ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %efuse_data, align 1
  %42 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx.6, align 2
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then35.6, %for.body.6.for.inc.6_crit_edge
  %ret.2.6 = phi i8 [ %ret.2.5, %if.then35.6 ], [ 0, %for.body.6.for.inc.6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %umax)
  %exitcond.not.6 = icmp eq i8 %umax, 7
  br i1 %exitcond.not.6, label %for.inc.6.for.end_crit_edge, label %for.body.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.7:                                       ; preds = %for.inc.6
  %43 = trunc i32 %conv476 to i16
  %conv32.7 = add i16 %43, 8
  %call33.7 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %conv32.7, ptr noundef nonnull %efuse_data)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call33.7)
  %tobool34.not.7 = icmp eq i8 %call33.7, 0
  br i1 %tobool34.not.7, label %for.body.7.for.end_crit_edge, label %if.then35.7

for.body.7.for.end_crit_edge:                     ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then35.7:                                      ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %efuse_data, align 1
  %46 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx.7, align 1
  br label %for.end

for.end:                                          ; preds = %if.then35.7, %for.body.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %if.then24.for.end_crit_edge
  %ret.1.lcssa = phi i8 [ %ret.075, %if.then24.for.end_crit_edge ], [ %ret.2.1, %for.inc.1.for.end_crit_edge ], [ %ret.2.2, %for.inc.2.for.end_crit_edge ], [ %ret.2.3, %for.inc.3.for.end_crit_edge ], [ %ret.2.4, %for.inc.4.for.end_crit_edge ], [ %ret.2.5, %for.inc.5.for.end_crit_edge ], [ %ret.2.6, %for.inc.6.for.end_crit_edge ], [ %ret.2.6, %if.then35.7 ], [ 0, %for.body.7.for.end_crit_edge ]
  %conv2.i = zext i8 %7 to i32
  %and.i66 = and i32 %conv2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66)
  %tobool.not.i = icmp eq i32 %and.i66, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.end.for.inc.i_crit_edge

for.end.for.inc.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %tmpdata to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tmpdata, align 8
  %49 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %data, align 1
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %1, align 1
  %52 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx12.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.end.for.inc.i_crit_edge
  %tmpindex.1.i = phi i8 [ 0, %for.end.for.inc.i_crit_edge ], [ 2, %if.then.i ]
  %and.1.i67 = and i32 %conv2.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i67)
  %tobool.not.1.i = icmp eq i32 %and.1.i67, 0
  br i1 %tobool.not.1.i, label %if.then.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.1.i = or i8 %tmpindex.1.i, 1
  %idxprom.1.i = zext i8 %tmpindex.1.i to i32
  %arrayidx.1.i = getelementptr i8, ptr %tmpdata, i32 %idxprom.1.i
  %53 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.1.i, align 2
  %55 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx7.1.i, align 1
  %inc8.1.i = add nuw nsw i8 %tmpindex.1.i, 2
  %idxprom9.1.i = zext i8 %inc.1.i to i32
  %arrayidx10.1.i = getelementptr i8, ptr %tmpdata, i32 %idxprom9.1.i
  %56 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx10.1.i, align 1
  %58 = ptrtoint ptr %arrayidx12.1.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx12.1.i, align 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %tmpindex.1.1.i = phi i8 [ %tmpindex.1.i, %for.inc.i.for.inc.1.i_crit_edge ], [ %inc8.1.i, %if.then.1.i ]
  %and.2.i68 = and i32 %conv2.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i68)
  %tobool.not.2.i = icmp eq i32 %and.2.i68, 0
  br i1 %tobool.not.2.i, label %if.then.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.2.i = add nuw nsw i8 %tmpindex.1.1.i, 1
  %idxprom.2.i = zext i8 %tmpindex.1.1.i to i32
  %arrayidx.2.i = getelementptr i8, ptr %tmpdata, i32 %idxprom.2.i
  %59 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.2.i, align 1
  %61 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx7.2.i, align 1
  %inc8.2.i = add nuw nsw i8 %tmpindex.1.1.i, 2
  %idxprom9.2.i = zext i8 %inc.2.i to i32
  %arrayidx10.2.i = getelementptr i8, ptr %tmpdata, i32 %idxprom9.2.i
  %62 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx10.2.i, align 1
  %64 = ptrtoint ptr %arrayidx12.2.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx12.2.i, align 1
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %tmpindex.1.2.i = phi i8 [ %tmpindex.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %inc8.2.i, %if.then.2.i ]
  %and.3.i = and i32 %conv2.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %if.then.3.i, label %for.inc.2.i.if.end38_crit_edge

for.inc.2.i.if.end38_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.3.i = add nuw nsw i8 %tmpindex.1.2.i, 1
  %idxprom.3.i = zext i8 %tmpindex.1.2.i to i32
  %arrayidx.3.i = getelementptr i8, ptr %tmpdata, i32 %idxprom.3.i
  %65 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.3.i, align 1
  %67 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx7.3.i, align 1
  %idxprom9.3.i = zext i8 %inc.3.i to i32
  %arrayidx10.3.i = getelementptr i8, ptr %tmpdata, i32 %idxprom9.3.i
  %68 = ptrtoint ptr %arrayidx10.3.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx10.3.i, align 1
  %70 = ptrtoint ptr %arrayidx12.3.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %arrayidx12.3.i, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then.3.i, %for.inc.2.i.if.end38_crit_edge, %if.end13.if.end38_crit_edge
  %.pre-phi = phi i8 [ %.pre, %if.end13.if.end38_crit_edge ], [ %14, %if.then.3.i ], [ %14, %for.inc.2.i.if.end38_crit_edge ]
  %ret.3 = phi i8 [ %ret.075, %if.end13.if.end38_crit_edge ], [ %ret.1.lcssa, %if.then.3.i ], [ %ret.1.lcssa, %for.inc.2.i.if.end38_crit_edge ]
  %71 = or i8 %.pre-phi, 1
  %add41 = zext i8 %71 to i16
  %add43 = add i16 %efuse_addr.074, %add41
  %conv4 = zext i16 %add43 to i32
  %72 = load i32, ptr @efuse_available_max_size, align 4
  %cmp5 = icmp sgt i32 %72, %conv4
  br i1 %cmp5, label %if.end38.while.body_crit_edge, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38.while.body_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup:                                          ; preds = %if.end38.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end3.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ], [ %ret.075, %if.then8.cleanup_crit_edge ], [ %ret.3, %if.end38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmpdata) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %efuse_data) #6
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @r8712_efuse_pg_packet_write(ptr noundef %adapter, i8 noundef zeroext %offset, i8 noundef zeroext %word_en, ptr nocapture noundef readonly %data) local_unnamed_addr #1 align 64 {
entry:
  %pkt.i = alloca %struct.PGPKT_STRUCT, align 1
  %value.i = alloca i8, align 1
  %efuse_data.i = alloca i8, align 1
  %efuse_data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %efuse_data) #6
  %call = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270861048) #6
  %0 = ptrtoint ptr %efuse_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %call, ptr %efuse_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call)
  %cmp.not = icmp eq i8 %call, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = shl i8 %offset, 4
  %2 = and i8 %word_en, 15
  %or109 = or i8 %2, %1
  %and.i = and i8 %word_en, 1
  %3 = xor i8 %and.i, 1
  %and.1.i = lshr i8 %word_en, 1
  %and.1.lobit.i = and i8 %and.1.i, 1
  %4 = xor i8 %and.1.lobit.i, 1
  %spec.select.1.i = add nuw nsw i8 %4, %3
  %and.2.i = lshr i8 %word_en, 2
  %and.2.lobit.i = and i8 %and.2.i, 1
  %5 = xor i8 %and.2.lobit.i, 1
  %spec.select.2.i = add nuw nsw i8 %spec.select.1.i, %5
  %6 = lshr i8 %word_en, 3
  %.lobit.i = and i8 %6, 1
  %7 = xor i8 %.lobit.i, 1
  %spec.select.3.i = add nuw nsw i8 %spec.select.2.i, %7
  %8 = shl nuw nsw i8 %spec.select.3.i, 1
  %9 = or i8 %8, 1
  %add = zext i8 %9 to i32
  %10 = getelementptr inbounds %struct.PGPKT_STRUCT, ptr %pkt.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.PGPKT_STRUCT, ptr %pkt.i, i32 0, i32 2
  %12 = getelementptr inbounds %struct.PGPKT_STRUCT, ptr %pkt.i, i32 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.PGPKT_STRUCT, ptr %pkt.i, i32 0, i32 2, i32 2
  %14 = getelementptr inbounds %struct.PGPKT_STRUCT, ptr %pkt.i, i32 0, i32 2, i32 3
  %15 = getelementptr inbounds %struct.PGPKT_STRUCT, ptr %pkt.i, i32 0, i32 2, i32 4
  %16 = getelementptr inbounds %struct.PGPKT_STRUCT, ptr %pkt.i, i32 0, i32 2, i32 5
  %17 = getelementptr inbounds %struct.PGPKT_STRUCT, ptr %pkt.i, i32 0, i32 2, i32 6
  %18 = getelementptr inbounds %struct.PGPKT_STRUCT, ptr %pkt.i, i32 0, i32 2, i32 7
  br label %while.cond

while.cond:                                       ; preds = %fix_header.exit.while.cond_crit_edge, %if.end
  %efuse_addr.0 = phi i16 [ 0, %if.end ], [ %efuse_addr.018.i.lcssa, %fix_header.exit.while.cond_crit_edge ]
  %repeat_times.0 = phi i32 [ 0, %if.end ], [ %inc72, %fix_header.exit.while.cond_crit_edge ]
  %bResult.0 = phi i8 [ 1, %if.end ], [ 0, %fix_header.exit.while.cond_crit_edge ]
  %conv7 = zext i16 %efuse_addr.0 to i32
  %19 = load i32, ptr @efuse_available_max_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv7)
  %cmp8 = icmp sgt i32 %19, %conv7
  br i1 %cmp8, label %while.body, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %efuse_data.i) #6
  %20 = ptrtoint ptr %efuse_data.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %efuse_data.i, align 1, !annotation !11
  %call.i161 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext 0, ptr noundef nonnull %efuse_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i161)
  %tobool1.not.i162 = icmp eq i8 %call.i161, 0
  br i1 %tobool1.not.i162, label %while.body.r8712_efuse_get_current_size.exit_crit_edge, label %while.body.land.rhs.i_crit_edge

while.body.land.rhs.i_crit_edge:                  ; preds = %while.body
  br label %land.rhs.i

while.body.r8712_efuse_get_current_size.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %r8712_efuse_get_current_size.exit

land.rhs.i:                                       ; preds = %if.end.i.land.rhs.i_crit_edge, %while.body.land.rhs.i_crit_edge
  %efuse_addr.018.i163 = phi i16 [ %add12.i, %if.end.i.land.rhs.i_crit_edge ], [ 0, %while.body.land.rhs.i_crit_edge ]
  %conv2.i = zext i16 %efuse_addr.018.i163 to i32
  %21 = load i32, ptr @efuse_available_max_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv2.i)
  %cmp.i = icmp sgt i32 %21, %conv2.i
  br i1 %cmp.i, label %while.body.i, label %land.rhs.i.r8712_efuse_get_current_size.exit_crit_edge

land.rhs.i.r8712_efuse_get_current_size.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r8712_efuse_get_current_size.exit

while.body.i:                                     ; preds = %land.rhs.i
  %22 = ptrtoint ptr %efuse_data.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %efuse_data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp5.not.i = icmp eq i8 %23, -1
  br i1 %cmp5.not.i, label %while.body.i.r8712_efuse_get_current_size.exit_crit_edge, label %if.end.i

while.body.i.r8712_efuse_get_current_size.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r8712_efuse_get_current_size.exit

if.end.i:                                         ; preds = %while.body.i
  %and.i.i = and i8 %23, 1
  %24 = xor i8 %and.i.i, 1
  %and.1.i.i = lshr i8 %23, 1
  %and.1.lobit.i.i = and i8 %and.1.i.i, 1
  %25 = xor i8 %and.1.lobit.i.i, 1
  %spec.select.1.i.i = add nuw nsw i8 %25, %24
  %and.2.i.i = lshr i8 %23, 2
  %and.2.lobit.i.i = and i8 %and.2.i.i, 1
  %26 = xor i8 %and.2.lobit.i.i, 1
  %spec.select.2.i.i = add nuw nsw i8 %spec.select.1.i.i, %26
  %27 = lshr i8 %23, 3
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %spec.select.3.i.i = add nuw nsw i8 %spec.select.2.i.i, %29
  %30 = shl nuw nsw i8 %spec.select.3.i.i, 1
  %mul.i = zext i8 %30 to i16
  %add.i = add i16 %efuse_addr.018.i163, 1
  %add12.i = add i16 %add.i, %mul.i
  %call.i = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %add12.i, ptr noundef nonnull %efuse_data.i) #6
  %tobool1.not.i = icmp eq i8 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i.r8712_efuse_get_current_size.exit_crit_edge, label %if.end.i.land.rhs.i_crit_edge

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

if.end.i.r8712_efuse_get_current_size.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %r8712_efuse_get_current_size.exit

r8712_efuse_get_current_size.exit:                ; preds = %if.end.i.r8712_efuse_get_current_size.exit_crit_edge, %while.body.i.r8712_efuse_get_current_size.exit_crit_edge, %land.rhs.i.r8712_efuse_get_current_size.exit_crit_edge, %while.body.r8712_efuse_get_current_size.exit_crit_edge
  %efuse_addr.018.i.lcssa = phi i16 [ 0, %while.body.r8712_efuse_get_current_size.exit_crit_edge ], [ %add12.i, %if.end.i.r8712_efuse_get_current_size.exit_crit_edge ], [ %efuse_addr.018.i163, %land.rhs.i.r8712_efuse_get_current_size.exit_crit_edge ], [ %efuse_addr.018.i163, %while.body.i.r8712_efuse_get_current_size.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %efuse_data.i) #6
  %conv11 = zext i16 %efuse_addr.018.i.lcssa to i32
  %add13 = add nuw nsw i32 %add, %conv11
  %31 = load i32, ptr @efuse_available_max_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add13, i32 %31)
  %cmp14 = icmp sgt i32 %add13, %31
  br i1 %cmp14, label %r8712_efuse_get_current_size.exit.cleanup_crit_edge, label %if.end17

r8712_efuse_get_current_size.exit.cleanup_crit_edge: ; preds = %r8712_efuse_get_current_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %r8712_efuse_get_current_size.exit
  tail call fastcc void @efuse_one_byte_write(ptr noundef %adapter, i16 noundef zeroext %efuse_addr.018.i.lcssa, i8 noundef zeroext %or109)
  %call20 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %efuse_addr.018.i.lcssa, ptr noundef nonnull %efuse_data)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call20)
  %tobool.not = icmp eq i8 %call20, 0
  br i1 %tobool.not, label %while.body21, label %if.end17.lor.lhs.false_crit_edge

if.end17.lor.lhs.false_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

while.body21:                                     ; preds = %if.end17
  %call20.1 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %efuse_addr.018.i.lcssa, ptr noundef nonnull %efuse_data)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call20.1)
  %tobool.not.1 = icmp eq i8 %call20.1, 0
  br i1 %tobool.not.1, label %while.body21.1, label %while.body21.lor.lhs.false_crit_edge

while.body21.lor.lhs.false_crit_edge:             ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

while.body21.1:                                   ; preds = %while.body21
  %call20.2 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %efuse_addr.018.i.lcssa, ptr noundef nonnull %efuse_data)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call20.2)
  %tobool.not.2 = icmp eq i8 %call20.2, 0
  br i1 %tobool.not.2, label %while.body21.2, label %while.body21.1.lor.lhs.false_crit_edge

while.body21.1.lor.lhs.false_crit_edge:           ; preds = %while.body21.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

while.body21.2:                                   ; preds = %while.body21.1
  %call20.3 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %efuse_addr.018.i.lcssa, ptr noundef nonnull %efuse_data)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call20.3)
  %tobool.not.3 = icmp eq i8 %call20.3, 0
  br i1 %tobool.not.3, label %while.body21.2.if.then32_crit_edge, label %while.body21.2.lor.lhs.false_crit_edge

while.body21.2.lor.lhs.false_crit_edge:           ; preds = %while.body21.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

while.body21.2.if.then32_crit_edge:               ; preds = %while.body21.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

lor.lhs.false:                                    ; preds = %while.body21.2.lor.lhs.false_crit_edge, %while.body21.1.lor.lhs.false_crit_edge, %while.body21.lor.lhs.false_crit_edge, %if.end17.lor.lhs.false_crit_edge
  %32 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %efuse_data, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %or109, i8 %33)
  %cmp30 = icmp eq i8 %or109, %33
  br i1 %cmp30, label %lor.lhs.false.if.then32_crit_edge, label %if.end62

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %while.body21.2.if.then32_crit_edge
  %bResult.1125 = phi i8 [ 0, %while.body21.2.if.then32_crit_edge ], [ %bResult.0, %lor.lhs.false.if.then32_crit_edge ]
  %inc33 = add i16 %efuse_addr.018.i.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.3.i)
  %cmp37166.not = icmp eq i8 %spec.select.3.i, 0
  br i1 %cmp37166.not, label %if.then32.cleanup_crit_edge, label %for.body.preheader

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.then32
  %umax = call i8 @llvm.umax.i8(i8 %8, i8 1)
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %data, align 1
  tail call fastcc void @efuse_one_byte_write(ptr noundef %adapter, i16 noundef zeroext %inc33, i8 noundef zeroext %35)
  %call49 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %inc33, ptr noundef nonnull %efuse_data)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call49)
  %tobool50.not = icmp eq i8 %call49, 0
  br i1 %tobool50.not, label %for.body.preheader.for.body.1_crit_edge, label %if.else

for.body.preheader.for.body.1_crit_edge:          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.1

if.else:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %data, align 1
  %38 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %efuse_data, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %39)
  %cmp56.not = icmp eq i8 %37, %39
  %spec.select = select i1 %cmp56.not, i8 %bResult.1125, i8 0
  br label %for.body.1

for.body.1:                                       ; preds = %if.else, %for.body.preheader.for.body.1_crit_edge
  %bResult.3 = phi i8 [ 0, %for.body.preheader.for.body.1_crit_edge ], [ %spec.select, %if.else ]
  %conv42.1 = add i16 %efuse_addr.018.i.lcssa, 2
  %add.ptr.1 = getelementptr i8, ptr %data, i32 1
  %40 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr.1, align 1
  tail call fastcc void @efuse_one_byte_write(ptr noundef %adapter, i16 noundef zeroext %conv42.1, i8 noundef zeroext %41)
  %call49.1 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %conv42.1, ptr noundef nonnull %efuse_data)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call49.1)
  %tobool50.not.1 = icmp eq i8 %call49.1, 0
  br i1 %tobool50.not.1, label %for.body.1.for.inc.1_crit_edge, label %if.else.1

for.body.1.for.inc.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.else.1:                                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr.1, align 1
  %44 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %efuse_data, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp56.not.1 = icmp eq i8 %43, %45
  %spec.select.1 = select i1 %cmp56.not.1, i8 %bResult.3, i8 0
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %for.body.1.for.inc.1_crit_edge
  %bResult.3.1 = phi i8 [ 0, %for.body.1.for.inc.1_crit_edge ], [ %spec.select.1, %if.else.1 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %umax)
  %exitcond.not.1 = icmp eq i8 %umax, 2
  br i1 %exitcond.not.1, label %for.inc.1.cleanup_crit_edge, label %for.body.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.2:                                       ; preds = %for.inc.1
  %conv42.2 = add i16 %efuse_addr.018.i.lcssa, 3
  %add.ptr.2 = getelementptr i8, ptr %data, i32 2
  %46 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr.2, align 1
  tail call fastcc void @efuse_one_byte_write(ptr noundef %adapter, i16 noundef zeroext %conv42.2, i8 noundef zeroext %47)
  %call49.2 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %conv42.2, ptr noundef nonnull %efuse_data)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call49.2)
  %tobool50.not.2 = icmp eq i8 %call49.2, 0
  br i1 %tobool50.not.2, label %for.body.2.for.inc.2_crit_edge, label %if.else.2

for.body.2.for.inc.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.else.2:                                        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %add.ptr.2, align 1
  %50 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %efuse_data, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp56.not.2 = icmp eq i8 %49, %51
  %spec.select.2 = select i1 %cmp56.not.2, i8 %bResult.3.1, i8 0
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.else.2, %for.body.2.for.inc.2_crit_edge
  %bResult.3.2 = phi i8 [ 0, %for.body.2.for.inc.2_crit_edge ], [ %spec.select.2, %if.else.2 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %umax)
  %exitcond.not.2 = icmp eq i8 %umax, 3
  br i1 %exitcond.not.2, label %for.inc.2.cleanup_crit_edge, label %for.body.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.3:                                       ; preds = %for.inc.2
  %conv42.3 = add i16 %efuse_addr.018.i.lcssa, 4
  %add.ptr.3 = getelementptr i8, ptr %data, i32 3
  %52 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr.3, align 1
  tail call fastcc void @efuse_one_byte_write(ptr noundef %adapter, i16 noundef zeroext %conv42.3, i8 noundef zeroext %53)
  %call49.3 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %conv42.3, ptr noundef nonnull %efuse_data)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call49.3)
  %tobool50.not.3 = icmp eq i8 %call49.3, 0
  br i1 %tobool50.not.3, label %for.body.3.for.inc.3_crit_edge, label %if.else.3

for.body.3.for.inc.3_crit_edge:                   ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.else.3:                                        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %add.ptr.3, align 1
  %56 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %efuse_data, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %57)
  %cmp56.not.3 = icmp eq i8 %55, %57
  %spec.select.3 = select i1 %cmp56.not.3, i8 %bResult.3.2, i8 0
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.else.3, %for.body.3.for.inc.3_crit_edge
  %bResult.3.3 = phi i8 [ 0, %for.body.3.for.inc.3_crit_edge ], [ %spec.select.3, %if.else.3 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %umax)
  %exitcond.not.3 = icmp eq i8 %umax, 4
  br i1 %exitcond.not.3, label %for.inc.3.cleanup_crit_edge, label %for.body.4

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.4:                                       ; preds = %for.inc.3
  %conv42.4 = add i16 %efuse_addr.018.i.lcssa, 5
  %add.ptr.4 = getelementptr i8, ptr %data, i32 4
  %58 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %add.ptr.4, align 1
  tail call fastcc void @efuse_one_byte_write(ptr noundef %adapter, i16 noundef zeroext %conv42.4, i8 noundef zeroext %59)
  %call49.4 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %conv42.4, ptr noundef nonnull %efuse_data)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call49.4)
  %tobool50.not.4 = icmp eq i8 %call49.4, 0
  br i1 %tobool50.not.4, label %for.body.4.for.inc.4_crit_edge, label %if.else.4

for.body.4.for.inc.4_crit_edge:                   ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.else.4:                                        ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr.4, align 1
  %62 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %efuse_data, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %63)
  %cmp56.not.4 = icmp eq i8 %61, %63
  %spec.select.4 = select i1 %cmp56.not.4, i8 %bResult.3.3, i8 0
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.else.4, %for.body.4.for.inc.4_crit_edge
  %bResult.3.4 = phi i8 [ 0, %for.body.4.for.inc.4_crit_edge ], [ %spec.select.4, %if.else.4 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %umax)
  %exitcond.not.4 = icmp eq i8 %umax, 5
  br i1 %exitcond.not.4, label %for.inc.4.cleanup_crit_edge, label %for.body.5

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.5:                                       ; preds = %for.inc.4
  %conv42.5 = add i16 %efuse_addr.018.i.lcssa, 6
  %add.ptr.5 = getelementptr i8, ptr %data, i32 5
  %64 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %add.ptr.5, align 1
  tail call fastcc void @efuse_one_byte_write(ptr noundef %adapter, i16 noundef zeroext %conv42.5, i8 noundef zeroext %65)
  %call49.5 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %conv42.5, ptr noundef nonnull %efuse_data)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call49.5)
  %tobool50.not.5 = icmp eq i8 %call49.5, 0
  br i1 %tobool50.not.5, label %for.body.5.for.inc.5_crit_edge, label %if.else.5

for.body.5.for.inc.5_crit_edge:                   ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

if.else.5:                                        ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %add.ptr.5, align 1
  %68 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %efuse_data, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %69)
  %cmp56.not.5 = icmp eq i8 %67, %69
  %spec.select.5 = select i1 %cmp56.not.5, i8 %bResult.3.4, i8 0
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.else.5, %for.body.5.for.inc.5_crit_edge
  %bResult.3.5 = phi i8 [ 0, %for.body.5.for.inc.5_crit_edge ], [ %spec.select.5, %if.else.5 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %umax)
  %exitcond.not.5 = icmp eq i8 %umax, 6
  br i1 %exitcond.not.5, label %for.inc.5.cleanup_crit_edge, label %for.body.6

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.6:                                       ; preds = %for.inc.5
  %conv42.6 = add i16 %efuse_addr.018.i.lcssa, 7
  %add.ptr.6 = getelementptr i8, ptr %data, i32 6
  %70 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %add.ptr.6, align 1
  tail call fastcc void @efuse_one_byte_write(ptr noundef %adapter, i16 noundef zeroext %conv42.6, i8 noundef zeroext %71)
  %call49.6 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %conv42.6, ptr noundef nonnull %efuse_data)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call49.6)
  %tobool50.not.6 = icmp eq i8 %call49.6, 0
  br i1 %tobool50.not.6, label %for.body.6.for.inc.6_crit_edge, label %if.else.6

for.body.6.for.inc.6_crit_edge:                   ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

if.else.6:                                        ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %add.ptr.6, align 1
  %74 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %efuse_data, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %73, i8 %75)
  %cmp56.not.6 = icmp eq i8 %73, %75
  %spec.select.6 = select i1 %cmp56.not.6, i8 %bResult.3.5, i8 0
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.else.6, %for.body.6.for.inc.6_crit_edge
  %bResult.3.6 = phi i8 [ 0, %for.body.6.for.inc.6_crit_edge ], [ %spec.select.6, %if.else.6 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %umax)
  %exitcond.not.6 = icmp eq i8 %umax, 7
  br i1 %exitcond.not.6, label %for.inc.6.cleanup_crit_edge, label %for.body.7

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.7:                                       ; preds = %for.inc.6
  %conv42.7 = add i16 %efuse_addr.018.i.lcssa, 8
  %add.ptr.7 = getelementptr i8, ptr %data, i32 7
  %76 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %add.ptr.7, align 1
  tail call fastcc void @efuse_one_byte_write(ptr noundef %adapter, i16 noundef zeroext %conv42.7, i8 noundef zeroext %77)
  %call49.7 = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %conv42.7, ptr noundef nonnull %efuse_data)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call49.7)
  %tobool50.not.7 = icmp eq i8 %call49.7, 0
  br i1 %tobool50.not.7, label %for.body.7.cleanup_crit_edge, label %if.else.7

for.body.7.cleanup_crit_edge:                     ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.7:                                        ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %add.ptr.7, align 1
  %80 = ptrtoint ptr %efuse_data to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %efuse_data, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %79, i8 %81)
  %cmp56.not.7 = icmp eq i8 %79, %81
  %spec.select.7 = select i1 %cmp56.not.7, i8 %bResult.3.6, i8 0
  br label %cleanup

if.end62:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %cmp64 = icmp eq i8 %33, -1
  br i1 %cmp64, label %if.end62.cleanup_crit_edge, label %if.end67

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end67:                                         ; preds = %if.end62
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %pkt.i) #6
  %82 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 8)
  store i64 -1, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %83 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -1, ptr %value.i, align 1, !annotation !11
  %84 = lshr i8 %33, 4
  %85 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %pkt.i, align 1
  %86 = and i8 %33, 15
  %87 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %10, align 1
  %add.i110 = add i16 %efuse_addr.018.i.lcssa, 1
  %and.i.i111 = and i8 %33, 1
  %88 = xor i8 %and.i.i111, 1
  %and.1.i.i112 = lshr i8 %33, 1
  %and.1.lobit.i.i113 = and i8 %and.1.i.i112, 1
  %89 = xor i8 %and.1.lobit.i.i113, 1
  %spec.select.1.i.i114 = add nuw nsw i8 %89, %88
  %and.2.i.i115 = lshr i8 %33, 2
  %and.2.lobit.i.i116 = and i8 %and.2.i.i115, 1
  %90 = xor i8 %and.2.lobit.i.i116, 1
  %spec.select.2.i.i117 = add nuw nsw i8 %spec.select.1.i.i114, %90
  %91 = lshr i8 %86, 3
  %92 = xor i8 %91, 1
  %spec.select.3.i.i118 = add nuw nsw i8 %spec.select.2.i.i117, %92
  %93 = shl nuw nsw i8 %spec.select.3.i.i118, 1
  %mul.i119 = zext i8 %93 to i16
  %add10.i = add i16 %add.i110, %mul.i119
  %conv12.i = zext i16 %add10.i to i32
  %94 = load i32, ptr @efuse_available_max_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %conv12.i)
  %cmp.i120 = icmp slt i32 %94, %conv12.i
  br i1 %cmp.i120, label %if.end67.fix_header.exit.thread_crit_edge, label %while.cond.preheader.i

if.end67.fix_header.exit.thread_crit_edge:        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %fix_header.exit.thread

while.cond.preheader.i:                           ; preds = %if.end67
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %efuse_addr.018.i.lcssa)
  %cmp16229.not.i = icmp eq i16 %efuse_addr.018.i.lcssa, 0
  br i1 %cmp16229.not.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.body.preheader.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.preheader.i:                           ; preds = %while.cond.preheader.i
  %95 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %95)
  %.promoted.i = load i8, ptr %11, align 1
  %96 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %96)
  %.promoted241.i = load i8, ptr %12, align 1
  %97 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %97)
  %.promoted242.i = load i8, ptr %13, align 1
  %98 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %98)
  %.promoted243.i = load i8, ptr %14, align 1
  %99 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %99)
  %.promoted244.i = load i8, ptr %15, align 1
  %100 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %100)
  %.promoted245.i = load i8, ptr %16, align 1
  %101 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %101)
  %.promoted246.i = load i8, ptr %17, align 1
  %102 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %102)
  %.promoted247.i = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.i.i111)
  %tobool52.not.i = icmp eq i8 %and.i.i111, 0
  %103 = and i8 %33, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool52.not.1.i = icmp eq i8 %103, 0
  %104 = and i8 %33, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool52.not.2.i = icmp eq i8 %104, 0
  %105 = and i8 %33, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool52.not.3.i = icmp eq i8 %105, 0
  br label %while.body.i121

while.body.i121:                                  ; preds = %while.cond.backedge.i.while.body.i121_crit_edge, %while.body.preheader.i
  %106 = phi i8 [ %124, %while.cond.backedge.i.while.body.i121_crit_edge ], [ %.promoted247.i, %while.body.preheader.i ]
  %107 = phi i8 [ %125, %while.cond.backedge.i.while.body.i121_crit_edge ], [ %.promoted246.i, %while.body.preheader.i ]
  %108 = phi i8 [ %126, %while.cond.backedge.i.while.body.i121_crit_edge ], [ %.promoted245.i, %while.body.preheader.i ]
  %109 = phi i8 [ %127, %while.cond.backedge.i.while.body.i121_crit_edge ], [ %.promoted244.i, %while.body.preheader.i ]
  %110 = phi i8 [ %128, %while.cond.backedge.i.while.body.i121_crit_edge ], [ %.promoted243.i, %while.body.preheader.i ]
  %111 = phi i8 [ %129, %while.cond.backedge.i.while.body.i121_crit_edge ], [ %.promoted242.i, %while.body.preheader.i ]
  %112 = phi i8 [ %130, %while.cond.backedge.i.while.body.i121_crit_edge ], [ %.promoted241.i, %while.body.preheader.i ]
  %113 = phi i8 [ %131, %while.cond.backedge.i.while.body.i121_crit_edge ], [ %.promoted.i, %while.body.preheader.i ]
  %addr.0230.i = phi i16 [ %addr.0.be.i, %while.cond.backedge.i.while.body.i121_crit_edge ], [ 0, %while.body.preheader.i ]
  %inc.i = add nuw i16 %addr.0230.i, 1
  %call18.i = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %addr.0230.i, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call18.i)
  %tobool.not.i = icmp eq i8 %call18.i, 0
  br i1 %tobool.not.i, label %while.body.i121.while.end.loopexit.i_crit_edge, label %if.end20.i

while.body.i121.while.end.loopexit.i_crit_edge:   ; preds = %while.body.i121
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.loopexit.i

if.end20.i:                                       ; preds = %while.body.i121
  %114 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %value.i, align 1
  %116 = lshr i8 %115, 4
  %117 = and i8 %115, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %84, i8 %116)
  %cmp31.not.i = icmp eq i8 %84, %116
  br i1 %cmp31.not.i, label %for.cond.preheader.i, label %if.then33.i

for.cond.preheader.i:                             ; preds = %if.end20.i
  %conv43.i = zext i8 %117 to i32
  %and44.i = and i32 %conv43.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %for.cond.preheader.i.for.inc.i_crit_edge, label %if.end47.i

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then33.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i213.i = and i8 %115, 1
  %118 = xor i8 %and.i213.i, 1
  %and.1.i214.i = lshr i8 %115, 1
  %and.1.lobit.i215.i = and i8 %and.1.i214.i, 1
  %119 = xor i8 %and.1.lobit.i215.i, 1
  %spec.select.1.i216.i = add nuw nsw i8 %119, %118
  %and.2.i217.i = lshr i8 %115, 2
  %and.2.lobit.i218.i = and i8 %and.2.i217.i, 1
  %120 = xor i8 %and.2.lobit.i218.i, 1
  %spec.select.2.i219.i = add nuw nsw i8 %spec.select.1.i216.i, %120
  %121 = lshr i8 %117, 3
  %122 = xor i8 %121, 1
  %spec.select.3.i221.i = add nuw nsw i8 %spec.select.2.i219.i, %122
  %123 = shl nuw nsw i8 %spec.select.3.i221.i, 1
  %mul36.i = zext i8 %123 to i16
  %add38.i = add i16 %inc.i, %mul36.i
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end71.3.i, %for.inc.2.i.while.cond.backedge.i_crit_edge, %if.then33.i
  %124 = phi i8 [ %106, %if.then33.i ], [ %160, %if.end71.3.i ], [ %106, %for.inc.2.i.while.cond.backedge.i_crit_edge ]
  %125 = phi i8 [ %107, %if.then33.i ], [ %161, %if.end71.3.i ], [ %107, %for.inc.2.i.while.cond.backedge.i_crit_edge ]
  %126 = phi i8 [ %108, %if.then33.i ], [ %154, %if.end71.3.i ], [ %154, %for.inc.2.i.while.cond.backedge.i_crit_edge ]
  %127 = phi i8 [ %109, %if.then33.i ], [ %155, %if.end71.3.i ], [ %155, %for.inc.2.i.while.cond.backedge.i_crit_edge ]
  %128 = phi i8 [ %110, %if.then33.i ], [ %146, %if.end71.3.i ], [ %146, %for.inc.2.i.while.cond.backedge.i_crit_edge ]
  %129 = phi i8 [ %111, %if.then33.i ], [ %147, %if.end71.3.i ], [ %147, %for.inc.2.i.while.cond.backedge.i_crit_edge ]
  %130 = phi i8 [ %112, %if.then33.i ], [ %138, %if.end71.3.i ], [ %138, %for.inc.2.i.while.cond.backedge.i_crit_edge ]
  %131 = phi i8 [ %113, %if.then33.i ], [ %139, %if.end71.3.i ], [ %139, %for.inc.2.i.while.cond.backedge.i_crit_edge ]
  %addr.0.be.i = phi i16 [ %add38.i, %if.then33.i ], [ %add73.3.i, %if.end71.3.i ], [ %addr.2.2.i, %for.inc.2.i.while.cond.backedge.i_crit_edge ]
  %cmp16.i = icmp ult i16 %addr.0.be.i, %efuse_addr.018.i.lcssa
  br i1 %cmp16.i, label %while.cond.backedge.i.while.body.i121_crit_edge, label %while.cond.backedge.i.while.end.loopexit.i_crit_edge

while.cond.backedge.i.while.end.loopexit.i_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.loopexit.i

while.cond.backedge.i.while.body.i121_crit_edge:  ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i121

if.end47.i:                                       ; preds = %for.cond.preheader.i
  br i1 %tobool52.not.i, label %if.end47.i.if.end71.i_crit_edge, label %if.then53.i

if.end47.i.if.end71.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.i

if.then53.i:                                      ; preds = %if.end47.i
  %call54.i = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %inc.i, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call54.i)
  %tobool55.not.i = icmp eq i8 %call54.i, 0
  br i1 %tobool55.not.i, label %if.then53.i.fix_header.exit.thread_crit_edge, label %if.then56.i

if.then53.i.fix_header.exit.thread_crit_edge:     ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fix_header.exit.thread

if.then56.i:                                      ; preds = %if.then53.i
  %132 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %value.i, align 1
  %add60.i = add i16 %addr.0230.i, 2
  %call62.i = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %add60.i, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call62.i)
  %tobool63.not.i = icmp eq i8 %call62.i, 0
  br i1 %tobool63.not.i, label %if.then56.i.fix_header.exit.thread_crit_edge, label %if.then64.i

if.then56.i.fix_header.exit.thread_crit_edge:     ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fix_header.exit.thread

if.then64.i:                                      ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #8
  %134 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %value.i, align 1
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then64.i, %if.end47.i.if.end71.i_crit_edge
  %136 = phi i8 [ %135, %if.then64.i ], [ %112, %if.end47.i.if.end71.i_crit_edge ]
  %137 = phi i8 [ %133, %if.then64.i ], [ %113, %if.end47.i.if.end71.i_crit_edge ]
  %add73.i = add i16 %addr.0230.i, 3
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end71.i, %for.cond.preheader.i.for.inc.i_crit_edge
  %138 = phi i8 [ %136, %if.end71.i ], [ %112, %for.cond.preheader.i.for.inc.i_crit_edge ]
  %139 = phi i8 [ %137, %if.end71.i ], [ %113, %for.cond.preheader.i.for.inc.i_crit_edge ]
  %addr.2.i = phi i16 [ %add73.i, %if.end71.i ], [ %inc.i, %for.cond.preheader.i.for.inc.i_crit_edge ]
  %and44.1.i = and i32 %conv43.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.1.i)
  %tobool45.not.1.i = icmp eq i32 %and44.1.i, 0
  br i1 %tobool45.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end47.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.end47.1.i:                                     ; preds = %for.inc.i
  br i1 %tobool52.not.1.i, label %if.end47.1.i.if.end71.1.i_crit_edge, label %if.then53.1.i

if.end47.1.i.if.end71.1.i_crit_edge:              ; preds = %if.end47.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.1.i

if.then53.1.i:                                    ; preds = %if.end47.1.i
  %call54.1.i = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %addr.2.i, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call54.1.i)
  %tobool55.not.1.i = icmp eq i8 %call54.1.i, 0
  br i1 %tobool55.not.1.i, label %if.then53.1.i.fix_header.exit.thread_crit_edge, label %if.then56.1.i

if.then53.1.i.fix_header.exit.thread_crit_edge:   ; preds = %if.then53.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fix_header.exit.thread

if.then56.1.i:                                    ; preds = %if.then53.1.i
  %140 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %value.i, align 1
  %add60.1.i = add i16 %addr.2.i, 1
  %call62.1.i = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %add60.1.i, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call62.1.i)
  %tobool63.not.1.i = icmp eq i8 %call62.1.i, 0
  br i1 %tobool63.not.1.i, label %if.then56.1.i.fix_header.exit.thread_crit_edge, label %if.then64.1.i

if.then56.1.i.fix_header.exit.thread_crit_edge:   ; preds = %if.then56.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fix_header.exit.thread

if.then64.1.i:                                    ; preds = %if.then56.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %142 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %value.i, align 1
  br label %if.end71.1.i

if.end71.1.i:                                     ; preds = %if.then64.1.i, %if.end47.1.i.if.end71.1.i_crit_edge
  %144 = phi i8 [ %143, %if.then64.1.i ], [ %110, %if.end47.1.i.if.end71.1.i_crit_edge ]
  %145 = phi i8 [ %141, %if.then64.1.i ], [ %111, %if.end47.1.i.if.end71.1.i_crit_edge ]
  %add73.1.i = add i16 %addr.2.i, 2
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end71.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %146 = phi i8 [ %144, %if.end71.1.i ], [ %110, %for.inc.i.for.inc.1.i_crit_edge ]
  %147 = phi i8 [ %145, %if.end71.1.i ], [ %111, %for.inc.i.for.inc.1.i_crit_edge ]
  %addr.2.1.i = phi i16 [ %add73.1.i, %if.end71.1.i ], [ %addr.2.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %and44.2.i = and i32 %conv43.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.2.i)
  %tobool45.not.2.i = icmp eq i32 %and44.2.i, 0
  br i1 %tobool45.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end47.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.end47.2.i:                                     ; preds = %for.inc.1.i
  br i1 %tobool52.not.2.i, label %if.end47.2.i.if.end71.2.i_crit_edge, label %if.then53.2.i

if.end47.2.i.if.end71.2.i_crit_edge:              ; preds = %if.end47.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.2.i

if.then53.2.i:                                    ; preds = %if.end47.2.i
  %call54.2.i = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %addr.2.1.i, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call54.2.i)
  %tobool55.not.2.i = icmp eq i8 %call54.2.i, 0
  br i1 %tobool55.not.2.i, label %if.then53.2.i.fix_header.exit.thread_crit_edge, label %if.then56.2.i

if.then53.2.i.fix_header.exit.thread_crit_edge:   ; preds = %if.then53.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fix_header.exit.thread

if.then56.2.i:                                    ; preds = %if.then53.2.i
  %148 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %value.i, align 1
  %add60.2.i = add i16 %addr.2.1.i, 1
  %call62.2.i = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %add60.2.i, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call62.2.i)
  %tobool63.not.2.i = icmp eq i8 %call62.2.i, 0
  br i1 %tobool63.not.2.i, label %if.then56.2.i.fix_header.exit.thread_crit_edge, label %if.then64.2.i

if.then56.2.i.fix_header.exit.thread_crit_edge:   ; preds = %if.then56.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fix_header.exit.thread

if.then64.2.i:                                    ; preds = %if.then56.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %150 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %value.i, align 1
  br label %if.end71.2.i

if.end71.2.i:                                     ; preds = %if.then64.2.i, %if.end47.2.i.if.end71.2.i_crit_edge
  %152 = phi i8 [ %151, %if.then64.2.i ], [ %108, %if.end47.2.i.if.end71.2.i_crit_edge ]
  %153 = phi i8 [ %149, %if.then64.2.i ], [ %109, %if.end47.2.i.if.end71.2.i_crit_edge ]
  %add73.2.i = add i16 %addr.2.1.i, 2
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end71.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %154 = phi i8 [ %152, %if.end71.2.i ], [ %108, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %155 = phi i8 [ %153, %if.end71.2.i ], [ %109, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %addr.2.2.i = phi i16 [ %add73.2.i, %if.end71.2.i ], [ %addr.2.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %and44.3.i = and i32 %conv43.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.3.i)
  %tobool45.not.3.i = icmp eq i32 %and44.3.i, 0
  br i1 %tobool45.not.3.i, label %for.inc.2.i.while.cond.backedge.i_crit_edge, label %if.end47.3.i

for.inc.2.i.while.cond.backedge.i_crit_edge:      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge.i

if.end47.3.i:                                     ; preds = %for.inc.2.i
  br i1 %tobool52.not.3.i, label %if.end47.3.i.if.end71.3.i_crit_edge, label %if.then53.3.i

if.end47.3.i.if.end71.3.i_crit_edge:              ; preds = %if.end47.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.3.i

if.then53.3.i:                                    ; preds = %if.end47.3.i
  %call54.3.i = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %addr.2.2.i, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call54.3.i)
  %tobool55.not.3.i = icmp eq i8 %call54.3.i, 0
  br i1 %tobool55.not.3.i, label %if.then53.3.i.fix_header.exit.thread_crit_edge, label %if.then56.3.i

if.then53.3.i.fix_header.exit.thread_crit_edge:   ; preds = %if.then53.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fix_header.exit.thread

if.then56.3.i:                                    ; preds = %if.then53.3.i
  %156 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %value.i, align 1
  %add60.3.i = add i16 %addr.2.2.i, 1
  %call62.3.i = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %add60.3.i, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call62.3.i)
  %tobool63.not.3.i = icmp eq i8 %call62.3.i, 0
  br i1 %tobool63.not.3.i, label %if.then56.3.i.fix_header.exit.thread_crit_edge, label %if.then64.3.i

if.then56.3.i.fix_header.exit.thread_crit_edge:   ; preds = %if.then56.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fix_header.exit.thread

if.then64.3.i:                                    ; preds = %if.then56.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %158 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %value.i, align 1
  br label %if.end71.3.i

if.end71.3.i:                                     ; preds = %if.then64.3.i, %if.end47.3.i.if.end71.3.i_crit_edge
  %160 = phi i8 [ %159, %if.then64.3.i ], [ %106, %if.end47.3.i.if.end71.3.i_crit_edge ]
  %161 = phi i8 [ %157, %if.then64.3.i ], [ %107, %if.end47.3.i.if.end71.3.i_crit_edge ]
  %add73.3.i = add i16 %addr.2.2.i, 2
  br label %while.cond.backedge.i

while.end.loopexit.i:                             ; preds = %while.cond.backedge.i.while.end.loopexit.i_crit_edge, %while.body.i121.while.end.loopexit.i_crit_edge
  %162 = phi i8 [ %106, %while.body.i121.while.end.loopexit.i_crit_edge ], [ %124, %while.cond.backedge.i.while.end.loopexit.i_crit_edge ]
  %163 = phi i8 [ %107, %while.body.i121.while.end.loopexit.i_crit_edge ], [ %125, %while.cond.backedge.i.while.end.loopexit.i_crit_edge ]
  %164 = phi i8 [ %108, %while.body.i121.while.end.loopexit.i_crit_edge ], [ %126, %while.cond.backedge.i.while.end.loopexit.i_crit_edge ]
  %165 = phi i8 [ %109, %while.body.i121.while.end.loopexit.i_crit_edge ], [ %127, %while.cond.backedge.i.while.end.loopexit.i_crit_edge ]
  %166 = phi i8 [ %110, %while.body.i121.while.end.loopexit.i_crit_edge ], [ %128, %while.cond.backedge.i.while.end.loopexit.i_crit_edge ]
  %167 = phi i8 [ %111, %while.body.i121.while.end.loopexit.i_crit_edge ], [ %129, %while.cond.backedge.i.while.end.loopexit.i_crit_edge ]
  %168 = phi i8 [ %112, %while.body.i121.while.end.loopexit.i_crit_edge ], [ %130, %while.cond.backedge.i.while.end.loopexit.i_crit_edge ]
  %169 = phi i8 [ %113, %while.body.i121.while.end.loopexit.i_crit_edge ], [ %131, %while.cond.backedge.i.while.end.loopexit.i_crit_edge ]
  %addr.3.ph.i = phi i16 [ %inc.i, %while.body.i121.while.end.loopexit.i_crit_edge ], [ %addr.0.be.i, %while.cond.backedge.i.while.end.loopexit.i_crit_edge ]
  %ret.0.ph.i = phi i8 [ 0, %while.body.i121.while.end.loopexit.i_crit_edge ], [ 1, %while.cond.backedge.i.while.end.loopexit.i_crit_edge ]
  %170 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %11, align 1
  %171 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %168, ptr %12, align 1
  %172 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %167, ptr %13, align 1
  %173 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %166, ptr %14, align 1
  %174 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %165, ptr %15, align 1
  %175 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %164, ptr %16, align 1
  %176 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %163, ptr %17, align 1
  %177 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %162, ptr %18, align 1
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.loopexit.i, %while.cond.preheader.i.while.end.i_crit_edge
  %addr.3.i = phi i16 [ 0, %while.cond.preheader.i.while.end.i_crit_edge ], [ %addr.3.ph.i, %while.end.loopexit.i ]
  %ret.0.i = phi i8 [ 1, %while.cond.preheader.i.while.end.i_crit_edge ], [ %ret.0.ph.i, %while.end.loopexit.i ]
  call void @__sanitizer_cov_trace_cmp2(i16 %addr.3.i, i16 %efuse_addr.018.i.lcssa)
  %cmp78.not.i = icmp eq i16 %addr.3.i, %efuse_addr.018.i.lcssa
  br i1 %cmp78.not.i, label %if.end81.i, label %while.end.i.fix_header.exit.thread_crit_edge

while.end.i.fix_header.exit.thread_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fix_header.exit.thread

if.end81.i:                                       ; preds = %while.end.i
  %conv89.i = zext i8 %86 to i32
  br label %for.body86.i

for.body86.i:                                     ; preds = %if.end159.i.for.body86.i_crit_edge, %if.end81.i
  %ret.1238.i = phi i8 [ %ret.0.i, %if.end81.i ], [ %ret.3.i, %if.end159.i.for.body86.i_crit_edge ]
  %i.1236.i = phi i32 [ 0, %if.end81.i ], [ %inc164.i, %if.end159.i.for.body86.i_crit_edge ]
  %addr.4234.i = phi i16 [ %add.i110, %if.end81.i ], [ %add161.i, %if.end159.i.for.body86.i_crit_edge ]
  %shl87.i = shl nuw nsw i32 1, %i.1236.i
  %and90.i = and i32 %shl87.i, %conv89.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i)
  %tobool91.not.i = icmp eq i32 %and90.i, 0
  br i1 %tobool91.not.i, label %for.body86.i.if.end159.i_crit_edge, label %if.then92.i

for.body86.i.if.end159.i_crit_edge:               ; preds = %for.body86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159.i

if.then92.i:                                      ; preds = %for.body86.i
  %mul94.i = shl nuw i32 %i.1236.i, 1
  %arrayidx95.i = getelementptr %struct.PGPKT_STRUCT, ptr %pkt.i, i32 0, i32 2, i32 %mul94.i
  %178 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx95.i, align 1
  tail call fastcc void @efuse_one_byte_write(ptr noundef %adapter, i16 noundef zeroext %addr.4234.i, i8 noundef zeroext %179) #6
  %add98.i = add i16 %addr.4234.i, 1
  %add102.i = or i32 %mul94.i, 1
  %arrayidx103.i = getelementptr %struct.PGPKT_STRUCT, ptr %pkt.i, i32 0, i32 2, i32 %add102.i
  %180 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx103.i, align 1
  tail call fastcc void @efuse_one_byte_write(ptr noundef %adapter, i16 noundef zeroext %add98.i, i8 noundef zeroext %181) #6
  %call105.i = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %addr.4234.i, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call105.i)
  %tobool106.not.i = icmp eq i8 %call105.i, 0
  br i1 %tobool106.not.i, label %if.then92.i.if.end127.i_crit_edge, label %if.else108.i

if.then92.i.if.end127.i_crit_edge:                ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127.i

if.else108.i:                                     ; preds = %if.then92.i
  %182 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %value.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %179, i8 %183)
  %cmp114.not.i = icmp eq i8 %179, %183
  br i1 %cmp114.not.i, label %if.else108.i.if.end127.i_crit_edge, label %if.then116.i

if.else108.i.if.end127.i_crit_edge:               ; preds = %if.else108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127.i

if.then116.i:                                     ; preds = %if.else108.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %183)
  %cmp118.i = icmp eq i8 %183, -1
  br i1 %cmp118.i, label %if.then120.i, label %if.then116.i.if.end127.i_crit_edge

if.then116.i.if.end127.i_crit_edge:               ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127.i

if.then120.i:                                     ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @efuse_one_byte_write(ptr noundef %adapter, i16 noundef zeroext %addr.4234.i, i8 noundef zeroext %179) #6
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then120.i, %if.then116.i.if.end127.i_crit_edge, %if.else108.i.if.end127.i_crit_edge, %if.then92.i.if.end127.i_crit_edge
  %ret.2.i = phi i8 [ 0, %if.then120.i ], [ 0, %if.then116.i.if.end127.i_crit_edge ], [ %ret.1238.i, %if.else108.i.if.end127.i_crit_edge ], [ 0, %if.then92.i.if.end127.i_crit_edge ]
  %call131.i = call fastcc zeroext i8 @efuse_one_byte_read(ptr noundef %adapter, i16 noundef zeroext %add98.i, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call131.i)
  %tobool132.not.i = icmp eq i8 %call131.i, 0
  br i1 %tobool132.not.i, label %if.end127.i.if.end159.i_crit_edge, label %if.else134.i

if.end127.i.if.end159.i_crit_edge:                ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159.i

if.else134.i:                                     ; preds = %if.end127.i
  %184 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %value.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %181, i8 %185)
  %cmp141.not.i = icmp eq i8 %181, %185
  br i1 %cmp141.not.i, label %if.else134.i.if.end159.i_crit_edge, label %if.then143.i

if.else134.i.if.end159.i_crit_edge:               ; preds = %if.else134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159.i

if.then143.i:                                     ; preds = %if.else134.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %185)
  %cmp145.i = icmp eq i8 %185, -1
  br i1 %cmp145.i, label %if.then147.i, label %if.then143.i.if.end159.i_crit_edge

if.then143.i.if.end159.i_crit_edge:               ; preds = %if.then143.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159.i

if.then147.i:                                     ; preds = %if.then143.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @efuse_one_byte_write(ptr noundef %adapter, i16 noundef zeroext %add98.i, i8 noundef zeroext %181) #6
  br label %if.end159.i

if.end159.i:                                      ; preds = %if.then147.i, %if.then143.i.if.end159.i_crit_edge, %if.else134.i.if.end159.i_crit_edge, %if.end127.i.if.end159.i_crit_edge, %for.body86.i.if.end159.i_crit_edge
  %ret.3.i = phi i8 [ 0, %if.then147.i ], [ 0, %if.then143.i.if.end159.i_crit_edge ], [ %ret.2.i, %if.else134.i.if.end159.i_crit_edge ], [ %ret.1238.i, %for.body86.i.if.end159.i_crit_edge ], [ 0, %if.end127.i.if.end159.i_crit_edge ]
  %add161.i = add i16 %addr.4234.i, 2
  %inc164.i = add nuw nsw i32 %i.1236.i, 1
  %exitcond.not.i = icmp eq i32 %inc164.i, 4
  br i1 %exitcond.not.i, label %fix_header.exit, label %if.end159.i.for.body86.i_crit_edge

if.end159.i.for.body86.i_crit_edge:               ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body86.i

fix_header.exit.thread:                           ; preds = %while.end.i.fix_header.exit.thread_crit_edge, %if.then56.3.i.fix_header.exit.thread_crit_edge, %if.then53.3.i.fix_header.exit.thread_crit_edge, %if.then56.2.i.fix_header.exit.thread_crit_edge, %if.then53.2.i.fix_header.exit.thread_crit_edge, %if.then56.1.i.fix_header.exit.thread_crit_edge, %if.then53.1.i.fix_header.exit.thread_crit_edge, %if.then56.i.fix_header.exit.thread_crit_edge, %if.then53.i.fix_header.exit.thread_crit_edge, %if.end67.fix_header.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %pkt.i) #6
  br label %cleanup

fix_header.exit:                                  ; preds = %if.end159.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %pkt.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ret.3.i)
  %tobool69.not = icmp eq i8 %ret.3.i, 0
  %inc72 = add nuw nsw i32 %repeat_times.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %repeat_times.0)
  %cmp73 = icmp ugt i32 %repeat_times.0, 2
  %or.cond = select i1 %tobool69.not, i1 true, i1 %cmp73
  br i1 %or.cond, label %fix_header.exit.cleanup_crit_edge, label %fix_header.exit.while.cond_crit_edge

fix_header.exit.while.cond_crit_edge:             ; preds = %fix_header.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

fix_header.exit.cleanup_crit_edge:                ; preds = %fix_header.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %fix_header.exit.cleanup_crit_edge, %fix_header.exit.thread, %if.end62.cleanup_crit_edge, %if.else.7, %for.body.7.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %r8712_efuse_get_current_size.exit.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ 0, %fix_header.exit.thread ], [ %bResult.1125, %if.then32.cleanup_crit_edge ], [ %bResult.3.1, %for.inc.1.cleanup_crit_edge ], [ %bResult.3.2, %for.inc.2.cleanup_crit_edge ], [ %bResult.3.3, %for.inc.3.cleanup_crit_edge ], [ %bResult.3.4, %for.inc.4.cleanup_crit_edge ], [ %bResult.3.5, %for.inc.5.cleanup_crit_edge ], [ %bResult.3.6, %for.inc.6.cleanup_crit_edge ], [ 0, %for.body.7.cleanup_crit_edge ], [ %spec.select.7, %if.else.7 ], [ %bResult.0, %while.cond.cleanup_crit_edge ], [ 0, %fix_header.exit.cleanup_crit_edge ], [ 0, %if.end62.cleanup_crit_edge ], [ 0, %r8712_efuse_get_current_size.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %efuse_data) #6
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_read8(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efuse_one_byte_write(ptr noundef %adapter, i16 noundef zeroext %addr, i8 noundef zeroext %data) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1 = trunc i16 %addr to i8
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860337, i8 noundef zeroext %conv1) #6
  %0 = lshr i16 %addr, 8
  %1 = trunc i16 %0 to i8
  %conv4 = and i8 %1, 3
  %call = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860338) #6
  %2 = and i8 %call, -4
  %or = or i8 %2, %conv4
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860338, i8 noundef zeroext %or) #6
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860336, i8 noundef zeroext %data) #6
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860339, i8 noundef zeroext -14) #6
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %tmpidx.0 = phi i8 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call9 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860339) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call9)
  %tobool.not = icmp slt i8 %call9, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %tmpidx.0)
  %cmp = icmp ult i8 %tmpidx.0, 100
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  %inc = add nuw nsw i8 %tmpidx.0, 1
  br i1 %or.cond, label %while.cond.while.cond_crit_edge, label %if.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.end:                                           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @r8712_efuse_access(ptr noundef %adapter, i8 noundef zeroext %bRead, i16 noundef zeroext %start_addr, i16 noundef zeroext %cnts, ptr nocapture noundef %data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %start_addr to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %start_addr)
  %cmp = icmp ugt i16 %start_addr, 512
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bRead)
  %tobool.not = icmp eq i8 %bRead, 0
  %conv3 = zext i16 %cnts to i32
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %add = add nuw nsw i32 %conv3, %conv
  %0 = load i32, ptr @efuse_available_max_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %0)
  %cmp4 = icmp sgt i32 %add, %0
  br i1 %cmp4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cnts)
  %cmp1450.not = icmp eq i16 %cnts, 0
  br i1 %cmp1450.not, label %if.end12.for.end_crit_edge, label %for.body.preheader

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %if.end12
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 513)
  %1 = sub nsw i32 %smax, %conv
  br label %for.body

for.cond:                                         ; preds = %if.end21
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond54.not = icmp eq i32 %inc, %conv3
  br i1 %exitcond54.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.051 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.051, i32 %1)
  %exitcond = icmp eq i32 %i.051, %1
  br i1 %exitcond, label %for.body.for.end_crit_edge, label %if.end21

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end21:                                         ; preds = %for.body
  %2 = trunc i32 %i.051 to i16
  %conv24 = add i16 %2, %start_addr
  %add.ptr = getelementptr i8, ptr %data, i32 %i.051
  %call25 = tail call fastcc zeroext i8 @efuse_one_byte_rw(ptr noundef %adapter, i8 noundef zeroext %bRead, i16 noundef zeroext %conv24, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call25)
  %tobool28.not = icmp eq i8 %call25, 0
  %or.cond = select i1 %tobool.not, i1 %tobool28.not, i1 false
  br i1 %or.cond, label %if.end21.for.end_crit_edge, label %for.cond

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end21.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %if.end12.for.end_crit_edge
  %res.1 = phi i8 [ 1, %if.end12.for.end_crit_edge ], [ 0, %if.end21.for.end_crit_edge ], [ 0, %for.body.for.end_crit_edge ], [ %call25, %for.cond.for.end_crit_edge ]
  br i1 %tobool.not, label %if.then32, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then32:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i.i = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860343) #6
  %3 = and i8 %call2.i.i, 127
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860343, i8 noundef zeroext %3) #6
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270861048, i8 noundef zeroext 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %for.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %res.1, %if.then32 ], [ %res.1, %for.end.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @efuse_one_byte_rw(ptr noundef %adapter, i8 noundef zeroext %bRead, i16 noundef zeroext %addr, ptr nocapture noundef %data) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1 = trunc i16 %addr to i8
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860337, i8 noundef zeroext %conv1) #6
  %0 = lshr i16 %addr, 8
  %1 = trunc i16 %0 to i8
  %conv4 = and i8 %1, 3
  %call = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860338) #6
  %2 = and i8 %call, -4
  %or = or i8 %2, %conv4
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860338, i8 noundef zeroext %or) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bRead)
  %tobool.not = icmp eq i8 %bRead, 0
  br i1 %tobool.not, label %if.else20, label %if.then

if.then:                                          ; preds = %entry
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860339, i8 noundef zeroext 114) #6
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then
  %tmpidx.0 = phi i8 [ 0, %if.then ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call9 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860339) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call9)
  %tobool12.not = icmp sgt i8 %call9, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %tmpidx.0)
  %cmp = icmp ult i8 %tmpidx.0, 100
  %or.cond = select i1 %tobool12.not, i1 %cmp, i1 false
  %inc = add nuw nsw i8 %tmpidx.0, 1
  br i1 %or.cond, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br i1 %cmp, label %if.then18, label %if.else

if.then18:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860336) #6
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %call19, ptr %data, align 1
  br label %if.end40

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %data, align 1
  br label %if.end40

if.else20:                                        ; preds = %entry
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data, align 1
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860336, i8 noundef zeroext %6) #6
  tail call void @r8712_write8(ptr noundef %adapter, i32 noundef 270860339, i8 noundef zeroext -14) #6
  br label %while.cond21

while.cond21:                                     ; preds = %while.cond21.while.cond21_crit_edge, %if.else20
  %tmpidx.1 = phi i8 [ 0, %if.else20 ], [ %inc32, %while.cond21.while.cond21_crit_edge ]
  %call22 = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270860339) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call22)
  %tobool25.not = icmp slt i8 %call22, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %tmpidx.1)
  %cmp28 = icmp ult i8 %tmpidx.1, 100
  %or.cond57 = select i1 %tobool25.not, i1 %cmp28, i1 false
  %inc32 = add nuw nsw i8 %tmpidx.1, 1
  br i1 %or.cond57, label %while.cond21.while.cond21_crit_edge, label %while.end33

while.cond21.while.cond21_crit_edge:              ; preds = %while.cond21
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond21

while.end33:                                      ; preds = %while.cond21
  call void @__sanitizer_cov_trace_pc() #8
  %. = zext i1 %cmp28 to i8
  br label %if.end40

if.end40:                                         ; preds = %while.end33, %if.else, %if.then18
  %bResult.0 = phi i8 [ 1, %if.then18 ], [ 0, %if.else ], [ %., %while.end33 ]
  ret i8 %bResult.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @r8712_efuse_map_read(ptr noundef %adapter, i16 noundef zeroext %addr, i16 noundef zeroext %cnts, ptr nocapture noundef writeonly %data) local_unnamed_addr #1 align 64 {
entry:
  %value.i = alloca i8, align 1
  %pktdata = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pktdata) #6
  %conv = zext i16 %addr to i32
  %conv1 = zext i16 %cnts to i32
  %add = add nuw nsw i32 %conv1, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add)
  %cmp = icmp ugt i32 %add, 128
  %0 = ptrtoint ptr %pktdata to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %pktdata, align 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %1 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %value.i, align 1, !annotation !11
  %call.i = call fastcc zeroext i8 @efuse_one_byte_rw(ptr noundef %adapter, i8 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool.not.i = icmp eq i8 %call.i, 0
  br i1 %tobool.not.i, label %efuse_is_empty.exit.thread, label %land.lhs.true

efuse_is_empty.exit.thread:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.i.not = icmp eq i8 %3, -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  br i1 %cmp.i.not, label %for.cond.preheader, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

for.cond.preheader:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cnts)
  %cmp861.not = icmp eq i16 %cnts, 0
  br i1 %cmp861.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.preheader

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %4 = call ptr @memset(ptr %data, i32 255, i32 %conv1)
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %efuse_is_empty.exit.thread
  %5 = trunc i16 %addr to i8
  %6 = lshr i8 %5, 3
  %conv12 = and i8 %6, 15
  %call13 = call zeroext i8 @r8712_efuse_pg_packet_read(ptr noundef %adapter, i8 noundef zeroext %conv12, ptr noundef nonnull %pktdata)
  %and15 = and i32 %conv, 7
  br label %do.body

do.body:                                          ; preds = %for.end30, %if.end10
  %offset.1 = phi i8 [ %conv12, %if.end10 ], [ %inc31, %for.end30 ]
  %ret.0 = phi i8 [ %call13, %if.end10 ], [ %spec.select, %for.end30 ]
  %i.1 = phi i32 [ %and15, %if.end10 ], [ 0, %for.end30 ]
  %idx.0 = phi i32 [ 0, %if.end10 ], [ %13, %for.end30 ]
  %uglygep = getelementptr i8, ptr %data, i32 %idx.0
  %uglygep67 = getelementptr i8, ptr %pktdata, i32 %i.1
  %7 = xor i32 %idx.0, -1
  %8 = add i32 %7, %conv1
  %9 = xor i32 %i.1, 7
  %umin = call i32 @llvm.umin.i32(i32 %8, i32 %9)
  %10 = add nuw nsw i32 %umin, 1
  %11 = call ptr @memcpy(ptr %uglygep, ptr %uglygep67, i32 %10)
  %12 = add i32 %idx.0, 8
  %13 = sub i32 %12, %i.1
  %inc21 = add i32 %idx.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21, i32 %conv1)
  %cmp24 = icmp eq i32 %inc21, %conv1
  br i1 %cmp24, label %do.body.cleanup_crit_edge, label %for.cond16

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond16:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21, i32 %13)
  %exitcond.not = icmp eq i32 %inc21, %13
  br i1 %exitcond.not, label %for.cond16.for.end30_crit_edge, label %for.body19.1

for.cond16.for.end30_crit_edge:                   ; preds = %for.cond16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30

for.body19.1:                                     ; preds = %for.cond16
  %inc21.1 = add i32 %idx.0, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21.1, i32 %conv1)
  %cmp24.1 = icmp eq i32 %inc21.1, %conv1
  br i1 %cmp24.1, label %for.body19.1.cleanup_crit_edge, label %for.cond16.1

for.body19.1.cleanup_crit_edge:                   ; preds = %for.body19.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond16.1:                                     ; preds = %for.body19.1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21.1, i32 %13)
  %exitcond.not.1 = icmp eq i32 %inc21.1, %13
  br i1 %exitcond.not.1, label %for.cond16.1.for.end30_crit_edge, label %for.body19.2

for.cond16.1.for.end30_crit_edge:                 ; preds = %for.cond16.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30

for.body19.2:                                     ; preds = %for.cond16.1
  %inc21.2 = add i32 %idx.0, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21.2, i32 %conv1)
  %cmp24.2 = icmp eq i32 %inc21.2, %conv1
  br i1 %cmp24.2, label %for.body19.2.cleanup_crit_edge, label %for.cond16.2

for.body19.2.cleanup_crit_edge:                   ; preds = %for.body19.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond16.2:                                     ; preds = %for.body19.2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21.2, i32 %13)
  %exitcond.not.2 = icmp eq i32 %inc21.2, %13
  br i1 %exitcond.not.2, label %for.cond16.2.for.end30_crit_edge, label %for.body19.3

for.cond16.2.for.end30_crit_edge:                 ; preds = %for.cond16.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30

for.body19.3:                                     ; preds = %for.cond16.2
  %inc21.3 = add i32 %idx.0, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21.3, i32 %conv1)
  %cmp24.3 = icmp eq i32 %inc21.3, %conv1
  br i1 %cmp24.3, label %for.body19.3.cleanup_crit_edge, label %for.cond16.3

for.body19.3.cleanup_crit_edge:                   ; preds = %for.body19.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond16.3:                                     ; preds = %for.body19.3
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21.3, i32 %13)
  %exitcond.not.3 = icmp eq i32 %inc21.3, %13
  br i1 %exitcond.not.3, label %for.cond16.3.for.end30_crit_edge, label %for.body19.4

for.cond16.3.for.end30_crit_edge:                 ; preds = %for.cond16.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30

for.body19.4:                                     ; preds = %for.cond16.3
  %inc21.4 = add i32 %idx.0, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21.4, i32 %conv1)
  %cmp24.4 = icmp eq i32 %inc21.4, %conv1
  br i1 %cmp24.4, label %for.body19.4.cleanup_crit_edge, label %for.cond16.4

for.body19.4.cleanup_crit_edge:                   ; preds = %for.body19.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond16.4:                                     ; preds = %for.body19.4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21.4, i32 %13)
  %exitcond.not.4 = icmp eq i32 %inc21.4, %13
  br i1 %exitcond.not.4, label %for.cond16.4.for.end30_crit_edge, label %for.body19.5

for.cond16.4.for.end30_crit_edge:                 ; preds = %for.cond16.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30

for.body19.5:                                     ; preds = %for.cond16.4
  %inc21.5 = add i32 %idx.0, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21.5, i32 %conv1)
  %cmp24.5 = icmp eq i32 %inc21.5, %conv1
  br i1 %cmp24.5, label %for.body19.5.cleanup_crit_edge, label %for.cond16.5

for.body19.5.cleanup_crit_edge:                   ; preds = %for.body19.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond16.5:                                     ; preds = %for.body19.5
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21.5, i32 %13)
  %exitcond.not.5 = icmp eq i32 %inc21.5, %13
  br i1 %exitcond.not.5, label %for.cond16.5.for.end30_crit_edge, label %for.body19.6

for.cond16.5.for.end30_crit_edge:                 ; preds = %for.cond16.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30

for.body19.6:                                     ; preds = %for.cond16.5
  %inc21.6 = add i32 %idx.0, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21.6, i32 %conv1)
  %cmp24.6 = icmp eq i32 %inc21.6, %conv1
  br i1 %cmp24.6, label %for.body19.6.cleanup_crit_edge, label %for.cond16.6

for.body19.6.cleanup_crit_edge:                   ; preds = %for.body19.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond16.6:                                     ; preds = %for.body19.6
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21.6, i32 %13)
  %exitcond.not.6 = icmp ne i32 %inc21.6, %13
  %inc21.7 = add i32 %idx.0, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21.7, i32 %conv1)
  %cmp24.7 = icmp eq i32 %inc21.7, %conv1
  %or.cond = and i1 %exitcond.not.6, %cmp24.7
  br i1 %or.cond, label %for.cond16.6.cleanup_crit_edge, label %for.cond16.6.for.end30_crit_edge

for.cond16.6.for.end30_crit_edge:                 ; preds = %for.cond16.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30

for.cond16.6.cleanup_crit_edge:                   ; preds = %for.cond16.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end30:                                        ; preds = %for.cond16.6.for.end30_crit_edge, %for.cond16.5.for.end30_crit_edge, %for.cond16.4.for.end30_crit_edge, %for.cond16.3.for.end30_crit_edge, %for.cond16.2.for.end30_crit_edge, %for.cond16.1.for.end30_crit_edge, %for.cond16.for.end30_crit_edge
  %inc31 = add i8 %offset.1, 1
  %call33 = call zeroext i8 @r8712_efuse_pg_packet_read(ptr noundef %adapter, i8 noundef zeroext %inc31, ptr noundef nonnull %pktdata)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call33)
  %tobool34.not = icmp eq i8 %call33, 0
  %spec.select = select i1 %tobool34.not, i8 0, i8 %ret.0
  br label %do.body

cleanup:                                          ; preds = %for.cond16.6.cleanup_crit_edge, %for.body19.6.cleanup_crit_edge, %for.body19.5.cleanup_crit_edge, %for.body19.4.cleanup_crit_edge, %for.body19.3.cleanup_crit_edge, %for.body19.2.cleanup_crit_edge, %for.body19.1.cleanup_crit_edge, %do.body.cleanup_crit_edge, %for.body.preheader, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ 1, %for.cond.preheader.cleanup_crit_edge ], [ 1, %for.body.preheader ], [ %ret.0, %for.body19.6.cleanup_crit_edge ], [ %ret.0, %for.body19.5.cleanup_crit_edge ], [ %ret.0, %for.body19.4.cleanup_crit_edge ], [ %ret.0, %for.body19.3.cleanup_crit_edge ], [ %ret.0, %for.body19.2.cleanup_crit_edge ], [ %ret.0, %for.body19.1.cleanup_crit_edge ], [ %ret.0, %do.body.cleanup_crit_edge ], [ %ret.0, %for.cond16.6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pktdata) #6
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @r8712_efuse_map_write(ptr noundef %adapter, i16 noundef zeroext %addr, i16 noundef zeroext %cnts, ptr nocapture noundef readonly %data) local_unnamed_addr #1 align 64 {
entry:
  %value.i = alloca i8, align 1
  %pktdata = alloca [8 x i8], align 8
  %newdata = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pktdata) #6
  %0 = getelementptr inbounds [8 x i8], ptr %pktdata, i32 0, i32 2
  %1 = ptrtoint ptr %pktdata to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %pktdata, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %newdata) #6
  %2 = getelementptr inbounds [8 x i8], ptr %newdata, i32 0, i32 1
  %conv = zext i16 %addr to i32
  %conv1 = zext i16 %cnts to i32
  %add = add nuw nsw i32 %conv1, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add)
  %cmp = icmp ugt i32 %add, 128
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call zeroext i8 @r8712_read8(ptr noundef %adapter, i32 noundef 270861048) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call)
  %cmp4.not = icmp eq i8 %call, 3
  br i1 %cmp4.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %value.i, align 1, !annotation !11
  %call.i = call fastcc zeroext i8 @efuse_one_byte_rw(ptr noundef %adapter, i8 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool.not.i = icmp eq i8 %call.i, 0
  br i1 %tobool.not.i, label %efuse_is_empty.exit.thread, label %if.then9

efuse_is_empty.exit.thread:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %value.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp.i.not = icmp eq i8 %5, -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  br i1 %cmp.i.not, label %if.end13, label %if.then17

if.end13:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %pktdata to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %pktdata, align 8
  %7 = trunc i16 %addr to i8
  %8 = lshr i8 %7, 3
  %conv15 = and i8 %8, 15
  br label %if.end23

if.then17:                                        ; preds = %if.then9
  %9 = trunc i16 %addr to i8
  %10 = lshr i8 %9, 3
  %conv15203 = and i8 %10, 15
  %call19 = call zeroext i8 @r8712_efuse_pg_packet_read(ptr noundef %adapter, i8 noundef zeroext %conv15203, ptr noundef nonnull %pktdata)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call19)
  %tobool20.not = icmp eq i8 %call19, 0
  br i1 %tobool20.not, label %if.then17.cleanup_crit_edge, label %if.then17.if.end23_crit_edge

if.then17.if.end23_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.then17.if.end23_crit_edge, %if.end13
  %conv15204 = phi i8 [ %conv15203, %if.then17.if.end23_crit_edge ], [ %conv15, %if.end13 ]
  %11 = ptrtoint ptr %newdata to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %newdata, align 8
  %and26 = and i32 %conv, 7
  %and27 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end23.do.body.preheader_crit_edge, label %if.then29

if.end23.do.body.preheader_crit_edge:             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.preheader

if.then29:                                        ; preds = %if.end23
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data, align 1
  %arrayidx31 = getelementptr [8 x i8], ptr %pktdata, i32 0, i32 %and26
  %14 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx31, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp33.not = icmp eq i8 %13, %15
  br i1 %cmp33.not, label %if.then29.if.end45_crit_edge, label %if.then35

if.then29.if.end45_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then35:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %16 = lshr i32 %and26, 1
  %shl = shl nuw nsw i32 1, %16
  %17 = trunc i32 %shl to i8
  %conv39 = xor i8 %17, 15
  %sub = add nsw i32 %and26, -1
  %arrayidx40 = getelementptr [8 x i8], ptr %pktdata, i32 0, i32 %sub
  %18 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx40, align 1
  %20 = ptrtoint ptr %newdata to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %newdata, align 8
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %13, ptr %2, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.then35, %if.then29.if.end45_crit_edge
  %word_en.0 = phi i8 [ %conv39, %if.then35 ], [ 15, %if.then29.if.end45_crit_edge ]
  %j.0 = phi i32 [ 2, %if.then35 ], [ 0, %if.then29.if.end45_crit_edge ]
  %inc46 = add nuw nsw i32 %and26, 1
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.end45, %if.end23.do.body.preheader_crit_edge
  %word_en.2.ph = phi i8 [ 15, %if.end23.do.body.preheader_crit_edge ], [ %word_en.0, %if.end45 ]
  %i.1.ph = phi i32 [ %and26, %if.end23.do.body.preheader_crit_edge ], [ %inc46, %if.end45 ]
  %j.2.ph = phi i32 [ 0, %if.end23.do.body.preheader_crit_edge ], [ %j.0, %if.end45 ]
  %idx.1.ph = phi i32 [ 0, %if.end23.do.body.preheader_crit_edge ], [ 1, %if.end45 ]
  br label %do.body

do.body:                                          ; preds = %if.end137, %do.body.preheader
  %offset.0 = phi i8 [ %inc129, %if.end137 ], [ %conv15204, %do.body.preheader ]
  %word_en.2 = phi i8 [ 15, %if.end137 ], [ %word_en.2.ph, %do.body.preheader ]
  %i.1 = phi i32 [ 0, %if.end137 ], [ %i.1.ph, %do.body.preheader ]
  %j.2 = phi i32 [ 0, %if.end137 ], [ %j.2.ph, %do.body.preheader ]
  %idx.1 = phi i32 [ %idx.3, %if.end137 ], [ %idx.1.ph, %do.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.1)
  %cmp49210 = icmp ult i32 %i.1, 8
  br i1 %cmp49210, label %for.body, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %do.body
  %sub52 = sub i32 %conv1, %idx.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub52)
  %cmp53 = icmp eq i32 %sub52, 1
  %arrayidx56 = getelementptr i8, ptr %data, i32 %idx.1
  %22 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx56, align 1
  %arrayidx58 = getelementptr [8 x i8], ptr %pktdata, i32 0, i32 %i.1
  %24 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx58, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp60.not = icmp eq i8 %23, %25
  br i1 %cmp53, label %for.body.if.then55_crit_edge, label %if.end77

for.body.if.then55_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55

if.then55:                                        ; preds = %for.body.3.if.then55_crit_edge, %for.body.2.if.then55_crit_edge, %for.body.1.if.then55_crit_edge, %for.body.if.then55_crit_edge
  %idx.2215.lcssa = phi i32 [ %idx.1, %for.body.if.then55_crit_edge ], [ %add107, %for.body.1.if.then55_crit_edge ], [ %add107.1, %for.body.2.if.then55_crit_edge ], [ %add107.2, %for.body.3.if.then55_crit_edge ]
  %j.3214.lcssa = phi i32 [ %j.2, %for.body.if.then55_crit_edge ], [ %j.4, %for.body.1.if.then55_crit_edge ], [ %j.4.1, %for.body.2.if.then55_crit_edge ], [ %j.4.2, %for.body.3.if.then55_crit_edge ]
  %i.2212.lcssa = phi i32 [ %i.1, %for.body.if.then55_crit_edge ], [ %add113, %for.body.1.if.then55_crit_edge ], [ %add113.1, %for.body.2.if.then55_crit_edge ], [ %add113.2, %for.body.3.if.then55_crit_edge ]
  %word_en.3211.lcssa = phi i8 [ %word_en.2, %for.body.if.then55_crit_edge ], [ %word_en.5, %for.body.1.if.then55_crit_edge ], [ %word_en.5.1, %for.body.2.if.then55_crit_edge ], [ %word_en.5.2, %for.body.3.if.then55_crit_edge ]
  %.lcssa = phi i8 [ %23, %for.body.if.then55_crit_edge ], [ %43, %for.body.1.if.then55_crit_edge ], [ %57, %for.body.2.if.then55_crit_edge ], [ %71, %for.body.3.if.then55_crit_edge ]
  %cmp60.not.lcssa = phi i1 [ %cmp60.not, %for.body.if.then55_crit_edge ], [ %cmp60.not.1, %for.body.1.if.then55_crit_edge ], [ %cmp60.not.2, %for.body.2.if.then55_crit_edge ], [ %cmp60.not.3, %for.body.3.if.then55_crit_edge ]
  br i1 %cmp60.not.lcssa, label %if.then55.if.end75_crit_edge, label %if.then62

if.then55.if.end75_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then62:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  %shr63225 = lshr i32 %i.2212.lcssa, 1
  %shl64 = shl nuw nsw i32 1, %shr63225
  %26 = trunc i32 %shl64 to i8
  %27 = xor i8 %26, -1
  %conv68 = and i8 %word_en.3211.lcssa, %27
  %inc70 = add i32 %j.3214.lcssa, 1
  %arrayidx71 = getelementptr [8 x i8], ptr %newdata, i32 0, i32 %j.3214.lcssa
  %28 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %.lcssa, ptr %arrayidx71, align 1
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %0, align 2
  %arrayidx74 = getelementptr [8 x i8], ptr %newdata, i32 0, i32 %inc70
  %31 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx74, align 1
  br label %if.end75

if.end75:                                         ; preds = %if.then62, %if.then55.if.end75_crit_edge
  %word_en.4 = phi i8 [ %conv68, %if.then62 ], [ %word_en.3211.lcssa, %if.then55.if.end75_crit_edge ]
  %inc76 = add i32 %idx.2215.lcssa, 1
  br label %for.end

if.end77:                                         ; preds = %for.body
  %add84 = add i32 %idx.1, 1
  br i1 %cmp60.not, label %lor.lhs.false, label %if.end77.if.then92_crit_edge

if.end77.if.then92_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92

lor.lhs.false:                                    ; preds = %if.end77
  %arrayidx85 = getelementptr i8, ptr %data, i32 %add84
  %32 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx85, align 1
  %add87 = add nuw nsw i32 %i.1, 1
  %arrayidx88 = getelementptr [8 x i8], ptr %pktdata, i32 0, i32 %add87
  %34 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx88, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp90.not = icmp eq i8 %33, %35
  br i1 %cmp90.not, label %lor.lhs.false.if.end106_crit_edge, label %lor.lhs.false.if.then92_crit_edge

lor.lhs.false.if.then92_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92

lor.lhs.false.if.end106_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.then92:                                        ; preds = %lor.lhs.false.if.then92_crit_edge, %if.end77.if.then92_crit_edge
  %shr93226 = lshr i32 %i.1, 1
  %shl94 = shl nuw nsw i32 1, %shr93226
  %36 = trunc i32 %shl94 to i8
  %37 = xor i8 %36, -1
  %conv98 = and i8 %word_en.2, %37
  %inc100 = add nsw i32 %j.2, 1
  %arrayidx101 = getelementptr [8 x i8], ptr %newdata, i32 0, i32 %j.2
  %38 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %23, ptr %arrayidx101, align 1
  %arrayidx103 = getelementptr i8, ptr %data, i32 %add84
  %39 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx103, align 1
  %inc104 = add nsw i32 %j.2, 2
  %arrayidx105 = getelementptr [8 x i8], ptr %newdata, i32 0, i32 %inc100
  %41 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx105, align 1
  br label %if.end106

if.end106:                                        ; preds = %if.then92, %lor.lhs.false.if.end106_crit_edge
  %word_en.5 = phi i8 [ %conv98, %if.then92 ], [ %word_en.2, %lor.lhs.false.if.end106_crit_edge ]
  %j.4 = phi i32 [ %inc104, %if.then92 ], [ %j.2, %lor.lhs.false.if.end106_crit_edge ]
  %add107 = add i32 %idx.1, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add107, i32 %conv1)
  %cmp109 = icmp ne i32 %add107, %conv1
  %add113 = add nuw nsw i32 %i.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.1)
  %cmp49 = icmp ult i32 %i.1, 6
  %or.cond = select i1 %cmp109, i1 %cmp49, i1 false
  br i1 %or.cond, label %for.body.1, label %if.end106.for.end_crit_edge

if.end106.for.end_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.1:                                       ; preds = %if.end106
  %sub52.1 = sub i32 %conv1, %add107
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub52.1)
  %cmp53.1 = icmp eq i32 %sub52.1, 1
  %arrayidx56.1 = getelementptr i8, ptr %data, i32 %add107
  %42 = ptrtoint ptr %arrayidx56.1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx56.1, align 1
  %arrayidx58.1 = getelementptr [8 x i8], ptr %pktdata, i32 0, i32 %add113
  %44 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx58.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp60.not.1 = icmp eq i8 %43, %45
  br i1 %cmp53.1, label %for.body.1.if.then55_crit_edge, label %if.end77.1

for.body.1.if.then55_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55

if.end77.1:                                       ; preds = %for.body.1
  %add84.1 = add i32 %idx.1, 3
  br i1 %cmp60.not.1, label %lor.lhs.false.1, label %if.end77.1.if.then92.1_crit_edge

if.end77.1.if.then92.1_crit_edge:                 ; preds = %if.end77.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92.1

lor.lhs.false.1:                                  ; preds = %if.end77.1
  %arrayidx85.1 = getelementptr i8, ptr %data, i32 %add84.1
  %46 = ptrtoint ptr %arrayidx85.1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx85.1, align 1
  %add87.1 = add nuw nsw i32 %i.1, 3
  %arrayidx88.1 = getelementptr [8 x i8], ptr %pktdata, i32 0, i32 %add87.1
  %48 = ptrtoint ptr %arrayidx88.1 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx88.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %49)
  %cmp90.not.1 = icmp eq i8 %47, %49
  br i1 %cmp90.not.1, label %lor.lhs.false.1.if.end106.1_crit_edge, label %lor.lhs.false.1.if.then92.1_crit_edge

lor.lhs.false.1.if.then92.1_crit_edge:            ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92.1

lor.lhs.false.1.if.end106.1_crit_edge:            ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106.1

if.then92.1:                                      ; preds = %lor.lhs.false.1.if.then92.1_crit_edge, %if.end77.1.if.then92.1_crit_edge
  %shr93226.1 = lshr i32 %add113, 1
  %shl94.1 = shl nuw nsw i32 1, %shr93226.1
  %50 = trunc i32 %shl94.1 to i8
  %51 = xor i8 %50, -1
  %conv98.1 = and i8 %word_en.5, %51
  %inc100.1 = add nsw i32 %j.4, 1
  %arrayidx101.1 = getelementptr [8 x i8], ptr %newdata, i32 0, i32 %j.4
  %52 = ptrtoint ptr %arrayidx101.1 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %43, ptr %arrayidx101.1, align 1
  %arrayidx103.1 = getelementptr i8, ptr %data, i32 %add84.1
  %53 = ptrtoint ptr %arrayidx103.1 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx103.1, align 1
  %inc104.1 = add nsw i32 %j.4, 2
  %arrayidx105.1 = getelementptr [8 x i8], ptr %newdata, i32 0, i32 %inc100.1
  %55 = ptrtoint ptr %arrayidx105.1 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx105.1, align 1
  br label %if.end106.1

if.end106.1:                                      ; preds = %if.then92.1, %lor.lhs.false.1.if.end106.1_crit_edge
  %word_en.5.1 = phi i8 [ %conv98.1, %if.then92.1 ], [ %word_en.5, %lor.lhs.false.1.if.end106.1_crit_edge ]
  %j.4.1 = phi i32 [ %inc104.1, %if.then92.1 ], [ %j.4, %lor.lhs.false.1.if.end106.1_crit_edge ]
  %add107.1 = add i32 %idx.1, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add107.1, i32 %conv1)
  %cmp109.1 = icmp ne i32 %add107.1, %conv1
  %add113.1 = add nuw nsw i32 %i.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.1)
  %cmp49.1 = icmp ult i32 %i.1, 4
  %or.cond.1 = select i1 %cmp109.1, i1 %cmp49.1, i1 false
  br i1 %or.cond.1, label %for.body.2, label %if.end106.1.for.end_crit_edge

if.end106.1.for.end_crit_edge:                    ; preds = %if.end106.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.2:                                       ; preds = %if.end106.1
  %sub52.2 = sub i32 %conv1, %add107.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub52.2)
  %cmp53.2 = icmp eq i32 %sub52.2, 1
  %arrayidx56.2 = getelementptr i8, ptr %data, i32 %add107.1
  %56 = ptrtoint ptr %arrayidx56.2 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx56.2, align 1
  %arrayidx58.2 = getelementptr [8 x i8], ptr %pktdata, i32 0, i32 %add113.1
  %58 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx58.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp60.not.2 = icmp eq i8 %57, %59
  br i1 %cmp53.2, label %for.body.2.if.then55_crit_edge, label %if.end77.2

for.body.2.if.then55_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55

if.end77.2:                                       ; preds = %for.body.2
  %add84.2 = add i32 %idx.1, 5
  br i1 %cmp60.not.2, label %lor.lhs.false.2, label %if.end77.2.if.then92.2_crit_edge

if.end77.2.if.then92.2_crit_edge:                 ; preds = %if.end77.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92.2

lor.lhs.false.2:                                  ; preds = %if.end77.2
  %arrayidx85.2 = getelementptr i8, ptr %data, i32 %add84.2
  %60 = ptrtoint ptr %arrayidx85.2 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx85.2, align 1
  %add87.2 = add nuw nsw i32 %i.1, 5
  %arrayidx88.2 = getelementptr [8 x i8], ptr %pktdata, i32 0, i32 %add87.2
  %62 = ptrtoint ptr %arrayidx88.2 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx88.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %63)
  %cmp90.not.2 = icmp eq i8 %61, %63
  br i1 %cmp90.not.2, label %lor.lhs.false.2.if.end106.2_crit_edge, label %lor.lhs.false.2.if.then92.2_crit_edge

lor.lhs.false.2.if.then92.2_crit_edge:            ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92.2

lor.lhs.false.2.if.end106.2_crit_edge:            ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106.2

if.then92.2:                                      ; preds = %lor.lhs.false.2.if.then92.2_crit_edge, %if.end77.2.if.then92.2_crit_edge
  %shr93226.2 = lshr i32 %add113.1, 1
  %shl94.2 = shl nuw nsw i32 1, %shr93226.2
  %64 = trunc i32 %shl94.2 to i8
  %65 = xor i8 %64, -1
  %conv98.2 = and i8 %word_en.5.1, %65
  %inc100.2 = add i32 %j.4.1, 1
  %arrayidx101.2 = getelementptr [8 x i8], ptr %newdata, i32 0, i32 %j.4.1
  %66 = ptrtoint ptr %arrayidx101.2 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %57, ptr %arrayidx101.2, align 1
  %arrayidx103.2 = getelementptr i8, ptr %data, i32 %add84.2
  %67 = ptrtoint ptr %arrayidx103.2 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx103.2, align 1
  %inc104.2 = add i32 %j.4.1, 2
  %arrayidx105.2 = getelementptr [8 x i8], ptr %newdata, i32 0, i32 %inc100.2
  %69 = ptrtoint ptr %arrayidx105.2 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx105.2, align 1
  br label %if.end106.2

if.end106.2:                                      ; preds = %if.then92.2, %lor.lhs.false.2.if.end106.2_crit_edge
  %word_en.5.2 = phi i8 [ %conv98.2, %if.then92.2 ], [ %word_en.5.1, %lor.lhs.false.2.if.end106.2_crit_edge ]
  %j.4.2 = phi i32 [ %inc104.2, %if.then92.2 ], [ %j.4.1, %lor.lhs.false.2.if.end106.2_crit_edge ]
  %add107.2 = add i32 %idx.1, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %add107.2, i32 %conv1)
  %cmp109.2 = icmp ne i32 %add107.2, %conv1
  %add113.2 = add nuw nsw i32 %i.1, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.1)
  %cmp49.2 = icmp ult i32 %i.1, 2
  %or.cond.2 = select i1 %cmp109.2, i1 %cmp49.2, i1 false
  br i1 %or.cond.2, label %for.body.3, label %if.end106.2.for.end_crit_edge

if.end106.2.for.end_crit_edge:                    ; preds = %if.end106.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.3:                                       ; preds = %if.end106.2
  %sub52.3 = sub i32 %conv1, %add107.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub52.3)
  %cmp53.3 = icmp eq i32 %sub52.3, 1
  %arrayidx56.3 = getelementptr i8, ptr %data, i32 %add107.2
  %70 = ptrtoint ptr %arrayidx56.3 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx56.3, align 1
  %arrayidx58.3 = getelementptr [8 x i8], ptr %pktdata, i32 0, i32 %add113.2
  %72 = ptrtoint ptr %arrayidx58.3 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx58.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %71, i8 %73)
  %cmp60.not.3 = icmp eq i8 %71, %73
  br i1 %cmp53.3, label %for.body.3.if.then55_crit_edge, label %if.end77.3

for.body.3.if.then55_crit_edge:                   ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55

if.end77.3:                                       ; preds = %for.body.3
  %add84.3 = add i32 %idx.1, 7
  br i1 %cmp60.not.3, label %lor.lhs.false.3, label %if.end77.3.if.then92.3_crit_edge

if.end77.3.if.then92.3_crit_edge:                 ; preds = %if.end77.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92.3

lor.lhs.false.3:                                  ; preds = %if.end77.3
  %arrayidx85.3 = getelementptr i8, ptr %data, i32 %add84.3
  %74 = ptrtoint ptr %arrayidx85.3 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx85.3, align 1
  %add87.3 = add nuw nsw i32 %i.1, 7
  %arrayidx88.3 = getelementptr [8 x i8], ptr %pktdata, i32 0, i32 %add87.3
  %76 = ptrtoint ptr %arrayidx88.3 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx88.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %75, i8 %77)
  %cmp90.not.3 = icmp eq i8 %75, %77
  br i1 %cmp90.not.3, label %lor.lhs.false.3.if.end106.3_crit_edge, label %lor.lhs.false.3.if.then92.3_crit_edge

lor.lhs.false.3.if.then92.3_crit_edge:            ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92.3

lor.lhs.false.3.if.end106.3_crit_edge:            ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106.3

if.then92.3:                                      ; preds = %lor.lhs.false.3.if.then92.3_crit_edge, %if.end77.3.if.then92.3_crit_edge
  %shr93226.3 = lshr i32 %add113.2, 1
  %shl94.3 = shl nuw nsw i32 1, %shr93226.3
  %78 = trunc i32 %shl94.3 to i8
  %79 = xor i8 %78, -1
  %conv98.3 = and i8 %word_en.5.2, %79
  %inc100.3 = add i32 %j.4.2, 1
  %arrayidx101.3 = getelementptr [8 x i8], ptr %newdata, i32 0, i32 %j.4.2
  %80 = ptrtoint ptr %arrayidx101.3 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %71, ptr %arrayidx101.3, align 1
  %arrayidx103.3 = getelementptr i8, ptr %data, i32 %add84.3
  %81 = ptrtoint ptr %arrayidx103.3 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx103.3, align 1
  %arrayidx105.3 = getelementptr [8 x i8], ptr %newdata, i32 0, i32 %inc100.3
  %83 = ptrtoint ptr %arrayidx105.3 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx105.3, align 1
  br label %if.end106.3

if.end106.3:                                      ; preds = %if.then92.3, %lor.lhs.false.3.if.end106.3_crit_edge
  %word_en.5.3 = phi i8 [ %conv98.3, %if.then92.3 ], [ %word_en.5.2, %lor.lhs.false.3.if.end106.3_crit_edge ]
  %add107.3 = add i32 %idx.1, 8
  br label %for.end

for.end:                                          ; preds = %if.end106.3, %if.end106.2.for.end_crit_edge, %if.end106.1.for.end_crit_edge, %if.end106.for.end_crit_edge, %if.end75, %do.body.for.end_crit_edge
  %word_en.6 = phi i8 [ %word_en.4, %if.end75 ], [ %word_en.2, %do.body.for.end_crit_edge ], [ %word_en.5, %if.end106.for.end_crit_edge ], [ %word_en.5.1, %if.end106.1.for.end_crit_edge ], [ %word_en.5.2, %if.end106.2.for.end_crit_edge ], [ %word_en.5.3, %if.end106.3 ]
  %idx.3 = phi i32 [ %inc76, %if.end75 ], [ %idx.1, %do.body.for.end_crit_edge ], [ %add107, %if.end106.for.end_crit_edge ], [ %add107.1, %if.end106.1.for.end_crit_edge ], [ %add107.2, %if.end106.2.for.end_crit_edge ], [ %add107.3, %if.end106.3 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %word_en.6)
  %cmp115.not = icmp eq i8 %word_en.6, 15
  br i1 %cmp115.not, label %for.end.if.end123_crit_edge, label %if.then117

for.end.if.end123_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.then117:                                       ; preds = %for.end
  %call119 = call zeroext i8 @r8712_efuse_pg_packet_write(ptr noundef %adapter, i8 noundef zeroext %offset.0, i8 noundef zeroext %word_en.6, ptr noundef nonnull %newdata)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call119)
  %tobool120.not = icmp eq i8 %call119, 0
  br i1 %tobool120.not, label %if.then117.cleanup_crit_edge, label %if.then117.if.end123_crit_edge

if.then117.if.end123_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.then117.cleanup_crit_edge:                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end123:                                        ; preds = %if.then117.if.end123_crit_edge, %for.end.if.end123_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.3, i32 %conv1)
  %cmp125 = icmp eq i32 %idx.3, %conv1
  br i1 %cmp125, label %if.end123.cleanup_crit_edge, label %if.end128

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end128:                                        ; preds = %if.end123
  %inc129 = add i8 %offset.0, 1
  br i1 %cmp.i.not, label %if.end128.if.end137_crit_edge, label %if.then131

if.end128.if.end137_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137

if.then131:                                       ; preds = %if.end128
  %call133 = call zeroext i8 @r8712_efuse_pg_packet_read(ptr noundef %adapter, i8 noundef zeroext %inc129, ptr noundef nonnull %pktdata)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call133)
  %tobool134.not = icmp eq i8 %call133, 0
  br i1 %tobool134.not, label %if.then131.cleanup_crit_edge, label %if.then131.if.end137_crit_edge

if.then131.if.end137_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137

if.then131.cleanup_crit_edge:                     ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end137:                                        ; preds = %if.then131.if.end137_crit_edge, %if.end128.if.end137_crit_edge
  %84 = ptrtoint ptr %newdata to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 -1, ptr %newdata, align 8
  br label %do.body

cleanup:                                          ; preds = %if.then131.cleanup_crit_edge, %if.end123.cleanup_crit_edge, %if.then117.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %efuse_is_empty.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then17.cleanup_crit_edge ], [ 0, %efuse_is_empty.exit.thread ], [ 1, %if.end123.cleanup_crit_edge ], [ 0, %if.then131.cleanup_crit_edge ], [ 0, %if.then117.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %newdata) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pktdata) #6
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @efuse_available_max_size, !1, !"efuse_available_max_size", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8712/rtl8712_efuse.c", i32 24, i32 12}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
