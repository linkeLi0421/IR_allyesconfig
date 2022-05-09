; ModuleID = '/llk/IR_all_yes/lib/zstd/decompress/zstd_ddict.c_pt.bc'
source_filename = "../lib/zstd/decompress/zstd_ddict.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.ZSTD_DDict_s = type { ptr, ptr, i32, %struct.ZSTD_entropyDTables_t, i32, i32, %struct.ZSTD_customMem }
%struct.ZSTD_entropyDTables_t = type { [513 x %struct.ZSTD_seqSymbol], [257 x %struct.ZSTD_seqSymbol], [513 x %struct.ZSTD_seqSymbol], [4097 x i32], [3 x i32], [157 x i32] }
%struct.ZSTD_seqSymbol = type { i16, i8, i8, i32 }
%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZSTD_DCtx_s = type { ptr, ptr, ptr, ptr, %struct.ZSTD_entropyDTables_t, [640 x i32], ptr, ptr, ptr, ptr, i32, %struct.ZSTD_frameHeader, i64, i64, i32, i32, i32, i32, %struct.xxh64_state, i32, i32, i32, i32, ptr, %struct.ZSTD_customMem, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.ZSTD_outBuffer_s, [131104 x i8], [18 x i8], i32 }
%struct.ZSTD_frameHeader = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.xxh64_state = type { i64, i64, i64, i64, i64, [4 x i64], i32 }
%struct.ZSTD_outBuffer_s = type { ptr, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ZSTD_DDict_dictContent(ptr nocapture noundef readonly %ddict) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dictContent = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 1
  %0 = ptrtoint ptr %dictContent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dictContent, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_DDict_dictSize(ptr nocapture noundef readonly %ddict) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dictSize = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 2
  %0 = ptrtoint ptr %dictSize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dictSize, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ZSTD_copyDDictParameters(ptr nocapture noundef writeonly %dctx, ptr noundef %ddict) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dictID = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 4
  %0 = ptrtoint ptr %dictID to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dictID, align 4
  %dictID1 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 31
  %2 = ptrtoint ptr %dictID1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %dictID1, align 8
  %dictContent = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 1
  %3 = ptrtoint ptr %dictContent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dictContent, align 4
  %prefixStart = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 7
  %5 = ptrtoint ptr %prefixStart to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %prefixStart, align 8
  %6 = load ptr, ptr %dictContent, align 4
  %virtualStart = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 8
  %7 = ptrtoint ptr %virtualStart to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %virtualStart, align 4
  %8 = load ptr, ptr %dictContent, align 4
  %dictSize = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 2
  %9 = ptrtoint ptr %dictSize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dictSize, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %10
  %dictEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 9
  %11 = ptrtoint ptr %dictEnd to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %dictEnd, align 8
  %previousDstEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 6
  %12 = ptrtoint ptr %previousDstEnd to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %previousDstEnd, align 4
  %entropyPresent = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 5
  %13 = ptrtoint ptr %entropyPresent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %entropyPresent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  %litEntropy27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 16
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %litEntropy27 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %litEntropy27, align 8
  %fseEntropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 17
  %16 = ptrtoint ptr %fseEntropy to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %fseEntropy, align 4
  %entropy = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 3
  %17 = ptrtoint ptr %dctx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entropy, ptr %dctx, align 8
  %MLTable = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 3, i32 2
  %MLTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 1
  %18 = ptrtoint ptr %MLTptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %MLTable, ptr %MLTptr, align 4
  %OFTable = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 3, i32 1
  %OFTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 2
  %19 = ptrtoint ptr %OFTptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %OFTable, ptr %OFTptr, align 8
  %hufTable = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 3, i32 3
  %HUFptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 3
  %20 = ptrtoint ptr %HUFptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %hufTable, ptr %HUFptr, align 4
  %rep = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rep, align 4
  %rep13 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 4
  %23 = ptrtoint ptr %rep13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rep13, align 4
  %arrayidx17 = getelementptr %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 3, i32 4, i32 1
  %24 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx17, align 4
  %arrayidx20 = getelementptr %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 4, i32 1
  %26 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx20, align 4
  %arrayidx23 = getelementptr %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 3, i32 4, i32 2
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx23, align 4
  %arrayidx26 = getelementptr %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 4, i32 2
  %29 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx26, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %litEntropy27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %litEntropy27, align 8
  %fseEntropy28 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 17
  %31 = ptrtoint ptr %fseEntropy28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %fseEntropy28, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createDDict_advanced(ptr noundef %dict, i32 noundef %dictSize, i32 noundef %dictLoadMethod, i32 noundef %dictContentType, [3 x i32] %customMem.coerce) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %customMem.coerce.fca.0.extract = extractvalue [3 x i32] %customMem.coerce, 0
  %0 = inttoptr i32 %customMem.coerce.fca.0.extract to ptr
  %customMem.coerce.fca.1.extract = extractvalue [3 x i32] %customMem.coerce, 1
  %1 = inttoptr i32 %customMem.coerce.fca.1.extract to ptr
  %customMem.coerce.fca.2.extract = extractvalue [3 x i32] %customMem.coerce, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %customMem.coerce.fca.0.extract)
  %tobool.not = icmp eq i32 %customMem.coerce.fca.0.extract, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %customMem.coerce.fca.1.extract)
  %tobool1.not = icmp eq i32 %customMem.coerce.fca.1.extract, 0
  %xor18 = xor i1 %tobool.not, %tobool1.not
  br i1 %xor18, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call ptr @ZSTD_customMalloc(i32 noundef 27324, [3 x i32] %customMem.coerce) #6
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end6

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end6:                                          ; preds = %if.end
  %cMem = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %cMem to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %cMem, align 4
  %customMem.sroa.4.0.cMem.sroa_idx = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %customMem.sroa.4.0.cMem.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %customMem.sroa.4.0.cMem.sroa_idx, align 4
  %customMem.sroa.7.0.cMem.sroa_idx = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %customMem.sroa.7.0.cMem.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %customMem.coerce.fca.2.extract, ptr %customMem.sroa.7.0.cMem.sroa_idx, align 4
  %call7 = tail call fastcc i32 @ZSTD_initDDict_internal(ptr noundef nonnull %call, ptr noundef %dict, i32 noundef %dictSize, i32 noundef %dictLoadMethod, i32 noundef %dictContentType)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call7)
  %cmp.i = icmp ult i32 %call7, -119
  br i1 %cmp.i, label %if.end6.return_crit_edge, label %ZSTD_freeDDict.exit

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

