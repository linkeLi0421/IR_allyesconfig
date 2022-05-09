; ModuleID = '/llk/IR_all_yes/lib/zstd/common/entropy_common.c_pt.bc'
source_filename = "../lib/zstd/common/entropy_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @FSE_versionNumber() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 900
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @FSE_isError(i32 noundef %code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -120, i32 %code)
  %cmp.i = icmp ugt i32 %code, -120
  %conv.i = zext i1 %cmp.i to i32
  ret i32 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @FSE_getErrorName(i32 noundef %code) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %code)
  %cmp.i.i.i = icmp ult i32 %code, -119
  %sub.i.i = sub i32 0, %code
  %retval.0.i.i = select i1 %cmp.i.i.i, i32 0, i32 %sub.i.i
  %call1.i = tail call ptr @ERR_getErrorString(i32 noundef %retval.0.i.i) #6
  ret ptr %call1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @HUF_isError(i32 noundef %code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -120, i32 %code)
  %cmp.i = icmp ugt i32 %code, -120
  %conv.i = zext i1 %cmp.i to i32
  ret i32 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @HUF_getErrorName(i32 noundef %code) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %code)
  %cmp.i.i.i = icmp ult i32 %code, -119
  %sub.i.i = sub i32 0, %code
  %retval.0.i.i = select i1 %cmp.i.i.i, i32 0, i32 %sub.i.i
  %call1.i = tail call ptr @ERR_getErrorString(i32 noundef %retval.0.i.i) #6
  ret ptr %call1.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @FSE_readNCount_bmi2(ptr nocapture noundef writeonly %normalizedCounter, ptr nocapture noundef %maxSVPtr, ptr nocapture noundef writeonly %tableLogPtr, ptr noundef %headerBuffer, i32 noundef %hbSize, i32 %bmi2) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @FSE_readNCount_body_default(ptr noundef %normalizedCounter, ptr noundef %maxSVPtr, ptr noundef %tableLogPtr, ptr noundef %headerBuffer, i32 noundef %hbSize)
  ret i32 %call
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @FSE_readNCount_body_default(ptr nocapture noundef writeonly %normalizedCounter, ptr nocapture noundef %maxSVPtr, ptr nocapture noundef writeonly %tableLogPtr, ptr noundef %headerBuffer, i32 noundef %hbSize) unnamed_addr #2 align 64 {
entry:
  %buffer.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %headerBuffer, i32 %hbSize
  %0 = ptrtoint ptr %maxSVPtr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maxSVPtr, align 4
  %add.i = add i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %hbSize)
  %cmp.i = icmp ult i32 %hbSize, 8
  br i1 %cmp.i, label %if.then.i, label %if.end8.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buffer.i) #6
  %2 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %buffer.i, align 8
  %3 = call ptr @memcpy(ptr %buffer.i, ptr %headerBuffer, i32 %hbSize)
  %call.i.i = call fastcc i32 @FSE_readNCount_body_default(ptr noundef %normalizedCounter, ptr noundef %maxSVPtr, ptr noundef %tableLogPtr, ptr noundef nonnull %buffer.i, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, -119
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %hbSize)
  %cmp4.i = icmp ugt i32 %call.i.i, %hbSize
  %4 = and i1 %cmp.i.i, %cmp4.i
  %retval.0.i = select i1 %4, i32 -20, i32 %call.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buffer.i) #6
  br label %FSE_readNCount_body.exit

if.end8.i:                                        ; preds = %entry
  %mul.i = shl i32 %add.i, 1
  %5 = call ptr @memset(ptr %normalizedCounter, i32 0, i32 %mul.i)
  %6 = ptrtoint ptr %headerBuffer to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %headerBuffer, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %and.i = and i32 %8, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and.i)
  %cmp12.i = icmp ugt i32 %and.i, 10
  br i1 %cmp12.i, label %if.end8.i.FSE_readNCount_body.exit_crit_edge, label %if.end14.i

if.end8.i.FSE_readNCount_body.exit_crit_edge:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %FSE_readNCount_body.exit

if.end14.i:                                       ; preds = %if.end8.i
  %add11.i = add nuw nsw i32 %and.i, 5
  %shr.i = lshr i32 %8, 4
  %9 = ptrtoint ptr %tableLogPtr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add11.i, ptr %tableLogPtr, align 4
  %shl.i = shl nuw nsw i32 32, %and.i
  %add15.i = or i32 %shl.i, 1
  %inc.i = add nuw nsw i32 %and.i, 6
  %add.ptr23.i = getelementptr i8, ptr %add.ptr.i, i32 -7
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr23.i to i32
  %add.ptr31.i = getelementptr i8, ptr %add.ptr.i, i32 -4
  %sub.ptr.lhs.cast68.i = ptrtoint ptr %add.ptr31.i to i32
  br label %for.cond.i

