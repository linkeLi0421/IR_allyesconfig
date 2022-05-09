; ModuleID = '/llk/IR_all_yes/lib/zstd/common/fse_decompress.c_pt.bc'
source_filename = "../lib/zstd/common/fse_decompress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.FSE_decode_t = type { i16, i8, i8 }
%struct.FSE_DTableHeader = type { i16, i16 }
%struct.FSE_DecompressWksp = type { [256 x i16], [1 x i32] }

@BIT_mask = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 262143, i32 524287, i32 1048575, i32 2097151, i32 4194303, i32 8388607, i32 16777215, i32 33554431, i32 67108863, i32 134217727, i32 268435455, i32 536870911, i32 1073741823, i32 2147483647], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_ = private constant [36 x i8] c"../lib/zstd/common/fse_decompress.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [9 x i8] c"BIT_mask\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [31 x i8] c"../lib/zstd/common/bitstream.h\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 153, i32 23 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @BIT_mask], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BIT_mask to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local noalias ptr @FSE_createDTable(i32 noundef %tableLog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @FSE_freeDTable(ptr nocapture noundef %dt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @FSE_buildDTable_wksp(ptr nocapture noundef %dt, ptr nocapture noundef readonly %normalizedCounter, i32 noundef %maxSymbolValue, i32 noundef %tableLog, ptr nocapture noundef %workSpace, i32 noundef %wkspSize) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @FSE_buildDTable_internal(ptr noundef %dt, ptr noundef %normalizedCounter, i32 noundef %maxSymbolValue, i32 noundef %tableLog, ptr noundef %workSpace, i32 noundef %wkspSize)
  ret i32 %call
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @FSE_buildDTable_internal(ptr nocapture noundef %dt, ptr nocapture noundef readonly %normalizedCounter, i32 noundef %maxSymbolValue, i32 noundef %tableLog, ptr nocapture noundef %workSpace, i32 noundef %wkspSize) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i32, ptr %dt, i32 1
  %add.ptr1 = getelementptr i16, ptr %workSpace, i32 %maxSymbolValue
  %add.ptr2 = getelementptr i16, ptr %add.ptr1, i32 1
  %shl = shl nuw i32 1, %tableLog
  %sub = add i32 %shl, -1
  %add = shl i32 %maxSymbolValue, 1
  %mul = add i32 %add, 2
  %conv = zext i32 %mul to i64
  %sh_prom = zext i32 %tableLog to i64
  %shl4 = shl nuw i64 1, %sh_prom
  %add5 = add nuw nsw i64 %conv, 8
  %add6 = add nuw i64 %add5, %shl4
  %conv7 = zext i32 %wkspSize to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add6, i64 %conv7)
  %cmp = icmp ugt i64 %add6, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %maxSymbolValue)
  %cmp9 = icmp ugt i32 %maxSymbolValue, 255
  %or.cond = or i1 %cmp9, %cmp
  br i1 %or.cond, label %entry.cleanup165_crit_edge, label %if.end12

entry.cleanup165_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup165

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %tableLog)
  %cmp13 = icmp ugt i32 %tableLog, 12
  br i1 %cmp13, label %if.end12.cleanup165_crit_edge, label %for.body.lr.ph

if.end12.cleanup165_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup165

for.body.lr.ph:                                   ; preds = %if.end12
  %conv17 = trunc i32 %tableLog to i16
  %sext = shl nuw i32 32768, %tableLog
  %conv33 = ashr exact i32 %sext, 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %s.0253 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %DTableH.sroa.5.0252 = phi i16 [ 1, %for.body.lr.ph ], [ %DTableH.sroa.5.2, %for.inc.for.body_crit_edge ]
  %highThreshold.0251 = phi i32 [ %sub, %for.body.lr.ph ], [ %highThreshold.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %normalizedCounter, i32 %s.0253
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp25 = icmp eq i16 %1, -1
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv28 = trunc i32 %s.0253 to i8
  %dec = add i32 %highThreshold.0251, -1
  %arrayidx29 = getelementptr %struct.FSE_decode_t, ptr %add.ptr, i32 %highThreshold.0251
  %symbol = getelementptr inbounds %struct.FSE_decode_t, ptr %arrayidx29, i32 0, i32 1
  %2 = ptrtoint ptr %symbol to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv28, ptr %symbol, align 2
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv24 = sext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv33, i32 %conv24)
  %cmp34.not = icmp sgt i32 %conv33, %conv24
  %spec.select = select i1 %cmp34.not, i16 %DTableH.sroa.5.0252, i16 0
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then27
  %.sink = phi i16 [ 1, %if.then27 ], [ %1, %if.else ]
  %highThreshold.1 = phi i32 [ %dec, %if.then27 ], [ %highThreshold.0251, %if.else ]
  %DTableH.sroa.5.2 = phi i16 [ %DTableH.sroa.5.0252, %if.then27 ], [ %spec.select, %if.else ]
  %3 = getelementptr i16, ptr %workSpace, i32 %s.0253
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %.sink, ptr %3, align 2
  %inc = add nuw i32 %s.0253, 1
  %exitcond.not = icmp eq i32 %s.0253, %maxSymbolValue
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %5 = ptrtoint ptr %dt to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv17, ptr %dt, align 4
  %DTableH.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %dt, i32 2
  %6 = ptrtoint ptr %DTableH.sroa.5.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %DTableH.sroa.5.2, ptr %DTableH.sroa.5.0..sroa_idx, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %highThreshold.1, i32 %sub)
  %cmp43 = icmp eq i32 %highThreshold.1, %sub
  br i1 %cmp43, label %for.body55.preheader, label %for.cond112.preheader.lr.ph

for.body55.preheader:                             ; preds = %for.end
  %shr = lshr i32 %shl, 1
  %shr47 = lshr i32 %shl, 3
  %add48 = add nuw nsw i32 %shr47, 3
  %add49 = add nuw i32 %add48, %shr
  br label %for.body55

for.cond74.preheader:                             ; preds = %for.end67
  %mul91 = shl i32 %add49, 1
  br label %for.cond78.preheader

for.body55:                                       ; preds = %for.end67.for.body55_crit_edge, %for.body55.preheader
  %s51.0272 = phi i32 [ %inc70, %for.end67.for.body55_crit_edge ], [ 0, %for.body55.preheader ]
  %sv.0270 = phi i64 [ %add71, %for.end67.for.body55_crit_edge ], [ 0, %for.body55.preheader ]
  %pos.0269 = phi i32 [ %add68, %for.end67.for.body55_crit_edge ], [ 0, %for.body55.preheader ]
  %arrayidx56 = getelementptr i16, ptr %normalizedCounter, i32 %s51.0272
  %7 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx56, align 2
  %conv57 = sext i16 %8 to i32
  %add.ptr58 = getelementptr i8, ptr %add.ptr2, i32 %pos.0269
  %9 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %sv.0270, ptr %add.ptr58, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %8)
  %cmp60266 = icmp sgt i16 %8, 8
  br i1 %cmp60266, label %for.body55.for.body62_crit_edge, label %for.body55.for.end67_crit_edge

for.body55.for.end67_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end67

for.body55.for.body62_crit_edge:                  ; preds = %for.body55
  br label %for.body62

for.body62:                                       ; preds = %for.body62.for.body62_crit_edge, %for.body55.for.body62_crit_edge
  %i.0267 = phi i32 [ %add66, %for.body62.for.body62_crit_edge ], [ 8, %for.body55.for.body62_crit_edge ]
  %add.ptr64 = getelementptr i8, ptr %add.ptr58, i32 %i.0267
  %10 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %sv.0270, ptr %add.ptr64, align 1
  %add66 = add nuw nsw i32 %i.0267, 8
  %cmp60 = icmp slt i32 %add66, %conv57
  br i1 %cmp60, label %for.body62.for.body62_crit_edge, label %for.body62.for.end67_crit_edge

for.body62.for.end67_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end67

for.body62.for.body62_crit_edge:                  ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body62

for.end67:                                        ; preds = %for.body62.for.end67_crit_edge, %for.body55.for.end67_crit_edge
  %add68 = add i32 %pos.0269, %conv57
  %inc70 = add nuw i32 %s51.0272, 1
  %add71 = add i64 %sv.0270, 72340172838076673
  %exitcond278.not = icmp eq i32 %s51.0272, %maxSymbolValue
  br i1 %exitcond278.not, label %for.cond74.preheader, label %for.end67.for.body55_crit_edge

for.end67.for.body55_crit_edge:                   ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body55

for.cond78.preheader:                             ; preds = %for.cond78.preheader.for.cond78.preheader_crit_edge, %for.cond74.preheader
  %s73.0275 = phi i32 [ 0, %for.cond74.preheader ], [ %add95, %for.cond78.preheader.for.cond78.preheader_crit_edge ]
  %position.0274 = phi i32 [ 0, %for.cond74.preheader ], [ %and93, %for.cond78.preheader.for.cond78.preheader_crit_edge ]
  %and = and i32 %position.0274, %sub
  %arrayidx85 = getelementptr i8, ptr %add.ptr2, i32 %s73.0275
  %11 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx85, align 1
  %arrayidx86 = getelementptr %struct.FSE_decode_t, ptr %add.ptr, i32 %and
  %symbol87 = getelementptr inbounds %struct.FSE_decode_t, ptr %arrayidx86, i32 0, i32 1
  %13 = ptrtoint ptr %symbol87 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %symbol87, align 2
  %add83.1 = add i32 %add49, %position.0274
  %and.1 = and i32 %add83.1, %sub
  %add84.1 = or i32 %s73.0275, 1
  %arrayidx85.1 = getelementptr i8, ptr %add.ptr2, i32 %add84.1
  %14 = ptrtoint ptr %arrayidx85.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx85.1, align 1
  %arrayidx86.1 = getelementptr %struct.FSE_decode_t, ptr %add.ptr, i32 %and.1
  %symbol87.1 = getelementptr inbounds %struct.FSE_decode_t, ptr %arrayidx86.1, i32 0, i32 1
  %16 = ptrtoint ptr %symbol87.1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %symbol87.1, align 2
  %add92 = add i32 %position.0274, %mul91
  %and93 = and i32 %add92, %sub
  %add95 = add i32 %s73.0275, 2
  %cmp75 = icmp ult i32 %add95, %shl
  br i1 %cmp75, label %for.cond78.preheader.for.cond78.preheader_crit_edge, label %for.cond78.preheader.if.end140_crit_edge

for.cond78.preheader.if.end140_crit_edge:         ; preds = %for.cond78.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

for.cond78.preheader.for.cond78.preheader_crit_edge: ; preds = %for.cond78.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond78.preheader

for.cond112.preheader.lr.ph:                      ; preds = %for.end
  %shr102 = lshr i32 %shl, 3
  %shr101 = lshr i32 %shl, 1
  %add103 = add nuw nsw i32 %shr102, 3
  %add104 = add nuw i32 %add103, %shr101
  br label %for.cond112.preheader

for.cond112.preheader:                            ; preds = %for.end129.for.cond112.preheader_crit_edge, %for.cond112.preheader.lr.ph
  %position106.0264 = phi i32 [ 0, %for.cond112.preheader.lr.ph ], [ %position106.1.lcssa, %for.end129.for.cond112.preheader_crit_edge ]
  %s105.0262 = phi i32 [ 0, %for.cond112.preheader.lr.ph ], [ %inc131, %for.end129.for.cond112.preheader_crit_edge ]
  %arrayidx113 = getelementptr i16, ptr %normalizedCounter, i32 %s105.0262
  %17 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx113, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp115257 = icmp sgt i16 %18, 0
  br i1 %cmp115257, label %for.body117.lr.ph, label %for.cond112.preheader.for.end129_crit_edge

for.cond112.preheader.for.end129_crit_edge:       ; preds = %for.cond112.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end129

for.body117.lr.ph:                                ; preds = %for.cond112.preheader
  %conv118 = trunc i32 %s105.0262 to i8
  br label %for.body117

for.body117:                                      ; preds = %for.inc127.for.body117_crit_edge, %for.body117.lr.ph
  %i111.0259 = phi i32 [ 0, %for.body117.lr.ph ], [ %inc128, %for.inc127.for.body117_crit_edge ]
  %position106.1258 = phi i32 [ %position106.0264, %for.body117.lr.ph ], [ %position106.2, %for.inc127.for.body117_crit_edge ]
  %arrayidx119 = getelementptr %struct.FSE_decode_t, ptr %add.ptr, i32 %position106.1258
  %symbol120 = getelementptr inbounds %struct.FSE_decode_t, ptr %arrayidx119, i32 0, i32 1
  %19 = ptrtoint ptr %symbol120 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv118, ptr %symbol120, align 2
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %for.body117
  %position106.1.pn = phi i32 [ %position106.1258, %for.body117 ], [ %position106.2, %while.cond.while.cond_crit_edge ]
  %add121.pn = add i32 %add104, %position106.1.pn
  %position106.2 = and i32 %add121.pn, %sub
  %cmp123 = icmp ugt i32 %position106.2, %highThreshold.1
  br i1 %cmp123, label %while.cond.while.cond_crit_edge, label %for.inc127

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

for.inc127:                                       ; preds = %while.cond
  %inc128 = add nuw nsw i32 %i111.0259, 1
  %20 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx113, align 2
  %conv114 = sext i16 %21 to i32
  %cmp115 = icmp slt i32 %inc128, %conv114
  br i1 %cmp115, label %for.inc127.for.body117_crit_edge, label %for.inc127.for.end129_crit_edge

for.inc127.for.end129_crit_edge:                  ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end129

for.inc127.for.body117_crit_edge:                 ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body117

for.end129:                                       ; preds = %for.inc127.for.end129_crit_edge, %for.cond112.preheader.for.end129_crit_edge
  %position106.1.lcssa = phi i32 [ %position106.0264, %for.cond112.preheader.for.end129_crit_edge ], [ %position106.2, %for.inc127.for.end129_crit_edge ]
  %inc131 = add nuw i32 %s105.0262, 1
  %exitcond277.not = icmp eq i32 %s105.0262, %maxSymbolValue
  br i1 %exitcond277.not, label %for.end132, label %for.end129.for.cond112.preheader_crit_edge

for.end129.for.cond112.preheader_crit_edge:       ; preds = %for.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond112.preheader

for.end132:                                       ; preds = %for.end129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %position106.1.lcssa)
  %cmp133.not = icmp eq i32 %position106.1.lcssa, 0
  br i1 %cmp133.not, label %for.end132.if.end140_crit_edge, label %for.end132.cleanup165_crit_edge

for.end132.cleanup165_crit_edge:                  ; preds = %for.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup165

for.end132.if.end140_crit_edge:                   ; preds = %for.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end140

if.end140:                                        ; preds = %for.end132.if.end140_crit_edge, %for.cond78.preheader.if.end140_crit_edge
  %xor.i.neg = add i32 %tableLog, 1
  br label %for.body145

for.body145:                                      ; preds = %for.body145.for.body145_crit_edge, %if.end140
  %u141.0276 = phi i32 [ 0, %if.end140 ], [ %inc163, %for.body145.for.body145_crit_edge ]
  %arrayidx147 = getelementptr %struct.FSE_decode_t, ptr %add.ptr, i32 %u141.0276
  %symbol148 = getelementptr inbounds %struct.FSE_decode_t, ptr %arrayidx147, i32 0, i32 1
  %22 = ptrtoint ptr %symbol148 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %symbol148, align 2
  %idxprom = zext i8 %23 to i32
  %arrayidx149 = getelementptr i16, ptr %workSpace, i32 %idxprom
  %24 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx149, align 2
  %inc150 = add i16 %25, 1
  store i16 %inc150, ptr %arrayidx149, align 2
  %conv151 = zext i16 %25 to i32
  %26 = tail call i32 @llvm.ctlz.i32(i32 %conv151, i1 false) #9, !range !11
  %27 = xor i32 %26, -32
  %sub152 = add i32 %xor.i.neg, %27
  %conv153 = trunc i32 %sub152 to i8
  %nbBits = getelementptr inbounds %struct.FSE_decode_t, ptr %arrayidx147, i32 0, i32 2
  %28 = ptrtoint ptr %nbBits to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv153, ptr %nbBits, align 1
  %conv157 = and i32 %sub152, 255
  %shl158 = shl i32 %conv151, %conv157
  %sub159 = sub i32 %shl158, %shl
  %conv160 = trunc i32 %sub159 to i16
  %29 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv160, ptr %arrayidx147, align 2
  %inc163 = add nuw i32 %u141.0276, 1
  %exitcond279.not = icmp eq i32 %inc163, %shl
  br i1 %exitcond279.not, label %for.body145.cleanup165_crit_edge, label %for.body145.for.body145_crit_edge

for.body145.for.body145_crit_edge:                ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body145

for.body145.cleanup165_crit_edge:                 ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup165

cleanup165:                                       ; preds = %for.body145.cleanup165_crit_edge, %for.end132.cleanup165_crit_edge, %if.end12.cleanup165_crit_edge, %entry.cleanup165_crit_edge
  %retval.1 = phi i32 [ -1, %for.end132.cleanup165_crit_edge ], [ -46, %entry.cleanup165_crit_edge ], [ -44, %if.end12.cleanup165_crit_edge ], [ 0, %for.body145.cleanup165_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @FSE_buildDTable_rle(ptr nocapture noundef writeonly %dt, i8 noundef zeroext %symbolValue) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i32, ptr %dt, i32 1
  %0 = ptrtoint ptr %dt to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %dt, align 2
  %fastMode = getelementptr inbounds %struct.FSE_DTableHeader, ptr %dt, i32 0, i32 1
  %1 = ptrtoint ptr %fastMode to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %fastMode, align 2
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %add.ptr, align 2
  %symbol = getelementptr inbounds %struct.FSE_decode_t, ptr %add.ptr, i32 0, i32 1
  %3 = ptrtoint ptr %symbol to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %symbolValue, ptr %symbol, align 2
  %nbBits = getelementptr inbounds %struct.FSE_decode_t, ptr %add.ptr, i32 0, i32 2
  %4 = ptrtoint ptr %nbBits to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %nbBits, align 1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local i32 @FSE_buildDTable_raw(ptr nocapture noundef writeonly %dt, i32 noundef %nbBits) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i32, ptr %dt, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbBits)
  %cmp = icmp eq i32 %nbBits, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %nbBits to i16
  %0 = ptrtoint ptr %dt to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %dt, align 2
  %fastMode = getelementptr inbounds %struct.FSE_DTableHeader, ptr %dt, i32 0, i32 1
  %1 = ptrtoint ptr %fastMode to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %fastMode, align 2
  %conv5 = trunc i32 %nbBits to i8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %s.027 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.FSE_decode_t, ptr %add.ptr, i32 %s.027
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %arrayidx, align 2
  %conv3 = trunc i32 %s.027 to i8
  %symbol = getelementptr inbounds %struct.FSE_decode_t, ptr %arrayidx, i32 0, i32 1
  %3 = ptrtoint ptr %symbol to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3, ptr %symbol, align 2
  %nbBits7 = getelementptr inbounds %struct.FSE_decode_t, ptr %arrayidx, i32 0, i32 2
  %4 = ptrtoint ptr %nbBits7 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv5, ptr %nbBits7, align 1
  %inc = add i32 %s.027, 1
  %s.0.highbits = lshr i32 %inc, %nbBits
  %cmp1 = icmp eq i32 %s.0.highbits, 0
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @FSE_decompress_usingDTable(ptr noundef %dst, i32 noundef %originalSize, ptr noundef %cSrc, i32 noundef %cSrcSize, ptr nocapture noundef readonly %dt) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fastMode1 = getelementptr inbounds %struct.FSE_DTableHeader, ptr %dt, i32 0, i32 1
  %0 = ptrtoint ptr %fastMode1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fastMode1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  %add.ptr.i11 = getelementptr i8, ptr %dst, i32 %originalSize
  %add.ptr1.i12 = getelementptr i8, ptr %add.ptr.i11, i32 -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cSrcSize)
  %cmp.i.i13 = icmp eq i32 %cSrcSize, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp.i.i13, label %if.then.cleanup_crit_edge, label %if.end.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then
  %add.ptr.i.i = getelementptr i8, ptr %cSrc, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cSrcSize)
  %cmp2.i.i = icmp ugt i32 %cSrcSize, 3
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.else.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %sub.i.i = add i32 %cSrcSize, -1
  %arrayidx.i.i = getelementptr i8, ptr %cSrc, i32 %sub.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %if.then3.i.i.cleanup_crit_edge, label %BIT_initDStream.exit.i

if.then3.i.i.cleanup_crit_edge:                   ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i.i
  %4 = ptrtoint ptr %cSrc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cSrc, align 1
  %conv18.i.i = zext i8 %5 to i32
  %6 = zext i32 %cSrcSize to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cSrcSize, label %if.else.i.i.sw.epilog.i.i_crit_edge [
    i32 2, label %if.else.i.i.sw.bb47.i.i_crit_edge
    i32 3, label %sw.bb41.i.i
  ]

if.else.i.i.sw.bb47.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb47.i.i

if.else.i.i.sw.epilog.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

sw.bb41.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx42.i.i = getelementptr i8, ptr %cSrc, i32 2
  %7 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx42.i.i, align 1
  %conv43.i.i = zext i8 %8 to i32
  %shl44.i.i = shl nuw nsw i32 %conv43.i.i, 16
  %add46.i.i = or i32 %shl44.i.i, %conv18.i.i
  br label %sw.bb47.i.i

sw.bb47.i.i:                                      ; preds = %sw.bb41.i.i, %if.else.i.i.sw.bb47.i.i_crit_edge
  %bitD.sroa.0.0.i = phi i32 [ %add46.i.i, %sw.bb41.i.i ], [ %conv18.i.i, %if.else.i.i.sw.bb47.i.i_crit_edge ]
  %arrayidx48.i.i = getelementptr i8, ptr %cSrc, i32 1
  %9 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx48.i.i, align 1
  %conv49.i.i = zext i8 %10 to i32
  %shl50.i.i = shl nuw nsw i32 %conv49.i.i, 8
  %add52.i.i = add nuw nsw i32 %shl50.i.i, %bitD.sroa.0.0.i
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb47.i.i, %if.else.i.i.sw.epilog.i.i_crit_edge
  %bitD.sroa.0.1.i = phi i32 [ %conv18.i.i, %if.else.i.i.sw.epilog.i.i_crit_edge ], [ %add52.i.i, %sw.bb47.i.i ]
  %sub54.i.i = add nsw i32 %cSrcSize, -1
  %arrayidx55.i.i = getelementptr i8, ptr %cSrc, i32 %sub54.i.i
  %11 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx55.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool57.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool57.not.i.i, label %sw.epilog.i.i.cleanup_crit_edge, label %BIT_initDStream.exit.thread693.i

sw.epilog.i.i.cleanup_crit_edge:                  ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

BIT_initDStream.exit.thread693.i:                 ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv56.i.i = zext i8 %12 to i32
  %13 = tail call i32 @llvm.ctlz.i32(i32 %conv56.i.i, i1 true) #9, !range !11
  %.neg.i.i = mul nsw i32 %cSrcSize, -8
  %mul.i.i = add nsw i32 %.neg.i.i, 9
  %add76.i.i = add nsw i32 %mul.i.i, %13
  br label %cleanup.cont.i

BIT_initDStream.exit.i:                           ; preds = %if.then3.i.i
  %add.ptr4.i.i = getelementptr i8, ptr %cSrc, i32 %cSrcSize
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 -4
  %14 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %add.ptr5.i.i, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  %conv.i.i = zext i8 %3 to i32
  %17 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #9, !range !11
  %sub9.i.i = add nsw i32 %17, -23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %cSrcSize)
  %cmp.i152.i = icmp ult i32 %cSrcSize, -119
  br i1 %cmp.i152.i, label %BIT_initDStream.exit.i.cleanup.cont.i_crit_edge, label %BIT_initDStream.exit.i.cleanup_crit_edge

BIT_initDStream.exit.i.cleanup_crit_edge:         ; preds = %BIT_initDStream.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

BIT_initDStream.exit.i.cleanup.cont.i_crit_edge:  ; preds = %BIT_initDStream.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.cont.i

cleanup.cont.i:                                   ; preds = %BIT_initDStream.exit.i.cleanup.cont.i_crit_edge, %BIT_initDStream.exit.thread693.i
  %bitD.sroa.95.0705.i = phi ptr [ %cSrc, %BIT_initDStream.exit.thread693.i ], [ %add.ptr5.i.i, %BIT_initDStream.exit.i.cleanup.cont.i_crit_edge ]
  %bitD.sroa.38.0704.i = phi i32 [ %add76.i.i, %BIT_initDStream.exit.thread693.i ], [ %sub9.i.i, %BIT_initDStream.exit.i.cleanup.cont.i_crit_edge ]
  %bitD.sroa.0.2703.i = phi i32 [ %bitD.sroa.0.1.i, %BIT_initDStream.exit.thread693.i ], [ %16, %BIT_initDStream.exit.i.cleanup.cont.i_crit_edge ]
  %18 = ptrtoint ptr %dt to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %dt, align 2
  %conv.i154.i = zext i16 %19 to i32
  %20 = add nsw i32 %bitD.sroa.38.0704.i, %conv.i154.i
  %sub1.i.i.i.i = sub nsw i32 0, %20
  %and.i.i.i.i.i = and i32 %sub1.i.i.i.i, 31
  %shr.i.i.i.i.i = lshr i32 %bitD.sroa.0.2703.i, %and.i.i.i.i.i
  %arrayidx.i.i.i.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %conv.i154.i
  %21 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %and1.i.i.i.i.i = and i32 %shr.i.i.i.i.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %20)
  %cmp.i.i.i = icmp ugt i32 %20, 32
  br i1 %cmp.i.i.i, label %cleanup.cont.i.FSE_initDState.exit.i_crit_edge, label %if.end.i.i.i

cleanup.cont.i.FSE_initDState.exit.i_crit_edge:   ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_initDState.exit.i

if.end.i.i.i:                                     ; preds = %cleanup.cont.i
  %cmp1.not.i.i.i = icmp ult ptr %bitD.sroa.95.0705.i, %add.ptr.i.i
  br i1 %cmp1.not.i.i.i, label %if.end3.i.i.i, label %BIT_reloadDStreamFast.exit.i.i.i

BIT_reloadDStreamFast.exit.i.i.i:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i.i = lshr i32 %20, 3
  %and.i.i.i.i = and i32 %20, 7
  br label %BIT_reloadDStream.exit.sink.split.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  %cmp5.i.i.i = icmp eq ptr %bitD.sroa.95.0705.i, %cSrc
  br i1 %cmp5.i.i.i, label %if.end3.i.i.i.FSE_initDState.exit.i_crit_edge, label %if.end11.i.i.i

if.end3.i.i.i.FSE_initDState.exit.i_crit_edge:    ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_initDState.exit.i

if.end11.i.i.i:                                   ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i = lshr i32 %20, 3
  %idx.neg.i.i.i = sub nsw i32 0, %shr.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %bitD.sroa.95.0705.i, i32 %idx.neg.i.i.i
  %cmp15.i.i.i = icmp ult ptr %add.ptr.i.i.i, %cSrc
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %bitD.sroa.95.0705.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %cSrc to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %nbBytes.0.i.i.i = select i1 %cmp15.i.i.i, i32 %sub.ptr.sub.i.i.i, i32 %shr.i.i.i
  %mul.neg.i.i.i = mul i32 %nbBytes.0.i.i.i, -8
  %sub.i.i.i = add i32 %mul.neg.i.i.i, %20
  br label %BIT_reloadDStream.exit.sink.split.i.i

BIT_reloadDStream.exit.sink.split.i.i:            ; preds = %if.end11.i.i.i, %BIT_reloadDStreamFast.exit.i.i.i
  %nbBytes.0.i.i.pn.i = phi i32 [ %nbBytes.0.i.i.i, %if.end11.i.i.i ], [ %shr.i.i.i.i, %BIT_reloadDStreamFast.exit.i.i.i ]
  %and.i.i.sink.i.i = phi i32 [ %sub.i.i.i, %if.end11.i.i.i ], [ %and.i.i.i.i, %BIT_reloadDStreamFast.exit.i.i.i ]
  %idx.neg21.i.i.pn.i = sub i32 0, %nbBytes.0.i.i.pn.i
  %bitD.sroa.95.1.i = getelementptr i8, ptr %bitD.sroa.95.0705.i, i32 %idx.neg21.i.i.pn.i
  %23 = ptrtoint ptr %bitD.sroa.95.1.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %bitD.sroa.95.1.i, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  br label %FSE_initDState.exit.i

FSE_initDState.exit.i:                            ; preds = %BIT_reloadDStream.exit.sink.split.i.i, %if.end3.i.i.i.FSE_initDState.exit.i_crit_edge, %cleanup.cont.i.FSE_initDState.exit.i_crit_edge
  %bitD.sroa.0.3.i = phi i32 [ %bitD.sroa.0.2703.i, %cleanup.cont.i.FSE_initDState.exit.i_crit_edge ], [ %bitD.sroa.0.2703.i, %if.end3.i.i.i.FSE_initDState.exit.i_crit_edge ], [ %25, %BIT_reloadDStream.exit.sink.split.i.i ]
  %bitD.sroa.38.1.i = phi i32 [ %20, %cleanup.cont.i.FSE_initDState.exit.i_crit_edge ], [ %20, %if.end3.i.i.i.FSE_initDState.exit.i_crit_edge ], [ %and.i.i.sink.i.i, %BIT_reloadDStream.exit.sink.split.i.i ]
  %bitD.sroa.95.2.i = phi ptr [ %bitD.sroa.95.0705.i, %cleanup.cont.i.FSE_initDState.exit.i_crit_edge ], [ %cSrc, %if.end3.i.i.i.FSE_initDState.exit.i_crit_edge ], [ %bitD.sroa.95.1.i, %BIT_reloadDStream.exit.sink.split.i.i ]
  %add.ptr.i155.i = getelementptr i32, ptr %dt, i32 1
  %26 = add i32 %bitD.sroa.38.1.i, %conv.i154.i
  %sub1.i.i.i158.i = sub i32 0, %26
  %and.i.i.i.i159.i = and i32 %sub1.i.i.i158.i, 31
  %shr.i.i.i.i160.i = lshr i32 %bitD.sroa.0.3.i, %and.i.i.i.i159.i
  %and1.i.i.i.i162.i = and i32 %shr.i.i.i.i160.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %26)
  %cmp.i.i163.i = icmp ugt i32 %26, 32
  br i1 %cmp.i.i163.i, label %FSE_initDState.exit.i.for.end.i_crit_edge, label %if.end.i.i167.i

FSE_initDState.exit.i.for.end.i_crit_edge:        ; preds = %FSE_initDState.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.i.i167.i:                                  ; preds = %FSE_initDState.exit.i
  %cmp1.not.i.i166.i = icmp ult ptr %bitD.sroa.95.2.i, %add.ptr.i.i
  br i1 %cmp1.not.i.i166.i, label %if.end3.i.i175.i, label %FSE_initDState.exit194.thread848.i

FSE_initDState.exit194.thread848.i:               ; preds = %if.end.i.i167.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i168.i = lshr i32 %26, 3
  %and.i.i.i171.i = and i32 %26, 7
  %idx.neg21.i.i184.pn851.i = sub nsw i32 0, %shr.i.i.i168.i
  %bitD.sroa.95.3852.i = getelementptr i8, ptr %bitD.sroa.95.2.i, i32 %idx.neg21.i.i184.pn851.i
  %27 = ptrtoint ptr %bitD.sroa.95.3852.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %bitD.sroa.95.3852.i, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  br label %if.end.i199.lr.ph.i

if.end3.i.i175.i:                                 ; preds = %if.end.i.i167.i
  %cmp5.i.i174.i = icmp eq ptr %bitD.sroa.95.2.i, %cSrc
  br i1 %cmp5.i.i174.i, label %if.end3.i.i175.i.if.end.i199.lr.ph.i_crit_edge, label %FSE_initDState.exit194.i

if.end3.i.i175.i.if.end.i199.lr.ph.i_crit_edge:   ; preds = %if.end3.i.i175.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i199.lr.ph.i

FSE_initDState.exit194.i:                         ; preds = %if.end3.i.i175.i
  %shr.i.i176.i = lshr i32 %26, 3
  %idx.neg.i.i177.i = sub nsw i32 0, %shr.i.i176.i
  %add.ptr.i.i178.i = getelementptr i8, ptr %bitD.sroa.95.2.i, i32 %idx.neg.i.i177.i
  %cmp15.i.i179.i = icmp ult ptr %add.ptr.i.i178.i, %cSrc
  %sub.ptr.lhs.cast.i.i180.i = ptrtoint ptr %bitD.sroa.95.2.i to i32
  %sub.ptr.rhs.cast.i.i181.i = ptrtoint ptr %cSrc to i32
  %sub.ptr.sub.i.i182.i = sub i32 %sub.ptr.lhs.cast.i.i180.i, %sub.ptr.rhs.cast.i.i181.i
  %nbBytes.0.i.i183.i = select i1 %cmp15.i.i179.i, i32 %sub.ptr.sub.i.i182.i, i32 %shr.i.i176.i
  %mul.neg.i.i186.i = mul i32 %nbBytes.0.i.i183.i, -8
  %sub.i.i187.i = add i32 %mul.neg.i.i186.i, %26
  %idx.neg21.i.i184.pn.i = sub i32 0, %nbBytes.0.i.i183.i
  %bitD.sroa.95.3.i = getelementptr i8, ptr %bitD.sroa.95.2.i, i32 %idx.neg21.i.i184.pn.i
  %30 = ptrtoint ptr %bitD.sroa.95.3.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %bitD.sroa.95.3.i, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i.i187.i)
  %cmp.i196793.i = icmp ugt i32 %sub.i.i187.i, 32
  br i1 %cmp.i196793.i, label %FSE_initDState.exit194.i.for.end.i_crit_edge, label %FSE_initDState.exit194.i.if.end.i199.lr.ph.i_crit_edge

FSE_initDState.exit194.i.if.end.i199.lr.ph.i_crit_edge: ; preds = %FSE_initDState.exit194.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i199.lr.ph.i

FSE_initDState.exit194.i.for.end.i_crit_edge:     ; preds = %FSE_initDState.exit194.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.i199.lr.ph.i:                              ; preds = %FSE_initDState.exit194.i.if.end.i199.lr.ph.i_crit_edge, %if.end3.i.i175.i.if.end.i199.lr.ph.i_crit_edge, %FSE_initDState.exit194.thread848.i
  %bitD.sroa.95.4847.i = phi ptr [ %bitD.sroa.95.3.i, %FSE_initDState.exit194.i.if.end.i199.lr.ph.i_crit_edge ], [ %bitD.sroa.95.3852.i, %FSE_initDState.exit194.thread848.i ], [ %cSrc, %if.end3.i.i175.i.if.end.i199.lr.ph.i_crit_edge ]
  %bitD.sroa.38.2846.i = phi i32 [ %sub.i.i187.i, %FSE_initDState.exit194.i.if.end.i199.lr.ph.i_crit_edge ], [ %and.i.i.i171.i, %FSE_initDState.exit194.thread848.i ], [ %26, %if.end3.i.i175.i.if.end.i199.lr.ph.i_crit_edge ]
  %bitD.sroa.0.4845.i = phi i32 [ %32, %FSE_initDState.exit194.i.if.end.i199.lr.ph.i_crit_edge ], [ %29, %FSE_initDState.exit194.thread848.i ], [ %bitD.sroa.0.3.i, %if.end3.i.i175.i.if.end.i199.lr.ph.i_crit_edge ]
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %cSrc to i32
  br label %if.end.i199.i

