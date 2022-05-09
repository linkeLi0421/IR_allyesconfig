; ModuleID = '/llk/IR_all_yes/lib/zstd/compress/fse_compress.c_pt.bc'
source_filename = "../lib/zstd/compress/fse_compress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.FSE_symbolCompressionTransform = type { i32, i32 }

@FSE_normalizeCount.rtbTable = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 473195, i32 504333, i32 520860, i32 550000, i32 700000, i32 750000, i32 830000], [32 x i8] zeroinitializer }, align 32
@BIT_mask = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 262143, i32 524287, i32 1048575, i32 2097151, i32 4194303, i32 8388607, i32 16777215, i32 33554431, i32 67108863, i32 134217727, i32 268435455, i32 536870911, i32 1073741823, i32 2147483647], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967295]
@___asan_gen_.1 = private unnamed_addr constant [9 x i8] c"rtbTable\00", align 1
@___asan_gen_.2 = private constant [36 x i8] c"../lib/zstd/compress/fse_compress.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 440, i32 26 }
@___asan_gen_.4 = private unnamed_addr constant [9 x i8] c"BIT_mask\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [43 x i8] c"../lib/zstd/compress/../common/bitstream.h\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 153, i32 23 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @FSE_normalizeCount.rtbTable, ptr @BIT_mask], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FSE_normalizeCount.rtbTable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BIT_mask to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @FSE_buildCTable_wksp(ptr nocapture noundef writeonly %ct, ptr nocapture noundef readonly %normalizedCounter, i32 noundef %maxSymbolValue, i32 noundef %tableLog, ptr noundef %workSpace, i32 noundef %wkspSize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %tableLog
  %sub = add i32 %shl, -1
  %add.ptr = getelementptr i16, ptr %ct, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tableLog)
  %tobool.not = icmp eq i32 %tableLog, 0
  %shr = lshr i32 %shl, 1
  %spec.select = select i1 %tobool.not, i32 1, i32 %shr
  %add.ptr2 = getelementptr i32, ptr %add.ptr, i32 %spec.select
  %shr4 = lshr i32 %shl, 3
  %add6 = add i32 %maxSymbolValue, 2
  %add.ptr7 = getelementptr i32, ptr %workSpace, i32 %add6
  %0 = ptrtoint ptr %workSpace to i32
  %and = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i32 %add6 to i64
  %sub11 = add i32 %tableLog, -2
  %sh_prom = zext i32 %sub11 to i64
  %shl12 = shl nuw i64 1, %sh_prom
  %add13 = add nuw i64 %shl12, %conv
  %mul = shl i64 %add13, 2
  %conv14 = zext i32 %wkspSize to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %conv14)
  %cmp = icmp ugt i64 %mul, %conv14
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %conv18 = trunc i32 %tableLog to i16
  %1 = ptrtoint ptr %ct to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv18, ptr %ct, align 2
  %conv19 = trunc i32 %maxSymbolValue to i16
  %arrayidx20 = getelementptr i16, ptr %ct, i32 1
  %2 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv19, ptr %arrayidx20, align 2
  %3 = ptrtoint ptr %workSpace to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %workSpace, align 4
  %add22 = add i32 %maxSymbolValue, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add22)
  %cmp23.not220 = icmp eq i32 %add22, 0
  br i1 %cmp23.not220, label %if.end17.for.end_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  br label %for.body

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end17.for.body_crit_edge
  %u.0222 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %if.end17.for.body_crit_edge ]
  %highThreshold.0221 = phi i32 [ %highThreshold.1, %for.inc.for.body_crit_edge ], [ %sub, %if.end17.for.body_crit_edge ]
  %sub25 = add i32 %u.0222, -1
  %arrayidx26 = getelementptr i16, ptr %normalizedCounter, i32 %sub25
  %4 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx26, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp28 = icmp eq i16 %5, -1
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx32 = getelementptr i32, ptr %workSpace, i32 %sub25
  %6 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx32, align 4
  %add33 = add i32 %7, 1
  %arrayidx34 = getelementptr i32, ptr %workSpace, i32 %u.0222
  %8 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add33, ptr %arrayidx34, align 4
  %conv36 = trunc i32 %sub25 to i8
  %dec = add i32 %highThreshold.0221, -1
  %arrayidx37 = getelementptr i8, ptr %add.ptr7, i32 %highThreshold.0221
  %9 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv36, ptr %arrayidx37, align 1
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv27 = sext i16 %5 to i32
  %arrayidx39 = getelementptr i32, ptr %workSpace, i32 %sub25
  %10 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx39, align 4
  %add43 = add i32 %11, %conv27
  %arrayidx44 = getelementptr i32, ptr %workSpace, i32 %u.0222
  %12 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add43, ptr %arrayidx44, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then30
  %highThreshold.1 = phi i32 [ %dec, %if.then30 ], [ %highThreshold.0221, %if.else ]
  %inc = add i32 %u.0222, 1
  %cmp23.not = icmp ugt i32 %inc, %add22
  br i1 %cmp23.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end17.for.end_crit_edge
  %highThreshold.0.lcssa = phi i32 [ %sub, %if.end17.for.end_crit_edge ], [ %highThreshold.1, %for.inc.for.end_crit_edge ]
  %add46 = add nuw i32 %shl, 1
  %arrayidx48 = getelementptr i32, ptr %workSpace, i32 %add22
  %13 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add46, ptr %arrayidx48, align 4
  %add = add nuw nsw i32 %shr4, 3
  %add5 = add nuw i32 %add, %shr
  br label %for.body52

for.body52:                                       ; preds = %for.end69.for.body52_crit_edge, %for.end
  %symbol.0230 = phi i32 [ 0, %for.end ], [ %inc71, %for.end69.for.body52_crit_edge ]
  %position.0229 = phi i32 [ 0, %for.end ], [ %position.1.lcssa, %for.end69.for.body52_crit_edge ]
  %arrayidx53 = getelementptr i16, ptr %normalizedCounter, i32 %symbol.0230
  %14 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx53, align 2
  %conv54 = sext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp56225 = icmp sgt i16 %15, 0
  br i1 %cmp56225, label %for.body58.lr.ph, label %for.body52.for.end69_crit_edge

for.body52.for.end69_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end69

for.body58.lr.ph:                                 ; preds = %for.body52
  %conv59 = trunc i32 %symbol.0230 to i8
  br label %for.body58

for.body58:                                       ; preds = %for.inc67.for.body58_crit_edge, %for.body58.lr.ph
  %nbOccurrences.0227 = phi i32 [ 0, %for.body58.lr.ph ], [ %inc68, %for.inc67.for.body58_crit_edge ]
  %position.1226 = phi i32 [ %position.0229, %for.body58.lr.ph ], [ %position.2, %for.inc67.for.body58_crit_edge ]
  %arrayidx60 = getelementptr i8, ptr %add.ptr7, i32 %position.1226
  %16 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv59, ptr %arrayidx60, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %for.body58
  %position.1.pn = phi i32 [ %position.1226, %for.body58 ], [ %position.2, %while.cond.while.cond_crit_edge ]
  %add61.pn = add i32 %add5, %position.1.pn
  %position.2 = and i32 %add61.pn, %sub
  %cmp63 = icmp ugt i32 %position.2, %highThreshold.0.lcssa
  br i1 %cmp63, label %while.cond.while.cond_crit_edge, label %for.inc67

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

for.inc67:                                        ; preds = %while.cond
  %inc68 = add nuw nsw i32 %nbOccurrences.0227, 1
  %exitcond.not = icmp eq i32 %inc68, %conv54
  br i1 %exitcond.not, label %for.inc67.for.end69_crit_edge, label %for.inc67.for.body58_crit_edge

for.inc67.for.body58_crit_edge:                   ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body58

for.inc67.for.end69_crit_edge:                    ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end69

for.end69:                                        ; preds = %for.inc67.for.end69_crit_edge, %for.body52.for.end69_crit_edge
  %position.1.lcssa = phi i32 [ %position.0229, %for.body52.for.end69_crit_edge ], [ %position.2, %for.inc67.for.end69_crit_edge ]
  %inc71 = add i32 %symbol.0230, 1
  %cmp50.not = icmp ugt i32 %inc71, %maxSymbolValue
  br i1 %cmp50.not, label %for.end69.for.body77_crit_edge, label %for.end69.for.body52_crit_edge

for.end69.for.body52_crit_edge:                   ; preds = %for.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body52

for.end69.for.body77_crit_edge:                   ; preds = %for.end69
  br label %for.body77

for.cond88.preheader:                             ; preds = %for.body77
  %shl100 = shl i32 %tableLog, 16
  %sub102 = sub i32 %shl100, %shl
  %shl95 = add i32 %shl100, 65536
  %sub97 = sub i32 %shl95, %shl
  %xor.i.neg = add i32 %tableLog, 1
  br label %for.body91

for.body77:                                       ; preds = %for.body77.for.body77_crit_edge, %for.end69.for.body77_crit_edge
  %u73.0232 = phi i32 [ %inc85, %for.body77.for.body77_crit_edge ], [ 0, %for.end69.for.body77_crit_edge ]
  %arrayidx78 = getelementptr i8, ptr %add.ptr7, i32 %u73.0232
  %17 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx78, align 1
  %add79 = add i32 %u73.0232, %shl
  %conv80 = trunc i32 %add79 to i16
  %idxprom = zext i8 %18 to i32
  %arrayidx81 = getelementptr i32, ptr %workSpace, i32 %idxprom
  %19 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx81, align 4
  %inc82 = add i32 %20, 1
  store i32 %inc82, ptr %arrayidx81, align 4
  %arrayidx83 = getelementptr i16, ptr %add.ptr, i32 %20
  %21 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv80, ptr %arrayidx83, align 2
  %inc85 = add nuw i32 %u73.0232, 1
  %exitcond236.not = icmp eq i32 %inc85, %shl
  br i1 %exitcond236.not, label %for.cond88.preheader, label %for.body77.for.body77_crit_edge

for.body77.for.body77_crit_edge:                  ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body77

for.body91:                                       ; preds = %for.inc127.for.body91_crit_edge, %for.cond88.preheader
  %s87.0234 = phi i32 [ 0, %for.cond88.preheader ], [ %inc128, %for.inc127.for.body91_crit_edge ]
  %total.0233 = phi i32 [ 0, %for.cond88.preheader ], [ %total.1, %for.inc127.for.body91_crit_edge ]
  %arrayidx92 = getelementptr i16, ptr %normalizedCounter, i32 %s87.0234
  %22 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx92, align 2
  %conv93 = sext i16 %23 to i32
  %24 = zext i32 %conv93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv93, label %sw.default [
    i32 0, label %sw.bb
    i32 -1, label %for.body91.sw.bb99_crit_edge
    i32 1, label %for.body91.sw.bb99_crit_edge237
  ]

for.body91.sw.bb99_crit_edge237:                  ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb99

for.body91.sw.bb99_crit_edge:                     ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb99

sw.bb:                                            ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx98 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %add.ptr2, i32 %s87.0234
  %deltaNbBits = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %arrayidx98, i32 0, i32 1
  %25 = ptrtoint ptr %deltaNbBits to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub97, ptr %deltaNbBits, align 4
  br label %for.inc127

