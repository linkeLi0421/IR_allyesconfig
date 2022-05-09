; ModuleID = '/llk/IR_all_yes/lib/zstd/compress/huf_compress.c_pt.bc'
source_filename = "../lib/zstd/compress/huf_compress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.HUF_WriteCTableWksp = type { %struct.HUF_CompressWeightsWksp, [13 x i8], [255 x i8] }
%struct.HUF_CompressWeightsWksp = type { [59 x i32], [30 x i32], [13 x i32], [13 x i16] }
%struct.HUF_CElt_s = type { i16, i8 }
%struct.nodeElt_s = type { i32, i16, i8, i8 }
%struct.HUF_buildCTable_wksp_tables = type { [512 x %struct.nodeElt_s], [32 x %struct.rankPos] }
%struct.rankPos = type { i32, i32 }
%struct.HUF_compress_tables_t = type { [256 x i32], [256 x %struct.HUF_CElt_s], %union.anon }
%union.anon = type { %struct.HUF_buildCTable_wksp_tables }

@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_optimalTableLog(i32 noundef %maxTableLog, i32 noundef %srcSize, i32 noundef %maxSymbolValue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @FSE_optimalTableLog_internal(i32 noundef %maxTableLog, i32 noundef %srcSize, i32 noundef %maxSymbolValue, i32 noundef 1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_optimalTableLog_internal(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_writeCTable_wksp(ptr noundef %dst, i32 noundef %maxDstSize, ptr nocapture noundef readonly %CTable, i32 noundef %maxSymbolValue, i32 noundef %huffLog, ptr noundef %workspace, i32 noundef %workspaceSize) local_unnamed_addr #0 align 64 {
entry:
  %maxSymbolValue.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 704, i32 %workspaceSize)
  %cmp = icmp ult i32 %workspaceSize, 704
  br i1 %cmp, label %entry.cleanup74_crit_edge, label %if.end

entry.cleanup74_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %maxSymbolValue)
  %cmp1 = icmp ugt i32 %maxSymbolValue, 255
  br i1 %cmp1, label %if.end.cleanup74_crit_edge, label %if.end3

if.end.cleanup74_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

if.end3:                                          ; preds = %if.end
  %bitsToWeight = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %workspace, i32 0, i32 1
  %0 = ptrtoint ptr %bitsToWeight to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bitsToWeight, align 4
  %add = add i32 %huffLog, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp4139 = icmp ugt i32 %add, 1
  br i1 %cmp4139, label %if.end3.for.body_crit_edge, label %if.end3.for.cond8.preheader_crit_edge

if.end3.for.cond8.preheader_crit_edge:            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond8.preheader

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

for.cond8.preheader:                              ; preds = %for.body.for.cond8.preheader_crit_edge, %if.end3.for.cond8.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxSymbolValue)
  %cmp9141.not = icmp eq i32 %maxSymbolValue, 0
  br i1 %cmp9141.not, label %for.end18.thread, label %for.cond8.preheader.for.body11_crit_edge

for.cond8.preheader.for.body11_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body11

for.end18.thread:                                 ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maxSymbolValue.i) #8
  br label %if.end24.thread

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end3.for.body_crit_edge
  %n.0140 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %if.end3.for.body_crit_edge ]
  %sub = sub i32 %add, %n.0140
  %conv = trunc i32 %sub to i8
  %arrayidx7 = getelementptr %struct.HUF_WriteCTableWksp, ptr %workspace, i32 0, i32 1, i32 %n.0140
  %1 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %arrayidx7, align 1
  %inc = add nuw i32 %n.0140, 1
  %exitcond.not = icmp eq i32 %n.0140, %huffLog
  br i1 %exitcond.not, label %for.body.for.cond8.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.cond8.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond8.preheader

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.cond8.preheader.for.body11_crit_edge
  %n.1142 = phi i32 [ %inc17, %for.body11.for.body11_crit_edge ], [ 0, %for.cond8.preheader.for.body11_crit_edge ]
  %nbBits = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %n.1142, i32 1
  %2 = ptrtoint ptr %nbBits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nbBits, align 2
  %idxprom = zext i8 %3 to i32
  %arrayidx14 = getelementptr %struct.HUF_WriteCTableWksp, ptr %workspace, i32 0, i32 1, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx14, align 1
  %arrayidx15 = getelementptr %struct.HUF_WriteCTableWksp, ptr %workspace, i32 0, i32 2, i32 %n.1142
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx15, align 1
  %inc17 = add nuw i32 %n.1142, 1
  %exitcond145.not = icmp eq i32 %inc17, %maxSymbolValue
  br i1 %exitcond145.not, label %for.end18, label %for.body11.for.body11_crit_edge

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body11

for.end18:                                        ; preds = %for.body11
  %add.ptr = getelementptr i8, ptr %dst, i32 1
  %sub19 = add i32 %maxDstSize, -1
  %huffWeight20 = getelementptr inbounds %struct.HUF_WriteCTableWksp, ptr %workspace, i32 0, i32 2
  %add.ptr.i = getelementptr i8, ptr %dst, i32 %maxDstSize
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maxSymbolValue.i) #8
  %7 = ptrtoint ptr %maxSymbolValue.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 12, ptr %maxSymbolValue.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %maxSymbolValue)
  %cmp1.i = icmp ult i32 %maxSymbolValue, 2
  br i1 %cmp1.i, label %for.end18.if.end24.thread_crit_edge, label %if.end3.i

for.end18.if.end24.thread_crit_edge:              ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.thread

if.end3.i:                                        ; preds = %for.end18
  %count.i = getelementptr inbounds %struct.HUF_CompressWeightsWksp, ptr %workspace, i32 0, i32 2
  %call.i = call i32 @HIST_count_simple(ptr noundef %count.i, ptr noundef nonnull %maxSymbolValue.i, ptr noundef %huffWeight20, i32 noundef %maxSymbolValue) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %maxSymbolValue)
  %cmp4.i = icmp eq i32 %call.i, %maxSymbolValue
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp7.i = icmp eq i32 %call.i, 1
  %8 = or i1 %cmp4.i, %cmp7.i
  br i1 %8, label %if.end3.i.if.end24.thread_crit_edge, label %cleanup.cont.i

if.end3.i.if.end24.thread_crit_edge:              ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.thread

cleanup.cont.i:                                   ; preds = %if.end3.i
  %9 = ptrtoint ptr %maxSymbolValue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %maxSymbolValue.i, align 4
  %call10.i = call i32 @FSE_optimalTableLog(i32 noundef 6, i32 noundef %maxSymbolValue, i32 noundef %10) #8
  %norm.i = getelementptr inbounds %struct.HUF_CompressWeightsWksp, ptr %workspace, i32 0, i32 3
  %11 = ptrtoint ptr %maxSymbolValue.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %maxSymbolValue.i, align 4
  %call14.i = call i32 @FSE_normalizeCount(ptr noundef %norm.i, i32 noundef %call10.i, ptr noundef %count.i, i32 noundef %maxSymbolValue, i32 noundef %12, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call14.i)
  %cmp.i.i = icmp ult i32 %call14.i, -119
  br i1 %cmp.i.i, label %cleanup.cont20.i, label %cleanup.cont.i.HUF_compressWeights.exit.thread_crit_edge

cleanup.cont.i.HUF_compressWeights.exit.thread_crit_edge: ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %HUF_compressWeights.exit.thread

cleanup.cont20.i:                                 ; preds = %cleanup.cont.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr to i32
  %13 = ptrtoint ptr %maxSymbolValue.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %maxSymbolValue.i, align 4
  %call23.i = call i32 @FSE_writeNCount(ptr noundef %add.ptr, i32 noundef %sub19, ptr noundef %norm.i, i32 noundef %14, i32 noundef %call10.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call23.i)
  %cmp.i2.i = icmp ult i32 %call23.i, -119
  %op.0.idx.i = select i1 %cmp.i2.i, i32 %call23.i, i32 0
  %op.0.i = getelementptr i8, ptr %add.ptr, i32 %op.0.idx.i
  br i1 %cmp.i2.i, label %cleanup.cont31.i, label %cleanup.cont20.i.HUF_compressWeights.exit.thread_crit_edge

cleanup.cont20.i.HUF_compressWeights.exit.thread_crit_edge: ; preds = %cleanup.cont20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %HUF_compressWeights.exit.thread

cleanup.cont31.i:                                 ; preds = %cleanup.cont20.i
  %15 = ptrtoint ptr %maxSymbolValue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %maxSymbolValue.i, align 4
  %scratchBuffer.i = getelementptr inbounds %struct.HUF_CompressWeightsWksp, ptr %workspace, i32 0, i32 1
  %call37.i = call i32 @FSE_buildCTable_wksp(ptr noundef %workspace, ptr noundef %norm.i, i32 noundef %16, i32 noundef %call10.i, ptr noundef %scratchBuffer.i, i32 noundef 120) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call37.i)
  %cmp.i4.i = icmp ult i32 %call37.i, -119
  br i1 %cmp.i4.i, label %cleanup.cont44.i, label %cleanup.cont31.i.HUF_compressWeights.exit.thread_crit_edge

cleanup.cont31.i.HUF_compressWeights.exit.thread_crit_edge: ; preds = %cleanup.cont31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %HUF_compressWeights.exit.thread

cleanup.cont44.i:                                 ; preds = %cleanup.cont31.i
  %sub.ptr.rhs.cast46.i = ptrtoint ptr %op.0.i to i32
  %sub.ptr.sub47.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast46.i
  %call50.i = call i32 @FSE_compress_usingCTable(ptr noundef %op.0.i, i32 noundef %sub.ptr.sub47.i, ptr noundef %huffWeight20, i32 noundef %maxSymbolValue, ptr noundef %workspace) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call50.i)
  %cmp.i6.i = icmp ult i32 %call50.i, -119
  br i1 %cmp.i6.i, label %if.end54.i, label %cleanup.cont44.i.HUF_compressWeights.exit.thread_crit_edge

cleanup.cont44.i.HUF_compressWeights.exit.thread_crit_edge: ; preds = %cleanup.cont44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %HUF_compressWeights.exit.thread

if.end54.i:                                       ; preds = %cleanup.cont44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %cmp55.i = icmp eq i32 %call50.i, 0
  br i1 %cmp55.i, label %if.end54.i.if.end24.thread_crit_edge, label %HUF_compressWeights.exit

if.end54.i.if.end24.thread_crit_edge:             ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.thread

HUF_compressWeights.exit.thread:                  ; preds = %cleanup.cont44.i.HUF_compressWeights.exit.thread_crit_edge, %cleanup.cont31.i.HUF_compressWeights.exit.thread_crit_edge, %cleanup.cont20.i.HUF_compressWeights.exit.thread_crit_edge, %cleanup.cont.i.HUF_compressWeights.exit.thread_crit_edge
  %retval.5.i.ph = phi i32 [ %call50.i, %cleanup.cont44.i.HUF_compressWeights.exit.thread_crit_edge ], [ %call14.i, %cleanup.cont.i.HUF_compressWeights.exit.thread_crit_edge ], [ %call23.i, %cleanup.cont20.i.HUF_compressWeights.exit.thread_crit_edge ], [ %call37.i, %cleanup.cont31.i.HUF_compressWeights.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maxSymbolValue.i) #8
  br label %cleanup74

if.end24.thread:                                  ; preds = %if.end54.i.if.end24.thread_crit_edge, %if.end3.i.if.end24.thread_crit_edge, %for.end18.if.end24.thread_crit_edge, %for.end18.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maxSymbolValue.i) #8
  br label %cleanup.cont

HUF_compressWeights.exit:                         ; preds = %if.end54.i
  %add.ptr58.i = getelementptr i8, ptr %op.0.i, i32 %call50.i
  %sub.ptr.lhs.cast62.i = ptrtoint ptr %add.ptr58.i to i32
  %sub.ptr.sub64.i = sub i32 %sub.ptr.lhs.cast62.i, %sub.ptr.rhs.cast.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maxSymbolValue.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %sub.ptr.sub64.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub64.i, -119
  br i1 %cmp.i, label %if.end24, label %HUF_compressWeights.exit.cleanup74_crit_edge

HUF_compressWeights.exit.cleanup74_crit_edge:     ; preds = %HUF_compressWeights.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

if.end24:                                         ; preds = %HUF_compressWeights.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub64.i)
  %cmp25 = icmp ugt i32 %sub.ptr.sub64.i, 1
  %div116 = lshr i32 %maxSymbolValue, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub64.i, i32 %div116)
  %cmp27 = icmp ult i32 %sub.ptr.sub64.i, %div116
  %and117 = and i1 %cmp25, %cmp27
  br i1 %and117, label %if.then30, label %if.end24.cleanup.cont_crit_edge

if.end24.cleanup.cont_crit_edge:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.cont

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %conv31 = trunc i32 %sub.ptr.sub64.i to i8
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv31, ptr %dst, align 1
  %add33 = add nuw i32 %sub.ptr.sub64.i, 1
  br label %cleanup74

cleanup.cont:                                     ; preds = %if.end24.cleanup.cont_crit_edge, %if.end24.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %maxSymbolValue)
  %cmp35 = icmp ugt i32 %maxSymbolValue, 128
  br i1 %cmp35, label %cleanup.cont.cleanup74_crit_edge, label %if.end38

cleanup.cont.cleanup74_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

if.end38:                                         ; preds = %cleanup.cont
  %add39 = add nuw nsw i32 %maxSymbolValue, 1
  %div40118 = lshr i32 %add39, 1
  %add41 = add nuw nsw i32 %div40118, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div40118, i32 %maxDstSize)
  %cmp42.not = icmp ult i32 %div40118, %maxDstSize
  br i1 %cmp42.not, label %if.end45, label %if.end38.cleanup74_crit_edge

if.end38.cleanup74_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

if.end45:                                         ; preds = %if.end38
  %18 = trunc i32 %maxSymbolValue to i8
  %conv48 = add nuw i8 %18, 127
  %19 = ptrtoint ptr %dst to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv48, ptr %dst, align 1
  %arrayidx51 = getelementptr %struct.HUF_WriteCTableWksp, ptr %workspace, i32 0, i32 2, i32 %maxSymbolValue
  %20 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx51, align 1
  br i1 %cmp9141.not, label %if.end45.cleanup74_crit_edge, label %if.end45.for.body55_crit_edge

if.end45.for.body55_crit_edge:                    ; preds = %if.end45
  br label %for.body55

if.end45.cleanup74_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

for.body55:                                       ; preds = %for.body55.for.body55_crit_edge, %if.end45.for.body55_crit_edge
  %n.2144 = phi i32 [ %add69, %for.body55.for.body55_crit_edge ], [ 0, %if.end45.for.body55_crit_edge ]
  %arrayidx57 = getelementptr %struct.HUF_WriteCTableWksp, ptr %workspace, i32 0, i32 2, i32 %n.2144
  %21 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx57, align 1
  %shl = shl i8 %22, 4
  %add60 = or i32 %n.2144, 1
  %arrayidx61 = getelementptr %struct.HUF_WriteCTableWksp, ptr %workspace, i32 0, i32 2, i32 %add60
  %23 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx61, align 1
  %add63 = add i8 %shl, %24
  %div65119 = lshr exact i32 %n.2144, 1
  %add66 = add nuw i32 %div65119, 1
  %arrayidx67 = getelementptr i8, ptr %dst, i32 %add66
  %25 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %add63, ptr %arrayidx67, align 1
  %add69 = add i32 %n.2144, 2
  %cmp53 = icmp ult i32 %add69, %maxSymbolValue
  br i1 %cmp53, label %for.body55.for.body55_crit_edge, label %for.body55.cleanup74_crit_edge