if.end.i199.i:                                    ; preds = %if.end29.i.if.end.i199.i_crit_edge, %if.end.i199.lr.ph.i
  %op.0801.i = phi ptr [ %dst, %if.end.i199.lr.ph.i ], [ %add.ptr52.i, %if.end29.i.if.end.i199.i_crit_edge ]
  %state2.sroa.0.0799.i = phi i32 [ %and1.i.i.i.i162.i, %if.end.i199.lr.ph.i ], [ %add.i358.i, %if.end29.i.if.end.i199.i_crit_edge ]
  %state1.sroa.0.0797.i = phi i32 [ %and1.i.i.i.i.i, %if.end.i199.lr.ph.i ], [ %add.i309.i, %if.end29.i.if.end.i199.i_crit_edge ]
  %bitD.sroa.95.5796.i = phi ptr [ %bitD.sroa.95.4847.i, %if.end.i199.lr.ph.i ], [ %bitD.sroa.95.7733.i, %if.end29.i.if.end.i199.i_crit_edge ]
  %bitD.sroa.38.3795.i = phi i32 [ %bitD.sroa.38.2846.i, %if.end.i199.lr.ph.i ], [ %add.i.i.i324.i, %if.end29.i.if.end.i199.i_crit_edge ]
  %bitD.sroa.0.5794.i = phi i32 [ %bitD.sroa.0.4845.i, %if.end.i199.lr.ph.i ], [ %bitD.sroa.0.7731.i, %if.end29.i.if.end.i199.i_crit_edge ]
  %cmp1.not.i.i = icmp ult ptr %bitD.sroa.95.5796.i, %add.ptr.i.i
  br i1 %cmp1.not.i.i, label %if.end3.i.i, label %BIT_reloadDStreamFast.exit.i.i

BIT_reloadDStreamFast.exit.i.i:                   ; preds = %if.end.i199.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i200.i = lshr i32 %bitD.sroa.38.3795.i, 3
  %and.i.i.i = and i32 %bitD.sroa.38.3795.i, 7
  br label %BIT_reloadDStream.exit.i

if.end3.i.i:                                      ; preds = %if.end.i199.i
  %cmp5.i.i = icmp eq ptr %bitD.sroa.95.5796.i, %cSrc
  br i1 %cmp5.i.i, label %if.end3.i.i.for.end.i_crit_edge, label %if.end11.i.i

if.end3.i.i.for.end.i_crit_edge:                  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end11.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i = lshr i32 %bitD.sroa.38.3795.i, 3
  %idx.neg.i.i = sub nsw i32 0, %shr.i.i
  %add.ptr.i204.i = getelementptr i8, ptr %bitD.sroa.95.5796.i, i32 %idx.neg.i.i
  %cmp15.i.i = icmp ult ptr %add.ptr.i204.i, %cSrc
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %bitD.sroa.95.5796.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %nbBytes.0.i.i = select i1 %cmp15.i.i, i32 %sub.ptr.sub.i.i, i32 %shr.i.i
  %result.0.i.i = zext i1 %cmp15.i.i to i32
  %mul.neg.i.i = mul i32 %nbBytes.0.i.i, -8
  %sub.i205.i = add i32 %mul.neg.i.i, %bitD.sroa.38.3795.i
  br label %BIT_reloadDStream.exit.i

BIT_reloadDStream.exit.i:                         ; preds = %if.end11.i.i, %BIT_reloadDStreamFast.exit.i.i
  %shr.i.i200.pn.i = phi i32 [ %shr.i.i200.i, %BIT_reloadDStreamFast.exit.i.i ], [ %nbBytes.0.i.i, %if.end11.i.i ]
  %bitD.sroa.38.4.i = phi i32 [ %and.i.i.i, %BIT_reloadDStreamFast.exit.i.i ], [ %sub.i205.i, %if.end11.i.i ]
  %retval.0.i.i = phi i32 [ 0, %BIT_reloadDStreamFast.exit.i.i ], [ %result.0.i.i, %if.end11.i.i ]
  %idx.neg.i.i201.pn.i = sub i32 0, %shr.i.i200.pn.i
  %add.ptr.i.i202.sink.i = getelementptr i8, ptr %bitD.sroa.95.5796.i, i32 %idx.neg.i.i201.pn.i
  %33 = ptrtoint ptr %add.ptr.i.i202.sink.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %add.ptr.i.i202.sink.i, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp eq i32 %retval.0.i.i, 0
  %cmp4.i = icmp ult ptr %op.0801.i, %add.ptr1.i12
  %and150.i = and i1 %cmp4.i, %cmp.i
  br i1 %and150.i, label %for.body.i, label %BIT_reloadDStream.exit.i.for.end.i_crit_edge

BIT_reloadDStream.exit.i.for.end.i_crit_edge:     ; preds = %BIT_reloadDStream.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %BIT_reloadDStream.exit.i
  %arrayidx.i229.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i, i32 %state1.sroa.0.0797.i
  %36 = ptrtoint ptr %arrayidx.i229.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %DInfo.sroa.0.0.copyload.i230.i = load i16, ptr %arrayidx.i229.i, align 2
  %DInfo.sroa.5.0.arrayidx.sroa_idx.i231.i = getelementptr inbounds i8, ptr %arrayidx.i229.i, i32 2
  %37 = ptrtoint ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i231.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %DInfo.sroa.5.0.copyload.i232.i = load i8, ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i231.i, align 2
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i233.i = getelementptr inbounds i8, ptr %arrayidx.i229.i, i32 3
  %38 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i233.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %DInfo.sroa.7.0.copyload.i234.i = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i233.i, align 1
  %conv.i235.i = zext i8 %DInfo.sroa.7.0.copyload.i234.i to i32
  %and.i.i.i209.i = and i32 %bitD.sroa.38.4.i, 31
  %shl.i.i.i.i = shl i32 %35, %and.i.i.i209.i
  %sub.i.i.i.i = sub nsw i32 0, %conv.i235.i
  %and1.i.i.i.i = and i32 %sub.i.i.i.i, 31
  %shr.i.i.i210.i = lshr i32 %shl.i.i.i.i, %and1.i.i.i.i
  %add.i.i.i.i = add i32 %bitD.sroa.38.4.i, %conv.i235.i
  %conv3.i.i = zext i16 %DInfo.sroa.0.0.copyload.i230.i to i32
  %add.i.i = add i32 %shr.i.i.i210.i, %conv3.i.i
  %39 = ptrtoint ptr %op.0801.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %DInfo.sroa.5.0.copyload.i232.i, ptr %op.0801.i, align 1
  %arrayidx.i212.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i, i32 %state2.sroa.0.0799.i
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i216.i = getelementptr inbounds i8, ptr %arrayidx.i212.i, i32 3
  %40 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i216.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %DInfo.sroa.7.0.copyload.i217.i = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i216.i, align 1
  %conv.i218.i = zext i8 %DInfo.sroa.7.0.copyload.i217.i to i32
  %and.i.i.i220.i = and i32 %add.i.i.i.i, 31
  %shl.i.i.i221.i = shl i32 %35, %and.i.i.i220.i
  %sub.i.i.i222.i = sub nsw i32 0, %conv.i218.i
  %and1.i.i.i223.i = and i32 %sub.i.i.i222.i, 31
  %shr.i.i.i224.i = lshr i32 %shl.i.i.i221.i, %and1.i.i.i223.i
  %add.i.i.i225.i = add i32 %add.i.i.i.i, %conv.i218.i
  %41 = ptrtoint ptr %arrayidx.i212.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %DInfo.sroa.0.0.copyload.i246.sink.i = load i16, ptr %arrayidx.i212.i, align 2
  %conv3.i258.i = zext i16 %DInfo.sroa.0.0.copyload.i246.sink.i to i32
  %add.i259.i = add i32 %shr.i.i.i224.i, %conv3.i258.i
  %cond21.in.in.i = getelementptr inbounds i8, ptr %arrayidx.i212.i, i32 2
  %42 = ptrtoint ptr %cond21.in.in.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %cond21.in.i = load i8, ptr %cond21.in.in.i, align 2
  %arrayidx23.i = getelementptr i8, ptr %op.0801.i, i32 1
  %43 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %cond21.in.i, ptr %arrayidx23.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i.i.i225.i)
  %cmp.i261.i = icmp ugt i32 %add.i.i.i225.i, 32
  br i1 %cmp.i261.i, label %for.body.i.if.then27.i_crit_edge, label %if.end.i265.i

for.body.i.if.then27.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27.i

if.end.i265.i:                                    ; preds = %for.body.i
  %cmp1.not.i264.i = icmp ult ptr %add.ptr.i.i202.sink.i, %add.ptr.i.i
  br i1 %cmp1.not.i264.i, label %if.end3.i273.i, label %BIT_reloadDStream.exit292.thread725.i

BIT_reloadDStream.exit292.thread725.i:            ; preds = %if.end.i265.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i266.i = lshr i32 %add.i.i.i225.i, 3
  %idx.neg.i.i267.i = sub nsw i32 0, %shr.i.i266.i
  %add.ptr.i.i268.i = getelementptr i8, ptr %add.ptr.i.i202.sink.i, i32 %idx.neg.i.i267.i
  %and.i.i269.i = and i32 %add.i.i.i225.i, 7
  %44 = ptrtoint ptr %add.ptr.i.i268.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %add.ptr.i.i268.i, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #9
  br label %if.end29.i

if.end3.i273.i:                                   ; preds = %if.end.i265.i
  %cmp5.i272.i = icmp eq ptr %add.ptr.i.i202.sink.i, %cSrc
  br i1 %cmp5.i272.i, label %if.end3.i273.i.if.then27.i_crit_edge, label %BIT_reloadDStream.exit292.i

if.end3.i273.i.if.then27.i_crit_edge:             ; preds = %if.end3.i273.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27.i

BIT_reloadDStream.exit292.i:                      ; preds = %if.end3.i273.i
  %shr.i277.i = lshr i32 %add.i.i.i225.i, 3
  %idx.neg.i278.i = sub nsw i32 0, %shr.i277.i
  %add.ptr.i279.i = getelementptr i8, ptr %add.ptr.i.i202.sink.i, i32 %idx.neg.i278.i
  %cmp15.i280.i = icmp ult ptr %add.ptr.i279.i, %cSrc
  %sub.ptr.lhs.cast.i281.i = ptrtoint ptr %add.ptr.i.i202.sink.i to i32
  %sub.ptr.sub.i283.i = sub i32 %sub.ptr.lhs.cast.i281.i, %sub.ptr.rhs.cast.i.i
  %nbBytes.0.i284.i = select i1 %cmp15.i280.i, i32 %sub.ptr.sub.i283.i, i32 %shr.i277.i
  %idx.neg21.i286.i = sub i32 0, %nbBytes.0.i284.i
  %add.ptr22.i287.i = getelementptr i8, ptr %add.ptr.i.i202.sink.i, i32 %idx.neg21.i286.i
  %mul.neg.i288.i = mul i32 %nbBytes.0.i284.i, -8
  %sub.i289.i = add i32 %mul.neg.i288.i, %add.i.i.i225.i
  %47 = ptrtoint ptr %add.ptr22.i287.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %add.ptr22.i287.i, align 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #9
  br i1 %cmp15.i280.i, label %BIT_reloadDStream.exit292.i.if.then27.i_crit_edge, label %BIT_reloadDStream.exit292.i.if.end29.i_crit_edge

BIT_reloadDStream.exit292.i.if.end29.i_crit_edge: ; preds = %BIT_reloadDStream.exit292.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

BIT_reloadDStream.exit292.i.if.then27.i_crit_edge: ; preds = %BIT_reloadDStream.exit292.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27.i

if.then27.i:                                      ; preds = %BIT_reloadDStream.exit292.i.if.then27.i_crit_edge, %if.end3.i273.i.if.then27.i_crit_edge, %for.body.i.if.then27.i_crit_edge
  %bitD.sroa.95.7724.i = phi ptr [ %add.ptr22.i287.i, %BIT_reloadDStream.exit292.i.if.then27.i_crit_edge ], [ %add.ptr.i.i202.sink.i, %for.body.i.if.then27.i_crit_edge ], [ %cSrc, %if.end3.i273.i.if.then27.i_crit_edge ]
  %bitD.sroa.38.6723.i = phi i32 [ %sub.i289.i, %BIT_reloadDStream.exit292.i.if.then27.i_crit_edge ], [ %add.i.i.i225.i, %for.body.i.if.then27.i_crit_edge ], [ %add.i.i.i225.i, %if.end3.i273.i.if.then27.i_crit_edge ]
  %bitD.sroa.0.7722.i = phi i32 [ %49, %BIT_reloadDStream.exit292.i.if.then27.i_crit_edge ], [ %35, %for.body.i.if.then27.i_crit_edge ], [ %35, %if.end3.i273.i.if.then27.i_crit_edge ]
  %add.ptr28.i = getelementptr i8, ptr %op.0801.i, i32 2
  br label %for.end.i

if.end29.i:                                       ; preds = %BIT_reloadDStream.exit292.i.if.end29.i_crit_edge, %BIT_reloadDStream.exit292.thread725.i
  %bitD.sroa.95.7733.i = phi ptr [ %add.ptr.i.i268.i, %BIT_reloadDStream.exit292.thread725.i ], [ %add.ptr22.i287.i, %BIT_reloadDStream.exit292.i.if.end29.i_crit_edge ]
  %bitD.sroa.38.6732.i = phi i32 [ %and.i.i269.i, %BIT_reloadDStream.exit292.thread725.i ], [ %sub.i289.i, %BIT_reloadDStream.exit292.i.if.end29.i_crit_edge ]
  %bitD.sroa.0.7731.i = phi i32 [ %46, %BIT_reloadDStream.exit292.thread725.i ], [ %49, %BIT_reloadDStream.exit292.i.if.end29.i_crit_edge ]
  %arrayidx.i328.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i, i32 %add.i.i
  %50 = ptrtoint ptr %arrayidx.i328.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %DInfo.sroa.0.0.copyload.i329.i = load i16, ptr %arrayidx.i328.i, align 2
  %DInfo.sroa.5.0.arrayidx.sroa_idx.i330.i = getelementptr inbounds i8, ptr %arrayidx.i328.i, i32 2
  %51 = ptrtoint ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i330.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %DInfo.sroa.5.0.copyload.i331.i = load i8, ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i330.i, align 2
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i332.i = getelementptr inbounds i8, ptr %arrayidx.i328.i, i32 3
  %52 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i332.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %DInfo.sroa.7.0.copyload.i333.i = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i332.i, align 1
  %conv.i334.i = zext i8 %DInfo.sroa.7.0.copyload.i333.i to i32
  %and.i.i.i302.i = and i32 %bitD.sroa.38.6732.i, 31
  %shl.i.i.i303.i = shl i32 %bitD.sroa.0.7731.i, %and.i.i.i302.i
  %sub.i.i.i304.i = sub nsw i32 0, %conv.i334.i
  %and1.i.i.i305.i = and i32 %sub.i.i.i304.i, 31
  %shr.i.i.i306.i = lshr i32 %shl.i.i.i303.i, %and1.i.i.i305.i
  %add.i.i.i307.i = add i32 %bitD.sroa.38.6732.i, %conv.i334.i
  %conv3.i308.i = zext i16 %DInfo.sroa.0.0.copyload.i329.i to i32
  %add.i309.i = add i32 %shr.i.i.i306.i, %conv3.i308.i
  %arrayidx40.c151.i = getelementptr i8, ptr %op.0801.i, i32 2
  %53 = ptrtoint ptr %arrayidx40.c151.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %DInfo.sroa.5.0.copyload.i331.i, ptr %arrayidx40.c151.i, align 1
  %arrayidx.i311.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i, i32 %add.i259.i
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i315.i = getelementptr inbounds i8, ptr %arrayidx.i311.i, i32 3
  %54 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i315.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %DInfo.sroa.7.0.copyload.i316.i = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i315.i, align 1
  %conv.i317.i = zext i8 %DInfo.sroa.7.0.copyload.i316.i to i32
  %and.i.i.i319.i = and i32 %add.i.i.i307.i, 31
  %shl.i.i.i320.i = shl i32 %bitD.sroa.0.7731.i, %and.i.i.i319.i
  %sub.i.i.i321.i = sub nsw i32 0, %conv.i317.i
  %and1.i.i.i322.i = and i32 %sub.i.i.i321.i, 31
  %shr.i.i.i323.i = lshr i32 %shl.i.i.i320.i, %and1.i.i.i322.i
  %add.i.i.i324.i = add i32 %add.i.i.i307.i, %conv.i317.i
  %55 = ptrtoint ptr %arrayidx.i311.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %DInfo.sroa.0.0.copyload.i345.sink.i = load i16, ptr %arrayidx.i311.i, align 2
  %conv3.i357.i = zext i16 %DInfo.sroa.0.0.copyload.i345.sink.i to i32
  %add.i358.i = add i32 %shr.i.i.i323.i, %conv3.i357.i
  %cond49.in.in.i = getelementptr inbounds i8, ptr %arrayidx.i311.i, i32 2
  %56 = ptrtoint ptr %cond49.in.in.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %cond49.in.i = load i8, ptr %cond49.in.in.i, align 2
  %arrayidx51.i = getelementptr i8, ptr %op.0801.i, i32 3
  %57 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %cond49.in.i, ptr %arrayidx51.i, align 1
  %add.ptr52.i = getelementptr i8, ptr %op.0801.i, i32 4
  %cmp.i196.i = icmp ugt i32 %add.i.i.i324.i, 32
  br i1 %cmp.i196.i, label %if.end29.i.for.end.i_crit_edge, label %if.end29.i.if.end.i199.i_crit_edge

if.end29.i.if.end.i199.i_crit_edge:               ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i199.i

if.end29.i.for.end.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %if.end29.i.for.end.i_crit_edge, %if.then27.i, %BIT_reloadDStream.exit.i.for.end.i_crit_edge, %if.end3.i.i.for.end.i_crit_edge, %FSE_initDState.exit194.i.for.end.i_crit_edge, %FSE_initDState.exit.i.for.end.i_crit_edge
  %bitD.sroa.0.8.i = phi i32 [ %bitD.sroa.0.7722.i, %if.then27.i ], [ %32, %FSE_initDState.exit194.i.for.end.i_crit_edge ], [ %bitD.sroa.0.3.i, %FSE_initDState.exit.i.for.end.i_crit_edge ], [ %bitD.sroa.0.5794.i, %if.end3.i.i.for.end.i_crit_edge ], [ %bitD.sroa.0.7731.i, %if.end29.i.for.end.i_crit_edge ], [ %35, %BIT_reloadDStream.exit.i.for.end.i_crit_edge ]
  %bitD.sroa.38.8.i = phi i32 [ %bitD.sroa.38.6723.i, %if.then27.i ], [ %sub.i.i187.i, %FSE_initDState.exit194.i.for.end.i_crit_edge ], [ %26, %FSE_initDState.exit.i.for.end.i_crit_edge ], [ %bitD.sroa.38.3795.i, %if.end3.i.i.for.end.i_crit_edge ], [ %add.i.i.i324.i, %if.end29.i.for.end.i_crit_edge ], [ %bitD.sroa.38.4.i, %BIT_reloadDStream.exit.i.for.end.i_crit_edge ]
  %bitD.sroa.95.8.i = phi ptr [ %bitD.sroa.95.7724.i, %if.then27.i ], [ %bitD.sroa.95.3.i, %FSE_initDState.exit194.i.for.end.i_crit_edge ], [ %bitD.sroa.95.2.i, %FSE_initDState.exit.i.for.end.i_crit_edge ], [ %cSrc, %if.end3.i.i.for.end.i_crit_edge ], [ %bitD.sroa.95.7733.i, %if.end29.i.for.end.i_crit_edge ], [ %add.ptr.i.i202.sink.i, %BIT_reloadDStream.exit.i.for.end.i_crit_edge ]
  %state1.sroa.0.3.i = phi i32 [ %add.i.i, %if.then27.i ], [ %and1.i.i.i.i.i, %FSE_initDState.exit194.i.for.end.i_crit_edge ], [ %and1.i.i.i.i.i, %FSE_initDState.exit.i.for.end.i_crit_edge ], [ %state1.sroa.0.0797.i, %if.end3.i.i.for.end.i_crit_edge ], [ %add.i309.i, %if.end29.i.for.end.i_crit_edge ], [ %state1.sroa.0.0797.i, %BIT_reloadDStream.exit.i.for.end.i_crit_edge ]
  %state2.sroa.0.3.i = phi i32 [ %add.i259.i, %if.then27.i ], [ %and1.i.i.i.i162.i, %FSE_initDState.exit194.i.for.end.i_crit_edge ], [ %and1.i.i.i.i162.i, %FSE_initDState.exit.i.for.end.i_crit_edge ], [ %state2.sroa.0.0799.i, %if.end3.i.i.for.end.i_crit_edge ], [ %add.i358.i, %if.end29.i.for.end.i_crit_edge ], [ %state2.sroa.0.0799.i, %BIT_reloadDStream.exit.i.for.end.i_crit_edge ]
  %op.1.i = phi ptr [ %add.ptr28.i, %if.then27.i ], [ %dst, %FSE_initDState.exit194.i.for.end.i_crit_edge ], [ %dst, %FSE_initDState.exit.i.for.end.i_crit_edge ], [ %op.0801.i, %if.end3.i.i.for.end.i_crit_edge ], [ %add.ptr52.i, %if.end29.i.for.end.i_crit_edge ], [ %op.0801.i, %BIT_reloadDStream.exit.i.for.end.i_crit_edge ]
  %add.ptr53.i = getelementptr i8, ptr %add.ptr.i11, i32 -2
  %cmp54822.i = icmp ugt ptr %op.1.i, %add.ptr53.i
  br i1 %cmp54822.i, label %for.end.i.cleanup_crit_edge, label %if.end57.lr.ph.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end57.lr.ph.i:                                 ; preds = %for.end.i
  %sub.ptr.rhs.cast.i414.i = ptrtoint ptr %cSrc to i32
  br label %if.end57.i

if.end57.i:                                       ; preds = %BIT_reloadDStream.exit523.i.if.end57.i_crit_edge, %if.end57.lr.ph.i
  %op.2829.i = phi ptr [ %op.1.i, %if.end57.lr.ph.i ], [ %incdec.ptr99772.i, %BIT_reloadDStream.exit523.i.if.end57.i_crit_edge ]
  %state2.sroa.0.4827.i = phi i32 [ %state2.sroa.0.3.i, %if.end57.lr.ph.i ], [ %add.i474.i, %BIT_reloadDStream.exit523.i.if.end57.i_crit_edge ]
  %state1.sroa.0.4826.i = phi i32 [ %state1.sroa.0.3.i, %if.end57.lr.ph.i ], [ %add.i375.i, %BIT_reloadDStream.exit523.i.if.end57.i_crit_edge ]
  %bitD.sroa.95.9825.i = phi ptr [ %bitD.sroa.95.8.i, %if.end57.lr.ph.i ], [ %bitD.sroa.95.11.i, %BIT_reloadDStream.exit523.i.if.end57.i_crit_edge ]
  %bitD.sroa.38.9824.i = phi i32 [ %bitD.sroa.38.8.i, %if.end57.lr.ph.i ], [ %bitD.sroa.38.13.i, %BIT_reloadDStream.exit523.i.if.end57.i_crit_edge ]
  %bitD.sroa.0.9823.i = phi i32 [ %bitD.sroa.0.8.i, %if.end57.lr.ph.i ], [ %bitD.sroa.0.11.i, %BIT_reloadDStream.exit523.i.if.end57.i_crit_edge ]
  %arrayidx.i377.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i, i32 %state1.sroa.0.4826.i
  %58 = ptrtoint ptr %arrayidx.i377.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %DInfo.sroa.0.0.copyload.i378.i = load i16, ptr %arrayidx.i377.i, align 2
  %DInfo.sroa.5.0.arrayidx.sroa_idx.i379.i = getelementptr inbounds i8, ptr %arrayidx.i377.i, i32 2
  %59 = ptrtoint ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i379.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %DInfo.sroa.5.0.copyload.i380.i = load i8, ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i379.i, align 2
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i381.i = getelementptr inbounds i8, ptr %arrayidx.i377.i, i32 3
  %60 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i381.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %DInfo.sroa.7.0.copyload.i382.i = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i381.i, align 1
  %conv.i383.i = zext i8 %DInfo.sroa.7.0.copyload.i382.i to i32
  %and.i.i.i368.i = and i32 %bitD.sroa.38.9824.i, 31
  %shl.i.i.i369.i = shl i32 %bitD.sroa.0.9823.i, %and.i.i.i368.i
  %sub.i.i.i370.i = sub nsw i32 0, %conv.i383.i
  %and1.i.i.i371.i = and i32 %sub.i.i.i370.i, 31
  %shr.i.i.i372.i = lshr i32 %shl.i.i.i369.i, %and1.i.i.i371.i
  %add.i.i.i373.i = add i32 %bitD.sroa.38.9824.i, %conv.i383.i
  %conv3.i374.i = zext i16 %DInfo.sroa.0.0.copyload.i378.i to i32
  %add.i375.i = add i32 %shr.i.i.i372.i, %conv3.i374.i
  %incdec.ptr746.i = getelementptr i8, ptr %op.2829.i, i32 1
  %61 = ptrtoint ptr %op.2829.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %DInfo.sroa.5.0.copyload.i380.i, ptr %op.2829.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i.i.i373.i)
  %cmp.i393747.i = icmp ugt i32 %add.i.i.i373.i, 32
  br i1 %cmp.i393747.i, label %if.end57.i.while.end.i_crit_edge, label %if.end.i397.i

if.end57.i.while.end.i_crit_edge:                 ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end.i397.i:                                    ; preds = %if.end57.i
  %cmp1.not.i396.i = icmp ult ptr %bitD.sroa.95.9825.i, %add.ptr.i.i
  br i1 %cmp1.not.i396.i, label %if.end3.i405.i, label %BIT_reloadDStreamFast.exit.i402.i

BIT_reloadDStreamFast.exit.i402.i:                ; preds = %if.end.i397.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i398.i = lshr i32 %add.i.i.i373.i, 3
  %and.i.i401.i = and i32 %add.i.i.i373.i, 7
  br label %if.end83.sink.split.i

if.end3.i405.i:                                   ; preds = %if.end.i397.i
  %cmp5.i404.i = icmp eq ptr %bitD.sroa.95.9825.i, %cSrc
  br i1 %cmp5.i404.i, label %if.end3.i405.i.if.end83.i_crit_edge, label %if.end11.i422.i

if.end3.i405.i.if.end83.i_crit_edge:              ; preds = %if.end3.i405.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i

if.end11.i422.i:                                  ; preds = %if.end3.i405.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i409.i = lshr i32 %add.i.i.i373.i, 3
  %idx.neg.i410.i = sub nsw i32 0, %shr.i409.i
  %add.ptr.i411.i = getelementptr i8, ptr %bitD.sroa.95.9825.i, i32 %idx.neg.i410.i
  %cmp15.i412.i = icmp ult ptr %add.ptr.i411.i, %cSrc
  %sub.ptr.lhs.cast.i413.i = ptrtoint ptr %bitD.sroa.95.9825.i to i32
  %sub.ptr.sub.i415.i = sub i32 %sub.ptr.lhs.cast.i413.i, %sub.ptr.rhs.cast.i414.i
  %nbBytes.0.i416.i = select i1 %cmp15.i412.i, i32 %sub.ptr.sub.i415.i, i32 %shr.i409.i
  %mul.neg.i420.i = mul i32 %nbBytes.0.i416.i, -8
  %sub.i421.i = add i32 %mul.neg.i420.i, %add.i.i.i373.i
  br label %if.end83.sink.split.i

if.end83.sink.split.i:                            ; preds = %if.end11.i422.i, %BIT_reloadDStreamFast.exit.i402.i
  %shr.i.i398.pn.i = phi i32 [ %shr.i.i398.i, %BIT_reloadDStreamFast.exit.i402.i ], [ %nbBytes.0.i416.i, %if.end11.i422.i ]
  %bitD.sroa.38.11.ph.ph.i = phi i32 [ %and.i.i401.i, %BIT_reloadDStreamFast.exit.i402.i ], [ %sub.i421.i, %if.end11.i422.i ]
  %idx.neg.i.i399.pn.i = sub i32 0, %shr.i.i398.pn.i
  %add.ptr.i.i400.sink.i = getelementptr i8, ptr %bitD.sroa.95.9825.i, i32 %idx.neg.i.i399.pn.i
  %62 = ptrtoint ptr %add.ptr.i.i400.sink.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %add.ptr.i.i400.sink.i, align 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #9
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.end83.sink.split.i, %if.end3.i405.i.if.end83.i_crit_edge
  %bitD.sroa.0.10.ph.i = phi i32 [ %bitD.sroa.0.9823.i, %if.end3.i405.i.if.end83.i_crit_edge ], [ %64, %if.end83.sink.split.i ]
  %bitD.sroa.38.11.ph.i = phi i32 [ %add.i.i.i373.i, %if.end3.i405.i.if.end83.i_crit_edge ], [ %bitD.sroa.38.11.ph.ph.i, %if.end83.sink.split.i ]
  %bitD.sroa.95.10.ph.i = phi ptr [ %cSrc, %if.end3.i405.i.if.end83.i_crit_edge ], [ %add.ptr.i.i400.sink.i, %if.end83.sink.split.i ]
  %cmp85.i = icmp ugt ptr %incdec.ptr746.i, %add.ptr53.i
  br i1 %cmp85.i, label %if.end83.i.cleanup_crit_edge, label %if.end88.i

if.end83.i.cleanup_crit_edge:                     ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end88.i:                                       ; preds = %if.end83.i
  %arrayidx.i476.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i, i32 %state2.sroa.0.4827.i
  %65 = ptrtoint ptr %arrayidx.i476.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %DInfo.sroa.0.0.copyload.i477.i = load i16, ptr %arrayidx.i476.i, align 2
  %DInfo.sroa.5.0.arrayidx.sroa_idx.i478.i = getelementptr inbounds i8, ptr %arrayidx.i476.i, i32 2
  %66 = ptrtoint ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i478.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %DInfo.sroa.5.0.copyload.i479.i = load i8, ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i478.i, align 2
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i480.i = getelementptr inbounds i8, ptr %arrayidx.i476.i, i32 3
  %67 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i480.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %DInfo.sroa.7.0.copyload.i481.i = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i480.i, align 1
  %conv.i482.i = zext i8 %DInfo.sroa.7.0.copyload.i481.i to i32
  %and.i.i.i467.i = and i32 %bitD.sroa.38.11.ph.i, 31
  %shl.i.i.i468.i = shl i32 %bitD.sroa.0.10.ph.i, %and.i.i.i467.i
  %sub.i.i.i469.i = sub nsw i32 0, %conv.i482.i
  %and1.i.i.i470.i = and i32 %sub.i.i.i469.i, 31
  %shr.i.i.i471.i = lshr i32 %shl.i.i.i468.i, %and1.i.i.i470.i
  %add.i.i.i472.i = add i32 %bitD.sroa.38.11.ph.i, %conv.i482.i
  %conv3.i473.i = zext i16 %DInfo.sroa.0.0.copyload.i477.i to i32
  %add.i474.i = add i32 %shr.i.i.i471.i, %conv3.i473.i
  %incdec.ptr99772.i = getelementptr i8, ptr %op.2829.i, i32 2
  %68 = ptrtoint ptr %incdec.ptr746.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %DInfo.sroa.5.0.copyload.i479.i, ptr %incdec.ptr746.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i.i.i472.i)
  %cmp.i492773.i = icmp ugt i32 %add.i.i.i472.i, 32
  br i1 %cmp.i492773.i, label %if.end88.i.while.end.i_crit_edge, label %if.end.i496.i

if.end88.i.while.end.i_crit_edge:                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end.i496.i:                                    ; preds = %if.end88.i
  %cmp1.not.i495.i = icmp ult ptr %bitD.sroa.95.10.ph.i, %add.ptr.i.i
  br i1 %cmp1.not.i495.i, label %if.end3.i504.i, label %BIT_reloadDStreamFast.exit.i501.i

BIT_reloadDStreamFast.exit.i501.i:                ; preds = %if.end.i496.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i497.i = lshr i32 %add.i.i.i472.i, 3
  %and.i.i500.i = and i32 %add.i.i.i472.i, 7
  br label %BIT_reloadDStream.exit523.sink.split.i

if.end3.i504.i:                                   ; preds = %if.end.i496.i
  %cmp5.i503.i = icmp eq ptr %bitD.sroa.95.10.ph.i, %cSrc
  br i1 %cmp5.i503.i, label %if.end3.i504.i.BIT_reloadDStream.exit523.i_crit_edge, label %if.end11.i521.i

if.end3.i504.i.BIT_reloadDStream.exit523.i_crit_edge: ; preds = %if.end3.i504.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit523.i

if.end11.i521.i:                                  ; preds = %if.end3.i504.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i508.i = lshr i32 %add.i.i.i472.i, 3
  %idx.neg.i509.i = sub nsw i32 0, %shr.i508.i
  %add.ptr.i510.i = getelementptr i8, ptr %bitD.sroa.95.10.ph.i, i32 %idx.neg.i509.i
  %cmp15.i511.i = icmp ult ptr %add.ptr.i510.i, %cSrc
  %sub.ptr.lhs.cast.i512.i = ptrtoint ptr %bitD.sroa.95.10.ph.i to i32
  %sub.ptr.sub.i514.i = sub i32 %sub.ptr.lhs.cast.i512.i, %sub.ptr.rhs.cast.i414.i
  %nbBytes.0.i515.i = select i1 %cmp15.i511.i, i32 %sub.ptr.sub.i514.i, i32 %shr.i508.i
  %mul.neg.i519.i = mul i32 %nbBytes.0.i515.i, -8
  %sub.i520.i = add i32 %mul.neg.i519.i, %add.i.i.i472.i
  br label %BIT_reloadDStream.exit523.sink.split.i

BIT_reloadDStream.exit523.sink.split.i:           ; preds = %if.end11.i521.i, %BIT_reloadDStreamFast.exit.i501.i
  %shr.i.i497.pn.i = phi i32 [ %shr.i.i497.i, %BIT_reloadDStreamFast.exit.i501.i ], [ %nbBytes.0.i515.i, %if.end11.i521.i ]
  %bitD.sroa.38.13.ph.i = phi i32 [ %and.i.i500.i, %BIT_reloadDStreamFast.exit.i501.i ], [ %sub.i520.i, %if.end11.i521.i ]
  %idx.neg.i.i498.pn.i = sub i32 0, %shr.i.i497.pn.i
  %add.ptr.i.i499.sink.i = getelementptr i8, ptr %bitD.sroa.95.10.ph.i, i32 %idx.neg.i.i498.pn.i
  %69 = ptrtoint ptr %add.ptr.i.i499.sink.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %add.ptr.i.i499.sink.i, align 1
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  br label %BIT_reloadDStream.exit523.i

BIT_reloadDStream.exit523.i:                      ; preds = %BIT_reloadDStream.exit523.sink.split.i, %if.end3.i504.i.BIT_reloadDStream.exit523.i_crit_edge
  %bitD.sroa.0.11.i = phi i32 [ %bitD.sroa.0.10.ph.i, %if.end3.i504.i.BIT_reloadDStream.exit523.i_crit_edge ], [ %71, %BIT_reloadDStream.exit523.sink.split.i ]
  %bitD.sroa.38.13.i = phi i32 [ %add.i.i.i472.i, %if.end3.i504.i.BIT_reloadDStream.exit523.i_crit_edge ], [ %bitD.sroa.38.13.ph.i, %BIT_reloadDStream.exit523.sink.split.i ]
  %bitD.sroa.95.11.i = phi ptr [ %cSrc, %if.end3.i504.i.BIT_reloadDStream.exit523.i_crit_edge ], [ %add.ptr.i.i499.sink.i, %BIT_reloadDStream.exit523.sink.split.i ]
  %cmp54.i = icmp ugt ptr %incdec.ptr99772.i, %add.ptr53.i
  br i1 %cmp54.i, label %BIT_reloadDStream.exit523.i.cleanup_crit_edge, label %BIT_reloadDStream.exit523.i.if.end57.i_crit_edge