for.cond.i:                                       ; preds = %cleanup156.i, %if.end14.i
  %ip.0.i = phi ptr [ %headerBuffer, %if.end14.i ], [ %ip.6.i, %cleanup156.i ]
  %nbBits.0.i = phi i32 [ %inc.i, %if.end14.i ], [ %nbBits.1.i, %cleanup156.i ]
  %remaining.0.i = phi i32 [ %add15.i, %if.end14.i ], [ %remaining.1.i, %cleanup156.i ]
  %threshold.0.i = phi i32 [ %shl.i, %if.end14.i ], [ %threshold.1.i, %cleanup156.i ]
  %bitStream.0.i = phi i32 [ %shr.i, %if.end14.i ], [ %shr155.i, %cleanup156.i ]
  %bitCount.0.i = phi i32 [ 4, %if.end14.i ], [ %bitCount.7.i, %cleanup156.i ]
  %charnum.0.i = phi i32 [ 0, %if.end14.i ], [ %inc111.i, %cleanup156.i ]
  %previous0.0.i = phi i32 [ 0, %if.end14.i ], [ %lnot.ext.i, %cleanup156.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %previous0.0.i)
  %tobool17.not.i = icmp eq i32 %previous0.0.i, 0
  br i1 %tobool17.not.i, label %for.cond.i.if.end79.i_crit_edge, label %if.then18.i

for.cond.i.if.end79.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79.i

if.then18.i:                                      ; preds = %for.cond.i
  %neg.i = xor i32 %bitStream.0.i, -1
  %or.i = or i32 %neg.i, -2147483648
  %10 = tail call i32 @llvm.cttz.i32(i32 %or.i, i1 true) #6, !range !9
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %10)
  %cmp21.i14 = icmp ugt i32 %10, 23
  br i1 %cmp21.i14, label %if.then18.i.while.body.i_crit_edge, label %if.then18.i.while.end.i_crit_edge

if.then18.i.while.end.i_crit_edge:                ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.then18.i.while.body.i_crit_edge:               ; preds = %if.then18.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end32.i.while.body.i_crit_edge, %if.then18.i.while.body.i_crit_edge
  %charnum.1.i17 = phi i32 [ %add22.i, %if.end32.i.while.body.i_crit_edge ], [ %charnum.0.i, %if.then18.i.while.body.i_crit_edge ]
  %bitCount.1.i16 = phi i32 [ %bitCount.2.i, %if.end32.i.while.body.i_crit_edge ], [ %bitCount.0.i, %if.then18.i.while.body.i_crit_edge ]
  %ip.1.i15 = phi ptr [ %ip.2.i, %if.end32.i.while.body.i_crit_edge ], [ %ip.0.i, %if.then18.i.while.body.i_crit_edge ]
  %add22.i = add i32 %charnum.1.i17, 36
  %cmp24.not.i = icmp ugt ptr %ip.1.i15, %add.ptr23.i
  br i1 %cmp24.not.i, label %if.else.i, label %if.then26.i, !prof !10

if.then26.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr27.i = getelementptr i8, ptr %ip.1.i15, i32 3
  br label %if.end32.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.ptr.rhs.cast.i = ptrtoint ptr %ip.1.i15 to i32
  %sub.ptr.sub.neg.i = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %mul29.neg.i = shl i32 %sub.ptr.sub.neg.i, 3
  %sub.i = add i32 %mul29.neg.i, %bitCount.1.i16
  %and30.i = and i32 %sub.i, 31
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else.i, %if.then26.i
  %ip.2.i = phi ptr [ %add.ptr27.i, %if.then26.i ], [ %add.ptr31.i, %if.else.i ]
  %bitCount.2.i = phi i32 [ %bitCount.1.i16, %if.then26.i ], [ %and30.i, %if.else.i ]
  %11 = ptrtoint ptr %ip.2.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %ip.2.i, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  %shr34.i = lshr i32 %13, %bitCount.2.i
  %neg35.i = xor i32 %shr34.i, -1
  %or36.i = or i32 %neg35.i, -2147483648
  %14 = tail call i32 @llvm.cttz.i32(i32 %or36.i, i1 true) #6, !range !9
  %cmp21.i = icmp ugt i32 %14, 23
  br i1 %cmp21.i, label %if.end32.i.while.body.i_crit_edge, label %if.end32.i.while.end.i_crit_edge

