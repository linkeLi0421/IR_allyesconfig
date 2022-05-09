; ModuleID = '/llk/IR_all_yes/lib/zstd/compress/hist.c_pt.bc'
source_filename = "../lib/zstd/compress/hist.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @HIST_isError(i32 noundef %code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -120, i32 %code)
  %cmp.i = icmp ugt i32 %code, -120
  %conv.i = zext i1 %cmp.i to i32
  ret i32 %conv.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HIST_count_simple(ptr nocapture noundef %count, ptr nocapture noundef %maxSymbolValuePtr, ptr noundef readonly %src, i32 noundef %srcSize) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %src, i32 %srcSize
  %0 = ptrtoint ptr %maxSymbolValuePtr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maxSymbolValuePtr, align 4
  %add = shl i32 %1, 2
  %mul = add i32 %add, 4
  %2 = call ptr @memset(ptr %count, i32 0, i32 %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srcSize)
  %cmp = icmp eq i32 %srcSize, 0
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %cmp133 = icmp ugt ptr %add.ptr, %src
  br i1 %cmp133, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.cond2.preheader_crit_edge

while.cond.preheader.while.cond2.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond2.preheader

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %maxSymbolValuePtr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %maxSymbolValuePtr, align 4
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %ip.034 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %src, %while.cond.preheader.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %ip.034, i32 1
  %4 = ptrtoint ptr %ip.034 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ip.034, align 1
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr i32, ptr %count, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %arrayidx, align 4
  %exitcond.not = icmp eq ptr %incdec.ptr, %add.ptr
  br i1 %exitcond.not, label %while.body.while.cond2.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body.while.cond2.preheader_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond2.preheader

while.cond2.preheader:                            ; preds = %while.body.while.cond2.preheader_crit_edge, %while.cond.preheader.while.cond2.preheader_crit_edge
  br label %while.cond2

while.cond2:                                      ; preds = %while.cond2.while.cond2_crit_edge, %while.cond2.preheader
  %maxSymbolValue.0 = phi i32 [ %dec, %while.cond2.while.cond2_crit_edge ], [ %1, %while.cond2.preheader ]
  %arrayidx3 = getelementptr i32, ptr %count, i32 %maxSymbolValue.0
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  %tobool.not = icmp eq i32 %9, 0
  %dec = add i32 %maxSymbolValue.0, -1
  br i1 %tobool.not, label %while.cond2.while.cond2_crit_edge, label %while.end5

while.cond2.while.cond2_crit_edge:                ; preds = %while.cond2
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond2

while.end5:                                       ; preds = %while.cond2
  %10 = ptrtoint ptr %maxSymbolValuePtr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %maxSymbolValue.0, ptr %maxSymbolValuePtr, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.end5
  %s.036 = phi i32 [ 0, %while.end5 ], [ %inc12, %for.body.for.body_crit_edge ]
  %largestCount.035 = phi i32 [ 0, %while.end5 ], [ %13, %for.body.for.body_crit_edge ]
  %arrayidx7 = getelementptr i32, ptr %count, i32 %s.036
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx7, align 4
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 %largestCount.035)
  %inc12 = add i32 %s.036, 1
  %cmp6.not = icmp ugt i32 %inc12, %maxSymbolValue.0
  br i1 %cmp6.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %13, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HIST_countFast_wksp(ptr nocapture noundef %count, ptr nocapture noundef %maxSymbolValuePtr, ptr noundef %source, i32 noundef %sourceSize, ptr noundef %workSpace, i32 noundef %workSpaceSize) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %sourceSize)
  %cmp = icmp ult i32 %sourceSize, 1500
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %source, i32 %sourceSize
  %0 = ptrtoint ptr %maxSymbolValuePtr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maxSymbolValuePtr, align 4
  %add.i = shl i32 %1, 2
  %mul.i = add i32 %add.i, 4
  %2 = call ptr @memset(ptr %count, i32 0, i32 %mul.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sourceSize)
  %cmp.i = icmp eq i32 %sourceSize, 0
  br i1 %cmp.i, label %if.then.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.then
  %cmp133.i = icmp ugt ptr %add.ptr.i, %source
  br i1 %cmp133.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.while.cond2.i.preheader_crit_edge