BIT_reloadDStream.exit523.i.if.end57.i_crit_edge: ; preds = %BIT_reloadDStream.exit523.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

BIT_reloadDStream.exit523.i.cleanup_crit_edge:    ; preds = %BIT_reloadDStream.exit523.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.end.i:                                      ; preds = %if.end88.i.while.end.i_crit_edge, %if.end57.i.while.end.i_crit_edge
  %add.i375.i.sink = phi i32 [ %state2.sroa.0.4827.i, %if.end57.i.while.end.i_crit_edge ], [ %add.i375.i, %if.end88.i.while.end.i_crit_edge ]
  %.sink = phi i32 [ 2, %if.end57.i.while.end.i_crit_edge ], [ 3, %if.end88.i.while.end.i_crit_edge ]
  %incdec.ptr99772.i.sink = phi ptr [ %incdec.ptr746.i, %if.end57.i.while.end.i_crit_edge ], [ %incdec.ptr99772.i, %if.end88.i.while.end.i_crit_edge ]
  %arrayidx.i525.pn.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i, i32 %add.i375.i.sink
  %cond112.in.in.i = getelementptr inbounds i8, ptr %arrayidx.i525.pn.i, i32 2
  %72 = ptrtoint ptr %cond112.in.in.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %cond112.in.i = load i8, ptr %cond112.in.in.i, align 2
  %incdec.ptr114.i = getelementptr i8, ptr %op.2829.i, i32 %.sink
  %73 = ptrtoint ptr %incdec.ptr99772.i.sink to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %cond112.in.i, ptr %incdec.ptr99772.i.sink, align 1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr114.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %dst to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp.i.i13, label %if.end.cleanup_crit_edge, label %if.end.i.i16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i16:                                     ; preds = %if.end
  %add.ptr.i.i14 = getelementptr i8, ptr %cSrc, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cSrcSize)
  %cmp2.i.i15 = icmp ugt i32 %cSrcSize, 3
  br i1 %cmp2.i.i15, label %if.then3.i.i20, label %if.else.i.i22

if.then3.i.i20:                                   ; preds = %if.end.i.i16
  %sub.i.i17 = add i32 %cSrcSize, -1
  %arrayidx.i.i18 = getelementptr i8, ptr %cSrc, i32 %sub.i.i17
  %74 = ptrtoint ptr %arrayidx.i.i18 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.i.i18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i.i19 = icmp eq i8 %75, 0
  br i1 %tobool.not.i.i19, label %if.then3.i.i20.cleanup_crit_edge, label %BIT_initDStream.exit.i49

if.then3.i.i20.cleanup_crit_edge:                 ; preds = %if.then3.i.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i.i22:                                    ; preds = %if.end.i.i16
  %76 = ptrtoint ptr %cSrc to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %cSrc, align 1
  %conv18.i.i21 = zext i8 %77 to i32
  %78 = zext i32 %cSrcSize to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %cSrcSize, label %if.else.i.i22.sw.epilog.i.i38_crit_edge [
    i32 2, label %if.else.i.i22.sw.bb47.i.i33_crit_edge
    i32 3, label %sw.bb41.i.i27
  ]

if.else.i.i22.sw.bb47.i.i33_crit_edge:            ; preds = %if.else.i.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb47.i.i33

if.else.i.i22.sw.epilog.i.i38_crit_edge:          ; preds = %if.else.i.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i38

sw.bb41.i.i27:                                    ; preds = %if.else.i.i22
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx42.i.i23 = getelementptr i8, ptr %cSrc, i32 2
  %79 = ptrtoint ptr %arrayidx42.i.i23 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx42.i.i23, align 1
  %conv43.i.i24 = zext i8 %80 to i32
  %shl44.i.i25 = shl nuw nsw i32 %conv43.i.i24, 16
  %add46.i.i26 = or i32 %shl44.i.i25, %conv18.i.i21
  br label %sw.bb47.i.i33

sw.bb47.i.i33:                                    ; preds = %sw.bb41.i.i27, %if.else.i.i22.sw.bb47.i.i33_crit_edge
  %bitD.sroa.0.0.i28 = phi i32 [ %add46.i.i26, %sw.bb41.i.i27 ], [ %conv18.i.i21, %if.else.i.i22.sw.bb47.i.i33_crit_edge ]
  %arrayidx48.i.i29 = getelementptr i8, ptr %cSrc, i32 1
  %81 = ptrtoint ptr %arrayidx48.i.i29 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx48.i.i29, align 1
  %conv49.i.i30 = zext i8 %82 to i32
  %shl50.i.i31 = shl nuw nsw i32 %conv49.i.i30, 8
  %add52.i.i32 = add nuw nsw i32 %shl50.i.i31, %bitD.sroa.0.0.i28
  br label %sw.epilog.i.i38

sw.epilog.i.i38:                                  ; preds = %sw.bb47.i.i33, %if.else.i.i22.sw.epilog.i.i38_crit_edge
  %bitD.sroa.0.1.i34 = phi i32 [ %conv18.i.i21, %if.else.i.i22.sw.epilog.i.i38_crit_edge ], [ %add52.i.i32, %sw.bb47.i.i33 ]
  %sub54.i.i35 = add nsw i32 %cSrcSize, -1
  %arrayidx55.i.i36 = getelementptr i8, ptr %cSrc, i32 %sub54.i.i35
  %83 = ptrtoint ptr %arrayidx55.i.i36 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx55.i.i36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool57.not.i.i37 = icmp eq i8 %84, 0
  br i1 %tobool57.not.i.i37, label %sw.epilog.i.i38.cleanup_crit_edge, label %BIT_initDStream.exit.thread693.i43

sw.epilog.i.i38.cleanup_crit_edge:                ; preds = %sw.epilog.i.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

BIT_initDStream.exit.thread693.i43:               ; preds = %sw.epilog.i.i38
  call void @__sanitizer_cov_trace_pc() #11
  %conv56.i.i39 = zext i8 %84 to i32
  %85 = tail call i32 @llvm.ctlz.i32(i32 %conv56.i.i39, i1 true) #9, !range !11
  %.neg.i.i40 = mul nsw i32 %cSrcSize, -8
  %mul.i.i41 = add nsw i32 %.neg.i.i40, 9
  %add76.i.i42 = add nsw i32 %mul.i.i41, %85
  br label %cleanup.cont.i60

BIT_initDStream.exit.i49:                         ; preds = %if.then3.i.i20
  %add.ptr4.i.i44 = getelementptr i8, ptr %cSrc, i32 %cSrcSize
  %add.ptr5.i.i45 = getelementptr i8, ptr %add.ptr4.i.i44, i32 -4
  %86 = ptrtoint ptr %add.ptr5.i.i45 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %add.ptr5.i.i45, align 1
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #9
  %conv.i.i46 = zext i8 %75 to i32
  %89 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i46, i1 true) #9, !range !11
  %sub9.i.i47 = add nsw i32 %89, -23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %cSrcSize)
  %cmp.i152.i48 = icmp ult i32 %cSrcSize, -119
  br i1 %cmp.i152.i48, label %BIT_initDStream.exit.i49.cleanup.cont.i60_crit_edge, label %BIT_initDStream.exit.i49.cleanup_crit_edge

BIT_initDStream.exit.i49.cleanup_crit_edge:       ; preds = %BIT_initDStream.exit.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

BIT_initDStream.exit.i49.cleanup.cont.i60_crit_edge: ; preds = %BIT_initDStream.exit.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.cont.i60

cleanup.cont.i60:                                 ; preds = %BIT_initDStream.exit.i49.cleanup.cont.i60_crit_edge, %BIT_initDStream.exit.thread693.i43
  %bitD.sroa.95.0705.i50 = phi ptr [ %cSrc, %BIT_initDStream.exit.thread693.i43 ], [ %add.ptr5.i.i45, %BIT_initDStream.exit.i49.cleanup.cont.i60_crit_edge ]
  %bitD.sroa.38.0704.i51 = phi i32 [ %add76.i.i42, %BIT_initDStream.exit.thread693.i43 ], [ %sub9.i.i47, %BIT_initDStream.exit.i49.cleanup.cont.i60_crit_edge ]
  %bitD.sroa.0.2703.i52 = phi i32 [ %bitD.sroa.0.1.i34, %BIT_initDStream.exit.thread693.i43 ], [ %88, %BIT_initDStream.exit.i49.cleanup.cont.i60_crit_edge ]
  %90 = ptrtoint ptr %dt to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %dt, align 2
  %conv.i154.i53 = zext i16 %91 to i32
  %92 = add nsw i32 %bitD.sroa.38.0704.i51, %conv.i154.i53
  %sub1.i.i.i.i54 = sub nsw i32 0, %92
  %and.i.i.i.i.i55 = and i32 %sub1.i.i.i.i54, 31
  %shr.i.i.i.i.i56 = lshr i32 %bitD.sroa.0.2703.i52, %and.i.i.i.i.i55
  %arrayidx.i.i.i.i.i57 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %conv.i154.i53
  %93 = ptrtoint ptr %arrayidx.i.i.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i.i.i.i.i57, align 4
  %and1.i.i.i.i.i58 = and i32 %shr.i.i.i.i.i56, %94
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %92)
  %cmp.i.i.i59 = icmp ugt i32 %92, 32
  br i1 %cmp.i.i.i59, label %cleanup.cont.i60.FSE_initDState.exit.i93_crit_edge, label %if.end.i.i.i62

cleanup.cont.i60.FSE_initDState.exit.i93_crit_edge: ; preds = %cleanup.cont.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_initDState.exit.i93

if.end.i.i.i62:                                   ; preds = %cleanup.cont.i60
  %cmp1.not.i.i.i61 = icmp ult ptr %bitD.sroa.95.0705.i50, %add.ptr.i.i14
  br i1 %cmp1.not.i.i.i61, label %if.end3.i.i.i67, label %BIT_reloadDStreamFast.exit.i.i.i65

BIT_reloadDStreamFast.exit.i.i.i65:               ; preds = %if.end.i.i.i62
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i.i63 = lshr i32 %92, 3
  %and.i.i.i.i64 = and i32 %92, 7
  br label %BIT_reloadDStream.exit.sink.split.i.i83

if.end3.i.i.i67:                                  ; preds = %if.end.i.i.i62
  %cmp5.i.i.i66 = icmp eq ptr %bitD.sroa.95.0705.i50, %cSrc
  br i1 %cmp5.i.i.i66, label %if.end3.i.i.i67.FSE_initDState.exit.i93_crit_edge, label %if.end11.i.i.i78

if.end3.i.i.i67.FSE_initDState.exit.i93_crit_edge: ; preds = %if.end3.i.i.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_initDState.exit.i93

if.end11.i.i.i78:                                 ; preds = %if.end3.i.i.i67
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i68 = lshr i32 %92, 3
  %idx.neg.i.i.i69 = sub nsw i32 0, %shr.i.i.i68
  %add.ptr.i.i.i70 = getelementptr i8, ptr %bitD.sroa.95.0705.i50, i32 %idx.neg.i.i.i69
  %cmp15.i.i.i71 = icmp ult ptr %add.ptr.i.i.i70, %cSrc
  %sub.ptr.lhs.cast.i.i.i72 = ptrtoint ptr %bitD.sroa.95.0705.i50 to i32
  %sub.ptr.rhs.cast.i.i.i73 = ptrtoint ptr %cSrc to i32
  %sub.ptr.sub.i.i.i74 = sub i32 %sub.ptr.lhs.cast.i.i.i72, %sub.ptr.rhs.cast.i.i.i73
  %nbBytes.0.i.i.i75 = select i1 %cmp15.i.i.i71, i32 %sub.ptr.sub.i.i.i74, i32 %shr.i.i.i68
  %mul.neg.i.i.i76 = mul i32 %nbBytes.0.i.i.i75, -8
  %sub.i.i.i77 = add i32 %mul.neg.i.i.i76, %92
  br label %BIT_reloadDStream.exit.sink.split.i.i83

BIT_reloadDStream.exit.sink.split.i.i83:          ; preds = %if.end11.i.i.i78, %BIT_reloadDStreamFast.exit.i.i.i65
  %nbBytes.0.i.i.pn.i79 = phi i32 [ %nbBytes.0.i.i.i75, %if.end11.i.i.i78 ], [ %shr.i.i.i.i63, %BIT_reloadDStreamFast.exit.i.i.i65 ]
  %and.i.i.sink.i.i80 = phi i32 [ %sub.i.i.i77, %if.end11.i.i.i78 ], [ %and.i.i.i.i64, %BIT_reloadDStreamFast.exit.i.i.i65 ]
  %idx.neg21.i.i.pn.i81 = sub i32 0, %nbBytes.0.i.i.pn.i79
  %bitD.sroa.95.1.i82 = getelementptr i8, ptr %bitD.sroa.95.0705.i50, i32 %idx.neg21.i.i.pn.i81
  %95 = ptrtoint ptr %bitD.sroa.95.1.i82 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %bitD.sroa.95.1.i82, align 1
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #9
  br label %FSE_initDState.exit.i93

FSE_initDState.exit.i93:                          ; preds = %BIT_reloadDStream.exit.sink.split.i.i83, %if.end3.i.i.i67.FSE_initDState.exit.i93_crit_edge, %cleanup.cont.i60.FSE_initDState.exit.i93_crit_edge
  %bitD.sroa.0.3.i84 = phi i32 [ %bitD.sroa.0.2703.i52, %cleanup.cont.i60.FSE_initDState.exit.i93_crit_edge ], [ %bitD.sroa.0.2703.i52, %if.end3.i.i.i67.FSE_initDState.exit.i93_crit_edge ], [ %97, %BIT_reloadDStream.exit.sink.split.i.i83 ]
  %bitD.sroa.38.1.i85 = phi i32 [ %92, %cleanup.cont.i60.FSE_initDState.exit.i93_crit_edge ], [ %92, %if.end3.i.i.i67.FSE_initDState.exit.i93_crit_edge ], [ %and.i.i.sink.i.i80, %BIT_reloadDStream.exit.sink.split.i.i83 ]
  %bitD.sroa.95.2.i86 = phi ptr [ %bitD.sroa.95.0705.i50, %cleanup.cont.i60.FSE_initDState.exit.i93_crit_edge ], [ %cSrc, %if.end3.i.i.i67.FSE_initDState.exit.i93_crit_edge ], [ %bitD.sroa.95.1.i82, %BIT_reloadDStream.exit.sink.split.i.i83 ]
  %add.ptr.i155.i87 = getelementptr i32, ptr %dt, i32 1
  %98 = add i32 %bitD.sroa.38.1.i85, %conv.i154.i53
  %sub1.i.i.i158.i88 = sub i32 0, %98
  %and.i.i.i.i159.i89 = and i32 %sub1.i.i.i158.i88, 31
  %shr.i.i.i.i160.i90 = lshr i32 %bitD.sroa.0.3.i84, %and.i.i.i.i159.i89
  %and1.i.i.i.i162.i91 = and i32 %shr.i.i.i.i160.i90, %94
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %98)
  %cmp.i.i163.i92 = icmp ugt i32 %98, 32
  br i1 %cmp.i.i163.i92, label %FSE_initDState.exit.i93.for.end.i223_crit_edge, label %if.end.i.i167.i95

FSE_initDState.exit.i93.for.end.i223_crit_edge:   ; preds = %FSE_initDState.exit.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i223

if.end.i.i167.i95:                                ; preds = %FSE_initDState.exit.i93
  %cmp1.not.i.i166.i94 = icmp ult ptr %bitD.sroa.95.2.i86, %add.ptr.i.i14
  br i1 %cmp1.not.i.i166.i94, label %if.end3.i.i175.i102, label %FSE_initDState.exit194.thread848.i100

FSE_initDState.exit194.thread848.i100:            ; preds = %if.end.i.i167.i95
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i168.i96 = lshr i32 %98, 3
  %and.i.i.i171.i97 = and i32 %98, 7
  %idx.neg21.i.i184.pn851.i98 = sub nsw i32 0, %shr.i.i.i168.i96
  %bitD.sroa.95.3852.i99 = getelementptr i8, ptr %bitD.sroa.95.2.i86, i32 %idx.neg21.i.i184.pn851.i98
  %99 = ptrtoint ptr %bitD.sroa.95.3852.i99 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %bitD.sroa.95.3852.i99, align 1
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #9
  br label %if.end.i199.lr.ph.i121

if.end3.i.i175.i102:                              ; preds = %if.end.i.i167.i95
  %cmp5.i.i174.i101 = icmp eq ptr %bitD.sroa.95.2.i86, %cSrc
  br i1 %cmp5.i.i174.i101, label %if.end3.i.i175.i102.if.end.i199.lr.ph.i121_crit_edge, label %FSE_initDState.exit194.i116

if.end3.i.i175.i102.if.end.i199.lr.ph.i121_crit_edge: ; preds = %if.end3.i.i175.i102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i199.lr.ph.i121

FSE_initDState.exit194.i116:                      ; preds = %if.end3.i.i175.i102
  %shr.i.i176.i103 = lshr i32 %98, 3
  %idx.neg.i.i177.i104 = sub nsw i32 0, %shr.i.i176.i103
  %add.ptr.i.i178.i105 = getelementptr i8, ptr %bitD.sroa.95.2.i86, i32 %idx.neg.i.i177.i104
  %cmp15.i.i179.i106 = icmp ult ptr %add.ptr.i.i178.i105, %cSrc
  %sub.ptr.lhs.cast.i.i180.i107 = ptrtoint ptr %bitD.sroa.95.2.i86 to i32
  %sub.ptr.rhs.cast.i.i181.i108 = ptrtoint ptr %cSrc to i32
  %sub.ptr.sub.i.i182.i109 = sub i32 %sub.ptr.lhs.cast.i.i180.i107, %sub.ptr.rhs.cast.i.i181.i108
  %nbBytes.0.i.i183.i110 = select i1 %cmp15.i.i179.i106, i32 %sub.ptr.sub.i.i182.i109, i32 %shr.i.i176.i103
  %mul.neg.i.i186.i111 = mul i32 %nbBytes.0.i.i183.i110, -8
  %sub.i.i187.i112 = add i32 %mul.neg.i.i186.i111, %98
  %idx.neg21.i.i184.pn.i113 = sub i32 0, %nbBytes.0.i.i183.i110
  %bitD.sroa.95.3.i114 = getelementptr i8, ptr %bitD.sroa.95.2.i86, i32 %idx.neg21.i.i184.pn.i113
  %102 = ptrtoint ptr %bitD.sroa.95.3.i114 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %bitD.sroa.95.3.i114, align 1
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i.i187.i112)
  %cmp.i196793.i115 = icmp ugt i32 %sub.i.i187.i112, 32
  br i1 %cmp.i196793.i115, label %FSE_initDState.exit194.i116.for.end.i223_crit_edge, label %FSE_initDState.exit194.i116.if.end.i199.lr.ph.i121_crit_edge

FSE_initDState.exit194.i116.if.end.i199.lr.ph.i121_crit_edge: ; preds = %FSE_initDState.exit194.i116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i199.lr.ph.i121

FSE_initDState.exit194.i116.for.end.i223_crit_edge: ; preds = %FSE_initDState.exit194.i116
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i223

if.end.i199.lr.ph.i121:                           ; preds = %FSE_initDState.exit194.i116.if.end.i199.lr.ph.i121_crit_edge, %if.end3.i.i175.i102.if.end.i199.lr.ph.i121_crit_edge, %FSE_initDState.exit194.thread848.i100
  %bitD.sroa.95.4847.i117 = phi ptr [ %bitD.sroa.95.3.i114, %FSE_initDState.exit194.i116.if.end.i199.lr.ph.i121_crit_edge ], [ %bitD.sroa.95.3852.i99, %FSE_initDState.exit194.thread848.i100 ], [ %cSrc, %if.end3.i.i175.i102.if.end.i199.lr.ph.i121_crit_edge ]
  %bitD.sroa.38.2846.i118 = phi i32 [ %sub.i.i187.i112, %FSE_initDState.exit194.i116.if.end.i199.lr.ph.i121_crit_edge ], [ %and.i.i.i171.i97, %FSE_initDState.exit194.thread848.i100 ], [ %98, %if.end3.i.i175.i102.if.end.i199.lr.ph.i121_crit_edge ]
  %bitD.sroa.0.4845.i119 = phi i32 [ %104, %FSE_initDState.exit194.i116.if.end.i199.lr.ph.i121_crit_edge ], [ %101, %FSE_initDState.exit194.thread848.i100 ], [ %bitD.sroa.0.3.i84, %if.end3.i.i175.i102.if.end.i199.lr.ph.i121_crit_edge ]
  %sub.ptr.rhs.cast.i.i120 = ptrtoint ptr %cSrc to i32
  br label %if.end.i199.i129

if.end.i199.i129:                                 ; preds = %if.end29.i206.if.end.i199.i129_crit_edge, %if.end.i199.lr.ph.i121
  %op.0801.i122 = phi ptr [ %dst, %if.end.i199.lr.ph.i121 ], [ %add.ptr52.i213, %if.end29.i206.if.end.i199.i129_crit_edge ]
  %state2.sroa.0.0799.i123 = phi i32 [ %and1.i.i.i.i162.i91, %if.end.i199.lr.ph.i121 ], [ %add.i358.i209, %if.end29.i206.if.end.i199.i129_crit_edge ]
  %state1.sroa.0.0797.i124 = phi i32 [ %and1.i.i.i.i.i58, %if.end.i199.lr.ph.i121 ], [ %add.i342.i, %if.end29.i206.if.end.i199.i129_crit_edge ]
  %bitD.sroa.95.5796.i125 = phi ptr [ %bitD.sroa.95.4847.i117, %if.end.i199.lr.ph.i121 ], [ %bitD.sroa.95.7733.i196, %if.end29.i206.if.end.i199.i129_crit_edge ]
  %bitD.sroa.38.3795.i126 = phi i32 [ %bitD.sroa.38.2846.i118, %if.end.i199.lr.ph.i121 ], [ %136, %if.end29.i206.if.end.i199.i129_crit_edge ]
  %bitD.sroa.0.5794.i127 = phi i32 [ %bitD.sroa.0.4845.i119, %if.end.i199.lr.ph.i121 ], [ %bitD.sroa.0.7731.i198, %if.end29.i206.if.end.i199.i129_crit_edge ]
  %cmp1.not.i.i128 = icmp ult ptr %bitD.sroa.95.5796.i125, %add.ptr.i.i14
  br i1 %cmp1.not.i.i128, label %if.end3.i.i134, label %BIT_reloadDStreamFast.exit.i.i132

BIT_reloadDStreamFast.exit.i.i132:                ; preds = %if.end.i199.i129
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i200.i130 = lshr i32 %bitD.sroa.38.3795.i126, 3
  %and.i.i.i131 = and i32 %bitD.sroa.38.3795.i126, 7
  br label %BIT_reloadDStream.exit.i154

if.end3.i.i134:                                   ; preds = %if.end.i199.i129
  %cmp5.i.i133 = icmp eq ptr %bitD.sroa.95.5796.i125, %cSrc
  br i1 %cmp5.i.i133, label %if.end3.i.i134.for.end.i223_crit_edge, label %if.end11.i.i145

if.end3.i.i134.for.end.i223_crit_edge:            ; preds = %if.end3.i.i134
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i223

if.end11.i.i145:                                  ; preds = %if.end3.i.i134
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i135 = lshr i32 %bitD.sroa.38.3795.i126, 3
  %idx.neg.i.i136 = sub nsw i32 0, %shr.i.i135
  %add.ptr.i204.i137 = getelementptr i8, ptr %bitD.sroa.95.5796.i125, i32 %idx.neg.i.i136
  %cmp15.i.i138 = icmp ult ptr %add.ptr.i204.i137, %cSrc
  %sub.ptr.lhs.cast.i.i139 = ptrtoint ptr %bitD.sroa.95.5796.i125 to i32
  %sub.ptr.sub.i.i140 = sub i32 %sub.ptr.lhs.cast.i.i139, %sub.ptr.rhs.cast.i.i120
  %nbBytes.0.i.i141 = select i1 %cmp15.i.i138, i32 %sub.ptr.sub.i.i140, i32 %shr.i.i135
  %result.0.i.i142 = zext i1 %cmp15.i.i138 to i32
  %mul.neg.i.i143 = mul i32 %nbBytes.0.i.i141, -8
  %sub.i205.i144 = add i32 %mul.neg.i.i143, %bitD.sroa.38.3795.i126
  br label %BIT_reloadDStream.exit.i154

BIT_reloadDStream.exit.i154:                      ; preds = %if.end11.i.i145, %BIT_reloadDStreamFast.exit.i.i132
  %shr.i.i200.pn.i146 = phi i32 [ %shr.i.i200.i130, %BIT_reloadDStreamFast.exit.i.i132 ], [ %nbBytes.0.i.i141, %if.end11.i.i145 ]
  %bitD.sroa.38.4.i147 = phi i32 [ %and.i.i.i131, %BIT_reloadDStreamFast.exit.i.i132 ], [ %sub.i205.i144, %if.end11.i.i145 ]
  %retval.0.i.i148 = phi i32 [ 0, %BIT_reloadDStreamFast.exit.i.i132 ], [ %result.0.i.i142, %if.end11.i.i145 ]
  %idx.neg.i.i201.pn.i149 = sub i32 0, %shr.i.i200.pn.i146
  %add.ptr.i.i202.sink.i150 = getelementptr i8, ptr %bitD.sroa.95.5796.i125, i32 %idx.neg.i.i201.pn.i149
  %105 = ptrtoint ptr %add.ptr.i.i202.sink.i150 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %add.ptr.i.i202.sink.i150, align 1
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i148)
  %cmp.i151 = icmp eq i32 %retval.0.i.i148, 0
  %cmp4.i152 = icmp ult ptr %op.0801.i122, %add.ptr1.i12
  %and150.i153 = and i1 %cmp4.i152, %cmp.i151
  br i1 %and150.i153, label %for.body.i162, label %BIT_reloadDStream.exit.i154.for.end.i223_crit_edge

BIT_reloadDStream.exit.i154.for.end.i223_crit_edge: ; preds = %BIT_reloadDStream.exit.i154
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i223

for.body.i162:                                    ; preds = %BIT_reloadDStream.exit.i154
  %arrayidx.i229.i155 = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i87, i32 %state1.sroa.0.0797.i124
  %108 = ptrtoint ptr %arrayidx.i229.i155 to i32
  call void @__asan_load2_noabort(i32 %108)
  %DInfo.sroa.0.0.copyload.i230.i156 = load i16, ptr %arrayidx.i229.i155, align 2
  %DInfo.sroa.5.0.arrayidx.sroa_idx.i231.i157 = getelementptr inbounds i8, ptr %arrayidx.i229.i155, i32 2
  %109 = ptrtoint ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i231.i157 to i32
  call void @__asan_load1_noabort(i32 %109)
  %DInfo.sroa.5.0.copyload.i232.i158 = load i8, ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i231.i157, align 2
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i233.i159 = getelementptr inbounds i8, ptr %arrayidx.i229.i155, i32 3
  %110 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i233.i159 to i32
  call void @__asan_load1_noabort(i32 %110)
  %DInfo.sroa.7.0.copyload.i234.i160 = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i233.i159, align 1
  %conv.i235.i161 = zext i8 %DInfo.sroa.7.0.copyload.i234.i160 to i32
  %111 = add i32 %bitD.sroa.38.4.i147, %conv.i235.i161
  %sub1.i.i.i237.i = sub i32 0, %111
  %and.i.i.i.i238.i = and i32 %sub1.i.i.i237.i, 31
  %shr.i.i.i.i239.i = lshr i32 %107, %and.i.i.i.i238.i
  %arrayidx.i.i.i.i240.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %conv.i235.i161
  %112 = ptrtoint ptr %arrayidx.i.i.i.i240.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx.i.i.i.i240.i, align 4
  %and1.i.i.i.i241.i = and i32 %shr.i.i.i.i239.i, %113
  %conv3.i242.i = zext i16 %DInfo.sroa.0.0.copyload.i230.i156 to i32
  %add.i243.i = add i32 %and1.i.i.i.i241.i, %conv3.i242.i
  %114 = ptrtoint ptr %op.0801.i122 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %DInfo.sroa.5.0.copyload.i232.i158, ptr %op.0801.i122, align 1
  %arrayidx.i245.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i87, i32 %state2.sroa.0.0799.i123
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i249.i = getelementptr inbounds i8, ptr %arrayidx.i245.i, i32 3
  %115 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i249.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %DInfo.sroa.7.0.copyload.i250.i = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i249.i, align 1
  %conv.i251.i = zext i8 %DInfo.sroa.7.0.copyload.i250.i to i32
  %116 = add i32 %111, %conv.i251.i
  %sub1.i.i.i253.i = sub i32 0, %116
  %and.i.i.i.i254.i = and i32 %sub1.i.i.i253.i, 31
  %shr.i.i.i.i255.i = lshr i32 %107, %and.i.i.i.i254.i
  %arrayidx.i.i.i.i256.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %conv.i251.i
  %117 = ptrtoint ptr %arrayidx.i.i.i.i256.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx.i.i.i.i256.i, align 4
  %and1.i.i.i.i257.i = and i32 %shr.i.i.i.i255.i, %118
  %119 = ptrtoint ptr %arrayidx.i245.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %DInfo.sroa.0.0.copyload.i246.sink.i163 = load i16, ptr %arrayidx.i245.i, align 2
  %conv3.i258.i164 = zext i16 %DInfo.sroa.0.0.copyload.i246.sink.i163 to i32
  %add.i259.i165 = add i32 %and1.i.i.i.i257.i, %conv3.i258.i164
  %cond21.in.in.i166 = getelementptr inbounds i8, ptr %arrayidx.i245.i, i32 2
  %120 = ptrtoint ptr %cond21.in.in.i166 to i32
  call void @__asan_load1_noabort(i32 %120)
  %cond21.in.i167 = load i8, ptr %cond21.in.in.i166, align 2
  %arrayidx23.i168 = getelementptr i8, ptr %op.0801.i122, i32 1
  %121 = ptrtoint ptr %arrayidx23.i168 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %cond21.in.i167, ptr %arrayidx23.i168, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %116)
  %cmp.i261.i169 = icmp ugt i32 %116, 32
  br i1 %cmp.i261.i169, label %for.body.i162.if.then27.i195_crit_edge, label %if.end.i265.i171

for.body.i162.if.then27.i195_crit_edge:           ; preds = %for.body.i162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27.i195

if.end.i265.i171:                                 ; preds = %for.body.i162
  %cmp1.not.i264.i170 = icmp ult ptr %add.ptr.i.i202.sink.i150, %add.ptr.i.i14
  br i1 %cmp1.not.i264.i170, label %if.end3.i273.i178, label %BIT_reloadDStream.exit292.thread725.i176

BIT_reloadDStream.exit292.thread725.i176:         ; preds = %if.end.i265.i171
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i266.i172 = lshr i32 %116, 3
  %idx.neg.i.i267.i173 = sub nsw i32 0, %shr.i.i266.i172
  %add.ptr.i.i268.i174 = getelementptr i8, ptr %add.ptr.i.i202.sink.i150, i32 %idx.neg.i.i267.i173
  %and.i.i269.i175 = and i32 %116, 7
  %122 = ptrtoint ptr %add.ptr.i.i268.i174 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %add.ptr.i.i268.i174, align 1
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #9
  br label %if.end29.i206

if.end3.i273.i178:                                ; preds = %if.end.i265.i171
  %cmp5.i272.i177 = icmp eq ptr %add.ptr.i.i202.sink.i150, %cSrc
  br i1 %cmp5.i272.i177, label %if.end3.i273.i178.if.then27.i195_crit_edge, label %BIT_reloadDStream.exit292.i190

if.end3.i273.i178.if.then27.i195_crit_edge:       ; preds = %if.end3.i273.i178
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27.i195

BIT_reloadDStream.exit292.i190:                   ; preds = %if.end3.i273.i178
  %shr.i277.i179 = lshr i32 %116, 3
  %idx.neg.i278.i180 = sub nsw i32 0, %shr.i277.i179
  %add.ptr.i279.i181 = getelementptr i8, ptr %add.ptr.i.i202.sink.i150, i32 %idx.neg.i278.i180
  %cmp15.i280.i182 = icmp ult ptr %add.ptr.i279.i181, %cSrc
  %sub.ptr.lhs.cast.i281.i183 = ptrtoint ptr %add.ptr.i.i202.sink.i150 to i32
  %sub.ptr.sub.i283.i184 = sub i32 %sub.ptr.lhs.cast.i281.i183, %sub.ptr.rhs.cast.i.i120
  %nbBytes.0.i284.i185 = select i1 %cmp15.i280.i182, i32 %sub.ptr.sub.i283.i184, i32 %shr.i277.i179
  %idx.neg21.i286.i186 = sub i32 0, %nbBytes.0.i284.i185
  %add.ptr22.i287.i187 = getelementptr i8, ptr %add.ptr.i.i202.sink.i150, i32 %idx.neg21.i286.i186
  %mul.neg.i288.i188 = mul i32 %nbBytes.0.i284.i185, -8
  %sub.i289.i189 = add i32 %mul.neg.i288.i188, %116
  %125 = ptrtoint ptr %add.ptr22.i287.i187 to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %add.ptr22.i287.i187, align 1
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #9
  br i1 %cmp15.i280.i182, label %BIT_reloadDStream.exit292.i190.if.then27.i195_crit_edge, label %BIT_reloadDStream.exit292.i190.if.end29.i206_crit_edge

BIT_reloadDStream.exit292.i190.if.end29.i206_crit_edge: ; preds = %BIT_reloadDStream.exit292.i190
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i206

BIT_reloadDStream.exit292.i190.if.then27.i195_crit_edge: ; preds = %BIT_reloadDStream.exit292.i190
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27.i195

if.then27.i195:                                   ; preds = %BIT_reloadDStream.exit292.i190.if.then27.i195_crit_edge, %if.end3.i273.i178.if.then27.i195_crit_edge, %for.body.i162.if.then27.i195_crit_edge
  %bitD.sroa.95.7724.i191 = phi ptr [ %add.ptr22.i287.i187, %BIT_reloadDStream.exit292.i190.if.then27.i195_crit_edge ], [ %add.ptr.i.i202.sink.i150, %for.body.i162.if.then27.i195_crit_edge ], [ %cSrc, %if.end3.i273.i178.if.then27.i195_crit_edge ]
  %bitD.sroa.38.6723.i192 = phi i32 [ %sub.i289.i189, %BIT_reloadDStream.exit292.i190.if.then27.i195_crit_edge ], [ %116, %for.body.i162.if.then27.i195_crit_edge ], [ %116, %if.end3.i273.i178.if.then27.i195_crit_edge ]
  %bitD.sroa.0.7722.i193 = phi i32 [ %127, %BIT_reloadDStream.exit292.i190.if.then27.i195_crit_edge ], [ %107, %for.body.i162.if.then27.i195_crit_edge ], [ %107, %if.end3.i273.i178.if.then27.i195_crit_edge ]
  %add.ptr28.i194 = getelementptr i8, ptr %op.0801.i122, i32 2
  br label %for.end.i223