ZSTD_freeDDict.exit:                              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %cMem to i32
  call void @__asan_load4_noabort(i32 %5)
  %cMem.sroa.0.0.copyload.i = load ptr, ptr %cMem, align 4
  %6 = ptrtoint ptr %customMem.sroa.4.0.cMem.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %cMem.sroa.6.0.copyload.i = load ptr, ptr %customMem.sroa.4.0.cMem.sroa_idx, align 4
  %7 = ptrtoint ptr %customMem.sroa.7.0.cMem.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %cMem.sroa.9.0.copyload.i = load ptr, ptr %customMem.sroa.7.0.cMem.sroa_idx, align 4
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %10 = ptrtoint ptr %cMem.sroa.0.0.copyload.i to i32
  %.fca.0.insert.i = insertvalue [3 x i32] poison, i32 %10, 0
  %11 = ptrtoint ptr %cMem.sroa.6.0.copyload.i to i32
  %.fca.1.insert.i = insertvalue [3 x i32] %.fca.0.insert.i, i32 %11, 1
  %12 = ptrtoint ptr %cMem.sroa.9.0.copyload.i to i32
  %.fca.2.insert.i = insertvalue [3 x i32] %.fca.1.insert.i, i32 %12, 2
  tail call void @ZSTD_customFree(ptr noundef %9, [3 x i32] %.fca.2.insert.i) #6
  tail call void @ZSTD_customFree(ptr noundef nonnull %call, [3 x i32] %.fca.2.insert.i) #6
  br label %return

return:                                           ; preds = %ZSTD_freeDDict.exit, %if.end6.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi ptr [ null, %entry.return_crit_edge ], [ null, %if.end.return_crit_edge ], [ %call, %if.end6.return_crit_edge ], [ null, %ZSTD_freeDDict.exit ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_customMalloc(i32 noundef, [3 x i32]) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_initDDict_internal(ptr noundef %ddict, ptr noundef %dict, i32 noundef %dictSize, i32 noundef %dictLoadMethod, i32 noundef %dictContentType) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dictLoadMethod)
  %cmp = icmp eq i32 %dictLoadMethod, 1
  %tobool.not = icmp eq ptr %dict, null
  %or.cond = or i1 %tobool.not, %cmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dictSize)
  %tobool2.not = icmp eq i32 %dictSize, 0
  %or.cond42 = or i1 %tobool2.not, %or.cond
  br i1 %or.cond42, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %ddict to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ddict, align 4
  %dictContent = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 1
  %1 = ptrtoint ptr %dictContent to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dict, ptr %dictContent, align 4
  %spec.select = select i1 %tobool.not, i32 0, i32 %dictSize
  br label %if.end10

