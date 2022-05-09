; ModuleID = '/llk/IR_all_yes/lib/zstd/decompress/zstd_decompress.c_pt.bc'
source_filename = "../lib/zstd/decompress/zstd_decompress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.ZSTD_DCtx_s = type { ptr, ptr, ptr, ptr, %struct.ZSTD_entropyDTables_t, [640 x i32], ptr, ptr, ptr, ptr, i32, %struct.ZSTD_frameHeader, i64, i64, i32, i32, i32, i32, %struct.xxh64_state, i32, i32, i32, i32, ptr, %struct.ZSTD_customMem, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.ZSTD_outBuffer_s, [131104 x i8], [18 x i8], i32 }
%struct.ZSTD_entropyDTables_t = type { [513 x %struct.ZSTD_seqSymbol], [257 x %struct.ZSTD_seqSymbol], [513 x %struct.ZSTD_seqSymbol], [4097 x i32], [3 x i32], [157 x i32] }
%struct.ZSTD_seqSymbol = type { i16, i8, i8, i32 }
%struct.ZSTD_frameHeader = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.xxh64_state = type { i64, i64, i64, i64, i64, [4 x i64], i32 }
%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZSTD_outBuffer_s = type { ptr, i32, i32 }
%struct.ZSTD_frameSizeInfo = type { i32, i64 }
%struct.blockProperties_t = type { i32, i32, i32 }
%struct.ZSTD_DDictHashSet = type { ptr, i32, i32 }
%struct.ZSTD_bounds = type { i32, i32, i32 }
%struct.ZSTD_inBuffer_s = type { ptr, i32, i32 }

@OF_base = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 0, i32 1, i32 1, i32 5, i32 13, i32 29, i32 61, i32 125, i32 253, i32 509, i32 1021, i32 2045, i32 4093, i32 8189, i32 16381, i32 32765, i32 65533, i32 131069, i32 262141, i32 524285, i32 1048573, i32 2097149, i32 4194301, i32 8388605, i32 16777213, i32 33554429, i32 67108861, i32 134217725, i32 268435453, i32 536870909, i32 1073741821, i32 2147483645], [32 x i8] zeroinitializer }, align 32
@OF_bits = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31], [32 x i8] zeroinitializer }, align 32
@ML_base = internal constant { [53 x i32], [44 x i8] } { [53 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 37, i32 39, i32 41, i32 43, i32 47, i32 51, i32 59, i32 67, i32 83, i32 99, i32 131, i32 259, i32 515, i32 1027, i32 2051, i32 4099, i32 8195, i32 16387, i32 32771, i32 65539], [44 x i8] zeroinitializer }, align 32
@ML_bits = internal constant { [53 x i32], [44 x i8] } { [53 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], [44 x i8] zeroinitializer }, align 32
@LL_base = internal constant { [36 x i32], [48 x i8] } { [36 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 18, i32 20, i32 22, i32 24, i32 28, i32 32, i32 40, i32 48, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536], [48 x i8] zeroinitializer }, align 32
@LL_bits = internal constant { [36 x i32], [48 x i8] } { [36 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], [48 x i8] zeroinitializer }, align 32
@repStartValue = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 4, i32 8], [20 x i8] zeroinitializer }, align 32
@ZSTD_did_fieldSize = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 4], [16 x i8] zeroinitializer }, align 32
@ZSTD_fcs_fieldSize = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 2, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@switch.table.ZSTD_nextInputType = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 5], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.5 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [7 x i64] [i64 5, i64 32, i64 100, i64 1000, i64 1001, i64 1002, i64 1003]
@__sancov_gen_cov_switch_values.9 = internal global [7 x i64] [i64 5, i64 32, i64 100, i64 1000, i64 1001, i64 1002, i64 1003]
@__sancov_gen_cov_switch_values.10 = internal global [7 x i64] [i64 5, i64 32, i64 100, i64 1000, i64 1001, i64 1002, i64 1003]
@__sancov_gen_cov_switch_values.11 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@___asan_gen_ = private constant [41 x i8] c"../lib/zstd/decompress/zstd_decompress.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [8 x i8] c"OF_base\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 37, i32 30 }
@___asan_gen_.16 = private unnamed_addr constant [8 x i8] c"OF_bits\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 43, i32 30 }
@___asan_gen_.19 = private unnamed_addr constant [8 x i8] c"ML_base\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 49, i32 30 }
@___asan_gen_.22 = private unnamed_addr constant [8 x i8] c"ML_bits\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 202, i32 30 }
@___asan_gen_.25 = private unnamed_addr constant [8 x i8] c"LL_base\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [50 x i8] c"../lib/zstd/decompress/zstd_decompress_internal.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 30, i32 30 }
@___asan_gen_.28 = private unnamed_addr constant [8 x i8] c"LL_bits\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 185, i32 30 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"repStartValue\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 134, i32 30 }
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"ZSTD_did_fieldSize\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 149, i32 33 }
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"ZSTD_fcs_fieldSize\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [49 x i8] c"../lib/zstd/decompress/../common/zstd_internal.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 148, i32 33 }
@___asan_gen_.40 = private unnamed_addr constant [32 x i8] c"switch.table.ZSTD_nextInputType\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @OF_base, ptr @OF_bits, ptr @ML_base, ptr @ML_bits, ptr @LL_base, ptr @LL_bits, ptr @repStartValue, ptr @ZSTD_did_fieldSize, ptr @ZSTD_fcs_fieldSize, ptr @switch.table.ZSTD_nextInputType], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @OF_base to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @OF_bits to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ML_base to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ML_bits to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LL_base to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LL_bits to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repStartValue to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ZSTD_did_fieldSize to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ZSTD_fcs_fieldSize to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ZSTD_nextInputType to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_sizeof_DCtx(ptr noundef readonly %dctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dctx, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ddictLocal = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 29
  %0 = ptrtoint ptr %ddictLocal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddictLocal, align 8
  %call = tail call i32 @ZSTD_sizeof_DDict(ptr noundef %1) #12
  %add = add i32 %call, 161320
  %inBuffSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 38
  %2 = ptrtoint ptr %inBuffSize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inBuffSize, align 4
  %add1 = add i32 %add, %3
  %outBuffSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 42
  %4 = ptrtoint ptr %outBuffSize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %outBuffSize, align 4
  %add2 = add i32 %add1, %5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %add2, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_sizeof_DDict(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_estimateDCtxSize() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 161320
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local ptr @ZSTD_initStaticDCtx(ptr noundef %workspace, i32 noundef %workspaceSize) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %workspace to i32
  %and = and i32 %0, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 161320, i32 %workspaceSize)
  %cmp = icmp ult i32 %workspaceSize, 161320
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %staticSize.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 27
  %dictEnd.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 9
  %1 = ptrtoint ptr %dictEnd.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %dictEnd.i, align 8
  %ddictIsCold.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 32
  %2 = ptrtoint ptr %ddictIsCold.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ddictIsCold.i, align 4
  %dictUses.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 33
  %3 = ptrtoint ptr %dictUses.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %dictUses.i, align 8
  %inBuff.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 37
  %inBuffSize.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 38
  %4 = ptrtoint ptr %inBuffSize.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %inBuffSize.i, align 4
  %outBuffSize.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 42
  %5 = ptrtoint ptr %outBuffSize.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %outBuffSize.i, align 4
  %streamStage.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 36
  %6 = ptrtoint ptr %streamStage.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %streamStage.i, align 4
  %legacyContext.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 46
  %7 = ptrtoint ptr %legacyContext.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %legacyContext.i, align 4
  %previousLegacyVersion.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 47
  %8 = ptrtoint ptr %previousLegacyVersion.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %previousLegacyVersion.i, align 8
  %noForwardProgress.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 50
  %9 = ptrtoint ptr %noForwardProgress.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %noForwardProgress.i, align 4
  %oversizedDuration.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 55
  %10 = ptrtoint ptr %oversizedDuration.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %oversizedDuration.i, align 4
  %ddictSet.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 34
  %11 = ptrtoint ptr %ddictSet.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %ddictSet.i, align 4
  %format.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 20
  %12 = ptrtoint ptr %format.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %format.i.i, align 4
  %maxWindowSize.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 40
  %13 = call ptr @memset(ptr %staticSize.i, i32 0, i32 16)
  %14 = ptrtoint ptr %maxWindowSize.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 134217729, ptr %maxWindowSize.i.i, align 4
  %outBufferMode.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 51
  %15 = ptrtoint ptr %outBufferMode.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %outBufferMode.i.i, align 8
  %forceIgnoreChecksum.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 21
  %16 = ptrtoint ptr %forceIgnoreChecksum.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %forceIgnoreChecksum.i.i, align 8
  %refMultipleDDicts.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 35
  %17 = ptrtoint ptr %refMultipleDDicts.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %refMultipleDDicts.i.i, align 8
  %18 = ptrtoint ptr %staticSize.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %workspaceSize, ptr %staticSize.i, align 8
  %add.ptr = getelementptr %struct.ZSTD_DCtx_s, ptr %workspace, i32 1
  %19 = ptrtoint ptr %inBuff.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr, ptr %inBuff.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %workspace, %if.end2 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createDCtx_advanced([3 x i32] %customMem.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %xor12 = xor i1 %tobool.not, %tobool1.not
  br i1 %xor12, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call ptr @ZSTD_customMalloc(i32 noundef 161320, [3 x i32] %customMem.coerce) #12
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.end.return_crit_edge, label %if.end7

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %customMem8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call, i32 0, i32 24
  %2 = ptrtoint ptr %customMem8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %customMem8, align 4
  %customMem.sroa.4.0.customMem8.sroa_idx = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call, i32 0, i32 24, i32 1
  %3 = ptrtoint ptr %customMem.sroa.4.0.customMem8.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %customMem.sroa.4.0.customMem8.sroa_idx, align 4
  %customMem.sroa.7.0.customMem8.sroa_idx = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call, i32 0, i32 24, i32 2
  %4 = ptrtoint ptr %customMem.sroa.7.0.customMem8.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %customMem.coerce.fca.2.extract, ptr %customMem.sroa.7.0.customMem8.sroa_idx, align 4
  %staticSize.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call, i32 0, i32 27
  %dictEnd.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call, i32 0, i32 9
  %5 = ptrtoint ptr %dictEnd.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %dictEnd.i, align 8
  %ddictIsCold.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call, i32 0, i32 32
  %6 = ptrtoint ptr %ddictIsCold.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ddictIsCold.i, align 4
  %dictUses.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call, i32 0, i32 33
  %7 = ptrtoint ptr %dictUses.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %dictUses.i, align 8
  %inBuff.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call, i32 0, i32 37
  %8 = ptrtoint ptr %inBuff.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %inBuff.i, align 8
  %inBuffSize.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call, i32 0, i32 38
  %9 = ptrtoint ptr %inBuffSize.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %inBuffSize.i, align 4
  %outBuffSize.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call, i32 0, i32 42
  %10 = ptrtoint ptr %outBuffSize.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %outBuffSize.i, align 4
  %streamStage.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call, i32 0, i32 36
  %11 = ptrtoint ptr %streamStage.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %streamStage.i, align 4
  %legacyContext.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call, i32 0, i32 46
  %12 = ptrtoint ptr %legacyContext.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %legacyContext.i, align 4
  %previousLegacyVersion.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call, i32 0, i32 47
  %13 = ptrtoint ptr %previousLegacyVersion.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %previousLegacyVersion.i, align 8
  %noForwardProgress.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call, i32 0, i32 50
  %14 = ptrtoint ptr %noForwardProgress.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %noForwardProgress.i, align 4
  %oversizedDuration.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call, i32 0, i32 55
  %15 = ptrtoint ptr %oversizedDuration.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %oversizedDuration.i, align 4
  %ddictSet.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call, i32 0, i32 34
  %16 = ptrtoint ptr %ddictSet.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %ddictSet.i, align 4
  %format.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call, i32 0, i32 20
  %17 = ptrtoint ptr %format.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %format.i.i, align 4
  %maxWindowSize.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call, i32 0, i32 40
  %18 = call ptr @memset(ptr %staticSize.i, i32 0, i32 16)
  %19 = ptrtoint ptr %maxWindowSize.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 134217729, ptr %maxWindowSize.i.i, align 4
  %outBufferMode.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call, i32 0, i32 51
  %20 = ptrtoint ptr %outBufferMode.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %outBufferMode.i.i, align 8
  %forceIgnoreChecksum.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call, i32 0, i32 21
  %21 = ptrtoint ptr %forceIgnoreChecksum.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %forceIgnoreChecksum.i.i, align 8
  %refMultipleDDicts.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call, i32 0, i32 35
  %22 = ptrtoint ptr %refMultipleDDicts.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %refMultipleDDicts.i.i, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi ptr [ null, %entry.return_crit_edge ], [ %call, %if.end7 ], [ null, %if.end.return_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_customMalloc(i32 noundef, [3 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createDCtx() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ZSTD_customMalloc(i32 noundef 161320, [3 x i32] zeroinitializer) #12
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %entry.ZSTD_createDCtx_advanced.exit_crit_edge, label %if.end7.i

entry.ZSTD_createDCtx_advanced.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_createDCtx_advanced.exit

if.end7.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %customMem8.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 24
  %0 = ptrtoint ptr %customMem8.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %customMem8.i, align 4
  %customMem.sroa.4.0.customMem8.sroa_idx.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 24, i32 1
  %1 = ptrtoint ptr %customMem.sroa.4.0.customMem8.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %customMem.sroa.4.0.customMem8.sroa_idx.i, align 4
  %customMem.sroa.7.0.customMem8.sroa_idx.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 24, i32 2
  %2 = ptrtoint ptr %customMem.sroa.7.0.customMem8.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %customMem.sroa.7.0.customMem8.sroa_idx.i, align 4
  %staticSize.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 27
  %dictEnd.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 9
  %3 = ptrtoint ptr %dictEnd.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %dictEnd.i.i, align 8
  %ddictIsCold.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 32
  %4 = ptrtoint ptr %ddictIsCold.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ddictIsCold.i.i, align 4
  %dictUses.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 33
  %5 = ptrtoint ptr %dictUses.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %dictUses.i.i, align 8
  %inBuff.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 37
  %6 = ptrtoint ptr %inBuff.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %inBuff.i.i, align 8
  %inBuffSize.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 38
  %7 = ptrtoint ptr %inBuffSize.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %inBuffSize.i.i, align 4
  %outBuffSize.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 42
  %8 = ptrtoint ptr %outBuffSize.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %outBuffSize.i.i, align 4
  %streamStage.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 36
  %9 = ptrtoint ptr %streamStage.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %streamStage.i.i, align 4
  %legacyContext.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 46
  %10 = ptrtoint ptr %legacyContext.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %legacyContext.i.i, align 4
  %previousLegacyVersion.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 47
  %11 = ptrtoint ptr %previousLegacyVersion.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %previousLegacyVersion.i.i, align 8
  %noForwardProgress.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 50
  %12 = ptrtoint ptr %noForwardProgress.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %noForwardProgress.i.i, align 4
  %oversizedDuration.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 55
  %13 = ptrtoint ptr %oversizedDuration.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %oversizedDuration.i.i, align 4
  %ddictSet.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 34
  %14 = ptrtoint ptr %ddictSet.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %ddictSet.i.i, align 4
  %format.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 20
  %15 = ptrtoint ptr %format.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %format.i.i.i, align 4
  %maxWindowSize.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 40
  %16 = call ptr @memset(ptr %staticSize.i.i, i32 0, i32 16)
  %17 = ptrtoint ptr %maxWindowSize.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 134217729, ptr %maxWindowSize.i.i.i, align 4
  %outBufferMode.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 51
  %18 = ptrtoint ptr %outBufferMode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %outBufferMode.i.i.i, align 8
  %forceIgnoreChecksum.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 21
  %19 = ptrtoint ptr %forceIgnoreChecksum.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %forceIgnoreChecksum.i.i.i, align 8
  %refMultipleDDicts.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 35
  %20 = ptrtoint ptr %refMultipleDDicts.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %refMultipleDDicts.i.i.i, align 8
  br label %ZSTD_createDCtx_advanced.exit

ZSTD_createDCtx_advanced.exit:                    ; preds = %if.end7.i, %entry.ZSTD_createDCtx_advanced.exit_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_freeDCtx(ptr noundef %dctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dctx, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %staticSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 27
  %0 = ptrtoint ptr %staticSize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %staticSize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end2:                                          ; preds = %if.end
  %customMem = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24
  %2 = ptrtoint ptr %customMem to i32
  call void @__asan_load4_noabort(i32 %2)
  %cMem.sroa.0.0.copyload = load ptr, ptr %customMem, align 4
  %cMem.sroa.7.0.customMem.sroa_idx = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24, i32 1
  %3 = ptrtoint ptr %cMem.sroa.7.0.customMem.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %cMem.sroa.7.0.copyload = load ptr, ptr %cMem.sroa.7.0.customMem.sroa_idx, align 4
  %cMem.sroa.11.0.customMem.sroa_idx = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24, i32 2
  %4 = ptrtoint ptr %cMem.sroa.11.0.customMem.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %cMem.sroa.11.0.copyload = load ptr, ptr %cMem.sroa.11.0.customMem.sroa_idx, align 4
  %ddictLocal.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 29
  %5 = ptrtoint ptr %ddictLocal.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ddictLocal.i, align 8
  %call.i = tail call i32 @ZSTD_freeDDict(ptr noundef %6) #12
  %7 = ptrtoint ptr %ddictLocal.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ddictLocal.i, align 8
  %ddict.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 30
  %8 = ptrtoint ptr %ddict.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %ddict.i, align 4
  %dictUses.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 33
  %9 = ptrtoint ptr %dictUses.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %dictUses.i, align 8
  %inBuff = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 37
  %10 = ptrtoint ptr %inBuff to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %inBuff, align 8
  %12 = ptrtoint ptr %cMem.sroa.0.0.copyload to i32
  %.fca.0.insert = insertvalue [3 x i32] poison, i32 %12, 0
  %13 = ptrtoint ptr %cMem.sroa.7.0.copyload to i32
  %.fca.1.insert = insertvalue [3 x i32] %.fca.0.insert, i32 %13, 1
  %14 = ptrtoint ptr %cMem.sroa.11.0.copyload to i32
  %.fca.2.insert = insertvalue [3 x i32] %.fca.1.insert, i32 %14, 2
  tail call void @ZSTD_customFree(ptr noundef %11, [3 x i32] %.fca.2.insert) #12
  %15 = ptrtoint ptr %inBuff to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %inBuff, align 8
  %ddictSet = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 34
  %16 = ptrtoint ptr %ddictSet to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ddictSet, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %if.end2.if.end8_crit_edge, label %land.lhs.true.i

if.end2.if.end8_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true.i:                                  ; preds = %if.end2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool1.not.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.ZSTD_freeDDictHashSet.exit_crit_edge, label %if.then.i

land.lhs.true.i.ZSTD_freeDDictHashSet.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_freeDDictHashSet.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ZSTD_customFree(ptr noundef nonnull %19, [3 x i32] %.fca.2.insert) #12
  br label %ZSTD_freeDDictHashSet.exit

ZSTD_freeDDictHashSet.exit:                       ; preds = %if.then.i, %land.lhs.true.i.ZSTD_freeDDictHashSet.exit_crit_edge
  tail call void @ZSTD_customFree(ptr noundef nonnull %17, [3 x i32] %.fca.2.insert) #12
  %20 = ptrtoint ptr %ddictSet to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %ddictSet, align 4
  br label %if.end8

if.end8:                                          ; preds = %ZSTD_freeDDictHashSet.exit, %if.end2.if.end8_crit_edge
  tail call void @ZSTD_customFree(ptr noundef nonnull %dctx, [3 x i32] %.fca.2.insert) #12
  br label %return

return:                                           ; preds = %if.end8, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ 0, %entry.return_crit_edge ], [ -64, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_customFree(ptr noundef, [3 x i32]) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ZSTD_copyDCtx(ptr nocapture noundef writeonly %dstDCtx, ptr nocapture noundef readonly %srcDCtx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %dstDCtx, ptr %srcDCtx, i32 30120)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_isFrame(ptr nocapture noundef readonly %buffer, i32 noundef %size) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp = icmp ult i32 %size, 4
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %buffer, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 682962941, i32 %1)
  %cmp1 = icmp eq i32 %1, 682962941
  br i1 %cmp1, label %if.end.return_crit_edge, label %cleanup

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %2 = and i32 %1, -251658241
  call void @__sanitizer_cov_trace_const_cmp4(i32 1344949528, i32 %2)
  %cmp4.not = icmp eq i32 %2, 1344949528
  %spec.select = zext i1 %cmp4.not to i32
  br label %return

return:                                           ; preds = %cleanup, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %if.end.return_crit_edge ], [ %spec.select, %cleanup ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_frameHeaderSize(ptr nocapture noundef readonly %src, i32 noundef %srcSize) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %srcSize)
  %cmp.i = icmp ult i32 %srcSize, 5
  br i1 %cmp.i, label %entry.ZSTD_frameHeaderSize_internal.exit_crit_edge, label %if.end.i

entry.ZSTD_frameHeaderSize_internal.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_frameHeaderSize_internal.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr i8, ptr %src, i32 4
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %1 to i32
  %and.i = and i32 %conv.i, 3
  %2 = lshr i32 %conv.i, 6
  %3 = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp ne i32 %3, 0
  %.lobit.i = lshr exact i32 %3, 5
  %4 = xor i32 %.lobit.i, 1
  %arrayidx5.i = getelementptr [4 x i32], ptr @ZSTD_did_fieldSize, i32 0, i32 %and.i
  %5 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx5.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @ZSTD_fcs_fieldSize, i32 0, i32 %2
  %7 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %1)
  %tobool10.not.i = icmp ult i8 %1, 64
  %narrow.i = select i1 %tobool.not.i, i1 %tobool10.not.i, i1 false
  %9 = zext i1 %narrow.i to i32
  %add.i = add i32 %6, 5
  %add6.i = add i32 %add.i, %8
  %add8.i = add i32 %add6.i, %4
  %add13.i = add i32 %add8.i, %9
  br label %ZSTD_frameHeaderSize_internal.exit

ZSTD_frameHeaderSize_internal.exit:               ; preds = %if.end.i, %entry.ZSTD_frameHeaderSize_internal.exit_crit_edge
  %retval.0.i = phi i32 [ %add13.i, %if.end.i ], [ -72, %entry.ZSTD_frameHeaderSize_internal.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_getFrameHeader_advanced(ptr nocapture noundef writeonly %zfhPtr, ptr noundef readonly %src, i32 noundef %srcSize, i32 noundef %format) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %format)
  %cmp.i = icmp eq i32 %format, 0
  %cond.i = select i1 %cmp.i, i32 5, i32 1
  %0 = call ptr @memset(ptr %zfhPtr, i32 0, i32 40)
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %srcSize)
  %cmp = icmp ugt i32 %cond.i, %srcSize
  br i1 %cmp, label %entry.cleanup111_crit_edge, label %if.end

entry.cleanup111_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq ptr %src, null
  br i1 %cmp1, label %if.end.cleanup111_crit_edge, label %if.end3

if.end.cleanup111_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %format)
  %cmp4.not = icmp eq i32 %format, 1
  br i1 %cmp4.not, label %if.end3.ZSTD_frameHeaderSize_internal.exit_crit_edge, label %land.lhs.true

if.end3.ZSTD_frameHeaderSize_internal.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_frameHeaderSize_internal.exit

land.lhs.true:                                    ; preds = %if.end3
  %1 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %src, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 682962941, i32 %2)
  %cmp6.not = icmp eq i32 %2, 682962941
  br i1 %cmp6.not, label %land.lhs.true.ZSTD_frameHeaderSize_internal.exit_crit_edge, label %if.then7

land.lhs.true.ZSTD_frameHeaderSize_internal.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_frameHeaderSize_internal.exit

if.then7:                                         ; preds = %land.lhs.true
  %3 = and i32 %2, -251658241
  call void @__sanitizer_cov_trace_const_cmp4(i32 1344949528, i32 %3)
  %cmp9 = icmp eq i32 %3, 1344949528
  br i1 %cmp9, label %if.then10, label %if.then7.cleanup111_crit_edge

if.then7.cleanup111_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %srcSize)
  %cmp11 = icmp ult i32 %srcSize, 8
  br i1 %cmp11, label %if.then10.cleanup111_crit_edge, label %if.end13

if.then10.cleanup111_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

if.end13:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %src, i32 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  %conv = zext i32 %6 to i64
  %7 = ptrtoint ptr %zfhPtr to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %zfhPtr, align 8
  %frameType = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfhPtr, i32 0, i32 3
  %8 = ptrtoint ptr %frameType to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %frameType, align 4
  br label %cleanup111

ZSTD_frameHeaderSize_internal.exit:               ; preds = %land.lhs.true.ZSTD_frameHeaderSize_internal.exit_crit_edge, %if.end3.ZSTD_frameHeaderSize_internal.exit_crit_edge
  %sub.i = add nsw i32 %cond.i, -1
  %arrayidx.i = getelementptr i8, ptr %src, i32 %sub.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %10 to i32
  %and.i = and i32 %conv.i, 3
  %11 = lshr i32 %conv.i, 6
  %12 = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp ne i32 %12, 0
  %.lobit.i = lshr exact i32 %12, 5
  %13 = xor i32 %.lobit.i, 1
  %arrayidx5.i = getelementptr [4 x i32], ptr @ZSTD_did_fieldSize, i32 0, i32 %and.i
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @ZSTD_fcs_fieldSize, i32 0, i32 %11
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %10)
  %tobool10.not.i = icmp ult i8 %10, 64
  %narrow.i = select i1 %tobool.not.i, i1 %tobool10.not.i, i1 false
  %18 = zext i1 %narrow.i to i32
  %add.i = add i32 %15, %cond.i
  %add6.i = add i32 %add.i, %17
  %add8.i = add i32 %add6.i, %13
  %add13.i = add i32 %add8.i, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %add13.i, i32 %srcSize)
  %cmp18 = icmp ugt i32 %add13.i, %srcSize
  br i1 %cmp18, label %ZSTD_frameHeaderSize_internal.exit.cleanup111_crit_edge, label %if.end21

ZSTD_frameHeaderSize_internal.exit.cleanup111_crit_edge: ; preds = %ZSTD_frameHeaderSize_internal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

if.end21:                                         ; preds = %ZSTD_frameHeaderSize_internal.exit
  %headerSize = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfhPtr, i32 0, i32 4
  %19 = ptrtoint ptr %headerSize to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add13.i, ptr %headerSize, align 8
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %conv22 = zext i8 %21 to i32
  %and23 = and i32 %conv22, 3
  %22 = lshr i32 %conv22, 2
  %and25 = and i32 %22, 1
  %23 = lshr i32 %conv22, 6
  %and33 = and i32 %conv22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %cmp34.not = icmp eq i32 %and33, 0
  br i1 %cmp34.not, label %if.end37, label %if.end21.cleanup111_crit_edge

if.end21.cleanup111_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

if.end37:                                         ; preds = %if.end21
  %24 = and i32 %conv22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.then38, label %if.end37.if.end55_crit_edge

if.end37.if.end55_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then38:                                        ; preds = %if.end37
  %arrayidx39 = getelementptr i8, ptr %src, i32 %cond.i
  %25 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -89, i8 %26)
  %cmp42 = icmp ugt i8 %26, -89
  br i1 %cmp42, label %if.then38.cleanup111_crit_edge, label %cleanup51

if.then38.cleanup111_crit_edge:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

cleanup51:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add nuw nsw i32 %cond.i, 1
  %conv40 = zext i8 %26 to i32
  %27 = lshr i32 %conv40, 3
  %add = add nuw nsw i32 %27, 10
  %sh_prom = zext i32 %add to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %shr46 = lshr i64 %shl, 3
  %and48 = and i32 %conv40, 7
  %28 = zext i32 %and48 to i64
  %mul = mul nuw nsw i64 %shr46, %28
  %add50 = add nuw nsw i64 %mul, %shl
  br label %if.end55

if.end55:                                         ; preds = %cleanup51, %if.end37.if.end55_crit_edge
  %pos.0 = phi i32 [ %cond.i, %if.end37.if.end55_crit_edge ], [ %inc, %cleanup51 ]
  %windowSize.1 = phi i64 [ 0, %if.end37.if.end55_crit_edge ], [ %add50, %cleanup51 ]
  %29 = zext i32 %and23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and23, label %if.end55.sw.epilog_crit_edge [
    i32 3, label %sw.bb64
    i32 1, label %sw.bb
    i32 2, label %sw.bb59
  ]

if.end55.sw.epilog_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx56 = getelementptr i8, ptr %src, i32 %pos.0
  %30 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %31 to i32
  %inc58 = add nuw nsw i32 %pos.0, 1
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr60 = getelementptr i8, ptr %src, i32 %pos.0
  %32 = ptrtoint ptr %add.ptr60 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %add.ptr60, align 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #12
  %conv62 = zext i16 %34 to i32
  %add63 = add nuw nsw i32 %pos.0, 2
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr65 = getelementptr i8, ptr %src, i32 %pos.0
  %35 = ptrtoint ptr %add.ptr65 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %add.ptr65, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #12
  %add67 = add nuw nsw i32 %pos.0, 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb64, %sw.bb59, %sw.bb, %if.end55.sw.epilog_crit_edge
  %pos.1 = phi i32 [ %pos.0, %if.end55.sw.epilog_crit_edge ], [ %add63, %sw.bb59 ], [ %inc58, %sw.bb ], [ %add67, %sw.bb64 ]
  %dictID.0 = phi i32 [ 0, %if.end55.sw.epilog_crit_edge ], [ %conv62, %sw.bb59 ], [ %conv57, %sw.bb ], [ %37, %sw.bb64 ]
  %38 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %23, label %sw.bb69 [
    i32 3, label %sw.bb85
    i32 1, label %sw.bb75
    i32 2, label %sw.bb81
  ]

sw.bb69:                                          ; preds = %sw.epilog
  br i1 %tobool.not, label %sw.bb69._crit_edge, label %if.then71

sw.bb69._crit_edge:                               ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #14
  br label %51

if.then71:                                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx72 = getelementptr i8, ptr %src, i32 %pos.1
  %39 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %40 to i64
  br label %51

sw.bb75:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr76 = getelementptr i8, ptr %src, i32 %pos.1
  %41 = ptrtoint ptr %add.ptr76 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %add.ptr76, align 1
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #12
  %conv78 = zext i16 %43 to i32
  %add79 = add nuw nsw i32 %conv78, 256
  %44 = zext i32 %add79 to i64
  br label %51

sw.bb81:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr82 = getelementptr i8, ptr %src, i32 %pos.1
  %45 = ptrtoint ptr %add.ptr82 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %add.ptr82, align 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #12
  %conv84 = zext i32 %47 to i64
  br label %51

sw.bb85:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr86 = getelementptr i8, ptr %src, i32 %pos.1
  %48 = ptrtoint ptr %add.ptr86 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %add.ptr86, align 1
  %50 = tail call i64 @llvm.bswap.i64(i64 %49) #12
  br label %51

51:                                               ; preds = %sw.bb85, %sw.bb81, %sw.bb75, %if.then71, %sw.bb69._crit_edge
  %frameContentSize31.0 = phi i64 [ %conv73, %if.then71 ], [ -1, %sw.bb69._crit_edge ], [ %conv84, %sw.bb81 ], [ %44, %sw.bb75 ], [ %50, %sw.bb85 ]
  %spec.select = select i1 %tobool.not, i64 %windowSize.1, i64 %frameContentSize31.0
  %frameType92 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfhPtr, i32 0, i32 3
  %52 = ptrtoint ptr %frameType92 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %frameType92, align 4
  %53 = ptrtoint ptr %zfhPtr to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %frameContentSize31.0, ptr %zfhPtr, align 8
  %windowSize94 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfhPtr, i32 0, i32 1
  %54 = ptrtoint ptr %windowSize94 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %spec.select, ptr %windowSize94, align 8
  %55 = tail call i64 @llvm.umin.i64(i64 %spec.select, i64 131072)
  %56 = trunc i64 %55 to i32
  %blockSizeMax = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfhPtr, i32 0, i32 2
  %57 = ptrtoint ptr %blockSizeMax to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %blockSizeMax, align 8
  %dictID98 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfhPtr, i32 0, i32 5
  %58 = ptrtoint ptr %dictID98 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %dictID.0, ptr %dictID98, align 4
  %checksumFlag99 = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfhPtr, i32 0, i32 6
  %59 = ptrtoint ptr %checksumFlag99 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and25, ptr %checksumFlag99, align 8
  br label %cleanup111

cleanup111:                                       ; preds = %51, %if.then38.cleanup111_crit_edge, %if.end21.cleanup111_crit_edge, %ZSTD_frameHeaderSize_internal.exit.cleanup111_crit_edge, %if.end13, %if.then10.cleanup111_crit_edge, %if.then7.cleanup111_crit_edge, %if.end.cleanup111_crit_edge, %entry.cleanup111_crit_edge
  %retval.4 = phi i32 [ 0, %if.end13 ], [ %cond.i, %entry.cleanup111_crit_edge ], [ -1, %if.end.cleanup111_crit_edge ], [ 8, %if.then10.cleanup111_crit_edge ], [ -10, %if.then7.cleanup111_crit_edge ], [ %add13.i, %ZSTD_frameHeaderSize_internal.exit.cleanup111_crit_edge ], [ 0, %51 ], [ -14, %if.end21.cleanup111_crit_edge ], [ -16, %if.then38.cleanup111_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_getFrameHeader(ptr nocapture noundef writeonly %zfhPtr, ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ZSTD_getFrameHeader_advanced(ptr noundef %zfhPtr, ptr noundef %src, i32 noundef %srcSize, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @ZSTD_getFrameContentSize(ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #5 align 64 {
entry:
  %zfh = alloca %struct.ZSTD_frameHeader, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %zfh) #12
  %0 = call ptr @memset(ptr %zfh, i32 255, i32 40)
  %call.i = call i32 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %zfh, ptr noundef %src, i32 noundef %srcSize, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %frameType = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfh, i32 0, i32 3
  %1 = ptrtoint ptr %frameType to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %frameType, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %zfh to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %zfh, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %4, %if.else ], [ -2, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %zfh) #12
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ZSTD_findDecompressedSize(ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #0 align 64 {
entry:
  %frameSizeInfo.i = alloca %struct.ZSTD_frameSizeInfo, align 8
  %zfh.i = alloca %struct.ZSTD_frameHeader, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %srcSize)
  %cmp.not85 = icmp ult i32 %srcSize, 5
  br i1 %cmp.not85, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %frameType.i = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfh.i, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %cleanup26.while.body_crit_edge, %while.body.lr.ph
  %totalDstSize.088 = phi i64 [ 0, %while.body.lr.ph ], [ %totalDstSize.2, %cleanup26.while.body_crit_edge ]
  %srcSize.addr.087 = phi i32 [ %srcSize, %while.body.lr.ph ], [ %srcSize.addr.3, %cleanup26.while.body_crit_edge ]
  %src.addr.086 = phi ptr [ %src, %while.body.lr.ph ], [ %src.addr.3, %cleanup26.while.body_crit_edge ]
  %0 = ptrtoint ptr %src.addr.086 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %src.addr.086, align 1
  %2 = and i32 %1, -251658241
  call void @__sanitizer_cov_trace_const_cmp4(i32 1344949528, i32 %2)
  %cmp2 = icmp eq i32 %2, 1344949528
  br i1 %cmp2, label %if.then, label %if.end6

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %srcSize.addr.087)
  %cmp.i = icmp ult i32 %srcSize.addr.087, 8
  br i1 %cmp.i, label %if.then.cleanup32_crit_edge, label %if.end.i

if.then.cleanup32_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup32

if.end.i:                                         ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %src.addr.086, i32 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %add.ptr.i, align 1
  %5 = call i32 @llvm.bswap.i32(i32 %4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %5)
  %cmp1.i = icmp ugt i32 %5, -9
  br i1 %cmp1.i, label %if.end.i.cleanup32_crit_edge, label %readSkippableFrameSize.exit

if.end.i.cleanup32_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup32

readSkippableFrameSize.exit:                      ; preds = %if.end.i
  %add.i = add nuw i32 %5, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %srcSize.addr.087)
  %cmp5.i = icmp ule i32 %add.i, %srcSize.addr.087
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %5)
  %cmp.i5791 = icmp ult i32 %5, -127
  %cmp.i57 = and i1 %cmp5.i, %cmp.i5791
  br i1 %cmp.i57, label %readSkippableFrameSize.exit.cleanup26_crit_edge, label %readSkippableFrameSize.exit.cleanup32_crit_edge