if.end29.i206:                                    ; preds = %BIT_reloadDStream.exit292.i190.if.end29.i206_crit_edge, %BIT_reloadDStream.exit292.thread725.i176
  %bitD.sroa.95.7733.i196 = phi ptr [ %add.ptr.i.i268.i174, %BIT_reloadDStream.exit292.thread725.i176 ], [ %add.ptr22.i287.i187, %BIT_reloadDStream.exit292.i190.if.end29.i206_crit_edge ]
  %bitD.sroa.38.6732.i197 = phi i32 [ %and.i.i269.i175, %BIT_reloadDStream.exit292.thread725.i176 ], [ %sub.i289.i189, %BIT_reloadDStream.exit292.i190.if.end29.i206_crit_edge ]
  %bitD.sroa.0.7731.i198 = phi i32 [ %124, %BIT_reloadDStream.exit292.thread725.i176 ], [ %127, %BIT_reloadDStream.exit292.i190.if.end29.i206_crit_edge ]
  %arrayidx.i328.i199 = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i87, i32 %add.i243.i
  %128 = ptrtoint ptr %arrayidx.i328.i199 to i32
  call void @__asan_load2_noabort(i32 %128)
  %DInfo.sroa.0.0.copyload.i329.i200 = load i16, ptr %arrayidx.i328.i199, align 2
  %DInfo.sroa.5.0.arrayidx.sroa_idx.i330.i201 = getelementptr inbounds i8, ptr %arrayidx.i328.i199, i32 2
  %129 = ptrtoint ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i330.i201 to i32
  call void @__asan_load1_noabort(i32 %129)
  %DInfo.sroa.5.0.copyload.i331.i202 = load i8, ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i330.i201, align 2
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i332.i203 = getelementptr inbounds i8, ptr %arrayidx.i328.i199, i32 3
  %130 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i332.i203 to i32
  call void @__asan_load1_noabort(i32 %130)
  %DInfo.sroa.7.0.copyload.i333.i204 = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i332.i203, align 1
  %conv.i334.i205 = zext i8 %DInfo.sroa.7.0.copyload.i333.i204 to i32
  %131 = add i32 %bitD.sroa.38.6732.i197, %conv.i334.i205
  %sub1.i.i.i336.i = sub i32 0, %131
  %and.i.i.i.i337.i = and i32 %sub1.i.i.i336.i, 31
  %shr.i.i.i.i338.i = lshr i32 %bitD.sroa.0.7731.i198, %and.i.i.i.i337.i
  %arrayidx.i.i.i.i339.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %conv.i334.i205
  %132 = ptrtoint ptr %arrayidx.i.i.i.i339.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx.i.i.i.i339.i, align 4
  %and1.i.i.i.i340.i = and i32 %shr.i.i.i.i338.i, %133
  %conv3.i341.i = zext i16 %DInfo.sroa.0.0.copyload.i329.i200 to i32
  %add.i342.i = add i32 %and1.i.i.i.i340.i, %conv3.i341.i
  %arrayidx40.c.i = getelementptr i8, ptr %op.0801.i122, i32 2
  %134 = ptrtoint ptr %arrayidx40.c.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %DInfo.sroa.5.0.copyload.i331.i202, ptr %arrayidx40.c.i, align 1
  %arrayidx.i344.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i87, i32 %add.i259.i165
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i348.i = getelementptr inbounds i8, ptr %arrayidx.i344.i, i32 3
  %135 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i348.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %DInfo.sroa.7.0.copyload.i349.i = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i348.i, align 1
  %conv.i350.i = zext i8 %DInfo.sroa.7.0.copyload.i349.i to i32
  %136 = add i32 %131, %conv.i350.i
  %sub1.i.i.i352.i = sub i32 0, %136
  %and.i.i.i.i353.i = and i32 %sub1.i.i.i352.i, 31
  %shr.i.i.i.i354.i = lshr i32 %bitD.sroa.0.7731.i198, %and.i.i.i.i353.i
  %arrayidx.i.i.i.i355.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %conv.i350.i
  %137 = ptrtoint ptr %arrayidx.i.i.i.i355.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx.i.i.i.i355.i, align 4
  %and1.i.i.i.i356.i = and i32 %shr.i.i.i.i354.i, %138
  %139 = ptrtoint ptr %arrayidx.i344.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %DInfo.sroa.0.0.copyload.i345.sink.i207 = load i16, ptr %arrayidx.i344.i, align 2
  %conv3.i357.i208 = zext i16 %DInfo.sroa.0.0.copyload.i345.sink.i207 to i32
  %add.i358.i209 = add i32 %and1.i.i.i.i356.i, %conv3.i357.i208
  %cond49.in.in.i210 = getelementptr inbounds i8, ptr %arrayidx.i344.i, i32 2
  %140 = ptrtoint ptr %cond49.in.in.i210 to i32
  call void @__asan_load1_noabort(i32 %140)
  %cond49.in.i211 = load i8, ptr %cond49.in.in.i210, align 2
  %arrayidx51.i212 = getelementptr i8, ptr %op.0801.i122, i32 3
  %141 = ptrtoint ptr %arrayidx51.i212 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %cond49.in.i211, ptr %arrayidx51.i212, align 1
  %add.ptr52.i213 = getelementptr i8, ptr %op.0801.i122, i32 4
  %cmp.i196.i214 = icmp ugt i32 %136, 32
  br i1 %cmp.i196.i214, label %if.end29.i206.for.end.i223_crit_edge, label %if.end29.i206.if.end.i199.i129_crit_edge

if.end29.i206.if.end.i199.i129_crit_edge:         ; preds = %if.end29.i206
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i199.i129

if.end29.i206.for.end.i223_crit_edge:             ; preds = %if.end29.i206
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i223

for.end.i223:                                     ; preds = %if.end29.i206.for.end.i223_crit_edge, %if.then27.i195, %BIT_reloadDStream.exit.i154.for.end.i223_crit_edge, %if.end3.i.i134.for.end.i223_crit_edge, %FSE_initDState.exit194.i116.for.end.i223_crit_edge, %FSE_initDState.exit.i93.for.end.i223_crit_edge
  %bitD.sroa.0.8.i215 = phi i32 [ %bitD.sroa.0.7722.i193, %if.then27.i195 ], [ %104, %FSE_initDState.exit194.i116.for.end.i223_crit_edge ], [ %bitD.sroa.0.3.i84, %FSE_initDState.exit.i93.for.end.i223_crit_edge ], [ %bitD.sroa.0.5794.i127, %if.end3.i.i134.for.end.i223_crit_edge ], [ %bitD.sroa.0.7731.i198, %if.end29.i206.for.end.i223_crit_edge ], [ %107, %BIT_reloadDStream.exit.i154.for.end.i223_crit_edge ]
  %bitD.sroa.38.8.i216 = phi i32 [ %bitD.sroa.38.6723.i192, %if.then27.i195 ], [ %sub.i.i187.i112, %FSE_initDState.exit194.i116.for.end.i223_crit_edge ], [ %98, %FSE_initDState.exit.i93.for.end.i223_crit_edge ], [ %bitD.sroa.38.3795.i126, %if.end3.i.i134.for.end.i223_crit_edge ], [ %136, %if.end29.i206.for.end.i223_crit_edge ], [ %bitD.sroa.38.4.i147, %BIT_reloadDStream.exit.i154.for.end.i223_crit_edge ]
  %bitD.sroa.95.8.i217 = phi ptr [ %bitD.sroa.95.7724.i191, %if.then27.i195 ], [ %bitD.sroa.95.3.i114, %FSE_initDState.exit194.i116.for.end.i223_crit_edge ], [ %bitD.sroa.95.2.i86, %FSE_initDState.exit.i93.for.end.i223_crit_edge ], [ %cSrc, %if.end3.i.i134.for.end.i223_crit_edge ], [ %bitD.sroa.95.7733.i196, %if.end29.i206.for.end.i223_crit_edge ], [ %add.ptr.i.i202.sink.i150, %BIT_reloadDStream.exit.i154.for.end.i223_crit_edge ]
  %state1.sroa.0.3.i218 = phi i32 [ %add.i243.i, %if.then27.i195 ], [ %and1.i.i.i.i.i58, %FSE_initDState.exit194.i116.for.end.i223_crit_edge ], [ %and1.i.i.i.i.i58, %FSE_initDState.exit.i93.for.end.i223_crit_edge ], [ %state1.sroa.0.0797.i124, %if.end3.i.i134.for.end.i223_crit_edge ], [ %add.i342.i, %if.end29.i206.for.end.i223_crit_edge ], [ %state1.sroa.0.0797.i124, %BIT_reloadDStream.exit.i154.for.end.i223_crit_edge ]
  %state2.sroa.0.3.i219 = phi i32 [ %add.i259.i165, %if.then27.i195 ], [ %and1.i.i.i.i162.i91, %FSE_initDState.exit194.i116.for.end.i223_crit_edge ], [ %and1.i.i.i.i162.i91, %FSE_initDState.exit.i93.for.end.i223_crit_edge ], [ %state2.sroa.0.0799.i123, %if.end3.i.i134.for.end.i223_crit_edge ], [ %add.i358.i209, %if.end29.i206.for.end.i223_crit_edge ], [ %state2.sroa.0.0799.i123, %BIT_reloadDStream.exit.i154.for.end.i223_crit_edge ]
  %op.1.i220 = phi ptr [ %add.ptr28.i194, %if.then27.i195 ], [ %dst, %FSE_initDState.exit194.i116.for.end.i223_crit_edge ], [ %dst, %FSE_initDState.exit.i93.for.end.i223_crit_edge ], [ %op.0801.i122, %if.end3.i.i134.for.end.i223_crit_edge ], [ %add.ptr52.i213, %if.end29.i206.for.end.i223_crit_edge ], [ %op.0801.i122, %BIT_reloadDStream.exit.i154.for.end.i223_crit_edge ]
  %add.ptr53.i221 = getelementptr i8, ptr %add.ptr.i11, i32 -2
  %cmp54822.i222 = icmp ugt ptr %op.1.i220, %add.ptr53.i221
  br i1 %cmp54822.i222, label %for.end.i223.cleanup_crit_edge, label %if.end57.lr.ph.i225

for.end.i223.cleanup_crit_edge:                   ; preds = %for.end.i223
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end57.lr.ph.i225:                              ; preds = %for.end.i223
  %sub.ptr.rhs.cast.i414.i224 = ptrtoint ptr %cSrc to i32
  br label %if.end57.i239

if.end57.i239:                                    ; preds = %BIT_reloadDStream.exit523.i306.if.end57.i239_crit_edge, %if.end57.lr.ph.i225
  %op.2829.i226 = phi ptr [ %op.1.i220, %if.end57.lr.ph.i225 ], [ %incdec.ptr99.i, %BIT_reloadDStream.exit523.i306.if.end57.i239_crit_edge ]
  %state2.sroa.0.4827.i227 = phi i32 [ %state2.sroa.0.3.i219, %if.end57.lr.ph.i225 ], [ %add.i490.i, %BIT_reloadDStream.exit523.i306.if.end57.i239_crit_edge ]
  %state1.sroa.0.4826.i228 = phi i32 [ %state1.sroa.0.3.i218, %if.end57.lr.ph.i225 ], [ %add.i391.i, %BIT_reloadDStream.exit523.i306.if.end57.i239_crit_edge ]
  %bitD.sroa.95.9825.i229 = phi ptr [ %bitD.sroa.95.8.i217, %if.end57.lr.ph.i225 ], [ %bitD.sroa.95.11.i304, %BIT_reloadDStream.exit523.i306.if.end57.i239_crit_edge ]
  %bitD.sroa.38.9824.i230 = phi i32 [ %bitD.sroa.38.8.i216, %if.end57.lr.ph.i225 ], [ %bitD.sroa.38.13.i303, %BIT_reloadDStream.exit523.i306.if.end57.i239_crit_edge ]
  %bitD.sroa.0.9823.i231 = phi i32 [ %bitD.sroa.0.8.i215, %if.end57.lr.ph.i225 ], [ %bitD.sroa.0.11.i302, %BIT_reloadDStream.exit523.i306.if.end57.i239_crit_edge ]
  %arrayidx.i377.i232 = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i87, i32 %state1.sroa.0.4826.i228
  %142 = ptrtoint ptr %arrayidx.i377.i232 to i32
  call void @__asan_load2_noabort(i32 %142)
  %DInfo.sroa.0.0.copyload.i378.i233 = load i16, ptr %arrayidx.i377.i232, align 2
  %DInfo.sroa.5.0.arrayidx.sroa_idx.i379.i234 = getelementptr inbounds i8, ptr %arrayidx.i377.i232, i32 2
  %143 = ptrtoint ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i379.i234 to i32
  call void @__asan_load1_noabort(i32 %143)
  %DInfo.sroa.5.0.copyload.i380.i235 = load i8, ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i379.i234, align 2
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i381.i236 = getelementptr inbounds i8, ptr %arrayidx.i377.i232, i32 3
  %144 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i381.i236 to i32
  call void @__asan_load1_noabort(i32 %144)
  %DInfo.sroa.7.0.copyload.i382.i237 = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i381.i236, align 1
  %conv.i383.i238 = zext i8 %DInfo.sroa.7.0.copyload.i382.i237 to i32
  %145 = add i32 %bitD.sroa.38.9824.i230, %conv.i383.i238
  %sub1.i.i.i385.i = sub i32 0, %145
  %and.i.i.i.i386.i = and i32 %sub1.i.i.i385.i, 31
  %shr.i.i.i.i387.i = lshr i32 %bitD.sroa.0.9823.i231, %and.i.i.i.i386.i
  %arrayidx.i.i.i.i388.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %conv.i383.i238
  %146 = ptrtoint ptr %arrayidx.i.i.i.i388.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx.i.i.i.i388.i, align 4
  %and1.i.i.i.i389.i = and i32 %shr.i.i.i.i387.i, %147
  %conv3.i390.i = zext i16 %DInfo.sroa.0.0.copyload.i378.i233 to i32
  %add.i391.i = add i32 %and1.i.i.i.i389.i, %conv3.i390.i
  %incdec.ptr.i = getelementptr i8, ptr %op.2829.i226, i32 1
  %148 = ptrtoint ptr %op.2829.i226 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %DInfo.sroa.5.0.copyload.i380.i235, ptr %op.2829.i226, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %145)
  %cmp.i393.i = icmp ugt i32 %145, 32
  br i1 %cmp.i393.i, label %if.end57.i239.while.end.i316_crit_edge, label %if.end.i397.i241

if.end57.i239.while.end.i316_crit_edge:           ; preds = %if.end57.i239
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i316

if.end.i397.i241:                                 ; preds = %if.end57.i239
  %cmp1.not.i396.i240 = icmp ult ptr %bitD.sroa.95.9825.i229, %add.ptr.i.i14
  br i1 %cmp1.not.i396.i240, label %if.end3.i405.i246, label %BIT_reloadDStreamFast.exit.i402.i244

BIT_reloadDStreamFast.exit.i402.i244:             ; preds = %if.end.i397.i241
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i398.i242 = lshr i32 %145, 3
  %and.i.i401.i243 = and i32 %145, 7
  br label %if.end83.sink.split.i266

if.end3.i405.i246:                                ; preds = %if.end.i397.i241
  %cmp5.i404.i245 = icmp eq ptr %bitD.sroa.95.9825.i229, %cSrc
  br i1 %cmp5.i404.i245, label %if.end3.i405.i246.if.end83.i271_crit_edge, label %if.end11.i422.i256

if.end3.i405.i246.if.end83.i271_crit_edge:        ; preds = %if.end3.i405.i246
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i271

if.end11.i422.i256:                               ; preds = %if.end3.i405.i246
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i409.i247 = lshr i32 %145, 3
  %idx.neg.i410.i248 = sub nsw i32 0, %shr.i409.i247
  %add.ptr.i411.i249 = getelementptr i8, ptr %bitD.sroa.95.9825.i229, i32 %idx.neg.i410.i248
  %cmp15.i412.i250 = icmp ult ptr %add.ptr.i411.i249, %cSrc
  %sub.ptr.lhs.cast.i413.i251 = ptrtoint ptr %bitD.sroa.95.9825.i229 to i32
  %sub.ptr.sub.i415.i252 = sub i32 %sub.ptr.lhs.cast.i413.i251, %sub.ptr.rhs.cast.i414.i224
  %nbBytes.0.i416.i253 = select i1 %cmp15.i412.i250, i32 %sub.ptr.sub.i415.i252, i32 %shr.i409.i247
  %mul.neg.i420.i254 = mul i32 %nbBytes.0.i416.i253, -8
  %sub.i421.i255 = add i32 %mul.neg.i420.i254, %145
  br label %if.end83.sink.split.i266

if.end83.sink.split.i266:                         ; preds = %if.end11.i422.i256, %BIT_reloadDStreamFast.exit.i402.i244
  %shr.i.i398.pn.i262 = phi i32 [ %shr.i.i398.i242, %BIT_reloadDStreamFast.exit.i402.i244 ], [ %nbBytes.0.i416.i253, %if.end11.i422.i256 ]
  %bitD.sroa.38.11.ph.ph.i263 = phi i32 [ %and.i.i401.i243, %BIT_reloadDStreamFast.exit.i402.i244 ], [ %sub.i421.i255, %if.end11.i422.i256 ]
  %idx.neg.i.i399.pn.i264 = sub i32 0, %shr.i.i398.pn.i262
  %add.ptr.i.i400.sink.i265 = getelementptr i8, ptr %bitD.sroa.95.9825.i229, i32 %idx.neg.i.i399.pn.i264
  %149 = ptrtoint ptr %add.ptr.i.i400.sink.i265 to i32
  call void @__asan_loadN_noabort(i32 %149, i32 4)
  %150 = load i32, ptr %add.ptr.i.i400.sink.i265, align 1
  %151 = tail call i32 @llvm.bswap.i32(i32 %150) #9
  br label %if.end83.i271

if.end83.i271:                                    ; preds = %if.end83.sink.split.i266, %if.end3.i405.i246.if.end83.i271_crit_edge
  %bitD.sroa.0.10.ph.i267 = phi i32 [ %bitD.sroa.0.9823.i231, %if.end3.i405.i246.if.end83.i271_crit_edge ], [ %151, %if.end83.sink.split.i266 ]
  %bitD.sroa.38.11.ph.i268 = phi i32 [ %145, %if.end3.i405.i246.if.end83.i271_crit_edge ], [ %bitD.sroa.38.11.ph.ph.i263, %if.end83.sink.split.i266 ]
  %bitD.sroa.95.10.ph.i269 = phi ptr [ %cSrc, %if.end3.i405.i246.if.end83.i271_crit_edge ], [ %add.ptr.i.i400.sink.i265, %if.end83.sink.split.i266 ]
  %cmp85.i270 = icmp ugt ptr %incdec.ptr.i, %add.ptr53.i221
  br i1 %cmp85.i270, label %if.end83.i271.cleanup_crit_edge, label %if.end88.i279

if.end83.i271.cleanup_crit_edge:                  ; preds = %if.end83.i271
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end88.i279:                                    ; preds = %if.end83.i271
  %arrayidx.i476.i272 = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i87, i32 %state2.sroa.0.4827.i227
  %152 = ptrtoint ptr %arrayidx.i476.i272 to i32
  call void @__asan_load2_noabort(i32 %152)
  %DInfo.sroa.0.0.copyload.i477.i273 = load i16, ptr %arrayidx.i476.i272, align 2
  %DInfo.sroa.5.0.arrayidx.sroa_idx.i478.i274 = getelementptr inbounds i8, ptr %arrayidx.i476.i272, i32 2
  %153 = ptrtoint ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i478.i274 to i32
  call void @__asan_load1_noabort(i32 %153)
  %DInfo.sroa.5.0.copyload.i479.i275 = load i8, ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i478.i274, align 2
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i480.i276 = getelementptr inbounds i8, ptr %arrayidx.i476.i272, i32 3
  %154 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i480.i276 to i32
  call void @__asan_load1_noabort(i32 %154)
  %DInfo.sroa.7.0.copyload.i481.i277 = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i480.i276, align 1
  %conv.i482.i278 = zext i8 %DInfo.sroa.7.0.copyload.i481.i277 to i32
  %155 = add i32 %bitD.sroa.38.11.ph.i268, %conv.i482.i278
  %sub1.i.i.i484.i = sub i32 0, %155
  %and.i.i.i.i485.i = and i32 %sub1.i.i.i484.i, 31
  %shr.i.i.i.i486.i = lshr i32 %bitD.sroa.0.10.ph.i267, %and.i.i.i.i485.i
  %arrayidx.i.i.i.i487.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %conv.i482.i278
  %156 = ptrtoint ptr %arrayidx.i.i.i.i487.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx.i.i.i.i487.i, align 4
  %and1.i.i.i.i488.i = and i32 %shr.i.i.i.i486.i, %157
  %conv3.i489.i = zext i16 %DInfo.sroa.0.0.copyload.i477.i273 to i32
  %add.i490.i = add i32 %and1.i.i.i.i488.i, %conv3.i489.i
  %incdec.ptr99.i = getelementptr i8, ptr %op.2829.i226, i32 2
  %158 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %DInfo.sroa.5.0.copyload.i479.i275, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %155)
  %cmp.i492.i = icmp ugt i32 %155, 32
  br i1 %cmp.i492.i, label %if.end88.i279.while.end.i316_crit_edge, label %if.end.i496.i281

if.end88.i279.while.end.i316_crit_edge:           ; preds = %if.end88.i279
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i316

if.end.i496.i281:                                 ; preds = %if.end88.i279
  %cmp1.not.i495.i280 = icmp ult ptr %bitD.sroa.95.10.ph.i269, %add.ptr.i.i14
  br i1 %cmp1.not.i495.i280, label %if.end3.i504.i286, label %BIT_reloadDStreamFast.exit.i501.i284

BIT_reloadDStreamFast.exit.i501.i284:             ; preds = %if.end.i496.i281
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i497.i282 = lshr i32 %155, 3
  %and.i.i500.i283 = and i32 %155, 7
  br label %BIT_reloadDStream.exit523.sink.split.i301

if.end3.i504.i286:                                ; preds = %if.end.i496.i281
  %cmp5.i503.i285 = icmp eq ptr %bitD.sroa.95.10.ph.i269, %cSrc
  br i1 %cmp5.i503.i285, label %if.end3.i504.i286.BIT_reloadDStream.exit523.i306_crit_edge, label %if.end11.i521.i296

if.end3.i504.i286.BIT_reloadDStream.exit523.i306_crit_edge: ; preds = %if.end3.i504.i286
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit523.i306

if.end11.i521.i296:                               ; preds = %if.end3.i504.i286
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i508.i287 = lshr i32 %155, 3
  %idx.neg.i509.i288 = sub nsw i32 0, %shr.i508.i287
  %add.ptr.i510.i289 = getelementptr i8, ptr %bitD.sroa.95.10.ph.i269, i32 %idx.neg.i509.i288
  %cmp15.i511.i290 = icmp ult ptr %add.ptr.i510.i289, %cSrc
  %sub.ptr.lhs.cast.i512.i291 = ptrtoint ptr %bitD.sroa.95.10.ph.i269 to i32
  %sub.ptr.sub.i514.i292 = sub i32 %sub.ptr.lhs.cast.i512.i291, %sub.ptr.rhs.cast.i414.i224
  %nbBytes.0.i515.i293 = select i1 %cmp15.i511.i290, i32 %sub.ptr.sub.i514.i292, i32 %shr.i508.i287
  %mul.neg.i519.i294 = mul i32 %nbBytes.0.i515.i293, -8
  %sub.i520.i295 = add i32 %mul.neg.i519.i294, %155
  br label %BIT_reloadDStream.exit523.sink.split.i301

BIT_reloadDStream.exit523.sink.split.i301:        ; preds = %if.end11.i521.i296, %BIT_reloadDStreamFast.exit.i501.i284
  %shr.i.i497.pn.i297 = phi i32 [ %shr.i.i497.i282, %BIT_reloadDStreamFast.exit.i501.i284 ], [ %nbBytes.0.i515.i293, %if.end11.i521.i296 ]
  %bitD.sroa.38.13.ph.i298 = phi i32 [ %and.i.i500.i283, %BIT_reloadDStreamFast.exit.i501.i284 ], [ %sub.i520.i295, %if.end11.i521.i296 ]
  %idx.neg.i.i498.pn.i299 = sub i32 0, %shr.i.i497.pn.i297
  %add.ptr.i.i499.sink.i300 = getelementptr i8, ptr %bitD.sroa.95.10.ph.i269, i32 %idx.neg.i.i498.pn.i299
  %159 = ptrtoint ptr %add.ptr.i.i499.sink.i300 to i32
  call void @__asan_loadN_noabort(i32 %159, i32 4)
  %160 = load i32, ptr %add.ptr.i.i499.sink.i300, align 1
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #9
  br label %BIT_reloadDStream.exit523.i306

BIT_reloadDStream.exit523.i306:                   ; preds = %BIT_reloadDStream.exit523.sink.split.i301, %if.end3.i504.i286.BIT_reloadDStream.exit523.i306_crit_edge
  %bitD.sroa.0.11.i302 = phi i32 [ %bitD.sroa.0.10.ph.i267, %if.end3.i504.i286.BIT_reloadDStream.exit523.i306_crit_edge ], [ %161, %BIT_reloadDStream.exit523.sink.split.i301 ]
  %bitD.sroa.38.13.i303 = phi i32 [ %155, %if.end3.i504.i286.BIT_reloadDStream.exit523.i306_crit_edge ], [ %bitD.sroa.38.13.ph.i298, %BIT_reloadDStream.exit523.sink.split.i301 ]
  %bitD.sroa.95.11.i304 = phi ptr [ %cSrc, %if.end3.i504.i286.BIT_reloadDStream.exit523.i306_crit_edge ], [ %add.ptr.i.i499.sink.i300, %BIT_reloadDStream.exit523.sink.split.i301 ]
  %cmp54.i305 = icmp ugt ptr %incdec.ptr99.i, %add.ptr53.i221
  br i1 %cmp54.i305, label %BIT_reloadDStream.exit523.i306.cleanup_crit_edge, label %BIT_reloadDStream.exit523.i306.if.end57.i239_crit_edge

BIT_reloadDStream.exit523.i306.if.end57.i239_crit_edge: ; preds = %BIT_reloadDStream.exit523.i306
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i239

BIT_reloadDStream.exit523.i306.cleanup_crit_edge: ; preds = %BIT_reloadDStream.exit523.i306
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.end.i316:                                   ; preds = %if.end88.i279.while.end.i316_crit_edge, %if.end57.i239.while.end.i316_crit_edge
  %add.i391.i.sink = phi i32 [ %state2.sroa.0.4827.i227, %if.end57.i239.while.end.i316_crit_edge ], [ %add.i391.i, %if.end88.i279.while.end.i316_crit_edge ]
  %.sink395 = phi i32 [ 2, %if.end57.i239.while.end.i316_crit_edge ], [ 3, %if.end88.i279.while.end.i316_crit_edge ]
  %incdec.ptr99.i.sink = phi ptr [ %incdec.ptr.i, %if.end57.i239.while.end.i316_crit_edge ], [ %incdec.ptr99.i, %if.end88.i279.while.end.i316_crit_edge ]
  %arrayidx.i525.pn.i307 = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i87, i32 %add.i391.i.sink
  %cond112.in.in.i308 = getelementptr inbounds i8, ptr %arrayidx.i525.pn.i307, i32 2
  %162 = ptrtoint ptr %cond112.in.in.i308 to i32
  call void @__asan_load1_noabort(i32 %162)
  %cond112.in.i309 = load i8, ptr %cond112.in.in.i308, align 2
  %incdec.ptr114.i310 = getelementptr i8, ptr %op.2829.i226, i32 %.sink395
  %163 = ptrtoint ptr %incdec.ptr99.i.sink to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %cond112.in.i309, ptr %incdec.ptr99.i.sink, align 1
  %sub.ptr.lhs.cast.i313 = ptrtoint ptr %incdec.ptr114.i310 to i32
  %sub.ptr.rhs.cast.i314 = ptrtoint ptr %dst to i32
  %sub.ptr.sub.i315 = sub i32 %sub.ptr.lhs.cast.i313, %sub.ptr.rhs.cast.i314
  br label %cleanup

cleanup:                                          ; preds = %while.end.i316, %BIT_reloadDStream.exit523.i306.cleanup_crit_edge, %if.end83.i271.cleanup_crit_edge, %for.end.i223.cleanup_crit_edge, %BIT_initDStream.exit.i49.cleanup_crit_edge, %sw.epilog.i.i38.cleanup_crit_edge, %if.then3.i.i20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %while.end.i, %BIT_reloadDStream.exit523.i.cleanup_crit_edge, %if.end83.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %BIT_initDStream.exit.i.cleanup_crit_edge, %sw.epilog.i.i.cleanup_crit_edge, %if.then3.i.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.sub.i, %while.end.i ], [ %cSrcSize, %BIT_initDStream.exit.i.cleanup_crit_edge ], [ -20, %sw.epilog.i.i.cleanup_crit_edge ], [ -1, %if.then3.i.i.cleanup_crit_edge ], [ -72, %if.then.cleanup_crit_edge ], [ -70, %for.end.i.cleanup_crit_edge ], [ %sub.ptr.sub.i315, %while.end.i316 ], [ %cSrcSize, %BIT_initDStream.exit.i49.cleanup_crit_edge ], [ -20, %sw.epilog.i.i38.cleanup_crit_edge ], [ -1, %if.then3.i.i20.cleanup_crit_edge ], [ -72, %if.end.cleanup_crit_edge ], [ -70, %for.end.i223.cleanup_crit_edge ], [ -70, %if.end83.i271.cleanup_crit_edge ], [ -70, %BIT_reloadDStream.exit523.i306.cleanup_crit_edge ], [ -70, %if.end83.i.cleanup_crit_edge ], [ -70, %BIT_reloadDStream.exit523.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @FSE_decompress_wksp(ptr noundef %dst, i32 noundef %dstCapacity, ptr noundef %cSrc, i32 noundef %cSrcSize, i32 noundef %maxLog, ptr noundef %workSpace, i32 noundef %wkspSize) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @FSE_decompress_wksp_bmi2(ptr noundef %dst, i32 noundef %dstCapacity, ptr noundef %cSrc, i32 noundef %cSrcSize, i32 noundef %maxLog, ptr noundef %workSpace, i32 noundef %wkspSize, i32 undef)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @FSE_decompress_wksp_bmi2(ptr noundef %dst, i32 noundef %dstCapacity, ptr noundef %cSrc, i32 noundef %cSrcSize, i32 noundef %maxLog, ptr noundef %workSpace, i32 noundef %wkspSize, i32 %bmi2) local_unnamed_addr #6 align 64 {
entry:
  %tableLog.i.i = alloca i32, align 4
  %maxSymbolValue.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tableLog.i.i) #9
  %0 = ptrtoint ptr %tableLog.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tableLog.i.i, align 4, !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maxSymbolValue.i.i) #9
  %1 = ptrtoint ptr %maxSymbolValue.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 255, ptr %maxSymbolValue.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 516, i32 %wkspSize)
  %cmp.i.i = icmp ult i32 %wkspSize, 516
  br i1 %cmp.i.i, label %entry.FSE_decompress_wksp_body_default.exit_crit_edge, label %if.end.i.i

entry.FSE_decompress_wksp_body_default.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_decompress_wksp_body_default.exit

if.end.i.i:                                       ; preds = %entry
  %call.i.i = call i32 @FSE_readNCount_bmi2(ptr noundef %workSpace, ptr noundef nonnull %maxSymbolValue.i.i, ptr noundef nonnull %tableLog.i.i, ptr noundef %cSrc, i32 noundef %cSrcSize, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call.i.i)
  %cmp.i312.i.i = icmp ult i32 %call.i.i, -119
  br i1 %cmp.i312.i.i, label %if.end3.i.i, label %if.end.i.i.FSE_decompress_wksp_body_default.exit_crit_edge

if.end.i.i.FSE_decompress_wksp_body_default.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_decompress_wksp_body_default.exit

if.end3.i.i:                                      ; preds = %if.end.i.i
  %2 = ptrtoint ptr %tableLog.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tableLog.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %maxLog)
  %cmp4.i.i = icmp ugt i32 %3, %maxLog
  br i1 %cmp4.i.i, label %if.end3.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, label %cleanup.cont.i.i

if.end3.i.i.FSE_decompress_wksp_body_default.exit_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_decompress_wksp_body_default.exit

cleanup.cont.i.i:                                 ; preds = %if.end3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %cSrc, i32 %call.i.i
  %sub.i.i = sub i32 %cSrcSize, %call.i.i
  %shl.i.i = shl nuw i32 1, %3
  %add.i.i = add nuw i32 %shl.i.i, 1
  %conv.i.i = sext i32 %add.i.i to i64
  %4 = ptrtoint ptr %maxSymbolValue.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxSymbolValue.i.i, align 4
  %add7.i.i = shl i32 %5, 1
  %mul.i.i = add i32 %add7.i.i, 2
  %conv8.i.i = zext i32 %mul.i.i to i64
  %sh_prom.i.i = zext i32 %3 to i64
  %shl9.i.i = shl nuw i64 1, %sh_prom.i.i
  %add142.i.i = shl nsw i64 %conv.i.i, 2
  %sub13.i.i = add nuw i64 %shl9.i.i, 527
  %div13.i.i = add i64 %sub13.i.i, %add142.i.i
  %6 = add i64 %div13.i.i, %conv8.i.i
  %mul17.i.i = and i64 %6, -4
  %conv18.i.i = zext i32 %wkspSize to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul17.i.i, i64 %conv18.i.i)
  %cmp19.i.i = icmp ugt i64 %mul17.i.i, %conv18.i.i
  br i1 %cmp19.i.i, label %cleanup.cont.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, label %if.end22.i.i

cleanup.cont.i.i.FSE_decompress_wksp_body_default.exit_crit_edge: ; preds = %cleanup.cont.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_decompress_wksp_body_default.exit

if.end22.i.i:                                     ; preds = %cleanup.cont.i.i
  %dtable.i.i = getelementptr inbounds %struct.FSE_DecompressWksp, ptr %workSpace, i32 0, i32 1
  %add.ptr26.i.i = getelementptr i32, ptr %dtable.i.i, i32 %add.i.i
  %mul29.neg.i.i = mul i32 %add.i.i, -4
  %add30.neg.i.i = add i32 %wkspSize, -516
  %sub31.i.i = add i32 %add30.neg.i.i, %mul29.neg.i.i
  %call36.i.i = call fastcc i32 @FSE_buildDTable_internal(ptr noundef %dtable.i.i, ptr noundef %workSpace, i32 noundef %5, i32 noundef %3, ptr noundef %add.ptr26.i.i, i32 noundef %sub31.i.i) #9, !range !13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call36.i.i)
  %cmp.i313.i.i = icmp ult i32 %call36.i.i, -119
  br i1 %cmp.i313.i.i, label %cleanup.cont43.i.i, label %if.end22.i.i.FSE_decompress_wksp_body_default.exit_crit_edge

if.end22.i.i.FSE_decompress_wksp_body_default.exit_crit_edge: ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_decompress_wksp_body_default.exit

cleanup.cont43.i.i:                               ; preds = %if.end22.i.i
  %fastMode46.i.i = getelementptr inbounds %struct.FSE_DTableHeader, ptr %dtable.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %fastMode46.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %fastMode46.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool48.not.i.i = icmp eq i16 %8, 0
  %add.ptr.i4.i.i = getelementptr i8, ptr %dst, i32 %dstCapacity
  %add.ptr1.i5.i.i = getelementptr i8, ptr %add.ptr.i4.i.i, i32 -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i6.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %tobool48.not.i.i, label %if.end53.i.i, label %if.then49.i.i

if.then49.i.i:                                    ; preds = %cleanup.cont43.i.i
  br i1 %cmp.i.i6.i.i, label %if.then49.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, label %if.end.i.i.i.i

if.then49.i.i.FSE_decompress_wksp_body_default.exit_crit_edge: ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_decompress_wksp_body_default.exit