while.cond.preheader.i.while.cond2.i.preheader_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond2.i.preheader

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %maxSymbolValuePtr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %maxSymbolValuePtr, align 4
  br label %return

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %ip.034.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %source, %while.cond.preheader.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %ip.034.i, i32 1
  %4 = ptrtoint ptr %ip.034.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ip.034.i, align 1
  %idxprom.i = zext i8 %5 to i32
  %arrayidx.i = getelementptr i32, ptr %count, i32 %idxprom.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %arrayidx.i, align 4
  %exitcond.not.i = icmp eq ptr %incdec.ptr.i, %add.ptr.i
  br i1 %exitcond.not.i, label %while.body.i.while.cond2.i.preheader_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

while.body.i.while.cond2.i.preheader_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond2.i.preheader

while.cond2.i.preheader:                          ; preds = %while.body.i.while.cond2.i.preheader_crit_edge, %while.cond.preheader.i.while.cond2.i.preheader_crit_edge
  br label %while.cond2.i

while.cond2.i:                                    ; preds = %while.cond2.i.while.cond2.i_crit_edge, %while.cond2.i.preheader
  %maxSymbolValue.0.i = phi i32 [ %dec.i, %while.cond2.i.while.cond2.i_crit_edge ], [ %1, %while.cond2.i.preheader ]
  %arrayidx3.i = getelementptr i32, ptr %count, i32 %maxSymbolValue.0.i
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.i, align 4
  %tobool.not.i = icmp eq i32 %9, 0
  %dec.i = add i32 %maxSymbolValue.0.i, -1
  br i1 %tobool.not.i, label %while.cond2.i.while.cond2.i_crit_edge, label %while.end5.i

while.cond2.i.while.cond2.i_crit_edge:            ; preds = %while.cond2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond2.i

while.end5.i:                                     ; preds = %while.cond2.i
  %10 = ptrtoint ptr %maxSymbolValuePtr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %maxSymbolValue.0.i, ptr %maxSymbolValuePtr, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.end5.i
  %s.036.i = phi i32 [ 0, %while.end5.i ], [ %inc12.i, %for.body.i.for.body.i_crit_edge ]
  %largestCount.035.i = phi i32 [ 0, %while.end5.i ], [ %13, %for.body.i.for.body.i_crit_edge ]
  %arrayidx7.i = getelementptr i32, ptr %count, i32 %s.036.i
  %11 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx7.i, align 4
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 %largestCount.035.i) #3
  %inc12.i = add i32 %s.036.i, 1
  %cmp6.not.i = icmp ugt i32 %inc12.i, %maxSymbolValue.0.i
  br i1 %cmp6.not.i, label %for.body.i.return_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i.return_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %workSpace to i32
  %and = and i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %workSpaceSize)
  %cmp3 = icmp ult i32 %workSpaceSize, 4096
  br i1 %cmp3, label %if.end2.return_crit_edge, label %if.end5

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end5:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #5
  %call6 = tail call fastcc i32 @HIST_count_parallel_wksp(ptr noundef %count, ptr noundef %maxSymbolValuePtr, ptr noundef %source, i32 noundef %sourceSize, i32 noundef 0, ptr noundef %workSpace)
  br label %return

return:                                           ; preds = %if.end5, %if.end2.return_crit_edge, %if.end.return_crit_edge, %for.body.i.return_crit_edge, %if.then.i
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -1, %if.end.return_crit_edge ], [ -66, %if.end2.return_crit_edge ], [ 0, %if.then.i ], [ %13, %for.body.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @HIST_count_parallel_wksp(ptr nocapture noundef writeonly %count, ptr nocapture noundef %maxSymbolValuePtr, ptr noundef readonly %source, i32 noundef %sourceSize, i32 noundef %check, ptr nocapture noundef %workSpace) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %source206 = ptrtoint ptr %source to i32
  %add.ptr = getelementptr i8, ptr %source, i32 %sourceSize
  %0 = ptrtoint ptr %maxSymbolValuePtr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maxSymbolValuePtr, align 4
  %add = shl i32 %1, 2
  %mul = add i32 %add, 4
  %add.ptr1 = getelementptr i32, ptr %workSpace, i32 256
  %add.ptr2 = getelementptr i32, ptr %workSpace, i32 512
  %add.ptr3 = getelementptr i32, ptr %workSpace, i32 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sourceSize)
  %tobool.not = icmp eq i32 %sourceSize, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = call ptr @memset(ptr %count, i32 0, i32 %mul)
  %3 = ptrtoint ptr %maxSymbolValuePtr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %maxSymbolValuePtr, align 4
  br label %cleanup112

