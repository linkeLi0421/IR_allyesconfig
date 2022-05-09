; ModuleID = '/llk/IR_all_yes/lib/zstd/zstd_compress_module.c_pt.bc'
source_filename = "../lib/zstd/zstd_compress_module.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+zstd_min_clevel\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_min_clevel\09\09\09\09"
module asm "\09.long\09__crc_zstd_min_clevel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_min_clevel:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_min_clevel\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_min_clevel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_max_clevel\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_max_clevel\09\09\09\09"
module asm "\09.long\09__crc_zstd_max_clevel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_max_clevel:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_max_clevel\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_max_clevel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_compress_bound\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_compress_bound\09\09\09\09"
module asm "\09.long\09__crc_zstd_compress_bound\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_compress_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_compress_bound\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_compress_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_get_params\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_get_params\09\09\09\09"
module asm "\09.long\09__crc_zstd_get_params\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_get_params:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_get_params\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_get_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_cctx_workspace_bound\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_cctx_workspace_bound\09\09\09\09"
module asm "\09.long\09__crc_zstd_cctx_workspace_bound\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_cctx_workspace_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_cctx_workspace_bound\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_cctx_workspace_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_init_cctx\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_init_cctx\09\09\09\09"
module asm "\09.long\09__crc_zstd_init_cctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_init_cctx:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_init_cctx\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_init_cctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_compress_cctx\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_compress_cctx\09\09\09\09"
module asm "\09.long\09__crc_zstd_compress_cctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_compress_cctx:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_compress_cctx\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_compress_cctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_cstream_workspace_bound\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_cstream_workspace_bound\09\09\09\09"
module asm "\09.long\09__crc_zstd_cstream_workspace_bound\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_cstream_workspace_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_cstream_workspace_bound\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_cstream_workspace_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_init_cstream\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_init_cstream\09\09\09\09"
module asm "\09.long\09__crc_zstd_init_cstream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_init_cstream:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_init_cstream\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_init_cstream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_reset_cstream\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_reset_cstream\09\09\09\09"
module asm "\09.long\09__crc_zstd_reset_cstream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_reset_cstream:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_reset_cstream\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_reset_cstream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_compress_stream\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_compress_stream\09\09\09\09"
module asm "\09.long\09__crc_zstd_compress_stream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_compress_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_compress_stream\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_compress_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_flush_stream\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_flush_stream\09\09\09\09"
module asm "\09.long\09__crc_zstd_flush_stream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_flush_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_flush_stream\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_flush_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_end_stream\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_end_stream\09\09\09\09"
module asm "\09.long\09__crc_zstd_end_stream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_end_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_end_stream\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_end_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ZSTD_parameters = type { %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_frameParameters = type { i32, i32, i32 }

