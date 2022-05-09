; ModuleID = '/llk/IR_all_yes/lib/zstd/compress/zstd_compress_superblock.c_pt.bc'
source_filename = "../lib/zstd/compress/zstd_compress_superblock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.repcodes_s = type { [3 x i32] }
%struct.ZSTD_entropyCTablesMetadata_t = type { %struct.ZSTD_hufCTablesMetadata_t, %struct.ZSTD_fseCTablesMetadata_t }
%struct.ZSTD_hufCTablesMetadata_t = type { i32, [128 x i8], i32 }
%struct.ZSTD_fseCTablesMetadata_t = type { i32, i32, i32, [133 x i8], i32, i32 }
%struct.ZSTD_CCtx_s = type { i32, i32, i32, %struct.ZSTD_CCtx_params_s, %struct.ZSTD_CCtx_params_s, i32, i32, %struct.ZSTD_cwksp, i32, i64, i64, i64, %struct.xxh64_state, %struct.ZSTD_customMem, ptr, i32, %struct.SeqCollector, i32, i32, %struct.seqStore_t, %struct.ldmState_t, ptr, i32, %struct.rawSeqStore_t, %struct.ZSTD_blockState_t, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.ZSTD_inBuffer_s, i32, %struct.ZSTD_localDict, ptr, %struct.ZSTD_prefixDict_s }
%struct.ZSTD_CCtx_params_s = type { i32, %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ldmParams_t, i32, i32, i32, i32, i32, %struct.ZSTD_customMem }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_frameParameters = type { i32, i32, i32 }
%struct.ldmParams_t = type { i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_cwksp = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32 }
%struct.xxh64_state = type { i64, i64, i64, i64, i64, [4 x i64], i32 }
%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.SeqCollector = type { i32, ptr, i32, i32 }
%struct.seqStore_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.ldmState_t = type { %struct.ZSTD_window_t, ptr, i32, ptr, [64 x i32], [64 x %struct.ldmMatchCandidate_t] }
%struct.ZSTD_window_t = type { ptr, ptr, ptr, i32, i32 }
%struct.ldmMatchCandidate_t = type { ptr, i32, i32, ptr }
%struct.rawSeqStore_t = type { ptr, i32, i32, i32, i32 }
%struct.ZSTD_blockState_t = type { ptr, ptr, %struct.ZSTD_matchState_t }
%struct.ZSTD_matchState_t = type { %struct.ZSTD_window_t, i32, i32, i32, ptr, ptr, ptr, i32, %struct.optState_t, ptr, %struct.ZSTD_compressionParameters, ptr }
%struct.optState_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ZSTD_inBuffer_s = type { ptr, i32, i32 }
%struct.ZSTD_localDict = type { ptr, ptr, i32, i32, ptr }
%struct.ZSTD_prefixDict_s = type { ptr, i32, i32 }
%struct.ZSTD_hufCTables_t = type { [256 x %struct.HUF_CElt_s], i32 }
%struct.HUF_CElt_s = type { i16, i8 }
%struct.ZSTD_entropyCTables_t = type { %struct.ZSTD_hufCTables_t, %struct.ZSTD_fseCTables_t }
%struct.ZSTD_fseCTables_t = type { [193 x i32], [363 x i32], [329 x i32], i32, i32, i32 }
%struct.seqDef_s = type { i32, i16, i16 }
%struct.ZSTD_compressedBlockState_t = type { %struct.ZSTD_entropyCTables_t, [3 x i32] }

@LL_defaultNorm = internal constant { [36 x i16], [56 x i8] } { [36 x i16] [i16 4, i16 3, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 3, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 -1, i16 -1, i16 -1], [56 x i8] zeroinitializer }, align 32
@OF_defaultNorm = internal constant { [29 x i16], [38 x i8] } { [29 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [38 x i8] zeroinitializer }, align 32
@ML_defaultNorm = internal constant { [53 x i16], [54 x i8] } { [53 x i16] [i16 1, i16 4, i16 3, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [54 x i8] zeroinitializer }, align 32
@LL_bits = internal constant { [36 x i32], [48 x i8] } { [36 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], [48 x i8] zeroinitializer }, align 32
@ML_bits = internal constant { [53 x i32], [44 x i8] } { [53 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_ = private constant [48 x i8] c"../lib/zstd/compress/zstd_compress_superblock.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"LL_defaultNorm\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 192, i32 30 }
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"OF_defaultNorm\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 223, i32 30 }
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"ML_defaultNorm\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 211, i32 30 }
@___asan_gen_.17 = private unnamed_addr constant [8 x i8] c"LL_bits\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 185, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant [8 x i8] c"ML_bits\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [47 x i8] c"../lib/zstd/compress/../common/zstd_internal.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 202, i32 30 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @LL_defaultNorm, ptr @OF_defaultNorm, ptr @ML_defaultNorm, ptr @LL_bits, ptr @ML_bits], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LL_defaultNorm to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @OF_defaultNorm to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ML_defaultNorm to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LL_bits to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ML_bits to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressSuperBlock(ptr noundef %zc, ptr noundef %dst, i32 noundef %dstCapacity, ptr noundef %src, i32 noundef %srcSize, i32 noundef %lastBlock) local_unnamed_addr #0 align 64 {
entry:
  %max.i31.i.i.i = alloca i32, align 4
  %max.i1.i.i.i = alloca i32, align 4
  %max.i.i.i.i = alloca i32, align 4
  %maxSymbolValue.i.i.i = alloca i32, align 4
  %rep.i = alloca %struct.repcodes_s, align 4
  %max.i.i = alloca i32, align 4
  %max34.i.i = alloca i32, align 4
  %max75.i.i = alloca i32, align 4
  %maxSymbolValue.i.i = alloca i32, align 4
  %entropyMetadata = alloca %struct.ZSTD_entropyCTablesMetadata_t, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 292, ptr nonnull %entropyMetadata) #4
  %0 = call ptr @memset(ptr %entropyMetadata, i32 255, i32 292)
  %seqStore = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %zc, i32 0, i32 19
  %blockState = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %zc, i32 0, i32 24
  %1 = ptrtoint ptr %blockState to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %blockState, align 4
  %nextCBlock = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %zc, i32 0, i32 24, i32 1
  %3 = ptrtoint ptr %nextCBlock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nextCBlock, align 4
  %entropyWorkspace = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %zc, i32 0, i32 25
  %5 = ptrtoint ptr %entropyWorkspace to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entropyWorkspace, align 4
  %lit.i = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %zc, i32 0, i32 19, i32 3
  %7 = ptrtoint ptr %lit.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lit.i, align 4
  %litStart.i = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %zc, i32 0, i32 19, i32 2
  %9 = ptrtoint ptr %litStart.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %litStart.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %literalCompressionMode.i.i = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %zc, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %literalCompressionMode.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %literalCompressionMode.i.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %sw.bb2.i.i [
    i32 1, label %entry.ZSTD_disableLiteralsCompression.exit.thread.i_crit_edge
    i32 2, label %ZSTD_disableLiteralsCompression.exit.thread19.i
  ]

entry.ZSTD_disableLiteralsCompression.exit.thread.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %ZSTD_disableLiteralsCompression.exit.thread.i

ZSTD_disableLiteralsCompression.exit.thread19.i:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maxSymbolValue.i.i) #4
  %14 = call ptr @memcpy(ptr %4, ptr %2, i32 1028)
  br label %ZSTD_buildSuperBlockEntropy_literal.exit.thread.i

sw.bb2.i.i:                                       ; preds = %entry
  %strategy.i.i = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %zc, i32 0, i32 4, i32 1, i32 6
  %15 = ptrtoint ptr %strategy.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %strategy.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 1
  br i1 %cmp.i.i, label %ZSTD_disableLiteralsCompression.exit.i, label %sw.bb2.i.i.ZSTD_disableLiteralsCompression.exit.thread.i_crit_edge

sw.bb2.i.i.ZSTD_disableLiteralsCompression.exit.thread.i_crit_edge: ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ZSTD_disableLiteralsCompression.exit.thread.i

ZSTD_disableLiteralsCompression.exit.thread.i:    ; preds = %sw.bb2.i.i.ZSTD_disableLiteralsCompression.exit.thread.i_crit_edge, %entry.ZSTD_disableLiteralsCompression.exit.thread.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maxSymbolValue.i.i) #4
  %17 = ptrtoint ptr %maxSymbolValue.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 255, ptr %maxSymbolValue.i.i, align 4
  %repeatMode.i15.i = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %2, i32 0, i32 1
  %18 = ptrtoint ptr %repeatMode.i15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %repeatMode.i15.i, align 4
  %20 = call ptr @memcpy(ptr %4, ptr %2, i32 1028)
  br label %if.end.i.i

ZSTD_disableLiteralsCompression.exit.i:           ; preds = %sw.bb2.i.i
  %targetLength.i.i = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %zc, i32 0, i32 4, i32 1, i32 5
  %21 = ptrtoint ptr %targetLength.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %targetLength.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp4.i.not.i = icmp eq i32 %22, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maxSymbolValue.i.i) #4
  %23 = ptrtoint ptr %maxSymbolValue.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 255, ptr %maxSymbolValue.i.i, align 4
  %repeatMode.i.i = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %2, i32 0, i32 1
  %24 = ptrtoint ptr %repeatMode.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %repeatMode.i.i, align 4
  %26 = call ptr @memcpy(ptr %4, ptr %2, i32 1028)
  br i1 %cmp4.i.not.i, label %ZSTD_disableLiteralsCompression.exit.i.if.end.i.i_crit_edge, label %ZSTD_disableLiteralsCompression.exit.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread.i_crit_edge

ZSTD_disableLiteralsCompression.exit.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread.i_crit_edge: ; preds = %ZSTD_disableLiteralsCompression.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ZSTD_buildSuperBlockEntropy_literal.exit.thread.i

ZSTD_disableLiteralsCompression.exit.i.if.end.i.i_crit_edge: ; preds = %ZSTD_disableLiteralsCompression.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %ZSTD_disableLiteralsCompression.exit.i.if.end.i.i_crit_edge, %ZSTD_disableLiteralsCompression.exit.thread.i
  %27 = phi i32 [ %19, %ZSTD_disableLiteralsCompression.exit.thread.i ], [ %25, %ZSTD_disableLiteralsCompression.exit.i.if.end.i.i_crit_edge ]
  %repeatMode.i18.i = phi ptr [ %repeatMode.i15.i, %ZSTD_disableLiteralsCompression.exit.thread.i ], [ %repeatMode.i.i, %ZSTD_disableLiteralsCompression.exit.i.if.end.i.i_crit_edge ]
  %add.ptr1.i17.i = getelementptr i8, ptr %6, i32 1024
  %28 = ptrtoint ptr %repeatMode.i18.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %repeatMode.i18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp.i1.i = icmp eq i32 %29, 2
  %cond.i.i = select i1 %cmp.i1.i, i32 6, i32 63
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %sub.ptr.sub.i)
  %cmp3.not.i.i = icmp ult i32 %cond.i.i, %sub.ptr.sub.i
  br i1 %cmp3.not.i.i, label %cleanup.cont.critedge.i.i, label %if.end.i.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread.i_crit_edge

if.end.i.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ZSTD_buildSuperBlockEntropy_literal.exit.thread.i

cleanup.cont.critedge.i.i:                        ; preds = %if.end.i.i
  %call.i.i = call i32 @HIST_count_wksp(ptr noundef %6, ptr noundef nonnull %maxSymbolValue.i.i, ptr noundef %10, i32 noundef %sub.ptr.sub.i, ptr noundef %6, i32 noundef 6616) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call.i.i)
  %cmp.i.i.i = icmp ult i32 %call.i.i, -119
  br i1 %cmp.i.i.i, label %do.end.i.i, label %cleanup.cont.critedge.i.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread31.i_crit_edge

cleanup.cont.critedge.i.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread31.i_crit_edge: ; preds = %cleanup.cont.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ZSTD_buildSuperBlockEntropy_literal.exit.thread31.i

do.end.i.i:                                       ; preds = %cleanup.cont.critedge.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %sub.ptr.sub.i)
  %cmp14.i.i = icmp eq i32 %call.i.i, %sub.ptr.sub.i
  br i1 %cmp14.i.i, label %do.end.i.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread.i_crit_edge, label %if.end17.i.i

do.end.i.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ZSTD_buildSuperBlockEntropy_literal.exit.thread.i

if.end17.i.i:                                     ; preds = %do.end.i.i
  %shr.i.i = lshr i32 %sub.ptr.sub.i, 7
  %add.i.i = add nuw nsw i32 %shr.i.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add.i.i)
  %cmp18.not.i.i = icmp ugt i32 %call.i.i, %add.i.i
  br i1 %cmp18.not.i.i, label %cleanup.cont24.i.i, label %if.end17.i.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread.i_crit_edge

if.end17.i.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ZSTD_buildSuperBlockEntropy_literal.exit.thread.i

cleanup.cont24.i.i:                               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp25.i.i = icmp eq i32 %27, 1
  br i1 %cmp25.i.i, label %land.lhs.true.i.i, label %cleanup.cont24.i.i.if.end29.i.i_crit_edge

cleanup.cont24.i.i.if.end29.i.i_crit_edge:        ; preds = %cleanup.cont24.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.i.i

land.lhs.true.i.i:                                ; preds = %cleanup.cont24.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %maxSymbolValue.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %maxSymbolValue.i.i, align 4
  %call26.i.i = call i32 @HUF_validateCTable(ptr noundef %2, ptr noundef %6, i32 noundef %31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp ne i32 %call26.i.i, 0
  %spec.select.i.i = zext i1 %tobool27.not.i.i to i32
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %land.lhs.true.i.i, %cleanup.cont24.i.i.if.end29.i.i_crit_edge
  %repeat.0.i.i = phi i32 [ %27, %cleanup.cont24.i.i.if.end29.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %32 = call ptr @memset(ptr %4, i32 0, i32 1024)
  %33 = ptrtoint ptr %maxSymbolValue.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %maxSymbolValue.i.i, align 4
  %call32.i.i = call i32 @HUF_optimalTableLog(i32 noundef 11, i32 noundef %sub.ptr.sub.i, i32 noundef %34) #4
  %35 = ptrtoint ptr %maxSymbolValue.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %maxSymbolValue.i.i, align 4
  %call35.i.i = call i32 @HUF_buildCTable_wksp(ptr noundef %4, ptr noundef %6, i32 noundef %36, i32 noundef %call32.i.i, ptr noundef %add.ptr1.i17.i, i32 noundef 5592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call35.i.i)
  %cmp.i1.i.i = icmp ult i32 %call35.i.i, -119
  br i1 %cmp.i1.i.i, label %do.end46.i.i, label %if.end29.i.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread31.i_crit_edge

if.end29.i.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread31.i_crit_edge: ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ZSTD_buildSuperBlockEntropy_literal.exit.thread31.i

do.end46.i.i:                                     ; preds = %if.end29.i.i
  %37 = ptrtoint ptr %maxSymbolValue.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %maxSymbolValue.i.i, align 4
  %call49.i.i = call i32 @HUF_estimateCompressedSize(ptr noundef %4, ptr noundef %6, i32 noundef %38) #4
  %hufDesBuffer.i.i = getelementptr inbounds %struct.ZSTD_hufCTablesMetadata_t, ptr %entropyMetadata, i32 0, i32 1
  %39 = ptrtoint ptr %maxSymbolValue.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %maxSymbolValue.i.i, align 4
  %call53.i.i = call i32 @HUF_writeCTable_wksp(ptr noundef %hufDesBuffer.i.i, i32 noundef 128, ptr noundef %4, i32 noundef %40, i32 noundef %call35.i.i, ptr noundef %add.ptr1.i17.i, i32 noundef 5592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %repeat.0.i.i)
  %cmp54.not.i.i = icmp eq i32 %repeat.0.i.i, 0
  br i1 %cmp54.not.i.i, label %do.end46.i.i.if.end71.i.i_crit_edge, label %if.then55.i.i

do.end46.i.i.if.end71.i.i_crit_edge:              ; preds = %do.end46.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71.i.i

if.then55.i.i:                                    ; preds = %do.end46.i.i
  %41 = ptrtoint ptr %maxSymbolValue.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %maxSymbolValue.i.i, align 4
  %call58.i.i = call i32 @HUF_estimateCompressedSize(ptr noundef %2, ptr noundef %6, i32 noundef %42) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call58.i.i, i32 %sub.ptr.sub.i)
  %cmp59.i.i = icmp ult i32 %call58.i.i, %sub.ptr.sub.i
  br i1 %cmp59.i.i, label %land.lhs.true60.i.i, label %if.then55.i.i.if.end71.i.i_crit_edge

if.then55.i.i.if.end71.i.i_crit_edge:             ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71.i.i

land.lhs.true60.i.i:                              ; preds = %if.then55.i.i
  %add61.i.i = add i32 %call53.i.i, %call49.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call58.i.i, i32 %add61.i.i)
  %cmp62.not.i.i = icmp ugt i32 %call58.i.i, %add61.i.i
  %add63.i.i = add i32 %call53.i.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add63.i.i, i32 %sub.ptr.sub.i)
  %cmp64.not.i.i = icmp ult i32 %add63.i.i, %sub.ptr.sub.i
  %or.cond.i.i = and i1 %cmp64.not.i.i, %cmp62.not.i.i
  br i1 %or.cond.i.i, label %land.lhs.true60.i.i.if.end71.i.i_crit_edge, label %cleanup68.i.i

land.lhs.true60.i.i.if.end71.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71.i.i

cleanup68.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %43 = call ptr @memcpy(ptr %4, ptr %2, i32 1028)
  br label %ZSTD_buildSuperBlockEntropy_literal.exit.thread.i