for.body55.cleanup74_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup74

for.body55.for.body55_crit_edge:                  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body55

cleanup74:                                        ; preds = %for.body55.cleanup74_crit_edge, %if.end45.cleanup74_crit_edge, %if.end38.cleanup74_crit_edge, %cleanup.cont.cleanup74_crit_edge, %if.then30, %HUF_compressWeights.exit.cleanup74_crit_edge, %HUF_compressWeights.exit.thread, %if.end.cleanup74_crit_edge, %entry.cleanup74_crit_edge
  %retval.1 = phi i32 [ -1, %entry.cleanup74_crit_edge ], [ -46, %if.end.cleanup74_crit_edge ], [ -1, %cleanup.cont.cleanup74_crit_edge ], [ -70, %if.end38.cleanup74_crit_edge ], [ %retval.5.i.ph, %HUF_compressWeights.exit.thread ], [ %sub.ptr.sub64.i, %HUF_compressWeights.exit.cleanup74_crit_edge ], [ %add33, %if.then30 ], [ %add41, %if.end45.cleanup74_crit_edge ], [ %add41, %for.body55.cleanup74_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_writeCTable(ptr noundef %dst, i32 noundef %maxDstSize, ptr nocapture noundef readonly %CTable, i32 noundef %maxSymbolValue, i32 noundef %huffLog) local_unnamed_addr #0 align 64 {
entry:
  %wksp = alloca %struct.HUF_WriteCTableWksp, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 704, ptr nonnull %wksp) #8
  %0 = call ptr @memset(ptr %wksp, i32 255, i32 704)
  %call = call i32 @HUF_writeCTable_wksp(ptr noundef %dst, i32 noundef %maxDstSize, ptr noundef %CTable, i32 noundef %maxSymbolValue, i32 noundef %huffLog, ptr noundef nonnull %wksp, i32 noundef 704)
  call void @llvm.lifetime.end.p0(i64 704, ptr nonnull %wksp) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_readCTable(ptr nocapture noundef %CTable, ptr nocapture noundef %maxSymbolValuePtr, ptr noundef %src, i32 noundef %srcSize, ptr nocapture noundef writeonly %hasZeroWeights) local_unnamed_addr #0 align 64 {
entry:
  %huffWeight = alloca [256 x i8], align 1
  %rankVal = alloca [16 x i32], align 4
  %tableLog = alloca i32, align 4
  %nbSymbols = alloca i32, align 4
  %nbPerRank = alloca [14 x i16], align 2
  %valPerRank = alloca [14 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %huffWeight) #8
  %0 = call ptr @memset(ptr %huffWeight, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rankVal) #8
  %1 = call ptr @memset(ptr %rankVal, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tableLog) #8
  %2 = ptrtoint ptr %tableLog to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tableLog, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nbSymbols) #8
  %3 = ptrtoint ptr %nbSymbols to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %nbSymbols, align 4
  %call = call i32 @HUF_readStats(ptr noundef nonnull %huffWeight, i32 noundef 256, ptr noundef nonnull %rankVal, ptr noundef nonnull %nbSymbols, ptr noundef nonnull %tableLog, ptr noundef %src, i32 noundef %srcSize) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call)
  %cmp.i = icmp ult i32 %call, -119
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %rankVal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rankVal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp ne i32 %5, 0
  %conv = zext i1 %cmp to i32
  %6 = ptrtoint ptr %hasZeroWeights to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %hasZeroWeights, align 4
  %7 = ptrtoint ptr %tableLog to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tableLog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %8)
  %cmp3 = icmp ugt i32 %8, 12
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %nbSymbols to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nbSymbols, align 4
  %11 = ptrtoint ptr %maxSymbolValuePtr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %maxSymbolValuePtr, align 4
  %add = add i32 %12, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add)
  %cmp7 = icmp ugt i32 %10, %add
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %for.cond.preheader

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp11.not108 = icmp eq i32 %8, 0
  br i1 %cmp11.not108, label %for.cond.preheader.for.cond17.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond17.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %for.body.for.cond17.preheader_crit_edge, %for.cond.preheader.for.cond17.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp18111.not = icmp eq i32 %10, 0
  br i1 %cmp18111.not, label %for.end34.thread, label %for.body20.lr.ph

for.end34.thread:                                 ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %nbPerRank) #8
  %13 = call ptr @memset(ptr %nbPerRank, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %valPerRank) #8
  %14 = call ptr @memset(ptr %valPerRank, i32 0, i32 28)
  br label %for.end46

for.body20.lr.ph:                                 ; preds = %for.cond17.preheader
  %15 = trunc i32 %8 to i8
  %16 = add i8 %15, 1
  br label %for.body20

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %nextRankStart.0110 = phi i32 [ %add14, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %n.0109 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx13 = getelementptr [16 x i32], ptr %rankVal, i32 0, i32 %n.0109
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx13, align 4
  %sub = add i32 %n.0109, -1
  %shl = shl i32 %18, %sub
  %add14 = add i32 %shl, %nextRankStart.0110
  store i32 %nextRankStart.0110, ptr %arrayidx13, align 4
  %inc = add i32 %n.0109, 1
  %cmp11.not = icmp ugt i32 %inc, %8
  br i1 %cmp11.not, label %for.body.for.cond17.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.cond17.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond17.preheader

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.body20.lr.ph
  %n16.0112 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc33, %for.body20.for.body20_crit_edge ]
  %arrayidx21 = getelementptr [256 x i8], ptr %huffWeight, i32 0, i32 %n16.0112
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx21, align 1
  %conv25 = sub i8 %16, %20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp27.not = icmp eq i8 %20, 0
  %narrow = select i1 %cmp27.not, i8 0, i8 %conv25
  %nbBits = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %n16.0112, i32 1
  %21 = ptrtoint ptr %nbBits to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %narrow, ptr %nbBits, align 2
  %inc33 = add nuw i32 %n16.0112, 1
  %exitcond.not = icmp eq i32 %inc33, %10
  br i1 %exitcond.not, label %for.end34, label %for.body20.for.body20_crit_edge

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body20

for.end34:                                        ; preds = %for.body20
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %nbPerRank) #8
  %22 = call ptr @memset(ptr %nbPerRank, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %valPerRank) #8
  %23 = call ptr @memset(ptr %valPerRank, i32 0, i32 28)
  br i1 %cmp18111.not, label %for.end34.for.end46_crit_edge, label %for.end34.for.body39_crit_edge

for.end34.for.body39_crit_edge:                   ; preds = %for.end34
  br label %for.body39

for.end34.for.end46_crit_edge:                    ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end46

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %for.end34.for.body39_crit_edge
  %n35.0114 = phi i32 [ %inc45, %for.body39.for.body39_crit_edge ], [ 0, %for.end34.for.body39_crit_edge ]
  %nbBits41 = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %n35.0114, i32 1
  %24 = ptrtoint ptr %nbBits41 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nbBits41, align 2
  %idxprom = zext i8 %25 to i32
  %arrayidx42 = getelementptr [14 x i16], ptr %nbPerRank, i32 0, i32 %idxprom
  %26 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx42, align 2
  %inc43 = add i16 %27, 1
  store i16 %inc43, ptr %arrayidx42, align 2
  %inc45 = add nuw i32 %n35.0114, 1
  %exitcond120.not = icmp eq i32 %inc45, %10
  br i1 %exitcond120.not, label %for.body39.for.end46_crit_edge, label %for.body39.for.body39_crit_edge

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body39

for.body39.for.end46_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end46

for.end46:                                        ; preds = %for.body39.for.end46_crit_edge, %for.end34.for.end46_crit_edge, %for.end34.thread
  %add47 = add i32 %8, 1
  %arrayidx48 = getelementptr [14 x i16], ptr %valPerRank, i32 0, i32 %add47
  %28 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %arrayidx48, align 2
  br i1 %cmp11.not108, label %for.end46.for.cond65.preheader_crit_edge, label %for.end46.for.body53_crit_edge

for.end46.for.body53_crit_edge:                   ; preds = %for.end46
  br label %for.body53

for.end46.for.cond65.preheader_crit_edge:         ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond65.preheader

for.cond65.preheader:                             ; preds = %for.body53.for.cond65.preheader_crit_edge, %for.end46.for.cond65.preheader_crit_edge
  br i1 %cmp18111.not, label %for.cond65.preheader.for.end77_crit_edge, label %for.cond65.preheader.for.body68_crit_edge

for.cond65.preheader.for.body68_crit_edge:        ; preds = %for.cond65.preheader
  br label %for.body68

for.cond65.preheader.for.end77_crit_edge:         ; preds = %for.cond65.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end77

for.body53:                                       ; preds = %for.body53.for.body53_crit_edge, %for.end46.for.body53_crit_edge
  %n49.0117 = phi i32 [ %dec, %for.body53.for.body53_crit_edge ], [ %8, %for.end46.for.body53_crit_edge ]
  %min.0116 = phi i16 [ %32, %for.body53.for.body53_crit_edge ], [ 0, %for.end46.for.body53_crit_edge ]
  %arrayidx54 = getelementptr [14 x i16], ptr %valPerRank, i32 0, i32 %n49.0117
  %29 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %min.0116, ptr %arrayidx54, align 2
  %arrayidx55 = getelementptr [14 x i16], ptr %nbPerRank, i32 0, i32 %n49.0117
  %30 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx55, align 2
  %add58 = add i16 %31, %min.0116
  %32 = lshr i16 %add58, 1
  %dec = add i32 %n49.0117, -1
  %cmp51.not = icmp eq i32 %dec, 0
  br i1 %cmp51.not, label %for.body53.for.cond65.preheader_crit_edge, label %for.body53.for.body53_crit_edge

for.body53.for.body53_crit_edge:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body53

for.body53.for.cond65.preheader_crit_edge:        ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond65.preheader

for.body68:                                       ; preds = %for.body68.for.body68_crit_edge, %for.cond65.preheader.for.body68_crit_edge
  %n64.0119 = phi i32 [ %inc76, %for.body68.for.body68_crit_edge ], [ 0, %for.cond65.preheader.for.body68_crit_edge ]
  %arrayidx69 = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %n64.0119
  %nbBits70 = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %n64.0119, i32 1
  %33 = ptrtoint ptr %nbBits70 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %nbBits70, align 2
  %idxprom71 = zext i8 %34 to i32
  %arrayidx72 = getelementptr [14 x i16], ptr %valPerRank, i32 0, i32 %idxprom71
  %35 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx72, align 2
  %inc73 = add i16 %36, 1
  store i16 %inc73, ptr %arrayidx72, align 2
  %37 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %arrayidx69, align 2
  %inc76 = add nuw i32 %n64.0119, 1
  %exitcond121.not = icmp eq i32 %inc76, %10
  br i1 %exitcond121.not, label %for.body68.for.end77_crit_edge, label %for.body68.for.body68_crit_edge

for.body68.for.body68_crit_edge:                  ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body68

for.body68.for.end77_crit_edge:                   ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end77

for.end77:                                        ; preds = %for.body68.for.end77_crit_edge, %for.cond65.preheader.for.end77_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %valPerRank) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %nbPerRank) #8
  %sub78 = add i32 %10, -1
  %38 = ptrtoint ptr %maxSymbolValuePtr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub78, ptr %maxSymbolValuePtr, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end77, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %for.end77 ], [ %call, %entry.cleanup_crit_edge ], [ -44, %if.end.cleanup_crit_edge ], [ -48, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nbSymbols) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tableLog) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rankVal) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %huffWeight) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_readStats(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @HUF_getNbBits(ptr nocapture noundef readonly %symbolTable, i32 noundef %symbolValue) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nbBits = getelementptr %struct.HUF_CElt_s, ptr %symbolTable, i32 %symbolValue, i32 1
  %0 = ptrtoint ptr %nbBits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nbBits, align 2
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_buildCTable_wksp(ptr nocapture noundef %tree, ptr nocapture noundef readonly %count, i32 noundef %maxSymbolValue, i32 noundef %maxNbBits, ptr noundef %workSpace, i32 noundef %wkspSize) local_unnamed_addr #4 align 64 {
entry:
  %nbPerRank.i = alloca [13 x i16], align 2
  %valPerRank.i = alloca [13 x i16], align 2
  %rankLast.i = alloca [14 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.nodeElt_s, ptr %workSpace, i32 1
  %0 = ptrtoint ptr %workSpace to i32
  %and = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4352, i32 %wkspSize)
  %cmp1 = icmp ult i32 %wkspSize, 4352
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %maxSymbolValue)
  %cmp7 = icmp ugt i32 %maxSymbolValue, 255
  br i1 %cmp7, label %if.end3.cleanup_crit_edge, label %if.end9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxNbBits)
  %cmp4 = icmp eq i32 %maxNbBits, 0
  %rankPosition = getelementptr inbounds %struct.HUF_buildCTable_wksp_tables, ptr %workSpace, i32 0, i32 1
  %1 = call ptr @memset(ptr %workSpace, i32 0, i32 4352)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end9
  %n.082.i = phi i32 [ %inc3.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end9 ]
  %arrayidx.i = getelementptr i32, ptr %count, i32 %n.082.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %add1.i = add i32 %3, 1
  %4 = tail call i32 @llvm.ctlz.i32(i32 %add1.i, i1 false) #8, !range !9
  %xor.i.i = xor i32 %4, 31
  %arrayidx2.i = getelementptr %struct.rankPos, ptr %rankPosition, i32 %xor.i.i
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2.i, align 4
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %arrayidx2.i, align 4
  %inc3.i = add nuw nsw i32 %n.082.i, 1
  %exitcond.not.i = icmp eq i32 %n.082.i, %maxSymbolValue
  br i1 %exitcond.not.i, label %for.body.i.for.body6.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.body6.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %for.body.i.for.body6.i_crit_edge
  %n.183.i = phi i32 [ %sub.i, %for.body6.i.for.body6.i_crit_edge ], [ 31, %for.body.i.for.body6.i_crit_edge ]
  %arrayidx7.i = getelementptr %struct.rankPos, ptr %rankPosition, i32 %n.183.i
  %7 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7.i, align 4
  %sub.i = add nsw i32 %n.183.i, -1
  %arrayidx9.i = getelementptr %struct.rankPos, ptr %rankPosition, i32 %sub.i
  %9 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx9.i, align 4
  %add11.i = add i32 %10, %8
  store i32 %add11.i, ptr %arrayidx9.i, align 4
  %curr.i = getelementptr %struct.rankPos, ptr %rankPosition, i32 %sub.i, i32 1
  %11 = ptrtoint ptr %curr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add11.i, ptr %curr.i, align 4
  %cmp5.i = icmp ugt i32 %n.183.i, 1
  br i1 %cmp5.i, label %for.body6.i.for.body6.i_crit_edge, label %for.body6.i.for.body21.i_crit_edge

for.body6.i.for.body21.i_crit_edge:               ; preds = %for.body6.i
  br label %for.body21.i

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.i