if.end.i.i.i.i:                                   ; preds = %if.then49.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i)
  %cmp2.i.i.i.i = icmp ugt i32 %sub.i.i, 3
  br i1 %cmp2.i.i.i.i, label %if.then3.i.i.i.i, label %if.else.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %sub.i.i.i.i = add i32 %sub.i.i, -1
  %arrayidx.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %sub.i.i.i.i
  %9 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i.i.i, label %if.then3.i.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, label %BIT_initDStream.exit.i.i.i

if.then3.i.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge: ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_decompress_wksp_body_default.exit

if.else.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr.i.i, align 1
  %conv18.i.i.i.i = zext i8 %12 to i32
  %13 = zext i32 %sub.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %sub.i.i, label %if.else.i.i.i.i.sw.epilog.i.i.i.i_crit_edge [
    i32 2, label %if.else.i.i.i.i.sw.bb47.i.i.i.i_crit_edge
    i32 3, label %sw.bb41.i.i.i.i
  ]

if.else.i.i.i.i.sw.bb47.i.i.i.i_crit_edge:        ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb47.i.i.i.i

if.else.i.i.i.i.sw.epilog.i.i.i.i_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i.i.i

sw.bb41.i.i.i.i:                                  ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx42.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 2
  %14 = ptrtoint ptr %arrayidx42.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx42.i.i.i.i, align 1
  %conv43.i.i.i.i = zext i8 %15 to i32
  %shl44.i.i.i.i = shl nuw nsw i32 %conv43.i.i.i.i, 16
  %add46.i.i.i.i = or i32 %shl44.i.i.i.i, %conv18.i.i.i.i
  br label %sw.bb47.i.i.i.i

sw.bb47.i.i.i.i:                                  ; preds = %sw.bb41.i.i.i.i, %if.else.i.i.i.i.sw.bb47.i.i.i.i_crit_edge
  %bitD.sroa.0.0.i.i.i = phi i32 [ %add46.i.i.i.i, %sw.bb41.i.i.i.i ], [ %conv18.i.i.i.i, %if.else.i.i.i.i.sw.bb47.i.i.i.i_crit_edge ]
  %arrayidx48.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 1
  %16 = ptrtoint ptr %arrayidx48.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx48.i.i.i.i, align 1
  %conv49.i.i.i.i = zext i8 %17 to i32
  %shl50.i.i.i.i = shl nuw nsw i32 %conv49.i.i.i.i, 8
  %add52.i.i.i.i = add nuw nsw i32 %shl50.i.i.i.i, %bitD.sroa.0.0.i.i.i
  br label %sw.epilog.i.i.i.i

sw.epilog.i.i.i.i:                                ; preds = %sw.bb47.i.i.i.i, %if.else.i.i.i.i.sw.epilog.i.i.i.i_crit_edge
  %bitD.sroa.0.1.i.i.i = phi i32 [ %conv18.i.i.i.i, %if.else.i.i.i.i.sw.epilog.i.i.i.i_crit_edge ], [ %add52.i.i.i.i, %sw.bb47.i.i.i.i ]
  %sub54.i.i.i.i = add nsw i32 %sub.i.i, -1
  %arrayidx55.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %sub54.i.i.i.i
  %18 = ptrtoint ptr %arrayidx55.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx55.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool57.not.i.i.i.i = icmp eq i8 %19, 0
  br i1 %tobool57.not.i.i.i.i, label %sw.epilog.i.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, label %BIT_initDStream.exit.thread693.i.i.i

sw.epilog.i.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge: ; preds = %sw.epilog.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_decompress_wksp_body_default.exit

BIT_initDStream.exit.thread693.i.i.i:             ; preds = %sw.epilog.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv56.i.i.i.i = zext i8 %19 to i32
  %20 = call i32 @llvm.ctlz.i32(i32 %conv56.i.i.i.i, i1 true) #9, !range !11
  %.neg.i.i.i.i = mul nsw i32 %sub.i.i, -8
  %mul.i.i.i.i = add nsw i32 %.neg.i.i.i.i, 9
  %add76.i.i.i.i = add nsw i32 %mul.i.i.i.i, %20
  br label %cleanup.cont.i.i.i

BIT_initDStream.exit.i.i.i:                       ; preds = %if.then3.i.i.i.i
  %add.ptr4.i.i.i.i = getelementptr i8, ptr %cSrc, i32 %cSrcSize
  %add.ptr5.i.i.i.i = getelementptr i8, ptr %add.ptr4.i.i.i.i, i32 -4
  %21 = ptrtoint ptr %add.ptr5.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %add.ptr5.i.i.i.i, align 1
  %23 = call i32 @llvm.bswap.i32(i32 %22) #9
  %conv.i.i.i.i = zext i8 %10 to i32
  %24 = call i32 @llvm.ctlz.i32(i32 %conv.i.i.i.i, i1 true) #9, !range !11
  %sub9.i.i.i.i = add nsw i32 %24, -23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %sub.i.i)
  %cmp.i152.i.i.i = icmp ult i32 %sub.i.i, -119
  br i1 %cmp.i152.i.i.i, label %BIT_initDStream.exit.i.i.i.cleanup.cont.i.i.i_crit_edge, label %BIT_initDStream.exit.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge

BIT_initDStream.exit.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge: ; preds = %BIT_initDStream.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_decompress_wksp_body_default.exit

BIT_initDStream.exit.i.i.i.cleanup.cont.i.i.i_crit_edge: ; preds = %BIT_initDStream.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.cont.i.i.i

cleanup.cont.i.i.i:                               ; preds = %BIT_initDStream.exit.i.i.i.cleanup.cont.i.i.i_crit_edge, %BIT_initDStream.exit.thread693.i.i.i
  %bitD.sroa.95.0705.i.i.i = phi ptr [ %add.ptr.i.i, %BIT_initDStream.exit.thread693.i.i.i ], [ %add.ptr5.i.i.i.i, %BIT_initDStream.exit.i.i.i.cleanup.cont.i.i.i_crit_edge ]
  %bitD.sroa.38.0704.i.i.i = phi i32 [ %add76.i.i.i.i, %BIT_initDStream.exit.thread693.i.i.i ], [ %sub9.i.i.i.i, %BIT_initDStream.exit.i.i.i.cleanup.cont.i.i.i_crit_edge ]
  %bitD.sroa.0.2703.i.i.i = phi i32 [ %bitD.sroa.0.1.i.i.i, %BIT_initDStream.exit.thread693.i.i.i ], [ %23, %BIT_initDStream.exit.i.i.i.cleanup.cont.i.i.i_crit_edge ]
  %25 = ptrtoint ptr %dtable.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %dtable.i.i, align 2
  %conv.i154.i.i.i = zext i16 %26 to i32
  %27 = add nsw i32 %bitD.sroa.38.0704.i.i.i, %conv.i154.i.i.i
  %sub1.i.i.i.i.i.i = sub nsw i32 0, %27
  %and.i.i.i.i.i.i.i = and i32 %sub1.i.i.i.i.i.i, 31
  %shr.i.i.i.i.i.i.i = lshr i32 %bitD.sroa.0.2703.i.i.i, %and.i.i.i.i.i.i.i
  %arrayidx.i.i.i.i.i.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %conv.i154.i.i.i
  %28 = ptrtoint ptr %arrayidx.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i.i.i.i.i.i, align 4
  %and1.i.i.i.i.i.i.i = and i32 %shr.i.i.i.i.i.i.i, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %27)
  %cmp.i.i.i.i.i = icmp ugt i32 %27, 32
  br i1 %cmp.i.i.i.i.i, label %cleanup.cont.i.i.i.FSE_initDState.exit.i.i.i_crit_edge, label %if.end.i.i.i.i.i

cleanup.cont.i.i.i.FSE_initDState.exit.i.i.i_crit_edge: ; preds = %cleanup.cont.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_initDState.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %cleanup.cont.i.i.i
  %cmp1.not.i.i.i.i.i = icmp ult ptr %bitD.sroa.95.0705.i.i.i, %add.ptr.i.i.i.i
  br i1 %cmp1.not.i.i.i.i.i, label %if.end3.i.i.i.i.i, label %BIT_reloadDStreamFast.exit.i.i.i.i.i

BIT_reloadDStreamFast.exit.i.i.i.i.i:             ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i.i.i.i = lshr i32 %27, 3
  %and.i.i.i.i.i.i = and i32 %27, 7
  br label %BIT_reloadDStream.exit.sink.split.i.i.i.i

if.end3.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i.i
  %cmp5.i.i.i.i.i = icmp eq ptr %bitD.sroa.95.0705.i.i.i, %add.ptr.i.i
  br i1 %cmp5.i.i.i.i.i, label %if.end3.i.i.i.i.i.FSE_initDState.exit.i.i.i_crit_edge, label %if.end11.i.i.i.i.i

if.end3.i.i.i.i.i.FSE_initDState.exit.i.i.i_crit_edge: ; preds = %if.end3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_initDState.exit.i.i.i

if.end11.i.i.i.i.i:                               ; preds = %if.end3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i.i.i = lshr i32 %27, 3
  %idx.neg.i.i.i.i.i = sub nsw i32 0, %shr.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %bitD.sroa.95.0705.i.i.i, i32 %idx.neg.i.i.i.i.i
  %cmp15.i.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i.i, %add.ptr.i.i
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %bitD.sroa.95.0705.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %nbBytes.0.i.i.i.i.i = select i1 %cmp15.i.i.i.i.i, i32 %sub.ptr.sub.i.i.i.i.i, i32 %shr.i.i.i.i.i
  %mul.neg.i.i.i.i.i = mul i32 %nbBytes.0.i.i.i.i.i, -8
  %sub.i.i.i.i.i = add i32 %mul.neg.i.i.i.i.i, %27
  br label %BIT_reloadDStream.exit.sink.split.i.i.i.i

BIT_reloadDStream.exit.sink.split.i.i.i.i:        ; preds = %if.end11.i.i.i.i.i, %BIT_reloadDStreamFast.exit.i.i.i.i.i
  %nbBytes.0.i.i.pn.i.i.i = phi i32 [ %nbBytes.0.i.i.i.i.i, %if.end11.i.i.i.i.i ], [ %shr.i.i.i.i.i.i, %BIT_reloadDStreamFast.exit.i.i.i.i.i ]
  %and.i.i.sink.i.i.i.i = phi i32 [ %sub.i.i.i.i.i, %if.end11.i.i.i.i.i ], [ %and.i.i.i.i.i.i, %BIT_reloadDStreamFast.exit.i.i.i.i.i ]
  %idx.neg21.i.i.pn.i.i.i = sub i32 0, %nbBytes.0.i.i.pn.i.i.i
  %bitD.sroa.95.1.i.i.i = getelementptr i8, ptr %bitD.sroa.95.0705.i.i.i, i32 %idx.neg21.i.i.pn.i.i.i
  %30 = ptrtoint ptr %bitD.sroa.95.1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %bitD.sroa.95.1.i.i.i, align 1
  %32 = call i32 @llvm.bswap.i32(i32 %31) #9
  br label %FSE_initDState.exit.i.i.i

FSE_initDState.exit.i.i.i:                        ; preds = %BIT_reloadDStream.exit.sink.split.i.i.i.i, %if.end3.i.i.i.i.i.FSE_initDState.exit.i.i.i_crit_edge, %cleanup.cont.i.i.i.FSE_initDState.exit.i.i.i_crit_edge
  %bitD.sroa.0.3.i.i.i = phi i32 [ %bitD.sroa.0.2703.i.i.i, %cleanup.cont.i.i.i.FSE_initDState.exit.i.i.i_crit_edge ], [ %bitD.sroa.0.2703.i.i.i, %if.end3.i.i.i.i.i.FSE_initDState.exit.i.i.i_crit_edge ], [ %32, %BIT_reloadDStream.exit.sink.split.i.i.i.i ]
  %bitD.sroa.38.1.i.i.i = phi i32 [ %27, %cleanup.cont.i.i.i.FSE_initDState.exit.i.i.i_crit_edge ], [ %27, %if.end3.i.i.i.i.i.FSE_initDState.exit.i.i.i_crit_edge ], [ %and.i.i.sink.i.i.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i.i ]
  %bitD.sroa.95.2.i.i.i = phi ptr [ %bitD.sroa.95.0705.i.i.i, %cleanup.cont.i.i.i.FSE_initDState.exit.i.i.i_crit_edge ], [ %add.ptr.i.i, %if.end3.i.i.i.i.i.FSE_initDState.exit.i.i.i_crit_edge ], [ %bitD.sroa.95.1.i.i.i, %BIT_reloadDStream.exit.sink.split.i.i.i.i ]
  %add.ptr.i155.i.i.i = getelementptr %struct.FSE_DecompressWksp, ptr %workSpace, i32 1
  %33 = add i32 %bitD.sroa.38.1.i.i.i, %conv.i154.i.i.i
  %sub1.i.i.i158.i.i.i = sub i32 0, %33
  %and.i.i.i.i159.i.i.i = and i32 %sub1.i.i.i158.i.i.i, 31
  %shr.i.i.i.i160.i.i.i = lshr i32 %bitD.sroa.0.3.i.i.i, %and.i.i.i.i159.i.i.i
  %and1.i.i.i.i162.i.i.i = and i32 %shr.i.i.i.i160.i.i.i, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %33)
  %cmp.i.i163.i.i.i = icmp ugt i32 %33, 32
  br i1 %cmp.i.i163.i.i.i, label %FSE_initDState.exit.i.i.i.for.end.i.i.i_crit_edge, label %if.end.i.i167.i.i.i

FSE_initDState.exit.i.i.i.for.end.i.i.i_crit_edge: ; preds = %FSE_initDState.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

if.end.i.i167.i.i.i:                              ; preds = %FSE_initDState.exit.i.i.i
  %cmp1.not.i.i166.i.i.i = icmp ult ptr %bitD.sroa.95.2.i.i.i, %add.ptr.i.i.i.i
  br i1 %cmp1.not.i.i166.i.i.i, label %if.end3.i.i175.i.i.i, label %FSE_initDState.exit194.thread848.i.i.i

FSE_initDState.exit194.thread848.i.i.i:           ; preds = %if.end.i.i167.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i168.i.i.i = lshr i32 %33, 3
  %and.i.i.i171.i.i.i = and i32 %33, 7
  %idx.neg21.i.i184.pn851.i.i.i = sub nsw i32 0, %shr.i.i.i168.i.i.i
  %bitD.sroa.95.3852.i.i.i = getelementptr i8, ptr %bitD.sroa.95.2.i.i.i, i32 %idx.neg21.i.i184.pn851.i.i.i
  %34 = ptrtoint ptr %bitD.sroa.95.3852.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %bitD.sroa.95.3852.i.i.i, align 1
  %36 = call i32 @llvm.bswap.i32(i32 %35) #9
  br label %if.end.i199.lr.ph.i.i.i

if.end3.i.i175.i.i.i:                             ; preds = %if.end.i.i167.i.i.i
  %cmp5.i.i174.i.i.i = icmp eq ptr %bitD.sroa.95.2.i.i.i, %add.ptr.i.i
  br i1 %cmp5.i.i174.i.i.i, label %if.end3.i.i175.i.i.i.if.end.i199.lr.ph.i.i.i_crit_edge, label %FSE_initDState.exit194.i.i.i

if.end3.i.i175.i.i.i.if.end.i199.lr.ph.i.i.i_crit_edge: ; preds = %if.end3.i.i175.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i199.lr.ph.i.i.i

FSE_initDState.exit194.i.i.i:                     ; preds = %if.end3.i.i175.i.i.i
  %shr.i.i176.i.i.i = lshr i32 %33, 3
  %idx.neg.i.i177.i.i.i = sub nsw i32 0, %shr.i.i176.i.i.i
  %add.ptr.i.i178.i.i.i = getelementptr i8, ptr %bitD.sroa.95.2.i.i.i, i32 %idx.neg.i.i177.i.i.i
  %cmp15.i.i179.i.i.i = icmp ult ptr %add.ptr.i.i178.i.i.i, %add.ptr.i.i
  %sub.ptr.lhs.cast.i.i180.i.i.i = ptrtoint ptr %bitD.sroa.95.2.i.i.i to i32
  %sub.ptr.rhs.cast.i.i181.i.i.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i.i182.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i180.i.i.i, %sub.ptr.rhs.cast.i.i181.i.i.i
  %nbBytes.0.i.i183.i.i.i = select i1 %cmp15.i.i179.i.i.i, i32 %sub.ptr.sub.i.i182.i.i.i, i32 %shr.i.i176.i.i.i
  %mul.neg.i.i186.i.i.i = mul i32 %nbBytes.0.i.i183.i.i.i, -8
  %sub.i.i187.i.i.i = add i32 %mul.neg.i.i186.i.i.i, %33
  %idx.neg21.i.i184.pn.i.i.i = sub i32 0, %nbBytes.0.i.i183.i.i.i
  %bitD.sroa.95.3.i.i.i = getelementptr i8, ptr %bitD.sroa.95.2.i.i.i, i32 %idx.neg21.i.i184.pn.i.i.i
  %37 = ptrtoint ptr %bitD.sroa.95.3.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %bitD.sroa.95.3.i.i.i, align 1
  %39 = call i32 @llvm.bswap.i32(i32 %38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i.i187.i.i.i)
  %cmp.i196793.i.i.i = icmp ugt i32 %sub.i.i187.i.i.i, 32
  br i1 %cmp.i196793.i.i.i, label %FSE_initDState.exit194.i.i.i.for.end.i.i.i_crit_edge, label %FSE_initDState.exit194.i.i.i.if.end.i199.lr.ph.i.i.i_crit_edge

FSE_initDState.exit194.i.i.i.if.end.i199.lr.ph.i.i.i_crit_edge: ; preds = %FSE_initDState.exit194.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i199.lr.ph.i.i.i

FSE_initDState.exit194.i.i.i.for.end.i.i.i_crit_edge: ; preds = %FSE_initDState.exit194.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

if.end.i199.lr.ph.i.i.i:                          ; preds = %FSE_initDState.exit194.i.i.i.if.end.i199.lr.ph.i.i.i_crit_edge, %if.end3.i.i175.i.i.i.if.end.i199.lr.ph.i.i.i_crit_edge, %FSE_initDState.exit194.thread848.i.i.i
  %bitD.sroa.95.4847.i.i.i = phi ptr [ %bitD.sroa.95.3.i.i.i, %FSE_initDState.exit194.i.i.i.if.end.i199.lr.ph.i.i.i_crit_edge ], [ %bitD.sroa.95.3852.i.i.i, %FSE_initDState.exit194.thread848.i.i.i ], [ %add.ptr.i.i, %if.end3.i.i175.i.i.i.if.end.i199.lr.ph.i.i.i_crit_edge ]
  %bitD.sroa.38.2846.i.i.i = phi i32 [ %sub.i.i187.i.i.i, %FSE_initDState.exit194.i.i.i.if.end.i199.lr.ph.i.i.i_crit_edge ], [ %and.i.i.i171.i.i.i, %FSE_initDState.exit194.thread848.i.i.i ], [ %33, %if.end3.i.i175.i.i.i.if.end.i199.lr.ph.i.i.i_crit_edge ]
  %bitD.sroa.0.4845.i.i.i = phi i32 [ %39, %FSE_initDState.exit194.i.i.i.if.end.i199.lr.ph.i.i.i_crit_edge ], [ %36, %FSE_initDState.exit194.thread848.i.i.i ], [ %bitD.sroa.0.3.i.i.i, %if.end3.i.i175.i.i.i.if.end.i199.lr.ph.i.i.i_crit_edge ]
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %add.ptr.i.i to i32
  br label %if.end.i199.i.i.i

if.end.i199.i.i.i:                                ; preds = %if.end29.i.i.i.if.end.i199.i.i.i_crit_edge, %if.end.i199.lr.ph.i.i.i
  %op.0801.i.i.i = phi ptr [ %dst, %if.end.i199.lr.ph.i.i.i ], [ %add.ptr52.i.i.i, %if.end29.i.i.i.if.end.i199.i.i.i_crit_edge ]
  %state2.sroa.0.0799.i.i.i = phi i32 [ %and1.i.i.i.i162.i.i.i, %if.end.i199.lr.ph.i.i.i ], [ %add.i358.i.i.i, %if.end29.i.i.i.if.end.i199.i.i.i_crit_edge ]
  %state1.sroa.0.0797.i.i.i = phi i32 [ %and1.i.i.i.i.i.i.i, %if.end.i199.lr.ph.i.i.i ], [ %add.i309.i.i.i, %if.end29.i.i.i.if.end.i199.i.i.i_crit_edge ]
  %bitD.sroa.95.5796.i.i.i = phi ptr [ %bitD.sroa.95.4847.i.i.i, %if.end.i199.lr.ph.i.i.i ], [ %bitD.sroa.95.7733.i.i.i, %if.end29.i.i.i.if.end.i199.i.i.i_crit_edge ]
  %bitD.sroa.38.3795.i.i.i = phi i32 [ %bitD.sroa.38.2846.i.i.i, %if.end.i199.lr.ph.i.i.i ], [ %add.i.i.i324.i.i.i, %if.end29.i.i.i.if.end.i199.i.i.i_crit_edge ]
  %bitD.sroa.0.5794.i.i.i = phi i32 [ %bitD.sroa.0.4845.i.i.i, %if.end.i199.lr.ph.i.i.i ], [ %bitD.sroa.0.7731.i.i.i, %if.end29.i.i.i.if.end.i199.i.i.i_crit_edge ]
  %cmp1.not.i.i.i.i = icmp ult ptr %bitD.sroa.95.5796.i.i.i, %add.ptr.i.i.i.i
  br i1 %cmp1.not.i.i.i.i, label %if.end3.i.i.i.i, label %BIT_reloadDStreamFast.exit.i.i.i.i

BIT_reloadDStreamFast.exit.i.i.i.i:               ; preds = %if.end.i199.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i200.i.i.i = lshr i32 %bitD.sroa.38.3795.i.i.i, 3
  %and.i.i.i.i.i = and i32 %bitD.sroa.38.3795.i.i.i, 7
  br label %BIT_reloadDStream.exit.i.i.i

if.end3.i.i.i.i:                                  ; preds = %if.end.i199.i.i.i
  %cmp5.i.i.i.i = icmp eq ptr %bitD.sroa.95.5796.i.i.i, %add.ptr.i.i
  br i1 %cmp5.i.i.i.i, label %if.end3.i.i.i.i.for.end.i.i.i_crit_edge, label %if.end11.i.i.i.i

if.end3.i.i.i.i.for.end.i.i.i_crit_edge:          ; preds = %if.end3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

if.end11.i.i.i.i:                                 ; preds = %if.end3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i.i = lshr i32 %bitD.sroa.38.3795.i.i.i, 3
  %idx.neg.i.i.i.i = sub nsw i32 0, %shr.i.i.i.i
  %add.ptr.i204.i.i.i = getelementptr i8, ptr %bitD.sroa.95.5796.i.i.i, i32 %idx.neg.i.i.i.i
  %cmp15.i.i.i.i = icmp ult ptr %add.ptr.i204.i.i.i, %add.ptr.i.i
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %bitD.sroa.95.5796.i.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %nbBytes.0.i.i.i.i = select i1 %cmp15.i.i.i.i, i32 %sub.ptr.sub.i.i.i.i, i32 %shr.i.i.i.i
  %result.0.i.i.i.i = zext i1 %cmp15.i.i.i.i to i32
  %mul.neg.i.i.i.i = mul i32 %nbBytes.0.i.i.i.i, -8
  %sub.i205.i.i.i = add i32 %mul.neg.i.i.i.i, %bitD.sroa.38.3795.i.i.i
  br label %BIT_reloadDStream.exit.i.i.i

BIT_reloadDStream.exit.i.i.i:                     ; preds = %if.end11.i.i.i.i, %BIT_reloadDStreamFast.exit.i.i.i.i
  %shr.i.i200.pn.i.i.i = phi i32 [ %shr.i.i200.i.i.i, %BIT_reloadDStreamFast.exit.i.i.i.i ], [ %nbBytes.0.i.i.i.i, %if.end11.i.i.i.i ]
  %bitD.sroa.38.4.i.i.i = phi i32 [ %and.i.i.i.i.i, %BIT_reloadDStreamFast.exit.i.i.i.i ], [ %sub.i205.i.i.i, %if.end11.i.i.i.i ]
  %retval.0.i.i.i.i = phi i32 [ 0, %BIT_reloadDStreamFast.exit.i.i.i.i ], [ %result.0.i.i.i.i, %if.end11.i.i.i.i ]
  %idx.neg.i.i201.pn.i.i.i = sub i32 0, %shr.i.i200.pn.i.i.i
  %add.ptr.i.i202.sink.i.i.i = getelementptr i8, ptr %bitD.sroa.95.5796.i.i.i, i32 %idx.neg.i.i201.pn.i.i.i
  %40 = ptrtoint ptr %add.ptr.i.i202.sink.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %add.ptr.i.i202.sink.i.i.i, align 1
  %42 = call i32 @llvm.bswap.i32(i32 %41) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %retval.0.i.i.i.i, 0
  %cmp4.i.i.i = icmp ult ptr %op.0801.i.i.i, %add.ptr1.i5.i.i
  %and150.i.i.i = and i1 %cmp4.i.i.i, %cmp.i.i.i
  br i1 %and150.i.i.i, label %for.body.i.i.i, label %BIT_reloadDStream.exit.i.i.i.for.end.i.i.i_crit_edge

BIT_reloadDStream.exit.i.i.i.for.end.i.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %BIT_reloadDStream.exit.i.i.i
  %arrayidx.i229.i.i.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i.i.i, i32 %state1.sroa.0.0797.i.i.i
  %43 = ptrtoint ptr %arrayidx.i229.i.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %DInfo.sroa.0.0.copyload.i230.i.i.i = load i16, ptr %arrayidx.i229.i.i.i, align 2
  %DInfo.sroa.5.0.arrayidx.sroa_idx.i231.i.i.i = getelementptr inbounds i8, ptr %arrayidx.i229.i.i.i, i32 2
  %44 = ptrtoint ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i231.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %DInfo.sroa.5.0.copyload.i232.i.i.i = load i8, ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i231.i.i.i, align 2
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i233.i.i.i = getelementptr inbounds i8, ptr %arrayidx.i229.i.i.i, i32 3
  %45 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i233.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %DInfo.sroa.7.0.copyload.i234.i.i.i = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i233.i.i.i, align 1
  %conv.i235.i.i.i = zext i8 %DInfo.sroa.7.0.copyload.i234.i.i.i to i32
  %and.i.i.i209.i.i.i = and i32 %bitD.sroa.38.4.i.i.i, 31
  %shl.i.i.i.i.i.i = shl i32 %42, %and.i.i.i209.i.i.i
  %sub.i.i.i.i.i.i = sub nsw i32 0, %conv.i235.i.i.i
  %and1.i.i.i.i.i.i = and i32 %sub.i.i.i.i.i.i, 31
  %shr.i.i.i210.i.i.i = lshr i32 %shl.i.i.i.i.i.i, %and1.i.i.i.i.i.i
  %add.i.i.i.i.i.i = add i32 %bitD.sroa.38.4.i.i.i, %conv.i235.i.i.i
  %conv3.i.i.i.i = zext i16 %DInfo.sroa.0.0.copyload.i230.i.i.i to i32
  %add.i.i.i.i = add i32 %shr.i.i.i210.i.i.i, %conv3.i.i.i.i
  %46 = ptrtoint ptr %op.0801.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %DInfo.sroa.5.0.copyload.i232.i.i.i, ptr %op.0801.i.i.i, align 1
  %arrayidx.i212.i.i.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i.i.i, i32 %state2.sroa.0.0799.i.i.i
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i216.i.i.i = getelementptr inbounds i8, ptr %arrayidx.i212.i.i.i, i32 3
  %47 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i216.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %DInfo.sroa.7.0.copyload.i217.i.i.i = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i216.i.i.i, align 1
  %conv.i218.i.i.i = zext i8 %DInfo.sroa.7.0.copyload.i217.i.i.i to i32
  %and.i.i.i220.i.i.i = and i32 %add.i.i.i.i.i.i, 31
  %shl.i.i.i221.i.i.i = shl i32 %42, %and.i.i.i220.i.i.i
  %sub.i.i.i222.i.i.i = sub nsw i32 0, %conv.i218.i.i.i
  %and1.i.i.i223.i.i.i = and i32 %sub.i.i.i222.i.i.i, 31
  %shr.i.i.i224.i.i.i = lshr i32 %shl.i.i.i221.i.i.i, %and1.i.i.i223.i.i.i
  %add.i.i.i225.i.i.i = add i32 %add.i.i.i.i.i.i, %conv.i218.i.i.i
  %48 = ptrtoint ptr %arrayidx.i212.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %DInfo.sroa.0.0.copyload.i246.sink.i.i.i = load i16, ptr %arrayidx.i212.i.i.i, align 2
  %conv3.i258.i.i.i = zext i16 %DInfo.sroa.0.0.copyload.i246.sink.i.i.i to i32
  %add.i259.i.i.i = add i32 %shr.i.i.i224.i.i.i, %conv3.i258.i.i.i
  %cond21.in.in.i.i.i = getelementptr inbounds i8, ptr %arrayidx.i212.i.i.i, i32 2
  %49 = ptrtoint ptr %cond21.in.in.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %cond21.in.i.i.i = load i8, ptr %cond21.in.in.i.i.i, align 2
  %arrayidx23.i.i.i = getelementptr i8, ptr %op.0801.i.i.i, i32 1
  %50 = ptrtoint ptr %arrayidx23.i.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %cond21.in.i.i.i, ptr %arrayidx23.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i.i.i225.i.i.i)
  %cmp.i261.i.i.i = icmp ugt i32 %add.i.i.i225.i.i.i, 32
  br i1 %cmp.i261.i.i.i, label %for.body.i.i.i.if.then27.i.i.i_crit_edge, label %if.end.i265.i.i.i

for.body.i.i.i.if.then27.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27.i.i.i

if.end.i265.i.i.i:                                ; preds = %for.body.i.i.i
  %cmp1.not.i264.i.i.i = icmp ult ptr %add.ptr.i.i202.sink.i.i.i, %add.ptr.i.i.i.i
  br i1 %cmp1.not.i264.i.i.i, label %if.end3.i273.i.i.i, label %BIT_reloadDStream.exit292.thread725.i.i.i

BIT_reloadDStream.exit292.thread725.i.i.i:        ; preds = %if.end.i265.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i266.i.i.i = lshr i32 %add.i.i.i225.i.i.i, 3
  %idx.neg.i.i267.i.i.i = sub nsw i32 0, %shr.i.i266.i.i.i
  %add.ptr.i.i268.i.i.i = getelementptr i8, ptr %add.ptr.i.i202.sink.i.i.i, i32 %idx.neg.i.i267.i.i.i
  %and.i.i269.i.i.i = and i32 %add.i.i.i225.i.i.i, 7
  %51 = ptrtoint ptr %add.ptr.i.i268.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %add.ptr.i.i268.i.i.i, align 1
  %53 = call i32 @llvm.bswap.i32(i32 %52) #9
  br label %if.end29.i.i.i

if.end3.i273.i.i.i:                               ; preds = %if.end.i265.i.i.i
  %cmp5.i272.i.i.i = icmp eq ptr %add.ptr.i.i202.sink.i.i.i, %add.ptr.i.i
  br i1 %cmp5.i272.i.i.i, label %if.end3.i273.i.i.i.if.then27.i.i.i_crit_edge, label %BIT_reloadDStream.exit292.i.i.i

if.end3.i273.i.i.i.if.then27.i.i.i_crit_edge:     ; preds = %if.end3.i273.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27.i.i.i

BIT_reloadDStream.exit292.i.i.i:                  ; preds = %if.end3.i273.i.i.i
  %shr.i277.i.i.i = lshr i32 %add.i.i.i225.i.i.i, 3
  %idx.neg.i278.i.i.i = sub nsw i32 0, %shr.i277.i.i.i
  %add.ptr.i279.i.i.i = getelementptr i8, ptr %add.ptr.i.i202.sink.i.i.i, i32 %idx.neg.i278.i.i.i
  %cmp15.i280.i.i.i = icmp ult ptr %add.ptr.i279.i.i.i, %add.ptr.i.i
  %sub.ptr.lhs.cast.i281.i.i.i = ptrtoint ptr %add.ptr.i.i202.sink.i.i.i to i32
  %sub.ptr.sub.i283.i.i.i = sub i32 %sub.ptr.lhs.cast.i281.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %nbBytes.0.i284.i.i.i = select i1 %cmp15.i280.i.i.i, i32 %sub.ptr.sub.i283.i.i.i, i32 %shr.i277.i.i.i
  %idx.neg21.i286.i.i.i = sub i32 0, %nbBytes.0.i284.i.i.i
  %add.ptr22.i287.i.i.i = getelementptr i8, ptr %add.ptr.i.i202.sink.i.i.i, i32 %idx.neg21.i286.i.i.i
  %mul.neg.i288.i.i.i = mul i32 %nbBytes.0.i284.i.i.i, -8
  %sub.i289.i.i.i = add i32 %mul.neg.i288.i.i.i, %add.i.i.i225.i.i.i
  %54 = ptrtoint ptr %add.ptr22.i287.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %add.ptr22.i287.i.i.i, align 1
  %56 = call i32 @llvm.bswap.i32(i32 %55) #9
  br i1 %cmp15.i280.i.i.i, label %BIT_reloadDStream.exit292.i.i.i.if.then27.i.i.i_crit_edge, label %BIT_reloadDStream.exit292.i.i.i.if.end29.i.i.i_crit_edge

BIT_reloadDStream.exit292.i.i.i.if.end29.i.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit292.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i.i

BIT_reloadDStream.exit292.i.i.i.if.then27.i.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit292.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27.i.i.i

if.then27.i.i.i:                                  ; preds = %BIT_reloadDStream.exit292.i.i.i.if.then27.i.i.i_crit_edge, %if.end3.i273.i.i.i.if.then27.i.i.i_crit_edge, %for.body.i.i.i.if.then27.i.i.i_crit_edge
  %bitD.sroa.95.7724.i.i.i = phi ptr [ %add.ptr22.i287.i.i.i, %BIT_reloadDStream.exit292.i.i.i.if.then27.i.i.i_crit_edge ], [ %add.ptr.i.i202.sink.i.i.i, %for.body.i.i.i.if.then27.i.i.i_crit_edge ], [ %add.ptr.i.i, %if.end3.i273.i.i.i.if.then27.i.i.i_crit_edge ]
  %bitD.sroa.38.6723.i.i.i = phi i32 [ %sub.i289.i.i.i, %BIT_reloadDStream.exit292.i.i.i.if.then27.i.i.i_crit_edge ], [ %add.i.i.i225.i.i.i, %for.body.i.i.i.if.then27.i.i.i_crit_edge ], [ %add.i.i.i225.i.i.i, %if.end3.i273.i.i.i.if.then27.i.i.i_crit_edge ]
  %bitD.sroa.0.7722.i.i.i = phi i32 [ %56, %BIT_reloadDStream.exit292.i.i.i.if.then27.i.i.i_crit_edge ], [ %42, %for.body.i.i.i.if.then27.i.i.i_crit_edge ], [ %42, %if.end3.i273.i.i.i.if.then27.i.i.i_crit_edge ]
  %add.ptr28.i.i.i = getelementptr i8, ptr %op.0801.i.i.i, i32 2
  br label %for.end.i.i.i