if.end71.i.i:                                     ; preds = %land.lhs.true60.i.i.if.end71.i.i_crit_edge, %if.then55.i.i.if.end71.i.i_crit_edge, %do.end46.i.i.if.end71.i.i_crit_edge
  %add72.i.i = add i32 %call53.i.i, %call49.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add72.i.i, i32 %sub.ptr.sub.i)
  %cmp73.not.i.i = icmp ult i32 %add72.i.i, %sub.ptr.sub.i
  br i1 %cmp73.not.i.i, label %ZSTD_buildSuperBlockEntropy_literal.exit.i, label %if.then74.i.i

if.then74.i.i:                                    ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %44 = call ptr @memcpy(ptr %4, ptr %2, i32 1028)
  br label %ZSTD_buildSuperBlockEntropy_literal.exit.thread.i

ZSTD_buildSuperBlockEntropy_literal.exit.thread.i: ; preds = %if.then74.i.i, %cleanup68.i.i, %if.end17.i.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread.i_crit_edge, %do.end.i.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread.i_crit_edge, %if.end.i.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread.i_crit_edge, %ZSTD_disableLiteralsCompression.exit.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread.i_crit_edge, %ZSTD_disableLiteralsCompression.exit.thread19.i
  %.sink.i = phi i32 [ 0, %if.then74.i.i ], [ 3, %cleanup68.i.i ], [ 0, %ZSTD_disableLiteralsCompression.exit.thread19.i ], [ 0, %ZSTD_disableLiteralsCompression.exit.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread.i_crit_edge ], [ 0, %if.end.i.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread.i_crit_edge ], [ 1, %do.end.i.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread.i_crit_edge ], [ 0, %if.end17.i.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread.i_crit_edge ]
  %45 = ptrtoint ptr %entropyMetadata to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.sink.i, ptr %entropyMetadata, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maxSymbolValue.i.i) #4
  %hufDesSize25.i = getelementptr inbounds %struct.ZSTD_hufCTablesMetadata_t, ptr %entropyMetadata, i32 0, i32 2
  %46 = ptrtoint ptr %hufDesSize25.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %hufDesSize25.i, align 4
  br label %do.end.i

ZSTD_buildSuperBlockEntropy_literal.exit.thread31.i: ; preds = %if.end29.i.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread31.i_crit_edge, %cleanup.cont.critedge.i.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread31.i_crit_edge
  %retval.7.i.ph.i = phi i32 [ %call.i.i, %cleanup.cont.critedge.i.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread31.i_crit_edge ], [ %call35.i.i, %if.end29.i.i.ZSTD_buildSuperBlockEntropy_literal.exit.thread31.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maxSymbolValue.i.i) #4
  br label %cleanup12

ZSTD_buildSuperBlockEntropy_literal.exit.i:       ; preds = %if.end71.i.i
  %47 = ptrtoint ptr %entropyMetadata to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %entropyMetadata, align 4
  %repeatMode78.i.i = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %4, i32 0, i32 1
  %48 = ptrtoint ptr %repeatMode78.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %repeatMode78.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maxSymbolValue.i.i) #4
  %hufDesSize.i = getelementptr inbounds %struct.ZSTD_hufCTablesMetadata_t, ptr %entropyMetadata, i32 0, i32 2
  %49 = ptrtoint ptr %hufDesSize.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call53.i.i, ptr %hufDesSize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call53.i.i)
  %cmp.i2.i = icmp ult i32 %call53.i.i, -119
  br i1 %cmp.i2.i, label %ZSTD_buildSuperBlockEntropy_literal.exit.i.do.end.i_crit_edge, label %ZSTD_buildSuperBlockEntropy_literal.exit.i.cleanup12_crit_edge

ZSTD_buildSuperBlockEntropy_literal.exit.i.cleanup12_crit_edge: ; preds = %ZSTD_buildSuperBlockEntropy_literal.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup12

ZSTD_buildSuperBlockEntropy_literal.exit.i.do.end.i_crit_edge: ; preds = %ZSTD_buildSuperBlockEntropy_literal.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.end.i:                                         ; preds = %ZSTD_buildSuperBlockEntropy_literal.exit.i.do.end.i_crit_edge, %ZSTD_buildSuperBlockEntropy_literal.exit.thread.i
  %fse.i = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %2, i32 0, i32 1
  %fse8.i = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %4, i32 0, i32 1
  %fseMetadata.i = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %entropyMetadata, i32 0, i32 1
  %add.ptr1.i3.i = getelementptr i8, ptr %6, i32 212
  %strategy2.i.i = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %zc, i32 0, i32 4, i32 1, i32 6
  %50 = ptrtoint ptr %strategy2.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %strategy2.i.i, align 4
  %litlengthCTable.i.i = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %4, i32 0, i32 1, i32 2
  %matchlengthCTable.i.i = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %4, i32 0, i32 1, i32 1
  %ofCode.i.i = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %zc, i32 0, i32 19, i32 6
  %52 = ptrtoint ptr %ofCode.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ofCode.i.i, align 4
  %llCode.i.i = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %zc, i32 0, i32 19, i32 4
  %54 = ptrtoint ptr %llCode.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %llCode.i.i, align 4
  %mlCode.i.i = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %zc, i32 0, i32 19, i32 5
  %56 = ptrtoint ptr %mlCode.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mlCode.i.i, align 4
  %sequences.i.i = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %zc, i32 0, i32 19, i32 1
  %58 = ptrtoint ptr %sequences.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sequences.i.i, align 4
  %60 = ptrtoint ptr %seqStore to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %seqStore, align 4
  %sub.ptr.lhs.cast5.i.i = ptrtoint ptr %59 to i32
  %sub.ptr.rhs.cast6.i.i = ptrtoint ptr %61 to i32
  %sub.ptr.sub7.i.i = sub i32 %sub.ptr.lhs.cast5.i.i, %sub.ptr.rhs.cast6.i.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub7.i.i, 3
  %fseTablesBuffer.i.i = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %entropyMetadata, i32 0, i32 1, i32 3
  %add.ptr9.i.i = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %entropyMetadata, i32 0, i32 1, i32 3, i32 133
  %62 = call ptr @memset(ptr %6, i32 0, i32 6616)
  %lastCountSize.i.i = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %entropyMetadata, i32 0, i32 1, i32 5
  %63 = ptrtoint ptr %lastCountSize.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %lastCountSize.i.i, align 4
  call void @ZSTD_seqToCodes(ptr noundef %seqStore) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max.i.i) #4
  %64 = ptrtoint ptr %max.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 35, ptr %max.i.i, align 4
  %call.i4.i = call i32 @HIST_countFast_wksp(ptr noundef %6, ptr noundef nonnull %max.i.i, ptr noundef %55, i32 noundef %sub.ptr.div.i.i, ptr noundef %6, i32 noundef 6616) #4
  %litlength_repeatMode.i.i = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %2, i32 0, i32 1, i32 5
  %65 = ptrtoint ptr %litlength_repeatMode.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %litlength_repeatMode.i.i, align 4
  %litlength_repeatMode10.i.i = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %4, i32 0, i32 1, i32 5
  %67 = ptrtoint ptr %litlength_repeatMode10.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %litlength_repeatMode10.i.i, align 4
  %68 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max.i.i, align 4
  %litlengthCTable12.i.i = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %2, i32 0, i32 1, i32 2
  %call14.i.i = call i32 @ZSTD_selectEncodingType(ptr noundef %litlength_repeatMode10.i.i, ptr noundef %6, i32 noundef %69, i32 noundef %call.i4.i, i32 noundef %sub.ptr.div.i.i, i32 noundef 9, ptr noundef %litlengthCTable12.i.i, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %51) #4
  %sub.ptr.lhs.cast15.i.i = ptrtoint ptr %add.ptr9.i.i to i32
  %sub.ptr.rhs.cast16.i.i = ptrtoint ptr %fseTablesBuffer.i.i to i32
  %70 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max.i.i, align 4
  %call20.i.i = call i32 @ZSTD_buildCTable(ptr noundef %fseTablesBuffer.i.i, i32 noundef 133, ptr noundef %litlengthCTable.i.i, i32 noundef 9, i32 noundef %call14.i.i, ptr noundef %6, i32 noundef %71, ptr noundef %55, i32 noundef %sub.ptr.div.i.i, ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, i32 noundef 35, ptr noundef %litlengthCTable12.i.i, i32 noundef 1316, ptr noundef %add.ptr1.i3.i, i32 noundef 6404) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call20.i.i)
  %cmp.i.i5.i = icmp ult i32 %call20.i.i, -119
  br i1 %cmp.i.i5.i, label %do.end.i7.i, label %cleanup26.i.i

do.end.i7.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call14.i.i)
  %cmp.i6.i = icmp eq i32 %call14.i.i, 2
  br i1 %cmp.i6.i, label %if.then22.i.i, label %do.end.i7.i.cleanup.cont33.i.i_crit_edge

do.end.i7.i.cleanup.cont33.i.i_crit_edge:         ; preds = %do.end.i7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.cont33.i.i

if.then22.i.i:                                    ; preds = %do.end.i7.i
  call void @__sanitizer_cov_trace_pc() #6
  %72 = ptrtoint ptr %lastCountSize.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call20.i.i, ptr %lastCountSize.i.i, align 4
  br label %cleanup.cont33.i.i

cleanup26.i.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max.i.i) #4
  br label %cleanup12

cleanup.cont33.i.i:                               ; preds = %if.then22.i.i, %do.end.i7.i.cleanup.cont33.i.i_crit_edge
  %add.ptr25.i.i = getelementptr i8, ptr %fseTablesBuffer.i.i, i32 %call20.i.i
  %73 = ptrtoint ptr %fseMetadata.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call14.i.i, ptr %fseMetadata.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max.i.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max34.i.i) #4
  %74 = ptrtoint ptr %max34.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 31, ptr %max34.i.i, align 4
  %call36.i.i = call i32 @HIST_countFast_wksp(ptr noundef %6, ptr noundef nonnull %max34.i.i, ptr noundef %53, i32 noundef %sub.ptr.div.i.i, ptr noundef %6, i32 noundef 6616) #4
  %75 = ptrtoint ptr %max34.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %max34.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %76)
  %cmp37.i.i = icmp ult i32 %76, 29
  %cond.i8.i = zext i1 %cmp37.i.i to i32
  %offcode_repeatMode.i.i = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %2, i32 0, i32 1, i32 3
  %77 = ptrtoint ptr %offcode_repeatMode.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %offcode_repeatMode.i.i, align 4
  %offcode_repeatMode38.i.i = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %4, i32 0, i32 1, i32 3
  %79 = ptrtoint ptr %offcode_repeatMode38.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %offcode_repeatMode38.i.i, align 4
  %call42.i.i = call i32 @ZSTD_selectEncodingType(ptr noundef %offcode_repeatMode38.i.i, ptr noundef %6, i32 noundef %76, i32 noundef %call36.i.i, i32 noundef %sub.ptr.div.i.i, i32 noundef 8, ptr noundef %fse.i, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef %cond.i8.i, i32 noundef %51) #4
  %sub.ptr.rhs.cast45.i.i = ptrtoint ptr %add.ptr25.i.i to i32
  %sub.ptr.sub46.i.i = sub i32 %sub.ptr.lhs.cast15.i.i, %sub.ptr.rhs.cast45.i.i
  %80 = ptrtoint ptr %max34.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max34.i.i, align 4
  %call49.i9.i = call i32 @ZSTD_buildCTable(ptr noundef %add.ptr25.i.i, i32 noundef %sub.ptr.sub46.i.i, ptr noundef %fse8.i, i32 noundef 8, i32 noundef %call42.i.i, ptr noundef %6, i32 noundef %81, ptr noundef %53, i32 noundef %sub.ptr.div.i.i, ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, i32 noundef 28, ptr noundef %fse.i, i32 noundef 772, ptr noundef %add.ptr1.i3.i, i32 noundef 6404) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call49.i9.i)
  %cmp.i1.i10.i = icmp ult i32 %call49.i9.i, -119
  br i1 %cmp.i1.i10.i, label %do.end60.i.i, label %cleanup66.i.i

do.end60.i.i:                                     ; preds = %cleanup.cont33.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call42.i.i)
  %cmp61.i.i = icmp eq i32 %call42.i.i, 2
  br i1 %cmp61.i.i, label %if.then62.i.i, label %do.end60.i.i.cleanup.cont74.i.i_crit_edge

do.end60.i.i.cleanup.cont74.i.i_crit_edge:        ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.cont74.i.i

if.then62.i.i:                                    ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %82 = ptrtoint ptr %lastCountSize.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call49.i9.i, ptr %lastCountSize.i.i, align 4
  br label %cleanup.cont74.i.i

cleanup66.i.i:                                    ; preds = %cleanup.cont33.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max34.i.i) #4
  br label %cleanup12

cleanup.cont74.i.i:                               ; preds = %if.then62.i.i, %do.end60.i.i.cleanup.cont74.i.i_crit_edge
  %add.ptr65.i.i = getelementptr i8, ptr %add.ptr25.i.i, i32 %call49.i9.i
  %ofType.i.i = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %entropyMetadata, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %ofType.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %call42.i.i, ptr %ofType.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max34.i.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max75.i.i) #4
  %84 = ptrtoint ptr %max75.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 52, ptr %max75.i.i, align 4
  %call77.i.i = call i32 @HIST_countFast_wksp(ptr noundef %6, ptr noundef nonnull %max75.i.i, ptr noundef %57, i32 noundef %sub.ptr.div.i.i, ptr noundef %6, i32 noundef 6616) #4
  %matchlength_repeatMode.i.i = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %2, i32 0, i32 1, i32 4
  %85 = ptrtoint ptr %matchlength_repeatMode.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %matchlength_repeatMode.i.i, align 4
  %matchlength_repeatMode78.i.i = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %4, i32 0, i32 1, i32 4
  %87 = ptrtoint ptr %matchlength_repeatMode78.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %matchlength_repeatMode78.i.i, align 4
  %88 = ptrtoint ptr %max75.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %max75.i.i, align 4
  %matchlengthCTable80.i.i = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %2, i32 0, i32 1, i32 1
  %call82.i.i = call i32 @ZSTD_selectEncodingType(ptr noundef %matchlength_repeatMode78.i.i, ptr noundef %6, i32 noundef %89, i32 noundef %call77.i.i, i32 noundef %sub.ptr.div.i.i, i32 noundef 9, ptr noundef %matchlengthCTable80.i.i, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 1, i32 noundef %51) #4
  %sub.ptr.rhs.cast85.i.i = ptrtoint ptr %add.ptr65.i.i to i32
  %sub.ptr.sub86.i.i = sub i32 %sub.ptr.lhs.cast15.i.i, %sub.ptr.rhs.cast85.i.i
  %90 = ptrtoint ptr %max75.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max75.i.i, align 4
  %call89.i.i = call i32 @ZSTD_buildCTable(ptr noundef %add.ptr65.i.i, i32 noundef %sub.ptr.sub86.i.i, ptr noundef %matchlengthCTable.i.i, i32 noundef 9, i32 noundef %call82.i.i, ptr noundef %6, i32 noundef %91, ptr noundef %57, i32 noundef %sub.ptr.div.i.i, ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, i32 noundef 52, ptr noundef %matchlengthCTable80.i.i, i32 noundef 1452, ptr noundef %add.ptr1.i3.i, i32 noundef 6404) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call89.i.i)
  %cmp.i3.i.i = icmp ult i32 %call89.i.i, -119
  br i1 %cmp.i3.i.i, label %do.end100.i.i, label %cleanup106.i.i

do.end100.i.i:                                    ; preds = %cleanup.cont74.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call82.i.i)
  %cmp101.i.i = icmp eq i32 %call82.i.i, 2
  br i1 %cmp101.i.i, label %if.then102.i.i, label %do.end100.i.i.ZSTD_buildSuperBlockEntropy.exit_crit_edge

do.end100.i.i.ZSTD_buildSuperBlockEntropy.exit_crit_edge: ; preds = %do.end100.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ZSTD_buildSuperBlockEntropy.exit

if.then102.i.i:                                   ; preds = %do.end100.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %92 = ptrtoint ptr %lastCountSize.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call89.i.i, ptr %lastCountSize.i.i, align 4
  br label %ZSTD_buildSuperBlockEntropy.exit

cleanup106.i.i:                                   ; preds = %cleanup.cont74.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max75.i.i) #4
  br label %cleanup12

ZSTD_buildSuperBlockEntropy.exit:                 ; preds = %if.then102.i.i, %do.end100.i.i.ZSTD_buildSuperBlockEntropy.exit_crit_edge
  %add.ptr105.i.i = getelementptr i8, ptr %add.ptr65.i.i, i32 %call89.i.i
  %mlType.i.i = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %entropyMetadata, i32 0, i32 1, i32 2
  %93 = ptrtoint ptr %mlType.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %call82.i.i, ptr %mlType.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max75.i.i) #4
  %sub.ptr.lhs.cast114.i.i = ptrtoint ptr %add.ptr105.i.i to i32
  %sub.ptr.sub116.i.i = sub i32 %sub.ptr.lhs.cast114.i.i, %sub.ptr.rhs.cast16.i.i
  %fseTablesSize.i = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %entropyMetadata, i32 0, i32 1, i32 4
  %94 = ptrtoint ptr %fseTablesSize.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %sub.ptr.sub116.i.i, ptr %fseTablesSize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %sub.ptr.sub116.i.i)
  %cmp.i11.i = icmp ult i32 %sub.ptr.sub116.i.i, -119
  br i1 %cmp.i11.i, label %do.end, label %ZSTD_buildSuperBlockEntropy.exit.cleanup12_crit_edge

ZSTD_buildSuperBlockEntropy.exit.cleanup12_crit_edge: ; preds = %ZSTD_buildSuperBlockEntropy.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup12