if.else:                                          ; preds = %entry
  %cMem = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 6
  %2 = ptrtoint ptr %cMem to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack = load i32, ptr %cMem, align 4
  %3 = insertvalue [3 x i32] undef, i32 %.unpack, 0
  %.elt38 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %.elt38 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack39 = load i32, ptr %.elt38, align 4
  %5 = insertvalue [3 x i32] %3, i32 %.unpack39, 1
  %.elt40 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %.elt40 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack41 = load i32, ptr %.elt40, align 4
  %7 = insertvalue [3 x i32] %5, i32 %.unpack41, 2
  %call = tail call ptr @ZSTD_customMalloc(i32 noundef %dictSize, [3 x i32] %7) #6
  %8 = ptrtoint ptr %ddict to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %ddict, align 4
  %dictContent6 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 1
  %9 = ptrtoint ptr %dictContent6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %dictContent6, align 4
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.else.return_crit_edge, label %cleanup.thread

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

cleanup.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %10 = call ptr @memcpy(ptr %call, ptr %dict, i32 %dictSize)
  br label %if.end10

if.end10:                                         ; preds = %cleanup.thread, %if.then
  %dictSize.addr.0 = phi i32 [ %spec.select, %if.then ], [ %dictSize, %cleanup.thread ]
  %dictSize11 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 2
  %11 = ptrtoint ptr %dictSize11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dictSize.addr.0, ptr %dictSize11, align 4
  %hufTable = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %hufTable to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 201326604, ptr %hufTable, align 4
  %dictID.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 4
  %13 = ptrtoint ptr %dictID.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %dictID.i, align 4
  %entropyPresent.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 5
  %14 = ptrtoint ptr %entropyPresent.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %entropyPresent.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dictContentType)
  %cmp.i = icmp eq i32 %dictContentType, 1
  br i1 %cmp.i, label %if.end10.ZSTD_loadEntropy_intoDDict.exit.thread_crit_edge, label %if.end.i

if.end10.ZSTD_loadEntropy_intoDDict.exit.thread_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %ZSTD_loadEntropy_intoDDict.exit.thread

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %dictSize.addr.0)
  %cmp1.i = icmp ult i32 %dictSize.addr.0, 8
  br i1 %cmp1.i, label %if.then2.i, label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dictContentType)
  %cmp3.i = icmp eq i32 %dictContentType, 2
  br i1 %cmp3.i, label %if.then2.i.return_crit_edge, label %if.then2.i.ZSTD_loadEntropy_intoDDict.exit.thread_crit_edge

if.then2.i.ZSTD_loadEntropy_intoDDict.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ZSTD_loadEntropy_intoDDict.exit.thread

if.then2.i.return_crit_edge:                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end6.i:                                        ; preds = %if.end.i
  %dictContent.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 1
  %15 = ptrtoint ptr %dictContent.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dictContent.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 933507308, i32 %18)
  %cmp7.not.i = icmp eq i32 %18, 933507308
  br i1 %cmp7.not.i, label %cleanup.cont.i, label %ZSTD_loadEntropy_intoDDict.exit

cleanup.cont.i:                                   ; preds = %if.end6.i
  %add.ptr.i = getelementptr i8, ptr %16, i32 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %add.ptr.i, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  %22 = ptrtoint ptr %dictID.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %dictID.i, align 4
  %entropy.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 3
  %call18.i = tail call i32 @ZSTD_loadDEntropy(ptr noundef %entropy.i, ptr noundef %16, i32 noundef %dictSize.addr.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call18.i)
  %cmp.i.i = icmp ult i32 %call18.i, -119
  br i1 %cmp.i.i, label %if.end21.i, label %cleanup.cont.i.return_crit_edge

cleanup.cont.i.return_crit_edge:                  ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end21.i:                                       ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %entropyPresent.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %entropyPresent.i, align 4
  br label %ZSTD_loadEntropy_intoDDict.exit.thread

ZSTD_loadEntropy_intoDDict.exit:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dictContentType)
  %cmp9.i = icmp eq i32 %dictContentType, 2
  %.34.i = select i1 %cmp9.i, i32 -30, i32 0
  br i1 %cmp9.i, label %ZSTD_loadEntropy_intoDDict.exit.return_crit_edge, label %ZSTD_loadEntropy_intoDDict.exit.ZSTD_loadEntropy_intoDDict.exit.thread_crit_edge

ZSTD_loadEntropy_intoDDict.exit.ZSTD_loadEntropy_intoDDict.exit.thread_crit_edge: ; preds = %ZSTD_loadEntropy_intoDDict.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ZSTD_loadEntropy_intoDDict.exit.thread

ZSTD_loadEntropy_intoDDict.exit.return_crit_edge: ; preds = %ZSTD_loadEntropy_intoDDict.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

ZSTD_loadEntropy_intoDDict.exit.thread:           ; preds = %ZSTD_loadEntropy_intoDDict.exit.ZSTD_loadEntropy_intoDDict.exit.thread_crit_edge, %if.end21.i, %if.then2.i.ZSTD_loadEntropy_intoDDict.exit.thread_crit_edge, %if.end10.ZSTD_loadEntropy_intoDDict.exit.thread_crit_edge
  br label %return