sw.bb99:                                          ; preds = %for.body91.sw.bb99_crit_edge, %for.body91.sw.bb99_crit_edge237
  %arrayidx103 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %add.ptr2, i32 %s87.0234
  %deltaNbBits104 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %arrayidx103, i32 0, i32 1
  %26 = ptrtoint ptr %deltaNbBits104 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub102, ptr %deltaNbBits104, align 4
  %sub105 = add i32 %total.0233, -1
  %27 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub105, ptr %arrayidx103, align 4
  %inc107 = add i32 %total.0233, 1
  br label %for.inc127

sw.default:                                       ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #11
  %sub110 = add nsw i32 %conv93, -1
  %28 = tail call i32 @llvm.ctlz.i32(i32 %sub110, i1 false) #9, !range !13
  %29 = xor i32 %28, -32
  %sub111 = add i32 %xor.i.neg, %29
  %shl114 = shl i32 %conv93, %sub111
  %shl115 = shl i32 %sub111, 16
  %sub116 = sub i32 %shl115, %shl114
  %arrayidx117 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %add.ptr2, i32 %s87.0234
  %deltaNbBits118 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %arrayidx117, i32 0, i32 1
  %30 = ptrtoint ptr %deltaNbBits118 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub116, ptr %deltaNbBits118, align 4
  %31 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx92, align 2
  %conv120 = sext i16 %32 to i32
  %sub121 = sub i32 %total.0233, %conv120
  %33 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub121, ptr %arrayidx117, align 4
  %34 = load i16, ptr %arrayidx92, align 2
  %conv125 = sext i16 %34 to i32
  %add126 = add i32 %total.0233, %conv125
  br label %for.inc127

for.inc127:                                       ; preds = %sw.default, %sw.bb99, %sw.bb
  %total.1 = phi i32 [ %add126, %sw.default ], [ %inc107, %sw.bb99 ], [ %total.0233, %sw.bb ]
  %inc128 = add i32 %s87.0234, 1
  %cmp89.not = icmp ugt i32 %inc128, %maxSymbolValue
  br i1 %cmp89.not, label %for.inc127.cleanup_crit_edge, label %for.inc127.for.body91_crit_edge

for.inc127.for.body91_crit_edge:                  ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body91

for.inc127.cleanup_crit_edge:                     ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc127.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -44, %if.end.cleanup_crit_edge ], [ 0, %for.inc127.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @FSE_NCountWriteBound(i32 noundef %maxSymbolValue, i32 noundef %tableLog) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxSymbolValue)
  %tobool.not = icmp eq i32 %maxSymbolValue, 0
  %add = add i32 %maxSymbolValue, 1
  %mul = mul i32 %add, %tableLog
  %shr = lshr i32 %mul, 3
  %add1 = add nuw nsw i32 %shr, 3
  %cond = select i1 %tobool.not, i32 512, i32 %add1
  ret i32 %cond
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @FSE_writeNCount(ptr noundef %buffer, i32 noundef %bufferSize, ptr nocapture noundef readonly %normalizedCounter, i32 noundef %maxSymbolValue, i32 noundef %tableLog) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %tableLog)
  %cmp = icmp ugt i32 %tableLog, 12
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %tableLog)
  %cmp1 = icmp ult i32 %tableLog, 5
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxSymbolValue)
  %tobool.not.i = icmp eq i32 %maxSymbolValue, 0
  %add.i = add i32 %maxSymbolValue, 1
  %mul.i = mul i32 %add.i, %tableLog
  %shr.i = lshr i32 %mul.i, 3
  %add1.i = add nuw nsw i32 %shr.i, 3
  %cond.i = select i1 %tobool.not.i, i32 512, i32 %add1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %bufferSize)
  %cmp4 = icmp ule i32 %cond.i, %bufferSize
  %. = zext i1 %cmp4 to i32
  %call8 = tail call fastcc i32 @FSE_writeNCount_generic(ptr noundef %buffer, i32 noundef %bufferSize, ptr noundef %normalizedCounter, i32 noundef %maxSymbolValue, i32 noundef %tableLog, i32 noundef %.)
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -44, %entry.return_crit_edge ], [ -1, %if.end.return_crit_edge ], [ %call8, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @FSE_writeNCount_generic(ptr noundef %header, i32 noundef %headerBufferSize, ptr nocapture noundef readonly %normalizedCounter, i32 noundef %maxSymbolValue, i32 noundef %tableLog, i32 noundef %writeIsSafe) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %header, i32 %headerBufferSize
  %shl = shl nuw i32 1, %tableLog
  %add = add i32 %maxSymbolValue, 1
  %add4 = add nuw i32 %shl, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp301 = icmp ne i32 %add, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add4)
  %cmp6302 = icmp sgt i32 %add4, 1
  %or.cond303 = select i1 %cmp301, i1 %cmp6302, i1 false
  br i1 %or.cond303, label %while.body.lr.ph, label %entry.cleanup142_crit_edge

entry.cleanup142_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup142

while.body.lr.ph:                                 ; preds = %entry
  %sub = add i32 %tableLog, -5
  %add5 = add i32 %tableLog, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %writeIsSafe)
  %tobool22.not = icmp eq i32 %writeIsSafe, 0
  %add.ptr23 = getelementptr i8, ptr %add.ptr, i32 -2
  br label %while.body

while.body:                                       ; preds = %if.end122.while.body_crit_edge, %while.body.lr.ph
  %previousIs0.0312 = phi i32 [ 0, %while.body.lr.ph ], [ %conv89, %if.end122.while.body_crit_edge ]
  %symbol.0311 = phi i32 [ 0, %while.body.lr.ph ], [ %inc67, %if.end122.while.body_crit_edge ]
  %bitCount.0310 = phi i32 [ 4, %while.body.lr.ph ], [ %bitCount.5, %if.end122.while.body_crit_edge ]
  %bitStream.0309 = phi i32 [ %sub, %while.body.lr.ph ], [ %bitStream.6, %if.end122.while.body_crit_edge ]
  %threshold.0308 = phi i32 [ %shl, %while.body.lr.ph ], [ %threshold.1.lcssa, %if.end122.while.body_crit_edge ]
  %remaining.0306 = phi i32 [ %add4, %while.body.lr.ph ], [ %sub75, %if.end122.while.body_crit_edge ]
  %nbBits.0305 = phi i32 [ %add5, %while.body.lr.ph ], [ %nbBits.1.lcssa, %if.end122.while.body_crit_edge ]
  %out.0304 = phi ptr [ %header, %while.body.lr.ph ], [ %out.5, %if.end122.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %previousIs0.0312)
  %tobool.not = icmp eq i32 %previousIs0.0312, 0
  br i1 %tobool.not, label %while.body.if.end66_crit_edge, label %while.cond7.preheader

while.body.if.end66_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

while.cond7.preheader:                            ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %symbol.0311, i32 %add)
  %cmp8277 = icmp ult i32 %symbol.0311, %add
  br i1 %cmp8277, label %while.cond7.preheader.land.rhs9_crit_edge, label %while.cond7.preheader.while.end_crit_edge

while.cond7.preheader.while.end_crit_edge:        ; preds = %while.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.cond7.preheader.land.rhs9_crit_edge:        ; preds = %while.cond7.preheader
  br label %land.rhs9

land.rhs9:                                        ; preds = %while.body12.land.rhs9_crit_edge, %while.cond7.preheader.land.rhs9_crit_edge
  %symbol.1278 = phi i32 [ %inc, %while.body12.land.rhs9_crit_edge ], [ %symbol.0311, %while.cond7.preheader.land.rhs9_crit_edge ]
  %arrayidx = getelementptr i16, ptr %normalizedCounter, i32 %symbol.1278
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool10.not = icmp eq i16 %1, 0
  br i1 %tobool10.not, label %while.body12, label %land.rhs9.while.end_crit_edge

land.rhs9.while.end_crit_edge:                    ; preds = %land.rhs9
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body12:                                     ; preds = %land.rhs9
  %inc = add i32 %symbol.1278, 1
  %exitcond.not = icmp eq i32 %symbol.1278, %maxSymbolValue
  br i1 %exitcond.not, label %while.body12.while.end123_crit_edge, label %while.body12.land.rhs9_crit_edge

while.body12.land.rhs9_crit_edge:                 ; preds = %while.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs9

while.body12.while.end123_crit_edge:              ; preds = %while.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end123

while.end:                                        ; preds = %land.rhs9.while.end_crit_edge, %while.cond7.preheader.while.end_crit_edge
  %symbol.1.lcssa = phi i32 [ %symbol.0311, %while.cond7.preheader.while.end_crit_edge ], [ %symbol.1278, %land.rhs9.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %symbol.1.lcssa, i32 %add)
  %cmp13 = icmp eq i32 %symbol.1.lcssa, %add
  br i1 %cmp13, label %while.end.while.end123_crit_edge, label %while.cond15.preheader

while.end.while.end123_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end123

while.cond15.preheader:                           ; preds = %while.end
  %add16280 = add i32 %symbol.0311, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %symbol.1.lcssa, i32 %add16280)
  %cmp17.not281 = icmp ult i32 %symbol.1.lcssa, %add16280
  br i1 %cmp17.not281, label %while.cond15.preheader.while.cond33.preheader_crit_edge, label %while.body18.lr.ph

while.cond15.preheader.while.cond33.preheader_crit_edge: ; preds = %while.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond33.preheader

while.body18.lr.ph:                               ; preds = %while.cond15.preheader
  %shl20 = shl i32 65535, %bitCount.0310
  br label %while.body18

while.cond33.preheader:                           ; preds = %if.end26.while.cond33.preheader_crit_edge, %while.cond15.preheader.while.cond33.preheader_crit_edge
  %out.1.lcssa = phi ptr [ %out.0304, %while.cond15.preheader.while.cond33.preheader_crit_edge ], [ %add.ptr30, %if.end26.while.cond33.preheader_crit_edge ]
  %bitStream.1.lcssa = phi i32 [ %bitStream.0309, %while.cond15.preheader.while.cond33.preheader_crit_edge ], [ %shr31, %if.end26.while.cond33.preheader_crit_edge ]
  %start.0.lcssa = phi i32 [ %symbol.0311, %while.cond15.preheader.while.cond33.preheader_crit_edge ], [ %add16284, %if.end26.while.cond33.preheader_crit_edge ]
  %add34288 = add i32 %start.0.lcssa, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %symbol.1.lcssa, i32 %add34288)
  %cmp35.not289 = icmp ult i32 %symbol.1.lcssa, %add34288
  br i1 %cmp35.not289, label %while.cond33.preheader.while.end42_crit_edge, label %while.cond33.preheader.while.body37_crit_edge

while.cond33.preheader.while.body37_crit_edge:    ; preds = %while.cond33.preheader
  br label %while.body37

while.cond33.preheader.while.end42_crit_edge:     ; preds = %while.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end42

while.body18:                                     ; preds = %if.end26.while.body18_crit_edge, %while.body18.lr.ph
  %add16284 = phi i32 [ %add16280, %while.body18.lr.ph ], [ %add16, %if.end26.while.body18_crit_edge ]
  %bitStream.1283 = phi i32 [ %bitStream.0309, %while.body18.lr.ph ], [ %shr31, %if.end26.while.body18_crit_edge ]
  %out.1282 = phi ptr [ %out.0304, %while.body18.lr.ph ], [ %add.ptr30, %if.end26.while.body18_crit_edge ]
  %cmp24 = icmp ugt ptr %out.1282, %add.ptr23
  %or.cond246 = select i1 %tobool22.not, i1 %cmp24, i1 false
  br i1 %or.cond246, label %while.body18.cleanup142_crit_edge, label %if.end26