do.end:                                           ; preds = %ZSTD_buildSuperBlockEntropy.exit
  %95 = ptrtoint ptr %blockState to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %blockState, align 4
  %97 = ptrtoint ptr %nextCBlock to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %nextCBlock, align 4
  %bmi2 = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %zc, i32 0, i32 2
  %99 = ptrtoint ptr %bmi2 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bmi2, align 8
  %101 = ptrtoint ptr %entropyWorkspace to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %entropyWorkspace, align 4
  %103 = ptrtoint ptr %seqStore to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %seqStore, align 4
  %105 = ptrtoint ptr %sequences.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sequences.i.i, align 4
  %107 = ptrtoint ptr %litStart.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %litStart.i, align 4
  %109 = ptrtoint ptr %lit.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %lit.i, align 4
  %add.ptr.i = getelementptr i8, ptr %src, i32 %srcSize
  %add.ptr1.i = getelementptr i8, ptr %dst, i32 %dstCapacity
  %111 = ptrtoint ptr %llCode.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %llCode.i.i, align 4
  %113 = ptrtoint ptr %mlCode.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mlCode.i.i, align 4
  %115 = ptrtoint ptr %ofCode.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ofCode.i.i, align 4
  %targetCBlockSize2.i = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %zc, i32 0, i32 4, i32 5
  %117 = ptrtoint ptr %targetCBlockSize2.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %targetCBlockSize2.i, align 4
  %119 = ptrtoint ptr %entropyMetadata to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %entropyMetadata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %120)
  %cmp.i26 = icmp eq i32 %120, 2
  %conv.i27 = zext i1 %cmp.i26 to i32
  %cmp3.i = icmp eq ptr %104, %106
  %sub.ptr.lhs.cast.i28 = ptrtoint ptr %110 to i32
  %add.ptr6.i = getelementptr %struct.seqDef_s, ptr %106, i32 -1
  %longLengthPos.i.i = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %zc, i32 0, i32 19, i32 10
  %longLengthID.i.i = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %zc, i32 0, i32 19, i32 9
  %hufDesSize.i.i.i = getelementptr inbounds %struct.ZSTD_hufCTablesMetadata_t, ptr %entropyMetadata, i32 0, i32 2
  %ofType.i.i.i = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %entropyMetadata, i32 0, i32 1, i32 1
  %fse.i.i = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %98, i32 0, i32 1
  %litlengthCTable.i.i.i = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %98, i32 0, i32 1, i32 2
  %mlType.i.i.i = getelementptr inbounds %struct.ZSTD_entropyCTablesMetadata_t, ptr %entropyMetadata, i32 0, i32 1, i32 2
  %matchlengthCTable.i.i.i = getelementptr inbounds %struct.ZSTD_entropyCTables_t, ptr %98, i32 0, i32 1, i32 1
  %sub.ptr.lhs.cast17.i = ptrtoint ptr %add.ptr1.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lastBlock)
  %tobool20.not.i = icmp ne i32 %lastBlock, 0
  %hufDesBuffer.i.i.i = getelementptr inbounds %struct.ZSTD_hufCTablesMetadata_t, ptr %entropyMetadata, i32 0, i32 1
  %cParams.i.i.i = getelementptr inbounds %struct.ZSTD_CCtx_s, ptr %zc, i32 0, i32 4, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond57.i.do.body.i_crit_edge, %do.end
  %sp.0.i = phi ptr [ %104, %do.end ], [ %sp.4.ph.i, %do.cond57.i.do.body.i_crit_edge ]
  %lp.0.i = phi ptr [ %108, %do.end ], [ %lp.4.ph.i, %do.cond57.i.do.body.i_crit_edge ]
  %ip.0.i = phi ptr [ %src, %do.end ], [ %ip.4.ph.i, %do.cond57.i.do.body.i_crit_edge ]
  %op.0.i = phi ptr [ %dst, %do.end ], [ %op.4.ph.i, %do.cond57.i.do.body.i_crit_edge ]
  %llCodePtr.0.i = phi ptr [ %112, %do.end ], [ %llCodePtr.4.ph.i, %do.cond57.i.do.body.i_crit_edge ]
  %mlCodePtr.0.i = phi ptr [ %114, %do.end ], [ %mlCodePtr.4.ph.i, %do.cond57.i.do.body.i_crit_edge ]
  %ofCodePtr.0.i = phi ptr [ %116, %do.end ], [ %ofCodePtr.4.ph.i, %do.cond57.i.do.body.i_crit_edge ]
  %litSize.0.i = phi i32 [ 0, %do.end ], [ %litSize.6.ph.i, %do.cond57.i.do.body.i_crit_edge ]
  %seqCount.0.i = phi i32 [ 0, %do.end ], [ %seqCount.5.ph.i, %do.cond57.i.do.body.i_crit_edge ]
  %writeLitEntropy.0.i = phi i32 [ %conv.i27, %do.end ], [ %writeLitEntropy.5.ph.i, %do.cond57.i.do.body.i_crit_edge ]
  %writeSeqEntropy.0.i = phi i32 [ 1, %do.end ], [ %writeSeqEntropy.4.ph.i, %do.cond57.i.do.body.i_crit_edge ]
  br i1 %cmp3.i, label %do.body.i.if.end.i_crit_edge, label %if.else.i

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.else.i:                                        ; preds = %do.body.i
  %add.ptr5.i = getelementptr %struct.seqDef_s, ptr %sp.0.i, i32 %seqCount.0.i
  %cmp7.i = icmp eq ptr %add.ptr5.i, %add.ptr6.i
  %conv8.i = zext i1 %cmp7.i to i32
  %litLength.i.i = getelementptr %struct.seqDef_s, ptr %sp.0.i, i32 %seqCount.0.i, i32 1
  %121 = ptrtoint ptr %litLength.i.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %litLength.i.i, align 4, !noalias !19
  %conv.i.i = zext i16 %122 to i32
  %123 = ptrtoint ptr %longLengthPos.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %longLengthPos.i.i, align 4, !noalias !19
  %125 = ptrtoint ptr %seqStore to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %seqStore, align 4, !noalias !19
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr5.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %126 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i29 = ashr exact i32 %sub.ptr.sub.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %sub.ptr.div.i.i29)
  %cmp.i.i30 = icmp eq i32 %124, %sub.ptr.div.i.i29
  br i1 %cmp.i.i30, label %if.then.i.i, label %if.else.i.ZSTD_getSequenceLength.exit.i_crit_edge

if.else.i.ZSTD_getSequenceLength.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ZSTD_getSequenceLength.exit.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %127 = ptrtoint ptr %longLengthID.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %longLengthID.i.i, align 4, !noalias !19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %128)
  %cond.i = icmp eq i32 %128, 1
  %add9.i.i = add nuw nsw i32 %conv.i.i, 65535
  %spec.select177.i = select i1 %cond.i, i32 %add9.i.i, i32 %conv.i.i
  br label %ZSTD_getSequenceLength.exit.i

ZSTD_getSequenceLength.exit.i:                    ; preds = %if.then.i.i, %if.else.i.ZSTD_getSequenceLength.exit.i_crit_edge
  %tmp.sroa.0.0.i = phi i32 [ %conv.i.i, %if.else.i.ZSTD_getSequenceLength.exit.i_crit_edge ], [ %spec.select177.i, %if.then.i.i ]
  %add.i = add i32 %tmp.sroa.0.0.i, %litSize.0.i
  %inc.i = add i32 %seqCount.0.i, 1
  br label %if.end.i

if.end.i:                                         ; preds = %ZSTD_getSequenceLength.exit.i, %do.body.i.if.end.i_crit_edge
  %litSize.1.i = phi i32 [ %add.i, %ZSTD_getSequenceLength.exit.i ], [ %litSize.0.i, %do.body.i.if.end.i_crit_edge ]
  %seqCount.1.i = phi i32 [ %inc.i, %ZSTD_getSequenceLength.exit.i ], [ %seqCount.0.i, %do.body.i.if.end.i_crit_edge ]
  %lastSequence.0.i = phi i32 [ %conv8.i, %ZSTD_getSequenceLength.exit.i ], [ 1, %do.body.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lastSequence.0.i)
  %tobool.i = icmp ne i32 %lastSequence.0.i, 0
  %sub.ptr.rhs.cast.i31 = ptrtoint ptr %lp.0.i to i32
  %sub.ptr.sub.i32 = sub i32 %sub.ptr.lhs.cast.i28, %sub.ptr.rhs.cast.i31
  %litSize.2.i = select i1 %tobool.i, i32 %sub.ptr.sub.i32, i32 %litSize.1.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maxSymbolValue.i.i.i) #4
  %129 = ptrtoint ptr %maxSymbolValue.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 255, ptr %maxSymbolValue.i.i.i, align 4
  %130 = ptrtoint ptr %entropyMetadata to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %entropyMetadata, align 4
  %132 = zext i32 %131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %131, label %if.end19.i.i.i [
    i32 0, label %if.end.i.ZSTD_estimateSubBlockSize_literal.exit.i.i_crit_edge
    i32 1, label %if.then3.i.i.i
    i32 2, label %if.end.i.if.then9.i.i.i_crit_edge
    i32 3, label %if.end.i.if.then9.i.i.i_crit_edge50
  ]

if.end.i.if.then9.i.i.i_crit_edge50:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9.i.i.i

if.end.i.if.then9.i.i.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9.i.i.i

if.end.i.ZSTD_estimateSubBlockSize_literal.exit.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ZSTD_estimateSubBlockSize_literal.exit.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ZSTD_estimateSubBlockSize_literal.exit.i.i

if.then9.i.i.i:                                   ; preds = %if.end.i.if.then9.i.i.i_crit_edge, %if.end.i.if.then9.i.i.i_crit_edge50
  %call.i.i.i = call i32 @HIST_count_wksp(ptr noundef %102, ptr noundef nonnull %maxSymbolValue.i.i.i, ptr noundef %lp.0.i, i32 noundef %litSize.2.i, ptr noundef %102, i32 noundef 6616) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %call.i.i.i, -119
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i, label %if.then9.i.i.i.ZSTD_estimateSubBlockSize_literal.exit.i.i_crit_edge

if.then9.i.i.i.ZSTD_estimateSubBlockSize_literal.exit.i.i_crit_edge: ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ZSTD_estimateSubBlockSize_literal.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then9.i.i.i
  %133 = ptrtoint ptr %maxSymbolValue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %maxSymbolValue.i.i.i, align 4
  %call12.i.i.i = call i32 @HUF_estimateCompressedSize(ptr noundef %98, ptr noundef %102, i32 noundef %134) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %writeLitEntropy.0.i)
  %tobool13.not.i.i.i = icmp eq i32 %writeLitEntropy.0.i, 0
  br i1 %tobool13.not.i.i.i, label %if.end.i.i.i.if.end15.i.i.i_crit_edge, label %if.then14.i.i.i

if.end.i.i.i.if.end15.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.i.i.i

if.then14.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %135 = ptrtoint ptr %hufDesSize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %hufDesSize.i.i.i, align 4
  %add.i.i.i = add i32 %136, %call12.i.i.i
  br label %if.end15.i.i.i

if.end15.i.i.i:                                   ; preds = %if.then14.i.i.i, %if.end.i.i.i.if.end15.i.i.i_crit_edge
  %cLitSizeEstimate.0.i.i.i = phi i32 [ %add.i.i.i, %if.then14.i.i.i ], [ %call12.i.i.i, %if.end.i.i.i.if.end15.i.i.i_crit_edge ]
  %add16.i.i.i = add i32 %cLitSizeEstimate.0.i.i.i, 3
  br label %ZSTD_estimateSubBlockSize_literal.exit.i.i

if.end19.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ZSTD_estimateSubBlockSize_literal.exit.i.i

ZSTD_estimateSubBlockSize_literal.exit.i.i:       ; preds = %if.end19.i.i.i, %if.end15.i.i.i, %if.then9.i.i.i.ZSTD_estimateSubBlockSize_literal.exit.i.i_crit_edge, %if.then3.i.i.i, %if.end.i.ZSTD_estimateSubBlockSize_literal.exit.i.i_crit_edge
  %retval.1.i.i.i = phi i32 [ 1, %if.then3.i.i.i ], [ 0, %if.end19.i.i.i ], [ %litSize.2.i, %if.end.i.ZSTD_estimateSubBlockSize_literal.exit.i.i_crit_edge ], [ %add16.i.i.i, %if.end15.i.i.i ], [ %litSize.2.i, %if.then9.i.i.i.ZSTD_estimateSubBlockSize_literal.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maxSymbolValue.i.i.i) #4
  %137 = ptrtoint ptr %ofType.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %ofType.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %ofCodePtr.0.i, i32 %seqCount.1.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max.i.i.i.i) #4
  %139 = ptrtoint ptr %max.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 31, ptr %max.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @HIST_countFast_wksp(ptr noundef %102, ptr noundef nonnull %max.i.i.i.i, ptr noundef %ofCodePtr.0.i, i32 noundef %seqCount.1.i, ptr noundef %102, i32 noundef 6616) #4
  %140 = zext i32 %138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %140, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %138, label %ZSTD_estimateSubBlockSize_literal.exit.i.i.while.cond.preheader.i.i.i.i_crit_edge [
    i32 0, label %if.then.i.i.i.i
    i32 3, label %ZSTD_estimateSubBlockSize_literal.exit.i.i.if.then8.i.i.i.i_crit_edge
    i32 2, label %ZSTD_estimateSubBlockSize_literal.exit.i.i.if.then8.i.i.i.i_crit_edge51
  ]

ZSTD_estimateSubBlockSize_literal.exit.i.i.if.then8.i.i.i.i_crit_edge51: ; preds = %ZSTD_estimateSubBlockSize_literal.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8.i.i.i.i

ZSTD_estimateSubBlockSize_literal.exit.i.i.if.then8.i.i.i.i_crit_edge: ; preds = %ZSTD_estimateSubBlockSize_literal.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8.i.i.i.i

ZSTD_estimateSubBlockSize_literal.exit.i.i.while.cond.preheader.i.i.i.i_crit_edge: ; preds = %ZSTD_estimateSubBlockSize_literal.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.preheader.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %ZSTD_estimateSubBlockSize_literal.exit.i.i
  %141 = ptrtoint ptr %max.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %max.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %142)
  %cmp1.not.i.i.i.i = icmp ugt i32 %142, 28
  br i1 %cmp1.not.i.i.i.i, label %if.then.i.i.i.i.if.then13.i.i.i.i_crit_edge, label %cond.true.i.i.i.i

if.then.i.i.i.i.if.then13.i.i.i.i_crit_edge:      ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13.i.i.i.i

cond.true.i.i.i.i:                                ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i.i.i.i = call i32 @ZSTD_crossEntropyCost(ptr noundef nonnull @OF_defaultNorm, i32 noundef 5, ptr noundef %102, i32 noundef %142) #4
  br label %if.end11.i.i.i.i

if.then8.i.i.i.i:                                 ; preds = %ZSTD_estimateSubBlockSize_literal.exit.i.i.if.then8.i.i.i.i_crit_edge, %ZSTD_estimateSubBlockSize_literal.exit.i.i.if.then8.i.i.i.i_crit_edge51
  %143 = ptrtoint ptr %max.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %max.i.i.i.i, align 4
  %call9.i.i.i.i = call i32 @ZSTD_fseBitCost(ptr noundef %fse.i.i, ptr noundef %102, i32 noundef %144) #4
  br label %if.end11.i.i.i.i

if.end11.i.i.i.i:                                 ; preds = %if.then8.i.i.i.i, %cond.true.i.i.i.i
  %cSymbolTypeSizeEstimateInBits.0.i.i.i.i = phi i32 [ %call9.i.i.i.i, %if.then8.i.i.i.i ], [ %call2.i.i.i.i, %cond.true.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %cSymbolTypeSizeEstimateInBits.0.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ult i32 %cSymbolTypeSizeEstimateInBits.0.i.i.i.i, -119
  br i1 %cmp.i.i.i.i.i, label %if.end11.i.i.i.i.while.cond.preheader.i.i.i.i_crit_edge, label %if.end11.i.i.i.i.if.then13.i.i.i.i_crit_edge

if.end11.i.i.i.i.if.then13.i.i.i.i_crit_edge:     ; preds = %if.end11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13.i.i.i.i

if.end11.i.i.i.i.while.cond.preheader.i.i.i.i_crit_edge: ; preds = %if.end11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.preheader.i.i.i.i

while.cond.preheader.i.i.i.i:                     ; preds = %if.end11.i.i.i.i.while.cond.preheader.i.i.i.i_crit_edge, %ZSTD_estimateSubBlockSize_literal.exit.i.i.while.cond.preheader.i.i.i.i_crit_edge
  %cSymbolTypeSizeEstimateInBits.012.i.i.i.i = phi i32 [ %cSymbolTypeSizeEstimateInBits.0.i.i.i.i, %if.end11.i.i.i.i.while.cond.preheader.i.i.i.i_crit_edge ], [ 0, %ZSTD_estimateSubBlockSize_literal.exit.i.i.while.cond.preheader.i.i.i.i_crit_edge ]
  %cmp156.i.i.i.i = icmp ugt ptr %add.ptr.i.i.i.i, %ofCodePtr.0.i
  br i1 %cmp156.i.i.i.i, label %while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.i.while.end.i.i.i.i_crit_edge

while.cond.preheader.i.i.i.i.while.end.i.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i.i.i

while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i.i
  br label %while.body.i.i.i.i

if.then13.i.i.i.i:                                ; preds = %if.end11.i.i.i.i.if.then13.i.i.i.i_crit_edge, %if.then.i.i.i.i.if.then13.i.i.i.i_crit_edge
  %mul.i.i.i.i = mul i32 %seqCount.1.i, 10
  br label %ZSTD_estimateSubBlockSize_symbolType.exit.i.i.i

while.body.i.i.i.i:                               ; preds = %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge, %while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge
  %cSymbolTypeSizeEstimateInBits.19.i.i.i.i = phi i32 [ %cSymbolTypeSizeEstimateInBits.2.i.i.i.i, %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %cSymbolTypeSizeEstimateInBits.012.i.i.i.i, %while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge ]
  %ctp.07.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %ofCodePtr.0.i, %while.cond.preheader.i.i.i.i.while.body.i.i.i.i_crit_edge ]
  %145 = ptrtoint ptr %ctp.07.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %ctp.07.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %146 to i32
  %cSymbolTypeSizeEstimateInBits.2.i.i.i.i = add i32 %cSymbolTypeSizeEstimateInBits.19.i.i.i.i, %conv.i.i.i.i
  %incdec.ptr.i.i.i.i = getelementptr i8, ptr %ctp.07.i.i.i.i, i32 1
  %exitcond.not.i.i.i = icmp eq ptr %incdec.ptr.i.i.i.i, %add.ptr.i.i.i.i
  br i1 %exitcond.not.i.i.i, label %while.body.i.i.i.i.while.end.i.i.i.i_crit_edge, label %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge

while.body.i.i.i.i.while.body.i.i.i.i_crit_edge:  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i.i.i

while.body.i.i.i.i.while.end.i.i.i.i_crit_edge:   ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i.i.i

while.end.i.i.i.i:                                ; preds = %while.body.i.i.i.i.while.end.i.i.i.i_crit_edge, %while.cond.preheader.i.i.i.i.while.end.i.i.i.i_crit_edge
  %cSymbolTypeSizeEstimateInBits.1.lcssa.i.i.i.i = phi i32 [ %cSymbolTypeSizeEstimateInBits.012.i.i.i.i, %while.cond.preheader.i.i.i.i.while.end.i.i.i.i_crit_edge ], [ %cSymbolTypeSizeEstimateInBits.2.i.i.i.i, %while.body.i.i.i.i.while.end.i.i.i.i_crit_edge ]
  %div1.i.i.i.i = lshr i32 %cSymbolTypeSizeEstimateInBits.1.lcssa.i.i.i.i, 3
  br label %ZSTD_estimateSubBlockSize_symbolType.exit.i.i.i

ZSTD_estimateSubBlockSize_symbolType.exit.i.i.i:  ; preds = %while.end.i.i.i.i, %if.then13.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %mul.i.i.i.i, %if.then13.i.i.i.i ], [ %div1.i.i.i.i, %while.end.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max.i.i.i.i) #4
  %147 = ptrtoint ptr %fseMetadata.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %fseMetadata.i, align 4
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %llCodePtr.0.i, i32 %seqCount.1.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max.i1.i.i.i) #4
  %149 = ptrtoint ptr %max.i1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 35, ptr %max.i1.i.i.i, align 4
  %call.i3.i.i.i = call i32 @HIST_countFast_wksp(ptr noundef %102, ptr noundef nonnull %max.i1.i.i.i, ptr noundef %llCodePtr.0.i, i32 noundef %seqCount.1.i, ptr noundef %102, i32 noundef 6616) #4
  %150 = zext i32 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %148, label %ZSTD_estimateSubBlockSize_symbolType.exit.i.i.i.while.cond.preheader.i15.i.i.i_crit_edge [
    i32 0, label %if.then.i5.i.i.i
    i32 3, label %ZSTD_estimateSubBlockSize_symbolType.exit.i.i.i.if.then8.i9.i.i.i_crit_edge
    i32 2, label %ZSTD_estimateSubBlockSize_symbolType.exit.i.i.i.if.then8.i9.i.i.i_crit_edge52
  ]

ZSTD_estimateSubBlockSize_symbolType.exit.i.i.i.if.then8.i9.i.i.i_crit_edge52: ; preds = %ZSTD_estimateSubBlockSize_symbolType.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8.i9.i.i.i

ZSTD_estimateSubBlockSize_symbolType.exit.i.i.i.if.then8.i9.i.i.i_crit_edge: ; preds = %ZSTD_estimateSubBlockSize_symbolType.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8.i9.i.i.i

ZSTD_estimateSubBlockSize_symbolType.exit.i.i.i.while.cond.preheader.i15.i.i.i_crit_edge: ; preds = %ZSTD_estimateSubBlockSize_symbolType.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.preheader.i15.i.i.i

if.then.i5.i.i.i:                                 ; preds = %ZSTD_estimateSubBlockSize_symbolType.exit.i.i.i
  %151 = ptrtoint ptr %max.i1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %max.i1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %152)
  %cmp1.not.i4.i.i.i = icmp ugt i32 %152, 35
  br i1 %cmp1.not.i4.i.i.i, label %if.then.i5.i.i.i.if.then13.i18.i.i.i_crit_edge, label %cond.true.i7.i.i.i

if.then.i5.i.i.i.if.then13.i18.i.i.i_crit_edge:   ; preds = %if.then.i5.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13.i18.i.i.i

cond.true.i7.i.i.i:                               ; preds = %if.then.i5.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i6.i.i.i = call i32 @ZSTD_crossEntropyCost(ptr noundef nonnull @LL_defaultNorm, i32 noundef 6, ptr noundef %102, i32 noundef %152) #4
  br label %if.end11.i12.i.i.i

if.then8.i9.i.i.i:                                ; preds = %ZSTD_estimateSubBlockSize_symbolType.exit.i.i.i.if.then8.i9.i.i.i_crit_edge, %ZSTD_estimateSubBlockSize_symbolType.exit.i.i.i.if.then8.i9.i.i.i_crit_edge52
  %153 = ptrtoint ptr %max.i1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %max.i1.i.i.i, align 4
  %call9.i8.i.i.i = call i32 @ZSTD_fseBitCost(ptr noundef %litlengthCTable.i.i.i, ptr noundef %102, i32 noundef %154) #4
  br label %if.end11.i12.i.i.i

if.end11.i12.i.i.i:                               ; preds = %if.then8.i9.i.i.i, %cond.true.i7.i.i.i
  %cSymbolTypeSizeEstimateInBits.0.i10.i.i.i = phi i32 [ %call9.i8.i.i.i, %if.then8.i9.i.i.i ], [ %call2.i6.i.i.i, %cond.true.i7.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %cSymbolTypeSizeEstimateInBits.0.i10.i.i.i)
  %cmp.i.i11.i.i.i = icmp ult i32 %cSymbolTypeSizeEstimateInBits.0.i10.i.i.i, -119
  br i1 %cmp.i.i11.i.i.i, label %if.end11.i12.i.i.i.while.cond.preheader.i15.i.i.i_crit_edge, label %if.end11.i12.i.i.i.if.then13.i18.i.i.i_crit_edge

if.end11.i12.i.i.i.if.then13.i18.i.i.i_crit_edge: ; preds = %if.end11.i12.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13.i18.i.i.i

if.end11.i12.i.i.i.while.cond.preheader.i15.i.i.i_crit_edge: ; preds = %if.end11.i12.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.preheader.i15.i.i.i

while.cond.preheader.i15.i.i.i:                   ; preds = %if.end11.i12.i.i.i.while.cond.preheader.i15.i.i.i_crit_edge, %ZSTD_estimateSubBlockSize_symbolType.exit.i.i.i.while.cond.preheader.i15.i.i.i_crit_edge
  %cSymbolTypeSizeEstimateInBits.012.i13.i.i.i = phi i32 [ %cSymbolTypeSizeEstimateInBits.0.i10.i.i.i, %if.end11.i12.i.i.i.while.cond.preheader.i15.i.i.i_crit_edge ], [ 0, %ZSTD_estimateSubBlockSize_symbolType.exit.i.i.i.while.cond.preheader.i15.i.i.i_crit_edge ]
  %cmp156.i14.i.i.i = icmp ugt ptr %add.ptr.i2.i.i.i, %llCodePtr.0.i
  br i1 %cmp156.i14.i.i.i, label %while.cond.preheader.i15.i.i.i.while.body.i22.i.i.i_crit_edge, label %while.cond.preheader.i15.i.i.i.while.end.i28.i.i.i_crit_edge

while.cond.preheader.i15.i.i.i.while.end.i28.i.i.i_crit_edge: ; preds = %while.cond.preheader.i15.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i28.i.i.i

while.cond.preheader.i15.i.i.i.while.body.i22.i.i.i_crit_edge: ; preds = %while.cond.preheader.i15.i.i.i
  br label %while.body.i22.i.i.i

if.then13.i18.i.i.i:                              ; preds = %if.end11.i12.i.i.i.if.then13.i18.i.i.i_crit_edge, %if.then.i5.i.i.i.if.then13.i18.i.i.i_crit_edge
  %mul.i17.i.i.i = mul i32 %seqCount.1.i, 10
  br label %ZSTD_estimateSubBlockSize_symbolType.exit30.i.i.i

while.body.i22.i.i.i:                             ; preds = %while.body.i22.i.i.i.while.body.i22.i.i.i_crit_edge, %while.cond.preheader.i15.i.i.i.while.body.i22.i.i.i_crit_edge
  %cSymbolTypeSizeEstimateInBits.19.i19.i.i.i = phi i32 [ %cSymbolTypeSizeEstimateInBits.2.i23.i.i.i, %while.body.i22.i.i.i.while.body.i22.i.i.i_crit_edge ], [ %cSymbolTypeSizeEstimateInBits.012.i13.i.i.i, %while.cond.preheader.i15.i.i.i.while.body.i22.i.i.i_crit_edge ]
  %ctp.07.i20.i.i.i = phi ptr [ %incdec.ptr.i24.i.i.i, %while.body.i22.i.i.i.while.body.i22.i.i.i_crit_edge ], [ %llCodePtr.0.i, %while.cond.preheader.i15.i.i.i.while.body.i22.i.i.i_crit_edge ]
  %155 = ptrtoint ptr %ctp.07.i20.i.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %ctp.07.i20.i.i.i, align 1
  %conv.i21.i.i.i = zext i8 %156 to i32
  %arrayidx.i.i.i.i = getelementptr i32, ptr @LL_bits, i32 %conv.i21.i.i.i
  %157 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %cSymbolTypeSizeEstimateInBits.2.i23.i.i.i = add i32 %158, %cSymbolTypeSizeEstimateInBits.19.i19.i.i.i
  %incdec.ptr.i24.i.i.i = getelementptr i8, ptr %ctp.07.i20.i.i.i, i32 1
  %exitcond62.not.i.i.i = icmp eq ptr %incdec.ptr.i24.i.i.i, %add.ptr.i2.i.i.i
  br i1 %exitcond62.not.i.i.i, label %while.body.i22.i.i.i.while.end.i28.i.i.i_crit_edge, label %while.body.i22.i.i.i.while.body.i22.i.i.i_crit_edge

while.body.i22.i.i.i.while.body.i22.i.i.i_crit_edge: ; preds = %while.body.i22.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i22.i.i.i

while.body.i22.i.i.i.while.end.i28.i.i.i_crit_edge: ; preds = %while.body.i22.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i28.i.i.i

while.end.i28.i.i.i:                              ; preds = %while.body.i22.i.i.i.while.end.i28.i.i.i_crit_edge, %while.cond.preheader.i15.i.i.i.while.end.i28.i.i.i_crit_edge
  %cSymbolTypeSizeEstimateInBits.1.lcssa.i26.i.i.i = phi i32 [ %cSymbolTypeSizeEstimateInBits.012.i13.i.i.i, %while.cond.preheader.i15.i.i.i.while.end.i28.i.i.i_crit_edge ], [ %cSymbolTypeSizeEstimateInBits.2.i23.i.i.i, %while.body.i22.i.i.i.while.end.i28.i.i.i_crit_edge ]
  %div1.i27.i.i.i = lshr i32 %cSymbolTypeSizeEstimateInBits.1.lcssa.i26.i.i.i, 3
  br label %ZSTD_estimateSubBlockSize_symbolType.exit30.i.i.i

ZSTD_estimateSubBlockSize_symbolType.exit30.i.i.i: ; preds = %while.end.i28.i.i.i, %if.then13.i18.i.i.i
  %retval.0.i29.i.i.i = phi i32 [ %mul.i17.i.i.i, %if.then13.i18.i.i.i ], [ %div1.i27.i.i.i, %while.end.i28.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max.i1.i.i.i) #4
  %add3.i.i.i = add i32 %retval.0.i29.i.i.i, %retval.0.i.i.i.i
  %159 = ptrtoint ptr %mlType.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %mlType.i.i.i, align 4
  %add.ptr.i32.i.i.i = getelementptr i8, ptr %mlCodePtr.0.i, i32 %seqCount.1.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max.i31.i.i.i) #4
  %161 = ptrtoint ptr %max.i31.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 52, ptr %max.i31.i.i.i, align 4
  %call.i33.i.i.i = call i32 @HIST_countFast_wksp(ptr noundef %102, ptr noundef nonnull %max.i31.i.i.i, ptr noundef %mlCodePtr.0.i, i32 noundef %seqCount.1.i, ptr noundef %102, i32 noundef 6616) #4
  %162 = zext i32 %160 to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %160, label %ZSTD_estimateSubBlockSize_symbolType.exit30.i.i.i.while.cond.preheader.i45.i.i.i_crit_edge [
    i32 0, label %if.then.i35.i.i.i
    i32 3, label %ZSTD_estimateSubBlockSize_symbolType.exit30.i.i.i.if.then8.i39.i.i.i_crit_edge
    i32 2, label %ZSTD_estimateSubBlockSize_symbolType.exit30.i.i.i.if.then8.i39.i.i.i_crit_edge53
  ]

ZSTD_estimateSubBlockSize_symbolType.exit30.i.i.i.if.then8.i39.i.i.i_crit_edge53: ; preds = %ZSTD_estimateSubBlockSize_symbolType.exit30.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8.i39.i.i.i

ZSTD_estimateSubBlockSize_symbolType.exit30.i.i.i.if.then8.i39.i.i.i_crit_edge: ; preds = %ZSTD_estimateSubBlockSize_symbolType.exit30.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then8.i39.i.i.i

ZSTD_estimateSubBlockSize_symbolType.exit30.i.i.i.while.cond.preheader.i45.i.i.i_crit_edge: ; preds = %ZSTD_estimateSubBlockSize_symbolType.exit30.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.preheader.i45.i.i.i

if.then.i35.i.i.i:                                ; preds = %ZSTD_estimateSubBlockSize_symbolType.exit30.i.i.i
  %163 = ptrtoint ptr %max.i31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %max.i31.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %164)
  %cmp1.not.i34.i.i.i = icmp ugt i32 %164, 52
  br i1 %cmp1.not.i34.i.i.i, label %if.then.i35.i.i.i.if.then13.i48.i.i.i_crit_edge, label %cond.true.i37.i.i.i

if.then.i35.i.i.i.if.then13.i48.i.i.i_crit_edge:  ; preds = %if.then.i35.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13.i48.i.i.i

cond.true.i37.i.i.i:                              ; preds = %if.then.i35.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i36.i.i.i = call i32 @ZSTD_crossEntropyCost(ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, ptr noundef %102, i32 noundef %164) #4
  br label %if.end11.i42.i.i.i

if.then8.i39.i.i.i:                               ; preds = %ZSTD_estimateSubBlockSize_symbolType.exit30.i.i.i.if.then8.i39.i.i.i_crit_edge, %ZSTD_estimateSubBlockSize_symbolType.exit30.i.i.i.if.then8.i39.i.i.i_crit_edge53
  %165 = ptrtoint ptr %max.i31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %max.i31.i.i.i, align 4
  %call9.i38.i.i.i = call i32 @ZSTD_fseBitCost(ptr noundef %matchlengthCTable.i.i.i, ptr noundef %102, i32 noundef %166) #4
  br label %if.end11.i42.i.i.i

if.end11.i42.i.i.i:                               ; preds = %if.then8.i39.i.i.i, %cond.true.i37.i.i.i
  %cSymbolTypeSizeEstimateInBits.0.i40.i.i.i = phi i32 [ %call9.i38.i.i.i, %if.then8.i39.i.i.i ], [ %call2.i36.i.i.i, %cond.true.i37.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %cSymbolTypeSizeEstimateInBits.0.i40.i.i.i)
  %cmp.i.i41.i.i.i = icmp ult i32 %cSymbolTypeSizeEstimateInBits.0.i40.i.i.i, -119
  br i1 %cmp.i.i41.i.i.i, label %if.end11.i42.i.i.i.while.cond.preheader.i45.i.i.i_crit_edge, label %if.end11.i42.i.i.i.if.then13.i48.i.i.i_crit_edge

if.end11.i42.i.i.i.if.then13.i48.i.i.i_crit_edge: ; preds = %if.end11.i42.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13.i48.i.i.i

if.end11.i42.i.i.i.while.cond.preheader.i45.i.i.i_crit_edge: ; preds = %if.end11.i42.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.preheader.i45.i.i.i

while.cond.preheader.i45.i.i.i:                   ; preds = %if.end11.i42.i.i.i.while.cond.preheader.i45.i.i.i_crit_edge, %ZSTD_estimateSubBlockSize_symbolType.exit30.i.i.i.while.cond.preheader.i45.i.i.i_crit_edge
  %cSymbolTypeSizeEstimateInBits.012.i43.i.i.i = phi i32 [ %cSymbolTypeSizeEstimateInBits.0.i40.i.i.i, %if.end11.i42.i.i.i.while.cond.preheader.i45.i.i.i_crit_edge ], [ 0, %ZSTD_estimateSubBlockSize_symbolType.exit30.i.i.i.while.cond.preheader.i45.i.i.i_crit_edge ]
  %cmp156.i44.i.i.i = icmp ugt ptr %add.ptr.i32.i.i.i, %mlCodePtr.0.i
  br i1 %cmp156.i44.i.i.i, label %while.cond.preheader.i45.i.i.i.while.body.i52.i.i.i_crit_edge, label %while.cond.preheader.i45.i.i.i.while.end.i59.i.i.i_crit_edge

while.cond.preheader.i45.i.i.i.while.end.i59.i.i.i_crit_edge: ; preds = %while.cond.preheader.i45.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i59.i.i.i

while.cond.preheader.i45.i.i.i.while.body.i52.i.i.i_crit_edge: ; preds = %while.cond.preheader.i45.i.i.i
  br label %while.body.i52.i.i.i

if.then13.i48.i.i.i:                              ; preds = %if.end11.i42.i.i.i.if.then13.i48.i.i.i_crit_edge, %if.then.i35.i.i.i.if.then13.i48.i.i.i_crit_edge
  %mul.i47.i.i.i = mul i32 %seqCount.1.i, 10
  br label %ZSTD_estimateSubBlockSize_symbolType.exit61.i.i.i