for.body21.i:                                     ; preds = %while.end.i.for.body21.i_crit_edge, %for.body6.i.for.body21.i_crit_edge
  %n.288.i = phi i32 [ %inc44.i, %while.end.i.for.body21.i_crit_edge ], [ 0, %for.body6.i.for.body21.i_crit_edge ]
  %arrayidx22.i = getelementptr i32, ptr %count, i32 %n.288.i
  %12 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx22.i, align 4
  %add23.i = add i32 %13, 1
  %14 = tail call i32 @llvm.ctlz.i32(i32 %add23.i, i1 false) #8, !range !9
  %xor.i80.i = xor i32 %14, 31
  %add25.i = add nuw nsw i32 %xor.i80.i, 1
  %arrayidx26.i = getelementptr %struct.rankPos, ptr %rankPosition, i32 %add25.i
  %curr27.i = getelementptr %struct.rankPos, ptr %rankPosition, i32 %add25.i, i32 1
  %15 = ptrtoint ptr %curr27.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %curr27.i, align 4
  %inc28.i = add i32 %16, 1
  store i32 %inc28.i, ptr %curr27.i, align 4
  %17 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx26.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp3184.i = icmp ugt i32 %16, %18
  br i1 %cmp3184.i, label %for.body21.i.land.rhs.i_crit_edge, label %for.body21.i.while.end.i_crit_edge

for.body21.i.while.end.i_crit_edge:               ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

for.body21.i.land.rhs.i_crit_edge:                ; preds = %for.body21.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %for.body21.i.land.rhs.i_crit_edge
  %pos.085.i = phi i32 [ %sub32.i, %while.body.i.land.rhs.i_crit_edge ], [ %16, %for.body21.i.land.rhs.i_crit_edge ]
  %arrayidx33.i = getelementptr %struct.nodeElt_s, ptr %workSpace, i32 %pos.085.i
  %19 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx33.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %20)
  %cmp35.i = icmp ugt i32 %13, %20
  br i1 %cmp35.i, label %while.body.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %sub32.i = add i32 %pos.085.i, -1
  %arrayidx36.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %pos.085.i
  %21 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %arrayidx33.i, align 4
  %23 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %arrayidx36.i, align 4
  %24 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx26.i, align 4
  %cmp31.i = icmp ugt i32 %sub32.i, %25
  br i1 %cmp31.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %for.body21.i.while.end.i_crit_edge
  %pos.0.lcssa.i = phi i32 [ %16, %for.body21.i.while.end.i_crit_edge ], [ %pos.085.i, %land.rhs.i.while.end.i_crit_edge ], [ %sub32.i, %while.body.i.while.end.i_crit_edge ]
  %arrayidx40.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %pos.0.lcssa.i
  %26 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %13, ptr %arrayidx40.i, align 4
  %conv.i = trunc i32 %n.288.i to i8
  %byte.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %pos.0.lcssa.i, i32 2
  %27 = ptrtoint ptr %byte.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i, ptr %byte.i, align 2
  %inc44.i = add nuw nsw i32 %n.288.i, 1
  %exitcond90.not.i = icmp eq i32 %n.288.i, %maxSymbolValue
  br i1 %exitcond90.not.i, label %while.end.i.while.cond.i_crit_edge, label %while.end.i.for.body21.i_crit_edge

while.end.i.for.body21.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21.i

while.end.i.while.cond.i_crit_edge:               ; preds = %while.end.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %while.end.i.while.cond.i_crit_edge
  %nonNullRank.0.i = phi i32 [ %dec.i, %while.cond.i.while.cond.i_crit_edge ], [ %maxSymbolValue, %while.end.i.while.cond.i_crit_edge ]
  %arrayidx.i32 = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %nonNullRank.0.i
  %28 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i32, align 4
  %cmp.i = icmp eq i32 %29, 0
  %dec.i = add i32 %nonNullRank.0.i, -1
  br i1 %cmp.i, label %while.cond.i.while.cond.i_crit_edge, label %while.end.i35

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.end.i35:                                    ; preds = %while.cond.i
  %spec.store.select = select i1 %cmp4, i32 11, i32 %maxNbBits
  %sub.i33 = add i32 %nonNullRank.0.i, 255
  %arrayidx4.i = getelementptr %struct.nodeElt_s, ptr %workSpace, i32 %nonNullRank.0.i
  %30 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx4.i, align 4
  %add6.i = add i32 %31, %29
  %arrayidx7.i34 = getelementptr %struct.nodeElt_s, ptr %workSpace, i32 257
  %32 = ptrtoint ptr %arrayidx7.i34 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add6.i, ptr %arrayidx7.i34, align 4
  %parent.i = getelementptr %struct.nodeElt_s, ptr %workSpace, i32 %nonNullRank.0.i, i32 1
  %33 = ptrtoint ptr %parent.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 256, ptr %parent.i, align 4
  %parent12.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %nonNullRank.0.i, i32 1
  %34 = ptrtoint ptr %parent12.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 256, ptr %parent12.i, align 4
  %sub13.i = add i32 %nonNullRank.0.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %sub.i33)
  %cmp14.not157.i = icmp slt i32 %sub.i33, 257
  br i1 %cmp14.not157.i, label %for.end.thread.i, label %while.end.i35.for.body.i36_crit_edge

while.end.i35.for.body.i36_crit_edge:             ; preds = %while.end.i35
  br label %for.body.i36

for.end.thread.i:                                 ; preds = %while.end.i35
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %workSpace to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -2147483648, ptr %workSpace, align 4
  br label %while.end58.i

for.body.i36:                                     ; preds = %for.body.i36.for.body.i36_crit_edge, %while.end.i35.for.body.i36_crit_edge
  %n.0158.i = phi i32 [ %inc18.i, %for.body.i36.for.body.i36_crit_edge ], [ 257, %while.end.i35.for.body.i36_crit_edge ]
  %arrayidx16.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %n.0158.i
  %36 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1073741824, ptr %arrayidx16.i, align 4
  %inc18.i = add i32 %n.0158.i, 1
  %cmp14.not.i = icmp sgt i32 %inc18.i, %sub.i33
  br i1 %cmp14.not.i, label %while.body24.i.preheader, label %for.body.i36.for.body.i36_crit_edge

for.body.i36.for.body.i36_crit_edge:              ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i36

while.body24.i.preheader:                         ; preds = %for.body.i36
  %37 = ptrtoint ptr %workSpace to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -2147483648, ptr %workSpace, align 4
  br label %while.body24.i

while.body24.i:                                   ; preds = %while.body24.i.while.body24.i_crit_edge, %while.body24.i.preheader
  %nodeNb.0162.i = phi i32 [ %inc57.i, %while.body24.i.while.body24.i_crit_edge ], [ 257, %while.body24.i.preheader ]
  %lowN.0161.i = phi i32 [ %lowN.2.i, %while.body24.i.while.body24.i_crit_edge ], [ 256, %while.body24.i.preheader ]
  %lowS.0160.i = phi i32 [ %lowS.2.i, %while.body24.i.while.body24.i_crit_edge ], [ %sub13.i, %while.body24.i.preheader ]
  %arrayidx25.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %lowS.0160.i
  %38 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx25.i, align 4
  %arrayidx27.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %lowN.0161.i
  %40 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx27.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp29.i = icmp ult i32 %39, %41
  %dec31.i = sext i1 %cmp29.i to i32
  %lowS.1.i = add i32 %lowS.0160.i, %dec31.i
  %not.cmp29.i = xor i1 %cmp29.i, true
  %inc32.i = zext i1 %not.cmp29.i to i32
  %lowN.1.i = add i32 %lowN.0161.i, %inc32.i
  %cond.i = select i1 %cmp29.i, i32 %lowS.0160.i, i32 %lowN.0161.i
  %arrayidx33.i37 = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %lowS.1.i
  %42 = ptrtoint ptr %arrayidx33.i37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx33.i37, align 4
  %arrayidx35.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %lowN.1.i
  %44 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx35.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp37.i = icmp ult i32 %43, %45
  %dec40.i = sext i1 %cmp37.i to i32
  %lowS.2.i = add i32 %lowS.1.i, %dec40.i
  %not.cmp37.i = xor i1 %cmp37.i, true
  %inc42.i = zext i1 %not.cmp37.i to i32
  %lowN.2.i = add i32 %lowN.1.i, %inc42.i
  %cond44.i = select i1 %cmp37.i, i32 %lowS.1.i, i32 %lowN.1.i
  %arrayidx45.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %cond.i
  %46 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx45.i, align 4
  %arrayidx47.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %cond44.i
  %48 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx47.i, align 4
  %add49.i = add i32 %49, %47
  %arrayidx50.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %nodeNb.0162.i
  %50 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add49.i, ptr %arrayidx50.i, align 4
  %conv52.i = trunc i32 %nodeNb.0162.i to i16
  %parent54.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %cond44.i, i32 1
  %51 = ptrtoint ptr %parent54.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv52.i, ptr %parent54.i, align 4
  %parent56.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %cond.i, i32 1
  %52 = ptrtoint ptr %parent56.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv52.i, ptr %parent56.i, align 4
  %inc57.i = add i32 %nodeNb.0162.i, 1
  %cmp22.not.i = icmp sgt i32 %inc57.i, %sub.i33
  br i1 %cmp22.not.i, label %while.body24.i.while.end58.i_crit_edge, label %while.body24.i.while.body24.i_crit_edge

while.body24.i.while.body24.i_crit_edge:          ; preds = %while.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body24.i

while.body24.i.while.end58.i_crit_edge:           ; preds = %while.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end58.i

while.end58.i:                                    ; preds = %while.body24.i.while.end58.i_crit_edge, %for.end.thread.i
  %nbBits.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %sub.i33, i32 3
  %53 = ptrtoint ptr %nbBits.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %nbBits.i, align 1
  %sub60.i = add i32 %nonNullRank.0.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub60.i)
  %cmp62163.i = icmp sgt i32 %sub60.i, 255
  br i1 %cmp62163.i, label %while.end58.i.for.body64.i_crit_edge, label %while.end58.i.for.cond77.preheader.i_crit_edge

while.end58.i.for.cond77.preheader.i_crit_edge:   ; preds = %while.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond77.preheader.i

while.end58.i.for.body64.i_crit_edge:             ; preds = %while.end58.i
  br label %for.body64.i

for.cond77.preheader.i:                           ; preds = %for.body64.i.for.cond77.preheader.i_crit_edge, %while.end58.i.for.cond77.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonNullRank.0.i)
  %cmp78.not165.i = icmp slt i32 %nonNullRank.0.i, 0
  br i1 %cmp78.not165.i, label %for.cond77.preheader.i.HUF_buildTree.exit_crit_edge, label %for.cond77.preheader.i.for.body80.i_crit_edge

for.cond77.preheader.i.for.body80.i_crit_edge:    ; preds = %for.cond77.preheader.i
  br label %for.body80.i

for.cond77.preheader.i.HUF_buildTree.exit_crit_edge: ; preds = %for.cond77.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %HUF_buildTree.exit

for.body64.i:                                     ; preds = %for.body64.i.for.body64.i_crit_edge, %while.end58.i.for.body64.i_crit_edge
  %n.1164.i = phi i32 [ %dec75.i, %for.body64.i.for.body64.i_crit_edge ], [ %sub60.i, %while.end58.i.for.body64.i_crit_edge ]
  %parent66.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %n.1164.i, i32 1
  %54 = ptrtoint ptr %parent66.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %parent66.i, align 4
  %idxprom.i = zext i16 %55 to i32
  %nbBits68.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %idxprom.i, i32 3
  %56 = ptrtoint ptr %nbBits68.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %nbBits68.i, align 1
  %add70.i = add i8 %57, 1
  %nbBits73.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %n.1164.i, i32 3
  %58 = ptrtoint ptr %nbBits73.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %add70.i, ptr %nbBits73.i, align 1
  %dec75.i = add nsw i32 %n.1164.i, -1
  %cmp62.i = icmp ugt i32 %n.1164.i, 256
  br i1 %cmp62.i, label %for.body64.i.for.body64.i_crit_edge, label %for.body64.i.for.cond77.preheader.i_crit_edge

for.body64.i.for.cond77.preheader.i_crit_edge:    ; preds = %for.body64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond77.preheader.i

for.body64.i.for.body64.i_crit_edge:              ; preds = %for.body64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body64.i

for.body80.i:                                     ; preds = %for.body80.i.for.body80.i_crit_edge, %for.cond77.preheader.i.for.body80.i_crit_edge
  %n.2166.i = phi i32 [ %inc92.i, %for.body80.i.for.body80.i_crit_edge ], [ 0, %for.cond77.preheader.i.for.body80.i_crit_edge ]
  %parent82.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %n.2166.i, i32 1
  %59 = ptrtoint ptr %parent82.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %parent82.i, align 4
  %idxprom83.i = zext i16 %60 to i32
  %nbBits85.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %idxprom83.i, i32 3
  %61 = ptrtoint ptr %nbBits85.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %nbBits85.i, align 1
  %add87.i = add i8 %62, 1
  %nbBits90.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %n.2166.i, i32 3
  %63 = ptrtoint ptr %nbBits90.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %add87.i, ptr %nbBits90.i, align 1
  %inc92.i = add i32 %n.2166.i, 1
  %cmp78.not.i = icmp sgt i32 %inc92.i, %nonNullRank.0.i
  br i1 %cmp78.not.i, label %for.body80.i.HUF_buildTree.exit_crit_edge, label %for.body80.i.for.body80.i_crit_edge

for.body80.i.for.body80.i_crit_edge:              ; preds = %for.body80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body80.i

for.body80.i.HUF_buildTree.exit_crit_edge:        ; preds = %for.body80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %HUF_buildTree.exit

HUF_buildTree.exit:                               ; preds = %for.body80.i.HUF_buildTree.exit_crit_edge, %for.cond77.preheader.i.HUF_buildTree.exit_crit_edge
  %nbBits.i38 = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %nonNullRank.0.i, i32 3
  %64 = ptrtoint ptr %nbBits.i38 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %nbBits.i38, align 1
  %conv.i39 = zext i8 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %conv.i39)
  %cmp.not.i = icmp ult i32 %spec.store.select, %conv.i39
  br i1 %cmp.not.i, label %while.body.lr.ph.i, label %HUF_buildTree.exit.HUF_setMaxHeight.exit_crit_edge

HUF_buildTree.exit.HUF_setMaxHeight.exit_crit_edge: ; preds = %HUF_buildTree.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %HUF_setMaxHeight.exit

while.body.lr.ph.i:                               ; preds = %HUF_buildTree.exit
  %sub.i40 = sub i32 %conv.i39, %spec.store.select
  %shl.i = shl nuw i32 1, %sub.i40
  %conv13.i = trunc i32 %spec.store.select to i8
  br label %while.body.i43