readSkippableFrameSize.exit.cleanup32_crit_edge:  ; preds = %readSkippableFrameSize.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup32

readSkippableFrameSize.exit.cleanup26_crit_edge:  ; preds = %readSkippableFrameSize.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup26

if.end6:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %zfh.i) #12
  %6 = call ptr @memset(ptr %zfh.i, i32 255, i32 40)
  %call.i.i = call i32 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %zfh.i, ptr noundef %src.addr.086, i32 noundef %srcSize.addr.087, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %if.end.i59, label %ZSTD_getFrameContentSize.exit.thread

ZSTD_getFrameContentSize.exit.thread:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %zfh.i) #12
  br label %cleanup32

if.end.i59:                                       ; preds = %if.end6
  %7 = ptrtoint ptr %frameType.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %frameType.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp1.i58 = icmp eq i32 %8, 1
  br i1 %cmp1.i58, label %ZSTD_getFrameContentSize.exit.thread68, label %ZSTD_getFrameContentSize.exit

ZSTD_getFrameContentSize.exit.thread68:           ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %zfh.i) #12
  br label %cleanup15

ZSTD_getFrameContentSize.exit:                    ; preds = %if.end.i59
  %9 = ptrtoint ptr %zfh.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %zfh.i, align 8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %zfh.i) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %10)
  %cmp8 = icmp ugt i64 %10, -3
  br i1 %cmp8, label %ZSTD_getFrameContentSize.exit.cleanup32_crit_edge, label %ZSTD_getFrameContentSize.exit.cleanup15_crit_edge

ZSTD_getFrameContentSize.exit.cleanup15_crit_edge: ; preds = %ZSTD_getFrameContentSize.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15

ZSTD_getFrameContentSize.exit.cleanup32_crit_edge: ; preds = %ZSTD_getFrameContentSize.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup32

cleanup15:                                        ; preds = %ZSTD_getFrameContentSize.exit.cleanup15_crit_edge, %ZSTD_getFrameContentSize.exit.thread68
  %retval.0.i71 = phi i64 [ 0, %ZSTD_getFrameContentSize.exit.thread68 ], [ %10, %ZSTD_getFrameContentSize.exit.cleanup15_crit_edge ]
  %add = add i64 %retval.0.i71, %totalDstSize.088
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %totalDstSize.088)
  %cmp11 = icmp ult i64 %add, %totalDstSize.088
  br i1 %cmp11, label %cleanup15.cleanup32_crit_edge, label %cleanup.cont

cleanup15.cleanup32_crit_edge:                    ; preds = %cleanup15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup32

cleanup.cont:                                     ; preds = %cleanup15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %frameSizeInfo.i) #12
  %11 = call ptr @memset(ptr %frameSizeInfo.i, i32 255, i32 16)
  call fastcc void @ZSTD_findFrameSizeInfo(ptr nonnull sret(%struct.ZSTD_frameSizeInfo) align 8 %frameSizeInfo.i, ptr noundef %src.addr.086, i32 noundef %srcSize.addr.087) #12
  %12 = ptrtoint ptr %frameSizeInfo.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frameSizeInfo.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %frameSizeInfo.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %13)
  %cmp.i60 = icmp ult i32 %13, -119
  br i1 %cmp.i60, label %cleanup.cont.cleanup26_crit_edge, label %cleanup.cont.cleanup32_crit_edge

cleanup.cont.cleanup32_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup32

cleanup.cont.cleanup26_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup26

cleanup26:                                        ; preds = %cleanup.cont.cleanup26_crit_edge, %readSkippableFrameSize.exit.cleanup26_crit_edge
  %.add.i.pn = phi i32 [ %add.i, %readSkippableFrameSize.exit.cleanup26_crit_edge ], [ %13, %cleanup.cont.cleanup26_crit_edge ]
  %totalDstSize.2 = phi i64 [ %totalDstSize.088, %readSkippableFrameSize.exit.cleanup26_crit_edge ], [ %add, %cleanup.cont.cleanup26_crit_edge ]
  %srcSize.addr.3 = sub i32 %srcSize.addr.087, %.add.i.pn
  %src.addr.3 = getelementptr i8, ptr %src.addr.086, i32 %.add.i.pn
  %cmp.not = icmp ult i32 %srcSize.addr.3, 5
  br i1 %cmp.not, label %cleanup26.while.end_crit_edge, label %cleanup26.while.body_crit_edge

cleanup26.while.body_crit_edge:                   ; preds = %cleanup26
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup26.while.end_crit_edge:                    ; preds = %cleanup26
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %cleanup26.while.end_crit_edge, %entry.while.end_crit_edge
  %srcSize.addr.0.lcssa = phi i32 [ %srcSize, %entry.while.end_crit_edge ], [ %srcSize.addr.3, %cleanup26.while.end_crit_edge ]
  %totalDstSize.0.lcssa = phi i64 [ 0, %entry.while.end_crit_edge ], [ %totalDstSize.2, %cleanup26.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srcSize.addr.0.lcssa)
  %tobool29.not = icmp eq i32 %srcSize.addr.0.lcssa, 0
  %totalDstSize.0. = select i1 %tobool29.not, i64 %totalDstSize.0.lcssa, i64 -2
  br label %cleanup32

cleanup32:                                        ; preds = %while.end, %cleanup.cont.cleanup32_crit_edge, %cleanup15.cleanup32_crit_edge, %ZSTD_getFrameContentSize.exit.cleanup32_crit_edge, %ZSTD_getFrameContentSize.exit.thread, %readSkippableFrameSize.exit.cleanup32_crit_edge, %if.end.i.cleanup32_crit_edge, %if.then.cleanup32_crit_edge
  %retval.5 = phi i64 [ %totalDstSize.0., %while.end ], [ -2, %ZSTD_getFrameContentSize.exit.thread ], [ %10, %ZSTD_getFrameContentSize.exit.cleanup32_crit_edge ], [ -2, %if.end.i.cleanup32_crit_edge ], [ -2, %if.then.cleanup32_crit_edge ], [ -2, %cleanup15.cleanup32_crit_edge ], [ -2, %readSkippableFrameSize.exit.cleanup32_crit_edge ], [ -2, %cleanup.cont.cleanup32_crit_edge ]
  ret i64 %retval.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_findFrameCompressedSize(ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #0 align 64 {
entry:
  %frameSizeInfo = alloca %struct.ZSTD_frameSizeInfo, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %frameSizeInfo) #12
  %0 = call ptr @memset(ptr %frameSizeInfo, i32 255, i32 16)
  call fastcc void @ZSTD_findFrameSizeInfo(ptr nonnull sret(%struct.ZSTD_frameSizeInfo) align 8 %frameSizeInfo, ptr noundef %src, i32 noundef %srcSize)
  %1 = ptrtoint ptr %frameSizeInfo to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %frameSizeInfo, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %frameSizeInfo) #12
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @ZSTD_getDecompressedSize(ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #5 align 64 {
entry:
  %zfh.i = alloca %struct.ZSTD_frameHeader, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %zfh.i) #12
  %0 = call ptr @memset(ptr %zfh.i, i32 255, i32 40)
  %call.i.i = call i32 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %zfh.i, ptr noundef %src, i32 noundef %srcSize, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %ZSTD_getFrameContentSize.exit.thread

ZSTD_getFrameContentSize.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %zfh.i) #12
  br label %5

if.end.i:                                         ; preds = %entry
  %frameType.i = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfh.i, i32 0, i32 3
  %1 = ptrtoint ptr %frameType.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %frameType.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp1.i = icmp eq i32 %2, 1
  br i1 %cmp1.i, label %ZSTD_getFrameContentSize.exit.thread4, label %ZSTD_getFrameContentSize.exit

ZSTD_getFrameContentSize.exit.thread4:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %zfh.i) #12
  br label %6

ZSTD_getFrameContentSize.exit:                    ; preds = %if.end.i
  %3 = ptrtoint ptr %zfh.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %zfh.i, align 8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %zfh.i) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %4)
  %cmp = icmp ugt i64 %4, -3
  br i1 %cmp, label %ZSTD_getFrameContentSize.exit._crit_edge, label %ZSTD_getFrameContentSize.exit._crit_edge7

ZSTD_getFrameContentSize.exit._crit_edge7:        ; preds = %ZSTD_getFrameContentSize.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %6

ZSTD_getFrameContentSize.exit._crit_edge:         ; preds = %ZSTD_getFrameContentSize.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %5

5:                                                ; preds = %ZSTD_getFrameContentSize.exit._crit_edge, %ZSTD_getFrameContentSize.exit.thread
  br label %6

6:                                                ; preds = %5, %ZSTD_getFrameContentSize.exit._crit_edge7, %ZSTD_getFrameContentSize.exit.thread4
  %7 = phi i64 [ 0, %5 ], [ %4, %ZSTD_getFrameContentSize.exit._crit_edge7 ], [ 0, %ZSTD_getFrameContentSize.exit.thread4 ]
  ret i64 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ZSTD_findFrameSizeInfo(ptr noalias writeonly sret(%struct.ZSTD_frameSizeInfo) align 8 %agg.result, ptr noundef %src, i32 noundef %srcSize) unnamed_addr #0 align 64 {
entry:
  %zfh = alloca %struct.ZSTD_frameHeader, align 8
  %blockProperties = alloca %struct.blockProperties_t, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %srcSize)
  %cmp = icmp ugt i32 %srcSize, 7
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %src, align 1
  %2 = and i32 %1, -251658241
  call void @__sanitizer_cov_trace_const_cmp4(i32 1344949528, i32 %2)
  %cmp1 = icmp eq i32 %2, 1344949528
  br i1 %cmp1, label %if.end.i, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %src, i32 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %add.ptr.i, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %5)
  %cmp1.i = icmp ugt i32 %5, -9
  %add.i = add nuw i32 %5, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %srcSize)
  %cmp5.i = icmp ugt i32 %add.i, %srcSize
  %.add.i = select i1 %cmp5.i, i32 -72, i32 %add.i
  %retval.1.i = select i1 %cmp1.i, i32 -14, i32 %.add.i
  %6 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.1.i, ptr %agg.result, align 8
  %frameSizeInfo.sroa.8.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 4
  %7 = ptrtoint ptr %frameSizeInfo.sroa.8.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %frameSizeInfo.sroa.8.0.agg.result.sroa_idx, align 4
  %frameSizeInfo.sroa.868.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 8
  %8 = ptrtoint ptr %frameSizeInfo.sroa.868.0.agg.result.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %frameSizeInfo.sroa.868.0.agg.result.sroa_idx, align 8
  br label %cleanup44

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %zfh) #12
  %9 = call ptr @memset(ptr %zfh, i32 255, i32 40)
  %call.i = call i32 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %zfh, ptr noundef %src, i32 noundef %srcSize, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call.i)
  %cmp.i81 = icmp ult i32 %call.i, -119
  br i1 %cmp.i81, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %agg.result, align 8, !alias.scope !29
  store i32 %call.i, ptr %agg.result, align 8, !alias.scope !29
  %decompressedBound.i = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %agg.result, i32 0, i32 1
  %11 = ptrtoint ptr %decompressedBound.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -2, ptr %decompressedBound.i, align 8, !alias.scope !29
  br label %cleanup39

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.not = icmp eq i32 %call.i, 0
  br i1 %cmp6.not, label %cleanup.cont, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -304942678017, ptr %agg.result, align 8, !alias.scope !32
  %decompressedBound.i82 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %agg.result, i32 0, i32 1
  %13 = ptrtoint ptr %decompressedBound.i82 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -2, ptr %decompressedBound.i82, align 8, !alias.scope !32
  br label %cleanup39

cleanup.cont:                                     ; preds = %if.end
  %headerSize = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfh, i32 0, i32 4
  %14 = ptrtoint ptr %headerSize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %headerSize, align 8
  %add.ptr = getelementptr i8, ptr %src, i32 %15
  %sub = sub i32 %srcSize, %15
  %16 = getelementptr inbounds %struct.blockProperties_t, ptr %blockProperties, i32 0, i32 1
  %17 = getelementptr inbounds %struct.blockProperties_t, ptr %blockProperties, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %blockProperties) #12
  %18 = ptrtoint ptr %blockProperties to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %blockProperties, align 4, !annotation !35
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %16, align 4, !annotation !35
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %17, align 4, !annotation !35
  %call10102 = call i32 @ZSTD_getcBlockSize(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %blockProperties) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call10102)
  %cmp.i83103 = icmp ult i32 %call10102, -119
  br i1 %cmp.i83103, label %cleanup.cont.if.end14_crit_edge, label %cleanup.cont.if.then13_crit_edge

cleanup.cont.if.then13_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

cleanup.cont.if.end14_crit_edge:                  ; preds = %cleanup.cont
  br label %if.end14

if.then13:                                        ; preds = %cleanup25.if.then13_crit_edge, %cleanup.cont.if.then13_crit_edge
  %call10.lcssa = phi i32 [ %call10102, %cleanup.cont.if.then13_crit_edge ], [ %call10, %cleanup25.if.then13_crit_edge ]
  %21 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 -1, ptr %agg.result, align 8, !alias.scope !36
  store i32 %call10.lcssa, ptr %agg.result, align 8, !alias.scope !36
  br label %cleanup25.thread

if.end14:                                         ; preds = %cleanup25.if.end14_crit_edge, %cleanup.cont.if.end14_crit_edge
  %call10107 = phi i32 [ %call10, %cleanup25.if.end14_crit_edge ], [ %call10102, %cleanup.cont.if.end14_crit_edge ]
  %nbBlocks.0106 = phi i32 [ %inc, %cleanup25.if.end14_crit_edge ], [ 0, %cleanup.cont.if.end14_crit_edge ]
  %remainingSize.0105 = phi i32 [ %sub21, %cleanup25.if.end14_crit_edge ], [ %sub, %cleanup.cont.if.end14_crit_edge ]
  %ip.0104 = phi ptr [ %add.ptr19, %cleanup25.if.end14_crit_edge ], [ %add.ptr, %cleanup.cont.if.end14_crit_edge ]
  %add = add nuw i32 %call10107, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %remainingSize.0105, i32 %add)
  %cmp15 = icmp ult i32 %remainingSize.0105, %add
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 -304942678017, ptr %agg.result, align 8, !alias.scope !39
  br label %cleanup25.thread

if.end17:                                         ; preds = %if.end14
  %add.ptr19 = getelementptr i8, ptr %ip.0104, i32 %add
  %sub21 = sub i32 %remainingSize.0105, %add
  %inc = add i32 %nbBlocks.0106, 1
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool22.not = icmp eq i32 %24, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %blockProperties) #12
  br i1 %tobool22.not, label %cleanup25, label %while.end

cleanup25.thread:                                 ; preds = %if.then16, %if.then13
  %decompressedBound.i85 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %agg.result, i32 0, i32 1
  %25 = ptrtoint ptr %decompressedBound.i85 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 -2, ptr %decompressedBound.i85, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %blockProperties) #12
  br label %cleanup39

cleanup25:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %blockProperties) #12
  %26 = ptrtoint ptr %blockProperties to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %blockProperties, align 4, !annotation !35
  %27 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %16, align 4, !annotation !35
  %28 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %17, align 4, !annotation !35
  %call10 = call i32 @ZSTD_getcBlockSize(ptr noundef %add.ptr19, i32 noundef %sub21, ptr noundef nonnull %blockProperties) #12
  %cmp.i83 = icmp ult i32 %call10, -119
  br i1 %cmp.i83, label %cleanup25.if.end14_crit_edge, label %cleanup25.if.then13_crit_edge

cleanup25.if.then13_crit_edge:                    ; preds = %cleanup25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

cleanup25.if.end14_crit_edge:                     ; preds = %cleanup25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

while.end:                                        ; preds = %if.end17
  %checksumFlag = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfh, i32 0, i32 6
  %29 = ptrtoint ptr %checksumFlag to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %checksumFlag, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool29.not = icmp eq i32 %30, 0
  br i1 %tobool29.not, label %while.end.if.end35_crit_edge, label %if.then30

while.end.if.end35_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then30:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub21)
  %cmp31 = icmp ult i32 %sub21, 4
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 -304942678017, ptr %agg.result, align 8, !alias.scope !42
  %decompressedBound.i87 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %agg.result, i32 0, i32 1
  %32 = ptrtoint ptr %decompressedBound.i87 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 -2, ptr %decompressedBound.i87, align 8, !alias.scope !42
  br label %cleanup39

if.end33:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr34 = getelementptr i8, ptr %add.ptr19, i32 4
  br label %if.end35

if.end35:                                         ; preds = %if.end33, %while.end.if.end35_crit_edge
  %ip.2 = phi ptr [ %add.ptr34, %if.end33 ], [ %add.ptr19, %while.end.if.end35_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %ip.2 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %src to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %33 = ptrtoint ptr %zfh to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %zfh, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %34)
  %cmp37.not = icmp eq i64 %34, -1
  br i1 %cmp37.not, label %cond.false, label %if.end35.cond.end_crit_edge

if.end35.cond.end_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %blockSizeMax = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfh, i32 0, i32 2
  %35 = ptrtoint ptr %blockSizeMax to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %blockSizeMax, align 8
  %mul = mul i32 %36, %inc
  %conv = zext i32 %mul to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end35.cond.end_crit_edge
  %cond = phi i64 [ %conv, %cond.false ], [ %34, %if.end35.cond.end_crit_edge ]
  %37 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub.ptr.sub, ptr %agg.result, align 8
  %frameSizeInfo.sroa.8.0.agg.result.sroa_idx66 = getelementptr inbounds i8, ptr %agg.result, i32 4
  %38 = ptrtoint ptr %frameSizeInfo.sroa.8.0.agg.result.sroa_idx66 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %frameSizeInfo.sroa.8.0.agg.result.sroa_idx66, align 4
  %frameSizeInfo.sroa.868.0.agg.result.sroa_idx70 = getelementptr inbounds i8, ptr %agg.result, i32 8
  %39 = ptrtoint ptr %frameSizeInfo.sroa.868.0.agg.result.sroa_idx70 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %cond, ptr %frameSizeInfo.sroa.868.0.agg.result.sroa_idx70, align 8
  br label %cleanup39

cleanup39:                                        ; preds = %cond.end, %if.then32, %cleanup25.thread, %if.then7, %if.then5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %zfh) #12
  br label %cleanup44

cleanup44:                                        ; preds = %cleanup39, %if.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ZSTD_decompressBound(ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #0 align 64 {
entry:
  %frameSizeInfo = alloca %struct.ZSTD_frameSizeInfo, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srcSize)
  %cmp.not19 = icmp eq i32 %srcSize, 0
  br i1 %cmp.not19, label %entry.cleanup6_crit_edge, label %while.body.lr.ph

entry.cleanup6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup6

while.body.lr.ph:                                 ; preds = %entry
  %decompressedBound2 = getelementptr inbounds %struct.ZSTD_frameSizeInfo, ptr %frameSizeInfo, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %bound.022 = phi i64 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %srcSize.addr.021 = phi i32 [ %srcSize, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %src.addr.020 = phi ptr [ %src, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %frameSizeInfo) #12
  %0 = call ptr @memset(ptr %frameSizeInfo, i32 255, i32 16)
  call fastcc void @ZSTD_findFrameSizeInfo(ptr nonnull sret(%struct.ZSTD_frameSizeInfo) align 8 %frameSizeInfo, ptr noundef %src.addr.020, i32 noundef %srcSize.addr.021)
  %1 = ptrtoint ptr %frameSizeInfo to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %frameSizeInfo, align 8
  %3 = ptrtoint ptr %decompressedBound2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %decompressedBound2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -120, i32 %2)
  %cmp.i = icmp ugt i32 %2, -120
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %4)
  %cmp3 = icmp eq i64 %4, -2
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp3
  br i1 %or.cond, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %frameSizeInfo) #12
  br label %cleanup6

cleanup:                                          ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %src.addr.020, i32 %2
  %sub = sub i32 %srcSize.addr.021, %2
  %add = add i64 %4, %bound.022
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %frameSizeInfo) #12
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %cleanup.cleanup6_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup.cleanup6_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup6

cleanup6:                                         ; preds = %cleanup.cleanup6_crit_edge, %cleanup.thread, %entry.cleanup6_crit_edge
  %retval.2 = phi i64 [ -2, %cleanup.thread ], [ 0, %entry.cleanup6_crit_edge ], [ %add, %cleanup.cleanup6_crit_edge ]
  ret i64 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_insertBlock(ptr noundef %dctx, ptr noundef %blockStart, i32 noundef returned %blockSize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ZSTD_checkContinuity(ptr noundef %dctx, ptr noundef %blockStart, i32 noundef %blockSize) #12
  %add.ptr = getelementptr i8, ptr %blockStart, i32 %blockSize
  %previousDstEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 6
  %0 = ptrtoint ptr %previousDstEnd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %add.ptr, ptr %previousDstEnd, align 4
  ret i32 %blockSize
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_checkContinuity(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decompress_usingDict(ptr noundef %dctx, ptr noundef %dst, i32 noundef %dstCapacity, ptr noundef %src, i32 noundef %srcSize, ptr noundef %dict, i32 noundef %dictSize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ZSTD_decompressMultiFrame(ptr noundef %dctx, ptr noundef %dst, i32 noundef %dstCapacity, ptr noundef %src, i32 noundef %srcSize, ptr noundef %dict, i32 noundef %dictSize, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_decompressMultiFrame(ptr noundef %dctx, ptr noundef %dst, i32 noundef %dstCapacity, ptr noundef %src, i32 noundef %srcSize, ptr noundef %dict, i32 noundef %dictSize, ptr noundef %ddict) unnamed_addr #0 align 64 {
entry:
  %blockProperties.i = alloca %struct.blockProperties_t, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ddict, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %ddict) #12
  %call1 = tail call i32 @ZSTD_DDict_dictSize(ptr noundef nonnull %ddict) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dict.addr.0 = phi ptr [ %call, %if.then ], [ %dict, %entry.if.end_crit_edge ]
  %dictSize.addr.0 = phi i32 [ %call1, %if.then ], [ %dictSize, %entry.if.end_crit_edge ]
  %format = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 20
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i156 = icmp eq i32 %1, 0
  %cond.i157 = select i1 %cmp.i156, i32 5, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i157, i32 %srcSize)
  %cmp.not150158 = icmp ugt i32 %cond.i157, %srcSize
  br i1 %cmp.not150158, label %if.end.while.end_crit_edge, label %while.body.lr.ph.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %if.end
  %dictEnd2.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 9
  %ddictIsCold.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 32
  %expected.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 10
  %stage.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 15
  %processedCSize.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 12
  %previousDstEnd.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 6
  %entropy.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4
  %hufTable.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 3
  %fseEntropy.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 17
  %litEntropy.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 16
  %dictID.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 31
  %bType.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 14
  %rep.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 4
  %MLTable.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 2
  %MLTptr.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 1
  %OFTable.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 1
  %OFTptr.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 2
  %HUFptr.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 3
  %2 = getelementptr inbounds %struct.blockProperties_t, ptr %blockProperties.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.blockProperties_t, ptr %blockProperties.i, i32 0, i32 2
  %validateChecksum.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 22
  %xxhState.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 18
  %fParams.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 11
  %checksumFlag.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 11, i32 6
  %forceIgnoreChecksum.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 21
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %cleanup58.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %cond.i164 = phi i32 [ %cond.i157, %while.body.lr.ph.lr.ph ], [ %cond.i, %cleanup58.while.body.lr.ph_crit_edge ]
  %cmp46 = phi i1 [ false, %while.body.lr.ph.lr.ph ], [ true, %cleanup58.while.body.lr.ph_crit_edge ]
  %dst.addr.0.ph162 = phi ptr [ %dst, %while.body.lr.ph.lr.ph ], [ %add.ptr55, %cleanup58.while.body.lr.ph_crit_edge ]
  %dstCapacity.addr.0.ph161 = phi i32 [ %dstCapacity, %while.body.lr.ph.lr.ph ], [ %sub57, %cleanup58.while.body.lr.ph_crit_edge ]
  %srcSize.addr.0.ph160 = phi i32 [ %srcSize, %while.body.lr.ph.lr.ph ], [ %srcSize.addr.2, %cleanup58.while.body.lr.ph_crit_edge ]
  %src.addr.0.ph159 = phi ptr [ %src, %while.body.lr.ph.lr.ph ], [ %src.addr.2, %cleanup58.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %cleanup13.while.body_crit_edge, %while.body.lr.ph
  %srcSize.addr.0152 = phi i32 [ %srcSize.addr.0.ph160, %while.body.lr.ph ], [ %sub, %cleanup13.while.body_crit_edge ]
  %src.addr.0151 = phi ptr [ %src.addr.0.ph159, %while.body.lr.ph ], [ %add.ptr, %cleanup13.while.body_crit_edge ]
  %4 = ptrtoint ptr %src.addr.0151 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %src.addr.0151, align 1
  %6 = and i32 %5, -251658241
  call void @__sanitizer_cov_trace_const_cmp4(i32 1344949528, i32 %6)
  %cmp4 = icmp eq i32 %6, 1344949528
  br i1 %cmp4, label %if.then5, label %cleanup.cont15

if.then5:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %srcSize.addr.0152)
  %cmp.i97 = icmp ult i32 %srcSize.addr.0152, 8
  br i1 %cmp.i97, label %if.then5.cleanup64_crit_edge, label %if.end.i

if.then5.cleanup64_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup64

if.end.i:                                         ; preds = %if.then5
  %add.ptr.i = getelementptr i8, ptr %src.addr.0151, i32 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %add.ptr.i, align 1
  %9 = call i32 @llvm.bswap.i32(i32 %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %9)
  %cmp1.i = icmp ugt i32 %9, -9
  br i1 %cmp1.i, label %if.end.i.cleanup64_crit_edge, label %readSkippableFrameSize.exit

if.end.i.cleanup64_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup64

readSkippableFrameSize.exit:                      ; preds = %if.end.i
  %add.i = add nuw i32 %9, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %srcSize.addr.0152)
  %cmp5.i = icmp ugt i32 %add.i, %srcSize.addr.0152
  %.add.i = select i1 %cmp5.i, i32 -72, i32 %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %.add.i)
  %cmp.i98 = icmp ult i32 %.add.i, -119
  br i1 %cmp.i98, label %cleanup13, label %readSkippableFrameSize.exit.cleanup64_crit_edge

readSkippableFrameSize.exit.cleanup64_crit_edge:  ; preds = %readSkippableFrameSize.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup64

cleanup13:                                        ; preds = %readSkippableFrameSize.exit
  %add.ptr = getelementptr i8, ptr %src.addr.0151, i32 %.add.i
  %sub = sub i32 %srcSize.addr.0152, %.add.i
  %cmp.not = icmp ult i32 %sub, %cond.i164
  br i1 %cmp.not, label %cleanup13.while.end_crit_edge, label %cleanup13.while.body_crit_edge

cleanup13.while.body_crit_edge:                   ; preds = %cleanup13
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup13.while.end_crit_edge:                    ; preds = %cleanup13
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

cleanup.cont15:                                   ; preds = %while.body
  br i1 %tobool.not, label %do.body30, label %ZSTD_decompressBegin_usingDDict.exit

ZSTD_decompressBegin_usingDDict.exit:             ; preds = %cleanup.cont15
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %ddict) #12
  %call1.i = call i32 @ZSTD_DDict_dictSize(ptr noundef nonnull %ddict) #12
  %add.ptr.i99 = getelementptr i8, ptr %call.i, i32 %call1.i
  %10 = ptrtoint ptr %dictEnd2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dictEnd2.i, align 8
  %cmp.i100 = icmp ne ptr %11, %add.ptr.i99
  %conv.i101 = zext i1 %cmp.i100 to i32
  %12 = ptrtoint ptr %ddictIsCold.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv.i101, ptr %ddictIsCold.i, align 4
  %13 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i.i = icmp eq i32 %14, 0
  %cond.i.i.i = select i1 %cmp.i.i.i, i32 5, i32 1
  %15 = ptrtoint ptr %expected.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond.i.i.i, ptr %expected.i.i, align 4
  %16 = ptrtoint ptr %stage.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %stage.i.i, align 4
  %17 = call ptr @memset(ptr %previousDstEnd.i.i, i32 0, i32 16)
  %18 = call ptr @memset(ptr %processedCSize.i.i, i32 0, i32 16)
  %19 = ptrtoint ptr %hufTable.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 201326604, ptr %hufTable.i.i, align 8
  %20 = ptrtoint ptr %fseEntropy.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %fseEntropy.i.i, align 4
  %21 = ptrtoint ptr %litEntropy.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %litEntropy.i.i, align 8
  %22 = ptrtoint ptr %dictID.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %dictID.i.i, align 8
  %23 = ptrtoint ptr %bType.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %bType.i.i, align 8
  %24 = call ptr @memcpy(ptr %rep.i.i, ptr @repStartValue, i32 12)
  %25 = ptrtoint ptr %dctx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entropy.i.i, ptr %dctx, align 8
  %26 = ptrtoint ptr %MLTptr.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %MLTable.i.i, ptr %MLTptr.i.i, align 4
  %27 = ptrtoint ptr %OFTptr.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %OFTable.i.i, ptr %OFTptr.i.i, align 8
  %28 = ptrtoint ptr %HUFptr.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %hufTable.i.i, ptr %HUFptr.i.i, align 4
  call void @ZSTD_copyDDictParameters(ptr noundef %dctx, ptr noundef nonnull %ddict) #12
  br label %if.end42

do.body30:                                        ; preds = %cleanup.cont15
  %call32 = call i32 @ZSTD_decompressBegin_usingDict(ptr noundef %dctx, ptr noundef %dict.addr.0, i32 noundef %dictSize.addr.0), !range !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call32)
  %cmp.i102 = icmp ult i32 %call32, -119
  br i1 %cmp.i102, label %do.body30.if.end42_crit_edge, label %do.body30.cleanup64_crit_edge

do.body30.cleanup64_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup64

do.body30.if.end42_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.end42:                                         ; preds = %do.body30.if.end42_crit_edge, %ZSTD_decompressBegin_usingDDict.exit
  call void @ZSTD_checkContinuity(ptr noundef %dctx, ptr noundef %dst.addr.0.ph162, i32 noundef %dstCapacity.addr.0.ph161) #12
  %add.ptr.i104 = getelementptr i8, ptr %dst.addr.0.ph162, i32 %dstCapacity.addr.0.ph161
  %29 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp1.i105 = icmp eq i32 %30, 0
  %add.i106 = select i1 %cmp1.i105, i32 9, i32 5
  call void @__sanitizer_cov_trace_cmp4(i32 %srcSize.addr.0152, i32 %add.i106)
  %cmp3.i = icmp ult i32 %srcSize.addr.0152, %add.i106
  br i1 %cmp3.i, label %if.end42.ZSTD_decompressFrame.exit_crit_edge, label %ZSTD_frameHeaderSize_internal.exit.i

if.end42.ZSTD_decompressFrame.exit_crit_edge:     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_decompressFrame.exit

ZSTD_frameHeaderSize_internal.exit.i:             ; preds = %if.end42
  %cond6.i = select i1 %cmp1.i105, i32 5, i32 1
  %sub.i.i = add nsw i32 %cond6.i, -1
  %arrayidx.i.i = getelementptr i8, ptr %src.addr.0151, i32 %sub.i.i
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %32 to i32
  %and.i.i = and i32 %conv.i.i, 3
  %33 = lshr i32 %conv.i.i, 6
  %34 = and i32 %conv.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i = icmp ne i32 %34, 0
  %.lobit.i.i = lshr exact i32 %34, 5
  %35 = xor i32 %.lobit.i.i, 1
  %arrayidx5.i.i = getelementptr [4 x i32], ptr @ZSTD_did_fieldSize, i32 0, i32 %and.i.i
  %36 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx5.i.i, align 4
  %arrayidx7.i.i = getelementptr [4 x i32], ptr @ZSTD_fcs_fieldSize, i32 0, i32 %33
  %38 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %32)
  %tobool10.not.i.i = icmp ult i8 %32, 64
  %narrow.i.i = select i1 %tobool.not.i.i, i1 %tobool10.not.i.i, i1 false
  %40 = zext i1 %narrow.i.i to i32
  %add.i.i = add i32 %37, %cond6.i
  %add6.i.i = add i32 %add.i.i, %39
  %add8.i.i = add i32 %add6.i.i, %35
  %add13.i.i = add i32 %add8.i.i, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %add13.i.i)
  %cmp.i203.i = icmp ult i32 %add13.i.i, -119
  br i1 %cmp.i203.i, label %if.end10.i, label %ZSTD_frameHeaderSize_internal.exit.i.ZSTD_decompressFrame.exit_crit_edge

ZSTD_frameHeaderSize_internal.exit.i.ZSTD_decompressFrame.exit_crit_edge: ; preds = %ZSTD_frameHeaderSize_internal.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_decompressFrame.exit

if.end10.i:                                       ; preds = %ZSTD_frameHeaderSize_internal.exit.i
  %add11.i = add nuw i32 %add13.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %srcSize.addr.0152, i32 %add11.i)
  %cmp12.i = icmp ult i32 %srcSize.addr.0152, %add11.i
  br i1 %cmp12.i, label %if.end10.i.ZSTD_decompressFrame.exit_crit_edge, label %do.body.i107

if.end10.i.ZSTD_decompressFrame.exit_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_decompressFrame.exit

do.body.i107:                                     ; preds = %if.end10.i
  %call15.i = call fastcc i32 @ZSTD_decodeFrameHeader(ptr noundef %dctx, ptr noundef %src.addr.0151, i32 noundef %add13.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call15.i)
  %cmp.i205.i = icmp ult i32 %call15.i, -119
  br i1 %cmp.i205.i, label %cleanup21.i, label %do.body.i107.ZSTD_decompressFrame.exit_crit_edge

do.body.i107.ZSTD_decompressFrame.exit_crit_edge: ; preds = %do.body.i107
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_decompressFrame.exit

cleanup21.i:                                      ; preds = %do.body.i107
  %add.ptr20.i = getelementptr i8, ptr %src.addr.0151, i32 %add13.i.i
  %sub.i = sub i32 %srcSize.addr.0152, %add13.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %blockProperties.i) #12
  %41 = ptrtoint ptr %blockProperties.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %blockProperties.i, align 4, !annotation !35
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %2, align 4, !annotation !35
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %3, align 4, !annotation !35
  %call24247.i = call i32 @ZSTD_getcBlockSize(ptr noundef %add.ptr20.i, i32 noundef %sub.i, ptr noundef nonnull %blockProperties.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call24247.i)
  %cmp.i207248.i = icmp ult i32 %call24247.i, -119
  br i1 %cmp.i207248.i, label %if.end28.lr.ph.i, label %cleanup21.i.cleanup66.thread.i_crit_edge

cleanup21.i.cleanup66.thread.i_crit_edge:         ; preds = %cleanup21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup66.thread.i

if.end28.lr.ph.i:                                 ; preds = %cleanup21.i
  %sub.ptr.lhs.cast41.i = ptrtoint ptr %add.ptr.i104 to i32
  br label %if.end28.i