while.body.i52.i.i.i:                             ; preds = %while.body.i52.i.i.i.while.body.i52.i.i.i_crit_edge, %while.cond.preheader.i45.i.i.i.while.body.i52.i.i.i_crit_edge
  %cSymbolTypeSizeEstimateInBits.19.i49.i.i.i = phi i32 [ %cSymbolTypeSizeEstimateInBits.2.i54.i.i.i, %while.body.i52.i.i.i.while.body.i52.i.i.i_crit_edge ], [ %cSymbolTypeSizeEstimateInBits.012.i43.i.i.i, %while.cond.preheader.i45.i.i.i.while.body.i52.i.i.i_crit_edge ]
  %ctp.07.i50.i.i.i = phi ptr [ %incdec.ptr.i55.i.i.i, %while.body.i52.i.i.i.while.body.i52.i.i.i_crit_edge ], [ %mlCodePtr.0.i, %while.cond.preheader.i45.i.i.i.while.body.i52.i.i.i_crit_edge ]
  %167 = ptrtoint ptr %ctp.07.i50.i.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %ctp.07.i50.i.i.i, align 1
  %conv.i51.i.i.i = zext i8 %168 to i32
  %arrayidx.i53.i.i.i = getelementptr i32, ptr @ML_bits, i32 %conv.i51.i.i.i
  %169 = ptrtoint ptr %arrayidx.i53.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx.i53.i.i.i, align 4
  %cSymbolTypeSizeEstimateInBits.2.i54.i.i.i = add i32 %170, %cSymbolTypeSizeEstimateInBits.19.i49.i.i.i
  %incdec.ptr.i55.i.i.i = getelementptr i8, ptr %ctp.07.i50.i.i.i, i32 1
  %exitcond63.not.i.i.i = icmp eq ptr %incdec.ptr.i55.i.i.i, %add.ptr.i32.i.i.i
  br i1 %exitcond63.not.i.i.i, label %while.body.i52.i.i.i.while.end.i59.i.i.i_crit_edge, label %while.body.i52.i.i.i.while.body.i52.i.i.i_crit_edge

while.body.i52.i.i.i.while.body.i52.i.i.i_crit_edge: ; preds = %while.body.i52.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i52.i.i.i

while.body.i52.i.i.i.while.end.i59.i.i.i_crit_edge: ; preds = %while.body.i52.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i59.i.i.i

while.end.i59.i.i.i:                              ; preds = %while.body.i52.i.i.i.while.end.i59.i.i.i_crit_edge, %while.cond.preheader.i45.i.i.i.while.end.i59.i.i.i_crit_edge
  %cSymbolTypeSizeEstimateInBits.1.lcssa.i57.i.i.i = phi i32 [ %cSymbolTypeSizeEstimateInBits.012.i43.i.i.i, %while.cond.preheader.i45.i.i.i.while.end.i59.i.i.i_crit_edge ], [ %cSymbolTypeSizeEstimateInBits.2.i54.i.i.i, %while.body.i52.i.i.i.while.end.i59.i.i.i_crit_edge ]
  %div1.i58.i.i.i = lshr i32 %cSymbolTypeSizeEstimateInBits.1.lcssa.i57.i.i.i, 3
  br label %ZSTD_estimateSubBlockSize_symbolType.exit61.i.i.i

ZSTD_estimateSubBlockSize_symbolType.exit61.i.i.i: ; preds = %while.end.i59.i.i.i, %if.then13.i48.i.i.i
  %retval.0.i60.i.i.i = phi i32 [ %mul.i47.i.i.i, %if.then13.i48.i.i.i ], [ %div1.i58.i.i.i, %while.end.i59.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max.i31.i.i.i) #4
  %add6.i.i.i = add i32 %add3.i.i.i, %retval.0.i60.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %writeSeqEntropy.0.i)
  %tobool.not.i.i.i = icmp eq i32 %writeSeqEntropy.0.i, 0
  br i1 %tobool.not.i.i.i, label %ZSTD_estimateSubBlockSize_symbolType.exit61.i.i.i.ZSTD_estimateSubBlockSize.exit.i_crit_edge, label %if.then.i.i.i

ZSTD_estimateSubBlockSize_symbolType.exit61.i.i.i.ZSTD_estimateSubBlockSize.exit.i_crit_edge: ; preds = %ZSTD_estimateSubBlockSize_symbolType.exit61.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ZSTD_estimateSubBlockSize.exit.i

if.then.i.i.i:                                    ; preds = %ZSTD_estimateSubBlockSize_symbolType.exit61.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %171 = ptrtoint ptr %fseTablesSize.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %fseTablesSize.i, align 4
  %add7.i.i.i = add i32 %172, %add6.i.i.i
  br label %ZSTD_estimateSubBlockSize.exit.i

ZSTD_estimateSubBlockSize.exit.i:                 ; preds = %if.then.i.i.i, %ZSTD_estimateSubBlockSize_symbolType.exit61.i.i.i.ZSTD_estimateSubBlockSize.exit.i_crit_edge
  %cSeqSizeEstimate.0.i.i.i = phi i32 [ %add7.i.i.i, %if.then.i.i.i ], [ %add6.i.i.i, %ZSTD_estimateSubBlockSize_symbolType.exit61.i.i.i.ZSTD_estimateSubBlockSize.exit.i_crit_edge ]
  %add2.i.i = add i32 %retval.1.i.i.i, 6
  %add3.i.i = add i32 %add2.i.i, %cSeqSizeEstimate.0.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i.i, i32 %118)
  %cmp11.i = icmp ugt i32 %add3.i.i, %118
  %brmerge.i = select i1 %cmp11.i, i1 true, i1 %tobool.i
  br i1 %brmerge.i, label %if.then14.i, label %ZSTD_estimateSubBlockSize.exit.i.do.cond57.i_crit_edge

ZSTD_estimateSubBlockSize.exit.i.do.cond57.i_crit_edge: ; preds = %ZSTD_estimateSubBlockSize.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond57.i

if.then14.i:                                      ; preds = %ZSTD_estimateSubBlockSize.exit.i
  %add.ptr.i.i = getelementptr %struct.seqDef_s, ptr %sp.0.i, i32 %seqCount.1.i
  %sub.ptr.lhs.cast.i3.i = ptrtoint ptr %add.ptr.i.i to i32
  %add.ptr.idx.i.i = shl i32 %seqCount.1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.ptr.idx.i.i)
  %cmp3.i.i = icmp sgt i32 %add.ptr.idx.i.i, 0
  br i1 %cmp3.i.i, label %while.body.lr.ph.i.i, label %if.then14.i.ZSTD_seqDecompressedSize.exit.i_crit_edge

if.then14.i.ZSTD_seqDecompressedSize.exit.i_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ZSTD_seqDecompressedSize.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.then14.i
  %sub.ptr.rhs.cast1.i.i = ptrtoint ptr %sp.0.i to i32
  %173 = ptrtoint ptr %longLengthPos.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %longLengthPos.i.i, align 4, !noalias !22
  %175 = ptrtoint ptr %seqStore to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %seqStore, align 4, !noalias !22
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %176 to i32
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %ZSTD_getSequenceLength.exit.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %sub.ptr.rhs.cast6.i.i33 = phi i32 [ %sub.ptr.rhs.cast1.i.i, %while.body.lr.ph.i.i ], [ %sub.ptr.rhs.cast.i6.i, %ZSTD_getSequenceLength.exit.i.i.while.body.i.i_crit_edge ]
  %matchLengthSum.05.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %add1.i.i, %ZSTD_getSequenceLength.exit.i.i.while.body.i.i_crit_edge ]
  %sp.04.i.i = phi ptr [ %sp.0.i, %while.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %ZSTD_getSequenceLength.exit.i.i.while.body.i.i_crit_edge ]
  %matchLength.i.i.i = getelementptr inbounds %struct.seqDef_s, ptr %sp.04.i.i, i32 0, i32 2
  %177 = ptrtoint ptr %matchLength.i.i.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %matchLength.i.i.i, align 2, !noalias !22
  %conv2.i.i.i = zext i16 %178 to i32
  %add.i.i4.i = add nuw nsw i32 %conv2.i.i.i, 3
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.rhs.cast6.i.i33, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = ashr exact i32 %sub.ptr.sub.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %174, i32 %sub.ptr.div.i.i.i)
  %cmp.i.i.i34 = icmp eq i32 %174, %sub.ptr.div.i.i.i
  br i1 %cmp.i.i.i34, label %if.then.i.i5.i, label %while.body.i.i.ZSTD_getSequenceLength.exit.i.i_crit_edge

while.body.i.i.ZSTD_getSequenceLength.exit.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ZSTD_getSequenceLength.exit.i.i

if.then.i.i5.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %179 = ptrtoint ptr %longLengthID.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %longLengthID.i.i, align 4, !noalias !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %180)
  %cond.i.i35 = icmp eq i32 %180, 2
  %add15.i.i.i = add nuw nsw i32 %conv2.i.i.i, 65538
  %spec.select.i.i36 = select i1 %cond.i.i35, i32 %add15.i.i.i, i32 %add.i.i4.i
  br label %ZSTD_getSequenceLength.exit.i.i

ZSTD_getSequenceLength.exit.i.i:                  ; preds = %if.then.i.i5.i, %while.body.i.i.ZSTD_getSequenceLength.exit.i.i_crit_edge
  %seqLen.sroa.5.0.i.i = phi i32 [ %add.i.i4.i, %while.body.i.i.ZSTD_getSequenceLength.exit.i.i_crit_edge ], [ %spec.select.i.i36, %if.then.i.i5.i ]
  %add1.i.i = add i32 %seqLen.sroa.5.0.i.i, %matchLengthSum.05.i.i
  %incdec.ptr.i.i = getelementptr %struct.seqDef_s, ptr %sp.04.i.i, i32 1
  %sub.ptr.rhs.cast.i6.i = ptrtoint ptr %incdec.ptr.i.i to i32
  %sub.ptr.sub.i7.i = sub i32 %sub.ptr.lhs.cast.i3.i, %sub.ptr.rhs.cast.i6.i
  %cmp.i8.i = icmp sgt i32 %sub.ptr.sub.i7.i, 0
  br i1 %cmp.i8.i, label %ZSTD_getSequenceLength.exit.i.i.while.body.i.i_crit_edge, label %ZSTD_getSequenceLength.exit.i.i.ZSTD_seqDecompressedSize.exit.i_crit_edge

ZSTD_getSequenceLength.exit.i.i.ZSTD_seqDecompressedSize.exit.i_crit_edge: ; preds = %ZSTD_getSequenceLength.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ZSTD_seqDecompressedSize.exit.i

ZSTD_getSequenceLength.exit.i.i.while.body.i.i_crit_edge: ; preds = %ZSTD_getSequenceLength.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

ZSTD_seqDecompressedSize.exit.i:                  ; preds = %ZSTD_getSequenceLength.exit.i.i.ZSTD_seqDecompressedSize.exit.i_crit_edge, %if.then14.i.ZSTD_seqDecompressedSize.exit.i_crit_edge
  %matchLengthSum.0.lcssa.i.i = phi i32 [ 0, %if.then14.i.ZSTD_seqDecompressedSize.exit.i_crit_edge ], [ %add1.i.i, %ZSTD_getSequenceLength.exit.i.i.ZSTD_seqDecompressedSize.exit.i_crit_edge ]
  %add2.i9.i = add i32 %matchLengthSum.0.lcssa.i.i, %litSize.2.i
  %sub.ptr.rhs.cast18.i = ptrtoint ptr %op.0.i to i32
  %sub.ptr.sub19.i = sub i32 %sub.ptr.lhs.cast17.i, %sub.ptr.rhs.cast18.i
  %spec.select.i37 = select i1 %tobool20.not.i, i1 %tobool.i, i1 false
  %add.ptr.i10.i = getelementptr i8, ptr %op.0.i, i32 %sub.ptr.sub19.i
  %add.ptr1.i.i = getelementptr i8, ptr %op.0.i, i32 3
  %sub.ptr.lhs.cast.i11.i = ptrtoint ptr %add.ptr.i10.i to i32
  %gepdiff.i.i = add i32 %sub.ptr.sub19.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %writeLitEntropy.0.i)
  %tobool.not.i.i12.i = icmp eq i32 %writeLitEntropy.0.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i12.i, i32 0, i32 200
  %sub.i.i.i = sub nuw nsw i32 1024, %cond.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %litSize.2.i)
  %cmp.not.i.i.i = icmp ugt i32 %sub.i.i.i, %litSize.2.i
  %add.i.i13.i = select i1 %cmp.not.i.i.i, i32 3, i32 4
  %sub1.i.i.i = sub nuw nsw i32 16384, %cond.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i.i.i, i32 %litSize.2.i)
  %cmp2.i.i.i = icmp ule i32 %sub1.i.i.i, %litSize.2.i
  %conv3.i.i.i = zext i1 %cmp2.i.i.i to i32
  %add4.i.i.i = add nuw nsw i32 %add.i.i13.i, %conv3.i.i.i
  %add.ptr5.i.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %add4.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add4.i.i.i)
  %cmp6.i.i.i = icmp eq i32 %add4.i.i.i, 3
  br i1 %tobool.not.i.i12.i, label %ZSTD_seqDecompressedSize.exit.i.cond.end.i.i.i_crit_edge, label %cond.true.i.i.i

ZSTD_seqDecompressedSize.exit.i.cond.end.i.i.i_crit_edge: ; preds = %ZSTD_seqDecompressedSize.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i.i.i

cond.true.i.i.i:                                  ; preds = %ZSTD_seqDecompressedSize.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %181 = ptrtoint ptr %entropyMetadata to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %entropyMetadata, align 4
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.true.i.i.i, %ZSTD_seqDecompressedSize.exit.i.cond.end.i.i.i_crit_edge
  %cond10.i.i.i = phi i32 [ %182, %cond.true.i.i.i ], [ 3, %ZSTD_seqDecompressedSize.exit.i.cond.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %litSize.2.i)
  %cmp11.i.i.i = icmp eq i32 %litSize.2.i, 0
  br i1 %cmp11.i.i.i, label %cond.end.i.i.i.if.then.i.i15.i_crit_edge, label %lor.lhs.false.i.i.i

cond.end.i.i.i.if.then.i.i15.i_crit_edge:         ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i15.i

lor.lhs.false.i.i.i:                              ; preds = %cond.end.i.i.i
  %183 = ptrtoint ptr %entropyMetadata to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %entropyMetadata, align 4
  %185 = zext i32 %184 to i64
  call void @__sanitizer_cov_trace_switch(i64 %185, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %184, label %if.end21.i.i.i [
    i32 0, label %lor.lhs.false.i.i.i.if.then.i.i15.i_crit_edge
    i32 1, label %if.then19.i.i.i
  ]

lor.lhs.false.i.i.i.if.then.i.i15.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i15.i

if.then.i.i15.i:                                  ; preds = %lor.lhs.false.i.i.i.if.then.i.i15.i_crit_edge, %cond.end.i.i.i.if.then.i.i15.i_crit_edge
  %call.i.i14.i = call i32 @ZSTD_noCompressLiterals(ptr noundef %add.ptr1.i.i, i32 noundef %gepdiff.i.i, ptr noundef %lp.0.i, i32 noundef %litSize.2.i) #4
  br label %ZSTD_compressSubBlock_literal.exit.i.i

if.then19.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call20.i.i.i = call i32 @ZSTD_compressRleLiteralsBlock(ptr noundef %add.ptr1.i.i, i32 noundef %gepdiff.i.i, ptr noundef %lp.0.i, i32 noundef %litSize.2.i) #4
  br label %ZSTD_compressSubBlock_literal.exit.i.i

if.end21.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %tobool.not.not.i.i.i = xor i1 %tobool.not.i.i12.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %184)
  %cmp24.i.i.i = icmp eq i32 %184, 2
  %or.cond.i.i.i = select i1 %tobool.not.not.i.i.i, i1 %cmp24.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.then26.i.i.i, label %if.end21.i.i.i.if.end31.i.i.i_crit_edge

if.end21.i.i.i.if.end31.i.i.i_crit_edge:          ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31.i.i.i

if.then26.i.i.i:                                  ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %186 = ptrtoint ptr %hufDesSize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %hufDesSize.i.i.i, align 4
  %188 = call ptr @memcpy(ptr %add.ptr5.i.i.i, ptr %hufDesBuffer.i.i.i, i32 %187)
  %189 = load i32, ptr %hufDesSize.i.i.i, align 4
  %add.ptr28.i.i.i = getelementptr i8, ptr %add.ptr5.i.i.i, i32 %189
  br label %if.end31.i.i.i

if.end31.i.i.i:                                   ; preds = %if.then26.i.i.i, %if.end21.i.i.i.if.end31.i.i.i_crit_edge
  %op.0.i.i.i = phi ptr [ %add.ptr28.i.i.i, %if.then26.i.i.i ], [ %add.ptr5.i.i.i, %if.end21.i.i.i.if.end31.i.i.i_crit_edge ]
  %cLitSize.0.i.i.i = phi i32 [ %189, %if.then26.i.i.i ], [ 0, %if.end21.i.i.i.if.end31.i.i.i_crit_edge ]
  %sub.ptr.rhs.cast.i.i17.i = ptrtoint ptr %op.0.i.i.i to i32
  %sub.ptr.sub.i.i18.i = sub i32 %sub.ptr.lhs.cast.i11.i, %sub.ptr.rhs.cast.i.i17.i
  br i1 %cmp6.i.i.i, label %cond.true33.i.i.i, label %cond.false35.i.i.i

cond.true33.i.i.i:                                ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call34.i.i.i = call i32 @HUF_compress1X_usingCTable(ptr noundef %op.0.i.i.i, i32 noundef %sub.ptr.sub.i.i18.i, ptr noundef %lp.0.i, i32 noundef %litSize.2.i, ptr noundef %98) #4
  br label %cond.end40.i.i.i

