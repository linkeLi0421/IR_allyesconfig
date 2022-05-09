; ModuleID = '/llk/IR_all_yes/drivers/media/v4l2-core/v4l2-jpeg.c_pt.bc'
source_filename = "../drivers/media/v4l2-core/v4l2-jpeg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+v4l2_jpeg_parse_header\22, \22a\22\09"
module asm "\09.weak\09__crc_v4l2_jpeg_parse_header\09\09\09\09"
module asm "\09.long\09__crc_v4l2_jpeg_parse_header\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_jpeg_parse_header:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_jpeg_parse_header\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_jpeg_parse_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+v4l2_jpeg_parse_frame_header\22, \22a\22\09"
module asm "\09.weak\09__crc_v4l2_jpeg_parse_frame_header\09\09\09\09"
module asm "\09.long\09__crc_v4l2_jpeg_parse_frame_header\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_jpeg_parse_frame_header:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_jpeg_parse_frame_header\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_jpeg_parse_frame_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+v4l2_jpeg_parse_scan_header\22, \22a\22\09"
module asm "\09.weak\09__crc_v4l2_jpeg_parse_scan_header\09\09\09\09"
module asm "\09.long\09__crc_v4l2_jpeg_parse_scan_header\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_jpeg_parse_scan_header:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_jpeg_parse_scan_header\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_jpeg_parse_scan_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+v4l2_jpeg_parse_quantization_tables\22, \22a\22\09"
module asm "\09.weak\09__crc_v4l2_jpeg_parse_quantization_tables\09\09\09\09"
module asm "\09.long\09__crc_v4l2_jpeg_parse_quantization_tables\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_jpeg_parse_quantization_tables:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_jpeg_parse_quantization_tables\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_jpeg_parse_quantization_tables:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+v4l2_jpeg_parse_huffman_tables\22, \22a\22\09"
module asm "\09.weak\09__crc_v4l2_jpeg_parse_huffman_tables\09\09\09\09"
module asm "\09.long\09__crc_v4l2_jpeg_parse_huffman_tables\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_jpeg_parse_huffman_tables:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_jpeg_parse_huffman_tables\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_jpeg_parse_huffman_tables:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.jpeg_stream = type { ptr, ptr }
%struct.v4l2_jpeg_header = type { %struct.v4l2_jpeg_reference, %struct.v4l2_jpeg_reference, i32, [4 x %struct.v4l2_jpeg_reference], i32, [4 x %struct.v4l2_jpeg_reference], %struct.v4l2_jpeg_frame_header, ptr, ptr, ptr, i16, i32, i32 }
%struct.v4l2_jpeg_reference = type { ptr, i32 }
%struct.v4l2_jpeg_frame_header = type { i16, i16, i8, i8, [4 x %struct.v4l2_jpeg_frame_component_spec], i32 }
%struct.v4l2_jpeg_frame_component_spec = type { i8, i8, i8, i8 }
%struct.v4l2_jpeg_scan_header = type { i8, [4 x %struct.v4l2_jpeg_scan_component_spec] }
%struct.v4l2_jpeg_scan_component_spec = type { i8, i8, i8 }

@__UNIQUE_ID_description106 = internal constant [54 x i8] c"v4l2_jpeg.description=V4L2 JPEG header parser helpers\00", section ".modinfo", align 1
@__UNIQUE_ID_author107 = internal constant [55 x i8] c"v4l2_jpeg.author=Philipp Zabel <kernel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file108 = internal constant [49 x i8] c"v4l2_jpeg.file=drivers/media/v4l2-core/v4l2-jpeg\00", section ".modinfo", align 1
@__UNIQUE_ID_license109 = internal constant [22 x i8] c"v4l2_jpeg.license=GPL\00", section ".modinfo", align 1
@__kstrtab_v4l2_jpeg_parse_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_jpeg_parse_header = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_jpeg_parse_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_jpeg_parse_header to i32), ptr @__kstrtab_v4l2_jpeg_parse_header, ptr @__kstrtabns_v4l2_jpeg_parse_header }, section "___ksymtab_gpl+v4l2_jpeg_parse_header", align 4
@__kstrtab_v4l2_jpeg_parse_frame_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_jpeg_parse_frame_header = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_jpeg_parse_frame_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_jpeg_parse_frame_header to i32), ptr @__kstrtab_v4l2_jpeg_parse_frame_header, ptr @__kstrtabns_v4l2_jpeg_parse_frame_header }, section "___ksymtab_gpl+v4l2_jpeg_parse_frame_header", align 4
@__kstrtab_v4l2_jpeg_parse_scan_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_jpeg_parse_scan_header = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_jpeg_parse_scan_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_jpeg_parse_scan_header to i32), ptr @__kstrtab_v4l2_jpeg_parse_scan_header, ptr @__kstrtabns_v4l2_jpeg_parse_scan_header }, section "___ksymtab_gpl+v4l2_jpeg_parse_scan_header", align 4
@__kstrtab_v4l2_jpeg_parse_quantization_tables = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_jpeg_parse_quantization_tables = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_jpeg_parse_quantization_tables = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_jpeg_parse_quantization_tables to i32), ptr @__kstrtab_v4l2_jpeg_parse_quantization_tables, ptr @__kstrtabns_v4l2_jpeg_parse_quantization_tables }, section "___ksymtab_gpl+v4l2_jpeg_parse_quantization_tables", align 4
@__kstrtab_v4l2_jpeg_parse_huffman_tables = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_jpeg_parse_huffman_tables = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_jpeg_parse_huffman_tables = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_jpeg_parse_huffman_tables to i32), ptr @__kstrtab_v4l2_jpeg_parse_huffman_tables, ptr @__kstrtabns_v4l2_jpeg_parse_huffman_tables }, section "___ksymtab_gpl+v4l2_jpeg_parse_huffman_tables", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Adobe\00\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [31 x i64] [i64 29, i64 16, i64 65472, i64 65473, i64 65474, i64 65475, i64 65476, i64 65477, i64 65478, i64 65479, i64 65481, i64 65482, i64 65483, i64 65484, i64 65485, i64 65486, i64 65487, i64 65488, i64 65489, i64 65490, i64 65491, i64 65492, i64 65493, i64 65494, i64 65495, i64 65496, i64 65497, i64 65498, i64 65499, i64 65501, i64 65518]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 12]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 8, i64 17, i64 33, i64 34, i64 65]
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [39 x i8] c"../drivers/media/v4l2-core/v4l2-jpeg.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 462, i32 28 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author107, ptr @__UNIQUE_ID_description106, ptr @__UNIQUE_ID_file108, ptr @__UNIQUE_ID_license109, ptr @__ksymtab_v4l2_jpeg_parse_frame_header, ptr @__ksymtab_v4l2_jpeg_parse_header, ptr @__ksymtab_v4l2_jpeg_parse_huffman_tables, ptr @__ksymtab_v4l2_jpeg_parse_quantization_tables, ptr @__ksymtab_v4l2_jpeg_parse_scan_header, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v4l2_jpeg_parse_header(ptr noundef %buf, i32 noundef %len, ptr noundef %out) #0 align 64 {
entry:
  %stream = alloca %struct.jpeg_stream, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stream) #6
  %0 = getelementptr inbounds %struct.jpeg_stream, ptr %stream, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %buf, i32 %len
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr, ptr %0, align 4
  %num_dht = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %out, i32 0, i32 2
  %2 = ptrtoint ptr %num_dht to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %num_dht, align 4
  %num_dqt = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %out, i32 0, i32 4
  %3 = ptrtoint ptr %num_dqt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %num_dqt, align 4
  %add.ptr.i = getelementptr i8, ptr %buf, i32 2
  %cmp.i = icmp ugt ptr %add.ptr.i, %add.ptr
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %jpeg_get_word_be.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

jpeg_get_word_be.exit:                            ; preds = %entry
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %buf, align 1
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -40, i16 %5)
  %cmp.not = icmp eq i16 %5, -40
  br i1 %cmp.not, label %if.end, label %jpeg_get_word_be.exit.cleanup_crit_edge

jpeg_get_word_be.exit.cleanup_crit_edge:          ; preds = %jpeg_get_word_be.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %jpeg_get_word_be.exit
  %app14_tf = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %out, i32 0, i32 12
  %7 = ptrtoint ptr %app14_tf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %app14_tf, align 4
  %restart_interval = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %out, i32 0, i32 10
  %quantization_tables = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %out, i32 0, i32 8
  %precision = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %out, i32 0, i32 6, i32 2
  %huffman_tables = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %out, i32 0, i32 9
  %length.i = getelementptr inbounds %struct.v4l2_jpeg_reference, ptr %out, i32 0, i32 1
  %frame = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %out, i32 0, i32 6
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.while.cond_crit_edge, %if.end
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %lor.lhs.false.i.while.cond.i_crit_edge, %while.cond
  %marker.0.i = phi i32 [ 0, %while.cond ], [ %or.i, %lor.lhs.false.i.while.cond.i_crit_edge ]
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream, align 4
  %cmp.not.i.i = icmp ult ptr %11, %9
  br i1 %cmp.not.i.i, label %while.body.i, label %while.cond.i.cleanup_crit_edge

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr.i.i = getelementptr i8, ptr %11, i32 1
  %12 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %incdec.ptr.i.i, ptr %stream, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %11, align 1
  %conv.i.i = zext i8 %14 to i32
  %conv.i97 = shl i32 %marker.0.i, 8
  %shl.i = and i32 %conv.i97, 16776960
  %or.i = or i32 %shl.i, %conv.i.i
  %conv2.i = and i32 %or.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65281, i32 %conv2.i)
  %cmp3.i = icmp eq i32 %conv2.i, 65281
  br i1 %cmp3.i, label %while.body.i.cleanup_crit_edge, label %lor.lhs.false.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65472, i32 %conv2.i)
  %cmp6.i = icmp ult i32 %conv2.i, 65472
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %conv2.i)
  %cmp9.not.i = icmp eq i32 %conv2.i, 65535
  %or.cond.i = or i1 %cmp6.i, %cmp9.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.while.cond.i_crit_edge, label %while.body

lor.lhs.false.i.while.cond.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.body:                                       ; preds = %lor.lhs.false.i
  %trunc = trunc i32 %or.i to i16
  %15 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %sw.default [
    i16 -64, label %while.body.sw.bb_crit_edge
    i16 -63, label %while.body.sw.bb_crit_edge245
    i16 -52, label %while.body.cleanup_crit_edge
    i16 -41, label %while.body.sw.epilog_crit_edge
    i16 -51, label %while.body.cleanup_crit_edge246
    i16 -50, label %while.body.cleanup_crit_edge247
    i16 -49, label %while.body.cleanup_crit_edge248
    i16 -55, label %while.body.cleanup_crit_edge249
    i16 -54, label %while.body.cleanup_crit_edge250
    i16 -53, label %while.body.cleanup_crit_edge251
    i16 -59, label %while.body.cleanup_crit_edge252
    i16 -58, label %while.body.cleanup_crit_edge253
    i16 -57, label %while.body.cleanup_crit_edge254
    i16 -62, label %while.body.cleanup_crit_edge255
    i16 -61, label %while.body.cleanup_crit_edge256
    i16 -60, label %sw.bb14
    i16 -37, label %sw.bb26
    i16 -35, label %sw.bb43
    i16 -18, label %sw.bb45
    i16 -38, label %sw.bb48
    i16 -40, label %while.body.sw.epilog_crit_edge257
    i16 -39, label %while.body.sw.epilog_crit_edge258
    i16 -48, label %while.body.sw.epilog_crit_edge259
    i16 -47, label %while.body.sw.epilog_crit_edge260
    i16 -46, label %while.body.sw.epilog_crit_edge261
    i16 -45, label %while.body.sw.epilog_crit_edge262
    i16 -44, label %while.body.sw.epilog_crit_edge263
    i16 -43, label %while.body.sw.epilog_crit_edge264
    i16 -42, label %while.body.sw.epilog_crit_edge265
  ]

while.body.sw.epilog_crit_edge265:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

while.body.sw.epilog_crit_edge264:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

while.body.sw.epilog_crit_edge263:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

while.body.sw.epilog_crit_edge262:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

while.body.sw.epilog_crit_edge261:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

while.body.sw.epilog_crit_edge260:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

while.body.sw.epilog_crit_edge259:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

while.body.sw.epilog_crit_edge258:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

while.body.sw.epilog_crit_edge257:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

while.body.cleanup_crit_edge256:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.cleanup_crit_edge255:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.cleanup_crit_edge254:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.cleanup_crit_edge253:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.cleanup_crit_edge252:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.cleanup_crit_edge251:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.cleanup_crit_edge250:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.cleanup_crit_edge249:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.cleanup_crit_edge248:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.cleanup_crit_edge247:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.cleanup_crit_edge246:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.sw.bb_crit_edge245:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

while.body.sw.bb_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %while.body.sw.bb_crit_edge, %while.body.sw.bb_crit_edge245
  %16 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stream, align 4
  %add.ptr.i99 = getelementptr i8, ptr %17, i32 2
  %cmp.i101 = icmp ugt ptr %add.ptr.i99, %9
  br i1 %cmp.i101, label %sw.bb.cleanup_crit_edge, label %if.end.i103

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i103:                                      ; preds = %sw.bb
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %17, align 1
  %conv.i102 = zext i16 %19 to i32
  %add.ptr3.i = getelementptr i8, ptr %17, i32 %conv.i102
  %cmp5.i = icmp ugt ptr %add.ptr3.i, %9
  br i1 %cmp5.i, label %if.end.i103.cleanup_crit_edge, label %if.end7

if.end.i103.cleanup_crit_edge:                    ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %out, align 4
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.i102, ptr %length.i, align 4
  %call8 = call fastcc i32 @jpeg_parse_frame_header(ptr noundef nonnull %stream, i16 noundef zeroext %trunc, ptr noundef %frame)
  br label %sw.epilog