@__kstrtab_zstd_min_clevel = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_min_clevel = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_min_clevel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_min_clevel to i32), ptr @__kstrtab_zstd_min_clevel, ptr @__kstrtabns_zstd_min_clevel }, section "___ksymtab+zstd_min_clevel", align 4
@__kstrtab_zstd_max_clevel = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_max_clevel = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_max_clevel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_max_clevel to i32), ptr @__kstrtab_zstd_max_clevel, ptr @__kstrtabns_zstd_max_clevel }, section "___ksymtab+zstd_max_clevel", align 4
@__kstrtab_zstd_compress_bound = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_compress_bound = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_compress_bound = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_compress_bound to i32), ptr @__kstrtab_zstd_compress_bound, ptr @__kstrtabns_zstd_compress_bound }, section "___ksymtab+zstd_compress_bound", align 4
@__kstrtab_zstd_get_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_get_params = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_get_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_get_params to i32), ptr @__kstrtab_zstd_get_params, ptr @__kstrtabns_zstd_get_params }, section "___ksymtab+zstd_get_params", align 4
@__kstrtab_zstd_cctx_workspace_bound = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_cctx_workspace_bound = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_cctx_workspace_bound = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_cctx_workspace_bound to i32), ptr @__kstrtab_zstd_cctx_workspace_bound, ptr @__kstrtabns_zstd_cctx_workspace_bound }, section "___ksymtab+zstd_cctx_workspace_bound", align 4
@__kstrtab_zstd_init_cctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_init_cctx = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_init_cctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_init_cctx to i32), ptr @__kstrtab_zstd_init_cctx, ptr @__kstrtabns_zstd_init_cctx }, section "___ksymtab+zstd_init_cctx", align 4
@__kstrtab_zstd_compress_cctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_compress_cctx = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_compress_cctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_compress_cctx to i32), ptr @__kstrtab_zstd_compress_cctx, ptr @__kstrtabns_zstd_compress_cctx }, section "___ksymtab+zstd_compress_cctx", align 4
@__kstrtab_zstd_cstream_workspace_bound = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_cstream_workspace_bound = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_cstream_workspace_bound = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_cstream_workspace_bound to i32), ptr @__kstrtab_zstd_cstream_workspace_bound, ptr @__kstrtabns_zstd_cstream_workspace_bound }, section "___ksymtab+zstd_cstream_workspace_bound", align 4
@__kstrtab_zstd_init_cstream = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_init_cstream = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_init_cstream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_init_cstream to i32), ptr @__kstrtab_zstd_init_cstream, ptr @__kstrtabns_zstd_init_cstream }, section "___ksymtab+zstd_init_cstream", align 4
@__kstrtab_zstd_reset_cstream = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_reset_cstream = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_reset_cstream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_reset_cstream to i32), ptr @__kstrtab_zstd_reset_cstream, ptr @__kstrtabns_zstd_reset_cstream }, section "___ksymtab+zstd_reset_cstream", align 4
@__kstrtab_zstd_compress_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_compress_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_compress_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_compress_stream to i32), ptr @__kstrtab_zstd_compress_stream, ptr @__kstrtabns_zstd_compress_stream }, section "___ksymtab+zstd_compress_stream", align 4
@__kstrtab_zstd_flush_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_flush_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_flush_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_flush_stream to i32), ptr @__kstrtab_zstd_flush_stream, ptr @__kstrtabns_zstd_flush_stream }, section "___ksymtab+zstd_flush_stream", align 4
@__kstrtab_zstd_end_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_end_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_end_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_end_stream to i32), ptr @__kstrtab_zstd_end_stream, ptr @__kstrtabns_zstd_end_stream }, section "___ksymtab+zstd_end_stream", align 4
@__UNIQUE_ID_file106 = internal constant [42 x i8] c"zstd_compress.file=lib/zstd/zstd_compress\00", section ".modinfo", align 1
@__UNIQUE_ID_license107 = internal constant [35 x i8] c"zstd_compress.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description108 = internal constant [42 x i8] c"zstd_compress.description=Zstd Compressor\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_description108, ptr @__UNIQUE_ID_file106, ptr @__UNIQUE_ID_license107, ptr @__ksymtab_zstd_cctx_workspace_bound, ptr @__ksymtab_zstd_compress_bound, ptr @__ksymtab_zstd_compress_cctx, ptr @__ksymtab_zstd_compress_stream, ptr @__ksymtab_zstd_cstream_workspace_bound, ptr @__ksymtab_zstd_end_stream, ptr @__ksymtab_zstd_flush_stream, ptr @__ksymtab_zstd_get_params, ptr @__ksymtab_zstd_init_cctx, ptr @__ksymtab_zstd_init_cstream, ptr @__ksymtab_zstd_max_clevel, ptr @__ksymtab_zstd_min_clevel, ptr @__ksymtab_zstd_reset_cstream], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zstd_min_clevel() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ZSTD_minCLevel() #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_minCLevel() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zstd_max_clevel() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ZSTD_maxCLevel() #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_maxCLevel() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zstd_compress_bound(i32 noundef %src_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ZSTD_compressBound(i32 noundef %src_size) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressBound(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zstd_get_params(ptr noalias sret(%struct.ZSTD_parameters) align 4 %agg.result, i32 noundef %level, i64 noundef %estimated_src_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ZSTD_getParams(ptr sret(%struct.ZSTD_parameters) align 4 %agg.result, i32 noundef %level, i64 noundef %estimated_src_size, i32 noundef 0) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_getParams(ptr sret(%struct.ZSTD_parameters) align 4, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zstd_cctx_workspace_bound(ptr nocapture noundef readonly %cparams) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cparams to i32
  call void @__asan_load4_noabort(i32 %0)
  %.unpack = load i32, ptr %cparams, align 4
  %1 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  %.elt1 = getelementptr inbounds [7 x i32], ptr %cparams, i32 0, i32 1
  %2 = ptrtoint ptr %.elt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack2 = load i32, ptr %.elt1, align 4
  %3 = insertvalue [7 x i32] %1, i32 %.unpack2, 1
  %.elt3 = getelementptr inbounds [7 x i32], ptr %cparams, i32 0, i32 2
  %4 = ptrtoint ptr %.elt3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack4 = load i32, ptr %.elt3, align 4
  %5 = insertvalue [7 x i32] %3, i32 %.unpack4, 2
  %.elt5 = getelementptr inbounds [7 x i32], ptr %cparams, i32 0, i32 3
  %6 = ptrtoint ptr %.elt5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack6 = load i32, ptr %.elt5, align 4
  %7 = insertvalue [7 x i32] %5, i32 %.unpack6, 3
  %.elt7 = getelementptr inbounds [7 x i32], ptr %cparams, i32 0, i32 4
  %8 = ptrtoint ptr %.elt7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack8 = load i32, ptr %.elt7, align 4
  %9 = insertvalue [7 x i32] %7, i32 %.unpack8, 4
  %.elt9 = getelementptr inbounds [7 x i32], ptr %cparams, i32 0, i32 5
  %10 = ptrtoint ptr %.elt9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack10 = load i32, ptr %.elt9, align 4
  %11 = insertvalue [7 x i32] %9, i32 %.unpack10, 5
  %.elt11 = getelementptr inbounds [7 x i32], ptr %cparams, i32 0, i32 6
  %12 = ptrtoint ptr %.elt11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack12 = load i32, ptr %.elt11, align 4
  %13 = insertvalue [7 x i32] %11, i32 %.unpack12, 6
  %call = tail call i32 @ZSTD_estimateCCtxSize_usingCParams([7 x i32] %13) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_estimateCCtxSize_usingCParams([7 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @zstd_init_cctx(ptr noundef %workspace, i32 noundef %workspace_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %workspace, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call ptr @ZSTD_initStaticCCtx(ptr noundef nonnull %workspace, i32 noundef %workspace_size) #2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_initStaticCCtx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zstd_compress_cctx(ptr noundef %cctx, ptr noundef %dst, i32 noundef %dst_capacity, ptr noundef %src, i32 noundef %src_size, ptr nocapture noundef readonly %parameters) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %src_size to i64
  %call = tail call fastcc i32 @zstd_cctx_init(ptr noundef %cctx, ptr noundef %parameters, i64 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call)
  %cmp.i = icmp ult i32 %call, -119
  br i1 %cmp.i, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call2 = tail call i32 @ZSTD_compress2(ptr noundef %cctx, ptr noundef %dst, i32 noundef %dst_capacity, ptr noundef %src, i32 noundef %src_size) #2
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.1 = phi i32 [ %call, %entry.return_crit_edge ], [ %call2, %do.end ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zstd_cctx_init(ptr noundef %cctx, ptr nocapture noundef readonly %parameters, i64 noundef %pledged_src_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ZSTD_CCtx_reset(ptr noundef %cctx, i32 noundef 3) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call)
  %cmp.i = icmp ult i32 %call, -119
  br i1 %cmp.i, label %do.body2, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

do.body2:                                         ; preds = %entry
  %call4 = tail call i32 @ZSTD_CCtx_setPledgedSrcSize(ptr noundef %cctx, i64 noundef %pledged_src_size) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call4)
  %cmp.i186 = icmp ult i32 %call4, -119
  br i1 %cmp.i186, label %do.body13, label %do.body2.return_crit_edge

do.body2.return_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

do.body13:                                        ; preds = %do.body2
  %0 = ptrtoint ptr %parameters to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parameters, align 4
  %call15 = tail call i32 @ZSTD_CCtx_setParameter(ptr noundef %cctx, i32 noundef 101, i32 noundef %1) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call15)
  %cmp.i188 = icmp ult i32 %call15, -119
  br i1 %cmp.i188, label %do.body24, label %do.body13.return_crit_edge

do.body13.return_crit_edge:                       ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

do.body24:                                        ; preds = %do.body13
  %hashLog = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %parameters, i32 0, i32 2
  %2 = ptrtoint ptr %hashLog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hashLog, align 4
  %call27 = tail call i32 @ZSTD_CCtx_setParameter(ptr noundef %cctx, i32 noundef 102, i32 noundef %3) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call27)
  %cmp.i190 = icmp ult i32 %call27, -119
  br i1 %cmp.i190, label %do.body36, label %do.body24.return_crit_edge

do.body24.return_crit_edge:                       ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

do.body36:                                        ; preds = %do.body24
  %chainLog = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %parameters, i32 0, i32 1
  %4 = ptrtoint ptr %chainLog to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chainLog, align 4
  %call39 = tail call i32 @ZSTD_CCtx_setParameter(ptr noundef %cctx, i32 noundef 103, i32 noundef %5) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call39)
  %cmp.i192 = icmp ult i32 %call39, -119
  br i1 %cmp.i192, label %do.body48, label %do.body36.return_crit_edge