if.end:                                           ; preds = %entry
  %4 = call ptr @memset(ptr %workSpace, i32 0, i32 4096)
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 -15
  %ip.0197 = getelementptr i8, ptr %source, i32 4
  %cmp198 = icmp ult ptr %ip.0197, %add.ptr5
  br i1 %cmp198, label %while.body.preheader, label %if.end.while.cond78.preheader_crit_edge

if.end.while.cond78.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond78.preheader

while.body.preheader:                             ; preds = %if.end
  %5 = ptrtoint ptr %source to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %source, align 1
  br label %while.body

while.cond78.preheader.loopexit:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  %.pre = ptrtoint ptr %add.ptr40 to i32
  br label %while.cond78.preheader

while.cond78.preheader:                           ; preds = %while.cond78.preheader.loopexit, %if.end.while.cond78.preheader_crit_edge
  %source.pn.lcssa207.pre-phi = phi i32 [ %.pre, %while.cond78.preheader.loopexit ], [ %source206, %if.end.while.cond78.preheader_crit_edge ]
  %source.pn.lcssa = phi ptr [ %add.ptr40, %while.cond78.preheader.loopexit ], [ %source, %if.end.while.cond78.preheader_crit_edge ]
  %cmp79202 = icmp ult ptr %source.pn.lcssa, %add.ptr
  br i1 %cmp79202, label %while.body81.preheader, label %while.cond78.preheader.for.body.preheader_crit_edge

while.cond78.preheader.for.body.preheader_crit_edge: ; preds = %while.cond78.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.preheader