if.end32.i.while.end.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end32.i.while.body.i_crit_edge:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %if.end32.i.while.end.i_crit_edge, %if.then18.i.while.end.i_crit_edge
  %ip.1.i.lcssa = phi ptr [ %ip.0.i, %if.then18.i.while.end.i_crit_edge ], [ %ip.2.i, %if.end32.i.while.end.i_crit_edge ]
  %bitStream.1.i.lcssa = phi i32 [ %bitStream.0.i, %if.then18.i.while.end.i_crit_edge ], [ %shr34.i, %if.end32.i.while.end.i_crit_edge ]
  %bitCount.1.i.lcssa = phi i32 [ %bitCount.0.i, %if.then18.i.while.end.i_crit_edge ], [ %bitCount.2.i, %if.end32.i.while.end.i_crit_edge ]
  %charnum.1.i.lcssa = phi i32 [ %charnum.0.i, %if.then18.i.while.end.i_crit_edge ], [ %add22.i, %if.end32.i.while.end.i_crit_edge ]
  %repeats.0.in.i.lcssa = phi i32 [ %10, %if.then18.i.while.end.i_crit_edge ], [ %14, %if.end32.i.while.end.i_crit_edge ]
  %repeats.0.i = lshr i32 %repeats.0.in.i.lcssa, 1
  %mul39.i = mul nuw nsw i32 %repeats.0.i, 3
  %add40.i = add i32 %mul39.i, %charnum.1.i.lcssa
  %mul41.i = and i32 %repeats.0.in.i.lcssa, 30
  %shr42.i = lshr i32 %bitStream.1.i.lcssa, %mul41.i
  %and45.i = and i32 %shr42.i, 3
  %add46.i = add i32 %add40.i, %and45.i
  %add44.i = add i32 %bitCount.1.i.lcssa, 2
  %add47.i = add i32 %add44.i, %mul41.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add46.i, i32 %add.i)
  %cmp48.not.i = icmp ult i32 %add46.i, %add.i
  br i1 %cmp48.not.i, label %if.end51.i, label %while.end.i.for.end.i_crit_edge

while.end.i.for.end.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end51.i:                                       ; preds = %while.end.i
  %cmp53.not.i = icmp ugt ptr %ip.1.i.lcssa, %add.ptr23.i
  %shr57.i = ashr i32 %add47.i, 3
  br i1 %cmp53.not.i, label %lor.lhs.false.i, label %if.end51.i.if.then62.i_crit_edge, !prof !10

if.end51.i.if.then62.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62.i

lor.lhs.false.i:                                  ; preds = %if.end51.i
  %add.ptr58.i = getelementptr i8, ptr %ip.1.i.lcssa, i32 %shr57.i
  %cmp60.not.i = icmp ugt ptr %add.ptr58.i, %add.ptr31.i
  br i1 %cmp60.not.i, label %if.else66.i, label %lor.lhs.false.i.if.then62.i_crit_edge

lor.lhs.false.i.if.then62.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62.i

if.then62.i:                                      ; preds = %lor.lhs.false.i.if.then62.i_crit_edge, %if.end51.i.if.then62.i_crit_edge
  %add.ptr64.i = getelementptr i8, ptr %ip.1.i.lcssa, i32 %shr57.i
  %and65.i = and i32 %add47.i, 7
  br label %cleanup78.i.thread

if.else66.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.ptr.rhs.cast69.i = ptrtoint ptr %ip.1.i.lcssa to i32
  %sub.ptr.sub70.neg.i = sub i32 %sub.ptr.rhs.cast69.i, %sub.ptr.lhs.cast68.i
  %mul71.neg.i = shl i32 %sub.ptr.sub70.neg.i, 3
  %sub72.i = add i32 %add47.i, %mul71.neg.i
  %and73.i = and i32 %sub72.i, 31
  br label %cleanup78.i.thread

cleanup78.i.thread:                               ; preds = %if.else66.i, %if.then62.i
  %ip.3.i = phi ptr [ %add.ptr64.i, %if.then62.i ], [ %add.ptr31.i, %if.else66.i ]
  %bitCount.3.i = phi i32 [ %and65.i, %if.then62.i ], [ %and73.i, %if.else66.i ]
  %15 = ptrtoint ptr %ip.3.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %ip.3.i, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %shr77.i = lshr i32 %17, %bitCount.3.i
  br label %if.end79.i

if.end79.i:                                       ; preds = %cleanup78.i.thread, %for.cond.i.if.end79.i_crit_edge
  %ip.5.i = phi ptr [ %ip.0.i, %for.cond.i.if.end79.i_crit_edge ], [ %ip.3.i, %cleanup78.i.thread ]
  %bitStream.3.i = phi i32 [ %bitStream.0.i, %for.cond.i.if.end79.i_crit_edge ], [ %shr77.i, %cleanup78.i.thread ]
  %bitCount.5.i = phi i32 [ %bitCount.0.i, %for.cond.i.if.end79.i_crit_edge ], [ %bitCount.3.i, %cleanup78.i.thread ]
  %charnum.2.i = phi i32 [ %charnum.0.i, %for.cond.i.if.end79.i_crit_edge ], [ %add46.i, %cleanup78.i.thread ]
  %mul80.i = shl i32 %threshold.0.i, 1
  %sub81.i = add i32 %mul80.i, -1
  %sub82.i = sub i32 %sub81.i, %remaining.0.i
  %sub83.i = add i32 %threshold.0.i, -1
  %and84.i = and i32 %bitStream.3.i, %sub83.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and84.i, i32 %sub82.i)
  %cmp85.i = icmp ult i32 %and84.i, %sub82.i
  br i1 %cmp85.i, label %if.then87.i, label %if.else92.i