do.body36.return_crit_edge:                       ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

do.body48:                                        ; preds = %do.body36
  %searchLog = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %parameters, i32 0, i32 3
  %6 = ptrtoint ptr %searchLog to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %searchLog, align 4
  %call51 = tail call i32 @ZSTD_CCtx_setParameter(ptr noundef %cctx, i32 noundef 104, i32 noundef %7) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call51)
  %cmp.i194 = icmp ult i32 %call51, -119
  br i1 %cmp.i194, label %do.body60, label %do.body48.return_crit_edge

do.body48.return_crit_edge:                       ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

do.body60:                                        ; preds = %do.body48
  %minMatch = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %parameters, i32 0, i32 4
  %8 = ptrtoint ptr %minMatch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %minMatch, align 4
  %call63 = tail call i32 @ZSTD_CCtx_setParameter(ptr noundef %cctx, i32 noundef 105, i32 noundef %9) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call63)
  %cmp.i196 = icmp ult i32 %call63, -119
  br i1 %cmp.i196, label %do.body72, label %do.body60.return_crit_edge

do.body60.return_crit_edge:                       ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

do.body72:                                        ; preds = %do.body60
  %targetLength = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %parameters, i32 0, i32 5
  %10 = ptrtoint ptr %targetLength to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %targetLength, align 4
  %call75 = tail call i32 @ZSTD_CCtx_setParameter(ptr noundef %cctx, i32 noundef 106, i32 noundef %11) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call75)
  %cmp.i198 = icmp ult i32 %call75, -119
  br i1 %cmp.i198, label %do.body84, label %do.body72.return_crit_edge