while.body81.preheader:                           ; preds = %while.cond78.preheader
  %7 = add i32 %source206, %sourceSize
  %8 = sub i32 %7, %source.pn.lcssa207.pre-phi
  %uglygep = getelementptr i8, ptr %source.pn.lcssa, i32 %8
  br label %while.body81

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %ip.0201 = phi ptr [ %ip.0, %while.body.while.body_crit_edge ], [ %ip.0197, %while.body.preheader ]
  %cached.0200 = phi i32 [ %40, %while.body.while.body_crit_edge ], [ %6, %while.body.preheader ]
  %source.pn199 = phi ptr [ %add.ptr40, %while.body.while.body_crit_edge ], [ %source, %while.body.preheader ]
  %9 = ptrtoint ptr %ip.0201 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %ip.0201, align 1
  %add.ptr7 = getelementptr i8, ptr %source.pn199, i32 8
  %idxprom = and i32 %cached.0200, 255
  %arrayidx = getelementptr i32, ptr %workSpace, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %arrayidx, align 4
  %shr = lshr i32 %cached.0200, 8
  %idxprom9 = and i32 %shr, 255
  %arrayidx10 = getelementptr i32, ptr %add.ptr1, i32 %idxprom9
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx10, align 4
  %inc11 = add i32 %14, 1
  store i32 %inc11, ptr %arrayidx10, align 4
  %shr12 = lshr i32 %cached.0200, 16
  %idxprom14 = and i32 %shr12, 255
  %arrayidx15 = getelementptr i32, ptr %add.ptr2, i32 %idxprom14
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx15, align 4
  %inc16 = add i32 %16, 1
  store i32 %inc16, ptr %arrayidx15, align 4
  %shr17 = lshr i32 %cached.0200, 24
  %arrayidx18 = getelementptr i32, ptr %add.ptr3, i32 %shr17
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx18, align 4
  %inc19 = add i32 %18, 1
  store i32 %inc19, ptr %arrayidx18, align 4
  %19 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %add.ptr7, align 1
  %add.ptr21 = getelementptr i8, ptr %source.pn199, i32 12
  %idxprom23 = and i32 %10, 255
  %arrayidx24 = getelementptr i32, ptr %workSpace, i32 %idxprom23
  %21 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx24, align 4
  %inc25 = add i32 %22, 1
  store i32 %inc25, ptr %arrayidx24, align 4
  %shr26 = lshr i32 %10, 8
  %idxprom28 = and i32 %shr26, 255
  %arrayidx29 = getelementptr i32, ptr %add.ptr1, i32 %idxprom28
  %23 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx29, align 4
  %inc30 = add i32 %24, 1
  store i32 %inc30, ptr %arrayidx29, align 4
  %shr31 = lshr i32 %10, 16
  %idxprom33 = and i32 %shr31, 255
  %arrayidx34 = getelementptr i32, ptr %add.ptr2, i32 %idxprom33
  %25 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx34, align 4
  %inc35 = add i32 %26, 1
  store i32 %inc35, ptr %arrayidx34, align 4
  %shr36 = lshr i32 %10, 24
  %arrayidx37 = getelementptr i32, ptr %add.ptr3, i32 %shr36
  %27 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx37, align 4
  %inc38 = add i32 %28, 1
  store i32 %inc38, ptr %arrayidx37, align 4
  %29 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %add.ptr21, align 1
  %add.ptr40 = getelementptr i8, ptr %source.pn199, i32 16
  %idxprom42 = and i32 %20, 255
  %arrayidx43 = getelementptr i32, ptr %workSpace, i32 %idxprom42
  %31 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx43, align 4
  %inc44 = add i32 %32, 1
  store i32 %inc44, ptr %arrayidx43, align 4
  %shr45 = lshr i32 %20, 8
  %idxprom47 = and i32 %shr45, 255
  %arrayidx48 = getelementptr i32, ptr %add.ptr1, i32 %idxprom47
  %33 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx48, align 4
  %inc49 = add i32 %34, 1
  store i32 %inc49, ptr %arrayidx48, align 4
  %shr50 = lshr i32 %20, 16
  %idxprom52 = and i32 %shr50, 255
  %arrayidx53 = getelementptr i32, ptr %add.ptr2, i32 %idxprom52
  %35 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx53, align 4
  %inc54 = add i32 %36, 1
  store i32 %inc54, ptr %arrayidx53, align 4
  %shr55 = lshr i32 %20, 24
  %arrayidx56 = getelementptr i32, ptr %add.ptr3, i32 %shr55
  %37 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx56, align 4
  %inc57 = add i32 %38, 1
  store i32 %inc57, ptr %arrayidx56, align 4
  %39 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %add.ptr40, align 1
  %idxprom61 = and i32 %30, 255
  %arrayidx62 = getelementptr i32, ptr %workSpace, i32 %idxprom61
  %41 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx62, align 4
  %inc63 = add i32 %42, 1
  store i32 %inc63, ptr %arrayidx62, align 4
  %shr64 = lshr i32 %30, 8
  %idxprom66 = and i32 %shr64, 255
  %arrayidx67 = getelementptr i32, ptr %add.ptr1, i32 %idxprom66
  %43 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx67, align 4
  %inc68 = add i32 %44, 1
  store i32 %inc68, ptr %arrayidx67, align 4
  %shr69 = lshr i32 %30, 16
  %idxprom71 = and i32 %shr69, 255
  %arrayidx72 = getelementptr i32, ptr %add.ptr2, i32 %idxprom71
  %45 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx72, align 4
  %inc73 = add i32 %46, 1
  store i32 %inc73, ptr %arrayidx72, align 4
  %shr74 = lshr i32 %30, 24
  %arrayidx75 = getelementptr i32, ptr %add.ptr3, i32 %shr74
  %47 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx75, align 4
  %inc76 = add i32 %48, 1
  store i32 %inc76, ptr %arrayidx75, align 4
  %ip.0 = getelementptr i8, ptr %source.pn199, i32 20
  %cmp = icmp ult ptr %ip.0, %add.ptr5
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.cond78.preheader.loopexit

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body81:                                     ; preds = %while.body81.while.body81_crit_edge, %while.body81.preheader
  %ip.1203 = phi ptr [ %incdec.ptr, %while.body81.while.body81_crit_edge ], [ %source.pn.lcssa, %while.body81.preheader ]
  %incdec.ptr = getelementptr i8, ptr %ip.1203, i32 1
  %49 = ptrtoint ptr %ip.1203 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ip.1203, align 1
  %idxprom82 = zext i8 %50 to i32
  %arrayidx83 = getelementptr i32, ptr %workSpace, i32 %idxprom82
  %51 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx83, align 4
  %inc84 = add i32 %52, 1
  store i32 %inc84, ptr %arrayidx83, align 4
  %exitcond.not = icmp eq ptr %incdec.ptr, %uglygep
  br i1 %exitcond.not, label %while.body81.for.body.preheader_crit_edge, label %while.body81.while.body81_crit_edge

while.body81.while.body81_crit_edge:              ; preds = %while.body81
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body81