while.body18.cleanup142_crit_edge:                ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup142

if.end26:                                         ; preds = %while.body18
  %add21 = add i32 %bitStream.1283, %shl20
  %conv = trunc i32 %add21 to i8
  %2 = ptrtoint ptr %out.1282 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %out.1282, align 1
  %shr = lshr i32 %add21, 8
  %conv28 = trunc i32 %shr to i8
  %arrayidx29 = getelementptr i8, ptr %out.1282, i32 1
  %3 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv28, ptr %arrayidx29, align 1
  %add.ptr30 = getelementptr i8, ptr %out.1282, i32 2
  %shr31 = lshr i32 %add21, 16
  %add16 = add i32 %add16284, 24
  %cmp17.not = icmp ult i32 %symbol.1.lcssa, %add16
  br i1 %cmp17.not, label %if.end26.while.cond33.preheader_crit_edge, label %if.end26.while.body18_crit_edge

if.end26.while.body18_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body18

if.end26.while.cond33.preheader_crit_edge:        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond33.preheader

while.body37:                                     ; preds = %while.body37.while.body37_crit_edge, %while.cond33.preheader.while.body37_crit_edge
  %add34292 = phi i32 [ %add34, %while.body37.while.body37_crit_edge ], [ %add34288, %while.cond33.preheader.while.body37_crit_edge ]
  %bitCount.1291 = phi i32 [ %add41, %while.body37.while.body37_crit_edge ], [ %bitCount.0310, %while.cond33.preheader.while.body37_crit_edge ]
  %bitStream.2290 = phi i32 [ %add40, %while.body37.while.body37_crit_edge ], [ %bitStream.1.lcssa, %while.cond33.preheader.while.body37_crit_edge ]
  %shl39 = shl i32 3, %bitCount.1291
  %add40 = add i32 %shl39, %bitStream.2290
  %add41 = add i32 %bitCount.1291, 2
  %add34 = add i32 %add34292, 3
  %cmp35.not = icmp ult i32 %symbol.1.lcssa, %add34
  br i1 %cmp35.not, label %while.body37.while.end42_crit_edge, label %while.body37.while.body37_crit_edge

while.body37.while.body37_crit_edge:              ; preds = %while.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body37

while.body37.while.end42_crit_edge:               ; preds = %while.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end42

while.end42:                                      ; preds = %while.body37.while.end42_crit_edge, %while.cond33.preheader.while.end42_crit_edge
  %bitStream.2.lcssa = phi i32 [ %bitStream.1.lcssa, %while.cond33.preheader.while.end42_crit_edge ], [ %add40, %while.body37.while.end42_crit_edge ]
  %bitCount.1.lcssa = phi i32 [ %bitCount.0310, %while.cond33.preheader.while.end42_crit_edge ], [ %add41, %while.body37.while.end42_crit_edge ]
  %start.1.lcssa = phi i32 [ %start.0.lcssa, %while.cond33.preheader.while.end42_crit_edge ], [ %add34292, %while.body37.while.end42_crit_edge ]
  %sub43 = sub i32 %symbol.1.lcssa, %start.1.lcssa
  %shl44 = shl i32 %sub43, %bitCount.1.lcssa
  %add45 = add i32 %shl44, %bitStream.2.lcssa
  %add46 = add i32 %bitCount.1.lcssa, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add46)
  %cmp47 = icmp sgt i32 %add46, 16
  br i1 %cmp47, label %if.then49, label %while.end42.if.end66_crit_edge

while.end42.if.end66_crit_edge:                   ; preds = %while.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then49:                                        ; preds = %while.end42
  %cmp53 = icmp ugt ptr %out.1.lcssa, %add.ptr23
  %or.cond247 = select i1 %tobool22.not, i1 %cmp53, i1 false
  br i1 %or.cond247, label %if.then49.cleanup142_crit_edge, label %if.end56

if.then49.cleanup142_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup142

if.end56:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %conv57 = trunc i32 %add45 to i8
  %4 = ptrtoint ptr %out.1.lcssa to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv57, ptr %out.1.lcssa, align 1
  %shr59 = lshr i32 %add45, 8
  %conv60 = trunc i32 %shr59 to i8
  %arrayidx61 = getelementptr i8, ptr %out.1.lcssa, i32 1
  %5 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv60, ptr %arrayidx61, align 1
  %add.ptr62 = getelementptr i8, ptr %out.1.lcssa, i32 2
  %shr63 = lshr i32 %add45, 16
  %sub64 = add nsw i32 %bitCount.1.lcssa, -14
  br label %if.end66

if.end66:                                         ; preds = %if.end56, %while.end42.if.end66_crit_edge, %while.body.if.end66_crit_edge
  %out.4 = phi ptr [ %out.0304, %while.body.if.end66_crit_edge ], [ %out.1.lcssa, %while.end42.if.end66_crit_edge ], [ %add.ptr62, %if.end56 ]
  %bitStream.5 = phi i32 [ %bitStream.0309, %while.body.if.end66_crit_edge ], [ %add45, %while.end42.if.end66_crit_edge ], [ %shr63, %if.end56 ]
  %bitCount.4 = phi i32 [ %bitCount.0310, %while.body.if.end66_crit_edge ], [ %add46, %while.end42.if.end66_crit_edge ], [ %sub64, %if.end56 ]
  %symbol.2 = phi i32 [ %symbol.0311, %while.body.if.end66_crit_edge ], [ %symbol.1.lcssa, %while.end42.if.end66_crit_edge ], [ %symbol.1.lcssa, %if.end56 ]
  %inc67 = add nuw i32 %symbol.2, 1
  %arrayidx68 = getelementptr i16, ptr %normalizedCounter, i32 %symbol.2
  %6 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx68, align 2
  %conv69 = sext i16 %7 to i32
  %mul = shl i32 %threshold.0308, 1
  %8 = xor i32 %remaining.0306, -1
  %sub71 = add i32 %mul, %8
  %9 = tail call i32 @llvm.abs.i32(i32 %conv69, i1 true)
  %sub75 = sub i32 %remaining.0306, %9
  %inc76 = add nsw i32 %conv69, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc76, i32 %threshold.0308)
  %cmp77.not = icmp slt i32 %inc76, %threshold.0308
  %add80 = select i1 %cmp77.not, i32 0, i32 %sub71
  %count.0 = add i32 %add80, %inc76
  %shl82 = shl i32 %count.0, %bitCount.4
  %add83 = add i32 %shl82, %bitStream.5
  %add84 = add i32 %bitCount.4, %nbBits.0305
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0, i32 %sub71)
  %cmp85 = icmp slt i32 %count.0, %sub71
  %conv86.neg = sext i1 %cmp85 to i32
  %sub87 = add i32 %add84, %conv86.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.0)
  %cmp88 = icmp eq i32 %count.0, 1
  %conv89 = zext i1 %cmp88 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub75)
  %cmp90 = icmp slt i32 %sub75, 1
  br i1 %cmp90, label %if.end66.cleanup142_crit_edge, label %while.cond94.preheader

if.end66.cleanup142_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup142

while.cond94.preheader:                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_cmp4(i32 %sub75, i32 %threshold.0308)
  %cmp95296 = icmp slt i32 %sub75, %threshold.0308
  br i1 %cmp95296, label %while.cond94.preheader.while.body97_crit_edge, label %while.cond94.preheader.cleanup.cont103_crit_edge

while.cond94.preheader.cleanup.cont103_crit_edge: ; preds = %while.cond94.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.cont103

while.cond94.preheader.while.body97_crit_edge:    ; preds = %while.cond94.preheader
  br label %while.body97

while.body97:                                     ; preds = %while.body97.while.body97_crit_edge, %while.cond94.preheader.while.body97_crit_edge
  %threshold.1298 = phi i32 [ %shr98, %while.body97.while.body97_crit_edge ], [ %threshold.0308, %while.cond94.preheader.while.body97_crit_edge ]
  %nbBits.1297 = phi i32 [ %dec, %while.body97.while.body97_crit_edge ], [ %nbBits.0305, %while.cond94.preheader.while.body97_crit_edge ]
  %dec = add i32 %nbBits.1297, -1
  %shr98 = ashr i32 %threshold.1298, 1
  %cmp95 = icmp slt i32 %sub75, %shr98
  br i1 %cmp95, label %while.body97.while.body97_crit_edge, label %while.body97.cleanup.cont103_crit_edge

while.body97.cleanup.cont103_crit_edge:           ; preds = %while.body97
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.cont103

while.body97.while.body97_crit_edge:              ; preds = %while.body97
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body97

cleanup.cont103:                                  ; preds = %while.body97.cleanup.cont103_crit_edge, %while.cond94.preheader.cleanup.cont103_crit_edge
  %nbBits.1.lcssa = phi i32 [ %nbBits.0305, %while.cond94.preheader.cleanup.cont103_crit_edge ], [ %dec, %while.body97.cleanup.cont103_crit_edge ]
  %threshold.1.lcssa = phi i32 [ %threshold.0308, %while.cond94.preheader.cleanup.cont103_crit_edge ], [ %shr98, %while.body97.cleanup.cont103_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub87)
  %cmp104 = icmp sgt i32 %sub87, 16
  br i1 %cmp104, label %if.then106, label %cleanup.cont103.if.end122_crit_edge

cleanup.cont103.if.end122_crit_edge:              ; preds = %cleanup.cont103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

if.then106:                                       ; preds = %cleanup.cont103
  %cmp110 = icmp ugt ptr %out.4, %add.ptr23
  %or.cond248 = select i1 %tobool22.not, i1 %cmp110, i1 false
  br i1 %or.cond248, label %if.then106.cleanup142_crit_edge, label %if.end113

if.then106.cleanup142_crit_edge:                  ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup142

if.end113:                                        ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #11
  %conv114 = trunc i32 %add83 to i8
  %10 = ptrtoint ptr %out.4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv114, ptr %out.4, align 1
  %shr116 = lshr i32 %add83, 8
  %conv117 = trunc i32 %shr116 to i8
  %arrayidx118 = getelementptr i8, ptr %out.4, i32 1
  %11 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv117, ptr %arrayidx118, align 1
  %add.ptr119 = getelementptr i8, ptr %out.4, i32 2
  %shr120 = lshr i32 %add83, 16
  %sub121 = add nsw i32 %sub87, -16
  br label %if.end122

if.end122:                                        ; preds = %if.end113, %cleanup.cont103.if.end122_crit_edge
  %out.5 = phi ptr [ %add.ptr119, %if.end113 ], [ %out.4, %cleanup.cont103.if.end122_crit_edge ]
  %bitStream.6 = phi i32 [ %shr120, %if.end113 ], [ %add83, %cleanup.cont103.if.end122_crit_edge ]
  %bitCount.5 = phi i32 [ %sub121, %if.end113 ], [ %sub87, %cleanup.cont103.if.end122_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %inc67, i32 %add)
  %cmp = icmp ult i32 %inc67, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub75)
  %cmp6 = icmp sgt i32 %sub75, 1
  %or.cond = select i1 %cmp, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.end122.while.body_crit_edge, label %if.end122.while.end123_crit_edge