while.body.i43:                                   ; preds = %while.body.i43.while.body.i43_crit_edge, %while.body.lr.ph.i
  %conv4242.i = phi i32 [ %conv.i39, %while.body.lr.ph.i ], [ %conv4.i, %while.body.i43.while.body.i43_crit_edge ]
  %nbBits3241.i = phi ptr [ %nbBits.i38, %while.body.lr.ph.i ], [ %nbBits3.i, %while.body.i43.while.body.i43_crit_edge ]
  %n.0240.i = phi i32 [ %nonNullRank.0.i, %while.body.lr.ph.i ], [ %dec.i41, %while.body.i43.while.body.i43_crit_edge ]
  %totalCost.0239.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i, %while.body.i43.while.body.i43_crit_edge ]
  %sub10.i = sub nsw i32 %conv.i39, %conv4242.i
  %shl11.neg.i = shl nsw i32 -1, %sub10.i
  %sub12.i = add i32 %shl11.neg.i, %shl.i
  %add.i = add i32 %sub12.i, %totalCost.0239.i
  %66 = ptrtoint ptr %nbBits3241.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv13.i, ptr %nbBits3241.i, align 1
  %dec.i41 = add i32 %n.0240.i, -1
  %nbBits3.i = getelementptr %struct.nodeElt_s, ptr %workSpace, i32 %n.0240.i, i32 3
  %67 = ptrtoint ptr %nbBits3.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %nbBits3.i, align 1
  %conv4.i = zext i8 %68 to i32
  %cmp5.i42 = icmp ult i32 %spec.store.select, %conv4.i
  br i1 %cmp5.i42, label %while.body.i43.while.body.i43_crit_edge, label %while.body.i43.while.cond16.i_crit_edge

while.body.i43.while.cond16.i_crit_edge:          ; preds = %while.body.i43
  br label %while.cond16.i

while.body.i43.while.body.i43_crit_edge:          ; preds = %while.body.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i43

while.cond16.i:                                   ; preds = %while.cond16.i.while.cond16.i_crit_edge, %while.body.i43.while.cond16.i_crit_edge
  %n.1.i = phi i32 [ %dec23.i, %while.cond16.i.while.cond16.i_crit_edge ], [ %dec.i41, %while.body.i43.while.cond16.i_crit_edge ]
  %nbBits18.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %n.1.i, i32 3
  %69 = ptrtoint ptr %nbBits18.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %nbBits18.i, align 1
  %conv19.i = zext i8 %70 to i32
  %cmp20.i = icmp eq i32 %spec.store.select, %conv19.i
  %dec23.i = add i32 %n.1.i, -1
  br i1 %cmp20.i, label %while.cond16.i.while.cond16.i_crit_edge, label %while.end24.i

while.cond16.i.while.cond16.i_crit_edge:          ; preds = %while.cond16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond16.i

while.end24.i:                                    ; preds = %while.cond16.i
  %shr.i = ashr i32 %add.i, %sub.i40
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %rankLast.i) #8
  %71 = call ptr @memset(ptr %rankLast.i, i32 240, i32 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %n.1.i)
  %cmp26244.i = icmp sgt i32 %n.1.i, -1
  br i1 %cmp26244.i, label %while.end24.i.for.body.i44_crit_edge, label %while.end24.i.while.cond41.preheader.i_crit_edge

while.end24.i.while.cond41.preheader.i_crit_edge: ; preds = %while.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond41.preheader.i

while.end24.i.for.body.i44_crit_edge:             ; preds = %while.end24.i
  br label %for.body.i44

while.cond41.preheader.i:                         ; preds = %for.inc.i.while.cond41.preheader.i_crit_edge, %while.end24.i.while.cond41.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp42256.i = icmp sgt i32 %shr.i, 0
  br i1 %cmp42256.i, label %while.cond41.preheader.i.while.body44.i_crit_edge, label %while.cond41.preheader.i.while.cond119.preheader.i_crit_edge

while.cond41.preheader.i.while.cond119.preheader.i_crit_edge: ; preds = %while.cond41.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond119.preheader.i

while.cond41.preheader.i.while.body44.i_crit_edge: ; preds = %while.cond41.preheader.i
  br label %while.body44.i

for.body.i44:                                     ; preds = %for.inc.i.for.body.i44_crit_edge, %while.end24.i.for.body.i44_crit_edge
  %pos.0246.i = phi i32 [ %dec40.i45, %for.inc.i.for.body.i44_crit_edge ], [ %n.1.i, %while.end24.i.for.body.i44_crit_edge ]
  %currentNbBits.0245.i = phi i32 [ %currentNbBits.1.i, %for.inc.i.for.body.i44_crit_edge ], [ %spec.store.select, %while.end24.i.for.body.i44_crit_edge ]
  %nbBits29.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %pos.0246.i, i32 3
  %72 = ptrtoint ptr %nbBits29.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %nbBits29.i, align 1
  %conv30.i = zext i8 %73 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %currentNbBits.0245.i, i32 %conv30.i)
  %cmp31.not.i = icmp ugt i32 %currentNbBits.0245.i, %conv30.i
  br i1 %cmp31.not.i, label %if.end34.i, label %for.body.i44.for.inc.i_crit_edge

for.body.i44.for.inc.i_crit_edge:                 ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end34.i:                                       ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #10
  %sub38.i = sub i32 %spec.store.select, %conv30.i
  %arrayidx39.i = getelementptr [14 x i32], ptr %rankLast.i, i32 0, i32 %sub38.i
  %74 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %pos.0246.i, ptr %arrayidx39.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end34.i, %for.body.i44.for.inc.i_crit_edge
  %currentNbBits.1.i = phi i32 [ %currentNbBits.0245.i, %for.body.i44.for.inc.i_crit_edge ], [ %conv30.i, %if.end34.i ]
  %dec40.i45 = add nsw i32 %pos.0246.i, -1
  %cmp26.i = icmp sgt i32 %pos.0246.i, 0
  br i1 %cmp26.i, label %for.inc.i.for.body.i44_crit_edge, label %for.inc.i.while.cond41.preheader.i_crit_edge

for.inc.i.while.cond41.preheader.i_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond41.preheader.i

for.inc.i.for.body.i44_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i44

while.cond119.preheader.i:                        ; preds = %if.end117.i.while.cond119.preheader.i_crit_edge, %while.cond41.preheader.i.while.cond119.preheader.i_crit_edge
  %totalCost.1.lcssa.i = phi i32 [ %shr.i, %while.cond41.preheader.i.while.cond119.preheader.i_crit_edge ], [ %sub86.i, %if.end117.i.while.cond119.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %totalCost.1.lcssa.i)
  %cmp120259262.i = icmp slt i32 %totalCost.1.lcssa.i, 0
  br i1 %cmp120259262.i, label %while.body122.lr.ph.lr.ph.i, label %while.cond119.preheader.i.while.end152.i_crit_edge

while.cond119.preheader.i.while.end152.i_crit_edge: ; preds = %while.cond119.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end152.i

while.body122.lr.ph.lr.ph.i:                      ; preds = %while.cond119.preheader.i
  %arrayidx123.i = getelementptr inbounds [14 x i32], ptr %rankLast.i, i32 0, i32 1
  %75 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %arrayidx123.promoted265.i = load i32, ptr %arrayidx123.i, align 4
  br label %while.body122.lr.ph.i

while.body44.i:                                   ; preds = %if.end117.i.while.body44.i_crit_edge, %while.cond41.preheader.i.while.body44.i_crit_edge
  %totalCost.1257.i = phi i32 [ %sub86.i, %if.end117.i.while.body44.i_crit_edge ], [ %shr.i, %while.cond41.preheader.i.while.body44.i_crit_edge ]
  %76 = tail call i32 @llvm.ctlz.i32(i32 %totalCost.1257.i, i1 true) #8, !range !9
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %76)
  %cmp47247.not.i = icmp eq i32 %76, 31
  br i1 %cmp47247.not.i, label %while.body44.i.land.rhs.i47.preheader_crit_edge, label %for.body49.i.preheader

while.body44.i.land.rhs.i47.preheader_crit_edge:  ; preds = %while.body44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i47.preheader

for.body49.i.preheader:                           ; preds = %while.body44.i
  %add45.i = sub nuw nsw i32 32, %76
  br label %for.body49.i

for.body49.i:                                     ; preds = %for.inc73.i.for.body49.i_crit_edge, %for.body49.i.preheader
  %nBitsToDecrease.0248.i = phi i32 [ %sub51.i, %for.inc73.i.for.body49.i_crit_edge ], [ %add45.i, %for.body49.i.preheader ]
  %arrayidx50.i46 = getelementptr [14 x i32], ptr %rankLast.i, i32 0, i32 %nBitsToDecrease.0248.i
  %77 = ptrtoint ptr %arrayidx50.i46 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx50.i46, align 4
  %sub51.i = add i32 %nBitsToDecrease.0248.i, -1
  %arrayidx52.i = getelementptr [14 x i32], ptr %rankLast.i, i32 0, i32 %sub51.i
  %79 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx52.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -252645136, i32 %78)
  %cmp53.i = icmp eq i32 %78, -252645136
  br i1 %cmp53.i, label %for.body49.i.for.inc73.i_crit_edge, label %if.end56.i

for.body49.i.for.inc73.i_crit_edge:               ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc73.i

if.end56.i:                                       ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -252645136, i32 %80)
  %cmp57.i = icmp eq i32 %80, -252645136
  br i1 %cmp57.i, label %if.end56.i.for.end75.i_crit_edge, label %cleanup69.i

if.end56.i.for.end75.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end75.i

cleanup69.i:                                      ; preds = %if.end56.i
  %arrayidx61.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %78
  %81 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx61.i, align 4
  %arrayidx62.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %80
  %83 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx62.i, align 4
  %mul.i = shl i32 %84, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %mul.i)
  %cmp64.not.not.i = icmp ugt i32 %82, %mul.i
  br i1 %cmp64.not.not.i, label %cleanup69.i.for.inc73.i_crit_edge, label %cleanup69.i.for.end75.i_crit_edge

cleanup69.i.for.end75.i_crit_edge:                ; preds = %cleanup69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end75.i

cleanup69.i.for.inc73.i_crit_edge:                ; preds = %cleanup69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc73.i

for.inc73.i:                                      ; preds = %cleanup69.i.for.inc73.i_crit_edge, %for.body49.i.for.inc73.i_crit_edge
  %cmp47.i = icmp ugt i32 %sub51.i, 1
  br i1 %cmp47.i, label %for.inc73.i.for.body49.i_crit_edge, label %for.inc73.i.land.rhs.i47.preheader_crit_edge

for.inc73.i.land.rhs.i47.preheader_crit_edge:     ; preds = %for.inc73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i47.preheader

for.inc73.i.for.body49.i_crit_edge:               ; preds = %for.inc73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body49.i

for.end75.i:                                      ; preds = %cleanup69.i.for.end75.i_crit_edge, %if.end56.i.for.end75.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %nBitsToDecrease.0248.i)
  %cmp77252.i = icmp ult i32 %nBitsToDecrease.0248.i, 13
  br i1 %cmp77252.i, label %for.end75.i.land.rhs.i47.preheader_crit_edge, label %for.end75.i.while.end83.i_crit_edge

for.end75.i.while.end83.i_crit_edge:              ; preds = %for.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end83.i

for.end75.i.land.rhs.i47.preheader_crit_edge:     ; preds = %for.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i47.preheader

land.rhs.i47.preheader:                           ; preds = %for.end75.i.land.rhs.i47.preheader_crit_edge, %for.inc73.i.land.rhs.i47.preheader_crit_edge, %while.body44.i.land.rhs.i47.preheader_crit_edge
  %nBitsToDecrease.1253.i.ph = phi i32 [ 1, %while.body44.i.land.rhs.i47.preheader_crit_edge ], [ %nBitsToDecrease.0248.i, %for.end75.i.land.rhs.i47.preheader_crit_edge ], [ 1, %for.inc73.i.land.rhs.i47.preheader_crit_edge ]
  br label %land.rhs.i47

land.rhs.i47:                                     ; preds = %while.body82.i.land.rhs.i47_crit_edge, %land.rhs.i47.preheader
  %nBitsToDecrease.1253.i = phi i32 [ %inc.i48, %while.body82.i.land.rhs.i47_crit_edge ], [ %nBitsToDecrease.1253.i.ph, %land.rhs.i47.preheader ]
  %arrayidx79.i = getelementptr [14 x i32], ptr %rankLast.i, i32 0, i32 %nBitsToDecrease.1253.i
  %85 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx79.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -252645136, i32 %86)
  %cmp80.i = icmp eq i32 %86, -252645136
  br i1 %cmp80.i, label %while.body82.i, label %land.rhs.i47.while.end83.i.loopexit_crit_edge

land.rhs.i47.while.end83.i.loopexit_crit_edge:    ; preds = %land.rhs.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end83.i.loopexit

while.body82.i:                                   ; preds = %land.rhs.i47
  %inc.i48 = add nsw i32 %nBitsToDecrease.1253.i, 1
  %exitcond.not.i49 = icmp eq i32 %inc.i48, 13
  br i1 %exitcond.not.i49, label %while.body82.i.while.end83.i.loopexit_crit_edge, label %while.body82.i.land.rhs.i47_crit_edge

while.body82.i.land.rhs.i47_crit_edge:            ; preds = %while.body82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i47

while.body82.i.while.end83.i.loopexit_crit_edge:  ; preds = %while.body82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end83.i.loopexit

while.end83.i.loopexit:                           ; preds = %while.body82.i.while.end83.i.loopexit_crit_edge, %land.rhs.i47.while.end83.i.loopexit_crit_edge
  %nBitsToDecrease.1.lcssa.i.ph = phi i32 [ 13, %while.body82.i.while.end83.i.loopexit_crit_edge ], [ %nBitsToDecrease.1253.i, %land.rhs.i47.while.end83.i.loopexit_crit_edge ]
  %.pre = add nsw i32 %nBitsToDecrease.1.lcssa.i.ph, -1
  br label %while.end83.i

while.end83.i:                                    ; preds = %while.end83.i.loopexit, %for.end75.i.while.end83.i_crit_edge
  %sub84.i.pre-phi = phi i32 [ %.pre, %while.end83.i.loopexit ], [ %sub51.i, %for.end75.i.while.end83.i_crit_edge ]
  %nBitsToDecrease.1.lcssa.i = phi i32 [ %nBitsToDecrease.1.lcssa.i.ph, %while.end83.i.loopexit ], [ %nBitsToDecrease.0248.i, %for.end75.i.while.end83.i_crit_edge ]
  %shl85.neg.i = shl nsw i32 -1, %sub84.i.pre-phi
  %sub86.i = add i32 %shl85.neg.i, %totalCost.1257.i
  %arrayidx87.i = getelementptr [14 x i32], ptr %rankLast.i, i32 0, i32 %nBitsToDecrease.1.lcssa.i
  %87 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx87.i, align 4
  %nbBits89.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %88, i32 3
  %89 = ptrtoint ptr %nbBits89.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %nbBits89.i, align 1
  %inc90.i = add i8 %90, 1
  store i8 %inc90.i, ptr %nbBits89.i, align 1
  %arrayidx92.i = getelementptr [14 x i32], ptr %rankLast.i, i32 0, i32 %sub84.i.pre-phi
  %91 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx92.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -252645136, i32 %92)
  %cmp93.i = icmp eq i32 %92, -252645136
  %spec.store.select234.i = select i1 %cmp93.i, i32 %88, i32 %92
  %93 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %spec.store.select234.i, ptr %arrayidx92.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp101.i = icmp eq i32 %88, 0
  br i1 %cmp101.i, label %while.end83.i.if.end117.i_crit_edge, label %if.else.i

while.end83.i.if.end117.i_crit_edge:              ; preds = %while.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117.i