if.then87.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub90.i = add i32 %nbBits.0.i, -1
  br label %if.end102.i

if.else92.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #8
  %and95.i = and i32 %bitStream.3.i, %sub81.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and95.i, i32 %threshold.0.i)
  %cmp96.not.i = icmp slt i32 %and95.i, %threshold.0.i
  %sub99.i = select i1 %cmp96.not.i, i32 0, i32 %sub82.i
  %spec.select.i = sub i32 %and95.i, %sub99.i
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.else92.i, %if.then87.i
  %sub90.pn.i = phi i32 [ %sub90.i, %if.then87.i ], [ %nbBits.0.i, %if.else92.i ]
  %count.1.i = phi i32 [ %and84.i, %if.then87.i ], [ %spec.select.i, %if.else92.i ]
  %bitCount.6.i = add i32 %sub90.pn.i, %bitCount.5.i
  %dec.i = add i32 %count.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp103.i13 = icmp slt i32 %dec.i, 0
  %18 = sub i32 1, %count.1.i
  %remaining.1.i.p = select i1 %cmp103.i13, i32 %dec.i, i32 %18
  %remaining.1.i = add i32 %remaining.1.i.p, %remaining.0.i
  %conv110.i = trunc i32 %dec.i to i16
  %inc111.i = add i32 %charnum.2.i, 1
  %arrayidx.i = getelementptr i16, ptr %normalizedCounter, i32 %charnum.2.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv110.i, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool112.not.i = icmp eq i32 %dec.i, 0
  %lnot.ext.i = zext i1 %tobool112.not.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.1.i, i32 %threshold.0.i)
  %cmp113.i = icmp slt i32 %remaining.1.i, %threshold.0.i
  br i1 %cmp113.i, label %if.then115.i, label %if.end102.i.if.end124.i_crit_edge

if.end102.i.if.end124.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124.i

if.then115.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %remaining.1.i)
  %cmp116.i = icmp slt i32 %remaining.1.i, 2
  br i1 %cmp116.i, label %if.then115.i.for.end.i_crit_edge, label %if.end119.i

if.then115.i.for.end.i_crit_edge:                 ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end119.i:                                      ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = tail call i32 @llvm.ctlz.i32(i32 %remaining.1.i, i1 true) #6, !range !9
  %xor.i = xor i32 %20, 31
  %add121.i = sub nuw nsw i32 32, %20
  %shl123.i = shl nuw i32 1, %xor.i
  br label %if.end124.i

if.end124.i:                                      ; preds = %if.end119.i, %if.end102.i.if.end124.i_crit_edge
  %nbBits.1.i = phi i32 [ %add121.i, %if.end119.i ], [ %nbBits.0.i, %if.end102.i.if.end124.i_crit_edge ]
  %threshold.1.i = phi i32 [ %shl123.i, %if.end119.i ], [ %threshold.0.i, %if.end102.i.if.end124.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %inc111.i, i32 %add.i)
  %cmp125.not.i = icmp ult i32 %inc111.i, %add.i
  br i1 %cmp125.not.i, label %if.end128.i, label %if.end124.i.for.end.i_crit_edge

if.end124.i.for.end.i_crit_edge:                  ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end128.i:                                      ; preds = %if.end124.i
  %cmp130.not.i = icmp ugt ptr %ip.5.i, %add.ptr23.i
  %shr135.i = ashr i32 %bitCount.6.i, 3
  br i1 %cmp130.not.i, label %lor.lhs.false134.i, label %if.end128.i.if.then140.i_crit_edge, !prof !10

if.end128.i.if.then140.i_crit_edge:               ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then140.i

lor.lhs.false134.i:                               ; preds = %if.end128.i
  %add.ptr136.i = getelementptr i8, ptr %ip.5.i, i32 %shr135.i
  %cmp138.not.i = icmp ugt ptr %add.ptr136.i, %add.ptr31.i
  br i1 %cmp138.not.i, label %if.else144.i, label %lor.lhs.false134.i.if.then140.i_crit_edge

lor.lhs.false134.i.if.then140.i_crit_edge:        ; preds = %lor.lhs.false134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then140.i

if.then140.i:                                     ; preds = %lor.lhs.false134.i.if.then140.i_crit_edge, %if.end128.i.if.then140.i_crit_edge
  %add.ptr142.i = getelementptr i8, ptr %ip.5.i, i32 %shr135.i
  %and143.i = and i32 %bitCount.6.i, 7
  br label %cleanup156.i

if.else144.i:                                     ; preds = %lor.lhs.false134.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.ptr.rhs.cast147.i = ptrtoint ptr %ip.5.i to i32
  %sub.ptr.sub148.neg.i = sub i32 %sub.ptr.rhs.cast147.i, %sub.ptr.lhs.cast68.i
  %mul149.neg.i = shl i32 %sub.ptr.sub148.neg.i, 3
  %sub150.i = add i32 %bitCount.6.i, %mul149.neg.i
  %and151.i = and i32 %sub150.i, 31
  br label %cleanup156.i