sw.bb14:                                          ; preds = %while.body
  %22 = ptrtoint ptr %num_dht to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_dht, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %num_dht, align 4
  %rem = and i32 %23, 3
  %arrayidx = getelementptr %struct.v4l2_jpeg_header, ptr %out, i32 0, i32 3, i32 %rem
  %24 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stream, align 4
  %add.ptr.i105 = getelementptr i8, ptr %25, i32 2
  %cmp.i107 = icmp ugt ptr %add.ptr.i105, %9
  br i1 %cmp.i107, label %sw.bb14.cleanup_crit_edge, label %if.end.i111

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i111:                                      ; preds = %sw.bb14
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %25, align 1
  %conv.i108 = zext i16 %27 to i32
  %add.ptr3.i109 = getelementptr i8, ptr %25, i32 %conv.i108
  %cmp5.i110 = icmp ugt ptr %add.ptr3.i109, %9
  br i1 %cmp5.i110, label %if.end.i111.cleanup_crit_edge, label %if.end20

if.end.i111.cleanup_crit_edge:                    ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end.i111
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %arrayidx, align 4
  %length.i112 = getelementptr %struct.v4l2_jpeg_header, ptr %out, i32 0, i32 3, i32 %rem, i32 1
  %29 = ptrtoint ptr %length.i112 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv.i108, ptr %length.i112, align 4
  %30 = ptrtoint ptr %huffman_tables to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %huffman_tables, align 4
  %tobool.not = icmp eq ptr %31, null
  br i1 %tobool.not, label %jpeg_get_word_be.exit.i, label %if.end23

jpeg_get_word_be.exit.i:                          ; preds = %if.end20
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %25, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %33)
  %cmp1.i = icmp ult i16 %33, 2
  br i1 %cmp1.i, label %jpeg_get_word_be.exit.i.cleanup_crit_edge, label %if.end3.i

jpeg_get_word_be.exit.i.cleanup_crit_edge:        ; preds = %jpeg_get_word_be.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3.i:                                        ; preds = %jpeg_get_word_be.exit.i
  %conv.i.i117 = zext i16 %33 to i32
  %add.ptr.i9.i = getelementptr i8, ptr %25, i32 %conv.i.i117
  %cmp.i11.i = icmp ugt ptr %add.ptr.i9.i, %9
  br i1 %cmp.i11.i, label %if.end3.i.cleanup_crit_edge, label %if.end.i12.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i12.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr.i9.i, ptr %stream, align 4
  br label %sw.epilog

if.end23:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = call fastcc i32 @jpeg_parse_huffman_tables(ptr noundef nonnull %stream, ptr noundef nonnull %31)
  br label %sw.epilog

sw.bb26:                                          ; preds = %while.body
  %35 = ptrtoint ptr %num_dqt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_dqt, align 4
  %inc28 = add i32 %36, 1
  store i32 %inc28, ptr %num_dqt, align 4
  %rem29 = and i32 %36, 3
  %arrayidx30 = getelementptr %struct.v4l2_jpeg_header, ptr %out, i32 0, i32 5, i32 %rem29
  %37 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %stream, align 4
  %add.ptr.i119 = getelementptr i8, ptr %38, i32 2
  %cmp.i121 = icmp ugt ptr %add.ptr.i119, %9
  br i1 %cmp.i121, label %sw.bb26.cleanup_crit_edge, label %if.end.i125

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i125:                                      ; preds = %sw.bb26
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %38, align 1
  %conv.i122 = zext i16 %40 to i32
  %add.ptr3.i123 = getelementptr i8, ptr %38, i32 %conv.i122
  %cmp5.i124 = icmp ugt ptr %add.ptr3.i123, %9
  br i1 %cmp5.i124, label %if.end.i125.cleanup_crit_edge, label %if.end35

if.end.i125.cleanup_crit_edge:                    ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %if.end.i125
  %41 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %arrayidx30, align 4
  %length.i126 = getelementptr %struct.v4l2_jpeg_header, ptr %out, i32 0, i32 5, i32 %rem29, i32 1
  %42 = ptrtoint ptr %length.i126 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv.i122, ptr %length.i126, align 4
  %43 = ptrtoint ptr %quantization_tables to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %quantization_tables, align 4
  %tobool36.not = icmp eq ptr %44, null
  br i1 %tobool36.not, label %jpeg_get_word_be.exit.i134, label %jpeg_get_word_be.exit.i147

jpeg_get_word_be.exit.i134:                       ; preds = %if.end35
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %38, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %46)
  %cmp1.i133 = icmp ult i16 %46, 2
  br i1 %cmp1.i133, label %jpeg_get_word_be.exit.i134.cleanup_crit_edge, label %if.end3.i139

jpeg_get_word_be.exit.i134.cleanup_crit_edge:     ; preds = %jpeg_get_word_be.exit.i134
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3.i139:                                     ; preds = %jpeg_get_word_be.exit.i134
  %conv.i.i135 = zext i16 %46 to i32
  %add.ptr.i9.i137 = getelementptr i8, ptr %38, i32 %conv.i.i135
  %cmp.i11.i138 = icmp ugt ptr %add.ptr.i9.i137, %9
  br i1 %cmp.i11.i138, label %if.end3.i139.cleanup_crit_edge, label %if.end.i12.i140

if.end3.i139.cleanup_crit_edge:                   ; preds = %if.end3.i139
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i12.i140:                                  ; preds = %if.end3.i139
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr.i9.i137, ptr %stream, align 4
  br label %sw.epilog

jpeg_get_word_be.exit.i147:                       ; preds = %if.end35
  %48 = ptrtoint ptr %precision to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %precision, align 4
  %50 = ptrtoint ptr %38 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %38, align 1
  %52 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr.i119, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 67, i16 %51)
  %cmp1.i146 = icmp ult i16 %51, 67
  br i1 %cmp1.i146, label %jpeg_get_word_be.exit.i147.cleanup_crit_edge, label %while.body.lr.ph.i

jpeg_get_word_be.exit.i147.cleanup_crit_edge:     ; preds = %jpeg_get_word_be.exit.i147
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %jpeg_get_word_be.exit.i147
  %conv.i.i148 = zext i16 %51 to i32
  %sub.i149 = add nsw i32 %conv.i.i148, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %49)
  %cmp16.not.i = icmp eq i8 %49, 12
  br label %while.body.i151

while.body.i151:                                  ; preds = %cleanup.i.while.body.i151_crit_edge, %while.body.lr.ph.i
  %len.089.i = phi i32 [ %sub.i149, %while.body.lr.ph.i ], [ %sub44.i, %cleanup.i.while.body.i151_crit_edge ]
  %53 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %stream, align 4
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %0, align 4
  %cmp.not.i.i150 = icmp ult ptr %54, %56
  br i1 %cmp.not.i.i150, label %jpeg_get_byte.exit.i, label %while.body.i151.cleanup_crit_edge

while.body.i151.cleanup_crit_edge:                ; preds = %while.body.i151
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

jpeg_get_byte.exit.i:                             ; preds = %while.body.i151
  %incdec.ptr.i.i152 = getelementptr i8, ptr %54, i32 1
  %57 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %incdec.ptr.i.i152, ptr %stream, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %54, align 1
  %conv.i71.i = zext i8 %59 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %59)
  %cmp10.not.i = icmp ult i8 %59, 16
  br i1 %cmp10.not.i, label %jpeg_get_byte.exit.i.if.end19.i_crit_edge, label %land.lhs.true.i

jpeg_get_byte.exit.i.if.end19.i_crit_edge:        ; preds = %jpeg_get_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

land.lhs.true.i:                                  ; preds = %jpeg_get_byte.exit.i
  %.mask.i = and i32 %conv.i71.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.mask.i)
  %cmp13.not.i = icmp eq i32 %.mask.i, 16
  %or.cond.i153 = and i1 %cmp16.not.i, %cmp13.not.i
  br i1 %or.cond.i153, label %land.lhs.true.i.if.end19.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i.if.end19.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.end19.i:                                       ; preds = %land.lhs.true.i.if.end19.i_crit_edge, %jpeg_get_byte.exit.i.if.end19.i_crit_edge
  %conv21.i = and i32 %conv.i71.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv21.i)
  %cmp23.i = icmp ugt i32 %conv21.i, 3
  br i1 %cmp23.i, label %if.end19.i.cleanup_crit_edge, label %if.end26.i

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26.i:                                       ; preds = %if.end19.i
  %cond.i = select i1 %cmp10.not.i, i32 64, i32 128
  %add.ptr.i74.i = getelementptr i8, ptr %incdec.ptr.i.i152, i32 %cond.i
  %cmp.i76.i = icmp ugt ptr %add.ptr.i74.i, %56
  br i1 %cmp.i76.i, label %if.end26.i.cleanup_crit_edge, label %cleanup.i

if.end26.i.cleanup_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.i:                                        ; preds = %if.end26.i
  %60 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr.i74.i, ptr %stream, align 4
  %arrayidx.i = getelementptr %struct.v4l2_jpeg_reference, ptr %44, i32 %conv21.i
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %incdec.ptr.i.i152, ptr %arrayidx.i, align 4
  %length.i154 = getelementptr %struct.v4l2_jpeg_reference, ptr %44, i32 %conv21.i, i32 1
  %62 = ptrtoint ptr %length.i154 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %cond.i, ptr %length.i154, align 4
  %cond43.neg.i = select i1 %cmp10.not.i, i32 -65, i32 -129
  %sub44.i = add nsw i32 %cond43.neg.i, %len.089.i
  %cmp4.i = icmp sgt i32 %sub44.i, 64
  br i1 %cmp4.i, label %cleanup.i.while.body.i151_crit_edge, label %cleanup.i.sw.epilog_crit_edge

cleanup.i.sw.epilog_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

cleanup.i.while.body.i151_crit_edge:              ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i151

sw.bb43:                                          ; preds = %while.body
  %63 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %stream, align 4
  %add.ptr.i.i155 = getelementptr i8, ptr %64, i32 2
  %cmp.i.i157 = icmp ugt ptr %add.ptr.i.i155, %9
  br i1 %cmp.i.i157, label %sw.bb43.cleanup_crit_edge, label %jpeg_get_word_be.exit.i158

sw.bb43.cleanup_crit_edge:                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

jpeg_get_word_be.exit.i158:                       ; preds = %sw.bb43
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %64, align 1
  %67 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr.i.i155, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %66)
  %cmp1.not.i = icmp eq i16 %66, 4
  br i1 %cmp1.not.i, label %if.end3.i159, label %jpeg_get_word_be.exit.i158.cleanup_crit_edge

jpeg_get_word_be.exit.i158.cleanup_crit_edge:     ; preds = %jpeg_get_word_be.exit.i158
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3.i159:                                     ; preds = %jpeg_get_word_be.exit.i158
  %add.ptr.i14.i = getelementptr i8, ptr %64, i32 4
  %cmp.i16.i = icmp ugt ptr %add.ptr.i14.i, %9
  br i1 %cmp.i16.i, label %if.end3.i159.cleanup_crit_edge, label %jpeg_get_word_be.exit20.i

if.end3.i159.cleanup_crit_edge:                   ; preds = %if.end3.i159
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

jpeg_get_word_be.exit20.i:                        ; preds = %if.end3.i159
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %add.ptr.i.i155 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %add.ptr.i.i155, align 1
  %70 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr.i14.i, ptr %stream, align 4
  %71 = ptrtoint ptr %restart_interval to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %69, ptr %restart_interval, align 2
  br label %sw.epilog

sw.bb45:                                          ; preds = %while.body
  %72 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %stream, align 4
  %add.ptr.i.i162 = getelementptr i8, ptr %73, i32 2
  %cmp.i.i164 = icmp ugt ptr %add.ptr.i.i162, %9
  br i1 %cmp.i.i164, label %sw.bb45.cleanup_crit_edge, label %jpeg_get_word_be.exit.i168

sw.bb45.cleanup_crit_edge:                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

jpeg_get_word_be.exit.i168:                       ; preds = %sw.bb45
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %73, align 1
  %76 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr.i.i162, ptr %stream, align 4
  %conv.i.i165 = zext i16 %75 to i32
  %add.ptr.i166 = getelementptr i8, ptr %73, i32 8
  %cmp1.i167 = icmp ugt ptr %add.ptr.i166, %9
  br i1 %cmp1.i167, label %jpeg_get_word_be.exit.i168.cleanup_crit_edge, label %lor.lhs.false.i169

jpeg_get_word_be.exit.i168.cleanup_crit_edge:     ; preds = %jpeg_get_word_be.exit.i168
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i169:                               ; preds = %jpeg_get_word_be.exit.i168
  %call3.i = call i32 @strncmp(ptr noundef %add.ptr.i.i162, ptr noundef nonnull dereferenceable(6) @.str, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %lor.lhs.false.i169.cleanup_crit_edge

lor.lhs.false.i169.cleanup_crit_edge:             ; preds = %lor.lhs.false.i169
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i:                                        ; preds = %lor.lhs.false.i169
  %add.ptr.i30.i = getelementptr i8, ptr %73, i32 13
  %cmp.not.i.i170 = icmp ult ptr %add.ptr.i30.i, %9
  br i1 %cmp.not.i.i170, label %jpeg_get_byte.exit.i172, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

jpeg_get_byte.exit.i172:                          ; preds = %if.end5.i
  %incdec.ptr.i.i171 = getelementptr i8, ptr %73, i32 14
  %77 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %incdec.ptr.i.i171, ptr %stream, align 4
  %78 = ptrtoint ptr %add.ptr.i30.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %add.ptr.i30.i, align 1
  %conv.i36.i = zext i8 %79 to i32
  %80 = ptrtoint ptr %app14_tf to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv.i36.i, ptr %app14_tf, align 4
  %sub14.i = add nsw i32 %conv.i.i165, -13
  %add.ptr.i39.i = getelementptr i8, ptr %incdec.ptr.i.i171, i32 %sub14.i
  %cmp.i41.i = icmp ugt ptr %add.ptr.i39.i, %9
  br i1 %cmp.i41.i, label %jpeg_get_byte.exit.i172.cleanup_crit_edge, label %if.end.i42.i

jpeg_get_byte.exit.i172.cleanup_crit_edge:        ; preds = %jpeg_get_byte.exit.i172
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i42.i:                                     ; preds = %jpeg_get_byte.exit.i172
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %add.ptr.i39.i, ptr %stream, align 4
  br label %sw.epilog

sw.bb48:                                          ; preds = %while.body
  %sos = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %out, i32 0, i32 1
  %82 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %stream, align 4
  %add.ptr.i175 = getelementptr i8, ptr %83, i32 2
  %cmp.i177 = icmp ugt ptr %add.ptr.i175, %9
  br i1 %cmp.i177, label %sw.bb48.cleanup_crit_edge, label %if.end.i181

sw.bb48.cleanup_crit_edge:                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i181:                                      ; preds = %sw.bb48
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %83, align 1
  %conv.i178 = zext i16 %85 to i32
  %add.ptr3.i179 = getelementptr i8, ptr %83, i32 %conv.i178
  %cmp5.i180 = icmp ugt ptr %add.ptr3.i179, %9
  br i1 %cmp5.i180, label %if.end.i181.cleanup_crit_edge, label %if.end53

if.end.i181.cleanup_crit_edge:                    ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end53:                                         ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %sos to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %sos, align 4
  %length.i182 = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %out, i32 0, i32 1, i32 1
  %87 = ptrtoint ptr %length.i182 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv.i178, ptr %length.i182, align 4
  %scan = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %out, i32 0, i32 7
  %88 = ptrtoint ptr %scan to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %scan, align 4
  %call54 = call fastcc i32 @jpeg_parse_scan_header(ptr noundef nonnull %stream, ptr noundef %89)
  %90 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %stream, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %91 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %ecs_offset = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %out, i32 0, i32 11
  %92 = ptrtoint ptr %ecs_offset to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %sub.ptr.sub, ptr %ecs_offset, align 4
  br label %cleanup

sw.default:                                       ; preds = %while.body
  %93 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %stream, align 4
  %add.ptr.i.i187 = getelementptr i8, ptr %94, i32 2
  %cmp.i.i189 = icmp ugt ptr %add.ptr.i.i187, %9
  br i1 %cmp.i.i189, label %sw.default.cleanup_crit_edge, label %jpeg_get_word_be.exit.i191

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

jpeg_get_word_be.exit.i191:                       ; preds = %sw.default
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %96 = load i16, ptr %94, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %96)
  %cmp1.i190 = icmp ult i16 %96, 2
  br i1 %cmp1.i190, label %jpeg_get_word_be.exit.i191.cleanup_crit_edge, label %if.end3.i196