if.end28.i:                                       ; preds = %cleanup66.i.if.end28.i_crit_edge, %if.end28.lr.ph.i
  %call24253.i = phi i32 [ %call24247.i, %if.end28.lr.ph.i ], [ %call24.i, %cleanup66.i.if.end28.i_crit_edge ]
  %remainingSrcSize.1252.i = phi i32 [ %sub.i, %if.end28.lr.ph.i ], [ %sub62.i, %cleanup66.i.if.end28.i_crit_edge ]
  %op.0250.i = phi ptr [ %dst.addr.0.ph162, %if.end28.lr.ph.i ], [ %add.ptr59.i, %cleanup66.i.if.end28.i_crit_edge ]
  %ip.1249.i = phi ptr [ %add.ptr20.i, %if.end28.lr.ph.i ], [ %add.ptr61.i, %cleanup66.i.if.end28.i_crit_edge ]
  %add.ptr29.i = getelementptr i8, ptr %ip.1249.i, i32 3
  %sub30.i = add i32 %remainingSrcSize.1252.i, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub30.i, i32 %call24253.i)
  %cmp31.i = icmp ult i32 %sub30.i, %call24253.i
  br i1 %cmp31.i, label %if.end28.i.cleanup66.thread.i_crit_edge, label %if.end33.i

if.end28.i.cleanup66.thread.i_crit_edge:          ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup66.thread.i

if.end33.i:                                       ; preds = %if.end28.i
  %44 = ptrtoint ptr %blockProperties.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %blockProperties.i, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %45, label %if.end33.i.cleanup66.thread.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 0, label %sw.bb35.i
    i32 1, label %sw.bb40.i
  ]

if.end33.i.cleanup66.thread.i_crit_edge:          ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup66.thread.i

sw.bb.i:                                          ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.rhs.cast.i = ptrtoint ptr %op.0250.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast41.i, %sub.ptr.rhs.cast.i
  %call34.i = call i32 @ZSTD_decompressBlock_internal(ptr noundef %dctx, ptr noundef %op.0250.i, i32 noundef %sub.ptr.sub.i, ptr noundef %add.ptr29.i, i32 noundef %call24253.i, i32 noundef 1) #12
  br label %sw.epilog.i

sw.bb35.i:                                        ; preds = %if.end33.i
  %sub.ptr.rhs.cast37.i = ptrtoint ptr %op.0250.i to i32
  %sub.ptr.sub38.i = sub i32 %sub.ptr.lhs.cast41.i, %sub.ptr.rhs.cast37.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call24253.i, i32 %sub.ptr.sub38.i)
  %cmp.i209.i = icmp ugt i32 %call24253.i, %sub.ptr.sub38.i
  br i1 %cmp.i209.i, label %sw.bb35.i.cleanup66.thread.i_crit_edge, label %if.end.i210.i

sw.bb35.i.cleanup66.thread.i_crit_edge:           ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup66.thread.i

if.end.i210.i:                                    ; preds = %sw.bb35.i
  %cmp1.i.i = icmp eq ptr %op.0250.i, null
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.end6.i.i

if.then2.i.i:                                     ; preds = %if.end.i210.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24253.i)
  %cmp3.i.i = icmp eq i32 %call24253.i, 0
  br i1 %cmp3.i.i, label %if.then2.i.i.if.end52.i_crit_edge, label %if.then2.i.i.cleanup66.thread.i_crit_edge

if.then2.i.i.cleanup66.thread.i_crit_edge:        ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup66.thread.i

if.then2.i.i.if.end52.i_crit_edge:                ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i

if.end6.i.i:                                      ; preds = %if.end.i210.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = call ptr @memcpy(ptr %op.0250.i, ptr %add.ptr29.i, i32 %call24253.i)
  br label %if.end52.i

sw.bb40.i:                                        ; preds = %if.end33.i
  %sub.ptr.rhs.cast42.i = ptrtoint ptr %op.0250.i to i32
  %sub.ptr.sub43.i = sub i32 %sub.ptr.lhs.cast41.i, %sub.ptr.rhs.cast42.i
  %48 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %add.ptr29.i, align 1
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %sub.ptr.sub43.i)
  %cmp.i212.i = icmp ugt i32 %51, %sub.ptr.sub43.i
  br i1 %cmp.i212.i, label %sw.bb40.i.cleanup66.thread.i_crit_edge, label %if.end.i214.i

sw.bb40.i.cleanup66.thread.i_crit_edge:           ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup66.thread.i

if.end.i214.i:                                    ; preds = %sw.bb40.i
  %cmp1.i213.i = icmp eq ptr %op.0250.i, null
  br i1 %cmp1.i213.i, label %if.then2.i217.i, label %if.end6.i218.i

if.then2.i217.i:                                  ; preds = %if.end.i214.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp3.i215.i = icmp eq i32 %51, 0
  br i1 %cmp3.i215.i, label %if.then2.i217.i.if.end52.i_crit_edge, label %if.then2.i217.i.cleanup66.thread.i_crit_edge

if.then2.i217.i.cleanup66.thread.i_crit_edge:     ; preds = %if.then2.i217.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup66.thread.i

if.then2.i217.i.if.end52.i_crit_edge:             ; preds = %if.then2.i217.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i

if.end6.i218.i:                                   ; preds = %if.end.i214.i
  call void @__sanitizer_cov_trace_pc() #14
  %52 = zext i8 %49 to i32
  %53 = call ptr @memset(ptr %op.0250.i, i32 %52, i32 %51)
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end6.i218.i, %sw.bb.i
  %decodedSize.0.i = phi i32 [ %call34.i, %sw.bb.i ], [ %51, %if.end6.i218.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %decodedSize.0.i)
  %cmp.i220.i = icmp ult i32 %decodedSize.0.i, -119
  br i1 %cmp.i220.i, label %sw.epilog.i.if.end52.i_crit_edge, label %sw.epilog.i.cleanup66.thread.i_crit_edge

sw.epilog.i.cleanup66.thread.i_crit_edge:         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup66.thread.i

sw.epilog.i.if.end52.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i

if.end52.i:                                       ; preds = %sw.epilog.i.if.end52.i_crit_edge, %if.then2.i217.i.if.end52.i_crit_edge, %if.end6.i.i, %if.then2.i.i.if.end52.i_crit_edge
  %decodedSize.0263.i = phi i32 [ %decodedSize.0.i, %sw.epilog.i.if.end52.i_crit_edge ], [ %call24253.i, %if.end6.i.i ], [ 0, %if.then2.i.i.if.end52.i_crit_edge ], [ 0, %if.then2.i217.i.if.end52.i_crit_edge ]
  %54 = ptrtoint ptr %validateChecksum.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %validateChecksum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool53.not.i = icmp eq i32 %55, 0
  br i1 %tobool53.not.i, label %if.end52.i.if.end56.i_crit_edge, label %if.then54.i

if.end52.i.if.end56.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

if.then54.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  %call55.i = call i32 @xxh64_update(ptr noundef %xxhState.i, ptr noundef %op.0250.i, i32 noundef %decodedSize.0263.i) #12
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then54.i, %if.end52.i.if.end56.i_crit_edge
  %add.ptr59.i = getelementptr i8, ptr %op.0250.i, i32 %decodedSize.0263.i
  %add.ptr61.i = getelementptr i8, ptr %add.ptr29.i, i32 %call24253.i
  %sub62.i = sub i32 %sub30.i, %call24253.i
  %56 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool63.not.i = icmp eq i32 %57, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %blockProperties.i) #12
  br i1 %tobool63.not.i, label %cleanup66.i, label %while.end.i

cleanup66.thread.i:                               ; preds = %cleanup66.i.cleanup66.thread.i_crit_edge, %sw.epilog.i.cleanup66.thread.i_crit_edge, %if.then2.i217.i.cleanup66.thread.i_crit_edge, %sw.bb40.i.cleanup66.thread.i_crit_edge, %if.then2.i.i.cleanup66.thread.i_crit_edge, %sw.bb35.i.cleanup66.thread.i_crit_edge, %if.end33.i.cleanup66.thread.i_crit_edge, %if.end28.i.cleanup66.thread.i_crit_edge, %cleanup21.i.cleanup66.thread.i_crit_edge
  %retval.3.ph.i = phi i32 [ %call24247.i, %cleanup21.i.cleanup66.thread.i_crit_edge ], [ -70, %sw.bb40.i.cleanup66.thread.i_crit_edge ], [ -70, %sw.bb35.i.cleanup66.thread.i_crit_edge ], [ %decodedSize.0.i, %sw.epilog.i.cleanup66.thread.i_crit_edge ], [ -20, %if.end33.i.cleanup66.thread.i_crit_edge ], [ -72, %if.end28.i.cleanup66.thread.i_crit_edge ], [ %call24.i, %cleanup66.i.cleanup66.thread.i_crit_edge ], [ -74, %if.then2.i.i.cleanup66.thread.i_crit_edge ], [ -74, %if.then2.i217.i.cleanup66.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %blockProperties.i) #12
  br label %ZSTD_decompressFrame.exit

cleanup66.i:                                      ; preds = %if.end56.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %blockProperties.i) #12
  %58 = ptrtoint ptr %blockProperties.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %blockProperties.i, align 4, !annotation !35
  %59 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %2, align 4, !annotation !35
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %3, align 4, !annotation !35
  %call24.i = call i32 @ZSTD_getcBlockSize(ptr noundef %add.ptr61.i, i32 noundef %sub62.i, ptr noundef nonnull %blockProperties.i) #12
  %cmp.i207.i = icmp ult i32 %call24.i, -119
  br i1 %cmp.i207.i, label %cleanup66.i.if.end28.i_crit_edge, label %cleanup66.i.cleanup66.thread.i_crit_edge

cleanup66.i.cleanup66.thread.i_crit_edge:         ; preds = %cleanup66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup66.thread.i

cleanup66.i.if.end28.i_crit_edge:                 ; preds = %cleanup66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

while.end.i:                                      ; preds = %if.end56.i
  %61 = ptrtoint ptr %fParams.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %fParams.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %62)
  %cmp71.not.i = icmp eq i64 %62, -1
  br i1 %cmp71.not.i, label %while.end.i.if.end82.i_crit_edge, label %if.then72.i

while.end.i.if.end82.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82.i

if.then72.i:                                      ; preds = %while.end.i
  %sub.ptr.lhs.cast73.i = ptrtoint ptr %add.ptr59.i to i32
  %sub.ptr.rhs.cast74.i = ptrtoint ptr %dst.addr.0.ph162 to i32
  %sub.ptr.sub75.i = sub i32 %sub.ptr.lhs.cast73.i, %sub.ptr.rhs.cast74.i
  %conv.i108 = sext i32 %sub.ptr.sub75.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %62, i64 %conv.i108)
  %cmp78.not.i = icmp eq i64 %62, %conv.i108
  br i1 %cmp78.not.i, label %if.then72.i.if.end82.i_crit_edge, label %if.then72.i.ZSTD_decompressFrame.exit_crit_edge

if.then72.i.ZSTD_decompressFrame.exit_crit_edge:  ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_decompressFrame.exit

if.then72.i.if.end82.i_crit_edge:                 ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then72.i.if.end82.i_crit_edge, %while.end.i.if.end82.i_crit_edge
  %63 = ptrtoint ptr %checksumFlag.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %checksumFlag.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool84.not.i = icmp eq i32 %64, 0
  br i1 %tobool84.not.i, label %if.end82.i.if.end107.i_crit_edge, label %if.then85.i

if.end82.i.if.end107.i_crit_edge:                 ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107.i

if.then85.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub62.i)
  %cmp86.i = icmp ult i32 %sub62.i, 4
  br i1 %cmp86.i, label %if.then85.i.ZSTD_decompressFrame.exit_crit_edge, label %if.end89.i

if.then85.i.ZSTD_decompressFrame.exit_crit_edge:  ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_decompressFrame.exit

if.end89.i:                                       ; preds = %if.then85.i
  %65 = ptrtoint ptr %forceIgnoreChecksum.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %forceIgnoreChecksum.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool90.not.i = icmp eq i32 %66, 0
  br i1 %tobool90.not.i, label %if.then91.i, label %if.end89.i.if.end104.i_crit_edge

if.end89.i.if.end104.i_crit_edge:                 ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104.i

if.then91.i:                                      ; preds = %if.end89.i
  %call93.i = call i64 @xxh64_digest(ptr noundef %xxhState.i) #12
  %conv94.i = trunc i64 %call93.i to i32
  %67 = ptrtoint ptr %add.ptr61.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %add.ptr61.i, align 1
  %69 = call i32 @llvm.bswap.i32(i32 %68) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %conv94.i)
  %cmp96.not.i = icmp eq i32 %69, %conv94.i
  br i1 %cmp96.not.i, label %if.then91.i.if.end104.i_crit_edge, label %if.then91.i.ZSTD_decompressFrame.exit_crit_edge

if.then91.i.ZSTD_decompressFrame.exit_crit_edge:  ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_decompressFrame.exit

if.then91.i.if.end104.i_crit_edge:                ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then91.i.if.end104.i_crit_edge, %if.end89.i.if.end104.i_crit_edge
  %add.ptr105.i = getelementptr i8, ptr %add.ptr61.i, i32 4
  %sub106.i = add i32 %sub62.i, -4
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.end104.i, %if.end82.i.if.end107.i_crit_edge
  %ip.3.i = phi ptr [ %add.ptr105.i, %if.end104.i ], [ %add.ptr61.i, %if.end82.i.if.end107.i_crit_edge ]
  %remainingSrcSize.3.i = phi i32 [ %sub106.i, %if.end104.i ], [ %sub62.i, %if.end82.i.if.end107.i_crit_edge ]
  %sub.ptr.lhs.cast108.i = ptrtoint ptr %add.ptr59.i to i32
  %sub.ptr.rhs.cast109.i = ptrtoint ptr %dst.addr.0.ph162 to i32
  %sub.ptr.sub110.i = sub i32 %sub.ptr.lhs.cast108.i, %sub.ptr.rhs.cast109.i
  br label %ZSTD_decompressFrame.exit

ZSTD_decompressFrame.exit:                        ; preds = %if.end107.i, %if.then91.i.ZSTD_decompressFrame.exit_crit_edge, %if.then85.i.ZSTD_decompressFrame.exit_crit_edge, %if.then72.i.ZSTD_decompressFrame.exit_crit_edge, %cleanup66.thread.i, %do.body.i107.ZSTD_decompressFrame.exit_crit_edge, %if.end10.i.ZSTD_decompressFrame.exit_crit_edge, %ZSTD_frameHeaderSize_internal.exit.i.ZSTD_decompressFrame.exit_crit_edge, %if.end42.ZSTD_decompressFrame.exit_crit_edge
  %src.addr.2 = phi ptr [ %src.addr.0151, %if.end42.ZSTD_decompressFrame.exit_crit_edge ], [ %src.addr.0151, %if.end10.i.ZSTD_decompressFrame.exit_crit_edge ], [ %src.addr.0151, %cleanup66.thread.i ], [ %ip.3.i, %if.end107.i ], [ %src.addr.0151, %if.then85.i.ZSTD_decompressFrame.exit_crit_edge ], [ %src.addr.0151, %if.then91.i.ZSTD_decompressFrame.exit_crit_edge ], [ %src.addr.0151, %if.then72.i.ZSTD_decompressFrame.exit_crit_edge ], [ %src.addr.0151, %do.body.i107.ZSTD_decompressFrame.exit_crit_edge ], [ %src.addr.0151, %ZSTD_frameHeaderSize_internal.exit.i.ZSTD_decompressFrame.exit_crit_edge ]
  %srcSize.addr.2 = phi i32 [ %srcSize.addr.0152, %if.end42.ZSTD_decompressFrame.exit_crit_edge ], [ %srcSize.addr.0152, %if.end10.i.ZSTD_decompressFrame.exit_crit_edge ], [ %srcSize.addr.0152, %cleanup66.thread.i ], [ %remainingSrcSize.3.i, %if.end107.i ], [ %srcSize.addr.0152, %if.then85.i.ZSTD_decompressFrame.exit_crit_edge ], [ %srcSize.addr.0152, %if.then91.i.ZSTD_decompressFrame.exit_crit_edge ], [ %srcSize.addr.0152, %if.then72.i.ZSTD_decompressFrame.exit_crit_edge ], [ %srcSize.addr.0152, %do.body.i107.ZSTD_decompressFrame.exit_crit_edge ], [ %srcSize.addr.0152, %ZSTD_frameHeaderSize_internal.exit.i.ZSTD_decompressFrame.exit_crit_edge ]
  %retval.5.i = phi i32 [ -72, %if.end42.ZSTD_decompressFrame.exit_crit_edge ], [ -72, %if.end10.i.ZSTD_decompressFrame.exit_crit_edge ], [ %retval.3.ph.i, %cleanup66.thread.i ], [ %sub.ptr.sub110.i, %if.end107.i ], [ -22, %if.then85.i.ZSTD_decompressFrame.exit_crit_edge ], [ -22, %if.then91.i.ZSTD_decompressFrame.exit_crit_edge ], [ -20, %if.then72.i.ZSTD_decompressFrame.exit_crit_edge ], [ %call15.i, %do.body.i107.ZSTD_decompressFrame.exit_crit_edge ], [ %add13.i.i, %ZSTD_frameHeaderSize_internal.exit.i.ZSTD_decompressFrame.exit_crit_edge ]
  %call44 = call i32 @ZSTD_getErrorCode(i32 noundef %retval.5.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call44)
  %cmp45 = icmp eq i32 %call44, 10
  %or.cond = and i1 %cmp45, %cmp46
  br i1 %or.cond, label %ZSTD_decompressFrame.exit.cleanup64_crit_edge, label %if.end48

ZSTD_decompressFrame.exit.cleanup64_crit_edge:    ; preds = %ZSTD_decompressFrame.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup64

if.end48:                                         ; preds = %ZSTD_decompressFrame.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %retval.5.i)
  %cmp.i109 = icmp ult i32 %retval.5.i, -119
  br i1 %cmp.i109, label %cleanup58, label %if.end48.cleanup64_crit_edge

if.end48.cleanup64_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup64

cleanup58:                                        ; preds = %if.end48
  %add.ptr55 = getelementptr i8, ptr %dst.addr.0.ph162, i32 %retval.5.i
  %sub57 = sub i32 %dstCapacity.addr.0.ph161, %retval.5.i
  %70 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i = icmp eq i32 %71, 0
  %cond.i = select i1 %cmp.i, i32 5, i32 1
  %cmp.not150 = icmp ult i32 %srcSize.addr.2, %cond.i
  br i1 %cmp.not150, label %cleanup58.while.end_crit_edge, label %cleanup58.while.body.lr.ph_crit_edge

cleanup58.while.body.lr.ph_crit_edge:             ; preds = %cleanup58
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.lr.ph

cleanup58.while.end_crit_edge:                    ; preds = %cleanup58
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %cleanup58.while.end_crit_edge, %cleanup13.while.end_crit_edge, %if.end.while.end_crit_edge
  %dst.addr.0.ph.lcssa149 = phi ptr [ %dst, %if.end.while.end_crit_edge ], [ %dst.addr.0.ph162, %cleanup13.while.end_crit_edge ], [ %add.ptr55, %cleanup58.while.end_crit_edge ]
  %srcSize.addr.0.lcssa = phi i32 [ %srcSize, %if.end.while.end_crit_edge ], [ %sub, %cleanup13.while.end_crit_edge ], [ %srcSize.addr.2, %cleanup58.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srcSize.addr.0.lcssa)
  %tobool61.not = icmp eq i32 %srcSize.addr.0.lcssa, 0
  br i1 %tobool61.not, label %if.end63, label %while.end.cleanup64_crit_edge

while.end.cleanup64_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup64

if.end63:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast = ptrtoint ptr %dst.addr.0.ph.lcssa149 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %dst to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup64

cleanup64:                                        ; preds = %if.end63, %while.end.cleanup64_crit_edge, %if.end48.cleanup64_crit_edge, %ZSTD_decompressFrame.exit.cleanup64_crit_edge, %do.body30.cleanup64_crit_edge, %readSkippableFrameSize.exit.cleanup64_crit_edge, %if.end.i.cleanup64_crit_edge, %if.then5.cleanup64_crit_edge
  %retval.7 = phi i32 [ %sub.ptr.sub, %if.end63 ], [ -72, %while.end.cleanup64_crit_edge ], [ %.add.i, %readSkippableFrameSize.exit.cleanup64_crit_edge ], [ -14, %if.end.i.cleanup64_crit_edge ], [ -72, %if.then5.cleanup64_crit_edge ], [ %call32, %do.body30.cleanup64_crit_edge ], [ %retval.5.i, %if.end48.cleanup64_crit_edge ], [ -72, %ZSTD_decompressFrame.exit.cleanup64_crit_edge ]
  ret i32 %retval.7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decompressDCtx(ptr noundef %dctx, ptr noundef %dst, i32 noundef %dstCapacity, ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dictUses.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 33
  %0 = ptrtoint ptr %dictUses.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dictUses.i, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %1, label %sw.bb.i [
    i32 1, label %sw.bb2.i
    i32 -1, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ddictLocal.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 29
  %3 = ptrtoint ptr %ddictLocal.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ddictLocal.i.i, align 8
  %call.i.i = tail call i32 @ZSTD_freeDDict(ptr noundef %4) #12
  %5 = ptrtoint ptr %ddictLocal.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ddictLocal.i.i, align 8
  %ddict.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 30
  %6 = ptrtoint ptr %ddict.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ddict.i.i, align 4
  %7 = ptrtoint ptr %dictUses.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %dictUses.i, align 8
  br label %ZSTD_getDDict.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ddict.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 30
  %8 = ptrtoint ptr %ddict.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddict.i, align 4
  br label %ZSTD_getDDict.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %dictUses.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dictUses.i, align 8
  %ddict4.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 30
  %11 = ptrtoint ptr %ddict4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ddict4.i, align 4
  br label %ZSTD_getDDict.exit

ZSTD_getDDict.exit:                               ; preds = %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ null, %sw.bb.i ], [ %9, %sw.bb1.i ], [ %12, %sw.bb2.i ]
  %call.i = tail call fastcc i32 @ZSTD_decompressMultiFrame(ptr noundef %dctx, ptr noundef %dst, i32 noundef %dstCapacity, ptr noundef %src, i32 noundef %srcSize, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decompress_usingDDict(ptr noundef %dctx, ptr noundef %dst, i32 noundef %dstCapacity, ptr noundef %src, i32 noundef %srcSize, ptr noundef %ddict) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ZSTD_decompressMultiFrame(ptr noundef %dctx, ptr noundef %dst, i32 noundef %dstCapacity, ptr noundef %src, i32 noundef %srcSize, ptr noundef null, i32 noundef 0, ptr noundef %ddict)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ZSTD_getDDict(ptr nocapture noundef %dctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dictUses = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 33
  %0 = ptrtoint ptr %dictUses to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dictUses, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %1, label %sw.bb [
    i32 1, label %sw.bb2
    i32 -1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ddictLocal.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 29
  %3 = ptrtoint ptr %ddictLocal.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ddictLocal.i, align 8
  %call.i = tail call i32 @ZSTD_freeDDict(ptr noundef %4) #12
  %5 = ptrtoint ptr %ddictLocal.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ddictLocal.i, align 8
  %ddict.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 30
  %6 = ptrtoint ptr %ddict.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ddict.i, align 4
  %7 = ptrtoint ptr %dictUses to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %dictUses, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ddict = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 30
  %8 = ptrtoint ptr %ddict to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddict, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %dictUses to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dictUses, align 8
  %ddict4 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 30
  %11 = ptrtoint ptr %ddict4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ddict4, align 4
  br label %return

return:                                           ; preds = %sw.bb2, %sw.bb1, %sw.bb
  %retval.0 = phi ptr [ null, %sw.bb ], [ %9, %sw.bb1 ], [ %12, %sw.bb2 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decompress(ptr noundef %dst, i32 noundef %dstCapacity, ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @ZSTD_customMalloc(i32 noundef 161320, [3 x i32] zeroinitializer) #12
  %tobool5.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not.i.i, label %entry.cleanup_crit_edge, label %ZSTD_decompressDCtx.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

ZSTD_decompressDCtx.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %customMem8.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 24
  %0 = ptrtoint ptr %customMem8.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %customMem8.i.i, align 4
  %customMem.sroa.4.0.customMem8.sroa_idx.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 24, i32 1
  %1 = ptrtoint ptr %customMem.sroa.4.0.customMem8.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %customMem.sroa.4.0.customMem8.sroa_idx.i.i, align 4
  %customMem.sroa.7.0.customMem8.sroa_idx.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 24, i32 2
  %2 = ptrtoint ptr %customMem.sroa.7.0.customMem8.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %customMem.sroa.7.0.customMem8.sroa_idx.i.i, align 4
  %staticSize.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 27
  %dictEnd.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 9
  %3 = ptrtoint ptr %dictEnd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %dictEnd.i.i.i, align 8
  %ddictIsCold.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 32
  %4 = ptrtoint ptr %ddictIsCold.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ddictIsCold.i.i.i, align 4
  %dictUses.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 33
  %5 = ptrtoint ptr %dictUses.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %dictUses.i.i.i, align 8
  %inBuff.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 37
  %6 = ptrtoint ptr %inBuff.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %inBuff.i.i.i, align 8
  %inBuffSize.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 38
  %7 = ptrtoint ptr %inBuffSize.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %inBuffSize.i.i.i, align 4
  %outBuffSize.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 42
  %8 = ptrtoint ptr %outBuffSize.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %outBuffSize.i.i.i, align 4
  %streamStage.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 36
  %9 = ptrtoint ptr %streamStage.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %streamStage.i.i.i, align 4
  %legacyContext.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 46
  %10 = ptrtoint ptr %legacyContext.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %legacyContext.i.i.i, align 4
  %previousLegacyVersion.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 47
  %11 = ptrtoint ptr %previousLegacyVersion.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %previousLegacyVersion.i.i.i, align 8
  %noForwardProgress.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 50
  %12 = ptrtoint ptr %noForwardProgress.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %noForwardProgress.i.i.i, align 4
  %oversizedDuration.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 55
  %13 = ptrtoint ptr %oversizedDuration.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %oversizedDuration.i.i.i, align 4
  %ddictSet.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 34
  %14 = ptrtoint ptr %ddictSet.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %ddictSet.i.i.i, align 4
  %format.i.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 20
  %15 = ptrtoint ptr %format.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %format.i.i.i.i, align 4
  %maxWindowSize.i.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 40
  %16 = call ptr @memset(ptr %staticSize.i.i.i, i32 0, i32 16)
  %17 = ptrtoint ptr %maxWindowSize.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 134217729, ptr %maxWindowSize.i.i.i.i, align 4
  %outBufferMode.i.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 51
  %18 = ptrtoint ptr %outBufferMode.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %outBufferMode.i.i.i.i, align 8
  %forceIgnoreChecksum.i.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 21
  %19 = ptrtoint ptr %forceIgnoreChecksum.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %forceIgnoreChecksum.i.i.i.i, align 8
  %refMultipleDDicts.i.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 35
  %20 = ptrtoint ptr %refMultipleDDicts.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %refMultipleDDicts.i.i.i.i, align 8
  %ddictLocal.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 29
  %21 = ptrtoint ptr %ddictLocal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ddictLocal.i.i.i, align 8
  %call.i.i.i = tail call i32 @ZSTD_freeDDict(ptr noundef %22) #12
  %23 = ptrtoint ptr %ddictLocal.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %ddictLocal.i.i.i, align 8
  %ddict.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 30
  %24 = ptrtoint ptr %ddict.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %ddict.i.i.i, align 4
  %25 = ptrtoint ptr %dictUses.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %dictUses.i.i.i, align 8
  %call.i.i6 = tail call fastcc i32 @ZSTD_decompressMultiFrame(ptr noundef nonnull %call.i.i, ptr noundef %dst, i32 noundef %dstCapacity, ptr noundef %src, i32 noundef %srcSize, ptr noundef null, i32 noundef 0, ptr noundef null) #12
  %call2 = tail call i32 @ZSTD_freeDCtx(ptr noundef nonnull %call.i.i)
  br label %cleanup

cleanup:                                          ; preds = %ZSTD_decompressDCtx.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i6, %ZSTD_decompressDCtx.exit ], [ -64, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_nextSrcSizeToDecompress(ptr nocapture noundef readonly %dctx) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %expected = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 10
  %0 = ptrtoint ptr %expected to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %expected, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_nextInputType(ptr nocapture noundef readonly %dctx) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %stage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 15
  %0 = ptrtoint ptr %stage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stage, align 4
  %switch.tableidx = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 6
  br i1 %2, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.ZSTD_nextInputType, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decompressContinue(ptr noundef %dctx, ptr noundef %dst, i32 noundef %dstCapacity, ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca %struct.blockProperties_t, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %stage.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 15
  %0 = ptrtoint ptr %stage.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stage.i, align 4
  %.off.i = add i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %expected.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 10
  %2 = ptrtoint ptr %expected.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %expected.i, align 4
  br label %ZSTD_nextSrcSizeToDecompressWithInputSize.exit

if.end.i:                                         ; preds = %entry
  %bType.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 14
  %4 = ptrtoint ptr %bType.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bType.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3.not.i = icmp eq i32 %5, 0
  br i1 %cmp3.not.i, label %if.end6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %expected5.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 10
  %6 = ptrtoint ptr %expected5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %expected5.i, align 4
  br label %ZSTD_nextSrcSizeToDecompressWithInputSize.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call i32 @llvm.umax.i32(i32 %srcSize, i32 1) #12
  %expected8.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 10
  %9 = ptrtoint ptr %expected8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %expected8.i, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %8, i32 %10) #12
  br label %ZSTD_nextSrcSizeToDecompressWithInputSize.exit

ZSTD_nextSrcSizeToDecompressWithInputSize.exit:   ; preds = %if.end6.i, %if.then4.i, %if.then.i
  %retval.0.i = phi i32 [ %7, %if.then4.i ], [ %3, %if.then.i ], [ %11, %if.end6.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %srcSize)
  %cmp.not = icmp eq i32 %retval.0.i, %srcSize
  br i1 %cmp.not, label %if.end, label %ZSTD_nextSrcSizeToDecompressWithInputSize.exit.sw.epilog198_crit_edge

ZSTD_nextSrcSizeToDecompressWithInputSize.exit.sw.epilog198_crit_edge: ; preds = %ZSTD_nextSrcSizeToDecompressWithInputSize.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog198

if.end:                                           ; preds = %ZSTD_nextSrcSizeToDecompressWithInputSize.exit
  tail call void @ZSTD_checkContinuity(ptr noundef %dctx, ptr noundef %dst, i32 noundef %dstCapacity) #12
  %conv = zext i32 %srcSize to i64
  %processedCSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 12
  %12 = ptrtoint ptr %processedCSize to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %processedCSize, align 8
  %add = add i64 %13, %conv
  store i64 %add, ptr %processedCSize, align 8
  %14 = ptrtoint ptr %stage.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stage.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %15, label %if.end.sw.epilog198_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb24
    i32 2, label %sw.bb39
    i32 4, label %if.end.sw.bb72_crit_edge
    i32 3, label %if.end.sw.bb72_crit_edge367
    i32 5, label %sw.bb159
    i32 6, label %sw.bb180
    i32 7, label %sw.bb191
  ]

if.end.sw.bb72_crit_edge367:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb72

if.end.sw.bb72_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb72

if.end.sw.epilog198_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog198

sw.bb:                                            ; preds = %if.end
  %format = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 20
  %17 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1 = icmp eq i32 %18, 0
  br i1 %cmp1, label %if.then3, label %sw.bb.if.end10_crit_edge

sw.bb.if.end10_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then3:                                         ; preds = %sw.bb
  %19 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %src, align 1
  %21 = and i32 %20, -251658241
  call void @__sanitizer_cov_trace_const_cmp4(i32 1344949528, i32 %21)
  %cmp5 = icmp eq i32 %21, 1344949528
  br i1 %cmp5, label %if.then7, label %if.then3.if.end10_crit_edge

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %headerBuffer = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 54
  %22 = call ptr @memcpy(ptr %headerBuffer, ptr %src, i32 %srcSize)
  %sub = sub i32 8, %srcSize
  %expected = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 10
  %23 = ptrtoint ptr %expected to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub, ptr %expected, align 4
  %24 = ptrtoint ptr %stage.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 6, ptr %stage.i, align 4
  br label %sw.epilog198

if.end10:                                         ; preds = %if.then3.if.end10_crit_edge, %sw.bb.if.end10_crit_edge
  %cond.i.i = phi i32 [ 5, %if.then3.if.end10_crit_edge ], [ 1, %sw.bb.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %srcSize)
  %cmp.i = icmp ugt i32 %cond.i.i, %srcSize
  br i1 %cmp.i, label %ZSTD_frameHeaderSize_internal.exit.thread, label %ZSTD_frameHeaderSize_internal.exit

ZSTD_frameHeaderSize_internal.exit.thread:        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %headerSize349 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 19
  %25 = ptrtoint ptr %headerSize349 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -72, ptr %headerSize349, align 8
  br label %sw.epilog198

ZSTD_frameHeaderSize_internal.exit:               ; preds = %if.end10
  %sub.i = add nsw i32 %cond.i.i, -1
  %arrayidx.i = getelementptr i8, ptr %src, i32 %sub.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %27 to i32
  %and.i = and i32 %conv.i, 3
  %28 = lshr i32 %conv.i, 6
  %29 = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp ne i32 %29, 0
  %.lobit.i = lshr exact i32 %29, 5
  %30 = xor i32 %.lobit.i, 1
  %arrayidx5.i = getelementptr [4 x i32], ptr @ZSTD_did_fieldSize, i32 0, i32 %and.i
  %31 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx5.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @ZSTD_fcs_fieldSize, i32 0, i32 %28
  %33 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %27)
  %tobool10.not.i = icmp ult i8 %27, 64
  %narrow.i = select i1 %tobool.not.i, i1 %tobool10.not.i, i1 false
  %35 = zext i1 %narrow.i to i32
  %add.i = add i32 %32, %cond.i.i
  %add6.i = add i32 %add.i, %34
  %add8.i = add i32 %add6.i, %30
  %add13.i = add i32 %add8.i, %35
  %headerSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 19
  %36 = ptrtoint ptr %headerSize to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add13.i, ptr %headerSize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %add13.i)
  %cmp.i326 = icmp ult i32 %add13.i, -119
  br i1 %cmp.i326, label %if.end17, label %ZSTD_frameHeaderSize_internal.exit.sw.epilog198_crit_edge

ZSTD_frameHeaderSize_internal.exit.sw.epilog198_crit_edge: ; preds = %ZSTD_frameHeaderSize_internal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog198

if.end17:                                         ; preds = %ZSTD_frameHeaderSize_internal.exit
  call void @__sanitizer_cov_trace_pc() #14
  %headerBuffer18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 54
  %37 = call ptr @memcpy(ptr %headerBuffer18, ptr %src, i32 %srcSize)
  %sub21 = sub i32 %add13.i, %srcSize
  %expected22 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 10
  %38 = ptrtoint ptr %expected22 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub21, ptr %expected22, align 4
  %39 = ptrtoint ptr %stage.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %stage.i, align 4
  br label %sw.epilog198

sw.bb24:                                          ; preds = %if.end
  %headerBuffer25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 54
  %headerSize27 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 19
  %40 = ptrtoint ptr %headerSize27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %headerSize27, align 8
  %sub28 = sub i32 %41, %srcSize
  %add.ptr = getelementptr i8, ptr %headerBuffer25, i32 %sub28
  %42 = call ptr @memcpy(ptr %add.ptr, ptr %src, i32 %srcSize)
  %43 = load i32, ptr %headerSize27, align 8
  %call32 = tail call fastcc i32 @ZSTD_decodeFrameHeader(ptr noundef %dctx, ptr noundef %headerBuffer25, i32 noundef %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call32)
  %cmp.i328 = icmp ult i32 %call32, -119
  br i1 %cmp.i328, label %do.end, label %sw.bb24.sw.epilog198_crit_edge

sw.bb24.sw.epilog198_crit_edge:                   ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog198

do.end:                                           ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #14
  %expected37 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 10
  %44 = ptrtoint ptr %expected37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %expected37, align 4
  %45 = ptrtoint ptr %stage.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %stage.i, align 4
  br label %sw.epilog198

sw.bb39:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bp) #12
  %46 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %bp, align 4, !annotation !35
  %47 = getelementptr inbounds %struct.blockProperties_t, ptr %bp, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %47, align 4, !annotation !35
  %49 = getelementptr inbounds %struct.blockProperties_t, ptr %bp, i32 0, i32 2
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %49, align 4, !annotation !35
  %call40 = call i32 @ZSTD_getcBlockSize(ptr noundef %src, i32 noundef 3, ptr noundef nonnull %bp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call40)
  %cmp.i330 = icmp ult i32 %call40, -119
  br i1 %cmp.i330, label %if.end44, label %sw.bb39.cleanup70_crit_edge

sw.bb39.cleanup70_crit_edge:                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup70

if.end44:                                         ; preds = %sw.bb39
  %blockSizeMax = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 11, i32 2
  %51 = ptrtoint ptr %blockSizeMax to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %blockSizeMax, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call40, i32 %52)
  %cmp45 = icmp ugt i32 %call40, %52
  br i1 %cmp45, label %if.end44.cleanup70_crit_edge, label %if.end48

if.end44.cleanup70_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup70

if.end48:                                         ; preds = %if.end44
  %expected49 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 10
  %53 = ptrtoint ptr %expected49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call40, ptr %expected49, align 4
  %54 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bp, align 4
  %bType = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 14
  %56 = ptrtoint ptr %bType to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %bType, align 8
  %57 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %49, align 4
  %rleSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 26
  %59 = ptrtoint ptr %rleSize to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %rleSize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool50.not = icmp eq i32 %call40, 0
  %60 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool56.not = icmp eq i32 %61, 0
  br i1 %tobool50.not, label %if.end54, label %if.then51

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %cond = select i1 %tobool56.not, i32 3, i32 4
  br label %cleanup70.sink.split

if.end54:                                         ; preds = %if.end48
  br i1 %tobool56.not, label %if.else66, label %if.then57

if.then57:                                        ; preds = %if.end54
  %checksumFlag = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 11, i32 6
  %62 = ptrtoint ptr %checksumFlag to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %checksumFlag, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool59.not = icmp eq i32 %63, 0
  br i1 %tobool59.not, label %if.else, label %if.then60

if.then60:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %expected49 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 4, ptr %expected49, align 4
  br label %cleanup70.sink.split

if.else:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %expected49 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %expected49, align 4
  br label %cleanup70.sink.split

if.else66:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %expected49 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 3, ptr %expected49, align 4
  br label %cleanup70.sink.split

cleanup70.sink.split:                             ; preds = %if.else66, %if.else, %if.then60, %if.then51
  %.sink = phi i32 [ 2, %if.else66 ], [ 0, %if.else ], [ 5, %if.then60 ], [ %cond, %if.then51 ]
  %67 = ptrtoint ptr %stage.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %.sink, ptr %stage.i, align 4
  br label %cleanup70

cleanup70:                                        ; preds = %cleanup70.sink.split, %if.end44.cleanup70_crit_edge, %sw.bb39.cleanup70_crit_edge
  %retval.1 = phi i32 [ %call40, %sw.bb39.cleanup70_crit_edge ], [ -20, %if.end44.cleanup70_crit_edge ], [ 0, %cleanup70.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bp) #12
  br label %sw.epilog198

sw.bb72:                                          ; preds = %if.end.sw.bb72_crit_edge, %if.end.sw.bb72_crit_edge367
  %bType73 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 14
  %68 = ptrtoint ptr %bType73 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bType73, align 8
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %69, label %sw.bb72.sw.epilog198_crit_edge [
    i32 2, label %sw.bb74
    i32 0, label %sw.bb77
    i32 1, label %sw.bb91
  ]

sw.bb72.sw.epilog198_crit_edge:                   ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog198

sw.bb74:                                          ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #14
  %call75 = tail call i32 @ZSTD_decompressBlock_internal(ptr noundef %dctx, ptr noundef %dst, i32 noundef %dstCapacity, ptr noundef %src, i32 noundef %srcSize, i32 noundef 1) #12
  br label %do.body99

sw.bb77:                                          ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_cmp4(i32 %srcSize, i32 %dstCapacity)
  %cmp.i332 = icmp ugt i32 %srcSize, %dstCapacity
  br i1 %cmp.i332, label %sw.bb77.sw.epilog198_crit_edge, label %if.end.i333

sw.bb77.sw.epilog198_crit_edge:                   ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog198

if.end.i333:                                      ; preds = %sw.bb77
  %cmp1.i = icmp eq ptr %dst, null
  br i1 %cmp1.i, label %if.then2.i, label %ZSTD_copyRawBlock.exit

if.then2.i:                                       ; preds = %if.end.i333
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srcSize)
  %cmp3.i = icmp eq i32 %srcSize, 0
  br i1 %cmp3.i, label %if.then2.i.do.body99.thread_crit_edge, label %if.then2.i.sw.epilog198_crit_edge