if.end29.i.i.i:                                   ; preds = %BIT_reloadDStream.exit292.i.i.i.if.end29.i.i.i_crit_edge, %BIT_reloadDStream.exit292.thread725.i.i.i
  %bitD.sroa.95.7733.i.i.i = phi ptr [ %add.ptr.i.i268.i.i.i, %BIT_reloadDStream.exit292.thread725.i.i.i ], [ %add.ptr22.i287.i.i.i, %BIT_reloadDStream.exit292.i.i.i.if.end29.i.i.i_crit_edge ]
  %bitD.sroa.38.6732.i.i.i = phi i32 [ %and.i.i269.i.i.i, %BIT_reloadDStream.exit292.thread725.i.i.i ], [ %sub.i289.i.i.i, %BIT_reloadDStream.exit292.i.i.i.if.end29.i.i.i_crit_edge ]
  %bitD.sroa.0.7731.i.i.i = phi i32 [ %53, %BIT_reloadDStream.exit292.thread725.i.i.i ], [ %56, %BIT_reloadDStream.exit292.i.i.i.if.end29.i.i.i_crit_edge ]
  %arrayidx.i328.i.i.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i.i.i, i32 %add.i.i.i.i
  %57 = ptrtoint ptr %arrayidx.i328.i.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %DInfo.sroa.0.0.copyload.i329.i.i.i = load i16, ptr %arrayidx.i328.i.i.i, align 2
  %DInfo.sroa.5.0.arrayidx.sroa_idx.i330.i.i.i = getelementptr inbounds i8, ptr %arrayidx.i328.i.i.i, i32 2
  %58 = ptrtoint ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i330.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %DInfo.sroa.5.0.copyload.i331.i.i.i = load i8, ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i330.i.i.i, align 2
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i332.i.i.i = getelementptr inbounds i8, ptr %arrayidx.i328.i.i.i, i32 3
  %59 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i332.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %DInfo.sroa.7.0.copyload.i333.i.i.i = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i332.i.i.i, align 1
  %conv.i334.i.i.i = zext i8 %DInfo.sroa.7.0.copyload.i333.i.i.i to i32
  %and.i.i.i302.i.i.i = and i32 %bitD.sroa.38.6732.i.i.i, 31
  %shl.i.i.i303.i.i.i = shl i32 %bitD.sroa.0.7731.i.i.i, %and.i.i.i302.i.i.i
  %sub.i.i.i304.i.i.i = sub nsw i32 0, %conv.i334.i.i.i
  %and1.i.i.i305.i.i.i = and i32 %sub.i.i.i304.i.i.i, 31
  %shr.i.i.i306.i.i.i = lshr i32 %shl.i.i.i303.i.i.i, %and1.i.i.i305.i.i.i
  %add.i.i.i307.i.i.i = add i32 %bitD.sroa.38.6732.i.i.i, %conv.i334.i.i.i
  %conv3.i308.i.i.i = zext i16 %DInfo.sroa.0.0.copyload.i329.i.i.i to i32
  %add.i309.i.i.i = add i32 %shr.i.i.i306.i.i.i, %conv3.i308.i.i.i
  %arrayidx40.c151.i.i.i = getelementptr i8, ptr %op.0801.i.i.i, i32 2
  %60 = ptrtoint ptr %arrayidx40.c151.i.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %DInfo.sroa.5.0.copyload.i331.i.i.i, ptr %arrayidx40.c151.i.i.i, align 1
  %arrayidx.i311.i.i.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i.i.i, i32 %add.i259.i.i.i
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i315.i.i.i = getelementptr inbounds i8, ptr %arrayidx.i311.i.i.i, i32 3
  %61 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i315.i.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %DInfo.sroa.7.0.copyload.i316.i.i.i = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i315.i.i.i, align 1
  %conv.i317.i.i.i = zext i8 %DInfo.sroa.7.0.copyload.i316.i.i.i to i32
  %and.i.i.i319.i.i.i = and i32 %add.i.i.i307.i.i.i, 31
  %shl.i.i.i320.i.i.i = shl i32 %bitD.sroa.0.7731.i.i.i, %and.i.i.i319.i.i.i
  %sub.i.i.i321.i.i.i = sub nsw i32 0, %conv.i317.i.i.i
  %and1.i.i.i322.i.i.i = and i32 %sub.i.i.i321.i.i.i, 31
  %shr.i.i.i323.i.i.i = lshr i32 %shl.i.i.i320.i.i.i, %and1.i.i.i322.i.i.i
  %add.i.i.i324.i.i.i = add i32 %add.i.i.i307.i.i.i, %conv.i317.i.i.i
  %62 = ptrtoint ptr %arrayidx.i311.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %DInfo.sroa.0.0.copyload.i345.sink.i.i.i = load i16, ptr %arrayidx.i311.i.i.i, align 2
  %conv3.i357.i.i.i = zext i16 %DInfo.sroa.0.0.copyload.i345.sink.i.i.i to i32
  %add.i358.i.i.i = add i32 %shr.i.i.i323.i.i.i, %conv3.i357.i.i.i
  %cond49.in.in.i.i.i = getelementptr inbounds i8, ptr %arrayidx.i311.i.i.i, i32 2
  %63 = ptrtoint ptr %cond49.in.in.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %cond49.in.i.i.i = load i8, ptr %cond49.in.in.i.i.i, align 2
  %arrayidx51.i.i.i = getelementptr i8, ptr %op.0801.i.i.i, i32 3
  %64 = ptrtoint ptr %arrayidx51.i.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %cond49.in.i.i.i, ptr %arrayidx51.i.i.i, align 1
  %add.ptr52.i.i.i = getelementptr i8, ptr %op.0801.i.i.i, i32 4
  %cmp.i196.i.i.i = icmp ugt i32 %add.i.i.i324.i.i.i, 32
  br i1 %cmp.i196.i.i.i, label %if.end29.i.i.i.for.end.i.i.i_crit_edge, label %if.end29.i.i.i.if.end.i199.i.i.i_crit_edge

if.end29.i.i.i.if.end.i199.i.i.i_crit_edge:       ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i199.i.i.i

if.end29.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %if.end29.i.i.i.for.end.i.i.i_crit_edge, %if.then27.i.i.i, %BIT_reloadDStream.exit.i.i.i.for.end.i.i.i_crit_edge, %if.end3.i.i.i.i.for.end.i.i.i_crit_edge, %FSE_initDState.exit194.i.i.i.for.end.i.i.i_crit_edge, %FSE_initDState.exit.i.i.i.for.end.i.i.i_crit_edge
  %bitD.sroa.0.8.i.i.i = phi i32 [ %bitD.sroa.0.7722.i.i.i, %if.then27.i.i.i ], [ %39, %FSE_initDState.exit194.i.i.i.for.end.i.i.i_crit_edge ], [ %bitD.sroa.0.3.i.i.i, %FSE_initDState.exit.i.i.i.for.end.i.i.i_crit_edge ], [ %bitD.sroa.0.5794.i.i.i, %if.end3.i.i.i.i.for.end.i.i.i_crit_edge ], [ %bitD.sroa.0.7731.i.i.i, %if.end29.i.i.i.for.end.i.i.i_crit_edge ], [ %42, %BIT_reloadDStream.exit.i.i.i.for.end.i.i.i_crit_edge ]
  %bitD.sroa.38.8.i.i.i = phi i32 [ %bitD.sroa.38.6723.i.i.i, %if.then27.i.i.i ], [ %sub.i.i187.i.i.i, %FSE_initDState.exit194.i.i.i.for.end.i.i.i_crit_edge ], [ %33, %FSE_initDState.exit.i.i.i.for.end.i.i.i_crit_edge ], [ %bitD.sroa.38.3795.i.i.i, %if.end3.i.i.i.i.for.end.i.i.i_crit_edge ], [ %add.i.i.i324.i.i.i, %if.end29.i.i.i.for.end.i.i.i_crit_edge ], [ %bitD.sroa.38.4.i.i.i, %BIT_reloadDStream.exit.i.i.i.for.end.i.i.i_crit_edge ]
  %bitD.sroa.95.8.i.i.i = phi ptr [ %bitD.sroa.95.7724.i.i.i, %if.then27.i.i.i ], [ %bitD.sroa.95.3.i.i.i, %FSE_initDState.exit194.i.i.i.for.end.i.i.i_crit_edge ], [ %bitD.sroa.95.2.i.i.i, %FSE_initDState.exit.i.i.i.for.end.i.i.i_crit_edge ], [ %add.ptr.i.i, %if.end3.i.i.i.i.for.end.i.i.i_crit_edge ], [ %bitD.sroa.95.7733.i.i.i, %if.end29.i.i.i.for.end.i.i.i_crit_edge ], [ %add.ptr.i.i202.sink.i.i.i, %BIT_reloadDStream.exit.i.i.i.for.end.i.i.i_crit_edge ]
  %state1.sroa.0.3.i.i.i = phi i32 [ %add.i.i.i.i, %if.then27.i.i.i ], [ %and1.i.i.i.i.i.i.i, %FSE_initDState.exit194.i.i.i.for.end.i.i.i_crit_edge ], [ %and1.i.i.i.i.i.i.i, %FSE_initDState.exit.i.i.i.for.end.i.i.i_crit_edge ], [ %state1.sroa.0.0797.i.i.i, %if.end3.i.i.i.i.for.end.i.i.i_crit_edge ], [ %add.i309.i.i.i, %if.end29.i.i.i.for.end.i.i.i_crit_edge ], [ %state1.sroa.0.0797.i.i.i, %BIT_reloadDStream.exit.i.i.i.for.end.i.i.i_crit_edge ]
  %state2.sroa.0.3.i.i.i = phi i32 [ %add.i259.i.i.i, %if.then27.i.i.i ], [ %and1.i.i.i.i162.i.i.i, %FSE_initDState.exit194.i.i.i.for.end.i.i.i_crit_edge ], [ %and1.i.i.i.i162.i.i.i, %FSE_initDState.exit.i.i.i.for.end.i.i.i_crit_edge ], [ %state2.sroa.0.0799.i.i.i, %if.end3.i.i.i.i.for.end.i.i.i_crit_edge ], [ %add.i358.i.i.i, %if.end29.i.i.i.for.end.i.i.i_crit_edge ], [ %state2.sroa.0.0799.i.i.i, %BIT_reloadDStream.exit.i.i.i.for.end.i.i.i_crit_edge ]
  %op.1.i.i.i = phi ptr [ %add.ptr28.i.i.i, %if.then27.i.i.i ], [ %dst, %FSE_initDState.exit194.i.i.i.for.end.i.i.i_crit_edge ], [ %dst, %FSE_initDState.exit.i.i.i.for.end.i.i.i_crit_edge ], [ %op.0801.i.i.i, %if.end3.i.i.i.i.for.end.i.i.i_crit_edge ], [ %add.ptr52.i.i.i, %if.end29.i.i.i.for.end.i.i.i_crit_edge ], [ %op.0801.i.i.i, %BIT_reloadDStream.exit.i.i.i.for.end.i.i.i_crit_edge ]
  %add.ptr53.i.i.i = getelementptr i8, ptr %add.ptr.i4.i.i, i32 -2
  %cmp54822.i.i.i = icmp ugt ptr %op.1.i.i.i, %add.ptr53.i.i.i
  br i1 %cmp54822.i.i.i, label %for.end.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, label %if.end57.lr.ph.i.i.i

for.end.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_decompress_wksp_body_default.exit

if.end57.lr.ph.i.i.i:                             ; preds = %for.end.i.i.i
  %sub.ptr.rhs.cast.i414.i.i.i = ptrtoint ptr %add.ptr.i.i to i32
  br label %if.end57.i.i.i

if.end57.i.i.i:                                   ; preds = %BIT_reloadDStream.exit523.i.i.i.if.end57.i.i.i_crit_edge, %if.end57.lr.ph.i.i.i
  %op.2829.i.i.i = phi ptr [ %op.1.i.i.i, %if.end57.lr.ph.i.i.i ], [ %incdec.ptr99772.i.i.i, %BIT_reloadDStream.exit523.i.i.i.if.end57.i.i.i_crit_edge ]
  %state2.sroa.0.4827.i.i.i = phi i32 [ %state2.sroa.0.3.i.i.i, %if.end57.lr.ph.i.i.i ], [ %add.i474.i.i.i, %BIT_reloadDStream.exit523.i.i.i.if.end57.i.i.i_crit_edge ]
  %state1.sroa.0.4826.i.i.i = phi i32 [ %state1.sroa.0.3.i.i.i, %if.end57.lr.ph.i.i.i ], [ %add.i375.i.i.i, %BIT_reloadDStream.exit523.i.i.i.if.end57.i.i.i_crit_edge ]
  %bitD.sroa.95.9825.i.i.i = phi ptr [ %bitD.sroa.95.8.i.i.i, %if.end57.lr.ph.i.i.i ], [ %bitD.sroa.95.11.i.i.i, %BIT_reloadDStream.exit523.i.i.i.if.end57.i.i.i_crit_edge ]
  %bitD.sroa.38.9824.i.i.i = phi i32 [ %bitD.sroa.38.8.i.i.i, %if.end57.lr.ph.i.i.i ], [ %bitD.sroa.38.13.i.i.i, %BIT_reloadDStream.exit523.i.i.i.if.end57.i.i.i_crit_edge ]
  %bitD.sroa.0.9823.i.i.i = phi i32 [ %bitD.sroa.0.8.i.i.i, %if.end57.lr.ph.i.i.i ], [ %bitD.sroa.0.11.i.i.i, %BIT_reloadDStream.exit523.i.i.i.if.end57.i.i.i_crit_edge ]
  %arrayidx.i377.i.i.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i.i.i, i32 %state1.sroa.0.4826.i.i.i
  %65 = ptrtoint ptr %arrayidx.i377.i.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %DInfo.sroa.0.0.copyload.i378.i.i.i = load i16, ptr %arrayidx.i377.i.i.i, align 2
  %DInfo.sroa.5.0.arrayidx.sroa_idx.i379.i.i.i = getelementptr inbounds i8, ptr %arrayidx.i377.i.i.i, i32 2
  %66 = ptrtoint ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i379.i.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %DInfo.sroa.5.0.copyload.i380.i.i.i = load i8, ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i379.i.i.i, align 2
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i381.i.i.i = getelementptr inbounds i8, ptr %arrayidx.i377.i.i.i, i32 3
  %67 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i381.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %DInfo.sroa.7.0.copyload.i382.i.i.i = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i381.i.i.i, align 1
  %conv.i383.i.i.i = zext i8 %DInfo.sroa.7.0.copyload.i382.i.i.i to i32
  %and.i.i.i368.i.i.i = and i32 %bitD.sroa.38.9824.i.i.i, 31
  %shl.i.i.i369.i.i.i = shl i32 %bitD.sroa.0.9823.i.i.i, %and.i.i.i368.i.i.i
  %sub.i.i.i370.i.i.i = sub nsw i32 0, %conv.i383.i.i.i
  %and1.i.i.i371.i.i.i = and i32 %sub.i.i.i370.i.i.i, 31
  %shr.i.i.i372.i.i.i = lshr i32 %shl.i.i.i369.i.i.i, %and1.i.i.i371.i.i.i
  %add.i.i.i373.i.i.i = add i32 %bitD.sroa.38.9824.i.i.i, %conv.i383.i.i.i
  %conv3.i374.i.i.i = zext i16 %DInfo.sroa.0.0.copyload.i378.i.i.i to i32
  %add.i375.i.i.i = add i32 %shr.i.i.i372.i.i.i, %conv3.i374.i.i.i
  %incdec.ptr746.i.i.i = getelementptr i8, ptr %op.2829.i.i.i, i32 1
  %68 = ptrtoint ptr %op.2829.i.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %DInfo.sroa.5.0.copyload.i380.i.i.i, ptr %op.2829.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i.i.i373.i.i.i)
  %cmp.i393747.i.i.i = icmp ugt i32 %add.i.i.i373.i.i.i, 32
  br i1 %cmp.i393747.i.i.i, label %if.end57.i.i.i.while.end.i.i.i_crit_edge, label %if.end.i397.i.i.i

if.end57.i.i.i.while.end.i.i.i_crit_edge:         ; preds = %if.end57.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i.i

if.end.i397.i.i.i:                                ; preds = %if.end57.i.i.i
  %cmp1.not.i396.i.i.i = icmp ult ptr %bitD.sroa.95.9825.i.i.i, %add.ptr.i.i.i.i
  br i1 %cmp1.not.i396.i.i.i, label %if.end3.i405.i.i.i, label %BIT_reloadDStreamFast.exit.i402.i.i.i

BIT_reloadDStreamFast.exit.i402.i.i.i:            ; preds = %if.end.i397.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i398.i.i.i = lshr i32 %add.i.i.i373.i.i.i, 3
  %and.i.i401.i.i.i = and i32 %add.i.i.i373.i.i.i, 7
  br label %if.end83.sink.split.i.i.i

if.end3.i405.i.i.i:                               ; preds = %if.end.i397.i.i.i
  %cmp5.i404.i.i.i = icmp eq ptr %bitD.sroa.95.9825.i.i.i, %add.ptr.i.i
  br i1 %cmp5.i404.i.i.i, label %if.end3.i405.i.i.i.if.end83.i.i.i_crit_edge, label %if.end11.i422.i.i.i

if.end3.i405.i.i.i.if.end83.i.i.i_crit_edge:      ; preds = %if.end3.i405.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i.i.i

if.end11.i422.i.i.i:                              ; preds = %if.end3.i405.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i409.i.i.i = lshr i32 %add.i.i.i373.i.i.i, 3
  %idx.neg.i410.i.i.i = sub nsw i32 0, %shr.i409.i.i.i
  %add.ptr.i411.i.i.i = getelementptr i8, ptr %bitD.sroa.95.9825.i.i.i, i32 %idx.neg.i410.i.i.i
  %cmp15.i412.i.i.i = icmp ult ptr %add.ptr.i411.i.i.i, %add.ptr.i.i
  %sub.ptr.lhs.cast.i413.i.i.i = ptrtoint ptr %bitD.sroa.95.9825.i.i.i to i32
  %sub.ptr.sub.i415.i.i.i = sub i32 %sub.ptr.lhs.cast.i413.i.i.i, %sub.ptr.rhs.cast.i414.i.i.i
  %nbBytes.0.i416.i.i.i = select i1 %cmp15.i412.i.i.i, i32 %sub.ptr.sub.i415.i.i.i, i32 %shr.i409.i.i.i
  %mul.neg.i420.i.i.i = mul i32 %nbBytes.0.i416.i.i.i, -8
  %sub.i421.i.i.i = add i32 %mul.neg.i420.i.i.i, %add.i.i.i373.i.i.i
  br label %if.end83.sink.split.i.i.i

if.end83.sink.split.i.i.i:                        ; preds = %if.end11.i422.i.i.i, %BIT_reloadDStreamFast.exit.i402.i.i.i
  %shr.i.i398.pn.i.i.i = phi i32 [ %shr.i.i398.i.i.i, %BIT_reloadDStreamFast.exit.i402.i.i.i ], [ %nbBytes.0.i416.i.i.i, %if.end11.i422.i.i.i ]
  %bitD.sroa.38.11.ph.ph.i.i.i = phi i32 [ %and.i.i401.i.i.i, %BIT_reloadDStreamFast.exit.i402.i.i.i ], [ %sub.i421.i.i.i, %if.end11.i422.i.i.i ]
  %idx.neg.i.i399.pn.i.i.i = sub i32 0, %shr.i.i398.pn.i.i.i
  %add.ptr.i.i400.sink.i.i.i = getelementptr i8, ptr %bitD.sroa.95.9825.i.i.i, i32 %idx.neg.i.i399.pn.i.i.i
  %69 = ptrtoint ptr %add.ptr.i.i400.sink.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %add.ptr.i.i400.sink.i.i.i, align 1
  %71 = call i32 @llvm.bswap.i32(i32 %70) #9
  br label %if.end83.i.i.i

if.end83.i.i.i:                                   ; preds = %if.end83.sink.split.i.i.i, %if.end3.i405.i.i.i.if.end83.i.i.i_crit_edge
  %bitD.sroa.0.10.ph.i.i.i = phi i32 [ %bitD.sroa.0.9823.i.i.i, %if.end3.i405.i.i.i.if.end83.i.i.i_crit_edge ], [ %71, %if.end83.sink.split.i.i.i ]
  %bitD.sroa.38.11.ph.i.i.i = phi i32 [ %add.i.i.i373.i.i.i, %if.end3.i405.i.i.i.if.end83.i.i.i_crit_edge ], [ %bitD.sroa.38.11.ph.ph.i.i.i, %if.end83.sink.split.i.i.i ]
  %bitD.sroa.95.10.ph.i.i.i = phi ptr [ %add.ptr.i.i, %if.end3.i405.i.i.i.if.end83.i.i.i_crit_edge ], [ %add.ptr.i.i400.sink.i.i.i, %if.end83.sink.split.i.i.i ]
  %cmp85.i.i.i = icmp ugt ptr %incdec.ptr746.i.i.i, %add.ptr53.i.i.i
  br i1 %cmp85.i.i.i, label %if.end83.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, label %if.end88.i.i.i

if.end83.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge: ; preds = %if.end83.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_decompress_wksp_body_default.exit

if.end88.i.i.i:                                   ; preds = %if.end83.i.i.i
  %arrayidx.i476.i.i.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i.i.i, i32 %state2.sroa.0.4827.i.i.i
  %72 = ptrtoint ptr %arrayidx.i476.i.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %DInfo.sroa.0.0.copyload.i477.i.i.i = load i16, ptr %arrayidx.i476.i.i.i, align 2
  %DInfo.sroa.5.0.arrayidx.sroa_idx.i478.i.i.i = getelementptr inbounds i8, ptr %arrayidx.i476.i.i.i, i32 2
  %73 = ptrtoint ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i478.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %DInfo.sroa.5.0.copyload.i479.i.i.i = load i8, ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i478.i.i.i, align 2
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i480.i.i.i = getelementptr inbounds i8, ptr %arrayidx.i476.i.i.i, i32 3
  %74 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i480.i.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %DInfo.sroa.7.0.copyload.i481.i.i.i = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i480.i.i.i, align 1
  %conv.i482.i.i.i = zext i8 %DInfo.sroa.7.0.copyload.i481.i.i.i to i32
  %and.i.i.i467.i.i.i = and i32 %bitD.sroa.38.11.ph.i.i.i, 31
  %shl.i.i.i468.i.i.i = shl i32 %bitD.sroa.0.10.ph.i.i.i, %and.i.i.i467.i.i.i
  %sub.i.i.i469.i.i.i = sub nsw i32 0, %conv.i482.i.i.i
  %and1.i.i.i470.i.i.i = and i32 %sub.i.i.i469.i.i.i, 31
  %shr.i.i.i471.i.i.i = lshr i32 %shl.i.i.i468.i.i.i, %and1.i.i.i470.i.i.i
  %add.i.i.i472.i.i.i = add i32 %bitD.sroa.38.11.ph.i.i.i, %conv.i482.i.i.i
  %conv3.i473.i.i.i = zext i16 %DInfo.sroa.0.0.copyload.i477.i.i.i to i32
  %add.i474.i.i.i = add i32 %shr.i.i.i471.i.i.i, %conv3.i473.i.i.i
  %incdec.ptr99772.i.i.i = getelementptr i8, ptr %op.2829.i.i.i, i32 2
  %75 = ptrtoint ptr %incdec.ptr746.i.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %DInfo.sroa.5.0.copyload.i479.i.i.i, ptr %incdec.ptr746.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i.i.i472.i.i.i)
  %cmp.i492773.i.i.i = icmp ugt i32 %add.i.i.i472.i.i.i, 32
  br i1 %cmp.i492773.i.i.i, label %if.end88.i.i.i.while.end.i.i.i_crit_edge, label %if.end.i496.i.i.i

if.end88.i.i.i.while.end.i.i.i_crit_edge:         ; preds = %if.end88.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i.i

if.end.i496.i.i.i:                                ; preds = %if.end88.i.i.i
  %cmp1.not.i495.i.i.i = icmp ult ptr %bitD.sroa.95.10.ph.i.i.i, %add.ptr.i.i.i.i
  br i1 %cmp1.not.i495.i.i.i, label %if.end3.i504.i.i.i, label %BIT_reloadDStreamFast.exit.i501.i.i.i

BIT_reloadDStreamFast.exit.i501.i.i.i:            ; preds = %if.end.i496.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i497.i.i.i = lshr i32 %add.i.i.i472.i.i.i, 3
  %and.i.i500.i.i.i = and i32 %add.i.i.i472.i.i.i, 7
  br label %BIT_reloadDStream.exit523.sink.split.i.i.i

if.end3.i504.i.i.i:                               ; preds = %if.end.i496.i.i.i
  %cmp5.i503.i.i.i = icmp eq ptr %bitD.sroa.95.10.ph.i.i.i, %add.ptr.i.i
  br i1 %cmp5.i503.i.i.i, label %if.end3.i504.i.i.i.BIT_reloadDStream.exit523.i.i.i_crit_edge, label %if.end11.i521.i.i.i

if.end3.i504.i.i.i.BIT_reloadDStream.exit523.i.i.i_crit_edge: ; preds = %if.end3.i504.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit523.i.i.i

if.end11.i521.i.i.i:                              ; preds = %if.end3.i504.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i508.i.i.i = lshr i32 %add.i.i.i472.i.i.i, 3
  %idx.neg.i509.i.i.i = sub nsw i32 0, %shr.i508.i.i.i
  %add.ptr.i510.i.i.i = getelementptr i8, ptr %bitD.sroa.95.10.ph.i.i.i, i32 %idx.neg.i509.i.i.i
  %cmp15.i511.i.i.i = icmp ult ptr %add.ptr.i510.i.i.i, %add.ptr.i.i
  %sub.ptr.lhs.cast.i512.i.i.i = ptrtoint ptr %bitD.sroa.95.10.ph.i.i.i to i32
  %sub.ptr.sub.i514.i.i.i = sub i32 %sub.ptr.lhs.cast.i512.i.i.i, %sub.ptr.rhs.cast.i414.i.i.i
  %nbBytes.0.i515.i.i.i = select i1 %cmp15.i511.i.i.i, i32 %sub.ptr.sub.i514.i.i.i, i32 %shr.i508.i.i.i
  %mul.neg.i519.i.i.i = mul i32 %nbBytes.0.i515.i.i.i, -8
  %sub.i520.i.i.i = add i32 %mul.neg.i519.i.i.i, %add.i.i.i472.i.i.i
  br label %BIT_reloadDStream.exit523.sink.split.i.i.i

BIT_reloadDStream.exit523.sink.split.i.i.i:       ; preds = %if.end11.i521.i.i.i, %BIT_reloadDStreamFast.exit.i501.i.i.i
  %shr.i.i497.pn.i.i.i = phi i32 [ %shr.i.i497.i.i.i, %BIT_reloadDStreamFast.exit.i501.i.i.i ], [ %nbBytes.0.i515.i.i.i, %if.end11.i521.i.i.i ]
  %bitD.sroa.38.13.ph.i.i.i = phi i32 [ %and.i.i500.i.i.i, %BIT_reloadDStreamFast.exit.i501.i.i.i ], [ %sub.i520.i.i.i, %if.end11.i521.i.i.i ]
  %idx.neg.i.i498.pn.i.i.i = sub i32 0, %shr.i.i497.pn.i.i.i
  %add.ptr.i.i499.sink.i.i.i = getelementptr i8, ptr %bitD.sroa.95.10.ph.i.i.i, i32 %idx.neg.i.i498.pn.i.i.i
  %76 = ptrtoint ptr %add.ptr.i.i499.sink.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %add.ptr.i.i499.sink.i.i.i, align 1
  %78 = call i32 @llvm.bswap.i32(i32 %77) #9
  br label %BIT_reloadDStream.exit523.i.i.i

BIT_reloadDStream.exit523.i.i.i:                  ; preds = %BIT_reloadDStream.exit523.sink.split.i.i.i, %if.end3.i504.i.i.i.BIT_reloadDStream.exit523.i.i.i_crit_edge
  %bitD.sroa.0.11.i.i.i = phi i32 [ %bitD.sroa.0.10.ph.i.i.i, %if.end3.i504.i.i.i.BIT_reloadDStream.exit523.i.i.i_crit_edge ], [ %78, %BIT_reloadDStream.exit523.sink.split.i.i.i ]
  %bitD.sroa.38.13.i.i.i = phi i32 [ %add.i.i.i472.i.i.i, %if.end3.i504.i.i.i.BIT_reloadDStream.exit523.i.i.i_crit_edge ], [ %bitD.sroa.38.13.ph.i.i.i, %BIT_reloadDStream.exit523.sink.split.i.i.i ]
  %bitD.sroa.95.11.i.i.i = phi ptr [ %add.ptr.i.i, %if.end3.i504.i.i.i.BIT_reloadDStream.exit523.i.i.i_crit_edge ], [ %add.ptr.i.i499.sink.i.i.i, %BIT_reloadDStream.exit523.sink.split.i.i.i ]
  %cmp54.i.i.i = icmp ugt ptr %incdec.ptr99772.i.i.i, %add.ptr53.i.i.i
  br i1 %cmp54.i.i.i, label %BIT_reloadDStream.exit523.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, label %BIT_reloadDStream.exit523.i.i.i.if.end57.i.i.i_crit_edge

BIT_reloadDStream.exit523.i.i.i.if.end57.i.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit523.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i.i.i

BIT_reloadDStream.exit523.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge: ; preds = %BIT_reloadDStream.exit523.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_decompress_wksp_body_default.exit

while.end.i.i.i:                                  ; preds = %if.end88.i.i.i.while.end.i.i.i_crit_edge, %if.end57.i.i.i.while.end.i.i.i_crit_edge
  %add.i375.i.i.i.sink = phi i32 [ %state2.sroa.0.4827.i.i.i, %if.end57.i.i.i.while.end.i.i.i_crit_edge ], [ %add.i375.i.i.i, %if.end88.i.i.i.while.end.i.i.i_crit_edge ]
  %.sink = phi i32 [ 2, %if.end57.i.i.i.while.end.i.i.i_crit_edge ], [ 3, %if.end88.i.i.i.while.end.i.i.i_crit_edge ]
  %incdec.ptr99772.i.i.i.sink = phi ptr [ %incdec.ptr746.i.i.i, %if.end57.i.i.i.while.end.i.i.i_crit_edge ], [ %incdec.ptr99772.i.i.i, %if.end88.i.i.i.while.end.i.i.i_crit_edge ]
  %arrayidx.i525.pn.i.i.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i.i.i, i32 %add.i375.i.i.i.sink
  %cond112.in.in.i.i.i = getelementptr inbounds i8, ptr %arrayidx.i525.pn.i.i.i, i32 2
  %79 = ptrtoint ptr %cond112.in.in.i.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %cond112.in.i.i.i = load i8, ptr %cond112.in.in.i.i.i, align 2
  %incdec.ptr114.i.i.i = getelementptr i8, ptr %op.2829.i.i.i, i32 %.sink
  %80 = ptrtoint ptr %incdec.ptr99772.i.i.i.sink to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %cond112.in.i.i.i, ptr %incdec.ptr99772.i.i.i.sink, align 1
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %incdec.ptr114.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %dst to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  br label %FSE_decompress_wksp_body_default.exit

if.end53.i.i:                                     ; preds = %cleanup.cont43.i.i
  br i1 %cmp.i.i6.i.i, label %if.end53.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, label %if.end.i.i9.i.i

if.end53.i.i.FSE_decompress_wksp_body_default.exit_crit_edge: ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_decompress_wksp_body_default.exit

if.end.i.i9.i.i:                                  ; preds = %if.end53.i.i
  %add.ptr.i.i7.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i)
  %cmp2.i.i8.i.i = icmp ugt i32 %sub.i.i, 3
  br i1 %cmp2.i.i8.i.i, label %if.then3.i.i13.i.i, label %if.else.i.i15.i.i

if.then3.i.i13.i.i:                               ; preds = %if.end.i.i9.i.i
  %sub.i.i10.i.i = add i32 %sub.i.i, -1
  %arrayidx.i.i11.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %sub.i.i10.i.i
  %81 = ptrtoint ptr %arrayidx.i.i11.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.i.i11.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i.i12.i.i = icmp eq i8 %82, 0
  br i1 %tobool.not.i.i12.i.i, label %if.then3.i.i13.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, label %BIT_initDStream.exit.i42.i.i

if.then3.i.i13.i.i.FSE_decompress_wksp_body_default.exit_crit_edge: ; preds = %if.then3.i.i13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_decompress_wksp_body_default.exit

if.else.i.i15.i.i:                                ; preds = %if.end.i.i9.i.i
  %83 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %add.ptr.i.i, align 1
  %conv18.i.i14.i.i = zext i8 %84 to i32
  %85 = zext i32 %sub.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %sub.i.i, label %if.else.i.i15.i.i.sw.epilog.i.i31.i.i_crit_edge [
    i32 2, label %if.else.i.i15.i.i.sw.bb47.i.i26.i.i_crit_edge
    i32 3, label %sw.bb41.i.i20.i.i
  ]

if.else.i.i15.i.i.sw.bb47.i.i26.i.i_crit_edge:    ; preds = %if.else.i.i15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb47.i.i26.i.i

if.else.i.i15.i.i.sw.epilog.i.i31.i.i_crit_edge:  ; preds = %if.else.i.i15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i31.i.i

sw.bb41.i.i20.i.i:                                ; preds = %if.else.i.i15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx42.i.i16.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 2
  %86 = ptrtoint ptr %arrayidx42.i.i16.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx42.i.i16.i.i, align 1
  %conv43.i.i17.i.i = zext i8 %87 to i32
  %shl44.i.i18.i.i = shl nuw nsw i32 %conv43.i.i17.i.i, 16
  %add46.i.i19.i.i = or i32 %shl44.i.i18.i.i, %conv18.i.i14.i.i
  br label %sw.bb47.i.i26.i.i

sw.bb47.i.i26.i.i:                                ; preds = %sw.bb41.i.i20.i.i, %if.else.i.i15.i.i.sw.bb47.i.i26.i.i_crit_edge
  %bitD.sroa.0.0.i21.i.i = phi i32 [ %add46.i.i19.i.i, %sw.bb41.i.i20.i.i ], [ %conv18.i.i14.i.i, %if.else.i.i15.i.i.sw.bb47.i.i26.i.i_crit_edge ]
  %arrayidx48.i.i22.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 1
  %88 = ptrtoint ptr %arrayidx48.i.i22.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx48.i.i22.i.i, align 1
  %conv49.i.i23.i.i = zext i8 %89 to i32
  %shl50.i.i24.i.i = shl nuw nsw i32 %conv49.i.i23.i.i, 8
  %add52.i.i25.i.i = add nuw nsw i32 %shl50.i.i24.i.i, %bitD.sroa.0.0.i21.i.i
  br label %sw.epilog.i.i31.i.i

sw.epilog.i.i31.i.i:                              ; preds = %sw.bb47.i.i26.i.i, %if.else.i.i15.i.i.sw.epilog.i.i31.i.i_crit_edge
  %bitD.sroa.0.1.i27.i.i = phi i32 [ %conv18.i.i14.i.i, %if.else.i.i15.i.i.sw.epilog.i.i31.i.i_crit_edge ], [ %add52.i.i25.i.i, %sw.bb47.i.i26.i.i ]
  %sub54.i.i28.i.i = add nsw i32 %sub.i.i, -1
  %arrayidx55.i.i29.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %sub54.i.i28.i.i
  %90 = ptrtoint ptr %arrayidx55.i.i29.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx55.i.i29.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool57.not.i.i30.i.i = icmp eq i8 %91, 0
  br i1 %tobool57.not.i.i30.i.i, label %sw.epilog.i.i31.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, label %BIT_initDStream.exit.thread693.i36.i.i

sw.epilog.i.i31.i.i.FSE_decompress_wksp_body_default.exit_crit_edge: ; preds = %sw.epilog.i.i31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_decompress_wksp_body_default.exit

