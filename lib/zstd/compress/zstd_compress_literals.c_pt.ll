; ModuleID = '/llk/IR_all_yes/lib/zstd/compress/zstd_compress_literals.c_pt.bc'
source_filename = "../lib/zstd/compress/zstd_compress_literals.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.ZSTD_hufCTables_t = type { [256 x %struct.HUF_CElt_s], i32 }
%struct.HUF_CElt_s = type { i16, i8 }

@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_noCompressLiterals(ptr nocapture noundef writeonly %dst, i32 noundef %dstCapacity, ptr nocapture noundef readonly %src, i32 noundef %srcSize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %srcSize)
  %cmp = icmp ugt i32 %srcSize, 31
  %add = select i1 %cmp, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %srcSize)
  %cmp1 = icmp ugt i32 %srcSize, 4095
  %conv2 = zext i1 %cmp1 to i32
  %add3 = add nuw nsw i32 %add, %conv2
  %add4 = add i32 %add3, %srcSize
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %dstCapacity)
  %cmp5 = icmp ugt i32 %add4, %dstCapacity
  br i1 %cmp5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %add3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %add3, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
    i32 3, label %sw.bb13
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %srcSize.tr31 = trunc i32 %srcSize to i8
  %conv8 = shl i8 %srcSize.tr31, 3
  %1 = ptrtoint ptr %dst to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv8, ptr %dst, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %srcSize.tr = trunc i32 %srcSize to i16
  %2 = shl i16 %srcSize.tr, 4
  %conv12 = or i16 %2, 4
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv12) #5
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %3, ptr %dst, align 1
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shl14 = shl i32 %srcSize, 4
  %add15 = or i32 %shl14, 12
  %5 = tail call i32 @llvm.bswap.i32(i32 %add15) #5
  %6 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %dst, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb9, %sw.bb, %if.end.sw.epilog_crit_edge
  %add.ptr = getelementptr i8, ptr %dst, i32 %add3
  %7 = call ptr @memcpy(ptr %add.ptr, ptr %src, i32 %srcSize)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add4, %sw.epilog ], [ -70, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_compressRleLiteralsBlock(ptr nocapture noundef writeonly %dst, i32 %dstCapacity, ptr nocapture noundef readonly %src, i32 noundef %srcSize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %srcSize)
  %cmp = icmp ugt i32 %srcSize, 31
  %add = select i1 %cmp, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %srcSize)
  %cmp1 = icmp ugt i32 %srcSize, 4095
  %conv2 = zext i1 %cmp1 to i32
  %add3 = add nuw nsw i32 %add, %conv2
  %0 = zext i32 %add3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %add3, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb10
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %srcSize.tr24 = trunc i32 %srcSize to i8
  %1 = shl i8 %srcSize.tr24, 3
  %conv5 = or i8 %1, 1
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv5, ptr %dst, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %srcSize.tr = trunc i32 %srcSize to i16
  %3 = shl i16 %srcSize.tr, 4
  %conv9 = or i16 %3, 5
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv9) #5
  %5 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %dst, align 1
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shl11 = shl i32 %srcSize, 4
  %add12 = or i32 %shl11, 13
  %6 = tail call i32 @llvm.bswap.i32(i32 %add12) #5
  %7 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %dst, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb6, %sw.bb, %entry.sw.epilog_crit_edge
  %8 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %src, align 1
  %arrayidx13 = getelementptr i8, ptr %dst, i32 %add3
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx13, align 1
  %add14 = add nuw nsw i32 %add3, 1
  ret i32 %add14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressLiterals(ptr nocapture noundef readonly %prevHuf, ptr noundef %nextHuf, i32 noundef %strategy, i32 noundef %disableLiteralCompression, ptr noundef %dst, i32 noundef %dstCapacity, ptr noundef %src, i32 noundef %srcSize, ptr noundef %entropyWorkspace, i32 noundef %entropyWorkspaceSize, i32 noundef %bmi2) local_unnamed_addr #2 align 64 {
entry:
  %repeat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %strategy)
  %cmp.i = icmp ugt i32 %strategy, 7
  %sub.i = add i32 %strategy, -1
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 6
  %shr.i = lshr i32 %srcSize, %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %srcSize)
  %cmp = icmp ugt i32 %srcSize, 1023
  %add = select i1 %cmp, i32 4, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %srcSize)
  %cmp1 = icmp ugt i32 %srcSize, 16383
  %conv2 = zext i1 %cmp1 to i32
  %add3 = add nuw nsw i32 %add, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %srcSize)
  %cmp4 = icmp ult i32 %srcSize, 256
  %0 = call ptr @memcpy(ptr %nextHuf, ptr %prevHuf, i32 1028)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disableLiteralCompression)
  %tobool.not = icmp eq i32 %disableLiteralCompression, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %srcSize)
  %cmp.i169 = icmp ugt i32 %srcSize, 31
  %add.i170 = select i1 %cmp.i169, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %srcSize)
  %cmp1.i = icmp ugt i32 %srcSize, 4095
  %conv2.i = zext i1 %cmp1.i to i32
  %add3.i = add nuw nsw i32 %add.i170, %conv2.i
  %add4.i = add i32 %add3.i, %srcSize
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i, i32 %dstCapacity)
  %cmp5.i = icmp ugt i32 %add4.i, %dstCapacity
  br i1 %cmp5.i, label %if.then.cleanup92_crit_edge, label %if.end.i