return:                                           ; preds = %ZSTD_loadEntropy_intoDDict.exit.thread, %ZSTD_loadEntropy_intoDDict.exit.return_crit_edge, %cleanup.cont.i.return_crit_edge, %if.then2.i.return_crit_edge, %if.else.return_crit_edge
  %retval.3 = phi i32 [ -64, %if.else.return_crit_edge ], [ 0, %ZSTD_loadEntropy_intoDDict.exit.thread ], [ %.34.i, %ZSTD_loadEntropy_intoDDict.exit.return_crit_edge ], [ -30, %cleanup.cont.i.return_crit_edge ], [ -30, %if.then2.i.return_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_freeDDict(ptr noundef %ddict) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ddict, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cMem1 = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 6
  %0 = ptrtoint ptr %cMem1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %cMem.sroa.0.0.copyload = load ptr, ptr %cMem1, align 4
  %cMem.sroa.6.0.cMem1.sroa_idx = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 6, i32 1
  %1 = ptrtoint ptr %cMem.sroa.6.0.cMem1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %cMem.sroa.6.0.copyload = load ptr, ptr %cMem.sroa.6.0.cMem1.sroa_idx, align 4
  %cMem.sroa.9.0.cMem1.sroa_idx = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %cMem.sroa.9.0.cMem1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %cMem.sroa.9.0.copyload = load ptr, ptr %cMem.sroa.9.0.cMem1.sroa_idx, align 4
  %3 = ptrtoint ptr %ddict to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ddict, align 4
  %5 = ptrtoint ptr %cMem.sroa.0.0.copyload to i32
  %.fca.0.insert = insertvalue [3 x i32] poison, i32 %5, 0
  %6 = ptrtoint ptr %cMem.sroa.6.0.copyload to i32
  %.fca.1.insert = insertvalue [3 x i32] %.fca.0.insert, i32 %6, 1
  %7 = ptrtoint ptr %cMem.sroa.9.0.copyload to i32
  %.fca.2.insert = insertvalue [3 x i32] %.fca.1.insert, i32 %7, 2
  tail call void @ZSTD_customFree(ptr noundef %4, [3 x i32] %.fca.2.insert) #6
  tail call void @ZSTD_customFree(ptr noundef nonnull %ddict, [3 x i32] %.fca.2.insert) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createDDict(ptr noundef %dict, i32 noundef %dictSize) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ZSTD_customMalloc(i32 noundef 27324, [3 x i32] zeroinitializer) #6
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.ZSTD_createDDict_advanced.exit_crit_edge, label %if.end6.i

entry.ZSTD_createDDict_advanced.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ZSTD_createDDict_advanced.exit

if.end6.i:                                        ; preds = %entry
  %cMem.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call.i, i32 0, i32 6
  %0 = ptrtoint ptr %cMem.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %cMem.i, align 4
  %customMem.sroa.4.0.cMem.sroa_idx.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call.i, i32 0, i32 6, i32 1
  %1 = ptrtoint ptr %customMem.sroa.4.0.cMem.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %customMem.sroa.4.0.cMem.sroa_idx.i, align 4
  %customMem.sroa.7.0.cMem.sroa_idx.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call.i, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %customMem.sroa.7.0.cMem.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %customMem.sroa.7.0.cMem.sroa_idx.i, align 4
  %tobool.not.i = icmp eq ptr %dict, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dictSize)
  %tobool2.not.i = icmp eq i32 %dictSize, 0
  %or.cond42.i = or i1 %tobool.not.i, %tobool2.not.i
  br i1 %or.cond42.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %call.i, align 4
  %dictContent.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %dictContent.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dict, ptr %dictContent.i, align 4
  %spec.select = select i1 %tobool.not.i, i32 0, i32 %dictSize
  br label %if.end10.i

if.else.i:                                        ; preds = %if.end6.i
  %5 = ptrtoint ptr %cMem.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack.i = load i32, ptr %cMem.i, align 4
  %6 = insertvalue [3 x i32] undef, i32 %.unpack.i, 0
  %7 = ptrtoint ptr %customMem.sroa.4.0.cMem.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack39.i = load i32, ptr %customMem.sroa.4.0.cMem.sroa_idx.i, align 4
  %8 = insertvalue [3 x i32] %6, i32 %.unpack39.i, 1
  %9 = insertvalue [3 x i32] %8, i32 0, 2
  %call.i2 = tail call ptr @ZSTD_customMalloc(i32 noundef %dictSize, [3 x i32] %9) #6
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i2, ptr %call.i, align 4
  %dictContent6.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %dictContent6.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i2, ptr %dictContent6.i, align 4
  %tobool7.not.i = icmp eq ptr %call.i2, null
  br i1 %tobool7.not.i, label %if.else.i.ZSTD_freeDDict.exit.i_crit_edge, label %cleanup.thread.i