cleanup156.i:                                     ; preds = %if.else144.i, %if.then140.i
  %ip.6.i = phi ptr [ %add.ptr142.i, %if.then140.i ], [ %add.ptr31.i, %if.else144.i ]
  %bitCount.7.i = phi i32 [ %and143.i, %if.then140.i ], [ %and151.i, %if.else144.i ]
  %21 = ptrtoint ptr %ip.6.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %ip.6.i, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  %shr155.i = lshr i32 %23, %bitCount.7.i
  br label %for.cond.i

for.end.i:                                        ; preds = %if.end124.i.for.end.i_crit_edge, %if.then115.i.for.end.i_crit_edge, %while.end.i.for.end.i_crit_edge
  %ip.8.i = phi ptr [ %ip.1.i.lcssa, %while.end.i.for.end.i_crit_edge ], [ %ip.5.i, %if.then115.i.for.end.i_crit_edge ], [ %ip.5.i, %if.end124.i.for.end.i_crit_edge ]
  %remaining.2.i = phi i32 [ %remaining.0.i, %while.end.i.for.end.i_crit_edge ], [ %remaining.1.i, %if.then115.i.for.end.i_crit_edge ], [ %remaining.1.i, %if.end124.i.for.end.i_crit_edge ]
  %bitCount.9.i = phi i32 [ %add47.i, %while.end.i.for.end.i_crit_edge ], [ %bitCount.6.i, %if.then115.i.for.end.i_crit_edge ], [ %bitCount.6.i, %if.end124.i.for.end.i_crit_edge ]
  %charnum.3.i = phi i32 [ %add46.i, %while.end.i.for.end.i_crit_edge ], [ %inc111.i, %if.then115.i.for.end.i_crit_edge ], [ %inc111.i, %if.end124.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %remaining.2.i)
  %cmp160.not.i = icmp eq i32 %remaining.2.i, 1
  br i1 %cmp160.not.i, label %if.end163.i, label %for.end.i.FSE_readNCount_body.exit_crit_edge

for.end.i.FSE_readNCount_body.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %FSE_readNCount_body.exit

if.end163.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %charnum.3.i, i32 %add.i)
  %cmp164.i = icmp ugt i32 %charnum.3.i, %add.i
  br i1 %cmp164.i, label %if.end163.i.FSE_readNCount_body.exit_crit_edge, label %if.end167.i

if.end163.i.FSE_readNCount_body.exit_crit_edge:   ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %FSE_readNCount_body.exit

if.end167.i:                                      ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bitCount.9.i)
  %cmp168.i = icmp sgt i32 %bitCount.9.i, 32
  br i1 %cmp168.i, label %if.end167.i.FSE_readNCount_body.exit_crit_edge, label %if.end171.i

if.end167.i.FSE_readNCount_body.exit_crit_edge:   ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %FSE_readNCount_body.exit

if.end171.i:                                      ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub172.i = add i32 %charnum.3.i, -1
  %24 = ptrtoint ptr %maxSVPtr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub172.i, ptr %maxSVPtr, align 4
  %add173.i = add nsw i32 %bitCount.9.i, 7
  %shr174.i = ashr i32 %add173.i, 3
  %add.ptr175.i = getelementptr i8, ptr %ip.8.i, i32 %shr174.i
  %sub.ptr.lhs.cast176.i = ptrtoint ptr %add.ptr175.i to i32
  %sub.ptr.rhs.cast177.i = ptrtoint ptr %headerBuffer to i32
  %sub.ptr.sub178.i = sub i32 %sub.ptr.lhs.cast176.i, %sub.ptr.rhs.cast177.i
  br label %FSE_readNCount_body.exit