if.then.cleanup92_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup92

if.end.i:                                         ; preds = %if.then
  %1 = zext i32 %add3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %add3.i, label %if.end.i.sw.epilog.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb13.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %srcSize.tr31.i = trunc i32 %srcSize to i8
  %conv8.i = shl i8 %srcSize.tr31.i, 3
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv8.i, ptr %dst, align 1
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %srcSize.tr.i = trunc i32 %srcSize to i16
  %3 = shl i16 %srcSize.tr.i, 4
  %conv12.i = or i16 %3, 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv12.i) #5
  %5 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %dst, align 1
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl14.i = shl i32 %srcSize, 4
  %add15.i = or i32 %shl14.i, 12
  %6 = tail call i32 @llvm.bswap.i32(i32 %add15.i) #5
  %7 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %dst, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb13.i, %sw.bb9.i, %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %dst, i32 %add3.i
  %8 = call ptr @memcpy(ptr %add.ptr.i, ptr %src, i32 %srcSize)
  br label %cleanup92

if.end:                                           ; preds = %entry
  %repeatMode = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %prevHuf, i32 0, i32 1
  %9 = ptrtoint ptr %repeatMode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %repeatMode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp7 = icmp eq i32 %10, 2
  %cond = select i1 %cmp7, i32 6, i32 63
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %srcSize)
  %cmp9.not = icmp ult i32 %cond, %srcSize
  br i1 %cmp9.not, label %cleanup.cont, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %srcSize)
  %cmp.i171 = icmp ugt i32 %srcSize, 31
  %add.i172 = select i1 %cmp.i171, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %srcSize)
  %cmp1.i173 = icmp ugt i32 %srcSize, 4095
  %conv2.i174 = zext i1 %cmp1.i173 to i32
  %add3.i175 = add nuw nsw i32 %add.i172, %conv2.i174
  %add4.i176 = add i32 %add3.i175, %srcSize
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i176, i32 %dstCapacity)
  %cmp5.i177 = icmp ugt i32 %add4.i176, %dstCapacity
  br i1 %cmp5.i177, label %if.then11.cleanup92_crit_edge, label %if.end.i178

if.then11.cleanup92_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup92

if.end.i178:                                      ; preds = %if.then11
  %11 = zext i32 %add3.i175 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %add3.i175, label %if.end.i178.sw.epilog.i189_crit_edge [
    i32 1, label %sw.bb.i181
    i32 2, label %sw.bb9.i184
    i32 3, label %sw.bb13.i187
  ]

if.end.i178.sw.epilog.i189_crit_edge:             ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i189

sw.bb.i181:                                       ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #7
  %srcSize.tr31.i179 = trunc i32 %srcSize to i8
  %conv8.i180 = shl i8 %srcSize.tr31.i179, 3
  %12 = ptrtoint ptr %dst to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv8.i180, ptr %dst, align 1
  br label %sw.epilog.i189

sw.bb9.i184:                                      ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #7
  %srcSize.tr.i182 = trunc i32 %srcSize to i16
  %13 = shl i16 %srcSize.tr.i182, 4
  %conv12.i183 = or i16 %13, 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv12.i183) #5
  %15 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %dst, align 1
  br label %sw.epilog.i189

sw.bb13.i187:                                     ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #7
  %shl14.i185 = shl i32 %srcSize, 4
  %add15.i186 = or i32 %shl14.i185, 12
  %16 = tail call i32 @llvm.bswap.i32(i32 %add15.i186) #5
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %dst, align 1
  br label %sw.epilog.i189

sw.epilog.i189:                                   ; preds = %sw.bb13.i187, %sw.bb9.i184, %sw.bb.i181, %if.end.i178.sw.epilog.i189_crit_edge
  %add.ptr.i188 = getelementptr i8, ptr %dst, i32 %add3.i175
  %18 = call ptr @memcpy(ptr %add.ptr.i188, ptr %src, i32 %srcSize)
  br label %cleanup92