cond.false35.i.i.i:                               ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call39.i.i.i = call i32 @HUF_compress4X_usingCTable(ptr noundef %op.0.i.i.i, i32 noundef %sub.ptr.sub.i.i18.i, ptr noundef %lp.0.i, i32 noundef %litSize.2.i, ptr noundef %98) #4
  br label %cond.end40.i.i.i

cond.end40.i.i.i:                                 ; preds = %cond.false35.i.i.i, %cond.true33.i.i.i
  %cond41.i.i.i = phi i32 [ %call34.i.i.i, %cond.true33.i.i.i ], [ %call39.i.i.i, %cond.false35.i.i.i ]
  %add.ptr42.i.i.i = getelementptr i8, ptr %op.0.i.i.i, i32 %cond41.i.i.i
  %add43.i.i.i = add i32 %cond41.i.i.i, %cLitSize.0.i.i.i
  %190 = add i32 %cond41.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -120, i32 %190)
  %191 = icmp ult i32 %190, -120
  br i1 %191, label %if.end50.i.i.i, label %cond.end40.i.i.i.do.cond57.i_crit_edge

cond.end40.i.i.i.do.cond57.i_crit_edge:           ; preds = %cond.end40.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond57.i

if.end50.i.i.i:                                   ; preds = %cond.end40.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add43.i.i.i, i32 %litSize.2.i)
  %cmp53.not.i.i.i = icmp ult i32 %add43.i.i.i, %litSize.2.i
  %or.cond2.i.i.i = select i1 %tobool.not.not.i.i.i, i1 true, i1 %cmp53.not.i.i.i
  br i1 %or.cond2.i.i.i, label %if.end57.i.i.i, label %if.then55.i.i.i

if.then55.i.i.i:                                  ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call56.i.i.i = call i32 @ZSTD_noCompressLiterals(ptr noundef %add.ptr1.i.i, i32 noundef %gepdiff.i.i, ptr noundef %lp.0.i, i32 noundef %litSize.2.i) #4
  br label %ZSTD_compressSubBlock_literal.exit.i.i

if.end57.i.i.i:                                   ; preds = %if.end50.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %add43.i.i.i)
  %cmp58.i.i.i = icmp ugt i32 %add43.i.i.i, 1023
  %add60.i.i.i = select i1 %cmp58.i.i.i, i32 4, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %add43.i.i.i)
  %cmp61.i.i.i = icmp ugt i32 %add43.i.i.i, 16383
  %conv62.i.i.i = zext i1 %cmp61.i.i.i to i32
  %add63.i.i.i = add nuw nsw i32 %add60.i.i.i, %conv62.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i.i.i, i32 %add63.i.i.i)
  %cmp64.i.i.i = icmp ult i32 %add4.i.i.i, %add63.i.i.i
  br i1 %cmp64.i.i.i, label %if.then66.i.i.i, label %cleanup.cont.i.i.i

if.then66.i.i.i:                                  ; preds = %if.end57.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call67.i.i.i = call i32 @ZSTD_noCompressLiterals(ptr noundef %add.ptr1.i.i, i32 noundef %gepdiff.i.i, ptr noundef %lp.0.i, i32 noundef %litSize.2.i) #4
  br label %ZSTD_compressSubBlock_literal.exit.i.i

cleanup.cont.i.i.i:                               ; preds = %if.end57.i.i.i
  %192 = zext i32 %add4.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %192, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %add4.i.i.i, label %cleanup.cont.i.i.i.sw.epilog.i.i.i_crit_edge [
    i32 3, label %sw.bb.i.i.i
    i32 4, label %sw.bb76.i.i.i
    i32 5, label %sw.bb84.i.i.i
  ]

cleanup.cont.i.i.i.sw.epilog.i.i.i_crit_edge:     ; preds = %cleanup.cont.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i.i

sw.bb.i.i.i:                                      ; preds = %cleanup.cont.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %shl.i.i.i = select i1 %cmp6.i.i.i, i32 0, i32 4
  %shl71.i.i.i = shl i32 %litSize.2.i, 4
  %shl73.i.i.i = shl i32 %add43.i.i.i, 14
  %add70.i.i.i = or i32 %shl.i.i.i, %shl71.i.i.i
  %add72.i.i.i = add i32 %add70.i.i.i, %cond10.i.i.i
  %add74.i.i.i = add i32 %add72.i.i.i, %shl73.i.i.i
  %conv.i3.i.i.i = trunc i32 %add74.i.i.i to i16
  %193 = call i16 @llvm.bswap.i16(i16 %conv.i3.i.i.i) #4
  %194 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_storeN_noabort(i32 %194, i32 2)
  store i16 %193, ptr %add.ptr1.i.i, align 1
  %shr.i.i.i.i = lshr i32 %add74.i.i.i, 16
  %conv1.i.i.i.i = trunc i32 %shr.i.i.i.i to i8
  %arrayidx.i.i.i19.i = getelementptr i8, ptr %op.0.i, i32 5
  %195 = ptrtoint ptr %arrayidx.i.i.i19.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %conv1.i.i.i.i, ptr %arrayidx.i.i.i19.i, align 1
  br label %sw.epilog.i.i.i

sw.bb76.i.i.i:                                    ; preds = %cleanup.cont.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %shl79.i.i.i = shl i32 %litSize.2.i, 4
  %shl81.i.i.i = shl i32 %add43.i.i.i, 18
  %add78.i.i.i = or i32 %shl79.i.i.i, 8
  %add80.i.i.i = add i32 %add78.i.i.i, %cond10.i.i.i
  %add82.i.i.i = add i32 %add80.i.i.i, %shl81.i.i.i
  %196 = call i32 @llvm.bswap.i32(i32 %add82.i.i.i) #4
  %197 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_storeN_noabort(i32 %197, i32 4)
  store i32 %196, ptr %add.ptr1.i.i, align 1
  br label %sw.epilog.i.i.i

sw.bb84.i.i.i:                                    ; preds = %cleanup.cont.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %shl87.i.i.i = shl i32 %litSize.2.i, 4
  %shl89.i.i.i = shl i32 %add43.i.i.i, 22
  %add86.i.i.i = or i32 %shl87.i.i.i, 12
  %add88.i.i.i = add i32 %add86.i.i.i, %cond10.i.i.i
  %add90.i.i.i = add i32 %add88.i.i.i, %shl89.i.i.i
  %198 = call i32 @llvm.bswap.i32(i32 %add90.i.i.i) #4
  %199 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_storeN_noabort(i32 %199, i32 4)
  store i32 %198, ptr %add.ptr1.i.i, align 1
  %shr.i.i.i = lshr i32 %add43.i.i.i, 10
  %conv91.i.i.i = trunc i32 %shr.i.i.i to i8
  %arrayidx.i.i.i = getelementptr i8, ptr %op.0.i, i32 7
  %200 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %conv91.i.i.i, ptr %arrayidx.i.i.i, align 1
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %sw.bb84.i.i.i, %sw.bb76.i.i.i, %sw.bb.i.i.i, %cleanup.cont.i.i.i.sw.epilog.i.i.i_crit_edge
  %sub.ptr.lhs.cast93.i.i.i = ptrtoint ptr %add.ptr42.i.i.i to i32
  %sub.ptr.rhs.cast94.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub95.i.i.i = sub i32 %sub.ptr.lhs.cast93.i.i.i, %sub.ptr.rhs.cast94.i.i.i
  br label %ZSTD_compressSubBlock_literal.exit.i.i

ZSTD_compressSubBlock_literal.exit.i.i:           ; preds = %sw.epilog.i.i.i, %if.then66.i.i.i, %if.then55.i.i.i, %if.then19.i.i.i, %if.then.i.i15.i
  %tobool40.not.i = phi i1 [ false, %sw.epilog.i.i.i ], [ true, %if.then66.i.i.i ], [ true, %if.then55.i.i.i ], [ true, %if.then19.i.i.i ], [ true, %if.then.i.i15.i ]
  %retval.1.i.i20.i = phi i32 [ %sub.ptr.sub95.i.i.i, %sw.epilog.i.i.i ], [ %call67.i.i.i, %if.then66.i.i.i ], [ %call56.i.i.i, %if.then55.i.i.i ], [ %call20.i.i.i, %if.then19.i.i.i ], [ %call.i.i14.i, %if.then.i.i15.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %retval.1.i.i20.i)
  %cmp.i.i21.i = icmp ult i32 %retval.1.i.i20.i, -119
  br i1 %cmp.i.i21.i, label %do.end.i.i38, label %ZSTD_compressSubBlock_literal.exit.i.i.cleanup12_crit_edge

ZSTD_compressSubBlock_literal.exit.i.i.cleanup12_crit_edge: ; preds = %ZSTD_compressSubBlock_literal.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup12

do.end.i.i38:                                     ; preds = %ZSTD_compressSubBlock_literal.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i.i20.i)
  %cmp.i22.i = icmp eq i32 %retval.1.i.i20.i, 0
  br i1 %cmp.i22.i, label %do.end.i.i38.do.cond57.i_crit_edge, label %cleanup.cont8.i.i

do.end.i.i38.do.cond57.i_crit_edge:               ; preds = %do.end.i.i38
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond57.i

cleanup.cont8.i.i:                                ; preds = %do.end.i.i38
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %retval.1.i.i20.i
  %sub.ptr.rhs.cast10.i.i = ptrtoint ptr %add.ptr5.i.i to i32
  %sub.ptr.sub11.i.i = sub i32 %sub.ptr.lhs.cast.i11.i, %sub.ptr.rhs.cast10.i.i
  %201 = ptrtoint ptr %cParams.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %cParams.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %202)
  %cmp.i68.i.i = icmp ugt i32 %202, 25
  %conv.i69.i.i = zext i1 %cmp.i68.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub11.i.i)
  %cmp1.i.i.i = icmp slt i32 %sub.ptr.sub11.i.i, 4
  br i1 %cmp1.i.i.i, label %cleanup.cont8.i.i.cleanup12_crit_edge, label %if.end.i.i25.i

cleanup.cont8.i.i.cleanup12_crit_edge:            ; preds = %cleanup.cont8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup12

if.end.i.i25.i:                                   ; preds = %cleanup.cont8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %seqCount.1.i)
  %cmp3.i.i.i = icmp ult i32 %seqCount.1.i, 127
  br i1 %cmp3.i.i.i, label %if.end20.i.i.i, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32512, i32 %seqCount.1.i)
  %cmp7.i.i.i = icmp ult i32 %seqCount.1.i, 32512
  br i1 %cmp7.i.i.i, label %if.then9.i.i26.i, label %if.else14.i.i.i

if.then9.i.i26.i:                                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %shr.i73.i.i = lshr i32 %seqCount.1.i, 8
  %203 = trunc i32 %shr.i73.i.i to i8
  %conv10.i.i.i = xor i8 %203, -128
  %204 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %conv10.i.i.i, ptr %add.ptr5.i.i, align 1
  %conv11.i.i.i = trunc i32 %seqCount.1.i to i8
  %arrayidx12.i.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 1
  %205 = ptrtoint ptr %arrayidx12.i.i.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %conv11.i.i.i, ptr %arrayidx12.i.i.i, align 1
  %add.ptr13.i.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 2
  br label %if.end27.i.i.i

if.else14.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %206 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 -1, ptr %add.ptr5.i.i, align 1
  %add.ptr16.i.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 1
  %207 = trunc i32 %seqCount.1.i to i16
  %conv17.i.i.i = add i16 %207, -32512
  %208 = call i16 @llvm.bswap.i16(i16 %conv17.i.i.i) #4
  %209 = ptrtoint ptr %add.ptr16.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %209, i32 2)
  store i16 %208, ptr %add.ptr16.i.i.i, align 1
  %add.ptr18.i.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 3
  br label %if.end27.i.i.i

if.end20.i.i.i:                                   ; preds = %if.end.i.i25.i
  %conv6.i.i.i = trunc i32 %seqCount.1.i to i8
  %incdec.ptr.i.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 1
  %210 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %conv6.i.i.i, ptr %add.ptr5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seqCount.1.i)
  %cmp21.i.i.i = icmp eq i32 %seqCount.1.i, 0
  br i1 %cmp21.i.i.i, label %if.end20.i.i.i.ZSTD_compressSubBlock.exit.i_crit_edge, label %if.end20.i.i.i.if.end27.i.i.i_crit_edge

if.end20.i.i.i.if.end27.i.i.i_crit_edge:          ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27.i.i.i

if.end20.i.i.i.ZSTD_compressSubBlock.exit.i_crit_edge: ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ZSTD_compressSubBlock.exit.i

if.end27.i.i.i:                                   ; preds = %if.end20.i.i.i.if.end27.i.i.i_crit_edge, %if.else14.i.i.i, %if.then9.i.i26.i
  %op.0127.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %if.end20.i.i.i.if.end27.i.i.i_crit_edge ], [ %add.ptr18.i.i.i, %if.else14.i.i.i ], [ %add.ptr13.i.i.i, %if.then9.i.i26.i ]
  %incdec.ptr28.i.i.i = getelementptr i8, ptr %op.0127.i.i.i, i32 1
  br i1 %tobool.not.i.i.i, label %if.end39.i.i.i, label %if.end39.i.i.thread.i

if.end39.i.i.i:                                   ; preds = %if.end27.i.i.i
  %211 = ptrtoint ptr %op.0127.i.i.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 -4, ptr %op.0127.i.i.i, align 1
  %sub.ptr.rhs.cast41.i.i.i = ptrtoint ptr %incdec.ptr28.i.i.i to i32
  %sub.ptr.sub42.i.i.i = sub i32 %sub.ptr.lhs.cast.i11.i, %sub.ptr.rhs.cast41.i.i.i
  %call46.i.i.i = call i32 @ZSTD_encodeSequences(ptr noundef %incdec.ptr28.i.i.i, i32 noundef %sub.ptr.sub42.i.i.i, ptr noundef %matchlengthCTable.i.i.i, ptr noundef %mlCodePtr.0.i, ptr noundef %fse.i.i, ptr noundef %ofCodePtr.0.i, ptr noundef %litlengthCTable.i.i.i, ptr noundef %llCodePtr.0.i, ptr noundef %sp.0.i, i32 noundef %seqCount.1.i, i32 noundef %conv.i69.i.i, i32 noundef %100) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call46.i.i.i)
  %cmp.i.i.i32.i = icmp ult i32 %call46.i.i.i, -119
  br i1 %cmp.i.i.i32.i, label %do.end.i.i.i, label %if.end39.i.i.i.cleanup12_crit_edge

if.end39.i.i.i.cleanup12_crit_edge:               ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup12

if.end39.i.i.thread.i:                            ; preds = %if.end27.i.i.i
  %212 = ptrtoint ptr %fseMetadata.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %fseMetadata.i, align 4
  %214 = ptrtoint ptr %ofType.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %ofType.i.i.i, align 4
  %216 = ptrtoint ptr %mlType.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %mlType.i.i.i, align 4
  %shl.i74.i.i = shl i32 %213, 6
  %shl31.i.i.i = shl i32 %215, 4
  %add32.i.i.i = add i32 %shl31.i.i.i, %shl.i74.i.i
  %shl33.i.i.i = shl i32 %217, 2
  %add34.i.i.i = add i32 %add32.i.i.i, %shl33.i.i.i
  %conv35.i.i.i = trunc i32 %add34.i.i.i to i8
  %218 = ptrtoint ptr %op.0127.i.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %conv35.i.i.i, ptr %op.0127.i.i.i, align 1
  %219 = ptrtoint ptr %fseTablesSize.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %fseTablesSize.i, align 4
  %221 = call ptr @memcpy(ptr %incdec.ptr28.i.i.i, ptr %fseTablesBuffer.i.i, i32 %220)
  %222 = load i32, ptr %fseTablesSize.i, align 4
  %add.ptr37.i.i.i = getelementptr i8, ptr %incdec.ptr28.i.i.i, i32 %222
  %sub.ptr.rhs.cast41.i.i183.i = ptrtoint ptr %add.ptr37.i.i.i to i32
  %sub.ptr.sub42.i.i184.i = sub i32 %sub.ptr.lhs.cast.i11.i, %sub.ptr.rhs.cast41.i.i183.i
  %call46.i.i185.i = call i32 @ZSTD_encodeSequences(ptr noundef %add.ptr37.i.i.i, i32 noundef %sub.ptr.sub42.i.i184.i, ptr noundef %matchlengthCTable.i.i.i, ptr noundef %mlCodePtr.0.i, ptr noundef %fse.i.i, ptr noundef %ofCodePtr.0.i, ptr noundef %litlengthCTable.i.i.i, ptr noundef %llCodePtr.0.i, ptr noundef %sp.0.i, i32 noundef %seqCount.1.i, i32 noundef %conv.i69.i.i, i32 noundef %100) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call46.i.i185.i)
  %cmp.i.i.i32186.i = icmp ult i32 %call46.i.i185.i, -119
  br i1 %cmp.i.i.i32186.i, label %land.lhs.true.i.i.i, label %if.end39.i.i.thread.i.cleanup12_crit_edge

if.end39.i.i.thread.i.cleanup12_crit_edge:        ; preds = %if.end39.i.i.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup12

do.end.i.i.i:                                     ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr51.i.i.i = getelementptr i8, ptr %incdec.ptr28.i.i.i, i32 %call46.i.i.i
  br label %cleanup.cont63.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end39.i.i.thread.i
  %add.ptr51.i.i191.i = getelementptr i8, ptr %add.ptr37.i.i.i, i32 %call46.i.i185.i
  %223 = ptrtoint ptr %lastCountSize.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %lastCountSize.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool53.not.i.i.i = icmp ne i32 %224, 0
  %add56.i.i.i = add i32 %224, %call46.i.i185.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add56.i.i.i)
  %cmp57.i.i.i = icmp ult i32 %add56.i.i.i, 4
  %or.cond.i75.i.i = and i1 %tobool53.not.i.i.i, %cmp57.i.i.i
  br i1 %or.cond.i75.i.i, label %land.lhs.true.i.i.i.do.cond57.i_crit_edge, label %land.lhs.true.i.i.i.cleanup.cont63.i.i.i_crit_edge