if.else.i:                                        ; preds = %while.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec106.i = add i32 %88, -1
  %nbBits109.i = getelementptr %struct.nodeElt_s, ptr %workSpace, i32 %88, i32 3
  %94 = ptrtoint ptr %nbBits109.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %nbBits109.i, align 1
  %conv110.i = zext i8 %95 to i32
  %sub111.i = sub i32 %spec.store.select, %nBitsToDecrease.1.lcssa.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub111.i, i32 %conv110.i)
  %cmp112.not.i = icmp eq i32 %sub111.i, %conv110.i
  %spec.store.select.i = select i1 %cmp112.not.i, i32 %dec106.i, i32 -252645136
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.else.i, %while.end83.i.if.end117.i_crit_edge
  %storemerge.i = phi i32 [ %spec.store.select.i, %if.else.i ], [ -252645136, %while.end83.i.if.end117.i_crit_edge ]
  %96 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %storemerge.i, ptr %arrayidx87.i, align 4
  %cmp42.i = icmp sgt i32 %sub86.i, 0
  br i1 %cmp42.i, label %if.end117.i.while.body44.i_crit_edge, label %if.end117.i.while.cond119.preheader.i_crit_edge

if.end117.i.while.cond119.preheader.i_crit_edge:  ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond119.preheader.i

if.end117.i.while.body44.i_crit_edge:             ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body44.i

while.body122.i:                                  ; preds = %if.end143.i.while.body122.i_crit_edge, %while.body122.lr.ph.i
  %97 = phi i32 [ %add136266.i, %while.body122.lr.ph.i ], [ %add145.i, %if.end143.i.while.body122.i_crit_edge ]
  %totalCost.2260.i = phi i32 [ %totalCost.2.ph263.i, %while.body122.lr.ph.i ], [ %inc151.i, %if.end143.i.while.body122.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -252645136, i32 %97)
  %cmp124.i = icmp eq i32 %97, -252645136
  br i1 %cmp124.i, label %while.body122.i.while.cond127.i_crit_edge, label %if.end143.i

while.body122.i.while.cond127.i_crit_edge:        ; preds = %while.body122.i
  br label %while.cond127.i

while.cond127.i:                                  ; preds = %while.cond127.i.while.cond127.i_crit_edge, %while.body122.i.while.cond127.i_crit_edge
  %n.3.i = phi i32 [ %dec134.i, %while.cond127.i.while.cond127.i_crit_edge ], [ %n.2.ph264.i, %while.body122.i.while.cond127.i_crit_edge ]
  %nbBits129.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %n.3.i, i32 3
  %98 = ptrtoint ptr %nbBits129.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %nbBits129.i, align 1
  %conv130.i = zext i8 %99 to i32
  %cmp131.i = icmp eq i32 %spec.store.select, %conv130.i
  %dec134.i = add i32 %n.3.i, -1
  br i1 %cmp131.i, label %while.cond127.i.while.cond127.i_crit_edge, label %while.end135.i

while.cond127.i.while.cond127.i_crit_edge:        ; preds = %while.cond127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond127.i

while.end135.i:                                   ; preds = %while.cond127.i
  %add136.i = add i32 %n.3.i, 1
  %nbBits138.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %add136.i, i32 3
  %100 = ptrtoint ptr %nbBits138.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %nbBits138.i, align 1
  %dec139.i = add i8 %101, -1
  store i8 %dec139.i, ptr %nbBits138.i, align 1
  %inc142.i = add i32 %totalCost.2260.i, 1
  %cmp120259.i = icmp slt i32 %inc142.i, 0
  br i1 %cmp120259.i, label %while.end135.i.while.body122.lr.ph.i_crit_edge, label %while.end135.i.while.end152.i_crit_edge

while.end135.i.while.end152.i_crit_edge:          ; preds = %while.end135.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end152.i

while.end135.i.while.body122.lr.ph.i_crit_edge:   ; preds = %while.end135.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body122.lr.ph.i

while.body122.lr.ph.i:                            ; preds = %while.end135.i.while.body122.lr.ph.i_crit_edge, %while.body122.lr.ph.lr.ph.i
  %add136266.i = phi i32 [ %arrayidx123.promoted265.i, %while.body122.lr.ph.lr.ph.i ], [ %add136.i, %while.end135.i.while.body122.lr.ph.i_crit_edge ]
  %n.2.ph264.i = phi i32 [ %n.1.i, %while.body122.lr.ph.lr.ph.i ], [ %n.3.i, %while.end135.i.while.body122.lr.ph.i_crit_edge ]
  %totalCost.2.ph263.i = phi i32 [ %totalCost.1.lcssa.i, %while.body122.lr.ph.lr.ph.i ], [ %inc142.i, %while.end135.i.while.body122.lr.ph.i_crit_edge ]
  %smax.i = tail call i32 @llvm.smax.i32(i32 %totalCost.2.ph263.i, i32 -1) #8
  br label %while.body122.i

if.end143.i:                                      ; preds = %while.body122.i
  %add145.i = add i32 %97, 1
  %nbBits147.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %add145.i, i32 3
  %102 = ptrtoint ptr %nbBits147.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %nbBits147.i, align 1
  %dec148.i = add i8 %103, -1
  store i8 %dec148.i, ptr %nbBits147.i, align 1
  %inc151.i = add i32 %totalCost.2260.i, 1
  %exitcond268.not.i = icmp eq i32 %totalCost.2260.i, %smax.i
  br i1 %exitcond268.not.i, label %if.end143.i.while.end152.i_crit_edge, label %if.end143.i.while.body122.i_crit_edge

if.end143.i.while.body122.i_crit_edge:            ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body122.i

if.end143.i.while.end152.i_crit_edge:             ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end152.i

while.end152.i:                                   ; preds = %if.end143.i.while.end152.i_crit_edge, %while.end135.i.while.end152.i_crit_edge, %while.cond119.preheader.i.while.end152.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %rankLast.i) #8
  br label %HUF_setMaxHeight.exit

HUF_setMaxHeight.exit:                            ; preds = %while.end152.i, %HUF_buildTree.exit.HUF_setMaxHeight.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.store.select, %while.end152.i ], [ %conv.i39, %HUF_buildTree.exit.HUF_setMaxHeight.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %retval.0.i)
  %cmp12 = icmp ugt i32 %retval.0.i, 12
  br i1 %cmp12, label %HUF_setMaxHeight.exit.cleanup_crit_edge, label %if.end14

HUF_setMaxHeight.exit.cleanup_crit_edge:          ; preds = %HUF_setMaxHeight.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %HUF_setMaxHeight.exit
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %nbPerRank.i) #8
  %104 = call ptr @memset(ptr %nbPerRank.i, i32 0, i32 26)
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %valPerRank.i) #8
  %105 = call ptr @memset(ptr %valPerRank.i, i32 0, i32 26)
  br i1 %cmp78.not165.i, label %if.end14.for.cond3.preheader.i_crit_edge, label %if.end14.for.body.i54_crit_edge

if.end14.for.body.i54_crit_edge:                  ; preds = %if.end14
  br label %for.body.i54

if.end14.for.cond3.preheader.i_crit_edge:         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.body.i54.for.cond3.preheader.i_crit_edge, %if.end14.for.cond3.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp464.i = icmp sgt i32 %retval.0.i, 0
  br i1 %cmp464.i, label %for.cond3.preheader.i.for.body5.i_crit_edge, label %for.cond3.preheader.i.for.body18.i.preheader_crit_edge

for.cond3.preheader.i.for.body18.i.preheader_crit_edge: ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body18.i.preheader

for.cond3.preheader.i.for.body5.i_crit_edge:      ; preds = %for.cond3.preheader.i
  br label %for.body5.i

for.body.i54:                                     ; preds = %for.body.i54.for.body.i54_crit_edge, %if.end14.for.body.i54_crit_edge
  %n.063.i = phi i32 [ %inc2.i, %for.body.i54.for.body.i54_crit_edge ], [ 0, %if.end14.for.body.i54_crit_edge ]
  %nbBits.i50 = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %n.063.i, i32 3
  %106 = ptrtoint ptr %nbBits.i50 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %nbBits.i50, align 1
  %idxprom.i51 = zext i8 %107 to i32
  %arrayidx1.i = getelementptr [13 x i16], ptr %nbPerRank.i, i32 0, i32 %idxprom.i51
  %108 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx1.i, align 2
  %inc.i52 = add i16 %109, 1
  store i16 %inc.i52, ptr %arrayidx1.i, align 2
  %inc2.i = add i32 %n.063.i, 1
  %cmp.not.i53 = icmp sgt i32 %inc2.i, %nonNullRank.0.i
  br i1 %cmp.not.i53, label %for.body.i54.for.cond3.preheader.i_crit_edge, label %for.body.i54.for.body.i54_crit_edge

for.body.i54.for.body.i54_crit_edge:              ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i54

for.body.i54.for.cond3.preheader.i_crit_edge:     ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond3.preheader.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.cond3.preheader.i.for.body5.i_crit_edge
  %min.066.i = phi i16 [ %113, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.cond3.preheader.i.for.body5.i_crit_edge ]
  %n.165.i = phi i32 [ %dec.i56, %for.body5.i.for.body5.i_crit_edge ], [ %retval.0.i, %for.cond3.preheader.i.for.body5.i_crit_edge ]
  %arrayidx6.i = getelementptr [13 x i16], ptr %valPerRank.i, i32 0, i32 %n.165.i
  %110 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %min.066.i, ptr %arrayidx6.i, align 2
  %arrayidx7.i55 = getelementptr [13 x i16], ptr %nbPerRank.i, i32 0, i32 %n.165.i
  %111 = ptrtoint ptr %arrayidx7.i55 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %arrayidx7.i55, align 2
  %add9.i = add i16 %112, %min.066.i
  %113 = lshr i16 %add9.i, 1
  %dec.i56 = add nsw i32 %n.165.i, -1
  %cmp4.i = icmp ugt i32 %n.165.i, 1
  br i1 %cmp4.i, label %for.body5.i.for.body5.i_crit_edge, label %for.body5.i.for.body18.i.preheader_crit_edge

for.body5.i.for.body18.i.preheader_crit_edge:     ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body18.i.preheader

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5.i

for.body18.i.preheader:                           ; preds = %for.body5.i.for.body18.i.preheader_crit_edge, %for.cond3.preheader.i.for.body18.i.preheader_crit_edge
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %for.body18.i.preheader
  %n.268.i = phi i32 [ %inc26.i, %for.body18.i.for.body18.i_crit_edge ], [ 0, %for.body18.i.preheader ]
  %nbBits20.i = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %n.268.i, i32 3
  %114 = ptrtoint ptr %nbBits20.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %nbBits20.i, align 1
  %byte.i57 = getelementptr %struct.nodeElt_s, ptr %add.ptr, i32 %n.268.i, i32 2
  %116 = ptrtoint ptr %byte.i57 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %byte.i57, align 2
  %idxprom22.i = zext i8 %117 to i32
  %nbBits24.i = getelementptr %struct.HUF_CElt_s, ptr %tree, i32 %idxprom22.i, i32 1
  %118 = ptrtoint ptr %nbBits24.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %115, ptr %nbBits24.i, align 2
  %inc26.i = add nuw nsw i32 %n.268.i, 1
  %exitcond.not.i58 = icmp eq i32 %n.268.i, %maxSymbolValue
  br i1 %exitcond.not.i58, label %for.body18.i.for.body31.i_crit_edge, label %for.body18.i.for.body18.i_crit_edge

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body18.i

for.body18.i.for.body31.i_crit_edge:              ; preds = %for.body18.i
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.body31.i.for.body31.i_crit_edge, %for.body18.i.for.body31.i_crit_edge
  %n.370.i = phi i32 [ %inc39.i, %for.body31.i.for.body31.i_crit_edge ], [ 0, %for.body18.i.for.body31.i_crit_edge ]
  %arrayidx32.i = getelementptr %struct.HUF_CElt_s, ptr %tree, i32 %n.370.i
  %nbBits33.i = getelementptr %struct.HUF_CElt_s, ptr %tree, i32 %n.370.i, i32 1
  %119 = ptrtoint ptr %nbBits33.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %nbBits33.i, align 2
  %idxprom34.i = zext i8 %120 to i32
  %arrayidx35.i59 = getelementptr [13 x i16], ptr %valPerRank.i, i32 0, i32 %idxprom34.i
  %121 = ptrtoint ptr %arrayidx35.i59 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %arrayidx35.i59, align 2
  %inc36.i = add i16 %122, 1
  store i16 %inc36.i, ptr %arrayidx35.i59, align 2
  %123 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %arrayidx32.i, align 2
  %inc39.i = add nuw nsw i32 %n.370.i, 1
  %exitcond72.not.i = icmp eq i32 %n.370.i, %maxSymbolValue
  br i1 %exitcond72.not.i, label %HUF_buildCTableFromTree.exit, label %for.body31.i.for.body31.i_crit_edge

for.body31.i.for.body31.i_crit_edge:              ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body31.i

HUF_buildCTableFromTree.exit:                     ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %valPerRank.i) #8
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %nbPerRank.i) #8
  br label %cleanup

cleanup:                                          ; preds = %HUF_buildCTableFromTree.exit, %HUF_setMaxHeight.exit.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %HUF_buildCTableFromTree.exit ], [ -1, %entry.cleanup_crit_edge ], [ -66, %if.end.cleanup_crit_edge ], [ -46, %if.end3.cleanup_crit_edge ], [ -1, %HUF_setMaxHeight.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_estimateCompressedSize(ptr nocapture noundef readonly %CTable, ptr nocapture noundef readonly %count, i32 noundef %maxSymbolValue) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxSymbolValue)
  %cmp.not7 = icmp slt i32 %maxSymbolValue, 0
  br i1 %cmp.not7, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %s.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %nbBits.08 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %nbBits1 = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %s.09, i32 1
  %0 = ptrtoint ptr %nbBits1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nbBits1, align 2
  %conv = zext i8 %1 to i32
  %arrayidx2 = getelementptr i32, ptr %count, i32 %s.09
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %mul = mul i32 %3, %conv
  %add = add i32 %mul, %nbBits.08
  %inc = add i32 %s.09, 1
  %cmp.not = icmp sgt i32 %inc, %maxSymbolValue
  br i1 %cmp.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo = lshr i32 %add, 3
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %nbBits.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  ret i32 %nbBits.0.lcssa
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_validateCTable(ptr nocapture noundef readonly %CTable, ptr nocapture noundef readonly %count, i32 noundef %maxSymbolValue) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxSymbolValue)
  %cmp.not11 = icmp slt i32 %maxSymbolValue, 0
  br i1 %cmp.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %s.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %bad.012 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %count, i32 %s.013
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp ne i32 %1, 0
  %nbBits = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %s.013, i32 1
  %2 = ptrtoint ptr %nbBits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nbBits, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp4 = icmp eq i8 %3, 0
  %and10 = and i1 %cmp1, %cmp4
  %and = zext i1 %and10 to i32
  %or = or i32 %bad.012, %and
  %inc = add i32 %s.013, 1
  %cmp.not = icmp sgt i32 %inc, %maxSymbolValue
  br i1 %cmp.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %phi.cmp = icmp eq i32 %or, 0
  %phi.cast = zext i1 %phi.cmp to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %bad.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %phi.cast, %for.end.loopexit ]
  ret i32 %bad.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @HUF_compressBound(i32 noundef %size) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %size, 8
  %add = add i32 %size, 137
  %add2 = add i32 %add, %shr
  ret i32 %add2
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_compress1X_usingCTable(ptr noundef %dst, i32 noundef %dstSize, ptr nocapture noundef readonly %src, i32 noundef %srcSize, ptr nocapture noundef readonly %CTable) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @HUF_compress1X_usingCTable_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %src, i32 noundef %srcSize, ptr noundef %CTable)
  ret i32 %call
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @HUF_compress1X_usingCTable_internal(ptr noundef %dst, i32 noundef %dstSize, ptr nocapture noundef readonly %src, i32 noundef %srcSize, ptr nocapture noundef readonly %CTable) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %dstSize)
  %cmp.i = icmp ult i32 %dstSize, 8
  br i1 %cmp.i, label %entry.HUF_compress1X_usingCTable_internal_body.exit_crit_edge, label %cleanup.cont.i