if.end122.while.end123_crit_edge:                 ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end123

if.end122.while.body_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end123:                                     ; preds = %if.end122.while.end123_crit_edge, %while.end.while.end123_crit_edge, %while.body12.while.end123_crit_edge
  %out.0.lcssa = phi ptr [ %out.0304, %while.body12.while.end123_crit_edge ], [ %out.0304, %while.end.while.end123_crit_edge ], [ %out.5, %if.end122.while.end123_crit_edge ]
  %remaining.0.lcssa = phi i32 [ %remaining.0306, %while.body12.while.end123_crit_edge ], [ %remaining.0306, %while.end.while.end123_crit_edge ], [ %sub75, %if.end122.while.end123_crit_edge ]
  %bitStream.0.lcssa = phi i32 [ %bitStream.0309, %while.body12.while.end123_crit_edge ], [ %bitStream.0309, %while.end.while.end123_crit_edge ], [ %bitStream.6, %if.end122.while.end123_crit_edge ]
  %bitCount.0.lcssa = phi i32 [ %bitCount.0310, %while.body12.while.end123_crit_edge ], [ %bitCount.0310, %while.end.while.end123_crit_edge ], [ %bitCount.5, %if.end122.while.end123_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %remaining.0.lcssa)
  %cmp124.not = icmp eq i32 %remaining.0.lcssa, 1
  br i1 %cmp124.not, label %if.end127, label %while.end123.cleanup142_crit_edge

while.end123.cleanup142_crit_edge:                ; preds = %while.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup142

if.end127:                                        ; preds = %while.end123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %writeIsSafe)
  %tobool128.not = icmp eq i32 %writeIsSafe, 0
  %add.ptr130 = getelementptr i8, ptr %add.ptr, i32 -2
  %cmp131 = icmp ugt ptr %out.0.lcssa, %add.ptr130
  %or.cond249 = select i1 %tobool128.not, i1 %cmp131, i1 false
  br i1 %or.cond249, label %if.end127.cleanup142_crit_edge, label %if.end134

if.end127.cleanup142_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup142

if.end134:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  %conv135 = trunc i32 %bitStream.0.lcssa to i8
  %12 = ptrtoint ptr %out.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv135, ptr %out.0.lcssa, align 1
  %shr137 = lshr i32 %bitStream.0.lcssa, 8
  %conv138 = trunc i32 %shr137 to i8
  %arrayidx139 = getelementptr i8, ptr %out.0.lcssa, i32 1
  %13 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv138, ptr %arrayidx139, align 1
  %add140 = add i32 %bitCount.0.lcssa, 7
  %div = sdiv i32 %add140, 8
  %add.ptr141 = getelementptr i8, ptr %out.0.lcssa, i32 %div
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr141 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %header to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup142

cleanup142:                                       ; preds = %if.end134, %if.end127.cleanup142_crit_edge, %while.end123.cleanup142_crit_edge, %if.then106.cleanup142_crit_edge, %if.end66.cleanup142_crit_edge, %if.then49.cleanup142_crit_edge, %while.body18.cleanup142_crit_edge, %entry.cleanup142_crit_edge
  %retval.4 = phi i32 [ %sub.ptr.sub, %if.end134 ], [ -1, %while.end123.cleanup142_crit_edge ], [ -70, %if.end127.cleanup142_crit_edge ], [ -1, %entry.cleanup142_crit_edge ], [ -70, %while.body18.cleanup142_crit_edge ], [ -70, %if.then106.cleanup142_crit_edge ], [ -70, %if.then49.cleanup142_crit_edge ], [ -1, %if.end66.cleanup142_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local noalias ptr @FSE_createCTable(i32 noundef %maxSymbolValue, i32 noundef %tableLog) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @FSE_freeCTable(ptr nocapture noundef %ct) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @FSE_optimalTableLog_internal(i32 noundef %maxTableLog, i32 noundef %srcSize, i32 noundef %maxSymbolValue, i32 noundef %minus) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %srcSize, -1
  %0 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 false) #9, !range !13
  %xor.i = xor i32 %0, 31
  %sub1 = sub i32 %xor.i, %minus
  %1 = tail call i32 @llvm.ctlz.i32(i32 %srcSize, i1 false) #9, !range !13
  %xor.i.i = xor i32 %1, 31
  %add.i = add nuw nsw i32 %xor.i.i, 1
  %2 = tail call i32 @llvm.ctlz.i32(i32 %maxSymbolValue, i1 false) #9, !range !13
  %xor.i5.i = xor i32 %2, 31
  %add2.i = add nuw nsw i32 %xor.i5.i, 2
  %3 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %add2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxTableLog)
  %cmp = icmp eq i32 %maxTableLog, 0
  %spec.store.select = select i1 %cmp, i32 11, i32 %maxTableLog
  %4 = tail call i32 @llvm.umin.i32(i32 %sub1, i32 %spec.store.select)
  %5 = tail call i32 @llvm.umax.i32(i32 %3, i32 %4)
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 5)
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 12)
  ret i32 %7
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @FSE_optimalTableLog(i32 noundef %maxTableLog, i32 noundef %srcSize, i32 noundef %maxSymbolValue) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sub.i = add i32 %srcSize, -1
  %0 = tail call i32 @llvm.ctlz.i32(i32 %sub.i, i1 false) #9, !range !13
  %xor.i.i = xor i32 %0, 31
  %sub1.i = add nsw i32 %xor.i.i, -2
  %1 = tail call i32 @llvm.ctlz.i32(i32 %srcSize, i1 false) #9, !range !13
  %xor.i.i.i = xor i32 %1, 31
  %add.i.i = add nuw nsw i32 %xor.i.i.i, 1
  %2 = tail call i32 @llvm.ctlz.i32(i32 %maxSymbolValue, i1 false) #9, !range !13
  %xor.i5.i.i = xor i32 %2, 31
  %add2.i.i = add nuw nsw i32 %xor.i5.i.i, 2
  %3 = tail call i32 @llvm.umin.i32(i32 %add.i.i, i32 %add2.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxTableLog)
  %cmp.i = icmp eq i32 %maxTableLog, 0
  %spec.store.select.i = select i1 %cmp.i, i32 11, i32 %maxTableLog
  %4 = tail call i32 @llvm.umin.i32(i32 %sub1.i, i32 %spec.store.select.i) #9
  %5 = tail call i32 @llvm.umax.i32(i32 %3, i32 %4) #9
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 5) #9
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 12) #9
  ret i32 %7
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @FSE_normalizeCount(ptr nocapture noundef %normalizedCounter, i32 noundef %tableLog, ptr nocapture noundef readonly %count, i32 noundef %total, i32 noundef %maxSymbolValue, i32 noundef %useLowProbCount) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tableLog)
  %cmp = icmp eq i32 %tableLog, 0
  %spec.store.select = select i1 %cmp, i32 11, i32 %tableLog
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %spec.store.select)
  %cmp1 = icmp ult i32 %spec.store.select, 5
  br i1 %cmp1, label %entry.return_crit_edge, label %if.end3

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %spec.store.select)
  %cmp4 = icmp ugt i32 %spec.store.select, 12
  br i1 %cmp4, label %if.end3.return_crit_edge, label %if.end6

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end6:                                          ; preds = %if.end3
  %0 = tail call i32 @llvm.ctlz.i32(i32 %total, i1 false) #9, !range !13
  %xor.i.i = xor i32 %0, 31
  %add.i = add nuw nsw i32 %xor.i.i, 1
  %1 = tail call i32 @llvm.ctlz.i32(i32 %maxSymbolValue, i1 false) #9, !range !13
  %xor.i5.i = xor i32 %1, 31
  %add2.i = add nuw nsw i32 %xor.i5.i, 2
  %2 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %add2.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %2)
  %cmp7 = icmp ult i32 %spec.store.select, %2
  br i1 %cmp7, label %if.end6.return_crit_edge, label %if.end9

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %useLowProbCount)
  %tobool.not = icmp eq i32 %useLowProbCount, 0
  %conv = select i1 %tobool.not, i16 1, i16 -1
  %sub = sub nuw nsw i32 62, %spec.store.select
  %conv10 = zext i32 %sub to i64
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %total, i64 4611686018427387904) #12, !srcloc !14
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %3, 1
  %sub12 = add nsw i64 %conv10, -20
  %shl13 = shl nuw nsw i32 1, %spec.store.select
  %shr = lshr i32 %total, %spec.store.select
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9
  %largestP.0164 = phi i16 [ 0, %if.end9 ], [ %largestP.2, %for.inc.for.body_crit_edge ]
  %largest.0163 = phi i32 [ 0, %if.end9 ], [ %largest.2, %for.inc.for.body_crit_edge ]
  %s.0161 = phi i32 [ 0, %if.end9 ], [ %inc, %for.inc.for.body_crit_edge ]
  %stillToDistribute.0160 = phi i32 [ %shl13, %if.end9 ], [ %stillToDistribute.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %count, i32 %s.0161
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %total)
  %cmp16 = icmp eq i32 %5, %total
  br i1 %cmp16, label %for.body.return_crit_edge, label %if.end19

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end19:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp21 = icmp eq i32 %5, 0
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx24 = getelementptr i16, ptr %normalizedCounter, i32 %s.0161
  %6 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %arrayidx24, align 2
  br label %for.inc

if.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %shr)
  %cmp27.not = icmp ugt i32 %5, %shr
  br i1 %cmp27.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx30 = getelementptr i16, ptr %normalizedCounter, i32 %s.0161
  %7 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %arrayidx30, align 2
  %dec = add i32 %stillToDistribute.0160, -1
  br label %for.inc

if.else:                                          ; preds = %if.end25
  %conv32 = zext i32 %5 to i64
  %mul = mul i64 %asmresult1.i.i.i.i, %conv32
  %shr33 = lshr i64 %mul, %conv10
  %conv34 = trunc i64 %shr33 to i16
  %8 = trunc i64 %shr33 to i32
  %9 = and i32 %8, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp36 = icmp ult i32 %9, 8
  br i1 %cmp36, label %if.then38, label %if.else.if.end52_crit_edge

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx39 = getelementptr [8 x i32], ptr @FSE_normalizeCount.rtbTable, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx39, align 4
  %conv40 = zext i32 %11 to i64
  %mul41 = shl i64 %conv40, %sub12
  %12 = and i64 %shr33, 65535
  %shl46 = shl i64 %12, %conv10
  %sub47 = sub i64 %mul, %shl46
  call void @__sanitizer_cov_trace_cmp8(i64 %sub47, i64 %mul41)
  %cmp48 = icmp ugt i64 %sub47, %mul41
  %conv49 = zext i1 %cmp48 to i32
  %add = add i32 %conv49, %8
  %conv51 = trunc i32 %add to i16
  br label %if.end52