BIT_initDStream.exit.thread693.i36.i.i:           ; preds = %sw.epilog.i.i31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv56.i.i32.i.i = zext i8 %91 to i32
  %92 = call i32 @llvm.ctlz.i32(i32 %conv56.i.i32.i.i, i1 true) #9, !range !11
  %.neg.i.i33.i.i = mul nsw i32 %sub.i.i, -8
  %mul.i.i34.i.i = add nsw i32 %.neg.i.i33.i.i, 9
  %add76.i.i35.i.i = add nsw i32 %mul.i.i34.i.i, %92
  br label %cleanup.cont.i53.i.i

BIT_initDStream.exit.i42.i.i:                     ; preds = %if.then3.i.i13.i.i
  %add.ptr4.i.i37.i.i = getelementptr i8, ptr %cSrc, i32 %cSrcSize
  %add.ptr5.i.i38.i.i = getelementptr i8, ptr %add.ptr4.i.i37.i.i, i32 -4
  %93 = ptrtoint ptr %add.ptr5.i.i38.i.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %add.ptr5.i.i38.i.i, align 1
  %95 = call i32 @llvm.bswap.i32(i32 %94) #9
  %conv.i.i39.i.i = zext i8 %82 to i32
  %96 = call i32 @llvm.ctlz.i32(i32 %conv.i.i39.i.i, i1 true) #9, !range !11
  %sub9.i.i40.i.i = add nsw i32 %96, -23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %sub.i.i)
  %cmp.i152.i41.i.i = icmp ult i32 %sub.i.i, -119
  br i1 %cmp.i152.i41.i.i, label %BIT_initDStream.exit.i42.i.i.cleanup.cont.i53.i.i_crit_edge, label %BIT_initDStream.exit.i42.i.i.FSE_decompress_wksp_body_default.exit_crit_edge

BIT_initDStream.exit.i42.i.i.FSE_decompress_wksp_body_default.exit_crit_edge: ; preds = %BIT_initDStream.exit.i42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_decompress_wksp_body_default.exit

BIT_initDStream.exit.i42.i.i.cleanup.cont.i53.i.i_crit_edge: ; preds = %BIT_initDStream.exit.i42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.cont.i53.i.i

cleanup.cont.i53.i.i:                             ; preds = %BIT_initDStream.exit.i42.i.i.cleanup.cont.i53.i.i_crit_edge, %BIT_initDStream.exit.thread693.i36.i.i
  %bitD.sroa.95.0705.i43.i.i = phi ptr [ %add.ptr.i.i, %BIT_initDStream.exit.thread693.i36.i.i ], [ %add.ptr5.i.i38.i.i, %BIT_initDStream.exit.i42.i.i.cleanup.cont.i53.i.i_crit_edge ]
  %bitD.sroa.38.0704.i44.i.i = phi i32 [ %add76.i.i35.i.i, %BIT_initDStream.exit.thread693.i36.i.i ], [ %sub9.i.i40.i.i, %BIT_initDStream.exit.i42.i.i.cleanup.cont.i53.i.i_crit_edge ]
  %bitD.sroa.0.2703.i45.i.i = phi i32 [ %bitD.sroa.0.1.i27.i.i, %BIT_initDStream.exit.thread693.i36.i.i ], [ %95, %BIT_initDStream.exit.i42.i.i.cleanup.cont.i53.i.i_crit_edge ]
  %97 = ptrtoint ptr %dtable.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %dtable.i.i, align 2
  %conv.i154.i46.i.i = zext i16 %98 to i32
  %99 = add nsw i32 %bitD.sroa.38.0704.i44.i.i, %conv.i154.i46.i.i
  %sub1.i.i.i.i47.i.i = sub nsw i32 0, %99
  %and.i.i.i.i.i48.i.i = and i32 %sub1.i.i.i.i47.i.i, 31
  %shr.i.i.i.i.i49.i.i = lshr i32 %bitD.sroa.0.2703.i45.i.i, %and.i.i.i.i.i48.i.i
  %arrayidx.i.i.i.i.i50.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %conv.i154.i46.i.i
  %100 = ptrtoint ptr %arrayidx.i.i.i.i.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i.i.i.i.i50.i.i, align 4
  %and1.i.i.i.i.i51.i.i = and i32 %shr.i.i.i.i.i49.i.i, %101
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %99)
  %cmp.i.i.i52.i.i = icmp ugt i32 %99, 32
  br i1 %cmp.i.i.i52.i.i, label %cleanup.cont.i53.i.i.FSE_initDState.exit.i86.i.i_crit_edge, label %if.end.i.i.i55.i.i

cleanup.cont.i53.i.i.FSE_initDState.exit.i86.i.i_crit_edge: ; preds = %cleanup.cont.i53.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_initDState.exit.i86.i.i

if.end.i.i.i55.i.i:                               ; preds = %cleanup.cont.i53.i.i
  %cmp1.not.i.i.i54.i.i = icmp ult ptr %bitD.sroa.95.0705.i43.i.i, %add.ptr.i.i7.i.i
  br i1 %cmp1.not.i.i.i54.i.i, label %if.end3.i.i.i60.i.i, label %BIT_reloadDStreamFast.exit.i.i.i58.i.i

BIT_reloadDStreamFast.exit.i.i.i58.i.i:           ; preds = %if.end.i.i.i55.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i.i56.i.i = lshr i32 %99, 3
  %and.i.i.i.i57.i.i = and i32 %99, 7
  br label %BIT_reloadDStream.exit.sink.split.i.i76.i.i

if.end3.i.i.i60.i.i:                              ; preds = %if.end.i.i.i55.i.i
  %cmp5.i.i.i59.i.i = icmp eq ptr %bitD.sroa.95.0705.i43.i.i, %add.ptr.i.i
  br i1 %cmp5.i.i.i59.i.i, label %if.end3.i.i.i60.i.i.FSE_initDState.exit.i86.i.i_crit_edge, label %if.end11.i.i.i71.i.i

if.end3.i.i.i60.i.i.FSE_initDState.exit.i86.i.i_crit_edge: ; preds = %if.end3.i.i.i60.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_initDState.exit.i86.i.i

if.end11.i.i.i71.i.i:                             ; preds = %if.end3.i.i.i60.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i61.i.i = lshr i32 %99, 3
  %idx.neg.i.i.i62.i.i = sub nsw i32 0, %shr.i.i.i61.i.i
  %add.ptr.i.i.i63.i.i = getelementptr i8, ptr %bitD.sroa.95.0705.i43.i.i, i32 %idx.neg.i.i.i62.i.i
  %cmp15.i.i.i64.i.i = icmp ult ptr %add.ptr.i.i.i63.i.i, %add.ptr.i.i
  %sub.ptr.lhs.cast.i.i.i65.i.i = ptrtoint ptr %bitD.sroa.95.0705.i43.i.i to i32
  %sub.ptr.rhs.cast.i.i.i66.i.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i.i.i67.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i65.i.i, %sub.ptr.rhs.cast.i.i.i66.i.i
  %nbBytes.0.i.i.i68.i.i = select i1 %cmp15.i.i.i64.i.i, i32 %sub.ptr.sub.i.i.i67.i.i, i32 %shr.i.i.i61.i.i
  %mul.neg.i.i.i69.i.i = mul i32 %nbBytes.0.i.i.i68.i.i, -8
  %sub.i.i.i70.i.i = add i32 %mul.neg.i.i.i69.i.i, %99
  br label %BIT_reloadDStream.exit.sink.split.i.i76.i.i

BIT_reloadDStream.exit.sink.split.i.i76.i.i:      ; preds = %if.end11.i.i.i71.i.i, %BIT_reloadDStreamFast.exit.i.i.i58.i.i
  %nbBytes.0.i.i.pn.i72.i.i = phi i32 [ %nbBytes.0.i.i.i68.i.i, %if.end11.i.i.i71.i.i ], [ %shr.i.i.i.i56.i.i, %BIT_reloadDStreamFast.exit.i.i.i58.i.i ]
  %and.i.i.sink.i.i73.i.i = phi i32 [ %sub.i.i.i70.i.i, %if.end11.i.i.i71.i.i ], [ %and.i.i.i.i57.i.i, %BIT_reloadDStreamFast.exit.i.i.i58.i.i ]
  %idx.neg21.i.i.pn.i74.i.i = sub i32 0, %nbBytes.0.i.i.pn.i72.i.i
  %bitD.sroa.95.1.i75.i.i = getelementptr i8, ptr %bitD.sroa.95.0705.i43.i.i, i32 %idx.neg21.i.i.pn.i74.i.i
  %102 = ptrtoint ptr %bitD.sroa.95.1.i75.i.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %bitD.sroa.95.1.i75.i.i, align 1
  %104 = call i32 @llvm.bswap.i32(i32 %103) #9
  br label %FSE_initDState.exit.i86.i.i

FSE_initDState.exit.i86.i.i:                      ; preds = %BIT_reloadDStream.exit.sink.split.i.i76.i.i, %if.end3.i.i.i60.i.i.FSE_initDState.exit.i86.i.i_crit_edge, %cleanup.cont.i53.i.i.FSE_initDState.exit.i86.i.i_crit_edge
  %bitD.sroa.0.3.i77.i.i = phi i32 [ %bitD.sroa.0.2703.i45.i.i, %cleanup.cont.i53.i.i.FSE_initDState.exit.i86.i.i_crit_edge ], [ %bitD.sroa.0.2703.i45.i.i, %if.end3.i.i.i60.i.i.FSE_initDState.exit.i86.i.i_crit_edge ], [ %104, %BIT_reloadDStream.exit.sink.split.i.i76.i.i ]
  %bitD.sroa.38.1.i78.i.i = phi i32 [ %99, %cleanup.cont.i53.i.i.FSE_initDState.exit.i86.i.i_crit_edge ], [ %99, %if.end3.i.i.i60.i.i.FSE_initDState.exit.i86.i.i_crit_edge ], [ %and.i.i.sink.i.i73.i.i, %BIT_reloadDStream.exit.sink.split.i.i76.i.i ]
  %bitD.sroa.95.2.i79.i.i = phi ptr [ %bitD.sroa.95.0705.i43.i.i, %cleanup.cont.i53.i.i.FSE_initDState.exit.i86.i.i_crit_edge ], [ %add.ptr.i.i, %if.end3.i.i.i60.i.i.FSE_initDState.exit.i86.i.i_crit_edge ], [ %bitD.sroa.95.1.i75.i.i, %BIT_reloadDStream.exit.sink.split.i.i76.i.i ]
  %add.ptr.i155.i80.i.i = getelementptr %struct.FSE_DecompressWksp, ptr %workSpace, i32 1
  %105 = add i32 %bitD.sroa.38.1.i78.i.i, %conv.i154.i46.i.i
  %sub1.i.i.i158.i81.i.i = sub i32 0, %105
  %and.i.i.i.i159.i82.i.i = and i32 %sub1.i.i.i158.i81.i.i, 31
  %shr.i.i.i.i160.i83.i.i = lshr i32 %bitD.sroa.0.3.i77.i.i, %and.i.i.i.i159.i82.i.i
  %and1.i.i.i.i162.i84.i.i = and i32 %shr.i.i.i.i160.i83.i.i, %101
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %105)
  %cmp.i.i163.i85.i.i = icmp ugt i32 %105, 32
  br i1 %cmp.i.i163.i85.i.i, label %FSE_initDState.exit.i86.i.i.for.end.i216.i.i_crit_edge, label %if.end.i.i167.i88.i.i

FSE_initDState.exit.i86.i.i.for.end.i216.i.i_crit_edge: ; preds = %FSE_initDState.exit.i86.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i216.i.i

if.end.i.i167.i88.i.i:                            ; preds = %FSE_initDState.exit.i86.i.i
  %cmp1.not.i.i166.i87.i.i = icmp ult ptr %bitD.sroa.95.2.i79.i.i, %add.ptr.i.i7.i.i
  br i1 %cmp1.not.i.i166.i87.i.i, label %if.end3.i.i175.i95.i.i, label %FSE_initDState.exit194.thread848.i93.i.i

FSE_initDState.exit194.thread848.i93.i.i:         ; preds = %if.end.i.i167.i88.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i168.i89.i.i = lshr i32 %105, 3
  %and.i.i.i171.i90.i.i = and i32 %105, 7
  %idx.neg21.i.i184.pn851.i91.i.i = sub nsw i32 0, %shr.i.i.i168.i89.i.i
  %bitD.sroa.95.3852.i92.i.i = getelementptr i8, ptr %bitD.sroa.95.2.i79.i.i, i32 %idx.neg21.i.i184.pn851.i91.i.i
  %106 = ptrtoint ptr %bitD.sroa.95.3852.i92.i.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %bitD.sroa.95.3852.i92.i.i, align 1
  %108 = call i32 @llvm.bswap.i32(i32 %107) #9
  br label %if.end.i199.lr.ph.i114.i.i

if.end3.i.i175.i95.i.i:                           ; preds = %if.end.i.i167.i88.i.i
  %cmp5.i.i174.i94.i.i = icmp eq ptr %bitD.sroa.95.2.i79.i.i, %add.ptr.i.i
  br i1 %cmp5.i.i174.i94.i.i, label %if.end3.i.i175.i95.i.i.if.end.i199.lr.ph.i114.i.i_crit_edge, label %FSE_initDState.exit194.i109.i.i

if.end3.i.i175.i95.i.i.if.end.i199.lr.ph.i114.i.i_crit_edge: ; preds = %if.end3.i.i175.i95.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i199.lr.ph.i114.i.i

FSE_initDState.exit194.i109.i.i:                  ; preds = %if.end3.i.i175.i95.i.i
  %shr.i.i176.i96.i.i = lshr i32 %105, 3
  %idx.neg.i.i177.i97.i.i = sub nsw i32 0, %shr.i.i176.i96.i.i
  %add.ptr.i.i178.i98.i.i = getelementptr i8, ptr %bitD.sroa.95.2.i79.i.i, i32 %idx.neg.i.i177.i97.i.i
  %cmp15.i.i179.i99.i.i = icmp ult ptr %add.ptr.i.i178.i98.i.i, %add.ptr.i.i
  %sub.ptr.lhs.cast.i.i180.i100.i.i = ptrtoint ptr %bitD.sroa.95.2.i79.i.i to i32
  %sub.ptr.rhs.cast.i.i181.i101.i.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i.i182.i102.i.i = sub i32 %sub.ptr.lhs.cast.i.i180.i100.i.i, %sub.ptr.rhs.cast.i.i181.i101.i.i
  %nbBytes.0.i.i183.i103.i.i = select i1 %cmp15.i.i179.i99.i.i, i32 %sub.ptr.sub.i.i182.i102.i.i, i32 %shr.i.i176.i96.i.i
  %mul.neg.i.i186.i104.i.i = mul i32 %nbBytes.0.i.i183.i103.i.i, -8
  %sub.i.i187.i105.i.i = add i32 %mul.neg.i.i186.i104.i.i, %105
  %idx.neg21.i.i184.pn.i106.i.i = sub i32 0, %nbBytes.0.i.i183.i103.i.i
  %bitD.sroa.95.3.i107.i.i = getelementptr i8, ptr %bitD.sroa.95.2.i79.i.i, i32 %idx.neg21.i.i184.pn.i106.i.i
  %109 = ptrtoint ptr %bitD.sroa.95.3.i107.i.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %bitD.sroa.95.3.i107.i.i, align 1
  %111 = call i32 @llvm.bswap.i32(i32 %110) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i.i187.i105.i.i)
  %cmp.i196793.i108.i.i = icmp ugt i32 %sub.i.i187.i105.i.i, 32
  br i1 %cmp.i196793.i108.i.i, label %FSE_initDState.exit194.i109.i.i.for.end.i216.i.i_crit_edge, label %FSE_initDState.exit194.i109.i.i.if.end.i199.lr.ph.i114.i.i_crit_edge

FSE_initDState.exit194.i109.i.i.if.end.i199.lr.ph.i114.i.i_crit_edge: ; preds = %FSE_initDState.exit194.i109.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i199.lr.ph.i114.i.i

FSE_initDState.exit194.i109.i.i.for.end.i216.i.i_crit_edge: ; preds = %FSE_initDState.exit194.i109.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i216.i.i

if.end.i199.lr.ph.i114.i.i:                       ; preds = %FSE_initDState.exit194.i109.i.i.if.end.i199.lr.ph.i114.i.i_crit_edge, %if.end3.i.i175.i95.i.i.if.end.i199.lr.ph.i114.i.i_crit_edge, %FSE_initDState.exit194.thread848.i93.i.i
  %bitD.sroa.95.4847.i110.i.i = phi ptr [ %bitD.sroa.95.3.i107.i.i, %FSE_initDState.exit194.i109.i.i.if.end.i199.lr.ph.i114.i.i_crit_edge ], [ %bitD.sroa.95.3852.i92.i.i, %FSE_initDState.exit194.thread848.i93.i.i ], [ %add.ptr.i.i, %if.end3.i.i175.i95.i.i.if.end.i199.lr.ph.i114.i.i_crit_edge ]
  %bitD.sroa.38.2846.i111.i.i = phi i32 [ %sub.i.i187.i105.i.i, %FSE_initDState.exit194.i109.i.i.if.end.i199.lr.ph.i114.i.i_crit_edge ], [ %and.i.i.i171.i90.i.i, %FSE_initDState.exit194.thread848.i93.i.i ], [ %105, %if.end3.i.i175.i95.i.i.if.end.i199.lr.ph.i114.i.i_crit_edge ]
  %bitD.sroa.0.4845.i112.i.i = phi i32 [ %111, %FSE_initDState.exit194.i109.i.i.if.end.i199.lr.ph.i114.i.i_crit_edge ], [ %108, %FSE_initDState.exit194.thread848.i93.i.i ], [ %bitD.sroa.0.3.i77.i.i, %if.end3.i.i175.i95.i.i.if.end.i199.lr.ph.i114.i.i_crit_edge ]
  %sub.ptr.rhs.cast.i.i113.i.i = ptrtoint ptr %add.ptr.i.i to i32
  br label %if.end.i199.i122.i.i

if.end.i199.i122.i.i:                             ; preds = %if.end29.i199.i.i.if.end.i199.i122.i.i_crit_edge, %if.end.i199.lr.ph.i114.i.i
  %op.0801.i115.i.i = phi ptr [ %dst, %if.end.i199.lr.ph.i114.i.i ], [ %add.ptr52.i206.i.i, %if.end29.i199.i.i.if.end.i199.i122.i.i_crit_edge ]
  %state2.sroa.0.0799.i116.i.i = phi i32 [ %and1.i.i.i.i162.i84.i.i, %if.end.i199.lr.ph.i114.i.i ], [ %add.i358.i202.i.i, %if.end29.i199.i.i.if.end.i199.i122.i.i_crit_edge ]
  %state1.sroa.0.0797.i117.i.i = phi i32 [ %and1.i.i.i.i.i51.i.i, %if.end.i199.lr.ph.i114.i.i ], [ %add.i342.i.i.i, %if.end29.i199.i.i.if.end.i199.i122.i.i_crit_edge ]
  %bitD.sroa.95.5796.i118.i.i = phi ptr [ %bitD.sroa.95.4847.i110.i.i, %if.end.i199.lr.ph.i114.i.i ], [ %bitD.sroa.95.7733.i189.i.i, %if.end29.i199.i.i.if.end.i199.i122.i.i_crit_edge ]
  %bitD.sroa.38.3795.i119.i.i = phi i32 [ %bitD.sroa.38.2846.i111.i.i, %if.end.i199.lr.ph.i114.i.i ], [ %143, %if.end29.i199.i.i.if.end.i199.i122.i.i_crit_edge ]
  %bitD.sroa.0.5794.i120.i.i = phi i32 [ %bitD.sroa.0.4845.i112.i.i, %if.end.i199.lr.ph.i114.i.i ], [ %bitD.sroa.0.7731.i191.i.i, %if.end29.i199.i.i.if.end.i199.i122.i.i_crit_edge ]
  %cmp1.not.i.i121.i.i = icmp ult ptr %bitD.sroa.95.5796.i118.i.i, %add.ptr.i.i7.i.i
  br i1 %cmp1.not.i.i121.i.i, label %if.end3.i.i127.i.i, label %BIT_reloadDStreamFast.exit.i.i125.i.i

BIT_reloadDStreamFast.exit.i.i125.i.i:            ; preds = %if.end.i199.i122.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i200.i123.i.i = lshr i32 %bitD.sroa.38.3795.i119.i.i, 3
  %and.i.i.i124.i.i = and i32 %bitD.sroa.38.3795.i119.i.i, 7
  br label %BIT_reloadDStream.exit.i147.i.i

if.end3.i.i127.i.i:                               ; preds = %if.end.i199.i122.i.i
  %cmp5.i.i126.i.i = icmp eq ptr %bitD.sroa.95.5796.i118.i.i, %add.ptr.i.i
  br i1 %cmp5.i.i126.i.i, label %if.end3.i.i127.i.i.for.end.i216.i.i_crit_edge, label %if.end11.i.i138.i.i

if.end3.i.i127.i.i.for.end.i216.i.i_crit_edge:    ; preds = %if.end3.i.i127.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i216.i.i

if.end11.i.i138.i.i:                              ; preds = %if.end3.i.i127.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i128.i.i = lshr i32 %bitD.sroa.38.3795.i119.i.i, 3
  %idx.neg.i.i129.i.i = sub nsw i32 0, %shr.i.i128.i.i
  %add.ptr.i204.i130.i.i = getelementptr i8, ptr %bitD.sroa.95.5796.i118.i.i, i32 %idx.neg.i.i129.i.i
  %cmp15.i.i131.i.i = icmp ult ptr %add.ptr.i204.i130.i.i, %add.ptr.i.i
  %sub.ptr.lhs.cast.i.i132.i.i = ptrtoint ptr %bitD.sroa.95.5796.i118.i.i to i32
  %sub.ptr.sub.i.i133.i.i = sub i32 %sub.ptr.lhs.cast.i.i132.i.i, %sub.ptr.rhs.cast.i.i113.i.i
  %nbBytes.0.i.i134.i.i = select i1 %cmp15.i.i131.i.i, i32 %sub.ptr.sub.i.i133.i.i, i32 %shr.i.i128.i.i
  %result.0.i.i135.i.i = zext i1 %cmp15.i.i131.i.i to i32
  %mul.neg.i.i136.i.i = mul i32 %nbBytes.0.i.i134.i.i, -8
  %sub.i205.i137.i.i = add i32 %mul.neg.i.i136.i.i, %bitD.sroa.38.3795.i119.i.i
  br label %BIT_reloadDStream.exit.i147.i.i

BIT_reloadDStream.exit.i147.i.i:                  ; preds = %if.end11.i.i138.i.i, %BIT_reloadDStreamFast.exit.i.i125.i.i
  %shr.i.i200.pn.i139.i.i = phi i32 [ %shr.i.i200.i123.i.i, %BIT_reloadDStreamFast.exit.i.i125.i.i ], [ %nbBytes.0.i.i134.i.i, %if.end11.i.i138.i.i ]
  %bitD.sroa.38.4.i140.i.i = phi i32 [ %and.i.i.i124.i.i, %BIT_reloadDStreamFast.exit.i.i125.i.i ], [ %sub.i205.i137.i.i, %if.end11.i.i138.i.i ]
  %retval.0.i.i141.i.i = phi i32 [ 0, %BIT_reloadDStreamFast.exit.i.i125.i.i ], [ %result.0.i.i135.i.i, %if.end11.i.i138.i.i ]
  %idx.neg.i.i201.pn.i142.i.i = sub i32 0, %shr.i.i200.pn.i139.i.i
  %add.ptr.i.i202.sink.i143.i.i = getelementptr i8, ptr %bitD.sroa.95.5796.i118.i.i, i32 %idx.neg.i.i201.pn.i142.i.i
  %112 = ptrtoint ptr %add.ptr.i.i202.sink.i143.i.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %add.ptr.i.i202.sink.i143.i.i, align 1
  %114 = call i32 @llvm.bswap.i32(i32 %113) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i141.i.i)
  %cmp.i144.i.i = icmp eq i32 %retval.0.i.i141.i.i, 0
  %cmp4.i145.i.i = icmp ult ptr %op.0801.i115.i.i, %add.ptr1.i5.i.i
  %and150.i146.i.i = and i1 %cmp4.i145.i.i, %cmp.i144.i.i
  br i1 %and150.i146.i.i, label %for.body.i155.i.i, label %BIT_reloadDStream.exit.i147.i.i.for.end.i216.i.i_crit_edge

BIT_reloadDStream.exit.i147.i.i.for.end.i216.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit.i147.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i216.i.i

for.body.i155.i.i:                                ; preds = %BIT_reloadDStream.exit.i147.i.i
  %arrayidx.i229.i148.i.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i80.i.i, i32 %state1.sroa.0.0797.i117.i.i
  %115 = ptrtoint ptr %arrayidx.i229.i148.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %DInfo.sroa.0.0.copyload.i230.i149.i.i = load i16, ptr %arrayidx.i229.i148.i.i, align 2
  %DInfo.sroa.5.0.arrayidx.sroa_idx.i231.i150.i.i = getelementptr inbounds i8, ptr %arrayidx.i229.i148.i.i, i32 2
  %116 = ptrtoint ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i231.i150.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %DInfo.sroa.5.0.copyload.i232.i151.i.i = load i8, ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i231.i150.i.i, align 2
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i233.i152.i.i = getelementptr inbounds i8, ptr %arrayidx.i229.i148.i.i, i32 3
  %117 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i233.i152.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %DInfo.sroa.7.0.copyload.i234.i153.i.i = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i233.i152.i.i, align 1
  %conv.i235.i154.i.i = zext i8 %DInfo.sroa.7.0.copyload.i234.i153.i.i to i32
  %118 = add i32 %bitD.sroa.38.4.i140.i.i, %conv.i235.i154.i.i
  %sub1.i.i.i237.i.i.i = sub i32 0, %118
  %and.i.i.i.i238.i.i.i = and i32 %sub1.i.i.i237.i.i.i, 31
  %shr.i.i.i.i239.i.i.i = lshr i32 %114, %and.i.i.i.i238.i.i.i
  %arrayidx.i.i.i.i240.i.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %conv.i235.i154.i.i
  %119 = ptrtoint ptr %arrayidx.i.i.i.i240.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i.i.i.i240.i.i.i, align 4
  %and1.i.i.i.i241.i.i.i = and i32 %shr.i.i.i.i239.i.i.i, %120
  %conv3.i242.i.i.i = zext i16 %DInfo.sroa.0.0.copyload.i230.i149.i.i to i32
  %add.i243.i.i.i = add i32 %and1.i.i.i.i241.i.i.i, %conv3.i242.i.i.i
  %121 = ptrtoint ptr %op.0801.i115.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %DInfo.sroa.5.0.copyload.i232.i151.i.i, ptr %op.0801.i115.i.i, align 1
  %arrayidx.i245.i.i.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i80.i.i, i32 %state2.sroa.0.0799.i116.i.i
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i249.i.i.i = getelementptr inbounds i8, ptr %arrayidx.i245.i.i.i, i32 3
  %122 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i249.i.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %DInfo.sroa.7.0.copyload.i250.i.i.i = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i249.i.i.i, align 1
  %conv.i251.i.i.i = zext i8 %DInfo.sroa.7.0.copyload.i250.i.i.i to i32
  %123 = add i32 %118, %conv.i251.i.i.i
  %sub1.i.i.i253.i.i.i = sub i32 0, %123
  %and.i.i.i.i254.i.i.i = and i32 %sub1.i.i.i253.i.i.i, 31
  %shr.i.i.i.i255.i.i.i = lshr i32 %114, %and.i.i.i.i254.i.i.i
  %arrayidx.i.i.i.i256.i.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %conv.i251.i.i.i
  %124 = ptrtoint ptr %arrayidx.i.i.i.i256.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx.i.i.i.i256.i.i.i, align 4
  %and1.i.i.i.i257.i.i.i = and i32 %shr.i.i.i.i255.i.i.i, %125
  %126 = ptrtoint ptr %arrayidx.i245.i.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %DInfo.sroa.0.0.copyload.i246.sink.i156.i.i = load i16, ptr %arrayidx.i245.i.i.i, align 2
  %conv3.i258.i157.i.i = zext i16 %DInfo.sroa.0.0.copyload.i246.sink.i156.i.i to i32
  %add.i259.i158.i.i = add i32 %and1.i.i.i.i257.i.i.i, %conv3.i258.i157.i.i
  %cond21.in.in.i159.i.i = getelementptr inbounds i8, ptr %arrayidx.i245.i.i.i, i32 2
  %127 = ptrtoint ptr %cond21.in.in.i159.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %cond21.in.i160.i.i = load i8, ptr %cond21.in.in.i159.i.i, align 2
  %arrayidx23.i161.i.i = getelementptr i8, ptr %op.0801.i115.i.i, i32 1
  %128 = ptrtoint ptr %arrayidx23.i161.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %cond21.in.i160.i.i, ptr %arrayidx23.i161.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %123)
  %cmp.i261.i162.i.i = icmp ugt i32 %123, 32
  br i1 %cmp.i261.i162.i.i, label %for.body.i155.i.i.if.then27.i188.i.i_crit_edge, label %if.end.i265.i164.i.i

for.body.i155.i.i.if.then27.i188.i.i_crit_edge:   ; preds = %for.body.i155.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27.i188.i.i

if.end.i265.i164.i.i:                             ; preds = %for.body.i155.i.i
  %cmp1.not.i264.i163.i.i = icmp ult ptr %add.ptr.i.i202.sink.i143.i.i, %add.ptr.i.i7.i.i
  br i1 %cmp1.not.i264.i163.i.i, label %if.end3.i273.i171.i.i, label %BIT_reloadDStream.exit292.thread725.i169.i.i

BIT_reloadDStream.exit292.thread725.i169.i.i:     ; preds = %if.end.i265.i164.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i266.i165.i.i = lshr i32 %123, 3
  %idx.neg.i.i267.i166.i.i = sub nsw i32 0, %shr.i.i266.i165.i.i
  %add.ptr.i.i268.i167.i.i = getelementptr i8, ptr %add.ptr.i.i202.sink.i143.i.i, i32 %idx.neg.i.i267.i166.i.i
  %and.i.i269.i168.i.i = and i32 %123, 7
  %129 = ptrtoint ptr %add.ptr.i.i268.i167.i.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %add.ptr.i.i268.i167.i.i, align 1
  %131 = call i32 @llvm.bswap.i32(i32 %130) #9
  br label %if.end29.i199.i.i

if.end3.i273.i171.i.i:                            ; preds = %if.end.i265.i164.i.i
  %cmp5.i272.i170.i.i = icmp eq ptr %add.ptr.i.i202.sink.i143.i.i, %add.ptr.i.i
  br i1 %cmp5.i272.i170.i.i, label %if.end3.i273.i171.i.i.if.then27.i188.i.i_crit_edge, label %BIT_reloadDStream.exit292.i183.i.i

if.end3.i273.i171.i.i.if.then27.i188.i.i_crit_edge: ; preds = %if.end3.i273.i171.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27.i188.i.i

BIT_reloadDStream.exit292.i183.i.i:               ; preds = %if.end3.i273.i171.i.i
  %shr.i277.i172.i.i = lshr i32 %123, 3
  %idx.neg.i278.i173.i.i = sub nsw i32 0, %shr.i277.i172.i.i
  %add.ptr.i279.i174.i.i = getelementptr i8, ptr %add.ptr.i.i202.sink.i143.i.i, i32 %idx.neg.i278.i173.i.i
  %cmp15.i280.i175.i.i = icmp ult ptr %add.ptr.i279.i174.i.i, %add.ptr.i.i
  %sub.ptr.lhs.cast.i281.i176.i.i = ptrtoint ptr %add.ptr.i.i202.sink.i143.i.i to i32
  %sub.ptr.sub.i283.i177.i.i = sub i32 %sub.ptr.lhs.cast.i281.i176.i.i, %sub.ptr.rhs.cast.i.i113.i.i
  %nbBytes.0.i284.i178.i.i = select i1 %cmp15.i280.i175.i.i, i32 %sub.ptr.sub.i283.i177.i.i, i32 %shr.i277.i172.i.i
  %idx.neg21.i286.i179.i.i = sub i32 0, %nbBytes.0.i284.i178.i.i
  %add.ptr22.i287.i180.i.i = getelementptr i8, ptr %add.ptr.i.i202.sink.i143.i.i, i32 %idx.neg21.i286.i179.i.i
  %mul.neg.i288.i181.i.i = mul i32 %nbBytes.0.i284.i178.i.i, -8
  %sub.i289.i182.i.i = add i32 %mul.neg.i288.i181.i.i, %123
  %132 = ptrtoint ptr %add.ptr22.i287.i180.i.i to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %add.ptr22.i287.i180.i.i, align 1
  %134 = call i32 @llvm.bswap.i32(i32 %133) #9
  br i1 %cmp15.i280.i175.i.i, label %BIT_reloadDStream.exit292.i183.i.i.if.then27.i188.i.i_crit_edge, label %BIT_reloadDStream.exit292.i183.i.i.if.end29.i199.i.i_crit_edge

BIT_reloadDStream.exit292.i183.i.i.if.end29.i199.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit292.i183.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i199.i.i

BIT_reloadDStream.exit292.i183.i.i.if.then27.i188.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit292.i183.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27.i188.i.i

if.then27.i188.i.i:                               ; preds = %BIT_reloadDStream.exit292.i183.i.i.if.then27.i188.i.i_crit_edge, %if.end3.i273.i171.i.i.if.then27.i188.i.i_crit_edge, %for.body.i155.i.i.if.then27.i188.i.i_crit_edge
  %bitD.sroa.95.7724.i184.i.i = phi ptr [ %add.ptr22.i287.i180.i.i, %BIT_reloadDStream.exit292.i183.i.i.if.then27.i188.i.i_crit_edge ], [ %add.ptr.i.i202.sink.i143.i.i, %for.body.i155.i.i.if.then27.i188.i.i_crit_edge ], [ %add.ptr.i.i, %if.end3.i273.i171.i.i.if.then27.i188.i.i_crit_edge ]
  %bitD.sroa.38.6723.i185.i.i = phi i32 [ %sub.i289.i182.i.i, %BIT_reloadDStream.exit292.i183.i.i.if.then27.i188.i.i_crit_edge ], [ %123, %for.body.i155.i.i.if.then27.i188.i.i_crit_edge ], [ %123, %if.end3.i273.i171.i.i.if.then27.i188.i.i_crit_edge ]
  %bitD.sroa.0.7722.i186.i.i = phi i32 [ %134, %BIT_reloadDStream.exit292.i183.i.i.if.then27.i188.i.i_crit_edge ], [ %114, %for.body.i155.i.i.if.then27.i188.i.i_crit_edge ], [ %114, %if.end3.i273.i171.i.i.if.then27.i188.i.i_crit_edge ]
  %add.ptr28.i187.i.i = getelementptr i8, ptr %op.0801.i115.i.i, i32 2
  br label %for.end.i216.i.i