if.then2.i.sw.epilog198_crit_edge:                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog198

if.then2.i.do.body99.thread_crit_edge:            ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body99.thread

ZSTD_copyRawBlock.exit:                           ; preds = %if.end.i333
  %71 = call ptr @memcpy(ptr %dst, ptr %src, i32 %srcSize)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %srcSize)
  %cmp.i336 = icmp ult i32 %srcSize, -119
  br i1 %cmp.i336, label %ZSTD_copyRawBlock.exit.do.body99.thread_crit_edge, label %ZSTD_copyRawBlock.exit.sw.epilog198_crit_edge

ZSTD_copyRawBlock.exit.sw.epilog198_crit_edge:    ; preds = %ZSTD_copyRawBlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog198

ZSTD_copyRawBlock.exit.do.body99.thread_crit_edge: ; preds = %ZSTD_copyRawBlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body99.thread

do.body99.thread:                                 ; preds = %ZSTD_copyRawBlock.exit.do.body99.thread_crit_edge, %if.then2.i.do.body99.thread_crit_edge
  %expected89 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 10
  %72 = ptrtoint ptr %expected89 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %expected89, align 4
  %sub90 = sub i32 %73, %srcSize
  store i32 %sub90, ptr %expected89, align 4
  br label %do.end109

sw.bb91:                                          ; preds = %sw.bb72
  %74 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %src, align 1
  %rleSize92 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 26
  %76 = ptrtoint ptr %rleSize92 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rleSize92, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %dstCapacity)
  %cmp.i338 = icmp ugt i32 %77, %dstCapacity
  br i1 %cmp.i338, label %sw.bb91.do.body99_crit_edge, label %if.end.i340

sw.bb91.do.body99_crit_edge:                      ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body99

if.end.i340:                                      ; preds = %sw.bb91
  %cmp1.i339 = icmp eq ptr %dst, null
  br i1 %cmp1.i339, label %if.then2.i343, label %if.end6.i344

if.then2.i343:                                    ; preds = %if.end.i340
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp3.i341 = icmp eq i32 %77, 0
  %..i342 = select i1 %cmp3.i341, i32 0, i32 -74
  br label %do.body99

if.end6.i344:                                     ; preds = %if.end.i340
  call void @__sanitizer_cov_trace_pc() #14
  %78 = zext i8 %75 to i32
  %79 = call ptr @memset(ptr %dst, i32 %78, i32 %77)
  br label %do.body99

do.body99:                                        ; preds = %if.end6.i344, %if.then2.i343, %sw.bb91.do.body99_crit_edge, %sw.bb74
  %rSize.0 = phi i32 [ %call75, %sw.bb74 ], [ %77, %if.end6.i344 ], [ -70, %sw.bb91.do.body99_crit_edge ], [ %..i342, %if.then2.i343 ]
  %expected76 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 10
  %80 = ptrtoint ptr %expected76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %expected76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %rSize.0)
  %cmp.i346 = icmp ult i32 %rSize.0, -119
  br i1 %cmp.i346, label %do.body99.do.end109_crit_edge, label %do.body99.sw.epilog198_crit_edge

do.body99.sw.epilog198_crit_edge:                 ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog198

do.body99.do.end109_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end109

do.end109:                                        ; preds = %do.body99.do.end109_crit_edge, %do.body99.thread
  %rSize.0366 = phi i32 [ %srcSize, %do.body99.thread ], [ %rSize.0, %do.body99.do.end109_crit_edge ]
  %fParams110 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 11
  %blockSizeMax111 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 11, i32 2
  %81 = ptrtoint ptr %blockSizeMax111 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %blockSizeMax111, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %rSize.0366, i32 %82)
  %cmp112 = icmp ugt i32 %rSize.0366, %82
  br i1 %cmp112, label %do.end109.sw.epilog198_crit_edge, label %if.end115

do.end109.sw.epilog198_crit_edge:                 ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog198

if.end115:                                        ; preds = %do.end109
  %conv116 = zext i32 %rSize.0366 to i64
  %decodedSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 13
  %83 = ptrtoint ptr %decodedSize to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %decodedSize, align 8
  %add117 = add i64 %84, %conv116
  store i64 %add117, ptr %decodedSize, align 8
  %validateChecksum = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 22
  %85 = ptrtoint ptr %validateChecksum to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %validateChecksum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool118.not = icmp eq i32 %86, 0
  br i1 %tobool118.not, label %if.end115.if.end121_crit_edge, label %if.then119

if.end115.if.end121_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

if.then119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  %xxhState = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 18
  %call120 = tail call i32 @xxh64_update(ptr noundef %xxhState, ptr noundef %dst, i32 noundef %rSize.0366) #12
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.end115.if.end121_crit_edge
  %add.ptr122 = getelementptr i8, ptr %dst, i32 %rSize.0366
  %previousDstEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 6
  %87 = ptrtoint ptr %previousDstEnd to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %add.ptr122, ptr %previousDstEnd, align 4
  %expected123 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 10
  %88 = ptrtoint ptr %expected123 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %expected123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp124.not = icmp eq i32 %89, 0
  br i1 %cmp124.not, label %if.end127, label %if.end121.sw.epilog198_crit_edge

if.end121.sw.epilog198_crit_edge:                 ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog198

if.end127:                                        ; preds = %if.end121
  %90 = ptrtoint ptr %stage.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %stage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %91)
  %cmp129 = icmp eq i32 %91, 4
  br i1 %cmp129, label %if.then131, label %if.else154

if.then131:                                       ; preds = %if.end127
  %92 = ptrtoint ptr %fParams110 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %fParams110, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %93)
  %cmp133.not = icmp eq i64 %93, -1
  br i1 %cmp133.not, label %if.then131.if.end141_crit_edge, label %land.lhs.true

if.then131.if.end141_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

land.lhs.true:                                    ; preds = %if.then131
  %94 = ptrtoint ptr %decodedSize to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %decodedSize, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %95, i64 %93)
  %cmp138.not = icmp eq i64 %95, %93
  br i1 %cmp138.not, label %land.lhs.true.if.end141_crit_edge, label %land.lhs.true.sw.epilog198_crit_edge

land.lhs.true.sw.epilog198_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog198

land.lhs.true.if.end141_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

if.end141:                                        ; preds = %land.lhs.true.if.end141_crit_edge, %if.then131.if.end141_crit_edge
  %checksumFlag143 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 11, i32 6
  %96 = ptrtoint ptr %checksumFlag143 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %checksumFlag143, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool144.not = icmp eq i32 %97, 0
  br i1 %tobool144.not, label %if.else148, label %if.then145

if.then145:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %expected123 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 4, ptr %expected123, align 4
  %99 = ptrtoint ptr %stage.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 5, ptr %stage.i, align 4
  br label %sw.epilog198

if.else148:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  %100 = ptrtoint ptr %expected123 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %expected123, align 4
  %101 = ptrtoint ptr %stage.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %stage.i, align 4
  br label %sw.epilog198

if.else154:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #14
  %102 = ptrtoint ptr %stage.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 2, ptr %stage.i, align 4
  %103 = ptrtoint ptr %expected123 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 3, ptr %expected123, align 4
  br label %sw.epilog198

sw.bb159:                                         ; preds = %if.end
  %validateChecksum160 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 22
  %104 = ptrtoint ptr %validateChecksum160 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %validateChecksum160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool161.not = icmp eq i32 %105, 0
  br i1 %tobool161.not, label %sw.bb159.if.end175_crit_edge, label %if.then162

sw.bb159.if.end175_crit_edge:                     ; preds = %sw.bb159
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end175

if.then162:                                       ; preds = %sw.bb159
  %xxhState163 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 18
  %call164 = tail call i64 @xxh64_digest(ptr noundef %xxhState163) #12
  %conv165 = trunc i64 %call164 to i32
  %106 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %src, align 1
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %conv165)
  %cmp167.not = icmp eq i32 %108, %conv165
  br i1 %cmp167.not, label %if.then162.if.end175_crit_edge, label %if.then162.sw.epilog198_crit_edge

if.then162.sw.epilog198_crit_edge:                ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog198

if.then162.if.end175_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end175

if.end175:                                        ; preds = %if.then162.if.end175_crit_edge, %sw.bb159.if.end175_crit_edge
  %expected178 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 10
  %109 = ptrtoint ptr %expected178 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %expected178, align 4
  %110 = ptrtoint ptr %stage.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %stage.i, align 4
  br label %sw.epilog198

sw.bb180:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %headerBuffer181 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 54
  %sub183 = sub i32 8, %srcSize
  %add.ptr184 = getelementptr i8, ptr %headerBuffer181, i32 %sub183
  %111 = call ptr @memcpy(ptr %add.ptr184, ptr %src, i32 %srcSize)
  %add.ptr187 = getelementptr %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 54, i32 4
  %112 = ptrtoint ptr %add.ptr187 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %add.ptr187, align 1
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #12
  %expected189 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 10
  %115 = ptrtoint ptr %expected189 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %expected189, align 4
  %116 = ptrtoint ptr %stage.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 7, ptr %stage.i, align 4
  br label %sw.epilog198

sw.bb191:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %expected192 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 10
  %117 = ptrtoint ptr %expected192 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %expected192, align 4
  %118 = ptrtoint ptr %stage.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %stage.i, align 4
  br label %sw.epilog198

sw.epilog198:                                     ; preds = %sw.bb191, %sw.bb180, %if.end175, %if.then162.sw.epilog198_crit_edge, %if.else154, %if.else148, %if.then145, %land.lhs.true.sw.epilog198_crit_edge, %if.end121.sw.epilog198_crit_edge, %do.end109.sw.epilog198_crit_edge, %do.body99.sw.epilog198_crit_edge, %ZSTD_copyRawBlock.exit.sw.epilog198_crit_edge, %if.then2.i.sw.epilog198_crit_edge, %sw.bb77.sw.epilog198_crit_edge, %sw.bb72.sw.epilog198_crit_edge, %cleanup70, %do.end, %sw.bb24.sw.epilog198_crit_edge, %if.end17, %ZSTD_frameHeaderSize_internal.exit.sw.epilog198_crit_edge, %ZSTD_frameHeaderSize_internal.exit.thread, %if.then7, %if.end.sw.epilog198_crit_edge, %ZSTD_nextSrcSizeToDecompressWithInputSize.exit.sw.epilog198_crit_edge
  %retval.7 = phi i32 [ 0, %sw.bb191 ], [ 0, %sw.bb180 ], [ -22, %if.then162.sw.epilog198_crit_edge ], [ 0, %if.end175 ], [ %retval.1, %cleanup70 ], [ %call32, %sw.bb24.sw.epilog198_crit_edge ], [ 0, %do.end ], [ 0, %if.then7 ], [ 0, %if.end17 ], [ -72, %ZSTD_nextSrcSizeToDecompressWithInputSize.exit.sw.epilog198_crit_edge ], [ %rSize.0, %do.body99.sw.epilog198_crit_edge ], [ %srcSize, %ZSTD_copyRawBlock.exit.sw.epilog198_crit_edge ], [ -20, %sw.bb72.sw.epilog198_crit_edge ], [ -20, %do.end109.sw.epilog198_crit_edge ], [ %rSize.0366, %if.end121.sw.epilog198_crit_edge ], [ -20, %land.lhs.true.sw.epilog198_crit_edge ], [ %rSize.0366, %if.then145 ], [ %rSize.0366, %if.else148 ], [ %rSize.0366, %if.else154 ], [ -1, %if.end.sw.epilog198_crit_edge ], [ -72, %ZSTD_frameHeaderSize_internal.exit.thread ], [ %add13.i, %ZSTD_frameHeaderSize_internal.exit.sw.epilog198_crit_edge ], [ -70, %sw.bb77.sw.epilog198_crit_edge ], [ -74, %if.then2.i.sw.epilog198_crit_edge ]
  ret i32 %retval.7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_decodeFrameHeader(ptr noundef %dctx, ptr noundef %src, i32 noundef %headerSize) unnamed_addr #0 align 64 {
entry:
  %dictID.addr.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fParams = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 11
  %format = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 20
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %call = tail call i32 @ZSTD_getFrameHeader_advanced(ptr noundef %fParams, ptr noundef %src, i32 noundef %headerSize, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call)
  %cmp.i = icmp ult i32 %call, -119
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %refMultipleDDicts = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 35
  %2 = ptrtoint ptr %refMultipleDDicts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refMultipleDDicts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp4 = icmp eq i32 %3, 1
  br i1 %cmp4, label %land.lhs.true, label %if.end3.if.end7_crit_edge

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end3
  %ddictSet = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 34
  %4 = ptrtoint ptr %ddictSet to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddictSet, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %land.lhs.true.if.end7_crit_edge, label %if.then6

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  %ddict.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 30
  %6 = ptrtoint ptr %ddict.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddict.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then6.if.end7_crit_edge, label %if.then.i

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then.i:                                        ; preds = %if.then6
  %dictID.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 11, i32 5
  %8 = ptrtoint ptr %dictID.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dictID.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dictID.addr.i.i.i) #12
  %10 = ptrtoint ptr %dictID.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dictID.addr.i.i.i, align 4
  %call.i.i.i = call i64 @xxh64(ptr noundef nonnull %dictID.addr.i.i.i, i32 noundef 4, i64 noundef 0) #12
  %ddictPtrTableSize.i.i.i = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %ddictPtrTableSize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ddictPtrTableSize.i.i.i, align 4
  %sub.i.i.i = add i32 %12, -1
  %13 = trunc i64 %call.i.i.i to i32
  %conv1.i.i.i = and i32 %sub.i.i.i, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dictID.addr.i.i.i) #12
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.then.i
  %idx.0.i.i = phi i32 [ %conv1.i.i.i, %if.then.i ], [ %inc.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %15, i32 %idx.0.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %call1.i.i = call i32 @ZSTD_getDictID_fromDDict(ptr noundef %17) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i.i, i32 %9)
  %cmp.i.i = icmp eq i32 %call1.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp eq i32 %call1.i.i, 0
  %or.cond.i.i = or i1 %cmp.i.i, %cmp2.i.i
  %and.i.i = and i32 %idx.0.i.i, %sub.i.i.i
  %inc.i.i = add i32 %and.i.i, 1
  br i1 %or.cond.i.i, label %ZSTD_DDictHashSet_getDDict.exit.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

ZSTD_DDictHashSet_getDDict.exit.i:                ; preds = %for.cond.i.i
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  %arrayidx4.i.i = getelementptr ptr, ptr %19, i32 %idx.0.i.i
  %20 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx4.i.i, align 4
  %tobool1.not.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i, label %ZSTD_DDictHashSet_getDDict.exit.i.if.end7_crit_edge, label %if.then2.i

ZSTD_DDictHashSet_getDDict.exit.i.if.end7_crit_edge: ; preds = %ZSTD_DDictHashSet_getDDict.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then2.i:                                       ; preds = %ZSTD_DDictHashSet_getDDict.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %ddictLocal.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 29
  %22 = ptrtoint ptr %ddictLocal.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ddictLocal.i.i, align 8
  %call.i.i = call i32 @ZSTD_freeDDict(ptr noundef %23) #12
  %24 = ptrtoint ptr %ddictLocal.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %ddictLocal.i.i, align 8
  %dictUses.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 33
  %25 = ptrtoint ptr %dictID.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dictID.i, align 4
  %dictID5.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 31
  %27 = ptrtoint ptr %dictID5.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %dictID5.i, align 8
  %28 = ptrtoint ptr %ddict.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %21, ptr %ddict.i, align 4
  %29 = ptrtoint ptr %dictUses.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %dictUses.i.i, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then2.i, %ZSTD_DDictHashSet_getDDict.exit.i.if.end7_crit_edge, %if.then6.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %if.end3.if.end7_crit_edge
  %dictID = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 11, i32 5
  %30 = ptrtoint ptr %dictID to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dictID, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool9.not = icmp eq i32 %31, 0
  br i1 %tobool9.not, label %if.end7.if.end16_crit_edge, label %land.lhs.true10

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

land.lhs.true10:                                  ; preds = %if.end7
  %dictID11 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 31
  %32 = ptrtoint ptr %dictID11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dictID11, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %31)
  %cmp14.not = icmp eq i32 %33, %31
  br i1 %cmp14.not, label %land.lhs.true10.if.end16_crit_edge, label %land.lhs.true10.cleanup_crit_edge

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true10.if.end16_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true10.if.end16_crit_edge, %if.end7.if.end16_crit_edge
  %checksumFlag = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 11, i32 6
  %34 = ptrtoint ptr %checksumFlag to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %checksumFlag, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool18.not = icmp eq i32 %35, 0
  br i1 %tobool18.not, label %if.end23.critedge, label %land.rhs

land.rhs:                                         ; preds = %if.end16
  %forceIgnoreChecksum = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 21
  %36 = ptrtoint ptr %forceIgnoreChecksum to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %forceIgnoreChecksum, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool19.not = icmp eq i32 %37, 0
  %cond = zext i1 %tobool19.not to i32
  %validateChecksum = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 22
  %38 = ptrtoint ptr %validateChecksum to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond, ptr %validateChecksum, align 4
  br i1 %tobool19.not, label %if.then22, label %land.rhs.if.end23_crit_edge

land.rhs.if.end23_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then22:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %xxhState = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 18
  call void @xxh64_reset(ptr noundef %xxhState, i64 noundef 0) #12
  br label %if.end23

if.end23.critedge:                                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %validateChecksum.c = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 22
  %39 = ptrtoint ptr %validateChecksum.c to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %validateChecksum.c, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end23.critedge, %if.then22, %land.rhs.if.end23_crit_edge
  %conv = zext i32 %headerSize to i64
  %processedCSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 12
  %40 = ptrtoint ptr %processedCSize to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %processedCSize, align 8
  %add = add i64 %41, %conv
  store i64 %add, ptr %processedCSize, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %land.lhs.true10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ %call, %entry.cleanup_crit_edge ], [ -72, %if.end.cleanup_crit_edge ], [ -32, %land.lhs.true10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_getcBlockSize(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_decompressBlock_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xxh64_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xxh64_digest(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_loadDEntropy(ptr noundef %entropy, ptr noundef %dict, i32 noundef %dictSize) local_unnamed_addr #0 align 64 {
entry:
  %offcodeNCount = alloca [32 x i16], align 2
  %offcodeMaxValue = alloca i32, align 4
  %offcodeLog = alloca i32, align 4
  %matchlengthNCount = alloca [53 x i16], align 2
  %matchlengthMaxValue = alloca i32, align 4
  %matchlengthLog = alloca i32, align 4
  %litlengthNCount = alloca [36 x i16], align 2
  %litlengthMaxValue = alloca i32, align 4
  %litlengthLog = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dict, i32 %dictSize
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %dictSize)
  %cmp = icmp ult i32 %dictSize, 9
  br i1 %cmp, label %entry.cleanup113_crit_edge, label %if.end

entry.cleanup113_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup113

if.end:                                           ; preds = %entry
  %add.ptr1 = getelementptr i8, ptr %dict, i32 8
  %hufTable = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy, i32 0, i32 3
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %gepdiff = add i32 %dictSize, -8
  %call = tail call i32 @HUF_readDTableX2_wksp(ptr noundef %hufTable, ptr noundef %add.ptr1, i32 noundef %gepdiff, ptr noundef %entropy, i32 noundef 10264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call)
  %cmp.i = icmp ult i32 %call, -119
  %dictPtr.0.idx = select i1 %cmp.i, i32 %call, i32 0
  %dictPtr.0 = getelementptr i8, ptr %add.ptr1, i32 %dictPtr.0.idx
  br i1 %cmp.i, label %cleanup.cont, label %if.end.cleanup113_crit_edge

if.end.cleanup113_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup113

cleanup.cont:                                     ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %offcodeNCount) #12
  %0 = call ptr @memset(ptr %offcodeNCount, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offcodeMaxValue) #12
  %1 = ptrtoint ptr %offcodeMaxValue to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 31, ptr %offcodeMaxValue, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offcodeLog) #12
  %2 = ptrtoint ptr %offcodeLog to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %offcodeLog, align 4, !annotation !35
  %sub.ptr.rhs.cast10 = ptrtoint ptr %dictPtr.0 to i32
  %sub.ptr.sub11 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast10
  %call12 = call i32 @FSE_readNCount(ptr noundef nonnull %offcodeNCount, ptr noundef nonnull %offcodeMaxValue, ptr noundef nonnull %offcodeLog, ptr noundef %dictPtr.0, i32 noundef %sub.ptr.sub11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call12)
  %cmp.i171 = icmp ult i32 %call12, -119
  br i1 %cmp.i171, label %if.end16, label %cleanup.cont.cleanup28.thread_crit_edge

cleanup.cont.cleanup28.thread_crit_edge:          ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup28.thread

if.end16:                                         ; preds = %cleanup.cont
  %3 = ptrtoint ptr %offcodeMaxValue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offcodeMaxValue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %4)
  %cmp17 = icmp ugt i32 %4, 31
  br i1 %cmp17, label %if.end16.cleanup28.thread_crit_edge, label %if.end19

if.end16.cleanup28.thread_crit_edge:              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup28.thread

if.end19:                                         ; preds = %if.end16
  %5 = ptrtoint ptr %offcodeLog to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offcodeLog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp20 = icmp ugt i32 %6, 8
  br i1 %cmp20, label %if.end19.cleanup28.thread_crit_edge, label %cleanup.cont33

if.end19.cleanup28.thread_crit_edge:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup28.thread

cleanup28.thread:                                 ; preds = %if.end19.cleanup28.thread_crit_edge, %if.end16.cleanup28.thread_crit_edge, %cleanup.cont.cleanup28.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offcodeLog) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offcodeMaxValue) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %offcodeNCount) #12
  br label %cleanup113

cleanup.cont33:                                   ; preds = %if.end19
  %OFTable = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy, i32 0, i32 1
  %workspace25 = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy, i32 0, i32 5
  call void @ZSTD_buildFSETable(ptr noundef %OFTable, ptr noundef nonnull %offcodeNCount, i32 noundef %4, ptr noundef nonnull @OF_base, ptr noundef nonnull @OF_bits, i32 noundef %6, ptr noundef %workspace25, i32 noundef 628, i32 noundef 0) #12
  %add.ptr27 = getelementptr i8, ptr %dictPtr.0, i32 %call12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offcodeLog) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offcodeMaxValue) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %offcodeNCount) #12
  call void @llvm.lifetime.start.p0(i64 106, ptr nonnull %matchlengthNCount) #12
  %7 = call ptr @memset(ptr %matchlengthNCount, i32 255, i32 106)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matchlengthMaxValue) #12
  %8 = ptrtoint ptr %matchlengthMaxValue to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 52, ptr %matchlengthMaxValue, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matchlengthLog) #12
  %9 = ptrtoint ptr %matchlengthLog to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %matchlengthLog, align 4, !annotation !35
  %sub.ptr.rhs.cast36 = ptrtoint ptr %add.ptr27 to i32
  %sub.ptr.sub37 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast36
  %call38 = call i32 @FSE_readNCount(ptr noundef nonnull %matchlengthNCount, ptr noundef nonnull %matchlengthMaxValue, ptr noundef nonnull %matchlengthLog, ptr noundef %add.ptr27, i32 noundef %sub.ptr.sub37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call38)
  %cmp.i173 = icmp ult i32 %call38, -119
  br i1 %cmp.i173, label %if.end42, label %cleanup.cont33.cleanup54.thread_crit_edge

cleanup.cont33.cleanup54.thread_crit_edge:        ; preds = %cleanup.cont33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup54.thread

if.end42:                                         ; preds = %cleanup.cont33
  %10 = ptrtoint ptr %matchlengthMaxValue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %matchlengthMaxValue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %11)
  %cmp43 = icmp ugt i32 %11, 52
  br i1 %cmp43, label %if.end42.cleanup54.thread_crit_edge, label %if.end45

if.end42.cleanup54.thread_crit_edge:              ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup54.thread

if.end45:                                         ; preds = %if.end42
  %12 = ptrtoint ptr %matchlengthLog to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %matchlengthLog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %13)
  %cmp46 = icmp ugt i32 %13, 9
  br i1 %cmp46, label %if.end45.cleanup54.thread_crit_edge, label %cleanup.cont59

if.end45.cleanup54.thread_crit_edge:              ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup54.thread

cleanup54.thread:                                 ; preds = %if.end45.cleanup54.thread_crit_edge, %if.end42.cleanup54.thread_crit_edge, %cleanup.cont33.cleanup54.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matchlengthLog) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matchlengthMaxValue) #12
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %matchlengthNCount) #12
  br label %cleanup113

cleanup.cont59:                                   ; preds = %if.end45
  %MLTable = getelementptr inbounds %struct.ZSTD_entropyDTables_t, ptr %entropy, i32 0, i32 2
  call void @ZSTD_buildFSETable(ptr noundef %MLTable, ptr noundef nonnull %matchlengthNCount, i32 noundef %11, ptr noundef nonnull @ML_base, ptr noundef nonnull @ML_bits, i32 noundef %13, ptr noundef %workspace25, i32 noundef 628, i32 noundef 0) #12
  %add.ptr53 = getelementptr i8, ptr %add.ptr27, i32 %call38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matchlengthLog) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matchlengthMaxValue) #12
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %matchlengthNCount) #12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %litlengthNCount) #12
  %14 = call ptr @memset(ptr %litlengthNCount, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %litlengthMaxValue) #12
  %15 = ptrtoint ptr %litlengthMaxValue to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 35, ptr %litlengthMaxValue, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %litlengthLog) #12
  %16 = ptrtoint ptr %litlengthLog to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %litlengthLog, align 4, !annotation !35
  %sub.ptr.rhs.cast62 = ptrtoint ptr %add.ptr53 to i32
  %sub.ptr.sub63 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast62
  %call64 = call i32 @FSE_readNCount(ptr noundef nonnull %litlengthNCount, ptr noundef nonnull %litlengthMaxValue, ptr noundef nonnull %litlengthLog, ptr noundef %add.ptr53, i32 noundef %sub.ptr.sub63) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call64)
  %cmp.i175 = icmp ult i32 %call64, -119
  br i1 %cmp.i175, label %if.end68, label %cleanup.cont59.cleanup81.thread_crit_edge

cleanup.cont59.cleanup81.thread_crit_edge:        ; preds = %cleanup.cont59
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup81.thread

if.end68:                                         ; preds = %cleanup.cont59
  %17 = ptrtoint ptr %litlengthMaxValue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %litlengthMaxValue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %18)
  %cmp69 = icmp ugt i32 %18, 35
  br i1 %cmp69, label %if.end68.cleanup81.thread_crit_edge, label %if.end71

if.end68.cleanup81.thread_crit_edge:              ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup81.thread

if.end71:                                         ; preds = %if.end68
  %19 = ptrtoint ptr %litlengthLog to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %litlengthLog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %20)
  %cmp72 = icmp ugt i32 %20, 9
  br i1 %cmp72, label %if.end71.cleanup81.thread_crit_edge, label %cleanup.cont86

if.end71.cleanup81.thread_crit_edge:              ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup81.thread

cleanup81.thread:                                 ; preds = %if.end71.cleanup81.thread_crit_edge, %if.end68.cleanup81.thread_crit_edge, %cleanup.cont59.cleanup81.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %litlengthLog) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %litlengthMaxValue) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %litlengthNCount) #12
  br label %cleanup113

cleanup.cont86:                                   ; preds = %if.end71
  call void @ZSTD_buildFSETable(ptr noundef %entropy, ptr noundef nonnull %litlengthNCount, i32 noundef %18, ptr noundef nonnull @LL_base, ptr noundef nonnull @LL_bits, i32 noundef %20, ptr noundef %workspace25, i32 noundef 628, i32 noundef 0) #12
  %add.ptr80 = getelementptr i8, ptr %add.ptr53, i32 %call64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %litlengthLog) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %litlengthMaxValue) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %litlengthNCount) #12
  %add.ptr87 = getelementptr i8, ptr %add.ptr80, i32 12
  %cmp88 = icmp ugt ptr %add.ptr87, %add.ptr
  br i1 %cmp88, label %cleanup.cont86.cleanup113_crit_edge, label %if.end90

cleanup.cont86.cleanup113_crit_edge:              ; preds = %cleanup.cont86
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup113

if.end90:                                         ; preds = %cleanup.cont86
  %sub.ptr.rhs.cast93 = ptrtoint ptr %add.ptr87 to i32
  %sub.ptr.sub94 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast93
  %21 = ptrtoint ptr %add.ptr80 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %add.ptr80, align 1
  %23 = call i32 @llvm.bswap.i32(i32 %22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp98 = icmp eq i32 %22, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %sub.ptr.sub94)
  %cmp99 = icmp ugt i32 %23, %sub.ptr.sub94
  %or.cond = select i1 %cmp98, i1 true, i1 %cmp99
  br i1 %or.cond, label %if.end90.cleanup113_crit_edge, label %if.end101

if.end90.cleanup113_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup113

if.end101:                                        ; preds = %if.end90
  %add.ptr97 = getelementptr i8, ptr %add.ptr80, i32 4
  %arrayidx = getelementptr %struct.ZSTD_entropyDTables_t, ptr %entropy, i32 0, i32 4, i32 0
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx, align 4
  %25 = ptrtoint ptr %add.ptr97 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %add.ptr97, align 1
  %27 = call i32 @llvm.bswap.i32(i32 %26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp98.1 = icmp eq i32 %26, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %sub.ptr.sub94)
  %cmp99.1 = icmp ugt i32 %27, %sub.ptr.sub94
  %or.cond.1 = select i1 %cmp98.1, i1 true, i1 %cmp99.1
  br i1 %or.cond.1, label %if.end101.cleanup113_crit_edge, label %if.end101.1

if.end101.cleanup113_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup113

if.end101.1:                                      ; preds = %if.end101
  %add.ptr97.1 = getelementptr i8, ptr %add.ptr97, i32 4
  %arrayidx.1 = getelementptr %struct.ZSTD_entropyDTables_t, ptr %entropy, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx.1, align 4
  %29 = ptrtoint ptr %add.ptr97.1 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %add.ptr97.1, align 1
  %31 = call i32 @llvm.bswap.i32(i32 %30) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp98.2 = icmp eq i32 %30, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %sub.ptr.sub94)
  %cmp99.2 = icmp ugt i32 %31, %sub.ptr.sub94
  %or.cond.2 = select i1 %cmp98.2, i1 true, i1 %cmp99.2
  br i1 %or.cond.2, label %if.end101.1.cleanup113_crit_edge, label %if.end101.2

if.end101.1.cleanup113_crit_edge:                 ; preds = %if.end101.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup113

if.end101.2:                                      ; preds = %if.end101.1
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr97.2 = getelementptr i8, ptr %add.ptr97.1, i32 4
  %arrayidx.2 = getelementptr %struct.ZSTD_entropyDTables_t, ptr %entropy, i32 0, i32 4, i32 2
  %32 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx.2, align 4
  %sub.ptr.lhs.cast110 = ptrtoint ptr %add.ptr97.2 to i32
  %sub.ptr.rhs.cast111 = ptrtoint ptr %dict to i32
  %sub.ptr.sub112 = sub i32 %sub.ptr.lhs.cast110, %sub.ptr.rhs.cast111
  br label %cleanup113