if.end52:                                         ; preds = %if.then38, %if.else.if.end52_crit_edge
  %proba.0 = phi i16 [ %conv51, %if.then38 ], [ %conv34, %if.else.if.end52_crit_edge ]
  %conv53 = sext i16 %proba.0 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %proba.0, i16 %largestP.0164)
  %cmp55 = icmp sgt i16 %proba.0, %largestP.0164
  %spec.select = select i1 %cmp55, i32 %s.0161, i32 %largest.0163
  %13 = tail call i16 @llvm.smax.i16(i16 %proba.0, i16 %largestP.0164)
  %arrayidx59 = getelementptr i16, ptr %normalizedCounter, i32 %s.0161
  %14 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %proba.0, ptr %arrayidx59, align 2
  %sub61 = sub i32 %stillToDistribute.0160, %conv53
  br label %for.inc

for.inc:                                          ; preds = %if.end52, %if.then29, %if.then23
  %stillToDistribute.1 = phi i32 [ %stillToDistribute.0160, %if.then23 ], [ %dec, %if.then29 ], [ %sub61, %if.end52 ]
  %largest.2 = phi i32 [ %largest.0163, %if.then23 ], [ %largest.0163, %if.then29 ], [ %spec.select, %if.end52 ]
  %largestP.2 = phi i16 [ %largestP.0164, %if.then23 ], [ %largestP.0164, %if.then29 ], [ %13, %if.end52 ]
  %inc = add i32 %s.0161, 1
  %cmp14.not = icmp ugt i32 %inc, %maxSymbolValue
  br i1 %cmp14.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %sub63 = sub i32 0, %stillToDistribute.1
  %arrayidx64 = getelementptr i16, ptr %normalizedCounter, i32 %largest.2
  %15 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx64, align 2
  %17 = ashr i16 %16, 1
  %shr66 = sext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr66, i32 %sub63)
  %cmp67.not = icmp sgt i32 %shr66, %sub63
  br i1 %cmp67.not, label %for.end.return.sink.split_crit_edge, label %if.then69

for.end.return.sink.split_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

if.then69:                                        ; preds = %for.end
  %mul.i = mul i32 %total, 3
  %add.i148 = add i32 %spec.store.select, 1
  %shr1.i = lshr i32 %mul.i, %add.i148
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then69
  %total.addr.0241.i = phi i32 [ %total, %if.then69 ], [ %total.addr.1.i, %for.inc.i.for.body.i_crit_edge ]
  %s.0239.i = phi i32 [ 0, %if.then69 ], [ %inc19.i, %for.inc.i.for.body.i_crit_edge ]
  %distributed.0238.i = phi i32 [ 0, %if.then69 ], [ %distributed.1.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %count, i32 %s.0239.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2.i = icmp eq i32 %19, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx3.i = getelementptr i16, ptr %normalizedCounter, i32 %s.0239.i
  %20 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %arrayidx3.i, align 2
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %shr)
  %cmp5.not.i = icmp ugt i32 %19, %shr
  br i1 %cmp5.not.i, label %if.end9.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx7.i = getelementptr i16, ptr %normalizedCounter, i32 %s.0239.i
  %21 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv, ptr %arrayidx7.i, align 2
  %inc.i = add i32 %distributed.0238.i, 1
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %sub.i = sub i32 %total.addr.0241.i, %23
  br label %for.inc.i

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %shr1.i)
  %cmp11.not.i = icmp ugt i32 %19, %shr1.i
  %arrayidx18.i = getelementptr i16, ptr %normalizedCounter, i32 %s.0239.i
  br i1 %cmp11.not.i, label %if.end17.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %arrayidx18.i, align 2
  %inc14.i = add i32 %distributed.0238.i, 1
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %sub16.i = sub i32 %total.addr.0241.i, %26
  br label %for.inc.i

if.end17.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -2, ptr %arrayidx18.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end17.i, %if.then12.i, %if.then6.i, %if.then.i
  %distributed.1.i = phi i32 [ %distributed.0238.i, %if.then.i ], [ %inc.i, %if.then6.i ], [ %inc14.i, %if.then12.i ], [ %distributed.0238.i, %if.end17.i ]
  %total.addr.1.i = phi i32 [ %total.addr.0241.i, %if.then.i ], [ %sub.i, %if.then6.i ], [ %sub16.i, %if.then12.i ], [ %total.addr.0241.i, %if.end17.i ]
  %inc19.i = add i32 %s.0239.i, 1
  %cmp.not.i = icmp ugt i32 %inc19.i, %maxSymbolValue
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %sub20.i = sub i32 %shl13, %distributed.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub20.i)
  %cmp21.i = icmp eq i32 %sub20.i, 0
  br i1 %cmp21.i, label %for.end.i.return_crit_edge, label %if.end23.i

for.end.i.return_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end23.i:                                       ; preds = %for.end.i
  %div.i = udiv i32 %total.addr.1.i, %sub20.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %shr1.i)
  %cmp24.i = icmp ugt i32 %div.i, %shr1.i
  br i1 %cmp24.i, label %if.then25.i, label %if.end23.i.if.end49.i_crit_edge

if.end23.i.if.end49.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.then25.i:                                      ; preds = %if.end23.i
  %mul26.i = mul i32 %total.addr.1.i, 3
  %mul27.i = shl i32 %sub20.i, 1
  %div28.i = udiv i32 %mul26.i, %mul27.i
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.inc44.i.for.body31.i_crit_edge, %if.then25.i
  %total.addr.2245.i = phi i32 [ %total.addr.1.i, %if.then25.i ], [ %total.addr.3.i, %for.inc44.i.for.body31.i_crit_edge ]
  %s.1243.i = phi i32 [ 0, %if.then25.i ], [ %inc45.i, %for.inc44.i.for.body31.i_crit_edge ]
  %distributed.2242.i = phi i32 [ %distributed.1.i, %if.then25.i ], [ %distributed.3.i, %for.inc44.i.for.body31.i_crit_edge ]
  %arrayidx32.i = getelementptr i16, ptr %normalizedCounter, i32 %s.1243.i
  %28 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx32.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %29)
  %cmp33.i = icmp eq i16 %29, -2
  br i1 %cmp33.i, label %land.lhs.true.i, label %for.body31.i.for.inc44.i_crit_edge

for.body31.i.for.inc44.i_crit_edge:               ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc44.i

land.lhs.true.i:                                  ; preds = %for.body31.i
  %arrayidx35.i = getelementptr i32, ptr %count, i32 %s.1243.i
  %30 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx35.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %div28.i)
  %cmp36.not.i = icmp ugt i32 %31, %div28.i
  br i1 %cmp36.not.i, label %land.lhs.true.i.for.inc44.i_crit_edge, label %if.then38.i

land.lhs.true.i.for.inc44.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc44.i

if.then38.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %arrayidx32.i, align 2
  %inc40.i = add i32 %distributed.2242.i, 1
  %33 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx35.i, align 4
  %sub42.i = sub i32 %total.addr.2245.i, %34
  br label %for.inc44.i

for.inc44.i:                                      ; preds = %if.then38.i, %land.lhs.true.i.for.inc44.i_crit_edge, %for.body31.i.for.inc44.i_crit_edge
  %distributed.3.i = phi i32 [ %inc40.i, %if.then38.i ], [ %distributed.2242.i, %land.lhs.true.i.for.inc44.i_crit_edge ], [ %distributed.2242.i, %for.body31.i.for.inc44.i_crit_edge ]
  %total.addr.3.i = phi i32 [ %sub42.i, %if.then38.i ], [ %total.addr.2245.i, %land.lhs.true.i.for.inc44.i_crit_edge ], [ %total.addr.2245.i, %for.body31.i.for.inc44.i_crit_edge ]
  %inc45.i = add i32 %s.1243.i, 1
  %cmp30.not.i = icmp ugt i32 %inc45.i, %maxSymbolValue
  br i1 %cmp30.not.i, label %for.end46.i, label %for.inc44.i.for.body31.i_crit_edge

for.inc44.i.for.body31.i_crit_edge:               ; preds = %for.inc44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body31.i

for.end46.i:                                      ; preds = %for.inc44.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub48.i = sub i32 %shl13, %distributed.3.i
  br label %if.end49.i

if.end49.i:                                       ; preds = %for.end46.i, %if.end23.i.if.end49.i_crit_edge
  %distributed.4.i = phi i32 [ %distributed.3.i, %for.end46.i ], [ %distributed.1.i, %if.end23.i.if.end49.i_crit_edge ]
  %ToDistribute.0.i = phi i32 [ %sub48.i, %for.end46.i ], [ %sub20.i, %if.end23.i.if.end49.i_crit_edge ]
  %total.addr.4.i = phi i32 [ %total.addr.3.i, %for.end46.i ], [ %total.addr.1.i, %if.end23.i.if.end49.i_crit_edge ]
  %add50.i = add nuw i32 %maxSymbolValue, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %distributed.4.i, i32 %add50.i)
  %cmp51.i = icmp eq i32 %distributed.4.i, %add50.i
  br i1 %cmp51.i, label %if.end49.i.for.body57.i_crit_edge, label %if.end73.i

if.end49.i.for.body57.i_crit_edge:                ; preds = %if.end49.i
  br label %for.body57.i

for.body57.i:                                     ; preds = %for.body57.i.for.body57.i_crit_edge, %if.end49.i.for.body57.i_crit_edge
  %s.2255.i = phi i32 [ %inc65.i, %for.body57.i.for.body57.i_crit_edge ], [ 0, %if.end49.i.for.body57.i_crit_edge ]
  %maxC.0254.i = phi i32 [ %37, %for.body57.i.for.body57.i_crit_edge ], [ 0, %if.end49.i.for.body57.i_crit_edge ]
  %maxV.0253.i = phi i32 [ %spec.select.i, %for.body57.i.for.body57.i_crit_edge ], [ 0, %if.end49.i.for.body57.i_crit_edge ]
  %arrayidx58.i = getelementptr i32, ptr %count, i32 %s.2255.i
  %35 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx58.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %maxC.0254.i)
  %cmp59.i = icmp ugt i32 %36, %maxC.0254.i
  %spec.select.i = select i1 %cmp59.i, i32 %s.2255.i, i32 %maxV.0253.i
  %37 = tail call i32 @llvm.umax.i32(i32 %36, i32 %maxC.0254.i) #9
  %inc65.i = add i32 %s.2255.i, 1
  %cmp55.not.i = icmp ugt i32 %inc65.i, %maxSymbolValue
  br i1 %cmp55.not.i, label %for.end66.i, label %for.body57.i.for.body57.i_crit_edge

for.body57.i.for.body57.i_crit_edge:              ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body57.i

for.end66.i:                                      ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx69.i = getelementptr i16, ptr %normalizedCounter, i32 %spec.select.i
  %38 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx69.i, align 2
  br label %return.sink.split

if.end73.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total.addr.4.i)
  %cmp74.i = icmp eq i32 %total.addr.4.i, 0
  br i1 %cmp74.i, label %for.cond77.preheader.i, label %if.end93.i

for.cond77.preheader.i:                           ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ToDistribute.0.i)
  %cmp78.not250.i = icmp eq i32 %ToDistribute.0.i, 0
  br i1 %cmp78.not250.i, label %for.cond77.preheader.i.return_crit_edge, label %for.cond77.preheader.i.for.body80.i_crit_edge

for.cond77.preheader.i.for.body80.i_crit_edge:    ; preds = %for.cond77.preheader.i
  br label %for.body80.i