if.else.i.ZSTD_freeDDict.exit.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ZSTD_freeDDict.exit.i

cleanup.thread.i:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = call ptr @memcpy(ptr %call.i2, ptr %dict, i32 %dictSize)
  br label %if.end10.i

if.end10.i:                                       ; preds = %cleanup.thread.i, %if.then.i
  %dictSize.addr.0.i = phi i32 [ %dictSize, %cleanup.thread.i ], [ %spec.select, %if.then.i ]
  %dictSize11.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %dictSize11.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %dictSize.addr.0.i, ptr %dictSize11.i, align 4
  %hufTable.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call.i, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %hufTable.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 201326604, ptr %hufTable.i, align 4
  %dictID.i.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %dictID.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %dictID.i.i, align 4
  %entropyPresent.i.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %entropyPresent.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %entropyPresent.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %dictSize.addr.0.i)
  %cmp1.i.i = icmp ult i32 %dictSize.addr.0.i, 8
  br i1 %cmp1.i.i, label %if.end10.i.ZSTD_createDDict_advanced.exit_crit_edge, label %if.end6.i.i

if.end10.i.ZSTD_createDDict_advanced.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ZSTD_createDDict_advanced.exit

if.end6.i.i:                                      ; preds = %if.end10.i
  %dictContent.i.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %dictContent.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dictContent.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 933507308, i32 %20)
  %cmp7.not.i.i = icmp eq i32 %20, 933507308
  br i1 %cmp7.not.i.i, label %cleanup.cont.i.i, label %if.end6.i.i.ZSTD_createDDict_advanced.exit_crit_edge

if.end6.i.i.ZSTD_createDDict_advanced.exit_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ZSTD_createDDict_advanced.exit

cleanup.cont.i.i:                                 ; preds = %if.end6.i.i
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %add.ptr.i.i, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  %24 = ptrtoint ptr %dictID.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %dictID.i.i, align 4
  %entropy.i.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call.i, i32 0, i32 3
  %call18.i.i = tail call i32 @ZSTD_loadDEntropy(ptr noundef %entropy.i.i, ptr noundef %18, i32 noundef %dictSize.addr.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call18.i.i)
  %cmp.i.i.i = icmp ult i32 %call18.i.i, -119
  br i1 %cmp.i.i.i, label %if.end21.i.i, label %cleanup.cont.i.i.ZSTD_freeDDict.exit.i_crit_edge

cleanup.cont.i.i.ZSTD_freeDDict.exit.i_crit_edge: ; preds = %cleanup.cont.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ZSTD_freeDDict.exit.i

if.end21.i.i:                                     ; preds = %cleanup.cont.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %entropyPresent.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %entropyPresent.i.i, align 4
  br label %ZSTD_createDDict_advanced.exit

ZSTD_freeDDict.exit.i:                            ; preds = %cleanup.cont.i.i.ZSTD_freeDDict.exit.i_crit_edge, %if.else.i.ZSTD_freeDDict.exit.i_crit_edge
  %26 = ptrtoint ptr %cMem.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %cMem.sroa.0.0.copyload.i.i = load ptr, ptr %cMem.i, align 4
  %27 = ptrtoint ptr %customMem.sroa.4.0.cMem.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %cMem.sroa.6.0.copyload.i.i = load ptr, ptr %customMem.sroa.4.0.cMem.sroa_idx.i, align 4
  %28 = ptrtoint ptr %customMem.sroa.7.0.cMem.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %cMem.sroa.9.0.copyload.i.i = load ptr, ptr %customMem.sroa.7.0.cMem.sroa_idx.i, align 4
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  %31 = ptrtoint ptr %cMem.sroa.0.0.copyload.i.i to i32
  %.fca.0.insert.i.i = insertvalue [3 x i32] poison, i32 %31, 0
  %32 = ptrtoint ptr %cMem.sroa.6.0.copyload.i.i to i32
  %.fca.1.insert.i.i = insertvalue [3 x i32] %.fca.0.insert.i.i, i32 %32, 1
  %33 = ptrtoint ptr %cMem.sroa.9.0.copyload.i.i to i32
  %.fca.2.insert.i.i = insertvalue [3 x i32] %.fca.1.insert.i.i, i32 %33, 2
  tail call void @ZSTD_customFree(ptr noundef %30, [3 x i32] %.fca.2.insert.i.i) #6
  tail call void @ZSTD_customFree(ptr noundef nonnull %call.i, [3 x i32] %.fca.2.insert.i.i) #6
  br label %ZSTD_createDDict_advanced.exit