FSE_readNCount_body.exit:                         ; preds = %if.end171.i, %if.end167.i.FSE_readNCount_body.exit_crit_edge, %if.end163.i.FSE_readNCount_body.exit_crit_edge, %for.end.i.FSE_readNCount_body.exit_crit_edge, %if.end8.i.FSE_readNCount_body.exit_crit_edge, %if.then.i
  %retval.1.i = phi i32 [ %retval.0.i, %if.then.i ], [ %sub.ptr.sub178.i, %if.end171.i ], [ -44, %if.end8.i.FSE_readNCount_body.exit_crit_edge ], [ -20, %for.end.i.FSE_readNCount_body.exit_crit_edge ], [ -48, %if.end163.i.FSE_readNCount_body.exit_crit_edge ], [ -20, %if.end167.i.FSE_readNCount_body.exit_crit_edge ]
  ret i32 %retval.1.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @FSE_readNCount(ptr nocapture noundef writeonly %normalizedCounter, ptr nocapture noundef %maxSVPtr, ptr nocapture noundef writeonly %tableLogPtr, ptr noundef %headerBuffer, i32 noundef %hbSize) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @FSE_readNCount_body_default(ptr noundef %normalizedCounter, ptr noundef %maxSVPtr, ptr noundef %tableLogPtr, ptr noundef %headerBuffer, i32 noundef %hbSize) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_readStats(ptr noundef %huffWeight, i32 noundef %hwSize, ptr nocapture noundef %rankStats, ptr nocapture noundef writeonly %nbSymbolsPtr, ptr nocapture noundef writeonly %tableLogPtr, ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #1 align 64 {
entry:
  %wksp = alloca [218 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 872, ptr nonnull %wksp) #6
  %0 = call ptr @memset(ptr %wksp, i32 255, i32 872)
  %call = call i32 @HUF_readStats_wksp(ptr noundef %huffWeight, i32 noundef %hwSize, ptr noundef %rankStats, ptr noundef %nbSymbolsPtr, ptr noundef %tableLogPtr, ptr noundef %src, i32 noundef %srcSize, ptr noundef nonnull %wksp, i32 noundef 872, i32 undef)
  call void @llvm.lifetime.end.p0(i64 872, ptr nonnull %wksp) #6
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_readStats_wksp(ptr noundef %huffWeight, i32 noundef %hwSize, ptr nocapture noundef %rankStats, ptr nocapture noundef writeonly %nbSymbolsPtr, ptr nocapture noundef writeonly %tableLogPtr, ptr noundef %src, i32 noundef %srcSize, ptr noundef %workSpace, i32 noundef %wkspSize, i32 %bmi2) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srcSize)
  %tobool.not.i.i = icmp eq i32 %srcSize, 0
  br i1 %tobool.not.i.i, label %entry.HUF_readStats_body_default.exit_crit_edge, label %if.end.i.i

entry.HUF_readStats_body_default.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %HUF_readStats_body_default.exit

if.end.i.i:                                       ; preds = %entry
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %src, align 1
  %conv.i.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i.i = icmp slt i8 %1, 0
  br i1 %cmp.i.i, label %if.then2.i.i, label %if.else.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %sub.i.i = add nsw i32 %conv.i.i, -127
  %add.i.i = add nsw i32 %conv.i.i, -126
  %div1.i.i = lshr i32 %add.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i.i, i32 %srcSize)
  %cmp4.not.i.i = icmp ult i32 %div1.i.i, %srcSize
  br i1 %cmp4.not.i.i, label %if.end7.i.i, label %if.then2.i.i.HUF_readStats_body_default.exit_crit_edge

if.then2.i.i.HUF_readStats_body_default.exit_crit_edge: ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %HUF_readStats_body_default.exit

if.end7.i.i:                                      ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %hwSize)
  %cmp8.not.i.i = icmp ult i32 %sub.i.i, %hwSize
  br i1 %cmp8.not.i.i, label %if.end11.i.i, label %if.end7.i.i.HUF_readStats_body_default.exit_crit_edge

if.end7.i.i.HUF_readStats_body_default.exit_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %HUF_readStats_body_default.exit

if.end11.i.i:                                     ; preds = %if.end7.i.i
  %add.ptr.i.i = getelementptr i8, ptr %src, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp129.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %cmp129.not.i.i, label %if.end37.thread.i.i, label %if.end11.i.i.for.body.i.i_crit_edge

if.end11.i.i.for.body.i.i_crit_edge:              ; preds = %if.end11.i.i
  br label %for.body.i.i

if.end37.thread.i.i:                              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %2 = call ptr @memset(ptr %rankStats, i32 0, i32 52)
  br label %HUF_readStats_body_default.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end11.i.i.for.body.i.i_crit_edge
  %n.010.i.i = phi i32 [ %add25.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end11.i.i.for.body.i.i_crit_edge ]
  %div142.i.i = lshr exact i32 %n.010.i.i, 1
  %arrayidx15.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %div142.i.i
  %3 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx15.i.i, align 1
  %5 = lshr i8 %4, 4
  %arrayidx18.i.i = getelementptr i8, ptr %huffWeight, i32 %n.010.i.i
  %6 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx18.i.i, align 1
  %7 = load i8, ptr %arrayidx15.i.i, align 1
  %8 = and i8 %7, 15
  %add23.i.i = or i32 %n.010.i.i, 1
  %arrayidx24.i.i = getelementptr i8, ptr %huffWeight, i32 %add23.i.i
  %9 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx24.i.i, align 1
  %add25.i.i = add i32 %n.010.i.i, 2
  %cmp12.i.i = icmp ult i32 %add25.i.i, %sub.i.i
  br i1 %cmp12.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end37.i.i_crit_edge

for.body.i.i.if.end37.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %srcSize)
  %cmp27.not.i.i = icmp ult i32 %conv.i.i, %srcSize
  br i1 %cmp27.not.i.i, label %if.end30.i.i, label %if.else.i.i.HUF_readStats_body_default.exit_crit_edge

if.else.i.i.HUF_readStats_body_default.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %HUF_readStats_body_default.exit