for.cond77.preheader.i.return_crit_edge:          ; preds = %for.cond77.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

for.body80.i:                                     ; preds = %for.inc89.i.for.body80.i_crit_edge, %for.cond77.preheader.i.for.body80.i_crit_edge
  %s.3252.i = phi i32 [ %rem.i, %for.inc89.i.for.body80.i_crit_edge ], [ 0, %for.cond77.preheader.i.for.body80.i_crit_edge ]
  %ToDistribute.1251.i = phi i32 [ %ToDistribute.2.i, %for.inc89.i.for.body80.i_crit_edge ], [ %ToDistribute.0.i, %for.cond77.preheader.i.for.body80.i_crit_edge ]
  %arrayidx81.i = getelementptr i16, ptr %normalizedCounter, i32 %s.3252.i
  %40 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx81.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp83.i = icmp sgt i16 %41, 0
  br i1 %cmp83.i, label %if.then85.i, label %for.body80.i.for.inc89.i_crit_edge

for.body80.i.for.inc89.i_crit_edge:               ; preds = %for.body80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc89.i

if.then85.i:                                      ; preds = %for.body80.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i = add i32 %ToDistribute.1251.i, -1
  %inc87.i = add nuw i16 %41, 1
  %42 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %inc87.i, ptr %arrayidx81.i, align 2
  br label %for.inc89.i

for.inc89.i:                                      ; preds = %if.then85.i, %for.body80.i.for.inc89.i_crit_edge
  %ToDistribute.2.i = phi i32 [ %dec.i, %if.then85.i ], [ %ToDistribute.1251.i, %for.body80.i.for.inc89.i_crit_edge ]
  %add90.i = add i32 %s.3252.i, 1
  %rem.i = urem i32 %add90.i, %add50.i
  %cmp78.not.i = icmp eq i32 %ToDistribute.2.i, 0
  br i1 %cmp78.not.i, label %for.inc89.i.return_crit_edge, label %for.inc89.i.for.body80.i_crit_edge

for.inc89.i.for.body80.i_crit_edge:               ; preds = %for.inc89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body80.i

for.inc89.i.return_crit_edge:                     ; preds = %for.inc89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end93.i:                                       ; preds = %if.end73.i
  %sub96.i = add nsw i64 %conv10, -1
  %notmask.i = shl nsw i64 -1, %sub96.i
  %sub98.i = xor i64 %notmask.i, -1
  %conv100.i = zext i32 %ToDistribute.0.i to i64
  %mul101.i = shl i64 %conv100.i, %conv10
  %add102.i = add i64 %mul101.i, %sub98.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add102.i)
  %cmp164.i.i.i.i = icmp ult i64 %add102.i, 4294967296
  br i1 %cmp164.i.i.i.i, label %if.then168.i.i.i.i, label %if.else174.i.i.i.i, !prof !15

if.then168.i.i.i.i:                               ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i.i.i.i = trunc i64 %add102.i to i32
  %div172.i.i.i.i = udiv i32 %conv169.i.i.i.i, %total.addr.4.i
  %conv173.i.i.i.i = zext i32 %div172.i.i.i.i to i64
  br label %ZSTD_div64.exit.i

if.else174.i.i.i.i:                               ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %total.addr.4.i, i64 %add102.i) #12, !srcloc !14
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %43, 1
  br label %ZSTD_div64.exit.i

ZSTD_div64.exit.i:                                ; preds = %if.else174.i.i.i.i, %if.then168.i.i.i.i
  %dividend.addr.0.i.i.i.i = phi i64 [ %conv173.i.i.i.i, %if.then168.i.i.i.i ], [ %asmresult1.i.i.i.i.i, %if.else174.i.i.i.i ]
  br label %for.body106.i

for.body106.i:                                    ; preds = %for.inc131.i.for.body106.i_crit_edge, %ZSTD_div64.exit.i
  %tmpTotal.0248.i = phi i64 [ %sub98.i, %ZSTD_div64.exit.i ], [ %tmpTotal.2.i, %for.inc131.i.for.body106.i_crit_edge ]
  %s.4246.i = phi i32 [ 0, %ZSTD_div64.exit.i ], [ %inc132.i, %for.inc131.i.for.body106.i_crit_edge ]
  %arrayidx107.i = getelementptr i16, ptr %normalizedCounter, i32 %s.4246.i
  %44 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx107.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %45)
  %cmp109.i = icmp eq i16 %45, -2
  br i1 %cmp109.i, label %if.then111.i, label %for.body106.i.for.inc131.i_crit_edge

for.body106.i.for.inc131.i_crit_edge:             ; preds = %for.body106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc131.i

if.then111.i:                                     ; preds = %for.body106.i
  %arrayidx112.i = getelementptr i32, ptr %count, i32 %s.4246.i
  %46 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx112.i, align 4
  %conv113.i = zext i32 %47 to i64
  %mul114.i = mul i64 %dividend.addr.0.i.i.i.i, %conv113.i
  %add115.i = add i64 %mul114.i, %tmpTotal.0248.i
  %shr116.i = lshr i64 %tmpTotal.0248.i, %conv10
  %conv117.i = trunc i64 %shr116.i to i32
  %shr118.i = lshr i64 %add115.i, %conv10
  %conv119.i = trunc i64 %shr118.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv119.i, i32 %conv117.i)
  %cmp121.i = icmp eq i32 %conv119.i, %conv117.i
  br i1 %cmp121.i, label %if.then111.i.return_crit_edge, label %cleanup.i

if.then111.i.return_crit_edge:                    ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

cleanup.i:                                        ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub120.i = sub i32 %conv119.i, %conv117.i
  %conv125.i = trunc i32 %sub120.i to i16
  %48 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv125.i, ptr %arrayidx107.i, align 2
  br label %for.inc131.i

for.inc131.i:                                     ; preds = %cleanup.i, %for.body106.i.for.inc131.i_crit_edge
  %tmpTotal.2.i = phi i64 [ %add115.i, %cleanup.i ], [ %tmpTotal.0248.i, %for.body106.i.for.inc131.i_crit_edge ]
  %inc132.i = add i32 %s.4246.i, 1
  %cmp104.not.i = icmp ugt i32 %inc132.i, %maxSymbolValue
  br i1 %cmp104.not.i, label %for.inc131.i.return_crit_edge, label %for.inc131.i.for.body106.i_crit_edge

for.inc131.i.for.body106.i_crit_edge:             ; preds = %for.inc131.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body106.i

for.inc131.i.return_crit_edge:                    ; preds = %for.inc131.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return.sink.split:                                ; preds = %for.end66.i, %for.end.return.sink.split_crit_edge
  %ToDistribute.0.i.sink = phi i32 [ %ToDistribute.0.i, %for.end66.i ], [ %stillToDistribute.1, %for.end.return.sink.split_crit_edge ]
  %.sink = phi i16 [ %39, %for.end66.i ], [ %16, %for.end.return.sink.split_crit_edge ]
  %arrayidx69.i.sink = phi ptr [ %arrayidx69.i, %for.end66.i ], [ %arrayidx64, %for.end.return.sink.split_crit_edge ]
  %49 = trunc i32 %ToDistribute.0.i.sink to i16
  %conv72.i = add i16 %.sink, %49
  %50 = ptrtoint ptr %arrayidx69.i.sink to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv72.i, ptr %arrayidx69.i.sink, align 2
  br label %return

return:                                           ; preds = %return.sink.split, %for.inc131.i.return_crit_edge, %if.then111.i.return_crit_edge, %for.inc89.i.return_crit_edge, %for.cond77.preheader.i.return_crit_edge, %for.end.i.return_crit_edge, %for.body.return_crit_edge, %if.end6.return_crit_edge, %if.end3.return_crit_edge, %entry.return_crit_edge
  %retval.3 = phi i32 [ -1, %entry.return_crit_edge ], [ -44, %if.end3.return_crit_edge ], [ -1, %if.end6.return_crit_edge ], [ %spec.store.select, %for.end.i.return_crit_edge ], [ %spec.store.select, %for.cond77.preheader.i.return_crit_edge ], [ %spec.store.select, %return.sink.split ], [ %spec.store.select, %for.inc89.i.return_crit_edge ], [ -1, %if.then111.i.return_crit_edge ], [ %spec.store.select, %for.inc131.i.return_crit_edge ], [ 0, %for.body.return_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local i32 @FSE_buildCTable_raw(ptr nocapture noundef writeonly %ct, i32 noundef %nbBits) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %nbBits
  %sub = add i32 %shl, -1
  %add.ptr = getelementptr i16, ptr %ct, i32 2
  %shr = lshr i32 %shl, 1
  %add.ptr2 = getelementptr i32, ptr %add.ptr, i32 %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbBits)
  %cmp = icmp eq i32 %nbBits, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %nbBits to i16
  %0 = ptrtoint ptr %ct to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %ct, align 2
  %conv3 = trunc i32 %sub to i16
  %arrayidx4 = getelementptr i16, ptr %ct, i32 1
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv3, ptr %arrayidx4, align 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %s.050 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add i32 %s.050, %shl
  %conv7 = trunc i32 %add to i16
  %arrayidx8 = getelementptr i16, ptr %add.ptr, i32 %s.050
  %2 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv7, ptr %arrayidx8, align 2
  %inc = add nuw i32 %s.050, 1
  %exitcond.not = icmp eq i32 %inc, %shl
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %shl9 = shl i32 %nbBits, 16
  %sub11 = sub i32 %shl9, %shl
  br label %for.body15

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.end
  %s.151 = phi i32 [ 0, %for.end ], [ %inc21, %for.body15.for.body15_crit_edge ]
  %arrayidx16 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %add.ptr2, i32 %s.151
  %deltaNbBits17 = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %arrayidx16, i32 0, i32 1
  %3 = ptrtoint ptr %deltaNbBits17 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub11, ptr %deltaNbBits17, align 4
  %sub18 = add i32 %s.151, -1
  %4 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub18, ptr %arrayidx16, align 4
  %inc21 = add i32 %s.151, 1
  %cmp13.not = icmp ugt i32 %inc21, %sub
  br i1 %cmp13.not, label %for.body15.cleanup_crit_edge, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15

for.body15.cleanup_crit_edge:                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %for.body15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @FSE_buildCTable_rle(ptr nocapture noundef writeonly %ct, i8 noundef zeroext %symbolValue) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i16, ptr %ct, i32 2
  %add.ptr1 = getelementptr i32, ptr %ct, i32 2
  %0 = ptrtoint ptr %ct to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %ct, align 2
  %conv = zext i8 %symbolValue to i16
  %arrayidx2 = getelementptr i16, ptr %ct, i32 1
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %arrayidx2, align 2
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %add.ptr, align 2
  %arrayidx4 = getelementptr i16, ptr %ct, i32 3
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %arrayidx4, align 2
  %idxprom = zext i8 %symbolValue to i32
  %arrayidx5 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %add.ptr1, i32 %idxprom
  %deltaNbBits = getelementptr inbounds %struct.FSE_symbolCompressionTransform, ptr %arrayidx5, i32 0, i32 1
  %4 = ptrtoint ptr %deltaNbBits to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %deltaNbBits, align 4
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx5, align 4
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @FSE_compress_usingCTable(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %src, i32 noundef %srcSize, ptr noundef %ct) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %srcSize, 7
  %add = add i32 %srcSize, 8
  %add2 = add i32 %add, %shr
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %dstSize)
  %cmp.not = icmp ule i32 %add2, %dstSize
  %. = zext i1 %cmp.not to i32
  %call3 = tail call fastcc i32 @FSE_compress_usingCTable_generic(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %src, i32 noundef %srcSize, ptr noundef %ct, i32 noundef %.)
  ret i32 %call3
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @FSE_compress_usingCTable_generic(ptr noundef %dst, i32 noundef %dstSize, ptr noundef readonly %src, i32 noundef %srcSize, ptr noundef %ct, i32 noundef %fast) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %src, i32 %srcSize
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %srcSize)
  %cmp = icmp ult i32 %srcSize, 3
  br i1 %cmp, label %entry.cleanup27_crit_edge, label %if.end

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dst, i32 %dstSize
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dstSize)
  %cmp.i = icmp ugt i32 %dstSize, 4
  br i1 %cmp.i, label %cleanup.cont, label %if.end.cleanup27_crit_edge