do.body72.return_crit_edge:                       ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

do.body84:                                        ; preds = %do.body72
  %strategy = getelementptr inbounds %struct.ZSTD_compressionParameters, ptr %parameters, i32 0, i32 6
  %12 = ptrtoint ptr %strategy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %strategy, align 4
  %call87 = tail call i32 @ZSTD_CCtx_setParameter(ptr noundef %cctx, i32 noundef 107, i32 noundef %13) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call87)
  %cmp.i200 = icmp ult i32 %call87, -119
  br i1 %cmp.i200, label %do.body96, label %do.body84.return_crit_edge

do.body84.return_crit_edge:                       ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

do.body96:                                        ; preds = %do.body84
  %fParams = getelementptr inbounds %struct.ZSTD_parameters, ptr %parameters, i32 0, i32 1
  %14 = ptrtoint ptr %fParams to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fParams, align 4
  %call98 = tail call i32 @ZSTD_CCtx_setParameter(ptr noundef %cctx, i32 noundef 200, i32 noundef %15) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call98)
  %cmp.i202 = icmp ult i32 %call98, -119
  br i1 %cmp.i202, label %do.body107, label %do.body96.return_crit_edge

do.body96.return_crit_edge:                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

do.body107:                                       ; preds = %do.body96
  %checksumFlag = getelementptr inbounds %struct.ZSTD_parameters, ptr %parameters, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %checksumFlag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %checksumFlag, align 4
  %call110 = tail call i32 @ZSTD_CCtx_setParameter(ptr noundef %cctx, i32 noundef 201, i32 noundef %17) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call110)
  %cmp.i204 = icmp ult i32 %call110, -119
  br i1 %cmp.i204, label %do.body119, label %do.body107.return_crit_edge

do.body107.return_crit_edge:                      ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

do.body119:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #4
  %noDictIDFlag = getelementptr inbounds %struct.ZSTD_parameters, ptr %parameters, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %noDictIDFlag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %noDictIDFlag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool122.not = icmp eq i32 %19, 0
  %lnot.ext = zext i1 %tobool122.not to i32
  %call123 = tail call i32 @ZSTD_CCtx_setParameter(ptr noundef %cctx, i32 noundef 202, i32 noundef %lnot.ext) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call123)
  %cmp.i206 = icmp ult i32 %call123, -119
  %spec.select = select i1 %cmp.i206, i32 0, i32 %call123
  br label %return