jpeg_get_word_be.exit.i191.cleanup_crit_edge:     ; preds = %jpeg_get_word_be.exit.i191
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3.i196:                                     ; preds = %jpeg_get_word_be.exit.i191
  %conv.i.i192 = zext i16 %96 to i32
  %add.ptr.i9.i194 = getelementptr i8, ptr %94, i32 %conv.i.i192
  %cmp.i11.i195 = icmp ugt ptr %add.ptr.i9.i194, %9
  br i1 %cmp.i11.i195, label %if.end3.i196.cleanup_crit_edge, label %if.end.i12.i197

if.end3.i196.cleanup_crit_edge:                   ; preds = %if.end3.i196
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i12.i197:                                  ; preds = %if.end3.i196
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %add.ptr.i9.i194, ptr %stream, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i12.i197, %if.end.i42.i, %jpeg_get_word_be.exit20.i, %cleanup.i.sw.epilog_crit_edge, %if.end.i12.i140, %if.end23, %if.end.i12.i, %if.end7, %while.body.sw.epilog_crit_edge, %while.body.sw.epilog_crit_edge257, %while.body.sw.epilog_crit_edge258, %while.body.sw.epilog_crit_edge259, %while.body.sw.epilog_crit_edge260, %while.body.sw.epilog_crit_edge261, %while.body.sw.epilog_crit_edge262, %while.body.sw.epilog_crit_edge263, %while.body.sw.epilog_crit_edge264, %while.body.sw.epilog_crit_edge265
  %ret.1 = phi i32 [ 0, %while.body.sw.epilog_crit_edge ], [ 0, %while.body.sw.epilog_crit_edge257 ], [ 0, %while.body.sw.epilog_crit_edge258 ], [ 0, %while.body.sw.epilog_crit_edge259 ], [ 0, %while.body.sw.epilog_crit_edge260 ], [ 0, %while.body.sw.epilog_crit_edge261 ], [ 0, %while.body.sw.epilog_crit_edge262 ], [ 0, %while.body.sw.epilog_crit_edge263 ], [ 0, %while.body.sw.epilog_crit_edge264 ], [ 0, %while.body.sw.epilog_crit_edge265 ], [ %call25, %if.end23 ], [ %call8, %if.end7 ], [ 0, %if.end.i12.i ], [ 0, %if.end.i12.i140 ], [ 0, %jpeg_get_word_be.exit20.i ], [ 0, %if.end.i42.i ], [ 0, %if.end.i12.i197 ], [ 0, %cleanup.i.sw.epilog_crit_edge ]
  %cmp59 = icmp slt i32 %ret.1, 0
  br i1 %cmp59, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.while.cond_crit_edge

sw.epilog.while.cond_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %if.end3.i196.cleanup_crit_edge, %jpeg_get_word_be.exit.i191.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %if.end53, %if.end.i181.cleanup_crit_edge, %sw.bb48.cleanup_crit_edge, %jpeg_get_byte.exit.i172.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %lor.lhs.false.i169.cleanup_crit_edge, %jpeg_get_word_be.exit.i168.cleanup_crit_edge, %sw.bb45.cleanup_crit_edge, %if.end3.i159.cleanup_crit_edge, %jpeg_get_word_be.exit.i158.cleanup_crit_edge, %sw.bb43.cleanup_crit_edge, %if.end26.i.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %while.body.i151.cleanup_crit_edge, %jpeg_get_word_be.exit.i147.cleanup_crit_edge, %if.end3.i139.cleanup_crit_edge, %jpeg_get_word_be.exit.i134.cleanup_crit_edge, %if.end.i125.cleanup_crit_edge, %sw.bb26.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %jpeg_get_word_be.exit.i.cleanup_crit_edge, %if.end.i111.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %if.end.i103.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.body.cleanup_crit_edge246, %while.body.cleanup_crit_edge247, %while.body.cleanup_crit_edge248, %while.body.cleanup_crit_edge249, %while.body.cleanup_crit_edge250, %while.body.cleanup_crit_edge251, %while.body.cleanup_crit_edge252, %while.body.cleanup_crit_edge253, %while.body.cleanup_crit_edge254, %while.body.cleanup_crit_edge255, %while.body.cleanup_crit_edge256, %while.body.i.cleanup_crit_edge, %while.cond.i.cleanup_crit_edge, %jpeg_get_word_be.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call54, %if.end53 ], [ -22, %jpeg_get_word_be.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb48.cleanup_crit_edge ], [ -22, %if.end.i181.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %if.end19.i.cleanup_crit_edge ], [ -22, %while.body.i151.cleanup_crit_edge ], [ -22, %if.end26.i.cleanup_crit_edge ], [ -22, %while.cond.i.cleanup_crit_edge ], [ -22, %while.body.i.cleanup_crit_edge ], [ -22, %sw.default.cleanup_crit_edge ], [ -22, %if.end3.i196.cleanup_crit_edge ], [ -22, %jpeg_get_word_be.exit.i191.cleanup_crit_edge ], [ -22, %if.end5.i.cleanup_crit_edge ], [ -22, %sw.bb45.cleanup_crit_edge ], [ -22, %jpeg_get_byte.exit.i172.cleanup_crit_edge ], [ -22, %jpeg_get_word_be.exit.i168.cleanup_crit_edge ], [ -22, %lor.lhs.false.i169.cleanup_crit_edge ], [ -22, %if.end3.i159.cleanup_crit_edge ], [ -22, %sw.bb43.cleanup_crit_edge ], [ -22, %jpeg_get_word_be.exit.i158.cleanup_crit_edge ], [ -22, %jpeg_get_word_be.exit.i147.cleanup_crit_edge ], [ -22, %if.end3.i139.cleanup_crit_edge ], [ -22, %jpeg_get_word_be.exit.i134.cleanup_crit_edge ], [ -22, %if.end3.i.cleanup_crit_edge ], [ -22, %jpeg_get_word_be.exit.i.cleanup_crit_edge ], [ -22, %if.end.i125.cleanup_crit_edge ], [ -22, %sw.bb26.cleanup_crit_edge ], [ -22, %if.end.i111.cleanup_crit_edge ], [ -22, %sw.bb14.cleanup_crit_edge ], [ -22, %if.end.i103.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ %ret.1, %sw.epilog.cleanup_crit_edge ], [ -22, %while.body.cleanup_crit_edge ], [ -22, %while.body.cleanup_crit_edge246 ], [ -22, %while.body.cleanup_crit_edge247 ], [ -22, %while.body.cleanup_crit_edge248 ], [ -22, %while.body.cleanup_crit_edge249 ], [ -22, %while.body.cleanup_crit_edge250 ], [ -22, %while.body.cleanup_crit_edge251 ], [ -22, %while.body.cleanup_crit_edge252 ], [ -22, %while.body.cleanup_crit_edge253 ], [ -22, %while.body.cleanup_crit_edge254 ], [ -22, %while.body.cleanup_crit_edge255 ], [ -22, %while.body.cleanup_crit_edge256 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stream) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jpeg_parse_frame_header(ptr noundef %stream, i16 noundef zeroext %sof_marker, ptr noundef writeonly %frame_header) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2
  %end.i = getelementptr inbounds %struct.jpeg_stream, ptr %stream, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %cmp.i = icmp ugt ptr %add.ptr.i, %3
  br i1 %cmp.i, label %entry.cleanup107_crit_edge, label %jpeg_get_word_be.exit

entry.cleanup107_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107

jpeg_get_word_be.exit:                            ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %1, align 1
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %stream, align 4
  %conv.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %5)
  %cmp1 = icmp ult i16 %5, 11
  br i1 %cmp1, label %jpeg_get_word_be.exit.cleanup107_crit_edge, label %if.end3

jpeg_get_word_be.exit.cleanup107_crit_edge:       ; preds = %jpeg_get_word_be.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107

if.end3:                                          ; preds = %jpeg_get_word_be.exit
  %tobool.not = icmp eq ptr %frame_header, null
  br i1 %tobool.not, label %if.else104, label %if.then4

if.then4:                                         ; preds = %if.end3
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stream, align 4
  %cmp.not.i = icmp ult ptr %8, %3
  br i1 %cmp.not.i, label %jpeg_get_byte.exit, label %if.then4.cleanup107_crit_edge

if.then4.cleanup107_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107

jpeg_get_byte.exit:                               ; preds = %if.then4
  %incdec.ptr.i = getelementptr i8, ptr %8, i32 1
  %9 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %incdec.ptr.i, ptr %stream, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %8, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %11, label %jpeg_get_byte.exit.cleanup107_crit_edge [
    i8 8, label %jpeg_get_byte.exit.if.end14_crit_edge
    i8 12, label %lor.lhs.false
  ]

jpeg_get_byte.exit.if.end14_crit_edge:            ; preds = %jpeg_get_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

jpeg_get_byte.exit.cleanup107_crit_edge:          ; preds = %jpeg_get_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107

lor.lhs.false:                                    ; preds = %jpeg_get_byte.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 -63, i16 %sof_marker)
  %cmp11.not = icmp eq i16 %sof_marker, -63
  br i1 %cmp11.not, label %lor.lhs.false.if.end14_crit_edge, label %lor.lhs.false.cleanup107_crit_edge

lor.lhs.false.cleanup107_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end14:                                         ; preds = %lor.lhs.false.if.end14_crit_edge, %jpeg_get_byte.exit.if.end14_crit_edge
  %13 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stream, align 4
  %add.ptr.i168 = getelementptr i8, ptr %14, i32 2
  %cmp.i170 = icmp ugt ptr %add.ptr.i168, %3
  br i1 %cmp.i170, label %if.end14.cleanup107_crit_edge, label %jpeg_get_word_be.exit174

if.end14.cleanup107_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107

jpeg_get_word_be.exit174:                         ; preds = %if.end14
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %14, align 1
  %17 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i168, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp20 = icmp eq i16 %16, 0
  br i1 %cmp20, label %jpeg_get_word_be.exit174.cleanup107_crit_edge, label %if.end23

jpeg_get_word_be.exit174.cleanup107_crit_edge:    ; preds = %jpeg_get_word_be.exit174
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107

if.end23:                                         ; preds = %jpeg_get_word_be.exit174
  %18 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stream, align 4
  %add.ptr.i175 = getelementptr i8, ptr %19, i32 2
  %cmp.i177 = icmp ugt ptr %add.ptr.i175, %3
  br i1 %cmp.i177, label %if.end23.cleanup107_crit_edge, label %jpeg_get_word_be.exit181

if.end23.cleanup107_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107

jpeg_get_word_be.exit181:                         ; preds = %if.end23
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %19, align 1
  %22 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i175, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp29 = icmp eq i16 %21, 0
  br i1 %cmp29, label %jpeg_get_word_be.exit181.cleanup107_crit_edge, label %if.end32

jpeg_get_word_be.exit181.cleanup107_crit_edge:    ; preds = %jpeg_get_word_be.exit181
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107

if.end32:                                         ; preds = %jpeg_get_word_be.exit181
  %23 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stream, align 4
  %cmp.not.i183 = icmp ult ptr %24, %3
  br i1 %cmp.not.i183, label %jpeg_get_byte.exit188, label %if.end32.cleanup107_crit_edge

if.end32.cleanup107_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107

jpeg_get_byte.exit188:                            ; preds = %if.end32
  %incdec.ptr.i184 = getelementptr i8, ptr %24, i32 1
  %25 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %incdec.ptr.i184, ptr %stream, align 4
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %24, align 1
  %conv.i185 = zext i8 %27 to i32
  %28 = add i8 %27, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %28)
  %29 = icmp ult i8 %28, -4
  br i1 %29, label %jpeg_get_byte.exit188.cleanup107_crit_edge, label %if.end44

jpeg_get_byte.exit188.cleanup107_crit_edge:       ; preds = %jpeg_get_byte.exit188
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107

if.end44:                                         ; preds = %jpeg_get_byte.exit188
  %mul = mul nuw nsw i32 %conv.i185, 3
  %add = add nuw nsw i32 %mul, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv.i)
  %cmp45.not = icmp eq i32 %add, %conv.i
  br i1 %cmp45.not, label %for.body.lr.ph, label %if.end44.cleanup107_crit_edge