if.end.cleanup27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

cleanup.cont:                                     ; preds = %if.end
  %and = and i32 %srcSize, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %incdec.ptr11 = getelementptr i8, ptr %add.ptr, i32 -1
  %0 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %incdec.ptr11, align 1
  %conv12 = zext i8 %1 to i32
  %2 = ptrtoint ptr %ct to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %ct, align 1
  %conv.i.i95 = zext i16 %3 to i32
  %add.ptr.i.i97 = getelementptr i16, ptr %ct, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i.i99 = icmp eq i16 %3, 0
  %sub.i.i100 = add nsw i32 %conv.i.i95, -1
  %shl2.i.i101 = shl nuw i32 1, %sub.i.i100
  %cond.i.i102 = select i1 %tobool.not.i.i99, i32 1, i32 %shl2.i.i101
  %add.ptr3.i.i103 = getelementptr i32, ptr %add.ptr.i.i97, i32 %cond.i.i102
  %arrayidx.i106 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %add.ptr3.i.i103, i32 %conv12
  %4 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_load4_noabort(i32 %4)
  %symbolTT.sroa.0.0.copyload.i107 = load i32, ptr %arrayidx.i106, align 4
  %symbolTT.sroa.5.0.arrayidx.sroa_idx.i108 = getelementptr inbounds i8, ptr %arrayidx.i106, i32 4
  %5 = ptrtoint ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i108 to i32
  call void @__asan_load4_noabort(i32 %5)
  %symbolTT.sroa.5.0.copyload.i109 = load i32, ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i108, align 4
  %add.i110 = add i32 %symbolTT.sroa.5.0.copyload.i109, 32768
  %shr.i111 = lshr i32 %add.i110, 16
  %shl.i112 = and i32 %add.i110, -65536
  %sub.i113 = sub i32 %shl.i112, %symbolTT.sroa.5.0.copyload.i109
  %shr5.i114 = ashr i32 %sub.i113, %shr.i111
  %add6.i115 = add i32 %shr5.i114, %symbolTT.sroa.0.0.copyload.i107
  %arrayidx7.i116 = getelementptr i16, ptr %add.ptr.i.i97, i32 %add6.i115
  %6 = ptrtoint ptr %arrayidx7.i116 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx7.i116, align 2
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %cleanup.cont
  %conv.i48 = zext i16 %7 to i32
  %incdec.ptr6 = getelementptr i8, ptr %incdec.ptr11, i32 -1
  %8 = ptrtoint ptr %incdec.ptr6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr6, align 1
  %conv7 = zext i8 %9 to i32
  %arrayidx.i60 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %add.ptr3.i.i103, i32 %conv7
  %10 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %10)
  %symbolTT.sroa.0.0.copyload.i61 = load i32, ptr %arrayidx.i60, align 4
  %symbolTT.sroa.5.0.arrayidx.sroa_idx.i62 = getelementptr inbounds i8, ptr %arrayidx.i60, i32 4
  %11 = ptrtoint ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i62 to i32
  call void @__asan_load4_noabort(i32 %11)
  %symbolTT.sroa.5.0.copyload.i63 = load i32, ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i62, align 4
  %add.i64 = add i32 %symbolTT.sroa.5.0.copyload.i63, 32768
  %shr.i65 = lshr i32 %add.i64, 16
  %shl.i66 = and i32 %add.i64, -65536
  %sub.i67 = sub i32 %shl.i66, %symbolTT.sroa.5.0.copyload.i63
  %shr5.i68 = ashr i32 %sub.i67, %shr.i65
  %add6.i69 = add i32 %shr5.i68, %symbolTT.sroa.0.0.copyload.i61
  %arrayidx7.i70 = getelementptr i16, ptr %add.ptr.i.i97, i32 %add6.i69
  %12 = ptrtoint ptr %arrayidx7.i70 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx7.i70, align 2
  %incdec.ptr8 = getelementptr i8, ptr %incdec.ptr6, i32 -1
  %14 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %incdec.ptr8, align 1
  %conv9 = zext i8 %15 to i32
  %arrayidx.i72 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %add.ptr3.i.i103, i32 %conv9
  %16 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_load4_noabort(i32 %16)
  %symbolTT.sroa.0.0.copyload.i73 = load i32, ptr %arrayidx.i72, align 4
  %symbolTT.sroa.5.0.arrayidx.sroa_idx.i74 = getelementptr inbounds i8, ptr %arrayidx.i72, i32 4
  %17 = ptrtoint ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i74 to i32
  call void @__asan_load4_noabort(i32 %17)
  %symbolTT.sroa.5.0.copyload.i75 = load i32, ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i74, align 4
  %add.i76 = add i32 %symbolTT.sroa.5.0.copyload.i75, %conv.i48
  %shr.i77 = lshr i32 %add.i76, 16
  %arrayidx.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %shr.i77
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %19, %conv.i48
  %shr5.i79291 = lshr i32 %conv.i48, %shr.i77
  %add6.i80 = add i32 %shr5.i79291, %symbolTT.sroa.0.0.copyload.i73
  %arrayidx7.i81 = getelementptr i16, ptr %add.ptr.i.i97, i32 %add6.i80
  %20 = ptrtoint ptr %arrayidx7.i81 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx7.i81, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fast)
  %tobool10.not = icmp eq i32 %fast, 0
  %shr.i88 = lshr i32 %add.i76, 19
  %22 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #9
  %23 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %dst, align 1
  %add.ptr.i90 = getelementptr i8, ptr %dst, i32 %shr.i88
  br i1 %tobool10.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i32 %shr.i77, 7
  %mul.i = and i32 %shr.i77, 65528
  %shr4.i = lshr i32 %and.i.i, %mul.i
  br label %if.end15

cond.false:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %cmp.i92 = icmp ugt ptr %add.ptr.i90, %add.ptr4.i
  %spec.store.select.i = select i1 %cmp.i92, ptr %add.ptr4.i, ptr %add.ptr.i90
  %and.i93 = and i32 %shr.i77, 7
  %mul.i94 = and i32 %shr.i77, 65528
  %shr7.i = lshr i32 %and.i.i, %mul.i94
  br label %if.end15