return:                                           ; preds = %do.body119, %do.body107.return_crit_edge, %do.body96.return_crit_edge, %do.body84.return_crit_edge, %do.body72.return_crit_edge, %do.body60.return_crit_edge, %do.body48.return_crit_edge, %do.body36.return_crit_edge, %do.body24.return_crit_edge, %do.body13.return_crit_edge, %do.body2.return_crit_edge, %entry.return_crit_edge
  %retval.12 = phi i32 [ %call, %entry.return_crit_edge ], [ %call4, %do.body2.return_crit_edge ], [ %call15, %do.body13.return_crit_edge ], [ %call27, %do.body24.return_crit_edge ], [ %call39, %do.body36.return_crit_edge ], [ %call51, %do.body48.return_crit_edge ], [ %call63, %do.body60.return_crit_edge ], [ %call75, %do.body72.return_crit_edge ], [ %call87, %do.body84.return_crit_edge ], [ %call98, %do.body96.return_crit_edge ], [ %call110, %do.body107.return_crit_edge ], [ %spec.select, %do.body119 ]
  ret i32 %retval.12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compress2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zstd_cstream_workspace_bound(ptr nocapture noundef readonly %cparams) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cparams to i32
  call void @__asan_load4_noabort(i32 %0)
  %.unpack = load i32, ptr %cparams, align 4
  %1 = insertvalue [7 x i32] undef, i32 %.unpack, 0
  %.elt1 = getelementptr inbounds [7 x i32], ptr %cparams, i32 0, i32 1
  %2 = ptrtoint ptr %.elt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack2 = load i32, ptr %.elt1, align 4
  %3 = insertvalue [7 x i32] %1, i32 %.unpack2, 1
  %.elt3 = getelementptr inbounds [7 x i32], ptr %cparams, i32 0, i32 2
  %4 = ptrtoint ptr %.elt3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack4 = load i32, ptr %.elt3, align 4
  %5 = insertvalue [7 x i32] %3, i32 %.unpack4, 2
  %.elt5 = getelementptr inbounds [7 x i32], ptr %cparams, i32 0, i32 3
  %6 = ptrtoint ptr %.elt5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack6 = load i32, ptr %.elt5, align 4
  %7 = insertvalue [7 x i32] %5, i32 %.unpack6, 3
  %.elt7 = getelementptr inbounds [7 x i32], ptr %cparams, i32 0, i32 4
  %8 = ptrtoint ptr %.elt7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack8 = load i32, ptr %.elt7, align 4
  %9 = insertvalue [7 x i32] %7, i32 %.unpack8, 4
  %.elt9 = getelementptr inbounds [7 x i32], ptr %cparams, i32 0, i32 5
  %10 = ptrtoint ptr %.elt9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack10 = load i32, ptr %.elt9, align 4
  %11 = insertvalue [7 x i32] %9, i32 %.unpack10, 5
  %.elt11 = getelementptr inbounds [7 x i32], ptr %cparams, i32 0, i32 6
  %12 = ptrtoint ptr %.elt11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack12 = load i32, ptr %.elt11, align 4
  %13 = insertvalue [7 x i32] %11, i32 %.unpack12, 6
  %call = tail call i32 @ZSTD_estimateCStreamSize_usingCParams([7 x i32] %13) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_estimateCStreamSize_usingCParams([7 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @zstd_init_cstream(ptr nocapture noundef readonly %parameters, i64 noundef %pledged_src_size, ptr noundef %workspace, i32 noundef %workspace_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %workspace, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @ZSTD_initStaticCStream(ptr noundef nonnull %workspace, i32 noundef %workspace_size) #2
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pledged_src_size)
  %cmp4 = icmp eq i64 %pledged_src_size, 0
  %spec.store.select = select i1 %cmp4, i64 -1, i64 %pledged_src_size
  %call7 = tail call fastcc i32 @zstd_cctx_init(ptr noundef nonnull %call, ptr noundef %parameters, i64 noundef %spec.store.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %call7)
  %cmp.i = icmp ult i32 %call7, -119
  %call. = select i1 %cmp.i, ptr %call, ptr null
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call., %if.end3 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_initStaticCStream(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zstd_reset_cstream(ptr noundef %cstream, i64 noundef %pledged_src_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ZSTD_resetCStream(ptr noundef %cstream, i64 noundef %pledged_src_size) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_resetCStream(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zstd_compress_stream(ptr noundef %cstream, ptr noundef %output, ptr noundef %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ZSTD_compressStream(ptr noundef %cstream, ptr noundef %output, ptr noundef %input) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_compressStream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zstd_flush_stream(ptr noundef %cstream, ptr noundef %output) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ZSTD_flushStream(ptr noundef %cstream, ptr noundef %output) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_flushStream(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zstd_end_stream(ptr noundef %cstream, ptr noundef %output) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ZSTD_endStream(ptr noundef %cstream, ptr noundef %output) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_endStream(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_CCtx_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_CCtx_setPledgedSrcSize(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_CCtx_setParameter(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__ksymtab_zstd_min_clevel, !1, !"__ksymtab_zstd_min_clevel", i1 false, i1 false}
!1 = !{!"../lib/zstd/zstd_compress_module.c", i32 61, i32 1}
!2 = !{ptr @__ksymtab_zstd_max_clevel, !3, !"__ksymtab_zstd_max_clevel", i1 false, i1 false}
!3 = !{!"../lib/zstd/zstd_compress_module.c", i32 67, i32 1}
!4 = !{ptr @__ksymtab_zstd_compress_bound, !5, !"__ksymtab_zstd_compress_bound", i1 false, i1 false}
!5 = !{!"../lib/zstd/zstd_compress_module.c", i32 73, i32 1}
!6 = !{ptr @__ksymtab_zstd_get_params, !7, !"__ksymtab_zstd_get_params", i1 false, i1 false}
!7 = !{!"../lib/zstd/zstd_compress_module.c", i32 80, i32 1}
!8 = !{ptr @__ksymtab_zstd_cctx_workspace_bound, !9, !"__ksymtab_zstd_cctx_workspace_bound", i1 false, i1 false}
!9 = !{!"../lib/zstd/zstd_compress_module.c", i32 86, i32 1}
!10 = !{ptr @__ksymtab_zstd_init_cctx, !11, !"__ksymtab_zstd_init_cctx", i1 false, i1 false}
!11 = !{!"../lib/zstd/zstd_compress_module.c", i32 94, i32 1}
!12 = !{ptr @__ksymtab_zstd_compress_cctx, !13, !"__ksymtab_zstd_compress_cctx", i1 false, i1 false}
!13 = !{!"../lib/zstd/zstd_compress_module.c", i32 102, i32 1}
!14 = !{ptr @__ksymtab_zstd_cstream_workspace_bound, !15, !"__ksymtab_zstd_cstream_workspace_bound", i1 false, i1 false}
!15 = !{!"../lib/zstd/zstd_compress_module.c", i32 108, i32 1}
!16 = !{ptr @__ksymtab_zstd_init_cstream, !17, !"__ksymtab_zstd_init_cstream", i1 false, i1 false}
!17 = !{!"../lib/zstd/zstd_compress_module.c", i32 131, i32 1}
!18 = !{ptr @__ksymtab_zstd_reset_cstream, !19, !"__ksymtab_zstd_reset_cstream", i1 false, i1 false}
!19 = !{!"../lib/zstd/zstd_compress_module.c", i32 138, i32 1}
!20 = !{ptr @__ksymtab_zstd_compress_stream, !21, !"__ksymtab_zstd_compress_stream", i1 false, i1 false}
!21 = !{!"../lib/zstd/zstd_compress_module.c", i32 145, i32 1}
!22 = !{ptr @__ksymtab_zstd_flush_stream, !23, !"__ksymtab_zstd_flush_stream", i1 false, i1 false}
!23 = !{!"../lib/zstd/zstd_compress_module.c", i32 151, i32 1}
!24 = !{ptr @__ksymtab_zstd_end_stream, !25, !"__ksymtab_zstd_end_stream", i1 false, i1 false}
!25 = !{!"../lib/zstd/zstd_compress_module.c", i32 157, i32 1}
!26 = !{ptr @__UNIQUE_ID_file106, !27, !"__UNIQUE_ID_file106", i1 false, i1 false}
!27 = !{!"../lib/zstd/zstd_compress_module.c", i32 159, i32 1}
!28 = !{ptr @__UNIQUE_ID_license107, !27, !"__UNIQUE_ID_license107", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_description108, !30, !"__UNIQUE_ID_description108", i1 false, i1 false}
!30 = !{!"../lib/zstd/zstd_compress_module.c", i32 160, i32 1}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