cleanup.cont:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %dstCapacity)
  %cmp15.not = icmp ult i32 %add3, %dstCapacity
  br i1 %cmp15.not, label %if.end18, label %cleanup.cont.cleanup92_crit_edge

cleanup.cont.cleanup92_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup92

if.end18:                                         ; preds = %cleanup.cont
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %repeat) #5
  %19 = ptrtoint ptr %repeatMode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %repeatMode, align 4
  %21 = ptrtoint ptr %repeat to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %repeat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %strategy)
  %cmp20 = icmp ult i32 %strategy, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %srcSize)
  %cmp22 = icmp ult i32 %srcSize, 1025
  %narrow = and i1 %cmp20, %cmp22
  %cond24 = zext i1 %narrow to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp25 = icmp eq i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add3)
  %cmp27 = icmp eq i32 %add3, 3
  %or.cond = select i1 %cmp25, i1 %cmp27, i1 false
  %spec.select168 = or i1 %cmp4, %or.cond
  %add.ptr = getelementptr i8, ptr %dst, i32 %add3
  %sub = sub i32 %dstCapacity, %add3
  br i1 %spec.select168, label %cond.true32, label %cond.false34

cond.true32:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = call i32 @HUF_compress1X_repeat(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef %src, i32 noundef %srcSize, i32 noundef 255, i32 noundef 11, ptr noundef %entropyWorkspace, i32 noundef %entropyWorkspaceSize, ptr noundef %nextHuf, ptr noundef nonnull %repeat, i32 noundef %cond24, i32 noundef %bmi2) #5
  br label %cond.end40

cond.false34:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call39 = call i32 @HUF_compress4X_repeat(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef %src, i32 noundef %srcSize, i32 noundef 255, i32 noundef 11, ptr noundef %entropyWorkspace, i32 noundef %entropyWorkspaceSize, ptr noundef %nextHuf, ptr noundef nonnull %repeat, i32 noundef %cond24, i32 noundef %bmi2) #5
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false34, %cond.true32
  %cond41 = phi i32 [ %call33, %cond.true32 ], [ %call39, %cond.false34 ]
  %22 = ptrtoint ptr %repeat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %repeat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp42.not = icmp eq i32 %23, 0
  %spec.select = select i1 %cmp42.not, i32 2, i32 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %repeat) #5
  %add.i.neg = add i32 %srcSize, -2
  %sub48 = sub i32 %add.i.neg, %shr.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond41, i32 %sub48)
  %cmp49 = icmp ult i32 %cond41, %sub48
  %24 = add i32 %cond41, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -120, i32 %24)
  %25 = icmp ult i32 %24, -120
  %tobool53.not = and i1 %cmp49, %25
  br i1 %tobool53.not, label %if.end56, label %if.then54

if.then54:                                        ; preds = %cond.end40
  %26 = call ptr @memcpy(ptr %nextHuf, ptr %prevHuf, i32 1028)
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %srcSize)
  %cmp.i193 = icmp ugt i32 %srcSize, 31
  %add.i194 = select i1 %cmp.i193, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %srcSize)
  %cmp1.i195 = icmp ugt i32 %srcSize, 4095
  %conv2.i196 = zext i1 %cmp1.i195 to i32
  %add3.i197 = add nuw nsw i32 %add.i194, %conv2.i196
  %add4.i198 = add i32 %add3.i197, %srcSize
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i198, i32 %dstCapacity)
  %cmp5.i199 = icmp ugt i32 %add4.i198, %dstCapacity
  br i1 %cmp5.i199, label %if.then54.cleanup92_crit_edge, label %if.end.i200

if.then54.cleanup92_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup92

if.end.i200:                                      ; preds = %if.then54
  %27 = zext i32 %add3.i197 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %add3.i197, label %if.end.i200.sw.epilog.i211_crit_edge [
    i32 1, label %sw.bb.i203
    i32 2, label %sw.bb9.i206
    i32 3, label %sw.bb13.i209
  ]

if.end.i200.sw.epilog.i211_crit_edge:             ; preds = %if.end.i200
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i211

sw.bb.i203:                                       ; preds = %if.end.i200
  call void @__sanitizer_cov_trace_pc() #7
  %srcSize.tr31.i201 = trunc i32 %srcSize to i8
  %conv8.i202 = shl i8 %srcSize.tr31.i201, 3
  %28 = ptrtoint ptr %dst to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv8.i202, ptr %dst, align 1
  br label %sw.epilog.i211

sw.bb9.i206:                                      ; preds = %if.end.i200
  call void @__sanitizer_cov_trace_pc() #7
  %srcSize.tr.i204 = trunc i32 %srcSize to i16
  %29 = shl i16 %srcSize.tr.i204, 4
  %conv12.i205 = or i16 %29, 4
  %30 = call i16 @llvm.bswap.i16(i16 %conv12.i205) #5
  %31 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %dst, align 1
  br label %sw.epilog.i211