land.lhs.true.i.i.i.cleanup.cont63.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.cont63.i.i.i

land.lhs.true.i.i.i.do.cond57.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond57.i

cleanup.cont63.i.i.i:                             ; preds = %land.lhs.true.i.i.i.cleanup.cont63.i.i.i_crit_edge, %do.end.i.i.i
  %add.ptr51.i.i194.i = phi ptr [ %add.ptr51.i.i191.i, %land.lhs.true.i.i.i.cleanup.cont63.i.i.i_crit_edge ], [ %add.ptr51.i.i.i, %do.end.i.i.i ]
  %sub.ptr.lhs.cast64.i.i.i = ptrtoint ptr %add.ptr51.i.i194.i to i32
  %sub.ptr.rhs.cast65.i.i.i = ptrtoint ptr %op.0127.i.i.i to i32
  %sub.ptr.sub66.i.i.i = sub i32 %sub.ptr.lhs.cast64.i.i.i, %sub.ptr.rhs.cast65.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub66.i.i.i)
  %cmp67.i.i.i = icmp slt i32 %sub.ptr.sub66.i.i.i, 4
  br i1 %cmp67.i.i.i, label %cleanup.cont63.i.i.i.do.cond57.i_crit_edge, label %ZSTD_compressSubBlock_sequences.exit.i.i

cleanup.cont63.i.i.i.do.cond57.i_crit_edge:       ; preds = %cleanup.cont63.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond57.i

ZSTD_compressSubBlock_sequences.exit.i.i:         ; preds = %cleanup.cont63.i.i.i
  %sub.ptr.sub73.i.i.i = sub i32 %sub.ptr.lhs.cast64.i.i.i, %sub.ptr.rhs.cast10.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %sub.ptr.sub73.i.i.i)
  %cmp.i76.i.i = icmp ult i32 %sub.ptr.sub73.i.i.i, -119
  br i1 %cmp.i76.i.i, label %do.end23.i.i, label %ZSTD_compressSubBlock_sequences.exit.i.i.cleanup12_crit_edge

ZSTD_compressSubBlock_sequences.exit.i.i.cleanup12_crit_edge: ; preds = %ZSTD_compressSubBlock_sequences.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup12

do.end23.i.i:                                     ; preds = %ZSTD_compressSubBlock_sequences.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub73.i.i.i)
  %cmp24.i.i = icmp eq i32 %sub.ptr.sub73.i.i.i, 0
  br i1 %cmp24.i.i, label %do.end23.i.i.do.cond57.i_crit_edge, label %do.end23.i.i.ZSTD_compressSubBlock.exit.i_crit_edge

do.end23.i.i.ZSTD_compressSubBlock.exit.i_crit_edge: ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ZSTD_compressSubBlock.exit.i

do.end23.i.i.do.cond57.i_crit_edge:               ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond57.i

ZSTD_compressSubBlock.exit.i:                     ; preds = %do.end23.i.i.ZSTD_compressSubBlock.exit.i_crit_edge, %if.end20.i.i.i.ZSTD_compressSubBlock.exit.i_crit_edge
  %tobool43.not.i = phi i1 [ true, %if.end20.i.i.i.ZSTD_compressSubBlock.exit.i_crit_edge ], [ false, %do.end23.i.i.ZSTD_compressSubBlock.exit.i_crit_edge ]
  %retval.2.i96116.i.i = phi i32 [ 1, %if.end20.i.i.i.ZSTD_compressSubBlock.exit.i_crit_edge ], [ %sub.ptr.sub73.i.i.i, %do.end23.i.i.ZSTD_compressSubBlock.exit.i_crit_edge ]
  %add.ptr27.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 %retval.2.i96116.i.i
  %sub.ptr.lhs.cast31.i.i = ptrtoint ptr %add.ptr27.i.i to i32
  %sub.ptr.sub33.i.i = sub i32 %sub.ptr.lhs.cast31.i.i, %sub.ptr.rhs.cast18.i
  %sub.i.i = shl i32 %sub.ptr.sub33.i.i, 3
  %shl.i.i = select i1 %spec.select.i37, i32 -19, i32 -20
  %add34.i.i = add i32 %sub.i.i, %shl.i.i
  %conv.i78.i.i = trunc i32 %add34.i.i to i16
  %225 = call i16 @llvm.bswap.i16(i16 %conv.i78.i.i) #4
  %226 = ptrtoint ptr %op.0.i to i32
  call void @__asan_storeN_noabort(i32 %226, i32 2)
  store i16 %225, ptr %op.0.i, align 1
  %shr.i79.i.i = lshr i32 %add34.i.i, 16
  %conv1.i.i.i = trunc i32 %shr.i79.i.i to i8
  %arrayidx.i80.i.i = getelementptr i8, ptr %op.0.i, i32 2
  %227 = ptrtoint ptr %arrayidx.i80.i.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %conv1.i.i.i, ptr %arrayidx.i80.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %sub.ptr.sub33.i.i)
  %cmp.i33.i = icmp ult i32 %sub.ptr.sub33.i.i, -119
  br i1 %cmp.i33.i, label %do.end.i39, label %ZSTD_compressSubBlock.exit.i.cleanup12_crit_edge

ZSTD_compressSubBlock.exit.i.cleanup12_crit_edge: ; preds = %ZSTD_compressSubBlock.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup12

do.end.i39:                                       ; preds = %ZSTD_compressSubBlock.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub33.i.i)
  %cmp28.not.i = icmp ne i32 %sub.ptr.sub33.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub33.i.i, i32 %add2.i9.i)
  %cmp30.i = icmp ult i32 %sub.ptr.sub33.i.i, %add2.i9.i
  %or.cond.i = select i1 %cmp28.not.i, i1 %cmp30.i, i1 false
  br i1 %or.cond.i, label %if.then32.i, label %do.end.i39.do.cond57.i_crit_edge

do.end.i39.do.cond57.i_crit_edge:                 ; preds = %do.end.i39
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond57.i

if.then32.i:                                      ; preds = %do.end.i39
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr33.i = getelementptr i8, ptr %ip.0.i, i32 %add2.i9.i
  %add.ptr35.i = getelementptr i8, ptr %lp.0.i, i32 %litSize.2.i
  %spec.select1.i = select i1 %tobool40.not.i, i32 %writeLitEntropy.0.i, i32 0
  %spec.select2.i = select i1 %tobool43.not.i, i32 %writeSeqEntropy.0.i, i32 0
  br label %do.cond57.i

do.cond57.i:                                      ; preds = %if.then32.i, %do.end.i39.do.cond57.i_crit_edge, %do.end23.i.i.do.cond57.i_crit_edge, %cleanup.cont63.i.i.i.do.cond57.i_crit_edge, %land.lhs.true.i.i.i.do.cond57.i_crit_edge, %do.end.i.i38.do.cond57.i_crit_edge, %cond.end40.i.i.i.do.cond57.i_crit_edge, %ZSTD_estimateSubBlockSize.exit.i.do.cond57.i_crit_edge
  %sp.4.ph.i = phi ptr [ %sp.0.i, %ZSTD_estimateSubBlockSize.exit.i.do.cond57.i_crit_edge ], [ %add.ptr.i.i, %if.then32.i ], [ %sp.0.i, %do.end.i39.do.cond57.i_crit_edge ], [ %sp.0.i, %cleanup.cont63.i.i.i.do.cond57.i_crit_edge ], [ %sp.0.i, %land.lhs.true.i.i.i.do.cond57.i_crit_edge ], [ %sp.0.i, %do.end23.i.i.do.cond57.i_crit_edge ], [ %sp.0.i, %cond.end40.i.i.i.do.cond57.i_crit_edge ], [ %sp.0.i, %do.end.i.i38.do.cond57.i_crit_edge ]
  %lp.4.ph.i = phi ptr [ %lp.0.i, %ZSTD_estimateSubBlockSize.exit.i.do.cond57.i_crit_edge ], [ %add.ptr35.i, %if.then32.i ], [ %lp.0.i, %do.end.i39.do.cond57.i_crit_edge ], [ %lp.0.i, %cleanup.cont63.i.i.i.do.cond57.i_crit_edge ], [ %lp.0.i, %land.lhs.true.i.i.i.do.cond57.i_crit_edge ], [ %lp.0.i, %do.end23.i.i.do.cond57.i_crit_edge ], [ %lp.0.i, %cond.end40.i.i.i.do.cond57.i_crit_edge ], [ %lp.0.i, %do.end.i.i38.do.cond57.i_crit_edge ]
  %ip.4.ph.i = phi ptr [ %ip.0.i, %ZSTD_estimateSubBlockSize.exit.i.do.cond57.i_crit_edge ], [ %add.ptr33.i, %if.then32.i ], [ %ip.0.i, %do.end.i39.do.cond57.i_crit_edge ], [ %ip.0.i, %cleanup.cont63.i.i.i.do.cond57.i_crit_edge ], [ %ip.0.i, %land.lhs.true.i.i.i.do.cond57.i_crit_edge ], [ %ip.0.i, %do.end23.i.i.do.cond57.i_crit_edge ], [ %ip.0.i, %cond.end40.i.i.i.do.cond57.i_crit_edge ], [ %ip.0.i, %do.end.i.i38.do.cond57.i_crit_edge ]
  %op.4.ph.i = phi ptr [ %op.0.i, %ZSTD_estimateSubBlockSize.exit.i.do.cond57.i_crit_edge ], [ %add.ptr27.i.i, %if.then32.i ], [ %op.0.i, %do.end.i39.do.cond57.i_crit_edge ], [ %op.0.i, %cleanup.cont63.i.i.i.do.cond57.i_crit_edge ], [ %op.0.i, %land.lhs.true.i.i.i.do.cond57.i_crit_edge ], [ %op.0.i, %do.end23.i.i.do.cond57.i_crit_edge ], [ %op.0.i, %cond.end40.i.i.i.do.cond57.i_crit_edge ], [ %op.0.i, %do.end.i.i38.do.cond57.i_crit_edge ]
  %llCodePtr.4.ph.i = phi ptr [ %llCodePtr.0.i, %ZSTD_estimateSubBlockSize.exit.i.do.cond57.i_crit_edge ], [ %add.ptr.i2.i.i.i, %if.then32.i ], [ %llCodePtr.0.i, %do.end.i39.do.cond57.i_crit_edge ], [ %llCodePtr.0.i, %cleanup.cont63.i.i.i.do.cond57.i_crit_edge ], [ %llCodePtr.0.i, %land.lhs.true.i.i.i.do.cond57.i_crit_edge ], [ %llCodePtr.0.i, %do.end23.i.i.do.cond57.i_crit_edge ], [ %llCodePtr.0.i, %cond.end40.i.i.i.do.cond57.i_crit_edge ], [ %llCodePtr.0.i, %do.end.i.i38.do.cond57.i_crit_edge ]
  %mlCodePtr.4.ph.i = phi ptr [ %mlCodePtr.0.i, %ZSTD_estimateSubBlockSize.exit.i.do.cond57.i_crit_edge ], [ %add.ptr.i32.i.i.i, %if.then32.i ], [ %mlCodePtr.0.i, %do.end.i39.do.cond57.i_crit_edge ], [ %mlCodePtr.0.i, %cleanup.cont63.i.i.i.do.cond57.i_crit_edge ], [ %mlCodePtr.0.i, %land.lhs.true.i.i.i.do.cond57.i_crit_edge ], [ %mlCodePtr.0.i, %do.end23.i.i.do.cond57.i_crit_edge ], [ %mlCodePtr.0.i, %cond.end40.i.i.i.do.cond57.i_crit_edge ], [ %mlCodePtr.0.i, %do.end.i.i38.do.cond57.i_crit_edge ]
  %ofCodePtr.4.ph.i = phi ptr [ %ofCodePtr.0.i, %ZSTD_estimateSubBlockSize.exit.i.do.cond57.i_crit_edge ], [ %add.ptr.i.i.i.i, %if.then32.i ], [ %ofCodePtr.0.i, %do.end.i39.do.cond57.i_crit_edge ], [ %ofCodePtr.0.i, %cleanup.cont63.i.i.i.do.cond57.i_crit_edge ], [ %ofCodePtr.0.i, %land.lhs.true.i.i.i.do.cond57.i_crit_edge ], [ %ofCodePtr.0.i, %do.end23.i.i.do.cond57.i_crit_edge ], [ %ofCodePtr.0.i, %cond.end40.i.i.i.do.cond57.i_crit_edge ], [ %ofCodePtr.0.i, %do.end.i.i38.do.cond57.i_crit_edge ]
  %litSize.6.ph.i = phi i32 [ %litSize.2.i, %ZSTD_estimateSubBlockSize.exit.i.do.cond57.i_crit_edge ], [ 0, %if.then32.i ], [ %litSize.2.i, %do.end.i39.do.cond57.i_crit_edge ], [ %litSize.2.i, %cleanup.cont63.i.i.i.do.cond57.i_crit_edge ], [ %litSize.2.i, %land.lhs.true.i.i.i.do.cond57.i_crit_edge ], [ %litSize.2.i, %do.end23.i.i.do.cond57.i_crit_edge ], [ %litSize.2.i, %cond.end40.i.i.i.do.cond57.i_crit_edge ], [ %litSize.2.i, %do.end.i.i38.do.cond57.i_crit_edge ]
  %seqCount.5.ph.i = phi i32 [ %seqCount.1.i, %ZSTD_estimateSubBlockSize.exit.i.do.cond57.i_crit_edge ], [ 0, %if.then32.i ], [ %seqCount.1.i, %do.end.i39.do.cond57.i_crit_edge ], [ %seqCount.1.i, %cleanup.cont63.i.i.i.do.cond57.i_crit_edge ], [ %seqCount.1.i, %land.lhs.true.i.i.i.do.cond57.i_crit_edge ], [ %seqCount.1.i, %do.end23.i.i.do.cond57.i_crit_edge ], [ %seqCount.1.i, %cond.end40.i.i.i.do.cond57.i_crit_edge ], [ %seqCount.1.i, %do.end.i.i38.do.cond57.i_crit_edge ]
  %writeLitEntropy.5.ph.i = phi i32 [ %writeLitEntropy.0.i, %ZSTD_estimateSubBlockSize.exit.i.do.cond57.i_crit_edge ], [ %spec.select1.i, %if.then32.i ], [ %writeLitEntropy.0.i, %do.end.i39.do.cond57.i_crit_edge ], [ %writeLitEntropy.0.i, %cleanup.cont63.i.i.i.do.cond57.i_crit_edge ], [ %writeLitEntropy.0.i, %land.lhs.true.i.i.i.do.cond57.i_crit_edge ], [ %writeLitEntropy.0.i, %do.end23.i.i.do.cond57.i_crit_edge ], [ %writeLitEntropy.0.i, %cond.end40.i.i.i.do.cond57.i_crit_edge ], [ %writeLitEntropy.0.i, %do.end.i.i38.do.cond57.i_crit_edge ]
  %writeSeqEntropy.4.ph.i = phi i32 [ %writeSeqEntropy.0.i, %ZSTD_estimateSubBlockSize.exit.i.do.cond57.i_crit_edge ], [ %spec.select2.i, %if.then32.i ], [ %writeSeqEntropy.0.i, %do.end.i39.do.cond57.i_crit_edge ], [ %writeSeqEntropy.0.i, %cleanup.cont63.i.i.i.do.cond57.i_crit_edge ], [ %writeSeqEntropy.0.i, %land.lhs.true.i.i.i.do.cond57.i_crit_edge ], [ %writeSeqEntropy.0.i, %do.end23.i.i.do.cond57.i_crit_edge ], [ %writeSeqEntropy.0.i, %cond.end40.i.i.i.do.cond57.i_crit_edge ], [ %writeSeqEntropy.0.i, %do.end.i.i38.do.cond57.i_crit_edge ]
  br i1 %tobool.i, label %do.end59.i, label %do.cond57.i.do.body.i_crit_edge

do.cond57.i.do.body.i_crit_edge:                  ; preds = %do.cond57.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.end59.i:                                       ; preds = %do.cond57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %writeLitEntropy.5.ph.i)
  %tobool60.not.i = icmp eq i32 %writeLitEntropy.5.ph.i, 0
  br i1 %tobool60.not.i, label %do.end59.i.if.end65.i_crit_edge, label %if.then61.i

do.end59.i.if.end65.i_crit_edge:                  ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65.i

if.then61.i:                                      ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #6
  %228 = call ptr @memcpy(ptr %98, ptr %96, i32 1028)
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then61.i, %do.end59.i.if.end65.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %writeSeqEntropy.4.ph.i)
  %tobool66.not.i = icmp eq i32 %writeSeqEntropy.4.ph.i, 0
  br i1 %tobool66.not.i, label %if.end65.i.if.end71.i_crit_edge, label %land.lhs.true67.i

if.end65.i.if.end71.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71.i

land.lhs.true67.i:                                ; preds = %if.end65.i
  %229 = ptrtoint ptr %fseMetadata.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %fseMetadata.i, align 4
  %.off.i.i = add i32 %230, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %land.lhs.true67.i.cleanup12_crit_edge, label %if.end.i.i40

land.lhs.true67.i.cleanup12_crit_edge:            ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup12

if.end.i.i40:                                     ; preds = %land.lhs.true67.i
  %231 = ptrtoint ptr %mlType.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %mlType.i.i.i, align 4
  %.off22.i.i = add i32 %232, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off22.i.i)
  %switch23.i.i = icmp ult i32 %.off22.i.i, 2
  br i1 %switch23.i.i, label %if.end.i.i40.cleanup12_crit_edge, label %ZSTD_needSequenceEntropyTables.exit.i

if.end.i.i40.cleanup12_crit_edge:                 ; preds = %if.end.i.i40
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup12