ZSTD_createDDict_advanced.exit:                   ; preds = %ZSTD_freeDDict.exit.i, %if.end21.i.i, %if.end6.i.i.ZSTD_createDDict_advanced.exit_crit_edge, %if.end10.i.ZSTD_createDDict_advanced.exit_crit_edge, %entry.ZSTD_createDDict_advanced.exit_crit_edge
  %retval.2.i = phi ptr [ null, %entry.ZSTD_createDDict_advanced.exit_crit_edge ], [ null, %ZSTD_freeDDict.exit.i ], [ %call.i, %if.end6.i.i.ZSTD_createDDict_advanced.exit_crit_edge ], [ %call.i, %if.end10.i.ZSTD_createDDict_advanced.exit_crit_edge ], [ %call.i, %if.end21.i.i ]
  ret ptr %retval.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createDDict_byReference(ptr noundef %dictBuffer, i32 noundef %dictSize) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ZSTD_customMalloc(i32 noundef 27324, [3 x i32] zeroinitializer) #6
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.ZSTD_createDDict_advanced.exit_crit_edge, label %if.end6.i

entry.ZSTD_createDDict_advanced.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ZSTD_createDDict_advanced.exit

if.end6.i:                                        ; preds = %entry
  %cMem.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call.i, i32 0, i32 6
  %0 = ptrtoint ptr %cMem.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %cMem.i, align 4
  %customMem.sroa.4.0.cMem.sroa_idx.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call.i, i32 0, i32 6, i32 1
  %1 = ptrtoint ptr %customMem.sroa.4.0.cMem.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %customMem.sroa.4.0.cMem.sroa_idx.i, align 4
  %customMem.sroa.7.0.cMem.sroa_idx.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call.i, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %customMem.sroa.7.0.cMem.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %customMem.sroa.7.0.cMem.sroa_idx.i, align 4
  %tobool.not.i = icmp eq ptr %dictBuffer, null
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %call.i, align 4
  %dictContent.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %dictContent.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dictBuffer, ptr %dictContent.i, align 4
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %dictSize
  %dictSize11.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %dictSize11.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select.i, ptr %dictSize11.i, align 4
  %hufTable.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call.i, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %hufTable.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 201326604, ptr %hufTable.i, align 4
  %dictID.i.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %dictID.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %dictID.i.i, align 4
  %entropyPresent.i.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %entropyPresent.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %entropyPresent.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %spec.select.i)
  %cmp1.i.i = icmp ult i32 %spec.select.i, 8
  br i1 %cmp1.i.i, label %if.end6.i.ZSTD_createDDict_advanced.exit_crit_edge, label %if.end6.i.i

if.end6.i.ZSTD_createDDict_advanced.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ZSTD_createDDict_advanced.exit

if.end6.i.i:                                      ; preds = %if.end6.i
  %9 = ptrtoint ptr %dictBuffer to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %dictBuffer, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 933507308, i32 %10)
  %cmp7.not.i.i = icmp eq i32 %10, 933507308
  br i1 %cmp7.not.i.i, label %cleanup.cont.i.i, label %if.end6.i.i.ZSTD_createDDict_advanced.exit_crit_edge

if.end6.i.i.ZSTD_createDDict_advanced.exit_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ZSTD_createDDict_advanced.exit

cleanup.cont.i.i:                                 ; preds = %if.end6.i.i
  %add.ptr.i.i = getelementptr i8, ptr %dictBuffer, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %add.ptr.i.i, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  %14 = ptrtoint ptr %dictID.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %dictID.i.i, align 4
  %entropy.i.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %call.i, i32 0, i32 3
  %call18.i.i = tail call i32 @ZSTD_loadDEntropy(ptr noundef %entropy.i.i, ptr noundef %dictBuffer, i32 noundef %spec.select.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call18.i.i)
  %cmp.i.i.i = icmp ult i32 %call18.i.i, -119
  br i1 %cmp.i.i.i, label %if.end21.i.i, label %ZSTD_freeDDict.exit.i

if.end21.i.i:                                     ; preds = %cleanup.cont.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %entropyPresent.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %entropyPresent.i.i, align 4
  br label %ZSTD_createDDict_advanced.exit