if.end44.cleanup107_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107

for.body.lr.ph:                                   ; preds = %if.end44
  %precision = getelementptr inbounds %struct.v4l2_jpeg_frame_header, ptr %frame_header, i32 0, i32 2
  %30 = ptrtoint ptr %precision to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %11, ptr %precision, align 4
  %31 = ptrtoint ptr %frame_header to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %16, ptr %frame_header, align 4
  %width = getelementptr inbounds %struct.v4l2_jpeg_frame_header, ptr %frame_header, i32 0, i32 1
  %32 = ptrtoint ptr %width to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %21, ptr %width, align 2
  %num_components = getelementptr inbounds %struct.v4l2_jpeg_frame_header, ptr %frame_header, i32 0, i32 3
  %33 = ptrtoint ptr %num_components to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %27, ptr %num_components, align 1
  %subsampling = getelementptr inbounds %struct.v4l2_jpeg_frame_header, ptr %frame_header, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %jpeg_get_byte.exit209.for.body_crit_edge, %for.body.lr.ph
  %i.0237 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %jpeg_get_byte.exit209.for.body_crit_edge ]
  %34 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stream, align 4
  %36 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %end.i, align 4
  %cmp.not.i190 = icmp ult ptr %35, %37
  br i1 %cmp.not.i190, label %jpeg_get_byte.exit195, label %for.body.cleanup107_crit_edge

for.body.cleanup107_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107

jpeg_get_byte.exit195:                            ; preds = %for.body
  %incdec.ptr.i191 = getelementptr i8, ptr %35, i32 1
  %38 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %incdec.ptr.i191, ptr %stream, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %35, align 1
  %cmp.not.i197 = icmp ult ptr %incdec.ptr.i191, %37
  br i1 %cmp.not.i197, label %jpeg_get_byte.exit202, label %jpeg_get_byte.exit195.cleanup107_crit_edge

jpeg_get_byte.exit195.cleanup107_crit_edge:       ; preds = %jpeg_get_byte.exit195
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107

jpeg_get_byte.exit202:                            ; preds = %jpeg_get_byte.exit195
  %incdec.ptr.i198 = getelementptr i8, ptr %35, i32 2
  %41 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %incdec.ptr.i198, ptr %stream, align 4
  %42 = ptrtoint ptr %incdec.ptr.i191 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %incdec.ptr.i191, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0237)
  %cmp65 = icmp eq i32 %i.0237, 0
  br i1 %cmp65, label %if.then67, label %if.else

if.then67:                                        ; preds = %jpeg_get_byte.exit202
  %call70 = tail call fastcc i32 @v4l2_jpeg_decode_subsampling(i8 noundef zeroext %27, i8 noundef zeroext %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.then67.cleanup107_crit_edge, label %cleanup

if.then67.cleanup107_crit_edge:                   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107

cleanup:                                          ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %subsampling to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call70, ptr %subsampling, align 4
  br label %if.end79

if.else:                                          ; preds = %jpeg_get_byte.exit202
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %43)
  %cmp75.not = icmp eq i8 %43, 17
  br i1 %cmp75.not, label %if.else.if.end79_crit_edge, label %if.else.cleanup107_crit_edge

if.else.cleanup107_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107

if.else.if.end79_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.end79:                                         ; preds = %if.else.if.end79_crit_edge, %cleanup
  %45 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %stream, align 4
  %47 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %end.i, align 4
  %cmp.not.i204 = icmp ult ptr %46, %48
  br i1 %cmp.not.i204, label %jpeg_get_byte.exit209, label %if.end79.cleanup107_crit_edge

if.end79.cleanup107_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107

jpeg_get_byte.exit209:                            ; preds = %if.end79
  %incdec.ptr.i205 = getelementptr i8, ptr %46, i32 1
  %49 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %incdec.ptr.i205, ptr %stream, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %46, align 1
  %arrayidx = getelementptr %struct.v4l2_jpeg_frame_header, ptr %frame_header, i32 0, i32 4, i32 %i.0237
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %40, ptr %arrayidx, align 1
  %53 = lshr i8 %43, 4
  %horizontal_sampling_factor = getelementptr %struct.v4l2_jpeg_frame_header, ptr %frame_header, i32 0, i32 4, i32 %i.0237, i32 1
  %54 = ptrtoint ptr %horizontal_sampling_factor to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %horizontal_sampling_factor, align 1
  %conv89 = and i8 %43, 15
  %vertical_sampling_factor = getelementptr %struct.v4l2_jpeg_frame_header, ptr %frame_header, i32 0, i32 4, i32 %i.0237, i32 2
  %55 = ptrtoint ptr %vertical_sampling_factor to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv89, ptr %vertical_sampling_factor, align 1
  %quantization_table_selector = getelementptr %struct.v4l2_jpeg_frame_header, ptr %frame_header, i32 0, i32 4, i32 %i.0237, i32 3
  %56 = ptrtoint ptr %quantization_table_selector to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %51, ptr %quantization_table_selector, align 1
  %inc = add nuw nsw i32 %i.0237, 1
  %exitcond.not = icmp eq i32 %inc, %conv.i185
  br i1 %exitcond.not, label %jpeg_get_byte.exit209.cleanup107_crit_edge, label %jpeg_get_byte.exit209.for.body_crit_edge

jpeg_get_byte.exit209.for.body_crit_edge:         ; preds = %jpeg_get_byte.exit209
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

jpeg_get_byte.exit209.cleanup107_crit_edge:       ; preds = %jpeg_get_byte.exit209
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107

if.else104:                                       ; preds = %if.end3
  %sub = add nsw i32 %conv.i, -2
  %57 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %stream, align 4
  %add.ptr.i210 = getelementptr i8, ptr %58, i32 %sub
  %cmp.i212 = icmp ugt ptr %add.ptr.i210, %3
  br i1 %cmp.i212, label %if.else104.cleanup107_crit_edge, label %if.end.i213

if.else104.cleanup107_crit_edge:                  ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107

if.end.i213:                                      ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr.i210, ptr %stream, align 4
  br label %cleanup107

cleanup107:                                       ; preds = %if.end.i213, %if.else104.cleanup107_crit_edge, %jpeg_get_byte.exit209.cleanup107_crit_edge, %if.end79.cleanup107_crit_edge, %if.else.cleanup107_crit_edge, %if.then67.cleanup107_crit_edge, %jpeg_get_byte.exit195.cleanup107_crit_edge, %for.body.cleanup107_crit_edge, %if.end44.cleanup107_crit_edge, %jpeg_get_byte.exit188.cleanup107_crit_edge, %if.end32.cleanup107_crit_edge, %jpeg_get_word_be.exit181.cleanup107_crit_edge, %if.end23.cleanup107_crit_edge, %jpeg_get_word_be.exit174.cleanup107_crit_edge, %if.end14.cleanup107_crit_edge, %lor.lhs.false.cleanup107_crit_edge, %jpeg_get_byte.exit.cleanup107_crit_edge, %if.then4.cleanup107_crit_edge, %jpeg_get_word_be.exit.cleanup107_crit_edge, %entry.cleanup107_crit_edge
  %retval.5 = phi i32 [ -22, %jpeg_get_word_be.exit.cleanup107_crit_edge ], [ 0, %if.end.i213 ], [ -22, %if.else104.cleanup107_crit_edge ], [ -22, %entry.cleanup107_crit_edge ], [ -22, %if.end44.cleanup107_crit_edge ], [ -22, %jpeg_get_byte.exit188.cleanup107_crit_edge ], [ -22, %jpeg_get_word_be.exit181.cleanup107_crit_edge ], [ -22, %jpeg_get_word_be.exit174.cleanup107_crit_edge ], [ -22, %lor.lhs.false.cleanup107_crit_edge ], [ -22, %jpeg_get_byte.exit.cleanup107_crit_edge ], [ -22, %if.then4.cleanup107_crit_edge ], [ -22, %if.end14.cleanup107_crit_edge ], [ -22, %if.end23.cleanup107_crit_edge ], [ -22, %if.end32.cleanup107_crit_edge ], [ 0, %jpeg_get_byte.exit209.cleanup107_crit_edge ], [ -22, %if.else.cleanup107_crit_edge ], [ -22, %for.body.cleanup107_crit_edge ], [ -22, %jpeg_get_byte.exit195.cleanup107_crit_edge ], [ %call70, %if.then67.cleanup107_crit_edge ], [ -22, %if.end79.cleanup107_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jpeg_parse_huffman_tables(ptr nocapture noundef %stream, ptr noundef writeonly %tables) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2
  %end.i = getelementptr inbounds %struct.jpeg_stream, ptr %stream, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %cmp.i = icmp ugt ptr %add.ptr.i, %3
  br i1 %cmp.i, label %entry.cleanup59_crit_edge, label %jpeg_get_word_be.exit

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

jpeg_get_word_be.exit:                            ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %1, align 1
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %5)
  %cmp1 = icmp ult i16 %5, 19
  br i1 %cmp1, label %jpeg_get_word_be.exit.cleanup59_crit_edge, label %for.body.lr.ph

jpeg_get_word_be.exit.cleanup59_crit_edge:        ; preds = %jpeg_get_word_be.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

for.body.lr.ph:                                   ; preds = %jpeg_get_word_be.exit
  %conv.i = zext i16 %5 to i32
  %sub = add nsw i32 %conv.i, -2
  %tobool.not = icmp eq ptr %tables, null
  br label %for.body

for.body:                                         ; preds = %for.inc53.for.body_crit_edge, %for.body.lr.ph
  %len.0134 = phi i32 [ %sub, %for.body.lr.ph ], [ %sub55, %for.inc53.for.body_crit_edge ]
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stream, align 4
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %8, %10
  br i1 %cmp.not.i, label %jpeg_get_byte.exit, label %for.body.cleanup59_crit_edge

for.body.cleanup59_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

jpeg_get_byte.exit:                               ; preds = %for.body
  %incdec.ptr.i = getelementptr i8, ptr %8, i32 1
  %11 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %incdec.ptr.i, ptr %stream, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %8, align 1
  %conv.i92 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %13)
  %cmp10 = icmp ugt i8 %13, 31
  br i1 %cmp10, label %jpeg_get_byte.exit.cleanup59_crit_edge, label %if.end13

jpeg_get_byte.exit.cleanup59_crit_edge:           ; preds = %jpeg_get_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

if.end13:                                         ; preds = %jpeg_get_byte.exit
  %conv15 = and i32 %conv.i92, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv15)
  %cmp17 = icmp ugt i32 %conv15, 1
  br i1 %cmp17, label %if.end13.cleanup59_crit_edge, label %if.end20

if.end13.cleanup59_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

if.end20:                                         ; preds = %if.end13
  %14 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stream, align 4
  %cmp.not.i96 = icmp ult ptr %15, %10
  br i1 %cmp.not.i96, label %jpeg_get_byte.exit101, label %if.end20.cleanup59_crit_edge

if.end20.cleanup59_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

jpeg_get_byte.exit101:                            ; preds = %if.end20
  %incdec.ptr.i97 = getelementptr i8, ptr %15, i32 1
  %16 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %incdec.ptr.i97, ptr %stream, align 4
  %cmp.not.i96.1 = icmp ult ptr %incdec.ptr.i97, %10
  br i1 %cmp.not.i96.1, label %jpeg_get_byte.exit101.1, label %jpeg_get_byte.exit101.cleanup59_crit_edge

jpeg_get_byte.exit101.cleanup59_crit_edge:        ; preds = %jpeg_get_byte.exit101
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

jpeg_get_byte.exit101.1:                          ; preds = %jpeg_get_byte.exit101
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %15, align 1
  %incdec.ptr.i97.1 = getelementptr i8, ptr %15, i32 2
  %19 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %incdec.ptr.i97.1, ptr %stream, align 4
  %cmp.not.i96.2 = icmp ult ptr %incdec.ptr.i97.1, %10
  br i1 %cmp.not.i96.2, label %jpeg_get_byte.exit101.2, label %jpeg_get_byte.exit101.1.cleanup59_crit_edge

jpeg_get_byte.exit101.1.cleanup59_crit_edge:      ; preds = %jpeg_get_byte.exit101.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

jpeg_get_byte.exit101.2:                          ; preds = %jpeg_get_byte.exit101.1
  %20 = ptrtoint ptr %incdec.ptr.i97 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr.i97, align 1
  %incdec.ptr.i97.2 = getelementptr i8, ptr %15, i32 3
  %22 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %incdec.ptr.i97.2, ptr %stream, align 4
  %cmp.not.i96.3 = icmp ult ptr %incdec.ptr.i97.2, %10
  br i1 %cmp.not.i96.3, label %jpeg_get_byte.exit101.3, label %jpeg_get_byte.exit101.2.cleanup59_crit_edge

jpeg_get_byte.exit101.2.cleanup59_crit_edge:      ; preds = %jpeg_get_byte.exit101.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

jpeg_get_byte.exit101.3:                          ; preds = %jpeg_get_byte.exit101.2
  %23 = ptrtoint ptr %incdec.ptr.i97.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %incdec.ptr.i97.1, align 1
  %incdec.ptr.i97.3 = getelementptr i8, ptr %15, i32 4
  %25 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %incdec.ptr.i97.3, ptr %stream, align 4
  %cmp.not.i96.4 = icmp ult ptr %incdec.ptr.i97.3, %10
  br i1 %cmp.not.i96.4, label %jpeg_get_byte.exit101.4, label %jpeg_get_byte.exit101.3.cleanup59_crit_edge

jpeg_get_byte.exit101.3.cleanup59_crit_edge:      ; preds = %jpeg_get_byte.exit101.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

jpeg_get_byte.exit101.4:                          ; preds = %jpeg_get_byte.exit101.3
  %26 = ptrtoint ptr %incdec.ptr.i97.2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %incdec.ptr.i97.2, align 1
  %incdec.ptr.i97.4 = getelementptr i8, ptr %15, i32 5
  %28 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %incdec.ptr.i97.4, ptr %stream, align 4
  %cmp.not.i96.5 = icmp ult ptr %incdec.ptr.i97.4, %10
  br i1 %cmp.not.i96.5, label %jpeg_get_byte.exit101.5, label %jpeg_get_byte.exit101.4.cleanup59_crit_edge