ZSTD_needSequenceEntropyTables.exit.i:            ; preds = %if.end.i.i40
  %233 = ptrtoint ptr %ofType.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %ofType.i.i.i, align 4
  %235 = add i32 %234, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %235)
  %switch25.i.i = icmp ult i32 %235, -2
  br i1 %switch25.i.i, label %ZSTD_needSequenceEntropyTables.exit.i.if.end71.i_crit_edge, label %ZSTD_needSequenceEntropyTables.exit.i.cleanup12_crit_edge

ZSTD_needSequenceEntropyTables.exit.i.cleanup12_crit_edge: ; preds = %ZSTD_needSequenceEntropyTables.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup12

ZSTD_needSequenceEntropyTables.exit.i.if.end71.i_crit_edge: ; preds = %ZSTD_needSequenceEntropyTables.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71.i

if.end71.i:                                       ; preds = %ZSTD_needSequenceEntropyTables.exit.i.if.end71.i_crit_edge, %if.end65.i.if.end71.i_crit_edge
  %cmp72.i = icmp ult ptr %ip.4.ph.i, %add.ptr.i
  br i1 %cmp72.i, label %if.then74.i, label %if.end71.i.if.end114.i_crit_edge

if.end71.i.if.end114.i_crit_edge:                 ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114.i

if.then74.i:                                      ; preds = %if.end71.i
  %sub.ptr.rhs.cast77.i = ptrtoint ptr %op.4.ph.i to i32
  %sub.ptr.sub78.i = sub i32 %sub.ptr.lhs.cast17.i, %sub.ptr.rhs.cast77.i
  %sub.ptr.lhs.cast79.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast80.i = ptrtoint ptr %ip.4.ph.i to i32
  %sub.ptr.sub81.i = sub i32 %sub.ptr.lhs.cast79.i, %sub.ptr.rhs.cast80.i
  %add2.i36.i = add i32 %sub.ptr.sub81.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i36.i, i32 %sub.ptr.sub78.i)
  %cmp.i37.i = icmp ugt i32 %add2.i36.i, %sub.ptr.sub78.i
  br i1 %cmp.i37.i, label %if.then74.i.cleanup12_crit_edge, label %ZSTD_noCompressBlock.exit.i

if.then74.i.cleanup12_crit_edge:                  ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup12

ZSTD_noCompressBlock.exit.i:                      ; preds = %if.then74.i
  %shl.i38.i = shl i32 %sub.ptr.sub81.i, 3
  %add1.i39.i = add i32 %shl.i38.i, %lastBlock
  %conv.i.i.i = trunc i32 %add1.i39.i to i16
  %236 = call i16 @llvm.bswap.i16(i16 %conv.i.i.i) #4
  %237 = ptrtoint ptr %op.4.ph.i to i32
  call void @__asan_storeN_noabort(i32 %237, i32 2)
  store i16 %236, ptr %op.4.ph.i, align 1
  %shr.i.i40.i = lshr i32 %add1.i39.i, 16
  %conv1.i.i41.i = trunc i32 %shr.i.i40.i to i8
  %arrayidx.i.i42.i = getelementptr i8, ptr %op.4.ph.i, i32 2
  %238 = ptrtoint ptr %arrayidx.i.i42.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %conv1.i.i41.i, ptr %arrayidx.i.i42.i, align 1
  %add.ptr.i43.i = getelementptr i8, ptr %op.4.ph.i, i32 3
  %239 = call ptr @memcpy(ptr %add.ptr.i43.i, ptr %ip.4.ph.i, i32 %sub.ptr.sub81.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %add2.i36.i)
  %cmp.i46.i = icmp ult i32 %add2.i36.i, -119
  br i1 %cmp.i46.i, label %do.end93.i, label %ZSTD_noCompressBlock.exit.i.cleanup12_crit_edge

ZSTD_noCompressBlock.exit.i.cleanup12_crit_edge:  ; preds = %ZSTD_noCompressBlock.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup12

do.end93.i:                                       ; preds = %ZSTD_noCompressBlock.exit.i
  %add.ptr94.i = getelementptr i8, ptr %op.4.ph.i, i32 %add2.i36.i
  %cmp95.i = icmp ult ptr %sp.4.ph.i, %106
  br i1 %cmp95.i, label %if.then97.i, label %do.end93.i.if.end114.i_crit_edge

do.end93.i.if.end114.i_crit_edge:                 ; preds = %do.end93.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114.i

if.then97.i:                                      ; preds = %do.end93.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rep.i) #4
  %240 = getelementptr inbounds [3 x i32], ptr %rep.i, i32 0, i32 1
  %241 = getelementptr inbounds [3 x i32], ptr %rep.i, i32 0, i32 2
  %rep98.i = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %96, i32 0, i32 1
  %242 = call ptr @memcpy(ptr %rep.i, ptr %rep98.i, i32 12)
  %cmp99180.i = icmp ult ptr %104, %sp.4.ph.i
  br i1 %cmp99180.i, label %for.body.lr.ph.i, label %if.then97.i.cleanup111.i_crit_edge

if.then97.i.cleanup111.i_crit_edge:               ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup111.i

for.body.lr.ph.i:                                 ; preds = %if.then97.i
  %243 = ptrtoint ptr %longLengthPos.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %longLengthPos.i.i, align 4, !noalias !25
  %245 = ptrtoint ptr %seqStore to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %seqStore, align 4, !noalias !25
  %sub.ptr.rhs.cast.i55.i = ptrtoint ptr %246 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %ZSTD_updateRep.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %seq.0181.i = phi ptr [ %104, %for.body.lr.ph.i ], [ %incdec.ptr.i, %ZSTD_updateRep.exit.i.for.body.i_crit_edge ]
  %247 = ptrtoint ptr %seq.0181.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %seq.0181.i, align 4
  %sub.i = add i32 %248, -1
  %litLength.i48.i = getelementptr inbounds %struct.seqDef_s, ptr %seq.0181.i, i32 0, i32 1
  %249 = ptrtoint ptr %litLength.i48.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %litLength.i48.i, align 4, !noalias !25
  %conv.i49.i = zext i16 %250 to i32
  %sub.ptr.lhs.cast.i54.i = ptrtoint ptr %seq.0181.i to i32
  %sub.ptr.sub.i56.i = sub i32 %sub.ptr.lhs.cast.i54.i, %sub.ptr.rhs.cast.i55.i
  %sub.ptr.div.i57.i = ashr exact i32 %sub.ptr.sub.i56.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %244, i32 %sub.ptr.div.i57.i)
  %cmp.i58.i = icmp eq i32 %244, %sub.ptr.div.i57.i
  br i1 %cmp.i58.i, label %if.then.i60.i, label %for.body.i.ZSTD_getSequenceLength.exit65.i_crit_edge

for.body.i.ZSTD_getSequenceLength.exit65.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ZSTD_getSequenceLength.exit65.i

if.then.i60.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %251 = ptrtoint ptr %longLengthID.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %longLengthID.i.i, align 4, !noalias !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %252)
  %cond176.i = icmp eq i32 %252, 1
  %add9.i61.i = add nuw nsw i32 %conv.i49.i, 65535
  %spec.select178.i = select i1 %cond176.i, i32 %add9.i61.i, i32 %conv.i49.i
  br label %ZSTD_getSequenceLength.exit65.i

ZSTD_getSequenceLength.exit65.i:                  ; preds = %if.then.i60.i, %for.body.i.ZSTD_getSequenceLength.exit65.i_crit_edge
  %tmp104.sroa.0.0.i = phi i32 [ %conv.i49.i, %for.body.i.ZSTD_getSequenceLength.exit65.i_crit_edge ], [ %spec.select178.i, %if.then.i60.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i)
  %cmp.i66.i = icmp ugt i32 %sub.i, 2
  br i1 %cmp.i66.i, label %if.then.i68.i, label %if.else.i.i

if.then.i68.i:                                    ; preds = %ZSTD_getSequenceLength.exit65.i
  call void @__sanitizer_cov_trace_pc() #6
  %253 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %240, align 4, !noalias !28
  %255 = ptrtoint ptr %rep.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %rep.i, align 4, !noalias !28
  %sub.i67.i = add i32 %248, -3
  br label %ZSTD_updateRep.exit.i

if.else.i.i:                                      ; preds = %ZSTD_getSequenceLength.exit65.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp104.sroa.0.0.i)
  %cmp106.i = icmp eq i32 %tmp104.sroa.0.0.i, 0
  %conv107.i = zext i1 %cmp106.i to i32
  %add.i69.i = add nuw nsw i32 %sub.i, %conv107.i
  %257 = zext i32 %add.i69.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %257, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %add.i69.i, label %cond.false.i.i [
    i32 0, label %if.else28.i.i
    i32 3, label %cond.true.i.i
  ]

cond.true.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %258 = ptrtoint ptr %rep.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %rep.i, align 4, !noalias !28
  %sub12.i.i = add i32 %259, -1
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx13.i.i = getelementptr i32, ptr %rep.i, i32 %add.i69.i
  %260 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx13.i.i, align 4, !noalias !28
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i70.i = phi i32 [ %sub12.i.i, %cond.true.i.i ], [ %261, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i69.i)
  %cmp14.i.i41 = icmp ugt i32 %add.i69.i, 1
  %cond20.in.v.i.i = select i1 %cmp14.i.i41, i32 1, i32 2
  %cond20.in.i.i = getelementptr i32, ptr %rep.i, i32 %cond20.in.v.i.i
  %262 = ptrtoint ptr %cond20.in.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %cond20.i.i = load i32, ptr %cond20.in.i.i, align 4, !noalias !28
  %263 = ptrtoint ptr %rep.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %rep.i, align 4, !noalias !28
  br label %ZSTD_updateRep.exit.i

if.else28.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %265 = ptrtoint ptr %rep.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %tmp101.sroa.0.0.copyload71.i = load i32, ptr %rep.i, align 4
  %266 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %266)
  %tmp101.sroa.6.0.copyload73.i = load i32, ptr %240, align 4
  %267 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %267)
  %tmp101.sroa.8.0.copyload75.i = load i32, ptr %241, align 4
  br label %ZSTD_updateRep.exit.i

ZSTD_updateRep.exit.i:                            ; preds = %if.else28.i.i, %cond.end.i.i, %if.then.i68.i
  %tmp101.sroa.8.0.i = phi i32 [ %254, %if.then.i68.i ], [ %cond20.i.i, %cond.end.i.i ], [ %tmp101.sroa.8.0.copyload75.i, %if.else28.i.i ]
  %tmp101.sroa.6.0.i = phi i32 [ %256, %if.then.i68.i ], [ %264, %cond.end.i.i ], [ %tmp101.sroa.6.0.copyload73.i, %if.else28.i.i ]
  %tmp101.sroa.0.0.i = phi i32 [ %sub.i67.i, %if.then.i68.i ], [ %cond.i70.i, %cond.end.i.i ], [ %tmp101.sroa.0.0.copyload71.i, %if.else28.i.i ]
  %268 = ptrtoint ptr %rep.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %tmp101.sroa.0.0.i, ptr %rep.i, align 4
  %269 = ptrtoint ptr %240 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %tmp101.sroa.6.0.i, ptr %240, align 4
  %270 = ptrtoint ptr %241 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %tmp101.sroa.8.0.i, ptr %241, align 4
  %incdec.ptr.i = getelementptr %struct.seqDef_s, ptr %seq.0181.i, i32 1
  %cmp99.i = icmp ult ptr %incdec.ptr.i, %sp.4.ph.i
  br i1 %cmp99.i, label %ZSTD_updateRep.exit.i.for.body.i_crit_edge, label %ZSTD_updateRep.exit.i.cleanup111.i_crit_edge

ZSTD_updateRep.exit.i.cleanup111.i_crit_edge:     ; preds = %ZSTD_updateRep.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup111.i

ZSTD_updateRep.exit.i.for.body.i_crit_edge:       ; preds = %ZSTD_updateRep.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

cleanup111.i:                                     ; preds = %ZSTD_updateRep.exit.i.cleanup111.i_crit_edge, %if.then97.i.cleanup111.i_crit_edge
  %rep108.i = getelementptr inbounds %struct.ZSTD_compressedBlockState_t, ptr %98, i32 0, i32 1
  %271 = call ptr @memcpy(ptr %rep108.i, ptr %rep.i, i32 12)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rep.i) #4
  br label %if.end114.i

if.end114.i:                                      ; preds = %cleanup111.i, %do.end93.i.if.end114.i_crit_edge, %if.end71.i.if.end114.i_crit_edge
  %op.6.i = phi ptr [ %add.ptr94.i, %cleanup111.i ], [ %op.4.ph.i, %if.end71.i.if.end114.i_crit_edge ], [ %add.ptr94.i, %do.end93.i.if.end114.i_crit_edge ]
  %sub.ptr.lhs.cast115.i = ptrtoint ptr %op.6.i to i32
  %sub.ptr.rhs.cast116.i = ptrtoint ptr %dst to i32
  %sub.ptr.sub117.i = sub i32 %sub.ptr.lhs.cast115.i, %sub.ptr.rhs.cast116.i
  br label %cleanup12

cleanup12:                                        ; preds = %if.end114.i, %ZSTD_noCompressBlock.exit.i.cleanup12_crit_edge, %if.then74.i.cleanup12_crit_edge, %ZSTD_needSequenceEntropyTables.exit.i.cleanup12_crit_edge, %if.end.i.i40.cleanup12_crit_edge, %land.lhs.true67.i.cleanup12_crit_edge, %ZSTD_compressSubBlock.exit.i.cleanup12_crit_edge, %ZSTD_compressSubBlock_sequences.exit.i.i.cleanup12_crit_edge, %if.end39.i.i.thread.i.cleanup12_crit_edge, %if.end39.i.i.i.cleanup12_crit_edge, %cleanup.cont8.i.i.cleanup12_crit_edge, %ZSTD_compressSubBlock_literal.exit.i.i.cleanup12_crit_edge, %ZSTD_buildSuperBlockEntropy.exit.cleanup12_crit_edge, %cleanup106.i.i, %cleanup66.i.i, %cleanup26.i.i, %ZSTD_buildSuperBlockEntropy_literal.exit.i.cleanup12_crit_edge, %ZSTD_buildSuperBlockEntropy_literal.exit.thread31.i
  %retval.1 = phi i32 [ %sub.ptr.sub116.i.i, %ZSTD_buildSuperBlockEntropy.exit.cleanup12_crit_edge ], [ %sub.ptr.sub117.i, %if.end114.i ], [ 0, %ZSTD_needSequenceEntropyTables.exit.i.cleanup12_crit_edge ], [ 0, %land.lhs.true67.i.cleanup12_crit_edge ], [ 0, %if.end.i.i40.cleanup12_crit_edge ], [ %add2.i36.i, %ZSTD_noCompressBlock.exit.i.cleanup12_crit_edge ], [ -70, %if.then74.i.cleanup12_crit_edge ], [ %retval.7.i.ph.i, %ZSTD_buildSuperBlockEntropy_literal.exit.thread31.i ], [ %call53.i.i, %ZSTD_buildSuperBlockEntropy_literal.exit.i.cleanup12_crit_edge ], [ %call20.i.i, %cleanup26.i.i ], [ %call49.i9.i, %cleanup66.i.i ], [ %call89.i.i, %cleanup106.i.i ], [ %sub.ptr.sub33.i.i, %ZSTD_compressSubBlock.exit.i.cleanup12_crit_edge ], [ -70, %cleanup.cont8.i.i.cleanup12_crit_edge ], [ %call46.i.i.i, %if.end39.i.i.i.cleanup12_crit_edge ], [ %sub.ptr.sub73.i.i.i, %ZSTD_compressSubBlock_sequences.exit.i.i.cleanup12_crit_edge ], [ %retval.1.i.i20.i, %ZSTD_compressSubBlock_literal.exit.i.i.cleanup12_crit_edge ], [ %call46.i.i185.i, %if.end39.i.i.thread.i.cleanup12_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 292, ptr nonnull %entropyMetadata) #4
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HIST_count_wksp(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_validateCTable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_optimalTableLog(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_buildCTable_wksp(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_estimateCompressedSize(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_writeCTable_wksp(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_seqToCodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HIST_countFast_wksp(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_selectEncodingType(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_buildCTable(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_crossEntropyCost(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_fseBitCost(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_noCompressLiterals(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressRleLiteralsBlock(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_compress1X_usingCTable(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_compress4X_usingCTable(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_encodeSequences(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @LL_defaultNorm, !1, !"LL_defaultNorm", i1 false, i1 false}
!1 = !{!"../lib/zstd/compress/../common/zstd_internal.h", i32 192, i32 30}
!2 = !{ptr @OF_defaultNorm, !3, !"OF_defaultNorm", i1 false, i1 false}
!3 = !{!"../lib/zstd/compress/../common/zstd_internal.h", i32 223, i32 30}
!4 = !{ptr @ML_defaultNorm, !5, !"ML_defaultNorm", i1 false, i1 false}
!5 = !{!"../lib/zstd/compress/../common/zstd_internal.h", i32 211, i32 30}
!6 = !{ptr @LL_bits, !7, !"LL_bits", i1 false, i1 false}
!7 = !{!"../lib/zstd/compress/../common/zstd_internal.h", i32 185, i32 30}
!8 = !{ptr @ML_bits, !9, !"ML_bits", i1 false, i1 false}
!9 = !{!"../lib/zstd/compress/../common/zstd_internal.h", i32 202, i32 30}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"ZSTD_getSequenceLength: %agg.result"}
!21 = distinct !{!21, !"ZSTD_getSequenceLength"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"ZSTD_getSequenceLength: %agg.result"}
!24 = distinct !{!24, !"ZSTD_getSequenceLength"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"ZSTD_getSequenceLength: %agg.result"}
!27 = distinct !{!27, !"ZSTD_getSequenceLength"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"ZSTD_updateRep: %agg.result"}
!30 = distinct !{!30, !"ZSTD_updateRep"}