entry.HUF_compress1X_usingCTable_internal_body.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %HUF_compress1X_usingCTable_internal_body.exit

cleanup.cont.i:                                   ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %dst, i32 %dstSize
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -4
  %and.i = and i32 %srcSize, -4
  %and4.i = and i32 %srcSize, 3
  %0 = zext i32 %and4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and4.i, label %cleanup.cont.unreachabledefault.i [
    i32 3, label %sw.bb.i
    i32 2, label %cleanup.cont.i.sw.bb5.i_crit_edge
    i32 1, label %cleanup.cont.i.sw.bb9.i_crit_edge
    i32 0, label %cleanup.cont.i.sw.epilog.i_crit_edge
  ]

cleanup.cont.i.sw.epilog.i_crit_edge:             ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

cleanup.cont.i.sw.bb9.i_crit_edge:                ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9.i

cleanup.cont.i.sw.bb5.i_crit_edge:                ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

sw.bb.i:                                          ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = or i32 %and.i, 2
  %arrayidx.i = getelementptr i8, ptr %src, i32 %add.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %2 to i32
  %arrayidx.i.i = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %conv.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %nbBits.i.i = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %conv.i, i32 1
  %5 = ptrtoint ptr %nbBits.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nbBits.i.i, align 2
  %conv2.i.i = zext i8 %6 to i32
  %shr.i.i = lshr i32 %conv2.i.i, 3
  %7 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #8
  %8 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %dst, align 1
  %add.ptr.i110.i = getelementptr i8, ptr %dst, i32 %shr.i.i
  %cmp.i112.i = icmp ugt ptr %add.ptr.i110.i, %add.ptr4.i.i
  %spec.store.select.i.i = select i1 %cmp.i112.i, ptr %add.ptr4.i.i, ptr %add.ptr.i110.i
  %and.i.i = and i32 %conv2.i.i, 7
  %mul.i.i = and i32 %conv2.i.i, 248
  %shr7.i.i = lshr i32 %conv.i.i, %mul.i.i
  br label %sw.bb5.i

sw.bb5.i:                                         ; preds = %sw.bb.i, %cleanup.cont.i.sw.bb5.i_crit_edge
  %bitC.sroa.69.0.i = phi ptr [ %dst, %cleanup.cont.i.sw.bb5.i_crit_edge ], [ %spec.store.select.i.i, %sw.bb.i ]
  %bitC.sroa.34.0.i = phi i32 [ 0, %cleanup.cont.i.sw.bb5.i_crit_edge ], [ %and.i.i, %sw.bb.i ]
  %bitC.sroa.0.0.i = phi i32 [ 0, %cleanup.cont.i.sw.bb5.i_crit_edge ], [ %shr7.i.i, %sw.bb.i ]
  %add6.i = or i32 %and.i, 1
  %arrayidx7.i = getelementptr i8, ptr %src, i32 %add6.i
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %10 to i32
  %arrayidx.i59.i = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %conv8.i
  %11 = ptrtoint ptr %arrayidx.i59.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i59.i, align 2
  %conv.i60.i = zext i16 %12 to i32
  %nbBits.i61.i = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %conv8.i, i32 1
  %13 = ptrtoint ptr %nbBits.i61.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nbBits.i61.i, align 2
  %conv2.i62.i = zext i8 %14 to i32
  %shl.i.i64.i = shl nuw nsw i32 %conv.i60.i, %bitC.sroa.34.0.i
  %or.i.i65.i = or i32 %shl.i.i64.i, %bitC.sroa.0.0.i
  %add.i.i66.i = add nuw nsw i32 %bitC.sroa.34.0.i, %conv2.i62.i
  br label %sw.bb9.i

sw.bb9.i:                                         ; preds = %sw.bb5.i, %cleanup.cont.i.sw.bb9.i_crit_edge
  %bitC.sroa.69.1.i = phi ptr [ %dst, %cleanup.cont.i.sw.bb9.i_crit_edge ], [ %bitC.sroa.69.0.i, %sw.bb5.i ]
  %bitC.sroa.34.1.i = phi i32 [ 0, %cleanup.cont.i.sw.bb9.i_crit_edge ], [ %add.i.i66.i, %sw.bb5.i ]
  %bitC.sroa.0.1.i = phi i32 [ 0, %cleanup.cont.i.sw.bb9.i_crit_edge ], [ %or.i.i65.i, %sw.bb5.i ]
  %arrayidx11.i = getelementptr i8, ptr %src, i32 %and.i
  %15 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %16 to i32
  %arrayidx.i67.i = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %conv12.i
  %17 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i67.i, align 2
  %conv.i68.i = zext i16 %18 to i32
  %nbBits.i69.i = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %conv12.i, i32 1
  %19 = ptrtoint ptr %nbBits.i69.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %nbBits.i69.i, align 2
  %conv2.i70.i = zext i8 %20 to i32
  %shl.i.i72.i = shl i32 %conv.i68.i, %bitC.sroa.34.1.i
  %or.i.i73.i = or i32 %shl.i.i72.i, %bitC.sroa.0.1.i
  %add.i.i74.i = add nuw nsw i32 %bitC.sroa.34.1.i, %conv2.i70.i
  %shr.i114.i = lshr i32 %add.i.i74.i, 3
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i.i73.i) #8
  %22 = ptrtoint ptr %bitC.sroa.69.1.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %bitC.sroa.69.1.i, align 1
  %add.ptr.i116.i = getelementptr i8, ptr %bitC.sroa.69.1.i, i32 %shr.i114.i
  %cmp.i118.i = icmp ugt ptr %add.ptr.i116.i, %add.ptr4.i.i
  %spec.store.select.i119.i = select i1 %cmp.i118.i, ptr %add.ptr4.i.i, ptr %add.ptr.i116.i
  %and.i120.i = and i32 %add.i.i74.i, 7
  %mul.i121.i = and i32 %add.i.i74.i, -8
  %shr7.i122.i = lshr i32 %or.i.i73.i, %mul.i121.i
  br label %sw.epilog.i

cleanup.cont.unreachabledefault.i:                ; preds = %cleanup.cont.i
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb9.i, %cleanup.cont.i.sw.epilog.i_crit_edge
  %bitC.sroa.69.2.i = phi ptr [ %dst, %cleanup.cont.i.sw.epilog.i_crit_edge ], [ %spec.store.select.i119.i, %sw.bb9.i ]
  %bitC.sroa.34.2.i = phi i32 [ %and4.i, %cleanup.cont.i.sw.epilog.i_crit_edge ], [ %and.i120.i, %sw.bb9.i ]
  %bitC.sroa.0.2.i = phi i32 [ %and4.i, %cleanup.cont.i.sw.epilog.i_crit_edge ], [ %shr7.i122.i, %sw.bb9.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp14.not193.i = icmp eq i32 %and.i, 0
  br i1 %cmp14.not193.i, label %sw.epilog.i.for.end.i_crit_edge, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  br label %for.body.i

sw.epilog.i.for.end.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.epilog.i.for.body.i_crit_edge
  %n.0197.i = phi i32 [ %sub24.i, %for.body.i.for.body.i_crit_edge ], [ %and.i, %sw.epilog.i.for.body.i_crit_edge ]
  %bitC.sroa.0.3196.i = phi i32 [ %shr7.i142.i, %for.body.i.for.body.i_crit_edge ], [ %bitC.sroa.0.2.i, %sw.epilog.i.for.body.i_crit_edge ]
  %bitC.sroa.34.3195.i = phi i32 [ %and.i140.i, %for.body.i.for.body.i_crit_edge ], [ %bitC.sroa.34.2.i, %sw.epilog.i.for.body.i_crit_edge ]
  %bitC.sroa.69.3194.i = phi ptr [ %spec.store.select.i139.i, %for.body.i.for.body.i_crit_edge ], [ %bitC.sroa.69.2.i, %sw.epilog.i.for.body.i_crit_edge ]
  %sub.i = add i32 %n.0197.i, -1
  %arrayidx16.i = getelementptr i8, ptr %src, i32 %sub.i
  %23 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %24 to i32
  %arrayidx.i75.i = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %conv17.i
  %25 = ptrtoint ptr %arrayidx.i75.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx.i75.i, align 2
  %conv.i76.i = zext i16 %26 to i32
  %nbBits.i77.i = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %conv17.i, i32 1
  %27 = ptrtoint ptr %nbBits.i77.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nbBits.i77.i, align 2
  %conv2.i78.i = zext i8 %28 to i32
  %shl.i.i80.i = shl i32 %conv.i76.i, %bitC.sroa.34.3195.i
  %or.i.i81.i = or i32 %shl.i.i80.i, %bitC.sroa.0.3196.i
  %add.i.i82.i = add nsw i32 %bitC.sroa.34.3195.i, %conv2.i78.i
  %sub18.i = add i32 %n.0197.i, -2
  %arrayidx19.i = getelementptr i8, ptr %src, i32 %sub18.i
  %29 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %30 to i32
  %arrayidx.i83.i = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %conv20.i
  %31 = ptrtoint ptr %arrayidx.i83.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx.i83.i, align 2
  %conv.i84.i = zext i16 %32 to i32
  %nbBits.i85.i = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %conv20.i, i32 1
  %33 = ptrtoint ptr %nbBits.i85.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %nbBits.i85.i, align 2
  %conv2.i86.i = zext i8 %34 to i32
  %shl.i.i88.i = shl i32 %conv.i84.i, %add.i.i82.i
  %or.i.i89.i = or i32 %or.i.i81.i, %shl.i.i88.i
  %add.i.i90.i = add nsw i32 %add.i.i82.i, %conv2.i86.i
  %shr.i124.i = lshr i32 %add.i.i90.i, 3
  %35 = tail call i32 @llvm.bswap.i32(i32 %or.i.i89.i) #8
  %36 = ptrtoint ptr %bitC.sroa.69.3194.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %bitC.sroa.69.3194.i, align 1
  %add.ptr.i126.i = getelementptr i8, ptr %bitC.sroa.69.3194.i, i32 %shr.i124.i
  %cmp.i128.i = icmp ugt ptr %add.ptr.i126.i, %add.ptr4.i.i
  %spec.store.select.i129.i = select i1 %cmp.i128.i, ptr %add.ptr4.i.i, ptr %add.ptr.i126.i
  %and.i130.i = and i32 %add.i.i90.i, 7
  %mul.i131.i = and i32 %add.i.i90.i, -8
  %shr7.i132.i = lshr i32 %or.i.i89.i, %mul.i131.i
  %sub21.i = add i32 %n.0197.i, -3
  %arrayidx22.i = getelementptr i8, ptr %src, i32 %sub21.i
  %37 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %38 to i32
  %arrayidx.i91.i = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %conv23.i
  %39 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.i91.i, align 2
  %conv.i92.i = zext i16 %40 to i32
  %nbBits.i93.i = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %conv23.i, i32 1
  %41 = ptrtoint ptr %nbBits.i93.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %nbBits.i93.i, align 2
  %conv2.i94.i = zext i8 %42 to i32
  %shl.i.i96.i = shl nuw nsw i32 %conv.i92.i, %and.i130.i
  %or.i.i97.i = or i32 %shl.i.i96.i, %shr7.i132.i
  %add.i.i98.i = add nuw nsw i32 %and.i130.i, %conv2.i94.i
  %sub24.i = add i32 %n.0197.i, -4
  %arrayidx25.i = getelementptr i8, ptr %src, i32 %sub24.i
  %43 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = zext i8 %44 to i32
  %arrayidx.i99.i = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %conv26.i
  %45 = ptrtoint ptr %arrayidx.i99.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.i99.i, align 2
  %conv.i100.i = zext i16 %46 to i32
  %nbBits.i101.i = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %conv26.i, i32 1
  %47 = ptrtoint ptr %nbBits.i101.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %nbBits.i101.i, align 2
  %conv2.i102.i = zext i8 %48 to i32
  %shl.i.i104.i = shl i32 %conv.i100.i, %add.i.i98.i
  %or.i.i105.i = or i32 %or.i.i97.i, %shl.i.i104.i
  %add.i.i106.i = add nuw nsw i32 %add.i.i98.i, %conv2.i102.i
  %shr.i134.i = lshr i32 %add.i.i106.i, 3
  %49 = tail call i32 @llvm.bswap.i32(i32 %or.i.i105.i) #8
  %50 = ptrtoint ptr %spec.store.select.i129.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %49, ptr %spec.store.select.i129.i, align 1
  %add.ptr.i136.i = getelementptr i8, ptr %spec.store.select.i129.i, i32 %shr.i134.i
  %cmp.i138.i = icmp ugt ptr %add.ptr.i136.i, %add.ptr4.i.i
  %spec.store.select.i139.i = select i1 %cmp.i138.i, ptr %add.ptr4.i.i, ptr %add.ptr.i136.i
  %and.i140.i = and i32 %add.i.i106.i, 7
  %mul.i141.i = and i32 %add.i.i106.i, 1016
  %shr7.i142.i = lshr i32 %or.i.i105.i, %mul.i141.i
  %cmp14.not.i = icmp eq i32 %sub24.i, 0
  br i1 %cmp14.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.epilog.i.for.end.i_crit_edge
  %bitC.sroa.69.3.lcssa.i = phi ptr [ %bitC.sroa.69.2.i, %sw.epilog.i.for.end.i_crit_edge ], [ %spec.store.select.i139.i, %for.body.i.for.end.i_crit_edge ]
  %bitC.sroa.34.3.lcssa.i = phi i32 [ %bitC.sroa.34.2.i, %sw.epilog.i.for.end.i_crit_edge ], [ %and.i140.i, %for.body.i.for.end.i_crit_edge ]
  %bitC.sroa.0.3.lcssa.i = phi i32 [ %bitC.sroa.0.2.i, %sw.epilog.i.for.end.i_crit_edge ], [ %shr7.i142.i, %for.body.i.for.end.i_crit_edge ]
  %shl.i.i144.i = shl nuw nsw i32 1, %bitC.sroa.34.3.lcssa.i
  %or.i.i145.i = or i32 %bitC.sroa.0.3.lcssa.i, %shl.i.i144.i
  %add.i.i146.i = add nuw nsw i32 %bitC.sroa.34.3.lcssa.i, 1
  %shr.i.i.i = lshr i32 %add.i.i146.i, 3
  %51 = tail call i32 @llvm.bswap.i32(i32 %or.i.i145.i) #8
  %52 = ptrtoint ptr %bitC.sroa.69.3.lcssa.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %51, ptr %bitC.sroa.69.3.lcssa.i, align 1
  %add.ptr.i.i.i = getelementptr i8, ptr %bitC.sroa.69.3.lcssa.i, i32 %shr.i.i.i
  %cmp.not.i.i = icmp ugt ptr %add.ptr4.i.i, %add.ptr.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %for.end.i.HUF_compress1X_usingCTable_internal_body.exit_crit_edge

for.end.i.HUF_compress1X_usingCTable_internal_body.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %HUF_compress1X_usingCTable_internal_body.exit

if.end.i.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.i.i.i = and i32 %add.i.i146.i, 7
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %dst to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp2.i.i = icmp ne i32 %and.i.i.i, 0
  %conv.i147.i = zext i1 %cmp2.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.i.i = add i32 %sub.ptr.sub.i.i, %conv.i147.i
  br label %HUF_compress1X_usingCTable_internal_body.exit

HUF_compress1X_usingCTable_internal_body.exit:    ; preds = %if.end.i.i, %for.end.i.HUF_compress1X_usingCTable_internal_body.exit_crit_edge, %entry.HUF_compress1X_usingCTable_internal_body.exit_crit_edge
  %retval.1.i = phi i32 [ 0, %entry.HUF_compress1X_usingCTable_internal_body.exit_crit_edge ], [ %add.i.i, %if.end.i.i ], [ 0, %for.end.i.HUF_compress1X_usingCTable_internal_body.exit_crit_edge ]
  ret i32 %retval.1.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_compress4X_usingCTable(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %src, i32 noundef %srcSize, ptr nocapture noundef readonly %CTable) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @HUF_compress4X_usingCTable_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %src, i32 noundef %srcSize, ptr noundef %CTable)
  ret i32 %call
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @HUF_compress4X_usingCTable_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %src, i32 noundef %srcSize, ptr nocapture noundef readonly %CTable) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %srcSize, 3
  %div1 = lshr i32 %add, 2
  %add.ptr = getelementptr i8, ptr %src, i32 %srcSize
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %dstSize)
  %cmp = icmp ult i32 %dstSize, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %srcSize)
  %cmp2 = icmp ult i32 %srcSize, 12
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %entry.cleanup77_crit_edge, label %if.end4