if.end30.i.i:                                     ; preds = %if.else.i.i
  %sub31.i.i = add i32 %hwSize, -1
  %add.ptr32.i.i = getelementptr i8, ptr %src, i32 1
  %call.i.i = tail call i32 @FSE_decompress_wksp_bmi2(ptr noundef %huffWeight, i32 noundef %sub31.i.i, ptr noundef %add.ptr32.i.i, i32 noundef %conv.i.i, i32 noundef 6, ptr noundef %workSpace, i32 noundef %wkspSize, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call.i.i)
  %cmp.i.i.i.i = icmp ult i32 %call.i.i, -119
  br i1 %cmp.i.i.i.i, label %if.end30.i.i.if.end37.i.i_crit_edge, label %if.end30.i.i.HUF_readStats_body_default.exit_crit_edge

if.end30.i.i.HUF_readStats_body_default.exit_crit_edge: ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %HUF_readStats_body_default.exit

if.end30.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.end30.i.i.if.end37.i.i_crit_edge, %for.body.i.i.if.end37.i.i_crit_edge
  %iSize.0.i.i = phi i32 [ %conv.i.i, %if.end30.i.i.if.end37.i.i_crit_edge ], [ %div1.i.i, %for.body.i.i.if.end37.i.i_crit_edge ]
  %oSize.0.i.i = phi i32 [ %call.i.i, %if.end30.i.i.if.end37.i.i_crit_edge ], [ %sub.i.i, %for.body.i.i.if.end37.i.i_crit_edge ]
  %10 = call ptr @memset(ptr %rankStats, i32 0, i32 52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oSize.0.i.i)
  %cmp4011.not.i.i = icmp eq i32 %oSize.0.i.i, 0
  br i1 %cmp4011.not.i.i, label %if.end37.i.i.HUF_readStats_body_default.exit_crit_edge, label %if.end37.i.i.for.body42.i.i_crit_edge

if.end37.i.i.for.body42.i.i_crit_edge:            ; preds = %if.end37.i.i
  br label %for.body42.i.i

if.end37.i.i.HUF_readStats_body_default.exit_crit_edge: ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %HUF_readStats_body_default.exit

for.body42.i.i:                                   ; preds = %if.end48.i.i.for.body42.i.i_crit_edge, %if.end37.i.i.for.body42.i.i_crit_edge
  %weightTotal.013.i.i = phi i32 [ %add54.i.i, %if.end48.i.i.for.body42.i.i_crit_edge ], [ 0, %if.end37.i.i.for.body42.i.i_crit_edge ]
  %n38.012.i.i = phi i32 [ %inc56.i.i, %if.end48.i.i.for.body42.i.i_crit_edge ], [ 0, %if.end37.i.i.for.body42.i.i_crit_edge ]
  %arrayidx43.i.i = getelementptr i8, ptr %huffWeight, i32 %n38.012.i.i
  %11 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx43.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %12)
  %cmp45.i.i = icmp ugt i8 %12, 11
  br i1 %cmp45.i.i, label %for.body42.i.i.HUF_readStats_body_default.exit_crit_edge, label %if.end48.i.i

for.body42.i.i.HUF_readStats_body_default.exit_crit_edge: ; preds = %for.body42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %HUF_readStats_body_default.exit

if.end48.i.i:                                     ; preds = %for.body42.i.i
  %conv44.i.i = zext i8 %12 to i32
  %arrayidx50.i.i = getelementptr i32, ptr %rankStats, i32 %conv44.i.i
  %13 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx50.i.i, align 4
  %inc.i.i = add i32 %14, 1
  store i32 %inc.i.i, ptr %arrayidx50.i.i, align 4
  %15 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx43.i.i, align 1
  %conv52.i.i = zext i8 %16 to i32
  %shl.i.i = shl nuw i32 1, %conv52.i.i
  %shr53.i.i = ashr i32 %shl.i.i, 1
  %add54.i.i = add i32 %shr53.i.i, %weightTotal.013.i.i
  %inc56.i.i = add nuw i32 %n38.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc56.i.i, %oSize.0.i.i
  br i1 %exitcond.not.i.i, label %cleanup.cont.critedge.i.i, label %if.end48.i.i.for.body42.i.i_crit_edge

if.end48.i.i.for.body42.i.i_crit_edge:            ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body42.i.i

cleanup.cont.critedge.i.i:                        ; preds = %if.end48.i.i
  %17 = add i32 %add54.i.i, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4095, i32 %17)
  %18 = icmp ult i32 %17, -4095
  br i1 %18, label %cleanup.cont.critedge.i.i.HUF_readStats_body_default.exit_crit_edge, label %if.end67.i.i

cleanup.cont.critedge.i.i.HUF_readStats_body_default.exit_crit_edge: ; preds = %cleanup.cont.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %HUF_readStats_body_default.exit