sw.bb13.i209:                                     ; preds = %if.end.i200
  call void @__sanitizer_cov_trace_pc() #7
  %shl14.i207 = shl i32 %srcSize, 4
  %add15.i208 = or i32 %shl14.i207, 12
  %32 = call i32 @llvm.bswap.i32(i32 %add15.i208) #5
  %33 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %dst, align 1
  br label %sw.epilog.i211

sw.epilog.i211:                                   ; preds = %sw.bb13.i209, %sw.bb9.i206, %sw.bb.i203, %if.end.i200.sw.epilog.i211_crit_edge
  %add.ptr.i210 = getelementptr i8, ptr %dst, i32 %add3.i197
  %34 = call ptr @memcpy(ptr %add.ptr.i210, ptr %src, i32 %srcSize)
  br label %cleanup92

if.end56:                                         ; preds = %cond.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond41)
  %cmp57 = icmp eq i32 %cond41, 1
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %35 = call ptr @memcpy(ptr %nextHuf, ptr %prevHuf, i32 1028)
  %call60 = call i32 @ZSTD_compressRleLiteralsBlock(ptr noundef %dst, i32 undef, ptr noundef %src, i32 noundef %srcSize)
  br label %cleanup92

if.end61:                                         ; preds = %if.end56
  br i1 %cmp42.not, label %if.then64, label %if.end61.if.end66_crit_edge

if.end61.if.end66_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %repeatMode65 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %nextHuf, i32 0, i32 1
  %36 = ptrtoint ptr %repeatMode65 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %repeatMode65, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end61.if.end66_crit_edge
  %37 = zext i32 %add3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %add3, label %if.end66.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb74
    i32 5, label %sw.bb82
  ]

if.end66.sw.epilog_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %shl = select i1 %spec.select168, i32 0, i32 4
  %add68 = or i32 %shl, %spec.select
  %shl69 = shl i32 %srcSize, 4
  %shl71 = shl i32 %cond41, 14
  %add70 = add i32 %shl71, %shl69
  %add72 = or i32 %add70, %add68
  %conv.i214 = trunc i32 %add72 to i16
  %38 = call i16 @llvm.bswap.i16(i16 %conv.i214) #5
  %39 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %38, ptr %dst, align 1
  %shr.i215 = lshr i32 %add70, 16
  %conv1.i = trunc i32 %shr.i215 to i8
  %arrayidx.i = getelementptr i8, ptr %dst, i32 2
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv1.i, ptr %arrayidx.i, align 1
  br label %sw.epilog

sw.bb74:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %shl77 = shl i32 %srcSize, 4
  %shl79 = shl i32 %cond41, 18
  %add78 = or i32 %shl77, 8
  %add76 = add i32 %add78, %shl79
  %add80 = or i32 %add76, %spec.select
  %41 = call i32 @llvm.bswap.i32(i32 %add80) #5
  %42 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %dst, align 1
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %shl85 = shl i32 %srcSize, 4
  %shl87 = shl i32 %cond41, 22
  %add86 = or i32 %shl85, 12
  %add84 = add i32 %add86, %shl87
  %add88 = or i32 %add84, %spec.select
  %43 = call i32 @llvm.bswap.i32(i32 %add88) #5
  %44 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %dst, align 1
  %shr = lshr i32 %cond41, 10
  %conv89 = trunc i32 %shr to i8
  %arrayidx = getelementptr i8, ptr %dst, i32 4
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv89, ptr %arrayidx, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb82, %sw.bb74, %sw.bb, %if.end66.sw.epilog_crit_edge
  %add91 = add nuw i32 %cond41, %add3
  br label %cleanup92

cleanup92:                                        ; preds = %sw.epilog, %if.then59, %sw.epilog.i211, %if.then54.cleanup92_crit_edge, %cleanup.cont.cleanup92_crit_edge, %sw.epilog.i189, %if.then11.cleanup92_crit_edge, %sw.epilog.i, %if.then.cleanup92_crit_edge
  %retval.1 = phi i32 [ %call60, %if.then59 ], [ %add91, %sw.epilog ], [ -70, %cleanup.cont.cleanup92_crit_edge ], [ %add4.i, %sw.epilog.i ], [ -70, %if.then.cleanup92_crit_edge ], [ %add4.i198, %sw.epilog.i211 ], [ -70, %if.then54.cleanup92_crit_edge ], [ -70, %if.then11.cleanup92_crit_edge ], [ %add4.i176, %sw.epilog.i189 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_compress1X_repeat(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_compress4X_repeat(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