if.else:                                          ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr13 = getelementptr i8, ptr %incdec.ptr11, i32 -1
  %24 = ptrtoint ptr %incdec.ptr13 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr13, align 1
  %conv14 = zext i8 %25 to i32
  %arrayidx.i129 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %add.ptr3.i.i103, i32 %conv14
  %26 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_load4_noabort(i32 %26)
  %symbolTT.sroa.0.0.copyload.i130 = load i32, ptr %arrayidx.i129, align 4
  %symbolTT.sroa.5.0.arrayidx.sroa_idx.i131 = getelementptr inbounds i8, ptr %arrayidx.i129, i32 4
  %27 = ptrtoint ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i131 to i32
  call void @__asan_load4_noabort(i32 %27)
  %symbolTT.sroa.5.0.copyload.i132 = load i32, ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i131, align 4
  %add.i133 = add i32 %symbolTT.sroa.5.0.copyload.i132, 32768
  %shr.i134 = lshr i32 %add.i133, 16
  %shl.i135 = and i32 %add.i133, -65536
  %sub.i136 = sub i32 %shl.i135, %symbolTT.sroa.5.0.copyload.i132
  %shr5.i137 = ashr i32 %sub.i136, %shr.i134
  %add6.i138 = add i32 %shr5.i137, %symbolTT.sroa.0.0.copyload.i130
  %arrayidx7.i139 = getelementptr i16, ptr %add.ptr.i.i97, i32 %add6.i138
  %28 = ptrtoint ptr %arrayidx7.i139 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx7.i139, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.else, %cond.false, %cond.true
  %bitC.sroa.69.0 = phi ptr [ %dst, %if.else ], [ %spec.store.select.i, %cond.false ], [ %add.ptr.i90, %cond.true ]
  %bitC.sroa.34.0 = phi i32 [ 0, %if.else ], [ %and.i93, %cond.false ], [ %and.i, %cond.true ]
  %bitC.sroa.0.0 = phi i32 [ 0, %if.else ], [ %shr7.i, %cond.false ], [ %shr4.i, %cond.true ]
  %CState1.sroa.0.0.in = phi i16 [ %29, %if.else ], [ %21, %cond.false ], [ %21, %cond.true ]
  %CState2.sroa.0.0.in = phi i16 [ %7, %if.else ], [ %13, %cond.false ], [ %13, %cond.true ]
  %ip.0 = phi ptr [ %incdec.ptr13, %if.else ], [ %incdec.ptr8, %cond.false ], [ %incdec.ptr8, %cond.true ]
  %CState2.sroa.0.1292 = zext i16 %CState2.sroa.0.0.in to i32
  %CState1.sroa.0.1293 = zext i16 %CState1.sroa.0.0.in to i32
  %cmp16294 = icmp ugt ptr %ip.0, %src
  br i1 %cmp16294, label %while.body.lr.ph, label %if.end15.while.end_crit_edge

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end15
  %30 = getelementptr i16, ptr %ct, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fast)
  %tobool22.not = icmp eq i32 %fast, 0
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %CState1.sroa.0.1300 = phi i32 [ %CState1.sroa.0.1293, %while.body.lr.ph ], [ %CState1.sroa.0.1, %while.body.while.body_crit_edge ]
  %CState2.sroa.0.1299 = phi i32 [ %CState2.sroa.0.1292, %while.body.lr.ph ], [ %CState2.sroa.0.1, %while.body.while.body_crit_edge ]
  %ip.1298 = phi ptr [ %ip.0, %while.body.lr.ph ], [ %incdec.ptr20, %while.body.while.body_crit_edge ]
  %bitC.sroa.0.1297 = phi i32 [ %bitC.sroa.0.0, %while.body.lr.ph ], [ %bitC.sroa.0.2, %while.body.while.body_crit_edge ]
  %bitC.sroa.34.1296 = phi i32 [ %bitC.sroa.34.0, %while.body.lr.ph ], [ %bitC.sroa.34.2, %while.body.while.body_crit_edge ]
  %bitC.sroa.69.1295 = phi ptr [ %bitC.sroa.69.0, %while.body.lr.ph ], [ %bitC.sroa.69.2, %while.body.while.body_crit_edge ]
  %incdec.ptr18 = getelementptr i8, ptr %ip.1298, i32 -1
  %31 = ptrtoint ptr %incdec.ptr18 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr18, align 1
  %conv19 = zext i8 %32 to i32
  %arrayidx.i142 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %add.ptr3.i.i103, i32 %conv19
  %33 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_load4_noabort(i32 %33)
  %symbolTT.sroa.0.0.copyload.i143 = load i32, ptr %arrayidx.i142, align 4
  %symbolTT.sroa.5.0.arrayidx.sroa_idx.i144 = getelementptr inbounds i8, ptr %arrayidx.i142, i32 4
  %34 = ptrtoint ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i144 to i32
  call void @__asan_load4_noabort(i32 %34)
  %symbolTT.sroa.5.0.copyload.i145 = load i32, ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i144, align 4
  %add.i147 = add i32 %symbolTT.sroa.5.0.copyload.i145, %CState2.sroa.0.1299
  %shr.i148 = lshr i32 %add.i147, 16
  %arrayidx.i.i149 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %shr.i148
  %35 = ptrtoint ptr %arrayidx.i.i149 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i149, align 4
  %and.i.i150 = and i32 %36, %CState2.sroa.0.1299
  %shl.i.i152 = shl nuw nsw i32 %and.i.i150, %bitC.sroa.34.1296
  %or.i.i153 = or i32 %shl.i.i152, %bitC.sroa.0.1297
  %add.i.i154 = add nuw nsw i32 %shr.i148, %bitC.sroa.34.1296
  %shr5.i155289 = lshr i32 %CState2.sroa.0.1299, %shr.i148
  %add6.i156 = add i32 %shr5.i155289, %symbolTT.sroa.0.0.copyload.i143
  %arrayidx7.i157 = getelementptr i16, ptr %30, i32 %add6.i156
  %37 = ptrtoint ptr %arrayidx7.i157 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx7.i157, align 2
  %incdec.ptr20 = getelementptr i8, ptr %ip.1298, i32 -2
  %39 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %incdec.ptr20, align 1
  %conv21 = zext i8 %40 to i32
  %arrayidx.i160 = getelementptr %struct.FSE_symbolCompressionTransform, ptr %add.ptr3.i.i103, i32 %conv21
  %41 = ptrtoint ptr %arrayidx.i160 to i32
  call void @__asan_load4_noabort(i32 %41)
  %symbolTT.sroa.0.0.copyload.i161 = load i32, ptr %arrayidx.i160, align 4
  %symbolTT.sroa.5.0.arrayidx.sroa_idx.i162 = getelementptr inbounds i8, ptr %arrayidx.i160, i32 4
  %42 = ptrtoint ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i162 to i32
  call void @__asan_load4_noabort(i32 %42)
  %symbolTT.sroa.5.0.copyload.i163 = load i32, ptr %symbolTT.sroa.5.0.arrayidx.sroa_idx.i162, align 4
  %add.i165 = add i32 %symbolTT.sroa.5.0.copyload.i163, %CState1.sroa.0.1300
  %shr.i166 = lshr i32 %add.i165, 16
  %arrayidx.i.i167 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %shr.i166
  %43 = ptrtoint ptr %arrayidx.i.i167 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i167, align 4
  %and.i.i168 = and i32 %44, %CState1.sroa.0.1300
  %shl.i.i170 = shl i32 %and.i.i168, %add.i.i154
  %or.i.i171 = or i32 %or.i.i153, %shl.i.i170
  %add.i.i172 = add nuw nsw i32 %shr.i166, %add.i.i154
  %shr5.i173290 = lshr i32 %CState1.sroa.0.1300, %shr.i166
  %add6.i174 = add i32 %shr5.i173290, %symbolTT.sroa.0.0.copyload.i161
  %arrayidx7.i175 = getelementptr i16, ptr %30, i32 %add6.i174
  %45 = ptrtoint ptr %arrayidx7.i175 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx7.i175, align 2
  %shr.i185 = lshr i32 %add.i.i172, 3
  %47 = tail call i32 @llvm.bswap.i32(i32 %or.i.i171) #9
  %48 = ptrtoint ptr %bitC.sroa.69.1295 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %47, ptr %bitC.sroa.69.1295, align 1
  %add.ptr.i187 = getelementptr i8, ptr %bitC.sroa.69.1295, i32 %shr.i185
  %cmp.i189 = icmp ugt ptr %add.ptr.i187, %add.ptr4.i
  %49 = select i1 %tobool22.not, i1 %cmp.i189, i1 false
  %bitC.sroa.69.2 = select i1 %49, ptr %add.ptr4.i, ptr %add.ptr.i187
  %mul.i192.pn = and i32 %add.i.i172, -8
  %bitC.sroa.0.2 = lshr i32 %or.i.i171, %mul.i192.pn
  %bitC.sroa.34.2 = and i32 %add.i.i172, 7
  %CState2.sroa.0.1 = zext i16 %38 to i32
  %CState1.sroa.0.1 = zext i16 %46 to i32
  %cmp16 = icmp ugt ptr %incdec.ptr20, %src
  br i1 %cmp16, label %while.body.while.body_crit_edge, label %while.end.loopexit

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %CState2.sroa.0.1.le = zext i16 %38 to i32
  %CState1.sroa.0.1.le = zext i16 %46 to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end15.while.end_crit_edge
  %bitC.sroa.69.1.lcssa = phi ptr [ %bitC.sroa.69.0, %if.end15.while.end_crit_edge ], [ %bitC.sroa.69.2, %while.end.loopexit ]
  %bitC.sroa.34.1.lcssa = phi i32 [ %bitC.sroa.34.0, %if.end15.while.end_crit_edge ], [ %bitC.sroa.34.2, %while.end.loopexit ]
  %bitC.sroa.0.1.lcssa = phi i32 [ %bitC.sroa.0.0, %if.end15.while.end_crit_edge ], [ %bitC.sroa.0.2, %while.end.loopexit ]
  %CState2.sroa.0.1.lcssa = phi i32 [ %CState2.sroa.0.1292, %if.end15.while.end_crit_edge ], [ %CState2.sroa.0.1.le, %while.end.loopexit ]
  %CState1.sroa.0.1.lcssa = phi i32 [ %CState1.sroa.0.1293, %if.end15.while.end_crit_edge ], [ %CState1.sroa.0.1.le, %while.end.loopexit ]
  %arrayidx.i.i194 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %conv.i.i95
  %50 = ptrtoint ptr %arrayidx.i.i194 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i194, align 4
  %and.i.i195 = and i32 %51, %CState2.sroa.0.1.lcssa
  %shl.i.i197 = shl nuw nsw i32 %and.i.i195, %bitC.sroa.34.1.lcssa
  %or.i.i198 = or i32 %shl.i.i197, %bitC.sroa.0.1.lcssa
  %add.i.i199 = add nsw i32 %bitC.sroa.34.1.lcssa, %conv.i.i95
  %shr.i.i = lshr i32 %add.i.i199, 3
  %52 = tail call i32 @llvm.bswap.i32(i32 %or.i.i198) #9
  %53 = ptrtoint ptr %bitC.sroa.69.1.lcssa to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %bitC.sroa.69.1.lcssa, align 1
  %add.ptr.i.i200 = getelementptr i8, ptr %bitC.sroa.69.1.lcssa, i32 %shr.i.i
  %cmp.i.i = icmp ugt ptr %add.ptr.i.i200, %add.ptr4.i
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr %add.ptr4.i, ptr %add.ptr.i.i200
  %and.i4.i = and i32 %add.i.i199, 7
  %mul.i.i = and i32 %add.i.i199, -8
  %shr7.i.i = lshr i32 %or.i.i198, %mul.i.i
  %and.i.i203 = and i32 %51, %CState1.sroa.0.1.lcssa
  %shl.i.i205 = shl nuw nsw i32 %and.i.i203, %and.i4.i
  %or.i.i206 = or i32 %shr7.i.i, %shl.i.i205
  %add.i.i207 = add nuw nsw i32 %and.i4.i, %conv.i.i95
  %shr.i.i208 = lshr i32 %add.i.i207, 3
  %54 = tail call i32 @llvm.bswap.i32(i32 %or.i.i206) #9
  %55 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %spec.store.select.i.i, align 1
  %add.ptr.i.i210 = getelementptr i8, ptr %spec.store.select.i.i, i32 %shr.i.i208
  %cmp.i.i212 = icmp ugt ptr %add.ptr.i.i210, %add.ptr4.i
  %spec.store.select.i.i213 = select i1 %cmp.i.i212, ptr %add.ptr4.i, ptr %add.ptr.i.i210
  %and.i4.i214 = and i32 %add.i.i207, 7
  %mul.i.i215 = and i32 %add.i.i207, 131064
  %shr7.i.i216 = lshr i32 %or.i.i206, %mul.i.i215
  %shl.i.i218 = shl nuw nsw i32 1, %and.i4.i214
  %or.i.i219 = or i32 %shr7.i.i216, %shl.i.i218
  %add.i.i220 = add nuw nsw i32 %and.i4.i214, 1
  %shr.i.i221 = lshr i32 %add.i.i220, 3
  %56 = tail call i32 @llvm.bswap.i32(i32 %or.i.i219) #9
  %57 = ptrtoint ptr %spec.store.select.i.i213 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %56, ptr %spec.store.select.i.i213, align 1
  %add.ptr.i.i223 = getelementptr i8, ptr %spec.store.select.i.i213, i32 %shr.i.i221
  %cmp.not.i = icmp ugt ptr %add.ptr4.i, %add.ptr.i.i223
  br i1 %cmp.not.i, label %if.end.i, label %while.end.cleanup27_crit_edge

while.end.cleanup27_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

if.end.i:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i227 = and i32 %add.i.i220, 7
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i223 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %dst to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i227)
  %cmp2.i = icmp ne i32 %and.i.i227, 0
  %conv.i230 = zext i1 %cmp2.i to i32
  %sub.ptr.sub.i = sub i32 %conv.i230, %sub.ptr.rhs.cast.i
  %add.i231 = add i32 %sub.ptr.sub.i, %sub.ptr.lhs.cast.i
  br label %cleanup27

cleanup27:                                        ; preds = %if.end.i, %while.end.cleanup27_crit_edge, %if.end.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  %retval.1 = phi i32 [ 0, %if.end.cleanup27_crit_edge ], [ 0, %entry.cleanup27_crit_edge ], [ %add.i231, %if.end.i ], [ 0, %while.end.cleanup27_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @FSE_compressBound(i32 noundef %size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %size, 7
  %add = add i32 %size, 520
  %add3 = add i32 %add, %shr
  ret i32 %add3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @FSE_normalizeCount.rtbTable, !1, !"rtbTable", i1 false, i1 false}
!1 = !{!"../lib/zstd/compress/fse_compress.c", i32 440, i32 26}
!2 = !{ptr @BIT_mask, !3, !"BIT_mask", i1 false, i1 false}
!3 = !{!"../lib/zstd/compress/../common/bitstream.h", i32 153, i32 23}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i32 0, i32 33}
!14 = !{i64 2148201059, i64 2148201339, i64 2148201673, i64 2148202007}
!15 = !{!"branch_weights", i32 2000, i32 1}