jpeg_get_byte.exit101.4.cleanup59_crit_edge:      ; preds = %jpeg_get_byte.exit101.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

jpeg_get_byte.exit101.5:                          ; preds = %jpeg_get_byte.exit101.4
  %29 = ptrtoint ptr %incdec.ptr.i97.3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %incdec.ptr.i97.3, align 1
  %incdec.ptr.i97.5 = getelementptr i8, ptr %15, i32 6
  %31 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %incdec.ptr.i97.5, ptr %stream, align 4
  %cmp.not.i96.6 = icmp ult ptr %incdec.ptr.i97.5, %10
  br i1 %cmp.not.i96.6, label %jpeg_get_byte.exit101.6, label %jpeg_get_byte.exit101.5.cleanup59_crit_edge

jpeg_get_byte.exit101.5.cleanup59_crit_edge:      ; preds = %jpeg_get_byte.exit101.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

jpeg_get_byte.exit101.6:                          ; preds = %jpeg_get_byte.exit101.5
  %32 = ptrtoint ptr %incdec.ptr.i97.4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr.i97.4, align 1
  %incdec.ptr.i97.6 = getelementptr i8, ptr %15, i32 7
  %34 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %incdec.ptr.i97.6, ptr %stream, align 4
  %cmp.not.i96.7 = icmp ult ptr %incdec.ptr.i97.6, %10
  br i1 %cmp.not.i96.7, label %jpeg_get_byte.exit101.7, label %jpeg_get_byte.exit101.6.cleanup59_crit_edge

jpeg_get_byte.exit101.6.cleanup59_crit_edge:      ; preds = %jpeg_get_byte.exit101.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

jpeg_get_byte.exit101.7:                          ; preds = %jpeg_get_byte.exit101.6
  %35 = ptrtoint ptr %incdec.ptr.i97.5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %incdec.ptr.i97.5, align 1
  %incdec.ptr.i97.7 = getelementptr i8, ptr %15, i32 8
  %37 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %incdec.ptr.i97.7, ptr %stream, align 4
  %cmp.not.i96.8 = icmp ult ptr %incdec.ptr.i97.7, %10
  br i1 %cmp.not.i96.8, label %jpeg_get_byte.exit101.8, label %jpeg_get_byte.exit101.7.cleanup59_crit_edge

jpeg_get_byte.exit101.7.cleanup59_crit_edge:      ; preds = %jpeg_get_byte.exit101.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

jpeg_get_byte.exit101.8:                          ; preds = %jpeg_get_byte.exit101.7
  %38 = ptrtoint ptr %incdec.ptr.i97.6 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %incdec.ptr.i97.6, align 1
  %incdec.ptr.i97.8 = getelementptr i8, ptr %15, i32 9
  %40 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %incdec.ptr.i97.8, ptr %stream, align 4
  %cmp.not.i96.9 = icmp ult ptr %incdec.ptr.i97.8, %10
  br i1 %cmp.not.i96.9, label %jpeg_get_byte.exit101.9, label %jpeg_get_byte.exit101.8.cleanup59_crit_edge

jpeg_get_byte.exit101.8.cleanup59_crit_edge:      ; preds = %jpeg_get_byte.exit101.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

jpeg_get_byte.exit101.9:                          ; preds = %jpeg_get_byte.exit101.8
  %41 = ptrtoint ptr %incdec.ptr.i97.7 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %incdec.ptr.i97.7, align 1
  %incdec.ptr.i97.9 = getelementptr i8, ptr %15, i32 10
  %43 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %incdec.ptr.i97.9, ptr %stream, align 4
  %cmp.not.i96.10 = icmp ult ptr %incdec.ptr.i97.9, %10
  br i1 %cmp.not.i96.10, label %jpeg_get_byte.exit101.10, label %jpeg_get_byte.exit101.9.cleanup59_crit_edge

jpeg_get_byte.exit101.9.cleanup59_crit_edge:      ; preds = %jpeg_get_byte.exit101.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

jpeg_get_byte.exit101.10:                         ; preds = %jpeg_get_byte.exit101.9
  %44 = ptrtoint ptr %incdec.ptr.i97.8 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %incdec.ptr.i97.8, align 1
  %incdec.ptr.i97.10 = getelementptr i8, ptr %15, i32 11
  %46 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %incdec.ptr.i97.10, ptr %stream, align 4
  %cmp.not.i96.11 = icmp ult ptr %incdec.ptr.i97.10, %10
  br i1 %cmp.not.i96.11, label %jpeg_get_byte.exit101.11, label %jpeg_get_byte.exit101.10.cleanup59_crit_edge

jpeg_get_byte.exit101.10.cleanup59_crit_edge:     ; preds = %jpeg_get_byte.exit101.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

jpeg_get_byte.exit101.11:                         ; preds = %jpeg_get_byte.exit101.10
  %47 = ptrtoint ptr %incdec.ptr.i97.9 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %incdec.ptr.i97.9, align 1
  %incdec.ptr.i97.11 = getelementptr i8, ptr %15, i32 12
  %49 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %incdec.ptr.i97.11, ptr %stream, align 4
  %cmp.not.i96.12 = icmp ult ptr %incdec.ptr.i97.11, %10
  br i1 %cmp.not.i96.12, label %jpeg_get_byte.exit101.12, label %jpeg_get_byte.exit101.11.cleanup59_crit_edge

jpeg_get_byte.exit101.11.cleanup59_crit_edge:     ; preds = %jpeg_get_byte.exit101.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

jpeg_get_byte.exit101.12:                         ; preds = %jpeg_get_byte.exit101.11
  %50 = ptrtoint ptr %incdec.ptr.i97.10 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %incdec.ptr.i97.10, align 1
  %incdec.ptr.i97.12 = getelementptr i8, ptr %15, i32 13
  %52 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %incdec.ptr.i97.12, ptr %stream, align 4
  %cmp.not.i96.13 = icmp ult ptr %incdec.ptr.i97.12, %10
  br i1 %cmp.not.i96.13, label %jpeg_get_byte.exit101.13, label %jpeg_get_byte.exit101.12.cleanup59_crit_edge

jpeg_get_byte.exit101.12.cleanup59_crit_edge:     ; preds = %jpeg_get_byte.exit101.12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

jpeg_get_byte.exit101.13:                         ; preds = %jpeg_get_byte.exit101.12
  %53 = ptrtoint ptr %incdec.ptr.i97.11 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %incdec.ptr.i97.11, align 1
  %incdec.ptr.i97.13 = getelementptr i8, ptr %15, i32 14
  %55 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %incdec.ptr.i97.13, ptr %stream, align 4
  %cmp.not.i96.14 = icmp ult ptr %incdec.ptr.i97.13, %10
  br i1 %cmp.not.i96.14, label %jpeg_get_byte.exit101.14, label %jpeg_get_byte.exit101.13.cleanup59_crit_edge

jpeg_get_byte.exit101.13.cleanup59_crit_edge:     ; preds = %jpeg_get_byte.exit101.13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

jpeg_get_byte.exit101.14:                         ; preds = %jpeg_get_byte.exit101.13
  %56 = ptrtoint ptr %incdec.ptr.i97.12 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %incdec.ptr.i97.12, align 1
  %incdec.ptr.i97.14 = getelementptr i8, ptr %15, i32 15
  %58 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %incdec.ptr.i97.14, ptr %stream, align 4
  %cmp.not.i96.15 = icmp ult ptr %incdec.ptr.i97.14, %10
  br i1 %cmp.not.i96.15, label %jpeg_get_byte.exit101.15, label %jpeg_get_byte.exit101.14.cleanup59_crit_edge

jpeg_get_byte.exit101.14.cleanup59_crit_edge:     ; preds = %jpeg_get_byte.exit101.14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

jpeg_get_byte.exit101.15:                         ; preds = %jpeg_get_byte.exit101.14
  %conv.i98 = zext i8 %18 to i32
  %conv.i98.1 = zext i8 %21 to i32
  %add.1 = add nuw nsw i32 %conv.i98, %conv.i98.1
  %conv.i98.2 = zext i8 %24 to i32
  %add.2 = add nuw nsw i32 %add.1, %conv.i98.2
  %conv.i98.3 = zext i8 %27 to i32
  %add.3 = add nuw nsw i32 %add.2, %conv.i98.3
  %conv.i98.4 = zext i8 %30 to i32
  %add.4 = add nuw nsw i32 %add.3, %conv.i98.4
  %conv.i98.5 = zext i8 %33 to i32
  %add.5 = add nuw nsw i32 %add.4, %conv.i98.5
  %conv.i98.6 = zext i8 %36 to i32
  %add.6 = add nuw nsw i32 %add.5, %conv.i98.6
  %conv.i98.7 = zext i8 %39 to i32
  %add.7 = add nuw nsw i32 %add.6, %conv.i98.7
  %conv.i98.8 = zext i8 %42 to i32
  %add.8 = add nuw nsw i32 %add.7, %conv.i98.8
  %conv.i98.9 = zext i8 %45 to i32
  %add.9 = add nuw nsw i32 %add.8, %conv.i98.9
  %conv.i98.10 = zext i8 %48 to i32
  %add.10 = add nuw nsw i32 %add.9, %conv.i98.10
  %conv.i98.11 = zext i8 %51 to i32
  %add.11 = add nuw nsw i32 %add.10, %conv.i98.11
  %conv.i98.12 = zext i8 %54 to i32
  %add.12 = add nuw nsw i32 %add.11, %conv.i98.12
  %conv.i98.13 = zext i8 %57 to i32
  %add.13 = add nuw nsw i32 %add.12, %conv.i98.13
  %59 = ptrtoint ptr %incdec.ptr.i97.13 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %incdec.ptr.i97.13, align 1
  %conv.i98.14 = zext i8 %60 to i32
  %add.14 = add nuw nsw i32 %add.13, %conv.i98.14
  %incdec.ptr.i97.15 = getelementptr i8, ptr %15, i32 16
  %61 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %incdec.ptr.i97.15, ptr %stream, align 4
  %62 = ptrtoint ptr %incdec.ptr.i97.14 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %incdec.ptr.i97.14, align 1
  %conv.i98.15 = zext i8 %63 to i32
  %add.15 = add nuw nsw i32 %add.14, %conv.i98.15
  %add.ptr.i102 = getelementptr i8, ptr %incdec.ptr.i97.15, i32 %add.15
  %cmp.i104 = icmp ugt ptr %add.ptr.i102, %10
  br i1 %cmp.i104, label %jpeg_get_byte.exit101.15.cleanup59_crit_edge, label %if.end34

jpeg_get_byte.exit101.15.cleanup59_crit_edge:     ; preds = %jpeg_get_byte.exit101.15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

if.end34:                                         ; preds = %jpeg_get_byte.exit101.15
  %64 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr.i102, ptr %stream, align 4
  br i1 %tobool.not, label %if.end34.for.inc53_crit_edge, label %if.then35

if.end34.for.inc53_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc53

if.then35:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %65 = lshr i32 %conv.i92, 3
  %shl = and i32 %65, 30
  %or = or i32 %shl, %conv15
  %arrayidx = getelementptr %struct.v4l2_jpeg_reference, ptr %tables, i32 %or
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %15, ptr %arrayidx, align 4
  %67 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %stream, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %68 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %length = getelementptr %struct.v4l2_jpeg_reference, ptr %tables, i32 %or, i32 1
  %69 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub.ptr.sub, ptr %length, align 4
  br label %for.inc53

for.inc53:                                        ; preds = %if.then35, %if.end34.for.inc53_crit_edge
  %add54.neg = add nsw i32 %len.0134, -17
  %sub55 = sub nsw i32 %add54.neg, %add.15
  %cmp4 = icmp sgt i32 %sub55, 16
  br i1 %cmp4, label %for.inc53.for.body_crit_edge, label %for.end56

for.inc53.for.body_crit_edge:                     ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end56:                                        ; preds = %for.inc53
  %phi.bo = add nsw i32 %sub55, -2
  %70 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %stream, align 4
  %add.ptr.i107 = getelementptr i8, ptr %71, i32 %phi.bo
  %72 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %end.i, align 4
  %cmp.i109 = icmp ugt ptr %add.ptr.i107, %73
  br i1 %cmp.i109, label %for.end56.cleanup59_crit_edge, label %if.end.i110

for.end56.cleanup59_crit_edge:                    ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

if.end.i110:                                      ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr.i107, ptr %stream, align 4
  br label %cleanup59