ZSTD_freeDDict.exit.i:                            ; preds = %cleanup.cont.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %cMem.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %cMem.sroa.0.0.copyload.i.i = load ptr, ptr %cMem.i, align 4
  %17 = ptrtoint ptr %customMem.sroa.4.0.cMem.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %cMem.sroa.6.0.copyload.i.i = load ptr, ptr %customMem.sroa.4.0.cMem.sroa_idx.i, align 4
  %18 = ptrtoint ptr %customMem.sroa.7.0.cMem.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %cMem.sroa.9.0.copyload.i.i = load ptr, ptr %customMem.sroa.7.0.cMem.sroa_idx.i, align 4
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %21 = ptrtoint ptr %cMem.sroa.0.0.copyload.i.i to i32
  %.fca.0.insert.i.i = insertvalue [3 x i32] poison, i32 %21, 0
  %22 = ptrtoint ptr %cMem.sroa.6.0.copyload.i.i to i32
  %.fca.1.insert.i.i = insertvalue [3 x i32] %.fca.0.insert.i.i, i32 %22, 1
  %23 = ptrtoint ptr %cMem.sroa.9.0.copyload.i.i to i32
  %.fca.2.insert.i.i = insertvalue [3 x i32] %.fca.1.insert.i.i, i32 %23, 2
  tail call void @ZSTD_customFree(ptr noundef %20, [3 x i32] %.fca.2.insert.i.i) #6
  tail call void @ZSTD_customFree(ptr noundef nonnull %call.i, [3 x i32] %.fca.2.insert.i.i) #6
  br label %ZSTD_createDDict_advanced.exit

ZSTD_createDDict_advanced.exit:                   ; preds = %ZSTD_freeDDict.exit.i, %if.end21.i.i, %if.end6.i.i.ZSTD_createDDict_advanced.exit_crit_edge, %if.end6.i.ZSTD_createDDict_advanced.exit_crit_edge, %entry.ZSTD_createDDict_advanced.exit_crit_edge
  %retval.2.i = phi ptr [ null, %entry.ZSTD_createDDict_advanced.exit_crit_edge ], [ null, %ZSTD_freeDDict.exit.i ], [ %call.i, %if.end6.i.i.ZSTD_createDDict_advanced.exit_crit_edge ], [ %call.i, %if.end6.i.ZSTD_createDDict_advanced.exit_crit_edge ], [ %call.i, %if.end21.i.i ]
  ret ptr %retval.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ZSTD_initStaticDDict(ptr noundef %sBuffer, i32 noundef %sBufferSize, ptr noundef %dict, i32 noundef %dictSize, i32 noundef %dictLoadMethod, i32 noundef %dictContentType) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dictLoadMethod)
  %cmp = icmp eq i32 %dictLoadMethod, 1
  %phi.bo = add i32 %dictSize, 27324
  %spec.select = select i1 %cmp, i32 27324, i32 %phi.bo
  %0 = ptrtoint ptr %sBuffer to i32
  %and = and i32 %0, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %sBufferSize)
  %cmp1 = icmp ugt i32 %spec.select, %sBufferSize
  %or.cond = or i1 %tobool.not, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dictLoadMethod)
  %cmp4 = icmp eq i32 %dictLoadMethod, 0
  br i1 %cmp4, label %if.then5, label %if.end3.if.end7_crit_edge

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr %struct.ZSTD_DDict_s, ptr %sBuffer, i32 1
  %1 = call ptr @memcpy(ptr %add.ptr, ptr %dict, i32 %dictSize)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  %dict.addr.0 = phi ptr [ %add.ptr, %if.then5 ], [ %dict, %if.end3.if.end7_crit_edge ]
  %tobool.not.i = icmp eq ptr %dict.addr.0, null
  %2 = ptrtoint ptr %sBuffer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sBuffer, align 4
  %dictContent.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %sBuffer, i32 0, i32 1
  %3 = ptrtoint ptr %dictContent.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dict.addr.0, ptr %dictContent.i, align 4
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %dictSize
  %dictSize11.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %sBuffer, i32 0, i32 2
  %4 = ptrtoint ptr %dictSize11.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select.i, ptr %dictSize11.i, align 4
  %hufTable.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %sBuffer, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %hufTable.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 201326604, ptr %hufTable.i, align 4
  %dictID.i.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %sBuffer, i32 0, i32 4
  %6 = ptrtoint ptr %dictID.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dictID.i.i, align 4
  %entropyPresent.i.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %sBuffer, i32 0, i32 5
  %7 = ptrtoint ptr %entropyPresent.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %entropyPresent.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dictContentType)
  %cmp.i.i = icmp eq i32 %dictContentType, 1
  br i1 %cmp.i.i, label %if.end7.ZSTD_loadEntropy_intoDDict.exit.thread.i_crit_edge, label %if.end.i.i

if.end7.ZSTD_loadEntropy_intoDDict.exit.thread.i_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %ZSTD_loadEntropy_intoDDict.exit.thread.i

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %spec.select.i)
  %cmp1.i.i = icmp ult i32 %spec.select.i, 8
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.end6.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dictContentType)
  %cmp3.i.i = icmp eq i32 %dictContentType, 2
  br i1 %cmp3.i.i, label %if.then2.i.i.cleanup_crit_edge, label %if.then2.i.i.ZSTD_loadEntropy_intoDDict.exit.thread.i_crit_edge