while.body81.for.body.preheader_crit_edge:        ; preds = %while.body81
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.preheader

for.body.preheader:                               ; preds = %while.body81.for.body.preheader_crit_edge, %while.cond78.preheader.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %s.0205 = phi i32 [ %inc101, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %max.0204 = phi i32 [ %61, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx88 = getelementptr i32, ptr %add.ptr1, i32 %s.0205
  %53 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx88, align 4
  %arrayidx89 = getelementptr i32, ptr %add.ptr2, i32 %s.0205
  %55 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx89, align 4
  %add90 = add i32 %56, %54
  %arrayidx91 = getelementptr i32, ptr %add.ptr3, i32 %s.0205
  %57 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx91, align 4
  %add92 = add i32 %add90, %58
  %arrayidx93 = getelementptr i32, ptr %workSpace, i32 %s.0205
  %59 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx93, align 4
  %add94 = add i32 %add92, %60
  store i32 %add94, ptr %arrayidx93, align 4
  %61 = tail call i32 @llvm.umax.i32(i32 %add94, i32 %max.0204)
  %inc101 = add nuw nsw i32 %s.0205, 1
  %exitcond208.not = icmp eq i32 %inc101, 256
  br i1 %exitcond208.not, label %for.body.while.cond102_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.while.cond102_crit_edge:                 ; preds = %for.body
  br label %while.cond102

while.cond102:                                    ; preds = %while.cond102.while.cond102_crit_edge, %for.body.while.cond102_crit_edge
  %maxSymbolValue.0 = phi i32 [ %dec, %while.cond102.while.cond102_crit_edge ], [ 255, %for.body.while.cond102_crit_edge ]
  %arrayidx103 = getelementptr i32, ptr %workSpace, i32 %maxSymbolValue.0
  %62 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx103, align 4
  %tobool104.not = icmp eq i32 %63, 0
  %dec = add i32 %maxSymbolValue.0, -1
  br i1 %tobool104.not, label %while.cond102.while.cond102_crit_edge, label %while.end106

while.cond102.while.cond102_crit_edge:            ; preds = %while.cond102
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond102

while.end106:                                     ; preds = %while.cond102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check)
  %tobool107.not = icmp eq i32 %check, 0
  br i1 %tobool107.not, label %while.end106._crit_edge, label %land.lhs.true

while.end106._crit_edge:                          ; preds = %while.end106
  call void @__sanitizer_cov_trace_pc() #5
  br label %66

land.lhs.true:                                    ; preds = %while.end106
  %64 = ptrtoint ptr %maxSymbolValuePtr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %maxSymbolValuePtr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %maxSymbolValue.0, i32 %65)
  %cmp108 = icmp ugt i32 %maxSymbolValue.0, %65
  br i1 %cmp108, label %land.lhs.true.cleanup112_crit_edge, label %land.lhs.true._crit_edge

land.lhs.true._crit_edge:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %66

land.lhs.true.cleanup112_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup112

66:                                               ; preds = %land.lhs.true._crit_edge, %while.end106._crit_edge
  %67 = ptrtoint ptr %maxSymbolValuePtr to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %maxSymbolValue.0, ptr %maxSymbolValuePtr, align 4
  %68 = call ptr @memmove(ptr %count, ptr %workSpace, i32 %mul)
  br label %cleanup112

cleanup112:                                       ; preds = %66, %land.lhs.true.cleanup112_crit_edge, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ %61, %66 ], [ -48, %land.lhs.true.cleanup112_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HIST_count_wksp(ptr nocapture noundef %count, ptr nocapture noundef %maxSymbolValuePtr, ptr noundef %source, i32 noundef %sourceSize, ptr noundef %workSpace, i32 noundef %workSpaceSize) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %workSpace to i32
  %and = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %workSpaceSize)
  %cmp = icmp ult i32 %workSpaceSize, 4096
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end2:                                          ; preds = %if.end
  %1 = ptrtoint ptr %maxSymbolValuePtr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %maxSymbolValuePtr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %2)
  %cmp3 = icmp ult i32 %2, 255
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call fastcc i32 @HIST_count_parallel_wksp(ptr noundef %count, ptr noundef %maxSymbolValuePtr, ptr noundef %source, i32 noundef %sourceSize, i32 noundef 1, ptr noundef %workSpace)
  br label %return