cleanup59:                                        ; preds = %if.end.i110, %for.end56.cleanup59_crit_edge, %jpeg_get_byte.exit101.15.cleanup59_crit_edge, %jpeg_get_byte.exit101.14.cleanup59_crit_edge, %jpeg_get_byte.exit101.13.cleanup59_crit_edge, %jpeg_get_byte.exit101.12.cleanup59_crit_edge, %jpeg_get_byte.exit101.11.cleanup59_crit_edge, %jpeg_get_byte.exit101.10.cleanup59_crit_edge, %jpeg_get_byte.exit101.9.cleanup59_crit_edge, %jpeg_get_byte.exit101.8.cleanup59_crit_edge, %jpeg_get_byte.exit101.7.cleanup59_crit_edge, %jpeg_get_byte.exit101.6.cleanup59_crit_edge, %jpeg_get_byte.exit101.5.cleanup59_crit_edge, %jpeg_get_byte.exit101.4.cleanup59_crit_edge, %jpeg_get_byte.exit101.3.cleanup59_crit_edge, %jpeg_get_byte.exit101.2.cleanup59_crit_edge, %jpeg_get_byte.exit101.1.cleanup59_crit_edge, %jpeg_get_byte.exit101.cleanup59_crit_edge, %if.end20.cleanup59_crit_edge, %if.end13.cleanup59_crit_edge, %jpeg_get_byte.exit.cleanup59_crit_edge, %for.body.cleanup59_crit_edge, %jpeg_get_word_be.exit.cleanup59_crit_edge, %entry.cleanup59_crit_edge
  %retval.4 = phi i32 [ -22, %jpeg_get_word_be.exit.cleanup59_crit_edge ], [ 0, %if.end.i110 ], [ -22, %for.end56.cleanup59_crit_edge ], [ -22, %entry.cleanup59_crit_edge ], [ -22, %jpeg_get_byte.exit101.14.cleanup59_crit_edge ], [ -22, %jpeg_get_byte.exit101.13.cleanup59_crit_edge ], [ -22, %jpeg_get_byte.exit101.12.cleanup59_crit_edge ], [ -22, %jpeg_get_byte.exit101.11.cleanup59_crit_edge ], [ -22, %jpeg_get_byte.exit101.10.cleanup59_crit_edge ], [ -22, %jpeg_get_byte.exit101.9.cleanup59_crit_edge ], [ -22, %jpeg_get_byte.exit101.8.cleanup59_crit_edge ], [ -22, %jpeg_get_byte.exit101.7.cleanup59_crit_edge ], [ -22, %jpeg_get_byte.exit101.6.cleanup59_crit_edge ], [ -22, %jpeg_get_byte.exit101.5.cleanup59_crit_edge ], [ -22, %jpeg_get_byte.exit101.4.cleanup59_crit_edge ], [ -22, %jpeg_get_byte.exit101.3.cleanup59_crit_edge ], [ -22, %jpeg_get_byte.exit101.2.cleanup59_crit_edge ], [ -22, %jpeg_get_byte.exit101.1.cleanup59_crit_edge ], [ -22, %jpeg_get_byte.exit101.cleanup59_crit_edge ], [ -22, %if.end20.cleanup59_crit_edge ], [ -22, %jpeg_get_byte.exit.cleanup59_crit_edge ], [ -22, %if.end13.cleanup59_crit_edge ], [ -22, %for.body.cleanup59_crit_edge ], [ -22, %jpeg_get_byte.exit101.15.cleanup59_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jpeg_parse_scan_header(ptr nocapture noundef %stream, ptr noundef writeonly %scan_header) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2
  %end.i = getelementptr inbounds %struct.jpeg_stream, ptr %stream, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %cmp.i = icmp ugt ptr %add.ptr.i, %3
  br i1 %cmp.i, label %entry.cleanup40_crit_edge, label %jpeg_get_word_be.exit

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

jpeg_get_word_be.exit:                            ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %1, align 1
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %stream, align 4
  %conv.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %5)
  %cmp1 = icmp ult i16 %5, 8
  br i1 %cmp1, label %jpeg_get_word_be.exit.cleanup40_crit_edge, label %if.end3

jpeg_get_word_be.exit.cleanup40_crit_edge:        ; preds = %jpeg_get_word_be.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

if.end3:                                          ; preds = %jpeg_get_word_be.exit
  %tobool.not = icmp eq ptr %scan_header, null
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end3
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stream, align 4
  %cmp.not.i = icmp ult ptr %8, %3
  br i1 %cmp.not.i, label %jpeg_get_byte.exit, label %if.then4.cleanup40_crit_edge

if.then4.cleanup40_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

jpeg_get_byte.exit:                               ; preds = %if.then4
  %incdec.ptr.i = getelementptr i8, ptr %8, i32 1
  %9 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %incdec.ptr.i, ptr %stream, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %8, align 1
  %conv.i71 = zext i8 %11 to i32
  %12 = add i8 %11, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %12)
  %13 = icmp ult i8 %12, 4
  %mul = shl nuw nsw i32 %conv.i71, 1
  %add = add nuw nsw i32 %mul, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv.i)
  %cmp12.not = icmp eq i32 %add, %conv.i
  %or.cond69 = select i1 %13, i1 %cmp12.not, i1 false
  br i1 %or.cond69, label %for.body.preheader, label %jpeg_get_byte.exit.cleanup40_crit_edge

jpeg_get_byte.exit.cleanup40_crit_edge:           ; preds = %jpeg_get_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

for.body.preheader:                               ; preds = %jpeg_get_byte.exit
  %14 = ptrtoint ptr %scan_header to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %11, ptr %scan_header, align 1
  %15 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stream, align 4
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end.i, align 4
  %cmp.not.i75 = icmp ult ptr %16, %18
  br i1 %cmp.not.i75, label %jpeg_get_byte.exit80, label %for.body.preheader.cleanup40_crit_edge

for.body.preheader.cleanup40_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

jpeg_get_byte.exit80:                             ; preds = %for.body.preheader
  %incdec.ptr.i76 = getelementptr i8, ptr %16, i32 1
  %19 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %incdec.ptr.i76, ptr %stream, align 4
  %cmp.not.i82 = icmp ult ptr %incdec.ptr.i76, %18
  br i1 %cmp.not.i82, label %jpeg_get_byte.exit87, label %jpeg_get_byte.exit80.cleanup40_crit_edge

jpeg_get_byte.exit80.cleanup40_crit_edge:         ; preds = %jpeg_get_byte.exit80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

jpeg_get_byte.exit87:                             ; preds = %jpeg_get_byte.exit80
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %16, align 1
  %incdec.ptr.i83 = getelementptr i8, ptr %16, i32 2
  %22 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %incdec.ptr.i83, ptr %stream, align 4
  %23 = ptrtoint ptr %incdec.ptr.i76 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %incdec.ptr.i76, align 1
  %arrayidx = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 0
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %21, ptr %arrayidx, align 1
  %26 = lshr i8 %24, 4
  %dc_entropy_coding_table_selector = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %dc_entropy_coding_table_selector to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %dc_entropy_coding_table_selector, align 1
  %conv31 = and i8 %24, 15
  %ac_entropy_coding_table_selector = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 0, i32 2
  %28 = ptrtoint ptr %ac_entropy_coding_table_selector to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv31, ptr %ac_entropy_coding_table_selector, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %exitcond.not = icmp eq i8 %11, 1
  br i1 %exitcond.not, label %jpeg_get_byte.exit87.if.end38_crit_edge, label %for.body.1

jpeg_get_byte.exit87.if.end38_crit_edge:          ; preds = %jpeg_get_byte.exit87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

for.body.1:                                       ; preds = %jpeg_get_byte.exit87
  %29 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stream, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp.not.i75.1 = icmp ult ptr %30, %32
  br i1 %cmp.not.i75.1, label %jpeg_get_byte.exit80.1, label %for.body.1.cleanup40_crit_edge

for.body.1.cleanup40_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

jpeg_get_byte.exit80.1:                           ; preds = %for.body.1
  %incdec.ptr.i76.1 = getelementptr i8, ptr %30, i32 1
  %33 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %incdec.ptr.i76.1, ptr %stream, align 4
  %cmp.not.i82.1 = icmp ult ptr %incdec.ptr.i76.1, %32
  br i1 %cmp.not.i82.1, label %jpeg_get_byte.exit87.1, label %jpeg_get_byte.exit80.1.cleanup40_crit_edge

jpeg_get_byte.exit80.1.cleanup40_crit_edge:       ; preds = %jpeg_get_byte.exit80.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

jpeg_get_byte.exit87.1:                           ; preds = %jpeg_get_byte.exit80.1
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %30, align 1
  %incdec.ptr.i83.1 = getelementptr i8, ptr %30, i32 2
  %36 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %incdec.ptr.i83.1, ptr %stream, align 4
  %37 = ptrtoint ptr %incdec.ptr.i76.1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %incdec.ptr.i76.1, align 1
  %arrayidx.1 = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %35, ptr %arrayidx.1, align 1
  %40 = lshr i8 %38, 4
  %dc_entropy_coding_table_selector.1 = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 1, i32 1
  %41 = ptrtoint ptr %dc_entropy_coding_table_selector.1 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %dc_entropy_coding_table_selector.1, align 1
  %conv31.1 = and i8 %38, 15
  %ac_entropy_coding_table_selector.1 = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 1, i32 2
  %42 = ptrtoint ptr %ac_entropy_coding_table_selector.1 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv31.1, ptr %ac_entropy_coding_table_selector.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %exitcond.not.1 = icmp eq i8 %11, 2
  br i1 %exitcond.not.1, label %jpeg_get_byte.exit87.1.if.end38_crit_edge, label %for.body.2

jpeg_get_byte.exit87.1.if.end38_crit_edge:        ; preds = %jpeg_get_byte.exit87.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

for.body.2:                                       ; preds = %jpeg_get_byte.exit87.1
  %43 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %stream, align 4
  %45 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %end.i, align 4
  %cmp.not.i75.2 = icmp ult ptr %44, %46
  br i1 %cmp.not.i75.2, label %jpeg_get_byte.exit80.2, label %for.body.2.cleanup40_crit_edge

for.body.2.cleanup40_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

jpeg_get_byte.exit80.2:                           ; preds = %for.body.2
  %incdec.ptr.i76.2 = getelementptr i8, ptr %44, i32 1
  %47 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %incdec.ptr.i76.2, ptr %stream, align 4
  %cmp.not.i82.2 = icmp ult ptr %incdec.ptr.i76.2, %46
  br i1 %cmp.not.i82.2, label %jpeg_get_byte.exit87.2, label %jpeg_get_byte.exit80.2.cleanup40_crit_edge

jpeg_get_byte.exit80.2.cleanup40_crit_edge:       ; preds = %jpeg_get_byte.exit80.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

jpeg_get_byte.exit87.2:                           ; preds = %jpeg_get_byte.exit80.2
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %44, align 1
  %incdec.ptr.i83.2 = getelementptr i8, ptr %44, i32 2
  %50 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %incdec.ptr.i83.2, ptr %stream, align 4
  %51 = ptrtoint ptr %incdec.ptr.i76.2 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %incdec.ptr.i76.2, align 1
  %arrayidx.2 = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 2
  %53 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %49, ptr %arrayidx.2, align 1
  %54 = lshr i8 %52, 4
  %dc_entropy_coding_table_selector.2 = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 2, i32 1
  %55 = ptrtoint ptr %dc_entropy_coding_table_selector.2 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %dc_entropy_coding_table_selector.2, align 1
  %conv31.2 = and i8 %52, 15
  %ac_entropy_coding_table_selector.2 = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 2, i32 2
  %56 = ptrtoint ptr %ac_entropy_coding_table_selector.2 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv31.2, ptr %ac_entropy_coding_table_selector.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %exitcond.not.2 = icmp eq i8 %11, 3
  br i1 %exitcond.not.2, label %jpeg_get_byte.exit87.2.if.end38_crit_edge, label %for.body.3

jpeg_get_byte.exit87.2.if.end38_crit_edge:        ; preds = %jpeg_get_byte.exit87.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

for.body.3:                                       ; preds = %jpeg_get_byte.exit87.2
  %57 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %stream, align 4
  %59 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i, align 4
  %cmp.not.i75.3 = icmp ult ptr %58, %60
  br i1 %cmp.not.i75.3, label %jpeg_get_byte.exit80.3, label %for.body.3.cleanup40_crit_edge

for.body.3.cleanup40_crit_edge:                   ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

jpeg_get_byte.exit80.3:                           ; preds = %for.body.3
  %incdec.ptr.i76.3 = getelementptr i8, ptr %58, i32 1
  %61 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %incdec.ptr.i76.3, ptr %stream, align 4
  %cmp.not.i82.3 = icmp ult ptr %incdec.ptr.i76.3, %60
  br i1 %cmp.not.i82.3, label %jpeg_get_byte.exit87.3, label %jpeg_get_byte.exit80.3.cleanup40_crit_edge

jpeg_get_byte.exit80.3.cleanup40_crit_edge:       ; preds = %jpeg_get_byte.exit80.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

jpeg_get_byte.exit87.3:                           ; preds = %jpeg_get_byte.exit80.3
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %58, align 1
  %incdec.ptr.i83.3 = getelementptr i8, ptr %58, i32 2
  %64 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %incdec.ptr.i83.3, ptr %stream, align 4
  %65 = ptrtoint ptr %incdec.ptr.i76.3 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %incdec.ptr.i76.3, align 1
  %arrayidx.3 = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 3
  %67 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %63, ptr %arrayidx.3, align 1
  %68 = lshr i8 %66, 4
  %dc_entropy_coding_table_selector.3 = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 3, i32 1
  %69 = ptrtoint ptr %dc_entropy_coding_table_selector.3 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %dc_entropy_coding_table_selector.3, align 1
  %conv31.3 = and i8 %66, 15
  %ac_entropy_coding_table_selector.3 = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 3, i32 2
  %70 = ptrtoint ptr %ac_entropy_coding_table_selector.3 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv31.3, ptr %ac_entropy_coding_table_selector.3, align 1
  br label %if.end38

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add nsw i32 %conv.i, -2
  br label %if.end38

if.end38:                                         ; preds = %if.else, %jpeg_get_byte.exit87.3, %jpeg_get_byte.exit87.2.if.end38_crit_edge, %jpeg_get_byte.exit87.1.if.end38_crit_edge, %jpeg_get_byte.exit87.if.end38_crit_edge
  %skip.1 = phi i32 [ %sub, %if.else ], [ 3, %jpeg_get_byte.exit87.3 ], [ 3, %jpeg_get_byte.exit87.2.if.end38_crit_edge ], [ 3, %jpeg_get_byte.exit87.1.if.end38_crit_edge ], [ 3, %jpeg_get_byte.exit87.if.end38_crit_edge ]
  %71 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %stream, align 4
  %add.ptr.i88 = getelementptr i8, ptr %72, i32 %skip.1
  %73 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %end.i, align 4
  %cmp.i90 = icmp ugt ptr %add.ptr.i88, %74
  br i1 %cmp.i90, label %if.end38.cleanup40_crit_edge, label %if.end.i91

if.end38.cleanup40_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

if.end.i91:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %add.ptr.i88, ptr %stream, align 4
  br label %cleanup40