if.then2.i.i.ZSTD_loadEntropy_intoDDict.exit.thread.i_crit_edge: ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ZSTD_loadEntropy_intoDDict.exit.thread.i

if.then2.i.i.cleanup_crit_edge:                   ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  %8 = ptrtoint ptr %dict.addr.0 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %dict.addr.0, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 933507308, i32 %9)
  %cmp7.not.i.i = icmp eq i32 %9, 933507308
  br i1 %cmp7.not.i.i, label %cleanup.cont.i.i, label %ZSTD_loadEntropy_intoDDict.exit.i

cleanup.cont.i.i:                                 ; preds = %if.end6.i.i
  %add.ptr.i.i = getelementptr i8, ptr %dict.addr.0, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %add.ptr.i.i, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  %13 = ptrtoint ptr %dictID.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dictID.i.i, align 4
  %entropy.i.i = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %sBuffer, i32 0, i32 3
  %call18.i.i = tail call i32 @ZSTD_loadDEntropy(ptr noundef %entropy.i.i, ptr noundef %dict.addr.0, i32 noundef %spec.select.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call18.i.i)
  %cmp.i.i.i = icmp ult i32 %call18.i.i, -119
  br i1 %cmp.i.i.i, label %if.end21.i.i, label %cleanup.cont.i.i.cleanup_crit_edge

cleanup.cont.i.i.cleanup_crit_edge:               ; preds = %cleanup.cont.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21.i.i:                                     ; preds = %cleanup.cont.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %entropyPresent.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %entropyPresent.i.i, align 4
  br label %ZSTD_loadEntropy_intoDDict.exit.thread.i

ZSTD_loadEntropy_intoDDict.exit.i:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dictContentType)
  %cmp9.i.i = icmp eq i32 %dictContentType, 2
  br i1 %cmp9.i.i, label %ZSTD_loadEntropy_intoDDict.exit.i.cleanup_crit_edge, label %ZSTD_loadEntropy_intoDDict.exit.i.ZSTD_loadEntropy_intoDDict.exit.thread.i_crit_edge

ZSTD_loadEntropy_intoDDict.exit.i.ZSTD_loadEntropy_intoDDict.exit.thread.i_crit_edge: ; preds = %ZSTD_loadEntropy_intoDDict.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ZSTD_loadEntropy_intoDDict.exit.thread.i

ZSTD_loadEntropy_intoDDict.exit.i.cleanup_crit_edge: ; preds = %ZSTD_loadEntropy_intoDDict.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ZSTD_loadEntropy_intoDDict.exit.thread.i:         ; preds = %ZSTD_loadEntropy_intoDDict.exit.i.ZSTD_loadEntropy_intoDDict.exit.thread.i_crit_edge, %if.end21.i.i, %if.then2.i.i.ZSTD_loadEntropy_intoDDict.exit.thread.i_crit_edge, %if.end7.ZSTD_loadEntropy_intoDDict.exit.thread.i_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %ZSTD_loadEntropy_intoDDict.exit.thread.i, %ZSTD_loadEntropy_intoDDict.exit.i.cleanup_crit_edge, %cleanup.cont.i.i.cleanup_crit_edge, %if.then2.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.then2.i.i.cleanup_crit_edge ], [ null, %cleanup.cont.i.i.cleanup_crit_edge ], [ null, %ZSTD_loadEntropy_intoDDict.exit.i.cleanup_crit_edge ], [ %sBuffer, %ZSTD_loadEntropy_intoDDict.exit.thread.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_customFree(ptr noundef, [3 x i32]) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_estimateDDictSize(i32 noundef %dictSize, i32 noundef %dictLoadMethod) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dictLoadMethod)
  %cmp = icmp eq i32 %dictLoadMethod, 1
  %phi.bo = add i32 %dictSize, 27324
  %spec.select = select i1 %cmp, i32 27324, i32 %phi.bo
  ret i32 %spec.select
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_sizeof_DDict(ptr noundef readonly %ddict) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ddict, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ddict to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddict, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %cond.true

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dictSize = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 2
  %2 = ptrtoint ptr %dictSize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dictSize, align 4
  %phi.bo = add i32 %3, 27324
  br label %return

return:                                           ; preds = %cond.true, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %phi.bo, %cond.true ], [ 27324, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_getDictID_fromDDict(ptr noundef readonly %ddict) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ddict, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dictContent = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 1
  %0 = ptrtoint ptr %dictContent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dictContent, align 4
  %dictSize = getelementptr inbounds %struct.ZSTD_DDict_s, ptr %ddict, i32 0, i32 2
  %2 = ptrtoint ptr %dictSize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dictSize, align 4
  %call = tail call i32 @ZSTD_getDictID_fromDict(ptr noundef %1, i32 noundef %3) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_getDictID_fromDict(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_loadDEntropy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