entry.cleanup77_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup77

if.end4:                                          ; preds = %entry
  %add.ptr1 = getelementptr i8, ptr %dst, i32 %dstSize
  %add.ptr5 = getelementptr i8, ptr %dst, i32 6
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr1 to i32
  %gepdiff = add i32 %dstSize, -6
  %call = tail call fastcc i32 @HUF_compress1X_usingCTable_internal(ptr noundef %add.ptr5, i32 noundef %gepdiff, ptr noundef %src, i32 noundef %div1, ptr noundef %CTable)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call)
  %cmp.i = icmp ult i32 %call, -119
  br i1 %cmp.i, label %if.end8, label %if.end4.cleanup77_crit_edge

if.end4.cleanup77_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup77

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp eq i32 %call, 0
  br i1 %cmp9, label %if.end8.cleanup77_crit_edge, label %cleanup.cont

if.end8.cleanup77_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup77

cleanup.cont:                                     ; preds = %if.end8
  %conv = trunc i32 %call to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv) #8
  %1 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 %0, ptr %dst, align 1
  %add.ptr12 = getelementptr i8, ptr %add.ptr5, i32 %call
  %add.ptr13 = getelementptr i8, ptr %src, i32 %div1
  %sub.ptr.rhs.cast16 = ptrtoint ptr %add.ptr12 to i32
  %sub.ptr.sub17 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast16
  %call18 = tail call fastcc i32 @HUF_compress1X_usingCTable_internal(ptr noundef %add.ptr12, i32 noundef %sub.ptr.sub17, ptr noundef %add.ptr13, i32 noundef %div1, ptr noundef %CTable)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call18)
  %cmp.i2 = icmp ult i32 %call18, -119
  br i1 %cmp.i2, label %if.end22, label %cleanup.cont.cleanup77_crit_edge

cleanup.cont.cleanup77_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup77

if.end22:                                         ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp23 = icmp eq i32 %call18, 0
  br i1 %cmp23, label %if.end22.cleanup77_crit_edge, label %cleanup.cont32

if.end22.cleanup77_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup77

cleanup.cont32:                                   ; preds = %if.end22
  %add.ptr27 = getelementptr i8, ptr %dst, i32 2
  %conv28 = trunc i32 %call18 to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv28) #8
  %3 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %2, ptr %add.ptr27, align 1
  %add.ptr29 = getelementptr i8, ptr %add.ptr12, i32 %call18
  %add.ptr33 = getelementptr i8, ptr %add.ptr13, i32 %div1
  %sub.ptr.rhs.cast36 = ptrtoint ptr %add.ptr29 to i32
  %sub.ptr.sub37 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast36
  %call38 = tail call fastcc i32 @HUF_compress1X_usingCTable_internal(ptr noundef %add.ptr29, i32 noundef %sub.ptr.sub37, ptr noundef %add.ptr33, i32 noundef %div1, ptr noundef %CTable)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call38)
  %cmp.i4 = icmp ult i32 %call38, -119
  br i1 %cmp.i4, label %if.end42, label %cleanup.cont32.cleanup77_crit_edge

cleanup.cont32.cleanup77_crit_edge:               ; preds = %cleanup.cont32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup77

if.end42:                                         ; preds = %cleanup.cont32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp43 = icmp eq i32 %call38, 0
  br i1 %cmp43, label %if.end42.cleanup77_crit_edge, label %cleanup.cont52

if.end42.cleanup77_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup77

cleanup.cont52:                                   ; preds = %if.end42
  %add.ptr47 = getelementptr i8, ptr %dst, i32 4
  %conv48 = trunc i32 %call38 to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv48) #8
  %5 = ptrtoint ptr %add.ptr47 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %add.ptr47, align 1
  %add.ptr49 = getelementptr i8, ptr %add.ptr29, i32 %call38
  %add.ptr53 = getelementptr i8, ptr %add.ptr33, i32 %div1
  %sub.ptr.rhs.cast56 = ptrtoint ptr %add.ptr49 to i32
  %sub.ptr.sub57 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast56
  %sub.ptr.lhs.cast58 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast59 = ptrtoint ptr %add.ptr53 to i32
  %sub.ptr.sub60 = sub i32 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59
  %call61 = tail call fastcc i32 @HUF_compress1X_usingCTable_internal(ptr noundef %add.ptr49, i32 noundef %sub.ptr.sub57, ptr noundef %add.ptr53, i32 noundef %sub.ptr.sub60, ptr noundef %CTable)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call61)
  %cmp.i6 = icmp ult i32 %call61, -119
  br i1 %cmp.i6, label %if.end65, label %cleanup.cont52.cleanup77_crit_edge

cleanup.cont52.cleanup77_crit_edge:               ; preds = %cleanup.cont52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup77

if.end65:                                         ; preds = %cleanup.cont52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp66 = icmp eq i32 %call61, 0
  br i1 %cmp66, label %if.end65.cleanup77_crit_edge, label %cleanup.cont73

if.end65.cleanup77_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup77

cleanup.cont73:                                   ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr70 = getelementptr i8, ptr %add.ptr49, i32 %call61
  %sub.ptr.lhs.cast74 = ptrtoint ptr %add.ptr70 to i32
  %sub.ptr.rhs.cast75 = ptrtoint ptr %dst to i32
  %sub.ptr.sub76 = sub i32 %sub.ptr.lhs.cast74, %sub.ptr.rhs.cast75
  br label %cleanup77

cleanup77:                                        ; preds = %cleanup.cont73, %if.end65.cleanup77_crit_edge, %cleanup.cont52.cleanup77_crit_edge, %if.end42.cleanup77_crit_edge, %cleanup.cont32.cleanup77_crit_edge, %if.end22.cleanup77_crit_edge, %cleanup.cont.cleanup77_crit_edge, %if.end8.cleanup77_crit_edge, %if.end4.cleanup77_crit_edge, %entry.cleanup77_crit_edge
  %retval.4 = phi i32 [ %sub.ptr.sub76, %cleanup.cont73 ], [ 0, %entry.cleanup77_crit_edge ], [ 0, %if.end8.cleanup77_crit_edge ], [ %call, %if.end4.cleanup77_crit_edge ], [ 0, %if.end22.cleanup77_crit_edge ], [ %call18, %cleanup.cont.cleanup77_crit_edge ], [ 0, %if.end42.cleanup77_crit_edge ], [ %call38, %cleanup.cont32.cleanup77_crit_edge ], [ 0, %if.end65.cleanup77_crit_edge ], [ %call61, %cleanup.cont52.cleanup77_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_compress1X_wksp(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %src, i32 noundef %srcSize, i32 noundef %maxSymbolValue, i32 noundef %huffLog, ptr noundef %workSpace, i32 noundef %wkspSize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @HUF_compress_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %src, i32 noundef %srcSize, i32 noundef %maxSymbolValue, i32 noundef %huffLog, i32 noundef 0, ptr noundef %workSpace, i32 noundef %wkspSize, ptr noundef null, ptr noundef null, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @HUF_compress_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %src, i32 noundef %srcSize, i32 noundef %maxSymbolValue, i32 noundef %huffLog, i32 noundef %nbStreams, ptr noundef %workSpace_align4, i32 noundef %wkspSize, ptr noundef %oldHufTable, ptr noundef %repeat, i32 noundef %preferRepeat) unnamed_addr #0 align 64 {
entry:
  %maxSymbolValue.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %maxSymbolValue.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %maxSymbolValue, ptr %maxSymbolValue.addr, align 4
  %add.ptr = getelementptr i8, ptr %dst, i32 %dstSize
  call void @__sanitizer_cov_trace_const_cmp4(i32 6400, i32 %wkspSize)
  %cmp = icmp ult i32 %wkspSize, 6400
  br i1 %cmp, label %entry.cleanup127_crit_edge, label %if.end

entry.cleanup127_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srcSize)
  %tobool.not = icmp eq i32 %srcSize, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dstSize)
  %tobool3.not = icmp eq i32 %dstSize, 0
  %or.cond3 = or i1 %tobool3.not, %tobool.not
  br i1 %or.cond3, label %if.end.cleanup127_crit_edge, label %if.end5

if.end.cleanup127_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %srcSize)
  %cmp6 = icmp ugt i32 %srcSize, 131072
  br i1 %cmp6, label %if.end5.cleanup127_crit_edge, label %if.end8

if.end5.cleanup127_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %huffLog)
  %cmp9 = icmp ugt i32 %huffLog, 12
  br i1 %cmp9, label %if.end8.cleanup127_crit_edge, label %if.end11

if.end8.cleanup127_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %maxSymbolValue)
  %cmp12 = icmp ugt i32 %maxSymbolValue, 255
  br i1 %cmp12, label %if.end11.cleanup127_crit_edge, label %if.end14

if.end11.cleanup127_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxSymbolValue)
  %tobool15.not = icmp eq i32 %maxSymbolValue, 0
  br i1 %tobool15.not, label %if.then16, label %if.end14.if.end17_crit_edge

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %maxSymbolValue.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 255, ptr %maxSymbolValue.addr, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %huffLog)
  %tobool18.not = icmp eq i32 %huffLog, 0
  %spec.store.select = select i1 %tobool18.not, i32 11, i32 %huffLog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %preferRepeat)
  %tobool21.not = icmp eq i32 %preferRepeat, 0
  %tobool22.not = icmp eq ptr %repeat, null
  %or.cond = or i1 %tobool22.not, %tobool21.not
  br i1 %or.cond, label %if.end17.if.end26_crit_edge, label %land.lhs.true23

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.lhs.true23:                                  ; preds = %if.end17
  %2 = ptrtoint ptr %repeat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %repeat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp24 = icmp eq i32 %3, 2
  br i1 %cmp24, label %if.then25, label %land.lhs.true23.if.end26_crit_edge

land.lhs.true23.if.end26_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @HUF_compressCTable_internal(ptr noundef %dst, ptr noundef %dst, ptr noundef %add.ptr, ptr noundef %src, i32 noundef %srcSize, i32 noundef %nbStreams, ptr noundef %oldHufTable)
  br label %cleanup127

if.end26:                                         ; preds = %land.lhs.true23.if.end26_crit_edge, %if.end17.if.end26_crit_edge
  %call27 = call i32 @HIST_count_wksp(ptr noundef %workSpace_align4, ptr noundef nonnull %maxSymbolValue.addr, ptr noundef %src, i32 noundef %srcSize, ptr noundef %workSpace_align4, i32 noundef %wkspSize) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call27)
  %cmp.i = icmp ult i32 %call27, -119
  br i1 %cmp.i, label %if.end31, label %if.end26.cleanup127_crit_edge

if.end26.cleanup127_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_cmp4(i32 %call27, i32 %srcSize)
  %cmp32 = icmp eq i32 %call27, %srcSize
  br i1 %cmp32, label %if.then33, label %cleanup

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %src, align 1
  %6 = ptrtoint ptr %dst to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %dst, align 1
  br label %cleanup127

cleanup:                                          ; preds = %if.end31
  %shr = lshr i32 %srcSize, 7
  %add = add nuw nsw i32 %shr, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call27, i32 %add)
  %cmp35.not = icmp ugt i32 %call27, %add
  br i1 %cmp35.not, label %cleanup.cont, label %cleanup.cleanup127_crit_edge

cleanup.cleanup127_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

cleanup.cont:                                     ; preds = %cleanup
  br i1 %tobool22.not, label %cleanup.cont.if.end55_crit_edge, label %land.lhs.true39

cleanup.cont.if.end55_crit_edge:                  ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

land.lhs.true39:                                  ; preds = %cleanup.cont
  %7 = ptrtoint ptr %repeat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %repeat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp40 = icmp eq i32 %8, 1
  br i1 %cmp40, label %land.lhs.true41, label %land.lhs.true39.if.end47_crit_edge

land.lhs.true39.if.end47_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

land.lhs.true41:                                  ; preds = %land.lhs.true39
  %9 = ptrtoint ptr %maxSymbolValue.addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %maxSymbolValue.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not11.i = icmp slt i32 %10, 0
  br i1 %cmp.not11.i, label %land.lhs.true41.if.end47_crit_edge, label %land.lhs.true41.for.body.i_crit_edge

land.lhs.true41.for.body.i_crit_edge:             ; preds = %land.lhs.true41
  br label %for.body.i

land.lhs.true41.if.end47_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %land.lhs.true41.for.body.i_crit_edge
  %s.013.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %land.lhs.true41.for.body.i_crit_edge ]
  %bad.012.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %land.lhs.true41.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %workSpace_align4, i32 %s.013.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1.i = icmp ne i32 %12, 0
  %nbBits.i = getelementptr %struct.HUF_CElt_s, ptr %oldHufTable, i32 %s.013.i, i32 1
  %13 = ptrtoint ptr %nbBits.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nbBits.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp4.i = icmp eq i8 %14, 0
  %and10.i = and i1 %cmp1.i, %cmp4.i
  %and.i = zext i1 %and10.i to i32
  %or.i = or i32 %bad.012.i, %and.i
  %inc.i = add i32 %s.013.i, 1
  %cmp.not.i = icmp sgt i32 %inc.i, %10
  br i1 %cmp.not.i, label %HUF_validateCTable.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

HUF_validateCTable.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %phi.cmp.i.not = icmp eq i32 %or.i, 0
  br i1 %phi.cmp.i.not, label %HUF_validateCTable.exit.if.end47_crit_edge, label %if.then46