cleanup40:                                        ; preds = %if.end.i91, %if.end38.cleanup40_crit_edge, %jpeg_get_byte.exit80.3.cleanup40_crit_edge, %for.body.3.cleanup40_crit_edge, %jpeg_get_byte.exit80.2.cleanup40_crit_edge, %for.body.2.cleanup40_crit_edge, %jpeg_get_byte.exit80.1.cleanup40_crit_edge, %for.body.1.cleanup40_crit_edge, %jpeg_get_byte.exit80.cleanup40_crit_edge, %for.body.preheader.cleanup40_crit_edge, %jpeg_get_byte.exit.cleanup40_crit_edge, %if.then4.cleanup40_crit_edge, %jpeg_get_word_be.exit.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.3 = phi i32 [ -22, %jpeg_get_word_be.exit.cleanup40_crit_edge ], [ 0, %if.end.i91 ], [ -22, %if.end38.cleanup40_crit_edge ], [ -22, %entry.cleanup40_crit_edge ], [ -22, %jpeg_get_byte.exit.cleanup40_crit_edge ], [ -22, %if.then4.cleanup40_crit_edge ], [ -22, %jpeg_get_byte.exit80.3.cleanup40_crit_edge ], [ -22, %for.body.3.cleanup40_crit_edge ], [ -22, %jpeg_get_byte.exit80.2.cleanup40_crit_edge ], [ -22, %for.body.2.cleanup40_crit_edge ], [ -22, %jpeg_get_byte.exit80.1.cleanup40_crit_edge ], [ -22, %for.body.1.cleanup40_crit_edge ], [ -22, %for.body.preheader.cleanup40_crit_edge ], [ -22, %jpeg_get_byte.exit80.cleanup40_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v4l2_jpeg_parse_frame_header(ptr noundef %buf, i32 noundef %len, ptr noundef %frame_header) #3 align 64 {
entry:
  %stream = alloca %struct.jpeg_stream, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stream) #6
  %0 = getelementptr inbounds %struct.jpeg_stream, ptr %stream, i32 0, i32 1
  %1 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %buf, ptr %stream, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %len
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %0, align 4
  %call = call fastcc i32 @jpeg_parse_frame_header(ptr noundef nonnull %stream, i16 noundef zeroext -64, ptr noundef %frame_header)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stream) #6
  ret i32 %call
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v4l2_jpeg_parse_scan_header(ptr noundef %buf, i32 noundef %len, ptr noundef writeonly %scan_header) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 %len
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 2
  %cmp.i.i = icmp ugt ptr %add.ptr.i.i, %add.ptr
  br i1 %cmp.i.i, label %entry.jpeg_parse_scan_header.exit_crit_edge, label %jpeg_get_word_be.exit.i

entry.jpeg_parse_scan_header.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %jpeg_parse_scan_header.exit

jpeg_get_word_be.exit.i:                          ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %buf, align 1
  %conv.i.i = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %1)
  %cmp1.i = icmp ult i16 %1, 8
  br i1 %cmp1.i, label %jpeg_get_word_be.exit.i.jpeg_parse_scan_header.exit_crit_edge, label %if.end3.i

jpeg_get_word_be.exit.i.jpeg_parse_scan_header.exit_crit_edge: ; preds = %jpeg_get_word_be.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jpeg_parse_scan_header.exit

if.end3.i:                                        ; preds = %jpeg_get_word_be.exit.i
  %tobool.not.i = icmp eq ptr %scan_header, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end3.i
  %cmp.not.i.i = icmp ult ptr %add.ptr.i.i, %add.ptr
  br i1 %cmp.not.i.i, label %jpeg_get_byte.exit.i, label %if.then4.i.jpeg_parse_scan_header.exit_crit_edge

if.then4.i.jpeg_parse_scan_header.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jpeg_parse_scan_header.exit

jpeg_get_byte.exit.i:                             ; preds = %if.then4.i
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr.i.i, align 1
  %conv.i71.i = zext i8 %3 to i32
  %4 = add i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %5 = icmp ult i8 %4, 4
  %mul.i = shl nuw nsw i32 %conv.i71.i, 1
  %add.i = add nuw nsw i32 %mul.i, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i.i)
  %cmp12.not.i = icmp eq i32 %add.i, %conv.i.i
  %or.cond69.i = select i1 %5, i1 %cmp12.not.i, i1 false
  br i1 %or.cond69.i, label %for.body.preheader.i, label %jpeg_get_byte.exit.i.jpeg_parse_scan_header.exit_crit_edge

jpeg_get_byte.exit.i.jpeg_parse_scan_header.exit_crit_edge: ; preds = %jpeg_get_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jpeg_parse_scan_header.exit

for.body.preheader.i:                             ; preds = %jpeg_get_byte.exit.i
  %incdec.ptr.i.i = getelementptr i8, ptr %buf, i32 3
  %6 = ptrtoint ptr %scan_header to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %3, ptr %scan_header, align 1
  %cmp.not.i75.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr
  br i1 %cmp.not.i75.i, label %jpeg_get_byte.exit80.i, label %for.body.preheader.i.jpeg_parse_scan_header.exit_crit_edge

for.body.preheader.i.jpeg_parse_scan_header.exit_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jpeg_parse_scan_header.exit

jpeg_get_byte.exit80.i:                           ; preds = %for.body.preheader.i
  %incdec.ptr.i76.i = getelementptr i8, ptr %buf, i32 4
  %cmp.not.i82.i = icmp ult ptr %incdec.ptr.i76.i, %add.ptr
  br i1 %cmp.not.i82.i, label %jpeg_get_byte.exit87.i, label %jpeg_get_byte.exit80.i.jpeg_parse_scan_header.exit_crit_edge

jpeg_get_byte.exit80.i.jpeg_parse_scan_header.exit_crit_edge: ; preds = %jpeg_get_byte.exit80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jpeg_parse_scan_header.exit

jpeg_get_byte.exit87.i:                           ; preds = %jpeg_get_byte.exit80.i
  %7 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr.i.i, align 1
  %incdec.ptr.i83.i = getelementptr i8, ptr %buf, i32 5
  %9 = ptrtoint ptr %incdec.ptr.i76.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr.i76.i, align 1
  %arrayidx.i = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 0
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %8, ptr %arrayidx.i, align 1
  %12 = lshr i8 %10, 4
  %dc_entropy_coding_table_selector.i = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %dc_entropy_coding_table_selector.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %dc_entropy_coding_table_selector.i, align 1
  %conv31.i = and i8 %10, 15
  %ac_entropy_coding_table_selector.i = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %ac_entropy_coding_table_selector.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv31.i, ptr %ac_entropy_coding_table_selector.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %exitcond.not.i = icmp eq i8 %3, 1
  br i1 %exitcond.not.i, label %jpeg_get_byte.exit87.i.if.end38.i_crit_edge, label %for.body.i.1

jpeg_get_byte.exit87.i.if.end38.i_crit_edge:      ; preds = %jpeg_get_byte.exit87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i

for.body.i.1:                                     ; preds = %jpeg_get_byte.exit87.i
  %cmp.not.i75.i.1 = icmp ult ptr %incdec.ptr.i83.i, %add.ptr
  br i1 %cmp.not.i75.i.1, label %jpeg_get_byte.exit80.i.1, label %for.body.i.1.jpeg_parse_scan_header.exit_crit_edge

for.body.i.1.jpeg_parse_scan_header.exit_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %jpeg_parse_scan_header.exit

jpeg_get_byte.exit80.i.1:                         ; preds = %for.body.i.1
  %incdec.ptr.i76.i.1 = getelementptr i8, ptr %buf, i32 6
  %cmp.not.i82.i.1 = icmp ult ptr %incdec.ptr.i76.i.1, %add.ptr
  br i1 %cmp.not.i82.i.1, label %jpeg_get_byte.exit87.i.1, label %jpeg_get_byte.exit80.i.1.jpeg_parse_scan_header.exit_crit_edge

jpeg_get_byte.exit80.i.1.jpeg_parse_scan_header.exit_crit_edge: ; preds = %jpeg_get_byte.exit80.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %jpeg_parse_scan_header.exit

jpeg_get_byte.exit87.i.1:                         ; preds = %jpeg_get_byte.exit80.i.1
  %15 = ptrtoint ptr %incdec.ptr.i83.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr.i83.i, align 1
  %incdec.ptr.i83.i.1 = getelementptr i8, ptr %buf, i32 7
  %17 = ptrtoint ptr %incdec.ptr.i76.i.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %incdec.ptr.i76.i.1, align 1
  %arrayidx.i.1 = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %16, ptr %arrayidx.i.1, align 1
  %20 = lshr i8 %18, 4
  %dc_entropy_coding_table_selector.i.1 = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 1, i32 1
  %21 = ptrtoint ptr %dc_entropy_coding_table_selector.i.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %dc_entropy_coding_table_selector.i.1, align 1
  %conv31.i.1 = and i8 %18, 15
  %ac_entropy_coding_table_selector.i.1 = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 1, i32 2
  %22 = ptrtoint ptr %ac_entropy_coding_table_selector.i.1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv31.i.1, ptr %ac_entropy_coding_table_selector.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %exitcond.not.i.1 = icmp eq i8 %3, 2
  br i1 %exitcond.not.i.1, label %jpeg_get_byte.exit87.i.1.if.end38.i_crit_edge, label %for.body.i.2

jpeg_get_byte.exit87.i.1.if.end38.i_crit_edge:    ; preds = %jpeg_get_byte.exit87.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i

for.body.i.2:                                     ; preds = %jpeg_get_byte.exit87.i.1
  %cmp.not.i75.i.2 = icmp ult ptr %incdec.ptr.i83.i.1, %add.ptr
  br i1 %cmp.not.i75.i.2, label %jpeg_get_byte.exit80.i.2, label %for.body.i.2.jpeg_parse_scan_header.exit_crit_edge

for.body.i.2.jpeg_parse_scan_header.exit_crit_edge: ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %jpeg_parse_scan_header.exit

jpeg_get_byte.exit80.i.2:                         ; preds = %for.body.i.2
  %incdec.ptr.i76.i.2 = getelementptr i8, ptr %buf, i32 8
  %cmp.not.i82.i.2 = icmp ult ptr %incdec.ptr.i76.i.2, %add.ptr
  br i1 %cmp.not.i82.i.2, label %jpeg_get_byte.exit87.i.2, label %jpeg_get_byte.exit80.i.2.jpeg_parse_scan_header.exit_crit_edge

jpeg_get_byte.exit80.i.2.jpeg_parse_scan_header.exit_crit_edge: ; preds = %jpeg_get_byte.exit80.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %jpeg_parse_scan_header.exit

jpeg_get_byte.exit87.i.2:                         ; preds = %jpeg_get_byte.exit80.i.2
  %23 = ptrtoint ptr %incdec.ptr.i83.i.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %incdec.ptr.i83.i.1, align 1
  %incdec.ptr.i83.i.2 = getelementptr i8, ptr %buf, i32 9
  %25 = ptrtoint ptr %incdec.ptr.i76.i.2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %incdec.ptr.i76.i.2, align 1
  %arrayidx.i.2 = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %24, ptr %arrayidx.i.2, align 1
  %28 = lshr i8 %26, 4
  %dc_entropy_coding_table_selector.i.2 = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 2, i32 1
  %29 = ptrtoint ptr %dc_entropy_coding_table_selector.i.2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %dc_entropy_coding_table_selector.i.2, align 1
  %conv31.i.2 = and i8 %26, 15
  %ac_entropy_coding_table_selector.i.2 = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 2, i32 2
  %30 = ptrtoint ptr %ac_entropy_coding_table_selector.i.2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv31.i.2, ptr %ac_entropy_coding_table_selector.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %exitcond.not.i.2 = icmp eq i8 %3, 3
  br i1 %exitcond.not.i.2, label %jpeg_get_byte.exit87.i.2.if.end38.i_crit_edge, label %for.body.i.3

jpeg_get_byte.exit87.i.2.if.end38.i_crit_edge:    ; preds = %jpeg_get_byte.exit87.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i

for.body.i.3:                                     ; preds = %jpeg_get_byte.exit87.i.2
  %cmp.not.i75.i.3 = icmp ult ptr %incdec.ptr.i83.i.2, %add.ptr
  br i1 %cmp.not.i75.i.3, label %jpeg_get_byte.exit80.i.3, label %for.body.i.3.jpeg_parse_scan_header.exit_crit_edge

for.body.i.3.jpeg_parse_scan_header.exit_crit_edge: ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %jpeg_parse_scan_header.exit

jpeg_get_byte.exit80.i.3:                         ; preds = %for.body.i.3
  %incdec.ptr.i76.i.3 = getelementptr i8, ptr %buf, i32 10
  %cmp.not.i82.i.3 = icmp ult ptr %incdec.ptr.i76.i.3, %add.ptr
  br i1 %cmp.not.i82.i.3, label %jpeg_get_byte.exit87.i.3, label %jpeg_get_byte.exit80.i.3.jpeg_parse_scan_header.exit_crit_edge

jpeg_get_byte.exit80.i.3.jpeg_parse_scan_header.exit_crit_edge: ; preds = %jpeg_get_byte.exit80.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %jpeg_parse_scan_header.exit

jpeg_get_byte.exit87.i.3:                         ; preds = %jpeg_get_byte.exit80.i.3
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %incdec.ptr.i83.i.2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr.i83.i.2, align 1
  %33 = ptrtoint ptr %incdec.ptr.i76.i.3 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %incdec.ptr.i76.i.3, align 1
  %arrayidx.i.3 = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 3
  %35 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %32, ptr %arrayidx.i.3, align 1
  %36 = lshr i8 %34, 4
  %dc_entropy_coding_table_selector.i.3 = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 3, i32 1
  %37 = ptrtoint ptr %dc_entropy_coding_table_selector.i.3 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %dc_entropy_coding_table_selector.i.3, align 1
  %conv31.i.3 = and i8 %34, 15
  %ac_entropy_coding_table_selector.i.3 = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 3, i32 2
  %38 = ptrtoint ptr %ac_entropy_coding_table_selector.i.3 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv31.i.3, ptr %ac_entropy_coding_table_selector.i.3, align 1
  br label %if.end38.i