if.end67.i.i:                                     ; preds = %cleanup.cont.critedge.i.i
  %19 = tail call i32 @llvm.ctlz.i32(i32 %add54.i.i, i1 true) #6, !range !9
  %add63.i.i = sub nuw nsw i32 32, %19
  %20 = ptrtoint ptr %tableLogPtr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add63.i.i, ptr %tableLogPtr, align 4
  %shl68.i.i = shl nuw nsw i32 1, %add63.i.i
  %sub69.i.i = sub i32 %shl68.i.i, %add54.i.i
  %21 = tail call i32 @llvm.ctlz.i32(i32 %sub69.i.i, i1 false) #6, !range !9
  %xor.i3.i.i = xor i32 %21, 31
  %shl71.i.i = shl nuw i32 1, %xor.i3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl71.i.i, i32 %sub69.i.i)
  %cmp74.not.i.i = icmp eq i32 %shl71.i.i, %sub69.i.i
  br i1 %cmp74.not.i.i, label %cleanup.cont90.i.i, label %if.end67.i.i.HUF_readStats_body_default.exit_crit_edge

if.end67.i.i.HUF_readStats_body_default.exit_crit_edge: ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %HUF_readStats_body_default.exit

cleanup.cont90.i.i:                               ; preds = %if.end67.i.i
  %add73.i.i = add nuw nsw i32 %xor.i3.i.i, 1
  %conv78.i.i = trunc i32 %add73.i.i to i8
  %arrayidx79.i.i = getelementptr i8, ptr %huffWeight, i32 %oSize.0.i.i
  %22 = ptrtoint ptr %arrayidx79.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv78.i.i, ptr %arrayidx79.i.i, align 1
  %arrayidx80.i.i = getelementptr i32, ptr %rankStats, i32 %add73.i.i
  %23 = ptrtoint ptr %arrayidx80.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx80.i.i, align 4
  %inc81.i.i = add i32 %24, 1
  store i32 %inc81.i.i, ptr %arrayidx80.i.i, align 4
  %arrayidx91.i.i = getelementptr i32, ptr %rankStats, i32 1
  %25 = ptrtoint ptr %arrayidx91.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx91.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp92.i.i = icmp ugt i32 %26, 1
  %and95.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i.i)
  %tobool96.not.i.i = icmp eq i32 %and95.i.i, 0
  %or.cond.i.i = and i1 %cmp92.i.i, %tobool96.not.i.i
  br i1 %or.cond.i.i, label %if.end98.i.i, label %cleanup.cont90.i.i.HUF_readStats_body_default.exit_crit_edge

cleanup.cont90.i.i.HUF_readStats_body_default.exit_crit_edge: ; preds = %cleanup.cont90.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %HUF_readStats_body_default.exit

if.end98.i.i:                                     ; preds = %cleanup.cont90.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add99.i.i = add i32 %oSize.0.i.i, 1
  %27 = ptrtoint ptr %nbSymbolsPtr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add99.i.i, ptr %nbSymbolsPtr, align 4
  %add100.i.i = add nuw i32 %iSize.0.i.i, 1
  br label %HUF_readStats_body_default.exit

HUF_readStats_body_default.exit:                  ; preds = %if.end98.i.i, %cleanup.cont90.i.i.HUF_readStats_body_default.exit_crit_edge, %if.end67.i.i.HUF_readStats_body_default.exit_crit_edge, %cleanup.cont.critedge.i.i.HUF_readStats_body_default.exit_crit_edge, %for.body42.i.i.HUF_readStats_body_default.exit_crit_edge, %if.end37.i.i.HUF_readStats_body_default.exit_crit_edge, %if.end30.i.i.HUF_readStats_body_default.exit_crit_edge, %if.else.i.i.HUF_readStats_body_default.exit_crit_edge, %if.end37.thread.i.i, %if.end7.i.i.HUF_readStats_body_default.exit_crit_edge, %if.then2.i.i.HUF_readStats_body_default.exit_crit_edge, %entry.HUF_readStats_body_default.exit_crit_edge
  %retval.3.i.i = phi i32 [ %add100.i.i, %if.end98.i.i ], [ -72, %entry.HUF_readStats_body_default.exit_crit_edge ], [ -72, %if.then2.i.i.HUF_readStats_body_default.exit_crit_edge ], [ -20, %if.end7.i.i.HUF_readStats_body_default.exit_crit_edge ], [ -72, %if.else.i.i.HUF_readStats_body_default.exit_crit_edge ], [ %call.i.i, %if.end30.i.i.HUF_readStats_body_default.exit_crit_edge ], [ -20, %cleanup.cont.critedge.i.i.HUF_readStats_body_default.exit_crit_edge ], [ -20, %cleanup.cont90.i.i.HUF_readStats_body_default.exit_crit_edge ], [ -20, %if.end67.i.i.HUF_readStats_body_default.exit_crit_edge ], [ -20, %if.end37.i.i.HUF_readStats_body_default.exit_crit_edge ], [ -20, %if.end37.thread.i.i ], [ -20, %for.body42.i.i.HUF_readStats_body_default.exit_crit_edge ]
  ret i32 %retval.3.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ERR_getErrorString(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_decompress_wksp_bmi2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

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
!9 = !{i32 0, i32 33}
!10 = !{!"branch_weights", i32 1, i32 2000}
