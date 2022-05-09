; ModuleID = '/llk/IR_all_yes/lib/zstd/zstd_decompress_module.c_pt.bc'
source_filename = "../lib/zstd/zstd_decompress_module.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+zstd_is_error\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_is_error\09\09\09\09"
module asm "\09.long\09__crc_zstd_is_error\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_is_error:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_is_error\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_is_error:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_get_error_code\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_get_error_code\09\09\09\09"
module asm "\09.long\09__crc_zstd_get_error_code\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_get_error_code:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_get_error_code\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_get_error_code:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_get_error_name\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_get_error_name\09\09\09\09"
module asm "\09.long\09__crc_zstd_get_error_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_get_error_name:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_get_error_name\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_get_error_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_dctx_workspace_bound\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_dctx_workspace_bound\09\09\09\09"
module asm "\09.long\09__crc_zstd_dctx_workspace_bound\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_dctx_workspace_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_dctx_workspace_bound\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_dctx_workspace_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_init_dctx\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_init_dctx\09\09\09\09"
module asm "\09.long\09__crc_zstd_init_dctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_init_dctx:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_init_dctx\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_init_dctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_decompress_dctx\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_decompress_dctx\09\09\09\09"
module asm "\09.long\09__crc_zstd_decompress_dctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_decompress_dctx:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_decompress_dctx\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_decompress_dctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_dstream_workspace_bound\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_dstream_workspace_bound\09\09\09\09"
module asm "\09.long\09__crc_zstd_dstream_workspace_bound\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_dstream_workspace_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_dstream_workspace_bound\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_dstream_workspace_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_init_dstream\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_init_dstream\09\09\09\09"
module asm "\09.long\09__crc_zstd_init_dstream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_init_dstream:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_init_dstream\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_init_dstream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_reset_dstream\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_reset_dstream\09\09\09\09"
module asm "\09.long\09__crc_zstd_reset_dstream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_reset_dstream:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_reset_dstream\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_reset_dstream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_decompress_stream\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_decompress_stream\09\09\09\09"
module asm "\09.long\09__crc_zstd_decompress_stream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_decompress_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_decompress_stream\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_decompress_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_find_frame_compressed_size\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_find_frame_compressed_size\09\09\09\09"
module asm "\09.long\09__crc_zstd_find_frame_compressed_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_find_frame_compressed_size:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_find_frame_compressed_size\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_find_frame_compressed_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zstd_get_frame_header\22, \22a\22\09"
module asm "\09.weak\09__crc_zstd_get_frame_header\09\09\09\09"
module asm "\09.long\09__crc_zstd_get_frame_header\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zstd_get_frame_header:\09\09\09\09\09"
module asm "\09.asciz \09\22zstd_get_frame_header\22\09\09\09\09\09"
module asm "__kstrtabns_zstd_get_frame_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_zstd_is_error = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_is_error = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_is_error = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_is_error to i32), ptr @__kstrtab_zstd_is_error, ptr @__kstrtabns_zstd_is_error }, section "___ksymtab+zstd_is_error", align 4
@__kstrtab_zstd_get_error_code = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_get_error_code = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_get_error_code = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_get_error_code to i32), ptr @__kstrtab_zstd_get_error_code, ptr @__kstrtabns_zstd_get_error_code }, section "___ksymtab+zstd_get_error_code", align 4
@__kstrtab_zstd_get_error_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_get_error_name = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_get_error_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_get_error_name to i32), ptr @__kstrtab_zstd_get_error_name, ptr @__kstrtabns_zstd_get_error_name }, section "___ksymtab+zstd_get_error_name", align 4
@__kstrtab_zstd_dctx_workspace_bound = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_dctx_workspace_bound = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_dctx_workspace_bound = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_dctx_workspace_bound to i32), ptr @__kstrtab_zstd_dctx_workspace_bound, ptr @__kstrtabns_zstd_dctx_workspace_bound }, section "___ksymtab+zstd_dctx_workspace_bound", align 4
@__kstrtab_zstd_init_dctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_init_dctx = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_init_dctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_init_dctx to i32), ptr @__kstrtab_zstd_init_dctx, ptr @__kstrtabns_zstd_init_dctx }, section "___ksymtab+zstd_init_dctx", align 4
@__kstrtab_zstd_decompress_dctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_decompress_dctx = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_decompress_dctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_decompress_dctx to i32), ptr @__kstrtab_zstd_decompress_dctx, ptr @__kstrtabns_zstd_decompress_dctx }, section "___ksymtab+zstd_decompress_dctx", align 4
@__kstrtab_zstd_dstream_workspace_bound = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_dstream_workspace_bound = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_dstream_workspace_bound = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_dstream_workspace_bound to i32), ptr @__kstrtab_zstd_dstream_workspace_bound, ptr @__kstrtabns_zstd_dstream_workspace_bound }, section "___ksymtab+zstd_dstream_workspace_bound", align 4
@__kstrtab_zstd_init_dstream = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_init_dstream = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_init_dstream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_init_dstream to i32), ptr @__kstrtab_zstd_init_dstream, ptr @__kstrtabns_zstd_init_dstream }, section "___ksymtab+zstd_init_dstream", align 4
@__kstrtab_zstd_reset_dstream = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_reset_dstream = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_reset_dstream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_reset_dstream to i32), ptr @__kstrtab_zstd_reset_dstream, ptr @__kstrtabns_zstd_reset_dstream }, section "___ksymtab+zstd_reset_dstream", align 4
@__kstrtab_zstd_decompress_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_decompress_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_decompress_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_decompress_stream to i32), ptr @__kstrtab_zstd_decompress_stream, ptr @__kstrtabns_zstd_decompress_stream }, section "___ksymtab+zstd_decompress_stream", align 4
@__kstrtab_zstd_find_frame_compressed_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_find_frame_compressed_size = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_find_frame_compressed_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_find_frame_compressed_size to i32), ptr @__kstrtab_zstd_find_frame_compressed_size, ptr @__kstrtabns_zstd_find_frame_compressed_size }, section "___ksymtab+zstd_find_frame_compressed_size", align 4
@__kstrtab_zstd_get_frame_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_zstd_get_frame_header = external dso_local constant [0 x i8], align 1
@__ksymtab_zstd_get_frame_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zstd_get_frame_header to i32), ptr @__kstrtab_zstd_get_frame_header, ptr @__kstrtabns_zstd_get_frame_header }, section "___ksymtab+zstd_get_frame_header", align 4
@__UNIQUE_ID_file106 = internal constant [46 x i8] c"zstd_decompress.file=lib/zstd/zstd_decompress\00", section ".modinfo", align 1
@__UNIQUE_ID_license107 = internal constant [37 x i8] c"zstd_decompress.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description108 = internal constant [46 x i8] c"zstd_decompress.description=Zstd Decompressor\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_description108, ptr @__UNIQUE_ID_file106, ptr @__UNIQUE_ID_license107, ptr @__ksymtab_zstd_dctx_workspace_bound, ptr @__ksymtab_zstd_decompress_dctx, ptr @__ksymtab_zstd_decompress_stream, ptr @__ksymtab_zstd_dstream_workspace_bound, ptr @__ksymtab_zstd_find_frame_compressed_size, ptr @__ksymtab_zstd_get_error_code, ptr @__ksymtab_zstd_get_error_name, ptr @__ksymtab_zstd_get_frame_header, ptr @__ksymtab_zstd_init_dctx, ptr @__ksymtab_zstd_init_dstream, ptr @__ksymtab_zstd_is_error, ptr @__ksymtab_zstd_reset_dstream], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zstd_is_error(i32 noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ZSTD_isError(i32 noundef %code) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_isError(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zstd_get_error_code(i32 noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ZSTD_getErrorCode(i32 noundef %code) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_getErrorCode(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @zstd_get_error_name(i32 noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ZSTD_getErrorName(i32 noundef %code) #2
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_getErrorName(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zstd_dctx_workspace_bound() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ZSTD_estimateDCtxSize() #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_estimateDCtxSize() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @zstd_init_dctx(ptr noundef %workspace, i32 noundef %workspace_size) #0 align 64 {
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
  %call = tail call ptr @ZSTD_initStaticDCtx(ptr noundef nonnull %workspace, i32 noundef %workspace_size) #2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_initStaticDCtx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zstd_decompress_dctx(ptr noundef %dctx, ptr noundef %dst, i32 noundef %dst_capacity, ptr noundef %src, i32 noundef %src_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ZSTD_decompressDCtx(ptr noundef %dctx, ptr noundef %dst, i32 noundef %dst_capacity, ptr noundef %src, i32 noundef %src_size) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_decompressDCtx(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zstd_dstream_workspace_bound(i32 noundef %max_window_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ZSTD_estimateDStreamSize(i32 noundef %max_window_size) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_estimateDStreamSize(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @zstd_init_dstream(i32 %max_window_size, ptr noundef %workspace, i32 noundef %workspace_size) #0 align 64 {
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
  %call = tail call ptr @ZSTD_initStaticDStream(ptr noundef nonnull %workspace, i32 noundef %workspace_size) #2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_initStaticDStream(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zstd_reset_dstream(ptr noundef %dstream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ZSTD_resetDStream(ptr noundef %dstream) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_resetDStream(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zstd_decompress_stream(ptr noundef %dstream, ptr noundef %output, ptr noundef %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ZSTD_decompressStream(ptr noundef %dstream, ptr noundef %output, ptr noundef %input) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_decompressStream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zstd_find_frame_compressed_size(ptr noundef %src, i32 noundef %src_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ZSTD_findFrameCompressedSize(ptr noundef %src, i32 noundef %src_size) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_findFrameCompressedSize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zstd_get_frame_header(ptr noundef %header, ptr noundef %src, i32 noundef %src_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ZSTD_getFrameHeader(ptr noundef %header, ptr noundef %src, i32 noundef %src_size) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ZSTD_getFrameHeader(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__ksymtab_zstd_is_error, !1, !"__ksymtab_zstd_is_error", i1 false, i1 false}
!1 = !{!"../lib/zstd/zstd_decompress_module.c", i32 25, i32 1}
!2 = !{ptr @__ksymtab_zstd_get_error_code, !3, !"__ksymtab_zstd_get_error_code", i1 false, i1 false}
!3 = !{!"../lib/zstd/zstd_decompress_module.c", i32 31, i32 1}
!4 = !{ptr @__ksymtab_zstd_get_error_name, !5, !"__ksymtab_zstd_get_error_name", i1 false, i1 false}
!5 = !{!"../lib/zstd/zstd_decompress_module.c", i32 37, i32 1}
!6 = !{ptr @__ksymtab_zstd_dctx_workspace_bound, !7, !"__ksymtab_zstd_dctx_workspace_bound", i1 false, i1 false}
!7 = !{!"../lib/zstd/zstd_decompress_module.c", i32 45, i32 1}
!8 = !{ptr @__ksymtab_zstd_init_dctx, !9, !"__ksymtab_zstd_init_dctx", i1 false, i1 false}
!9 = !{!"../lib/zstd/zstd_decompress_module.c", i32 53, i32 1}
!10 = !{ptr @__ksymtab_zstd_decompress_dctx, !11, !"__ksymtab_zstd_decompress_dctx", i1 false, i1 false}
!11 = !{!"../lib/zstd/zstd_decompress_module.c", i32 60, i32 1}
!12 = !{ptr @__ksymtab_zstd_dstream_workspace_bound, !13, !"__ksymtab_zstd_dstream_workspace_bound", i1 false, i1 false}
!13 = !{!"../lib/zstd/zstd_decompress_module.c", i32 66, i32 1}
!14 = !{ptr @__ksymtab_zstd_init_dstream, !15, !"__ksymtab_zstd_init_dstream", i1 false, i1 false}
!15 = !{!"../lib/zstd/zstd_decompress_module.c", i32 76, i32 1}
!16 = !{ptr @__ksymtab_zstd_reset_dstream, !17, !"__ksymtab_zstd_reset_dstream", i1 false, i1 false}
!17 = !{!"../lib/zstd/zstd_decompress_module.c", i32 82, i32 1}
!18 = !{ptr @__ksymtab_zstd_decompress_stream, !19, !"__ksymtab_zstd_decompress_stream", i1 false, i1 false}
!19 = !{!"../lib/zstd/zstd_decompress_module.c", i32 89, i32 1}
!20 = !{ptr @__ksymtab_zstd_find_frame_compressed_size, !21, !"__ksymtab_zstd_find_frame_compressed_size", i1 false, i1 false}
!21 = !{!"../lib/zstd/zstd_decompress_module.c", i32 95, i32 1}
!22 = !{ptr @__ksymtab_zstd_get_frame_header, !23, !"__ksymtab_zstd_get_frame_header", i1 false, i1 false}
!23 = !{!"../lib/zstd/zstd_decompress_module.c", i32 102, i32 1}
!24 = !{ptr @__UNIQUE_ID_file106, !25, !"__UNIQUE_ID_file106", i1 false, i1 false}
!25 = !{!"../lib/zstd/zstd_decompress_module.c", i32 104, i32 1}
!26 = !{ptr @__UNIQUE_ID_license107, !25, !"__UNIQUE_ID_license107", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_description108, !28, !"__UNIQUE_ID_description108", i1 false, i1 false}
!28 = !{!"../lib/zstd/zstd_decompress_module.c", i32 105, i32 1}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