cleanup113:                                       ; preds = %if.end101.2, %if.end101.1.cleanup113_crit_edge, %if.end101.cleanup113_crit_edge, %if.end90.cleanup113_crit_edge, %cleanup.cont86.cleanup113_crit_edge, %cleanup81.thread, %cleanup54.thread, %cleanup28.thread, %if.end.cleanup113_crit_edge, %entry.cleanup113_crit_edge
  %retval.7 = phi i32 [ %sub.ptr.sub112, %if.end101.2 ], [ -30, %if.end.cleanup113_crit_edge ], [ -30, %entry.cleanup113_crit_edge ], [ -30, %cleanup.cont86.cleanup113_crit_edge ], [ -30, %cleanup28.thread ], [ -30, %cleanup54.thread ], [ -30, %cleanup81.thread ], [ -30, %if.end101.1.cleanup113_crit_edge ], [ -30, %if.end101.cleanup113_crit_edge ], [ -30, %if.end90.cleanup113_crit_edge ]
  ret i32 %retval.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_readDTableX2_wksp(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_readNCount(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_buildFSETable(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_decompressBegin(ptr noundef %dctx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 20
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  %cond.i = select i1 %cmp.i, i32 5, i32 1
  %expected = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 10
  %2 = ptrtoint ptr %expected to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond.i, ptr %expected, align 4
  %stage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 15
  %3 = ptrtoint ptr %stage to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %stage, align 4
  %processedCSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 12
  %previousDstEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 6
  %entropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4
  %hufTable = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 3
  %4 = call ptr @memset(ptr %previousDstEnd, i32 0, i32 16)
  %5 = call ptr @memset(ptr %processedCSize, i32 0, i32 16)
  %6 = ptrtoint ptr %hufTable to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 201326604, ptr %hufTable, align 8
  %fseEntropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 17
  %7 = ptrtoint ptr %fseEntropy to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %fseEntropy, align 4
  %litEntropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 16
  %8 = ptrtoint ptr %litEntropy to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %litEntropy, align 8
  %dictID = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 31
  %9 = ptrtoint ptr %dictID to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %dictID, align 8
  %bType = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 14
  %10 = ptrtoint ptr %bType to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %bType, align 8
  %rep = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 4
  %11 = call ptr @memcpy(ptr %rep, ptr @repStartValue, i32 12)
  %12 = ptrtoint ptr %dctx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entropy, ptr %dctx, align 8
  %MLTable = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 2
  %MLTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 1
  %13 = ptrtoint ptr %MLTptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %MLTable, ptr %MLTptr, align 4
  %OFTable = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 1
  %OFTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 2
  %14 = ptrtoint ptr %OFTptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %OFTable, ptr %OFTptr, align 8
  %HUFptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 3
  %15 = ptrtoint ptr %HUFptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %hufTable, ptr %HUFptr, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decompressBegin_usingDict(ptr noundef %dctx, ptr noundef %dict, i32 noundef %dictSize) local_unnamed_addr #0 align 64 {
do.end:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %format.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 20
  %0 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 0
  %cond.i.i = select i1 %cmp.i.i, i32 5, i32 1
  %expected.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 10
  %2 = ptrtoint ptr %expected.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond.i.i, ptr %expected.i, align 4
  %stage.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 15
  %3 = ptrtoint ptr %stage.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %stage.i, align 4
  %processedCSize.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 12
  %previousDstEnd.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 6
  %entropy.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4
  %hufTable.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 3
  %4 = call ptr @memset(ptr %previousDstEnd.i, i32 0, i32 16)
  %5 = call ptr @memset(ptr %processedCSize.i, i32 0, i32 16)
  %6 = ptrtoint ptr %hufTable.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 201326604, ptr %hufTable.i, align 8
  %fseEntropy.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 17
  %7 = ptrtoint ptr %fseEntropy.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %fseEntropy.i, align 4
  %litEntropy.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 16
  %8 = ptrtoint ptr %litEntropy.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %litEntropy.i, align 8
  %dictID.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 31
  %9 = ptrtoint ptr %dictID.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %dictID.i, align 8
  %bType.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 14
  %10 = ptrtoint ptr %bType.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %bType.i, align 8
  %rep.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 4
  %11 = call ptr @memcpy(ptr %rep.i, ptr @repStartValue, i32 12)
  %12 = ptrtoint ptr %dctx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entropy.i, ptr %dctx, align 8
  %MLTable.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 2
  %MLTptr.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 1
  %13 = ptrtoint ptr %MLTptr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %MLTable.i, ptr %MLTptr.i, align 4
  %OFTable.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 1
  %OFTptr.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 2
  %14 = ptrtoint ptr %OFTptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %OFTable.i, ptr %OFTptr.i, align 8
  %HUFptr.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 3
  %15 = ptrtoint ptr %HUFptr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %hufTable.i, ptr %HUFptr.i, align 4
  %tobool2.not = icmp eq ptr %dict, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dictSize)
  %tobool3.not = icmp eq i32 %dictSize, 0
  %or.cond = or i1 %tobool2.not, %tobool3.not
  br i1 %or.cond, label %do.end.return_crit_edge, label %if.then4

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %dictSize)
  %cmp.i = icmp ult i32 %dictSize, 8
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %previousDstEnd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %previousDstEnd.i, align 4
  %dictEnd.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 9
  %18 = ptrtoint ptr %dictEnd.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %dictEnd.i.i, align 8
  %prefixStart.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 7
  %19 = ptrtoint ptr %prefixStart.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prefixStart.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.neg.i.i = sub i32 %sub.ptr.rhs.cast.i.i, %sub.ptr.lhs.cast.i.i
  %add.ptr.i.i = getelementptr i8, ptr %dict, i32 %sub.ptr.sub.neg.i.i
  %virtualStart.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 8
  %21 = ptrtoint ptr %virtualStart.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i.i, ptr %virtualStart.i.i, align 4
  store ptr %dict, ptr %prefixStart.i.i, align 8
  br label %ZSTD_decompress_insertDictionary.exit.thread

if.end.i:                                         ; preds = %if.then4
  %22 = ptrtoint ptr %dict to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %dict, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 933507308, i32 %23)
  %cmp2.not.i = icmp eq i32 %23, 933507308
  br i1 %cmp2.not.i, label %cleanup.cont.i, label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %previousDstEnd.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %previousDstEnd.i, align 4
  %dictEnd.i38.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 9
  %26 = ptrtoint ptr %dictEnd.i38.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %dictEnd.i38.i, align 8
  %prefixStart.i39.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 7
  %27 = ptrtoint ptr %prefixStart.i39.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prefixStart.i39.i, align 8
  %sub.ptr.lhs.cast.i40.i = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i41.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.neg.i42.i = sub i32 %sub.ptr.rhs.cast.i41.i, %sub.ptr.lhs.cast.i40.i
  %add.ptr.i43.i = getelementptr i8, ptr %dict, i32 %sub.ptr.sub.neg.i42.i
  %virtualStart.i44.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 8
  %29 = ptrtoint ptr %virtualStart.i44.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr.i43.i, ptr %virtualStart.i44.i, align 4
  store ptr %dict, ptr %prefixStart.i39.i, align 8
  br label %ZSTD_decompress_insertDictionary.exit.thread

cleanup.cont.i:                                   ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %dict, i32 4
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %add.ptr.i, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #12
  %33 = ptrtoint ptr %dictID.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %dictID.i, align 8
  %call7.i = tail call i32 @ZSTD_loadDEntropy(ptr noundef %entropy.i, ptr noundef nonnull %dict, i32 noundef %dictSize) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call7.i)
  %cmp.i.i17 = icmp ult i32 %call7.i, -119
  br i1 %cmp.i.i17, label %cleanup.cont14.i, label %cleanup.cont.i.return_crit_edge

cleanup.cont.i.return_crit_edge:                  ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

cleanup.cont14.i:                                 ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr11.i = getelementptr i8, ptr %dict, i32 %call7.i
  %34 = ptrtoint ptr %fseEntropy.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %fseEntropy.i, align 4
  %35 = ptrtoint ptr %litEntropy.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %litEntropy.i, align 8
  %36 = ptrtoint ptr %previousDstEnd.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %previousDstEnd.i, align 4
  %dictEnd.i47.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 9
  %38 = ptrtoint ptr %dictEnd.i47.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %dictEnd.i47.i, align 8
  %prefixStart.i48.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 7
  %39 = ptrtoint ptr %prefixStart.i48.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prefixStart.i48.i, align 8
  %sub.ptr.lhs.cast.i49.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i50.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub.neg.i51.i = sub i32 %sub.ptr.rhs.cast.i50.i, %sub.ptr.lhs.cast.i49.i
  %add.ptr.i52.i = getelementptr i8, ptr %add.ptr11.i, i32 %sub.ptr.sub.neg.i51.i
  %virtualStart.i53.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 8
  %41 = ptrtoint ptr %virtualStart.i53.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr.i52.i, ptr %virtualStart.i53.i, align 4
  store ptr %add.ptr11.i, ptr %prefixStart.i48.i, align 8
  br label %ZSTD_decompress_insertDictionary.exit.thread

ZSTD_decompress_insertDictionary.exit.thread:     ; preds = %cleanup.cont14.i, %cleanup.i, %if.then.i
  %add.ptr3.i45.i = getelementptr i8, ptr %dict, i32 %dictSize
  %42 = ptrtoint ptr %previousDstEnd.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr3.i45.i, ptr %previousDstEnd.i, align 4
  br label %return

return:                                           ; preds = %ZSTD_decompress_insertDictionary.exit.thread, %cleanup.cont.i.return_crit_edge, %do.end.return_crit_edge
  %retval.1 = phi i32 [ 0, %ZSTD_decompress_insertDictionary.exit.thread ], [ 0, %do.end.return_crit_edge ], [ -30, %cleanup.cont.i.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decompressBegin_usingDDict(ptr noundef %dctx, ptr noundef %ddict) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ddict, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %ddict) #12
  %call1 = tail call i32 @ZSTD_DDict_dictSize(ptr noundef nonnull %ddict) #12
  %add.ptr = getelementptr i8, ptr %call, i32 %call1
  %dictEnd2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 9
  %0 = ptrtoint ptr %dictEnd2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dictEnd2, align 8
  %cmp = icmp ne ptr %1, %add.ptr
  %conv = zext i1 %cmp to i32
  %ddictIsCold = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 32
  %2 = ptrtoint ptr %ddictIsCold to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %ddictIsCold, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %format.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 20
  %3 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.i = icmp eq i32 %4, 0
  %cond.i.i = select i1 %cmp.i.i, i32 5, i32 1
  %expected.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 10
  %5 = ptrtoint ptr %expected.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond.i.i, ptr %expected.i, align 4
  %stage.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 15
  %6 = ptrtoint ptr %stage.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %stage.i, align 4
  %processedCSize.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 12
  %previousDstEnd.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 6
  %entropy.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4
  %hufTable.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 3
  %7 = call ptr @memset(ptr %previousDstEnd.i, i32 0, i32 16)
  %8 = call ptr @memset(ptr %processedCSize.i, i32 0, i32 16)
  %9 = ptrtoint ptr %hufTable.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 201326604, ptr %hufTable.i, align 8
  %fseEntropy.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 17
  %10 = ptrtoint ptr %fseEntropy.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %fseEntropy.i, align 4
  %litEntropy.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 16
  %11 = ptrtoint ptr %litEntropy.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %litEntropy.i, align 8
  %dictID.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 31
  %12 = ptrtoint ptr %dictID.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %dictID.i, align 8
  %bType.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 14
  %13 = ptrtoint ptr %bType.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %bType.i, align 8
  %rep.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 4
  %14 = call ptr @memcpy(ptr %rep.i, ptr @repStartValue, i32 12)
  %15 = ptrtoint ptr %dctx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entropy.i, ptr %dctx, align 8
  %MLTable.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 2
  %MLTptr.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 1
  %16 = ptrtoint ptr %MLTptr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %MLTable.i, ptr %MLTptr.i, align 4
  %OFTable.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 1
  %OFTptr.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 2
  %17 = ptrtoint ptr %OFTptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %OFTable.i, ptr %OFTptr.i, align 8
  %HUFptr.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 3
  %18 = ptrtoint ptr %HUFptr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %hufTable.i, ptr %HUFptr.i, align 4
  br i1 %tobool.not, label %do.body.return_crit_edge, label %if.then9

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ZSTD_copyDDictParameters(ptr noundef %dctx, ptr noundef nonnull %ddict) #12
  br label %return

return:                                           ; preds = %if.then9, %do.body.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_DDict_dictContent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_DDict_dictSize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_copyDDictParameters(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_getDictID_fromDict(ptr nocapture noundef readonly %dict, i32 noundef %dictSize) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %dictSize)
  %cmp = icmp ult i32 %dictSize, 8
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %dict to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %dict, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 933507308, i32 %1)
  %cmp1.not = icmp eq i32 %1, 933507308
  br i1 %cmp1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %dict, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #12
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %4, %if.end3 ], [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_getDictID_fromFrame(ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #5 align 64 {
entry:
  %zfp = alloca %struct.ZSTD_frameHeader, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %zfp) #12
  %0 = call ptr @memset(ptr %zfp, i32 0, i32 40)
  %call.i = call i32 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %zfp, ptr noundef %src, i32 noundef %srcSize, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, -119
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dictID = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfp, i32 0, i32 5
  %1 = ptrtoint ptr %dictID to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dictID, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %zfp) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createDStream() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @ZSTD_customMalloc(i32 noundef 161320, [3 x i32] zeroinitializer) #12
  %tobool5.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not.i.i, label %entry.ZSTD_createDStream_advanced.exit_crit_edge, label %if.end7.i.i

entry.ZSTD_createDStream_advanced.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_createDStream_advanced.exit

if.end7.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %customMem8.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 24
  %0 = ptrtoint ptr %customMem8.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %customMem8.i.i, align 4
  %customMem.sroa.4.0.customMem8.sroa_idx.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 24, i32 1
  %1 = ptrtoint ptr %customMem.sroa.4.0.customMem8.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %customMem.sroa.4.0.customMem8.sroa_idx.i.i, align 4
  %customMem.sroa.7.0.customMem8.sroa_idx.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 24, i32 2
  %2 = ptrtoint ptr %customMem.sroa.7.0.customMem8.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %customMem.sroa.7.0.customMem8.sroa_idx.i.i, align 4
  %staticSize.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 27
  %dictEnd.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 9
  %3 = ptrtoint ptr %dictEnd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %dictEnd.i.i.i, align 8
  %ddictIsCold.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 32
  %4 = ptrtoint ptr %ddictIsCold.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ddictIsCold.i.i.i, align 4
  %dictUses.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 33
  %5 = ptrtoint ptr %dictUses.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %dictUses.i.i.i, align 8
  %inBuff.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 37
  %6 = ptrtoint ptr %inBuff.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %inBuff.i.i.i, align 8
  %inBuffSize.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 38
  %7 = ptrtoint ptr %inBuffSize.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %inBuffSize.i.i.i, align 4
  %outBuffSize.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 42
  %8 = ptrtoint ptr %outBuffSize.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %outBuffSize.i.i.i, align 4
  %streamStage.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 36
  %9 = ptrtoint ptr %streamStage.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %streamStage.i.i.i, align 4
  %legacyContext.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 46
  %10 = ptrtoint ptr %legacyContext.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %legacyContext.i.i.i, align 4
  %previousLegacyVersion.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 47
  %11 = ptrtoint ptr %previousLegacyVersion.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %previousLegacyVersion.i.i.i, align 8
  %noForwardProgress.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 50
  %12 = ptrtoint ptr %noForwardProgress.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %noForwardProgress.i.i.i, align 4
  %oversizedDuration.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 55
  %13 = ptrtoint ptr %oversizedDuration.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %oversizedDuration.i.i.i, align 4
  %ddictSet.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 34
  %14 = ptrtoint ptr %ddictSet.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %ddictSet.i.i.i, align 4
  %format.i.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 20
  %15 = ptrtoint ptr %format.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %format.i.i.i.i, align 4
  %maxWindowSize.i.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 40
  %16 = call ptr @memset(ptr %staticSize.i.i.i, i32 0, i32 16)
  %17 = ptrtoint ptr %maxWindowSize.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 134217729, ptr %maxWindowSize.i.i.i.i, align 4
  %outBufferMode.i.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 51
  %18 = ptrtoint ptr %outBufferMode.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %outBufferMode.i.i.i.i, align 8
  %forceIgnoreChecksum.i.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 21
  %19 = ptrtoint ptr %forceIgnoreChecksum.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %forceIgnoreChecksum.i.i.i.i, align 8
  %refMultipleDDicts.i.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i.i, i32 0, i32 35
  %20 = ptrtoint ptr %refMultipleDDicts.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %refMultipleDDicts.i.i.i.i, align 8
  br label %ZSTD_createDStream_advanced.exit

ZSTD_createDStream_advanced.exit:                 ; preds = %if.end7.i.i, %entry.ZSTD_createDStream_advanced.exit_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ZSTD_createDStream_advanced([3 x i32] %customMem.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %customMem.coerce.fca.0.extract.i = extractvalue [3 x i32] %customMem.coerce, 0
  %0 = inttoptr i32 %customMem.coerce.fca.0.extract.i to ptr
  %customMem.coerce.fca.1.extract.i = extractvalue [3 x i32] %customMem.coerce, 1
  %1 = inttoptr i32 %customMem.coerce.fca.1.extract.i to ptr
  %customMem.coerce.fca.2.extract.i = extractvalue [3 x i32] %customMem.coerce, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %customMem.coerce.fca.0.extract.i)
  %tobool.not.i = icmp eq i32 %customMem.coerce.fca.0.extract.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %customMem.coerce.fca.1.extract.i)
  %tobool1.not.i = icmp eq i32 %customMem.coerce.fca.1.extract.i, 0
  %xor12.i = xor i1 %tobool.not.i, %tobool1.not.i
  br i1 %xor12.i, label %entry.ZSTD_createDCtx_advanced.exit_crit_edge, label %if.end.i

entry.ZSTD_createDCtx_advanced.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_createDCtx_advanced.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @ZSTD_customMalloc(i32 noundef 161320, [3 x i32] %customMem.coerce) #12
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %if.end.i.ZSTD_createDCtx_advanced.exit_crit_edge, label %if.end7.i

if.end.i.ZSTD_createDCtx_advanced.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_createDCtx_advanced.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %customMem8.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 24
  %2 = ptrtoint ptr %customMem8.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %customMem8.i, align 4
  %customMem.sroa.4.0.customMem8.sroa_idx.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 24, i32 1
  %3 = ptrtoint ptr %customMem.sroa.4.0.customMem8.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %customMem.sroa.4.0.customMem8.sroa_idx.i, align 4
  %customMem.sroa.7.0.customMem8.sroa_idx.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 24, i32 2
  %4 = ptrtoint ptr %customMem.sroa.7.0.customMem8.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %customMem.coerce.fca.2.extract.i, ptr %customMem.sroa.7.0.customMem8.sroa_idx.i, align 4
  %staticSize.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 27
  %dictEnd.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 9
  %5 = ptrtoint ptr %dictEnd.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %dictEnd.i.i, align 8
  %ddictIsCold.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 32
  %6 = ptrtoint ptr %ddictIsCold.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ddictIsCold.i.i, align 4
  %dictUses.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 33
  %7 = ptrtoint ptr %dictUses.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %dictUses.i.i, align 8
  %inBuff.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 37
  %8 = ptrtoint ptr %inBuff.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %inBuff.i.i, align 8
  %inBuffSize.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 38
  %9 = ptrtoint ptr %inBuffSize.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %inBuffSize.i.i, align 4
  %outBuffSize.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 42
  %10 = ptrtoint ptr %outBuffSize.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %outBuffSize.i.i, align 4
  %streamStage.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 36
  %11 = ptrtoint ptr %streamStage.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %streamStage.i.i, align 4
  %legacyContext.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 46
  %12 = ptrtoint ptr %legacyContext.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %legacyContext.i.i, align 4
  %previousLegacyVersion.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 47
  %13 = ptrtoint ptr %previousLegacyVersion.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %previousLegacyVersion.i.i, align 8
  %noForwardProgress.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 50
  %14 = ptrtoint ptr %noForwardProgress.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %noForwardProgress.i.i, align 4
  %oversizedDuration.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 55
  %15 = ptrtoint ptr %oversizedDuration.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %oversizedDuration.i.i, align 4
  %ddictSet.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 34
  %16 = ptrtoint ptr %ddictSet.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %ddictSet.i.i, align 4
  %format.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 20
  %17 = ptrtoint ptr %format.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %format.i.i.i, align 4
  %maxWindowSize.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 40
  %18 = call ptr @memset(ptr %staticSize.i.i, i32 0, i32 16)
  %19 = ptrtoint ptr %maxWindowSize.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 134217729, ptr %maxWindowSize.i.i.i, align 4
  %outBufferMode.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 51
  %20 = ptrtoint ptr %outBufferMode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %outBufferMode.i.i.i, align 8
  %forceIgnoreChecksum.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 21
  %21 = ptrtoint ptr %forceIgnoreChecksum.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %forceIgnoreChecksum.i.i.i, align 8
  %refMultipleDDicts.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %call.i, i32 0, i32 35
  %22 = ptrtoint ptr %refMultipleDDicts.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %refMultipleDDicts.i.i.i, align 8
  br label %ZSTD_createDCtx_advanced.exit

ZSTD_createDCtx_advanced.exit:                    ; preds = %if.end7.i, %if.end.i.ZSTD_createDCtx_advanced.exit_crit_edge, %entry.ZSTD_createDCtx_advanced.exit_crit_edge
  %retval.1.i = phi ptr [ null, %entry.ZSTD_createDCtx_advanced.exit_crit_edge ], [ %call.i, %if.end7.i ], [ null, %if.end.i.ZSTD_createDCtx_advanced.exit_crit_edge ]
  ret ptr %retval.1.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local ptr @ZSTD_initStaticDStream(ptr noundef %workspace, i32 noundef %workspaceSize) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %workspace to i32
  %and.i = and i32 %0, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 161320, i32 %workspaceSize)
  %cmp.i = icmp ult i32 %workspaceSize, 161320
  %or.cond.i = or i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %entry.ZSTD_initStaticDCtx.exit_crit_edge, label %if.end2.i

entry.ZSTD_initStaticDCtx.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_initStaticDCtx.exit

if.end2.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %staticSize.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 27
  %dictEnd.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 9
  %1 = ptrtoint ptr %dictEnd.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %dictEnd.i.i, align 8
  %ddictIsCold.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 32
  %2 = ptrtoint ptr %ddictIsCold.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ddictIsCold.i.i, align 4
  %dictUses.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 33
  %3 = ptrtoint ptr %dictUses.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %dictUses.i.i, align 8
  %inBuff.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 37
  %inBuffSize.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 38
  %4 = ptrtoint ptr %inBuffSize.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %inBuffSize.i.i, align 4
  %outBuffSize.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 42
  %5 = ptrtoint ptr %outBuffSize.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %outBuffSize.i.i, align 4
  %streamStage.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 36
  %6 = ptrtoint ptr %streamStage.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %streamStage.i.i, align 4
  %legacyContext.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 46
  %7 = ptrtoint ptr %legacyContext.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %legacyContext.i.i, align 4
  %previousLegacyVersion.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 47
  %8 = ptrtoint ptr %previousLegacyVersion.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %previousLegacyVersion.i.i, align 8
  %noForwardProgress.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 50
  %9 = ptrtoint ptr %noForwardProgress.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %noForwardProgress.i.i, align 4
  %oversizedDuration.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 55
  %10 = ptrtoint ptr %oversizedDuration.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %oversizedDuration.i.i, align 4
  %ddictSet.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 34
  %11 = ptrtoint ptr %ddictSet.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %ddictSet.i.i, align 4
  %format.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 20
  %12 = ptrtoint ptr %format.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %format.i.i.i, align 4
  %maxWindowSize.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 40
  %13 = call ptr @memset(ptr %staticSize.i.i, i32 0, i32 16)
  %14 = ptrtoint ptr %maxWindowSize.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 134217729, ptr %maxWindowSize.i.i.i, align 4
  %outBufferMode.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 51
  %15 = ptrtoint ptr %outBufferMode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %outBufferMode.i.i.i, align 8
  %forceIgnoreChecksum.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 21
  %16 = ptrtoint ptr %forceIgnoreChecksum.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %forceIgnoreChecksum.i.i.i, align 8
  %refMultipleDDicts.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %workspace, i32 0, i32 35
  %17 = ptrtoint ptr %refMultipleDDicts.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %refMultipleDDicts.i.i.i, align 8
  %18 = ptrtoint ptr %staticSize.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %workspaceSize, ptr %staticSize.i.i, align 8
  %add.ptr.i = getelementptr %struct.ZSTD_DCtx_s, ptr %workspace, i32 1
  %19 = ptrtoint ptr %inBuff.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %inBuff.i.i, align 8
  br label %ZSTD_initStaticDCtx.exit

ZSTD_initStaticDCtx.exit:                         ; preds = %if.end2.i, %entry.ZSTD_initStaticDCtx.exit_crit_edge
  %retval.0.i = phi ptr [ %workspace, %if.end2.i ], [ null, %entry.ZSTD_initStaticDCtx.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_freeDStream(ptr noundef %zds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ZSTD_freeDCtx(ptr noundef %zds)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_DStreamInSize() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 131075
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_DStreamOutSize() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 131072
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_DCtx_loadDictionary_advanced(ptr nocapture noundef %dctx, ptr noundef %dict, i32 noundef %dictSize, i32 noundef %dictLoadMethod, i32 noundef %dictContentType) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %streamStage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 36
  %0 = ptrtoint ptr %streamStage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %streamStage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %ddictLocal.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 29
  %2 = ptrtoint ptr %ddictLocal.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddictLocal.i, align 8
  %call.i = tail call i32 @ZSTD_freeDDict(ptr noundef %3) #12
  %4 = ptrtoint ptr %ddictLocal.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ddictLocal.i, align 8
  %ddict.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 30
  %5 = ptrtoint ptr %ddict.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ddict.i, align 4
  %dictUses.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 33
  %6 = ptrtoint ptr %dictUses.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dictUses.i, align 8
  %tobool.not = icmp eq ptr %dict, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dictSize)
  %cmp1.not = icmp eq i32 %dictSize, 0
  %or.cond = or i1 %tobool.not, %cmp1.not
  br i1 %or.cond, label %if.end.return_crit_edge, label %if.then2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then2:                                         ; preds = %if.end
  %customMem = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24
  %7 = ptrtoint ptr %customMem to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack = load i32, ptr %customMem, align 4
  %8 = insertvalue [3 x i32] undef, i32 %.unpack, 0
  %.elt18 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24, i32 1
  %9 = ptrtoint ptr %.elt18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack19 = load i32, ptr %.elt18, align 4
  %10 = insertvalue [3 x i32] %8, i32 %.unpack19, 1
  %.elt20 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24, i32 2
  %11 = ptrtoint ptr %.elt20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack21 = load i32, ptr %.elt20, align 4
  %12 = insertvalue [3 x i32] %10, i32 %.unpack21, 2
  %call = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %dict, i32 noundef %dictSize, i32 noundef %dictLoadMethod, i32 noundef %dictContentType, [3 x i32] %12) #12
  %13 = ptrtoint ptr %ddictLocal.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %ddictLocal.i, align 8
  %cmp4 = icmp eq ptr %call, null
  br i1 %cmp4, label %if.then2.return_crit_edge, label %if.end6

if.then2.return_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %ddict.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %ddict.i, align 4
  %15 = ptrtoint ptr %dictUses.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %dictUses.i, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.then2.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -60, %entry.return_crit_edge ], [ -64, %if.then2.return_crit_edge ], [ 0, %if.end6 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_createDDict_advanced(ptr noundef, i32 noundef, i32 noundef, i32 noundef, [3 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_DCtx_loadDictionary_byReference(ptr nocapture noundef %dctx, ptr noundef %dict, i32 noundef %dictSize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %streamStage.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 36
  %0 = ptrtoint ptr %streamStage.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %streamStage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge

entry.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_DCtx_loadDictionary_advanced.exit

if.end.i:                                         ; preds = %entry
  %ddictLocal.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 29
  %2 = ptrtoint ptr %ddictLocal.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddictLocal.i.i, align 8
  %call.i.i = tail call i32 @ZSTD_freeDDict(ptr noundef %3) #12
  %4 = ptrtoint ptr %ddictLocal.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ddictLocal.i.i, align 8
  %ddict.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 30
  %5 = ptrtoint ptr %ddict.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ddict.i.i, align 4
  %dictUses.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 33
  %6 = ptrtoint ptr %dictUses.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dictUses.i.i, align 8
  %tobool.not.i = icmp eq ptr %dict, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dictSize)
  %cmp1.not.i = icmp eq i32 %dictSize, 0
  %or.cond.i = or i1 %tobool.not.i, %cmp1.not.i
  br i1 %or.cond.i, label %if.end.i.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge, label %if.then2.i

if.end.i.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_DCtx_loadDictionary_advanced.exit

if.then2.i:                                       ; preds = %if.end.i
  %customMem.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24
  %7 = ptrtoint ptr %customMem.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack.i = load i32, ptr %customMem.i, align 4
  %8 = insertvalue [3 x i32] undef, i32 %.unpack.i, 0
  %.elt18.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24, i32 1
  %9 = ptrtoint ptr %.elt18.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack19.i = load i32, ptr %.elt18.i, align 4
  %10 = insertvalue [3 x i32] %8, i32 %.unpack19.i, 1
  %.elt20.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24, i32 2
  %11 = ptrtoint ptr %.elt20.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack21.i = load i32, ptr %.elt20.i, align 4
  %12 = insertvalue [3 x i32] %10, i32 %.unpack21.i, 2
  %call.i = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %dict, i32 noundef %dictSize, i32 noundef 1, i32 noundef 0, [3 x i32] %12) #12
  %13 = ptrtoint ptr %ddictLocal.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %ddictLocal.i.i, align 8
  %cmp4.i = icmp eq ptr %call.i, null
  br i1 %cmp4.i, label %if.then2.i.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge, label %if.end6.i

if.then2.i.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_DCtx_loadDictionary_advanced.exit

if.end6.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %ddict.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %ddict.i.i, align 4
  %15 = ptrtoint ptr %dictUses.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %dictUses.i.i, align 8
  br label %ZSTD_DCtx_loadDictionary_advanced.exit

ZSTD_DCtx_loadDictionary_advanced.exit:           ; preds = %if.end6.i, %if.then2.i.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge, %if.end.i.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge, %entry.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge
  %retval.0.i = phi i32 [ -60, %entry.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge ], [ -64, %if.then2.i.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge ], [ 0, %if.end6.i ], [ 0, %if.end.i.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_DCtx_loadDictionary(ptr nocapture noundef %dctx, ptr noundef %dict, i32 noundef %dictSize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %streamStage.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 36
  %0 = ptrtoint ptr %streamStage.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %streamStage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge

entry.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_DCtx_loadDictionary_advanced.exit

if.end.i:                                         ; preds = %entry
  %ddictLocal.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 29
  %2 = ptrtoint ptr %ddictLocal.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddictLocal.i.i, align 8
  %call.i.i = tail call i32 @ZSTD_freeDDict(ptr noundef %3) #12
  %4 = ptrtoint ptr %ddictLocal.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ddictLocal.i.i, align 8
  %ddict.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 30
  %5 = ptrtoint ptr %ddict.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ddict.i.i, align 4
  %dictUses.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 33
  %6 = ptrtoint ptr %dictUses.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dictUses.i.i, align 8
  %tobool.not.i = icmp eq ptr %dict, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dictSize)
  %cmp1.not.i = icmp eq i32 %dictSize, 0
  %or.cond.i = or i1 %tobool.not.i, %cmp1.not.i
  br i1 %or.cond.i, label %if.end.i.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge, label %if.then2.i

if.end.i.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_DCtx_loadDictionary_advanced.exit

if.then2.i:                                       ; preds = %if.end.i
  %customMem.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24
  %7 = ptrtoint ptr %customMem.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack.i = load i32, ptr %customMem.i, align 4
  %8 = insertvalue [3 x i32] undef, i32 %.unpack.i, 0
  %.elt18.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24, i32 1
  %9 = ptrtoint ptr %.elt18.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack19.i = load i32, ptr %.elt18.i, align 4
  %10 = insertvalue [3 x i32] %8, i32 %.unpack19.i, 1
  %.elt20.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24, i32 2
  %11 = ptrtoint ptr %.elt20.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack21.i = load i32, ptr %.elt20.i, align 4
  %12 = insertvalue [3 x i32] %10, i32 %.unpack21.i, 2
  %call.i = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %dict, i32 noundef %dictSize, i32 noundef 0, i32 noundef 0, [3 x i32] %12) #12
  %13 = ptrtoint ptr %ddictLocal.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %ddictLocal.i.i, align 8
  %cmp4.i = icmp eq ptr %call.i, null
  br i1 %cmp4.i, label %if.then2.i.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge, label %if.end6.i

if.then2.i.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_DCtx_loadDictionary_advanced.exit

if.end6.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %ddict.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %ddict.i.i, align 4
  %15 = ptrtoint ptr %dictUses.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %dictUses.i.i, align 8
  br label %ZSTD_DCtx_loadDictionary_advanced.exit

ZSTD_DCtx_loadDictionary_advanced.exit:           ; preds = %if.end6.i, %if.then2.i.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge, %if.end.i.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge, %entry.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge
  %retval.0.i = phi i32 [ -60, %entry.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge ], [ -64, %if.then2.i.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge ], [ 0, %if.end6.i ], [ 0, %if.end.i.ZSTD_DCtx_loadDictionary_advanced.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_DCtx_refPrefix_advanced(ptr nocapture noundef %dctx, ptr noundef %prefix, i32 noundef %prefixSize, i32 noundef %dictContentType) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %streamStage.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 36
  %0 = ptrtoint ptr %streamStage.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %streamStage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i:                                         ; preds = %entry
  %ddictLocal.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 29
  %2 = ptrtoint ptr %ddictLocal.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddictLocal.i.i, align 8
  %call.i.i = tail call i32 @ZSTD_freeDDict(ptr noundef %3) #12
  %4 = ptrtoint ptr %ddictLocal.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ddictLocal.i.i, align 8
  %ddict.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 30
  %5 = ptrtoint ptr %ddict.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ddict.i.i, align 4
  %dictUses.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 33
  %6 = ptrtoint ptr %dictUses.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dictUses.i.i, align 8
  %tobool.not.i = icmp eq ptr %prefix, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prefixSize)
  %cmp1.not.i = icmp eq i32 %prefixSize, 0
  %or.cond.i = or i1 %tobool.not.i, %cmp1.not.i
  br i1 %or.cond.i, label %if.end.i.do.end_crit_edge, label %if.then2.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then2.i:                                       ; preds = %if.end.i
  %customMem.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24
  %7 = ptrtoint ptr %customMem.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack.i = load i32, ptr %customMem.i, align 4
  %8 = insertvalue [3 x i32] undef, i32 %.unpack.i, 0
  %.elt18.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24, i32 1
  %9 = ptrtoint ptr %.elt18.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack19.i = load i32, ptr %.elt18.i, align 4
  %10 = insertvalue [3 x i32] %8, i32 %.unpack19.i, 1
  %.elt20.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24, i32 2
  %11 = ptrtoint ptr %.elt20.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack21.i = load i32, ptr %.elt20.i, align 4
  %12 = insertvalue [3 x i32] %10, i32 %.unpack21.i, 2
  %call.i = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %prefix, i32 noundef %prefixSize, i32 noundef 1, i32 noundef %dictContentType, [3 x i32] %12) #12
  %13 = ptrtoint ptr %ddictLocal.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %ddictLocal.i.i, align 8
  %cmp4.i = icmp eq ptr %call.i, null
  br i1 %cmp4.i, label %if.then2.i.return_crit_edge, label %if.end6.i

if.then2.i.return_crit_edge:                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end6.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %ddict.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %ddict.i.i, align 4
  br label %do.end

do.end:                                           ; preds = %if.end6.i, %if.end.i.do.end_crit_edge
  %15 = ptrtoint ptr %dictUses.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %dictUses.i.i, align 8
  br label %return

return:                                           ; preds = %do.end, %if.then2.i.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ 0, %do.end ], [ -60, %entry.return_crit_edge ], [ -64, %if.then2.i.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_DCtx_refPrefix(ptr nocapture noundef %dctx, ptr noundef %prefix, i32 noundef %prefixSize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %streamStage.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 36
  %0 = ptrtoint ptr %streamStage.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %streamStage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.ZSTD_DCtx_refPrefix_advanced.exit_crit_edge

entry.ZSTD_DCtx_refPrefix_advanced.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_DCtx_refPrefix_advanced.exit

if.end.i.i:                                       ; preds = %entry
  %ddictLocal.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 29
  %2 = ptrtoint ptr %ddictLocal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddictLocal.i.i.i, align 8
  %call.i.i.i = tail call i32 @ZSTD_freeDDict(ptr noundef %3) #12
  %4 = ptrtoint ptr %ddictLocal.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ddictLocal.i.i.i, align 8
  %ddict.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 30
  %5 = ptrtoint ptr %ddict.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ddict.i.i.i, align 4
  %dictUses.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 33
  %6 = ptrtoint ptr %dictUses.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dictUses.i.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %prefix, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prefixSize)
  %cmp1.not.i.i = icmp eq i32 %prefixSize, 0
  %or.cond.i.i = or i1 %tobool.not.i.i, %cmp1.not.i.i
  br i1 %or.cond.i.i, label %if.end.i.i.do.end.i_crit_edge, label %if.then2.i.i

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %customMem.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24
  %7 = ptrtoint ptr %customMem.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack.i.i = load i32, ptr %customMem.i.i, align 4
  %8 = insertvalue [3 x i32] undef, i32 %.unpack.i.i, 0
  %.elt18.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24, i32 1
  %9 = ptrtoint ptr %.elt18.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack19.i.i = load i32, ptr %.elt18.i.i, align 4
  %10 = insertvalue [3 x i32] %8, i32 %.unpack19.i.i, 1
  %.elt20.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24, i32 2
  %11 = ptrtoint ptr %.elt20.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack21.i.i = load i32, ptr %.elt20.i.i, align 4
  %12 = insertvalue [3 x i32] %10, i32 %.unpack21.i.i, 2
  %call.i.i = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %prefix, i32 noundef %prefixSize, i32 noundef 1, i32 noundef 1, [3 x i32] %12) #12
  %13 = ptrtoint ptr %ddictLocal.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i, ptr %ddictLocal.i.i.i, align 8
  %cmp4.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp4.i.i, label %if.then2.i.i.ZSTD_DCtx_refPrefix_advanced.exit_crit_edge, label %if.end6.i.i