if.end29.i199.i.i:                                ; preds = %BIT_reloadDStream.exit292.i183.i.i.if.end29.i199.i.i_crit_edge, %BIT_reloadDStream.exit292.thread725.i169.i.i
  %bitD.sroa.95.7733.i189.i.i = phi ptr [ %add.ptr.i.i268.i167.i.i, %BIT_reloadDStream.exit292.thread725.i169.i.i ], [ %add.ptr22.i287.i180.i.i, %BIT_reloadDStream.exit292.i183.i.i.if.end29.i199.i.i_crit_edge ]
  %bitD.sroa.38.6732.i190.i.i = phi i32 [ %and.i.i269.i168.i.i, %BIT_reloadDStream.exit292.thread725.i169.i.i ], [ %sub.i289.i182.i.i, %BIT_reloadDStream.exit292.i183.i.i.if.end29.i199.i.i_crit_edge ]
  %bitD.sroa.0.7731.i191.i.i = phi i32 [ %131, %BIT_reloadDStream.exit292.thread725.i169.i.i ], [ %134, %BIT_reloadDStream.exit292.i183.i.i.if.end29.i199.i.i_crit_edge ]
  %arrayidx.i328.i192.i.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i80.i.i, i32 %add.i243.i.i.i
  %135 = ptrtoint ptr %arrayidx.i328.i192.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %DInfo.sroa.0.0.copyload.i329.i193.i.i = load i16, ptr %arrayidx.i328.i192.i.i, align 2
  %DInfo.sroa.5.0.arrayidx.sroa_idx.i330.i194.i.i = getelementptr inbounds i8, ptr %arrayidx.i328.i192.i.i, i32 2
  %136 = ptrtoint ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i330.i194.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %DInfo.sroa.5.0.copyload.i331.i195.i.i = load i8, ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i330.i194.i.i, align 2
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i332.i196.i.i = getelementptr inbounds i8, ptr %arrayidx.i328.i192.i.i, i32 3
  %137 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i332.i196.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %DInfo.sroa.7.0.copyload.i333.i197.i.i = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i332.i196.i.i, align 1
  %conv.i334.i198.i.i = zext i8 %DInfo.sroa.7.0.copyload.i333.i197.i.i to i32
  %138 = add i32 %bitD.sroa.38.6732.i190.i.i, %conv.i334.i198.i.i
  %sub1.i.i.i336.i.i.i = sub i32 0, %138
  %and.i.i.i.i337.i.i.i = and i32 %sub1.i.i.i336.i.i.i, 31
  %shr.i.i.i.i338.i.i.i = lshr i32 %bitD.sroa.0.7731.i191.i.i, %and.i.i.i.i337.i.i.i
  %arrayidx.i.i.i.i339.i.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %conv.i334.i198.i.i
  %139 = ptrtoint ptr %arrayidx.i.i.i.i339.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.i.i.i.i339.i.i.i, align 4
  %and1.i.i.i.i340.i.i.i = and i32 %shr.i.i.i.i338.i.i.i, %140
  %conv3.i341.i.i.i = zext i16 %DInfo.sroa.0.0.copyload.i329.i193.i.i to i32
  %add.i342.i.i.i = add i32 %and1.i.i.i.i340.i.i.i, %conv3.i341.i.i.i
  %arrayidx40.c.i.i.i = getelementptr i8, ptr %op.0801.i115.i.i, i32 2
  %141 = ptrtoint ptr %arrayidx40.c.i.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %DInfo.sroa.5.0.copyload.i331.i195.i.i, ptr %arrayidx40.c.i.i.i, align 1
  %arrayidx.i344.i.i.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i80.i.i, i32 %add.i259.i158.i.i
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i348.i.i.i = getelementptr inbounds i8, ptr %arrayidx.i344.i.i.i, i32 3
  %142 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i348.i.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %DInfo.sroa.7.0.copyload.i349.i.i.i = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i348.i.i.i, align 1
  %conv.i350.i.i.i = zext i8 %DInfo.sroa.7.0.copyload.i349.i.i.i to i32
  %143 = add i32 %138, %conv.i350.i.i.i
  %sub1.i.i.i352.i.i.i = sub i32 0, %143
  %and.i.i.i.i353.i.i.i = and i32 %sub1.i.i.i352.i.i.i, 31
  %shr.i.i.i.i354.i.i.i = lshr i32 %bitD.sroa.0.7731.i191.i.i, %and.i.i.i.i353.i.i.i
  %arrayidx.i.i.i.i355.i.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %conv.i350.i.i.i
  %144 = ptrtoint ptr %arrayidx.i.i.i.i355.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx.i.i.i.i355.i.i.i, align 4
  %and1.i.i.i.i356.i.i.i = and i32 %shr.i.i.i.i354.i.i.i, %145
  %146 = ptrtoint ptr %arrayidx.i344.i.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %DInfo.sroa.0.0.copyload.i345.sink.i200.i.i = load i16, ptr %arrayidx.i344.i.i.i, align 2
  %conv3.i357.i201.i.i = zext i16 %DInfo.sroa.0.0.copyload.i345.sink.i200.i.i to i32
  %add.i358.i202.i.i = add i32 %and1.i.i.i.i356.i.i.i, %conv3.i357.i201.i.i
  %cond49.in.in.i203.i.i = getelementptr inbounds i8, ptr %arrayidx.i344.i.i.i, i32 2
  %147 = ptrtoint ptr %cond49.in.in.i203.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %cond49.in.i204.i.i = load i8, ptr %cond49.in.in.i203.i.i, align 2
  %arrayidx51.i205.i.i = getelementptr i8, ptr %op.0801.i115.i.i, i32 3
  %148 = ptrtoint ptr %arrayidx51.i205.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %cond49.in.i204.i.i, ptr %arrayidx51.i205.i.i, align 1
  %add.ptr52.i206.i.i = getelementptr i8, ptr %op.0801.i115.i.i, i32 4
  %cmp.i196.i207.i.i = icmp ugt i32 %143, 32
  br i1 %cmp.i196.i207.i.i, label %if.end29.i199.i.i.for.end.i216.i.i_crit_edge, label %if.end29.i199.i.i.if.end.i199.i122.i.i_crit_edge

if.end29.i199.i.i.if.end.i199.i122.i.i_crit_edge: ; preds = %if.end29.i199.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i199.i122.i.i

if.end29.i199.i.i.for.end.i216.i.i_crit_edge:     ; preds = %if.end29.i199.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i216.i.i

for.end.i216.i.i:                                 ; preds = %if.end29.i199.i.i.for.end.i216.i.i_crit_edge, %if.then27.i188.i.i, %BIT_reloadDStream.exit.i147.i.i.for.end.i216.i.i_crit_edge, %if.end3.i.i127.i.i.for.end.i216.i.i_crit_edge, %FSE_initDState.exit194.i109.i.i.for.end.i216.i.i_crit_edge, %FSE_initDState.exit.i86.i.i.for.end.i216.i.i_crit_edge
  %bitD.sroa.0.8.i208.i.i = phi i32 [ %bitD.sroa.0.7722.i186.i.i, %if.then27.i188.i.i ], [ %111, %FSE_initDState.exit194.i109.i.i.for.end.i216.i.i_crit_edge ], [ %bitD.sroa.0.3.i77.i.i, %FSE_initDState.exit.i86.i.i.for.end.i216.i.i_crit_edge ], [ %bitD.sroa.0.5794.i120.i.i, %if.end3.i.i127.i.i.for.end.i216.i.i_crit_edge ], [ %bitD.sroa.0.7731.i191.i.i, %if.end29.i199.i.i.for.end.i216.i.i_crit_edge ], [ %114, %BIT_reloadDStream.exit.i147.i.i.for.end.i216.i.i_crit_edge ]
  %bitD.sroa.38.8.i209.i.i = phi i32 [ %bitD.sroa.38.6723.i185.i.i, %if.then27.i188.i.i ], [ %sub.i.i187.i105.i.i, %FSE_initDState.exit194.i109.i.i.for.end.i216.i.i_crit_edge ], [ %105, %FSE_initDState.exit.i86.i.i.for.end.i216.i.i_crit_edge ], [ %bitD.sroa.38.3795.i119.i.i, %if.end3.i.i127.i.i.for.end.i216.i.i_crit_edge ], [ %143, %if.end29.i199.i.i.for.end.i216.i.i_crit_edge ], [ %bitD.sroa.38.4.i140.i.i, %BIT_reloadDStream.exit.i147.i.i.for.end.i216.i.i_crit_edge ]
  %bitD.sroa.95.8.i210.i.i = phi ptr [ %bitD.sroa.95.7724.i184.i.i, %if.then27.i188.i.i ], [ %bitD.sroa.95.3.i107.i.i, %FSE_initDState.exit194.i109.i.i.for.end.i216.i.i_crit_edge ], [ %bitD.sroa.95.2.i79.i.i, %FSE_initDState.exit.i86.i.i.for.end.i216.i.i_crit_edge ], [ %add.ptr.i.i, %if.end3.i.i127.i.i.for.end.i216.i.i_crit_edge ], [ %bitD.sroa.95.7733.i189.i.i, %if.end29.i199.i.i.for.end.i216.i.i_crit_edge ], [ %add.ptr.i.i202.sink.i143.i.i, %BIT_reloadDStream.exit.i147.i.i.for.end.i216.i.i_crit_edge ]
  %state1.sroa.0.3.i211.i.i = phi i32 [ %add.i243.i.i.i, %if.then27.i188.i.i ], [ %and1.i.i.i.i.i51.i.i, %FSE_initDState.exit194.i109.i.i.for.end.i216.i.i_crit_edge ], [ %and1.i.i.i.i.i51.i.i, %FSE_initDState.exit.i86.i.i.for.end.i216.i.i_crit_edge ], [ %state1.sroa.0.0797.i117.i.i, %if.end3.i.i127.i.i.for.end.i216.i.i_crit_edge ], [ %add.i342.i.i.i, %if.end29.i199.i.i.for.end.i216.i.i_crit_edge ], [ %state1.sroa.0.0797.i117.i.i, %BIT_reloadDStream.exit.i147.i.i.for.end.i216.i.i_crit_edge ]
  %state2.sroa.0.3.i212.i.i = phi i32 [ %add.i259.i158.i.i, %if.then27.i188.i.i ], [ %and1.i.i.i.i162.i84.i.i, %FSE_initDState.exit194.i109.i.i.for.end.i216.i.i_crit_edge ], [ %and1.i.i.i.i162.i84.i.i, %FSE_initDState.exit.i86.i.i.for.end.i216.i.i_crit_edge ], [ %state2.sroa.0.0799.i116.i.i, %if.end3.i.i127.i.i.for.end.i216.i.i_crit_edge ], [ %add.i358.i202.i.i, %if.end29.i199.i.i.for.end.i216.i.i_crit_edge ], [ %state2.sroa.0.0799.i116.i.i, %BIT_reloadDStream.exit.i147.i.i.for.end.i216.i.i_crit_edge ]
  %op.1.i213.i.i = phi ptr [ %add.ptr28.i187.i.i, %if.then27.i188.i.i ], [ %dst, %FSE_initDState.exit194.i109.i.i.for.end.i216.i.i_crit_edge ], [ %dst, %FSE_initDState.exit.i86.i.i.for.end.i216.i.i_crit_edge ], [ %op.0801.i115.i.i, %if.end3.i.i127.i.i.for.end.i216.i.i_crit_edge ], [ %add.ptr52.i206.i.i, %if.end29.i199.i.i.for.end.i216.i.i_crit_edge ], [ %op.0801.i115.i.i, %BIT_reloadDStream.exit.i147.i.i.for.end.i216.i.i_crit_edge ]
  %add.ptr53.i214.i.i = getelementptr i8, ptr %add.ptr.i4.i.i, i32 -2
  %cmp54822.i215.i.i = icmp ugt ptr %op.1.i213.i.i, %add.ptr53.i214.i.i
  br i1 %cmp54822.i215.i.i, label %for.end.i216.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, label %if.end57.lr.ph.i218.i.i

for.end.i216.i.i.FSE_decompress_wksp_body_default.exit_crit_edge: ; preds = %for.end.i216.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_decompress_wksp_body_default.exit

if.end57.lr.ph.i218.i.i:                          ; preds = %for.end.i216.i.i
  %sub.ptr.rhs.cast.i414.i217.i.i = ptrtoint ptr %add.ptr.i.i to i32
  br label %if.end57.i232.i.i

if.end57.i232.i.i:                                ; preds = %BIT_reloadDStream.exit523.i299.i.i.if.end57.i232.i.i_crit_edge, %if.end57.lr.ph.i218.i.i
  %op.2829.i219.i.i = phi ptr [ %op.1.i213.i.i, %if.end57.lr.ph.i218.i.i ], [ %incdec.ptr99.i.i.i, %BIT_reloadDStream.exit523.i299.i.i.if.end57.i232.i.i_crit_edge ]
  %state2.sroa.0.4827.i220.i.i = phi i32 [ %state2.sroa.0.3.i212.i.i, %if.end57.lr.ph.i218.i.i ], [ %add.i490.i.i.i, %BIT_reloadDStream.exit523.i299.i.i.if.end57.i232.i.i_crit_edge ]
  %state1.sroa.0.4826.i221.i.i = phi i32 [ %state1.sroa.0.3.i211.i.i, %if.end57.lr.ph.i218.i.i ], [ %add.i391.i.i.i, %BIT_reloadDStream.exit523.i299.i.i.if.end57.i232.i.i_crit_edge ]
  %bitD.sroa.95.9825.i222.i.i = phi ptr [ %bitD.sroa.95.8.i210.i.i, %if.end57.lr.ph.i218.i.i ], [ %bitD.sroa.95.11.i297.i.i, %BIT_reloadDStream.exit523.i299.i.i.if.end57.i232.i.i_crit_edge ]
  %bitD.sroa.38.9824.i223.i.i = phi i32 [ %bitD.sroa.38.8.i209.i.i, %if.end57.lr.ph.i218.i.i ], [ %bitD.sroa.38.13.i296.i.i, %BIT_reloadDStream.exit523.i299.i.i.if.end57.i232.i.i_crit_edge ]
  %bitD.sroa.0.9823.i224.i.i = phi i32 [ %bitD.sroa.0.8.i208.i.i, %if.end57.lr.ph.i218.i.i ], [ %bitD.sroa.0.11.i295.i.i, %BIT_reloadDStream.exit523.i299.i.i.if.end57.i232.i.i_crit_edge ]
  %arrayidx.i377.i225.i.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i80.i.i, i32 %state1.sroa.0.4826.i221.i.i
  %149 = ptrtoint ptr %arrayidx.i377.i225.i.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %DInfo.sroa.0.0.copyload.i378.i226.i.i = load i16, ptr %arrayidx.i377.i225.i.i, align 2
  %DInfo.sroa.5.0.arrayidx.sroa_idx.i379.i227.i.i = getelementptr inbounds i8, ptr %arrayidx.i377.i225.i.i, i32 2
  %150 = ptrtoint ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i379.i227.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %DInfo.sroa.5.0.copyload.i380.i228.i.i = load i8, ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i379.i227.i.i, align 2
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i381.i229.i.i = getelementptr inbounds i8, ptr %arrayidx.i377.i225.i.i, i32 3
  %151 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i381.i229.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %DInfo.sroa.7.0.copyload.i382.i230.i.i = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i381.i229.i.i, align 1
  %conv.i383.i231.i.i = zext i8 %DInfo.sroa.7.0.copyload.i382.i230.i.i to i32
  %152 = add i32 %bitD.sroa.38.9824.i223.i.i, %conv.i383.i231.i.i
  %sub1.i.i.i385.i.i.i = sub i32 0, %152
  %and.i.i.i.i386.i.i.i = and i32 %sub1.i.i.i385.i.i.i, 31
  %shr.i.i.i.i387.i.i.i = lshr i32 %bitD.sroa.0.9823.i224.i.i, %and.i.i.i.i386.i.i.i
  %arrayidx.i.i.i.i388.i.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %conv.i383.i231.i.i
  %153 = ptrtoint ptr %arrayidx.i.i.i.i388.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx.i.i.i.i388.i.i.i, align 4
  %and1.i.i.i.i389.i.i.i = and i32 %shr.i.i.i.i387.i.i.i, %154
  %conv3.i390.i.i.i = zext i16 %DInfo.sroa.0.0.copyload.i378.i226.i.i to i32
  %add.i391.i.i.i = add i32 %and1.i.i.i.i389.i.i.i, %conv3.i390.i.i.i
  %incdec.ptr.i.i.i = getelementptr i8, ptr %op.2829.i219.i.i, i32 1
  %155 = ptrtoint ptr %op.2829.i219.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %DInfo.sroa.5.0.copyload.i380.i228.i.i, ptr %op.2829.i219.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %152)
  %cmp.i393.i.i.i = icmp ugt i32 %152, 32
  br i1 %cmp.i393.i.i.i, label %if.end57.i232.i.i.while.end.i309.i.i_crit_edge, label %if.end.i397.i234.i.i

if.end57.i232.i.i.while.end.i309.i.i_crit_edge:   ; preds = %if.end57.i232.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i309.i.i

if.end.i397.i234.i.i:                             ; preds = %if.end57.i232.i.i
  %cmp1.not.i396.i233.i.i = icmp ult ptr %bitD.sroa.95.9825.i222.i.i, %add.ptr.i.i7.i.i
  br i1 %cmp1.not.i396.i233.i.i, label %if.end3.i405.i239.i.i, label %BIT_reloadDStreamFast.exit.i402.i237.i.i

BIT_reloadDStreamFast.exit.i402.i237.i.i:         ; preds = %if.end.i397.i234.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i398.i235.i.i = lshr i32 %152, 3
  %and.i.i401.i236.i.i = and i32 %152, 7
  br label %if.end83.sink.split.i259.i.i

if.end3.i405.i239.i.i:                            ; preds = %if.end.i397.i234.i.i
  %cmp5.i404.i238.i.i = icmp eq ptr %bitD.sroa.95.9825.i222.i.i, %add.ptr.i.i
  br i1 %cmp5.i404.i238.i.i, label %if.end3.i405.i239.i.i.if.end83.i264.i.i_crit_edge, label %if.end11.i422.i249.i.i

if.end3.i405.i239.i.i.if.end83.i264.i.i_crit_edge: ; preds = %if.end3.i405.i239.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i264.i.i

if.end11.i422.i249.i.i:                           ; preds = %if.end3.i405.i239.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i409.i240.i.i = lshr i32 %152, 3
  %idx.neg.i410.i241.i.i = sub nsw i32 0, %shr.i409.i240.i.i
  %add.ptr.i411.i242.i.i = getelementptr i8, ptr %bitD.sroa.95.9825.i222.i.i, i32 %idx.neg.i410.i241.i.i
  %cmp15.i412.i243.i.i = icmp ult ptr %add.ptr.i411.i242.i.i, %add.ptr.i.i
  %sub.ptr.lhs.cast.i413.i244.i.i = ptrtoint ptr %bitD.sroa.95.9825.i222.i.i to i32
  %sub.ptr.sub.i415.i245.i.i = sub i32 %sub.ptr.lhs.cast.i413.i244.i.i, %sub.ptr.rhs.cast.i414.i217.i.i
  %nbBytes.0.i416.i246.i.i = select i1 %cmp15.i412.i243.i.i, i32 %sub.ptr.sub.i415.i245.i.i, i32 %shr.i409.i240.i.i
  %mul.neg.i420.i247.i.i = mul i32 %nbBytes.0.i416.i246.i.i, -8
  %sub.i421.i248.i.i = add i32 %mul.neg.i420.i247.i.i, %152
  br label %if.end83.sink.split.i259.i.i

if.end83.sink.split.i259.i.i:                     ; preds = %if.end11.i422.i249.i.i, %BIT_reloadDStreamFast.exit.i402.i237.i.i
  %shr.i.i398.pn.i255.i.i = phi i32 [ %shr.i.i398.i235.i.i, %BIT_reloadDStreamFast.exit.i402.i237.i.i ], [ %nbBytes.0.i416.i246.i.i, %if.end11.i422.i249.i.i ]
  %bitD.sroa.38.11.ph.ph.i256.i.i = phi i32 [ %and.i.i401.i236.i.i, %BIT_reloadDStreamFast.exit.i402.i237.i.i ], [ %sub.i421.i248.i.i, %if.end11.i422.i249.i.i ]
  %idx.neg.i.i399.pn.i257.i.i = sub i32 0, %shr.i.i398.pn.i255.i.i
  %add.ptr.i.i400.sink.i258.i.i = getelementptr i8, ptr %bitD.sroa.95.9825.i222.i.i, i32 %idx.neg.i.i399.pn.i257.i.i
  %156 = ptrtoint ptr %add.ptr.i.i400.sink.i258.i.i to i32
  call void @__asan_loadN_noabort(i32 %156, i32 4)
  %157 = load i32, ptr %add.ptr.i.i400.sink.i258.i.i, align 1
  %158 = call i32 @llvm.bswap.i32(i32 %157) #9
  br label %if.end83.i264.i.i

if.end83.i264.i.i:                                ; preds = %if.end83.sink.split.i259.i.i, %if.end3.i405.i239.i.i.if.end83.i264.i.i_crit_edge
  %bitD.sroa.0.10.ph.i260.i.i = phi i32 [ %bitD.sroa.0.9823.i224.i.i, %if.end3.i405.i239.i.i.if.end83.i264.i.i_crit_edge ], [ %158, %if.end83.sink.split.i259.i.i ]
  %bitD.sroa.38.11.ph.i261.i.i = phi i32 [ %152, %if.end3.i405.i239.i.i.if.end83.i264.i.i_crit_edge ], [ %bitD.sroa.38.11.ph.ph.i256.i.i, %if.end83.sink.split.i259.i.i ]
  %bitD.sroa.95.10.ph.i262.i.i = phi ptr [ %add.ptr.i.i, %if.end3.i405.i239.i.i.if.end83.i264.i.i_crit_edge ], [ %add.ptr.i.i400.sink.i258.i.i, %if.end83.sink.split.i259.i.i ]
  %cmp85.i263.i.i = icmp ugt ptr %incdec.ptr.i.i.i, %add.ptr53.i214.i.i
  br i1 %cmp85.i263.i.i, label %if.end83.i264.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, label %if.end88.i272.i.i

if.end83.i264.i.i.FSE_decompress_wksp_body_default.exit_crit_edge: ; preds = %if.end83.i264.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_decompress_wksp_body_default.exit

if.end88.i272.i.i:                                ; preds = %if.end83.i264.i.i
  %arrayidx.i476.i265.i.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i80.i.i, i32 %state2.sroa.0.4827.i220.i.i
  %159 = ptrtoint ptr %arrayidx.i476.i265.i.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %DInfo.sroa.0.0.copyload.i477.i266.i.i = load i16, ptr %arrayidx.i476.i265.i.i, align 2
  %DInfo.sroa.5.0.arrayidx.sroa_idx.i478.i267.i.i = getelementptr inbounds i8, ptr %arrayidx.i476.i265.i.i, i32 2
  %160 = ptrtoint ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i478.i267.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %DInfo.sroa.5.0.copyload.i479.i268.i.i = load i8, ptr %DInfo.sroa.5.0.arrayidx.sroa_idx.i478.i267.i.i, align 2
  %DInfo.sroa.7.0.arrayidx.sroa_idx.i480.i269.i.i = getelementptr inbounds i8, ptr %arrayidx.i476.i265.i.i, i32 3
  %161 = ptrtoint ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i480.i269.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %DInfo.sroa.7.0.copyload.i481.i270.i.i = load i8, ptr %DInfo.sroa.7.0.arrayidx.sroa_idx.i480.i269.i.i, align 1
  %conv.i482.i271.i.i = zext i8 %DInfo.sroa.7.0.copyload.i481.i270.i.i to i32
  %162 = add i32 %bitD.sroa.38.11.ph.i261.i.i, %conv.i482.i271.i.i
  %sub1.i.i.i484.i.i.i = sub i32 0, %162
  %and.i.i.i.i485.i.i.i = and i32 %sub1.i.i.i484.i.i.i, 31
  %shr.i.i.i.i486.i.i.i = lshr i32 %bitD.sroa.0.10.ph.i260.i.i, %and.i.i.i.i485.i.i.i
  %arrayidx.i.i.i.i487.i.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %conv.i482.i271.i.i
  %163 = ptrtoint ptr %arrayidx.i.i.i.i487.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx.i.i.i.i487.i.i.i, align 4
  %and1.i.i.i.i488.i.i.i = and i32 %shr.i.i.i.i486.i.i.i, %164
  %conv3.i489.i.i.i = zext i16 %DInfo.sroa.0.0.copyload.i477.i266.i.i to i32
  %add.i490.i.i.i = add i32 %and1.i.i.i.i488.i.i.i, %conv3.i489.i.i.i
  %incdec.ptr99.i.i.i = getelementptr i8, ptr %op.2829.i219.i.i, i32 2
  %165 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %DInfo.sroa.5.0.copyload.i479.i268.i.i, ptr %incdec.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %162)
  %cmp.i492.i.i.i = icmp ugt i32 %162, 32
  br i1 %cmp.i492.i.i.i, label %if.end88.i272.i.i.while.end.i309.i.i_crit_edge, label %if.end.i496.i274.i.i

if.end88.i272.i.i.while.end.i309.i.i_crit_edge:   ; preds = %if.end88.i272.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i309.i.i

if.end.i496.i274.i.i:                             ; preds = %if.end88.i272.i.i
  %cmp1.not.i495.i273.i.i = icmp ult ptr %bitD.sroa.95.10.ph.i262.i.i, %add.ptr.i.i7.i.i
  br i1 %cmp1.not.i495.i273.i.i, label %if.end3.i504.i279.i.i, label %BIT_reloadDStreamFast.exit.i501.i277.i.i

BIT_reloadDStreamFast.exit.i501.i277.i.i:         ; preds = %if.end.i496.i274.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i497.i275.i.i = lshr i32 %162, 3
  %and.i.i500.i276.i.i = and i32 %162, 7
  br label %BIT_reloadDStream.exit523.sink.split.i294.i.i

if.end3.i504.i279.i.i:                            ; preds = %if.end.i496.i274.i.i
  %cmp5.i503.i278.i.i = icmp eq ptr %bitD.sroa.95.10.ph.i262.i.i, %add.ptr.i.i
  br i1 %cmp5.i503.i278.i.i, label %if.end3.i504.i279.i.i.BIT_reloadDStream.exit523.i299.i.i_crit_edge, label %if.end11.i521.i289.i.i

if.end3.i504.i279.i.i.BIT_reloadDStream.exit523.i299.i.i_crit_edge: ; preds = %if.end3.i504.i279.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit523.i299.i.i

if.end11.i521.i289.i.i:                           ; preds = %if.end3.i504.i279.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i508.i280.i.i = lshr i32 %162, 3
  %idx.neg.i509.i281.i.i = sub nsw i32 0, %shr.i508.i280.i.i
  %add.ptr.i510.i282.i.i = getelementptr i8, ptr %bitD.sroa.95.10.ph.i262.i.i, i32 %idx.neg.i509.i281.i.i
  %cmp15.i511.i283.i.i = icmp ult ptr %add.ptr.i510.i282.i.i, %add.ptr.i.i
  %sub.ptr.lhs.cast.i512.i284.i.i = ptrtoint ptr %bitD.sroa.95.10.ph.i262.i.i to i32
  %sub.ptr.sub.i514.i285.i.i = sub i32 %sub.ptr.lhs.cast.i512.i284.i.i, %sub.ptr.rhs.cast.i414.i217.i.i
  %nbBytes.0.i515.i286.i.i = select i1 %cmp15.i511.i283.i.i, i32 %sub.ptr.sub.i514.i285.i.i, i32 %shr.i508.i280.i.i
  %mul.neg.i519.i287.i.i = mul i32 %nbBytes.0.i515.i286.i.i, -8
  %sub.i520.i288.i.i = add i32 %mul.neg.i519.i287.i.i, %162
  br label %BIT_reloadDStream.exit523.sink.split.i294.i.i

BIT_reloadDStream.exit523.sink.split.i294.i.i:    ; preds = %if.end11.i521.i289.i.i, %BIT_reloadDStreamFast.exit.i501.i277.i.i
  %shr.i.i497.pn.i290.i.i = phi i32 [ %shr.i.i497.i275.i.i, %BIT_reloadDStreamFast.exit.i501.i277.i.i ], [ %nbBytes.0.i515.i286.i.i, %if.end11.i521.i289.i.i ]
  %bitD.sroa.38.13.ph.i291.i.i = phi i32 [ %and.i.i500.i276.i.i, %BIT_reloadDStreamFast.exit.i501.i277.i.i ], [ %sub.i520.i288.i.i, %if.end11.i521.i289.i.i ]
  %idx.neg.i.i498.pn.i292.i.i = sub i32 0, %shr.i.i497.pn.i290.i.i
  %add.ptr.i.i499.sink.i293.i.i = getelementptr i8, ptr %bitD.sroa.95.10.ph.i262.i.i, i32 %idx.neg.i.i498.pn.i292.i.i
  %166 = ptrtoint ptr %add.ptr.i.i499.sink.i293.i.i to i32
  call void @__asan_loadN_noabort(i32 %166, i32 4)
  %167 = load i32, ptr %add.ptr.i.i499.sink.i293.i.i, align 1
  %168 = call i32 @llvm.bswap.i32(i32 %167) #9
  br label %BIT_reloadDStream.exit523.i299.i.i

BIT_reloadDStream.exit523.i299.i.i:               ; preds = %BIT_reloadDStream.exit523.sink.split.i294.i.i, %if.end3.i504.i279.i.i.BIT_reloadDStream.exit523.i299.i.i_crit_edge
  %bitD.sroa.0.11.i295.i.i = phi i32 [ %bitD.sroa.0.10.ph.i260.i.i, %if.end3.i504.i279.i.i.BIT_reloadDStream.exit523.i299.i.i_crit_edge ], [ %168, %BIT_reloadDStream.exit523.sink.split.i294.i.i ]
  %bitD.sroa.38.13.i296.i.i = phi i32 [ %162, %if.end3.i504.i279.i.i.BIT_reloadDStream.exit523.i299.i.i_crit_edge ], [ %bitD.sroa.38.13.ph.i291.i.i, %BIT_reloadDStream.exit523.sink.split.i294.i.i ]
  %bitD.sroa.95.11.i297.i.i = phi ptr [ %add.ptr.i.i, %if.end3.i504.i279.i.i.BIT_reloadDStream.exit523.i299.i.i_crit_edge ], [ %add.ptr.i.i499.sink.i293.i.i, %BIT_reloadDStream.exit523.sink.split.i294.i.i ]
  %cmp54.i298.i.i = icmp ugt ptr %incdec.ptr99.i.i.i, %add.ptr53.i214.i.i
  br i1 %cmp54.i298.i.i, label %BIT_reloadDStream.exit523.i299.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, label %BIT_reloadDStream.exit523.i299.i.i.if.end57.i232.i.i_crit_edge

BIT_reloadDStream.exit523.i299.i.i.if.end57.i232.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit523.i299.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i232.i.i

BIT_reloadDStream.exit523.i299.i.i.FSE_decompress_wksp_body_default.exit_crit_edge: ; preds = %BIT_reloadDStream.exit523.i299.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %FSE_decompress_wksp_body_default.exit

while.end.i309.i.i:                               ; preds = %if.end88.i272.i.i.while.end.i309.i.i_crit_edge, %if.end57.i232.i.i.while.end.i309.i.i_crit_edge
  %add.i391.i.i.i.sink = phi i32 [ %state2.sroa.0.4827.i220.i.i, %if.end57.i232.i.i.while.end.i309.i.i_crit_edge ], [ %add.i391.i.i.i, %if.end88.i272.i.i.while.end.i309.i.i_crit_edge ]
  %.sink77 = phi i32 [ 2, %if.end57.i232.i.i.while.end.i309.i.i_crit_edge ], [ 3, %if.end88.i272.i.i.while.end.i309.i.i_crit_edge ]
  %incdec.ptr99.i.i.i.sink = phi ptr [ %incdec.ptr.i.i.i, %if.end57.i232.i.i.while.end.i309.i.i_crit_edge ], [ %incdec.ptr99.i.i.i, %if.end88.i272.i.i.while.end.i309.i.i_crit_edge ]
  %arrayidx.i525.pn.i300.i.i = getelementptr %struct.FSE_decode_t, ptr %add.ptr.i155.i80.i.i, i32 %add.i391.i.i.i.sink
  %cond112.in.in.i301.i.i = getelementptr inbounds i8, ptr %arrayidx.i525.pn.i300.i.i, i32 2
  %169 = ptrtoint ptr %cond112.in.in.i301.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %cond112.in.i302.i.i = load i8, ptr %cond112.in.in.i301.i.i, align 2
  %incdec.ptr114.i303.i.i = getelementptr i8, ptr %op.2829.i219.i.i, i32 %.sink77
  %170 = ptrtoint ptr %incdec.ptr99.i.i.i.sink to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %cond112.in.i302.i.i, ptr %incdec.ptr99.i.i.i.sink, align 1
  %sub.ptr.lhs.cast.i306.i.i = ptrtoint ptr %incdec.ptr114.i303.i.i to i32
  %sub.ptr.rhs.cast.i307.i.i = ptrtoint ptr %dst to i32
  %sub.ptr.sub.i308.i.i = sub i32 %sub.ptr.lhs.cast.i306.i.i, %sub.ptr.rhs.cast.i307.i.i
  br label %FSE_decompress_wksp_body_default.exit

FSE_decompress_wksp_body_default.exit:            ; preds = %while.end.i309.i.i, %BIT_reloadDStream.exit523.i299.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, %if.end83.i264.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, %for.end.i216.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, %BIT_initDStream.exit.i42.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, %sw.epilog.i.i31.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, %if.then3.i.i13.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, %if.end53.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, %while.end.i.i.i, %BIT_reloadDStream.exit523.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, %if.end83.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, %for.end.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, %BIT_initDStream.exit.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, %sw.epilog.i.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, %if.then3.i.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, %if.then49.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, %if.end22.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, %cleanup.cont.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, %if.end3.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, %if.end.i.i.FSE_decompress_wksp_body_default.exit_crit_edge, %entry.FSE_decompress_wksp_body_default.exit_crit_edge
  %retval.3.i.i = phi i32 [ %call36.i.i, %if.end22.i.i.FSE_decompress_wksp_body_default.exit_crit_edge ], [ -1, %entry.FSE_decompress_wksp_body_default.exit_crit_edge ], [ -44, %cleanup.cont.i.i.FSE_decompress_wksp_body_default.exit_crit_edge ], [ %sub.ptr.sub.i.i.i, %while.end.i.i.i ], [ %sub.i.i, %BIT_initDStream.exit.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge ], [ -20, %sw.epilog.i.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge ], [ -1, %if.then3.i.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge ], [ -72, %if.then49.i.i.FSE_decompress_wksp_body_default.exit_crit_edge ], [ -70, %for.end.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge ], [ %sub.ptr.sub.i308.i.i, %while.end.i309.i.i ], [ %sub.i.i, %BIT_initDStream.exit.i42.i.i.FSE_decompress_wksp_body_default.exit_crit_edge ], [ -20, %sw.epilog.i.i31.i.i.FSE_decompress_wksp_body_default.exit_crit_edge ], [ -1, %if.then3.i.i13.i.i.FSE_decompress_wksp_body_default.exit_crit_edge ], [ -72, %if.end53.i.i.FSE_decompress_wksp_body_default.exit_crit_edge ], [ -70, %for.end.i216.i.i.FSE_decompress_wksp_body_default.exit_crit_edge ], [ -44, %if.end3.i.i.FSE_decompress_wksp_body_default.exit_crit_edge ], [ %call.i.i, %if.end.i.i.FSE_decompress_wksp_body_default.exit_crit_edge ], [ -70, %BIT_reloadDStream.exit523.i299.i.i.FSE_decompress_wksp_body_default.exit_crit_edge ], [ -70, %if.end83.i264.i.i.FSE_decompress_wksp_body_default.exit_crit_edge ], [ -70, %BIT_reloadDStream.exit523.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge ], [ -70, %if.end83.i.i.i.FSE_decompress_wksp_body_default.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maxSymbolValue.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tableLog.i.i) #9
  ret i32 %retval.3.i.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_readNCount_bmi2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @BIT_mask, !1, !"BIT_mask", i1 false, i1 false}
!1 = !{!"../lib/zstd/common/bitstream.h", i32 153, i32 23}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i32 0, i32 33}
!12 = !{!"auto-init"}
!13 = !{i32 -46, i32 1}