if.end5:                                          ; preds = %if.end2
  %3 = ptrtoint ptr %maxSymbolValuePtr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 255, ptr %maxSymbolValuePtr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %sourceSize)
  %cmp.i = icmp ult i32 %sourceSize, 1500
  br i1 %cmp.i, label %if.then.i, label %if.end5.i

if.then.i:                                        ; preds = %if.end5
  %add.ptr.i.i = getelementptr i8, ptr %source, i32 %sourceSize
  %4 = call ptr @memset(ptr %count, i32 0, i32 1024)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sourceSize)
  %cmp.i.i = icmp eq i32 %sourceSize, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %if.then.i
  %cmp133.i.i = icmp ugt ptr %add.ptr.i.i, %source
  br i1 %cmp133.i.i, label %while.cond.preheader.i.i.while.body.i.i_crit_edge, label %while.cond.preheader.i.i.while.cond2.i.i.preheader_crit_edge

while.cond.preheader.i.i.while.cond2.i.i.preheader_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond2.i.i.preheader

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %5 = ptrtoint ptr %maxSymbolValuePtr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %maxSymbolValuePtr, align 4
  br label %return

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %ip.034.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %source, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %ip.034.i.i, i32 1
  %6 = ptrtoint ptr %ip.034.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ip.034.i.i, align 1
  %idxprom.i.i = zext i8 %7 to i32
  %arrayidx.i.i = getelementptr i32, ptr %count, i32 %idxprom.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %inc.i.i = add i32 %9, 1
  store i32 %inc.i.i, ptr %arrayidx.i.i, align 4
  %exitcond.not.i.i = icmp eq ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %exitcond.not.i.i, label %while.body.i.i.while.cond2.i.i.preheader_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i.i

while.body.i.i.while.cond2.i.i.preheader_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond2.i.i.preheader

while.cond2.i.i.preheader:                        ; preds = %while.body.i.i.while.cond2.i.i.preheader_crit_edge, %while.cond.preheader.i.i.while.cond2.i.i.preheader_crit_edge
  br label %while.cond2.i.i

while.cond2.i.i:                                  ; preds = %while.cond2.i.i.while.cond2.i.i_crit_edge, %while.cond2.i.i.preheader
  %maxSymbolValue.0.i.i = phi i32 [ %dec.i.i, %while.cond2.i.i.while.cond2.i.i_crit_edge ], [ 255, %while.cond2.i.i.preheader ]
  %arrayidx3.i.i = getelementptr i32, ptr %count, i32 %maxSymbolValue.0.i.i
  %10 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %11, 0
  %dec.i.i = add i32 %maxSymbolValue.0.i.i, -1
  br i1 %tobool.not.i.i, label %while.cond2.i.i.while.cond2.i.i_crit_edge, label %while.end5.i.i

while.cond2.i.i.while.cond2.i.i_crit_edge:        ; preds = %while.cond2.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond2.i.i

while.end5.i.i:                                   ; preds = %while.cond2.i.i
  %12 = ptrtoint ptr %maxSymbolValuePtr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %maxSymbolValue.0.i.i, ptr %maxSymbolValuePtr, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %while.end5.i.i
  %s.036.i.i = phi i32 [ 0, %while.end5.i.i ], [ %inc12.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %largestCount.035.i.i = phi i32 [ 0, %while.end5.i.i ], [ %15, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx7.i.i = getelementptr i32, ptr %count, i32 %s.036.i.i
  %13 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx7.i.i, align 4
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 %largestCount.035.i.i) #3
  %inc12.i.i = add i32 %s.036.i.i, 1
  %cmp6.not.i.i = icmp ugt i32 %inc12.i.i, %maxSymbolValue.0.i.i
  br i1 %cmp6.not.i.i, label %for.body.i.i.return_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i

for.body.i.i.return_crit_edge:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end5.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %call6.i = tail call fastcc i32 @HIST_count_parallel_wksp(ptr noundef %count, ptr noundef %maxSymbolValuePtr, ptr noundef %source, i32 noundef %sourceSize, i32 noundef 0, ptr noundef %workSpace) #3
  br label %return

return:                                           ; preds = %if.end5.i, %for.body.i.i.return_crit_edge, %if.then.i.i, %if.then4, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then4 ], [ -1, %entry.return_crit_edge ], [ -66, %if.end.return_crit_edge ], [ %call6.i, %if.end5.i ], [ 0, %if.then.i.i ], [ %15, %for.body.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