if.then2.i.i.ZSTD_DCtx_refPrefix_advanced.exit_crit_edge: ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_DCtx_refPrefix_advanced.exit

if.end6.i.i:                                      ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %ddict.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %ddict.i.i.i, align 4
  br label %do.end.i

do.end.i:                                         ; preds = %if.end6.i.i, %if.end.i.i.do.end.i_crit_edge
  %15 = ptrtoint ptr %dictUses.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %dictUses.i.i.i, align 8
  br label %ZSTD_DCtx_refPrefix_advanced.exit

ZSTD_DCtx_refPrefix_advanced.exit:                ; preds = %do.end.i, %if.then2.i.i.ZSTD_DCtx_refPrefix_advanced.exit_crit_edge, %entry.ZSTD_DCtx_refPrefix_advanced.exit_crit_edge
  %retval.1.i = phi i32 [ 0, %do.end.i ], [ -60, %entry.ZSTD_DCtx_refPrefix_advanced.exit_crit_edge ], [ -64, %if.then2.i.i.ZSTD_DCtx_refPrefix_advanced.exit_crit_edge ]
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_initDStream_usingDict(ptr nocapture noundef %zds, ptr noundef %dict, i32 noundef %dictSize) local_unnamed_addr #0 align 64 {
if.end.i.i:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %streamStage.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 36
  %0 = ptrtoint ptr %streamStage.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %streamStage.i, align 4
  %noForwardProgress.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 50
  %1 = ptrtoint ptr %noForwardProgress.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %noForwardProgress.i, align 4
  %ddictLocal.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 29
  %2 = ptrtoint ptr %ddictLocal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddictLocal.i.i.i, align 8
  %call.i.i.i = tail call i32 @ZSTD_freeDDict(ptr noundef %3) #12
  %4 = ptrtoint ptr %ddictLocal.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ddictLocal.i.i.i, align 8
  %ddict.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 30
  %5 = ptrtoint ptr %ddict.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ddict.i.i.i, align 4
  %dictUses.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 33
  %6 = ptrtoint ptr %dictUses.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dictUses.i.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %dict, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dictSize)
  %cmp1.not.i.i = icmp eq i32 %dictSize, 0
  %or.cond.i.i = or i1 %tobool.not.i.i, %cmp1.not.i.i
  br i1 %or.cond.i.i, label %if.end.i.i.do.end12_crit_edge, label %if.then2.i.i

if.end.i.i.do.end12_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

if.then2.i.i:                                     ; preds = %if.end.i.i
  %customMem.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 24
  %7 = ptrtoint ptr %customMem.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack.i.i = load i32, ptr %customMem.i.i, align 4
  %8 = insertvalue [3 x i32] undef, i32 %.unpack.i.i, 0
  %.elt18.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 24, i32 1
  %9 = ptrtoint ptr %.elt18.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack19.i.i = load i32, ptr %.elt18.i.i, align 4
  %10 = insertvalue [3 x i32] %8, i32 %.unpack19.i.i, 1
  %.elt20.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 24, i32 2
  %11 = ptrtoint ptr %.elt20.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack21.i.i = load i32, ptr %.elt20.i.i, align 4
  %12 = insertvalue [3 x i32] %10, i32 %.unpack21.i.i, 2
  %call.i.i = tail call ptr @ZSTD_createDDict_advanced(ptr noundef nonnull %dict, i32 noundef %dictSize, i32 noundef 0, i32 noundef 0, [3 x i32] %12) #12
  %13 = ptrtoint ptr %ddictLocal.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i, ptr %ddictLocal.i.i.i, align 8
  %cmp4.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp4.i.i, label %if.then2.i.i.return_crit_edge, label %if.end6.i.i

if.then2.i.i.return_crit_edge:                    ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end6.i.i:                                      ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %ddict.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %ddict.i.i.i, align 4
  %15 = ptrtoint ptr %dictUses.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %dictUses.i.i.i, align 8
  br label %do.end12

do.end12:                                         ; preds = %if.end6.i.i, %if.end.i.i.do.end12_crit_edge
  %format = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 20
  %16 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i20 = icmp eq i32 %17, 0
  %cond.i = select i1 %cmp.i20, i32 5, i32 1
  br label %return

return:                                           ; preds = %do.end12, %if.then2.i.i.return_crit_edge
  %retval.2 = phi i32 [ %cond.i, %do.end12 ], [ -64, %if.then2.i.i.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_DCtx_reset(ptr nocapture noundef %dctx, i32 noundef %reset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %reset, label %entry.return_crit_edge [
    i32 1, label %entry.if.then_crit_edge
    i32 3, label %entry.if.then_crit_edge18
    i32 2, label %entry.if.then5_crit_edge
  ]

entry.if.then5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

entry.if.then_crit_edge18:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge18
  %streamStage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 36
  %1 = ptrtoint ptr %streamStage to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %streamStage, align 4
  %noForwardProgress = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 50
  %2 = ptrtoint ptr %noForwardProgress to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %noForwardProgress, align 4
  %3 = and i32 %reset, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp eq i32 %3, 2
  br i1 %switch, label %if.then.if.then5_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.then5:                                         ; preds = %if.then.if.then5_crit_edge, %entry.if.then5_crit_edge
  %streamStage6 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 36
  %4 = ptrtoint ptr %streamStage6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %streamStage6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7.not = icmp eq i32 %5, 0
  br i1 %cmp7.not, label %if.end9, label %if.then5.return_crit_edge

if.then5.return_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end9:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %ddictLocal.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 29
  %6 = ptrtoint ptr %ddictLocal.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddictLocal.i, align 8
  %call.i = tail call i32 @ZSTD_freeDDict(ptr noundef %7) #12
  %8 = ptrtoint ptr %ddictLocal.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %ddictLocal.i, align 8
  %ddict.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 30
  %9 = ptrtoint ptr %ddict.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %ddict.i, align 4
  %dictUses.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 33
  %10 = ptrtoint ptr %dictUses.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dictUses.i, align 8
  %format.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 20
  %11 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %format.i, align 4
  %maxWindowSize.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 40
  %12 = ptrtoint ptr %maxWindowSize.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 134217729, ptr %maxWindowSize.i, align 4
  %outBufferMode.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 51
  %13 = ptrtoint ptr %outBufferMode.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %outBufferMode.i, align 8
  %forceIgnoreChecksum.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 21
  %14 = ptrtoint ptr %forceIgnoreChecksum.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %forceIgnoreChecksum.i, align 8
  %refMultipleDDicts.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 35
  %15 = ptrtoint ptr %refMultipleDDicts.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %refMultipleDDicts.i, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then5.return_crit_edge, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -60, %if.then5.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 0, %if.then.return_crit_edge ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_initDStream(ptr nocapture noundef %zds) local_unnamed_addr #0 align 64 {
ZSTD_initDStream_usingDDict.exit:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %streamStage.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 36
  %0 = ptrtoint ptr %streamStage.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %streamStage.i.i, align 4
  %noForwardProgress.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 50
  %1 = ptrtoint ptr %noForwardProgress.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %noForwardProgress.i.i, align 4
  %ddictLocal.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 29
  %2 = ptrtoint ptr %ddictLocal.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddictLocal.i.i, align 8
  %call.i.i = tail call i32 @ZSTD_freeDDict(ptr noundef %3) #12
  %4 = ptrtoint ptr %ddictLocal.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ddictLocal.i.i, align 8
  %ddict.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 30
  %5 = ptrtoint ptr %ddict.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ddict.i.i, align 4
  %dictUses.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 33
  %6 = ptrtoint ptr %dictUses.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dictUses.i.i, align 8
  %format.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 20
  %7 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i20.i = icmp eq i32 %8, 0
  %cond.i.i = select i1 %cmp.i20.i, i32 5, i32 1
  ret i32 %cond.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_initDStream_usingDDict(ptr nocapture noundef %dctx, ptr noundef %ddict) local_unnamed_addr #0 align 64 {
do.body2:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %streamStage.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 36
  %0 = ptrtoint ptr %streamStage.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %streamStage.i, align 4
  %noForwardProgress.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 50
  %1 = ptrtoint ptr %noForwardProgress.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %noForwardProgress.i, align 4
  %call4 = tail call i32 @ZSTD_DCtx_refDDict(ptr noundef %dctx, ptr noundef %ddict)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call4)
  %cmp.i = icmp ult i32 %call4, -119
  br i1 %cmp.i, label %do.end12, label %do.body2.return_crit_edge

do.body2.return_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end12:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  %format = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 20
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i20 = icmp eq i32 %3, 0
  %cond.i = select i1 %cmp.i20, i32 5, i32 1
  br label %return

return:                                           ; preds = %do.end12, %do.body2.return_crit_edge
  %retval.2 = phi i32 [ %call4, %do.body2.return_crit_edge ], [ %cond.i, %do.end12 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_DCtx_refDDict(ptr nocapture noundef %dctx, ptr noundef %ddict) local_unnamed_addr #0 align 64 {
entry:
  %dictID.addr.i.i.i = alloca i32, align 4
  %dictID.addr.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %streamStage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 36
  %0 = ptrtoint ptr %streamStage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %streamStage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %ddictLocal.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 29
  %2 = ptrtoint ptr %ddictLocal.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddictLocal.i, align 8
  %call.i = tail call i32 @ZSTD_freeDDict(ptr noundef %3) #12
  %4 = ptrtoint ptr %ddictLocal.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ddictLocal.i, align 8
  %ddict.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 30
  %5 = ptrtoint ptr %ddict.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ddict.i, align 4
  %dictUses.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 33
  %6 = ptrtoint ptr %dictUses.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dictUses.i, align 8
  %tobool.not = icmp eq ptr %ddict, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.then1

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then1:                                         ; preds = %if.end
  %7 = ptrtoint ptr %ddict.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ddict, ptr %ddict.i, align 4
  %8 = ptrtoint ptr %dictUses.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %dictUses.i, align 8
  %refMultipleDDicts = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 35
  %9 = ptrtoint ptr %refMultipleDDicts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %refMultipleDDicts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp3 = icmp eq i32 %10, 1
  br i1 %cmp3, label %if.then4, label %if.then1.return_crit_edge

if.then1.return_crit_edge:                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then4:                                         ; preds = %if.then1
  %ddictSet = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 34
  %11 = ptrtoint ptr %ddictSet to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ddictSet, align 4
  %cmp5 = icmp eq ptr %12, null
  br i1 %cmp5, label %if.then6, label %if.then4.do.body13_crit_edge

if.then4.do.body13_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13

if.then6:                                         ; preds = %if.then4
  %customMem = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24
  %13 = ptrtoint ptr %customMem to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack41 = load i32, ptr %customMem, align 4
  %14 = insertvalue [3 x i32] undef, i32 %.unpack41, 0
  %.elt42 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24, i32 1
  %15 = ptrtoint ptr %.elt42 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack43 = load i32, ptr %.elt42, align 4
  %16 = insertvalue [3 x i32] %14, i32 %.unpack43, 1
  %.elt44 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24, i32 2
  %17 = ptrtoint ptr %.elt44 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack45 = load i32, ptr %.elt44, align 4
  %18 = insertvalue [3 x i32] %16, i32 %.unpack45, 2
  %call.i46 = tail call ptr @ZSTD_customMalloc(i32 noundef 12, [3 x i32] %18) #12
  %tobool.not.i = icmp eq ptr %call.i46, null
  br i1 %tobool.not.i, label %if.then6.ZSTD_createDDictHashSet.exit.thread_crit_edge, label %if.end.i

if.then6.ZSTD_createDDictHashSet.exit.thread_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_createDDictHashSet.exit.thread

if.end.i:                                         ; preds = %if.then6
  %call1.i = tail call ptr @ZSTD_customCalloc(i32 noundef 256, [3 x i32] %18) #12
  %19 = ptrtoint ptr %call.i46 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call1.i, ptr %call.i46, align 4
  %tobool3.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %ZSTD_createDDictHashSet.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ZSTD_customFree(ptr noundef nonnull %call.i46, [3 x i32] %18) #12
  br label %ZSTD_createDDictHashSet.exit.thread

ZSTD_createDDictHashSet.exit.thread:              ; preds = %if.then4.i, %if.then6.ZSTD_createDDictHashSet.exit.thread_crit_edge
  %20 = ptrtoint ptr %ddictSet to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %ddictSet, align 4
  br label %return

ZSTD_createDDictHashSet.exit:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %ddictPtrTableSize.i = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %call.i46, i32 0, i32 1
  %21 = ptrtoint ptr %ddictPtrTableSize.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 64, ptr %ddictPtrTableSize.i, align 4
  %ddictPtrCount.i = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %call.i46, i32 0, i32 2
  %22 = ptrtoint ptr %ddictPtrCount.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %ddictPtrCount.i, align 4
  %23 = ptrtoint ptr %ddictSet to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i46, ptr %ddictSet, align 4
  br label %do.body13

do.body13:                                        ; preds = %ZSTD_createDDictHashSet.exit, %if.then4.do.body13_crit_edge
  %24 = ptrtoint ptr %ddictSet to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ddictSet, align 4
  %customMem15 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24
  %26 = ptrtoint ptr %customMem15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack = load i32, ptr %customMem15, align 4
  %27 = insertvalue [3 x i32] undef, i32 %.unpack, 0
  %.elt37 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24, i32 1
  %28 = ptrtoint ptr %.elt37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack38 = load i32, ptr %.elt37, align 4
  %29 = insertvalue [3 x i32] %27, i32 %.unpack38, 1
  %.elt39 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 24, i32 2
  %30 = ptrtoint ptr %.elt39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack40 = load i32, ptr %.elt39, align 4
  %31 = insertvalue [3 x i32] %29, i32 %.unpack40, 2
  %ddictPtrCount.i47 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %25, i32 0, i32 2
  %32 = ptrtoint ptr %ddictPtrCount.i47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ddictPtrCount.i47, align 4
  %mul.i = shl i32 %33, 2
  %ddictPtrTableSize.i48 = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %25, i32 0, i32 1
  %34 = ptrtoint ptr %ddictPtrTableSize.i48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ddictPtrTableSize.i48, align 4
  %div.i = udiv i32 %mul.i, %35
  %mul1.i = mul i32 %div.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul1.i)
  %cmp.not.i = icmp eq i32 %mul1.i, 0
  br i1 %cmp.not.i, label %do.body13.do.body5.i_crit_edge, label %do.body.i

do.body13.do.body5.i_crit_edge:                   ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

do.body.i:                                        ; preds = %do.body13
  %mul1.i.i = shl i32 %35, 3
  %call.i.i = tail call ptr @ZSTD_customCalloc(i32 noundef %mul1.i.i, [3 x i32] %31) #12
  %36 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %25, align 4
  %38 = ptrtoint ptr %ddictPtrTableSize.i48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ddictPtrTableSize.i48, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.body.i.return_crit_edge, label %if.end.i.i

do.body.i.return_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i.i:                                       ; preds = %do.body.i
  %mul.i.i = shl i32 %35, 1
  %40 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i.i, ptr %25, align 4
  %41 = ptrtoint ptr %ddictPtrTableSize.i48 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %mul.i.i, ptr %ddictPtrTableSize.i48, align 4
  %42 = ptrtoint ptr %ddictPtrCount.i47 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %ddictPtrCount.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp52.not.i.i = icmp eq i32 %39, 0
  br i1 %cmp52.not.i.i, label %if.end.i.i.ZSTD_DDictHashSet_expand.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.ZSTD_DDictHashSet_expand.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_DDictHashSet_expand.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %i.053.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %37, i32 %i.053.i.i
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp5.not.i.i = icmp eq ptr %44, null
  br i1 %cmp5.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %do.body.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

do.body.i.i:                                      ; preds = %for.body.i.i
  %call.i.i.i = call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %44) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dictID.addr.i.i.i.i) #12
  %45 = ptrtoint ptr %dictID.addr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call.i.i.i, ptr %dictID.addr.i.i.i.i, align 4
  %call.i.i.i.i = call i64 @xxh64(ptr noundef nonnull %dictID.addr.i.i.i.i, i32 noundef 4, i64 noundef 0) #12
  %46 = ptrtoint ptr %ddictPtrTableSize.i48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ddictPtrTableSize.i48, align 4
  %sub.i.i.i.i = add i32 %47, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dictID.addr.i.i.i.i) #12
  %48 = ptrtoint ptr %ddictPtrCount.i47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ddictPtrCount.i47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %47)
  %cmp.i.i.i = icmp eq i32 %49, %47
  br i1 %cmp.i.i.i, label %do.body.i.i.return_crit_edge, label %while.cond.preheader.i.i.i

do.body.i.i.return_crit_edge:                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

while.cond.preheader.i.i.i:                       ; preds = %do.body.i.i
  %50 = trunc i64 %call.i.i.i.i to i32
  %conv1.i.i.i.i = and i32 %sub.i.i.i.i, %50
  %51 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %25, align 4
  %arrayidx36.i.i.i = getelementptr ptr, ptr %52, i32 %conv1.i.i.i.i
  %53 = ptrtoint ptr %arrayidx36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx36.i.i.i, align 4
  %cmp3.not37.i.i.i = icmp eq ptr %54, null
  br i1 %cmp3.not37.i.i.i, label %while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge

while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  br label %while.body.i.i.i

while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %if.end11.i.i.i.while.body.i.i.i_crit_edge, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge
  %55 = phi ptr [ %62, %if.end11.i.i.i.while.body.i.i.i_crit_edge ], [ %54, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge ]
  %idx.038.i.i.i = phi i32 [ %inc.i.i.i, %if.end11.i.i.i.while.body.i.i.i_crit_edge ], [ %conv1.i.i.i.i, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge ]
  %call6.i.i.i = call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %55) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i.i.i, i32 %call.i.i.i)
  %cmp7.i.i.i = icmp eq i32 %call6.i.i.i, %call.i.i.i
  br i1 %cmp7.i.i.i, label %if.then8.i.i.i, label %if.end11.i.i.i

if.then8.i.i.i:                                   ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %25, align 4
  %arrayidx10.i.i.i = getelementptr ptr, ptr %57, i32 %idx.038.i.i.i
  %58 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %44, ptr %arrayidx10.i.i.i, align 4
  br label %for.inc.i.i

if.end11.i.i.i:                                   ; preds = %while.body.i.i.i
  %and.i.i.i = and i32 %idx.038.i.i.i, %sub.i.i.i.i
  %inc.i.i.i = add i32 %and.i.i.i, 1
  %59 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %25, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %60, i32 %inc.i.i.i
  %61 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i.i, align 4
  %cmp3.not.i.i.i = icmp eq ptr %62, null
  br i1 %cmp3.not.i.i.i, label %if.end11.i.i.i.while.end.i.i.i_crit_edge, label %if.end11.i.i.i.while.body.i.i.i_crit_edge

if.end11.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i

if.end11.i.i.i.while.end.i.i.i_crit_edge:         ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %if.end11.i.i.i.while.end.i.i.i_crit_edge, %while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge
  %idx.0.lcssa.i.i.i = phi i32 [ %conv1.i.i.i.i, %while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge ], [ %inc.i.i.i, %if.end11.i.i.i.while.end.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi ptr [ %52, %while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge ], [ %60, %if.end11.i.i.i.while.end.i.i.i_crit_edge ]
  %arrayidx.le.i.i.i = getelementptr ptr, ptr %.lcssa.i.i.i, i32 %idx.0.lcssa.i.i.i
  %63 = ptrtoint ptr %arrayidx.le.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %44, ptr %arrayidx.le.i.i.i, align 4
  %64 = ptrtoint ptr %ddictPtrCount.i47 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ddictPtrCount.i47, align 4
  %inc15.i.i.i = add i32 %65, 1
  store i32 %inc15.i.i.i, ptr %ddictPtrCount.i47, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %while.end.i.i.i, %if.then8.i.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.053.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %39
  br i1 %exitcond.not.i.i, label %for.inc.i.i.ZSTD_DDictHashSet_expand.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.ZSTD_DDictHashSet_expand.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_DDictHashSet_expand.exit.i

ZSTD_DDictHashSet_expand.exit.i:                  ; preds = %for.inc.i.i.ZSTD_DDictHashSet_expand.exit.i_crit_edge, %if.end.i.i.ZSTD_DDictHashSet_expand.exit.i_crit_edge
  call void @ZSTD_customFree(ptr noundef %37, [3 x i32] %31) #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %ZSTD_DDictHashSet_expand.exit.i, %do.body13.do.body5.i_crit_edge
  %call.i23.i = call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %ddict) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dictID.addr.i.i.i) #12
  %66 = ptrtoint ptr %dictID.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call.i23.i, ptr %dictID.addr.i.i.i, align 4
  %call.i.i24.i = call i64 @xxh64(ptr noundef nonnull %dictID.addr.i.i.i, i32 noundef 4, i64 noundef 0) #12
  %67 = ptrtoint ptr %ddictPtrTableSize.i48 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ddictPtrTableSize.i48, align 4
  %sub.i.i.i = add i32 %68, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dictID.addr.i.i.i) #12
  %69 = ptrtoint ptr %ddictPtrCount.i47 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ddictPtrCount.i47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %68)
  %cmp.i26.i = icmp eq i32 %70, %68
  br i1 %cmp.i26.i, label %do.body5.i.return_crit_edge, label %while.cond.preheader.i.i

do.body5.i.return_crit_edge:                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

while.cond.preheader.i.i:                         ; preds = %do.body5.i
  %71 = trunc i64 %call.i.i24.i to i32
  %conv1.i.i.i = and i32 %sub.i.i.i, %71
  %72 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %25, align 4
  %arrayidx36.i.i = getelementptr ptr, ptr %73, i32 %conv1.i.i.i
  %74 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx36.i.i, align 4
  %cmp3.not37.i.i = icmp eq ptr %75, null
  br i1 %cmp3.not37.i.i, label %while.cond.preheader.i.i.while.end.i.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.while.end.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %if.end11.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %76 = phi ptr [ %83, %if.end11.i.i.while.body.i.i_crit_edge ], [ %75, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %idx.038.i.i = phi i32 [ %inc.i27.i, %if.end11.i.i.while.body.i.i_crit_edge ], [ %conv1.i.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %call6.i.i = call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %76) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i.i, i32 %call.i23.i)
  %cmp7.i.i = icmp eq i32 %call6.i.i, %call.i23.i
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.end11.i.i

if.then8.i.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %25, align 4
  %arrayidx10.i.i = getelementptr ptr, ptr %78, i32 %idx.038.i.i
  %79 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %ddict, ptr %arrayidx10.i.i, align 4
  br label %return

if.end11.i.i:                                     ; preds = %while.body.i.i
  %and.i.i = and i32 %idx.038.i.i, %sub.i.i.i
  %inc.i27.i = add i32 %and.i.i, 1
  %80 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %25, align 4
  %arrayidx.i28.i = getelementptr ptr, ptr %81, i32 %inc.i27.i
  %82 = ptrtoint ptr %arrayidx.i28.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i28.i, align 4
  %cmp3.not.i.i = icmp eq ptr %83, null
  br i1 %cmp3.not.i.i, label %if.end11.i.i.while.end.i.i_crit_edge, label %if.end11.i.i.while.body.i.i_crit_edge

if.end11.i.i.while.body.i.i_crit_edge:            ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

if.end11.i.i.while.end.i.i_crit_edge:             ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end11.i.i.while.end.i.i_crit_edge, %while.cond.preheader.i.i.while.end.i.i_crit_edge
  %idx.0.lcssa.i.i = phi i32 [ %conv1.i.i.i, %while.cond.preheader.i.i.while.end.i.i_crit_edge ], [ %inc.i27.i, %if.end11.i.i.while.end.i.i_crit_edge ]
  %.lcssa.i.i = phi ptr [ %73, %while.cond.preheader.i.i.while.end.i.i_crit_edge ], [ %81, %if.end11.i.i.while.end.i.i_crit_edge ]
  %arrayidx.le.i.i = getelementptr ptr, ptr %.lcssa.i.i, i32 %idx.0.lcssa.i.i
  %84 = ptrtoint ptr %arrayidx.le.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %ddict, ptr %arrayidx.le.i.i, align 4
  %85 = ptrtoint ptr %ddictPtrCount.i47 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ddictPtrCount.i47, align 4
  %inc15.i.i = add i32 %86, 1
  store i32 %inc15.i.i, ptr %ddictPtrCount.i47, align 4
  br label %return

return:                                           ; preds = %while.end.i.i, %if.then8.i.i, %do.body5.i.return_crit_edge, %do.body.i.i.return_crit_edge, %do.body.i.return_crit_edge, %ZSTD_createDDictHashSet.exit.thread, %if.then1.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ -60, %entry.return_crit_edge ], [ -64, %ZSTD_createDDictHashSet.exit.thread ], [ 0, %if.then1.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ -1, %do.body5.i.return_crit_edge ], [ -64, %do.body.i.return_crit_edge ], [ 0, %if.then8.i.i ], [ 0, %while.end.i.i ], [ -1, %do.body.i.i.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_resetDStream(ptr nocapture noundef %dctx) local_unnamed_addr #8 align 64 {
return:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %streamStage.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 36
  %0 = ptrtoint ptr %streamStage.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %streamStage.i, align 4
  %noForwardProgress.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 50
  %1 = ptrtoint ptr %noForwardProgress.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %noForwardProgress.i, align 4
  %format = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 20
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %cond.i = select i1 %cmp.i, i32 5, i32 1
  ret i32 %cond.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_DCtx_setMaxWindowSize(ptr nocapture noundef %dctx, i32 noundef %maxWindowSize) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %streamStage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 36
  %0 = ptrtoint ptr %streamStage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %streamStage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = add i32 %maxWindowSize, -1073741825
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073740801, i32 %2)
  %3 = icmp ult i32 %2, -1073740801
  br i1 %3, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %maxWindowSize8 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 40
  %4 = ptrtoint ptr %maxWindowSize8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %maxWindowSize, ptr %maxWindowSize8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -60, %entry.cleanup_crit_edge ], [ -42, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ZSTD_dParam_getBounds(ptr noalias nocapture writeonly sret(%struct.ZSTD_bounds) align 4 %agg.result, i32 noundef %dParam) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %agg.result, i32 0, i32 12)
  %1 = zext i32 %dParam to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %dParam, label %sw.epilog [
    i32 100, label %sw.bb
    i32 1000, label %sw.bb1
    i32 1001, label %sw.bb4
    i32 1002, label %sw.bb7
    i32 1003, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %lowerBound = getelementptr inbounds %struct.ZSTD_bounds, ptr %agg.result, i32 0, i32 1
  %2 = ptrtoint ptr %lowerBound to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 10, ptr %lowerBound, align 4
  %upperBound = getelementptr inbounds %struct.ZSTD_bounds, ptr %agg.result, i32 0, i32 2
  %3 = ptrtoint ptr %upperBound to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 30, ptr %upperBound, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %upperBound3 = getelementptr inbounds %struct.ZSTD_bounds, ptr %agg.result, i32 0, i32 2
  %4 = ptrtoint ptr %upperBound3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %upperBound3, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %upperBound6 = getelementptr inbounds %struct.ZSTD_bounds, ptr %agg.result, i32 0, i32 2
  %5 = ptrtoint ptr %upperBound6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %upperBound6, align 4
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %upperBound9 = getelementptr inbounds %struct.ZSTD_bounds, ptr %agg.result, i32 0, i32 2
  %6 = ptrtoint ptr %upperBound9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %upperBound9, align 4
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %upperBound12 = getelementptr inbounds %struct.ZSTD_bounds, ptr %agg.result, i32 0, i32 2
  %7 = ptrtoint ptr %upperBound12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %upperBound12, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -40, ptr %agg.result, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_DCtx_setFormat(ptr nocapture noundef %dctx, i32 noundef %format) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %streamStage.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 36
  %0 = ptrtoint ptr %streamStage.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %streamStage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.ZSTD_DCtx_setParameter.exit_crit_edge

entry.ZSTD_DCtx_setParameter.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_DCtx_setParameter.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %format)
  %cmp3.i48.i = icmp ugt i32 %format, 1
  br i1 %cmp3.i48.i, label %if.end.i.ZSTD_DCtx_setParameter.exit_crit_edge, label %if.end10.i

if.end.i.ZSTD_DCtx_setParameter.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_DCtx_setParameter.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %format.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 20
  %2 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %format, ptr %format.i, align 4
  br label %ZSTD_DCtx_setParameter.exit

ZSTD_DCtx_setParameter.exit:                      ; preds = %if.end10.i, %if.end.i.ZSTD_DCtx_setParameter.exit_crit_edge, %entry.ZSTD_DCtx_setParameter.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end10.i ], [ -60, %entry.ZSTD_DCtx_setParameter.exit_crit_edge ], [ -42, %if.end.i.ZSTD_DCtx_setParameter.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_DCtx_setParameter(ptr nocapture noundef %dctx, i32 noundef %dParam, i32 noundef %value) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %streamStage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 36
  %0 = ptrtoint ptr %streamStage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %streamStage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.do.end30_crit_edge

entry.do.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

if.end:                                           ; preds = %entry
  %2 = zext i32 %dParam to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %dParam, label %if.end.do.end30_crit_edge [
    i32 100, label %sw.bb
    i32 1000, label %sw.bb6
    i32 1001, label %sw.bb11
    i32 1002, label %sw.bb16
    i32 1003, label %sw.bb21
  ]

if.end.do.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp1 = icmp eq i32 %value, 0
  %spec.store.select = select i1 %cmp1, i32 27, i32 %value
  %3 = add i32 %spec.store.select, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -21, i32 %3)
  %4 = icmp ult i32 %3, -21
  br i1 %4, label %sw.bb.do.end30_crit_edge, label %if.end5

sw.bb.do.end30_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

if.end5:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %shl = shl nuw nsw i32 1, %spec.store.select
  %maxWindowSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 40
  %5 = ptrtoint ptr %maxWindowSize to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shl, ptr %maxWindowSize, align 4
  br label %do.end30

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %value)
  %cmp3.i48 = icmp ugt i32 %value, 1
  br i1 %cmp3.i48, label %sw.bb6.do.end30_crit_edge, label %if.end10

sw.bb6.do.end30_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

if.end10:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  %format = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 20
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %value, ptr %format, align 4
  br label %do.end30

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %value)
  %cmp3.i54 = icmp ugt i32 %value, 1
  br i1 %cmp3.i54, label %sw.bb11.do.end30_crit_edge, label %if.end15

sw.bb11.do.end30_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

if.end15:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  %outBufferMode = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 51
  %7 = ptrtoint ptr %outBufferMode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %value, ptr %outBufferMode, align 8
  br label %do.end30

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %value)
  %cmp3.i60 = icmp ugt i32 %value, 1
  br i1 %cmp3.i60, label %sw.bb16.do.end30_crit_edge, label %if.end20

sw.bb16.do.end30_crit_edge:                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

if.end20:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #14
  %forceIgnoreChecksum = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 21
  %8 = ptrtoint ptr %forceIgnoreChecksum to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %value, ptr %forceIgnoreChecksum, align 8
  br label %do.end30

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %value)
  %cmp3.i66 = icmp ugt i32 %value, 1
  br i1 %cmp3.i66, label %sw.bb21.do.end30_crit_edge, label %if.end25

sw.bb21.do.end30_crit_edge:                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

if.end25:                                         ; preds = %sw.bb21
  %staticSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 27
  %9 = ptrtoint ptr %staticSize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %staticSize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp26.not = icmp eq i32 %10, 0
  br i1 %cmp26.not, label %if.end28, label %if.end25.do.end30_crit_edge

if.end25.do.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

if.end28:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %refMultipleDDicts = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 35
  %11 = ptrtoint ptr %refMultipleDDicts to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %value, ptr %refMultipleDDicts, align 8
  br label %do.end30