if.else.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add nsw i32 %conv.i.i, -2
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else.i, %jpeg_get_byte.exit87.i.3, %jpeg_get_byte.exit87.i.2.if.end38.i_crit_edge, %jpeg_get_byte.exit87.i.1.if.end38.i_crit_edge, %jpeg_get_byte.exit87.i.if.end38.i_crit_edge
  %39 = phi ptr [ %buf, %if.else.i ], [ %incdec.ptr.i.i, %jpeg_get_byte.exit87.i.if.end38.i_crit_edge ], [ %incdec.ptr.i83.i, %jpeg_get_byte.exit87.i.1.if.end38.i_crit_edge ], [ %incdec.ptr.i83.i.1, %jpeg_get_byte.exit87.i.2.if.end38.i_crit_edge ], [ %incdec.ptr.i83.i.2, %jpeg_get_byte.exit87.i.3 ]
  %skip.1.i = phi i32 [ %sub.i, %if.else.i ], [ 3, %jpeg_get_byte.exit87.i.3 ], [ 3, %jpeg_get_byte.exit87.i.2.if.end38.i_crit_edge ], [ 3, %jpeg_get_byte.exit87.i.1.if.end38.i_crit_edge ], [ 3, %jpeg_get_byte.exit87.i.if.end38.i_crit_edge ]
  %40 = getelementptr i8, ptr %39, i32 2
  %add.ptr.i88.i = getelementptr i8, ptr %40, i32 %skip.1.i
  %cmp.i90.i = icmp ugt ptr %add.ptr.i88.i, %add.ptr
  %spec.select = select i1 %cmp.i90.i, i32 -22, i32 0
  br label %jpeg_parse_scan_header.exit

jpeg_parse_scan_header.exit:                      ; preds = %if.end38.i, %jpeg_get_byte.exit80.i.3.jpeg_parse_scan_header.exit_crit_edge, %for.body.i.3.jpeg_parse_scan_header.exit_crit_edge, %jpeg_get_byte.exit80.i.2.jpeg_parse_scan_header.exit_crit_edge, %for.body.i.2.jpeg_parse_scan_header.exit_crit_edge, %jpeg_get_byte.exit80.i.1.jpeg_parse_scan_header.exit_crit_edge, %for.body.i.1.jpeg_parse_scan_header.exit_crit_edge, %jpeg_get_byte.exit80.i.jpeg_parse_scan_header.exit_crit_edge, %for.body.preheader.i.jpeg_parse_scan_header.exit_crit_edge, %jpeg_get_byte.exit.i.jpeg_parse_scan_header.exit_crit_edge, %if.then4.i.jpeg_parse_scan_header.exit_crit_edge, %jpeg_get_word_be.exit.i.jpeg_parse_scan_header.exit_crit_edge, %entry.jpeg_parse_scan_header.exit_crit_edge
  %retval.3.i = phi i32 [ -22, %jpeg_get_word_be.exit.i.jpeg_parse_scan_header.exit_crit_edge ], [ -22, %entry.jpeg_parse_scan_header.exit_crit_edge ], [ -22, %jpeg_get_byte.exit.i.jpeg_parse_scan_header.exit_crit_edge ], [ -22, %if.then4.i.jpeg_parse_scan_header.exit_crit_edge ], [ %spec.select, %if.end38.i ], [ -22, %jpeg_get_byte.exit80.i.3.jpeg_parse_scan_header.exit_crit_edge ], [ -22, %for.body.i.3.jpeg_parse_scan_header.exit_crit_edge ], [ -22, %jpeg_get_byte.exit80.i.2.jpeg_parse_scan_header.exit_crit_edge ], [ -22, %for.body.i.2.jpeg_parse_scan_header.exit_crit_edge ], [ -22, %jpeg_get_byte.exit80.i.1.jpeg_parse_scan_header.exit_crit_edge ], [ -22, %for.body.i.1.jpeg_parse_scan_header.exit_crit_edge ], [ -22, %jpeg_get_byte.exit80.i.jpeg_parse_scan_header.exit_crit_edge ], [ -22, %for.body.preheader.i.jpeg_parse_scan_header.exit_crit_edge ]
  ret i32 %retval.3.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v4l2_jpeg_parse_quantization_tables(ptr noundef %buf, i32 noundef %len, i8 noundef zeroext %precision, ptr noundef writeonly %q_tables) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 %len
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 2
  %cmp.i.i = icmp ugt ptr %add.ptr.i.i, %add.ptr
  br i1 %cmp.i.i, label %entry.jpeg_parse_quantization_tables.exit_crit_edge, label %jpeg_get_word_be.exit.i

entry.jpeg_parse_quantization_tables.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %jpeg_parse_quantization_tables.exit

jpeg_get_word_be.exit.i:                          ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 67, i16 %1)
  %cmp1.i = icmp ult i16 %1, 67
  br i1 %cmp1.i, label %jpeg_get_word_be.exit.i.jpeg_parse_quantization_tables.exit_crit_edge, label %while.body.lr.ph.i

jpeg_get_word_be.exit.i.jpeg_parse_quantization_tables.exit_crit_edge: ; preds = %jpeg_get_word_be.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jpeg_parse_quantization_tables.exit

while.body.lr.ph.i:                               ; preds = %jpeg_get_word_be.exit.i
  %conv.i.i = zext i16 %1 to i32
  %sub.i = add nsw i32 %conv.i.i, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %precision)
  %cmp16.not.i = icmp eq i8 %precision, 12
  %tobool33.not.i = icmp eq ptr %q_tables, null
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %stream.sroa.0.0 = phi ptr [ %add.ptr.i.i, %while.body.lr.ph.i ], [ %add.ptr.i74.i, %cleanup.i.while.body.i_crit_edge ]
  %len.089.i = phi i32 [ %sub.i, %while.body.lr.ph.i ], [ %sub44.i, %cleanup.i.while.body.i_crit_edge ]
  %cmp.not.i.i = icmp ult ptr %stream.sroa.0.0, %add.ptr
  br i1 %cmp.not.i.i, label %jpeg_get_byte.exit.i, label %while.body.i.jpeg_parse_quantization_tables.exit_crit_edge

while.body.i.jpeg_parse_quantization_tables.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jpeg_parse_quantization_tables.exit

jpeg_get_byte.exit.i:                             ; preds = %while.body.i
  %incdec.ptr.i.i = getelementptr i8, ptr %stream.sroa.0.0, i32 1
  %2 = ptrtoint ptr %stream.sroa.0.0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stream.sroa.0.0, align 1
  %conv.i71.i = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %cmp10.not.i = icmp ult i8 %3, 16
  br i1 %cmp10.not.i, label %jpeg_get_byte.exit.i.if.end19.i_crit_edge, label %land.lhs.true.i

jpeg_get_byte.exit.i.if.end19.i_crit_edge:        ; preds = %jpeg_get_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

land.lhs.true.i:                                  ; preds = %jpeg_get_byte.exit.i
  %.mask.i = and i32 %conv.i71.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %.mask.i)
  %cmp13.not.i = icmp eq i32 %.mask.i, 16
  %or.cond.i = and i1 %cmp16.not.i, %cmp13.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.if.end19.i_crit_edge, label %land.lhs.true.i.jpeg_parse_quantization_tables.exit_crit_edge

land.lhs.true.i.jpeg_parse_quantization_tables.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jpeg_parse_quantization_tables.exit

land.lhs.true.i.if.end19.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.end19.i:                                       ; preds = %land.lhs.true.i.if.end19.i_crit_edge, %jpeg_get_byte.exit.i.if.end19.i_crit_edge
  %conv21.i = and i32 %conv.i71.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv21.i)
  %cmp23.i = icmp ugt i32 %conv21.i, 3
  br i1 %cmp23.i, label %if.end19.i.jpeg_parse_quantization_tables.exit_crit_edge, label %if.end26.i

if.end19.i.jpeg_parse_quantization_tables.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jpeg_parse_quantization_tables.exit

if.end26.i:                                       ; preds = %if.end19.i
  %cond.i = select i1 %cmp10.not.i, i32 64, i32 128
  %add.ptr.i74.i = getelementptr i8, ptr %incdec.ptr.i.i, i32 %cond.i
  %cmp.i76.i = icmp ugt ptr %add.ptr.i74.i, %add.ptr
  br i1 %cmp.i76.i, label %if.end26.i.jpeg_parse_quantization_tables.exit_crit_edge, label %if.end32.i

if.end26.i.jpeg_parse_quantization_tables.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jpeg_parse_quantization_tables.exit

if.end32.i:                                       ; preds = %if.end26.i
  br i1 %tobool33.not.i, label %if.end32.i.cleanup.i_crit_edge, label %if.then34.i

if.end32.i.cleanup.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.then34.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.v4l2_jpeg_reference, ptr %q_tables, i32 %conv21.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %incdec.ptr.i.i, ptr %arrayidx.i, align 4
  %length.i = getelementptr %struct.v4l2_jpeg_reference, ptr %q_tables, i32 %conv21.i, i32 1
  %5 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond.i, ptr %length.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then34.i, %if.end32.i.cleanup.i_crit_edge
  %cond43.neg.i = select i1 %cmp10.not.i, i32 -65, i32 -129
  %sub44.i = add nsw i32 %cond43.neg.i, %len.089.i
  %cmp4.i = icmp sgt i32 %sub44.i, 64
  br i1 %cmp4.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.jpeg_parse_quantization_tables.exit_crit_edge

cleanup.i.jpeg_parse_quantization_tables.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %jpeg_parse_quantization_tables.exit

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

jpeg_parse_quantization_tables.exit:              ; preds = %cleanup.i.jpeg_parse_quantization_tables.exit_crit_edge, %if.end26.i.jpeg_parse_quantization_tables.exit_crit_edge, %if.end19.i.jpeg_parse_quantization_tables.exit_crit_edge, %land.lhs.true.i.jpeg_parse_quantization_tables.exit_crit_edge, %while.body.i.jpeg_parse_quantization_tables.exit_crit_edge, %jpeg_get_word_be.exit.i.jpeg_parse_quantization_tables.exit_crit_edge, %entry.jpeg_parse_quantization_tables.exit_crit_edge
  %retval.2.i = phi i32 [ -22, %jpeg_get_word_be.exit.i.jpeg_parse_quantization_tables.exit_crit_edge ], [ -22, %entry.jpeg_parse_quantization_tables.exit_crit_edge ], [ -22, %if.end26.i.jpeg_parse_quantization_tables.exit_crit_edge ], [ -22, %while.body.i.jpeg_parse_quantization_tables.exit_crit_edge ], [ -22, %if.end19.i.jpeg_parse_quantization_tables.exit_crit_edge ], [ -22, %land.lhs.true.i.jpeg_parse_quantization_tables.exit_crit_edge ], [ 0, %cleanup.i.jpeg_parse_quantization_tables.exit_crit_edge ]
  ret i32 %retval.2.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v4l2_jpeg_parse_huffman_tables(ptr noundef %buf, i32 noundef %len, ptr noundef %huffman_tables) #3 align 64 {
entry:
  %stream = alloca %struct.jpeg_stream, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stream) #6
  %0 = getelementptr inbounds %struct.jpeg_stream, ptr %stream, i32 0, i32 1
  %1 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %buf, ptr %stream, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %len
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %0, align 4
  %call = call fastcc i32 @jpeg_parse_huffman_tables(ptr noundef nonnull %stream, ptr noundef %huffman_tables)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stream) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @v4l2_jpeg_decode_subsampling(i8 noundef zeroext %nf, i8 noundef zeroext %h_v) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %nf to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %nf, label %if.end9 [
    i8 1, label %entry.return_crit_edge
    i8 4, label %land.lhs.true
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %h_v)
  %cond = icmp eq i8 %h_v, 17
  br i1 %cond, label %land.lhs.true.sw.bb_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true.sw.bb_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end9:                                          ; preds = %entry
  %1 = zext i8 %h_v to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %h_v, label %sw.default [
    i8 17, label %if.end9.sw.bb_crit_edge
    i8 33, label %if.end9.return_crit_edge
    i8 34, label %sw.bb12
    i8 65, label %sw.bb13
  ]

if.end9.return_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end9.sw.bb_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.end9.sw.bb_crit_edge, %land.lhs.true.sw.bb_crit_edge
  br label %return

sw.bb12:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb13:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb13, %sw.bb12, %sw.bb, %if.end9.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ 3, %sw.bb13 ], [ 2, %sw.bb12 ], [ 0, %sw.bb ], [ 5, %entry.return_crit_edge ], [ -22, %land.lhs.true.return_crit_edge ], [ 1, %if.end9.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__UNIQUE_ID_description106, !1, !"__UNIQUE_ID_description106", i1 false, i1 false}
!1 = !{!"../drivers/media/v4l2-core/v4l2-jpeg.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_author107, !3, !"__UNIQUE_ID_author107", i1 false, i1 false}
!3 = !{!"../drivers/media/v4l2-core/v4l2-jpeg.c", i32 20, i32 1}
!4 = !{ptr @__UNIQUE_ID_file108, !5, !"__UNIQUE_ID_file108", i1 false, i1 false}
!5 = !{!"../drivers/media/v4l2-core/v4l2-jpeg.c", i32 21, i32 1}
!6 = !{ptr @__UNIQUE_ID_license109, !5, !"__UNIQUE_ID_license109", i1 false, i1 false}
!7 = !{ptr @__ksymtab_v4l2_jpeg_parse_header, !8, !"__ksymtab_v4l2_jpeg_parse_header", i1 false, i1 false}
!8 = !{!"../drivers/media/v4l2-core/v4l2-jpeg.c", i32 597, i32 1}
!9 = !{ptr @__ksymtab_v4l2_jpeg_parse_frame_header, !10, !"__ksymtab_v4l2_jpeg_parse_frame_header", i1 false, i1 false}
!10 = !{!"../drivers/media/v4l2-core/v4l2-jpeg.c", i32 616, i32 1}
!11 = !{ptr @__ksymtab_v4l2_jpeg_parse_scan_header, !12, !"__ksymtab_v4l2_jpeg_parse_scan_header", i1 false, i1 false}
!12 = !{!"../drivers/media/v4l2-core/v4l2-jpeg.c", i32 635, i32 1}
!13 = !{ptr @__ksymtab_v4l2_jpeg_parse_quantization_tables, !14, !"__ksymtab_v4l2_jpeg_parse_quantization_tables", i1 false, i1 false}
!14 = !{!"../drivers/media/v4l2-core/v4l2-jpeg.c", i32 656, i32 1}
!15 = !{ptr @__ksymtab_v4l2_jpeg_parse_huffman_tables, !16, !"__ksymtab_v4l2_jpeg_parse_huffman_tables", i1 false, i1 false}
!16 = !{!"../drivers/media/v4l2-core/v4l2-jpeg.c", i32 677, i32 1}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/v4l2-core/v4l2-jpeg.c", i32 462, i32 28}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
