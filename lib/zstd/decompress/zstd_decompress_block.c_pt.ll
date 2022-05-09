; ModuleID = '/llk/IR_all_yes/lib/zstd/decompress/zstd_decompress_block.c_pt.bc'
source_filename = "../lib/zstd/decompress/zstd_decompress_block.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.ZSTD_seqSymbol = type { i16, i8, i8, i32 }
%struct.blockProperties_t = type { i32, i32, i32 }
%struct.ZSTD_DCtx_s = type { ptr, ptr, ptr, ptr, %struct.ZSTD_entropyDTables_t, [640 x i32], ptr, ptr, ptr, ptr, i32, %struct.ZSTD_frameHeader, i64, i64, i32, i32, i32, i32, %struct.xxh64_state, i32, i32, i32, i32, ptr, %struct.ZSTD_customMem, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.ZSTD_outBuffer_s, [131104 x i8], [18 x i8], i32 }
%struct.ZSTD_entropyDTables_t = type { [513 x %struct.ZSTD_seqSymbol], [257 x %struct.ZSTD_seqSymbol], [513 x %struct.ZSTD_seqSymbol], [4097 x i32], [3 x i32], [157 x i32] }
%struct.ZSTD_frameHeader = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.xxh64_state = type { i64, i64, i64, i64, i64, [4 x i64], i32 }
%struct.ZSTD_customMem = type { ptr, ptr, ptr }
%struct.ZSTD_outBuffer_s = type { ptr, i32, i32 }
%struct.ZSTD_seqSymbol_header = type { i32, i32 }
%struct.seqState_t = type { %struct.BIT_DStream_t, %struct.ZSTD_fseState, %struct.ZSTD_fseState, %struct.ZSTD_fseState, [3 x i32], ptr, ptr, i32 }
%struct.BIT_DStream_t = type { i32, i32, ptr, ptr, ptr }
%struct.ZSTD_fseState = type { i32, ptr }
%struct.seq_t = type { i32, i32, i32, ptr }

@LL_base = internal constant { [36 x i32], [48 x i8] } { [36 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 18, i32 20, i32 22, i32 24, i32 28, i32 32, i32 40, i32 48, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536], [48 x i8] zeroinitializer }, align 32
@LL_bits = internal constant { [36 x i32], [48 x i8] } { [36 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], [48 x i8] zeroinitializer }, align 32
@LL_defaultDTable = internal constant { [65 x %struct.ZSTD_seqSymbol], [152 x i8] } { [65 x %struct.ZSTD_seqSymbol] [%struct.ZSTD_seqSymbol { i16 1, i8 1, i8 1, i32 6 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 4, i32 0 }, %struct.ZSTD_seqSymbol { i16 16, i8 0, i8 4, i32 0 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 1 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 3 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 4 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 6 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 7 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 9 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 10 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 12 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 14 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 5, i32 16 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 5, i32 20 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 5, i32 22 }, %struct.ZSTD_seqSymbol { i16 0, i8 2, i8 5, i32 28 }, %struct.ZSTD_seqSymbol { i16 0, i8 3, i8 5, i32 32 }, %struct.ZSTD_seqSymbol { i16 0, i8 4, i8 5, i32 48 }, %struct.ZSTD_seqSymbol { i16 32, i8 6, i8 5, i32 64 }, %struct.ZSTD_seqSymbol { i16 0, i8 7, i8 5, i32 128 }, %struct.ZSTD_seqSymbol { i16 0, i8 8, i8 6, i32 256 }, %struct.ZSTD_seqSymbol { i16 0, i8 10, i8 6, i32 1024 }, %struct.ZSTD_seqSymbol { i16 0, i8 12, i8 6, i32 4096 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 4, i32 0 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 4, i32 1 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 2 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 4 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 5 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 7 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 8 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 10 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 11 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 13 }, %struct.ZSTD_seqSymbol { i16 32, i8 1, i8 5, i32 16 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 5, i32 18 }, %struct.ZSTD_seqSymbol { i16 32, i8 1, i8 5, i32 22 }, %struct.ZSTD_seqSymbol { i16 0, i8 2, i8 5, i32 24 }, %struct.ZSTD_seqSymbol { i16 32, i8 3, i8 5, i32 32 }, %struct.ZSTD_seqSymbol { i16 0, i8 3, i8 5, i32 40 }, %struct.ZSTD_seqSymbol { i16 0, i8 6, i8 4, i32 64 }, %struct.ZSTD_seqSymbol { i16 16, i8 6, i8 4, i32 64 }, %struct.ZSTD_seqSymbol { i16 32, i8 7, i8 5, i32 128 }, %struct.ZSTD_seqSymbol { i16 0, i8 9, i8 6, i32 512 }, %struct.ZSTD_seqSymbol { i16 0, i8 11, i8 6, i32 2048 }, %struct.ZSTD_seqSymbol { i16 48, i8 0, i8 4, i32 0 }, %struct.ZSTD_seqSymbol { i16 16, i8 0, i8 4, i32 1 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 2 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 3 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 5 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 6 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 8 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 9 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 11 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 12 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 15 }, %struct.ZSTD_seqSymbol { i16 32, i8 1, i8 5, i32 18 }, %struct.ZSTD_seqSymbol { i16 32, i8 1, i8 5, i32 20 }, %struct.ZSTD_seqSymbol { i16 32, i8 2, i8 5, i32 24 }, %struct.ZSTD_seqSymbol { i16 32, i8 2, i8 5, i32 28 }, %struct.ZSTD_seqSymbol { i16 32, i8 3, i8 5, i32 40 }, %struct.ZSTD_seqSymbol { i16 32, i8 4, i8 5, i32 48 }, %struct.ZSTD_seqSymbol { i16 0, i8 16, i8 6, i32 65536 }, %struct.ZSTD_seqSymbol { i16 0, i8 15, i8 6, i32 32768 }, %struct.ZSTD_seqSymbol { i16 0, i8 14, i8 6, i32 16384 }, %struct.ZSTD_seqSymbol { i16 0, i8 13, i8 6, i32 8192 }], [152 x i8] zeroinitializer }, align 32
@OF_base = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 0, i32 1, i32 1, i32 5, i32 13, i32 29, i32 61, i32 125, i32 253, i32 509, i32 1021, i32 2045, i32 4093, i32 8189, i32 16381, i32 32765, i32 65533, i32 131069, i32 262141, i32 524285, i32 1048573, i32 2097149, i32 4194301, i32 8388605, i32 16777213, i32 33554429, i32 67108861, i32 134217725, i32 268435453, i32 536870909, i32 1073741821, i32 2147483645], [32 x i8] zeroinitializer }, align 32
@OF_bits = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31], [32 x i8] zeroinitializer }, align 32
@OF_defaultDTable = internal constant { [33 x %struct.ZSTD_seqSymbol], [88 x i8] } { [33 x %struct.ZSTD_seqSymbol] [%struct.ZSTD_seqSymbol { i16 1, i8 1, i8 1, i32 5 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 0 }, %struct.ZSTD_seqSymbol { i16 0, i8 6, i8 4, i32 61 }, %struct.ZSTD_seqSymbol { i16 0, i8 9, i8 5, i32 509 }, %struct.ZSTD_seqSymbol { i16 0, i8 15, i8 5, i32 32765 }, %struct.ZSTD_seqSymbol { i16 0, i8 21, i8 5, i32 2097149 }, %struct.ZSTD_seqSymbol { i16 0, i8 3, i8 5, i32 5 }, %struct.ZSTD_seqSymbol { i16 0, i8 7, i8 4, i32 125 }, %struct.ZSTD_seqSymbol { i16 0, i8 12, i8 5, i32 4093 }, %struct.ZSTD_seqSymbol { i16 0, i8 18, i8 5, i32 262141 }, %struct.ZSTD_seqSymbol { i16 0, i8 23, i8 5, i32 8388605 }, %struct.ZSTD_seqSymbol { i16 0, i8 5, i8 5, i32 29 }, %struct.ZSTD_seqSymbol { i16 0, i8 8, i8 4, i32 253 }, %struct.ZSTD_seqSymbol { i16 0, i8 14, i8 5, i32 16381 }, %struct.ZSTD_seqSymbol { i16 0, i8 20, i8 5, i32 1048573 }, %struct.ZSTD_seqSymbol { i16 0, i8 2, i8 5, i32 1 }, %struct.ZSTD_seqSymbol { i16 16, i8 7, i8 4, i32 125 }, %struct.ZSTD_seqSymbol { i16 0, i8 11, i8 5, i32 2045 }, %struct.ZSTD_seqSymbol { i16 0, i8 17, i8 5, i32 131069 }, %struct.ZSTD_seqSymbol { i16 0, i8 22, i8 5, i32 4194301 }, %struct.ZSTD_seqSymbol { i16 0, i8 4, i8 5, i32 13 }, %struct.ZSTD_seqSymbol { i16 16, i8 8, i8 4, i32 253 }, %struct.ZSTD_seqSymbol { i16 0, i8 13, i8 5, i32 8189 }, %struct.ZSTD_seqSymbol { i16 0, i8 19, i8 5, i32 524285 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 5, i32 1 }, %struct.ZSTD_seqSymbol { i16 16, i8 6, i8 4, i32 61 }, %struct.ZSTD_seqSymbol { i16 0, i8 10, i8 5, i32 1021 }, %struct.ZSTD_seqSymbol { i16 0, i8 16, i8 5, i32 65533 }, %struct.ZSTD_seqSymbol { i16 0, i8 28, i8 5, i32 268435453 }, %struct.ZSTD_seqSymbol { i16 0, i8 27, i8 5, i32 134217725 }, %struct.ZSTD_seqSymbol { i16 0, i8 26, i8 5, i32 67108861 }, %struct.ZSTD_seqSymbol { i16 0, i8 25, i8 5, i32 33554429 }, %struct.ZSTD_seqSymbol { i16 0, i8 24, i8 5, i32 16777213 }], [88 x i8] zeroinitializer }, align 32
@ML_base = internal constant { [53 x i32], [44 x i8] } { [53 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 37, i32 39, i32 41, i32 43, i32 47, i32 51, i32 59, i32 67, i32 83, i32 99, i32 131, i32 259, i32 515, i32 1027, i32 2051, i32 4099, i32 8195, i32 16387, i32 32771, i32 65539], [44 x i8] zeroinitializer }, align 32
@ML_bits = internal constant { [53 x i32], [44 x i8] } { [53 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], [44 x i8] zeroinitializer }, align 32
@ML_defaultDTable = internal constant { [65 x %struct.ZSTD_seqSymbol], [152 x i8] } { [65 x %struct.ZSTD_seqSymbol] [%struct.ZSTD_seqSymbol { i16 1, i8 1, i8 1, i32 6 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 3 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 4, i32 4 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 5 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 6 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 8 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 9 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 11 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 13 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 16 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 19 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 22 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 25 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 28 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 31 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 34 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 6, i32 37 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 6, i32 41 }, %struct.ZSTD_seqSymbol { i16 0, i8 2, i8 6, i32 47 }, %struct.ZSTD_seqSymbol { i16 0, i8 3, i8 6, i32 59 }, %struct.ZSTD_seqSymbol { i16 0, i8 4, i8 6, i32 83 }, %struct.ZSTD_seqSymbol { i16 0, i8 7, i8 6, i32 131 }, %struct.ZSTD_seqSymbol { i16 0, i8 9, i8 6, i32 515 }, %struct.ZSTD_seqSymbol { i16 16, i8 0, i8 4, i32 4 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 4, i32 5 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 6 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 7 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 9 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 5, i32 10 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 12 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 15 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 18 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 21 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 24 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 27 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 30 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 33 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 6, i32 35 }, %struct.ZSTD_seqSymbol { i16 0, i8 1, i8 6, i32 39 }, %struct.ZSTD_seqSymbol { i16 0, i8 2, i8 6, i32 43 }, %struct.ZSTD_seqSymbol { i16 0, i8 3, i8 6, i32 51 }, %struct.ZSTD_seqSymbol { i16 0, i8 4, i8 6, i32 67 }, %struct.ZSTD_seqSymbol { i16 0, i8 5, i8 6, i32 99 }, %struct.ZSTD_seqSymbol { i16 0, i8 8, i8 6, i32 259 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 4, i32 4 }, %struct.ZSTD_seqSymbol { i16 48, i8 0, i8 4, i32 4 }, %struct.ZSTD_seqSymbol { i16 16, i8 0, i8 4, i32 5 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 7 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 8 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 10 }, %struct.ZSTD_seqSymbol { i16 32, i8 0, i8 5, i32 11 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 14 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 17 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 20 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 23 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 26 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 29 }, %struct.ZSTD_seqSymbol { i16 0, i8 0, i8 6, i32 32 }, %struct.ZSTD_seqSymbol { i16 0, i8 16, i8 6, i32 65539 }, %struct.ZSTD_seqSymbol { i16 0, i8 15, i8 6, i32 32771 }, %struct.ZSTD_seqSymbol { i16 0, i8 14, i8 6, i32 16387 }, %struct.ZSTD_seqSymbol { i16 0, i8 13, i8 6, i32 8195 }, %struct.ZSTD_seqSymbol { i16 0, i8 12, i8 6, i32 4099 }, %struct.ZSTD_seqSymbol { i16 0, i8 11, i8 6, i32 2051 }, %struct.ZSTD_seqSymbol { i16 0, i8 10, i8 6, i32 1027 }], [152 x i8] zeroinitializer }, align 32
@BIT_mask = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535, i32 131071, i32 262143, i32 524287, i32 1048575, i32 2097151, i32 4194303, i32 8388607, i32 16777215, i32 33554431, i32 67108863, i32 134217727, i32 268435455, i32 536870911, i32 1073741823, i32 2147483647], [32 x i8] zeroinitializer }, align 32
@ZSTD_overlapCopy8.dec32table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 2, i32 1, i32 4, i32 4, i32 4, i32 4], [32 x i8] zeroinitializer }, align 32
@ZSTD_overlapCopy8.dec64table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 8, i32 8, i32 7, i32 8, i32 9, i32 10, i32 11], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.8 = private unnamed_addr constant [8 x i8] c"LL_base\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 30, i32 30 }
@___asan_gen_.11 = private unnamed_addr constant [8 x i8] c"LL_bits\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 185, i32 30 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"LL_defaultDTable\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 247, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant [8 x i8] c"OF_base\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 37, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant [8 x i8] c"OF_bits\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 43, i32 30 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"OF_defaultDTable\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 285, i32 29 }
@___asan_gen_.26 = private unnamed_addr constant [8 x i8] c"ML_base\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [50 x i8] c"../lib/zstd/decompress/zstd_decompress_internal.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 49, i32 30 }
@___asan_gen_.29 = private unnamed_addr constant [8 x i8] c"ML_bits\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [49 x i8] c"../lib/zstd/decompress/../common/zstd_internal.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 202, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"ML_defaultDTable\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 308, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant [9 x i8] c"BIT_mask\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [45 x i8] c"../lib/zstd/decompress/../common/bitstream.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 153, i32 23 }
@___asan_gen_.38 = private unnamed_addr constant [11 x i8] c"dec32table\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 691, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"dec64table\00", align 1
@___asan_gen_.42 = private constant [47 x i8] c"../lib/zstd/decompress/zstd_decompress_block.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 692, i32 26 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @LL_base, ptr @LL_bits, ptr @LL_defaultDTable, ptr @OF_base, ptr @OF_bits, ptr @OF_defaultDTable, ptr @ML_base, ptr @ML_bits, ptr @ML_defaultDTable, ptr @BIT_mask, ptr @ZSTD_overlapCopy8.dec32table, ptr @ZSTD_overlapCopy8.dec64table], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LL_base to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LL_bits to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LL_defaultDTable to i32), i32 520, i32 672, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @OF_base to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @OF_bits to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @OF_defaultDTable to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ML_base to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ML_bits to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ML_defaultDTable to i32), i32 520, i32 672, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BIT_mask to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ZSTD_overlapCopy8.dec32table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ZSTD_overlapCopy8.dec64table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_getcBlockSize(ptr nocapture noundef readonly %src, i32 noundef %srcSize, ptr nocapture noundef writeonly %bpPtr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %srcSize)
  %cmp = icmp ult i32 %srcSize, 3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %src, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #9
  %conv.i = zext i16 %2 to i32
  %arrayidx.i = getelementptr i8, ptr %src, i32 2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %conv1.i = zext i8 %4 to i32
  %shl.i = shl nuw nsw i32 %conv1.i, 16
  %add.i = or i32 %shl.i, %conv.i
  %shr = lshr i32 %add.i, 3
  %and = and i32 %conv.i, 1
  %lastBlock = getelementptr inbounds %struct.blockProperties_t, ptr %bpPtr, i32 0, i32 1
  %5 = ptrtoint ptr %lastBlock to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %lastBlock, align 4
  %shr1 = lshr i32 %conv.i, 1
  %and2 = and i32 %shr1, 3
  %6 = ptrtoint ptr %bpPtr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and2, ptr %bpPtr, align 4
  %origSize = getelementptr inbounds %struct.blockProperties_t, ptr %bpPtr, i32 0, i32 2
  %7 = ptrtoint ptr %origSize to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr, ptr %origSize, align 4
  %8 = zext i32 %and2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and2, label %if.end10 [
    i32 1, label %if.end.return_crit_edge
    i32 3, label %if.then9
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %if.end10, %if.then9, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ -72, %entry.return_crit_edge ], [ -20, %if.then9 ], [ %shr, %if.end10 ], [ %and2, %if.end.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decodeLiteralsBlock(ptr noundef %dctx, ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %srcSize)
  %cmp = icmp ult i32 %srcSize, 3
  br i1 %cmp, label %entry.cleanup.cont_crit_edge, label %if.end

entry.cleanup.cont_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.cont

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %src, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 3
  %2 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %and, label %if.end.unreachabledefault [
    i32 3, label %sw.bb
    i32 2, label %if.end.sw.bb5_crit_edge
    i32 0, label %sw.bb110
    i32 1, label %sw.bb161
  ]

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

sw.bb:                                            ; preds = %if.end
  %litEntropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 16
  %3 = ptrtoint ptr %litEntropy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %litEntropy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %sw.bb.cleanup.cont_crit_edge, label %sw.bb.sw.bb5_crit_edge

sw.bb.sw.bb5_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

sw.bb.cleanup.cont_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.cont

sw.bb5:                                           ; preds = %sw.bb.sw.bb5_crit_edge, %if.end.sw.bb5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %srcSize)
  %cmp6 = icmp ult i32 %srcSize, 5
  br i1 %cmp6, label %sw.bb5.cleanup.cont_crit_edge, label %if.end9

sw.bb5.cleanup.cont_crit_edge:                    ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.cont

if.end9:                                          ; preds = %sw.bb5
  %5 = lshr i8 %1, 2
  %6 = and i8 %5, 3
  %and12 = zext i8 %6 to i32
  %7 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %src, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  %10 = zext i32 %and12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %and12, label %sw.default [
    i32 3, label %sw.epilog
    i32 2, label %sw.bb18
  ]

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %shr14 = lshr i32 %9, 4
  %and15 = and i32 %shr14, 1023
  %shr16 = lshr i32 %9, 14
  %and17 = and i32 %shr16, 1023
  br label %if.end31

sw.bb18:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %shr19 = lshr i32 %9, 4
  %and20 = and i32 %shr19, 16383
  %shr21 = lshr i32 %9, 18
  br label %if.end31

sw.epilog:                                        ; preds = %if.end9
  %shr23 = lshr i32 %9, 4
  %and24 = and i32 %shr23, 262143
  %arrayidx26 = getelementptr i8, ptr %src, i32 4
  %11 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %12 to i32
  %add = tail call i32 @llvm.fshl.i32(i32 %conv27, i32 %9, i32 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %and24)
  %cmp28 = icmp ugt i32 %and24, 131072
  br i1 %cmp28, label %sw.epilog.cleanup.cont_crit_edge, label %sw.epilog.if.end31_crit_edge

sw.epilog.if.end31_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

sw.epilog.cleanup.cont_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.cont

if.end31:                                         ; preds = %sw.epilog.if.end31_crit_edge, %sw.bb18, %sw.default
  %singleStream.0322 = phi i32 [ 0, %sw.epilog.if.end31_crit_edge ], [ 0, %sw.bb18 ], [ %lnot.ext, %sw.default ]
  %litCSize.0321 = phi i32 [ %add, %sw.epilog.if.end31_crit_edge ], [ %shr21, %sw.bb18 ], [ %and17, %sw.default ]
  %litSize.0319 = phi i32 [ %and24, %sw.epilog.if.end31_crit_edge ], [ %and20, %sw.bb18 ], [ %and15, %sw.default ]
  %lhSize.0318 = phi i32 [ 5, %sw.epilog.if.end31_crit_edge ], [ 4, %sw.bb18 ], [ 3, %sw.default ]
  %add32 = add nsw i32 %lhSize.0318, %litCSize.0321
  call void @__sanitizer_cov_trace_cmp4(i32 %add32, i32 %srcSize)
  %cmp33 = icmp ugt i32 %add32, %srcSize
  br i1 %cmp33, label %if.end31.cleanup.cont_crit_edge, label %if.end36

if.end31.cleanup.cont_crit_edge:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.cont

if.end36:                                         ; preds = %if.end31
  %ddictIsCold = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 32
  %13 = ptrtoint ptr %ddictIsCold to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ddictIsCold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool37.not = icmp ne i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %litSize.0319)
  %cmp38 = icmp ugt i32 %litSize.0319, 768
  %or.cond = select i1 %tobool37.not, i1 %cmp38, i1 false
  br i1 %or.cond, label %if.then40, label %if.end36.if.end44_crit_edge

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then40:                                        ; preds = %if.end36
  %HUFptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 3
  %15 = ptrtoint ptr %HUFptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %HUFptr, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then40
  %_pos.0329 = phi i32 [ 0, %if.then40 ], [ %add43, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %16, i32 %_pos.0329
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 0, i32 2, i32 1)
  %add43 = add nuw nsw i32 %_pos.0329, 64
  %cmp41 = icmp ult i32 %_pos.0329, 16324
  br i1 %cmp41, label %for.body.for.body_crit_edge, label %for.body.if.end44_crit_edge

for.body.if.end44_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end44:                                         ; preds = %for.body.if.end44_crit_edge, %if.end36.if.end44_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp45 = icmp eq i32 %and, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %singleStream.0322)
  %tobool48.not = icmp eq i32 %singleStream.0322, 0
  br i1 %cmp45, label %if.then47, label %if.else60

if.then47:                                        ; preds = %if.end44
  %litBuffer53 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 53
  %add.ptr55 = getelementptr i8, ptr %src, i32 %lhSize.0318
  %HUFptr56 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 3
  %17 = ptrtoint ptr %HUFptr56 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %HUFptr56, align 4
  %bmi257 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 28
  %19 = ptrtoint ptr %bmi257 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bmi257, align 4
  br i1 %tobool48.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %call52 = tail call i32 @HUF_decompress1X_usingDTable_bmi2(ptr noundef %litBuffer53, i32 noundef %litSize.0319, ptr noundef %add.ptr55, i32 noundef %litCSize.0321, ptr noundef %18, i32 noundef %20) #9
  br label %if.end82

if.else:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %call58 = tail call i32 @HUF_decompress4X_usingDTable_bmi2(ptr noundef %litBuffer53, i32 noundef %litSize.0319, ptr noundef %add.ptr55, i32 noundef %litCSize.0321, ptr noundef %18, i32 noundef %20) #9
  br label %if.end82

if.else60:                                        ; preds = %if.end44
  %hufTable72 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 3
  %litBuffer74 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 53
  %add.ptr76 = getelementptr i8, ptr %src, i32 %lhSize.0318
  %workspace77 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 5
  %bmi279 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 28
  %21 = ptrtoint ptr %bmi279 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bmi279, align 4
  br i1 %tobool48.not, label %if.else70, label %if.then62

if.then62:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #11
  %call69 = tail call i32 @HUF_decompress1X1_DCtx_wksp_bmi2(ptr noundef %hufTable72, ptr noundef %litBuffer74, i32 noundef %litSize.0319, ptr noundef %add.ptr76, i32 noundef %litCSize.0321, ptr noundef %workspace77, i32 noundef 2560, i32 noundef %22) #9
  br label %if.end82

if.else70:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #11
  %call80 = tail call i32 @HUF_decompress4X_hufOnly_wksp_bmi2(ptr noundef %hufTable72, ptr noundef %litBuffer74, i32 noundef %litSize.0319, ptr noundef %add.ptr76, i32 noundef %litCSize.0321, ptr noundef %workspace77, i32 noundef 2560, i32 noundef %22) #9
  br label %if.end82

if.end82:                                         ; preds = %if.else70, %if.then62, %if.else, %if.then49
  %hufSuccess.0 = phi i32 [ %call52, %if.then49 ], [ %call58, %if.else ], [ %call69, %if.then62 ], [ %call80, %if.else70 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %hufSuccess.0)
  %cmp.i = icmp ult i32 %hufSuccess.0, -119
  br i1 %cmp.i, label %if.end86, label %if.end82.cleanup.cont_crit_edge

if.end82.cleanup.cont_crit_edge:                  ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.cont

if.end86:                                         ; preds = %if.end82
  %litBuffer87 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 53
  %litPtr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 23
  %23 = ptrtoint ptr %litPtr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %litBuffer87, ptr %litPtr, align 8
  %litSize89 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 25
  %24 = ptrtoint ptr %litSize89 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %litSize.0319, ptr %litSize89, align 8
  %litEntropy90 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 16
  %25 = ptrtoint ptr %litEntropy90 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %litEntropy90, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp91 = icmp eq i32 %and, 2
  br i1 %cmp91, label %if.then93, label %if.end86.if.end98_crit_edge

if.end86.if.end98_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then93:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  %hufTable95 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 3
  %HUFptr97 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 3
  %26 = ptrtoint ptr %HUFptr97 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %hufTable95, ptr %HUFptr97, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then93, %if.end86.if.end98_crit_edge
  %add.ptr102 = getelementptr i8, ptr %litBuffer87, i32 %litSize.0319
  %27 = call ptr @memset(ptr %add.ptr102, i32 0, i32 32)
  br label %cleanup.cont

sw.bb110:                                         ; preds = %if.end
  %28 = lshr i32 %conv, 2
  %and117 = and i32 %28, 3
  %29 = zext i32 %and117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %and117, label %sw.default119 [
    i32 3, label %sw.bb127
    i32 1, label %sw.bb123
  ]

sw.default119:                                    ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #11
  %30 = lshr i32 %conv, 3
  br label %sw.epilog130

sw.bb123:                                         ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %src, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #9
  %34 = lshr i16 %33, 4
  %35 = zext i16 %34 to i32
  br label %sw.epilog130

sw.bb127:                                         ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %src, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #9
  %conv.i307 = zext i16 %38 to i32
  %arrayidx.i = getelementptr i8, ptr %src, i32 2
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i, align 1
  %conv1.i = zext i8 %40 to i32
  %shl.i = shl nuw nsw i32 %conv1.i, 16
  %add.i = or i32 %shl.i, %conv.i307
  %shr129 = lshr i32 %add.i, 4
  br label %sw.epilog130

sw.epilog130:                                     ; preds = %sw.bb127, %sw.bb123, %sw.default119
  %litSize111.0 = phi i32 [ %30, %sw.default119 ], [ %35, %sw.bb123 ], [ %shr129, %sw.bb127 ]
  %lhSize112.0 = phi i32 [ 1, %sw.default119 ], [ 2, %sw.bb123 ], [ 3, %sw.bb127 ]
  %add131 = add nuw nsw i32 %lhSize112.0, %litSize111.0
  %add132 = add nuw nsw i32 %add131, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %add132, i32 %srcSize)
  %cmp133 = icmp ugt i32 %add132, %srcSize
  br i1 %cmp133, label %if.then135, label %if.end153

if.then135:                                       ; preds = %sw.epilog130
  call void @__sanitizer_cov_trace_cmp4(i32 %add131, i32 %srcSize)
  %cmp137 = icmp ugt i32 %add131, %srcSize
  br i1 %cmp137, label %if.then135.cleanup.cont_crit_edge, label %if.end140

if.then135.cleanup.cont_crit_edge:                ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.cont

if.end140:                                        ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #11
  %litBuffer141 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 53
  %add.ptr143 = getelementptr i8, ptr %src, i32 %lhSize112.0
  %41 = call ptr @memcpy(ptr %litBuffer141, ptr %add.ptr143, i32 %litSize111.0)
  %litPtr146 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 23
  %42 = ptrtoint ptr %litPtr146 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %litBuffer141, ptr %litPtr146, align 8
  %litSize147 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 25
  %43 = ptrtoint ptr %litSize147 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %litSize111.0, ptr %litSize147, align 8
  %add.ptr151 = getelementptr i8, ptr %litBuffer141, i32 %litSize111.0
  %44 = call ptr @memset(ptr %add.ptr151, i32 0, i32 32)
  br label %cleanup.cont

if.end153:                                        ; preds = %sw.epilog130
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr154 = getelementptr i8, ptr %src, i32 %lhSize112.0
  %litPtr155 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 23
  %45 = ptrtoint ptr %litPtr155 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr154, ptr %litPtr155, align 8
  %litSize156 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 25
  %46 = ptrtoint ptr %litSize156 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %litSize111.0, ptr %litSize156, align 8
  br label %cleanup.cont

sw.bb161:                                         ; preds = %if.end
  %47 = lshr i32 %conv, 2
  %and166 = and i32 %47, 3
  %48 = zext i32 %and166 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %and166, label %sw.default170 [
    i32 3, label %sw.bb178
    i32 1, label %sw.bb174
  ]

sw.default170:                                    ; preds = %sw.bb161
  call void @__sanitizer_cov_trace_pc() #11
  %49 = lshr i32 %conv, 3
  br label %if.end189

sw.bb174:                                         ; preds = %sw.bb161
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %src, align 1
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #9
  %53 = lshr i16 %52, 4
  %54 = zext i16 %53 to i32
  br label %if.end189

sw.bb178:                                         ; preds = %sw.bb161
  %55 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %src, align 1
  %57 = tail call i16 @llvm.bswap.i16(i16 %56) #9
  %conv.i308 = zext i16 %57 to i32
  %arrayidx.i309 = getelementptr i8, ptr %src, i32 2
  %58 = ptrtoint ptr %arrayidx.i309 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i309, align 1
  %conv1.i310 = zext i8 %59 to i32
  %shl.i311 = shl nuw nsw i32 %conv1.i310, 16
  %add.i312 = or i32 %shl.i311, %conv.i308
  %shr180 = lshr i32 %add.i312, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %srcSize)
  %cmp181 = icmp ult i32 %srcSize, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097167, i32 %add.i312)
  %cmp186 = icmp ugt i32 %add.i312, 2097167
  %or.cond328 = select i1 %cmp181, i1 true, i1 %cmp186
  br i1 %or.cond328, label %sw.bb178.cleanup.cont_crit_edge, label %sw.bb178.if.end189_crit_edge

sw.bb178.if.end189_crit_edge:                     ; preds = %sw.bb178
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

sw.bb178.cleanup.cont_crit_edge:                  ; preds = %sw.bb178
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.cont

if.end189:                                        ; preds = %sw.bb178.if.end189_crit_edge, %sw.bb174, %sw.default170
  %lhSize168.0327 = phi i32 [ 2, %sw.bb174 ], [ 1, %sw.default170 ], [ 3, %sw.bb178.if.end189_crit_edge ]
  %litSize167.0326 = phi i32 [ %54, %sw.bb174 ], [ %49, %sw.default170 ], [ %shr180, %sw.bb178.if.end189_crit_edge ]
  %litBuffer190 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 53
  %arrayidx192 = getelementptr i8, ptr %src, i32 %lhSize168.0327
  %60 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx192, align 1
  %add194 = add nuw nsw i32 %litSize167.0326, 32
  %62 = zext i8 %61 to i32
  %63 = call ptr @memset(ptr %litBuffer190, i32 %62, i32 %add194)
  %litPtr197 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 23
  %64 = ptrtoint ptr %litPtr197 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %litBuffer190, ptr %litPtr197, align 8
  %litSize198 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 25
  %65 = ptrtoint ptr %litSize198 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %litSize167.0326, ptr %litSize198, align 8
  %add199 = add nuw nsw i32 %lhSize168.0327, 1
  br label %cleanup.cont

if.end.unreachabledefault:                        ; preds = %if.end
  unreachable

cleanup.cont:                                     ; preds = %if.end189, %sw.bb178.cleanup.cont_crit_edge, %if.end153, %if.end140, %if.then135.cleanup.cont_crit_edge, %if.end98, %if.end82.cleanup.cont_crit_edge, %if.end31.cleanup.cont_crit_edge, %sw.epilog.cleanup.cont_crit_edge, %sw.bb5.cleanup.cont_crit_edge, %sw.bb.cleanup.cont_crit_edge, %entry.cleanup.cont_crit_edge
  %retval.4 = phi i32 [ -20, %entry.cleanup.cont_crit_edge ], [ -30, %sw.bb.cleanup.cont_crit_edge ], [ -20, %sw.bb5.cleanup.cont_crit_edge ], [ %add32, %if.end98 ], [ -20, %sw.epilog.cleanup.cont_crit_edge ], [ -20, %if.end31.cleanup.cont_crit_edge ], [ -20, %if.end82.cleanup.cont_crit_edge ], [ %add131, %if.end140 ], [ %add131, %if.end153 ], [ -20, %if.then135.cleanup.cont_crit_edge ], [ %add199, %if.end189 ], [ -20, %sw.bb178.cleanup.cont_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_decompress1X_usingDTable_bmi2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_decompress4X_usingDTable_bmi2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_decompress1X1_DCtx_wksp_bmi2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_decompress4X_hufOnly_wksp_bmi2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ZSTD_buildFSETable(ptr nocapture noundef %dt, ptr nocapture noundef readonly %normalizedCounter, i32 noundef %maxSymbolValue, ptr nocapture noundef readonly %baseValue, ptr nocapture noundef readonly %nbAdditionalBits, i32 noundef %tableLog, ptr nocapture noundef %wksp, i32 %wkspSize, i32 %bmi2) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr %struct.ZSTD_seqSymbol, ptr %dt, i32 1
  %shl.i.i = shl nuw i32 1, %tableLog
  %add.ptr2.i.i = getelementptr i16, ptr %wksp, i32 53
  %sub.i.i = add i32 %shl.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %maxSymbolValue)
  %cmp2.not.i.i = icmp eq i32 %maxSymbolValue, -1
  br i1 %cmp2.not.i.i, label %if.then26.thread.i.i, label %for.body.lr.ph.i.i

if.then26.thread.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %dt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %dt, align 4
  %DTableH.sroa.6.0..sroa_idx34.i.i = getelementptr inbounds i8, ptr %dt, i32 4
  %1 = ptrtoint ptr %DTableH.sroa.6.0..sroa_idx34.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %tableLog, ptr %DTableH.sroa.6.0..sroa_idx34.i.i, align 4
  %shr36.i.i = lshr i32 %shl.i.i, 1
  %shr2837.i.i = lshr i32 %shl.i.i, 3
  %add2938.i.i = add nuw nsw i32 %shr2837.i.i, 3
  %add3039.i.i = add nuw i32 %add2938.i.i, %shr36.i.i
  br label %for.cond55.preheader.i.i

for.body.lr.ph.i.i:                               ; preds = %entry
  %sub4.i.i = add i32 %tableLog, -1
  %sext.i.i = shl i32 65536, %sub4.i.i
  %conv15.i.i = ashr exact i32 %sext.i.i, 16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %s.05.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %DTableH.sroa.0.04.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %DTableH.sroa.0.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %highThreshold.03.i.i = phi i32 [ %sub.i.i, %for.body.lr.ph.i.i ], [ %highThreshold.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i16, ptr %normalizedCounter, i32 %s.05.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp8.i.i = icmp eq i16 %3, -1
  br i1 %cmp8.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i.i = add i32 %highThreshold.03.i.i, -1
  %arrayidx10.i.i = getelementptr %struct.ZSTD_seqSymbol, ptr %add.ptr.i.i, i32 %highThreshold.03.i.i
  %baseValue11.i.i = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %arrayidx10.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %baseValue11.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %s.05.i.i, ptr %baseValue11.i.i, align 4
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv7.i.i = sext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15.i.i, i32 %conv7.i.i)
  %cmp16.not.i.i = icmp sgt i32 %conv15.i.i, %conv7.i.i
  %spec.select.i.i = select i1 %cmp16.not.i.i, i32 %DTableH.sroa.0.04.i.i, i32 0
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %.sink.i.i = phi i16 [ 1, %if.then.i.i ], [ %3, %if.else.i.i ]
  %highThreshold.1.i.i = phi i32 [ %dec.i.i, %if.then.i.i ], [ %highThreshold.03.i.i, %if.else.i.i ]
  %DTableH.sroa.0.2.i.i = phi i32 [ %DTableH.sroa.0.04.i.i, %if.then.i.i ], [ %spec.select.i.i, %if.else.i.i ]
  %5 = getelementptr i16, ptr %wksp, i32 %s.05.i.i
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %.sink.i.i, ptr %5, align 2
  %inc.i.i = add nuw i32 %s.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %s.05.i.i, %maxSymbolValue
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %7 = ptrtoint ptr %dt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %DTableH.sroa.0.2.i.i, ptr %dt, align 4
  %DTableH.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %dt, i32 4
  %8 = ptrtoint ptr %DTableH.sroa.6.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %tableLog, ptr %DTableH.sroa.6.0..sroa_idx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %highThreshold.1.i.i, i32 %sub.i.i)
  %cmp24.i.i = icmp eq i32 %highThreshold.1.i.i, %sub.i.i
  %shr28.i.i = lshr i32 %shl.i.i, 3
  br i1 %cmp24.i.i, label %for.end.i.i.for.body36.i.i_crit_edge, label %for.body91.lr.ph.i.i

for.end.i.i.for.body36.i.i_crit_edge:             ; preds = %for.end.i.i
  br label %for.body36.i.i

for.cond55.preheader.i.loopexit.i:                ; preds = %for.end48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add29.i.i = add nuw nsw i32 %shr28.i.i, 3
  %shr.i.i = lshr i32 %shl.i.i, 1
  %add30.i.i = add nuw i32 %add29.i.i, %shr.i.i
  br label %for.cond55.preheader.i.i

for.cond55.preheader.i.i:                         ; preds = %for.cond55.preheader.i.loopexit.i, %if.then26.thread.i.i
  %add3040.i.i = phi i32 [ %add3039.i.i, %if.then26.thread.i.i ], [ %add30.i.i, %for.cond55.preheader.i.loopexit.i ]
  %mul72.i.i = shl i32 %add3040.i.i, 1
  br label %for.cond59.preheader.i.i

for.body36.i.i:                                   ; preds = %for.end48.i.i.for.body36.i.i_crit_edge, %for.end.i.i.for.body36.i.i_crit_edge
  %s32.022.i.i = phi i32 [ %inc51.i.i, %for.end48.i.i.for.body36.i.i_crit_edge ], [ 0, %for.end.i.i.for.body36.i.i_crit_edge ]
  %sv.020.i.i = phi i64 [ %add52.i.i, %for.end48.i.i.for.body36.i.i_crit_edge ], [ 0, %for.end.i.i.for.body36.i.i_crit_edge ]
  %pos.019.i.i = phi i32 [ %add49.i.i, %for.end48.i.i.for.body36.i.i_crit_edge ], [ 0, %for.end.i.i.for.body36.i.i_crit_edge ]
  %arrayidx37.i.i = getelementptr i16, ptr %normalizedCounter, i32 %s32.022.i.i
  %9 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx37.i.i, align 2
  %conv38.i.i = sext i16 %10 to i32
  %add.ptr39.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 %pos.019.i.i
  %11 = ptrtoint ptr %add.ptr39.i.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %sv.020.i.i, ptr %add.ptr39.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %10)
  %cmp4116.i.i = icmp sgt i16 %10, 8
  br i1 %cmp4116.i.i, label %for.body36.i.i.for.body43.i.i_crit_edge, label %for.body36.i.i.for.end48.i.i_crit_edge

for.body36.i.i.for.end48.i.i_crit_edge:           ; preds = %for.body36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end48.i.i

for.body36.i.i.for.body43.i.i_crit_edge:          ; preds = %for.body36.i.i
  br label %for.body43.i.i

for.body43.i.i:                                   ; preds = %for.body43.i.i.for.body43.i.i_crit_edge, %for.body36.i.i.for.body43.i.i_crit_edge
  %i.017.i.i = phi i32 [ %add47.i.i, %for.body43.i.i.for.body43.i.i_crit_edge ], [ 8, %for.body36.i.i.for.body43.i.i_crit_edge ]
  %add.ptr45.i.i = getelementptr i8, ptr %add.ptr39.i.i, i32 %i.017.i.i
  %12 = ptrtoint ptr %add.ptr45.i.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %sv.020.i.i, ptr %add.ptr45.i.i, align 1
  %add47.i.i = add nuw nsw i32 %i.017.i.i, 8
  %cmp41.i.i = icmp slt i32 %add47.i.i, %conv38.i.i
  br i1 %cmp41.i.i, label %for.body43.i.i.for.body43.i.i_crit_edge, label %for.body43.i.i.for.end48.i.i_crit_edge

for.body43.i.i.for.end48.i.i_crit_edge:           ; preds = %for.body43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end48.i.i

for.body43.i.i.for.body43.i.i_crit_edge:          ; preds = %for.body43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body43.i.i

for.end48.i.i:                                    ; preds = %for.body43.i.i.for.end48.i.i_crit_edge, %for.body36.i.i.for.end48.i.i_crit_edge
  %add49.i.i = add i32 %pos.019.i.i, %conv38.i.i
  %inc51.i.i = add nuw i32 %s32.022.i.i, 1
  %add52.i.i = add i64 %sv.020.i.i, 72340172838076673
  %exitcond30.not.i.i = icmp eq i32 %s32.022.i.i, %maxSymbolValue
  br i1 %exitcond30.not.i.i, label %for.cond55.preheader.i.loopexit.i, label %for.end48.i.i.for.body36.i.i_crit_edge

for.end48.i.i.for.body36.i.i_crit_edge:           ; preds = %for.end48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body36.i.i

for.cond59.preheader.i.i:                         ; preds = %for.cond59.preheader.i.i.for.cond59.preheader.i.i_crit_edge, %for.cond55.preheader.i.i
  %s54.025.i.i = phi i32 [ 0, %for.cond55.preheader.i.i ], [ %add76.i.i, %for.cond59.preheader.i.i.for.cond59.preheader.i.i_crit_edge ]
  %position.024.i.i = phi i32 [ 0, %for.cond55.preheader.i.i ], [ %and74.i.i, %for.cond59.preheader.i.i.for.cond59.preheader.i.i_crit_edge ]
  %and.i.i = and i32 %position.024.i.i, %sub.i.i
  %arrayidx65.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 %s54.025.i.i
  %13 = ptrtoint ptr %arrayidx65.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx65.i.i, align 1
  %conv66.i.i = zext i8 %14 to i32
  %arrayidx67.i.i = getelementptr %struct.ZSTD_seqSymbol, ptr %add.ptr.i.i, i32 %and.i.i
  %baseValue68.i.i = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %arrayidx67.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %baseValue68.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv66.i.i, ptr %baseValue68.i.i, align 4
  %add63.1.i.i = add i32 %position.024.i.i, %add3040.i.i
  %and.1.i.i = and i32 %add63.1.i.i, %sub.i.i
  %add64.1.i.i = or i32 %s54.025.i.i, 1
  %arrayidx65.1.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 %add64.1.i.i
  %16 = ptrtoint ptr %arrayidx65.1.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx65.1.i.i, align 1
  %conv66.1.i.i = zext i8 %17 to i32
  %arrayidx67.1.i.i = getelementptr %struct.ZSTD_seqSymbol, ptr %add.ptr.i.i, i32 %and.1.i.i
  %baseValue68.1.i.i = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %arrayidx67.1.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %baseValue68.1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv66.1.i.i, ptr %baseValue68.1.i.i, align 4
  %add73.i.i = add i32 %position.024.i.i, %mul72.i.i
  %and74.i.i = and i32 %add73.i.i, %sub.i.i
  %add76.i.i = add i32 %s54.025.i.i, 2
  %cmp56.i.i = icmp ult i32 %add76.i.i, %shl.i.i
  br i1 %cmp56.i.i, label %for.cond59.preheader.i.i.for.cond59.preheader.i.i_crit_edge, label %for.cond59.preheader.i.i.if.end114.i.i_crit_edge

for.cond59.preheader.i.i.if.end114.i.i_crit_edge: ; preds = %for.cond59.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114.i.i

for.cond59.preheader.i.i.for.cond59.preheader.i.i_crit_edge: ; preds = %for.cond59.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond59.preheader.i.i

for.body91.lr.ph.i.i:                             ; preds = %for.end.i.i
  %shr82.i.i = lshr i32 %shl.i.i, 1
  %add84.i.i = add nuw nsw i32 %shr28.i.i, 3
  %add85.i.i = add nuw i32 %add84.i.i, %shr82.i.i
  br label %for.body91.i.i

for.body91.i.i:                                   ; preds = %for.end110.i.i.for.body91.i.i_crit_edge, %for.body91.lr.ph.i.i
  %position87.015.i.i = phi i32 [ 0, %for.body91.lr.ph.i.i ], [ %position87.1.lcssa.i.i, %for.end110.i.i.for.body91.i.i_crit_edge ]
  %s86.013.i.i = phi i32 [ 0, %for.body91.lr.ph.i.i ], [ %inc112.i.i, %for.end110.i.i.for.body91.i.i_crit_edge ]
  %arrayidx94.i.i = getelementptr i16, ptr %normalizedCounter, i32 %s86.013.i.i
  %19 = ptrtoint ptr %arrayidx94.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx94.i.i, align 2
  %conv95.i.i = sext i16 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp978.i.i = icmp sgt i16 %20, 0
  br i1 %cmp978.i.i, label %for.body91.i.i.for.body99.i.i_crit_edge, label %for.body91.i.i.for.end110.i.i_crit_edge

for.body91.i.i.for.end110.i.i_crit_edge:          ; preds = %for.body91.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end110.i.i

for.body91.i.i.for.body99.i.i_crit_edge:          ; preds = %for.body91.i.i
  br label %for.body99.i.i

for.body99.i.i:                                   ; preds = %for.inc108.i.i.for.body99.i.i_crit_edge, %for.body91.i.i.for.body99.i.i_crit_edge
  %i92.010.i.i = phi i32 [ %inc109.i.i, %for.inc108.i.i.for.body99.i.i_crit_edge ], [ 0, %for.body91.i.i.for.body99.i.i_crit_edge ]
  %position87.19.i.i = phi i32 [ %position87.2.i.i, %for.inc108.i.i.for.body99.i.i_crit_edge ], [ %position87.015.i.i, %for.body91.i.i.for.body99.i.i_crit_edge ]
  %arrayidx100.i.i = getelementptr %struct.ZSTD_seqSymbol, ptr %add.ptr.i.i, i32 %position87.19.i.i
  %baseValue101.i.i = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %arrayidx100.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %baseValue101.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %s86.013.i.i, ptr %baseValue101.i.i, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %for.body99.i.i
  %position87.1.pn.i.i = phi i32 [ %position87.19.i.i, %for.body99.i.i ], [ %position87.2.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %add102.pn.i.i = add i32 %add85.i.i, %position87.1.pn.i.i
  %position87.2.i.i = and i32 %add102.pn.i.i, %sub.i.i
  %cmp104.i.i = icmp ugt i32 %position87.2.i.i, %highThreshold.1.i.i
  br i1 %cmp104.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge, label %for.inc108.i.i

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i

for.inc108.i.i:                                   ; preds = %while.cond.i.i
  %inc109.i.i = add nuw nsw i32 %i92.010.i.i, 1
  %exitcond28.not.i.i = icmp eq i32 %inc109.i.i, %conv95.i.i
  br i1 %exitcond28.not.i.i, label %for.inc108.i.i.for.end110.i.i_crit_edge, label %for.inc108.i.i.for.body99.i.i_crit_edge

for.inc108.i.i.for.body99.i.i_crit_edge:          ; preds = %for.inc108.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body99.i.i

for.inc108.i.i.for.end110.i.i_crit_edge:          ; preds = %for.inc108.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end110.i.i

for.end110.i.i:                                   ; preds = %for.inc108.i.i.for.end110.i.i_crit_edge, %for.body91.i.i.for.end110.i.i_crit_edge
  %position87.1.lcssa.i.i = phi i32 [ %position87.015.i.i, %for.body91.i.i.for.end110.i.i_crit_edge ], [ %position87.2.i.i, %for.inc108.i.i.for.end110.i.i_crit_edge ]
  %inc112.i.i = add nuw i32 %s86.013.i.i, 1
  %exitcond29.not.i.i = icmp eq i32 %s86.013.i.i, %maxSymbolValue
  br i1 %exitcond29.not.i.i, label %for.end110.i.i.if.end114.i.i_crit_edge, label %for.end110.i.i.for.body91.i.i_crit_edge

for.end110.i.i.for.body91.i.i_crit_edge:          ; preds = %for.end110.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body91.i.i

for.end110.i.i.if.end114.i.i_crit_edge:           ; preds = %for.end110.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114.i.i

if.end114.i.i:                                    ; preds = %for.end110.i.i.if.end114.i.i_crit_edge, %for.cond59.preheader.i.i.if.end114.i.i_crit_edge
  %xor.i.neg.i.i = add i32 %tableLog, 1
  br label %for.body119.i.i

for.body119.i.i:                                  ; preds = %for.body119.i.i.for.body119.i.i_crit_edge, %if.end114.i.i
  %u115.026.i.i = phi i32 [ 0, %if.end114.i.i ], [ %inc144.i.i, %for.body119.i.i.for.body119.i.i_crit_edge ]
  %arrayidx120.i.i = getelementptr %struct.ZSTD_seqSymbol, ptr %add.ptr.i.i, i32 %u115.026.i.i
  %baseValue121.i.i = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %arrayidx120.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %baseValue121.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %baseValue121.i.i, align 4
  %arrayidx122.i.i = getelementptr i16, ptr %wksp, i32 %23
  %24 = ptrtoint ptr %arrayidx122.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx122.i.i, align 2
  %inc123.i.i = add i16 %25, 1
  store i16 %inc123.i.i, ptr %arrayidx122.i.i, align 2
  %conv124.i.i = zext i16 %25 to i32
  %26 = tail call i32 @llvm.ctlz.i32(i32 %conv124.i.i, i1 false) #9, !range !33
  %27 = xor i32 %26, -32
  %sub125.i.i = add i32 %xor.i.neg.i.i, %27
  %conv126.i.i = trunc i32 %sub125.i.i to i8
  %nbBits.i.i = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %arrayidx120.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %nbBits.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv126.i.i, ptr %nbBits.i.i, align 1
  %conv130.i.i = and i32 %sub125.i.i, 255
  %shl131.i.i = shl i32 %conv124.i.i, %conv130.i.i
  %sub132.i.i = sub i32 %shl131.i.i, %shl.i.i
  %conv133.i.i = trunc i32 %sub132.i.i to i16
  %29 = ptrtoint ptr %arrayidx120.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv133.i.i, ptr %arrayidx120.i.i, align 4
  %arrayidx136.i.i = getelementptr i32, ptr %nbAdditionalBits, i32 %23
  %30 = ptrtoint ptr %arrayidx136.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx136.i.i, align 4
  %conv137.i.i = trunc i32 %31 to i8
  %nbAdditionalBits139.i.i = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %arrayidx120.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %nbAdditionalBits139.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv137.i.i, ptr %nbAdditionalBits139.i.i, align 2
  %arrayidx140.i.i = getelementptr i32, ptr %baseValue, i32 %23
  %33 = ptrtoint ptr %arrayidx140.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx140.i.i, align 4
  %35 = ptrtoint ptr %baseValue121.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %baseValue121.i.i, align 4
  %inc144.i.i = add nuw i32 %u115.026.i.i, 1
  %exitcond31.not.i.i = icmp eq i32 %inc144.i.i, %shl.i.i
  br i1 %exitcond31.not.i.i, label %ZSTD_buildFSETable_body_default.exit, label %for.body119.i.i.for.body119.i.i_crit_edge

for.body119.i.i.for.body119.i.i_crit_edge:        ; preds = %for.body119.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body119.i.i

ZSTD_buildFSETable_body_default.exit:             ; preds = %for.body119.i.i
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decodeSeqHeaders(ptr noundef %dctx, ptr nocapture noundef writeonly %nbSeqPtr, ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %src, i32 %srcSize
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srcSize)
  %cmp = icmp eq i32 %srcSize, 0
  br i1 %cmp, label %entry.cleanup94_crit_edge, label %if.end

entry.cleanup94_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup94

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr i8, ptr %src, i32 1
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %src, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then1, label %if.end6

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %nbSeqPtr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %nbSeqPtr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %srcSize)
  %cmp2.not = icmp eq i32 %srcSize, 1
  %. = select i1 %cmp2.not, i32 1, i32 -72
  br label %cleanup94

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp7 = icmp slt i8 %1, 0
  br i1 %cmp7, label %if.then9, label %if.end6.if.end28_crit_edge

if.end6.if.end28_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp10 = icmp eq i8 %1, -1
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then9
  %add.ptr13 = getelementptr i8, ptr %src, i32 3
  %cmp14 = icmp ugt ptr %add.ptr13, %add.ptr
  br i1 %cmp14, label %if.then12.cleanup94_crit_edge, label %if.end17

if.then12.cleanup94_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup94

if.end17:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %incdec.ptr, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #9
  %conv18 = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv18, 32512
  br label %if.end28

if.else:                                          ; preds = %if.then9
  %cmp20.not = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp20.not, label %if.end23, label %if.else.cleanup94_crit_edge

if.else.cleanup94_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup94

if.end23:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub = shl nuw nsw i32 %conv, 8
  %shl = add nsw i32 %sub, -32768
  %incdec.ptr24 = getelementptr i8, ptr %src, i32 2
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr, align 1
  %conv25 = zext i8 %7 to i32
  %add26 = or i32 %shl, %conv25
  br label %if.end28

if.end28:                                         ; preds = %if.end23, %if.end17, %if.end6.if.end28_crit_edge
  %ip.0 = phi ptr [ %add.ptr13, %if.end17 ], [ %incdec.ptr24, %if.end23 ], [ %incdec.ptr, %if.end6.if.end28_crit_edge ]
  %nbSeq.0 = phi i32 [ %add, %if.end17 ], [ %add26, %if.end23 ], [ %conv, %if.end6.if.end28_crit_edge ]
  %8 = ptrtoint ptr %nbSeqPtr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %nbSeq.0, ptr %nbSeqPtr, align 4
  %add.ptr29 = getelementptr i8, ptr %ip.0, i32 1
  %cmp30 = icmp ugt ptr %add.ptr29, %add.ptr
  br i1 %cmp30, label %if.end28.cleanup94_crit_edge, label %if.end33

if.end28.cleanup94_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup94

if.end33:                                         ; preds = %if.end28
  %9 = ptrtoint ptr %ip.0 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ip.0, align 1
  %conv34 = zext i8 %10 to i32
  %11 = lshr i32 %conv34, 6
  %12 = lshr i32 %conv34, 2
  %and39 = and i32 %12, 3
  %entropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr29 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %fseEntropy = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 17
  %13 = ptrtoint ptr %fseEntropy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fseEntropy, align 4
  %ddictIsCold = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 32
  %15 = ptrtoint ptr %ddictIsCold to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ddictIsCold, align 4
  %workspace = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 5
  %bmi2 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 28
  %17 = ptrtoint ptr %bmi2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bmi2, align 4
  %call42 = tail call fastcc i32 @ZSTD_buildSeqTable(ptr noundef %entropy, ptr noundef %dctx, i32 noundef %11, i32 noundef 35, i32 noundef 9, ptr noundef %add.ptr29, i32 noundef %sub.ptr.sub, ptr noundef nonnull @LL_base, ptr noundef nonnull @LL_bits, ptr noundef nonnull @LL_defaultDTable, i32 noundef %14, i32 noundef %16, i32 noundef %nbSeq.0, ptr noundef %workspace, i32 noundef %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call42)
  %cmp.i = icmp ult i32 %call42, -119
  br i1 %cmp.i, label %cleanup.cont, label %if.end33.cleanup94_crit_edge

if.end33.cleanup94_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup94

cleanup.cont:                                     ; preds = %if.end33
  %add.ptr47 = getelementptr i8, ptr %add.ptr29, i32 %call42
  %19 = lshr i32 %conv34, 4
  %and = and i32 %19, 3
  %OFTable = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 1
  %OFTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 2
  %sub.ptr.rhs.cast51 = ptrtoint ptr %add.ptr47 to i32
  %sub.ptr.sub52 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast51
  %20 = ptrtoint ptr %fseEntropy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fseEntropy, align 4
  %22 = ptrtoint ptr %ddictIsCold to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ddictIsCold, align 4
  %24 = ptrtoint ptr %bmi2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bmi2, align 4
  %call58 = tail call fastcc i32 @ZSTD_buildSeqTable(ptr noundef %OFTable, ptr noundef %OFTptr, i32 noundef %and, i32 noundef 31, i32 noundef 8, ptr noundef %add.ptr47, i32 noundef %sub.ptr.sub52, ptr noundef nonnull @OF_base, ptr noundef nonnull @OF_bits, ptr noundef nonnull @OF_defaultDTable, i32 noundef %21, i32 noundef %23, i32 noundef %nbSeq.0, ptr noundef %workspace, i32 noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call58)
  %cmp.i161 = icmp ult i32 %call58, -119
  br i1 %cmp.i161, label %cleanup.cont66, label %cleanup.cont.cleanup94_crit_edge

cleanup.cont.cleanup94_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup94

cleanup.cont66:                                   ; preds = %cleanup.cont
  %add.ptr63 = getelementptr i8, ptr %add.ptr47, i32 %call58
  %MLTable = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 4, i32 2
  %MLTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 1
  %sub.ptr.rhs.cast70 = ptrtoint ptr %add.ptr63 to i32
  %sub.ptr.sub71 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast70
  %26 = ptrtoint ptr %fseEntropy to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fseEntropy, align 4
  %28 = ptrtoint ptr %ddictIsCold to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ddictIsCold, align 4
  %30 = ptrtoint ptr %bmi2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bmi2, align 4
  %call77 = tail call fastcc i32 @ZSTD_buildSeqTable(ptr noundef %MLTable, ptr noundef %MLTptr, i32 noundef %and39, i32 noundef 52, i32 noundef 9, ptr noundef %add.ptr63, i32 noundef %sub.ptr.sub71, ptr noundef nonnull @ML_base, ptr noundef nonnull @ML_bits, ptr noundef nonnull @ML_defaultDTable, i32 noundef %27, i32 noundef %29, i32 noundef %nbSeq.0, ptr noundef %workspace, i32 noundef %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call77)
  %cmp.i163 = icmp ult i32 %call77, -119
  br i1 %cmp.i163, label %cleanup.cont90, label %cleanup.cont66.cleanup94_crit_edge

cleanup.cont66.cleanup94_crit_edge:               ; preds = %cleanup.cont66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup94

cleanup.cont90:                                   ; preds = %cleanup.cont66
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr82 = getelementptr i8, ptr %add.ptr63, i32 %call77
  %sub.ptr.lhs.cast91 = ptrtoint ptr %add.ptr82 to i32
  %sub.ptr.rhs.cast92 = ptrtoint ptr %src to i32
  %sub.ptr.sub93 = sub i32 %sub.ptr.lhs.cast91, %sub.ptr.rhs.cast92
  br label %cleanup94

cleanup94:                                        ; preds = %cleanup.cont90, %cleanup.cont66.cleanup94_crit_edge, %cleanup.cont.cleanup94_crit_edge, %if.end33.cleanup94_crit_edge, %if.end28.cleanup94_crit_edge, %if.else.cleanup94_crit_edge, %if.then12.cleanup94_crit_edge, %if.then1, %entry.cleanup94_crit_edge
  %retval.4 = phi i32 [ %sub.ptr.sub93, %cleanup.cont90 ], [ -72, %entry.cleanup94_crit_edge ], [ %., %if.then1 ], [ -72, %if.then12.cleanup94_crit_edge ], [ -72, %if.else.cleanup94_crit_edge ], [ -72, %if.end28.cleanup94_crit_edge ], [ -20, %cleanup.cont66.cleanup94_crit_edge ], [ -20, %cleanup.cont.cleanup94_crit_edge ], [ -20, %if.end33.cleanup94_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_buildSeqTable(ptr noundef %DTableSpace, ptr nocapture noundef %DTablePtr, i32 noundef %type, i32 noundef %max, i32 noundef %maxLog, ptr noundef %src, i32 noundef %srcSize, ptr nocapture noundef readonly %baseValue, ptr nocapture noundef readonly %nbAdditionalBits, ptr noundef %defaultTable, i32 noundef %flagRepeatTable, i32 noundef %ddictIsCold, i32 noundef %nbSeq, ptr nocapture noundef %wksp, i32 noundef %bmi2) unnamed_addr #2 align 64 {
entry:
  %max.addr = alloca i32, align 4
  %tableLog = alloca i32, align 4
  %norm = alloca [53 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %max.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %max, ptr %max.addr, align 4
  %1 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb6
    i32 3, label %sw.bb7
    i32 2, label %sw.bb19
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srcSize)
  %tobool.not = icmp eq i32 %srcSize, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %src, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %max)
  %cmp = icmp ugt i32 %conv, %max
  br i1 %cmp, label %if.end.sw.epilog_crit_edge, label %if.end3

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr i32, ptr %baseValue, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr i32, ptr %nbAdditionalBits, i32 %conv
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  %add.ptr.i = getelementptr %struct.ZSTD_seqSymbol, ptr %DTableSpace, i32 1
  %tableLog.i = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %DTableSpace, i32 0, i32 1
  %8 = ptrtoint ptr %tableLog.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tableLog.i, align 4
  %9 = ptrtoint ptr %DTableSpace to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %DTableSpace, align 4
  %nbBits.i = getelementptr %struct.ZSTD_seqSymbol, ptr %DTableSpace, i32 1, i32 2
  %10 = ptrtoint ptr %nbBits.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %nbBits.i, align 1
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %add.ptr.i, align 4
  %conv.i = trunc i32 %7 to i8
  %nbAdditionalBits.i = getelementptr %struct.ZSTD_seqSymbol, ptr %DTableSpace, i32 1, i32 1
  %12 = ptrtoint ptr %nbAdditionalBits.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %nbAdditionalBits.i, align 2
  %baseValue1.i = getelementptr %struct.ZSTD_seqSymbol, ptr %DTableSpace, i32 1, i32 3
  %13 = ptrtoint ptr %baseValue1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %5, ptr %baseValue1.i, align 4
  %14 = ptrtoint ptr %DTablePtr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %DTableSpace, ptr %DTablePtr, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %DTablePtr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %defaultTable, ptr %DTablePtr, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flagRepeatTable)
  %tobool8.not = icmp eq i32 %flagRepeatTable, 0
  br i1 %tobool8.not, label %sw.bb7.sw.epilog_crit_edge, label %if.end10

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end10:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ddictIsCold)
  %tobool11.not = icmp ne i32 %ddictIsCold, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %nbSeq)
  %cmp12 = icmp sgt i32 %nbSeq, 24
  %or.cond = and i1 %tobool11.not, %cmp12
  br i1 %or.cond, label %if.then14, label %if.end10.sw.epilog_crit_edge

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then14:                                        ; preds = %if.end10
  %16 = ptrtoint ptr %DTablePtr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %DTablePtr, align 4
  %add = shl i32 8, %maxLog
  %mul = add i32 %add, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp152.not = icmp eq i32 %mul, 0
  br i1 %cmp152.not, label %if.then14.sw.epilog_crit_edge, label %if.then14.for.body_crit_edge

if.then14.for.body_crit_edge:                     ; preds = %if.then14
  br label %for.body

if.then14.sw.epilog_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then14.for.body_crit_edge
  %_pos.03 = phi i32 [ %add17, %for.body.for.body_crit_edge ], [ 0, %if.then14.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %17, i32 %_pos.03
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 0, i32 2, i32 1)
  %add17 = add i32 %_pos.03, 64
  %cmp15 = icmp ult i32 %add17, %mul
  br i1 %cmp15, label %for.body.for.body_crit_edge, label %for.body.sw.epilog_crit_edge

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

sw.bb19:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tableLog) #9
  %18 = ptrtoint ptr %tableLog to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %tableLog, align 4, !annotation !34
  call void @llvm.lifetime.start.p0(i64 106, ptr nonnull %norm) #9
  %19 = call ptr @memset(ptr %norm, i32 255, i32 106)
  %call = call i32 @FSE_readNCount(ptr noundef nonnull %norm, ptr noundef nonnull %max.addr, ptr noundef nonnull %tableLog, ptr noundef %src, i32 noundef %srcSize) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call)
  %cmp.i = icmp ult i32 %call, -119
  br i1 %cmp.i, label %if.end23, label %sw.bb19.cleanup_crit_edge

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %sw.bb19
  %20 = ptrtoint ptr %tableLog to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tableLog, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %maxLog)
  %cmp24 = icmp ugt i32 %21, %maxLog
  br i1 %cmp24, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %max.addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max.addr, align 4
  call void @ZSTD_buildFSETable(ptr noundef %DTableSpace, ptr noundef nonnull %norm, i32 noundef %23, ptr noundef %baseValue, ptr noundef %nbAdditionalBits, i32 noundef %21, ptr noundef %wksp, i32 undef, i32 undef)
  %24 = ptrtoint ptr %DTablePtr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %DTableSpace, ptr %DTablePtr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end23.cleanup_crit_edge, %sw.bb19.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end27 ], [ -20, %sw.bb19.cleanup_crit_edge ], [ -20, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 106, ptr nonnull %norm) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tableLog) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %cleanup, %for.body.sw.epilog_crit_edge, %if.then14.sw.epilog_crit_edge, %if.end10.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %sw.bb6, %if.end3, %if.end.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ 0, %sw.bb6 ], [ 1, %if.end3 ], [ -72, %sw.bb.sw.epilog_crit_edge ], [ -20, %if.end.sw.epilog_crit_edge ], [ -20, %sw.bb7.sw.epilog_crit_edge ], [ 0, %if.end10.sw.epilog_crit_edge ], [ -1, %entry.sw.epilog_crit_edge ], [ 0, %if.then14.sw.epilog_crit_edge ], [ 0, %for.body.sw.epilog_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decompressBlock_internal(ptr noundef %dctx, ptr noundef %dst, i32 noundef %dstCapacity, ptr noundef %src, i32 noundef %srcSize, i32 noundef %frame) local_unnamed_addr #2 align 64 {
entry:
  %litPtr.i.i.i84 = alloca ptr, align 4
  %seqState.i.i.i85 = alloca %struct.seqState_t, align 4
  %litPtr.i.i.i = alloca ptr, align 4
  %sequences.i.i.i = alloca [4 x %struct.seq_t], align 4
  %seqState.i.i.i = alloca %struct.seqState_t, align 4
  %nbSeq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frame)
  %tobool1.not = icmp eq i32 %frame, 0
  br i1 %tobool1.not, label %entry.land.end_crit_edge, label %lor.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %windowSize = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %windowSize to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %windowSize, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 33554432, i64 %1)
  %cmp = icmp ugt i64 %1, 33554432
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %lor.rhs, %entry.land.end_crit_edge
  %2 = phi i32 [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %srcSize)
  %cmp4 = icmp ugt i32 %srcSize, 131071
  br i1 %cmp4, label %land.end.cleanup45_crit_edge, label %if.end

land.end.cleanup45_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup45

if.end:                                           ; preds = %land.end
  %call5 = tail call i32 @ZSTD_decodeLiteralsBlock(ptr noundef %dctx, ptr noundef %src, i32 noundef %srcSize)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call5)
  %cmp.i = icmp ult i32 %call5, -119
  %ip.0.idx = select i1 %cmp.i, i32 %call5, i32 0
  %ip.0 = getelementptr i8, ptr %src, i32 %ip.0.idx
  %srcSize.addr.0 = sub i32 %srcSize, %ip.0.idx
  br i1 %cmp.i, label %cleanup.cont, label %if.end.cleanup45_crit_edge

if.end.cleanup45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup45

cleanup.cont:                                     ; preds = %if.end
  %ddictIsCold = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 32
  %3 = ptrtoint ptr %ddictIsCold to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ddictIsCold, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nbSeq) #9
  %5 = ptrtoint ptr %nbSeq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %nbSeq, align 4, !annotation !34
  %call10 = call i32 @ZSTD_decodeSeqHeaders(ptr noundef %dctx, ptr noundef nonnull %nbSeq, ptr noundef %ip.0, i32 noundef %srcSize.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call10)
  %cmp.i81 = icmp ult i32 %call10, -119
  br i1 %cmp.i81, label %if.end14, label %cleanup.cont.cleanup42_crit_edge

cleanup.cont.cleanup42_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup42

if.end14:                                         ; preds = %cleanup.cont
  %add.ptr15 = getelementptr i8, ptr %ip.0, i32 %call10
  %sub16 = sub i32 %srcSize.addr.0, %call10
  %cmp17 = icmp eq ptr %dst, null
  br i1 %cmp17, label %land.lhs.true, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end14
  %6 = ptrtoint ptr %nbSeq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbSeq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp18 = icmp sgt i32 %7, 0
  br i1 %cmp18, label %land.lhs.true.cleanup42_crit_edge, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true.cleanup42_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup42

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end14.if.end20_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool21.not = icmp eq i32 %4, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %if.end35.thread541

if.end35.thread541:                               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %ddictIsCold to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ddictIsCold, align 4
  br label %if.then38

land.lhs.true22:                                  ; preds = %if.end20
  br i1 %tobool1.not, label %land.lhs.true22.land.lhs.true27_crit_edge, label %lor.lhs.false

land.lhs.true22.land.lhs.true27_crit_edge:        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true27

lor.lhs.false:                                    ; preds = %land.lhs.true22
  %windowSize25 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %windowSize25 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %windowSize25, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777216, i64 %10)
  %cmp26 = icmp ugt i64 %10, 16777216
  br i1 %cmp26, label %lor.lhs.false.land.lhs.true27_crit_edge, label %lor.lhs.false.if.end35.thread_crit_edge

lor.lhs.false.if.end35.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.thread

lor.lhs.false.land.lhs.true27_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true27

land.lhs.true27:                                  ; preds = %lor.lhs.false.land.lhs.true27_crit_edge, %land.lhs.true22.land.lhs.true27_crit_edge
  %11 = ptrtoint ptr %nbSeq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nbSeq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp28 = icmp sgt i32 %12, 4
  br i1 %cmp28, label %if.then29, label %land.lhs.true27.if.end35.thread_crit_edge

land.lhs.true27.if.end35.thread_crit_edge:        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.thread

if.then29:                                        ; preds = %land.lhs.true27
  %OFTptr = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 2
  %13 = ptrtoint ptr %OFTptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %OFTptr, align 8
  %tableLog1.i = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %tableLog1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tableLog1.i, align 4
  %add.ptr.i = getelementptr %struct.ZSTD_seqSymbol, ptr %14, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then29
  %total.013.i = phi i32 [ 0, %if.then29 ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  %u.012.i = phi i32 [ 0, %if.then29 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx2.i = getelementptr %struct.ZSTD_seqSymbol, ptr %add.ptr.i, i32 %u.012.i
  %nbAdditionalBits.i = getelementptr inbounds %struct.ZSTD_seqSymbol, ptr %arrayidx2.i, i32 0, i32 1
  %17 = ptrtoint ptr %nbAdditionalBits.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nbAdditionalBits.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %18)
  %cmp3.i = icmp ugt i8 %18, 22
  %add.i = zext i1 %cmp3.i to i32
  %spec.select.i = add i32 %total.013.i, %add.i
  %inc.i = add i32 %u.012.i, 1
  %u.0.highbits.i = lshr i32 %inc.i, %16
  %cmp.i83 = icmp eq i32 %u.0.highbits.i, 0
  br i1 %cmp.i83, label %for.body.i.for.body.i_crit_edge, label %if.end35

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end35.thread:                                  ; preds = %land.lhs.true27.if.end35.thread_crit_edge, %lor.lhs.false.if.end35.thread_crit_edge
  %19 = ptrtoint ptr %ddictIsCold to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ddictIsCold, align 4
  br label %if.end40

if.end35:                                         ; preds = %for.body.i
  %sub.i = sub i32 8, %16
  %shl5.i = shl i32 %spec.select.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %shl5.i)
  %cmp34 = icmp ult i32 %shl5.i, 20
  %20 = ptrtoint ptr %ddictIsCold to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %ddictIsCold, align 4
  br i1 %cmp34, label %if.end35.if.end40_crit_edge, label %if.end35.if.then38_crit_edge

if.end35.if.then38_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then38:                                        ; preds = %if.end35.if.then38_crit_edge, %if.end35.thread541
  %21 = ptrtoint ptr %nbSeq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nbSeq, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %dst, i32 %dstCapacity
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %litPtr.i.i.i) #9
  %litPtr2.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 23
  %23 = ptrtoint ptr %litPtr2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %litPtr2.i.i.i, align 8
  %25 = ptrtoint ptr %litPtr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %litPtr.i.i.i, align 4
  %litSize.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 25
  %26 = ptrtoint ptr %litSize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %litSize.i.i.i, align 8
  %add.ptr3.i.i.i = getelementptr i8, ptr %24, i32 %27
  %prefixStart4.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 7
  %28 = ptrtoint ptr %prefixStart4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prefixStart4.i.i.i, align 8
  %virtualStart.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 8
  %30 = ptrtoint ptr %virtualStart.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %virtualStart.i.i.i, align 4
  %dictEnd5.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 9
  %32 = ptrtoint ptr %dictEnd5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dictEnd5.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i.i, label %if.then38.if.end104.i.i.i_crit_edge, label %if.then.i.i.i

if.then38.if.end104.i.i.i_crit_edge:              ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104.i.i.i

if.then.i.i.i:                                    ; preds = %if.then38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sequences.i.i.i) #9
  %34 = call ptr @memset(ptr %sequences.i.i.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %seqState.i.i.i) #9
  %35 = call ptr @memset(ptr %seqState.i.i.i, i32 255, i32 44)
  %fseEntropy.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 17
  %36 = ptrtoint ptr %fseEntropy.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %fseEntropy.i.i.i, align 4
  %uglygep.i.i.i = getelementptr inbounds i8, ptr %seqState.i.i.i, i32 44
  %uglygep699.i.i.i = getelementptr i8, ptr %dctx, i32 26668
  %37 = call ptr @memcpy(ptr %uglygep.i.i.i, ptr %uglygep699.i.i.i, i32 12)
  %38 = tail call i32 @llvm.smin.i32(i32 %22, i32 4) #9
  %prefixStart8.i.i.i = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %prefixStart8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %29, ptr %prefixStart8.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %dst to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %pos.i.i.i = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i, i32 0, i32 7
  %40 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub.ptr.sub.i.i.i, ptr %pos.i.i.i, align 4
  %dictEnd9.i.i.i = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i, i32 0, i32 6
  %41 = ptrtoint ptr %dictEnd9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %33, ptr %dictEnd9.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %srcSize.addr.0, i32 %call10)
  %cmp.i447.i.i.i = icmp eq i32 %srcSize.addr.0, %call10
  br i1 %cmp.i447.i.i.i, label %if.then.i.i.i.cleanup98.thread.i.i.i_crit_edge, label %if.end.i450.i.i.i

if.then.i.i.i.cleanup98.thread.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98.thread.i.i.i

if.end.i450.i.i.i:                                ; preds = %if.then.i.i.i
  %start.i.i.i.i = getelementptr inbounds %struct.BIT_DStream_t, ptr %seqState.i.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %start.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr15, ptr %start.i.i.i.i, align 4
  %add.ptr.i449.i.i.i = getelementptr i8, ptr %add.ptr15, i32 4
  %limitPtr.i.i.i.i = getelementptr inbounds %struct.BIT_DStream_t, ptr %seqState.i.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %limitPtr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr.i449.i.i.i, ptr %limitPtr.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub16)
  %cmp2.i.i.i.i = icmp ugt i32 %sub16, 3
  br i1 %cmp2.i.i.i.i, label %if.then3.i.i.i.i, label %if.else.i456.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i450.i.i.i
  %add.ptr4.i.i.i.i = getelementptr i8, ptr %add.ptr15, i32 %sub16
  %add.ptr5.i451.i.i.i = getelementptr i8, ptr %add.ptr4.i.i.i.i, i32 -4
  %ptr.i.i.i.i = getelementptr inbounds %struct.BIT_DStream_t, ptr %seqState.i.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr5.i451.i.i.i, ptr %ptr.i.i.i.i, align 4
  %45 = ptrtoint ptr %add.ptr5.i451.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %add.ptr5.i451.i.i.i, align 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #9
  %48 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %seqState.i.i.i, align 4
  %49 = trunc i32 %46 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i.i.i.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i.i.i.i, label %if.then3.i.i.i.i.cleanup98.thread.i.i.i_crit_edge, label %BIT_initDStream.exit.i.i.i

if.then3.i.i.i.i.cleanup98.thread.i.i.i_crit_edge: ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98.thread.i.i.i

if.else.i456.i.i.i:                               ; preds = %if.end.i450.i.i.i
  %ptr16.i.i.i.i = getelementptr inbounds %struct.BIT_DStream_t, ptr %seqState.i.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %ptr16.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr15, ptr %ptr16.i.i.i.i, align 4
  %51 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr15, align 1
  %conv18.i.i.i.i = zext i8 %52 to i32
  %53 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv18.i.i.i.i, ptr %seqState.i.i.i, align 4
  %54 = zext i32 %sub16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %sub16, label %if.else.i456.i.i.i.sw.epilog.i.i.i.i_crit_edge [
    i32 2, label %if.else.i456.i.i.i.sw.bb47.i.i.i.i_crit_edge
    i32 3, label %sw.bb41.i.i.i.i
  ]

if.else.i456.i.i.i.sw.bb47.i.i.i.i_crit_edge:     ; preds = %if.else.i456.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb47.i.i.i.i

if.else.i456.i.i.i.sw.epilog.i.i.i.i_crit_edge:   ; preds = %if.else.i456.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i.i.i

sw.bb41.i.i.i.i:                                  ; preds = %if.else.i456.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx42.i.i.i.i = getelementptr i8, ptr %add.ptr15, i32 2
  %55 = ptrtoint ptr %arrayidx42.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx42.i.i.i.i, align 1
  %conv43.i.i.i.i = zext i8 %56 to i32
  %shl44.i.i.i.i = shl nuw nsw i32 %conv43.i.i.i.i, 16
  %add46.i457.i.i.i = or i32 %shl44.i.i.i.i, %conv18.i.i.i.i
  %57 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add46.i457.i.i.i, ptr %seqState.i.i.i, align 4
  br label %sw.bb47.i.i.i.i

sw.bb47.i.i.i.i:                                  ; preds = %sw.bb41.i.i.i.i, %if.else.i456.i.i.i.sw.bb47.i.i.i.i_crit_edge
  %arrayidx48.i.i.i.i = getelementptr i8, ptr %add.ptr15, i32 1
  %58 = ptrtoint ptr %arrayidx48.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx48.i.i.i.i, align 1
  %conv49.i.i.i.i = zext i8 %59 to i32
  %shl50.i.i.i.i = shl nuw nsw i32 %conv49.i.i.i.i, 8
  %60 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %seqState.i.i.i, align 4
  %add52.i.i.i.i = add i32 %shl50.i.i.i.i, %61
  store i32 %add52.i.i.i.i, ptr %seqState.i.i.i, align 4
  br label %sw.epilog.i.i.i.i

sw.epilog.i.i.i.i:                                ; preds = %sw.bb47.i.i.i.i, %if.else.i456.i.i.i.sw.epilog.i.i.i.i_crit_edge
  %sub54.i458.i.i.i = add nsw i32 %sub16, -1
  %arrayidx55.i.i.i.i = getelementptr i8, ptr %add.ptr15, i32 %sub54.i458.i.i.i
  %62 = ptrtoint ptr %arrayidx55.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx55.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool57.not.i.i.i.i = icmp eq i8 %63, 0
  br i1 %tobool57.not.i.i.i.i, label %sw.epilog.i.i.i.i.cleanup98.thread.i.i.i_crit_edge, label %BIT_initDStream.exit.thread635.i.i.i

sw.epilog.i.i.i.i.cleanup98.thread.i.i.i_crit_edge: ; preds = %sw.epilog.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98.thread.i.i.i

BIT_initDStream.exit.thread635.i.i.i:             ; preds = %sw.epilog.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv56.i.i.i.i = zext i8 %63 to i32
  %64 = tail call i32 @llvm.ctlz.i32(i32 %conv56.i.i.i.i, i1 true) #9, !range !33
  %bitsConsumed65124.i.i.i.i = getelementptr inbounds %struct.BIT_DStream_t, ptr %seqState.i.i.i, i32 0, i32 1
  %.neg.i.i.i.i = mul nsw i32 %sub16, -8
  %mul.i.i.i.i = add nsw i32 %.neg.i.i.i.i, 9
  %add76.i.i.i.i = add nsw i32 %mul.i.i.i.i, %64
  %65 = ptrtoint ptr %bitsConsumed65124.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add76.i.i.i.i, ptr %bitsConsumed65124.i.i.i.i, align 4
  br label %if.end.i.i.i

BIT_initDStream.exit.i.i.i:                       ; preds = %if.then3.i.i.i.i
  %conv.i454.i.i.i = and i32 %46, 255
  %66 = tail call i32 @llvm.ctlz.i32(i32 %conv.i454.i.i.i, i1 true) #9, !range !33
  %sub9.i.i.i.i = add nsw i32 %66, -23
  %bitsConsumed121.i.i.i.i = getelementptr inbounds %struct.BIT_DStream_t, ptr %seqState.i.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %bitsConsumed121.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sub9.i.i.i.i, ptr %bitsConsumed121.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %sub16)
  %cmp.i459.i.i.i = icmp ult i32 %sub16, -119
  br i1 %cmp.i459.i.i.i, label %BIT_initDStream.exit.i.i.i.if.end.i.i.i_crit_edge, label %BIT_initDStream.exit.i.i.i.cleanup98.thread.i.i.i_crit_edge

BIT_initDStream.exit.i.i.i.cleanup98.thread.i.i.i_crit_edge: ; preds = %BIT_initDStream.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98.thread.i.i.i

BIT_initDStream.exit.i.i.i.if.end.i.i.i_crit_edge: ; preds = %BIT_initDStream.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %BIT_initDStream.exit.i.i.i.if.end.i.i.i_crit_edge, %BIT_initDStream.exit.thread635.i.i.i
  %stateLL.i.i.i = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %dctx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dctx, align 8
  %tableLog.i.i.i.i = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %tableLog.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tableLog.i.i.i.i, align 4
  %72 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %seqState.i.i.i, align 4
  %bitsConsumed.i.i.i.i.i.i = getelementptr inbounds %struct.BIT_DStream_t, ptr %seqState.i.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4
  %76 = add i32 %75, %71
  %sub1.i.i.i.i.i.i = sub i32 0, %76
  %and.i.i.i.i.i.i.i = and i32 %sub1.i.i.i.i.i.i, 31
  %shr.i.i.i.i.i.i.i = lshr i32 %73, %and.i.i.i.i.i.i.i
  %arrayidx.i.i.i.i.i.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %71
  %77 = ptrtoint ptr %arrayidx.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i.i.i.i.i.i.i, align 4
  %and1.i.i.i.i.i.i.i = and i32 %shr.i.i.i.i.i.i.i, %78
  store i32 %76, ptr %bitsConsumed.i.i.i.i.i.i, align 4
  %79 = ptrtoint ptr %stateLL.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %and1.i.i.i.i.i.i.i, ptr %stateLL.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %76)
  %cmp.i.i461.i.i.i = icmp ugt i32 %76, 32
  br i1 %cmp.i.i461.i.i.i, label %if.end.i.i.i.ZSTD_initFseState.exit.i.i.i_crit_edge, label %if.end.i.i465.i.i.i

if.end.i.i.i.ZSTD_initFseState.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_initFseState.exit.i.i.i

if.end.i.i465.i.i.i:                              ; preds = %if.end.i.i.i
  %ptr.i.i462.i.i.i = getelementptr inbounds %struct.BIT_DStream_t, ptr %seqState.i.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %ptr.i.i462.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ptr.i.i462.i.i.i, align 4
  %cmp1.not.i.i464.i.i.i = icmp ult ptr %81, %add.ptr.i449.i.i.i
  br i1 %cmp1.not.i.i464.i.i.i, label %if.end3.i.i473.i.i.i, label %BIT_reloadDStreamFast.exit.i.i470.i.i.i

BIT_reloadDStreamFast.exit.i.i470.i.i.i:          ; preds = %if.end.i.i465.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i466.i.i.i = lshr i32 %76, 3
  %idx.neg.i.i.i467.i.i.i = sub nsw i32 0, %shr.i.i.i466.i.i.i
  %add.ptr.i.i.i468.i.i.i = getelementptr i8, ptr %81, i32 %idx.neg.i.i.i467.i.i.i
  %82 = ptrtoint ptr %ptr.i.i462.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %add.ptr.i.i.i468.i.i.i, ptr %ptr.i.i462.i.i.i, align 4
  %and.i.i.i469.i.i.i = and i32 %76, 7
  br label %BIT_reloadDStream.exit.sink.split.i488.i.i.i

if.end3.i.i473.i.i.i:                             ; preds = %if.end.i.i465.i.i.i
  %cmp5.i.i472.i.i.i = icmp eq ptr %81, %add.ptr15
  br i1 %cmp5.i.i472.i.i.i, label %if.end3.i.i473.i.i.i.ZSTD_initFseState.exit.i.i.i_crit_edge, label %if.end11.i.i486.i.i.i

if.end3.i.i473.i.i.i.ZSTD_initFseState.exit.i.i.i_crit_edge: ; preds = %if.end3.i.i473.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_initFseState.exit.i.i.i

if.end11.i.i486.i.i.i:                            ; preds = %if.end3.i.i473.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i474.i.i.i = lshr i32 %76, 3
  %idx.neg.i.i475.i.i.i = sub nsw i32 0, %shr.i.i474.i.i.i
  %add.ptr.i.i476.i.i.i = getelementptr i8, ptr %81, i32 %idx.neg.i.i475.i.i.i
  %cmp15.i.i477.i.i.i = icmp ult ptr %add.ptr.i.i476.i.i.i, %add.ptr15
  %sub.ptr.lhs.cast.i.i478.i.i.i = ptrtoint ptr %81 to i32
  %sub.ptr.rhs.cast.i.i479.i.i.i = ptrtoint ptr %add.ptr15 to i32
  %sub.ptr.sub.i.i480.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i478.i.i.i, %sub.ptr.rhs.cast.i.i479.i.i.i
  %nbBytes.0.i.i481.i.i.i = select i1 %cmp15.i.i477.i.i.i, i32 %sub.ptr.sub.i.i480.i.i.i, i32 %shr.i.i474.i.i.i
  %idx.neg21.i.i482.i.i.i = sub i32 0, %nbBytes.0.i.i481.i.i.i
  %add.ptr22.i.i483.i.i.i = getelementptr i8, ptr %81, i32 %idx.neg21.i.i482.i.i.i
  %83 = ptrtoint ptr %ptr.i.i462.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %add.ptr22.i.i483.i.i.i, ptr %ptr.i.i462.i.i.i, align 4
  %mul.neg.i.i484.i.i.i = mul i32 %nbBytes.0.i.i481.i.i.i, -8
  %sub.i.i485.i.i.i = add i32 %mul.neg.i.i484.i.i.i, %76
  br label %BIT_reloadDStream.exit.sink.split.i488.i.i.i

BIT_reloadDStream.exit.sink.split.i488.i.i.i:     ; preds = %if.end11.i.i486.i.i.i, %BIT_reloadDStreamFast.exit.i.i470.i.i.i
  %and.i.i.sink.i.i.i.i = phi i32 [ %and.i.i.i469.i.i.i, %BIT_reloadDStreamFast.exit.i.i470.i.i.i ], [ %sub.i.i485.i.i.i, %if.end11.i.i486.i.i.i ]
  %add.ptr.i.i.sink.i487.i.i.i = phi ptr [ %add.ptr.i.i.i468.i.i.i, %BIT_reloadDStreamFast.exit.i.i470.i.i.i ], [ %add.ptr22.i.i483.i.i.i, %if.end11.i.i486.i.i.i ]
  %84 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %and.i.i.sink.i.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4
  %85 = ptrtoint ptr %add.ptr.i.i.sink.i487.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %add.ptr.i.i.sink.i487.i.i.i, align 1
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #9
  %88 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %seqState.i.i.i, align 4
  br label %ZSTD_initFseState.exit.i.i.i

ZSTD_initFseState.exit.i.i.i:                     ; preds = %BIT_reloadDStream.exit.sink.split.i488.i.i.i, %if.end3.i.i473.i.i.i.ZSTD_initFseState.exit.i.i.i_crit_edge, %if.end.i.i.i.ZSTD_initFseState.exit.i.i.i_crit_edge
  %add.ptr.i489.i.i.i = getelementptr %struct.ZSTD_seqSymbol, ptr %69, i32 1
  %table.i490.i.i.i = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i, i32 0, i32 1, i32 1
  %89 = ptrtoint ptr %table.i490.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %add.ptr.i489.i.i.i, ptr %table.i490.i.i.i, align 4
  %stateOffb.i.i.i = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i, i32 0, i32 2
  %OFTptr.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 2
  %90 = ptrtoint ptr %OFTptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %OFTptr.i.i.i, align 8
  %tableLog.i492.i.i.i = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %tableLog.i492.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tableLog.i492.i.i.i, align 4
  %94 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %seqState.i.i.i, align 4
  %96 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4
  %98 = add i32 %97, %93
  %sub1.i.i.i494.i.i.i = sub i32 0, %98
  %and.i.i.i.i495.i.i.i = and i32 %sub1.i.i.i494.i.i.i, 31
  %shr.i.i.i.i496.i.i.i = lshr i32 %95, %and.i.i.i.i495.i.i.i
  %arrayidx.i.i.i.i497.i.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %93
  %99 = ptrtoint ptr %arrayidx.i.i.i.i497.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.i.i.i.i497.i.i.i, align 4
  %and1.i.i.i.i498.i.i.i = and i32 %shr.i.i.i.i496.i.i.i, %100
  store i32 %98, ptr %bitsConsumed.i.i.i.i.i.i, align 4
  %101 = ptrtoint ptr %stateOffb.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %and1.i.i.i.i498.i.i.i, ptr %stateOffb.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %98)
  %cmp.i.i499.i.i.i = icmp ugt i32 %98, 32
  br i1 %cmp.i.i499.i.i.i, label %ZSTD_initFseState.exit.i.i.i.ZSTD_initFseState.exit531.i.i.i_crit_edge, label %if.end.i.i503.i.i.i

ZSTD_initFseState.exit.i.i.i.ZSTD_initFseState.exit531.i.i.i_crit_edge: ; preds = %ZSTD_initFseState.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_initFseState.exit531.i.i.i

if.end.i.i503.i.i.i:                              ; preds = %ZSTD_initFseState.exit.i.i.i
  %ptr.i.i500.i.i.i = getelementptr inbounds %struct.BIT_DStream_t, ptr %seqState.i.i.i, i32 0, i32 2
  %102 = ptrtoint ptr %ptr.i.i500.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ptr.i.i500.i.i.i, align 4
  %cmp1.not.i.i502.i.i.i = icmp ult ptr %103, %add.ptr.i449.i.i.i
  br i1 %cmp1.not.i.i502.i.i.i, label %if.end3.i.i511.i.i.i, label %BIT_reloadDStreamFast.exit.i.i508.i.i.i

BIT_reloadDStreamFast.exit.i.i508.i.i.i:          ; preds = %if.end.i.i503.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i504.i.i.i = lshr i32 %98, 3
  %idx.neg.i.i.i505.i.i.i = sub nsw i32 0, %shr.i.i.i504.i.i.i
  %add.ptr.i.i.i506.i.i.i = getelementptr i8, ptr %103, i32 %idx.neg.i.i.i505.i.i.i
  %104 = ptrtoint ptr %ptr.i.i500.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %add.ptr.i.i.i506.i.i.i, ptr %ptr.i.i500.i.i.i, align 4
  %and.i.i.i507.i.i.i = and i32 %98, 7
  br label %BIT_reloadDStream.exit.sink.split.i527.i.i.i

if.end3.i.i511.i.i.i:                             ; preds = %if.end.i.i503.i.i.i
  %cmp5.i.i510.i.i.i = icmp eq ptr %103, %add.ptr15
  br i1 %cmp5.i.i510.i.i.i, label %if.end3.i.i511.i.i.i.ZSTD_initFseState.exit531.i.i.i_crit_edge, label %if.end11.i.i524.i.i.i

if.end3.i.i511.i.i.i.ZSTD_initFseState.exit531.i.i.i_crit_edge: ; preds = %if.end3.i.i511.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_initFseState.exit531.i.i.i

if.end11.i.i524.i.i.i:                            ; preds = %if.end3.i.i511.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i512.i.i.i = lshr i32 %98, 3
  %idx.neg.i.i513.i.i.i = sub nsw i32 0, %shr.i.i512.i.i.i
  %add.ptr.i.i514.i.i.i = getelementptr i8, ptr %103, i32 %idx.neg.i.i513.i.i.i
  %cmp15.i.i515.i.i.i = icmp ult ptr %add.ptr.i.i514.i.i.i, %add.ptr15
  %sub.ptr.lhs.cast.i.i516.i.i.i = ptrtoint ptr %103 to i32
  %sub.ptr.rhs.cast.i.i517.i.i.i = ptrtoint ptr %add.ptr15 to i32
  %sub.ptr.sub.i.i518.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i516.i.i.i, %sub.ptr.rhs.cast.i.i517.i.i.i
  %nbBytes.0.i.i519.i.i.i = select i1 %cmp15.i.i515.i.i.i, i32 %sub.ptr.sub.i.i518.i.i.i, i32 %shr.i.i512.i.i.i
  %idx.neg21.i.i520.i.i.i = sub i32 0, %nbBytes.0.i.i519.i.i.i
  %add.ptr22.i.i521.i.i.i = getelementptr i8, ptr %103, i32 %idx.neg21.i.i520.i.i.i
  %105 = ptrtoint ptr %ptr.i.i500.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %add.ptr22.i.i521.i.i.i, ptr %ptr.i.i500.i.i.i, align 4
  %mul.neg.i.i522.i.i.i = mul i32 %nbBytes.0.i.i519.i.i.i, -8
  %sub.i.i523.i.i.i = add i32 %mul.neg.i.i522.i.i.i, %98
  br label %BIT_reloadDStream.exit.sink.split.i527.i.i.i

BIT_reloadDStream.exit.sink.split.i527.i.i.i:     ; preds = %if.end11.i.i524.i.i.i, %BIT_reloadDStreamFast.exit.i.i508.i.i.i
  %and.i.i.sink.i525.i.i.i = phi i32 [ %and.i.i.i507.i.i.i, %BIT_reloadDStreamFast.exit.i.i508.i.i.i ], [ %sub.i.i523.i.i.i, %if.end11.i.i524.i.i.i ]
  %add.ptr.i.i.sink.i526.i.i.i = phi ptr [ %add.ptr.i.i.i506.i.i.i, %BIT_reloadDStreamFast.exit.i.i508.i.i.i ], [ %add.ptr22.i.i521.i.i.i, %if.end11.i.i524.i.i.i ]
  %106 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %and.i.i.sink.i525.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4
  %107 = ptrtoint ptr %add.ptr.i.i.sink.i526.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %add.ptr.i.i.sink.i526.i.i.i, align 1
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #9
  %110 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %seqState.i.i.i, align 4
  br label %ZSTD_initFseState.exit531.i.i.i

ZSTD_initFseState.exit531.i.i.i:                  ; preds = %BIT_reloadDStream.exit.sink.split.i527.i.i.i, %if.end3.i.i511.i.i.i.ZSTD_initFseState.exit531.i.i.i_crit_edge, %ZSTD_initFseState.exit.i.i.i.ZSTD_initFseState.exit531.i.i.i_crit_edge
  %add.ptr.i528.i.i.i = getelementptr %struct.ZSTD_seqSymbol, ptr %91, i32 1
  %table.i529.i.i.i = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i, i32 0, i32 2, i32 1
  %111 = ptrtoint ptr %table.i529.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %add.ptr.i528.i.i.i, ptr %table.i529.i.i.i, align 4
  %stateML.i.i.i = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i, i32 0, i32 3
  %MLTptr.i.i.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 1
  %112 = ptrtoint ptr %MLTptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %MLTptr.i.i.i, align 4
  %tableLog.i532.i.i.i = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %tableLog.i532.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tableLog.i532.i.i.i, align 4
  %116 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %seqState.i.i.i, align 4
  %118 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4
  %120 = add i32 %119, %115
  %sub1.i.i.i534.i.i.i = sub i32 0, %120
  %and.i.i.i.i535.i.i.i = and i32 %sub1.i.i.i534.i.i.i, 31
  %shr.i.i.i.i536.i.i.i = lshr i32 %117, %and.i.i.i.i535.i.i.i
  %arrayidx.i.i.i.i537.i.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %115
  %121 = ptrtoint ptr %arrayidx.i.i.i.i537.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx.i.i.i.i537.i.i.i, align 4
  %and1.i.i.i.i538.i.i.i = and i32 %shr.i.i.i.i536.i.i.i, %122
  store i32 %120, ptr %bitsConsumed.i.i.i.i.i.i, align 4
  %123 = ptrtoint ptr %stateML.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %and1.i.i.i.i538.i.i.i, ptr %stateML.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %120)
  %cmp.i.i539.i.i.i = icmp ugt i32 %120, 32
  br i1 %cmp.i.i539.i.i.i, label %ZSTD_initFseState.exit571.thread.i.i.i, label %if.end.i.i543.i.i.i

ZSTD_initFseState.exit571.thread.i.i.i:           ; preds = %ZSTD_initFseState.exit531.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i568704.i.i.i = getelementptr %struct.ZSTD_seqSymbol, ptr %113, i32 1
  %table.i569705.i.i.i = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i, i32 0, i32 3, i32 1
  %124 = ptrtoint ptr %table.i569705.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %add.ptr.i568704.i.i.i, ptr %table.i569705.i.i.i, align 4
  br label %BIT_reloadDStream.exit.thread.i.i.i

if.end.i.i543.i.i.i:                              ; preds = %ZSTD_initFseState.exit531.i.i.i
  %ptr.i.i540.i.i.i = getelementptr inbounds %struct.BIT_DStream_t, ptr %seqState.i.i.i, i32 0, i32 2
  %125 = ptrtoint ptr %ptr.i.i540.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ptr.i.i540.i.i.i, align 4
  %cmp1.not.i.i542.i.i.i = icmp ult ptr %126, %add.ptr.i449.i.i.i
  br i1 %cmp1.not.i.i542.i.i.i, label %if.end3.i.i551.i.i.i, label %BIT_reloadDStreamFast.exit.i.i548.i.i.i

BIT_reloadDStreamFast.exit.i.i548.i.i.i:          ; preds = %if.end.i.i543.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i544.i.i.i = lshr i32 %120, 3
  %idx.neg.i.i.i545.i.i.i = sub nsw i32 0, %shr.i.i.i544.i.i.i
  %add.ptr.i.i.i546.i.i.i = getelementptr i8, ptr %126, i32 %idx.neg.i.i.i545.i.i.i
  %127 = ptrtoint ptr %ptr.i.i540.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %add.ptr.i.i.i546.i.i.i, ptr %ptr.i.i540.i.i.i, align 4
  %and.i.i.i547.i.i.i = and i32 %120, 7
  br label %ZSTD_initFseState.exit571.i.i.i

if.end3.i.i551.i.i.i:                             ; preds = %if.end.i.i543.i.i.i
  %cmp5.i.i550.i.i.i = icmp eq ptr %126, %add.ptr15
  br i1 %cmp5.i.i550.i.i.i, label %ZSTD_initFseState.exit571.i.thread.i.i, label %if.end11.i.i564.i.i.i

ZSTD_initFseState.exit571.i.thread.i.i:           ; preds = %if.end3.i.i551.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i568.i1.i.i = getelementptr %struct.ZSTD_seqSymbol, ptr %113, i32 1
  %table.i569.i2.i.i = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i, i32 0, i32 3, i32 1
  %128 = ptrtoint ptr %table.i569.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %add.ptr.i568.i1.i.i, ptr %table.i569.i2.i.i, align 4
  br label %if.end.i576.lr.ph.i.i.i

if.end11.i.i564.i.i.i:                            ; preds = %if.end3.i.i551.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i552.i.i.i = lshr i32 %120, 3
  %idx.neg.i.i553.i.i.i = sub nsw i32 0, %shr.i.i552.i.i.i
  %add.ptr.i.i554.i.i.i = getelementptr i8, ptr %126, i32 %idx.neg.i.i553.i.i.i
  %cmp15.i.i555.i.i.i = icmp ult ptr %add.ptr.i.i554.i.i.i, %add.ptr15
  %sub.ptr.lhs.cast.i.i556.i.i.i = ptrtoint ptr %126 to i32
  %sub.ptr.rhs.cast.i.i557.i.i.i = ptrtoint ptr %add.ptr15 to i32
  %sub.ptr.sub.i.i558.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i556.i.i.i, %sub.ptr.rhs.cast.i.i557.i.i.i
  %nbBytes.0.i.i559.i.i.i = select i1 %cmp15.i.i555.i.i.i, i32 %sub.ptr.sub.i.i558.i.i.i, i32 %shr.i.i552.i.i.i
  %idx.neg21.i.i560.i.i.i = sub i32 0, %nbBytes.0.i.i559.i.i.i
  %add.ptr22.i.i561.i.i.i = getelementptr i8, ptr %126, i32 %idx.neg21.i.i560.i.i.i
  %129 = ptrtoint ptr %ptr.i.i540.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %add.ptr22.i.i561.i.i.i, ptr %ptr.i.i540.i.i.i, align 4
  %mul.neg.i.i562.i.i.i = mul i32 %nbBytes.0.i.i559.i.i.i, -8
  %sub.i.i563.i.i.i = add i32 %mul.neg.i.i562.i.i.i, %120
  br label %ZSTD_initFseState.exit571.i.i.i

ZSTD_initFseState.exit571.i.i.i:                  ; preds = %if.end11.i.i564.i.i.i, %BIT_reloadDStreamFast.exit.i.i548.i.i.i
  %and.i.i.sink.i565.i.i.i = phi i32 [ %and.i.i.i547.i.i.i, %BIT_reloadDStreamFast.exit.i.i548.i.i.i ], [ %sub.i.i563.i.i.i, %if.end11.i.i564.i.i.i ]
  %add.ptr.i.i.sink.i566.i.i.i = phi ptr [ %add.ptr.i.i.i546.i.i.i, %BIT_reloadDStreamFast.exit.i.i548.i.i.i ], [ %add.ptr22.i.i561.i.i.i, %if.end11.i.i564.i.i.i ]
  %130 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %and.i.i.sink.i565.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4
  %131 = ptrtoint ptr %add.ptr.i.i.sink.i566.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %132 = load i32, ptr %add.ptr.i.i.sink.i566.i.i.i, align 1
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #9
  %134 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %seqState.i.i.i, align 4
  %add.ptr.i568.i.i.i = getelementptr %struct.ZSTD_seqSymbol, ptr %113, i32 1
  %table.i569.i.i.i = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i, i32 0, i32 3, i32 1
  %135 = ptrtoint ptr %table.i569.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %add.ptr.i568.i.i.i, ptr %table.i569.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and.i.i.sink.i565.i.i.i)
  %cmp.i573683.i.i.i = icmp ugt i32 %and.i.i.sink.i565.i.i.i, 32
  br i1 %cmp.i573683.i.i.i, label %ZSTD_initFseState.exit571.i.i.i.BIT_reloadDStream.exit.thread.i.i.i_crit_edge, label %ZSTD_initFseState.exit571.i.i.i.if.end.i576.lr.ph.i.i.i_crit_edge

ZSTD_initFseState.exit571.i.i.i.if.end.i576.lr.ph.i.i.i_crit_edge: ; preds = %ZSTD_initFseState.exit571.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i576.lr.ph.i.i.i

ZSTD_initFseState.exit571.i.i.i.BIT_reloadDStream.exit.thread.i.i.i_crit_edge: ; preds = %ZSTD_initFseState.exit571.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit.thread.i.i.i

if.end.i576.lr.ph.i.i.i:                          ; preds = %ZSTD_initFseState.exit571.i.i.i.if.end.i576.lr.ph.i.i.i_crit_edge, %ZSTD_initFseState.exit571.i.thread.i.i
  %table.i569.i5.i.i = phi ptr [ %table.i569.i2.i.i, %ZSTD_initFseState.exit571.i.thread.i.i ], [ %table.i569.i.i.i, %ZSTD_initFseState.exit571.i.i.i.if.end.i576.lr.ph.i.i.i_crit_edge ]
  %136 = phi i32 [ %120, %ZSTD_initFseState.exit571.i.thread.i.i ], [ %and.i.i.sink.i565.i.i.i, %ZSTD_initFseState.exit571.i.i.i.if.end.i576.lr.ph.i.i.i_crit_edge ]
  %arrayidx115.i.i.i.i = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i, i32 0, i32 4, i32 1
  %arrayidx117.i.i.i.i = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i, i32 0, i32 4, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool20.not.i.i.i.i = icmp ne i32 %2, 0
  %smax.i.i.i = tail call i32 @llvm.smax.i32(i32 %38, i32 0) #9
  %137 = getelementptr %struct.ZSTD_seqSymbol, ptr %113, i32 1
  br label %if.end.i576.i.i.i

BIT_reloadDStream.exit.thread.i.i.i:              ; preds = %ZSTD_decodeSequence.exit.i.i.i.BIT_reloadDStream.exit.thread.i.i.i_crit_edge, %ZSTD_initFseState.exit571.i.i.i.BIT_reloadDStream.exit.thread.i.i.i_crit_edge, %ZSTD_initFseState.exit571.thread.i.i.i
  %table.i569709.i.i.i = phi ptr [ %table.i569.i.i.i, %ZSTD_initFseState.exit571.i.i.i.BIT_reloadDStream.exit.thread.i.i.i_crit_edge ], [ %table.i569705.i.i.i, %ZSTD_initFseState.exit571.thread.i.i.i ], [ %table.i569.i5.i.i, %ZSTD_decodeSequence.exit.i.i.i.BIT_reloadDStream.exit.thread.i.i.i_crit_edge ]
  %seqNb.0.lcssa.i.i.i = phi i32 [ 0, %ZSTD_initFseState.exit571.i.i.i.BIT_reloadDStream.exit.thread.i.i.i_crit_edge ], [ 0, %ZSTD_initFseState.exit571.thread.i.i.i ], [ %inc33.i.i.i, %ZSTD_decodeSequence.exit.i.i.i.BIT_reloadDStream.exit.thread.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %and.i.i.sink.i565.i.i.i, %ZSTD_initFseState.exit571.i.i.i.BIT_reloadDStream.exit.thread.i.i.i_crit_edge ], [ %120, %ZSTD_initFseState.exit571.thread.i.i.i ], [ %309, %ZSTD_decodeSequence.exit.i.i.i.BIT_reloadDStream.exit.thread.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %seqNb.0.lcssa.i.i.i, i32 %38)
  %cmp23642.i.i.i = icmp slt i32 %seqNb.0.lcssa.i.i.i, %38
  br i1 %cmp23642.i.i.i, label %BIT_reloadDStream.exit.thread.i.i.i.cleanup98.thread.i.i.i_crit_edge, label %BIT_reloadDStream.exit.thread.i.i.i.for.cond38.i.i.i_crit_edge

BIT_reloadDStream.exit.thread.i.i.i.for.cond38.i.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond38.i.i.i

BIT_reloadDStream.exit.thread.i.i.i.cleanup98.thread.i.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98.thread.i.i.i

if.end.i576.i.i.i:                                ; preds = %ZSTD_decodeSequence.exit.i.i.i.if.end.i576.i.i.i_crit_edge, %if.end.i576.lr.ph.i.i.i
  %138 = phi i32 [ %136, %if.end.i576.lr.ph.i.i.i ], [ %309, %ZSTD_decodeSequence.exit.i.i.i.if.end.i576.i.i.i_crit_edge ]
  %seqNb.0684.i.i.i = phi i32 [ 0, %if.end.i576.lr.ph.i.i.i ], [ %inc33.i.i.i, %ZSTD_decodeSequence.exit.i.i.i.if.end.i576.i.i.i_crit_edge ]
  %139 = ptrtoint ptr %ptr.i.i540.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ptr.i.i540.i.i.i, align 4
  %cmp1.not.i.i.i.i = icmp ult ptr %140, %add.ptr.i449.i.i.i
  br i1 %cmp1.not.i.i.i.i, label %if.end3.i.i.i.i, label %BIT_reloadDStreamFast.exit.i.i.i.i

BIT_reloadDStreamFast.exit.i.i.i.i:               ; preds = %if.end.i576.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i577.i.i.i = lshr i32 %138, 3
  %idx.neg.i.i578.i.i.i = sub nsw i32 0, %shr.i.i577.i.i.i
  %add.ptr.i.i579.i.i.i = getelementptr i8, ptr %140, i32 %idx.neg.i.i578.i.i.i
  %141 = ptrtoint ptr %ptr.i.i540.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %add.ptr.i.i579.i.i.i, ptr %ptr.i.i540.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %138, 7
  %142 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %and.i.i.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4
  %143 = ptrtoint ptr %add.ptr.i.i579.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %add.ptr.i.i579.i.i.i, align 1
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #9
  %146 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %seqState.i.i.i, align 4
  br label %BIT_reloadDStream.exit.i.i.i

if.end3.i.i.i.i:                                  ; preds = %if.end.i576.i.i.i
  %147 = ptrtoint ptr %start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %start.i.i.i.i, align 4
  %cmp5.i.i.i.i = icmp eq ptr %140, %148
  br i1 %cmp5.i.i.i.i, label %if.end3.i.i.i.i.BIT_reloadDStream.exit.i.i.i_crit_edge, label %if.end11.i.i.i.i

if.end3.i.i.i.i.BIT_reloadDStream.exit.i.i.i_crit_edge: ; preds = %if.end3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit.i.i.i

if.end11.i.i.i.i:                                 ; preds = %if.end3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i.i = lshr i32 %138, 3
  %idx.neg.i581.i.i.i = sub nsw i32 0, %shr.i.i.i.i
  %add.ptr.i582.i.i.i = getelementptr i8, ptr %140, i32 %idx.neg.i581.i.i.i
  %cmp15.i.i.i.i = icmp ult ptr %add.ptr.i582.i.i.i, %148
  %sub.ptr.lhs.cast.i583.i.i.i = ptrtoint ptr %140 to i32
  %sub.ptr.rhs.cast.i584.i.i.i = ptrtoint ptr %148 to i32
  %sub.ptr.sub.i585.i.i.i = sub i32 %sub.ptr.lhs.cast.i583.i.i.i, %sub.ptr.rhs.cast.i584.i.i.i
  %nbBytes.0.i.i.i.i = select i1 %cmp15.i.i.i.i, i32 %sub.ptr.sub.i585.i.i.i, i32 %shr.i.i.i.i
  %idx.neg21.i.i.i.i = sub i32 0, %nbBytes.0.i.i.i.i
  %add.ptr22.i.i.i.i = getelementptr i8, ptr %140, i32 %idx.neg21.i.i.i.i
  %149 = ptrtoint ptr %ptr.i.i540.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %add.ptr22.i.i.i.i, ptr %ptr.i.i540.i.i.i, align 4
  %mul.neg.i.i.i.i = mul i32 %nbBytes.0.i.i.i.i, -8
  %sub.i586.i.i.i = add i32 %mul.neg.i.i.i.i, %138
  %150 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %sub.i586.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4
  %151 = ptrtoint ptr %add.ptr22.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %151, i32 4)
  %152 = load i32, ptr %add.ptr22.i.i.i.i, align 1
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #9
  %154 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %seqState.i.i.i, align 4
  br label %BIT_reloadDStream.exit.i.i.i

BIT_reloadDStream.exit.i.i.i:                     ; preds = %if.end11.i.i.i.i, %if.end3.i.i.i.i.BIT_reloadDStream.exit.i.i.i_crit_edge, %BIT_reloadDStreamFast.exit.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %seqNb.0684.i.i.i, i32 %smax.i.i.i)
  %exitcond.not.i.i.i = icmp eq i32 %seqNb.0684.i.i.i, %smax.i.i.i
  br i1 %exitcond.not.i.i.i, label %BIT_reloadDStream.exit.i.i.i.for.cond38thread-pre-split.i.i.i_crit_edge, label %for.body24.i.i.i

BIT_reloadDStream.exit.i.i.i.for.cond38thread-pre-split.i.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond38thread-pre-split.i.i.i

for.body24.i.i.i:                                 ; preds = %BIT_reloadDStream.exit.i.i.i
  %arrayidx25.i.i.i = getelementptr [4 x %struct.seq_t], ptr %sequences.i.i.i, i32 0, i32 %seqNb.0684.i.i.i
  %155 = ptrtoint ptr %stateLL.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %stateLL.i.i.i, align 4, !noalias !35
  %arrayidx.i.i.i.i = getelementptr %struct.ZSTD_seqSymbol, ptr %add.ptr.i489.i.i.i, i32 %156
  %157 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %llDInfo.sroa.0.0.copyload.i.i.i.i = load i32, ptr %arrayidx.i.i.i.i, align 4, !noalias !35
  %llDInfo.sroa.0.sroa.5.0.extract.shift.i.i.i.i = lshr i32 %llDInfo.sroa.0.0.copyload.i.i.i.i, 8
  %llDInfo.sroa.8.0.arrayidx.sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i.i.i, i32 4
  %158 = ptrtoint ptr %llDInfo.sroa.8.0.arrayidx.sroa_idx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %llDInfo.sroa.8.0.copyload.i.i.i.i = load i32, ptr %llDInfo.sroa.8.0.arrayidx.sroa_idx.i.i.i.i, align 4, !noalias !35
  %159 = ptrtoint ptr %stateML.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %stateML.i.i.i, align 4, !noalias !35
  %arrayidx5.i.i.i.i = getelementptr %struct.ZSTD_seqSymbol, ptr %137, i32 %160
  %161 = ptrtoint ptr %arrayidx5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %mlDInfo.sroa.0.0.copyload.i.i.i.i = load i32, ptr %arrayidx5.i.i.i.i, align 4, !noalias !35
  %mlDInfo.sroa.0.sroa.5.0.extract.shift.i.i.i.i = lshr i32 %mlDInfo.sroa.0.0.copyload.i.i.i.i, 8
  %mlDInfo.sroa.8.0.arrayidx5.sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %arrayidx5.i.i.i.i, i32 4
  %162 = ptrtoint ptr %mlDInfo.sroa.8.0.arrayidx5.sroa_idx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %mlDInfo.sroa.8.0.copyload.i.i.i.i = load i32, ptr %mlDInfo.sroa.8.0.arrayidx5.sroa_idx.i.i.i.i, align 4, !noalias !35
  %163 = ptrtoint ptr %stateOffb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %stateOffb.i.i.i, align 4, !noalias !35
  %arrayidx9.i.i.i.i = getelementptr %struct.ZSTD_seqSymbol, ptr %add.ptr.i528.i.i.i, i32 %164
  %165 = ptrtoint ptr %arrayidx9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %ofDInfo.sroa.0.0.copyload.i.i.i.i = load i32, ptr %arrayidx9.i.i.i.i, align 4, !noalias !35
  %ofDInfo.sroa.0.sroa.5.0.extract.shift.i.i.i.i = lshr i32 %ofDInfo.sroa.0.0.copyload.i.i.i.i, 8
  %ofDInfo.sroa.8.0.arrayidx9.sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %arrayidx9.i.i.i.i, i32 4
  %166 = ptrtoint ptr %ofDInfo.sroa.8.0.arrayidx9.sroa_idx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %ofDInfo.sroa.8.0.copyload.i.i.i.i = load i32, ptr %ofDInfo.sroa.8.0.arrayidx9.sroa_idx.i.i.i.i, align 4, !noalias !35
  %conv.i.i.i.i = and i32 %llDInfo.sroa.0.sroa.5.0.extract.shift.i.i.i.i, 255
  %conv14.i.i.i.i = and i32 %mlDInfo.sroa.0.sroa.5.0.extract.shift.i.i.i.i, 255
  %add.i.i.i.i = add nuw nsw i32 %conv14.i.i.i.i, %conv.i.i.i.i
  %conv15.i.i.i.i = and i32 %ofDInfo.sroa.0.sroa.5.0.extract.shift.i.i.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv15.i.i.i.i)
  %cmp.i.i.i.i = icmp ugt i32 %conv15.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.else67.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body24.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %conv15.i.i.i.i)
  %cmp23.i.i.i.i = icmp ugt i32 %conv15.i.i.i.i, 24
  %or.cond.i.i.i.i = select i1 %tobool20.not.i.i.i.i, i1 %cmp23.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %if.then25.i.i.i.i, label %if.else.i.i.i.i

if.then25.i.i.i.i:                                ; preds = %if.then.i.i.i.i
  %167 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  %sub.i.i.i.i = sub i32 32, %168
  %169 = tail call i32 @llvm.umin.i32(i32 %conv15.i.i.i.i, i32 %sub.i.i.i.i) #9
  %sub34.i.i.i.i = sub nsw i32 %conv15.i.i.i.i, %169
  %170 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %seqState.i.i.i, align 4, !noalias !35
  %and.i.i.i.i.i.i = and i32 %168, 31
  %shl.i.i.i.i.i.i = shl i32 %171, %and.i.i.i.i.i.i
  %sub.i.i.i.i.i.i = sub nsw i32 0, %169
  %and1.i.i.i.i.i.i = and i32 %sub.i.i.i.i.i.i, 31
  %shr.i.i.i.i.i.i = lshr i32 %shl.i.i.i.i.i.i, %and1.i.i.i.i.i.i
  %add.i.i.i.i.i.i = add i32 %169, %168
  %172 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %add.i.i.i.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  %shl.i.i.i.i = shl i32 %shr.i.i.i.i.i.i, %sub34.i.i.i.i
  %add39.i.i.i.i = add i32 %shl.i.i.i.i, %ofDInfo.sroa.8.0.copyload.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ugt i32 %add.i.i.i.i.i.i, 32
  br i1 %cmp.i.i.i.i.i, label %if.then25.i.i.i.i.BIT_reloadDStream.exit.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i

if.then25.i.i.i.i.BIT_reloadDStream.exit.i.i.i.i_crit_edge: ; preds = %if.then25.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then25.i.i.i.i
  %173 = ptrtoint ptr %ptr.i.i540.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ptr.i.i540.i.i.i, align 4, !noalias !35
  %175 = ptrtoint ptr %limitPtr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %limitPtr.i.i.i.i, align 4, !noalias !35
  %cmp1.not.i.i.i.i.i = icmp ult ptr %174, %176
  br i1 %cmp1.not.i.i.i.i.i, label %if.end3.i.i.i.i.i, label %BIT_reloadDStreamFast.exit.i.i.i.i.i

BIT_reloadDStreamFast.exit.i.i.i.i.i:             ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i309.i.i.i.i = lshr i32 %add.i.i.i.i.i.i, 3
  %idx.neg.i.i.i.i.i.i = sub nsw i32 0, %shr.i.i309.i.i.i.i
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %174, i32 %idx.neg.i.i.i.i.i.i
  %177 = ptrtoint ptr %ptr.i.i540.i.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %add.ptr.i.i.i.i.i.i, ptr %ptr.i.i540.i.i.i, align 4, !noalias !35
  %and.i.i310.i.i.i.i = and i32 %add.i.i.i.i.i.i, 7
  br label %BIT_reloadDStream.exit.sink.split.i.i.i.i

if.end3.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i.i
  %178 = ptrtoint ptr %start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %start.i.i.i.i, align 4, !noalias !35
  %cmp5.i.i.i.i.i = icmp eq ptr %174, %179
  br i1 %cmp5.i.i.i.i.i, label %if.end3.i.i.i.i.i.BIT_reloadDStream.exit.i.i.i.i_crit_edge, label %if.end11.i.i.i.i.i

if.end3.i.i.i.i.i.BIT_reloadDStream.exit.i.i.i.i_crit_edge: ; preds = %if.end3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit.i.i.i.i

if.end11.i.i.i.i.i:                               ; preds = %if.end3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i.i.i = lshr i32 %add.i.i.i.i.i.i, 3
  %idx.neg.i.i.i.i.i = sub nsw i32 0, %shr.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %174, i32 %idx.neg.i.i.i.i.i
  %cmp15.i.i.i.i.i = icmp ult ptr %add.ptr.i.i.i.i.i, %179
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %174 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %179 to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %nbBytes.0.i.i.i.i.i = select i1 %cmp15.i.i.i.i.i, i32 %sub.ptr.sub.i.i.i.i.i, i32 %shr.i.i.i.i.i
  %idx.neg21.i.i.i.i.i = sub i32 0, %nbBytes.0.i.i.i.i.i
  %add.ptr22.i.i.i.i.i = getelementptr i8, ptr %174, i32 %idx.neg21.i.i.i.i.i
  %180 = ptrtoint ptr %ptr.i.i540.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %add.ptr22.i.i.i.i.i, ptr %ptr.i.i540.i.i.i, align 4, !noalias !35
  %mul.neg.i.i.i.i.i = mul i32 %nbBytes.0.i.i.i.i.i, -8
  %sub.i.i.i.i.i = add i32 %mul.neg.i.i.i.i.i, %add.i.i.i.i.i.i
  br label %BIT_reloadDStream.exit.sink.split.i.i.i.i

BIT_reloadDStream.exit.sink.split.i.i.i.i:        ; preds = %if.end11.i.i.i.i.i, %BIT_reloadDStreamFast.exit.i.i.i.i.i
  %and.i.i310.sink.i.i.i.i = phi i32 [ %and.i.i310.i.i.i.i, %BIT_reloadDStreamFast.exit.i.i.i.i.i ], [ %sub.i.i.i.i.i, %if.end11.i.i.i.i.i ]
  %add.ptr.i.i.sink.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i, %BIT_reloadDStreamFast.exit.i.i.i.i.i ], [ %add.ptr22.i.i.i.i.i, %if.end11.i.i.i.i.i ]
  %181 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %and.i.i310.sink.i.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  %182 = ptrtoint ptr %add.ptr.i.i.sink.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %182, i32 4)
  %183 = load i32, ptr %add.ptr.i.i.sink.i.i.i.i, align 1, !noalias !35
  %184 = tail call i32 @llvm.bswap.i32(i32 %183) #9
  %185 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %seqState.i.i.i, align 4, !noalias !35
  br label %BIT_reloadDStream.exit.i.i.i.i

BIT_reloadDStream.exit.i.i.i.i:                   ; preds = %BIT_reloadDStream.exit.sink.split.i.i.i.i, %if.end3.i.i.i.i.i.BIT_reloadDStream.exit.i.i.i.i_crit_edge, %if.then25.i.i.i.i.BIT_reloadDStream.exit.i.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15.i.i.i.i, i32 %sub.i.i.i.i)
  %tobool42.not.not.i.i.i.i = icmp ugt i32 %conv15.i.i.i.i, %sub.i.i.i.i
  br i1 %tobool42.not.not.i.i.i.i, label %if.then43.i.i.i.i, label %BIT_reloadDStream.exit.i.i.i.i.if.end57.i.i.i.i_crit_edge

BIT_reloadDStream.exit.i.i.i.i.if.end57.i.i.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i.i.i.i

if.then43.i.i.i.i:                                ; preds = %BIT_reloadDStream.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %186 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %seqState.i.i.i, align 4, !noalias !35
  %188 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  %and.i.i312.i.i.i.i = and i32 %189, 31
  %shl.i.i313.i.i.i.i = shl i32 %187, %and.i.i312.i.i.i.i
  %sub.i.i314.i.i.i.i = sub nsw i32 0, %sub34.i.i.i.i
  %and1.i.i315.i.i.i.i = and i32 %sub.i.i314.i.i.i.i, 31
  %shr.i.i316.i.i.i.i = lshr i32 %shl.i.i313.i.i.i.i, %and1.i.i315.i.i.i.i
  %add.i.i317.i.i.i.i = add i32 %189, %sub34.i.i.i.i
  store i32 %add.i.i317.i.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  %add46.i.i.i.i = add i32 %shr.i.i316.i.i.i.i, %add39.i.i.i.i
  br label %if.end57.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i.i.i.i
  %190 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %seqState.i.i.i, align 4, !noalias !35
  %192 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  %and.i.i319.i.i.i.i = and i32 %193, 31
  %shl.i.i320.i.i.i.i = shl i32 %191, %and.i.i319.i.i.i.i
  %sub.i.i321.i.i.i.i = sub nsw i32 0, %ofDInfo.sroa.0.sroa.5.0.extract.shift.i.i.i.i
  %and1.i.i322.i.i.i.i = and i32 %sub.i.i321.i.i.i.i, 31
  %shr.i.i323.i.i.i.i = lshr i32 %shl.i.i320.i.i.i.i, %and1.i.i322.i.i.i.i
  %add.i.i324.i.i.i.i = add i32 %193, %conv15.i.i.i.i
  store i32 %add.i.i324.i.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  %add50.i.i.i.i = add i32 %shr.i.i323.i.i.i.i, %ofDInfo.sroa.8.0.copyload.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i.i324.i.i.i.i)
  %cmp.i326.i.i.i.i = icmp ugt i32 %add.i.i324.i.i.i.i, 32
  br i1 %cmp.i326.i.i.i.i, label %if.else.i.i.i.i.if.end57.i.i.i.i_crit_edge, label %if.end.i330.i.i.i.i

if.else.i.i.i.i.if.end57.i.i.i.i_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i.i.i.i

if.end.i330.i.i.i.i:                              ; preds = %if.else.i.i.i.i
  %194 = ptrtoint ptr %ptr.i.i540.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %ptr.i.i540.i.i.i, align 4, !noalias !35
  %196 = ptrtoint ptr %limitPtr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %limitPtr.i.i.i.i, align 4, !noalias !35
  %cmp1.not.i329.i.i.i.i = icmp ult ptr %195, %197
  br i1 %cmp1.not.i329.i.i.i.i, label %if.end3.i338.i.i.i.i, label %BIT_reloadDStreamFast.exit.i335.i.i.i.i

BIT_reloadDStreamFast.exit.i335.i.i.i.i:          ; preds = %if.end.i330.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i331.i.i.i.i = lshr i32 %add.i.i324.i.i.i.i, 3
  %idx.neg.i.i332.i.i.i.i = sub nsw i32 0, %shr.i.i331.i.i.i.i
  %add.ptr.i.i333.i.i.i.i = getelementptr i8, ptr %195, i32 %idx.neg.i.i332.i.i.i.i
  %198 = ptrtoint ptr %ptr.i.i540.i.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %add.ptr.i.i333.i.i.i.i, ptr %ptr.i.i540.i.i.i, align 4, !noalias !35
  %and.i.i334.i.i.i.i = and i32 %add.i.i324.i.i.i.i, 7
  %199 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %and.i.i334.i.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  %200 = ptrtoint ptr %add.ptr.i.i333.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %200, i32 4)
  %201 = load i32, ptr %add.ptr.i.i333.i.i.i.i, align 1, !noalias !35
  %202 = tail call i32 @llvm.bswap.i32(i32 %201) #9
  %203 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %seqState.i.i.i, align 4, !noalias !35
  br label %if.end57.i.i.i.i

if.end3.i338.i.i.i.i:                             ; preds = %if.end.i330.i.i.i.i
  %204 = ptrtoint ptr %start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %start.i.i.i.i, align 4, !noalias !35
  %cmp5.i337.i.i.i.i = icmp eq ptr %195, %205
  br i1 %cmp5.i337.i.i.i.i, label %if.end3.i338.i.i.i.i.if.end57.i.i.i.i_crit_edge, label %if.end11.i355.i.i.i.i

if.end3.i338.i.i.i.i.if.end57.i.i.i.i_crit_edge:  ; preds = %if.end3.i338.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i.i.i.i

if.end11.i355.i.i.i.i:                            ; preds = %if.end3.i338.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i342.i.i.i.i = lshr i32 %add.i.i324.i.i.i.i, 3
  %idx.neg.i343.i.i.i.i = sub nsw i32 0, %shr.i342.i.i.i.i
  %add.ptr.i344.i.i.i.i = getelementptr i8, ptr %195, i32 %idx.neg.i343.i.i.i.i
  %cmp15.i345.i.i.i.i = icmp ult ptr %add.ptr.i344.i.i.i.i, %205
  %sub.ptr.lhs.cast.i346.i.i.i.i = ptrtoint ptr %195 to i32
  %sub.ptr.rhs.cast.i347.i.i.i.i = ptrtoint ptr %205 to i32
  %sub.ptr.sub.i348.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i346.i.i.i.i, %sub.ptr.rhs.cast.i347.i.i.i.i
  %nbBytes.0.i349.i.i.i.i = select i1 %cmp15.i345.i.i.i.i, i32 %sub.ptr.sub.i348.i.i.i.i, i32 %shr.i342.i.i.i.i
  %idx.neg21.i351.i.i.i.i = sub i32 0, %nbBytes.0.i349.i.i.i.i
  %add.ptr22.i352.i.i.i.i = getelementptr i8, ptr %195, i32 %idx.neg21.i351.i.i.i.i
  %206 = ptrtoint ptr %ptr.i.i540.i.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %add.ptr22.i352.i.i.i.i, ptr %ptr.i.i540.i.i.i, align 4, !noalias !35
  %mul.neg.i353.i.i.i.i = mul i32 %nbBytes.0.i349.i.i.i.i, -8
  %sub.i354.i.i.i.i = add i32 %mul.neg.i353.i.i.i.i, %add.i.i324.i.i.i.i
  %207 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %sub.i354.i.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  %208 = ptrtoint ptr %add.ptr22.i352.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %208, i32 4)
  %209 = load i32, ptr %add.ptr22.i352.i.i.i.i, align 1, !noalias !35
  %210 = tail call i32 @llvm.bswap.i32(i32 %209) #9
  %211 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %seqState.i.i.i, align 4, !noalias !35
  br label %if.end57.i.i.i.i

if.end57.i.i.i.i:                                 ; preds = %if.end11.i355.i.i.i.i, %if.end3.i338.i.i.i.i.if.end57.i.i.i.i_crit_edge, %BIT_reloadDStreamFast.exit.i335.i.i.i.i, %if.else.i.i.i.i.if.end57.i.i.i.i_crit_edge, %if.then43.i.i.i.i, %BIT_reloadDStream.exit.i.i.i.i.if.end57.i.i.i.i_crit_edge
  %offset.1.i.i.i.i = phi i32 [ %add46.i.i.i.i, %if.then43.i.i.i.i ], [ %add39.i.i.i.i, %BIT_reloadDStream.exit.i.i.i.i.if.end57.i.i.i.i_crit_edge ], [ %add50.i.i.i.i, %if.else.i.i.i.i.if.end57.i.i.i.i_crit_edge ], [ %add50.i.i.i.i, %BIT_reloadDStreamFast.exit.i335.i.i.i.i ], [ %add50.i.i.i.i, %if.end11.i355.i.i.i.i ], [ %add50.i.i.i.i, %if.end3.i338.i.i.i.i.if.end57.i.i.i.i_crit_edge ]
  %212 = ptrtoint ptr %arrayidx115.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx115.i.i.i.i, align 4, !noalias !35
  %214 = ptrtoint ptr %arrayidx117.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %arrayidx117.i.i.i.i, align 4, !noalias !35
  %215 = ptrtoint ptr %uglygep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %uglygep.i.i.i, align 4, !noalias !35
  store i32 %216, ptr %arrayidx115.i.i.i.i, align 4, !noalias !35
  store i32 %offset.1.i.i.i.i, ptr %uglygep.i.i.i, align 4, !noalias !35
  br label %if.end126.i.i.i.i

if.else67.i.i.i.i:                                ; preds = %for.body24.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %llDInfo.sroa.8.0.copyload.i.i.i.i)
  %cmp68.i.i.i.i = icmp eq i32 %llDInfo.sroa.8.0.copyload.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15.i.i.i.i)
  %cmp71.i.i.i.i = icmp eq i32 %conv15.i.i.i.i, 0
  br i1 %cmp71.i.i.i.i, label %if.then74.i.i.i.i, label %if.else91.i.i.i.i, !prof !38

if.then74.i.i.i.i:                                ; preds = %if.else67.i.i.i.i
  br i1 %cmp68.i.i.i.i, label %if.else81.i.i.i.i, label %if.then78.i.i.i.i, !prof !39

if.then78.i.i.i.i:                                ; preds = %if.then74.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %217 = ptrtoint ptr %uglygep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %uglygep.i.i.i, align 4, !noalias !35
  br label %if.end126.i.i.i.i

if.else81.i.i.i.i:                                ; preds = %if.then74.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %219 = ptrtoint ptr %arrayidx115.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx115.i.i.i.i, align 4, !noalias !35
  %221 = ptrtoint ptr %uglygep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %uglygep.i.i.i, align 4, !noalias !35
  store i32 %222, ptr %arrayidx115.i.i.i.i, align 4, !noalias !35
  store i32 %220, ptr %uglygep.i.i.i, align 4, !noalias !35
  br label %if.end126.i.i.i.i

if.else91.i.i.i.i:                                ; preds = %if.else67.i.i.i.i
  %conv69.i.i.i.i = zext i1 %cmp68.i.i.i.i to i32
  %add92.i.i.i.i = add i32 %ofDInfo.sroa.8.0.copyload.i.i.i.i, %conv69.i.i.i.i
  %223 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %seqState.i.i.i, align 4, !noalias !35
  %225 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  %and.i.i359.i.i.i.i = and i32 %226, 31
  %shl.i.i360.i.i.i.i = shl i32 %224, %and.i.i359.i.i.i.i
  %shr.i.i361.i.i.i.i = lshr i32 %shl.i.i360.i.i.i.i, 31
  %add.i.i362.i.i.i.i = add i32 %226, 1
  store i32 %add.i.i362.i.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  %add95.i.i.i.i = add i32 %add92.i.i.i.i, %shr.i.i361.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add95.i.i.i.i)
  %cmp96.i.i.i.i = icmp eq i32 %add95.i.i.i.i, 3
  br i1 %cmp96.i.i.i.i, label %cond.end105.thread.i.i.i.i, label %cond.end105.i.i.i.i

cond.end105.thread.i.i.i.i:                       ; preds = %if.else91.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %227 = ptrtoint ptr %uglygep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %uglygep.i.i.i, align 4, !noalias !35
  %sub101.i.i.i.i = add i32 %228, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub101.i.i.i.i)
  %tobool107.not477.i.i.i.i = icmp eq i32 %sub101.i.i.i.i, 0
  %lnot.ext109478.i.i.i.i = zext i1 %tobool107.not477.i.i.i.i to i32
  %add110479.i.i.i.i = add i32 %sub101.i.i.i.i, %lnot.ext109478.i.i.i.i
  br label %if.then113.i.i.i.i

cond.end105.i.i.i.i:                              ; preds = %if.else91.i.i.i.i
  %arrayidx104.i.i.i.i = getelementptr %struct.seqState_t, ptr %seqState.i.i.i, i32 0, i32 4, i32 %add95.i.i.i.i
  %229 = ptrtoint ptr %arrayidx104.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx104.i.i.i.i, align 4, !noalias !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool107.not.i.i.i.i = icmp eq i32 %230, 0
  %lnot.ext109.i.i.i.i = zext i1 %tobool107.not.i.i.i.i to i32
  %add110.i.i.i.i = add i32 %230, %lnot.ext109.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add95.i.i.i.i)
  %cmp111.not.i.i.i.i = icmp eq i32 %add95.i.i.i.i, 1
  br i1 %cmp111.not.i.i.i.i, label %cond.end105.i.i.i.i.if.end118.i.i.i.i_crit_edge, label %cond.end105.i.i.i.i.if.then113.i.i.i.i_crit_edge

cond.end105.i.i.i.i.if.then113.i.i.i.i_crit_edge: ; preds = %cond.end105.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then113.i.i.i.i

cond.end105.i.i.i.i.if.end118.i.i.i.i_crit_edge:  ; preds = %cond.end105.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118.i.i.i.i

if.then113.i.i.i.i:                               ; preds = %cond.end105.i.i.i.i.if.then113.i.i.i.i_crit_edge, %cond.end105.thread.i.i.i.i
  %add110481.i.i.i.i = phi i32 [ %add110479.i.i.i.i, %cond.end105.thread.i.i.i.i ], [ %add110.i.i.i.i, %cond.end105.i.i.i.i.if.then113.i.i.i.i_crit_edge ]
  %231 = ptrtoint ptr %arrayidx115.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx115.i.i.i.i, align 4, !noalias !35
  %233 = ptrtoint ptr %arrayidx117.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %arrayidx117.i.i.i.i, align 4, !noalias !35
  br label %if.end118.i.i.i.i

if.end118.i.i.i.i:                                ; preds = %if.then113.i.i.i.i, %cond.end105.i.i.i.i.if.end118.i.i.i.i_crit_edge
  %add110482.i.i.i.i = phi i32 [ %add110481.i.i.i.i, %if.then113.i.i.i.i ], [ %add110.i.i.i.i, %cond.end105.i.i.i.i.if.end118.i.i.i.i_crit_edge ]
  %234 = ptrtoint ptr %uglygep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %uglygep.i.i.i, align 4, !noalias !35
  %236 = ptrtoint ptr %arrayidx115.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %arrayidx115.i.i.i.i, align 4, !noalias !35
  store i32 %add110482.i.i.i.i, ptr %uglygep.i.i.i, align 4, !noalias !35
  br label %if.end126.i.i.i.i

if.end126.i.i.i.i:                                ; preds = %if.end118.i.i.i.i, %if.else81.i.i.i.i, %if.then78.i.i.i.i, %if.end57.i.i.i.i
  %offset.3.i.i.i.i = phi i32 [ %offset.1.i.i.i.i, %if.end57.i.i.i.i ], [ %218, %if.then78.i.i.i.i ], [ %220, %if.else81.i.i.i.i ], [ %add110482.i.i.i.i, %if.end118.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv14.i.i.i.i)
  %cmp129.not.i.i.i.i = icmp eq i32 %conv14.i.i.i.i, 0
  br i1 %cmp129.not.i.i.i.i, label %if.end126.i.i.i.i.if.end137.i.i.i.i_crit_edge, label %if.then131.i.i.i.i

if.end126.i.i.i.i.if.end137.i.i.i.i_crit_edge:    ; preds = %if.end126.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137.i.i.i.i

if.then131.i.i.i.i:                               ; preds = %if.end126.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %237 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %seqState.i.i.i, align 4, !noalias !35
  %239 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  %and.i.i364.i.i.i.i = and i32 %240, 31
  %shl.i.i365.i.i.i.i = shl i32 %238, %and.i.i364.i.i.i.i
  %sub.i.i366.i.i.i.i = sub nsw i32 0, %mlDInfo.sroa.0.sroa.5.0.extract.shift.i.i.i.i
  %and1.i.i367.i.i.i.i = and i32 %sub.i.i366.i.i.i.i, 31
  %shr.i.i368.i.i.i.i = lshr i32 %shl.i.i365.i.i.i.i, %and1.i.i367.i.i.i.i
  %add.i.i369.i.i.i.i = add i32 %240, %conv14.i.i.i.i
  store i32 %add.i.i369.i.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  %add136.i.i.i.i = add i32 %shr.i.i368.i.i.i.i, %mlDInfo.sroa.8.0.copyload.i.i.i.i
  br label %if.end137.i.i.i.i

if.end137.i.i.i.i:                                ; preds = %if.then131.i.i.i.i, %if.end126.i.i.i.i.if.end137.i.i.i.i_crit_edge
  %tmp.sroa.7.1.i.i.i = phi i32 [ %mlDInfo.sroa.8.0.copyload.i.i.i.i, %if.end126.i.i.i.i.if.end137.i.i.i.i_crit_edge ], [ %add136.i.i.i.i, %if.then131.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %add.i.i.i.i)
  %cmp144.i.i.i.i = icmp ugt i32 %add.i.i.i.i, 19
  br i1 %cmp144.i.i.i.i, label %if.then146.i.i.i.i, label %if.end137.i.i.i.i.if.end149.i.i.i.i_crit_edge

if.end137.i.i.i.i.if.end149.i.i.i.i_crit_edge:    ; preds = %if.end137.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149.i.i.i.i

if.then146.i.i.i.i:                               ; preds = %if.end137.i.i.i.i
  %241 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %242)
  %cmp.i371.i.i.i.i = icmp ugt i32 %242, 32
  br i1 %cmp.i371.i.i.i.i, label %if.then146.i.i.i.i.if.end149.i.i.i.i_crit_edge, label %if.end.i375.i.i.i.i

if.then146.i.i.i.i.if.end149.i.i.i.i_crit_edge:   ; preds = %if.then146.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149.i.i.i.i

if.end.i375.i.i.i.i:                              ; preds = %if.then146.i.i.i.i
  %243 = ptrtoint ptr %ptr.i.i540.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %ptr.i.i540.i.i.i, align 4, !noalias !35
  %245 = ptrtoint ptr %limitPtr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %limitPtr.i.i.i.i, align 4, !noalias !35
  %cmp1.not.i374.i.i.i.i = icmp ult ptr %244, %246
  br i1 %cmp1.not.i374.i.i.i.i, label %if.end3.i383.i.i.i.i, label %BIT_reloadDStreamFast.exit.i380.i.i.i.i

BIT_reloadDStreamFast.exit.i380.i.i.i.i:          ; preds = %if.end.i375.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i376.i.i.i.i = lshr i32 %242, 3
  %idx.neg.i.i377.i.i.i.i = sub nsw i32 0, %shr.i.i376.i.i.i.i
  %add.ptr.i.i378.i.i.i.i = getelementptr i8, ptr %244, i32 %idx.neg.i.i377.i.i.i.i
  %247 = ptrtoint ptr %ptr.i.i540.i.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %add.ptr.i.i378.i.i.i.i, ptr %ptr.i.i540.i.i.i, align 4, !noalias !35
  %and.i.i379.i.i.i.i = and i32 %242, 7
  br label %if.end149.sink.split.i.i.i.i

if.end3.i383.i.i.i.i:                             ; preds = %if.end.i375.i.i.i.i
  %248 = ptrtoint ptr %start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %start.i.i.i.i, align 4, !noalias !35
  %cmp5.i382.i.i.i.i = icmp eq ptr %244, %249
  br i1 %cmp5.i382.i.i.i.i, label %if.end3.i383.i.i.i.i.if.end149.i.i.i.i_crit_edge, label %if.end11.i400.i.i.i.i

if.end3.i383.i.i.i.i.if.end149.i.i.i.i_crit_edge: ; preds = %if.end3.i383.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149.i.i.i.i

if.end11.i400.i.i.i.i:                            ; preds = %if.end3.i383.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i387.i.i.i.i = lshr i32 %242, 3
  %idx.neg.i388.i.i.i.i = sub nsw i32 0, %shr.i387.i.i.i.i
  %add.ptr.i389.i.i.i.i = getelementptr i8, ptr %244, i32 %idx.neg.i388.i.i.i.i
  %cmp15.i390.i.i.i.i = icmp ult ptr %add.ptr.i389.i.i.i.i, %249
  %sub.ptr.lhs.cast.i391.i.i.i.i = ptrtoint ptr %244 to i32
  %sub.ptr.rhs.cast.i392.i.i.i.i = ptrtoint ptr %249 to i32
  %sub.ptr.sub.i393.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i391.i.i.i.i, %sub.ptr.rhs.cast.i392.i.i.i.i
  %nbBytes.0.i394.i.i.i.i = select i1 %cmp15.i390.i.i.i.i, i32 %sub.ptr.sub.i393.i.i.i.i, i32 %shr.i387.i.i.i.i
  %idx.neg21.i396.i.i.i.i = sub i32 0, %nbBytes.0.i394.i.i.i.i
  %add.ptr22.i397.i.i.i.i = getelementptr i8, ptr %244, i32 %idx.neg21.i396.i.i.i.i
  %250 = ptrtoint ptr %ptr.i.i540.i.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %add.ptr22.i397.i.i.i.i, ptr %ptr.i.i540.i.i.i, align 4, !noalias !35
  %mul.neg.i398.i.i.i.i = mul i32 %nbBytes.0.i394.i.i.i.i, -8
  %sub.i399.i.i.i.i = add i32 %mul.neg.i398.i.i.i.i, %242
  br label %if.end149.sink.split.i.i.i.i

if.end149.sink.split.i.i.i.i:                     ; preds = %if.end11.i400.i.i.i.i, %BIT_reloadDStreamFast.exit.i380.i.i.i.i
  %sub.i399.sink.i.i.i.i = phi i32 [ %sub.i399.i.i.i.i, %if.end11.i400.i.i.i.i ], [ %and.i.i379.i.i.i.i, %BIT_reloadDStreamFast.exit.i380.i.i.i.i ]
  %add.ptr22.i397.sink.i.i.i.i = phi ptr [ %add.ptr22.i397.i.i.i.i, %if.end11.i400.i.i.i.i ], [ %add.ptr.i.i378.i.i.i.i, %BIT_reloadDStreamFast.exit.i380.i.i.i.i ]
  %251 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %sub.i399.sink.i.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  %252 = ptrtoint ptr %add.ptr22.i397.sink.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %252, i32 4)
  %253 = load i32, ptr %add.ptr22.i397.sink.i.i.i.i, align 1, !noalias !35
  %254 = tail call i32 @llvm.bswap.i32(i32 %253) #9
  %255 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %254, ptr %seqState.i.i.i, align 4, !noalias !35
  br label %if.end149.i.i.i.i

if.end149.i.i.i.i:                                ; preds = %if.end149.sink.split.i.i.i.i, %if.end3.i383.i.i.i.i.if.end149.i.i.i.i_crit_edge, %if.then146.i.i.i.i.if.end149.i.i.i.i_crit_edge, %if.end137.i.i.i.i.if.end149.i.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i.i)
  %cmp163.not.i.i.i.i = icmp eq i32 %conv.i.i.i.i, 0
  br i1 %cmp163.not.i.i.i.i, label %if.end171.ithread-pre-split.i.i.i, label %if.then165.i.i.i.i

if.then165.i.i.i.i:                               ; preds = %if.end149.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %256 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %seqState.i.i.i, align 4, !noalias !35
  %258 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  %and.i.i404.i.i.i.i = and i32 %259, 31
  %shl.i.i405.i.i.i.i = shl i32 %257, %and.i.i404.i.i.i.i
  %sub.i.i406.i.i.i.i = sub nsw i32 0, %llDInfo.sroa.0.sroa.5.0.extract.shift.i.i.i.i
  %and1.i.i407.i.i.i.i = and i32 %sub.i.i406.i.i.i.i, 31
  %shr.i.i408.i.i.i.i = lshr i32 %shl.i.i405.i.i.i.i, %and1.i.i407.i.i.i.i
  %add.i.i409.i.i.i.i = add i32 %259, %conv.i.i.i.i
  store i32 %add.i.i409.i.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  %add170.i.i.i.i = add i32 %shr.i.i408.i.i.i.i, %llDInfo.sroa.8.0.copyload.i.i.i.i
  br label %if.end171.i.i.i.i

if.end171.ithread-pre-split.i.i.i:                ; preds = %if.end149.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %260 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %.pr.i.i.i = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  br label %if.end171.i.i.i.i

if.end171.i.i.i.i:                                ; preds = %if.end171.ithread-pre-split.i.i.i, %if.then165.i.i.i.i
  %261 = phi i32 [ %.pr.i.i.i, %if.end171.ithread-pre-split.i.i.i ], [ %add.i.i409.i.i.i.i, %if.then165.i.i.i.i ]
  %tmp.sroa.0.1.i.i.i = phi i32 [ %llDInfo.sroa.8.0.copyload.i.i.i.i, %if.end171.ithread-pre-split.i.i.i ], [ %add170.i.i.i.i, %if.then165.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %261)
  %cmp.i411.i.i.i.i = icmp ugt i32 %261, 32
  br i1 %cmp.i411.i.i.i.i, label %if.end171.i.i.i.i.BIT_reloadDStream.exit442.i.i.i.i_crit_edge, label %if.end.i415.i.i.i.i

if.end171.i.i.i.i.BIT_reloadDStream.exit442.i.i.i.i_crit_edge: ; preds = %if.end171.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit442.i.i.i.i

if.end.i415.i.i.i.i:                              ; preds = %if.end171.i.i.i.i
  %262 = ptrtoint ptr %ptr.i.i540.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %ptr.i.i540.i.i.i, align 4, !noalias !35
  %264 = ptrtoint ptr %limitPtr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %limitPtr.i.i.i.i, align 4, !noalias !35
  %cmp1.not.i414.i.i.i.i = icmp ult ptr %263, %265
  br i1 %cmp1.not.i414.i.i.i.i, label %if.end3.i423.i.i.i.i, label %BIT_reloadDStreamFast.exit.i420.i.i.i.i

BIT_reloadDStreamFast.exit.i420.i.i.i.i:          ; preds = %if.end.i415.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i416.i.i.i.i = lshr i32 %261, 3
  %idx.neg.i.i417.i.i.i.i = sub nsw i32 0, %shr.i.i416.i.i.i.i
  %add.ptr.i.i418.i.i.i.i = getelementptr i8, ptr %263, i32 %idx.neg.i.i417.i.i.i.i
  %266 = ptrtoint ptr %ptr.i.i540.i.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %add.ptr.i.i418.i.i.i.i, ptr %ptr.i.i540.i.i.i, align 4, !noalias !35
  %and.i.i419.i.i.i.i = and i32 %261, 7
  br label %BIT_reloadDStream.exit442.sink.split.i.i.i.i

if.end3.i423.i.i.i.i:                             ; preds = %if.end.i415.i.i.i.i
  %267 = ptrtoint ptr %start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %start.i.i.i.i, align 4, !noalias !35
  %cmp5.i422.i.i.i.i = icmp eq ptr %263, %268
  br i1 %cmp5.i422.i.i.i.i, label %if.end3.i423.i.i.i.i.BIT_reloadDStream.exit442.i.i.i.i_crit_edge, label %if.end11.i440.i.i.i.i

if.end3.i423.i.i.i.i.BIT_reloadDStream.exit442.i.i.i.i_crit_edge: ; preds = %if.end3.i423.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit442.i.i.i.i

if.end11.i440.i.i.i.i:                            ; preds = %if.end3.i423.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i427.i.i.i.i = lshr i32 %261, 3
  %idx.neg.i428.i.i.i.i = sub nsw i32 0, %shr.i427.i.i.i.i
  %add.ptr.i429.i.i.i.i = getelementptr i8, ptr %263, i32 %idx.neg.i428.i.i.i.i
  %cmp15.i430.i.i.i.i = icmp ult ptr %add.ptr.i429.i.i.i.i, %268
  %sub.ptr.lhs.cast.i431.i.i.i.i = ptrtoint ptr %263 to i32
  %sub.ptr.rhs.cast.i432.i.i.i.i = ptrtoint ptr %268 to i32
  %sub.ptr.sub.i433.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i431.i.i.i.i, %sub.ptr.rhs.cast.i432.i.i.i.i
  %nbBytes.0.i434.i.i.i.i = select i1 %cmp15.i430.i.i.i.i, i32 %sub.ptr.sub.i433.i.i.i.i, i32 %shr.i427.i.i.i.i
  %idx.neg21.i436.i.i.i.i = sub i32 0, %nbBytes.0.i434.i.i.i.i
  %add.ptr22.i437.i.i.i.i = getelementptr i8, ptr %263, i32 %idx.neg21.i436.i.i.i.i
  %269 = ptrtoint ptr %ptr.i.i540.i.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %add.ptr22.i437.i.i.i.i, ptr %ptr.i.i540.i.i.i, align 4, !noalias !35
  %mul.neg.i438.i.i.i.i = mul i32 %nbBytes.0.i434.i.i.i.i, -8
  %sub.i439.i.i.i.i = add i32 %mul.neg.i438.i.i.i.i, %261
  br label %BIT_reloadDStream.exit442.sink.split.i.i.i.i

BIT_reloadDStream.exit442.sink.split.i.i.i.i:     ; preds = %if.end11.i440.i.i.i.i, %BIT_reloadDStreamFast.exit.i420.i.i.i.i
  %and.i.i419.sink.i.i.i.i = phi i32 [ %and.i.i419.i.i.i.i, %BIT_reloadDStreamFast.exit.i420.i.i.i.i ], [ %sub.i439.i.i.i.i, %if.end11.i440.i.i.i.i ]
  %add.ptr.i.i418.sink.i.i.i.i = phi ptr [ %add.ptr.i.i418.i.i.i.i, %BIT_reloadDStreamFast.exit.i420.i.i.i.i ], [ %add.ptr22.i437.i.i.i.i, %if.end11.i440.i.i.i.i ]
  %270 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %and.i.i419.sink.i.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  %271 = ptrtoint ptr %add.ptr.i.i418.sink.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %271, i32 4)
  %272 = load i32, ptr %add.ptr.i.i418.sink.i.i.i.i, align 1, !noalias !35
  %273 = tail call i32 @llvm.bswap.i32(i32 %272) #9
  %274 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %273, ptr %seqState.i.i.i, align 4, !noalias !35
  br label %BIT_reloadDStream.exit442.i.i.i.i

BIT_reloadDStream.exit442.i.i.i.i:                ; preds = %BIT_reloadDStream.exit442.sink.split.i.i.i.i, %if.end3.i423.i.i.i.i.BIT_reloadDStream.exit442.i.i.i.i_crit_edge, %if.end171.i.i.i.i.BIT_reloadDStream.exit442.i.i.i.i_crit_edge
  %275 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %pos.i.i.i, align 4, !noalias !35
  %add183.i.i.i.i = add i32 %276, %tmp.sroa.0.1.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.3.i.i.i.i, i32 %add183.i.i.i.i)
  %cmp185.i.i.i.i = icmp ugt i32 %offset.3.i.i.i.i, %add183.i.i.i.i
  %277 = ptrtoint ptr %dictEnd9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %dictEnd9.val673.i.i.i = load ptr, ptr %dictEnd9.i.i.i, align 4
  %278 = ptrtoint ptr %prefixStart8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %prefixStart8.val674.i.i.i = load ptr, ptr %prefixStart8.i.i.i, align 4
  %cond190.i.i.i.i = select i1 %cmp185.i.i.i.i, ptr %dictEnd9.val673.i.i.i, ptr %prefixStart8.val674.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %cond190.i.i.i.i, i32 %add183.i.i.i.i
  %idx.neg.i.i.i.i = sub i32 0, %offset.3.i.i.i.i
  %add.ptr192.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %idx.neg.i.i.i.i
  %add194.i.i.i.i = add i32 %add183.i.i.i.i, %tmp.sroa.7.1.i.i.i
  %279 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %add194.i.i.i.i, ptr %pos.i.i.i, align 4, !noalias !35
  %llDInfo.sroa.0.sroa.7.0.insert.ext.i.i.i.i = and i32 %llDInfo.sroa.0.0.copyload.i.i.i.i, 255
  %DInfo.sroa.0.0.extract.shift.i.i.i.i.i = lshr i32 %llDInfo.sroa.0.0.copyload.i.i.i.i, 16
  %280 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %seqState.i.i.i, align 4, !noalias !35
  %282 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  %284 = add i32 %283, %llDInfo.sroa.0.sroa.7.0.insert.ext.i.i.i.i
  %sub1.i.i.i.i.i.i.i = sub i32 0, %284
  %and.i.i.i.i.i.i.i.i = and i32 %sub1.i.i.i.i.i.i.i, 31
  %shr.i.i.i.i.i.i.i.i = lshr i32 %281, %and.i.i.i.i.i.i.i.i
  %arrayidx.i.i.i.i.i.i.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %llDInfo.sroa.0.sroa.7.0.insert.ext.i.i.i.i
  %285 = ptrtoint ptr %arrayidx.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %arrayidx.i.i.i.i.i.i.i.i, align 4, !noalias !35
  %and1.i.i.i.i.i.i.i.i = and i32 %shr.i.i.i.i.i.i.i.i, %286
  %add.i.i.i.i.i = add i32 %and1.i.i.i.i.i.i.i.i, %DInfo.sroa.0.0.extract.shift.i.i.i.i.i
  %287 = ptrtoint ptr %stateLL.i.i.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %add.i.i.i.i.i, ptr %stateLL.i.i.i, align 4, !noalias !35
  %mlDInfo.sroa.0.sroa.7.0.insert.ext.i.i.i.i = and i32 %mlDInfo.sroa.0.0.copyload.i.i.i.i, 255
  %DInfo.sroa.0.0.extract.shift.i293.i.i.i.i = lshr i32 %mlDInfo.sroa.0.0.copyload.i.i.i.i, 16
  %288 = add i32 %284, %mlDInfo.sroa.0.sroa.7.0.insert.ext.i.i.i.i
  %sub1.i.i.i295.i.i.i.i = sub i32 0, %288
  %and.i.i.i.i296.i.i.i.i = and i32 %sub1.i.i.i295.i.i.i.i, 31
  %shr.i.i.i.i297.i.i.i.i = lshr i32 %281, %and.i.i.i.i296.i.i.i.i
  %arrayidx.i.i.i.i298.i.i.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %mlDInfo.sroa.0.sroa.7.0.insert.ext.i.i.i.i
  %289 = ptrtoint ptr %arrayidx.i.i.i.i298.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %arrayidx.i.i.i.i298.i.i.i.i, align 4, !noalias !35
  %and1.i.i.i.i299.i.i.i.i = and i32 %shr.i.i.i.i297.i.i.i.i, %290
  store i32 %288, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  %add.i300.i.i.i.i = add i32 %and1.i.i.i.i299.i.i.i.i, %DInfo.sroa.0.0.extract.shift.i293.i.i.i.i
  %291 = ptrtoint ptr %stateML.i.i.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %add.i300.i.i.i.i, ptr %stateML.i.i.i, align 4, !noalias !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %288)
  %cmp.i444.i.i.i.i = icmp ugt i32 %288, 32
  br i1 %cmp.i444.i.i.i.i, label %BIT_reloadDStream.exit442.i.i.i.i.ZSTD_decodeSequence.exit.i.i.i_crit_edge, label %if.end.i448.i.i.i.i

BIT_reloadDStream.exit442.i.i.i.i.ZSTD_decodeSequence.exit.i.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit442.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_decodeSequence.exit.i.i.i

if.end.i448.i.i.i.i:                              ; preds = %BIT_reloadDStream.exit442.i.i.i.i
  %292 = ptrtoint ptr %ptr.i.i540.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %ptr.i.i540.i.i.i, align 4, !noalias !35
  %294 = ptrtoint ptr %limitPtr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %limitPtr.i.i.i.i, align 4, !noalias !35
  %cmp1.not.i447.i.i.i.i = icmp ult ptr %293, %295
  br i1 %cmp1.not.i447.i.i.i.i, label %if.end3.i456.i.i.i.i, label %BIT_reloadDStreamFast.exit.i453.i.i.i.i

BIT_reloadDStreamFast.exit.i453.i.i.i.i:          ; preds = %if.end.i448.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i449.i.i.i.i = lshr i32 %288, 3
  %idx.neg.i.i450.i.i.i.i = sub nsw i32 0, %shr.i.i449.i.i.i.i
  %add.ptr.i.i451.i.i.i.i = getelementptr i8, ptr %293, i32 %idx.neg.i.i450.i.i.i.i
  %296 = ptrtoint ptr %ptr.i.i540.i.i.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %add.ptr.i.i451.i.i.i.i, ptr %ptr.i.i540.i.i.i, align 4, !noalias !35
  %and.i.i452.i.i.i.i = and i32 %288, 7
  br label %BIT_reloadDStream.exit475.sink.split.i.i.i.i

if.end3.i456.i.i.i.i:                             ; preds = %if.end.i448.i.i.i.i
  %297 = ptrtoint ptr %start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %start.i.i.i.i, align 4, !noalias !35
  %cmp5.i455.i.i.i.i = icmp eq ptr %293, %298
  br i1 %cmp5.i455.i.i.i.i, label %if.end3.i456.i.i.i.i.ZSTD_decodeSequence.exit.i.i.i_crit_edge, label %if.end11.i473.i.i.i.i

if.end3.i456.i.i.i.i.ZSTD_decodeSequence.exit.i.i.i_crit_edge: ; preds = %if.end3.i456.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_decodeSequence.exit.i.i.i

if.end11.i473.i.i.i.i:                            ; preds = %if.end3.i456.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i460.i.i.i.i = lshr i32 %288, 3
  %idx.neg.i461.i.i.i.i = sub nsw i32 0, %shr.i460.i.i.i.i
  %add.ptr.i462.i.i.i.i = getelementptr i8, ptr %293, i32 %idx.neg.i461.i.i.i.i
  %cmp15.i463.i.i.i.i = icmp ult ptr %add.ptr.i462.i.i.i.i, %298
  %sub.ptr.lhs.cast.i464.i.i.i.i = ptrtoint ptr %293 to i32
  %sub.ptr.rhs.cast.i465.i.i.i.i = ptrtoint ptr %298 to i32
  %sub.ptr.sub.i466.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i464.i.i.i.i, %sub.ptr.rhs.cast.i465.i.i.i.i
  %nbBytes.0.i467.i.i.i.i = select i1 %cmp15.i463.i.i.i.i, i32 %sub.ptr.sub.i466.i.i.i.i, i32 %shr.i460.i.i.i.i
  %idx.neg21.i469.i.i.i.i = sub i32 0, %nbBytes.0.i467.i.i.i.i
  %add.ptr22.i470.i.i.i.i = getelementptr i8, ptr %293, i32 %idx.neg21.i469.i.i.i.i
  %299 = ptrtoint ptr %ptr.i.i540.i.i.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr %add.ptr22.i470.i.i.i.i, ptr %ptr.i.i540.i.i.i, align 4, !noalias !35
  %mul.neg.i471.i.i.i.i = mul i32 %nbBytes.0.i467.i.i.i.i, -8
  %sub.i472.i.i.i.i = add i32 %mul.neg.i471.i.i.i.i, %288
  br label %BIT_reloadDStream.exit475.sink.split.i.i.i.i

BIT_reloadDStream.exit475.sink.split.i.i.i.i:     ; preds = %if.end11.i473.i.i.i.i, %BIT_reloadDStreamFast.exit.i453.i.i.i.i
  %and.i.i452.sink.i.i.i.i = phi i32 [ %and.i.i452.i.i.i.i, %BIT_reloadDStreamFast.exit.i453.i.i.i.i ], [ %sub.i472.i.i.i.i, %if.end11.i473.i.i.i.i ]
  %add.ptr.i.i451.sink.i.i.i.i = phi ptr [ %add.ptr.i.i451.i.i.i.i, %BIT_reloadDStreamFast.exit.i453.i.i.i.i ], [ %add.ptr22.i470.i.i.i.i, %if.end11.i473.i.i.i.i ]
  %300 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %and.i.i452.sink.i.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  %301 = ptrtoint ptr %add.ptr.i.i451.sink.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %301, i32 4)
  %302 = load i32, ptr %add.ptr.i.i451.sink.i.i.i.i, align 1, !noalias !35
  %303 = tail call i32 @llvm.bswap.i32(i32 %302) #9
  %304 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %303, ptr %seqState.i.i.i, align 4, !noalias !35
  br label %ZSTD_decodeSequence.exit.i.i.i

ZSTD_decodeSequence.exit.i.i.i:                   ; preds = %BIT_reloadDStream.exit475.sink.split.i.i.i.i, %if.end3.i456.i.i.i.i.ZSTD_decodeSequence.exit.i.i.i_crit_edge, %BIT_reloadDStream.exit442.i.i.i.i.ZSTD_decodeSequence.exit.i.i.i_crit_edge
  %ofDInfo.sroa.0.sroa.7.0.insert.ext.i.i.i.i = and i32 %ofDInfo.sroa.0.0.copyload.i.i.i.i, 255
  %DInfo.sroa.0.0.extract.shift.i301.i.i.i.i = lshr i32 %ofDInfo.sroa.0.0.copyload.i.i.i.i, 16
  %305 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %seqState.i.i.i, align 4, !noalias !35
  %307 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  %309 = add i32 %308, %ofDInfo.sroa.0.sroa.7.0.insert.ext.i.i.i.i
  %sub1.i.i.i303.i.i.i.i = sub i32 0, %309
  %and.i.i.i.i304.i.i.i.i = and i32 %sub1.i.i.i303.i.i.i.i, 31
  %shr.i.i.i.i305.i.i.i.i = lshr i32 %306, %and.i.i.i.i304.i.i.i.i
  %arrayidx.i.i.i.i306.i.i.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %ofDInfo.sroa.0.sroa.7.0.insert.ext.i.i.i.i
  %310 = ptrtoint ptr %arrayidx.i.i.i.i306.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %arrayidx.i.i.i.i306.i.i.i.i, align 4, !noalias !35
  %and1.i.i.i.i307.i.i.i.i = and i32 %shr.i.i.i.i305.i.i.i.i, %311
  store i32 %309, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !35
  %add.i308.i.i.i.i = add i32 %and1.i.i.i.i307.i.i.i.i, %DInfo.sroa.0.0.extract.shift.i301.i.i.i.i
  %312 = ptrtoint ptr %stateOffb.i.i.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %add.i308.i.i.i.i, ptr %stateOffb.i.i.i, align 4, !noalias !35
  %313 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 %tmp.sroa.0.1.i.i.i, ptr %arrayidx25.i.i.i, align 4
  %tmp.sroa.7.0.arrayidx25.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %arrayidx25.i.i.i, i32 4
  %314 = ptrtoint ptr %tmp.sroa.7.0.arrayidx25.sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %tmp.sroa.7.1.i.i.i, ptr %tmp.sroa.7.0.arrayidx25.sroa_idx.i.i.i, align 4
  %tmp.sroa.10.0.arrayidx25.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %arrayidx25.i.i.i, i32 8
  %315 = ptrtoint ptr %tmp.sroa.10.0.arrayidx25.sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %offset.3.i.i.i.i, ptr %tmp.sroa.10.0.arrayidx25.sroa_idx.i.i.i, align 4
  %tmp.sroa.11.0.arrayidx25.sroa_idx.i.i.i = getelementptr inbounds i8, ptr %arrayidx25.i.i.i, i32 12
  %316 = ptrtoint ptr %tmp.sroa.11.0.arrayidx25.sroa_idx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr %add.ptr192.i.i.i.i, ptr %tmp.sroa.11.0.arrayidx25.sroa_idx.i.i.i, align 4
  tail call void @llvm.prefetch.p0(ptr %add.ptr192.i.i.i.i, i32 0, i32 3, i32 1) #9
  %add.ptr30.i.i.i = getelementptr i8, ptr %add.ptr192.i.i.i.i, i32 -1
  %add.ptr31.i.i.i = getelementptr i8, ptr %add.ptr30.i.i.i, i32 %tmp.sroa.7.1.i.i.i
  tail call void @llvm.prefetch.p0(ptr %add.ptr31.i.i.i, i32 0, i32 3, i32 1) #9
  %inc33.i.i.i = add nuw nsw i32 %seqNb.0684.i.i.i, 1
  %cmp.i573.i.i.i = icmp ugt i32 %309, 32
  br i1 %cmp.i573.i.i.i, label %ZSTD_decodeSequence.exit.i.i.i.BIT_reloadDStream.exit.thread.i.i.i_crit_edge, label %ZSTD_decodeSequence.exit.i.i.i.if.end.i576.i.i.i_crit_edge

ZSTD_decodeSequence.exit.i.i.i.if.end.i576.i.i.i_crit_edge: ; preds = %ZSTD_decodeSequence.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i576.i.i.i

ZSTD_decodeSequence.exit.i.i.i.BIT_reloadDStream.exit.thread.i.i.i_crit_edge: ; preds = %ZSTD_decodeSequence.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit.thread.i.i.i

for.cond38thread-pre-split.i.i.i:                 ; preds = %for.inc61.i.i.i, %BIT_reloadDStream.exit.i.i.i.for.cond38thread-pre-split.i.i.i_crit_edge
  %table.i569707.i.i.i = phi ptr [ %table.i569708.i.i.i, %for.inc61.i.i.i ], [ %table.i569.i5.i.i, %BIT_reloadDStream.exit.i.i.i.for.cond38thread-pre-split.i.i.i_crit_edge ]
  %op.0.ph.i.i.i = phi ptr [ %add.ptr59.i.i.i, %for.inc61.i.i.i ], [ %dst, %BIT_reloadDStream.exit.i.i.i.for.cond38thread-pre-split.i.i.i_crit_edge ]
  %seqNb.1.ph.i.i.i = phi i32 [ %inc62.i.i.i, %for.inc61.i.i.i ], [ %smax.i.i.i, %BIT_reloadDStream.exit.i.i.i.for.cond38thread-pre-split.i.i.i_crit_edge ]
  %317 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %.pr645.i.i.i = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4
  br label %for.cond38.i.i.i

for.cond38.i.i.i:                                 ; preds = %for.cond38thread-pre-split.i.i.i, %BIT_reloadDStream.exit.thread.i.i.i.for.cond38.i.i.i_crit_edge
  %table.i569708.i.i.i = phi ptr [ %table.i569707.i.i.i, %for.cond38thread-pre-split.i.i.i ], [ %table.i569709.i.i.i, %BIT_reloadDStream.exit.thread.i.i.i.for.cond38.i.i.i_crit_edge ]
  %318 = phi i32 [ %.pr645.i.i.i, %for.cond38thread-pre-split.i.i.i ], [ %.lcssa.i.i.i, %BIT_reloadDStream.exit.thread.i.i.i.for.cond38.i.i.i_crit_edge ]
  %op.0.i.i.i = phi ptr [ %op.0.ph.i.i.i, %for.cond38thread-pre-split.i.i.i ], [ %dst, %BIT_reloadDStream.exit.thread.i.i.i.for.cond38.i.i.i_crit_edge ]
  %seqNb.1.i.i.i = phi i32 [ %seqNb.1.ph.i.i.i, %for.cond38thread-pre-split.i.i.i ], [ %seqNb.0.lcssa.i.i.i, %BIT_reloadDStream.exit.thread.i.i.i.for.cond38.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %318)
  %cmp.i589.i.i.i = icmp ugt i32 %318, 32
  br i1 %cmp.i589.i.i.i, label %BIT_reloadDStream.exit620.thread.i.i.i, label %if.end.i593.i.i.i

BIT_reloadDStream.exit620.thread.i.i.i:           ; preds = %for.cond38.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %seqNb.1.i.i.i, i32 %22)
  %cmp43648.i.i.i = icmp slt i32 %seqNb.1.i.i.i, %22
  br i1 %cmp43648.i.i.i, label %BIT_reloadDStream.exit620.thread.i.i.i.cleanup98.thread.i.i.i_crit_edge, label %BIT_reloadDStream.exit620.thread.i.i.i.if.end66.i.i.i_crit_edge

BIT_reloadDStream.exit620.thread.i.i.i.if.end66.i.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit620.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i.i.i

BIT_reloadDStream.exit620.thread.i.i.i.cleanup98.thread.i.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit620.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98.thread.i.i.i

if.end.i593.i.i.i:                                ; preds = %for.cond38.i.i.i
  %ptr.i590.i.i.i = getelementptr inbounds %struct.BIT_DStream_t, ptr %seqState.i.i.i, i32 0, i32 2
  %319 = ptrtoint ptr %ptr.i590.i.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %ptr.i590.i.i.i, align 4
  %321 = ptrtoint ptr %limitPtr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %limitPtr.i.i.i.i, align 4
  %cmp1.not.i592.i.i.i = icmp ult ptr %320, %322
  br i1 %cmp1.not.i592.i.i.i, label %if.end3.i601.i.i.i, label %BIT_reloadDStreamFast.exit.i598.i.i.i

BIT_reloadDStreamFast.exit.i598.i.i.i:            ; preds = %if.end.i593.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i594.i.i.i = lshr i32 %318, 3
  %idx.neg.i.i595.i.i.i = sub nsw i32 0, %shr.i.i594.i.i.i
  %add.ptr.i.i596.i.i.i = getelementptr i8, ptr %320, i32 %idx.neg.i.i595.i.i.i
  %323 = ptrtoint ptr %ptr.i590.i.i.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %add.ptr.i.i596.i.i.i, ptr %ptr.i590.i.i.i, align 4
  %and.i.i597.i.i.i = and i32 %318, 7
  %324 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %and.i.i597.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4
  %325 = ptrtoint ptr %add.ptr.i.i596.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %325, i32 4)
  %326 = load i32, ptr %add.ptr.i.i596.i.i.i, align 1
  %327 = tail call i32 @llvm.bswap.i32(i32 %326) #9
  %328 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %327, ptr %seqState.i.i.i, align 4
  br label %BIT_reloadDStream.exit620.i.i.i

if.end3.i601.i.i.i:                               ; preds = %if.end.i593.i.i.i
  %329 = ptrtoint ptr %start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %start.i.i.i.i, align 4
  %cmp5.i600.i.i.i = icmp eq ptr %320, %330
  br i1 %cmp5.i600.i.i.i, label %if.end3.i601.i.i.i.BIT_reloadDStream.exit620.i.i.i_crit_edge, label %if.end11.i618.i.i.i

if.end3.i601.i.i.i.BIT_reloadDStream.exit620.i.i.i_crit_edge: ; preds = %if.end3.i601.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit620.i.i.i

if.end11.i618.i.i.i:                              ; preds = %if.end3.i601.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i605.i.i.i = lshr i32 %318, 3
  %idx.neg.i606.i.i.i = sub nsw i32 0, %shr.i605.i.i.i
  %add.ptr.i607.i.i.i = getelementptr i8, ptr %320, i32 %idx.neg.i606.i.i.i
  %cmp15.i608.i.i.i = icmp ult ptr %add.ptr.i607.i.i.i, %330
  %sub.ptr.lhs.cast.i609.i.i.i = ptrtoint ptr %320 to i32
  %sub.ptr.rhs.cast.i610.i.i.i = ptrtoint ptr %330 to i32
  %sub.ptr.sub.i611.i.i.i = sub i32 %sub.ptr.lhs.cast.i609.i.i.i, %sub.ptr.rhs.cast.i610.i.i.i
  %nbBytes.0.i612.i.i.i = select i1 %cmp15.i608.i.i.i, i32 %sub.ptr.sub.i611.i.i.i, i32 %shr.i605.i.i.i
  %idx.neg21.i614.i.i.i = sub i32 0, %nbBytes.0.i612.i.i.i
  %add.ptr22.i615.i.i.i = getelementptr i8, ptr %320, i32 %idx.neg21.i614.i.i.i
  %331 = ptrtoint ptr %ptr.i590.i.i.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %add.ptr22.i615.i.i.i, ptr %ptr.i590.i.i.i, align 4
  %mul.neg.i616.i.i.i = mul i32 %nbBytes.0.i612.i.i.i, -8
  %sub.i617.i.i.i = add i32 %mul.neg.i616.i.i.i, %318
  %332 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %sub.i617.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4
  %333 = ptrtoint ptr %add.ptr22.i615.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %333, i32 4)
  %334 = load i32, ptr %add.ptr22.i615.i.i.i, align 1
  %335 = tail call i32 @llvm.bswap.i32(i32 %334) #9
  %336 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %335, ptr %seqState.i.i.i, align 4
  br label %BIT_reloadDStream.exit620.i.i.i

BIT_reloadDStream.exit620.i.i.i:                  ; preds = %if.end11.i618.i.i.i, %if.end3.i601.i.i.i.BIT_reloadDStream.exit620.i.i.i_crit_edge, %BIT_reloadDStreamFast.exit.i598.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %seqNb.1.i.i.i, i32 %22)
  %cmp43.i.i.i = icmp slt i32 %seqNb.1.i.i.i, %22
  br i1 %cmp43.i.i.i, label %for.body45.i.i.i, label %BIT_reloadDStream.exit620.i.i.i.if.end66.i.i.i_crit_edge

BIT_reloadDStream.exit620.i.i.i.if.end66.i.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit620.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i.i.i

for.body45.i.i.i:                                 ; preds = %BIT_reloadDStream.exit620.i.i.i
  %337 = ptrtoint ptr %table.i490.i.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %table.i490.i.i.i, align 4, !noalias !40
  %339 = ptrtoint ptr %stateLL.i.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %stateLL.i.i.i, align 4, !noalias !40
  %arrayidx.i4.i.i.i = getelementptr %struct.ZSTD_seqSymbol, ptr %338, i32 %340
  %341 = ptrtoint ptr %arrayidx.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %llDInfo.sroa.0.0.copyload.i5.i.i.i = load i32, ptr %arrayidx.i4.i.i.i, align 4, !noalias !40
  %llDInfo.sroa.0.sroa.5.0.extract.shift.i6.i.i.i = lshr i32 %llDInfo.sroa.0.0.copyload.i5.i.i.i, 8
  %llDInfo.sroa.8.0.arrayidx.sroa_idx.i7.i.i.i = getelementptr inbounds i8, ptr %arrayidx.i4.i.i.i, i32 4
  %342 = ptrtoint ptr %llDInfo.sroa.8.0.arrayidx.sroa_idx.i7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %llDInfo.sroa.8.0.copyload.i8.i.i.i = load i32, ptr %llDInfo.sroa.8.0.arrayidx.sroa_idx.i7.i.i.i, align 4, !noalias !40
  %343 = ptrtoint ptr %table.i569708.i.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %table.i569708.i.i.i, align 4, !noalias !40
  %345 = ptrtoint ptr %stateML.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %stateML.i.i.i, align 4, !noalias !40
  %arrayidx5.i11.i.i.i = getelementptr %struct.ZSTD_seqSymbol, ptr %344, i32 %346
  %347 = ptrtoint ptr %arrayidx5.i11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %mlDInfo.sroa.0.0.copyload.i12.i.i.i = load i32, ptr %arrayidx5.i11.i.i.i, align 4, !noalias !40
  %mlDInfo.sroa.0.sroa.5.0.extract.shift.i13.i.i.i = lshr i32 %mlDInfo.sroa.0.0.copyload.i12.i.i.i, 8
  %mlDInfo.sroa.8.0.arrayidx5.sroa_idx.i14.i.i.i = getelementptr inbounds i8, ptr %arrayidx5.i11.i.i.i, i32 4
  %348 = ptrtoint ptr %mlDInfo.sroa.8.0.arrayidx5.sroa_idx.i14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %mlDInfo.sroa.8.0.copyload.i15.i.i.i = load i32, ptr %mlDInfo.sroa.8.0.arrayidx5.sroa_idx.i14.i.i.i, align 4, !noalias !40
  %349 = ptrtoint ptr %table.i529.i.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %table.i529.i.i.i, align 4, !noalias !40
  %351 = ptrtoint ptr %stateOffb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %stateOffb.i.i.i, align 4, !noalias !40
  %arrayidx9.i18.i.i.i = getelementptr %struct.ZSTD_seqSymbol, ptr %350, i32 %352
  %353 = ptrtoint ptr %arrayidx9.i18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %ofDInfo.sroa.0.0.copyload.i19.i.i.i = load i32, ptr %arrayidx9.i18.i.i.i, align 4, !noalias !40
  %ofDInfo.sroa.0.sroa.5.0.extract.shift.i20.i.i.i = lshr i32 %ofDInfo.sroa.0.0.copyload.i19.i.i.i, 8
  %ofDInfo.sroa.8.0.arrayidx9.sroa_idx.i21.i.i.i = getelementptr inbounds i8, ptr %arrayidx9.i18.i.i.i, i32 4
  %354 = ptrtoint ptr %ofDInfo.sroa.8.0.arrayidx9.sroa_idx.i21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %ofDInfo.sroa.8.0.copyload.i22.i.i.i = load i32, ptr %ofDInfo.sroa.8.0.arrayidx9.sroa_idx.i21.i.i.i, align 4, !noalias !40
  %conv.i23.i.i.i = and i32 %llDInfo.sroa.0.sroa.5.0.extract.shift.i6.i.i.i, 255
  %conv14.i24.i.i.i = and i32 %mlDInfo.sroa.0.sroa.5.0.extract.shift.i13.i.i.i, 255
  %add.i25.i.i.i = add nuw nsw i32 %conv14.i24.i.i.i, %conv.i23.i.i.i
  %conv15.i26.i.i.i = and i32 %ofDInfo.sroa.0.sroa.5.0.extract.shift.i20.i.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv15.i26.i.i.i)
  %cmp.i27.i.i.i = icmp ugt i32 %conv15.i26.i.i.i, 1
  br i1 %cmp.i27.i.i.i, label %if.then.i31.i.i.i, label %if.else67.i125.i.i.i

if.then.i31.i.i.i:                                ; preds = %for.body45.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool20.not.i28.i.i.i = icmp ne i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %conv15.i26.i.i.i)
  %cmp23.i29.i.i.i = icmp ugt i32 %conv15.i26.i.i.i, 24
  %or.cond.i30.i.i.i = select i1 %tobool20.not.i28.i.i.i, i1 %cmp23.i29.i.i.i, i1 false
  br i1 %or.cond.i30.i.i.i, label %if.then25.i44.i.i.i, label %if.else.i92.i.i.i

if.then25.i44.i.i.i:                              ; preds = %if.then.i31.i.i.i
  %355 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  %sub.i33.i.i.i = sub i32 32, %356
  %357 = tail call i32 @llvm.umin.i32(i32 %conv15.i26.i.i.i, i32 %sub.i33.i.i.i) #9
  %sub34.i34.i.i.i = sub nsw i32 %conv15.i26.i.i.i, %357
  %358 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %seqState.i.i.i, align 4, !noalias !40
  %and.i.i.i35.i.i.i = and i32 %356, 31
  %shl.i.i.i36.i.i.i = shl i32 %359, %and.i.i.i35.i.i.i
  %sub.i.i.i37.i.i.i = sub nsw i32 0, %357
  %and1.i.i.i38.i.i.i = and i32 %sub.i.i.i37.i.i.i, 31
  %shr.i.i.i39.i.i.i = lshr i32 %shl.i.i.i36.i.i.i, %and1.i.i.i38.i.i.i
  %add.i.i.i40.i.i.i = add i32 %357, %356
  %360 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 %add.i.i.i40.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  %shl.i41.i.i.i = shl i32 %shr.i.i.i39.i.i.i, %sub34.i34.i.i.i
  %add39.i42.i.i.i = add i32 %shl.i41.i.i.i, %ofDInfo.sroa.8.0.copyload.i22.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i.i.i40.i.i.i)
  %cmp.i.i43.i.i.i = icmp ugt i32 %add.i.i.i40.i.i.i, 32
  br i1 %cmp.i.i43.i.i.i, label %if.then25.i44.i.i.i.BIT_reloadDStream.exit.i74.i.i.i_crit_edge, label %if.end.i.i48.i.i.i

if.then25.i44.i.i.i.BIT_reloadDStream.exit.i74.i.i.i_crit_edge: ; preds = %if.then25.i44.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit.i74.i.i.i

if.end.i.i48.i.i.i:                               ; preds = %if.then25.i44.i.i.i
  %361 = ptrtoint ptr %ptr.i590.i.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %ptr.i590.i.i.i, align 4, !noalias !40
  %cmp1.not.i.i47.i.i.i = icmp ult ptr %362, %322
  br i1 %cmp1.not.i.i47.i.i.i, label %if.end3.i.i56.i.i.i, label %BIT_reloadDStreamFast.exit.i.i53.i.i.i

BIT_reloadDStreamFast.exit.i.i53.i.i.i:           ; preds = %if.end.i.i48.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i309.i49.i.i.i = lshr i32 %add.i.i.i40.i.i.i, 3
  %idx.neg.i.i.i50.i.i.i = sub nsw i32 0, %shr.i.i309.i49.i.i.i
  %add.ptr.i.i.i51.i.i.i = getelementptr i8, ptr %362, i32 %idx.neg.i.i.i50.i.i.i
  %363 = ptrtoint ptr %ptr.i590.i.i.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store ptr %add.ptr.i.i.i51.i.i.i, ptr %ptr.i590.i.i.i, align 4, !noalias !40
  %and.i.i310.i52.i.i.i = and i32 %add.i.i.i40.i.i.i, 7
  br label %BIT_reloadDStream.exit.sink.split.i72.i.i.i

if.end3.i.i56.i.i.i:                              ; preds = %if.end.i.i48.i.i.i
  %364 = ptrtoint ptr %start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %start.i.i.i.i, align 4, !noalias !40
  %cmp5.i.i55.i.i.i = icmp eq ptr %362, %365
  br i1 %cmp5.i.i55.i.i.i, label %if.end3.i.i56.i.i.i.BIT_reloadDStream.exit.i74.i.i.i_crit_edge, label %if.end11.i.i69.i.i.i

if.end3.i.i56.i.i.i.BIT_reloadDStream.exit.i74.i.i.i_crit_edge: ; preds = %if.end3.i.i56.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit.i74.i.i.i

if.end11.i.i69.i.i.i:                             ; preds = %if.end3.i.i56.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i57.i.i.i = lshr i32 %add.i.i.i40.i.i.i, 3
  %idx.neg.i.i58.i.i.i = sub nsw i32 0, %shr.i.i57.i.i.i
  %add.ptr.i.i59.i.i.i = getelementptr i8, ptr %362, i32 %idx.neg.i.i58.i.i.i
  %cmp15.i.i60.i.i.i = icmp ult ptr %add.ptr.i.i59.i.i.i, %365
  %sub.ptr.lhs.cast.i.i61.i.i.i = ptrtoint ptr %362 to i32
  %sub.ptr.rhs.cast.i.i62.i.i.i = ptrtoint ptr %365 to i32
  %sub.ptr.sub.i.i63.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i61.i.i.i, %sub.ptr.rhs.cast.i.i62.i.i.i
  %nbBytes.0.i.i64.i.i.i = select i1 %cmp15.i.i60.i.i.i, i32 %sub.ptr.sub.i.i63.i.i.i, i32 %shr.i.i57.i.i.i
  %idx.neg21.i.i65.i.i.i = sub i32 0, %nbBytes.0.i.i64.i.i.i
  %add.ptr22.i.i66.i.i.i = getelementptr i8, ptr %362, i32 %idx.neg21.i.i65.i.i.i
  %366 = ptrtoint ptr %ptr.i590.i.i.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store ptr %add.ptr22.i.i66.i.i.i, ptr %ptr.i590.i.i.i, align 4, !noalias !40
  %mul.neg.i.i67.i.i.i = mul i32 %nbBytes.0.i.i64.i.i.i, -8
  %sub.i.i68.i.i.i = add i32 %mul.neg.i.i67.i.i.i, %add.i.i.i40.i.i.i
  br label %BIT_reloadDStream.exit.sink.split.i72.i.i.i

BIT_reloadDStream.exit.sink.split.i72.i.i.i:      ; preds = %if.end11.i.i69.i.i.i, %BIT_reloadDStreamFast.exit.i.i53.i.i.i
  %and.i.i310.sink.i70.i.i.i = phi i32 [ %and.i.i310.i52.i.i.i, %BIT_reloadDStreamFast.exit.i.i53.i.i.i ], [ %sub.i.i68.i.i.i, %if.end11.i.i69.i.i.i ]
  %add.ptr.i.i.sink.i71.i.i.i = phi ptr [ %add.ptr.i.i.i51.i.i.i, %BIT_reloadDStreamFast.exit.i.i53.i.i.i ], [ %add.ptr22.i.i66.i.i.i, %if.end11.i.i69.i.i.i ]
  %367 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 %and.i.i310.sink.i70.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  %368 = ptrtoint ptr %add.ptr.i.i.sink.i71.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %368, i32 4)
  %369 = load i32, ptr %add.ptr.i.i.sink.i71.i.i.i, align 1, !noalias !40
  %370 = tail call i32 @llvm.bswap.i32(i32 %369) #9
  %371 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 %370, ptr %seqState.i.i.i, align 4, !noalias !40
  br label %BIT_reloadDStream.exit.i74.i.i.i

BIT_reloadDStream.exit.i74.i.i.i:                 ; preds = %BIT_reloadDStream.exit.sink.split.i72.i.i.i, %if.end3.i.i56.i.i.i.BIT_reloadDStream.exit.i74.i.i.i_crit_edge, %if.then25.i44.i.i.i.BIT_reloadDStream.exit.i74.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15.i26.i.i.i, i32 %sub.i33.i.i.i)
  %tobool42.not.not.i73.i.i.i = icmp ugt i32 %conv15.i26.i.i.i, %sub.i33.i.i.i
  br i1 %tobool42.not.not.i73.i.i.i, label %if.then43.i82.i.i.i, label %BIT_reloadDStream.exit.i74.i.i.i.if.end57.i122.i.i.i_crit_edge

BIT_reloadDStream.exit.i74.i.i.i.if.end57.i122.i.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit.i74.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i122.i.i.i

if.then43.i82.i.i.i:                              ; preds = %BIT_reloadDStream.exit.i74.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %372 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %seqState.i.i.i, align 4, !noalias !40
  %374 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  %and.i.i312.i75.i.i.i = and i32 %375, 31
  %shl.i.i313.i76.i.i.i = shl i32 %373, %and.i.i312.i75.i.i.i
  %sub.i.i314.i77.i.i.i = sub nsw i32 0, %sub34.i34.i.i.i
  %and1.i.i315.i78.i.i.i = and i32 %sub.i.i314.i77.i.i.i, 31
  %shr.i.i316.i79.i.i.i = lshr i32 %shl.i.i313.i76.i.i.i, %and1.i.i315.i78.i.i.i
  %add.i.i317.i80.i.i.i = add i32 %375, %sub34.i34.i.i.i
  store i32 %add.i.i317.i80.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  %add46.i81.i.i.i = add i32 %shr.i.i316.i79.i.i.i, %add39.i42.i.i.i
  br label %if.end57.i122.i.i.i

if.else.i92.i.i.i:                                ; preds = %if.then.i31.i.i.i
  %376 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %seqState.i.i.i, align 4, !noalias !40
  %378 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  %and.i.i319.i84.i.i.i = and i32 %379, 31
  %shl.i.i320.i85.i.i.i = shl i32 %377, %and.i.i319.i84.i.i.i
  %sub.i.i321.i86.i.i.i = sub nsw i32 0, %ofDInfo.sroa.0.sroa.5.0.extract.shift.i20.i.i.i
  %and1.i.i322.i87.i.i.i = and i32 %sub.i.i321.i86.i.i.i, 31
  %shr.i.i323.i88.i.i.i = lshr i32 %shl.i.i320.i85.i.i.i, %and1.i.i322.i87.i.i.i
  %add.i.i324.i89.i.i.i = add i32 %379, %conv15.i26.i.i.i
  store i32 %add.i.i324.i89.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  %add50.i90.i.i.i = add i32 %shr.i.i323.i88.i.i.i, %ofDInfo.sroa.8.0.copyload.i22.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i.i324.i89.i.i.i)
  %cmp.i326.i91.i.i.i = icmp ugt i32 %add.i.i324.i89.i.i.i, 32
  br i1 %cmp.i326.i91.i.i.i, label %if.else.i92.i.i.i.if.end57.i122.i.i.i_crit_edge, label %if.end.i330.i96.i.i.i

if.else.i92.i.i.i.if.end57.i122.i.i.i_crit_edge:  ; preds = %if.else.i92.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i122.i.i.i

if.end.i330.i96.i.i.i:                            ; preds = %if.else.i92.i.i.i
  %380 = ptrtoint ptr %ptr.i590.i.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %ptr.i590.i.i.i, align 4, !noalias !40
  %cmp1.not.i329.i95.i.i.i = icmp ult ptr %381, %322
  br i1 %cmp1.not.i329.i95.i.i.i, label %if.end3.i338.i104.i.i.i, label %BIT_reloadDStreamFast.exit.i335.i101.i.i.i

BIT_reloadDStreamFast.exit.i335.i101.i.i.i:       ; preds = %if.end.i330.i96.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i331.i97.i.i.i = lshr i32 %add.i.i324.i89.i.i.i, 3
  %idx.neg.i.i332.i98.i.i.i = sub nsw i32 0, %shr.i.i331.i97.i.i.i
  %add.ptr.i.i333.i99.i.i.i = getelementptr i8, ptr %381, i32 %idx.neg.i.i332.i98.i.i.i
  %382 = ptrtoint ptr %ptr.i590.i.i.i to i32
  call void @__asan_store4_noabort(i32 %382)
  store ptr %add.ptr.i.i333.i99.i.i.i, ptr %ptr.i590.i.i.i, align 4, !noalias !40
  %and.i.i334.i100.i.i.i = and i32 %add.i.i324.i89.i.i.i, 7
  %383 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 %and.i.i334.i100.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  %384 = ptrtoint ptr %add.ptr.i.i333.i99.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %384, i32 4)
  %385 = load i32, ptr %add.ptr.i.i333.i99.i.i.i, align 1, !noalias !40
  %386 = tail call i32 @llvm.bswap.i32(i32 %385) #9
  %387 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 %386, ptr %seqState.i.i.i, align 4, !noalias !40
  br label %if.end57.i122.i.i.i

if.end3.i338.i104.i.i.i:                          ; preds = %if.end.i330.i96.i.i.i
  %388 = ptrtoint ptr %start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %start.i.i.i.i, align 4, !noalias !40
  %cmp5.i337.i103.i.i.i = icmp eq ptr %381, %389
  br i1 %cmp5.i337.i103.i.i.i, label %if.end3.i338.i104.i.i.i.if.end57.i122.i.i.i_crit_edge, label %if.end11.i355.i117.i.i.i

if.end3.i338.i104.i.i.i.if.end57.i122.i.i.i_crit_edge: ; preds = %if.end3.i338.i104.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i122.i.i.i

if.end11.i355.i117.i.i.i:                         ; preds = %if.end3.i338.i104.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i342.i105.i.i.i = lshr i32 %add.i.i324.i89.i.i.i, 3
  %idx.neg.i343.i106.i.i.i = sub nsw i32 0, %shr.i342.i105.i.i.i
  %add.ptr.i344.i107.i.i.i = getelementptr i8, ptr %381, i32 %idx.neg.i343.i106.i.i.i
  %cmp15.i345.i108.i.i.i = icmp ult ptr %add.ptr.i344.i107.i.i.i, %389
  %sub.ptr.lhs.cast.i346.i109.i.i.i = ptrtoint ptr %381 to i32
  %sub.ptr.rhs.cast.i347.i110.i.i.i = ptrtoint ptr %389 to i32
  %sub.ptr.sub.i348.i111.i.i.i = sub i32 %sub.ptr.lhs.cast.i346.i109.i.i.i, %sub.ptr.rhs.cast.i347.i110.i.i.i
  %nbBytes.0.i349.i112.i.i.i = select i1 %cmp15.i345.i108.i.i.i, i32 %sub.ptr.sub.i348.i111.i.i.i, i32 %shr.i342.i105.i.i.i
  %idx.neg21.i351.i113.i.i.i = sub i32 0, %nbBytes.0.i349.i112.i.i.i
  %add.ptr22.i352.i114.i.i.i = getelementptr i8, ptr %381, i32 %idx.neg21.i351.i113.i.i.i
  %390 = ptrtoint ptr %ptr.i590.i.i.i to i32
  call void @__asan_store4_noabort(i32 %390)
  store ptr %add.ptr22.i352.i114.i.i.i, ptr %ptr.i590.i.i.i, align 4, !noalias !40
  %mul.neg.i353.i115.i.i.i = mul i32 %nbBytes.0.i349.i112.i.i.i, -8
  %sub.i354.i116.i.i.i = add i32 %mul.neg.i353.i115.i.i.i, %add.i.i324.i89.i.i.i
  %391 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %sub.i354.i116.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  %392 = ptrtoint ptr %add.ptr22.i352.i114.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %392, i32 4)
  %393 = load i32, ptr %add.ptr22.i352.i114.i.i.i, align 1, !noalias !40
  %394 = tail call i32 @llvm.bswap.i32(i32 %393) #9
  %395 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 %394, ptr %seqState.i.i.i, align 4, !noalias !40
  br label %if.end57.i122.i.i.i

if.end57.i122.i.i.i:                              ; preds = %if.end11.i355.i117.i.i.i, %if.end3.i338.i104.i.i.i.if.end57.i122.i.i.i_crit_edge, %BIT_reloadDStreamFast.exit.i335.i101.i.i.i, %if.else.i92.i.i.i.if.end57.i122.i.i.i_crit_edge, %if.then43.i82.i.i.i, %BIT_reloadDStream.exit.i74.i.i.i.if.end57.i122.i.i.i_crit_edge
  %offset.1.i118.i.i.i = phi i32 [ %add46.i81.i.i.i, %if.then43.i82.i.i.i ], [ %add39.i42.i.i.i, %BIT_reloadDStream.exit.i74.i.i.i.if.end57.i122.i.i.i_crit_edge ], [ %add50.i90.i.i.i, %if.else.i92.i.i.i.if.end57.i122.i.i.i_crit_edge ], [ %add50.i90.i.i.i, %BIT_reloadDStreamFast.exit.i335.i101.i.i.i ], [ %add50.i90.i.i.i, %if.end11.i355.i117.i.i.i ], [ %add50.i90.i.i.i, %if.end3.i338.i104.i.i.i.if.end57.i122.i.i.i_crit_edge ]
  %arrayidx58.i120.i.i.i = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i, i32 0, i32 4, i32 1
  %396 = ptrtoint ptr %arrayidx58.i120.i.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %arrayidx58.i120.i.i.i, align 4, !noalias !40
  %arrayidx60.i121.i.i.i = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i, i32 0, i32 4, i32 2
  %398 = ptrtoint ptr %arrayidx60.i121.i.i.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 %397, ptr %arrayidx60.i121.i.i.i, align 4, !noalias !40
  %399 = ptrtoint ptr %uglygep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %uglygep.i.i.i, align 4, !noalias !40
  store i32 %400, ptr %arrayidx58.i120.i.i.i, align 4, !noalias !40
  store i32 %offset.1.i118.i.i.i, ptr %uglygep.i.i.i, align 4, !noalias !40
  br label %if.end126.i163.i.i.i

if.else67.i125.i.i.i:                             ; preds = %for.body45.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %llDInfo.sroa.8.0.copyload.i8.i.i.i)
  %cmp68.i123.i.i.i = icmp eq i32 %llDInfo.sroa.8.0.copyload.i8.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15.i26.i.i.i)
  %cmp71.i124.i.i.i = icmp eq i32 %conv15.i26.i.i.i, 0
  br i1 %cmp71.i124.i.i.i, label %if.then74.i127.i.i.i, label %if.else91.i140.i.i.i, !prof !38

if.then74.i127.i.i.i:                             ; preds = %if.else67.i125.i.i.i
  br i1 %cmp68.i123.i.i.i, label %if.else81.i130.i.i.i, label %if.then78.i128.i.i.i, !prof !39

if.then78.i128.i.i.i:                             ; preds = %if.then74.i127.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %401 = ptrtoint ptr %uglygep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %uglygep.i.i.i, align 4, !noalias !40
  br label %if.end126.i163.i.i.i

if.else81.i130.i.i.i:                             ; preds = %if.then74.i127.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx83.i129.i.i.i = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i, i32 0, i32 4, i32 1
  %403 = ptrtoint ptr %arrayidx83.i129.i.i.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %arrayidx83.i129.i.i.i, align 4, !noalias !40
  %405 = ptrtoint ptr %uglygep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %uglygep.i.i.i, align 4, !noalias !40
  store i32 %406, ptr %arrayidx83.i129.i.i.i, align 4, !noalias !40
  store i32 %404, ptr %uglygep.i.i.i, align 4, !noalias !40
  br label %if.end126.i163.i.i.i

if.else91.i140.i.i.i:                             ; preds = %if.else67.i125.i.i.i
  %conv69.i131.i.i.i = zext i1 %cmp68.i123.i.i.i to i32
  %add92.i132.i.i.i = add i32 %ofDInfo.sroa.8.0.copyload.i22.i.i.i, %conv69.i131.i.i.i
  %407 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %seqState.i.i.i, align 4, !noalias !40
  %409 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  %and.i.i359.i134.i.i.i = and i32 %410, 31
  %shl.i.i360.i135.i.i.i = shl i32 %408, %and.i.i359.i134.i.i.i
  %shr.i.i361.i136.i.i.i = lshr i32 %shl.i.i360.i135.i.i.i, 31
  %add.i.i362.i137.i.i.i = add i32 %410, 1
  store i32 %add.i.i362.i137.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  %add95.i138.i.i.i = add i32 %add92.i132.i.i.i, %shr.i.i361.i136.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add95.i138.i.i.i)
  %cmp96.i139.i.i.i = icmp eq i32 %add95.i138.i.i.i, 3
  br i1 %cmp96.i139.i.i.i, label %cond.end105.thread.i146.i.i.i, label %cond.end105.i152.i.i.i

cond.end105.thread.i146.i.i.i:                    ; preds = %if.else91.i140.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %411 = ptrtoint ptr %uglygep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %uglygep.i.i.i, align 4, !noalias !40
  %sub101.i142.i.i.i = add i32 %412, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub101.i142.i.i.i)
  %tobool107.not477.i143.i.i.i = icmp eq i32 %sub101.i142.i.i.i, 0
  %lnot.ext109478.i144.i.i.i = zext i1 %tobool107.not477.i143.i.i.i to i32
  %add110479.i145.i.i.i = add i32 %sub101.i142.i.i.i, %lnot.ext109478.i144.i.i.i
  br label %if.then113.i156.i.i.i

cond.end105.i152.i.i.i:                           ; preds = %if.else91.i140.i.i.i
  %arrayidx104.i147.i.i.i = getelementptr %struct.seqState_t, ptr %seqState.i.i.i, i32 0, i32 4, i32 %add95.i138.i.i.i
  %413 = ptrtoint ptr %arrayidx104.i147.i.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %arrayidx104.i147.i.i.i, align 4, !noalias !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %414)
  %tobool107.not.i148.i.i.i = icmp eq i32 %414, 0
  %lnot.ext109.i149.i.i.i = zext i1 %tobool107.not.i148.i.i.i to i32
  %add110.i150.i.i.i = add i32 %414, %lnot.ext109.i149.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add95.i138.i.i.i)
  %cmp111.not.i151.i.i.i = icmp eq i32 %add95.i138.i.i.i, 1
  br i1 %cmp111.not.i151.i.i.i, label %cond.end105.i152.i.i.i.if.end118.i160.i.i.i_crit_edge, label %cond.end105.i152.i.i.i.if.then113.i156.i.i.i_crit_edge

cond.end105.i152.i.i.i.if.then113.i156.i.i.i_crit_edge: ; preds = %cond.end105.i152.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then113.i156.i.i.i

cond.end105.i152.i.i.i.if.end118.i160.i.i.i_crit_edge: ; preds = %cond.end105.i152.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118.i160.i.i.i

if.then113.i156.i.i.i:                            ; preds = %cond.end105.i152.i.i.i.if.then113.i156.i.i.i_crit_edge, %cond.end105.thread.i146.i.i.i
  %add110481.i153.i.i.i = phi i32 [ %add110479.i145.i.i.i, %cond.end105.thread.i146.i.i.i ], [ %add110.i150.i.i.i, %cond.end105.i152.i.i.i.if.then113.i156.i.i.i_crit_edge ]
  %arrayidx115.i154.i.i.i = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i, i32 0, i32 4, i32 1
  %415 = ptrtoint ptr %arrayidx115.i154.i.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %arrayidx115.i154.i.i.i, align 4, !noalias !40
  %arrayidx117.i155.i.i.i = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i, i32 0, i32 4, i32 2
  %417 = ptrtoint ptr %arrayidx117.i155.i.i.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 %416, ptr %arrayidx117.i155.i.i.i, align 4, !noalias !40
  br label %if.end118.i160.i.i.i

if.end118.i160.i.i.i:                             ; preds = %if.then113.i156.i.i.i, %cond.end105.i152.i.i.i.if.end118.i160.i.i.i_crit_edge
  %add110482.i157.i.i.i = phi i32 [ %add110481.i153.i.i.i, %if.then113.i156.i.i.i ], [ %add110.i150.i.i.i, %cond.end105.i152.i.i.i.if.end118.i160.i.i.i_crit_edge ]
  %418 = ptrtoint ptr %uglygep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %uglygep.i.i.i, align 4, !noalias !40
  %arrayidx122.i159.i.i.i = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i, i32 0, i32 4, i32 1
  %420 = ptrtoint ptr %arrayidx122.i159.i.i.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 %419, ptr %arrayidx122.i159.i.i.i, align 4, !noalias !40
  store i32 %add110482.i157.i.i.i, ptr %uglygep.i.i.i, align 4, !noalias !40
  br label %if.end126.i163.i.i.i

if.end126.i163.i.i.i:                             ; preds = %if.end118.i160.i.i.i, %if.else81.i130.i.i.i, %if.then78.i128.i.i.i, %if.end57.i122.i.i.i
  %offset.3.i161.i.i.i = phi i32 [ %offset.1.i118.i.i.i, %if.end57.i122.i.i.i ], [ %402, %if.then78.i128.i.i.i ], [ %404, %if.else81.i130.i.i.i ], [ %add110482.i157.i.i.i, %if.end118.i160.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv14.i24.i.i.i)
  %cmp129.not.i162.i.i.i = icmp eq i32 %conv14.i24.i.i.i, 0
  br i1 %cmp129.not.i162.i.i.i, label %if.end126.i163.i.i.i.if.end137.i174.i.i.i_crit_edge, label %if.then131.i172.i.i.i

if.end126.i163.i.i.i.if.end137.i174.i.i.i_crit_edge: ; preds = %if.end126.i163.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137.i174.i.i.i

if.then131.i172.i.i.i:                            ; preds = %if.end126.i163.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %421 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %seqState.i.i.i, align 4, !noalias !40
  %423 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  %and.i.i364.i165.i.i.i = and i32 %424, 31
  %shl.i.i365.i166.i.i.i = shl i32 %422, %and.i.i364.i165.i.i.i
  %sub.i.i366.i167.i.i.i = sub nsw i32 0, %mlDInfo.sroa.0.sroa.5.0.extract.shift.i13.i.i.i
  %and1.i.i367.i168.i.i.i = and i32 %sub.i.i366.i167.i.i.i, 31
  %shr.i.i368.i169.i.i.i = lshr i32 %shl.i.i365.i166.i.i.i, %and1.i.i367.i168.i.i.i
  %add.i.i369.i170.i.i.i = add i32 %424, %conv14.i24.i.i.i
  store i32 %add.i.i369.i170.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  %add136.i171.i.i.i = add i32 %shr.i.i368.i169.i.i.i, %mlDInfo.sroa.8.0.copyload.i15.i.i.i
  br label %if.end137.i174.i.i.i

if.end137.i174.i.i.i:                             ; preds = %if.then131.i172.i.i.i, %if.end126.i163.i.i.i.if.end137.i174.i.i.i_crit_edge
  %sequence.sroa.8.0.i.i.i = phi i32 [ %mlDInfo.sroa.8.0.copyload.i15.i.i.i, %if.end126.i163.i.i.i.if.end137.i174.i.i.i_crit_edge ], [ %add136.i171.i.i.i, %if.then131.i172.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %add.i25.i.i.i)
  %cmp144.i173.i.i.i = icmp ugt i32 %add.i25.i.i.i, 19
  br i1 %cmp144.i173.i.i.i, label %if.then146.i177.i.i.i, label %if.end137.i174.i.i.i.if.end149.i207.i.i.i_crit_edge

if.end137.i174.i.i.i.if.end149.i207.i.i.i_crit_edge: ; preds = %if.end137.i174.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149.i207.i.i.i

if.then146.i177.i.i.i:                            ; preds = %if.end137.i174.i.i.i
  %425 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %426)
  %cmp.i371.i176.i.i.i = icmp ugt i32 %426, 32
  br i1 %cmp.i371.i176.i.i.i, label %if.then146.i177.i.i.i.if.end149.i207.i.i.i_crit_edge, label %if.end.i375.i181.i.i.i

if.then146.i177.i.i.i.if.end149.i207.i.i.i_crit_edge: ; preds = %if.then146.i177.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149.i207.i.i.i

if.end.i375.i181.i.i.i:                           ; preds = %if.then146.i177.i.i.i
  %427 = ptrtoint ptr %ptr.i590.i.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %ptr.i590.i.i.i, align 4, !noalias !40
  %cmp1.not.i374.i180.i.i.i = icmp ult ptr %428, %322
  br i1 %cmp1.not.i374.i180.i.i.i, label %if.end3.i383.i189.i.i.i, label %BIT_reloadDStreamFast.exit.i380.i186.i.i.i

BIT_reloadDStreamFast.exit.i380.i186.i.i.i:       ; preds = %if.end.i375.i181.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i376.i182.i.i.i = lshr i32 %426, 3
  %idx.neg.i.i377.i183.i.i.i = sub nsw i32 0, %shr.i.i376.i182.i.i.i
  %add.ptr.i.i378.i184.i.i.i = getelementptr i8, ptr %428, i32 %idx.neg.i.i377.i183.i.i.i
  %429 = ptrtoint ptr %ptr.i590.i.i.i to i32
  call void @__asan_store4_noabort(i32 %429)
  store ptr %add.ptr.i.i378.i184.i.i.i, ptr %ptr.i590.i.i.i, align 4, !noalias !40
  %and.i.i379.i185.i.i.i = and i32 %426, 7
  br label %if.end149.sink.split.i205.i.i.i

if.end3.i383.i189.i.i.i:                          ; preds = %if.end.i375.i181.i.i.i
  %430 = ptrtoint ptr %start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %start.i.i.i.i, align 4, !noalias !40
  %cmp5.i382.i188.i.i.i = icmp eq ptr %428, %431
  br i1 %cmp5.i382.i188.i.i.i, label %if.end3.i383.i189.i.i.i.if.end149.i207.i.i.i_crit_edge, label %if.end11.i400.i202.i.i.i

if.end3.i383.i189.i.i.i.if.end149.i207.i.i.i_crit_edge: ; preds = %if.end3.i383.i189.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149.i207.i.i.i

if.end11.i400.i202.i.i.i:                         ; preds = %if.end3.i383.i189.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i387.i190.i.i.i = lshr i32 %426, 3
  %idx.neg.i388.i191.i.i.i = sub nsw i32 0, %shr.i387.i190.i.i.i
  %add.ptr.i389.i192.i.i.i = getelementptr i8, ptr %428, i32 %idx.neg.i388.i191.i.i.i
  %cmp15.i390.i193.i.i.i = icmp ult ptr %add.ptr.i389.i192.i.i.i, %431
  %sub.ptr.lhs.cast.i391.i194.i.i.i = ptrtoint ptr %428 to i32
  %sub.ptr.rhs.cast.i392.i195.i.i.i = ptrtoint ptr %431 to i32
  %sub.ptr.sub.i393.i196.i.i.i = sub i32 %sub.ptr.lhs.cast.i391.i194.i.i.i, %sub.ptr.rhs.cast.i392.i195.i.i.i
  %nbBytes.0.i394.i197.i.i.i = select i1 %cmp15.i390.i193.i.i.i, i32 %sub.ptr.sub.i393.i196.i.i.i, i32 %shr.i387.i190.i.i.i
  %idx.neg21.i396.i198.i.i.i = sub i32 0, %nbBytes.0.i394.i197.i.i.i
  %add.ptr22.i397.i199.i.i.i = getelementptr i8, ptr %428, i32 %idx.neg21.i396.i198.i.i.i
  %432 = ptrtoint ptr %ptr.i590.i.i.i to i32
  call void @__asan_store4_noabort(i32 %432)
  store ptr %add.ptr22.i397.i199.i.i.i, ptr %ptr.i590.i.i.i, align 4, !noalias !40
  %mul.neg.i398.i200.i.i.i = mul i32 %nbBytes.0.i394.i197.i.i.i, -8
  %sub.i399.i201.i.i.i = add i32 %mul.neg.i398.i200.i.i.i, %426
  br label %if.end149.sink.split.i205.i.i.i

if.end149.sink.split.i205.i.i.i:                  ; preds = %if.end11.i400.i202.i.i.i, %BIT_reloadDStreamFast.exit.i380.i186.i.i.i
  %sub.i399.sink.i203.i.i.i = phi i32 [ %sub.i399.i201.i.i.i, %if.end11.i400.i202.i.i.i ], [ %and.i.i379.i185.i.i.i, %BIT_reloadDStreamFast.exit.i380.i186.i.i.i ]
  %add.ptr22.i397.sink.i204.i.i.i = phi ptr [ %add.ptr22.i397.i199.i.i.i, %if.end11.i400.i202.i.i.i ], [ %add.ptr.i.i378.i184.i.i.i, %BIT_reloadDStreamFast.exit.i380.i186.i.i.i ]
  %433 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 %sub.i399.sink.i203.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  %434 = ptrtoint ptr %add.ptr22.i397.sink.i204.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %434, i32 4)
  %435 = load i32, ptr %add.ptr22.i397.sink.i204.i.i.i, align 1, !noalias !40
  %436 = tail call i32 @llvm.bswap.i32(i32 %435) #9
  %437 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_store4_noabort(i32 %437)
  store i32 %436, ptr %seqState.i.i.i, align 4, !noalias !40
  br label %if.end149.i207.i.i.i

if.end149.i207.i.i.i:                             ; preds = %if.end149.sink.split.i205.i.i.i, %if.end3.i383.i189.i.i.i.if.end149.i207.i.i.i_crit_edge, %if.then146.i177.i.i.i.if.end149.i207.i.i.i_crit_edge, %if.end137.i174.i.i.i.if.end149.i207.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i23.i.i.i)
  %cmp163.not.i206.i.i.i = icmp eq i32 %conv.i23.i.i.i, 0
  br i1 %cmp163.not.i206.i.i.i, label %if.end171.i219thread-pre-split.i.i.i, label %if.then165.i216.i.i.i

if.then165.i216.i.i.i:                            ; preds = %if.end149.i207.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %438 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %seqState.i.i.i, align 4, !noalias !40
  %440 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  %and.i.i404.i209.i.i.i = and i32 %441, 31
  %shl.i.i405.i210.i.i.i = shl i32 %439, %and.i.i404.i209.i.i.i
  %sub.i.i406.i211.i.i.i = sub nsw i32 0, %llDInfo.sroa.0.sroa.5.0.extract.shift.i6.i.i.i
  %and1.i.i407.i212.i.i.i = and i32 %sub.i.i406.i211.i.i.i, 31
  %shr.i.i408.i213.i.i.i = lshr i32 %shl.i.i405.i210.i.i.i, %and1.i.i407.i212.i.i.i
  %add.i.i409.i214.i.i.i = add i32 %441, %conv.i23.i.i.i
  store i32 %add.i.i409.i214.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  %add170.i215.i.i.i = add i32 %shr.i.i408.i213.i.i.i, %llDInfo.sroa.8.0.copyload.i8.i.i.i
  br label %if.end171.i219.i.i.i

if.end171.i219thread-pre-split.i.i.i:             ; preds = %if.end149.i207.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %442 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %.pr651.i.i.i = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  br label %if.end171.i219.i.i.i

if.end171.i219.i.i.i:                             ; preds = %if.end171.i219thread-pre-split.i.i.i, %if.then165.i216.i.i.i
  %443 = phi i32 [ %.pr651.i.i.i, %if.end171.i219thread-pre-split.i.i.i ], [ %add.i.i409.i214.i.i.i, %if.then165.i216.i.i.i ]
  %sequence.sroa.0.0.i.i.i = phi i32 [ %llDInfo.sroa.8.0.copyload.i8.i.i.i, %if.end171.i219thread-pre-split.i.i.i ], [ %add170.i215.i.i.i, %if.then165.i216.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %443)
  %cmp.i411.i218.i.i.i = icmp ugt i32 %443, 32
  br i1 %cmp.i411.i218.i.i.i, label %if.end171.i219.i.i.i.BIT_reloadDStream.exit442.i248.i.i.i_crit_edge, label %if.end.i415.i223.i.i.i

if.end171.i219.i.i.i.BIT_reloadDStream.exit442.i248.i.i.i_crit_edge: ; preds = %if.end171.i219.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit442.i248.i.i.i

if.end.i415.i223.i.i.i:                           ; preds = %if.end171.i219.i.i.i
  %444 = ptrtoint ptr %ptr.i590.i.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %ptr.i590.i.i.i, align 4, !noalias !40
  %cmp1.not.i414.i222.i.i.i = icmp ult ptr %445, %322
  br i1 %cmp1.not.i414.i222.i.i.i, label %if.end3.i423.i231.i.i.i, label %BIT_reloadDStreamFast.exit.i420.i228.i.i.i

BIT_reloadDStreamFast.exit.i420.i228.i.i.i:       ; preds = %if.end.i415.i223.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i416.i224.i.i.i = lshr i32 %443, 3
  %idx.neg.i.i417.i225.i.i.i = sub nsw i32 0, %shr.i.i416.i224.i.i.i
  %add.ptr.i.i418.i226.i.i.i = getelementptr i8, ptr %445, i32 %idx.neg.i.i417.i225.i.i.i
  %446 = ptrtoint ptr %ptr.i590.i.i.i to i32
  call void @__asan_store4_noabort(i32 %446)
  store ptr %add.ptr.i.i418.i226.i.i.i, ptr %ptr.i590.i.i.i, align 4, !noalias !40
  %and.i.i419.i227.i.i.i = and i32 %443, 7
  br label %BIT_reloadDStream.exit442.sink.split.i247.i.i.i

if.end3.i423.i231.i.i.i:                          ; preds = %if.end.i415.i223.i.i.i
  %447 = ptrtoint ptr %start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %start.i.i.i.i, align 4, !noalias !40
  %cmp5.i422.i230.i.i.i = icmp eq ptr %445, %448
  br i1 %cmp5.i422.i230.i.i.i, label %if.end3.i423.i231.i.i.i.BIT_reloadDStream.exit442.i248.i.i.i_crit_edge, label %if.end11.i440.i244.i.i.i

if.end3.i423.i231.i.i.i.BIT_reloadDStream.exit442.i248.i.i.i_crit_edge: ; preds = %if.end3.i423.i231.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit442.i248.i.i.i

if.end11.i440.i244.i.i.i:                         ; preds = %if.end3.i423.i231.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i427.i232.i.i.i = lshr i32 %443, 3
  %idx.neg.i428.i233.i.i.i = sub nsw i32 0, %shr.i427.i232.i.i.i
  %add.ptr.i429.i234.i.i.i = getelementptr i8, ptr %445, i32 %idx.neg.i428.i233.i.i.i
  %cmp15.i430.i235.i.i.i = icmp ult ptr %add.ptr.i429.i234.i.i.i, %448
  %sub.ptr.lhs.cast.i431.i236.i.i.i = ptrtoint ptr %445 to i32
  %sub.ptr.rhs.cast.i432.i237.i.i.i = ptrtoint ptr %448 to i32
  %sub.ptr.sub.i433.i238.i.i.i = sub i32 %sub.ptr.lhs.cast.i431.i236.i.i.i, %sub.ptr.rhs.cast.i432.i237.i.i.i
  %nbBytes.0.i434.i239.i.i.i = select i1 %cmp15.i430.i235.i.i.i, i32 %sub.ptr.sub.i433.i238.i.i.i, i32 %shr.i427.i232.i.i.i
  %idx.neg21.i436.i240.i.i.i = sub i32 0, %nbBytes.0.i434.i239.i.i.i
  %add.ptr22.i437.i241.i.i.i = getelementptr i8, ptr %445, i32 %idx.neg21.i436.i240.i.i.i
  %449 = ptrtoint ptr %ptr.i590.i.i.i to i32
  call void @__asan_store4_noabort(i32 %449)
  store ptr %add.ptr22.i437.i241.i.i.i, ptr %ptr.i590.i.i.i, align 4, !noalias !40
  %mul.neg.i438.i242.i.i.i = mul i32 %nbBytes.0.i434.i239.i.i.i, -8
  %sub.i439.i243.i.i.i = add i32 %mul.neg.i438.i242.i.i.i, %443
  br label %BIT_reloadDStream.exit442.sink.split.i247.i.i.i

BIT_reloadDStream.exit442.sink.split.i247.i.i.i:  ; preds = %if.end11.i440.i244.i.i.i, %BIT_reloadDStreamFast.exit.i420.i228.i.i.i
  %and.i.i419.sink.i245.i.i.i = phi i32 [ %and.i.i419.i227.i.i.i, %BIT_reloadDStreamFast.exit.i420.i228.i.i.i ], [ %sub.i439.i243.i.i.i, %if.end11.i440.i244.i.i.i ]
  %add.ptr.i.i418.sink.i246.i.i.i = phi ptr [ %add.ptr.i.i418.i226.i.i.i, %BIT_reloadDStreamFast.exit.i420.i228.i.i.i ], [ %add.ptr22.i437.i241.i.i.i, %if.end11.i440.i244.i.i.i ]
  %450 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %450)
  store i32 %and.i.i419.sink.i245.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  %451 = ptrtoint ptr %add.ptr.i.i418.sink.i246.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %451, i32 4)
  %452 = load i32, ptr %add.ptr.i.i418.sink.i246.i.i.i, align 1, !noalias !40
  %453 = tail call i32 @llvm.bswap.i32(i32 %452) #9
  %454 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_store4_noabort(i32 %454)
  store i32 %453, ptr %seqState.i.i.i, align 4, !noalias !40
  br label %BIT_reloadDStream.exit442.i248.i.i.i

BIT_reloadDStream.exit442.i248.i.i.i:             ; preds = %BIT_reloadDStream.exit442.sink.split.i247.i.i.i, %if.end3.i423.i231.i.i.i.BIT_reloadDStream.exit442.i248.i.i.i_crit_edge, %if.end171.i219.i.i.i.BIT_reloadDStream.exit442.i248.i.i.i_crit_edge
  %455 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %pos.i.i.i, align 4, !noalias !40
  %add183.i250.i.i.i = add i32 %456, %sequence.sroa.0.0.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.3.i161.i.i.i, i32 %add183.i250.i.i.i)
  %cmp185.i251.i.i.i = icmp ugt i32 %offset.3.i161.i.i.i, %add183.i250.i.i.i
  %457 = ptrtoint ptr %dictEnd9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %dictEnd9.val.i.i.i = load ptr, ptr %dictEnd9.i.i.i, align 4
  %458 = ptrtoint ptr %prefixStart8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %prefixStart8.val.i.i.i = load ptr, ptr %prefixStart8.i.i.i, align 4
  %cond190.i255.i.i.i = select i1 %cmp185.i251.i.i.i, ptr %dictEnd9.val.i.i.i, ptr %prefixStart8.val.i.i.i
  %add.ptr.i256.i.i.i = getelementptr i8, ptr %cond190.i255.i.i.i, i32 %add183.i250.i.i.i
  %idx.neg.i257.i.i.i = sub i32 0, %offset.3.i161.i.i.i
  %add.ptr192.i258.i.i.i = getelementptr i8, ptr %add.ptr.i256.i.i.i, i32 %idx.neg.i257.i.i.i
  %add194.i259.i.i.i = add i32 %add183.i250.i.i.i, %sequence.sroa.8.0.i.i.i
  %459 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 %add194.i259.i.i.i, ptr %pos.i.i.i, align 4, !noalias !40
  %llDInfo.sroa.0.sroa.7.0.insert.ext.i260.i.i.i = and i32 %llDInfo.sroa.0.0.copyload.i5.i.i.i, 255
  %DInfo.sroa.0.0.extract.shift.i.i261.i.i.i = lshr i32 %llDInfo.sroa.0.0.copyload.i5.i.i.i, 16
  %460 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %seqState.i.i.i, align 4, !noalias !40
  %462 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  %464 = add i32 %463, %llDInfo.sroa.0.sroa.7.0.insert.ext.i260.i.i.i
  %sub1.i.i.i.i262.i.i.i = sub i32 0, %464
  %and.i.i.i.i.i263.i.i.i = and i32 %sub1.i.i.i.i262.i.i.i, 31
  %shr.i.i.i.i.i264.i.i.i = lshr i32 %461, %and.i.i.i.i.i263.i.i.i
  %arrayidx.i.i.i.i.i265.i.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %llDInfo.sroa.0.sroa.7.0.insert.ext.i260.i.i.i
  %465 = ptrtoint ptr %arrayidx.i.i.i.i.i265.i.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %arrayidx.i.i.i.i.i265.i.i.i, align 4, !noalias !40
  %and1.i.i.i.i.i266.i.i.i = and i32 %shr.i.i.i.i.i264.i.i.i, %466
  %add.i.i267.i.i.i = add i32 %and1.i.i.i.i.i266.i.i.i, %DInfo.sroa.0.0.extract.shift.i.i261.i.i.i
  %467 = ptrtoint ptr %stateLL.i.i.i to i32
  call void @__asan_store4_noabort(i32 %467)
  store i32 %add.i.i267.i.i.i, ptr %stateLL.i.i.i, align 4, !noalias !40
  %mlDInfo.sroa.0.sroa.7.0.insert.ext.i268.i.i.i = and i32 %mlDInfo.sroa.0.0.copyload.i12.i.i.i, 255
  %DInfo.sroa.0.0.extract.shift.i293.i269.i.i.i = lshr i32 %mlDInfo.sroa.0.0.copyload.i12.i.i.i, 16
  %468 = add i32 %464, %mlDInfo.sroa.0.sroa.7.0.insert.ext.i268.i.i.i
  %sub1.i.i.i295.i270.i.i.i = sub i32 0, %468
  %and.i.i.i.i296.i271.i.i.i = and i32 %sub1.i.i.i295.i270.i.i.i, 31
  %shr.i.i.i.i297.i272.i.i.i = lshr i32 %461, %and.i.i.i.i296.i271.i.i.i
  %arrayidx.i.i.i.i298.i273.i.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %mlDInfo.sroa.0.sroa.7.0.insert.ext.i268.i.i.i
  %469 = ptrtoint ptr %arrayidx.i.i.i.i298.i273.i.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %arrayidx.i.i.i.i298.i273.i.i.i, align 4, !noalias !40
  %and1.i.i.i.i299.i274.i.i.i = and i32 %shr.i.i.i.i297.i272.i.i.i, %470
  store i32 %468, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  %add.i300.i275.i.i.i = add i32 %and1.i.i.i.i299.i274.i.i.i, %DInfo.sroa.0.0.extract.shift.i293.i269.i.i.i
  %471 = ptrtoint ptr %stateML.i.i.i to i32
  call void @__asan_store4_noabort(i32 %471)
  store i32 %add.i300.i275.i.i.i, ptr %stateML.i.i.i, align 4, !noalias !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %468)
  %cmp.i444.i276.i.i.i = icmp ugt i32 %468, 32
  br i1 %cmp.i444.i276.i.i.i, label %BIT_reloadDStream.exit442.i248.i.i.i.ZSTD_decodeSequence.exit313.i.i.i_crit_edge, label %if.end.i448.i280.i.i.i

BIT_reloadDStream.exit442.i248.i.i.i.ZSTD_decodeSequence.exit313.i.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit442.i248.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_decodeSequence.exit313.i.i.i

if.end.i448.i280.i.i.i:                           ; preds = %BIT_reloadDStream.exit442.i248.i.i.i
  %472 = ptrtoint ptr %ptr.i590.i.i.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %ptr.i590.i.i.i, align 4, !noalias !40
  %cmp1.not.i447.i279.i.i.i = icmp ult ptr %473, %322
  br i1 %cmp1.not.i447.i279.i.i.i, label %if.end3.i456.i288.i.i.i, label %BIT_reloadDStreamFast.exit.i453.i285.i.i.i

BIT_reloadDStreamFast.exit.i453.i285.i.i.i:       ; preds = %if.end.i448.i280.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i449.i281.i.i.i = lshr i32 %468, 3
  %idx.neg.i.i450.i282.i.i.i = sub nsw i32 0, %shr.i.i449.i281.i.i.i
  %add.ptr.i.i451.i283.i.i.i = getelementptr i8, ptr %473, i32 %idx.neg.i.i450.i282.i.i.i
  %474 = ptrtoint ptr %ptr.i590.i.i.i to i32
  call void @__asan_store4_noabort(i32 %474)
  store ptr %add.ptr.i.i451.i283.i.i.i, ptr %ptr.i590.i.i.i, align 4, !noalias !40
  %and.i.i452.i284.i.i.i = and i32 %468, 7
  br label %BIT_reloadDStream.exit475.sink.split.i304.i.i.i

if.end3.i456.i288.i.i.i:                          ; preds = %if.end.i448.i280.i.i.i
  %475 = ptrtoint ptr %start.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %start.i.i.i.i, align 4, !noalias !40
  %cmp5.i455.i287.i.i.i = icmp eq ptr %473, %476
  br i1 %cmp5.i455.i287.i.i.i, label %if.end3.i456.i288.i.i.i.ZSTD_decodeSequence.exit313.i.i.i_crit_edge, label %if.end11.i473.i301.i.i.i

if.end3.i456.i288.i.i.i.ZSTD_decodeSequence.exit313.i.i.i_crit_edge: ; preds = %if.end3.i456.i288.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_decodeSequence.exit313.i.i.i

if.end11.i473.i301.i.i.i:                         ; preds = %if.end3.i456.i288.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i460.i289.i.i.i = lshr i32 %468, 3
  %idx.neg.i461.i290.i.i.i = sub nsw i32 0, %shr.i460.i289.i.i.i
  %add.ptr.i462.i291.i.i.i = getelementptr i8, ptr %473, i32 %idx.neg.i461.i290.i.i.i
  %cmp15.i463.i292.i.i.i = icmp ult ptr %add.ptr.i462.i291.i.i.i, %476
  %sub.ptr.lhs.cast.i464.i293.i.i.i = ptrtoint ptr %473 to i32
  %sub.ptr.rhs.cast.i465.i294.i.i.i = ptrtoint ptr %476 to i32
  %sub.ptr.sub.i466.i295.i.i.i = sub i32 %sub.ptr.lhs.cast.i464.i293.i.i.i, %sub.ptr.rhs.cast.i465.i294.i.i.i
  %nbBytes.0.i467.i296.i.i.i = select i1 %cmp15.i463.i292.i.i.i, i32 %sub.ptr.sub.i466.i295.i.i.i, i32 %shr.i460.i289.i.i.i
  %idx.neg21.i469.i297.i.i.i = sub i32 0, %nbBytes.0.i467.i296.i.i.i
  %add.ptr22.i470.i298.i.i.i = getelementptr i8, ptr %473, i32 %idx.neg21.i469.i297.i.i.i
  %477 = ptrtoint ptr %ptr.i590.i.i.i to i32
  call void @__asan_store4_noabort(i32 %477)
  store ptr %add.ptr22.i470.i298.i.i.i, ptr %ptr.i590.i.i.i, align 4, !noalias !40
  %mul.neg.i471.i299.i.i.i = mul i32 %nbBytes.0.i467.i296.i.i.i, -8
  %sub.i472.i300.i.i.i = add i32 %mul.neg.i471.i299.i.i.i, %468
  br label %BIT_reloadDStream.exit475.sink.split.i304.i.i.i

BIT_reloadDStream.exit475.sink.split.i304.i.i.i:  ; preds = %if.end11.i473.i301.i.i.i, %BIT_reloadDStreamFast.exit.i453.i285.i.i.i
  %and.i.i452.sink.i302.i.i.i = phi i32 [ %and.i.i452.i284.i.i.i, %BIT_reloadDStreamFast.exit.i453.i285.i.i.i ], [ %sub.i472.i300.i.i.i, %if.end11.i473.i301.i.i.i ]
  %add.ptr.i.i451.sink.i303.i.i.i = phi ptr [ %add.ptr.i.i451.i283.i.i.i, %BIT_reloadDStreamFast.exit.i453.i285.i.i.i ], [ %add.ptr22.i470.i298.i.i.i, %if.end11.i473.i301.i.i.i ]
  %478 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %478)
  store i32 %and.i.i452.sink.i302.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  %479 = ptrtoint ptr %add.ptr.i.i451.sink.i303.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %479, i32 4)
  %480 = load i32, ptr %add.ptr.i.i451.sink.i303.i.i.i, align 1, !noalias !40
  %481 = tail call i32 @llvm.bswap.i32(i32 %480) #9
  %482 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 %481, ptr %seqState.i.i.i, align 4, !noalias !40
  br label %ZSTD_decodeSequence.exit313.i.i.i

ZSTD_decodeSequence.exit313.i.i.i:                ; preds = %BIT_reloadDStream.exit475.sink.split.i304.i.i.i, %if.end3.i456.i288.i.i.i.ZSTD_decodeSequence.exit313.i.i.i_crit_edge, %BIT_reloadDStream.exit442.i248.i.i.i.ZSTD_decodeSequence.exit313.i.i.i_crit_edge
  %ofDInfo.sroa.0.sroa.7.0.insert.ext.i305.i.i.i = and i32 %ofDInfo.sroa.0.0.copyload.i19.i.i.i, 255
  %DInfo.sroa.0.0.extract.shift.i301.i306.i.i.i = lshr i32 %ofDInfo.sroa.0.0.copyload.i19.i.i.i, 16
  %483 = ptrtoint ptr %seqState.i.i.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %seqState.i.i.i, align 4, !noalias !40
  %485 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  %487 = add i32 %486, %ofDInfo.sroa.0.sroa.7.0.insert.ext.i305.i.i.i
  %sub1.i.i.i303.i307.i.i.i = sub i32 0, %487
  %and.i.i.i.i304.i308.i.i.i = and i32 %sub1.i.i.i303.i307.i.i.i, 31
  %shr.i.i.i.i305.i309.i.i.i = lshr i32 %484, %and.i.i.i.i304.i308.i.i.i
  %arrayidx.i.i.i.i306.i310.i.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %ofDInfo.sroa.0.sroa.7.0.insert.ext.i305.i.i.i
  %488 = ptrtoint ptr %arrayidx.i.i.i.i306.i310.i.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %arrayidx.i.i.i.i306.i310.i.i.i, align 4, !noalias !40
  %and1.i.i.i.i307.i311.i.i.i = and i32 %shr.i.i.i.i305.i309.i.i.i, %489
  store i32 %487, ptr %bitsConsumed.i.i.i.i.i.i, align 4, !noalias !40
  %add.i308.i312.i.i.i = add i32 %and1.i.i.i.i307.i311.i.i.i, %DInfo.sroa.0.0.extract.shift.i301.i306.i.i.i
  %490 = ptrtoint ptr %stateOffb.i.i.i to i32
  call void @__asan_store4_noabort(i32 %490)
  store i32 %add.i308.i312.i.i.i, ptr %stateOffb.i.i.i, align 4, !noalias !40
  %and.i.i.i = and i32 %seqNb.1.i.i.i, 3
  %arrayidx46.i.i.i = getelementptr [4 x %struct.seq_t], ptr %sequences.i.i.i, i32 0, i32 %and.i.i.i
  %491 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %.fca.0.load.i.i.i = load i32, ptr %arrayidx46.i.i.i, align 4
  %.fca.0.insert.i.i.i = insertvalue [4 x i32] poison, i32 %.fca.0.load.i.i.i, 0
  %.fca.1.gep.i.i.i = getelementptr inbounds [4 x i32], ptr %arrayidx46.i.i.i, i32 0, i32 1
  %492 = ptrtoint ptr %.fca.1.gep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %.fca.1.load.i.i.i = load i32, ptr %.fca.1.gep.i.i.i, align 4
  %.fca.1.insert.i.i.i = insertvalue [4 x i32] %.fca.0.insert.i.i.i, i32 %.fca.1.load.i.i.i, 1
  %.fca.2.gep.i.i.i = getelementptr inbounds [4 x i32], ptr %arrayidx46.i.i.i, i32 0, i32 2
  %493 = ptrtoint ptr %.fca.2.gep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %.fca.2.load.i.i.i = load i32, ptr %.fca.2.gep.i.i.i, align 4
  %.fca.2.insert.i.i.i = insertvalue [4 x i32] %.fca.1.insert.i.i.i, i32 %.fca.2.load.i.i.i, 2
  %.fca.3.gep.i.i.i = getelementptr inbounds [4 x i32], ptr %arrayidx46.i.i.i, i32 0, i32 3
  %494 = ptrtoint ptr %.fca.3.gep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %.fca.3.load.i.i.i = load i32, ptr %.fca.3.gep.i.i.i, align 4
  %.fca.3.insert.i.i.i = insertvalue [4 x i32] %.fca.2.insert.i.i.i, i32 %.fca.3.load.i.i.i, 3
  %add.ptr.i314.i.i.i = getelementptr i8, ptr %op.0.i.i.i, i32 %.fca.0.load.i.i.i
  %add.i315.i.i.i = add i32 %.fca.1.load.i.i.i, %.fca.0.load.i.i.i
  %495 = ptrtoint ptr %litPtr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %litPtr.i.i.i, align 4
  %add.ptr5.i.i.i.i = getelementptr i8, ptr %496, i32 %.fca.0.load.i.i.i
  %idx.neg.i316.i.i.i = sub i32 0, %.fca.2.load.i.i.i
  %add.ptr6.i.i.i.i = getelementptr i8, ptr %add.ptr.i314.i.i.i, i32 %idx.neg.i316.i.i.i
  %cmp.i317.i.i.i = icmp ugt ptr %add.ptr5.i.i.i.i, %add.ptr3.i.i.i
  %add.ptr3.i.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 -32
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %op.0.i.i.i, i32 %add.i315.i.i.i
  %cmp7.i.i.i.i = icmp ugt ptr %add.ptr2.i.i.i.i, %add.ptr3.i.i.i.i
  %or.cond.i318.i.i.i = select i1 %cmp.i317.i.i.i, i1 true, i1 %cmp7.i.i.i.i
  br i1 %or.cond.i318.i.i.i, label %ZSTD_decodeSequence.exit313.i.i.i.if.then.i319.i.i.i_crit_edge, label %lor.rhs.i.i.i.i, !prof !43

ZSTD_decodeSequence.exit313.i.i.i.if.then.i319.i.i.i_crit_edge: ; preds = %ZSTD_decodeSequence.exit313.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i319.i.i.i

lor.rhs.i.i.i.i:                                  ; preds = %ZSTD_decodeSequence.exit313.i.i.i
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %op.0.i.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %add8.i.i.i.i = add i32 %add.i315.i.i.i, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i.i, i32 %add8.i.i.i.i)
  %cmp9.i.i.i.i = icmp ult i32 %sub.ptr.sub.i.i.i.i, %add8.i.i.i.i
  br i1 %cmp9.i.i.i.i, label %lor.rhs.i.i.i.i.if.then.i319.i.i.i_crit_edge, label %if.end.i.i.i.i, !prof !39

lor.rhs.i.i.i.i.if.then.i319.i.i.i_crit_edge:     ; preds = %lor.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i319.i.i.i

if.then.i319.i.i.i:                               ; preds = %lor.rhs.i.i.i.i.if.then.i319.i.i.i_crit_edge, %ZSTD_decodeSequence.exit313.i.i.i.if.then.i319.i.i.i_crit_edge
  %call11.i.i.i.i = call fastcc i32 @ZSTD_execSequenceEnd(ptr noundef %op.0.i.i.i, ptr noundef %add.ptr1.i.i.i, [4 x i32] %.fca.3.insert.i.i.i, ptr noundef nonnull %litPtr.i.i.i, ptr noundef %add.ptr3.i.i.i, ptr noundef %29, ptr noundef %31, ptr noundef %33) #9
  br label %ZSTD_execSequence.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %lor.rhs.i.i.i.i
  %497 = call ptr @memcpy(ptr %op.0.i.i.i, ptr %496, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.fca.0.load.i.i.i)
  %cmp13.i.i.i.i = icmp ugt i32 %.fca.0.load.i.i.i, 16
  br i1 %cmp13.i.i.i.i, label %if.then16.i.i.i.i, label %if.end.i.i.i.i.if.end20.i.i.i.i_crit_edge, !prof !39

if.end.i.i.i.i.if.end20.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i.i.i

if.then16.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  %add.ptr17.i.i.i.i = getelementptr i8, ptr %op.0.i.i.i, i32 16
  %add.ptr18.i.i.i.i = getelementptr i8, ptr %496, i32 16
  %sub.i320.i.i.i = add i32 %.fca.0.load.i.i.i, -16
  %498 = call ptr @memcpy(ptr %add.ptr17.i.i.i.i, ptr %add.ptr18.i.i.i.i, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub.i320.i.i.i)
  %cmp5.i.i321.i.i.i = icmp slt i32 %sub.i320.i.i.i, 17
  br i1 %cmp5.i.i321.i.i.i, label %if.then16.i.i.i.i.if.end20.i.i.i.i_crit_edge, label %if.end.i.i322.i.i.i

if.then16.i.i.i.i.if.end20.i.i.i.i_crit_edge:     ; preds = %if.then16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i.i.i

if.end.i.i322.i.i.i:                              ; preds = %if.then16.i.i.i.i
  %add.ptr7.i.i.i.i.i = getelementptr i8, ptr %op.0.i.i.i, i32 32
  br label %do.body9.i.i.i.i.i

do.body9.i.i.i.i.i:                               ; preds = %do.body9.i.i.i.i.i.do.body9.i.i.i.i.i_crit_edge, %if.end.i.i322.i.i.i
  %src.pn.i.i.i.i.i = phi ptr [ %add.ptr18.i.i.i.i, %if.end.i.i322.i.i.i ], [ %add.ptr11.i.i.i.i.i, %do.body9.i.i.i.i.i.do.body9.i.i.i.i.i_crit_edge ]
  %op.1.i.i.i.i.i = phi ptr [ %add.ptr7.i.i.i.i.i, %if.end.i.i322.i.i.i ], [ %add.ptr12.i.i.i.i.i, %do.body9.i.i.i.i.i.do.body9.i.i.i.i.i_crit_edge ]
  %ip.1.i.i.i.i.i = getelementptr i8, ptr %src.pn.i.i.i.i.i, i32 16
  %499 = call ptr @memcpy(ptr %op.1.i.i.i.i.i, ptr %ip.1.i.i.i.i.i, i32 16)
  %add.ptr10.i.i.i.i.i = getelementptr i8, ptr %op.1.i.i.i.i.i, i32 16
  %add.ptr11.i.i.i.i.i = getelementptr i8, ptr %src.pn.i.i.i.i.i, i32 32
  %500 = call ptr @memcpy(ptr %add.ptr10.i.i.i.i.i, ptr %add.ptr11.i.i.i.i.i, i32 16)
  %add.ptr12.i.i.i.i.i = getelementptr i8, ptr %op.1.i.i.i.i.i, i32 32
  %cmp15.i.i323.i.i.i = icmp ult ptr %add.ptr12.i.i.i.i.i, %add.ptr.i314.i.i.i
  br i1 %cmp15.i.i323.i.i.i, label %do.body9.i.i.i.i.i.do.body9.i.i.i.i.i_crit_edge, label %do.body9.i.i.i.i.i.if.end20.i.i.i.i_crit_edge

do.body9.i.i.i.i.i.if.end20.i.i.i.i_crit_edge:    ; preds = %do.body9.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i.i.i

do.body9.i.i.i.i.i.do.body9.i.i.i.i.i_crit_edge:  ; preds = %do.body9.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9.i.i.i.i.i

if.end20.i.i.i.i:                                 ; preds = %do.body9.i.i.i.i.i.if.end20.i.i.i.i_crit_edge, %if.then16.i.i.i.i.if.end20.i.i.i.i_crit_edge, %if.end.i.i.i.i.if.end20.i.i.i.i_crit_edge
  %501 = ptrtoint ptr %litPtr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %501)
  store ptr %add.ptr5.i.i.i.i, ptr %litPtr.i.i.i, align 4
  %sub.ptr.lhs.cast22.i.i.i.i = ptrtoint ptr %add.ptr.i314.i.i.i to i32
  %sub.ptr.sub24.i.i.i.i = sub i32 %sub.ptr.lhs.cast22.i.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %.fca.2.load.i.i.i, i32 %sub.ptr.sub24.i.i.i.i)
  %cmp25.i.i.i.i = icmp ugt i32 %.fca.2.load.i.i.i, %sub.ptr.sub24.i.i.i.i
  br i1 %cmp25.i.i.i.i, label %if.then27.i.i.i.i, label %if.end20.i.i.i.i.if.end55.i.i.i.i_crit_edge

if.end20.i.i.i.i.if.end55.i.i.i.i_crit_edge:      ; preds = %if.end20.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i.i.i.i

if.then27.i.i.i.i:                                ; preds = %if.end20.i.i.i.i
  %sub.ptr.rhs.cast30.i.i.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub31.i.i.i.i = sub i32 %sub.ptr.lhs.cast22.i.i.i.i, %sub.ptr.rhs.cast30.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %.fca.2.load.i.i.i, i32 %sub.ptr.sub31.i.i.i.i)
  %cmp32.i.i.i.i = icmp ugt i32 %.fca.2.load.i.i.i, %sub.ptr.sub31.i.i.i.i
  br i1 %cmp32.i.i.i.i, label %if.then27.i.i.i.i.cleanup98.thread.i.i.i_crit_edge, label %if.end37.i.i.i.i, !prof !39

if.then27.i.i.i.i.cleanup98.thread.i.i.i_crit_edge: ; preds = %if.then27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98.thread.i.i.i

if.end37.i.i.i.i:                                 ; preds = %if.then27.i.i.i.i
  %sub.ptr.lhs.cast38.i.i.i.i = ptrtoint ptr %add.ptr6.i.i.i.i to i32
  %sub.ptr.sub40.i.i.i.i = sub i32 %sub.ptr.lhs.cast38.i.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %add.ptr41.i.i.i.i = getelementptr i8, ptr %33, i32 %sub.ptr.sub40.i.i.i.i
  %add.ptr43.i.i.i.i = getelementptr i8, ptr %add.ptr41.i.i.i.i, i32 %.fca.1.load.i.i.i
  %cmp44.not.i.i.i.i = icmp ugt ptr %add.ptr43.i.i.i.i, %33
  br i1 %cmp44.not.i.i.i.i, label %if.end48.i.i.i.i, label %if.then46.i.i.i.i

if.then46.i.i.i.i:                                ; preds = %if.end37.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %502 = call ptr @memmove(ptr %add.ptr.i314.i.i.i, ptr %add.ptr41.i.i.i.i, i32 %.fca.1.load.i.i.i)
  br label %ZSTD_execSequence.exit.i.i.i

if.end48.i.i.i.i:                                 ; preds = %if.end37.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %diff.neg.i.i.i.i = sub i32 0, %sub.ptr.sub40.i.i.i.i
  %503 = call ptr @memmove(ptr %add.ptr.i314.i.i.i, ptr %add.ptr41.i.i.i.i, i32 %diff.neg.i.i.i.i)
  %add.ptr52.i.i.i.i = getelementptr i8, ptr %add.ptr.i314.i.i.i, i32 %diff.neg.i.i.i.i
  %sub54.i.i.i.i = add i32 %sub.ptr.sub40.i.i.i.i, %.fca.1.load.i.i.i
  br label %if.end55.i.i.i.i

if.end55.i.i.i.i:                                 ; preds = %if.end48.i.i.i.i, %if.end20.i.i.i.i.if.end55.i.i.i.i_crit_edge
  %op.addr.0.i.i.i.i = phi ptr [ %add.ptr52.i.i.i.i, %if.end48.i.i.i.i ], [ %add.ptr.i314.i.i.i, %if.end20.i.i.i.i.if.end55.i.i.i.i_crit_edge ]
  %match.0.i.i.i.i = phi ptr [ %29, %if.end48.i.i.i.i ], [ %add.ptr6.i.i.i.i, %if.end20.i.i.i.i.if.end55.i.i.i.i_crit_edge ]
  %sequence.sroa.7.0.i.i.i.i = phi i32 [ %sub54.i.i.i.i, %if.end48.i.i.i.i ], [ %.fca.1.load.i.i.i, %if.end20.i.i.i.i.if.end55.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %.fca.2.load.i.i.i)
  %cmp57.i.i.i.i = icmp ugt i32 %.fca.2.load.i.i.i, 15
  br i1 %cmp57.i.i.i.i, label %if.then61.i.i.i.i, label %if.end63.i.i.i.i, !prof !38

if.then61.i.i.i.i:                                ; preds = %if.end55.i.i.i.i
  %add.ptr.i121.i.i.i.i = getelementptr i8, ptr %op.addr.0.i.i.i.i, i32 %sequence.sroa.7.0.i.i.i.i
  %504 = call ptr @memcpy(ptr %op.addr.0.i.i.i.i, ptr %match.0.i.i.i.i, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sequence.sroa.7.0.i.i.i.i)
  %cmp5.i126.i.i.i.i = icmp slt i32 %sequence.sroa.7.0.i.i.i.i, 17
  br i1 %cmp5.i126.i.i.i.i, label %if.then61.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge, label %if.end.i128.i.i.i.i

if.then61.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge: ; preds = %if.then61.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_execSequence.exit.i.i.i

if.end.i128.i.i.i.i:                              ; preds = %if.then61.i.i.i.i
  %add.ptr7.i127.i.i.i.i = getelementptr i8, ptr %op.addr.0.i.i.i.i, i32 16
  br label %do.body9.i136.i.i.i.i

do.body9.i136.i.i.i.i:                            ; preds = %do.body9.i136.i.i.i.i.do.body9.i136.i.i.i.i_crit_edge, %if.end.i128.i.i.i.i
  %src.pn.i129.i.i.i.i = phi ptr [ %match.0.i.i.i.i, %if.end.i128.i.i.i.i ], [ %add.ptr11.i133.i.i.i.i, %do.body9.i136.i.i.i.i.do.body9.i136.i.i.i.i_crit_edge ]
  %op.1.i130.i.i.i.i = phi ptr [ %add.ptr7.i127.i.i.i.i, %if.end.i128.i.i.i.i ], [ %add.ptr12.i134.i.i.i.i, %do.body9.i136.i.i.i.i.do.body9.i136.i.i.i.i_crit_edge ]
  %ip.1.i131.i.i.i.i = getelementptr i8, ptr %src.pn.i129.i.i.i.i, i32 16
  %505 = call ptr @memcpy(ptr %op.1.i130.i.i.i.i, ptr %ip.1.i131.i.i.i.i, i32 16)
  %add.ptr10.i132.i.i.i.i = getelementptr i8, ptr %op.1.i130.i.i.i.i, i32 16
  %add.ptr11.i133.i.i.i.i = getelementptr i8, ptr %src.pn.i129.i.i.i.i, i32 32
  %506 = call ptr @memcpy(ptr %add.ptr10.i132.i.i.i.i, ptr %add.ptr11.i133.i.i.i.i, i32 16)
  %add.ptr12.i134.i.i.i.i = getelementptr i8, ptr %op.1.i130.i.i.i.i, i32 32
  %cmp15.i135.i.i.i.i = icmp ult ptr %add.ptr12.i134.i.i.i.i, %add.ptr.i121.i.i.i.i
  br i1 %cmp15.i135.i.i.i.i, label %do.body9.i136.i.i.i.i.do.body9.i136.i.i.i.i_crit_edge, label %do.body9.i136.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge

do.body9.i136.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge: ; preds = %do.body9.i136.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_execSequence.exit.i.i.i

do.body9.i136.i.i.i.i.do.body9.i136.i.i.i.i_crit_edge: ; preds = %do.body9.i136.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9.i136.i.i.i.i

if.end63.i.i.i.i:                                 ; preds = %if.end55.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.fca.2.load.i.i.i)
  %cmp.i.i324.i.i.i = icmp ult i32 %.fca.2.load.i.i.i, 8
  br i1 %cmp.i.i324.i.i.i, label %if.then.i.i.i.i.i, label %if.else.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end63.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i.i.i = getelementptr [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i32 0, i32 %.fca.2.load.i.i.i
  %507 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %509 = ptrtoint ptr %match.0.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %509)
  %510 = load i8, ptr %match.0.i.i.i.i, align 1
  %511 = ptrtoint ptr %op.addr.0.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %511)
  store i8 %510, ptr %op.addr.0.i.i.i.i, align 1
  %arrayidx3.i.i.i.i.i = getelementptr i8, ptr %match.0.i.i.i.i, i32 1
  %512 = ptrtoint ptr %arrayidx3.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %512)
  %513 = load i8, ptr %arrayidx3.i.i.i.i.i, align 1
  %arrayidx4.i.i.i.i.i = getelementptr i8, ptr %op.addr.0.i.i.i.i, i32 1
  %514 = ptrtoint ptr %arrayidx4.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %514)
  store i8 %513, ptr %arrayidx4.i.i.i.i.i, align 1
  %arrayidx5.i.i.i.i.i = getelementptr i8, ptr %match.0.i.i.i.i, i32 2
  %515 = ptrtoint ptr %arrayidx5.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %arrayidx5.i.i.i.i.i, align 1
  %arrayidx6.i.i.i.i.i = getelementptr i8, ptr %op.addr.0.i.i.i.i, i32 2
  %517 = ptrtoint ptr %arrayidx6.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %517)
  store i8 %516, ptr %arrayidx6.i.i.i.i.i, align 1
  %arrayidx7.i.i.i.i.i = getelementptr i8, ptr %match.0.i.i.i.i, i32 3
  %518 = ptrtoint ptr %arrayidx7.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %518)
  %519 = load i8, ptr %arrayidx7.i.i.i.i.i, align 1
  %arrayidx8.i.i.i.i.i = getelementptr i8, ptr %op.addr.0.i.i.i.i, i32 3
  %520 = ptrtoint ptr %arrayidx8.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %520)
  store i8 %519, ptr %arrayidx8.i.i.i.i.i, align 1
  %arrayidx9.i.i.i.i.i = getelementptr [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i32 0, i32 %.fca.2.load.i.i.i
  %521 = ptrtoint ptr %arrayidx9.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %arrayidx9.i.i.i.i.i, align 4
  %add.ptr.i138.i.i.i.i = getelementptr i8, ptr %match.0.i.i.i.i, i32 %522
  %add.ptr10.i139.i.i.i.i = getelementptr i8, ptr %op.addr.0.i.i.i.i, i32 4
  %523 = ptrtoint ptr %add.ptr.i138.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %523, i32 4)
  %524 = load i32, ptr %add.ptr.i138.i.i.i.i, align 1
  %525 = ptrtoint ptr %add.ptr10.i139.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %525, i32 4)
  store i32 %524, ptr %add.ptr10.i139.i.i.i.i, align 1
  %idx.neg.i.i325.i.i.i = sub i32 0, %508
  %add.ptr11.i140.i.i.i.i = getelementptr i8, ptr %add.ptr.i138.i.i.i.i, i32 %idx.neg.i.i325.i.i.i
  br label %ZSTD_overlapCopy8.exit.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end63.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %526 = ptrtoint ptr %match.0.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %526, i32 8)
  %527 = load i64, ptr %match.0.i.i.i.i, align 1
  %528 = ptrtoint ptr %op.addr.0.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %528, i32 8)
  store i64 %527, ptr %op.addr.0.i.i.i.i, align 1
  br label %ZSTD_overlapCopy8.exit.i.i.i.i

ZSTD_overlapCopy8.exit.i.i.i.i:                   ; preds = %if.else.i.i.i.i.i, %if.then.i.i.i.i.i
  %match.1.i.i.i.i = phi ptr [ %add.ptr11.i140.i.i.i.i, %if.then.i.i.i.i.i ], [ %match.0.i.i.i.i, %if.else.i.i.i.i.i ]
  %add.ptr12.i141.i.i.i.i = getelementptr i8, ptr %match.1.i.i.i.i, i32 8
  %add.ptr13.i.i.i.i.i = getelementptr i8, ptr %op.addr.0.i.i.i.i, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sequence.sroa.7.0.i.i.i.i)
  %cmp66.i.i.i.i = icmp ugt i32 %sequence.sroa.7.0.i.i.i.i, 8
  br i1 %cmp66.i.i.i.i, label %if.then68.i.i.i.i, label %ZSTD_overlapCopy8.exit.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge

ZSTD_overlapCopy8.exit.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge: ; preds = %ZSTD_overlapCopy8.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_execSequence.exit.i.i.i

if.then68.i.i.i.i:                                ; preds = %ZSTD_overlapCopy8.exit.i.i.i.i
  %add.ptr.i143.i.i.i.i = getelementptr i8, ptr %op.addr.0.i.i.i.i, i32 %sequence.sroa.7.0.i.i.i.i
  %sub.ptr.lhs.cast.i144.i.i.i.i = ptrtoint ptr %add.ptr13.i.i.i.i.i to i32
  %sub.ptr.rhs.cast.i145.i.i.i.i = ptrtoint ptr %add.ptr12.i141.i.i.i.i to i32
  %sub.ptr.sub.i146.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i144.i.i.i.i, %sub.ptr.rhs.cast.i145.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i146.i.i.i.i)
  %cmp1.i147.i.i.i.i = icmp slt i32 %sub.ptr.sub.i146.i.i.i.i, 16
  br i1 %cmp1.i147.i.i.i.i, label %if.then68.i.i.i.i.do.body.i.i.i.i.i_crit_edge, label %if.else.i149.i.i.i.i

if.then68.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %if.then68.i.i.i.i
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.then68.i.i.i.i.do.body.i.i.i.i.i_crit_edge
  %ip.0.i.i.i.i.i = phi ptr [ %add.ptr3.i.i.i.i.i, %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ], [ %add.ptr12.i141.i.i.i.i, %if.then68.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %op.0.i.i.i.i.i = phi ptr [ %add.ptr2.i.i.i.i.i, %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ], [ %add.ptr13.i.i.i.i.i, %if.then68.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %529 = ptrtoint ptr %ip.0.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %529, i32 8)
  %530 = load i64, ptr %ip.0.i.i.i.i.i, align 1
  %531 = ptrtoint ptr %op.0.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %531, i32 8)
  store i64 %530, ptr %op.0.i.i.i.i.i, align 1
  %add.ptr2.i.i.i.i.i = getelementptr i8, ptr %op.0.i.i.i.i.i, i32 8
  %add.ptr3.i.i.i.i.i = getelementptr i8, ptr %ip.0.i.i.i.i.i, i32 8
  %cmp4.i.i.i.i.i = icmp ult ptr %add.ptr2.i.i.i.i.i, %add.ptr.i143.i.i.i.i
  br i1 %cmp4.i.i.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, label %do.body.i.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge

do.body.i.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_execSequence.exit.i.i.i

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i

if.else.i149.i.i.i.i:                             ; preds = %if.then68.i.i.i.i
  %sub70.i.i.i.i = add i32 %sequence.sroa.7.0.i.i.i.i, -8
  %532 = call ptr @memcpy(ptr %add.ptr13.i.i.i.i.i, ptr %add.ptr12.i141.i.i.i.i, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub70.i.i.i.i)
  %cmp5.i148.i.i.i.i = icmp slt i32 %sub70.i.i.i.i, 17
  br i1 %cmp5.i148.i.i.i.i, label %if.else.i149.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge, label %if.end.i151.i.i.i.i

if.else.i149.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge: ; preds = %if.else.i149.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_execSequence.exit.i.i.i

if.end.i151.i.i.i.i:                              ; preds = %if.else.i149.i.i.i.i
  %add.ptr7.i150.i.i.i.i = getelementptr i8, ptr %op.addr.0.i.i.i.i, i32 24
  br label %do.body9.i159.i.i.i.i

do.body9.i159.i.i.i.i:                            ; preds = %do.body9.i159.i.i.i.i.do.body9.i159.i.i.i.i_crit_edge, %if.end.i151.i.i.i.i
  %src.pn.i152.i.i.i.i = phi ptr [ %add.ptr12.i141.i.i.i.i, %if.end.i151.i.i.i.i ], [ %add.ptr11.i156.i.i.i.i, %do.body9.i159.i.i.i.i.do.body9.i159.i.i.i.i_crit_edge ]
  %op.1.i153.i.i.i.i = phi ptr [ %add.ptr7.i150.i.i.i.i, %if.end.i151.i.i.i.i ], [ %add.ptr12.i157.i.i.i.i, %do.body9.i159.i.i.i.i.do.body9.i159.i.i.i.i_crit_edge ]
  %ip.1.i154.i.i.i.i = getelementptr i8, ptr %src.pn.i152.i.i.i.i, i32 16
  %533 = call ptr @memcpy(ptr %op.1.i153.i.i.i.i, ptr %ip.1.i154.i.i.i.i, i32 16)
  %add.ptr10.i155.i.i.i.i = getelementptr i8, ptr %op.1.i153.i.i.i.i, i32 16
  %add.ptr11.i156.i.i.i.i = getelementptr i8, ptr %src.pn.i152.i.i.i.i, i32 32
  %534 = call ptr @memcpy(ptr %add.ptr10.i155.i.i.i.i, ptr %add.ptr11.i156.i.i.i.i, i32 16)
  %add.ptr12.i157.i.i.i.i = getelementptr i8, ptr %op.1.i153.i.i.i.i, i32 32
  %cmp15.i158.i.i.i.i = icmp ult ptr %add.ptr12.i157.i.i.i.i, %add.ptr.i143.i.i.i.i
  br i1 %cmp15.i158.i.i.i.i, label %do.body9.i159.i.i.i.i.do.body9.i159.i.i.i.i_crit_edge, label %do.body9.i159.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge

do.body9.i159.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge: ; preds = %do.body9.i159.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_execSequence.exit.i.i.i

do.body9.i159.i.i.i.i.do.body9.i159.i.i.i.i_crit_edge: ; preds = %do.body9.i159.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9.i159.i.i.i.i

ZSTD_execSequence.exit.i.i.i:                     ; preds = %do.body9.i159.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge, %if.else.i149.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge, %do.body.i.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge, %ZSTD_overlapCopy8.exit.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge, %do.body9.i136.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge, %if.then61.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge, %if.then46.i.i.i.i, %if.then.i319.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %call11.i.i.i.i, %if.then.i319.i.i.i ], [ %add.i315.i.i.i, %if.then46.i.i.i.i ], [ %add.i315.i.i.i, %ZSTD_overlapCopy8.exit.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge ], [ %add.i315.i.i.i, %if.then61.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge ], [ %add.i315.i.i.i, %if.else.i149.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge ], [ %add.i315.i.i.i, %do.body9.i136.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge ], [ %add.i315.i.i.i, %do.body.i.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge ], [ %add.i315.i.i.i, %do.body9.i159.i.i.i.i.ZSTD_execSequence.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %retval.0.i.i.i.i)
  %cmp.i621.i.i.i = icmp ult i32 %retval.0.i.i.i.i, -119
  br i1 %cmp.i621.i.i.i, label %for.inc61.i.i.i, label %ZSTD_execSequence.exit.i.i.i.cleanup98.thread.i.i.i_crit_edge

ZSTD_execSequence.exit.i.i.i.cleanup98.thread.i.i.i_crit_edge: ; preds = %ZSTD_execSequence.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98.thread.i.i.i

for.inc61.i.i.i:                                  ; preds = %ZSTD_execSequence.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @llvm.prefetch.p0(ptr %add.ptr192.i258.i.i.i, i32 0, i32 3, i32 1) #9
  %add.ptr55.i.i.i = getelementptr i8, ptr %add.ptr192.i258.i.i.i, i32 %sequence.sroa.8.0.i.i.i
  %add.ptr56.i.i.i = getelementptr i8, ptr %add.ptr55.i.i.i, i32 -1
  tail call void @llvm.prefetch.p0(ptr %add.ptr56.i.i.i, i32 0, i32 3, i32 1) #9
  %535 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_store4_noabort(i32 %535)
  store i32 %sequence.sroa.0.0.i.i.i, ptr %arrayidx46.i.i.i, align 4
  %536 = ptrtoint ptr %.fca.1.gep.i.i.i to i32
  call void @__asan_store4_noabort(i32 %536)
  store i32 %sequence.sroa.8.0.i.i.i, ptr %.fca.1.gep.i.i.i, align 4
  %537 = ptrtoint ptr %.fca.2.gep.i.i.i to i32
  call void @__asan_store4_noabort(i32 %537)
  store i32 %offset.3.i161.i.i.i, ptr %.fca.2.gep.i.i.i, align 4
  %538 = ptrtoint ptr %.fca.3.gep.i.i.i to i32
  call void @__asan_store4_noabort(i32 %538)
  store ptr %add.ptr192.i258.i.i.i, ptr %.fca.3.gep.i.i.i, align 4
  %add.ptr59.i.i.i = getelementptr i8, ptr %op.0.i.i.i, i32 %retval.0.i.i.i.i
  %inc62.i.i.i = add i32 %seqNb.1.i.i.i, 1
  br label %for.cond38thread-pre-split.i.i.i

if.end66.i.i.i:                                   ; preds = %BIT_reloadDStream.exit620.i.i.i.if.end66.i.i.i_crit_edge, %BIT_reloadDStream.exit620.thread.i.i.i.if.end66.i.i.i_crit_edge
  %sub67.i.i.i = sub i32 %seqNb.1.i.i.i, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %sub67.i.i.i, i32 %22)
  %cmp69686.i.i.i = icmp slt i32 %sub67.i.i.i, %22
  br i1 %cmp69686.i.i.i, label %for.body70.lr.ph.i.i.i, label %if.end66.i.i.i.for.cond87.preheader.i.i.i_crit_edge

if.end66.i.i.i.for.cond87.preheader.i.i.i_crit_edge: ; preds = %if.end66.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond87.preheader.i.i.i

for.body70.lr.ph.i.i.i:                           ; preds = %if.end66.i.i.i
  %add.ptr3.i332.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 -32
  %sub.ptr.lhs.cast.i336.i.i.i = ptrtoint ptr %add.ptr1.i.i.i to i32
  %sub.ptr.rhs.cast30.i366.i.i.i = ptrtoint ptr %31 to i32
  br label %for.body70.i.i.i

for.cond87.preheader.i.i.i:                       ; preds = %for.inc83.i.i.i.for.cond87.preheader.i.i.i_crit_edge, %if.end66.i.i.i.for.cond87.preheader.i.i.i_crit_edge
  %op.2.lcssa.i.i.i = phi ptr [ %op.0.i.i.i, %if.end66.i.i.i.for.cond87.preheader.i.i.i_crit_edge ], [ %add.ptr79.i.i.i, %for.inc83.i.i.i.for.cond87.preheader.i.i.i_crit_edge ]
  %539 = call ptr @memcpy(ptr %uglygep699.i.i.i, ptr %uglygep.i.i.i, i32 12)
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %seqState.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sequences.i.i.i) #9
  br label %if.end104.i.i.i

for.body70.i.i.i:                                 ; preds = %for.inc83.i.i.i.for.body70.i.i.i_crit_edge, %for.body70.lr.ph.i.i.i
  %seqNb.2690.i.i.i = phi i32 [ %sub67.i.i.i, %for.body70.lr.ph.i.i.i ], [ %inc84.i.i.i, %for.inc83.i.i.i.for.body70.i.i.i_crit_edge ]
  %op.2687.i.i.i = phi ptr [ %op.0.i.i.i, %for.body70.lr.ph.i.i.i ], [ %add.ptr79.i.i.i, %for.inc83.i.i.i.for.body70.i.i.i_crit_edge ]
  %and72.i.i.i = and i32 %seqNb.2690.i.i.i, 3
  %arrayidx73.i.i.i = getelementptr [4 x %struct.seq_t], ptr %sequences.i.i.i, i32 0, i32 %and72.i.i.i
  %540 = ptrtoint ptr %arrayidx73.i.i.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %.fca.0.load171.i.i.i = load i32, ptr %arrayidx73.i.i.i, align 4
  %.fca.0.insert172.i.i.i = insertvalue [4 x i32] poison, i32 %.fca.0.load171.i.i.i, 0
  %.fca.1.gep173.i.i.i = getelementptr inbounds [4 x i32], ptr %arrayidx73.i.i.i, i32 0, i32 1
  %541 = ptrtoint ptr %.fca.1.gep173.i.i.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %.fca.1.load174.i.i.i = load i32, ptr %.fca.1.gep173.i.i.i, align 4
  %.fca.1.insert175.i.i.i = insertvalue [4 x i32] %.fca.0.insert172.i.i.i, i32 %.fca.1.load174.i.i.i, 1
  %.fca.2.gep176.i.i.i = getelementptr inbounds [4 x i32], ptr %arrayidx73.i.i.i, i32 0, i32 2
  %542 = ptrtoint ptr %.fca.2.gep176.i.i.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %.fca.2.load177.i.i.i = load i32, ptr %.fca.2.gep176.i.i.i, align 4
  %.fca.2.insert178.i.i.i = insertvalue [4 x i32] %.fca.1.insert175.i.i.i, i32 %.fca.2.load177.i.i.i, 2
  %.fca.3.gep179.i.i.i = getelementptr inbounds [4 x i32], ptr %arrayidx73.i.i.i, i32 0, i32 3
  %543 = ptrtoint ptr %.fca.3.gep179.i.i.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %.fca.3.load180.i.i.i = load i32, ptr %.fca.3.gep179.i.i.i, align 4
  %.fca.3.insert181.i.i.i = insertvalue [4 x i32] %.fca.2.insert178.i.i.i, i32 %.fca.3.load180.i.i.i, 3
  %add.ptr.i326.i.i.i = getelementptr i8, ptr %op.2687.i.i.i, i32 %.fca.0.load171.i.i.i
  %add.i327.i.i.i = add i32 %.fca.1.load174.i.i.i, %.fca.0.load171.i.i.i
  %544 = ptrtoint ptr %litPtr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %litPtr.i.i.i, align 4
  %add.ptr5.i328.i.i.i = getelementptr i8, ptr %545, i32 %.fca.0.load171.i.i.i
  %idx.neg.i329.i.i.i = sub i32 0, %.fca.2.load177.i.i.i
  %add.ptr6.i330.i.i.i = getelementptr i8, ptr %add.ptr.i326.i.i.i, i32 %idx.neg.i329.i.i.i
  %cmp.i331.i.i.i = icmp ugt ptr %add.ptr5.i328.i.i.i, %add.ptr3.i.i.i
  %add.ptr2.i333.i.i.i = getelementptr i8, ptr %op.2687.i.i.i, i32 %add.i327.i.i.i
  %cmp7.i334.i.i.i = icmp ugt ptr %add.ptr2.i333.i.i.i, %add.ptr3.i332.i.i.i
  %or.cond.i335.i.i.i = select i1 %cmp.i331.i.i.i, i1 true, i1 %cmp7.i334.i.i.i
  br i1 %or.cond.i335.i.i.i, label %for.body70.i.i.i.if.then.i343.i.i.i_crit_edge, label %lor.rhs.i341.i.i.i, !prof !43

for.body70.i.i.i.if.then.i343.i.i.i_crit_edge:    ; preds = %for.body70.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i343.i.i.i

lor.rhs.i341.i.i.i:                               ; preds = %for.body70.i.i.i
  %sub.ptr.rhs.cast.i337.i.i.i = ptrtoint ptr %op.2687.i.i.i to i32
  %sub.ptr.sub.i338.i.i.i = sub i32 %sub.ptr.lhs.cast.i336.i.i.i, %sub.ptr.rhs.cast.i337.i.i.i
  %add8.i339.i.i.i = add i32 %add.i327.i.i.i, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i338.i.i.i, i32 %add8.i339.i.i.i)
  %cmp9.i340.i.i.i = icmp ult i32 %sub.ptr.sub.i338.i.i.i, %add8.i339.i.i.i
  br i1 %cmp9.i340.i.i.i, label %lor.rhs.i341.i.i.i.if.then.i343.i.i.i_crit_edge, label %if.end.i345.i.i.i, !prof !39

lor.rhs.i341.i.i.i.if.then.i343.i.i.i_crit_edge:  ; preds = %lor.rhs.i341.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i343.i.i.i

if.then.i343.i.i.i:                               ; preds = %lor.rhs.i341.i.i.i.if.then.i343.i.i.i_crit_edge, %for.body70.i.i.i.if.then.i343.i.i.i_crit_edge
  %call11.i342.i.i.i = call fastcc i32 @ZSTD_execSequenceEnd(ptr noundef %op.2687.i.i.i, ptr noundef %add.ptr1.i.i.i, [4 x i32] %.fca.3.insert181.i.i.i, ptr noundef nonnull %litPtr.i.i.i, ptr noundef %add.ptr3.i.i.i, ptr noundef %29, ptr noundef %31, ptr noundef %33) #9
  br label %ZSTD_execSequence.exit446.i.i.i

if.end.i345.i.i.i:                                ; preds = %lor.rhs.i341.i.i.i
  %546 = call ptr @memcpy(ptr %op.2687.i.i.i, ptr %545, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.fca.0.load171.i.i.i)
  %cmp13.i344.i.i.i = icmp ugt i32 %.fca.0.load171.i.i.i, 16
  br i1 %cmp13.i344.i.i.i, label %if.then16.i350.i.i.i, label %if.end.i345.i.i.i.if.end20.i365.i.i.i_crit_edge, !prof !39

if.end.i345.i.i.i.if.end20.i365.i.i.i_crit_edge:  ; preds = %if.end.i345.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i365.i.i.i

if.then16.i350.i.i.i:                             ; preds = %if.end.i345.i.i.i
  %add.ptr17.i346.i.i.i = getelementptr i8, ptr %op.2687.i.i.i, i32 16
  %add.ptr18.i347.i.i.i = getelementptr i8, ptr %545, i32 16
  %sub.i348.i.i.i = add i32 %.fca.0.load171.i.i.i, -16
  %547 = call ptr @memcpy(ptr %add.ptr17.i346.i.i.i, ptr %add.ptr18.i347.i.i.i, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub.i348.i.i.i)
  %cmp5.i.i349.i.i.i = icmp slt i32 %sub.i348.i.i.i, 17
  br i1 %cmp5.i.i349.i.i.i, label %if.then16.i350.i.i.i.if.end20.i365.i.i.i_crit_edge, label %if.end.i.i352.i.i.i

if.then16.i350.i.i.i.if.end20.i365.i.i.i_crit_edge: ; preds = %if.then16.i350.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i365.i.i.i

if.end.i.i352.i.i.i:                              ; preds = %if.then16.i350.i.i.i
  %add.ptr7.i.i351.i.i.i = getelementptr i8, ptr %op.2687.i.i.i, i32 32
  br label %do.body9.i.i360.i.i.i

do.body9.i.i360.i.i.i:                            ; preds = %do.body9.i.i360.i.i.i.do.body9.i.i360.i.i.i_crit_edge, %if.end.i.i352.i.i.i
  %src.pn.i.i353.i.i.i = phi ptr [ %add.ptr18.i347.i.i.i, %if.end.i.i352.i.i.i ], [ %add.ptr11.i.i357.i.i.i, %do.body9.i.i360.i.i.i.do.body9.i.i360.i.i.i_crit_edge ]
  %op.1.i.i354.i.i.i = phi ptr [ %add.ptr7.i.i351.i.i.i, %if.end.i.i352.i.i.i ], [ %add.ptr12.i.i358.i.i.i, %do.body9.i.i360.i.i.i.do.body9.i.i360.i.i.i_crit_edge ]
  %ip.1.i.i355.i.i.i = getelementptr i8, ptr %src.pn.i.i353.i.i.i, i32 16
  %548 = call ptr @memcpy(ptr %op.1.i.i354.i.i.i, ptr %ip.1.i.i355.i.i.i, i32 16)
  %add.ptr10.i.i356.i.i.i = getelementptr i8, ptr %op.1.i.i354.i.i.i, i32 16
  %add.ptr11.i.i357.i.i.i = getelementptr i8, ptr %src.pn.i.i353.i.i.i, i32 32
  %549 = call ptr @memcpy(ptr %add.ptr10.i.i356.i.i.i, ptr %add.ptr11.i.i357.i.i.i, i32 16)
  %add.ptr12.i.i358.i.i.i = getelementptr i8, ptr %op.1.i.i354.i.i.i, i32 32
  %cmp15.i.i359.i.i.i = icmp ult ptr %add.ptr12.i.i358.i.i.i, %add.ptr.i326.i.i.i
  br i1 %cmp15.i.i359.i.i.i, label %do.body9.i.i360.i.i.i.do.body9.i.i360.i.i.i_crit_edge, label %do.body9.i.i360.i.i.i.if.end20.i365.i.i.i_crit_edge

do.body9.i.i360.i.i.i.if.end20.i365.i.i.i_crit_edge: ; preds = %do.body9.i.i360.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i365.i.i.i

do.body9.i.i360.i.i.i.do.body9.i.i360.i.i.i_crit_edge: ; preds = %do.body9.i.i360.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9.i.i360.i.i.i

if.end20.i365.i.i.i:                              ; preds = %do.body9.i.i360.i.i.i.if.end20.i365.i.i.i_crit_edge, %if.then16.i350.i.i.i.if.end20.i365.i.i.i_crit_edge, %if.end.i345.i.i.i.if.end20.i365.i.i.i_crit_edge
  %550 = ptrtoint ptr %litPtr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %550)
  store ptr %add.ptr5.i328.i.i.i, ptr %litPtr.i.i.i, align 4
  %sub.ptr.lhs.cast22.i361.i.i.i = ptrtoint ptr %add.ptr.i326.i.i.i to i32
  %sub.ptr.sub24.i363.i.i.i = sub i32 %sub.ptr.lhs.cast22.i361.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %.fca.2.load177.i.i.i, i32 %sub.ptr.sub24.i363.i.i.i)
  %cmp25.i364.i.i.i = icmp ugt i32 %.fca.2.load177.i.i.i, %sub.ptr.sub24.i363.i.i.i
  br i1 %cmp25.i364.i.i.i, label %if.then27.i369.i.i.i, label %if.end20.i365.i.i.i.if.end55.i385.i.i.i_crit_edge

if.end20.i365.i.i.i.if.end55.i385.i.i.i_crit_edge: ; preds = %if.end20.i365.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i385.i.i.i

if.then27.i369.i.i.i:                             ; preds = %if.end20.i365.i.i.i
  %sub.ptr.sub31.i367.i.i.i = sub i32 %sub.ptr.lhs.cast22.i361.i.i.i, %sub.ptr.rhs.cast30.i366.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %.fca.2.load177.i.i.i, i32 %sub.ptr.sub31.i367.i.i.i)
  %cmp32.i368.i.i.i = icmp ugt i32 %.fca.2.load177.i.i.i, %sub.ptr.sub31.i367.i.i.i
  br i1 %cmp32.i368.i.i.i, label %if.then27.i369.i.i.i.cleanup98.thread.i.i.i_crit_edge, label %if.end37.i375.i.i.i, !prof !39

if.then27.i369.i.i.i.cleanup98.thread.i.i.i_crit_edge: ; preds = %if.then27.i369.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98.thread.i.i.i

if.end37.i375.i.i.i:                              ; preds = %if.then27.i369.i.i.i
  %sub.ptr.lhs.cast38.i370.i.i.i = ptrtoint ptr %add.ptr6.i330.i.i.i to i32
  %sub.ptr.sub40.i371.i.i.i = sub i32 %sub.ptr.lhs.cast38.i370.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %add.ptr41.i372.i.i.i = getelementptr i8, ptr %33, i32 %sub.ptr.sub40.i371.i.i.i
  %add.ptr43.i373.i.i.i = getelementptr i8, ptr %add.ptr41.i372.i.i.i, i32 %.fca.1.load174.i.i.i
  %cmp44.not.i374.i.i.i = icmp ugt ptr %add.ptr43.i373.i.i.i, %33
  br i1 %cmp44.not.i374.i.i.i, label %if.end48.i380.i.i.i, label %if.then46.i376.i.i.i

if.then46.i376.i.i.i:                             ; preds = %if.end37.i375.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %551 = call ptr @memmove(ptr %add.ptr.i326.i.i.i, ptr %add.ptr41.i372.i.i.i, i32 %.fca.1.load174.i.i.i)
  br label %ZSTD_execSequence.exit446.i.i.i

if.end48.i380.i.i.i:                              ; preds = %if.end37.i375.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %diff.neg.i377.i.i.i = sub i32 0, %sub.ptr.sub40.i371.i.i.i
  %552 = call ptr @memmove(ptr %add.ptr.i326.i.i.i, ptr %add.ptr41.i372.i.i.i, i32 %diff.neg.i377.i.i.i)
  %add.ptr52.i378.i.i.i = getelementptr i8, ptr %add.ptr.i326.i.i.i, i32 %diff.neg.i377.i.i.i
  %sub54.i379.i.i.i = add i32 %sub.ptr.sub40.i371.i.i.i, %.fca.1.load174.i.i.i
  br label %if.end55.i385.i.i.i

if.end55.i385.i.i.i:                              ; preds = %if.end48.i380.i.i.i, %if.end20.i365.i.i.i.if.end55.i385.i.i.i_crit_edge
  %op.addr.0.i381.i.i.i = phi ptr [ %add.ptr52.i378.i.i.i, %if.end48.i380.i.i.i ], [ %add.ptr.i326.i.i.i, %if.end20.i365.i.i.i.if.end55.i385.i.i.i_crit_edge ]
  %match.0.i382.i.i.i = phi ptr [ %29, %if.end48.i380.i.i.i ], [ %add.ptr6.i330.i.i.i, %if.end20.i365.i.i.i.if.end55.i385.i.i.i_crit_edge ]
  %sequence.sroa.7.0.i383.i.i.i = phi i32 [ %sub54.i379.i.i.i, %if.end48.i380.i.i.i ], [ %.fca.1.load174.i.i.i, %if.end20.i365.i.i.i.if.end55.i385.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %.fca.2.load177.i.i.i)
  %cmp57.i384.i.i.i = icmp ugt i32 %.fca.2.load177.i.i.i, 15
  br i1 %cmp57.i384.i.i.i, label %if.then61.i388.i.i.i, label %if.end63.i400.i.i.i, !prof !38

if.then61.i388.i.i.i:                             ; preds = %if.end55.i385.i.i.i
  %add.ptr.i121.i386.i.i.i = getelementptr i8, ptr %op.addr.0.i381.i.i.i, i32 %sequence.sroa.7.0.i383.i.i.i
  %553 = call ptr @memcpy(ptr %op.addr.0.i381.i.i.i, ptr %match.0.i382.i.i.i, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sequence.sroa.7.0.i383.i.i.i)
  %cmp5.i126.i387.i.i.i = icmp slt i32 %sequence.sroa.7.0.i383.i.i.i, 17
  br i1 %cmp5.i126.i387.i.i.i, label %if.then61.i388.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge, label %if.end.i128.i390.i.i.i

if.then61.i388.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge: ; preds = %if.then61.i388.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_execSequence.exit446.i.i.i

if.end.i128.i390.i.i.i:                           ; preds = %if.then61.i388.i.i.i
  %add.ptr7.i127.i389.i.i.i = getelementptr i8, ptr %op.addr.0.i381.i.i.i, i32 16
  br label %do.body9.i136.i398.i.i.i

do.body9.i136.i398.i.i.i:                         ; preds = %do.body9.i136.i398.i.i.i.do.body9.i136.i398.i.i.i_crit_edge, %if.end.i128.i390.i.i.i
  %src.pn.i129.i391.i.i.i = phi ptr [ %match.0.i382.i.i.i, %if.end.i128.i390.i.i.i ], [ %add.ptr11.i133.i395.i.i.i, %do.body9.i136.i398.i.i.i.do.body9.i136.i398.i.i.i_crit_edge ]
  %op.1.i130.i392.i.i.i = phi ptr [ %add.ptr7.i127.i389.i.i.i, %if.end.i128.i390.i.i.i ], [ %add.ptr12.i134.i396.i.i.i, %do.body9.i136.i398.i.i.i.do.body9.i136.i398.i.i.i_crit_edge ]
  %ip.1.i131.i393.i.i.i = getelementptr i8, ptr %src.pn.i129.i391.i.i.i, i32 16
  %554 = call ptr @memcpy(ptr %op.1.i130.i392.i.i.i, ptr %ip.1.i131.i393.i.i.i, i32 16)
  %add.ptr10.i132.i394.i.i.i = getelementptr i8, ptr %op.1.i130.i392.i.i.i, i32 16
  %add.ptr11.i133.i395.i.i.i = getelementptr i8, ptr %src.pn.i129.i391.i.i.i, i32 32
  %555 = call ptr @memcpy(ptr %add.ptr10.i132.i394.i.i.i, ptr %add.ptr11.i133.i395.i.i.i, i32 16)
  %add.ptr12.i134.i396.i.i.i = getelementptr i8, ptr %op.1.i130.i392.i.i.i, i32 32
  %cmp15.i135.i397.i.i.i = icmp ult ptr %add.ptr12.i134.i396.i.i.i, %add.ptr.i121.i386.i.i.i
  br i1 %cmp15.i135.i397.i.i.i, label %do.body9.i136.i398.i.i.i.do.body9.i136.i398.i.i.i_crit_edge, label %do.body9.i136.i398.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge

do.body9.i136.i398.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge: ; preds = %do.body9.i136.i398.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_execSequence.exit446.i.i.i

do.body9.i136.i398.i.i.i.do.body9.i136.i398.i.i.i_crit_edge: ; preds = %do.body9.i136.i398.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9.i136.i398.i.i.i

if.end63.i400.i.i.i:                              ; preds = %if.end55.i385.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.fca.2.load177.i.i.i)
  %cmp.i.i399.i.i.i = icmp ult i32 %.fca.2.load177.i.i.i, 8
  br i1 %cmp.i.i399.i.i.i, label %if.then.i.i413.i.i.i, label %if.else.i.i414.i.i.i

if.then.i.i413.i.i.i:                             ; preds = %if.end63.i400.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i401.i.i.i = getelementptr [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i32 0, i32 %.fca.2.load177.i.i.i
  %556 = ptrtoint ptr %arrayidx.i.i401.i.i.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %arrayidx.i.i401.i.i.i, align 4
  %558 = ptrtoint ptr %match.0.i382.i.i.i to i32
  call void @__asan_load1_noabort(i32 %558)
  %559 = load i8, ptr %match.0.i382.i.i.i, align 1
  %560 = ptrtoint ptr %op.addr.0.i381.i.i.i to i32
  call void @__asan_store1_noabort(i32 %560)
  store i8 %559, ptr %op.addr.0.i381.i.i.i, align 1
  %arrayidx3.i.i402.i.i.i = getelementptr i8, ptr %match.0.i382.i.i.i, i32 1
  %561 = ptrtoint ptr %arrayidx3.i.i402.i.i.i to i32
  call void @__asan_load1_noabort(i32 %561)
  %562 = load i8, ptr %arrayidx3.i.i402.i.i.i, align 1
  %arrayidx4.i.i403.i.i.i = getelementptr i8, ptr %op.addr.0.i381.i.i.i, i32 1
  %563 = ptrtoint ptr %arrayidx4.i.i403.i.i.i to i32
  call void @__asan_store1_noabort(i32 %563)
  store i8 %562, ptr %arrayidx4.i.i403.i.i.i, align 1
  %arrayidx5.i.i404.i.i.i = getelementptr i8, ptr %match.0.i382.i.i.i, i32 2
  %564 = ptrtoint ptr %arrayidx5.i.i404.i.i.i to i32
  call void @__asan_load1_noabort(i32 %564)
  %565 = load i8, ptr %arrayidx5.i.i404.i.i.i, align 1
  %arrayidx6.i.i405.i.i.i = getelementptr i8, ptr %op.addr.0.i381.i.i.i, i32 2
  %566 = ptrtoint ptr %arrayidx6.i.i405.i.i.i to i32
  call void @__asan_store1_noabort(i32 %566)
  store i8 %565, ptr %arrayidx6.i.i405.i.i.i, align 1
  %arrayidx7.i.i406.i.i.i = getelementptr i8, ptr %match.0.i382.i.i.i, i32 3
  %567 = ptrtoint ptr %arrayidx7.i.i406.i.i.i to i32
  call void @__asan_load1_noabort(i32 %567)
  %568 = load i8, ptr %arrayidx7.i.i406.i.i.i, align 1
  %arrayidx8.i.i407.i.i.i = getelementptr i8, ptr %op.addr.0.i381.i.i.i, i32 3
  %569 = ptrtoint ptr %arrayidx8.i.i407.i.i.i to i32
  call void @__asan_store1_noabort(i32 %569)
  store i8 %568, ptr %arrayidx8.i.i407.i.i.i, align 1
  %arrayidx9.i.i408.i.i.i = getelementptr [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i32 0, i32 %.fca.2.load177.i.i.i
  %570 = ptrtoint ptr %arrayidx9.i.i408.i.i.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load i32, ptr %arrayidx9.i.i408.i.i.i, align 4
  %add.ptr.i138.i409.i.i.i = getelementptr i8, ptr %match.0.i382.i.i.i, i32 %571
  %add.ptr10.i139.i410.i.i.i = getelementptr i8, ptr %op.addr.0.i381.i.i.i, i32 4
  %572 = ptrtoint ptr %add.ptr.i138.i409.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %572, i32 4)
  %573 = load i32, ptr %add.ptr.i138.i409.i.i.i, align 1
  %574 = ptrtoint ptr %add.ptr10.i139.i410.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %574, i32 4)
  store i32 %573, ptr %add.ptr10.i139.i410.i.i.i, align 1
  %idx.neg.i.i411.i.i.i = sub i32 0, %557
  %add.ptr11.i140.i412.i.i.i = getelementptr i8, ptr %add.ptr.i138.i409.i.i.i, i32 %idx.neg.i.i411.i.i.i
  br label %ZSTD_overlapCopy8.exit.i419.i.i.i

if.else.i.i414.i.i.i:                             ; preds = %if.end63.i400.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %575 = ptrtoint ptr %match.0.i382.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %575, i32 8)
  %576 = load i64, ptr %match.0.i382.i.i.i, align 1
  %577 = ptrtoint ptr %op.addr.0.i381.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %577, i32 8)
  store i64 %576, ptr %op.addr.0.i381.i.i.i, align 1
  br label %ZSTD_overlapCopy8.exit.i419.i.i.i

ZSTD_overlapCopy8.exit.i419.i.i.i:                ; preds = %if.else.i.i414.i.i.i, %if.then.i.i413.i.i.i
  %match.1.i415.i.i.i = phi ptr [ %add.ptr11.i140.i412.i.i.i, %if.then.i.i413.i.i.i ], [ %match.0.i382.i.i.i, %if.else.i.i414.i.i.i ]
  %add.ptr12.i141.i416.i.i.i = getelementptr i8, ptr %match.1.i415.i.i.i, i32 8
  %add.ptr13.i.i417.i.i.i = getelementptr i8, ptr %op.addr.0.i381.i.i.i, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sequence.sroa.7.0.i383.i.i.i)
  %cmp66.i418.i.i.i = icmp ugt i32 %sequence.sroa.7.0.i383.i.i.i, 8
  br i1 %cmp66.i418.i.i.i, label %if.then68.i425.i.i.i, label %ZSTD_overlapCopy8.exit.i419.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge

ZSTD_overlapCopy8.exit.i419.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge: ; preds = %ZSTD_overlapCopy8.exit.i419.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_execSequence.exit446.i.i.i

if.then68.i425.i.i.i:                             ; preds = %ZSTD_overlapCopy8.exit.i419.i.i.i
  %add.ptr.i143.i420.i.i.i = getelementptr i8, ptr %op.addr.0.i381.i.i.i, i32 %sequence.sroa.7.0.i383.i.i.i
  %sub.ptr.lhs.cast.i144.i421.i.i.i = ptrtoint ptr %add.ptr13.i.i417.i.i.i to i32
  %sub.ptr.rhs.cast.i145.i422.i.i.i = ptrtoint ptr %add.ptr12.i141.i416.i.i.i to i32
  %sub.ptr.sub.i146.i423.i.i.i = sub i32 %sub.ptr.lhs.cast.i144.i421.i.i.i, %sub.ptr.rhs.cast.i145.i422.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i146.i423.i.i.i)
  %cmp1.i147.i424.i.i.i = icmp slt i32 %sub.ptr.sub.i146.i423.i.i.i, 16
  br i1 %cmp1.i147.i424.i.i.i, label %if.then68.i425.i.i.i.do.body.i.i431.i.i.i_crit_edge, label %if.else.i149.i434.i.i.i

if.then68.i425.i.i.i.do.body.i.i431.i.i.i_crit_edge: ; preds = %if.then68.i425.i.i.i
  br label %do.body.i.i431.i.i.i

do.body.i.i431.i.i.i:                             ; preds = %do.body.i.i431.i.i.i.do.body.i.i431.i.i.i_crit_edge, %if.then68.i425.i.i.i.do.body.i.i431.i.i.i_crit_edge
  %ip.0.i.i426.i.i.i = phi ptr [ %add.ptr3.i.i429.i.i.i, %do.body.i.i431.i.i.i.do.body.i.i431.i.i.i_crit_edge ], [ %add.ptr12.i141.i416.i.i.i, %if.then68.i425.i.i.i.do.body.i.i431.i.i.i_crit_edge ]
  %op.0.i.i427.i.i.i = phi ptr [ %add.ptr2.i.i428.i.i.i, %do.body.i.i431.i.i.i.do.body.i.i431.i.i.i_crit_edge ], [ %add.ptr13.i.i417.i.i.i, %if.then68.i425.i.i.i.do.body.i.i431.i.i.i_crit_edge ]
  %578 = ptrtoint ptr %ip.0.i.i426.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %578, i32 8)
  %579 = load i64, ptr %ip.0.i.i426.i.i.i, align 1
  %580 = ptrtoint ptr %op.0.i.i427.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %580, i32 8)
  store i64 %579, ptr %op.0.i.i427.i.i.i, align 1
  %add.ptr2.i.i428.i.i.i = getelementptr i8, ptr %op.0.i.i427.i.i.i, i32 8
  %add.ptr3.i.i429.i.i.i = getelementptr i8, ptr %ip.0.i.i426.i.i.i, i32 8
  %cmp4.i.i430.i.i.i = icmp ult ptr %add.ptr2.i.i428.i.i.i, %add.ptr.i143.i420.i.i.i
  br i1 %cmp4.i.i430.i.i.i, label %do.body.i.i431.i.i.i.do.body.i.i431.i.i.i_crit_edge, label %do.body.i.i431.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge

do.body.i.i431.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge: ; preds = %do.body.i.i431.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_execSequence.exit446.i.i.i

do.body.i.i431.i.i.i.do.body.i.i431.i.i.i_crit_edge: ; preds = %do.body.i.i431.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i431.i.i.i

if.else.i149.i434.i.i.i:                          ; preds = %if.then68.i425.i.i.i
  %sub70.i432.i.i.i = add i32 %sequence.sroa.7.0.i383.i.i.i, -8
  %581 = call ptr @memcpy(ptr %add.ptr13.i.i417.i.i.i, ptr %add.ptr12.i141.i416.i.i.i, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub70.i432.i.i.i)
  %cmp5.i148.i433.i.i.i = icmp slt i32 %sub70.i432.i.i.i, 17
  br i1 %cmp5.i148.i433.i.i.i, label %if.else.i149.i434.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge, label %if.end.i151.i436.i.i.i

if.else.i149.i434.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge: ; preds = %if.else.i149.i434.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_execSequence.exit446.i.i.i

if.end.i151.i436.i.i.i:                           ; preds = %if.else.i149.i434.i.i.i
  %add.ptr7.i150.i435.i.i.i = getelementptr i8, ptr %op.addr.0.i381.i.i.i, i32 24
  br label %do.body9.i159.i444.i.i.i

do.body9.i159.i444.i.i.i:                         ; preds = %do.body9.i159.i444.i.i.i.do.body9.i159.i444.i.i.i_crit_edge, %if.end.i151.i436.i.i.i
  %src.pn.i152.i437.i.i.i = phi ptr [ %add.ptr12.i141.i416.i.i.i, %if.end.i151.i436.i.i.i ], [ %add.ptr11.i156.i441.i.i.i, %do.body9.i159.i444.i.i.i.do.body9.i159.i444.i.i.i_crit_edge ]
  %op.1.i153.i438.i.i.i = phi ptr [ %add.ptr7.i150.i435.i.i.i, %if.end.i151.i436.i.i.i ], [ %add.ptr12.i157.i442.i.i.i, %do.body9.i159.i444.i.i.i.do.body9.i159.i444.i.i.i_crit_edge ]
  %ip.1.i154.i439.i.i.i = getelementptr i8, ptr %src.pn.i152.i437.i.i.i, i32 16
  %582 = call ptr @memcpy(ptr %op.1.i153.i438.i.i.i, ptr %ip.1.i154.i439.i.i.i, i32 16)
  %add.ptr10.i155.i440.i.i.i = getelementptr i8, ptr %op.1.i153.i438.i.i.i, i32 16
  %add.ptr11.i156.i441.i.i.i = getelementptr i8, ptr %src.pn.i152.i437.i.i.i, i32 32
  %583 = call ptr @memcpy(ptr %add.ptr10.i155.i440.i.i.i, ptr %add.ptr11.i156.i441.i.i.i, i32 16)
  %add.ptr12.i157.i442.i.i.i = getelementptr i8, ptr %op.1.i153.i438.i.i.i, i32 32
  %cmp15.i158.i443.i.i.i = icmp ult ptr %add.ptr12.i157.i442.i.i.i, %add.ptr.i143.i420.i.i.i
  br i1 %cmp15.i158.i443.i.i.i, label %do.body9.i159.i444.i.i.i.do.body9.i159.i444.i.i.i_crit_edge, label %do.body9.i159.i444.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge

do.body9.i159.i444.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge: ; preds = %do.body9.i159.i444.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_execSequence.exit446.i.i.i

do.body9.i159.i444.i.i.i.do.body9.i159.i444.i.i.i_crit_edge: ; preds = %do.body9.i159.i444.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9.i159.i444.i.i.i

ZSTD_execSequence.exit446.i.i.i:                  ; preds = %do.body9.i159.i444.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge, %if.else.i149.i434.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge, %do.body.i.i431.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge, %ZSTD_overlapCopy8.exit.i419.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge, %do.body9.i136.i398.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge, %if.then61.i388.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge, %if.then46.i376.i.i.i, %if.then.i343.i.i.i
  %retval.0.i445.i.i.i = phi i32 [ %call11.i342.i.i.i, %if.then.i343.i.i.i ], [ %add.i327.i.i.i, %if.then46.i376.i.i.i ], [ %add.i327.i.i.i, %ZSTD_overlapCopy8.exit.i419.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge ], [ %add.i327.i.i.i, %if.then61.i388.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge ], [ %add.i327.i.i.i, %if.else.i149.i434.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge ], [ %add.i327.i.i.i, %do.body9.i136.i398.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge ], [ %add.i327.i.i.i, %do.body.i.i431.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge ], [ %add.i327.i.i.i, %do.body9.i159.i444.i.i.i.ZSTD_execSequence.exit446.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %retval.0.i445.i.i.i)
  %cmp.i623.i.i.i = icmp ult i32 %retval.0.i445.i.i.i, -119
  br i1 %cmp.i623.i.i.i, label %for.inc83.i.i.i, label %ZSTD_execSequence.exit446.i.i.i.cleanup98.thread.i.i.i_crit_edge

ZSTD_execSequence.exit446.i.i.i.cleanup98.thread.i.i.i_crit_edge: ; preds = %ZSTD_execSequence.exit446.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98.thread.i.i.i

for.inc83.i.i.i:                                  ; preds = %ZSTD_execSequence.exit446.i.i.i
  %add.ptr79.i.i.i = getelementptr i8, ptr %op.2687.i.i.i, i32 %retval.0.i445.i.i.i
  %inc84.i.i.i = add nsw i32 %seqNb.2690.i.i.i, 1
  %exitcond700.not.i.i.i = icmp eq i32 %inc84.i.i.i, %22
  br i1 %exitcond700.not.i.i.i, label %for.inc83.i.i.i.for.cond87.preheader.i.i.i_crit_edge, label %for.inc83.i.i.i.for.body70.i.i.i_crit_edge

for.inc83.i.i.i.for.body70.i.i.i_crit_edge:       ; preds = %for.inc83.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body70.i.i.i

for.inc83.i.i.i.for.cond87.preheader.i.i.i_crit_edge: ; preds = %for.inc83.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond87.preheader.i.i.i

cleanup98.thread.i.i.i:                           ; preds = %ZSTD_execSequence.exit446.i.i.i.cleanup98.thread.i.i.i_crit_edge, %if.then27.i369.i.i.i.cleanup98.thread.i.i.i_crit_edge, %ZSTD_execSequence.exit.i.i.i.cleanup98.thread.i.i.i_crit_edge, %if.then27.i.i.i.i.cleanup98.thread.i.i.i_crit_edge, %BIT_reloadDStream.exit620.thread.i.i.i.cleanup98.thread.i.i.i_crit_edge, %BIT_reloadDStream.exit.thread.i.i.i.cleanup98.thread.i.i.i_crit_edge, %BIT_initDStream.exit.i.i.i.cleanup98.thread.i.i.i_crit_edge, %sw.epilog.i.i.i.i.cleanup98.thread.i.i.i_crit_edge, %if.then3.i.i.i.i.cleanup98.thread.i.i.i_crit_edge, %if.then.i.i.i.cleanup98.thread.i.i.i_crit_edge
  %retval.4.ph.i.i.i = phi i32 [ -20, %BIT_reloadDStream.exit620.thread.i.i.i.cleanup98.thread.i.i.i_crit_edge ], [ -20, %BIT_reloadDStream.exit.thread.i.i.i.cleanup98.thread.i.i.i_crit_edge ], [ -20, %BIT_initDStream.exit.i.i.i.cleanup98.thread.i.i.i_crit_edge ], [ %retval.0.i.i.i.i, %ZSTD_execSequence.exit.i.i.i.cleanup98.thread.i.i.i_crit_edge ], [ -20, %if.then27.i.i.i.i.cleanup98.thread.i.i.i_crit_edge ], [ -20, %if.then.i.i.i.cleanup98.thread.i.i.i_crit_edge ], [ -20, %if.then3.i.i.i.i.cleanup98.thread.i.i.i_crit_edge ], [ -20, %sw.epilog.i.i.i.i.cleanup98.thread.i.i.i_crit_edge ], [ %retval.0.i445.i.i.i, %ZSTD_execSequence.exit446.i.i.i.cleanup98.thread.i.i.i_crit_edge ], [ -20, %if.then27.i369.i.i.i.cleanup98.thread.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %seqState.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sequences.i.i.i) #9
  br label %ZSTD_decompressSequencesLong.exit

if.end104.i.i.i:                                  ; preds = %for.cond87.preheader.i.i.i, %if.then38.if.end104.i.i.i_crit_edge
  %op.5.i.i.i = phi ptr [ %op.2.lcssa.i.i.i, %for.cond87.preheader.i.i.i ], [ %dst, %if.then38.if.end104.i.i.i_crit_edge ]
  %584 = ptrtoint ptr %litPtr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %litPtr.i.i.i, align 4
  %sub.ptr.lhs.cast105.i.i.i = ptrtoint ptr %add.ptr3.i.i.i to i32
  %sub.ptr.rhs.cast106.i.i.i = ptrtoint ptr %585 to i32
  %sub.ptr.sub107.i.i.i = sub i32 %sub.ptr.lhs.cast105.i.i.i, %sub.ptr.rhs.cast106.i.i.i
  %sub.ptr.lhs.cast108.i.i.i = ptrtoint ptr %add.ptr1.i.i.i to i32
  %sub.ptr.rhs.cast109.i.i.i = ptrtoint ptr %op.5.i.i.i to i32
  %sub.ptr.sub110.i.i.i = sub i32 %sub.ptr.lhs.cast108.i.i.i, %sub.ptr.rhs.cast109.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub107.i.i.i, i32 %sub.ptr.sub110.i.i.i)
  %cmp111.i.i.i = icmp ugt i32 %sub.ptr.sub107.i.i.i, %sub.ptr.sub110.i.i.i
  br i1 %cmp111.i.i.i, label %if.end104.i.i.i.ZSTD_decompressSequencesLong.exit_crit_edge, label %if.end113.i.i.i

if.end104.i.i.i.ZSTD_decompressSequencesLong.exit_crit_edge: ; preds = %if.end104.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_decompressSequencesLong.exit

if.end113.i.i.i:                                  ; preds = %if.end104.i.i.i
  %cmp114.not.i.i.i = icmp eq ptr %op.5.i.i.i, null
  br i1 %cmp114.not.i.i.i, label %if.end113.i.i.i.cleanup.cont120.i.i.i_crit_edge, label %if.then115.i.i.i

if.end113.i.i.i.cleanup.cont120.i.i.i_crit_edge:  ; preds = %if.end113.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.cont120.i.i.i

if.then115.i.i.i:                                 ; preds = %if.end113.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %586 = call ptr @memcpy(ptr %op.5.i.i.i, ptr %585, i32 %sub.ptr.sub107.i.i.i)
  %add.ptr116.i.i.i = getelementptr i8, ptr %op.5.i.i.i, i32 %sub.ptr.sub107.i.i.i
  %phi.cast.i.i.i = ptrtoint ptr %add.ptr116.i.i.i to i32
  br label %cleanup.cont120.i.i.i

cleanup.cont120.i.i.i:                            ; preds = %if.then115.i.i.i, %if.end113.i.i.i.cleanup.cont120.i.i.i_crit_edge
  %op.7.ph.i.i.i = phi i32 [ 0, %if.end113.i.i.i.cleanup.cont120.i.i.i_crit_edge ], [ %phi.cast.i.i.i, %if.then115.i.i.i ]
  %sub.ptr.rhs.cast122.i.i.i = ptrtoint ptr %dst to i32
  %sub.ptr.sub123.i.i.i = sub i32 %op.7.ph.i.i.i, %sub.ptr.rhs.cast122.i.i.i
  br label %ZSTD_decompressSequencesLong.exit

ZSTD_decompressSequencesLong.exit:                ; preds = %cleanup.cont120.i.i.i, %if.end104.i.i.i.ZSTD_decompressSequencesLong.exit_crit_edge, %cleanup98.thread.i.i.i
  %retval.7.i.i.i = phi i32 [ %sub.ptr.sub123.i.i.i, %cleanup.cont120.i.i.i ], [ %retval.4.ph.i.i.i, %cleanup98.thread.i.i.i ], [ -70, %if.end104.i.i.i.ZSTD_decompressSequencesLong.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %litPtr.i.i.i) #9
  br label %cleanup42

if.end40:                                         ; preds = %if.end35.if.end40_crit_edge, %if.end35.thread
  %587 = ptrtoint ptr %nbSeq to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load i32, ptr %nbSeq, align 4
  %add.ptr1.i.i.i86 = getelementptr i8, ptr %dst, i32 %dstCapacity
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %litPtr.i.i.i84) #9
  %litPtr2.i.i.i87 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 23
  %589 = ptrtoint ptr %litPtr2.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %litPtr2.i.i.i87, align 8
  %591 = ptrtoint ptr %litPtr.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %591)
  store ptr %590, ptr %litPtr.i.i.i84, align 4
  %litSize.i.i.i88 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 25
  %592 = ptrtoint ptr %litSize.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load i32, ptr %litSize.i.i.i88, align 8
  %add.ptr3.i.i.i89 = getelementptr i8, ptr %590, i32 %593
  %prefixStart4.i.i.i90 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 7
  %594 = ptrtoint ptr %prefixStart4.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %prefixStart4.i.i.i90, align 8
  %virtualStart.i.i.i91 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 8
  %596 = ptrtoint ptr %virtualStart.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %virtualStart.i.i.i91, align 4
  %dictEnd5.i.i.i92 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 9
  %598 = ptrtoint ptr %dictEnd5.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %dictEnd5.i.i.i92, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %588)
  %tobool.not.i.i.i93 = icmp eq i32 %588, 0
  br i1 %tobool.not.i.i.i93, label %entry.if.end57_crit_edge.i.i.i, label %if.then.i.i.i96

entry.if.end57_crit_edge.i.i.i:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %.pre.i.i.i = ptrtoint ptr %add.ptr1.i.i.i86 to i32
  br label %if.end57.i.i.i

if.then.i.i.i96:                                  ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %seqState.i.i.i85) #9
  %600 = call ptr @memset(ptr %seqState.i.i.i85, i32 255, i32 68)
  %fseEntropy.i.i.i94 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 17
  %601 = ptrtoint ptr %fseEntropy.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %601)
  store i32 1, ptr %fseEntropy.i.i.i94, align 4
  %uglygep.i.i.i95 = getelementptr inbounds i8, ptr %seqState.i.i.i85, i32 44
  %uglygep213.i.i.i = getelementptr i8, ptr %dctx, i32 26668
  %602 = call ptr @memcpy(ptr %uglygep.i.i.i95, ptr %uglygep213.i.i.i, i32 12)
  call void @__sanitizer_cov_trace_cmp4(i32 %srcSize.addr.0, i32 %call10)
  %cmp.i11.i.i.i = icmp eq i32 %srcSize.addr.0, %call10
  br i1 %cmp.i11.i.i.i, label %if.then.i.i.i96.cleanup53.thread.i.i.i_crit_edge, label %if.end.i14.i.i.i

if.then.i.i.i96.cleanup53.thread.i.i.i_crit_edge: ; preds = %if.then.i.i.i96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53.thread.i.i.i

if.end.i14.i.i.i:                                 ; preds = %if.then.i.i.i96
  %start.i.i.i.i97 = getelementptr inbounds %struct.BIT_DStream_t, ptr %seqState.i.i.i85, i32 0, i32 3
  %603 = ptrtoint ptr %start.i.i.i.i97 to i32
  call void @__asan_store4_noabort(i32 %603)
  store ptr %add.ptr15, ptr %start.i.i.i.i97, align 4
  %add.ptr.i13.i.i.i = getelementptr i8, ptr %add.ptr15, i32 4
  %limitPtr.i.i.i.i98 = getelementptr inbounds %struct.BIT_DStream_t, ptr %seqState.i.i.i85, i32 0, i32 4
  %604 = ptrtoint ptr %limitPtr.i.i.i.i98 to i32
  call void @__asan_store4_noabort(i32 %604)
  store ptr %add.ptr.i13.i.i.i, ptr %limitPtr.i.i.i.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub16)
  %cmp2.i.i.i.i99 = icmp ugt i32 %sub16, 3
  br i1 %cmp2.i.i.i.i99, label %if.then3.i.i.i.i103, label %if.else.i20.i.i.i

if.then3.i.i.i.i103:                              ; preds = %if.end.i14.i.i.i
  %add.ptr4.i.i.i.i100 = getelementptr i8, ptr %add.ptr15, i32 %sub16
  %add.ptr5.i15.i.i.i = getelementptr i8, ptr %add.ptr4.i.i.i.i100, i32 -4
  %ptr.i.i.i.i101 = getelementptr inbounds %struct.BIT_DStream_t, ptr %seqState.i.i.i85, i32 0, i32 2
  %605 = ptrtoint ptr %ptr.i.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %605)
  store ptr %add.ptr5.i15.i.i.i, ptr %ptr.i.i.i.i101, align 4
  %606 = ptrtoint ptr %add.ptr5.i15.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %606, i32 4)
  %607 = load i32, ptr %add.ptr5.i15.i.i.i, align 1
  %608 = tail call i32 @llvm.bswap.i32(i32 %607) #9
  %609 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %609)
  store i32 %608, ptr %seqState.i.i.i85, align 4
  %610 = trunc i32 %607 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %610)
  %tobool.not.i.i.i.i102 = icmp eq i8 %610, 0
  br i1 %tobool.not.i.i.i.i102, label %if.then3.i.i.i.i103.cleanup53.thread.i.i.i_crit_edge, label %BIT_initDStream.exit.i.i.i125

if.then3.i.i.i.i103.cleanup53.thread.i.i.i_crit_edge: ; preds = %if.then3.i.i.i.i103
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53.thread.i.i.i

if.else.i20.i.i.i:                                ; preds = %if.end.i14.i.i.i
  %ptr16.i.i.i.i104 = getelementptr inbounds %struct.BIT_DStream_t, ptr %seqState.i.i.i85, i32 0, i32 2
  %611 = ptrtoint ptr %ptr16.i.i.i.i104 to i32
  call void @__asan_store4_noabort(i32 %611)
  store ptr %add.ptr15, ptr %ptr16.i.i.i.i104, align 4
  %612 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load1_noabort(i32 %612)
  %613 = load i8, ptr %add.ptr15, align 1
  %conv18.i.i.i.i105 = zext i8 %613 to i32
  %614 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %614)
  store i32 %conv18.i.i.i.i105, ptr %seqState.i.i.i85, align 4
  %615 = zext i32 %sub16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %615, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %sub16, label %if.else.i20.i.i.i.sw.epilog.i.i.i.i117_crit_edge [
    i32 2, label %if.else.i20.i.i.i.sw.bb47.i.i.i.i114_crit_edge
    i32 3, label %sw.bb41.i.i.i.i109
  ]

if.else.i20.i.i.i.sw.bb47.i.i.i.i114_crit_edge:   ; preds = %if.else.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb47.i.i.i.i114

if.else.i20.i.i.i.sw.epilog.i.i.i.i117_crit_edge: ; preds = %if.else.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i.i.i117

sw.bb41.i.i.i.i109:                               ; preds = %if.else.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx42.i.i.i.i106 = getelementptr i8, ptr %add.ptr15, i32 2
  %616 = ptrtoint ptr %arrayidx42.i.i.i.i106 to i32
  call void @__asan_load1_noabort(i32 %616)
  %617 = load i8, ptr %arrayidx42.i.i.i.i106, align 1
  %conv43.i.i.i.i107 = zext i8 %617 to i32
  %shl44.i.i.i.i108 = shl nuw nsw i32 %conv43.i.i.i.i107, 16
  %add46.i21.i.i.i = or i32 %shl44.i.i.i.i108, %conv18.i.i.i.i105
  %618 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %618)
  store i32 %add46.i21.i.i.i, ptr %seqState.i.i.i85, align 4
  br label %sw.bb47.i.i.i.i114

sw.bb47.i.i.i.i114:                               ; preds = %sw.bb41.i.i.i.i109, %if.else.i20.i.i.i.sw.bb47.i.i.i.i114_crit_edge
  %arrayidx48.i.i.i.i110 = getelementptr i8, ptr %add.ptr15, i32 1
  %619 = ptrtoint ptr %arrayidx48.i.i.i.i110 to i32
  call void @__asan_load1_noabort(i32 %619)
  %620 = load i8, ptr %arrayidx48.i.i.i.i110, align 1
  %conv49.i.i.i.i111 = zext i8 %620 to i32
  %shl50.i.i.i.i112 = shl nuw nsw i32 %conv49.i.i.i.i111, 8
  %621 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %seqState.i.i.i85, align 4
  %add52.i.i.i.i113 = add i32 %shl50.i.i.i.i112, %622
  store i32 %add52.i.i.i.i113, ptr %seqState.i.i.i85, align 4
  br label %sw.epilog.i.i.i.i117

sw.epilog.i.i.i.i117:                             ; preds = %sw.bb47.i.i.i.i114, %if.else.i20.i.i.i.sw.epilog.i.i.i.i117_crit_edge
  %sub54.i22.i.i.i = add nsw i32 %sub16, -1
  %arrayidx55.i.i.i.i115 = getelementptr i8, ptr %add.ptr15, i32 %sub54.i22.i.i.i
  %623 = ptrtoint ptr %arrayidx55.i.i.i.i115 to i32
  call void @__asan_load1_noabort(i32 %623)
  %624 = load i8, ptr %arrayidx55.i.i.i.i115, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %624)
  %tobool57.not.i.i.i.i116 = icmp eq i8 %624, 0
  br i1 %tobool57.not.i.i.i.i116, label %sw.epilog.i.i.i.i117.cleanup53.thread.i.i.i_crit_edge, label %BIT_initDStream.exit.thread193.i.i.i

sw.epilog.i.i.i.i117.cleanup53.thread.i.i.i_crit_edge: ; preds = %sw.epilog.i.i.i.i117
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53.thread.i.i.i

BIT_initDStream.exit.thread193.i.i.i:             ; preds = %sw.epilog.i.i.i.i117
  call void @__sanitizer_cov_trace_pc() #11
  %conv56.i.i.i.i118 = zext i8 %624 to i32
  %625 = tail call i32 @llvm.ctlz.i32(i32 %conv56.i.i.i.i118, i1 true) #9, !range !33
  %bitsConsumed65124.i.i.i.i119 = getelementptr inbounds %struct.BIT_DStream_t, ptr %seqState.i.i.i85, i32 0, i32 1
  %.neg.i.i.i.i120 = mul nsw i32 %sub16, -8
  %mul.i.i.i.i121 = add nsw i32 %.neg.i.i.i.i120, 9
  %add76.i.i.i.i122 = add nsw i32 %mul.i.i.i.i121, %625
  %626 = ptrtoint ptr %bitsConsumed65124.i.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %626)
  store i32 %add76.i.i.i.i122, ptr %bitsConsumed65124.i.i.i.i119, align 4
  br label %if.end.i.i.i134

BIT_initDStream.exit.i.i.i125:                    ; preds = %if.then3.i.i.i.i103
  %conv.i18.i.i.i = and i32 %607, 255
  %627 = tail call i32 @llvm.ctlz.i32(i32 %conv.i18.i.i.i, i1 true) #9, !range !33
  %sub9.i.i.i.i123 = add nsw i32 %627, -23
  %bitsConsumed121.i.i.i.i124 = getelementptr inbounds %struct.BIT_DStream_t, ptr %seqState.i.i.i85, i32 0, i32 1
  %628 = ptrtoint ptr %bitsConsumed121.i.i.i.i124 to i32
  call void @__asan_store4_noabort(i32 %628)
  store i32 %sub9.i.i.i.i123, ptr %bitsConsumed121.i.i.i.i124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %sub16)
  %cmp.i23.i.i.i = icmp ult i32 %sub16, -119
  br i1 %cmp.i23.i.i.i, label %BIT_initDStream.exit.i.i.i125.if.end.i.i.i134_crit_edge, label %BIT_initDStream.exit.i.i.i125.cleanup53.thread.i.i.i_crit_edge

BIT_initDStream.exit.i.i.i125.cleanup53.thread.i.i.i_crit_edge: ; preds = %BIT_initDStream.exit.i.i.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53.thread.i.i.i

BIT_initDStream.exit.i.i.i125.if.end.i.i.i134_crit_edge: ; preds = %BIT_initDStream.exit.i.i.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i134

if.end.i.i.i134:                                  ; preds = %BIT_initDStream.exit.i.i.i125.if.end.i.i.i134_crit_edge, %BIT_initDStream.exit.thread193.i.i.i
  %stateLL.i.i.i126 = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i85, i32 0, i32 1
  %629 = ptrtoint ptr %dctx to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %dctx, align 8
  %tableLog.i.i.i.i127 = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %630, i32 0, i32 1
  %631 = ptrtoint ptr %tableLog.i.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load i32, ptr %tableLog.i.i.i.i127, align 4
  %633 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load i32, ptr %seqState.i.i.i85, align 4
  %bitsConsumed.i.i.i.i.i.i128 = getelementptr inbounds %struct.BIT_DStream_t, ptr %seqState.i.i.i85, i32 0, i32 1
  %635 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load i32, ptr %bitsConsumed.i.i.i.i.i.i128, align 4
  %637 = add i32 %636, %632
  %sub1.i.i.i.i.i.i129 = sub i32 0, %637
  %and.i.i.i.i.i.i.i130 = and i32 %sub1.i.i.i.i.i.i129, 31
  %shr.i.i.i.i.i.i.i131 = lshr i32 %634, %and.i.i.i.i.i.i.i130
  %arrayidx.i.i.i.i.i.i.i132 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %632
  %638 = ptrtoint ptr %arrayidx.i.i.i.i.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %arrayidx.i.i.i.i.i.i.i132, align 4
  %and1.i.i.i.i.i.i.i133 = and i32 %shr.i.i.i.i.i.i.i131, %639
  store i32 %637, ptr %bitsConsumed.i.i.i.i.i.i128, align 4
  %640 = ptrtoint ptr %stateLL.i.i.i126 to i32
  call void @__asan_store4_noabort(i32 %640)
  store i32 %and1.i.i.i.i.i.i.i133, ptr %stateLL.i.i.i126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %637)
  %cmp.i.i25.i.i.i = icmp ugt i32 %637, 32
  br i1 %cmp.i.i25.i.i.i, label %if.end.i.i.i134.ZSTD_initFseState.exit.i.i.i138_crit_edge, label %if.end.i.i29.i.i.i

if.end.i.i.i134.ZSTD_initFseState.exit.i.i.i138_crit_edge: ; preds = %if.end.i.i.i134
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_initFseState.exit.i.i.i138

if.end.i.i29.i.i.i:                               ; preds = %if.end.i.i.i134
  %ptr.i.i26.i.i.i = getelementptr inbounds %struct.BIT_DStream_t, ptr %seqState.i.i.i85, i32 0, i32 2
  %641 = ptrtoint ptr %ptr.i.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %ptr.i.i26.i.i.i, align 4
  %cmp1.not.i.i28.i.i.i = icmp ult ptr %642, %add.ptr.i13.i.i.i
  br i1 %cmp1.not.i.i28.i.i.i, label %if.end3.i.i37.i.i.i, label %BIT_reloadDStreamFast.exit.i.i34.i.i.i

BIT_reloadDStreamFast.exit.i.i34.i.i.i:           ; preds = %if.end.i.i29.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i30.i.i.i = lshr i32 %637, 3
  %idx.neg.i.i.i31.i.i.i = sub nsw i32 0, %shr.i.i.i30.i.i.i
  %add.ptr.i.i.i32.i.i.i = getelementptr i8, ptr %642, i32 %idx.neg.i.i.i31.i.i.i
  %643 = ptrtoint ptr %ptr.i.i26.i.i.i to i32
  call void @__asan_store4_noabort(i32 %643)
  store ptr %add.ptr.i.i.i32.i.i.i, ptr %ptr.i.i26.i.i.i, align 4
  %and.i.i.i33.i.i.i = and i32 %637, 7
  br label %BIT_reloadDStream.exit.sink.split.i52.i.i.i

if.end3.i.i37.i.i.i:                              ; preds = %if.end.i.i29.i.i.i
  %cmp5.i.i36.i.i.i = icmp eq ptr %642, %add.ptr15
  br i1 %cmp5.i.i36.i.i.i, label %if.end3.i.i37.i.i.i.ZSTD_initFseState.exit.i.i.i138_crit_edge, label %if.end11.i.i50.i.i.i

if.end3.i.i37.i.i.i.ZSTD_initFseState.exit.i.i.i138_crit_edge: ; preds = %if.end3.i.i37.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_initFseState.exit.i.i.i138

if.end11.i.i50.i.i.i:                             ; preds = %if.end3.i.i37.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i38.i.i.i = lshr i32 %637, 3
  %idx.neg.i.i39.i.i.i = sub nsw i32 0, %shr.i.i38.i.i.i
  %add.ptr.i.i40.i.i.i = getelementptr i8, ptr %642, i32 %idx.neg.i.i39.i.i.i
  %cmp15.i.i41.i.i.i = icmp ult ptr %add.ptr.i.i40.i.i.i, %add.ptr15
  %sub.ptr.lhs.cast.i.i42.i.i.i = ptrtoint ptr %642 to i32
  %sub.ptr.rhs.cast.i.i43.i.i.i = ptrtoint ptr %add.ptr15 to i32
  %sub.ptr.sub.i.i44.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i42.i.i.i, %sub.ptr.rhs.cast.i.i43.i.i.i
  %nbBytes.0.i.i45.i.i.i = select i1 %cmp15.i.i41.i.i.i, i32 %sub.ptr.sub.i.i44.i.i.i, i32 %shr.i.i38.i.i.i
  %idx.neg21.i.i46.i.i.i = sub i32 0, %nbBytes.0.i.i45.i.i.i
  %add.ptr22.i.i47.i.i.i = getelementptr i8, ptr %642, i32 %idx.neg21.i.i46.i.i.i
  %644 = ptrtoint ptr %ptr.i.i26.i.i.i to i32
  call void @__asan_store4_noabort(i32 %644)
  store ptr %add.ptr22.i.i47.i.i.i, ptr %ptr.i.i26.i.i.i, align 4
  %mul.neg.i.i48.i.i.i = mul i32 %nbBytes.0.i.i45.i.i.i, -8
  %sub.i.i49.i.i.i = add i32 %mul.neg.i.i48.i.i.i, %637
  br label %BIT_reloadDStream.exit.sink.split.i52.i.i.i

BIT_reloadDStream.exit.sink.split.i52.i.i.i:      ; preds = %if.end11.i.i50.i.i.i, %BIT_reloadDStreamFast.exit.i.i34.i.i.i
  %and.i.i.sink.i.i.i.i135 = phi i32 [ %and.i.i.i33.i.i.i, %BIT_reloadDStreamFast.exit.i.i34.i.i.i ], [ %sub.i.i49.i.i.i, %if.end11.i.i50.i.i.i ]
  %add.ptr.i.i.sink.i51.i.i.i = phi ptr [ %add.ptr.i.i.i32.i.i.i, %BIT_reloadDStreamFast.exit.i.i34.i.i.i ], [ %add.ptr22.i.i47.i.i.i, %if.end11.i.i50.i.i.i ]
  %645 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %645)
  store i32 %and.i.i.sink.i.i.i.i135, ptr %bitsConsumed.i.i.i.i.i.i128, align 4
  %646 = ptrtoint ptr %add.ptr.i.i.sink.i51.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %646, i32 4)
  %647 = load i32, ptr %add.ptr.i.i.sink.i51.i.i.i, align 1
  %648 = tail call i32 @llvm.bswap.i32(i32 %647) #9
  %649 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %649)
  store i32 %648, ptr %seqState.i.i.i85, align 4
  br label %ZSTD_initFseState.exit.i.i.i138

ZSTD_initFseState.exit.i.i.i138:                  ; preds = %BIT_reloadDStream.exit.sink.split.i52.i.i.i, %if.end3.i.i37.i.i.i.ZSTD_initFseState.exit.i.i.i138_crit_edge, %if.end.i.i.i134.ZSTD_initFseState.exit.i.i.i138_crit_edge
  %add.ptr.i53.i.i.i = getelementptr %struct.ZSTD_seqSymbol, ptr %630, i32 1
  %table.i54.i.i.i = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i85, i32 0, i32 1, i32 1
  %650 = ptrtoint ptr %table.i54.i.i.i to i32
  call void @__asan_store4_noabort(i32 %650)
  store ptr %add.ptr.i53.i.i.i, ptr %table.i54.i.i.i, align 4
  %stateOffb.i.i.i136 = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i85, i32 0, i32 2
  %OFTptr.i.i.i137 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 2
  %651 = ptrtoint ptr %OFTptr.i.i.i137 to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %OFTptr.i.i.i137, align 8
  %tableLog.i56.i.i.i = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %652, i32 0, i32 1
  %653 = ptrtoint ptr %tableLog.i56.i.i.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load i32, ptr %tableLog.i56.i.i.i, align 4
  %655 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load i32, ptr %seqState.i.i.i85, align 4
  %657 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load i32, ptr %bitsConsumed.i.i.i.i.i.i128, align 4
  %659 = add i32 %658, %654
  %sub1.i.i.i58.i.i.i = sub i32 0, %659
  %and.i.i.i.i59.i.i.i = and i32 %sub1.i.i.i58.i.i.i, 31
  %shr.i.i.i.i60.i.i.i = lshr i32 %656, %and.i.i.i.i59.i.i.i
  %arrayidx.i.i.i.i61.i.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %654
  %660 = ptrtoint ptr %arrayidx.i.i.i.i61.i.i.i to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load i32, ptr %arrayidx.i.i.i.i61.i.i.i, align 4
  %and1.i.i.i.i62.i.i.i = and i32 %shr.i.i.i.i60.i.i.i, %661
  store i32 %659, ptr %bitsConsumed.i.i.i.i.i.i128, align 4
  %662 = ptrtoint ptr %stateOffb.i.i.i136 to i32
  call void @__asan_store4_noabort(i32 %662)
  store i32 %and1.i.i.i.i62.i.i.i, ptr %stateOffb.i.i.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %659)
  %cmp.i.i63.i.i.i = icmp ugt i32 %659, 32
  br i1 %cmp.i.i63.i.i.i, label %ZSTD_initFseState.exit.i.i.i138.ZSTD_initFseState.exit95.i.i.i_crit_edge, label %if.end.i.i67.i.i.i

ZSTD_initFseState.exit.i.i.i138.ZSTD_initFseState.exit95.i.i.i_crit_edge: ; preds = %ZSTD_initFseState.exit.i.i.i138
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_initFseState.exit95.i.i.i

if.end.i.i67.i.i.i:                               ; preds = %ZSTD_initFseState.exit.i.i.i138
  %ptr.i.i64.i.i.i = getelementptr inbounds %struct.BIT_DStream_t, ptr %seqState.i.i.i85, i32 0, i32 2
  %663 = ptrtoint ptr %ptr.i.i64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %ptr.i.i64.i.i.i, align 4
  %cmp1.not.i.i66.i.i.i = icmp ult ptr %664, %add.ptr.i13.i.i.i
  br i1 %cmp1.not.i.i66.i.i.i, label %if.end3.i.i75.i.i.i, label %BIT_reloadDStreamFast.exit.i.i72.i.i.i

BIT_reloadDStreamFast.exit.i.i72.i.i.i:           ; preds = %if.end.i.i67.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i68.i.i.i = lshr i32 %659, 3
  %idx.neg.i.i.i69.i.i.i = sub nsw i32 0, %shr.i.i.i68.i.i.i
  %add.ptr.i.i.i70.i.i.i = getelementptr i8, ptr %664, i32 %idx.neg.i.i.i69.i.i.i
  %665 = ptrtoint ptr %ptr.i.i64.i.i.i to i32
  call void @__asan_store4_noabort(i32 %665)
  store ptr %add.ptr.i.i.i70.i.i.i, ptr %ptr.i.i64.i.i.i, align 4
  %and.i.i.i71.i.i.i = and i32 %659, 7
  br label %BIT_reloadDStream.exit.sink.split.i91.i.i.i

if.end3.i.i75.i.i.i:                              ; preds = %if.end.i.i67.i.i.i
  %cmp5.i.i74.i.i.i = icmp eq ptr %664, %add.ptr15
  br i1 %cmp5.i.i74.i.i.i, label %if.end3.i.i75.i.i.i.ZSTD_initFseState.exit95.i.i.i_crit_edge, label %if.end11.i.i88.i.i.i

if.end3.i.i75.i.i.i.ZSTD_initFseState.exit95.i.i.i_crit_edge: ; preds = %if.end3.i.i75.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_initFseState.exit95.i.i.i

if.end11.i.i88.i.i.i:                             ; preds = %if.end3.i.i75.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i76.i.i.i = lshr i32 %659, 3
  %idx.neg.i.i77.i.i.i = sub nsw i32 0, %shr.i.i76.i.i.i
  %add.ptr.i.i78.i.i.i = getelementptr i8, ptr %664, i32 %idx.neg.i.i77.i.i.i
  %cmp15.i.i79.i.i.i = icmp ult ptr %add.ptr.i.i78.i.i.i, %add.ptr15
  %sub.ptr.lhs.cast.i.i80.i.i.i = ptrtoint ptr %664 to i32
  %sub.ptr.rhs.cast.i.i81.i.i.i = ptrtoint ptr %add.ptr15 to i32
  %sub.ptr.sub.i.i82.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i80.i.i.i, %sub.ptr.rhs.cast.i.i81.i.i.i
  %nbBytes.0.i.i83.i.i.i = select i1 %cmp15.i.i79.i.i.i, i32 %sub.ptr.sub.i.i82.i.i.i, i32 %shr.i.i76.i.i.i
  %idx.neg21.i.i84.i.i.i = sub i32 0, %nbBytes.0.i.i83.i.i.i
  %add.ptr22.i.i85.i.i.i = getelementptr i8, ptr %664, i32 %idx.neg21.i.i84.i.i.i
  %666 = ptrtoint ptr %ptr.i.i64.i.i.i to i32
  call void @__asan_store4_noabort(i32 %666)
  store ptr %add.ptr22.i.i85.i.i.i, ptr %ptr.i.i64.i.i.i, align 4
  %mul.neg.i.i86.i.i.i = mul i32 %nbBytes.0.i.i83.i.i.i, -8
  %sub.i.i87.i.i.i = add i32 %mul.neg.i.i86.i.i.i, %659
  br label %BIT_reloadDStream.exit.sink.split.i91.i.i.i

BIT_reloadDStream.exit.sink.split.i91.i.i.i:      ; preds = %if.end11.i.i88.i.i.i, %BIT_reloadDStreamFast.exit.i.i72.i.i.i
  %and.i.i.sink.i89.i.i.i = phi i32 [ %and.i.i.i71.i.i.i, %BIT_reloadDStreamFast.exit.i.i72.i.i.i ], [ %sub.i.i87.i.i.i, %if.end11.i.i88.i.i.i ]
  %add.ptr.i.i.sink.i90.i.i.i = phi ptr [ %add.ptr.i.i.i70.i.i.i, %BIT_reloadDStreamFast.exit.i.i72.i.i.i ], [ %add.ptr22.i.i85.i.i.i, %if.end11.i.i88.i.i.i ]
  %667 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %667)
  store i32 %and.i.i.sink.i89.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i128, align 4
  %668 = ptrtoint ptr %add.ptr.i.i.sink.i90.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %668, i32 4)
  %669 = load i32, ptr %add.ptr.i.i.sink.i90.i.i.i, align 1
  %670 = tail call i32 @llvm.bswap.i32(i32 %669) #9
  %671 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %671)
  store i32 %670, ptr %seqState.i.i.i85, align 4
  br label %ZSTD_initFseState.exit95.i.i.i

ZSTD_initFseState.exit95.i.i.i:                   ; preds = %BIT_reloadDStream.exit.sink.split.i91.i.i.i, %if.end3.i.i75.i.i.i.ZSTD_initFseState.exit95.i.i.i_crit_edge, %ZSTD_initFseState.exit.i.i.i138.ZSTD_initFseState.exit95.i.i.i_crit_edge
  %add.ptr.i92.i.i.i = getelementptr %struct.ZSTD_seqSymbol, ptr %652, i32 1
  %table.i93.i.i.i = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i85, i32 0, i32 2, i32 1
  %672 = ptrtoint ptr %table.i93.i.i.i to i32
  call void @__asan_store4_noabort(i32 %672)
  store ptr %add.ptr.i92.i.i.i, ptr %table.i93.i.i.i, align 4
  %stateML.i.i.i139 = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i85, i32 0, i32 3
  %MLTptr.i.i.i140 = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 1
  %673 = ptrtoint ptr %MLTptr.i.i.i140 to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %MLTptr.i.i.i140, align 4
  %tableLog.i96.i.i.i = getelementptr inbounds %struct.ZSTD_seqSymbol_header, ptr %674, i32 0, i32 1
  %675 = ptrtoint ptr %tableLog.i96.i.i.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load i32, ptr %tableLog.i96.i.i.i, align 4
  %677 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load i32, ptr %seqState.i.i.i85, align 4
  %679 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load i32, ptr %bitsConsumed.i.i.i.i.i.i128, align 4
  %681 = add i32 %680, %676
  %sub1.i.i.i98.i.i.i = sub i32 0, %681
  %and.i.i.i.i99.i.i.i = and i32 %sub1.i.i.i98.i.i.i, 31
  %shr.i.i.i.i100.i.i.i = lshr i32 %678, %and.i.i.i.i99.i.i.i
  %arrayidx.i.i.i.i101.i.i.i = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %676
  %682 = ptrtoint ptr %arrayidx.i.i.i.i101.i.i.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load i32, ptr %arrayidx.i.i.i.i101.i.i.i, align 4
  %and1.i.i.i.i102.i.i.i = and i32 %shr.i.i.i.i100.i.i.i, %683
  store i32 %681, ptr %bitsConsumed.i.i.i.i.i.i128, align 4
  %684 = ptrtoint ptr %stateML.i.i.i139 to i32
  call void @__asan_store4_noabort(i32 %684)
  store i32 %and1.i.i.i.i102.i.i.i, ptr %stateML.i.i.i139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %681)
  %cmp.i.i103.i.i.i = icmp ugt i32 %681, 32
  br i1 %cmp.i.i103.i.i.i, label %ZSTD_initFseState.exit95.i.i.i.ZSTD_initFseState.exit135.i.i.i_crit_edge, label %if.end.i.i107.i.i.i

ZSTD_initFseState.exit95.i.i.i.ZSTD_initFseState.exit135.i.i.i_crit_edge: ; preds = %ZSTD_initFseState.exit95.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_initFseState.exit135.i.i.i

if.end.i.i107.i.i.i:                              ; preds = %ZSTD_initFseState.exit95.i.i.i
  %ptr.i.i104.i.i.i = getelementptr inbounds %struct.BIT_DStream_t, ptr %seqState.i.i.i85, i32 0, i32 2
  %685 = ptrtoint ptr %ptr.i.i104.i.i.i to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %ptr.i.i104.i.i.i, align 4
  %cmp1.not.i.i106.i.i.i = icmp ult ptr %686, %add.ptr.i13.i.i.i
  br i1 %cmp1.not.i.i106.i.i.i, label %if.end3.i.i115.i.i.i, label %BIT_reloadDStreamFast.exit.i.i112.i.i.i

BIT_reloadDStreamFast.exit.i.i112.i.i.i:          ; preds = %if.end.i.i107.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i108.i.i.i = lshr i32 %681, 3
  %idx.neg.i.i.i109.i.i.i = sub nsw i32 0, %shr.i.i.i108.i.i.i
  %add.ptr.i.i.i110.i.i.i = getelementptr i8, ptr %686, i32 %idx.neg.i.i.i109.i.i.i
  %687 = ptrtoint ptr %ptr.i.i104.i.i.i to i32
  call void @__asan_store4_noabort(i32 %687)
  store ptr %add.ptr.i.i.i110.i.i.i, ptr %ptr.i.i104.i.i.i, align 4
  %and.i.i.i111.i.i.i = and i32 %681, 7
  br label %BIT_reloadDStream.exit.sink.split.i131.i.i.i

if.end3.i.i115.i.i.i:                             ; preds = %if.end.i.i107.i.i.i
  %cmp5.i.i114.i.i.i = icmp eq ptr %686, %add.ptr15
  br i1 %cmp5.i.i114.i.i.i, label %if.end3.i.i115.i.i.i.ZSTD_initFseState.exit135.i.i.i_crit_edge, label %if.end11.i.i128.i.i.i

if.end3.i.i115.i.i.i.ZSTD_initFseState.exit135.i.i.i_crit_edge: ; preds = %if.end3.i.i115.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_initFseState.exit135.i.i.i

if.end11.i.i128.i.i.i:                            ; preds = %if.end3.i.i115.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i116.i.i.i = lshr i32 %681, 3
  %idx.neg.i.i117.i.i.i = sub nsw i32 0, %shr.i.i116.i.i.i
  %add.ptr.i.i118.i.i.i = getelementptr i8, ptr %686, i32 %idx.neg.i.i117.i.i.i
  %cmp15.i.i119.i.i.i = icmp ult ptr %add.ptr.i.i118.i.i.i, %add.ptr15
  %sub.ptr.lhs.cast.i.i120.i.i.i = ptrtoint ptr %686 to i32
  %sub.ptr.rhs.cast.i.i121.i.i.i = ptrtoint ptr %add.ptr15 to i32
  %sub.ptr.sub.i.i122.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i120.i.i.i, %sub.ptr.rhs.cast.i.i121.i.i.i
  %nbBytes.0.i.i123.i.i.i = select i1 %cmp15.i.i119.i.i.i, i32 %sub.ptr.sub.i.i122.i.i.i, i32 %shr.i.i116.i.i.i
  %idx.neg21.i.i124.i.i.i = sub i32 0, %nbBytes.0.i.i123.i.i.i
  %add.ptr22.i.i125.i.i.i = getelementptr i8, ptr %686, i32 %idx.neg21.i.i124.i.i.i
  %688 = ptrtoint ptr %ptr.i.i104.i.i.i to i32
  call void @__asan_store4_noabort(i32 %688)
  store ptr %add.ptr22.i.i125.i.i.i, ptr %ptr.i.i104.i.i.i, align 4
  %mul.neg.i.i126.i.i.i = mul i32 %nbBytes.0.i.i123.i.i.i, -8
  %sub.i.i127.i.i.i = add i32 %mul.neg.i.i126.i.i.i, %681
  br label %BIT_reloadDStream.exit.sink.split.i131.i.i.i

BIT_reloadDStream.exit.sink.split.i131.i.i.i:     ; preds = %if.end11.i.i128.i.i.i, %BIT_reloadDStreamFast.exit.i.i112.i.i.i
  %and.i.i.sink.i129.i.i.i = phi i32 [ %and.i.i.i111.i.i.i, %BIT_reloadDStreamFast.exit.i.i112.i.i.i ], [ %sub.i.i127.i.i.i, %if.end11.i.i128.i.i.i ]
  %add.ptr.i.i.sink.i130.i.i.i = phi ptr [ %add.ptr.i.i.i110.i.i.i, %BIT_reloadDStreamFast.exit.i.i112.i.i.i ], [ %add.ptr22.i.i125.i.i.i, %if.end11.i.i128.i.i.i ]
  %689 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %689)
  store i32 %and.i.i.sink.i129.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i128, align 4
  %690 = ptrtoint ptr %add.ptr.i.i.sink.i130.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %690, i32 4)
  %691 = load i32, ptr %add.ptr.i.i.sink.i130.i.i.i, align 1
  %692 = tail call i32 @llvm.bswap.i32(i32 %691) #9
  %693 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %693)
  store i32 %692, ptr %seqState.i.i.i85, align 4
  br label %ZSTD_initFseState.exit135.i.i.i

ZSTD_initFseState.exit135.i.i.i:                  ; preds = %BIT_reloadDStream.exit.sink.split.i131.i.i.i, %if.end3.i.i115.i.i.i.ZSTD_initFseState.exit135.i.i.i_crit_edge, %ZSTD_initFseState.exit95.i.i.i.ZSTD_initFseState.exit135.i.i.i_crit_edge
  %add.ptr.i132.i.i.i = getelementptr %struct.ZSTD_seqSymbol, ptr %674, i32 1
  %table.i133.i.i.i = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i85, i32 0, i32 3, i32 1
  %694 = ptrtoint ptr %table.i133.i.i.i to i32
  call void @__asan_store4_noabort(i32 %694)
  store ptr %add.ptr.i132.i.i.i, ptr %table.i133.i.i.i, align 4
  %add.ptr3.i.i.i.i141 = getelementptr i8, ptr %add.ptr1.i.i.i86, i32 -32
  %arrayidx115.i.i.i.i142 = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i85, i32 0, i32 4, i32 1
  %arrayidx117.i.i.i.i143 = getelementptr inbounds %struct.seqState_t, ptr %seqState.i.i.i85, i32 0, i32 4, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool20.not.i.i.i.i144 = icmp ne i32 %2, 0
  %ptr.i327.i.i.i.i = getelementptr inbounds %struct.BIT_DStream_t, ptr %seqState.i.i.i85, i32 0, i32 2
  %sub.ptr.lhs.cast.i.i.i.i145 = ptrtoint ptr %add.ptr1.i.i.i86 to i32
  %sub.ptr.rhs.cast23.i.i.i.i = ptrtoint ptr %595 to i32
  %sub.ptr.rhs.cast30.i.i.i.i146 = ptrtoint ptr %597 to i32
  br label %for.cond13.i.i.i

for.cond13.i.i.i:                                 ; preds = %BIT_reloadDStream.exit.i.i.i536.for.cond13.i.i.i_crit_edge, %ZSTD_initFseState.exit135.i.i.i
  %nbSeq.addr.0.i.i.i = phi i32 [ %588, %ZSTD_initFseState.exit135.i.i.i ], [ %nbSeq.addr.1.i.i.i, %BIT_reloadDStream.exit.i.i.i536.for.cond13.i.i.i_crit_edge ]
  %op.0.i.i.i147 = phi ptr [ %dst, %ZSTD_initFseState.exit135.i.i.i ], [ %add.ptr17.i.i.i, %BIT_reloadDStream.exit.i.i.i536.for.cond13.i.i.i_crit_edge ]
  %error.0.i.i.i = phi i32 [ 0, %ZSTD_initFseState.exit135.i.i.i ], [ %error.1.i.i.i, %BIT_reloadDStream.exit.i.i.i536.for.cond13.i.i.i_crit_edge ]
  %695 = ptrtoint ptr %table.i54.i.i.i to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %table.i54.i.i.i, align 4, !noalias !44
  %697 = ptrtoint ptr %stateLL.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load i32, ptr %stateLL.i.i.i126, align 4, !noalias !44
  %arrayidx.i.i.i.i148 = getelementptr %struct.ZSTD_seqSymbol, ptr %696, i32 %698
  %699 = ptrtoint ptr %arrayidx.i.i.i.i148 to i32
  call void @__asan_load4_noabort(i32 %699)
  %llDInfo.sroa.0.0.copyload.i.i.i.i149 = load i32, ptr %arrayidx.i.i.i.i148, align 4, !noalias !44
  %llDInfo.sroa.0.sroa.5.0.extract.shift.i.i.i.i150 = lshr i32 %llDInfo.sroa.0.0.copyload.i.i.i.i149, 8
  %llDInfo.sroa.8.0.arrayidx.sroa_idx.i.i.i.i151 = getelementptr inbounds i8, ptr %arrayidx.i.i.i.i148, i32 4
  %700 = ptrtoint ptr %llDInfo.sroa.8.0.arrayidx.sroa_idx.i.i.i.i151 to i32
  call void @__asan_load4_noabort(i32 %700)
  %llDInfo.sroa.8.0.copyload.i.i.i.i152 = load i32, ptr %llDInfo.sroa.8.0.arrayidx.sroa_idx.i.i.i.i151, align 4, !noalias !44
  %701 = ptrtoint ptr %table.i133.i.i.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %table.i133.i.i.i, align 4, !noalias !44
  %703 = ptrtoint ptr %stateML.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load i32, ptr %stateML.i.i.i139, align 4, !noalias !44
  %arrayidx5.i.i.i.i153 = getelementptr %struct.ZSTD_seqSymbol, ptr %702, i32 %704
  %705 = ptrtoint ptr %arrayidx5.i.i.i.i153 to i32
  call void @__asan_load4_noabort(i32 %705)
  %mlDInfo.sroa.0.0.copyload.i.i.i.i154 = load i32, ptr %arrayidx5.i.i.i.i153, align 4, !noalias !44
  %mlDInfo.sroa.0.sroa.5.0.extract.shift.i.i.i.i155 = lshr i32 %mlDInfo.sroa.0.0.copyload.i.i.i.i154, 8
  %mlDInfo.sroa.8.0.arrayidx5.sroa_idx.i.i.i.i156 = getelementptr inbounds i8, ptr %arrayidx5.i.i.i.i153, i32 4
  %706 = ptrtoint ptr %mlDInfo.sroa.8.0.arrayidx5.sroa_idx.i.i.i.i156 to i32
  call void @__asan_load4_noabort(i32 %706)
  %mlDInfo.sroa.8.0.copyload.i.i.i.i157 = load i32, ptr %mlDInfo.sroa.8.0.arrayidx5.sroa_idx.i.i.i.i156, align 4, !noalias !44
  %707 = ptrtoint ptr %table.i93.i.i.i to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %table.i93.i.i.i, align 4, !noalias !44
  %709 = ptrtoint ptr %stateOffb.i.i.i136 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load i32, ptr %stateOffb.i.i.i136, align 4, !noalias !44
  %arrayidx9.i.i.i.i158 = getelementptr %struct.ZSTD_seqSymbol, ptr %708, i32 %710
  %711 = ptrtoint ptr %arrayidx9.i.i.i.i158 to i32
  call void @__asan_load4_noabort(i32 %711)
  %ofDInfo.sroa.0.0.copyload.i.i.i.i159 = load i32, ptr %arrayidx9.i.i.i.i158, align 4, !noalias !44
  %ofDInfo.sroa.0.sroa.5.0.extract.shift.i.i.i.i160 = lshr i32 %ofDInfo.sroa.0.0.copyload.i.i.i.i159, 8
  %ofDInfo.sroa.8.0.arrayidx9.sroa_idx.i.i.i.i161 = getelementptr inbounds i8, ptr %arrayidx9.i.i.i.i158, i32 4
  %712 = ptrtoint ptr %ofDInfo.sroa.8.0.arrayidx9.sroa_idx.i.i.i.i161 to i32
  call void @__asan_load4_noabort(i32 %712)
  %ofDInfo.sroa.8.0.copyload.i.i.i.i162 = load i32, ptr %ofDInfo.sroa.8.0.arrayidx9.sroa_idx.i.i.i.i161, align 4, !noalias !44
  %conv.i.i.i.i163 = and i32 %llDInfo.sroa.0.sroa.5.0.extract.shift.i.i.i.i150, 255
  %conv14.i.i.i.i164 = and i32 %mlDInfo.sroa.0.sroa.5.0.extract.shift.i.i.i.i155, 255
  %add.i.i.i.i165 = add nuw nsw i32 %conv14.i.i.i.i164, %conv.i.i.i.i163
  %conv15.i.i.i.i166 = and i32 %ofDInfo.sroa.0.sroa.5.0.extract.shift.i.i.i.i160, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv15.i.i.i.i166)
  %cmp.i.i.i.i167 = icmp ugt i32 %conv15.i.i.i.i166, 1
  br i1 %cmp.i.i.i.i167, label %if.then.i.i.i.i170, label %if.else67.i.i.i.i253

if.then.i.i.i.i170:                               ; preds = %for.cond13.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %conv15.i.i.i.i166)
  %cmp23.i.i.i.i168 = icmp ugt i32 %conv15.i.i.i.i166, 24
  %or.cond.i.i.i.i169 = select i1 %tobool20.not.i.i.i.i144, i1 %cmp23.i.i.i.i168, i1 false
  br i1 %or.cond.i.i.i.i169, label %if.then25.i.i.i.i182, label %if.else.i.i.i.i226

if.then25.i.i.i.i182:                             ; preds = %if.then.i.i.i.i170
  %713 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load i32, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  %sub.i.i.i.i171 = sub i32 32, %714
  %715 = tail call i32 @llvm.umin.i32(i32 %conv15.i.i.i.i166, i32 %sub.i.i.i.i171) #9
  %sub34.i.i.i.i172 = sub nsw i32 %conv15.i.i.i.i166, %715
  %716 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load i32, ptr %seqState.i.i.i85, align 4, !noalias !44
  %and.i.i.i.i.i.i173 = and i32 %714, 31
  %shl.i.i.i.i.i.i174 = shl i32 %717, %and.i.i.i.i.i.i173
  %sub.i.i.i.i.i.i175 = sub nsw i32 0, %715
  %and1.i.i.i.i.i.i176 = and i32 %sub.i.i.i.i.i.i175, 31
  %shr.i.i.i.i.i.i177 = lshr i32 %shl.i.i.i.i.i.i174, %and1.i.i.i.i.i.i176
  %add.i.i.i.i.i.i178 = add i32 %715, %714
  %718 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %718)
  store i32 %add.i.i.i.i.i.i178, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  %shl.i.i.i.i179 = shl i32 %shr.i.i.i.i.i.i177, %sub34.i.i.i.i172
  %add39.i.i.i.i180 = add i32 %shl.i.i.i.i179, %ofDInfo.sroa.8.0.copyload.i.i.i.i162
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i.i.i.i.i.i178)
  %cmp.i.i.i.i.i181 = icmp ugt i32 %add.i.i.i.i.i.i178, 32
  br i1 %cmp.i.i.i.i.i181, label %if.then25.i.i.i.i182.BIT_reloadDStream.exit.i.i.i.i209_crit_edge, label %if.end.i.i.i.i.i184

if.then25.i.i.i.i182.BIT_reloadDStream.exit.i.i.i.i209_crit_edge: ; preds = %if.then25.i.i.i.i182
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit.i.i.i.i209

if.end.i.i.i.i.i184:                              ; preds = %if.then25.i.i.i.i182
  %719 = ptrtoint ptr %ptr.i327.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load ptr, ptr %ptr.i327.i.i.i.i, align 4, !noalias !44
  %721 = ptrtoint ptr %limitPtr.i.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %limitPtr.i.i.i.i98, align 4, !noalias !44
  %cmp1.not.i.i.i.i.i183 = icmp ult ptr %720, %722
  br i1 %cmp1.not.i.i.i.i.i183, label %if.end3.i.i.i.i.i191, label %BIT_reloadDStreamFast.exit.i.i.i.i.i189

BIT_reloadDStreamFast.exit.i.i.i.i.i189:          ; preds = %if.end.i.i.i.i.i184
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i309.i.i.i.i185 = lshr i32 %add.i.i.i.i.i.i178, 3
  %idx.neg.i.i.i.i.i.i186 = sub nsw i32 0, %shr.i.i309.i.i.i.i185
  %add.ptr.i.i.i.i.i.i187 = getelementptr i8, ptr %720, i32 %idx.neg.i.i.i.i.i.i186
  %723 = ptrtoint ptr %ptr.i327.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %723)
  store ptr %add.ptr.i.i.i.i.i.i187, ptr %ptr.i327.i.i.i.i, align 4, !noalias !44
  %and.i.i310.i.i.i.i188 = and i32 %add.i.i.i.i.i.i178, 7
  br label %BIT_reloadDStream.exit.sink.split.i.i.i.i207

if.end3.i.i.i.i.i191:                             ; preds = %if.end.i.i.i.i.i184
  %724 = ptrtoint ptr %start.i.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %start.i.i.i.i97, align 4, !noalias !44
  %cmp5.i.i.i.i.i190 = icmp eq ptr %720, %725
  br i1 %cmp5.i.i.i.i.i190, label %if.end3.i.i.i.i.i191.BIT_reloadDStream.exit.i.i.i.i209_crit_edge, label %if.end11.i.i.i.i.i204

if.end3.i.i.i.i.i191.BIT_reloadDStream.exit.i.i.i.i209_crit_edge: ; preds = %if.end3.i.i.i.i.i191
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit.i.i.i.i209

if.end11.i.i.i.i.i204:                            ; preds = %if.end3.i.i.i.i.i191
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i.i.i192 = lshr i32 %add.i.i.i.i.i.i178, 3
  %idx.neg.i.i.i.i.i193 = sub nsw i32 0, %shr.i.i.i.i.i192
  %add.ptr.i.i.i.i.i194 = getelementptr i8, ptr %720, i32 %idx.neg.i.i.i.i.i193
  %cmp15.i.i.i.i.i195 = icmp ult ptr %add.ptr.i.i.i.i.i194, %725
  %sub.ptr.lhs.cast.i.i.i.i.i196 = ptrtoint ptr %720 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i197 = ptrtoint ptr %725 to i32
  %sub.ptr.sub.i.i.i.i.i198 = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i196, %sub.ptr.rhs.cast.i.i.i.i.i197
  %nbBytes.0.i.i.i.i.i199 = select i1 %cmp15.i.i.i.i.i195, i32 %sub.ptr.sub.i.i.i.i.i198, i32 %shr.i.i.i.i.i192
  %idx.neg21.i.i.i.i.i200 = sub i32 0, %nbBytes.0.i.i.i.i.i199
  %add.ptr22.i.i.i.i.i201 = getelementptr i8, ptr %720, i32 %idx.neg21.i.i.i.i.i200
  %726 = ptrtoint ptr %ptr.i327.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %726)
  store ptr %add.ptr22.i.i.i.i.i201, ptr %ptr.i327.i.i.i.i, align 4, !noalias !44
  %mul.neg.i.i.i.i.i202 = mul i32 %nbBytes.0.i.i.i.i.i199, -8
  %sub.i.i.i.i.i203 = add i32 %mul.neg.i.i.i.i.i202, %add.i.i.i.i.i.i178
  br label %BIT_reloadDStream.exit.sink.split.i.i.i.i207

BIT_reloadDStream.exit.sink.split.i.i.i.i207:     ; preds = %if.end11.i.i.i.i.i204, %BIT_reloadDStreamFast.exit.i.i.i.i.i189
  %and.i.i310.sink.i.i.i.i205 = phi i32 [ %and.i.i310.i.i.i.i188, %BIT_reloadDStreamFast.exit.i.i.i.i.i189 ], [ %sub.i.i.i.i.i203, %if.end11.i.i.i.i.i204 ]
  %add.ptr.i.i.sink.i.i.i.i206 = phi ptr [ %add.ptr.i.i.i.i.i.i187, %BIT_reloadDStreamFast.exit.i.i.i.i.i189 ], [ %add.ptr22.i.i.i.i.i201, %if.end11.i.i.i.i.i204 ]
  %727 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %727)
  store i32 %and.i.i310.sink.i.i.i.i205, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  %728 = ptrtoint ptr %add.ptr.i.i.sink.i.i.i.i206 to i32
  call void @__asan_loadN_noabort(i32 %728, i32 4)
  %729 = load i32, ptr %add.ptr.i.i.sink.i.i.i.i206, align 1, !noalias !44
  %730 = tail call i32 @llvm.bswap.i32(i32 %729) #9
  %731 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %731)
  store i32 %730, ptr %seqState.i.i.i85, align 4, !noalias !44
  br label %BIT_reloadDStream.exit.i.i.i.i209

BIT_reloadDStream.exit.i.i.i.i209:                ; preds = %BIT_reloadDStream.exit.sink.split.i.i.i.i207, %if.end3.i.i.i.i.i191.BIT_reloadDStream.exit.i.i.i.i209_crit_edge, %if.then25.i.i.i.i182.BIT_reloadDStream.exit.i.i.i.i209_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15.i.i.i.i166, i32 %sub.i.i.i.i171)
  %tobool42.not.not.i.i.i.i208 = icmp ugt i32 %conv15.i.i.i.i166, %sub.i.i.i.i171
  br i1 %tobool42.not.not.i.i.i.i208, label %if.then43.i.i.i.i217, label %BIT_reloadDStream.exit.i.i.i.i209.if.end57.i.i.i.i250_crit_edge

BIT_reloadDStream.exit.i.i.i.i209.if.end57.i.i.i.i250_crit_edge: ; preds = %BIT_reloadDStream.exit.i.i.i.i209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i.i.i.i250

if.then43.i.i.i.i217:                             ; preds = %BIT_reloadDStream.exit.i.i.i.i209
  call void @__sanitizer_cov_trace_pc() #11
  %732 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load i32, ptr %seqState.i.i.i85, align 4, !noalias !44
  %734 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load i32, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  %and.i.i312.i.i.i.i210 = and i32 %735, 31
  %shl.i.i313.i.i.i.i211 = shl i32 %733, %and.i.i312.i.i.i.i210
  %sub.i.i314.i.i.i.i212 = sub nsw i32 0, %sub34.i.i.i.i172
  %and1.i.i315.i.i.i.i213 = and i32 %sub.i.i314.i.i.i.i212, 31
  %shr.i.i316.i.i.i.i214 = lshr i32 %shl.i.i313.i.i.i.i211, %and1.i.i315.i.i.i.i213
  %add.i.i317.i.i.i.i215 = add i32 %735, %sub34.i.i.i.i172
  store i32 %add.i.i317.i.i.i.i215, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  %add46.i.i.i.i216 = add i32 %shr.i.i316.i.i.i.i214, %add39.i.i.i.i180
  br label %if.end57.i.i.i.i250

if.else.i.i.i.i226:                               ; preds = %if.then.i.i.i.i170
  %736 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load i32, ptr %seqState.i.i.i85, align 4, !noalias !44
  %738 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load i32, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  %and.i.i319.i.i.i.i218 = and i32 %739, 31
  %shl.i.i320.i.i.i.i219 = shl i32 %737, %and.i.i319.i.i.i.i218
  %sub.i.i321.i.i.i.i220 = sub nsw i32 0, %ofDInfo.sroa.0.sroa.5.0.extract.shift.i.i.i.i160
  %and1.i.i322.i.i.i.i221 = and i32 %sub.i.i321.i.i.i.i220, 31
  %shr.i.i323.i.i.i.i222 = lshr i32 %shl.i.i320.i.i.i.i219, %and1.i.i322.i.i.i.i221
  %add.i.i324.i.i.i.i223 = add i32 %739, %conv15.i.i.i.i166
  store i32 %add.i.i324.i.i.i.i223, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  %add50.i.i.i.i224 = add i32 %shr.i.i323.i.i.i.i222, %ofDInfo.sroa.8.0.copyload.i.i.i.i162
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i.i324.i.i.i.i223)
  %cmp.i326.i.i.i.i225 = icmp ugt i32 %add.i.i324.i.i.i.i223, 32
  br i1 %cmp.i326.i.i.i.i225, label %if.else.i.i.i.i226.if.end57.i.i.i.i250_crit_edge, label %if.end.i330.i.i.i.i228

if.else.i.i.i.i226.if.end57.i.i.i.i250_crit_edge: ; preds = %if.else.i.i.i.i226
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i.i.i.i250

if.end.i330.i.i.i.i228:                           ; preds = %if.else.i.i.i.i226
  %740 = ptrtoint ptr %ptr.i327.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %ptr.i327.i.i.i.i, align 4, !noalias !44
  %742 = ptrtoint ptr %limitPtr.i.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %limitPtr.i.i.i.i98, align 4, !noalias !44
  %cmp1.not.i329.i.i.i.i227 = icmp ult ptr %741, %743
  br i1 %cmp1.not.i329.i.i.i.i227, label %if.end3.i338.i.i.i.i235, label %BIT_reloadDStreamFast.exit.i335.i.i.i.i233

BIT_reloadDStreamFast.exit.i335.i.i.i.i233:       ; preds = %if.end.i330.i.i.i.i228
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i331.i.i.i.i229 = lshr i32 %add.i.i324.i.i.i.i223, 3
  %idx.neg.i.i332.i.i.i.i230 = sub nsw i32 0, %shr.i.i331.i.i.i.i229
  %add.ptr.i.i333.i.i.i.i231 = getelementptr i8, ptr %741, i32 %idx.neg.i.i332.i.i.i.i230
  %744 = ptrtoint ptr %ptr.i327.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %744)
  store ptr %add.ptr.i.i333.i.i.i.i231, ptr %ptr.i327.i.i.i.i, align 4, !noalias !44
  %and.i.i334.i.i.i.i232 = and i32 %add.i.i324.i.i.i.i223, 7
  %745 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %745)
  store i32 %and.i.i334.i.i.i.i232, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  %746 = ptrtoint ptr %add.ptr.i.i333.i.i.i.i231 to i32
  call void @__asan_loadN_noabort(i32 %746, i32 4)
  %747 = load i32, ptr %add.ptr.i.i333.i.i.i.i231, align 1, !noalias !44
  %748 = tail call i32 @llvm.bswap.i32(i32 %747) #9
  %749 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %749)
  store i32 %748, ptr %seqState.i.i.i85, align 4, !noalias !44
  br label %if.end57.i.i.i.i250

if.end3.i338.i.i.i.i235:                          ; preds = %if.end.i330.i.i.i.i228
  %750 = ptrtoint ptr %start.i.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %start.i.i.i.i97, align 4, !noalias !44
  %cmp5.i337.i.i.i.i234 = icmp eq ptr %741, %751
  br i1 %cmp5.i337.i.i.i.i234, label %if.end3.i338.i.i.i.i235.if.end57.i.i.i.i250_crit_edge, label %if.end11.i355.i.i.i.i248

if.end3.i338.i.i.i.i235.if.end57.i.i.i.i250_crit_edge: ; preds = %if.end3.i338.i.i.i.i235
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i.i.i.i250

if.end11.i355.i.i.i.i248:                         ; preds = %if.end3.i338.i.i.i.i235
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i342.i.i.i.i236 = lshr i32 %add.i.i324.i.i.i.i223, 3
  %idx.neg.i343.i.i.i.i237 = sub nsw i32 0, %shr.i342.i.i.i.i236
  %add.ptr.i344.i.i.i.i238 = getelementptr i8, ptr %741, i32 %idx.neg.i343.i.i.i.i237
  %cmp15.i345.i.i.i.i239 = icmp ult ptr %add.ptr.i344.i.i.i.i238, %751
  %sub.ptr.lhs.cast.i346.i.i.i.i240 = ptrtoint ptr %741 to i32
  %sub.ptr.rhs.cast.i347.i.i.i.i241 = ptrtoint ptr %751 to i32
  %sub.ptr.sub.i348.i.i.i.i242 = sub i32 %sub.ptr.lhs.cast.i346.i.i.i.i240, %sub.ptr.rhs.cast.i347.i.i.i.i241
  %nbBytes.0.i349.i.i.i.i243 = select i1 %cmp15.i345.i.i.i.i239, i32 %sub.ptr.sub.i348.i.i.i.i242, i32 %shr.i342.i.i.i.i236
  %idx.neg21.i351.i.i.i.i244 = sub i32 0, %nbBytes.0.i349.i.i.i.i243
  %add.ptr22.i352.i.i.i.i245 = getelementptr i8, ptr %741, i32 %idx.neg21.i351.i.i.i.i244
  %752 = ptrtoint ptr %ptr.i327.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %752)
  store ptr %add.ptr22.i352.i.i.i.i245, ptr %ptr.i327.i.i.i.i, align 4, !noalias !44
  %mul.neg.i353.i.i.i.i246 = mul i32 %nbBytes.0.i349.i.i.i.i243, -8
  %sub.i354.i.i.i.i247 = add i32 %mul.neg.i353.i.i.i.i246, %add.i.i324.i.i.i.i223
  %753 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %753)
  store i32 %sub.i354.i.i.i.i247, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  %754 = ptrtoint ptr %add.ptr22.i352.i.i.i.i245 to i32
  call void @__asan_loadN_noabort(i32 %754, i32 4)
  %755 = load i32, ptr %add.ptr22.i352.i.i.i.i245, align 1, !noalias !44
  %756 = tail call i32 @llvm.bswap.i32(i32 %755) #9
  %757 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %757)
  store i32 %756, ptr %seqState.i.i.i85, align 4, !noalias !44
  br label %if.end57.i.i.i.i250

if.end57.i.i.i.i250:                              ; preds = %if.end11.i355.i.i.i.i248, %if.end3.i338.i.i.i.i235.if.end57.i.i.i.i250_crit_edge, %BIT_reloadDStreamFast.exit.i335.i.i.i.i233, %if.else.i.i.i.i226.if.end57.i.i.i.i250_crit_edge, %if.then43.i.i.i.i217, %BIT_reloadDStream.exit.i.i.i.i209.if.end57.i.i.i.i250_crit_edge
  %offset.1.i.i.i.i249 = phi i32 [ %add46.i.i.i.i216, %if.then43.i.i.i.i217 ], [ %add39.i.i.i.i180, %BIT_reloadDStream.exit.i.i.i.i209.if.end57.i.i.i.i250_crit_edge ], [ %add50.i.i.i.i224, %if.else.i.i.i.i226.if.end57.i.i.i.i250_crit_edge ], [ %add50.i.i.i.i224, %BIT_reloadDStreamFast.exit.i335.i.i.i.i233 ], [ %add50.i.i.i.i224, %if.end11.i355.i.i.i.i248 ], [ %add50.i.i.i.i224, %if.end3.i338.i.i.i.i235.if.end57.i.i.i.i250_crit_edge ]
  %758 = ptrtoint ptr %arrayidx115.i.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load i32, ptr %arrayidx115.i.i.i.i142, align 4, !noalias !44
  %760 = ptrtoint ptr %arrayidx117.i.i.i.i143 to i32
  call void @__asan_store4_noabort(i32 %760)
  store i32 %759, ptr %arrayidx117.i.i.i.i143, align 4, !noalias !44
  %761 = ptrtoint ptr %uglygep.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load i32, ptr %uglygep.i.i.i95, align 4, !noalias !44
  store i32 %762, ptr %arrayidx115.i.i.i.i142, align 4, !noalias !44
  store i32 %offset.1.i.i.i.i249, ptr %uglygep.i.i.i95, align 4, !noalias !44
  br label %if.end126.i.i.i.i283

if.else67.i.i.i.i253:                             ; preds = %for.cond13.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %llDInfo.sroa.8.0.copyload.i.i.i.i152)
  %cmp68.i.i.i.i251 = icmp eq i32 %llDInfo.sroa.8.0.copyload.i.i.i.i152, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15.i.i.i.i166)
  %cmp71.i.i.i.i252 = icmp eq i32 %conv15.i.i.i.i166, 0
  br i1 %cmp71.i.i.i.i252, label %if.then74.i.i.i.i254, label %if.else91.i.i.i.i265, !prof !38

if.then74.i.i.i.i254:                             ; preds = %if.else67.i.i.i.i253
  br i1 %cmp68.i.i.i.i251, label %if.else81.i.i.i.i256, label %if.then78.i.i.i.i255, !prof !39

if.then78.i.i.i.i255:                             ; preds = %if.then74.i.i.i.i254
  call void @__sanitizer_cov_trace_pc() #11
  %763 = ptrtoint ptr %uglygep.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load i32, ptr %uglygep.i.i.i95, align 4, !noalias !44
  br label %if.end126.i.i.i.i283

if.else81.i.i.i.i256:                             ; preds = %if.then74.i.i.i.i254
  call void @__sanitizer_cov_trace_pc() #11
  %765 = ptrtoint ptr %arrayidx115.i.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load i32, ptr %arrayidx115.i.i.i.i142, align 4, !noalias !44
  %767 = ptrtoint ptr %uglygep.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load i32, ptr %uglygep.i.i.i95, align 4, !noalias !44
  store i32 %768, ptr %arrayidx115.i.i.i.i142, align 4, !noalias !44
  store i32 %766, ptr %uglygep.i.i.i95, align 4, !noalias !44
  br label %if.end126.i.i.i.i283

if.else91.i.i.i.i265:                             ; preds = %if.else67.i.i.i.i253
  %conv69.i.i.i.i257 = zext i1 %cmp68.i.i.i.i251 to i32
  %add92.i.i.i.i258 = add i32 %ofDInfo.sroa.8.0.copyload.i.i.i.i162, %conv69.i.i.i.i257
  %769 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load i32, ptr %seqState.i.i.i85, align 4, !noalias !44
  %771 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load i32, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  %and.i.i359.i.i.i.i259 = and i32 %772, 31
  %shl.i.i360.i.i.i.i260 = shl i32 %770, %and.i.i359.i.i.i.i259
  %shr.i.i361.i.i.i.i261 = lshr i32 %shl.i.i360.i.i.i.i260, 31
  %add.i.i362.i.i.i.i262 = add i32 %772, 1
  store i32 %add.i.i362.i.i.i.i262, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  %add95.i.i.i.i263 = add i32 %add92.i.i.i.i258, %shr.i.i361.i.i.i.i261
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add95.i.i.i.i263)
  %cmp96.i.i.i.i264 = icmp eq i32 %add95.i.i.i.i263, 3
  br i1 %cmp96.i.i.i.i264, label %cond.end105.thread.i.i.i.i270, label %cond.end105.i.i.i.i276

cond.end105.thread.i.i.i.i270:                    ; preds = %if.else91.i.i.i.i265
  call void @__sanitizer_cov_trace_pc() #11
  %773 = ptrtoint ptr %uglygep.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load i32, ptr %uglygep.i.i.i95, align 4, !noalias !44
  %sub101.i.i.i.i266 = add i32 %774, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub101.i.i.i.i266)
  %tobool107.not477.i.i.i.i267 = icmp eq i32 %sub101.i.i.i.i266, 0
  %lnot.ext109478.i.i.i.i268 = zext i1 %tobool107.not477.i.i.i.i267 to i32
  %add110479.i.i.i.i269 = add i32 %sub101.i.i.i.i266, %lnot.ext109478.i.i.i.i268
  br label %if.then113.i.i.i.i278

cond.end105.i.i.i.i276:                           ; preds = %if.else91.i.i.i.i265
  %arrayidx104.i.i.i.i271 = getelementptr %struct.seqState_t, ptr %seqState.i.i.i85, i32 0, i32 4, i32 %add95.i.i.i.i263
  %775 = ptrtoint ptr %arrayidx104.i.i.i.i271 to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load i32, ptr %arrayidx104.i.i.i.i271, align 4, !noalias !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %776)
  %tobool107.not.i.i.i.i272 = icmp eq i32 %776, 0
  %lnot.ext109.i.i.i.i273 = zext i1 %tobool107.not.i.i.i.i272 to i32
  %add110.i.i.i.i274 = add i32 %776, %lnot.ext109.i.i.i.i273
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add95.i.i.i.i263)
  %cmp111.not.i.i.i.i275 = icmp eq i32 %add95.i.i.i.i263, 1
  br i1 %cmp111.not.i.i.i.i275, label %cond.end105.i.i.i.i276.if.end118.i.i.i.i280_crit_edge, label %cond.end105.i.i.i.i276.if.then113.i.i.i.i278_crit_edge

cond.end105.i.i.i.i276.if.then113.i.i.i.i278_crit_edge: ; preds = %cond.end105.i.i.i.i276
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then113.i.i.i.i278

cond.end105.i.i.i.i276.if.end118.i.i.i.i280_crit_edge: ; preds = %cond.end105.i.i.i.i276
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118.i.i.i.i280

if.then113.i.i.i.i278:                            ; preds = %cond.end105.i.i.i.i276.if.then113.i.i.i.i278_crit_edge, %cond.end105.thread.i.i.i.i270
  %add110481.i.i.i.i277 = phi i32 [ %add110479.i.i.i.i269, %cond.end105.thread.i.i.i.i270 ], [ %add110.i.i.i.i274, %cond.end105.i.i.i.i276.if.then113.i.i.i.i278_crit_edge ]
  %777 = ptrtoint ptr %arrayidx115.i.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load i32, ptr %arrayidx115.i.i.i.i142, align 4, !noalias !44
  %779 = ptrtoint ptr %arrayidx117.i.i.i.i143 to i32
  call void @__asan_store4_noabort(i32 %779)
  store i32 %778, ptr %arrayidx117.i.i.i.i143, align 4, !noalias !44
  br label %if.end118.i.i.i.i280

if.end118.i.i.i.i280:                             ; preds = %if.then113.i.i.i.i278, %cond.end105.i.i.i.i276.if.end118.i.i.i.i280_crit_edge
  %add110482.i.i.i.i279 = phi i32 [ %add110481.i.i.i.i277, %if.then113.i.i.i.i278 ], [ %add110.i.i.i.i274, %cond.end105.i.i.i.i276.if.end118.i.i.i.i280_crit_edge ]
  %780 = ptrtoint ptr %uglygep.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load i32, ptr %uglygep.i.i.i95, align 4, !noalias !44
  %782 = ptrtoint ptr %arrayidx115.i.i.i.i142 to i32
  call void @__asan_store4_noabort(i32 %782)
  store i32 %781, ptr %arrayidx115.i.i.i.i142, align 4, !noalias !44
  store i32 %add110482.i.i.i.i279, ptr %uglygep.i.i.i95, align 4, !noalias !44
  br label %if.end126.i.i.i.i283

if.end126.i.i.i.i283:                             ; preds = %if.end118.i.i.i.i280, %if.else81.i.i.i.i256, %if.then78.i.i.i.i255, %if.end57.i.i.i.i250
  %offset.3.i.i.i.i281 = phi i32 [ %offset.1.i.i.i.i249, %if.end57.i.i.i.i250 ], [ %764, %if.then78.i.i.i.i255 ], [ %766, %if.else81.i.i.i.i256 ], [ %add110482.i.i.i.i279, %if.end118.i.i.i.i280 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv14.i.i.i.i164)
  %cmp129.not.i.i.i.i282 = icmp eq i32 %conv14.i.i.i.i164, 0
  br i1 %cmp129.not.i.i.i.i282, label %if.end126.i.i.i.i283.if.end137.i.i.i.i293_crit_edge, label %if.then131.i.i.i.i291

if.end126.i.i.i.i283.if.end137.i.i.i.i293_crit_edge: ; preds = %if.end126.i.i.i.i283
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137.i.i.i.i293

if.then131.i.i.i.i291:                            ; preds = %if.end126.i.i.i.i283
  call void @__sanitizer_cov_trace_pc() #11
  %783 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load i32, ptr %seqState.i.i.i85, align 4, !noalias !44
  %785 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load i32, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  %and.i.i364.i.i.i.i284 = and i32 %786, 31
  %shl.i.i365.i.i.i.i285 = shl i32 %784, %and.i.i364.i.i.i.i284
  %sub.i.i366.i.i.i.i286 = sub nsw i32 0, %mlDInfo.sroa.0.sroa.5.0.extract.shift.i.i.i.i155
  %and1.i.i367.i.i.i.i287 = and i32 %sub.i.i366.i.i.i.i286, 31
  %shr.i.i368.i.i.i.i288 = lshr i32 %shl.i.i365.i.i.i.i285, %and1.i.i367.i.i.i.i287
  %add.i.i369.i.i.i.i289 = add i32 %786, %conv14.i.i.i.i164
  store i32 %add.i.i369.i.i.i.i289, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  %add136.i.i.i.i290 = add i32 %shr.i.i368.i.i.i.i288, %mlDInfo.sroa.8.0.copyload.i.i.i.i157
  br label %if.end137.i.i.i.i293

if.end137.i.i.i.i293:                             ; preds = %if.then131.i.i.i.i291, %if.end126.i.i.i.i283.if.end137.i.i.i.i293_crit_edge
  %sequence.sroa.7.0.i.i.i = phi i32 [ %mlDInfo.sroa.8.0.copyload.i.i.i.i157, %if.end126.i.i.i.i283.if.end137.i.i.i.i293_crit_edge ], [ %add136.i.i.i.i290, %if.then131.i.i.i.i291 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %add.i.i.i.i165)
  %cmp144.i.i.i.i292 = icmp ugt i32 %add.i.i.i.i165, 19
  br i1 %cmp144.i.i.i.i292, label %if.then146.i.i.i.i295, label %if.end137.i.i.i.i293.if.end149.i.i.i.i322_crit_edge

if.end137.i.i.i.i293.if.end149.i.i.i.i322_crit_edge: ; preds = %if.end137.i.i.i.i293
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149.i.i.i.i322

if.then146.i.i.i.i295:                            ; preds = %if.end137.i.i.i.i293
  %787 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load i32, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %788)
  %cmp.i371.i.i.i.i294 = icmp ugt i32 %788, 32
  br i1 %cmp.i371.i.i.i.i294, label %if.then146.i.i.i.i295.if.end149.i.i.i.i322_crit_edge, label %if.end.i375.i.i.i.i297

if.then146.i.i.i.i295.if.end149.i.i.i.i322_crit_edge: ; preds = %if.then146.i.i.i.i295
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149.i.i.i.i322

if.end.i375.i.i.i.i297:                           ; preds = %if.then146.i.i.i.i295
  %789 = ptrtoint ptr %ptr.i327.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load ptr, ptr %ptr.i327.i.i.i.i, align 4, !noalias !44
  %791 = ptrtoint ptr %limitPtr.i.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load ptr, ptr %limitPtr.i.i.i.i98, align 4, !noalias !44
  %cmp1.not.i374.i.i.i.i296 = icmp ult ptr %790, %792
  br i1 %cmp1.not.i374.i.i.i.i296, label %if.end3.i383.i.i.i.i304, label %BIT_reloadDStreamFast.exit.i380.i.i.i.i302

BIT_reloadDStreamFast.exit.i380.i.i.i.i302:       ; preds = %if.end.i375.i.i.i.i297
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i376.i.i.i.i298 = lshr i32 %788, 3
  %idx.neg.i.i377.i.i.i.i299 = sub nsw i32 0, %shr.i.i376.i.i.i.i298
  %add.ptr.i.i378.i.i.i.i300 = getelementptr i8, ptr %790, i32 %idx.neg.i.i377.i.i.i.i299
  %793 = ptrtoint ptr %ptr.i327.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %793)
  store ptr %add.ptr.i.i378.i.i.i.i300, ptr %ptr.i327.i.i.i.i, align 4, !noalias !44
  %and.i.i379.i.i.i.i301 = and i32 %788, 7
  br label %if.end149.sink.split.i.i.i.i320

if.end3.i383.i.i.i.i304:                          ; preds = %if.end.i375.i.i.i.i297
  %794 = ptrtoint ptr %start.i.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %start.i.i.i.i97, align 4, !noalias !44
  %cmp5.i382.i.i.i.i303 = icmp eq ptr %790, %795
  br i1 %cmp5.i382.i.i.i.i303, label %if.end3.i383.i.i.i.i304.if.end149.i.i.i.i322_crit_edge, label %if.end11.i400.i.i.i.i317

if.end3.i383.i.i.i.i304.if.end149.i.i.i.i322_crit_edge: ; preds = %if.end3.i383.i.i.i.i304
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149.i.i.i.i322

if.end11.i400.i.i.i.i317:                         ; preds = %if.end3.i383.i.i.i.i304
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i387.i.i.i.i305 = lshr i32 %788, 3
  %idx.neg.i388.i.i.i.i306 = sub nsw i32 0, %shr.i387.i.i.i.i305
  %add.ptr.i389.i.i.i.i307 = getelementptr i8, ptr %790, i32 %idx.neg.i388.i.i.i.i306
  %cmp15.i390.i.i.i.i308 = icmp ult ptr %add.ptr.i389.i.i.i.i307, %795
  %sub.ptr.lhs.cast.i391.i.i.i.i309 = ptrtoint ptr %790 to i32
  %sub.ptr.rhs.cast.i392.i.i.i.i310 = ptrtoint ptr %795 to i32
  %sub.ptr.sub.i393.i.i.i.i311 = sub i32 %sub.ptr.lhs.cast.i391.i.i.i.i309, %sub.ptr.rhs.cast.i392.i.i.i.i310
  %nbBytes.0.i394.i.i.i.i312 = select i1 %cmp15.i390.i.i.i.i308, i32 %sub.ptr.sub.i393.i.i.i.i311, i32 %shr.i387.i.i.i.i305
  %idx.neg21.i396.i.i.i.i313 = sub i32 0, %nbBytes.0.i394.i.i.i.i312
  %add.ptr22.i397.i.i.i.i314 = getelementptr i8, ptr %790, i32 %idx.neg21.i396.i.i.i.i313
  %796 = ptrtoint ptr %ptr.i327.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %796)
  store ptr %add.ptr22.i397.i.i.i.i314, ptr %ptr.i327.i.i.i.i, align 4, !noalias !44
  %mul.neg.i398.i.i.i.i315 = mul i32 %nbBytes.0.i394.i.i.i.i312, -8
  %sub.i399.i.i.i.i316 = add i32 %mul.neg.i398.i.i.i.i315, %788
  br label %if.end149.sink.split.i.i.i.i320

if.end149.sink.split.i.i.i.i320:                  ; preds = %if.end11.i400.i.i.i.i317, %BIT_reloadDStreamFast.exit.i380.i.i.i.i302
  %sub.i399.sink.i.i.i.i318 = phi i32 [ %sub.i399.i.i.i.i316, %if.end11.i400.i.i.i.i317 ], [ %and.i.i379.i.i.i.i301, %BIT_reloadDStreamFast.exit.i380.i.i.i.i302 ]
  %add.ptr22.i397.sink.i.i.i.i319 = phi ptr [ %add.ptr22.i397.i.i.i.i314, %if.end11.i400.i.i.i.i317 ], [ %add.ptr.i.i378.i.i.i.i300, %BIT_reloadDStreamFast.exit.i380.i.i.i.i302 ]
  %797 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %797)
  store i32 %sub.i399.sink.i.i.i.i318, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  %798 = ptrtoint ptr %add.ptr22.i397.sink.i.i.i.i319 to i32
  call void @__asan_loadN_noabort(i32 %798, i32 4)
  %799 = load i32, ptr %add.ptr22.i397.sink.i.i.i.i319, align 1, !noalias !44
  %800 = tail call i32 @llvm.bswap.i32(i32 %799) #9
  %801 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %801)
  store i32 %800, ptr %seqState.i.i.i85, align 4, !noalias !44
  br label %if.end149.i.i.i.i322

if.end149.i.i.i.i322:                             ; preds = %if.end149.sink.split.i.i.i.i320, %if.end3.i383.i.i.i.i304.if.end149.i.i.i.i322_crit_edge, %if.then146.i.i.i.i295.if.end149.i.i.i.i322_crit_edge, %if.end137.i.i.i.i293.if.end149.i.i.i.i322_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i.i163)
  %cmp163.not.i.i.i.i321 = icmp eq i32 %conv.i.i.i.i163, 0
  br i1 %cmp163.not.i.i.i.i321, label %if.end171.ithread-pre-split.i.i.i332, label %if.then165.i.i.i.i330

if.then165.i.i.i.i330:                            ; preds = %if.end149.i.i.i.i322
  call void @__sanitizer_cov_trace_pc() #11
  %802 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load i32, ptr %seqState.i.i.i85, align 4, !noalias !44
  %804 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load i32, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  %and.i.i404.i.i.i.i323 = and i32 %805, 31
  %shl.i.i405.i.i.i.i324 = shl i32 %803, %and.i.i404.i.i.i.i323
  %sub.i.i406.i.i.i.i325 = sub nsw i32 0, %llDInfo.sroa.0.sroa.5.0.extract.shift.i.i.i.i150
  %and1.i.i407.i.i.i.i326 = and i32 %sub.i.i406.i.i.i.i325, 31
  %shr.i.i408.i.i.i.i327 = lshr i32 %shl.i.i405.i.i.i.i324, %and1.i.i407.i.i.i.i326
  %add.i.i409.i.i.i.i328 = add i32 %805, %conv.i.i.i.i163
  store i32 %add.i.i409.i.i.i.i328, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  %add170.i.i.i.i329 = add i32 %shr.i.i408.i.i.i.i327, %llDInfo.sroa.8.0.copyload.i.i.i.i152
  br label %if.end171.i.i.i.i335

if.end171.ithread-pre-split.i.i.i332:             ; preds = %if.end149.i.i.i.i322
  call void @__sanitizer_cov_trace_pc() #11
  %806 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %806)
  %.pr.i.i.i331 = load i32, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  br label %if.end171.i.i.i.i335

if.end171.i.i.i.i335:                             ; preds = %if.end171.ithread-pre-split.i.i.i332, %if.then165.i.i.i.i330
  %807 = phi i32 [ %.pr.i.i.i331, %if.end171.ithread-pre-split.i.i.i332 ], [ %add.i.i409.i.i.i.i328, %if.then165.i.i.i.i330 ]
  %sequence.sroa.0.0.i.i.i333 = phi i32 [ %llDInfo.sroa.8.0.copyload.i.i.i.i152, %if.end171.ithread-pre-split.i.i.i332 ], [ %add170.i.i.i.i329, %if.then165.i.i.i.i330 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %807)
  %cmp.i411.i.i.i.i334 = icmp ugt i32 %807, 32
  br i1 %cmp.i411.i.i.i.i334, label %if.end171.i.i.i.i335.BIT_reloadDStream.exit442.i.i.i.i378_crit_edge, label %if.end.i415.i.i.i.i337

if.end171.i.i.i.i335.BIT_reloadDStream.exit442.i.i.i.i378_crit_edge: ; preds = %if.end171.i.i.i.i335
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit442.i.i.i.i378

if.end.i415.i.i.i.i337:                           ; preds = %if.end171.i.i.i.i335
  %808 = ptrtoint ptr %ptr.i327.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %ptr.i327.i.i.i.i, align 4, !noalias !44
  %810 = ptrtoint ptr %limitPtr.i.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %limitPtr.i.i.i.i98, align 4, !noalias !44
  %cmp1.not.i414.i.i.i.i336 = icmp ult ptr %809, %811
  br i1 %cmp1.not.i414.i.i.i.i336, label %if.end3.i423.i.i.i.i344, label %BIT_reloadDStreamFast.exit.i420.i.i.i.i342

BIT_reloadDStreamFast.exit.i420.i.i.i.i342:       ; preds = %if.end.i415.i.i.i.i337
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i416.i.i.i.i338 = lshr i32 %807, 3
  %idx.neg.i.i417.i.i.i.i339 = sub nsw i32 0, %shr.i.i416.i.i.i.i338
  %add.ptr.i.i418.i.i.i.i340 = getelementptr i8, ptr %809, i32 %idx.neg.i.i417.i.i.i.i339
  %812 = ptrtoint ptr %ptr.i327.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %812)
  store ptr %add.ptr.i.i418.i.i.i.i340, ptr %ptr.i327.i.i.i.i, align 4, !noalias !44
  %and.i.i419.i.i.i.i341 = and i32 %807, 7
  br label %BIT_reloadDStream.exit442.sink.split.i.i.i.i360

if.end3.i423.i.i.i.i344:                          ; preds = %if.end.i415.i.i.i.i337
  %813 = ptrtoint ptr %start.i.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load ptr, ptr %start.i.i.i.i97, align 4, !noalias !44
  %cmp5.i422.i.i.i.i343 = icmp eq ptr %809, %814
  br i1 %cmp5.i422.i.i.i.i343, label %if.end3.i423.i.i.i.i344.BIT_reloadDStream.exit442.i.i.i.i378_crit_edge, label %if.end11.i440.i.i.i.i357

if.end3.i423.i.i.i.i344.BIT_reloadDStream.exit442.i.i.i.i378_crit_edge: ; preds = %if.end3.i423.i.i.i.i344
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit442.i.i.i.i378

if.end11.i440.i.i.i.i357:                         ; preds = %if.end3.i423.i.i.i.i344
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i427.i.i.i.i345 = lshr i32 %807, 3
  %idx.neg.i428.i.i.i.i346 = sub nsw i32 0, %shr.i427.i.i.i.i345
  %add.ptr.i429.i.i.i.i347 = getelementptr i8, ptr %809, i32 %idx.neg.i428.i.i.i.i346
  %cmp15.i430.i.i.i.i348 = icmp ult ptr %add.ptr.i429.i.i.i.i347, %814
  %sub.ptr.lhs.cast.i431.i.i.i.i349 = ptrtoint ptr %809 to i32
  %sub.ptr.rhs.cast.i432.i.i.i.i350 = ptrtoint ptr %814 to i32
  %sub.ptr.sub.i433.i.i.i.i351 = sub i32 %sub.ptr.lhs.cast.i431.i.i.i.i349, %sub.ptr.rhs.cast.i432.i.i.i.i350
  %nbBytes.0.i434.i.i.i.i352 = select i1 %cmp15.i430.i.i.i.i348, i32 %sub.ptr.sub.i433.i.i.i.i351, i32 %shr.i427.i.i.i.i345
  %idx.neg21.i436.i.i.i.i353 = sub i32 0, %nbBytes.0.i434.i.i.i.i352
  %add.ptr22.i437.i.i.i.i354 = getelementptr i8, ptr %809, i32 %idx.neg21.i436.i.i.i.i353
  %815 = ptrtoint ptr %ptr.i327.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %815)
  store ptr %add.ptr22.i437.i.i.i.i354, ptr %ptr.i327.i.i.i.i, align 4, !noalias !44
  %mul.neg.i438.i.i.i.i355 = mul i32 %nbBytes.0.i434.i.i.i.i352, -8
  %sub.i439.i.i.i.i356 = add i32 %mul.neg.i438.i.i.i.i355, %807
  br label %BIT_reloadDStream.exit442.sink.split.i.i.i.i360

BIT_reloadDStream.exit442.sink.split.i.i.i.i360:  ; preds = %if.end11.i440.i.i.i.i357, %BIT_reloadDStreamFast.exit.i420.i.i.i.i342
  %and.i.i419.sink.i.i.i.i358 = phi i32 [ %and.i.i419.i.i.i.i341, %BIT_reloadDStreamFast.exit.i420.i.i.i.i342 ], [ %sub.i439.i.i.i.i356, %if.end11.i440.i.i.i.i357 ]
  %add.ptr.i.i418.sink.i.i.i.i359 = phi ptr [ %add.ptr.i.i418.i.i.i.i340, %BIT_reloadDStreamFast.exit.i420.i.i.i.i342 ], [ %add.ptr22.i437.i.i.i.i354, %if.end11.i440.i.i.i.i357 ]
  %816 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %816)
  store i32 %and.i.i419.sink.i.i.i.i358, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  %817 = ptrtoint ptr %add.ptr.i.i418.sink.i.i.i.i359 to i32
  call void @__asan_loadN_noabort(i32 %817, i32 4)
  %818 = load i32, ptr %add.ptr.i.i418.sink.i.i.i.i359, align 1, !noalias !44
  %819 = tail call i32 @llvm.bswap.i32(i32 %818) #9
  %820 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %820)
  store i32 %819, ptr %seqState.i.i.i85, align 4, !noalias !44
  br label %BIT_reloadDStream.exit442.i.i.i.i378

BIT_reloadDStream.exit442.i.i.i.i378:             ; preds = %BIT_reloadDStream.exit442.sink.split.i.i.i.i360, %if.end3.i423.i.i.i.i344.BIT_reloadDStream.exit442.i.i.i.i378_crit_edge, %if.end171.i.i.i.i335.BIT_reloadDStream.exit442.i.i.i.i378_crit_edge
  %llDInfo.sroa.0.sroa.7.0.insert.ext.i.i.i.i361 = and i32 %llDInfo.sroa.0.0.copyload.i.i.i.i149, 255
  %DInfo.sroa.0.0.extract.shift.i.i.i.i.i362 = lshr i32 %llDInfo.sroa.0.0.copyload.i.i.i.i149, 16
  %821 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load i32, ptr %seqState.i.i.i85, align 4, !noalias !44
  %823 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load i32, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  %825 = add i32 %824, %llDInfo.sroa.0.sroa.7.0.insert.ext.i.i.i.i361
  %sub1.i.i.i.i.i.i.i363 = sub i32 0, %825
  %and.i.i.i.i.i.i.i.i364 = and i32 %sub1.i.i.i.i.i.i.i363, 31
  %shr.i.i.i.i.i.i.i.i365 = lshr i32 %822, %and.i.i.i.i.i.i.i.i364
  %arrayidx.i.i.i.i.i.i.i.i366 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %llDInfo.sroa.0.sroa.7.0.insert.ext.i.i.i.i361
  %826 = ptrtoint ptr %arrayidx.i.i.i.i.i.i.i.i366 to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load i32, ptr %arrayidx.i.i.i.i.i.i.i.i366, align 4, !noalias !44
  %and1.i.i.i.i.i.i.i.i367 = and i32 %shr.i.i.i.i.i.i.i.i365, %827
  %add.i.i.i.i.i368 = add i32 %and1.i.i.i.i.i.i.i.i367, %DInfo.sroa.0.0.extract.shift.i.i.i.i.i362
  %828 = ptrtoint ptr %stateLL.i.i.i126 to i32
  call void @__asan_store4_noabort(i32 %828)
  store i32 %add.i.i.i.i.i368, ptr %stateLL.i.i.i126, align 4, !noalias !44
  %mlDInfo.sroa.0.sroa.7.0.insert.ext.i.i.i.i369 = and i32 %mlDInfo.sroa.0.0.copyload.i.i.i.i154, 255
  %DInfo.sroa.0.0.extract.shift.i293.i.i.i.i370 = lshr i32 %mlDInfo.sroa.0.0.copyload.i.i.i.i154, 16
  %829 = add i32 %825, %mlDInfo.sroa.0.sroa.7.0.insert.ext.i.i.i.i369
  %sub1.i.i.i295.i.i.i.i371 = sub i32 0, %829
  %and.i.i.i.i296.i.i.i.i372 = and i32 %sub1.i.i.i295.i.i.i.i371, 31
  %shr.i.i.i.i297.i.i.i.i373 = lshr i32 %822, %and.i.i.i.i296.i.i.i.i372
  %arrayidx.i.i.i.i298.i.i.i.i374 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %mlDInfo.sroa.0.sroa.7.0.insert.ext.i.i.i.i369
  %830 = ptrtoint ptr %arrayidx.i.i.i.i298.i.i.i.i374 to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load i32, ptr %arrayidx.i.i.i.i298.i.i.i.i374, align 4, !noalias !44
  %and1.i.i.i.i299.i.i.i.i375 = and i32 %shr.i.i.i.i297.i.i.i.i373, %831
  store i32 %829, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  %add.i300.i.i.i.i376 = add i32 %and1.i.i.i.i299.i.i.i.i375, %DInfo.sroa.0.0.extract.shift.i293.i.i.i.i370
  %832 = ptrtoint ptr %stateML.i.i.i139 to i32
  call void @__asan_store4_noabort(i32 %832)
  store i32 %add.i300.i.i.i.i376, ptr %stateML.i.i.i139, align 4, !noalias !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %829)
  %cmp.i444.i.i.i.i377 = icmp ugt i32 %829, 32
  br i1 %cmp.i444.i.i.i.i377, label %BIT_reloadDStream.exit442.i.i.i.i378.ZSTD_decodeSequence.exit.i.i.i422_crit_edge, label %if.end.i448.i.i.i.i380

BIT_reloadDStream.exit442.i.i.i.i378.ZSTD_decodeSequence.exit.i.i.i422_crit_edge: ; preds = %BIT_reloadDStream.exit442.i.i.i.i378
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_decodeSequence.exit.i.i.i422

if.end.i448.i.i.i.i380:                           ; preds = %BIT_reloadDStream.exit442.i.i.i.i378
  %833 = ptrtoint ptr %ptr.i327.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load ptr, ptr %ptr.i327.i.i.i.i, align 4, !noalias !44
  %835 = ptrtoint ptr %limitPtr.i.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load ptr, ptr %limitPtr.i.i.i.i98, align 4, !noalias !44
  %cmp1.not.i447.i.i.i.i379 = icmp ult ptr %834, %836
  br i1 %cmp1.not.i447.i.i.i.i379, label %if.end3.i456.i.i.i.i387, label %BIT_reloadDStreamFast.exit.i453.i.i.i.i385

BIT_reloadDStreamFast.exit.i453.i.i.i.i385:       ; preds = %if.end.i448.i.i.i.i380
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i449.i.i.i.i381 = lshr i32 %829, 3
  %idx.neg.i.i450.i.i.i.i382 = sub nsw i32 0, %shr.i.i449.i.i.i.i381
  %add.ptr.i.i451.i.i.i.i383 = getelementptr i8, ptr %834, i32 %idx.neg.i.i450.i.i.i.i382
  %837 = ptrtoint ptr %ptr.i327.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %837)
  store ptr %add.ptr.i.i451.i.i.i.i383, ptr %ptr.i327.i.i.i.i, align 4, !noalias !44
  %and.i.i452.i.i.i.i384 = and i32 %829, 7
  br label %BIT_reloadDStream.exit475.sink.split.i.i.i.i403

if.end3.i456.i.i.i.i387:                          ; preds = %if.end.i448.i.i.i.i380
  %838 = ptrtoint ptr %start.i.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %start.i.i.i.i97, align 4, !noalias !44
  %cmp5.i455.i.i.i.i386 = icmp eq ptr %834, %839
  br i1 %cmp5.i455.i.i.i.i386, label %if.end3.i456.i.i.i.i387.ZSTD_decodeSequence.exit.i.i.i422_crit_edge, label %if.end11.i473.i.i.i.i400

if.end3.i456.i.i.i.i387.ZSTD_decodeSequence.exit.i.i.i422_crit_edge: ; preds = %if.end3.i456.i.i.i.i387
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_decodeSequence.exit.i.i.i422

if.end11.i473.i.i.i.i400:                         ; preds = %if.end3.i456.i.i.i.i387
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i460.i.i.i.i388 = lshr i32 %829, 3
  %idx.neg.i461.i.i.i.i389 = sub nsw i32 0, %shr.i460.i.i.i.i388
  %add.ptr.i462.i.i.i.i390 = getelementptr i8, ptr %834, i32 %idx.neg.i461.i.i.i.i389
  %cmp15.i463.i.i.i.i391 = icmp ult ptr %add.ptr.i462.i.i.i.i390, %839
  %sub.ptr.lhs.cast.i464.i.i.i.i392 = ptrtoint ptr %834 to i32
  %sub.ptr.rhs.cast.i465.i.i.i.i393 = ptrtoint ptr %839 to i32
  %sub.ptr.sub.i466.i.i.i.i394 = sub i32 %sub.ptr.lhs.cast.i464.i.i.i.i392, %sub.ptr.rhs.cast.i465.i.i.i.i393
  %nbBytes.0.i467.i.i.i.i395 = select i1 %cmp15.i463.i.i.i.i391, i32 %sub.ptr.sub.i466.i.i.i.i394, i32 %shr.i460.i.i.i.i388
  %idx.neg21.i469.i.i.i.i396 = sub i32 0, %nbBytes.0.i467.i.i.i.i395
  %add.ptr22.i470.i.i.i.i397 = getelementptr i8, ptr %834, i32 %idx.neg21.i469.i.i.i.i396
  %840 = ptrtoint ptr %ptr.i327.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %840)
  store ptr %add.ptr22.i470.i.i.i.i397, ptr %ptr.i327.i.i.i.i, align 4, !noalias !44
  %mul.neg.i471.i.i.i.i398 = mul i32 %nbBytes.0.i467.i.i.i.i395, -8
  %sub.i472.i.i.i.i399 = add i32 %mul.neg.i471.i.i.i.i398, %829
  br label %BIT_reloadDStream.exit475.sink.split.i.i.i.i403

BIT_reloadDStream.exit475.sink.split.i.i.i.i403:  ; preds = %if.end11.i473.i.i.i.i400, %BIT_reloadDStreamFast.exit.i453.i.i.i.i385
  %and.i.i452.sink.i.i.i.i401 = phi i32 [ %and.i.i452.i.i.i.i384, %BIT_reloadDStreamFast.exit.i453.i.i.i.i385 ], [ %sub.i472.i.i.i.i399, %if.end11.i473.i.i.i.i400 ]
  %add.ptr.i.i451.sink.i.i.i.i402 = phi ptr [ %add.ptr.i.i451.i.i.i.i383, %BIT_reloadDStreamFast.exit.i453.i.i.i.i385 ], [ %add.ptr22.i470.i.i.i.i397, %if.end11.i473.i.i.i.i400 ]
  %841 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %841)
  store i32 %and.i.i452.sink.i.i.i.i401, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  %842 = ptrtoint ptr %add.ptr.i.i451.sink.i.i.i.i402 to i32
  call void @__asan_loadN_noabort(i32 %842, i32 4)
  %843 = load i32, ptr %add.ptr.i.i451.sink.i.i.i.i402, align 1, !noalias !44
  %844 = tail call i32 @llvm.bswap.i32(i32 %843) #9
  %845 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %845)
  store i32 %844, ptr %seqState.i.i.i85, align 4, !noalias !44
  br label %ZSTD_decodeSequence.exit.i.i.i422

ZSTD_decodeSequence.exit.i.i.i422:                ; preds = %BIT_reloadDStream.exit475.sink.split.i.i.i.i403, %if.end3.i456.i.i.i.i387.ZSTD_decodeSequence.exit.i.i.i422_crit_edge, %BIT_reloadDStream.exit442.i.i.i.i378.ZSTD_decodeSequence.exit.i.i.i422_crit_edge
  %ofDInfo.sroa.0.sroa.7.0.insert.ext.i.i.i.i404 = and i32 %ofDInfo.sroa.0.0.copyload.i.i.i.i159, 255
  %DInfo.sroa.0.0.extract.shift.i301.i.i.i.i405 = lshr i32 %ofDInfo.sroa.0.0.copyload.i.i.i.i159, 16
  %846 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load i32, ptr %seqState.i.i.i85, align 4, !noalias !44
  %848 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load i32, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  %850 = add i32 %849, %ofDInfo.sroa.0.sroa.7.0.insert.ext.i.i.i.i404
  %sub1.i.i.i303.i.i.i.i406 = sub i32 0, %850
  %and.i.i.i.i304.i.i.i.i407 = and i32 %sub1.i.i.i303.i.i.i.i406, 31
  %shr.i.i.i.i305.i.i.i.i408 = lshr i32 %847, %and.i.i.i.i304.i.i.i.i407
  %arrayidx.i.i.i.i306.i.i.i.i409 = getelementptr [32 x i32], ptr @BIT_mask, i32 0, i32 %ofDInfo.sroa.0.sroa.7.0.insert.ext.i.i.i.i404
  %851 = ptrtoint ptr %arrayidx.i.i.i.i306.i.i.i.i409 to i32
  call void @__asan_load4_noabort(i32 %851)
  %852 = load i32, ptr %arrayidx.i.i.i.i306.i.i.i.i409, align 4, !noalias !44
  %and1.i.i.i.i307.i.i.i.i410 = and i32 %shr.i.i.i.i305.i.i.i.i408, %852
  store i32 %850, ptr %bitsConsumed.i.i.i.i.i.i128, align 4, !noalias !44
  %add.i308.i.i.i.i411 = add i32 %and1.i.i.i.i307.i.i.i.i410, %DInfo.sroa.0.0.extract.shift.i301.i.i.i.i405
  %853 = ptrtoint ptr %stateOffb.i.i.i136 to i32
  call void @__asan_store4_noabort(i32 %853)
  store i32 %add.i308.i.i.i.i411, ptr %stateOffb.i.i.i136, align 4, !noalias !44
  %.fca.0.insert.i.i.i412 = insertvalue [4 x i32] poison, i32 %sequence.sroa.0.0.i.i.i333, 0
  %.fca.1.insert.i.i.i413 = insertvalue [4 x i32] %.fca.0.insert.i.i.i412, i32 %sequence.sroa.7.0.i.i.i, 1
  %.fca.2.insert.i.i.i414 = insertvalue [4 x i32] %.fca.1.insert.i.i.i413, i32 %offset.3.i.i.i.i281, 2
  %.fca.3.insert.i.i.i415 = insertvalue [4 x i32] %.fca.2.insert.i.i.i414, i32 -1, 3
  %add.ptr.i.i.i.i416 = getelementptr i8, ptr %op.0.i.i.i147, i32 %sequence.sroa.0.0.i.i.i333
  %add.i1.i.i.i = add i32 %sequence.sroa.0.0.i.i.i333, %sequence.sroa.7.0.i.i.i
  %854 = ptrtoint ptr %litPtr.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %litPtr.i.i.i84, align 4
  %add.ptr5.i.i.i.i417 = getelementptr i8, ptr %855, i32 %sequence.sroa.0.0.i.i.i333
  %idx.neg.i.i.i.i418 = sub i32 0, %offset.3.i.i.i.i281
  %add.ptr6.i.i.i.i419 = getelementptr i8, ptr %add.ptr.i.i.i.i416, i32 %idx.neg.i.i.i.i418
  %cmp.i2.i.i.i = icmp ugt ptr %add.ptr5.i.i.i.i417, %add.ptr3.i.i.i89
  %add.ptr2.i.i.i.i420 = getelementptr i8, ptr %op.0.i.i.i147, i32 %add.i1.i.i.i
  %cmp7.i.i.i.i421 = icmp ugt ptr %add.ptr2.i.i.i.i420, %add.ptr3.i.i.i.i141
  %or.cond.i3.i.i.i = select i1 %cmp.i2.i.i.i, i1 true, i1 %cmp7.i.i.i.i421
  br i1 %or.cond.i3.i.i.i, label %ZSTD_decodeSequence.exit.i.i.i422.if.then.i4.i.i.i_crit_edge, label %lor.rhs.i.i.i.i427, !prof !43

ZSTD_decodeSequence.exit.i.i.i422.if.then.i4.i.i.i_crit_edge: ; preds = %ZSTD_decodeSequence.exit.i.i.i422
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i4.i.i.i

lor.rhs.i.i.i.i427:                               ; preds = %ZSTD_decodeSequence.exit.i.i.i422
  %sub.ptr.rhs.cast.i.i.i.i423 = ptrtoint ptr %op.0.i.i.i147 to i32
  %sub.ptr.sub.i.i.i.i424 = sub i32 %sub.ptr.lhs.cast.i.i.i.i145, %sub.ptr.rhs.cast.i.i.i.i423
  %add8.i.i.i.i425 = add i32 %add.i1.i.i.i, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i.i424, i32 %add8.i.i.i.i425)
  %cmp9.i.i.i.i426 = icmp ult i32 %sub.ptr.sub.i.i.i.i424, %add8.i.i.i.i425
  br i1 %cmp9.i.i.i.i426, label %lor.rhs.i.i.i.i427.if.then.i4.i.i.i_crit_edge, label %if.end.i.i.i.i430, !prof !39

lor.rhs.i.i.i.i427.if.then.i4.i.i.i_crit_edge:    ; preds = %lor.rhs.i.i.i.i427
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i4.i.i.i

if.then.i4.i.i.i:                                 ; preds = %lor.rhs.i.i.i.i427.if.then.i4.i.i.i_crit_edge, %ZSTD_decodeSequence.exit.i.i.i422.if.then.i4.i.i.i_crit_edge
  %call11.i.i.i.i428 = call fastcc i32 @ZSTD_execSequenceEnd(ptr noundef %op.0.i.i.i147, ptr noundef %add.ptr1.i.i.i86, [4 x i32] %.fca.3.insert.i.i.i415, ptr noundef nonnull %litPtr.i.i.i84, ptr noundef %add.ptr3.i.i.i89, ptr noundef %595, ptr noundef %597, ptr noundef %599) #9
  br label %ZSTD_execSequence.exit.i.i.i523

if.end.i.i.i.i430:                                ; preds = %lor.rhs.i.i.i.i427
  %856 = call ptr @memcpy(ptr %op.0.i.i.i147, ptr %855, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sequence.sroa.0.0.i.i.i333)
  %cmp13.i.i.i.i429 = icmp ugt i32 %sequence.sroa.0.0.i.i.i333, 16
  br i1 %cmp13.i.i.i.i429, label %if.then16.i.i.i.i433, label %if.end.i.i.i.i430.if.end20.i.i.i.i445_crit_edge, !prof !39

if.end.i.i.i.i430.if.end20.i.i.i.i445_crit_edge:  ; preds = %if.end.i.i.i.i430
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i.i.i445

if.then16.i.i.i.i433:                             ; preds = %if.end.i.i.i.i430
  %add.ptr17.i.i.i.i431 = getelementptr i8, ptr %op.0.i.i.i147, i32 16
  %add.ptr18.i.i.i.i432 = getelementptr i8, ptr %855, i32 16
  %sub.i5.i.i.i = add i32 %sequence.sroa.0.0.i.i.i333, -16
  %857 = call ptr @memcpy(ptr %add.ptr17.i.i.i.i431, ptr %add.ptr18.i.i.i.i432, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub.i5.i.i.i)
  %cmp5.i.i6.i.i.i = icmp slt i32 %sub.i5.i.i.i, 17
  br i1 %cmp5.i.i6.i.i.i, label %if.then16.i.i.i.i433.if.end20.i.i.i.i445_crit_edge, label %if.end.i.i7.i.i.i

if.then16.i.i.i.i433.if.end20.i.i.i.i445_crit_edge: ; preds = %if.then16.i.i.i.i433
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i.i.i445

if.end.i.i7.i.i.i:                                ; preds = %if.then16.i.i.i.i433
  %add.ptr7.i.i.i.i.i434 = getelementptr i8, ptr %op.0.i.i.i147, i32 32
  br label %do.body9.i.i.i.i.i441

do.body9.i.i.i.i.i441:                            ; preds = %do.body9.i.i.i.i.i441.do.body9.i.i.i.i.i441_crit_edge, %if.end.i.i7.i.i.i
  %src.pn.i.i.i.i.i435 = phi ptr [ %add.ptr18.i.i.i.i432, %if.end.i.i7.i.i.i ], [ %add.ptr11.i.i.i.i.i439, %do.body9.i.i.i.i.i441.do.body9.i.i.i.i.i441_crit_edge ]
  %op.1.i.i.i.i.i436 = phi ptr [ %add.ptr7.i.i.i.i.i434, %if.end.i.i7.i.i.i ], [ %add.ptr12.i.i.i.i.i440, %do.body9.i.i.i.i.i441.do.body9.i.i.i.i.i441_crit_edge ]
  %ip.1.i.i.i.i.i437 = getelementptr i8, ptr %src.pn.i.i.i.i.i435, i32 16
  %858 = call ptr @memcpy(ptr %op.1.i.i.i.i.i436, ptr %ip.1.i.i.i.i.i437, i32 16)
  %add.ptr10.i.i.i.i.i438 = getelementptr i8, ptr %op.1.i.i.i.i.i436, i32 16
  %add.ptr11.i.i.i.i.i439 = getelementptr i8, ptr %src.pn.i.i.i.i.i435, i32 32
  %859 = call ptr @memcpy(ptr %add.ptr10.i.i.i.i.i438, ptr %add.ptr11.i.i.i.i.i439, i32 16)
  %add.ptr12.i.i.i.i.i440 = getelementptr i8, ptr %op.1.i.i.i.i.i436, i32 32
  %cmp15.i.i8.i.i.i = icmp ult ptr %add.ptr12.i.i.i.i.i440, %add.ptr.i.i.i.i416
  br i1 %cmp15.i.i8.i.i.i, label %do.body9.i.i.i.i.i441.do.body9.i.i.i.i.i441_crit_edge, label %do.body9.i.i.i.i.i441.if.end20.i.i.i.i445_crit_edge

do.body9.i.i.i.i.i441.if.end20.i.i.i.i445_crit_edge: ; preds = %do.body9.i.i.i.i.i441
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i.i.i445

do.body9.i.i.i.i.i441.do.body9.i.i.i.i.i441_crit_edge: ; preds = %do.body9.i.i.i.i.i441
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9.i.i.i.i.i441

if.end20.i.i.i.i445:                              ; preds = %do.body9.i.i.i.i.i441.if.end20.i.i.i.i445_crit_edge, %if.then16.i.i.i.i433.if.end20.i.i.i.i445_crit_edge, %if.end.i.i.i.i430.if.end20.i.i.i.i445_crit_edge
  %860 = ptrtoint ptr %litPtr.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %860)
  store ptr %add.ptr5.i.i.i.i417, ptr %litPtr.i.i.i84, align 4
  %sub.ptr.lhs.cast22.i.i.i.i442 = ptrtoint ptr %add.ptr.i.i.i.i416 to i32
  %sub.ptr.sub24.i.i.i.i443 = sub i32 %sub.ptr.lhs.cast22.i.i.i.i442, %sub.ptr.rhs.cast23.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.3.i.i.i.i281, i32 %sub.ptr.sub24.i.i.i.i443)
  %cmp25.i.i.i.i444 = icmp ugt i32 %offset.3.i.i.i.i281, %sub.ptr.sub24.i.i.i.i443
  br i1 %cmp25.i.i.i.i444, label %if.then27.i.i.i.i448, label %if.end20.i.i.i.i445.if.end55.i.i.i.i464_crit_edge

if.end20.i.i.i.i445.if.end55.i.i.i.i464_crit_edge: ; preds = %if.end20.i.i.i.i445
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i.i.i.i464

if.then27.i.i.i.i448:                             ; preds = %if.end20.i.i.i.i445
  %sub.ptr.sub31.i.i.i.i446 = sub i32 %sub.ptr.lhs.cast22.i.i.i.i442, %sub.ptr.rhs.cast30.i.i.i.i146
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.3.i.i.i.i281, i32 %sub.ptr.sub31.i.i.i.i446)
  %cmp32.i.i.i.i447 = icmp ugt i32 %offset.3.i.i.i.i281, %sub.ptr.sub31.i.i.i.i446
  br i1 %cmp32.i.i.i.i447, label %if.then27.i.i.i.i448.ZSTD_execSequence.exit.i.i.i523_crit_edge, label %if.end37.i.i.i.i454, !prof !39

if.then27.i.i.i.i448.ZSTD_execSequence.exit.i.i.i523_crit_edge: ; preds = %if.then27.i.i.i.i448
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_execSequence.exit.i.i.i523

if.end37.i.i.i.i454:                              ; preds = %if.then27.i.i.i.i448
  %sub.ptr.lhs.cast38.i.i.i.i449 = ptrtoint ptr %add.ptr6.i.i.i.i419 to i32
  %sub.ptr.sub40.i.i.i.i450 = sub i32 %sub.ptr.lhs.cast38.i.i.i.i449, %sub.ptr.rhs.cast23.i.i.i.i
  %add.ptr41.i.i.i.i451 = getelementptr i8, ptr %599, i32 %sub.ptr.sub40.i.i.i.i450
  %add.ptr43.i.i.i.i452 = getelementptr i8, ptr %add.ptr41.i.i.i.i451, i32 %sequence.sroa.7.0.i.i.i
  %cmp44.not.i.i.i.i453 = icmp ugt ptr %add.ptr43.i.i.i.i452, %599
  br i1 %cmp44.not.i.i.i.i453, label %if.end48.i.i.i.i459, label %if.then46.i.i.i.i455

if.then46.i.i.i.i455:                             ; preds = %if.end37.i.i.i.i454
  call void @__sanitizer_cov_trace_pc() #11
  %861 = call ptr @memmove(ptr %add.ptr.i.i.i.i416, ptr %add.ptr41.i.i.i.i451, i32 %sequence.sroa.7.0.i.i.i)
  br label %ZSTD_execSequence.exit.i.i.i523

if.end48.i.i.i.i459:                              ; preds = %if.end37.i.i.i.i454
  call void @__sanitizer_cov_trace_pc() #11
  %diff.neg.i.i.i.i456 = sub i32 0, %sub.ptr.sub40.i.i.i.i450
  %862 = call ptr @memmove(ptr %add.ptr.i.i.i.i416, ptr %add.ptr41.i.i.i.i451, i32 %diff.neg.i.i.i.i456)
  %add.ptr52.i.i.i.i457 = getelementptr i8, ptr %add.ptr.i.i.i.i416, i32 %diff.neg.i.i.i.i456
  %sub54.i.i.i.i458 = add i32 %sub.ptr.sub40.i.i.i.i450, %sequence.sroa.7.0.i.i.i
  br label %if.end55.i.i.i.i464

if.end55.i.i.i.i464:                              ; preds = %if.end48.i.i.i.i459, %if.end20.i.i.i.i445.if.end55.i.i.i.i464_crit_edge
  %op.addr.0.i.i.i.i460 = phi ptr [ %add.ptr52.i.i.i.i457, %if.end48.i.i.i.i459 ], [ %add.ptr.i.i.i.i416, %if.end20.i.i.i.i445.if.end55.i.i.i.i464_crit_edge ]
  %match.0.i.i.i.i461 = phi ptr [ %595, %if.end48.i.i.i.i459 ], [ %add.ptr6.i.i.i.i419, %if.end20.i.i.i.i445.if.end55.i.i.i.i464_crit_edge ]
  %sequence.sroa.7.0.i.i.i.i462 = phi i32 [ %sub54.i.i.i.i458, %if.end48.i.i.i.i459 ], [ %sequence.sroa.7.0.i.i.i, %if.end20.i.i.i.i445.if.end55.i.i.i.i464_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %offset.3.i.i.i.i281)
  %cmp57.i.i.i.i463 = icmp ugt i32 %offset.3.i.i.i.i281, 15
  br i1 %cmp57.i.i.i.i463, label %if.then61.i.i.i.i467, label %if.end63.i.i.i.i478, !prof !38

if.then61.i.i.i.i467:                             ; preds = %if.end55.i.i.i.i464
  %add.ptr.i121.i.i.i.i465 = getelementptr i8, ptr %op.addr.0.i.i.i.i460, i32 %sequence.sroa.7.0.i.i.i.i462
  %863 = call ptr @memcpy(ptr %op.addr.0.i.i.i.i460, ptr %match.0.i.i.i.i461, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sequence.sroa.7.0.i.i.i.i462)
  %cmp5.i126.i.i.i.i466 = icmp slt i32 %sequence.sroa.7.0.i.i.i.i462, 17
  br i1 %cmp5.i126.i.i.i.i466, label %if.then61.i.i.i.i467.ZSTD_execSequence.exit.i.i.i523_crit_edge, label %if.end.i128.i.i.i.i469

if.then61.i.i.i.i467.ZSTD_execSequence.exit.i.i.i523_crit_edge: ; preds = %if.then61.i.i.i.i467
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_execSequence.exit.i.i.i523

if.end.i128.i.i.i.i469:                           ; preds = %if.then61.i.i.i.i467
  %add.ptr7.i127.i.i.i.i468 = getelementptr i8, ptr %op.addr.0.i.i.i.i460, i32 16
  br label %do.body9.i136.i.i.i.i477

do.body9.i136.i.i.i.i477:                         ; preds = %do.body9.i136.i.i.i.i477.do.body9.i136.i.i.i.i477_crit_edge, %if.end.i128.i.i.i.i469
  %src.pn.i129.i.i.i.i470 = phi ptr [ %match.0.i.i.i.i461, %if.end.i128.i.i.i.i469 ], [ %add.ptr11.i133.i.i.i.i474, %do.body9.i136.i.i.i.i477.do.body9.i136.i.i.i.i477_crit_edge ]
  %op.1.i130.i.i.i.i471 = phi ptr [ %add.ptr7.i127.i.i.i.i468, %if.end.i128.i.i.i.i469 ], [ %add.ptr12.i134.i.i.i.i475, %do.body9.i136.i.i.i.i477.do.body9.i136.i.i.i.i477_crit_edge ]
  %ip.1.i131.i.i.i.i472 = getelementptr i8, ptr %src.pn.i129.i.i.i.i470, i32 16
  %864 = call ptr @memcpy(ptr %op.1.i130.i.i.i.i471, ptr %ip.1.i131.i.i.i.i472, i32 16)
  %add.ptr10.i132.i.i.i.i473 = getelementptr i8, ptr %op.1.i130.i.i.i.i471, i32 16
  %add.ptr11.i133.i.i.i.i474 = getelementptr i8, ptr %src.pn.i129.i.i.i.i470, i32 32
  %865 = call ptr @memcpy(ptr %add.ptr10.i132.i.i.i.i473, ptr %add.ptr11.i133.i.i.i.i474, i32 16)
  %add.ptr12.i134.i.i.i.i475 = getelementptr i8, ptr %op.1.i130.i.i.i.i471, i32 32
  %cmp15.i135.i.i.i.i476 = icmp ult ptr %add.ptr12.i134.i.i.i.i475, %add.ptr.i121.i.i.i.i465
  br i1 %cmp15.i135.i.i.i.i476, label %do.body9.i136.i.i.i.i477.do.body9.i136.i.i.i.i477_crit_edge, label %do.body9.i136.i.i.i.i477.ZSTD_execSequence.exit.i.i.i523_crit_edge

do.body9.i136.i.i.i.i477.ZSTD_execSequence.exit.i.i.i523_crit_edge: ; preds = %do.body9.i136.i.i.i.i477
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_execSequence.exit.i.i.i523

do.body9.i136.i.i.i.i477.do.body9.i136.i.i.i.i477_crit_edge: ; preds = %do.body9.i136.i.i.i.i477
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9.i136.i.i.i.i477

if.end63.i.i.i.i478:                              ; preds = %if.end55.i.i.i.i464
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %offset.3.i.i.i.i281)
  %cmp.i.i9.i.i.i = icmp ult i32 %offset.3.i.i.i.i281, 8
  br i1 %cmp.i.i9.i.i.i, label %if.then.i.i.i.i.i490, label %if.else.i.i.i.i.i491

if.then.i.i.i.i.i490:                             ; preds = %if.end63.i.i.i.i478
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i.i.i479 = getelementptr [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i32 0, i32 %offset.3.i.i.i.i281
  %866 = ptrtoint ptr %arrayidx.i.i.i.i.i479 to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load i32, ptr %arrayidx.i.i.i.i.i479, align 4
  %868 = ptrtoint ptr %match.0.i.i.i.i461 to i32
  call void @__asan_load1_noabort(i32 %868)
  %869 = load i8, ptr %match.0.i.i.i.i461, align 1
  %870 = ptrtoint ptr %op.addr.0.i.i.i.i460 to i32
  call void @__asan_store1_noabort(i32 %870)
  store i8 %869, ptr %op.addr.0.i.i.i.i460, align 1
  %arrayidx3.i.i.i.i.i480 = getelementptr i8, ptr %match.0.i.i.i.i461, i32 1
  %871 = ptrtoint ptr %arrayidx3.i.i.i.i.i480 to i32
  call void @__asan_load1_noabort(i32 %871)
  %872 = load i8, ptr %arrayidx3.i.i.i.i.i480, align 1
  %arrayidx4.i.i.i.i.i481 = getelementptr i8, ptr %op.addr.0.i.i.i.i460, i32 1
  %873 = ptrtoint ptr %arrayidx4.i.i.i.i.i481 to i32
  call void @__asan_store1_noabort(i32 %873)
  store i8 %872, ptr %arrayidx4.i.i.i.i.i481, align 1
  %arrayidx5.i.i.i.i.i482 = getelementptr i8, ptr %match.0.i.i.i.i461, i32 2
  %874 = ptrtoint ptr %arrayidx5.i.i.i.i.i482 to i32
  call void @__asan_load1_noabort(i32 %874)
  %875 = load i8, ptr %arrayidx5.i.i.i.i.i482, align 1
  %arrayidx6.i.i.i.i.i483 = getelementptr i8, ptr %op.addr.0.i.i.i.i460, i32 2
  %876 = ptrtoint ptr %arrayidx6.i.i.i.i.i483 to i32
  call void @__asan_store1_noabort(i32 %876)
  store i8 %875, ptr %arrayidx6.i.i.i.i.i483, align 1
  %arrayidx7.i.i.i.i.i484 = getelementptr i8, ptr %match.0.i.i.i.i461, i32 3
  %877 = ptrtoint ptr %arrayidx7.i.i.i.i.i484 to i32
  call void @__asan_load1_noabort(i32 %877)
  %878 = load i8, ptr %arrayidx7.i.i.i.i.i484, align 1
  %arrayidx8.i.i.i.i.i485 = getelementptr i8, ptr %op.addr.0.i.i.i.i460, i32 3
  %879 = ptrtoint ptr %arrayidx8.i.i.i.i.i485 to i32
  call void @__asan_store1_noabort(i32 %879)
  store i8 %878, ptr %arrayidx8.i.i.i.i.i485, align 1
  %arrayidx9.i.i.i.i.i486 = getelementptr [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i32 0, i32 %offset.3.i.i.i.i281
  %880 = ptrtoint ptr %arrayidx9.i.i.i.i.i486 to i32
  call void @__asan_load4_noabort(i32 %880)
  %881 = load i32, ptr %arrayidx9.i.i.i.i.i486, align 4
  %add.ptr.i138.i.i.i.i487 = getelementptr i8, ptr %match.0.i.i.i.i461, i32 %881
  %add.ptr10.i139.i.i.i.i488 = getelementptr i8, ptr %op.addr.0.i.i.i.i460, i32 4
  %882 = ptrtoint ptr %add.ptr.i138.i.i.i.i487 to i32
  call void @__asan_loadN_noabort(i32 %882, i32 4)
  %883 = load i32, ptr %add.ptr.i138.i.i.i.i487, align 1
  %884 = ptrtoint ptr %add.ptr10.i139.i.i.i.i488 to i32
  call void @__asan_storeN_noabort(i32 %884, i32 4)
  store i32 %883, ptr %add.ptr10.i139.i.i.i.i488, align 1
  %idx.neg.i.i10.i.i.i = sub i32 0, %867
  %add.ptr11.i140.i.i.i.i489 = getelementptr i8, ptr %add.ptr.i138.i.i.i.i487, i32 %idx.neg.i.i10.i.i.i
  br label %ZSTD_overlapCopy8.exit.i.i.i.i496

if.else.i.i.i.i.i491:                             ; preds = %if.end63.i.i.i.i478
  call void @__sanitizer_cov_trace_pc() #11
  %885 = ptrtoint ptr %match.0.i.i.i.i461 to i32
  call void @__asan_loadN_noabort(i32 %885, i32 8)
  %886 = load i64, ptr %match.0.i.i.i.i461, align 1
  %887 = ptrtoint ptr %op.addr.0.i.i.i.i460 to i32
  call void @__asan_storeN_noabort(i32 %887, i32 8)
  store i64 %886, ptr %op.addr.0.i.i.i.i460, align 1
  br label %ZSTD_overlapCopy8.exit.i.i.i.i496

ZSTD_overlapCopy8.exit.i.i.i.i496:                ; preds = %if.else.i.i.i.i.i491, %if.then.i.i.i.i.i490
  %match.1.i.i.i.i492 = phi ptr [ %add.ptr11.i140.i.i.i.i489, %if.then.i.i.i.i.i490 ], [ %match.0.i.i.i.i461, %if.else.i.i.i.i.i491 ]
  %add.ptr12.i141.i.i.i.i493 = getelementptr i8, ptr %match.1.i.i.i.i492, i32 8
  %add.ptr13.i.i.i.i.i494 = getelementptr i8, ptr %op.addr.0.i.i.i.i460, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sequence.sroa.7.0.i.i.i.i462)
  %cmp66.i.i.i.i495 = icmp ugt i32 %sequence.sroa.7.0.i.i.i.i462, 8
  br i1 %cmp66.i.i.i.i495, label %if.then68.i.i.i.i502, label %ZSTD_overlapCopy8.exit.i.i.i.i496.ZSTD_execSequence.exit.i.i.i523_crit_edge

ZSTD_overlapCopy8.exit.i.i.i.i496.ZSTD_execSequence.exit.i.i.i523_crit_edge: ; preds = %ZSTD_overlapCopy8.exit.i.i.i.i496
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_execSequence.exit.i.i.i523

if.then68.i.i.i.i502:                             ; preds = %ZSTD_overlapCopy8.exit.i.i.i.i496
  %add.ptr.i143.i.i.i.i497 = getelementptr i8, ptr %op.addr.0.i.i.i.i460, i32 %sequence.sroa.7.0.i.i.i.i462
  %sub.ptr.lhs.cast.i144.i.i.i.i498 = ptrtoint ptr %add.ptr13.i.i.i.i.i494 to i32
  %sub.ptr.rhs.cast.i145.i.i.i.i499 = ptrtoint ptr %add.ptr12.i141.i.i.i.i493 to i32
  %sub.ptr.sub.i146.i.i.i.i500 = sub i32 %sub.ptr.lhs.cast.i144.i.i.i.i498, %sub.ptr.rhs.cast.i145.i.i.i.i499
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i146.i.i.i.i500)
  %cmp1.i147.i.i.i.i501 = icmp slt i32 %sub.ptr.sub.i146.i.i.i.i500, 16
  br i1 %cmp1.i147.i.i.i.i501, label %if.then68.i.i.i.i502.do.body.i.i.i.i.i508_crit_edge, label %if.else.i149.i.i.i.i511

if.then68.i.i.i.i502.do.body.i.i.i.i.i508_crit_edge: ; preds = %if.then68.i.i.i.i502
  br label %do.body.i.i.i.i.i508

do.body.i.i.i.i.i508:                             ; preds = %do.body.i.i.i.i.i508.do.body.i.i.i.i.i508_crit_edge, %if.then68.i.i.i.i502.do.body.i.i.i.i.i508_crit_edge
  %ip.0.i.i.i.i.i503 = phi ptr [ %add.ptr3.i.i.i.i.i506, %do.body.i.i.i.i.i508.do.body.i.i.i.i.i508_crit_edge ], [ %add.ptr12.i141.i.i.i.i493, %if.then68.i.i.i.i502.do.body.i.i.i.i.i508_crit_edge ]
  %op.0.i.i.i.i.i504 = phi ptr [ %add.ptr2.i.i.i.i.i505, %do.body.i.i.i.i.i508.do.body.i.i.i.i.i508_crit_edge ], [ %add.ptr13.i.i.i.i.i494, %if.then68.i.i.i.i502.do.body.i.i.i.i.i508_crit_edge ]
  %888 = ptrtoint ptr %ip.0.i.i.i.i.i503 to i32
  call void @__asan_loadN_noabort(i32 %888, i32 8)
  %889 = load i64, ptr %ip.0.i.i.i.i.i503, align 1
  %890 = ptrtoint ptr %op.0.i.i.i.i.i504 to i32
  call void @__asan_storeN_noabort(i32 %890, i32 8)
  store i64 %889, ptr %op.0.i.i.i.i.i504, align 1
  %add.ptr2.i.i.i.i.i505 = getelementptr i8, ptr %op.0.i.i.i.i.i504, i32 8
  %add.ptr3.i.i.i.i.i506 = getelementptr i8, ptr %ip.0.i.i.i.i.i503, i32 8
  %cmp4.i.i.i.i.i507 = icmp ult ptr %add.ptr2.i.i.i.i.i505, %add.ptr.i143.i.i.i.i497
  br i1 %cmp4.i.i.i.i.i507, label %do.body.i.i.i.i.i508.do.body.i.i.i.i.i508_crit_edge, label %do.body.i.i.i.i.i508.ZSTD_execSequence.exit.i.i.i523_crit_edge

do.body.i.i.i.i.i508.ZSTD_execSequence.exit.i.i.i523_crit_edge: ; preds = %do.body.i.i.i.i.i508
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_execSequence.exit.i.i.i523

do.body.i.i.i.i.i508.do.body.i.i.i.i.i508_crit_edge: ; preds = %do.body.i.i.i.i.i508
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i508

if.else.i149.i.i.i.i511:                          ; preds = %if.then68.i.i.i.i502
  %sub70.i.i.i.i509 = add i32 %sequence.sroa.7.0.i.i.i.i462, -8
  %891 = call ptr @memcpy(ptr %add.ptr13.i.i.i.i.i494, ptr %add.ptr12.i141.i.i.i.i493, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub70.i.i.i.i509)
  %cmp5.i148.i.i.i.i510 = icmp slt i32 %sub70.i.i.i.i509, 17
  br i1 %cmp5.i148.i.i.i.i510, label %if.else.i149.i.i.i.i511.ZSTD_execSequence.exit.i.i.i523_crit_edge, label %if.end.i151.i.i.i.i513

if.else.i149.i.i.i.i511.ZSTD_execSequence.exit.i.i.i523_crit_edge: ; preds = %if.else.i149.i.i.i.i511
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_execSequence.exit.i.i.i523

if.end.i151.i.i.i.i513:                           ; preds = %if.else.i149.i.i.i.i511
  %add.ptr7.i150.i.i.i.i512 = getelementptr i8, ptr %op.addr.0.i.i.i.i460, i32 24
  br label %do.body9.i159.i.i.i.i521

do.body9.i159.i.i.i.i521:                         ; preds = %do.body9.i159.i.i.i.i521.do.body9.i159.i.i.i.i521_crit_edge, %if.end.i151.i.i.i.i513
  %src.pn.i152.i.i.i.i514 = phi ptr [ %add.ptr12.i141.i.i.i.i493, %if.end.i151.i.i.i.i513 ], [ %add.ptr11.i156.i.i.i.i518, %do.body9.i159.i.i.i.i521.do.body9.i159.i.i.i.i521_crit_edge ]
  %op.1.i153.i.i.i.i515 = phi ptr [ %add.ptr7.i150.i.i.i.i512, %if.end.i151.i.i.i.i513 ], [ %add.ptr12.i157.i.i.i.i519, %do.body9.i159.i.i.i.i521.do.body9.i159.i.i.i.i521_crit_edge ]
  %ip.1.i154.i.i.i.i516 = getelementptr i8, ptr %src.pn.i152.i.i.i.i514, i32 16
  %892 = call ptr @memcpy(ptr %op.1.i153.i.i.i.i515, ptr %ip.1.i154.i.i.i.i516, i32 16)
  %add.ptr10.i155.i.i.i.i517 = getelementptr i8, ptr %op.1.i153.i.i.i.i515, i32 16
  %add.ptr11.i156.i.i.i.i518 = getelementptr i8, ptr %src.pn.i152.i.i.i.i514, i32 32
  %893 = call ptr @memcpy(ptr %add.ptr10.i155.i.i.i.i517, ptr %add.ptr11.i156.i.i.i.i518, i32 16)
  %add.ptr12.i157.i.i.i.i519 = getelementptr i8, ptr %op.1.i153.i.i.i.i515, i32 32
  %cmp15.i158.i.i.i.i520 = icmp ult ptr %add.ptr12.i157.i.i.i.i519, %add.ptr.i143.i.i.i.i497
  br i1 %cmp15.i158.i.i.i.i520, label %do.body9.i159.i.i.i.i521.do.body9.i159.i.i.i.i521_crit_edge, label %do.body9.i159.i.i.i.i521.ZSTD_execSequence.exit.i.i.i523_crit_edge

do.body9.i159.i.i.i.i521.ZSTD_execSequence.exit.i.i.i523_crit_edge: ; preds = %do.body9.i159.i.i.i.i521
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_execSequence.exit.i.i.i523

do.body9.i159.i.i.i.i521.do.body9.i159.i.i.i.i521_crit_edge: ; preds = %do.body9.i159.i.i.i.i521
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9.i159.i.i.i.i521

ZSTD_execSequence.exit.i.i.i523:                  ; preds = %do.body9.i159.i.i.i.i521.ZSTD_execSequence.exit.i.i.i523_crit_edge, %if.else.i149.i.i.i.i511.ZSTD_execSequence.exit.i.i.i523_crit_edge, %do.body.i.i.i.i.i508.ZSTD_execSequence.exit.i.i.i523_crit_edge, %ZSTD_overlapCopy8.exit.i.i.i.i496.ZSTD_execSequence.exit.i.i.i523_crit_edge, %do.body9.i136.i.i.i.i477.ZSTD_execSequence.exit.i.i.i523_crit_edge, %if.then61.i.i.i.i467.ZSTD_execSequence.exit.i.i.i523_crit_edge, %if.then46.i.i.i.i455, %if.then27.i.i.i.i448.ZSTD_execSequence.exit.i.i.i523_crit_edge, %if.then.i4.i.i.i
  %retval.0.i.i.i.i522 = phi i32 [ %call11.i.i.i.i428, %if.then.i4.i.i.i ], [ %add.i1.i.i.i, %if.then46.i.i.i.i455 ], [ -20, %if.then27.i.i.i.i448.ZSTD_execSequence.exit.i.i.i523_crit_edge ], [ %add.i1.i.i.i, %ZSTD_overlapCopy8.exit.i.i.i.i496.ZSTD_execSequence.exit.i.i.i523_crit_edge ], [ %add.i1.i.i.i, %if.then61.i.i.i.i467.ZSTD_execSequence.exit.i.i.i523_crit_edge ], [ %add.i1.i.i.i, %if.else.i149.i.i.i.i511.ZSTD_execSequence.exit.i.i.i523_crit_edge ], [ %add.i1.i.i.i, %do.body9.i136.i.i.i.i477.ZSTD_execSequence.exit.i.i.i523_crit_edge ], [ %add.i1.i.i.i, %do.body.i.i.i.i.i508.ZSTD_execSequence.exit.i.i.i523_crit_edge ], [ %add.i1.i.i.i, %do.body9.i159.i.i.i.i521.ZSTD_execSequence.exit.i.i.i523_crit_edge ]
  %894 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load i32, ptr %bitsConsumed.i.i.i.i.i.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %895)
  %cmp.i137.i.i.i = icmp ugt i32 %895, 32
  br i1 %cmp.i137.i.i.i, label %ZSTD_execSequence.exit.i.i.i523.BIT_reloadDStream.exit.i.i.i536_crit_edge, label %if.end.i140.i.i.i

ZSTD_execSequence.exit.i.i.i523.BIT_reloadDStream.exit.i.i.i536_crit_edge: ; preds = %ZSTD_execSequence.exit.i.i.i523
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit.i.i.i536

if.end.i140.i.i.i:                                ; preds = %ZSTD_execSequence.exit.i.i.i523
  %896 = ptrtoint ptr %ptr.i327.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load ptr, ptr %ptr.i327.i.i.i.i, align 4
  %898 = ptrtoint ptr %limitPtr.i.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %898)
  %899 = load ptr, ptr %limitPtr.i.i.i.i98, align 4
  %cmp1.not.i.i.i.i524 = icmp ult ptr %897, %899
  br i1 %cmp1.not.i.i.i.i524, label %if.end3.i.i.i.i528, label %BIT_reloadDStreamFast.exit.i.i.i.i526

BIT_reloadDStreamFast.exit.i.i.i.i526:            ; preds = %if.end.i140.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i141.i.i.i = lshr i32 %895, 3
  %idx.neg.i.i142.i.i.i = sub nsw i32 0, %shr.i.i141.i.i.i
  %add.ptr.i.i143.i.i.i = getelementptr i8, ptr %897, i32 %idx.neg.i.i142.i.i.i
  %900 = ptrtoint ptr %ptr.i327.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %900)
  store ptr %add.ptr.i.i143.i.i.i, ptr %ptr.i327.i.i.i.i, align 4
  %and.i.i.i.i.i525 = and i32 %895, 7
  %901 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %901)
  store i32 %and.i.i.i.i.i525, ptr %bitsConsumed.i.i.i.i.i.i128, align 4
  %902 = ptrtoint ptr %add.ptr.i.i143.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %902, i32 4)
  %903 = load i32, ptr %add.ptr.i.i143.i.i.i, align 1
  %904 = tail call i32 @llvm.bswap.i32(i32 %903) #9
  %905 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %905)
  store i32 %904, ptr %seqState.i.i.i85, align 4
  br label %BIT_reloadDStream.exit.i.i.i536

if.end3.i.i.i.i528:                               ; preds = %if.end.i140.i.i.i
  %906 = ptrtoint ptr %start.i.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load ptr, ptr %start.i.i.i.i97, align 4
  %cmp5.i.i.i.i527 = icmp eq ptr %897, %907
  br i1 %cmp5.i.i.i.i527, label %if.end3.i.i.i.i528.BIT_reloadDStream.exit.i.i.i536_crit_edge, label %if.end11.i.i.i.i535

if.end3.i.i.i.i528.BIT_reloadDStream.exit.i.i.i536_crit_edge: ; preds = %if.end3.i.i.i.i528
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit.i.i.i536

if.end11.i.i.i.i535:                              ; preds = %if.end3.i.i.i.i528
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i.i.i529 = lshr i32 %895, 3
  %idx.neg.i145.i.i.i = sub nsw i32 0, %shr.i.i.i.i529
  %add.ptr.i146.i.i.i = getelementptr i8, ptr %897, i32 %idx.neg.i145.i.i.i
  %cmp15.i.i.i.i530 = icmp ult ptr %add.ptr.i146.i.i.i, %907
  %sub.ptr.lhs.cast.i147.i.i.i = ptrtoint ptr %897 to i32
  %sub.ptr.rhs.cast.i148.i.i.i = ptrtoint ptr %907 to i32
  %sub.ptr.sub.i149.i.i.i = sub i32 %sub.ptr.lhs.cast.i147.i.i.i, %sub.ptr.rhs.cast.i148.i.i.i
  %nbBytes.0.i.i.i.i531 = select i1 %cmp15.i.i.i.i530, i32 %sub.ptr.sub.i149.i.i.i, i32 %shr.i.i.i.i529
  %idx.neg21.i.i.i.i532 = sub i32 0, %nbBytes.0.i.i.i.i531
  %add.ptr22.i.i.i.i533 = getelementptr i8, ptr %897, i32 %idx.neg21.i.i.i.i532
  %908 = ptrtoint ptr %ptr.i327.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %908)
  store ptr %add.ptr22.i.i.i.i533, ptr %ptr.i327.i.i.i.i, align 4
  %mul.neg.i.i.i.i534 = mul i32 %nbBytes.0.i.i.i.i531, -8
  %sub.i150.i.i.i = add i32 %mul.neg.i.i.i.i534, %895
  %909 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %909)
  store i32 %sub.i150.i.i.i, ptr %bitsConsumed.i.i.i.i.i.i128, align 4
  %910 = ptrtoint ptr %add.ptr22.i.i.i.i533 to i32
  call void @__asan_loadN_noabort(i32 %910, i32 4)
  %911 = load i32, ptr %add.ptr22.i.i.i.i533, align 1
  %912 = tail call i32 @llvm.bswap.i32(i32 %911) #9
  %913 = ptrtoint ptr %seqState.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %913)
  store i32 %912, ptr %seqState.i.i.i85, align 4
  br label %BIT_reloadDStream.exit.i.i.i536

BIT_reloadDStream.exit.i.i.i536:                  ; preds = %if.end11.i.i.i.i535, %if.end3.i.i.i.i528.BIT_reloadDStream.exit.i.i.i536_crit_edge, %BIT_reloadDStreamFast.exit.i.i.i.i526, %ZSTD_execSequence.exit.i.i.i523.BIT_reloadDStream.exit.i.i.i536_crit_edge
  %add.ptr17.i.i.i = getelementptr i8, ptr %op.0.i.i.i147, i32 %retval.0.i.i.i.i522
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %retval.0.i.i.i.i522)
  %cmp.i152.i.i.i = icmp ult i32 %retval.0.i.i.i.i522, -119
  %dec.i.i.i = add i32 %nbSeq.addr.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool22.not.i.i.i = icmp ne i32 %dec.i.i.i, 0
  %nbSeq.addr.1.i.i.i = select i1 %cmp.i152.i.i.i, i32 %dec.i.i.i, i32 %nbSeq.addr.0.i.i.i, !prof !38
  %error.1.i.i.i = select i1 %cmp.i152.i.i.i, i32 %error.0.i.i.i, i32 %retval.0.i.i.i.i522, !prof !38
  %switch.i.i.i = select i1 %cmp.i152.i.i.i, i1 %tobool22.not.i.i.i, i1 false
  br i1 %switch.i.i.i, label %BIT_reloadDStream.exit.i.i.i536.for.cond13.i.i.i_crit_edge, label %for.end28.i.i.i

BIT_reloadDStream.exit.i.i.i536.for.cond13.i.i.i_crit_edge: ; preds = %BIT_reloadDStream.exit.i.i.i536
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond13.i.i.i

for.end28.i.i.i:                                  ; preds = %BIT_reloadDStream.exit.i.i.i536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %error.1.i.i.i)
  %cmp.i154.i.i.i = icmp ult i32 %error.1.i.i.i, -119
  br i1 %cmp.i154.i.i.i, label %if.end32.i.i.i, label %for.end28.i.i.i.cleanup53.thread.i.i.i_crit_edge

for.end28.i.i.i.cleanup53.thread.i.i.i_crit_edge: ; preds = %for.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53.thread.i.i.i

if.end32.i.i.i:                                   ; preds = %for.end28.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbSeq.addr.1.i.i.i)
  %tobool33.not.i.i.i = icmp eq i32 %nbSeq.addr.1.i.i.i, 0
  br i1 %tobool33.not.i.i.i, label %if.end35.i.i.i, label %if.end32.i.i.i.cleanup53.thread.i.i.i_crit_edge

if.end32.i.i.i.cleanup53.thread.i.i.i_crit_edge:  ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53.thread.i.i.i

if.end35.i.i.i:                                   ; preds = %if.end32.i.i.i
  %914 = ptrtoint ptr %bitsConsumed.i.i.i.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load i32, ptr %bitsConsumed.i.i.i.i.i.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %915)
  %cmp.i157.i.i.i = icmp ugt i32 %915, 32
  br i1 %cmp.i157.i.i.i, label %if.end35.i.i.i.BIT_reloadDStream.exit188.i.i.i_crit_edge, label %if.end.i161.i.i.i

if.end35.i.i.i.BIT_reloadDStream.exit188.i.i.i_crit_edge: ; preds = %if.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit188.i.i.i

if.end.i161.i.i.i:                                ; preds = %if.end35.i.i.i
  %916 = ptrtoint ptr %ptr.i327.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load ptr, ptr %ptr.i327.i.i.i.i, align 4
  %918 = ptrtoint ptr %limitPtr.i.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load ptr, ptr %limitPtr.i.i.i.i98, align 4
  %cmp1.not.i160.i.i.i = icmp ult ptr %917, %919
  br i1 %cmp1.not.i160.i.i.i, label %if.end3.i169.i.i.i, label %if.end.i161.i.i.i.cleanup53.thread.i.i.i_crit_edge

if.end.i161.i.i.i.cleanup53.thread.i.i.i_crit_edge: ; preds = %if.end.i161.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53.thread.i.i.i

if.end3.i169.i.i.i:                               ; preds = %if.end.i161.i.i.i
  %920 = ptrtoint ptr %start.i.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load ptr, ptr %start.i.i.i.i97, align 4
  %cmp5.i168.i.i.i = icmp ne ptr %917, %921
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %915)
  %cmp8.i170.i.i.i = icmp ult i32 %915, 32
  %or.cond.i.i = select i1 %cmp5.i168.i.i.i, i1 true, i1 %cmp8.i170.i.i.i
  br i1 %or.cond.i.i, label %if.end3.i169.i.i.i.cleanup53.thread.i.i.i_crit_edge, label %if.end3.i169.i.i.i.BIT_reloadDStream.exit188.i.i.i_crit_edge

if.end3.i169.i.i.i.BIT_reloadDStream.exit188.i.i.i_crit_edge: ; preds = %if.end3.i169.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %BIT_reloadDStream.exit188.i.i.i

if.end3.i169.i.i.i.cleanup53.thread.i.i.i_crit_edge: ; preds = %if.end3.i169.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53.thread.i.i.i

BIT_reloadDStream.exit188.i.i.i:                  ; preds = %if.end3.i169.i.i.i.BIT_reloadDStream.exit188.i.i.i_crit_edge, %if.end35.i.i.i.BIT_reloadDStream.exit188.i.i.i_crit_edge
  %922 = call ptr @memcpy(ptr %uglygep213.i.i.i, ptr %uglygep.i.i.i95, i32 12)
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %seqState.i.i.i85) #9
  br label %if.end57.i.i.i

cleanup53.thread.i.i.i:                           ; preds = %if.end3.i169.i.i.i.cleanup53.thread.i.i.i_crit_edge, %if.end.i161.i.i.i.cleanup53.thread.i.i.i_crit_edge, %if.end32.i.i.i.cleanup53.thread.i.i.i_crit_edge, %for.end28.i.i.i.cleanup53.thread.i.i.i_crit_edge, %BIT_initDStream.exit.i.i.i125.cleanup53.thread.i.i.i_crit_edge, %sw.epilog.i.i.i.i117.cleanup53.thread.i.i.i_crit_edge, %if.then3.i.i.i.i103.cleanup53.thread.i.i.i_crit_edge, %if.then.i.i.i96.cleanup53.thread.i.i.i_crit_edge
  %retval.0.ph.i.i.i = phi i32 [ -20, %if.end32.i.i.i.cleanup53.thread.i.i.i_crit_edge ], [ %error.1.i.i.i, %for.end28.i.i.i.cleanup53.thread.i.i.i_crit_edge ], [ -20, %BIT_initDStream.exit.i.i.i125.cleanup53.thread.i.i.i_crit_edge ], [ -20, %if.then.i.i.i96.cleanup53.thread.i.i.i_crit_edge ], [ -20, %if.then3.i.i.i.i103.cleanup53.thread.i.i.i_crit_edge ], [ -20, %sw.epilog.i.i.i.i117.cleanup53.thread.i.i.i_crit_edge ], [ -20, %if.end3.i169.i.i.i.cleanup53.thread.i.i.i_crit_edge ], [ -20, %if.end.i161.i.i.i.cleanup53.thread.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %seqState.i.i.i85) #9
  br label %ZSTD_decompressSequences.exit

if.end57.i.i.i:                                   ; preds = %BIT_reloadDStream.exit188.i.i.i, %entry.if.end57_crit_edge.i.i.i
  %sub.ptr.lhs.cast61.pre-phi.i.i.i = phi i32 [ %.pre.i.i.i, %entry.if.end57_crit_edge.i.i.i ], [ %sub.ptr.lhs.cast.i.i.i.i145, %BIT_reloadDStream.exit188.i.i.i ]
  %op.2.i.i.i = phi ptr [ %dst, %entry.if.end57_crit_edge.i.i.i ], [ %add.ptr17.i.i.i, %BIT_reloadDStream.exit188.i.i.i ]
  %923 = ptrtoint ptr %litPtr.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %923)
  %924 = load ptr, ptr %litPtr.i.i.i84, align 4
  %sub.ptr.lhs.cast58.i.i.i = ptrtoint ptr %add.ptr3.i.i.i89 to i32
  %sub.ptr.rhs.cast59.i.i.i = ptrtoint ptr %924 to i32
  %sub.ptr.sub60.i.i.i = sub i32 %sub.ptr.lhs.cast58.i.i.i, %sub.ptr.rhs.cast59.i.i.i
  %sub.ptr.rhs.cast62.i.i.i = ptrtoint ptr %op.2.i.i.i to i32
  %sub.ptr.sub63.i.i.i = sub i32 %sub.ptr.lhs.cast61.pre-phi.i.i.i, %sub.ptr.rhs.cast62.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub60.i.i.i, i32 %sub.ptr.sub63.i.i.i)
  %cmp64.i.i.i = icmp ugt i32 %sub.ptr.sub60.i.i.i, %sub.ptr.sub63.i.i.i
  br i1 %cmp64.i.i.i, label %if.end57.i.i.i.ZSTD_decompressSequences.exit_crit_edge, label %if.end66.i.i.i537

if.end57.i.i.i.ZSTD_decompressSequences.exit_crit_edge: ; preds = %if.end57.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_decompressSequences.exit

if.end66.i.i.i537:                                ; preds = %if.end57.i.i.i
  %cmp67.not.i.i.i = icmp eq ptr %op.2.i.i.i, null
  br i1 %cmp67.not.i.i.i, label %if.end66.i.i.i537.cleanup.cont73.i.i.i_crit_edge, label %if.then68.i.i.i

if.end66.i.i.i537.cleanup.cont73.i.i.i_crit_edge: ; preds = %if.end66.i.i.i537
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.cont73.i.i.i

if.then68.i.i.i:                                  ; preds = %if.end66.i.i.i537
  call void @__sanitizer_cov_trace_pc() #11
  %925 = call ptr @memcpy(ptr %op.2.i.i.i, ptr %924, i32 %sub.ptr.sub60.i.i.i)
  %add.ptr69.i.i.i = getelementptr i8, ptr %op.2.i.i.i, i32 %sub.ptr.sub60.i.i.i
  %phi.cast.i.i.i538 = ptrtoint ptr %add.ptr69.i.i.i to i32
  br label %cleanup.cont73.i.i.i

cleanup.cont73.i.i.i:                             ; preds = %if.then68.i.i.i, %if.end66.i.i.i537.cleanup.cont73.i.i.i_crit_edge
  %op.4.ph.i.i.i = phi i32 [ 0, %if.end66.i.i.i537.cleanup.cont73.i.i.i_crit_edge ], [ %phi.cast.i.i.i538, %if.then68.i.i.i ]
  %sub.ptr.rhs.cast75.i.i.i = ptrtoint ptr %dst to i32
  %sub.ptr.sub76.i.i.i = sub i32 %op.4.ph.i.i.i, %sub.ptr.rhs.cast75.i.i.i
  br label %ZSTD_decompressSequences.exit

ZSTD_decompressSequences.exit:                    ; preds = %cleanup.cont73.i.i.i, %if.end57.i.i.i.ZSTD_decompressSequences.exit_crit_edge, %cleanup53.thread.i.i.i
  %retval.3.i.i.i = phi i32 [ %sub.ptr.sub76.i.i.i, %cleanup.cont73.i.i.i ], [ %retval.0.ph.i.i.i, %cleanup53.thread.i.i.i ], [ -70, %if.end57.i.i.i.ZSTD_decompressSequences.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %litPtr.i.i.i84) #9
  br label %cleanup42

cleanup42:                                        ; preds = %ZSTD_decompressSequences.exit, %ZSTD_decompressSequencesLong.exit, %land.lhs.true.cleanup42_crit_edge, %cleanup.cont.cleanup42_crit_edge
  %retval.1 = phi i32 [ %retval.7.i.i.i, %ZSTD_decompressSequencesLong.exit ], [ %retval.3.i.i.i, %ZSTD_decompressSequences.exit ], [ %call10, %cleanup.cont.cleanup42_crit_edge ], [ -70, %land.lhs.true.cleanup42_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nbSeq) #9
  br label %cleanup45

cleanup45:                                        ; preds = %cleanup42, %if.end.cleanup45_crit_edge, %land.end.cleanup45_crit_edge
  %retval.2 = phi i32 [ %retval.1, %cleanup42 ], [ %call5, %if.end.cleanup45_crit_edge ], [ -72, %land.end.cleanup45_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ZSTD_checkContinuity(ptr nocapture noundef %dctx, ptr noundef %dst, i32 noundef %dstSize) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %previousDstEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 6
  %0 = ptrtoint ptr %previousDstEnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %previousDstEnd, align 4
  %cmp.not = icmp eq ptr %1, %dst
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dstSize)
  %cmp1.not = icmp eq i32 %dstSize, 0
  %or.cond = or i1 %cmp1.not, %cmp.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dictEnd = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 9
  %2 = ptrtoint ptr %dictEnd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %dictEnd, align 8
  %prefixStart = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 7
  %3 = ptrtoint ptr %prefixStart to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prefixStart, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %4 to i32
  %sub.ptr.sub.neg = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %add.ptr = getelementptr i8, ptr %dst, i32 %sub.ptr.sub.neg
  %virtualStart = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 8
  %5 = ptrtoint ptr %virtualStart to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %virtualStart, align 4
  store ptr %dst, ptr %prefixStart, align 8
  %6 = ptrtoint ptr %previousDstEnd to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dst, ptr %previousDstEnd, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_decompressBlock(ptr noundef %dctx, ptr noundef %dst, i32 noundef %dstCapacity, ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %previousDstEnd.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 6
  %0 = ptrtoint ptr %previousDstEnd.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %previousDstEnd.i, align 4
  %cmp.not.i = icmp eq ptr %1, %dst
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dstCapacity)
  %cmp1.not.i = icmp eq i32 %dstCapacity, 0
  %or.cond.i = or i1 %cmp1.not.i, %cmp.not.i
  br i1 %or.cond.i, label %entry.ZSTD_checkContinuity.exit_crit_edge, label %if.then.i

entry.ZSTD_checkContinuity.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_checkContinuity.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dictEnd.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 9
  %2 = ptrtoint ptr %dictEnd.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %dictEnd.i, align 8
  %prefixStart.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 7
  %3 = ptrtoint ptr %prefixStart.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prefixStart.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.neg.i = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %add.ptr.i = getelementptr i8, ptr %dst, i32 %sub.ptr.sub.neg.i
  %virtualStart.i = getelementptr inbounds %struct.ZSTD_DCtx_s, ptr %dctx, i32 0, i32 8
  %5 = ptrtoint ptr %virtualStart.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i, ptr %virtualStart.i, align 4
  store ptr %dst, ptr %prefixStart.i, align 8
  %6 = ptrtoint ptr %previousDstEnd.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dst, ptr %previousDstEnd.i, align 4
  br label %ZSTD_checkContinuity.exit

ZSTD_checkContinuity.exit:                        ; preds = %if.then.i, %entry.ZSTD_checkContinuity.exit_crit_edge
  %call = tail call i32 @ZSTD_decompressBlock_internal(ptr noundef %dctx, ptr noundef %dst, i32 noundef %dstCapacity, ptr noundef %src, i32 noundef %srcSize, i32 noundef 0)
  %add.ptr = getelementptr i8, ptr %dst, i32 %call
  %7 = ptrtoint ptr %previousDstEnd.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %previousDstEnd.i, align 4
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @FSE_readNCount(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_execSequenceEnd(ptr noundef %op, ptr noundef %oend, [4 x i32] %sequence.coerce, ptr nocapture noundef %litPtr, ptr noundef %litLimit, ptr noundef %prefixStart, ptr noundef %virtualStart, ptr noundef readonly %dictEnd) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sequence.coerce.fca.0.extract = extractvalue [4 x i32] %sequence.coerce, 0
  %sequence.coerce.fca.1.extract = extractvalue [4 x i32] %sequence.coerce, 1
  %sequence.coerce.fca.2.extract = extractvalue [4 x i32] %sequence.coerce, 2
  %add.ptr = getelementptr i8, ptr %op, i32 %sequence.coerce.fca.0.extract
  %add = add i32 %sequence.coerce.fca.0.extract, %sequence.coerce.fca.1.extract
  %0 = ptrtoint ptr %litPtr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %litPtr, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 %sequence.coerce.fca.0.extract
  %idx.neg = sub i32 0, %sequence.coerce.fca.2.extract
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %add.ptr5 = getelementptr i8, ptr %oend, i32 -32
  %sub.ptr.lhs.cast = ptrtoint ptr %oend to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %op to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.ptr.sub)
  %cmp = icmp ugt i32 %add, %sub.ptr.sub
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub.ptr.lhs.cast7 = ptrtoint ptr %litLimit to i32
  %sub.ptr.rhs.cast8 = ptrtoint ptr %1 to i32
  %sub.ptr.sub9 = sub i32 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8
  call void @__sanitizer_cov_trace_cmp4(i32 %sequence.coerce.fca.0.extract, i32 %sub.ptr.sub9)
  %cmp10 = icmp ugt i32 %sequence.coerce.fca.0.extract, %sub.ptr.sub9
  br i1 %cmp10, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sequence.coerce.fca.0.extract)
  %cmp.i = icmp slt i32 %sequence.coerce.fca.0.extract, 8
  br i1 %cmp.i, label %while.cond.preheader.i, label %if.end.i

while.cond.preheader.i:                           ; preds = %if.end12
  %cmp1100.i = icmp ugt ptr %add.ptr, %op
  br i1 %cmp1100.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.ZSTD_safecopy.exit_crit_edge

while.cond.preheader.i.ZSTD_safecopy.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_safecopy.exit

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %ip.addr.0102.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %1, %while.cond.preheader.i.while.body.i_crit_edge ]
  %op.addr.0101.i = phi ptr [ %incdec.ptr2.i, %while.body.i.while.body.i_crit_edge ], [ %op, %while.cond.preheader.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %ip.addr.0102.i, i32 1
  %2 = ptrtoint ptr %ip.addr.0102.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ip.addr.0102.i, align 1
  %incdec.ptr2.i = getelementptr i8, ptr %op.addr.0101.i, i32 1
  %4 = ptrtoint ptr %op.addr.0101.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %op.addr.0101.i, align 1
  %exitcond.not.i = icmp eq ptr %incdec.ptr2.i, %add.ptr
  br i1 %exitcond.not.i, label %while.body.i.ZSTD_safecopy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.ZSTD_safecopy.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_safecopy.exit

if.end.i:                                         ; preds = %if.end12
  %cmp6.not.i = icmp ugt ptr %add.ptr, %add.ptr5
  br i1 %cmp6.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  %5 = call ptr @memcpy(ptr %op, ptr %1, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sequence.coerce.fca.0.extract)
  %cmp5.i.i = icmp ult i32 %sequence.coerce.fca.0.extract, 17
  br i1 %cmp5.i.i, label %if.then7.i.ZSTD_safecopy.exit_crit_edge, label %if.end.i.i

if.then7.i.ZSTD_safecopy.exit_crit_edge:          ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_safecopy.exit

if.end.i.i:                                       ; preds = %if.then7.i
  %add.ptr7.i.i = getelementptr i8, ptr %op, i32 16
  br label %do.body9.i.i

do.body9.i.i:                                     ; preds = %do.body9.i.i.do.body9.i.i_crit_edge, %if.end.i.i
  %src.pn.i.i = phi ptr [ %1, %if.end.i.i ], [ %add.ptr11.i40.i, %do.body9.i.i.do.body9.i.i_crit_edge ]
  %op.1.i.i = phi ptr [ %add.ptr7.i.i, %if.end.i.i ], [ %add.ptr12.i41.i, %do.body9.i.i.do.body9.i.i_crit_edge ]
  %ip.1.i.i = getelementptr i8, ptr %src.pn.i.i, i32 16
  %6 = call ptr @memcpy(ptr %op.1.i.i, ptr %ip.1.i.i, i32 16)
  %add.ptr10.i39.i = getelementptr i8, ptr %op.1.i.i, i32 16
  %add.ptr11.i40.i = getelementptr i8, ptr %src.pn.i.i, i32 32
  %7 = call ptr @memcpy(ptr %add.ptr10.i39.i, ptr %add.ptr11.i40.i, i32 16)
  %add.ptr12.i41.i = getelementptr i8, ptr %op.1.i.i, i32 32
  %cmp15.i.i = icmp ult ptr %add.ptr12.i41.i, %add.ptr
  br i1 %cmp15.i.i, label %do.body9.i.i.do.body9.i.i_crit_edge, label %do.body9.i.i.ZSTD_safecopy.exit_crit_edge

do.body9.i.i.ZSTD_safecopy.exit_crit_edge:        ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_safecopy.exit

do.body9.i.i.do.body9.i.i_crit_edge:              ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9.i.i

if.end8.i:                                        ; preds = %if.end.i
  %cmp9.not.i = icmp ult ptr %add.ptr5, %op
  br i1 %cmp9.not.i, label %if.end8.i.if.end18.i_crit_edge, label %if.then10.i

if.end8.i.if.end18.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then10.i:                                      ; preds = %if.end8.i
  %sub.ptr.lhs.cast11.i = ptrtoint ptr %add.ptr5 to i32
  %sub.ptr.sub13.i = sub i32 %sub.ptr.lhs.cast11.i, %sub.ptr.rhs.cast
  %add.ptr.i42.i = getelementptr i8, ptr %op, i32 %sub.ptr.sub13.i
  %8 = call ptr @memcpy(ptr %op, ptr %1, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub.ptr.sub13.i)
  %cmp5.i55.i = icmp slt i32 %sub.ptr.sub13.i, 17
  br i1 %cmp5.i55.i, label %if.then10.i.ZSTD_wildcopy.exit67.i_crit_edge, label %if.end.i58.i

if.then10.i.ZSTD_wildcopy.exit67.i_crit_edge:     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_wildcopy.exit67.i

if.end.i58.i:                                     ; preds = %if.then10.i
  %add.ptr7.i57.i = getelementptr i8, ptr %op, i32 16
  br label %do.body9.i66.i

do.body9.i66.i:                                   ; preds = %do.body9.i66.i.do.body9.i66.i_crit_edge, %if.end.i58.i
  %src.pn.i59.i = phi ptr [ %1, %if.end.i58.i ], [ %add.ptr11.i63.i, %do.body9.i66.i.do.body9.i66.i_crit_edge ]
  %op.1.i60.i = phi ptr [ %add.ptr7.i57.i, %if.end.i58.i ], [ %add.ptr12.i64.i, %do.body9.i66.i.do.body9.i66.i_crit_edge ]
  %ip.1.i61.i = getelementptr i8, ptr %src.pn.i59.i, i32 16
  %9 = call ptr @memcpy(ptr %op.1.i60.i, ptr %ip.1.i61.i, i32 16)
  %add.ptr10.i62.i = getelementptr i8, ptr %op.1.i60.i, i32 16
  %add.ptr11.i63.i = getelementptr i8, ptr %src.pn.i59.i, i32 32
  %10 = call ptr @memcpy(ptr %add.ptr10.i62.i, ptr %add.ptr11.i63.i, i32 16)
  %add.ptr12.i64.i = getelementptr i8, ptr %op.1.i60.i, i32 32
  %cmp15.i65.i = icmp ult ptr %add.ptr12.i64.i, %add.ptr.i42.i
  br i1 %cmp15.i65.i, label %do.body9.i66.i.do.body9.i66.i_crit_edge, label %do.body9.i66.i.ZSTD_wildcopy.exit67.i_crit_edge

do.body9.i66.i.ZSTD_wildcopy.exit67.i_crit_edge:  ; preds = %do.body9.i66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_wildcopy.exit67.i

do.body9.i66.i.do.body9.i66.i_crit_edge:          ; preds = %do.body9.i66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9.i66.i

ZSTD_wildcopy.exit67.i:                           ; preds = %do.body9.i66.i.ZSTD_wildcopy.exit67.i_crit_edge, %if.then10.i.ZSTD_wildcopy.exit67.i_crit_edge
  %add.ptr17.i = getelementptr i8, ptr %1, i32 %sub.ptr.sub13.i
  br label %if.end18.i

if.end18.i:                                       ; preds = %ZSTD_wildcopy.exit67.i, %if.end8.i.if.end18.i_crit_edge
  %op.addr.2.i = phi ptr [ %op, %if.end8.i.if.end18.i_crit_edge ], [ %add.ptr5, %ZSTD_wildcopy.exit67.i ]
  %ip.addr.3.i = phi ptr [ %1, %if.end8.i.if.end18.i_crit_edge ], [ %add.ptr17.i, %ZSTD_wildcopy.exit67.i ]
  %cmp2097.i = icmp ult ptr %op.addr.2.i, %add.ptr
  br i1 %cmp2097.i, label %if.end18.i.while.body21.i_crit_edge, label %if.end18.i.ZSTD_safecopy.exit_crit_edge

if.end18.i.ZSTD_safecopy.exit_crit_edge:          ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_safecopy.exit

if.end18.i.while.body21.i_crit_edge:              ; preds = %if.end18.i
  br label %while.body21.i

while.body21.i:                                   ; preds = %while.body21.i.while.body21.i_crit_edge, %if.end18.i.while.body21.i_crit_edge
  %ip.addr.499.i = phi ptr [ %incdec.ptr22.i, %while.body21.i.while.body21.i_crit_edge ], [ %ip.addr.3.i, %if.end18.i.while.body21.i_crit_edge ]
  %op.addr.398.i = phi ptr [ %incdec.ptr23.i, %while.body21.i.while.body21.i_crit_edge ], [ %op.addr.2.i, %if.end18.i.while.body21.i_crit_edge ]
  %incdec.ptr22.i = getelementptr i8, ptr %ip.addr.499.i, i32 1
  %11 = ptrtoint ptr %ip.addr.499.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ip.addr.499.i, align 1
  %incdec.ptr23.i = getelementptr i8, ptr %op.addr.398.i, i32 1
  %13 = ptrtoint ptr %op.addr.398.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %op.addr.398.i, align 1
  %cmp20.i = icmp ult ptr %incdec.ptr23.i, %add.ptr
  br i1 %cmp20.i, label %while.body21.i.while.body21.i_crit_edge, label %while.body21.i.ZSTD_safecopy.exit_crit_edge

while.body21.i.ZSTD_safecopy.exit_crit_edge:      ; preds = %while.body21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_safecopy.exit

while.body21.i.while.body21.i_crit_edge:          ; preds = %while.body21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body21.i

ZSTD_safecopy.exit:                               ; preds = %while.body21.i.ZSTD_safecopy.exit_crit_edge, %if.end18.i.ZSTD_safecopy.exit_crit_edge, %do.body9.i.i.ZSTD_safecopy.exit_crit_edge, %if.then7.i.ZSTD_safecopy.exit_crit_edge, %while.body.i.ZSTD_safecopy.exit_crit_edge, %while.cond.preheader.i.ZSTD_safecopy.exit_crit_edge
  %14 = ptrtoint ptr %litPtr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr3, ptr %litPtr, align 4
  %sub.ptr.lhs.cast15 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast16 = ptrtoint ptr %prefixStart to i32
  %sub.ptr.sub17 = sub i32 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16
  call void @__sanitizer_cov_trace_cmp4(i32 %sequence.coerce.fca.2.extract, i32 %sub.ptr.sub17)
  %cmp18 = icmp ugt i32 %sequence.coerce.fca.2.extract, %sub.ptr.sub17
  br i1 %cmp18, label %if.then19, label %ZSTD_safecopy.exit.if.end43_crit_edge

ZSTD_safecopy.exit.if.end43_crit_edge:            ; preds = %ZSTD_safecopy.exit
  call void @__sanitizer_cov_trace_pc() #11
  %.pre164 = ptrtoint ptr %add.ptr4 to i32
  br label %if.end43

if.then19:                                        ; preds = %ZSTD_safecopy.exit
  %sub.ptr.rhs.cast22 = ptrtoint ptr %virtualStart to i32
  %sub.ptr.sub23 = sub i32 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast22
  call void @__sanitizer_cov_trace_cmp4(i32 %sequence.coerce.fca.2.extract, i32 %sub.ptr.sub23)
  %cmp24 = icmp ugt i32 %sequence.coerce.fca.2.extract, %sub.ptr.sub23
  br i1 %cmp24, label %if.then19.cleanup_crit_edge, label %if.end26

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.then19
  %sub.ptr.rhs.cast28 = ptrtoint ptr %add.ptr4 to i32
  %sub.ptr.sub29.neg = sub i32 %sub.ptr.rhs.cast28, %sub.ptr.rhs.cast16
  %add.ptr31 = getelementptr i8, ptr %dictEnd, i32 %sub.ptr.sub29.neg
  %add.ptr33 = getelementptr i8, ptr %add.ptr31, i32 %sequence.coerce.fca.1.extract
  %cmp34.not = icmp ugt ptr %add.ptr33, %dictEnd
  br i1 %cmp34.not, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %15 = call ptr @memmove(ptr %add.ptr, ptr %add.ptr31, i32 %sequence.coerce.fca.1.extract)
  br label %cleanup

if.end37:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %diff.neg = sub i32 0, %sub.ptr.sub29.neg
  %16 = call ptr @memmove(ptr %add.ptr, ptr %add.ptr31, i32 %diff.neg)
  %add.ptr41 = getelementptr i8, ptr %add.ptr, i32 %diff.neg
  %sub = add i32 %sub.ptr.sub29.neg, %sequence.coerce.fca.1.extract
  %.pre = ptrtoint ptr %add.ptr41 to i32
  br label %if.end43

if.end43:                                         ; preds = %if.end37, %ZSTD_safecopy.exit.if.end43_crit_edge
  %sub.ptr.rhs.cast.i87.pre-phi = phi i32 [ %.pre164, %ZSTD_safecopy.exit.if.end43_crit_edge ], [ %sub.ptr.rhs.cast16, %if.end37 ]
  %sub.ptr.lhs.cast.i86.pre-phi = phi i32 [ %sub.ptr.lhs.cast15, %ZSTD_safecopy.exit.if.end43_crit_edge ], [ %.pre, %if.end37 ]
  %op.addr.0 = phi ptr [ %add.ptr, %ZSTD_safecopy.exit.if.end43_crit_edge ], [ %add.ptr41, %if.end37 ]
  %sequence.sroa.6.0 = phi i32 [ %sequence.coerce.fca.1.extract, %ZSTD_safecopy.exit.if.end43_crit_edge ], [ %sub, %if.end37 ]
  %match.0 = phi ptr [ %add.ptr4, %ZSTD_safecopy.exit.if.end43_crit_edge ], [ %prefixStart, %if.end37 ]
  %sub.ptr.sub.i88 = sub i32 %sub.ptr.lhs.cast.i86.pre-phi, %sub.ptr.rhs.cast.i87.pre-phi
  %add.ptr.i89 = getelementptr i8, ptr %op.addr.0, i32 %sequence.sroa.6.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sequence.sroa.6.0)
  %cmp.i90 = icmp slt i32 %sequence.sroa.6.0, 8
  br i1 %cmp.i90, label %while.cond.preheader.i92, label %if.end.i99

while.cond.preheader.i92:                         ; preds = %if.end43
  %cmp1100.i91 = icmp ugt ptr %add.ptr.i89, %op.addr.0
  br i1 %cmp1100.i91, label %while.cond.preheader.i92.while.body.i98_crit_edge, label %while.cond.preheader.i92.cleanup_crit_edge

while.cond.preheader.i92.cleanup_crit_edge:       ; preds = %while.cond.preheader.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader.i92.while.body.i98_crit_edge: ; preds = %while.cond.preheader.i92
  br label %while.body.i98

while.body.i98:                                   ; preds = %while.body.i98.while.body.i98_crit_edge, %while.cond.preheader.i92.while.body.i98_crit_edge
  %ip.addr.0102.i93 = phi ptr [ %incdec.ptr.i95, %while.body.i98.while.body.i98_crit_edge ], [ %match.0, %while.cond.preheader.i92.while.body.i98_crit_edge ]
  %op.addr.0101.i94 = phi ptr [ %incdec.ptr2.i96, %while.body.i98.while.body.i98_crit_edge ], [ %op.addr.0, %while.cond.preheader.i92.while.body.i98_crit_edge ]
  %incdec.ptr.i95 = getelementptr i8, ptr %ip.addr.0102.i93, i32 1
  %17 = ptrtoint ptr %ip.addr.0102.i93 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ip.addr.0102.i93, align 1
  %incdec.ptr2.i96 = getelementptr i8, ptr %op.addr.0101.i94, i32 1
  %19 = ptrtoint ptr %op.addr.0101.i94 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %op.addr.0101.i94, align 1
  %exitcond.not.i97 = icmp eq ptr %incdec.ptr2.i96, %add.ptr.i89
  br i1 %exitcond.not.i97, label %while.body.i98.cleanup_crit_edge, label %while.body.i98.while.body.i98_crit_edge

while.body.i98.while.body.i98_crit_edge:          ; preds = %while.body.i98
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i98

while.body.i98.cleanup_crit_edge:                 ; preds = %while.body.i98
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i99:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i88)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i88, 8
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr [8 x i32], ptr @ZSTD_overlapCopy8.dec64table, i32 0, i32 %sub.ptr.sub.i88
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  %22 = ptrtoint ptr %match.0 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %match.0, align 1
  %24 = ptrtoint ptr %op.addr.0 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %op.addr.0, align 1
  %arrayidx3.i.i = getelementptr i8, ptr %match.0, i32 1
  %25 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx3.i.i, align 1
  %arrayidx4.i.i = getelementptr i8, ptr %op.addr.0, i32 1
  %27 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx4.i.i, align 1
  %arrayidx5.i.i = getelementptr i8, ptr %match.0, i32 2
  %28 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx5.i.i, align 1
  %arrayidx6.i.i = getelementptr i8, ptr %op.addr.0, i32 2
  %30 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx6.i.i, align 1
  %arrayidx7.i.i = getelementptr i8, ptr %match.0, i32 3
  %31 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx7.i.i, align 1
  %arrayidx8.i.i = getelementptr i8, ptr %op.addr.0, i32 3
  %33 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx8.i.i, align 1
  %arrayidx9.i.i = getelementptr [8 x i32], ptr @ZSTD_overlapCopy8.dec32table, i32 0, i32 %sub.ptr.sub.i88
  %34 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx9.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %match.0, i32 %35
  %add.ptr10.i.i = getelementptr i8, ptr %op.addr.0, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %add.ptr.i.i, align 1
  %38 = ptrtoint ptr %add.ptr10.i.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %add.ptr10.i.i, align 1
  %idx.neg.i.i = sub i32 0, %21
  %add.ptr11.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %idx.neg.i.i
  br label %ZSTD_overlapCopy8.exit.i

if.else.i.i:                                      ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %match.0 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %match.0, align 1
  %41 = ptrtoint ptr %op.addr.0 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %40, ptr %op.addr.0, align 1
  br label %ZSTD_overlapCopy8.exit.i

ZSTD_overlapCopy8.exit.i:                         ; preds = %if.else.i.i, %if.then.i.i
  %ip.addr.1.i = phi ptr [ %add.ptr11.i.i, %if.then.i.i ], [ %match.0, %if.else.i.i ]
  %add.ptr12.i.i = getelementptr i8, ptr %ip.addr.1.i, i32 8
  %add.ptr13.i.i = getelementptr i8, ptr %op.addr.0, i32 8
  %cmp6.not.i100 = icmp ugt ptr %add.ptr.i89, %add.ptr5
  br i1 %cmp6.not.i100, label %if.end8.i119, label %if.then7.i106

if.then7.i106:                                    ; preds = %ZSTD_overlapCopy8.exit.i
  %add.ptr.i36.i101 = getelementptr i8, ptr %add.ptr13.i.i, i32 %sequence.sroa.6.0
  %sub.ptr.lhs.cast.i.i102 = ptrtoint ptr %add.ptr13.i.i to i32
  %sub.ptr.rhs.cast.i.i103 = ptrtoint ptr %add.ptr12.i.i to i32
  %sub.ptr.sub.i.i104 = sub i32 %sub.ptr.lhs.cast.i.i102, %sub.ptr.rhs.cast.i.i103
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i104)
  %cmp1.i.i105 = icmp slt i32 %sub.ptr.sub.i.i104, 16
  br i1 %cmp1.i.i105, label %if.then7.i106.do.body.i.i_crit_edge, label %if.else.i38.i

if.then7.i106.do.body.i.i_crit_edge:              ; preds = %if.then7.i106
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then7.i106.do.body.i.i_crit_edge
  %ip.0.i.i = phi ptr [ %add.ptr3.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %add.ptr12.i.i, %if.then7.i106.do.body.i.i_crit_edge ]
  %op.0.i.i = phi ptr [ %add.ptr2.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %add.ptr13.i.i, %if.then7.i106.do.body.i.i_crit_edge ]
  %42 = ptrtoint ptr %ip.0.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %ip.0.i.i, align 1
  %44 = ptrtoint ptr %op.0.i.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 %43, ptr %op.0.i.i, align 1
  %add.ptr2.i.i = getelementptr i8, ptr %op.0.i.i, i32 8
  %add.ptr3.i.i = getelementptr i8, ptr %ip.0.i.i, i32 8
  %cmp4.i.i = icmp ult ptr %add.ptr2.i.i, %add.ptr.i36.i101
  br i1 %cmp4.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.body.i.i.cleanup_crit_edge

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

if.else.i38.i:                                    ; preds = %if.then7.i106
  %45 = call ptr @memcpy(ptr %add.ptr13.i.i, ptr %add.ptr12.i.i, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sequence.sroa.6.0)
  %cmp5.i.i107 = icmp ult i32 %sequence.sroa.6.0, 17
  br i1 %cmp5.i.i107, label %if.else.i38.i.cleanup_crit_edge, label %if.end.i.i109

if.else.i38.i.cleanup_crit_edge:                  ; preds = %if.else.i38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i109:                                    ; preds = %if.else.i38.i
  %add.ptr7.i.i108 = getelementptr i8, ptr %op.addr.0, i32 24
  br label %do.body9.i.i117

do.body9.i.i117:                                  ; preds = %do.body9.i.i117.do.body9.i.i117_crit_edge, %if.end.i.i109
  %src.pn.i.i110 = phi ptr [ %add.ptr12.i.i, %if.end.i.i109 ], [ %add.ptr11.i40.i114, %do.body9.i.i117.do.body9.i.i117_crit_edge ]
  %op.1.i.i111 = phi ptr [ %add.ptr7.i.i108, %if.end.i.i109 ], [ %add.ptr12.i41.i115, %do.body9.i.i117.do.body9.i.i117_crit_edge ]
  %ip.1.i.i112 = getelementptr i8, ptr %src.pn.i.i110, i32 16
  %46 = call ptr @memcpy(ptr %op.1.i.i111, ptr %ip.1.i.i112, i32 16)
  %add.ptr10.i39.i113 = getelementptr i8, ptr %op.1.i.i111, i32 16
  %add.ptr11.i40.i114 = getelementptr i8, ptr %src.pn.i.i110, i32 32
  %47 = call ptr @memcpy(ptr %add.ptr10.i39.i113, ptr %add.ptr11.i40.i114, i32 16)
  %add.ptr12.i41.i115 = getelementptr i8, ptr %op.1.i.i111, i32 32
  %cmp15.i.i116 = icmp ult ptr %add.ptr12.i41.i115, %add.ptr.i36.i101
  br i1 %cmp15.i.i116, label %do.body9.i.i117.do.body9.i.i117_crit_edge, label %do.body9.i.i117.cleanup_crit_edge

do.body9.i.i117.cleanup_crit_edge:                ; preds = %do.body9.i.i117
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body9.i.i117.do.body9.i.i117_crit_edge:        ; preds = %do.body9.i.i117
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9.i.i117

if.end8.i119:                                     ; preds = %ZSTD_overlapCopy8.exit.i
  %cmp9.not.i118 = icmp ugt ptr %add.ptr13.i.i, %add.ptr5
  br i1 %cmp9.not.i118, label %if.end8.i119.if.end18.i144_crit_edge, label %if.then10.i127

if.end8.i119.if.end18.i144_crit_edge:             ; preds = %if.end8.i119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i144

if.then10.i127:                                   ; preds = %if.end8.i119
  %sub.ptr.lhs.cast11.i120 = ptrtoint ptr %add.ptr5 to i32
  %sub.ptr.rhs.cast12.i121 = ptrtoint ptr %add.ptr13.i.i to i32
  %sub.ptr.sub13.i122 = sub i32 %sub.ptr.lhs.cast11.i120, %sub.ptr.rhs.cast12.i121
  %add.ptr.i42.i123 = getelementptr i8, ptr %add.ptr13.i.i, i32 %sub.ptr.sub13.i122
  %sub.ptr.rhs.cast.i45.i124 = ptrtoint ptr %add.ptr12.i.i to i32
  %sub.ptr.sub.i46.i125 = sub i32 %sub.ptr.rhs.cast12.i121, %sub.ptr.rhs.cast.i45.i124
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i46.i125)
  %cmp1.i47.i126 = icmp slt i32 %sub.ptr.sub.i46.i125, 16
  br i1 %cmp1.i47.i126, label %if.then10.i127.do.body.i54.i_crit_edge, label %if.else.i56.i

if.then10.i127.do.body.i54.i_crit_edge:           ; preds = %if.then10.i127
  br label %do.body.i54.i

do.body.i54.i:                                    ; preds = %do.body.i54.i.do.body.i54.i_crit_edge, %if.then10.i127.do.body.i54.i_crit_edge
  %ip.0.i49.i = phi ptr [ %add.ptr3.i52.i, %do.body.i54.i.do.body.i54.i_crit_edge ], [ %add.ptr12.i.i, %if.then10.i127.do.body.i54.i_crit_edge ]
  %op.0.i50.i = phi ptr [ %add.ptr2.i51.i, %do.body.i54.i.do.body.i54.i_crit_edge ], [ %add.ptr13.i.i, %if.then10.i127.do.body.i54.i_crit_edge ]
  %48 = ptrtoint ptr %ip.0.i49.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %ip.0.i49.i, align 1
  %50 = ptrtoint ptr %op.0.i50.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 %49, ptr %op.0.i50.i, align 1
  %add.ptr2.i51.i = getelementptr i8, ptr %op.0.i50.i, i32 8
  %add.ptr3.i52.i = getelementptr i8, ptr %ip.0.i49.i, i32 8
  %cmp4.i53.i = icmp ult ptr %add.ptr2.i51.i, %add.ptr.i42.i123
  br i1 %cmp4.i53.i, label %do.body.i54.i.do.body.i54.i_crit_edge, label %do.body.i54.i.ZSTD_wildcopy.exit67.i140_crit_edge

do.body.i54.i.ZSTD_wildcopy.exit67.i140_crit_edge: ; preds = %do.body.i54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_wildcopy.exit67.i140

do.body.i54.i.do.body.i54.i_crit_edge:            ; preds = %do.body.i54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i54.i

if.else.i56.i:                                    ; preds = %if.then10.i127
  %51 = call ptr @memcpy(ptr %add.ptr13.i.i, ptr %add.ptr12.i.i, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub.ptr.sub13.i122)
  %cmp5.i55.i128 = icmp slt i32 %sub.ptr.sub13.i122, 17
  br i1 %cmp5.i55.i128, label %if.else.i56.i.ZSTD_wildcopy.exit67.i140_crit_edge, label %if.end.i58.i130

if.else.i56.i.ZSTD_wildcopy.exit67.i140_crit_edge: ; preds = %if.else.i56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_wildcopy.exit67.i140

if.end.i58.i130:                                  ; preds = %if.else.i56.i
  %add.ptr7.i57.i129 = getelementptr i8, ptr %op.addr.0, i32 24
  br label %do.body9.i66.i138

do.body9.i66.i138:                                ; preds = %do.body9.i66.i138.do.body9.i66.i138_crit_edge, %if.end.i58.i130
  %src.pn.i59.i131 = phi ptr [ %add.ptr12.i.i, %if.end.i58.i130 ], [ %add.ptr11.i63.i135, %do.body9.i66.i138.do.body9.i66.i138_crit_edge ]
  %op.1.i60.i132 = phi ptr [ %add.ptr7.i57.i129, %if.end.i58.i130 ], [ %add.ptr12.i64.i136, %do.body9.i66.i138.do.body9.i66.i138_crit_edge ]
  %ip.1.i61.i133 = getelementptr i8, ptr %src.pn.i59.i131, i32 16
  %52 = call ptr @memcpy(ptr %op.1.i60.i132, ptr %ip.1.i61.i133, i32 16)
  %add.ptr10.i62.i134 = getelementptr i8, ptr %op.1.i60.i132, i32 16
  %add.ptr11.i63.i135 = getelementptr i8, ptr %src.pn.i59.i131, i32 32
  %53 = call ptr @memcpy(ptr %add.ptr10.i62.i134, ptr %add.ptr11.i63.i135, i32 16)
  %add.ptr12.i64.i136 = getelementptr i8, ptr %op.1.i60.i132, i32 32
  %cmp15.i65.i137 = icmp ult ptr %add.ptr12.i64.i136, %add.ptr.i42.i123
  br i1 %cmp15.i65.i137, label %do.body9.i66.i138.do.body9.i66.i138_crit_edge, label %do.body9.i66.i138.ZSTD_wildcopy.exit67.i140_crit_edge

do.body9.i66.i138.ZSTD_wildcopy.exit67.i140_crit_edge: ; preds = %do.body9.i66.i138
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_wildcopy.exit67.i140

do.body9.i66.i138.do.body9.i66.i138_crit_edge:    ; preds = %do.body9.i66.i138
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9.i66.i138

ZSTD_wildcopy.exit67.i140:                        ; preds = %do.body9.i66.i138.ZSTD_wildcopy.exit67.i140_crit_edge, %if.else.i56.i.ZSTD_wildcopy.exit67.i140_crit_edge, %do.body.i54.i.ZSTD_wildcopy.exit67.i140_crit_edge
  %add.ptr17.i139 = getelementptr i8, ptr %add.ptr12.i.i, i32 %sub.ptr.sub13.i122
  br label %if.end18.i144

if.end18.i144:                                    ; preds = %ZSTD_wildcopy.exit67.i140, %if.end8.i119.if.end18.i144_crit_edge
  %op.addr.2.i141 = phi ptr [ %add.ptr13.i.i, %if.end8.i119.if.end18.i144_crit_edge ], [ %add.ptr5, %ZSTD_wildcopy.exit67.i140 ]
  %ip.addr.3.i142 = phi ptr [ %add.ptr12.i.i, %if.end8.i119.if.end18.i144_crit_edge ], [ %add.ptr17.i139, %ZSTD_wildcopy.exit67.i140 ]
  %cmp2097.i143 = icmp ult ptr %op.addr.2.i141, %add.ptr.i89
  br i1 %cmp2097.i143, label %if.end18.i144.while.body21.i150_crit_edge, label %if.end18.i144.cleanup_crit_edge

if.end18.i144.cleanup_crit_edge:                  ; preds = %if.end18.i144
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18.i144.while.body21.i150_crit_edge:        ; preds = %if.end18.i144
  br label %while.body21.i150

while.body21.i150:                                ; preds = %while.body21.i150.while.body21.i150_crit_edge, %if.end18.i144.while.body21.i150_crit_edge
  %ip.addr.499.i145 = phi ptr [ %incdec.ptr22.i147, %while.body21.i150.while.body21.i150_crit_edge ], [ %ip.addr.3.i142, %if.end18.i144.while.body21.i150_crit_edge ]
  %op.addr.398.i146 = phi ptr [ %incdec.ptr23.i148, %while.body21.i150.while.body21.i150_crit_edge ], [ %op.addr.2.i141, %if.end18.i144.while.body21.i150_crit_edge ]
  %incdec.ptr22.i147 = getelementptr i8, ptr %ip.addr.499.i145, i32 1
  %54 = ptrtoint ptr %ip.addr.499.i145 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ip.addr.499.i145, align 1
  %incdec.ptr23.i148 = getelementptr i8, ptr %op.addr.398.i146, i32 1
  %56 = ptrtoint ptr %op.addr.398.i146 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %op.addr.398.i146, align 1
  %cmp20.i149 = icmp ult ptr %incdec.ptr23.i148, %add.ptr.i89
  br i1 %cmp20.i149, label %while.body21.i150.while.body21.i150_crit_edge, label %while.body21.i150.cleanup_crit_edge

while.body21.i150.cleanup_crit_edge:              ; preds = %while.body21.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body21.i150.while.body21.i150_crit_edge:    ; preds = %while.body21.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body21.i150

cleanup:                                          ; preds = %while.body21.i150.cleanup_crit_edge, %if.end18.i144.cleanup_crit_edge, %do.body9.i.i117.cleanup_crit_edge, %if.else.i38.i.cleanup_crit_edge, %do.body.i.i.cleanup_crit_edge, %while.body.i98.cleanup_crit_edge, %while.cond.preheader.i92.cleanup_crit_edge, %if.then35, %if.then19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.then35 ], [ -70, %entry.cleanup_crit_edge ], [ -20, %if.end.cleanup_crit_edge ], [ -20, %if.then19.cleanup_crit_edge ], [ %add, %while.cond.preheader.i92.cleanup_crit_edge ], [ %add, %if.else.i38.i.cleanup_crit_edge ], [ %add, %if.end18.i144.cleanup_crit_edge ], [ %add, %while.body.i98.cleanup_crit_edge ], [ %add, %while.body21.i150.cleanup_crit_edge ], [ %add, %do.body.i.i.cleanup_crit_edge ], [ %add, %do.body9.i.i117.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree noinline nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @LL_base, !1, !"LL_base", i1 false, i1 false}
!1 = !{!"../lib/zstd/decompress/zstd_decompress_internal.h", i32 30, i32 30}
!2 = !{ptr @LL_bits, !3, !"LL_bits", i1 false, i1 false}
!3 = !{!"../lib/zstd/decompress/../common/zstd_internal.h", i32 185, i32 30}
!4 = !{ptr @LL_defaultDTable, !5, !"LL_defaultDTable", i1 false, i1 false}
!5 = !{!"../lib/zstd/decompress/zstd_decompress_block.c", i32 247, i32 29}
!6 = !{ptr @OF_base, !7, !"OF_base", i1 false, i1 false}
!7 = !{!"../lib/zstd/decompress/zstd_decompress_internal.h", i32 37, i32 30}
!8 = !{ptr @OF_bits, !9, !"OF_bits", i1 false, i1 false}
!9 = !{!"../lib/zstd/decompress/zstd_decompress_internal.h", i32 43, i32 30}
!10 = !{ptr @OF_defaultDTable, !11, !"OF_defaultDTable", i1 false, i1 false}
!11 = !{!"../lib/zstd/decompress/zstd_decompress_block.c", i32 285, i32 29}
!12 = !{ptr @ML_base, !13, !"ML_base", i1 false, i1 false}
!13 = !{!"../lib/zstd/decompress/zstd_decompress_internal.h", i32 49, i32 30}
!14 = !{ptr @ML_bits, !15, !"ML_bits", i1 false, i1 false}
!15 = !{!"../lib/zstd/decompress/../common/zstd_internal.h", i32 202, i32 30}
!16 = !{ptr @ML_defaultDTable, !17, !"ML_defaultDTable", i1 false, i1 false}
!17 = !{!"../lib/zstd/decompress/zstd_decompress_block.c", i32 308, i32 29}
!18 = !{ptr @BIT_mask, !19, !"BIT_mask", i1 false, i1 false}
!19 = !{!"../lib/zstd/decompress/../common/bitstream.h", i32 153, i32 23}
!20 = !{ptr @ZSTD_overlapCopy8.dec32table, !21, !"dec32table", i1 false, i1 false}
!21 = !{!"../lib/zstd/decompress/zstd_decompress_block.c", i32 691, i32 26}
!22 = !{ptr @ZSTD_overlapCopy8.dec64table, !23, !"dec64table", i1 false, i1 false}
!23 = !{!"../lib/zstd/decompress/zstd_decompress_block.c", i32 692, i32 26}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i32 0, i32 33}
!34 = !{!"auto-init"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"ZSTD_decodeSequence: %agg.result"}
!37 = distinct !{!37, !"ZSTD_decodeSequence"}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{!41}
!41 = distinct !{!41, !42, !"ZSTD_decodeSequence: %agg.result"}
!42 = distinct !{!42, !"ZSTD_decodeSequence"}
!43 = !{!"branch_weights", i32 4001, i32 4000000}
!44 = !{!45}
!45 = distinct !{!45, !46, !"ZSTD_decodeSequence: %agg.result"}
!46 = distinct !{!46, !"ZSTD_decodeSequence"}