do.end30:                                         ; preds = %if.end28, %if.end25.do.end30_crit_edge, %sw.bb21.do.end30_crit_edge, %if.end20, %sw.bb16.do.end30_crit_edge, %if.end15, %sw.bb11.do.end30_crit_edge, %if.end10, %sw.bb6.do.end30_crit_edge, %if.end5, %sw.bb.do.end30_crit_edge, %if.end.do.end30_crit_edge, %entry.do.end30_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ 0, %if.end20 ], [ 0, %if.end15 ], [ 0, %if.end10 ], [ 0, %if.end5 ], [ -60, %entry.do.end30_crit_edge ], [ -40, %if.end25.do.end30_crit_edge ], [ -40, %if.end.do.end30_crit_edge ], [ -42, %sw.bb.do.end30_crit_edge ], [ -42, %sw.bb6.do.end30_crit_edge ], [ -42, %sw.bb11.do.end30_crit_edge ], [ -42, %sw.bb16.do.end30_crit_edge ], [ -42, %sw.bb21.do.end30_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_DCtx_getParameter(ptr nocapture noundef readonly %dctx, i32 noundef %param, ptr nocapture noundef writeonly %value) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %param, label %entry.do.end_crit_edge [
    i32 100, label %sw.bb
    i32 1000, label %sw.bb1
    i32 1001, label %sw.bb2
    i32 1002, label %sw.bb3
    i32 1003, label %sw.bb4
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %maxWindowSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 40
  %1 = ptrtoint ptr %maxWindowSize to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %maxWindowSize, align 4
  %3 = tail call i32 @llvm.ctlz.i32(i32 %2, i1 false) #12, !range !46
  %xor.i = xor i32 %3, 31
  br label %do.end.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %format = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 20
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format, align 4
  br label %do.end.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %outBufferMode = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 51
  %6 = ptrtoint ptr %outBufferMode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %outBufferMode, align 8
  br label %do.end.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %forceIgnoreChecksum = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 21
  %8 = ptrtoint ptr %forceIgnoreChecksum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %forceIgnoreChecksum, align 8
  br label %do.end.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %refMultipleDDicts = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 35
  %10 = ptrtoint ptr %refMultipleDDicts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %refMultipleDDicts, align 8
  br label %do.end.sink.split

do.end.sink.split:                                ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %xor.i.sink = phi i32 [ %xor.i, %sw.bb ], [ %5, %sw.bb1 ], [ %7, %sw.bb2 ], [ %9, %sw.bb3 ], [ %11, %sw.bb4 ]
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %xor.i.sink, ptr %value, align 4
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %entry.do.end_crit_edge
  %retval.0 = phi i32 [ -40, %entry.do.end_crit_edge ], [ 0, %do.end.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_sizeof_DStream(ptr noundef readonly %dctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp eq ptr %dctx, null
  br i1 %cmp.i, label %entry.ZSTD_sizeof_DCtx.exit_crit_edge, label %if.end.i

entry.ZSTD_sizeof_DCtx.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_sizeof_DCtx.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ddictLocal.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 29
  %0 = ptrtoint ptr %ddictLocal.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddictLocal.i, align 8
  %call.i = tail call i32 @ZSTD_sizeof_DDict(ptr noundef %1) #12
  %add.i = add i32 %call.i, 161320
  %inBuffSize.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 38
  %2 = ptrtoint ptr %inBuffSize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inBuffSize.i, align 4
  %add1.i = add i32 %add.i, %3
  %outBuffSize.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 42
  %4 = ptrtoint ptr %outBuffSize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %outBuffSize.i, align 4
  %add2.i = add i32 %add1.i, %5
  br label %ZSTD_sizeof_DCtx.exit

ZSTD_sizeof_DCtx.exit:                            ; preds = %if.end.i, %entry.ZSTD_sizeof_DCtx.exit_crit_edge
  %retval.0.i = phi i32 [ %add2.i, %if.end.i ], [ 0, %entry.ZSTD_sizeof_DCtx.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_decodingBufferSize_min(i64 noundef %windowSize, i64 noundef %frameContentSize) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i64 @llvm.umin.i64(i64 %windowSize, i64 131072)
  %add = add i64 %windowSize, 64
  %add2 = add i64 %add, %0
  %1 = tail call i64 @llvm.umin.i64(i64 %add2, i64 %frameContentSize)
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %1)
  %2 = icmp ult i64 %1, 4294967296
  %conv9 = trunc i64 %1 to i32
  %retval.0 = select i1 %2, i32 %conv9, i32 -16
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_estimateDStreamSize(i32 noundef %windowSize) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %windowSize)
  %cmp = icmp ult i32 %windowSize, 131072
  %phi.bo = add i32 %windowSize, 161320
  %spec.select = select i1 %cmp, i32 %phi.bo, i32 292392
  %conv = zext i32 %windowSize to i64
  %0 = tail call i64 @llvm.umin.i64(i64 %conv, i64 131072) #12
  %add.i = add nuw nsw i64 %conv, 64
  %add2.i = add nuw nsw i64 %add.i, %0
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add2.i)
  %1 = icmp ult i64 %add2.i, 4294967296
  %conv9.i = trunc i64 %add2.i to i32
  %retval.0.i = select i1 %1, i32 %conv9.i, i32 -16
  %add2 = add i32 %retval.0.i, %spec.select
  ret i32 %add2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_estimateDStreamSize_fromFrame(ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #5 align 64 {
entry:
  %zfh = alloca %struct.ZSTD_frameHeader, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %zfh) #12
  %0 = call ptr @memset(ptr %zfh, i32 255, i32 40)
  %call.i = call i32 @ZSTD_getFrameHeader_advanced(ptr noundef nonnull %zfh, ptr noundef %src, i32 noundef %srcSize, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, -119
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %windowSize = getelementptr inbounds %struct.ZSTD_frameHeader, ptr %zfh, i32 0, i32 1
  %1 = ptrtoint ptr %windowSize to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %windowSize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741824, i64 %2)
  %cmp4 = icmp ugt i64 %2, 1073741824
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i64 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %conv)
  %cmp.i13 = icmp ult i32 %conv, 131072
  %phi.bo.i = add nuw nsw i32 %conv, 161320
  %spec.select.i = select i1 %cmp.i13, i32 %phi.bo.i, i32 292392
  %3 = tail call i64 @llvm.umin.i64(i64 %2, i64 131072) #12
  %add.i.i = add nuw nsw i64 %2, 64
  %add2.i.i = add nuw nsw i64 %add.i.i, %3
  %conv9.i.i = trunc i64 %add2.i.i to i32
  %add2.i = add nuw nsw i32 %spec.select.i, %conv9.i.i
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add2.i, %if.end6 ], [ %call.i, %entry.cleanup_crit_edge ], [ -72, %if.end.cleanup_crit_edge ], [ -16, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %zfh) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decompressStream(ptr noundef %zds, ptr nocapture noundef %output, ptr nocapture noundef %input) local_unnamed_addr #0 align 64 {
entry:
  %frameSizeInfo.i = alloca %struct.ZSTD_frameSizeInfo, align 8
  %dictID.addr.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input, align 4
  %pos = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %input, i32 0, i32 2
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %size = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %input, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %add.ptr6 = getelementptr i8, ptr %1, i32 %5
  %6 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %output, align 4
  %pos11 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %output, i32 0, i32 2
  %8 = ptrtoint ptr %pos11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pos11, align 4
  %add.ptr15 = getelementptr i8, ptr %7, i32 %9
  %size19 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %output, i32 0, i32 1
  %10 = ptrtoint ptr %size19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size19, align 4
  %add.ptr23 = getelementptr i8, ptr %7, i32 %11
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp29 = icmp ugt i32 %3, %5
  br i1 %cmp29, label %entry.cleanup503_crit_edge, label %if.end

entry.cleanup503_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup503

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp32 = icmp ugt i32 %9, %11
  br i1 %cmp32, label %if.end.cleanup503_crit_edge, label %do.body

if.end.cleanup503_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup503

do.body:                                          ; preds = %if.end
  %expectedOutBuffer.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 52
  %12 = ptrtoint ptr %expectedOutBuffer.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %expect.sroa.0.0.copyload.i = load ptr, ptr %expectedOutBuffer.i, align 4
  %expect.sroa.5.0.expectedOutBuffer.sroa_idx.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 52, i32 1
  %13 = ptrtoint ptr %expect.sroa.5.0.expectedOutBuffer.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %expect.sroa.5.0.copyload.i = load i32, ptr %expect.sroa.5.0.expectedOutBuffer.sroa_idx.i, align 4
  %expect.sroa.7.0.expectedOutBuffer.sroa_idx.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 52, i32 2
  %14 = ptrtoint ptr %expect.sroa.7.0.expectedOutBuffer.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %expect.sroa.7.0.copyload.i = load i32, ptr %expect.sroa.7.0.expectedOutBuffer.sroa_idx.i, align 4
  %outBufferMode.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 51
  %15 = ptrtoint ptr %outBufferMode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %outBufferMode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 1
  br i1 %cmp.not.i, label %if.end.i, label %do.body.ZSTD_checkOutBuffer.exit_crit_edge

do.body.ZSTD_checkOutBuffer.exit_crit_edge:       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_checkOutBuffer.exit

if.end.i:                                         ; preds = %do.body
  %streamStage.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 36
  %17 = ptrtoint ptr %streamStage.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %streamStage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1.i = icmp eq i32 %18, 0
  br i1 %cmp1.i, label %if.end.i.ZSTD_checkOutBuffer.exit_crit_edge, label %if.end3.i

if.end.i.ZSTD_checkOutBuffer.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_checkOutBuffer.exit

if.end3.i:                                        ; preds = %if.end.i
  %cmp5.i = icmp eq ptr %expect.sroa.0.0.copyload.i, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %expect.sroa.7.0.copyload.i, i32 %9)
  %cmp7.i = icmp eq i32 %expect.sroa.7.0.copyload.i, %9
  %or.cond969 = select i1 %cmp5.i, i1 %cmp7.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %expect.sroa.5.0.copyload.i, i32 %11)
  %cmp10.i = icmp eq i32 %expect.sroa.5.0.copyload.i, %11
  %or.cond970 = select i1 %or.cond969, i1 %cmp10.i, i1 false
  br i1 %or.cond970, label %if.end3.i.ZSTD_checkOutBuffer.exit_crit_edge, label %if.end3.i.cleanup503_crit_edge

if.end3.i.cleanup503_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup503

if.end3.i.ZSTD_checkOutBuffer.exit_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_checkOutBuffer.exit

ZSTD_checkOutBuffer.exit:                         ; preds = %if.end3.i.ZSTD_checkOutBuffer.exit_crit_edge, %if.end.i.ZSTD_checkOutBuffer.exit_crit_edge, %do.body.ZSTD_checkOutBuffer.exit_crit_edge
  %streamStage = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 36
  %outEnd391 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 44
  %outStart392 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 43
  %sub.ptr.lhs.cast394 = ptrtoint ptr %add.ptr23 to i32
  %outBuff397 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 41
  %outBuffSize408 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 42
  %fParams410 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 11
  %blockSizeMax417 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 11, i32 2
  %inPos = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 39
  %lhSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 45
  %legacyVersion = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 48
  %hostageByte = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 49
  %headerBuffer = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 54
  %format = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 20
  %refMultipleDDicts = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 35
  %ddictSet = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 34
  %ddict.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 30
  %dictID.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 11, i32 5
  %ddictLocal.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 29
  %dictUses.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 33
  %dictID5.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 31
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr6 to i32
  %frameType = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 11, i32 3
  %sub.ptr.rhs.cast108 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub109 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast108
  %expected = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 10
  %dictEnd2.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 9
  %ddictIsCold.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 32
  %stage.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 15
  %processedCSize.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 12
  %previousDstEnd.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 6
  %entropy.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 4
  %hufTable.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 4, i32 3
  %fseEntropy.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 17
  %litEntropy.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 16
  %bType.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 14
  %rep.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 4, i32 4
  %MLTable.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 4, i32 2
  %MLTptr.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 1
  %OFTable.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 4, i32 1
  %OFTptr.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 2
  %HUFptr.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 3
  %add.ptr182 = getelementptr %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 54, i32 4
  %windowSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 11, i32 1
  %maxWindowSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 40
  %inBuffSize.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 38
  %oversizedDuration1.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 55
  %staticSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 27
  %inBuff = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 37
  %customMem = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 24
  %.elt772 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 24, i32 1
  %.elt774 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 24, i32 2
  br label %while.body.outer

while.body.outer:                                 ; preds = %while.body.outer.backedge, %ZSTD_checkOutBuffer.exit
  %ip.0980.ph = phi ptr [ %add.ptr, %ZSTD_checkOutBuffer.exit ], [ %ip.0980.ph.be, %while.body.outer.backedge ]
  %op.0979.ph = phi ptr [ %add.ptr15, %ZSTD_checkOutBuffer.exit ], [ %op.0979.ph.be, %while.body.outer.backedge ]
  br label %while.body

while.body:                                       ; preds = %while.body.backedge, %while.body.outer
  %op.0979 = phi ptr [ %op.0979.ph, %while.body.outer ], [ %add.ptr401, %while.body.backedge ]
  %19 = ptrtoint ptr %streamStage to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %streamStage, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %20, label %while.body.cleanup503_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %while.body.sw.bb40_crit_edge
    i32 2, label %while.body.sw.bb289_crit_edge
    i32 3, label %while.body.sw.bb327_crit_edge
    i32 4, label %sw.bb390
  ]

while.body.sw.bb327_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb327

while.body.sw.bb289_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb289

while.body.sw.bb40_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb40

while.body.cleanup503_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup503

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %streamStage to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %streamStage, align 4
  %23 = ptrtoint ptr %outEnd391 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %outEnd391, align 4
  %24 = ptrtoint ptr %outStart392 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %outStart392, align 8
  %25 = ptrtoint ptr %inPos to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %inPos, align 8
  %26 = ptrtoint ptr %lhSize to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %lhSize, align 8
  %27 = ptrtoint ptr %legacyVersion to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %legacyVersion, align 4
  %28 = ptrtoint ptr %hostageByte to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %hostageByte, align 8
  %29 = call ptr @memcpy(ptr %expectedOutBuffer.i, ptr %output, i32 12)
  br label %sw.bb40

sw.bb40:                                          ; preds = %sw.bb, %while.body.sw.bb40_crit_edge
  %30 = ptrtoint ptr %lhSize to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lhSize, align 8
  %32 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %format, align 4
  %call42 = call i32 @ZSTD_getFrameHeader_advanced(ptr noundef %fParams410, ptr noundef %headerBuffer, i32 noundef %31, i32 noundef %33)
  %34 = ptrtoint ptr %refMultipleDDicts to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %refMultipleDDicts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool43.not = icmp eq i32 %35, 0
  br i1 %tobool43.not, label %sw.bb40.if.end46_crit_edge, label %land.lhs.true

sw.bb40.if.end46_crit_edge:                       ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

land.lhs.true:                                    ; preds = %sw.bb40
  %36 = ptrtoint ptr %ddictSet to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ddictSet, align 4
  %tobool44.not = icmp eq ptr %37, null
  br i1 %tobool44.not, label %land.lhs.true.if.end46_crit_edge, label %if.then45

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then45:                                        ; preds = %land.lhs.true
  %38 = ptrtoint ptr %ddict.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ddict.i, align 4
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %if.then45.if.end46_crit_edge, label %if.then.i

if.then45.if.end46_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then.i:                                        ; preds = %if.then45
  %40 = ptrtoint ptr %dictID.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dictID.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dictID.addr.i.i.i) #12
  %42 = ptrtoint ptr %dictID.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %dictID.addr.i.i.i, align 4
  %call.i.i.i = call i64 @xxh64(ptr noundef nonnull %dictID.addr.i.i.i, i32 noundef 4, i64 noundef 0) #12
  %ddictPtrTableSize.i.i.i = getelementptr inbounds %struct.ZSTD_DDictHashSet, ptr %37, i32 0, i32 1
  %43 = ptrtoint ptr %ddictPtrTableSize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ddictPtrTableSize.i.i.i, align 4
  %sub.i.i.i = add i32 %44, -1
  %45 = trunc i64 %call.i.i.i to i32
  %conv1.i.i.i = and i32 %sub.i.i.i, %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dictID.addr.i.i.i) #12
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.then.i
  %idx.0.i.i = phi i32 [ %conv1.i.i.i, %if.then.i ], [ %inc.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %46 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %37, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %47, i32 %idx.0.i.i
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i, align 4
  %call1.i.i = call i32 @ZSTD_getDictID_fromDDict(ptr noundef %49) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i.i, i32 %41)
  %cmp.i.i = icmp eq i32 %call1.i.i, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp eq i32 %call1.i.i, 0
  %or.cond.i.i = or i1 %cmp.i.i, %cmp2.i.i
  %and.i.i = and i32 %idx.0.i.i, %sub.i.i.i
  %inc.i.i = add i32 %and.i.i, 1
  br i1 %or.cond.i.i, label %ZSTD_DDictHashSet_getDDict.exit.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

ZSTD_DDictHashSet_getDDict.exit.i:                ; preds = %for.cond.i.i
  %50 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %37, align 4
  %arrayidx4.i.i = getelementptr ptr, ptr %51, i32 %idx.0.i.i
  %52 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx4.i.i, align 4
  %tobool1.not.i = icmp eq ptr %53, null
  br i1 %tobool1.not.i, label %ZSTD_DDictHashSet_getDDict.exit.i.if.end46_crit_edge, label %if.then2.i

ZSTD_DDictHashSet_getDDict.exit.i.if.end46_crit_edge: ; preds = %ZSTD_DDictHashSet_getDDict.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then2.i:                                       ; preds = %ZSTD_DDictHashSet_getDDict.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %ddictLocal.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ddictLocal.i.i, align 8
  %call.i.i = call i32 @ZSTD_freeDDict(ptr noundef %55) #12
  %56 = ptrtoint ptr %ddictLocal.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %ddictLocal.i.i, align 8
  %57 = ptrtoint ptr %dictID.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dictID.i, align 4
  %59 = ptrtoint ptr %dictID5.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %dictID5.i, align 8
  %60 = ptrtoint ptr %ddict.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %53, ptr %ddict.i, align 4
  %61 = ptrtoint ptr %dictUses.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %dictUses.i.i, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then2.i, %ZSTD_DDictHashSet_getDDict.exit.i.if.end46_crit_edge, %if.then45.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge, %sw.bb40.if.end46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call42)
  %cmp.i786 = icmp ult i32 %call42, -119
  br i1 %cmp.i786, label %if.end50, label %if.end46.cleanup503_crit_edge

if.end46.cleanup503_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup503

if.end50:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp51.not = icmp eq i32 %call42, 0
  br i1 %cmp51.not, label %cleanup.cont92, label %if.then52

if.then52:                                        ; preds = %if.end50
  %62 = ptrtoint ptr %lhSize to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lhSize, align 8
  %sub = sub i32 %call42, %63
  %sub.ptr.rhs.cast = ptrtoint ptr %ip.0980.ph to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub.ptr.sub)
  %cmp54 = icmp ugt i32 %sub, %sub.ptr.sub
  br i1 %cmp54, label %if.then55, label %cleanup90

if.then55:                                        ; preds = %if.then52
  %cmp56.not = icmp eq ptr %add.ptr6, %ip.0980.ph
  br i1 %cmp56.not, label %if.then55.if.end63_crit_edge, label %if.then57

if.then55.if.end63_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then57:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr61 = getelementptr i8, ptr %headerBuffer, i32 %63
  %64 = call ptr @memcpy(ptr %add.ptr61, ptr %ip.0980.ph, i32 %sub.ptr.sub)
  %65 = ptrtoint ptr %lhSize to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %lhSize, align 8
  %add = add i32 %66, %sub.ptr.sub
  store i32 %add, ptr %lhSize, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %if.then55.if.end63_crit_edge
  %67 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size, align 4
  %69 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %pos, align 4
  %70 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp67 = icmp eq i32 %71, 0
  %cond68 = select i1 %cmp67, i32 6, i32 2
  %72 = call i32 @llvm.umax.i32(i32 %cond68, i32 %call42)
  %73 = ptrtoint ptr %lhSize to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %lhSize, align 8
  %sub78 = sub i32 3, %74
  %add79 = add i32 %sub78, %72
  br label %cleanup503

cleanup90:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr84 = getelementptr i8, ptr %headerBuffer, i32 %63
  %75 = call ptr @memcpy(ptr %add.ptr84, ptr %ip.0980.ph, i32 %sub)
  %76 = ptrtoint ptr %lhSize to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call42, ptr %lhSize, align 8
  %add.ptr86 = getelementptr i8, ptr %ip.0980.ph, i32 %sub
  br label %while.body.outer.backedge

cleanup.cont92:                                   ; preds = %if.end50
  %77 = ptrtoint ptr %fParams410 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %fParams410, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %78)
  %cmp94.not = icmp eq i64 %78, -1
  br i1 %cmp94.not, label %cleanup.cont92.if.end134_crit_edge, label %land.lhs.true95

cleanup.cont92.if.end134_crit_edge:               ; preds = %cleanup.cont92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134

land.lhs.true95:                                  ; preds = %cleanup.cont92
  %79 = ptrtoint ptr %frameType to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %frameType, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp97.not = icmp eq i32 %80, 1
  br i1 %cmp97.not, label %land.lhs.true95.if.end134_crit_edge, label %land.lhs.true98

land.lhs.true95.if.end134_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134

land.lhs.true98:                                  ; preds = %land.lhs.true95
  %sub.ptr.rhs.cast100 = ptrtoint ptr %op.0979 to i32
  %sub.ptr.sub101 = sub i32 %sub.ptr.lhs.cast394, %sub.ptr.rhs.cast100
  %conv = zext i32 %sub.ptr.sub101 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %78, i64 %conv)
  %cmp104.not = icmp ugt i64 %78, %conv
  br i1 %cmp104.not, label %land.lhs.true98.if.end134_crit_edge, label %if.then106

land.lhs.true98.if.end134_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134

if.then106:                                       ; preds = %land.lhs.true98
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %frameSizeInfo.i) #12
  %81 = call ptr @memset(ptr %frameSizeInfo.i, i32 255, i32 16)
  call fastcc void @ZSTD_findFrameSizeInfo(ptr nonnull sret(%struct.ZSTD_frameSizeInfo) align 8 %frameSizeInfo.i, ptr noundef %add.ptr, i32 noundef %sub.ptr.sub109) #12
  %82 = ptrtoint ptr %frameSizeInfo.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %frameSizeInfo.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %frameSizeInfo.i) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %sub.ptr.sub109)
  %cmp114.not = icmp ugt i32 %83, %sub.ptr.sub109
  br i1 %cmp114.not, label %if.then106.if.end134_crit_edge, label %if.then116

if.then106.if.end134_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134

if.then116:                                       ; preds = %if.then106
  %call120 = call fastcc ptr @ZSTD_getDDict(ptr noundef %zds)
  %call.i = call fastcc i32 @ZSTD_decompressMultiFrame(ptr noundef %zds, ptr noundef %op.0979, i32 noundef %sub.ptr.sub101, ptr noundef %add.ptr, i32 noundef %83, ptr noundef null, i32 noundef 0, ptr noundef %call120) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call.i)
  %cmp.i788 = icmp ult i32 %call.i, -119
  br i1 %cmp.i788, label %cleanup131, label %if.then116.cleanup503_crit_edge

if.then116.cleanup503_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup503

cleanup131:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr126 = getelementptr i8, ptr %add.ptr, i32 %83
  %add.ptr127 = getelementptr i8, ptr %op.0979, i32 %call.i
  %84 = ptrtoint ptr %expected to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %expected, align 4
  br label %while.end.sink.split

if.end134:                                        ; preds = %if.then106.if.end134_crit_edge, %land.lhs.true98.if.end134_crit_edge, %land.lhs.true95.if.end134_crit_edge, %cleanup.cont92.if.end134_crit_edge
  %85 = ptrtoint ptr %outBufferMode.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %outBufferMode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp135 = icmp eq i32 %86, 1
  br i1 %cmp135, label %land.lhs.true137, label %if.end134.do.body161_crit_edge

if.end134.do.body161_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body161

land.lhs.true137:                                 ; preds = %if.end134
  %87 = ptrtoint ptr %frameType to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %frameType, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp140.not = icmp eq i32 %88, 1
  br i1 %cmp140.not, label %land.lhs.true137.do.body161_crit_edge, label %land.lhs.true142

land.lhs.true137.do.body161_crit_edge:            ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body161

land.lhs.true142:                                 ; preds = %land.lhs.true137
  %89 = ptrtoint ptr %fParams410 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %fParams410, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %90)
  %cmp145.not = icmp eq i64 %90, -1
  br i1 %cmp145.not, label %land.lhs.true142.do.body161_crit_edge, label %land.lhs.true147

land.lhs.true142.do.body161_crit_edge:            ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body161

land.lhs.true147:                                 ; preds = %land.lhs.true142
  %sub.ptr.rhs.cast149 = ptrtoint ptr %op.0979 to i32
  %sub.ptr.sub150 = sub i32 %sub.ptr.lhs.cast394, %sub.ptr.rhs.cast149
  %conv151 = zext i32 %sub.ptr.sub150 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %90, i64 %conv151)
  %cmp154 = icmp ugt i64 %90, %conv151
  br i1 %cmp154, label %land.lhs.true147.cleanup503_crit_edge, label %land.lhs.true147.do.body161_crit_edge

land.lhs.true147.do.body161_crit_edge:            ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body161

land.lhs.true147.cleanup503_crit_edge:            ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup503

do.body161:                                       ; preds = %land.lhs.true147.do.body161_crit_edge, %land.lhs.true142.do.body161_crit_edge, %land.lhs.true137.do.body161_crit_edge, %if.end134.do.body161_crit_edge
  %91 = ptrtoint ptr %dictUses.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dictUses.i.i, align 8
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %92, label %ZSTD_getDDict.exit.thread [
    i32 1, label %sw.bb2.i
    i32 -1, label %do.body161.ZSTD_getDDict.exit_crit_edge
  ]

do.body161.ZSTD_getDDict.exit_crit_edge:          ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_getDDict.exit

ZSTD_getDDict.exit.thread:                        ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %ddictLocal.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ddictLocal.i.i, align 8
  %call.i.i791 = call i32 @ZSTD_freeDDict(ptr noundef %95) #12
  %96 = ptrtoint ptr %ddictLocal.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %ddictLocal.i.i, align 8
  %97 = ptrtoint ptr %ddict.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %ddict.i, align 4
  %98 = ptrtoint ptr %dictUses.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %dictUses.i.i, align 8
  br label %do.body.i799

sw.bb2.i:                                         ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %dictUses.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %dictUses.i.i, align 8
  br label %ZSTD_getDDict.exit

ZSTD_getDDict.exit:                               ; preds = %sw.bb2.i, %do.body161.ZSTD_getDDict.exit_crit_edge
  %100 = ptrtoint ptr %ddict.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %retval.0.i793 = load ptr, ptr %ddict.i, align 4
  %tobool.not.i794 = icmp eq ptr %retval.0.i793, null
  br i1 %tobool.not.i794, label %ZSTD_getDDict.exit.do.body.i799_crit_edge, label %if.then.i798

ZSTD_getDDict.exit.do.body.i799_crit_edge:        ; preds = %ZSTD_getDDict.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i799

if.then.i798:                                     ; preds = %ZSTD_getDDict.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i795 = call ptr @ZSTD_DDict_dictContent(ptr noundef nonnull %retval.0.i793) #12
  %call1.i = call i32 @ZSTD_DDict_dictSize(ptr noundef nonnull %retval.0.i793) #12
  %add.ptr.i = getelementptr i8, ptr %call.i795, i32 %call1.i
  %101 = ptrtoint ptr %dictEnd2.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dictEnd2.i, align 8
  %cmp.i796 = icmp ne ptr %102, %add.ptr.i
  %conv.i797 = zext i1 %cmp.i796 to i32
  %103 = ptrtoint ptr %ddictIsCold.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %conv.i797, ptr %ddictIsCold.i, align 4
  br label %do.body.i799

do.body.i799:                                     ; preds = %if.then.i798, %ZSTD_getDDict.exit.do.body.i799_crit_edge, %ZSTD_getDDict.exit.thread
  %tobool.not.i794916 = phi i1 [ true, %ZSTD_getDDict.exit.thread ], [ false, %if.then.i798 ], [ true, %ZSTD_getDDict.exit.do.body.i799_crit_edge ]
  %retval.0.i793915 = phi ptr [ null, %ZSTD_getDDict.exit.thread ], [ %retval.0.i793, %if.then.i798 ], [ null, %ZSTD_getDDict.exit.do.body.i799_crit_edge ]
  %104 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp.i.i.i = icmp eq i32 %105, 0
  %cond.i.i.i = select i1 %cmp.i.i.i, i32 5, i32 1
  %106 = ptrtoint ptr %expected to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %cond.i.i.i, ptr %expected, align 4
  %107 = ptrtoint ptr %stage.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %stage.i.i, align 4
  %108 = call ptr @memset(ptr %previousDstEnd.i.i, i32 0, i32 16)
  %109 = call ptr @memset(ptr %processedCSize.i.i, i32 0, i32 16)
  %110 = ptrtoint ptr %hufTable.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 201326604, ptr %hufTable.i.i, align 8
  %111 = ptrtoint ptr %fseEntropy.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %fseEntropy.i.i, align 4
  %112 = ptrtoint ptr %litEntropy.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %litEntropy.i.i, align 8
  %113 = ptrtoint ptr %dictID5.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %dictID5.i, align 8
  %114 = ptrtoint ptr %bType.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 3, ptr %bType.i.i, align 8
  %115 = call ptr @memcpy(ptr %rep.i.i, ptr @repStartValue, i32 12)
  %116 = ptrtoint ptr %zds to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %entropy.i.i, ptr %zds, align 8
  %117 = ptrtoint ptr %MLTptr.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %MLTable.i.i, ptr %MLTptr.i.i, align 4
  %118 = ptrtoint ptr %OFTptr.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %OFTable.i.i, ptr %OFTptr.i.i, align 8
  %119 = ptrtoint ptr %HUFptr.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %hufTable.i.i, ptr %HUFptr.i.i, align 4
  br i1 %tobool.not.i794916, label %do.body.i799.do.end173_crit_edge, label %if.then9.i

do.body.i799.do.end173_crit_edge:                 ; preds = %do.body.i799
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end173

if.then9.i:                                       ; preds = %do.body.i799
  call void @__sanitizer_cov_trace_pc() #14
  call void @ZSTD_copyDDictParameters(ptr noundef %zds, ptr noundef nonnull %retval.0.i793915) #12
  br label %do.end173

do.end173:                                        ; preds = %if.then9.i, %do.body.i799.do.end173_crit_edge
  %120 = ptrtoint ptr %headerBuffer to i32
  call void @__asan_loadN_noabort(i32 %120, i32 4)
  %121 = load i32, ptr %headerBuffer, align 1
  %122 = and i32 %121, -251658241
  call void @__sanitizer_cov_trace_const_cmp4(i32 1344949528, i32 %122)
  %cmp177 = icmp eq i32 %122, 1344949528
  br i1 %cmp177, label %if.then179, label %do.body185

if.then179:                                       ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #14
  %123 = ptrtoint ptr %add.ptr182 to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %124 = load i32, ptr %add.ptr182, align 1
  %125 = call i32 @llvm.bswap.i32(i32 %124) #12
  br label %if.end202

do.body185:                                       ; preds = %do.end173
  %126 = ptrtoint ptr %lhSize to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %lhSize, align 8
  %call190 = call fastcc i32 @ZSTD_decodeFrameHeader(ptr noundef %zds, ptr noundef %headerBuffer, i32 noundef %127)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call190)
  %cmp.i800 = icmp ult i32 %call190, -119
  br i1 %cmp.i800, label %do.body185.if.end202_crit_edge, label %do.body185.cleanup503_crit_edge

do.body185.cleanup503_crit_edge:                  ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup503

do.body185.if.end202_crit_edge:                   ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end202

if.end202:                                        ; preds = %do.body185.if.end202_crit_edge, %if.then179
  %storemerge973 = phi i32 [ %125, %if.then179 ], [ 3, %do.body185.if.end202_crit_edge ]
  %storemerge = phi i32 [ 7, %if.then179 ], [ 2, %do.body185.if.end202_crit_edge ]
  %128 = ptrtoint ptr %expected to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %storemerge973, ptr %expected, align 4
  %129 = ptrtoint ptr %stage.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %storemerge, ptr %stage.i.i, align 4
  %130 = ptrtoint ptr %windowSize to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %windowSize, align 8
  %132 = call i64 @llvm.umax.i64(i64 %131, i64 1024)
  %133 = ptrtoint ptr %windowSize to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %132, ptr %windowSize, align 8
  %134 = ptrtoint ptr %maxWindowSize to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %maxWindowSize, align 4
  %conv216 = zext i32 %135 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %132, i64 %conv216)
  %cmp217 = icmp ugt i64 %132, %conv216
  br i1 %cmp217, label %if.end202.cleanup503_crit_edge, label %if.end220

if.end202.cleanup503_crit_edge:                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup503

if.end220:                                        ; preds = %if.end202
  %136 = ptrtoint ptr %blockSizeMax417 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %blockSizeMax417, align 8
  %138 = call i32 @llvm.umax.i32(i32 %137, i32 4)
  %139 = ptrtoint ptr %outBufferMode.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %outBufferMode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp231 = icmp eq i32 %140, 0
  br i1 %cmp231, label %cond.true233, label %if.end220.cond.end240_crit_edge

if.end220.cond.end240_crit_edge:                  ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end240

cond.true233:                                     ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #14
  %141 = ptrtoint ptr %fParams410 to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %fParams410, align 8
  %143 = call i64 @llvm.umin.i64(i64 %132, i64 131072) #12
  %add.i = add i64 %132, 64
  %add2.i = add i64 %add.i, %143
  %144 = call i64 @llvm.umin.i64(i64 %add2.i, i64 %142) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %144)
  %145 = icmp ult i64 %144, 4294967296
  %conv9.i = trunc i64 %144 to i32
  %retval.0.i802 = select i1 %145, i32 %conv9.i, i32 -16
  br label %cond.end240

cond.end240:                                      ; preds = %cond.true233, %if.end220.cond.end240_crit_edge
  %cond241 = phi i32 [ %retval.0.i802, %cond.true233 ], [ 0, %if.end220.cond.end240_crit_edge ]
  %146 = ptrtoint ptr %inBuffSize.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %inBuffSize.i.i, align 4
  %148 = ptrtoint ptr %outBuffSize408 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %outBuffSize408, align 4
  %add.i.i = add i32 %149, %147
  %add1.i.i = add i32 %cond241, %138
  %mul.i.i = mul i32 %add1.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %mul.i.i)
  %cmp.i.not.i = icmp ult i32 %add.i.i, %mul.i.i
  br i1 %cmp.i.not.i, label %cond.end240.ZSTD_DCtx_updateOversizedDuration.exit_crit_edge, label %if.then.i803

cond.end240.ZSTD_DCtx_updateOversizedDuration.exit_crit_edge: ; preds = %cond.end240
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_DCtx_updateOversizedDuration.exit

if.then.i803:                                     ; preds = %cond.end240
  call void @__sanitizer_cov_trace_pc() #14
  %150 = ptrtoint ptr %oversizedDuration1.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %oversizedDuration1.i, align 4
  %inc.i = add i32 %151, 1
  br label %ZSTD_DCtx_updateOversizedDuration.exit

ZSTD_DCtx_updateOversizedDuration.exit:           ; preds = %if.then.i803, %cond.end240.ZSTD_DCtx_updateOversizedDuration.exit_crit_edge
  %.sink.i = phi i32 [ %inc.i, %if.then.i803 ], [ 0, %cond.end240.ZSTD_DCtx_updateOversizedDuration.exit_crit_edge ]
  %152 = ptrtoint ptr %oversizedDuration1.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %.sink.i, ptr %oversizedDuration1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %138)
  %cmp242 = icmp ult i32 %147, %138
  br i1 %cmp242, label %ZSTD_DCtx_updateOversizedDuration.exit.if.then249_crit_edge, label %lor.end

ZSTD_DCtx_updateOversizedDuration.exit.if.then249_crit_edge: ; preds = %ZSTD_DCtx_updateOversizedDuration.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then249

lor.end:                                          ; preds = %ZSTD_DCtx_updateOversizedDuration.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %cond241)
  %cmp244 = icmp uge i32 %149, %cond241
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %.sink.i)
  %cmp.i805 = icmp ult i32 %.sink.i, 128
  %or.cond = select i1 %cmp244, i1 %cmp.i805, i1 false
  br i1 %or.cond, label %lor.end.cleanup.cont287_crit_edge, label %lor.end.if.then249_crit_edge

lor.end.if.then249_crit_edge:                     ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then249

lor.end.cleanup.cont287_crit_edge:                ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont287

if.then249:                                       ; preds = %lor.end.if.then249_crit_edge, %ZSTD_DCtx_updateOversizedDuration.exit.if.then249_crit_edge
  %153 = ptrtoint ptr %staticSize to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %staticSize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool251.not = icmp eq i32 %154, 0
  br i1 %tobool251.not, label %if.else259, label %if.then252

if.then252:                                       ; preds = %if.then249
  %sub254 = add i32 %154, -161320
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i, i32 %sub254)
  %cmp255 = icmp ugt i32 %add1.i.i, %sub254
  br i1 %cmp255, label %if.then252.cleanup503_crit_edge, label %if.then252.cleanup276_crit_edge