HUF_validateCTable.exit.if.end47_crit_edge:       ; preds = %HUF_validateCTable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then46:                                        ; preds = %HUF_validateCTable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %repeat to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %repeat, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %HUF_validateCTable.exit.if.end47_crit_edge, %land.lhs.true41.if.end47_crit_edge, %land.lhs.true39.if.end47_crit_edge
  br i1 %or.cond, label %if.end47.if.end55_crit_edge, label %land.lhs.true51

if.end47.if.end55_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

land.lhs.true51:                                  ; preds = %if.end47
  %16 = ptrtoint ptr %repeat to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %repeat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp52.not = icmp eq i32 %17, 0
  br i1 %cmp52.not, label %land.lhs.true51.if.end55_crit_edge, label %if.then53

land.lhs.true51.if.end55_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then53:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #10
  %call54 = call fastcc i32 @HUF_compressCTable_internal(ptr noundef %dst, ptr noundef %dst, ptr noundef %add.ptr, ptr noundef %src, i32 noundef %srcSize, i32 noundef %nbStreams, ptr noundef %oldHufTable)
  br label %cleanup127

if.end55:                                         ; preds = %land.lhs.true51.if.end55_crit_edge, %if.end47.if.end55_crit_edge, %cleanup.cont.if.end55_crit_edge
  %18 = ptrtoint ptr %maxSymbolValue.addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %maxSymbolValue.addr, align 4
  %call.i = call i32 @FSE_optimalTableLog_internal(i32 noundef %spec.store.select, i32 noundef %srcSize, i32 noundef %19, i32 noundef 1) #8
  %CTable = getelementptr inbounds %struct.HUF_compress_tables_t, ptr %workSpace_align4, i32 0, i32 1
  %20 = ptrtoint ptr %maxSymbolValue.addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %maxSymbolValue.addr, align 4
  %wksps = getelementptr inbounds %struct.HUF_compress_tables_t, ptr %workSpace_align4, i32 0, i32 2
  %call60 = call i32 @HUF_buildCTable_wksp(ptr noundef %CTable, ptr noundef %workSpace_align4, i32 noundef %21, i32 noundef %call.i, ptr noundef %wksps, i32 noundef 4352)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call60)
  %cmp.i4 = icmp ult i32 %call60, -119
  br i1 %cmp.i4, label %cleanup.cont75, label %if.end55.cleanup127_crit_edge

if.end55.cleanup127_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

cleanup.cont75:                                   ; preds = %if.end55
  %22 = ptrtoint ptr %maxSymbolValue.addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %maxSymbolValue.addr, align 4
  %add70 = add i32 %23, 1
  %add.ptr71 = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %add70
  %mul.neg = mul i32 %add70, -4
  %sub = add i32 %mul.neg, 1024
  %24 = call ptr @memset(ptr %add.ptr71, i32 0, i32 %sub)
  %call79 = call i32 @HUF_writeCTable_wksp(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %CTable, i32 noundef %23, i32 noundef %call60, ptr noundef %wksps, i32 noundef 704)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call79)
  %cmp.i6 = icmp ult i32 %call79, -119
  br i1 %cmp.i6, label %if.end83, label %cleanup.cont75.cleanup127_crit_edge

cleanup.cont75.cleanup127_crit_edge:              ; preds = %cleanup.cont75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end83:                                         ; preds = %cleanup.cont75
  br i1 %tobool22.not, label %if.end107.thread50, label %land.lhs.true85

land.lhs.true85:                                  ; preds = %if.end83
  %25 = ptrtoint ptr %repeat to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %repeat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp86.not = icmp eq i32 %26, 0
  br i1 %cmp86.not, label %if.end107.thread, label %if.then87

if.then87:                                        ; preds = %land.lhs.true85
  %27 = ptrtoint ptr %maxSymbolValue.addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %maxSymbolValue.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not7.i = icmp slt i32 %28, 0
  br i1 %cmp.not7.i, label %if.then87.cleanup103_crit_edge, label %if.then87.for.body.i11_crit_edge

if.then87.for.body.i11_crit_edge:                 ; preds = %if.then87
  br label %for.body.i11

if.then87.cleanup103_crit_edge:                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup103

for.body.i11:                                     ; preds = %for.body.i11.for.body.i11_crit_edge, %if.then87.for.body.i11_crit_edge
  %s.09.i = phi i32 [ %inc.i9, %for.body.i11.for.body.i11_crit_edge ], [ 0, %if.then87.for.body.i11_crit_edge ]
  %nbBits.08.i = phi i32 [ %add.i, %for.body.i11.for.body.i11_crit_edge ], [ 0, %if.then87.for.body.i11_crit_edge ]
  %nbBits1.i = getelementptr %struct.HUF_CElt_s, ptr %oldHufTable, i32 %s.09.i, i32 1
  %29 = ptrtoint ptr %nbBits1.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %nbBits1.i, align 2
  %conv.i8 = zext i8 %30 to i32
  %arrayidx2.i = getelementptr i32, ptr %workSpace_align4, i32 %s.09.i
  %31 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx2.i, align 4
  %mul.i = mul i32 %32, %conv.i8
  %add.i = add i32 %mul.i, %nbBits.08.i
  %inc.i9 = add i32 %s.09.i, 1
  %cmp.not.i10 = icmp sgt i32 %inc.i9, %28
  br i1 %cmp.not.i10, label %for.body.i23.preheader, label %for.body.i11.for.body.i11_crit_edge

for.body.i11.for.body.i11_crit_edge:              ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i11

for.body.i23.preheader:                           ; preds = %for.body.i11
  %phi.bo.i = lshr i32 %add.i, 3
  br label %for.body.i23

for.body.i23:                                     ; preds = %for.body.i23.for.body.i23_crit_edge, %for.body.i23.preheader
  %s.09.i14 = phi i32 [ %inc.i21, %for.body.i23.for.body.i23_crit_edge ], [ 0, %for.body.i23.preheader ]
  %nbBits.08.i15 = phi i32 [ %add.i20, %for.body.i23.for.body.i23_crit_edge ], [ 0, %for.body.i23.preheader ]
  %nbBits1.i16 = getelementptr %struct.HUF_CElt_s, ptr %CTable, i32 %s.09.i14, i32 1
  %33 = ptrtoint ptr %nbBits1.i16 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %nbBits1.i16, align 2
  %conv.i17 = zext i8 %34 to i32
  %arrayidx2.i18 = getelementptr i32, ptr %workSpace_align4, i32 %s.09.i14
  %35 = ptrtoint ptr %arrayidx2.i18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx2.i18, align 4
  %mul.i19 = mul i32 %36, %conv.i17
  %add.i20 = add i32 %mul.i19, %nbBits.08.i15
  %inc.i21 = add i32 %s.09.i14, 1
  %cmp.not.i22 = icmp sgt i32 %inc.i21, %28
  br i1 %cmp.not.i22, label %HUF_estimateCompressedSize.exit27, label %for.body.i23.for.body.i23_crit_edge

for.body.i23.for.body.i23_crit_edge:              ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i23

HUF_estimateCompressedSize.exit27:                ; preds = %for.body.i23
  %phi.bo.i24 = lshr i32 %add.i20, 3
  %add96 = add i32 %phi.bo.i24, %call79
  call void @__sanitizer_cov_trace_cmp4(i32 %phi.bo.i, i32 %add96)
  %cmp97.not = icmp ugt i32 %phi.bo.i, %add96
  %add98 = add i32 %call79, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add98, i32 %srcSize)
  %cmp99.not = icmp ult i32 %add98, %srcSize
  %or.cond2 = and i1 %cmp99.not, %cmp97.not
  br i1 %or.cond2, label %HUF_estimateCompressedSize.exit27.if.then114_crit_edge, label %HUF_estimateCompressedSize.exit27.cleanup103_crit_edge

HUF_estimateCompressedSize.exit27.cleanup103_crit_edge: ; preds = %HUF_estimateCompressedSize.exit27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup103

HUF_estimateCompressedSize.exit27.if.then114_crit_edge: ; preds = %HUF_estimateCompressedSize.exit27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then114

cleanup103:                                       ; preds = %HUF_estimateCompressedSize.exit27.cleanup103_crit_edge, %if.then87.cleanup103_crit_edge
  %call101 = call fastcc i32 @HUF_compressCTable_internal(ptr noundef %dst, ptr noundef %dst, ptr noundef %add.ptr, ptr noundef %src, i32 noundef %srcSize, i32 noundef %nbStreams, ptr noundef %oldHufTable)
  br label %cleanup127

if.end107.thread50:                               ; preds = %if.end83
  %add10851 = add nuw i32 %call79, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add10851, i32 %srcSize)
  %cmp109.not52 = icmp ult i32 %add10851, %srcSize
  br i1 %cmp109.not52, label %if.end107.thread50.if.end115_crit_edge, label %if.end107.thread50.cleanup127_crit_edge

if.end107.thread50.cleanup127_crit_edge:          ; preds = %if.end107.thread50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end107.thread50.if.end115_crit_edge:           ; preds = %if.end107.thread50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115

if.end107.thread:                                 ; preds = %land.lhs.true85
  %add10845 = add nuw i32 %call79, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add10845, i32 %srcSize)
  %cmp109.not46 = icmp ult i32 %add10845, %srcSize
  br i1 %cmp109.not46, label %if.end107.thread.if.then114_crit_edge, label %if.end107.thread.cleanup127_crit_edge

if.end107.thread.cleanup127_crit_edge:            ; preds = %if.end107.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end107.thread.if.then114_crit_edge:            ; preds = %if.end107.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then114

if.then114:                                       ; preds = %if.end107.thread.if.then114_crit_edge, %HUF_estimateCompressedSize.exit27.if.then114_crit_edge
  %37 = ptrtoint ptr %repeat to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %repeat, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.end107.thread50.if.end115_crit_edge
  %add.ptr11249 = getelementptr i8, ptr %dst, i32 %call79
  %tobool116.not = icmp eq ptr %oldHufTable, null
  br i1 %tobool116.not, label %if.end115.cleanup.cont123_crit_edge, label %if.then117

if.end115.cleanup.cont123_crit_edge:              ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.cont123

if.then117:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  %38 = call ptr @memcpy(ptr %oldHufTable, ptr %CTable, i32 1024)
  br label %cleanup.cont123

cleanup.cont123:                                  ; preds = %if.then117, %if.end115.cleanup.cont123_crit_edge
  %call126 = call fastcc i32 @HUF_compressCTable_internal(ptr noundef %dst, ptr noundef %add.ptr11249, ptr noundef %add.ptr, ptr noundef %src, i32 noundef %srcSize, i32 noundef %nbStreams, ptr noundef %CTable)
  br label %cleanup127

cleanup127:                                       ; preds = %cleanup.cont123, %if.end107.thread.cleanup127_crit_edge, %if.end107.thread50.cleanup127_crit_edge, %cleanup103, %cleanup.cont75.cleanup127_crit_edge, %if.end55.cleanup127_crit_edge, %if.then53, %cleanup.cleanup127_crit_edge, %if.then33, %if.end26.cleanup127_crit_edge, %if.then25, %if.end11.cleanup127_crit_edge, %if.end8.cleanup127_crit_edge, %if.end5.cleanup127_crit_edge, %if.end.cleanup127_crit_edge, %entry.cleanup127_crit_edge
  %retval.5 = phi i32 [ %call, %if.then25 ], [ %call54, %if.then53 ], [ %call126, %cleanup.cont123 ], [ 0, %cleanup.cleanup127_crit_edge ], [ -66, %entry.cleanup127_crit_edge ], [ 0, %if.end.cleanup127_crit_edge ], [ -72, %if.end5.cleanup127_crit_edge ], [ -44, %if.end8.cleanup127_crit_edge ], [ -46, %if.end11.cleanup127_crit_edge ], [ %call60, %if.end55.cleanup127_crit_edge ], [ %call27, %if.end26.cleanup127_crit_edge ], [ 1, %if.then33 ], [ 0, %if.end107.thread50.cleanup127_crit_edge ], [ 0, %if.end107.thread.cleanup127_crit_edge ], [ %call79, %cleanup.cont75.cleanup127_crit_edge ], [ %call101, %cleanup103 ]
  ret i32 %retval.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_compress1X_repeat(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %src, i32 noundef %srcSize, i32 noundef %maxSymbolValue, i32 noundef %huffLog, ptr noundef %workSpace, i32 noundef %wkspSize, ptr noundef %hufTable, ptr noundef %repeat, i32 noundef %preferRepeat, i32 noundef %bmi2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @HUF_compress_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %src, i32 noundef %srcSize, i32 noundef %maxSymbolValue, i32 noundef %huffLog, i32 noundef 0, ptr noundef %workSpace, i32 noundef %wkspSize, ptr noundef %hufTable, ptr noundef %repeat, i32 noundef %preferRepeat)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_compress4X_wksp(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %src, i32 noundef %srcSize, i32 noundef %maxSymbolValue, i32 noundef %huffLog, ptr noundef %workSpace, i32 noundef %wkspSize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @HUF_compress_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %src, i32 noundef %srcSize, i32 noundef %maxSymbolValue, i32 noundef %huffLog, i32 noundef 1, ptr noundef %workSpace, i32 noundef %wkspSize, ptr noundef null, ptr noundef null, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @HUF_compress4X_repeat(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %src, i32 noundef %srcSize, i32 noundef %maxSymbolValue, i32 noundef %huffLog, ptr noundef %workSpace, i32 noundef %wkspSize, ptr noundef %hufTable, ptr noundef %repeat, i32 noundef %preferRepeat, i32 noundef %bmi2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @HUF_compress_internal(ptr noundef %dst, i32 noundef %dstSize, ptr noundef %src, i32 noundef %srcSize, i32 noundef %maxSymbolValue, i32 noundef %huffLog, i32 noundef 1, ptr noundef %workSpace, i32 noundef %wkspSize, ptr noundef %hufTable, ptr noundef %repeat, i32 noundef %preferRepeat)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HIST_count_simple(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_optimalTableLog(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_normalizeCount(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_writeNCount(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_compress_usingCTable(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @HUF_compressCTable_internal(ptr noundef %ostart, ptr noundef %op, ptr noundef %oend, ptr noundef %src, i32 noundef %srcSize, i32 noundef %nbStreams, ptr nocapture noundef readonly %CTable) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbStreams)
  %cmp = icmp eq i32 %nbStreams, 0
  %sub.ptr.lhs.cast = ptrtoint ptr %oend to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %op to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @HUF_compress1X_usingCTable_internal(ptr noundef %op, i32 noundef %sub.ptr.sub, ptr noundef %src, i32 noundef %srcSize, ptr noundef %CTable)
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call fastcc i32 @HUF_compress4X_usingCTable_internal(ptr noundef %op, i32 noundef %sub.ptr.sub, ptr noundef %src, i32 noundef %srcSize, ptr noundef %CTable)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call4, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %cond)
  %cmp.i = icmp ult i32 %cond, -119
  br i1 %cmp.i, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp6 = icmp eq i32 %cond, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %op, i32 %cond
  %sub.ptr.lhs.cast9 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast10 = ptrtoint ptr %ostart to i32
  %sub.ptr.sub11 = sub i32 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10
  %sub = add i32 %srcSize, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub11, i32 %sub)
  %cmp12.not = icmp ult i32 %sub.ptr.sub11, %sub
  %sub.ptr.sub11. = select i1 %cmp12.not, i32 %sub.ptr.sub11, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %cond.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %sub.ptr.sub11., %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HIST_count_wksp(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

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