if.then252.cleanup276_crit_edge:                  ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup276

if.then252.cleanup503_crit_edge:                  ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup503

if.else259:                                       ; preds = %if.then249
  %155 = ptrtoint ptr %inBuff to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %inBuff, align 8
  %157 = ptrtoint ptr %customMem to i32
  call void @__asan_load4_noabort(i32 %157)
  %.unpack = load i32, ptr %customMem, align 4
  %158 = insertvalue [3 x i32] undef, i32 %.unpack, 0
  %159 = ptrtoint ptr %.elt772 to i32
  call void @__asan_load4_noabort(i32 %159)
  %.unpack773 = load i32, ptr %.elt772, align 4
  %160 = insertvalue [3 x i32] %158, i32 %.unpack773, 1
  %161 = ptrtoint ptr %.elt774 to i32
  call void @__asan_load4_noabort(i32 %161)
  %.unpack775 = load i32, ptr %.elt774, align 4
  %162 = insertvalue [3 x i32] %160, i32 %.unpack775, 2
  call void @ZSTD_customFree(ptr noundef %156, [3 x i32] %162) #12
  %163 = ptrtoint ptr %inBuffSize.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %inBuffSize.i.i, align 4
  %164 = ptrtoint ptr %outBuffSize408 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %outBuffSize408, align 4
  %165 = ptrtoint ptr %customMem to i32
  call void @__asan_load4_noabort(i32 %165)
  %.unpack776 = load i32, ptr %customMem, align 4
  %166 = insertvalue [3 x i32] undef, i32 %.unpack776, 0
  %167 = ptrtoint ptr %.elt772 to i32
  call void @__asan_load4_noabort(i32 %167)
  %.unpack778 = load i32, ptr %.elt772, align 4
  %168 = insertvalue [3 x i32] %166, i32 %.unpack778, 1
  %169 = ptrtoint ptr %.elt774 to i32
  call void @__asan_load4_noabort(i32 %169)
  %.unpack780 = load i32, ptr %.elt774, align 4
  %170 = insertvalue [3 x i32] %168, i32 %.unpack780, 2
  %call263 = call ptr @ZSTD_customMalloc(i32 noundef %add1.i.i, [3 x i32] %170) #12
  %171 = ptrtoint ptr %inBuff to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call263, ptr %inBuff, align 8
  %cmp266 = icmp eq ptr %call263, null
  br i1 %cmp266, label %if.else259.cleanup503_crit_edge, label %if.else259.cleanup276_crit_edge

if.else259.cleanup276_crit_edge:                  ; preds = %if.else259
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup276

if.else259.cleanup503_crit_edge:                  ; preds = %if.else259
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup503

cleanup276:                                       ; preds = %if.else259.cleanup276_crit_edge, %if.then252.cleanup276_crit_edge
  %172 = ptrtoint ptr %inBuffSize.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %138, ptr %inBuffSize.i.i, align 4
  %173 = ptrtoint ptr %inBuff to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %inBuff, align 8
  %add.ptr274 = getelementptr i8, ptr %174, i32 %138
  %175 = ptrtoint ptr %outBuff397 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %add.ptr274, ptr %outBuff397, align 8
  %176 = ptrtoint ptr %outBuffSize408 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %cond241, ptr %outBuffSize408, align 4
  br label %cleanup.cont287

cleanup.cont287:                                  ; preds = %cleanup276, %lor.end.cleanup.cont287_crit_edge
  %177 = ptrtoint ptr %streamStage to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 2, ptr %streamStage, align 4
  br label %sw.bb289

sw.bb289:                                         ; preds = %cleanup.cont287, %while.body.sw.bb289_crit_edge
  %sub.ptr.rhs.cast291 = ptrtoint ptr %ip.0980.ph to i32
  %sub.ptr.sub292 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast291
  %178 = ptrtoint ptr %stage.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %stage.i.i, align 4
  %.off.i = add i32 %179, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end.i808, label %if.then.i807

if.then.i807:                                     ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #14
  %180 = ptrtoint ptr %expected to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %expected, align 4
  br label %ZSTD_nextSrcSizeToDecompressWithInputSize.exit

if.end.i808:                                      ; preds = %sw.bb289
  %182 = ptrtoint ptr %bType.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %bType.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %cmp3.not.i = icmp eq i32 %183, 0
  br i1 %cmp3.not.i, label %if.end6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i808
  call void @__sanitizer_cov_trace_pc() #14
  %184 = ptrtoint ptr %expected to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %expected, align 4
  br label %ZSTD_nextSrcSizeToDecompressWithInputSize.exit

if.end6.i:                                        ; preds = %if.end.i808
  call void @__sanitizer_cov_trace_pc() #14
  %186 = call i32 @llvm.umax.i32(i32 %sub.ptr.sub292, i32 1) #12
  %187 = ptrtoint ptr %expected to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %expected, align 4
  %189 = call i32 @llvm.umin.i32(i32 %186, i32 %188) #12
  br label %ZSTD_nextSrcSizeToDecompressWithInputSize.exit

ZSTD_nextSrcSizeToDecompressWithInputSize.exit:   ; preds = %if.end6.i, %if.then4.i, %if.then.i807
  %retval.0.i809 = phi i32 [ %185, %if.then4.i ], [ %181, %if.then.i807 ], [ %189, %if.end6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i809)
  %cmp294 = icmp eq i32 %retval.0.i809, 0
  br i1 %cmp294, label %ZSTD_nextSrcSizeToDecompressWithInputSize.exit.while.end.sink.split_crit_edge, label %if.end298

ZSTD_nextSrcSizeToDecompressWithInputSize.exit.while.end.sink.split_crit_edge: ; preds = %ZSTD_nextSrcSizeToDecompressWithInputSize.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.sink.split

if.end298:                                        ; preds = %ZSTD_nextSrcSizeToDecompressWithInputSize.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub292, i32 %retval.0.i809)
  %cmp302.not = icmp ult i32 %sub.ptr.sub292, %retval.0.i809
  br i1 %cmp302.not, label %cleanup.cont321, label %do.body305

do.body305:                                       ; preds = %if.end298
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %179)
  %cmp.i.i811 = icmp eq i32 %179, 7
  %190 = ptrtoint ptr %outBufferMode.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %outBufferMode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %cmp.i813 = icmp eq i32 %191, 0
  br i1 %cmp.i813, label %if.then.i814, label %if.else16.i

if.then.i814:                                     ; preds = %do.body305
  br i1 %cmp.i.i811, label %if.then.i814.cond.end.i_crit_edge, label %cond.false.i

if.then.i814.cond.end.i_crit_edge:                ; preds = %if.then.i814
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then.i814
  call void @__sanitizer_cov_trace_pc() #14
  %192 = ptrtoint ptr %outBuffSize408 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %outBuffSize408, align 4
  %194 = ptrtoint ptr %outStart392 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %outStart392, align 8
  %sub.i = sub i32 %193, %195
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then.i814.cond.end.i_crit_edge
  %cond.i = phi i32 [ %sub.i, %cond.false.i ], [ 0, %if.then.i814.cond.end.i_crit_edge ]
  %196 = ptrtoint ptr %outBuff397 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %outBuff397, align 8
  %198 = ptrtoint ptr %outStart392 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %outStart392, align 8
  %add.ptr.i815 = getelementptr i8, ptr %197, i32 %199
  %call2.i = call i32 @ZSTD_decompressContinue(ptr noundef %zds, ptr noundef %add.ptr.i815, i32 noundef %cond.i, ptr noundef %ip.0980.ph, i32 noundef %retval.0.i809) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call2.i)
  %cmp.i77.i = icmp ult i32 %call2.i, -119
  br i1 %cmp.i77.i, label %do.end.i, label %cond.end.i.cleanup503_crit_edge

cond.end.i.cleanup503_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup503

do.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool6.not.i = icmp ne i32 %call2.i, 0
  %brmerge.i = select i1 %tobool6.not.i, i1 true, i1 %cmp.i.i811
  br i1 %brmerge.i, label %if.else.i, label %do.end.i.select.unfold_crit_edge

do.end.i.select.unfold_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %select.unfold

if.else.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %200 = ptrtoint ptr %outStart392 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %outStart392, align 8
  %add.i816 = add i32 %201, %call2.i
  %202 = ptrtoint ptr %outEnd391 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %add.i816, ptr %outEnd391, align 4
  br label %select.unfold

if.else16.i:                                      ; preds = %do.body305
  %sub.ptr.rhs.cast.i = ptrtoint ptr %op.0979 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast394, %sub.ptr.rhs.cast.i
  %cond22.i = select i1 %cmp.i.i811, i32 0, i32 %sub.ptr.sub.i
  %call24.i = call i32 @ZSTD_decompressContinue(ptr noundef %zds, ptr noundef %op.0979, i32 noundef %cond22.i, ptr noundef %ip.0980.ph, i32 noundef %retval.0.i809) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call24.i)
  %cmp.i79.i = icmp ult i32 %call24.i, -119
  br i1 %cmp.i79.i, label %do.end35.i, label %if.else16.i.cleanup503_crit_edge

if.else16.i.cleanup503_crit_edge:                 ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup503

do.end35.i:                                       ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr36.i = getelementptr i8, ptr %op.0979, i32 %call24.i
  br label %select.unfold

select.unfold:                                    ; preds = %do.end35.i, %if.else.i, %do.end.i.select.unfold_crit_edge
  %op.4 = phi ptr [ %op.0979, %if.else.i ], [ %op.0979, %do.end.i.select.unfold_crit_edge ], [ %add.ptr36.i, %do.end35.i ]
  %.sink.i817 = phi i32 [ 4, %if.else.i ], [ 2, %do.end.i.select.unfold_crit_edge ], [ 2, %do.end35.i ]
  %203 = ptrtoint ptr %streamStage to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %.sink.i817, ptr %streamStage, align 4
  %add.ptr317 = getelementptr i8, ptr %ip.0980.ph, i32 %retval.0.i809
  br label %while.body.outer.backedge

cleanup.cont321:                                  ; preds = %if.end298
  %cmp322 = icmp eq ptr %ip.0980.ph, %add.ptr6
  br i1 %cmp322, label %cleanup.cont321.while.end_crit_edge, label %if.end325

cleanup.cont321.while.end_crit_edge:              ; preds = %cleanup.cont321
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end325:                                        ; preds = %cleanup.cont321
  call void @__sanitizer_cov_trace_pc() #14
  %204 = ptrtoint ptr %streamStage to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 3, ptr %streamStage, align 4
  br label %sw.bb327

sw.bb327:                                         ; preds = %if.end325, %while.body.sw.bb327_crit_edge
  %205 = ptrtoint ptr %expected to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %expected, align 4
  %207 = ptrtoint ptr %inPos to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %inPos, align 8
  %sub332 = sub i32 %206, %208
  %209 = ptrtoint ptr %stage.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %stage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %210)
  %cmp.i823.not = icmp eq i32 %210, 7
  br i1 %cmp.i823.not, label %if.then335, label %if.else348

if.then335:                                       ; preds = %sw.bb327
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.rhs.cast337 = ptrtoint ptr %ip.0980.ph to i32
  %sub.ptr.sub338 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast337
  %211 = call i32 @llvm.umin.i32(i32 %sub332, i32 %sub.ptr.sub338)
  br label %if.end363

if.else348:                                       ; preds = %sw.bb327
  %212 = ptrtoint ptr %inBuffSize.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %inBuffSize.i.i, align 4
  %sub351 = sub i32 %213, %208
  call void @__sanitizer_cov_trace_cmp4(i32 %sub332, i32 %sub351)
  %cmp352 = icmp ugt i32 %sub332, %sub351
  br i1 %cmp352, label %if.else348.cleanup503_crit_edge, label %if.end355

if.else348.cleanup503_crit_edge:                  ; preds = %if.else348
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup503

if.end355:                                        ; preds = %if.else348
  %sub.ptr.rhs.cast360 = ptrtoint ptr %ip.0980.ph to i32
  %sub.ptr.sub361 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast360
  %214 = call i32 @llvm.umin.i32(i32 %sub332, i32 %sub.ptr.sub361) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %cmp1.not.i = icmp eq i32 %214, 0
  br i1 %cmp1.not.i, label %if.end355.if.end363_crit_edge, label %if.then.i825

if.end355.if.end363_crit_edge:                    ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end363

if.then.i825:                                     ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #14
  %215 = ptrtoint ptr %inBuff to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %inBuff, align 8
  %add.ptr358 = getelementptr i8, ptr %216, i32 %208
  %217 = call ptr @memcpy(ptr %add.ptr358, ptr %ip.0980.ph, i32 %214)
  br label %if.end363

if.end363:                                        ; preds = %if.then.i825, %if.end355.if.end363_crit_edge, %if.then335
  %loadedSize.0 = phi i32 [ %211, %if.then335 ], [ 0, %if.end355.if.end363_crit_edge ], [ %214, %if.then.i825 ]
  %add.ptr364 = getelementptr i8, ptr %ip.0980.ph, i32 %loadedSize.0
  %218 = ptrtoint ptr %inPos to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %inPos, align 8
  %add366 = add i32 %219, %loadedSize.0
  store i32 %add366, ptr %inPos, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %loadedSize.0, i32 %sub332)
  %cmp367 = icmp ult i32 %loadedSize.0, %sub332
  br i1 %cmp367, label %if.end363.while.end_crit_edge, label %if.end370

if.end363.while.end_crit_edge:                    ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end370:                                        ; preds = %if.end363
  %220 = ptrtoint ptr %inPos to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 0, ptr %inPos, align 8
  %221 = ptrtoint ptr %inBuff to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %inBuff, align 8
  %223 = ptrtoint ptr %stage.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %stage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %224)
  %cmp.i.i828 = icmp eq i32 %224, 7
  %225 = ptrtoint ptr %outBufferMode.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %outBufferMode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %cmp.i830 = icmp eq i32 %226, 0
  br i1 %cmp.i830, label %if.then.i831, label %if.else16.i849

if.then.i831:                                     ; preds = %if.end370
  br i1 %cmp.i.i828, label %if.then.i831.cond.end.i842_crit_edge, label %cond.false.i835

if.then.i831.cond.end.i842_crit_edge:             ; preds = %if.then.i831
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i842

cond.false.i835:                                  ; preds = %if.then.i831
  call void @__sanitizer_cov_trace_pc() #14
  %227 = ptrtoint ptr %outBuffSize408 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %outBuffSize408, align 4
  %229 = ptrtoint ptr %outStart392 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %outStart392, align 8
  %sub.i834 = sub i32 %228, %230
  br label %cond.end.i842

cond.end.i842:                                    ; preds = %cond.false.i835, %if.then.i831.cond.end.i842_crit_edge
  %cond.i836 = phi i32 [ %sub.i834, %cond.false.i835 ], [ 0, %if.then.i831.cond.end.i842_crit_edge ]
  %231 = ptrtoint ptr %outBuff397 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %outBuff397, align 8
  %233 = ptrtoint ptr %outStart392 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %outStart392, align 8
  %add.ptr.i839 = getelementptr i8, ptr %232, i32 %234
  %call2.i840 = call i32 @ZSTD_decompressContinue(ptr noundef %zds, ptr noundef %add.ptr.i839, i32 noundef %cond.i836, ptr noundef %222, i32 noundef %206) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call2.i840)
  %cmp.i77.i841 = icmp ult i32 %call2.i840, -119
  br i1 %cmp.i77.i841, label %do.end.i845, label %cond.end.i842.cleanup503_crit_edge

cond.end.i842.cleanup503_crit_edge:               ; preds = %cond.end.i842
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup503

do.end.i845:                                      ; preds = %cond.end.i842
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i840)
  %tobool6.not.i843 = icmp ne i32 %call2.i840, 0
  %brmerge.i844 = select i1 %tobool6.not.i843, i1 true, i1 %cmp.i.i828
  br i1 %brmerge.i844, label %if.else.i848, label %do.end.i845.cleanup385_crit_edge

do.end.i845.cleanup385_crit_edge:                 ; preds = %do.end.i845
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup385

if.else.i848:                                     ; preds = %do.end.i845
  call void @__sanitizer_cov_trace_pc() #14
  %235 = ptrtoint ptr %outStart392 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %outStart392, align 8
  %add.i846 = add i32 %236, %call2.i840
  %237 = ptrtoint ptr %outEnd391 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %add.i846, ptr %outEnd391, align 4
  br label %cleanup385

if.else16.i849:                                   ; preds = %if.end370
  %sub.ptr.rhs.cast.i851 = ptrtoint ptr %op.0979 to i32
  %sub.ptr.sub.i852 = sub i32 %sub.ptr.lhs.cast394, %sub.ptr.rhs.cast.i851
  %cond22.i854 = select i1 %cmp.i.i828, i32 0, i32 %sub.ptr.sub.i852
  %call24.i855 = call i32 @ZSTD_decompressContinue(ptr noundef %zds, ptr noundef %op.0979, i32 noundef %cond22.i854, ptr noundef %222, i32 noundef %206) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call24.i855)
  %cmp.i79.i856 = icmp ult i32 %call24.i855, -119
  br i1 %cmp.i79.i856, label %do.end35.i859, label %if.else16.i849.cleanup503_crit_edge

if.else16.i849.cleanup503_crit_edge:              ; preds = %if.else16.i849
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup503

do.end35.i859:                                    ; preds = %if.else16.i849
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr36.i858 = getelementptr i8, ptr %op.0979, i32 %call24.i855
  br label %cleanup385

cleanup385:                                       ; preds = %do.end35.i859, %if.else.i848, %do.end.i845.cleanup385_crit_edge
  %op.8 = phi ptr [ %op.0979, %if.else.i848 ], [ %op.0979, %do.end.i845.cleanup385_crit_edge ], [ %add.ptr36.i858, %do.end35.i859 ]
  %.sink.i860 = phi i32 [ 4, %if.else.i848 ], [ 2, %do.end.i845.cleanup385_crit_edge ], [ 2, %do.end35.i859 ]
  %238 = ptrtoint ptr %streamStage to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %.sink.i860, ptr %streamStage, align 4
  br label %while.body.outer.backedge

while.body.outer.backedge:                        ; preds = %cleanup385, %select.unfold, %cleanup90
  %ip.0980.ph.be = phi ptr [ %add.ptr317, %select.unfold ], [ %add.ptr86, %cleanup90 ], [ %add.ptr364, %cleanup385 ]
  %op.0979.ph.be = phi ptr [ %op.4, %select.unfold ], [ %op.0979, %cleanup90 ], [ %op.8, %cleanup385 ]
  br label %while.body.outer

sw.bb390:                                         ; preds = %while.body
  %239 = ptrtoint ptr %outEnd391 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %outEnd391, align 4
  %241 = ptrtoint ptr %outStart392 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %outStart392, align 8
  %sub393 = sub i32 %240, %242
  %sub.ptr.rhs.cast395 = ptrtoint ptr %op.0979 to i32
  %sub.ptr.sub396 = sub i32 %sub.ptr.lhs.cast394, %sub.ptr.rhs.cast395
  %243 = call i32 @llvm.umin.i32(i32 %sub.ptr.sub396, i32 %sub393) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %cmp1.not.i867 = icmp eq i32 %243, 0
  br i1 %cmp1.not.i867, label %sw.bb390.ZSTD_limitCopy.exit870_crit_edge, label %if.then.i868

sw.bb390.ZSTD_limitCopy.exit870_crit_edge:        ; preds = %sw.bb390
  call void @__sanitizer_cov_trace_pc() #14
  br label %ZSTD_limitCopy.exit870

if.then.i868:                                     ; preds = %sw.bb390
  call void @__sanitizer_cov_trace_pc() #14
  %244 = ptrtoint ptr %outBuff397 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %outBuff397, align 8
  %add.ptr399 = getelementptr i8, ptr %245, i32 %242
  %246 = call ptr @memcpy(ptr %op.0979, ptr %add.ptr399, i32 %243)
  br label %ZSTD_limitCopy.exit870

ZSTD_limitCopy.exit870:                           ; preds = %if.then.i868, %sw.bb390.ZSTD_limitCopy.exit870_crit_edge
  %add.ptr401 = getelementptr i8, ptr %op.0979, i32 %243
  %247 = ptrtoint ptr %outStart392 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %outStart392, align 8
  %add403 = add i32 %248, %243
  store i32 %add403, ptr %outStart392, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub393, i32 %sub.ptr.sub396)
  %cmp404.not = icmp ugt i32 %sub393, %sub.ptr.sub396
  br i1 %cmp404.not, label %ZSTD_limitCopy.exit870.while.end_crit_edge, label %if.then406

ZSTD_limitCopy.exit870.while.end_crit_edge:       ; preds = %ZSTD_limitCopy.exit870
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.then406:                                       ; preds = %ZSTD_limitCopy.exit870
  %249 = ptrtoint ptr %streamStage to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 2, ptr %streamStage, align 4
  %250 = ptrtoint ptr %outBuffSize408 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %outBuffSize408, align 4
  %conv409 = zext i32 %251 to i64
  %252 = ptrtoint ptr %fParams410 to i32
  call void @__asan_load8_noabort(i32 %252)
  %253 = load i64, ptr %fParams410, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %253, i64 %conv409)
  %cmp412 = icmp ugt i64 %253, %conv409
  br i1 %cmp412, label %land.lhs.true414, label %if.then406.while.body.backedge_crit_edge

if.then406.while.body.backedge_crit_edge:         ; preds = %if.then406
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.backedge

while.body.backedge:                              ; preds = %if.then422, %land.lhs.true414.while.body.backedge_crit_edge, %if.then406.while.body.backedge_crit_edge
  br label %while.body

land.lhs.true414:                                 ; preds = %if.then406
  %254 = ptrtoint ptr %blockSizeMax417 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %blockSizeMax417, align 8
  %add418 = add i32 %255, %add403
  call void @__sanitizer_cov_trace_cmp4(i32 %add418, i32 %251)
  %cmp420 = icmp ugt i32 %add418, %251
  br i1 %cmp420, label %if.then422, label %land.lhs.true414.while.body.backedge_crit_edge

land.lhs.true414.while.body.backedge_crit_edge:   ; preds = %land.lhs.true414
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.backedge

if.then422:                                       ; preds = %land.lhs.true414
  call void @__sanitizer_cov_trace_pc() #14
  %256 = ptrtoint ptr %outEnd391 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 0, ptr %outEnd391, align 4
  %257 = ptrtoint ptr %outStart392 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 0, ptr %outStart392, align 8
  br label %while.body.backedge

while.end.sink.split:                             ; preds = %ZSTD_nextSrcSizeToDecompressWithInputSize.exit.while.end.sink.split_crit_edge, %cleanup131
  %op.11.ph.ph = phi ptr [ %add.ptr127, %cleanup131 ], [ %op.0979, %ZSTD_nextSrcSizeToDecompressWithInputSize.exit.while.end.sink.split_crit_edge ]
  %ip.10.ph.ph = phi ptr [ %add.ptr126, %cleanup131 ], [ %ip.0980.ph, %ZSTD_nextSrcSizeToDecompressWithInputSize.exit.while.end.sink.split_crit_edge ]
  %258 = ptrtoint ptr %streamStage to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 0, ptr %streamStage, align 4
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %ZSTD_limitCopy.exit870.while.end_crit_edge, %if.end363.while.end_crit_edge, %cleanup.cont321.while.end_crit_edge
  %op.11.ph = phi ptr [ %op.11.ph.ph, %while.end.sink.split ], [ %add.ptr401, %ZSTD_limitCopy.exit870.while.end_crit_edge ], [ %op.0979, %cleanup.cont321.while.end_crit_edge ], [ %op.0979, %if.end363.while.end_crit_edge ]
  %ip.10.ph = phi ptr [ %ip.10.ph.ph, %while.end.sink.split ], [ %ip.0980.ph, %ZSTD_limitCopy.exit870.while.end_crit_edge ], [ %add.ptr364, %if.end363.while.end_crit_edge ], [ %add.ptr6, %cleanup.cont321.while.end_crit_edge ]
  %259 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %input, align 4
  %sub.ptr.lhs.cast435 = ptrtoint ptr %ip.10.ph to i32
  %sub.ptr.rhs.cast436 = ptrtoint ptr %260 to i32
  %sub.ptr.sub437 = sub i32 %sub.ptr.lhs.cast435, %sub.ptr.rhs.cast436
  %261 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %sub.ptr.sub437, ptr %pos, align 4
  %262 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %output, align 4
  %sub.ptr.lhs.cast440 = ptrtoint ptr %op.11.ph to i32
  %sub.ptr.rhs.cast441 = ptrtoint ptr %263 to i32
  %sub.ptr.sub442 = sub i32 %sub.ptr.lhs.cast440, %sub.ptr.rhs.cast441
  %264 = ptrtoint ptr %pos11 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %sub.ptr.sub442, ptr %pos11, align 4
  %265 = call ptr @memcpy(ptr %expectedOutBuffer.i, ptr %output, i32 12)
  %cmp445 = icmp eq ptr %ip.10.ph, %add.ptr
  %cmp448 = icmp eq ptr %op.11.ph, %add.ptr15
  %or.cond971 = select i1 %cmp445, i1 %cmp448, i1 false
  %noForwardProgress = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %zds, i32 0, i32 50
  br i1 %or.cond971, label %if.then450, label %if.else464

if.then450:                                       ; preds = %while.end
  %266 = ptrtoint ptr %noForwardProgress to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %noForwardProgress, align 4
  %inc = add i32 %267, 1
  store i32 %inc, ptr %noForwardProgress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc)
  %cmp452 = icmp sgt i32 %inc, 15
  br i1 %cmp452, label %if.then454, label %if.then450.if.end466_crit_edge

if.then450.if.end466_crit_edge:                   ; preds = %if.then450
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end466

if.then454:                                       ; preds = %if.then450
  %cmp455 = icmp eq ptr %add.ptr15, %add.ptr23
  br i1 %cmp455, label %if.then454.cleanup503_crit_edge, label %if.end458

if.then454.cleanup503_crit_edge:                  ; preds = %if.then454
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup503

if.end458:                                        ; preds = %if.then454
  %cmp459 = icmp eq ptr %add.ptr, %add.ptr6
  br i1 %cmp459, label %if.end458.cleanup503_crit_edge, label %if.end458.if.end466_crit_edge

if.end458.if.end466_crit_edge:                    ; preds = %if.end458
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end466

if.end458.cleanup503_crit_edge:                   ; preds = %if.end458
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup503

if.else464:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %268 = ptrtoint ptr %noForwardProgress to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 0, ptr %noForwardProgress, align 4
  br label %if.end466

if.end466:                                        ; preds = %if.else464, %if.end458.if.end466_crit_edge, %if.then450.if.end466_crit_edge
  %269 = ptrtoint ptr %expected to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %expected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %270)
  %tobool468.not = icmp eq i32 %270, 0
  br i1 %tobool468.not, label %if.then469, label %if.end495

if.then469:                                       ; preds = %if.end466
  %271 = ptrtoint ptr %outEnd391 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %outEnd391, align 4
  %273 = ptrtoint ptr %outStart392 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %outStart392, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %272, i32 %274)
  %cmp472 = icmp eq i32 %272, %274
  %275 = ptrtoint ptr %hostageByte to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %hostageByte, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %276)
  %tobool476.not = icmp eq i32 %276, 0
  br i1 %cmp472, label %if.then474, label %if.end488

if.then474:                                       ; preds = %if.then469
  br i1 %tobool476.not, label %if.then474.cleanup503_crit_edge, label %if.then477

if.then474.cleanup503_crit_edge:                  ; preds = %if.then474
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup503

if.then477:                                       ; preds = %if.then474
  %277 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %pos, align 4
  %279 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %278, i32 %280)
  %cmp480.not = icmp ult i32 %278, %280
  br i1 %cmp480.not, label %if.end484, label %if.then482

if.then482:                                       ; preds = %if.then477
  call void @__sanitizer_cov_trace_pc() #14
  %281 = ptrtoint ptr %streamStage to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 2, ptr %streamStage, align 4
  br label %cleanup503

if.end484:                                        ; preds = %if.then477
  call void @__sanitizer_cov_trace_pc() #14
  %inc486 = add nuw i32 %278, 1
  %282 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %inc486, ptr %pos, align 4
  br label %cleanup503

if.end488:                                        ; preds = %if.then469
  br i1 %tobool476.not, label %if.then491, label %if.end488.cleanup503_crit_edge

if.end488.cleanup503_crit_edge:                   ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup503

if.then491:                                       ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #14
  %283 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %pos, align 4
  %dec = add i32 %284, -1
  store i32 %dec, ptr %pos, align 4
  %285 = ptrtoint ptr %hostageByte to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 1, ptr %hostageByte, align 8
  br label %cleanup503

if.end495:                                        ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #14
  %286 = ptrtoint ptr %stage.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %stage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %287)
  %cond = icmp eq i32 %287, 3
  %spec.select972 = select i1 %cond, i32 3, i32 0
  %288 = ptrtoint ptr %inPos to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %inPos, align 8
  %add499 = sub i32 %270, %289
  %sub501 = add i32 %add499, %spec.select972
  br label %cleanup503

cleanup503:                                       ; preds = %if.end495, %if.then491, %if.end488.cleanup503_crit_edge, %if.end484, %if.then482, %if.then474.cleanup503_crit_edge, %if.end458.cleanup503_crit_edge, %if.then454.cleanup503_crit_edge, %if.else16.i849.cleanup503_crit_edge, %cond.end.i842.cleanup503_crit_edge, %if.else348.cleanup503_crit_edge, %if.else16.i.cleanup503_crit_edge, %cond.end.i.cleanup503_crit_edge, %if.else259.cleanup503_crit_edge, %if.then252.cleanup503_crit_edge, %if.end202.cleanup503_crit_edge, %do.body185.cleanup503_crit_edge, %land.lhs.true147.cleanup503_crit_edge, %if.then116.cleanup503_crit_edge, %if.end63, %if.end46.cleanup503_crit_edge, %while.body.cleanup503_crit_edge, %if.end3.i.cleanup503_crit_edge, %if.end.cleanup503_crit_edge, %entry.cleanup503_crit_edge
  %retval.21 = phi i32 [ -72, %entry.cleanup503_crit_edge ], [ -70, %if.end.cleanup503_crit_edge ], [ -70, %if.then454.cleanup503_crit_edge ], [ -72, %if.end458.cleanup503_crit_edge ], [ %sub501, %if.end495 ], [ 1, %if.then482 ], [ 0, %if.end484 ], [ 0, %if.then474.cleanup503_crit_edge ], [ 1, %if.then491 ], [ 1, %if.end488.cleanup503_crit_edge ], [ -104, %if.end3.i.cleanup503_crit_edge ], [ %add79, %if.end63 ], [ %call.i, %if.then116.cleanup503_crit_edge ], [ -1, %while.body.cleanup503_crit_edge ], [ %call190, %do.body185.cleanup503_crit_edge ], [ -70, %land.lhs.true147.cleanup503_crit_edge ], [ -16, %if.end202.cleanup503_crit_edge ], [ -64, %if.then252.cleanup503_crit_edge ], [ -64, %if.else259.cleanup503_crit_edge ], [ %call42, %if.end46.cleanup503_crit_edge ], [ -20, %if.else348.cleanup503_crit_edge ], [ %call24.i, %if.else16.i.cleanup503_crit_edge ], [ %call2.i, %cond.end.i.cleanup503_crit_edge ], [ %call24.i855, %if.else16.i849.cleanup503_crit_edge ], [ %call2.i840, %cond.end.i842.cleanup503_crit_edge ]
  ret i32 %retval.21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decompressStream_simpleArgs(ptr noundef %dctx, ptr noundef %dst, i32 noundef %dstCapacity, ptr nocapture noundef %dstPos, ptr noundef %src, i32 noundef %srcSize, ptr nocapture noundef %srcPos) local_unnamed_addr #0 align 64 {
entry:
  %output = alloca %struct.ZSTD_outBuffer_s, align 4
  %input = alloca %struct.ZSTD_inBuffer_s, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %output) #12
  %0 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %output, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ZSTD_outBuffer_s, ptr %output, i32 0, i32 2
  %2 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dst, ptr %output, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dstCapacity, ptr %0, align 4
  %4 = ptrtoint ptr %dstPos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dstPos, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %input) #12
  %7 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %input, i32 0, i32 1
  %8 = getelementptr inbounds %struct.ZSTD_inBuffer_s, ptr %input, i32 0, i32 2
  %9 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %src, ptr %input, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %srcSize, ptr %7, align 4
  %11 = ptrtoint ptr %srcPos to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %srcPos, align 4
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %8, align 4
  %call = call i32 @ZSTD_decompressStream(ptr noundef %dctx, ptr noundef nonnull %output, ptr noundef nonnull %input)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %16 = ptrtoint ptr %dstPos to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dstPos, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %8, align 4
  %19 = ptrtoint ptr %srcPos to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %srcPos, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %input) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %output) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_freeDDict(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_getErrorCode(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xxh64_reset(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_customCalloc(i32 noundef, [3 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_getDictID_fromDDict(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xxh64(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !{null, !1, !"ZSTD_defaultCMem", i1 false, i1 false}
!1 = !{!"../include/linux/zstd_lib.h", i32 1505, i32 22}
!2 = !{ptr @ZSTD_did_fieldSize, !3, !"ZSTD_did_fieldSize", i1 false, i1 false}
!3 = !{!"../lib/zstd/decompress/../common/zstd_internal.h", i32 149, i32 33}
!4 = !{ptr @ZSTD_fcs_fieldSize, !5, !"ZSTD_fcs_fieldSize", i1 false, i1 false}
!5 = !{!"../lib/zstd/decompress/../common/zstd_internal.h", i32 148, i32 33}
!6 = !{ptr @OF_base, !7, !"OF_base", i1 false, i1 false}
!7 = !{!"../lib/zstd/decompress/zstd_decompress_internal.h", i32 37, i32 30}
!8 = !{ptr @OF_bits, !9, !"OF_bits", i1 false, i1 false}
!9 = !{!"../lib/zstd/decompress/zstd_decompress_internal.h", i32 43, i32 30}
!10 = !{ptr @ML_base, !11, !"ML_base", i1 false, i1 false}
!11 = !{!"../lib/zstd/decompress/zstd_decompress_internal.h", i32 49, i32 30}
!12 = !{ptr @ML_bits, !13, !"ML_bits", i1 false, i1 false}
!13 = !{!"../lib/zstd/decompress/../common/zstd_internal.h", i32 202, i32 30}
!14 = !{ptr @LL_base, !15, !"LL_base", i1 false, i1 false}
!15 = !{!"../lib/zstd/decompress/zstd_decompress_internal.h", i32 30, i32 30}
!16 = !{ptr @LL_bits, !17, !"LL_bits", i1 false, i1 false}
!17 = !{!"../lib/zstd/decompress/../common/zstd_internal.h", i32 185, i32 30}
!18 = !{ptr @repStartValue, !19, !"repStartValue", i1 false, i1 false}
!19 = !{!"../lib/zstd/decompress/../common/zstd_internal.h", i32 134, i32 30}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"ZSTD_errorFrameSizeInfo: %agg.result"}
!31 = distinct !{!31, !"ZSTD_errorFrameSizeInfo"}
!32 = !{!33}
!33 = distinct !{!33, !34, !"ZSTD_errorFrameSizeInfo: %agg.result"}
!34 = distinct !{!34, !"ZSTD_errorFrameSizeInfo"}
!35 = !{!"auto-init"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"ZSTD_errorFrameSizeInfo: %agg.result"}
!38 = distinct !{!38, !"ZSTD_errorFrameSizeInfo"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"ZSTD_errorFrameSizeInfo: %agg.result"}
!41 = distinct !{!41, !"ZSTD_errorFrameSizeInfo"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"ZSTD_errorFrameSizeInfo: %agg.result"}
!44 = distinct !{!44, !"ZSTD_errorFrameSizeInfo"}
!45 = !{i32 -30, i32 1}
!46 = !{i32 0, i32 33}
