; ModuleID = '/llk/IR_all_yes/lib/lz4/lz4_decompress.c_pt.bc'
source_filename = "../lib/lz4/lz4_decompress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+LZ4_decompress_safe\22, \22a\22\09"
module asm "\09.weak\09__crc_LZ4_decompress_safe\09\09\09\09"
module asm "\09.long\09__crc_LZ4_decompress_safe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_decompress_safe:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_decompress_safe\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_decompress_safe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+LZ4_decompress_safe_partial\22, \22a\22\09"
module asm "\09.weak\09__crc_LZ4_decompress_safe_partial\09\09\09\09"
module asm "\09.long\09__crc_LZ4_decompress_safe_partial\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_decompress_safe_partial:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_decompress_safe_partial\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_decompress_safe_partial:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+LZ4_decompress_fast\22, \22a\22\09"
module asm "\09.weak\09__crc_LZ4_decompress_fast\09\09\09\09"
module asm "\09.long\09__crc_LZ4_decompress_fast\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_decompress_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_decompress_fast\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_decompress_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+LZ4_setStreamDecode\22, \22a\22\09"
module asm "\09.weak\09__crc_LZ4_setStreamDecode\09\09\09\09"
module asm "\09.long\09__crc_LZ4_setStreamDecode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_setStreamDecode:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_setStreamDecode\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_setStreamDecode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+LZ4_decompress_safe_continue\22, \22a\22\09"
module asm "\09.weak\09__crc_LZ4_decompress_safe_continue\09\09\09\09"
module asm "\09.long\09__crc_LZ4_decompress_safe_continue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_decompress_safe_continue:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_decompress_safe_continue\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_decompress_safe_continue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+LZ4_decompress_fast_continue\22, \22a\22\09"
module asm "\09.weak\09__crc_LZ4_decompress_fast_continue\09\09\09\09"
module asm "\09.long\09__crc_LZ4_decompress_fast_continue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_decompress_fast_continue:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_decompress_fast_continue\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_decompress_fast_continue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+LZ4_decompress_safe_usingDict\22, \22a\22\09"
module asm "\09.weak\09__crc_LZ4_decompress_safe_usingDict\09\09\09\09"
module asm "\09.long\09__crc_LZ4_decompress_safe_usingDict\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_decompress_safe_usingDict:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_decompress_safe_usingDict\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_decompress_safe_usingDict:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+LZ4_decompress_fast_usingDict\22, \22a\22\09"
module asm "\09.weak\09__crc_LZ4_decompress_fast_usingDict\09\09\09\09"
module asm "\09.long\09__crc_LZ4_decompress_fast_usingDict\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_decompress_fast_usingDict:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_decompress_fast_usingDict\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_decompress_fast_usingDict:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.LZ4_streamDecode_t_internal = type { ptr, i32, ptr, i32 }

@__kstrtab_LZ4_decompress_safe = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_decompress_safe = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_decompress_safe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_decompress_safe to i32), ptr @__kstrtab_LZ4_decompress_safe, ptr @__kstrtabns_LZ4_decompress_safe }, section "___ksymtab+LZ4_decompress_safe", align 4
@__kstrtab_LZ4_decompress_safe_partial = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_decompress_safe_partial = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_decompress_safe_partial = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_decompress_safe_partial to i32), ptr @__kstrtab_LZ4_decompress_safe_partial, ptr @__kstrtabns_LZ4_decompress_safe_partial }, section "___ksymtab+LZ4_decompress_safe_partial", align 4
@__kstrtab_LZ4_decompress_fast = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_decompress_fast = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_decompress_fast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_decompress_fast to i32), ptr @__kstrtab_LZ4_decompress_fast, ptr @__kstrtabns_LZ4_decompress_fast }, section "___ksymtab+LZ4_decompress_fast", align 4
@__kstrtab_LZ4_setStreamDecode = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_setStreamDecode = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_setStreamDecode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_setStreamDecode to i32), ptr @__kstrtab_LZ4_setStreamDecode, ptr @__kstrtabns_LZ4_setStreamDecode }, section "___ksymtab+LZ4_setStreamDecode", align 4
@__kstrtab_LZ4_decompress_safe_continue = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_decompress_safe_continue = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_decompress_safe_continue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_decompress_safe_continue to i32), ptr @__kstrtab_LZ4_decompress_safe_continue, ptr @__kstrtabns_LZ4_decompress_safe_continue }, section "___ksymtab+LZ4_decompress_safe_continue", align 4
@__kstrtab_LZ4_decompress_fast_continue = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_decompress_fast_continue = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_decompress_fast_continue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_decompress_fast_continue to i32), ptr @__kstrtab_LZ4_decompress_fast_continue, ptr @__kstrtabns_LZ4_decompress_fast_continue }, section "___ksymtab+LZ4_decompress_fast_continue", align 4
@__kstrtab_LZ4_decompress_safe_usingDict = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_decompress_safe_usingDict = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_decompress_safe_usingDict = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_decompress_safe_usingDict to i32), ptr @__kstrtab_LZ4_decompress_safe_usingDict, ptr @__kstrtabns_LZ4_decompress_safe_usingDict }, section "___ksymtab+LZ4_decompress_safe_usingDict", align 4
@__kstrtab_LZ4_decompress_fast_usingDict = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_decompress_fast_usingDict = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_decompress_fast_usingDict = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_decompress_fast_usingDict to i32), ptr @__kstrtab_LZ4_decompress_fast_usingDict, ptr @__kstrtabns_LZ4_decompress_fast_usingDict }, section "___ksymtab+LZ4_decompress_fast_usingDict", align 4
@__UNIQUE_ID_file113 = internal constant [43 x i8] c"lz4_decompress.file=lib/lz4/lz4_decompress\00", section ".modinfo", align 1
@__UNIQUE_ID_license114 = internal constant [36 x i8] c"lz4_decompress.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description115 = internal constant [44 x i8] c"lz4_decompress.description=LZ4 decompressor\00", section ".modinfo", align 1
@LZ4_decompress_generic.inc32table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 2, i32 1, i32 0, i32 4, i32 4, i32 4], [32 x i8] zeroinitializer }, align 32
@LZ4_decompress_generic.dec64table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 -4, i32 1, i32 2, i32 3], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [11 x i8] c"inc32table\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 91, i32 28 }
@___asan_gen_.7 = private unnamed_addr constant [11 x i8] c"dec64table\00", align 1
@___asan_gen_.8 = private constant [28 x i8] c"../lib/lz4/lz4_decompress.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 92, i32 19 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_description115, ptr @__UNIQUE_ID_file113, ptr @__UNIQUE_ID_license114, ptr @__ksymtab_LZ4_decompress_fast, ptr @__ksymtab_LZ4_decompress_fast_continue, ptr @__ksymtab_LZ4_decompress_fast_usingDict, ptr @__ksymtab_LZ4_decompress_safe, ptr @__ksymtab_LZ4_decompress_safe_continue, ptr @__ksymtab_LZ4_decompress_safe_partial, ptr @__ksymtab_LZ4_decompress_safe_usingDict, ptr @__ksymtab_LZ4_setStreamDecode, ptr @LZ4_decompress_generic.inc32table, ptr @LZ4_decompress_generic.dec64table], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LZ4_decompress_generic.inc32table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LZ4_decompress_generic.dec64table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @LZ4_decompress_safe(ptr noundef %source, ptr noundef %dest, i32 noundef %compressedSize, i32 noundef %maxDecompressedSize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %source, i32 %compressedSize
  %add.ptr1.i = getelementptr i8, ptr %dest, i32 %maxDecompressedSize
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i, i32 -14
  %add.ptr7.i = getelementptr i8, ptr %add.ptr6.i, i32 -2
  %add.ptr11.i = getelementptr i8, ptr %add.ptr1.i, i32 -14
  %add.ptr12.i = getelementptr i8, ptr %add.ptr11.i, i32 -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxDecompressedSize)
  %cmp14.i.not = icmp eq i32 %maxDecompressedSize, 0
  br i1 %cmp14.i.not, label %if.then.i, label %if.end.i, !prof !34

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %compressedSize)
  %cmp18.i = icmp eq i32 %compressedSize, 1
  br i1 %cmp18.i, label %land.rhs20.i, label %if.then.i.LZ4_decompress_generic.exit_crit_edge

if.then.i.LZ4_decompress_generic.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %LZ4_decompress_generic.exit

land.rhs20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %source, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp22.i = icmp ne i8 %1, 0
  %phi.cast.i = sext i1 %cmp22.i to i32
  br label %LZ4_decompress_generic.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %compressedSize)
  %cmp45.i.not = icmp eq i32 %compressedSize, 0
  br i1 %cmp45.i.not, label %if.end.i.LZ4_decompress_generic.exit_crit_edge, label %while.cond.preheader.i, !prof !34

if.end.i.LZ4_decompress_generic.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %LZ4_decompress_generic.exit

while.cond.preheader.i:                           ; preds = %if.end.i
  %add.ptr112.i = getelementptr i8, ptr %add.ptr.i, i32 -15
  %add.ptr181.i = getelementptr i8, ptr %add.ptr1.i, i32 -12
  %add.ptr186.i = getelementptr i8, ptr %add.ptr.i, i32 -8
  %add.ptr268.i = getelementptr i8, ptr %add.ptr.i, i32 -5
  %add.ptr438.i = getelementptr i8, ptr %add.ptr1.i, i32 -7
  %add.ptr439.i = getelementptr i8, ptr %add.ptr1.i, i32 -5
  %sub.ptr.lhs.cast447.i = ptrtoint ptr %add.ptr438.i to i32
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %while.cond.preheader.i
  %op.0.i = phi ptr [ %dest, %while.cond.preheader.i ], [ %op.0.i.be, %while.cond.i.backedge ]
  %ip.0.i = phi ptr [ %source, %while.cond.preheader.i ], [ %ip.0.i.be, %while.cond.i.backedge ]
  %incdec.ptr.i = getelementptr i8, ptr %ip.0.i, i32 1
  %2 = ptrtoint ptr %ip.0.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ip.0.i, align 1
  %conv55.i = zext i8 %3 to i32
  %shr.i = lshr i32 %conv55.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr.i)
  %cond.i = icmp eq i32 %shr.i, 15
  br i1 %cond.i, label %cond.end116.i, label %cond.true63.critedge.i

cond.true63.critedge.i:                           ; preds = %while.cond.i
  %cmp64.i = icmp uge ptr %incdec.ptr.i, %add.ptr7.i
  %cmp68.i = icmp ugt ptr %op.0.i, %add.ptr12.i
  %tobool70.not.i = or i1 %cmp68.i, %cmp64.i
  br i1 %tobool70.not.i, label %cond.true63.critedge.i.if.end174.i_crit_edge, label %if.then77.i, !prof !35

cond.true63.critedge.i.if.end174.i_crit_edge:     ; preds = %cond.true63.critedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end174.i

if.then77.i:                                      ; preds = %cond.true63.critedge.i
  %4 = call ptr @memcpy(ptr %op.0.i, ptr %incdec.ptr.i, i32 16)
  %add.ptr80.i = getelementptr i8, ptr %op.0.i, i32 %shr.i
  %add.ptr81.i = getelementptr i8, ptr %incdec.ptr.i, i32 %shr.i
  %and82.i = and i32 %conv55.i, 15
  %5 = ptrtoint ptr %add.ptr81.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %add.ptr81.val.i = load i16, ptr %add.ptr81.i, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %add.ptr81.val.i) #3
  %conv83.i = zext i16 %6 to i32
  %add.ptr84.i = getelementptr i8, ptr %add.ptr81.i, i32 2
  %idx.neg85.i = sub nsw i32 0, %conv83.i
  %add.ptr86.i = getelementptr i8, ptr %add.ptr80.i, i32 %idx.neg85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and82.i)
  %cmp87.not.i = icmp eq i32 %and82.i, 15
  br i1 %cmp87.not.i, label %_copy_match.i.thread, label %land.lhs.true89.i

land.lhs.true89.i:                                ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %6)
  %cmp90.i = icmp ult i16 %6, 8
  %cmp95.not.i = icmp ult ptr %add.ptr86.i, %dest
  %or.cond.i = select i1 %cmp90.i, i1 true, i1 %cmp95.not.i
  br i1 %or.cond.i, label %land.lhs.true89.i._copy_match.i_crit_edge, label %if.then97.i

land.lhs.true89.i._copy_match.i_crit_edge:        ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_copy_match.i

if.then97.i:                                      ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %add.ptr86.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %add.ptr86.i, align 1
  %9 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %add.ptr80.i, align 1
  %add.ptr100.i = getelementptr i8, ptr %add.ptr80.i, i32 8
  %add.ptr101.i = getelementptr i8, ptr %add.ptr86.i, i32 8
  %10 = ptrtoint ptr %add.ptr101.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %add.ptr101.i, align 1
  %12 = ptrtoint ptr %add.ptr100.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %add.ptr100.i, align 1
  %add.ptr102.i = getelementptr i8, ptr %add.ptr80.i, i32 16
  %add.ptr103.i = getelementptr i8, ptr %add.ptr86.i, i32 16
  %13 = ptrtoint ptr %add.ptr103.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %add.ptr103.i, align 1
  %15 = ptrtoint ptr %add.ptr102.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %add.ptr102.i, align 1
  %add.i = add nuw nsw i32 %and82.i, 4
  %add.ptr104.i = getelementptr i8, ptr %add.ptr80.i, i32 %add.i
  br label %while.cond.i.backedge

cond.end116.i:                                    ; preds = %while.cond.i
  %cmp113.not.i = icmp ult ptr %incdec.ptr.i, %add.ptr112.i
  br i1 %cmp113.not.i, label %cond.end116.i.do.body.i_crit_edge, label %cond.end116.i._output_error.i_crit_edge, !prof !36

cond.end116.i._output_error.i_crit_edge:          ; preds = %cond.end116.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

cond.end116.i.do.body.i_crit_edge:                ; preds = %cond.end116.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %cond.end116.i.do.body.i_crit_edge
  %length.0.i = phi i32 [ %add129.i, %do.body.i.do.body.i_crit_edge ], [ 15, %cond.end116.i.do.body.i_crit_edge ]
  %ip.1.i = phi ptr [ %incdec.ptr127.i, %do.body.i.do.body.i_crit_edge ], [ %incdec.ptr.i, %cond.end116.i.do.body.i_crit_edge ]
  %incdec.ptr127.i = getelementptr i8, ptr %ip.1.i, i32 1
  %16 = ptrtoint ptr %ip.1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ip.1.i, align 1
  %conv128.i = zext i8 %17 to i32
  %add129.i = add i32 %length.0.i, %conv128.i
  %cmp133.i = icmp ult ptr %incdec.ptr127.i, %add.ptr112.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp144.i = icmp eq i8 %17, -1
  %and146835.i = and i1 %cmp144.i, %cmp133.i
  br i1 %and146835.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %18 = ptrtoint ptr %op.0.i to i32
  %19 = xor i32 %18, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add129.i, i32 %19)
  %cmp151.i = icmp ugt i32 %add129.i, %19
  %20 = ptrtoint ptr %incdec.ptr127.i to i32
  %21 = xor i32 %20, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add129.i, i32 %21)
  %cmp164.i = icmp ugt i32 %add129.i, %21
  %or.cond = or i1 %cmp151.i, %cmp164.i
  br i1 %or.cond, label %do.end.i._output_error.i_crit_edge, label %do.end.i.if.end174.i_crit_edge, !prof !37

do.end.i.if.end174.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end174.i

do.end.i._output_error.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end174.i:                                      ; preds = %do.end.i.if.end174.i_crit_edge, %cond.true63.critedge.i.if.end174.i_crit_edge
  %length.2.i = phi i32 [ %shr.i, %cond.true63.critedge.i.if.end174.i_crit_edge ], [ %add129.i, %do.end.i.if.end174.i_crit_edge ]
  %ip.3.i = phi ptr [ %incdec.ptr.i, %cond.true63.critedge.i.if.end174.i_crit_edge ], [ %incdec.ptr127.i, %do.end.i.if.end174.i_crit_edge ]
  %add.ptr175.i = getelementptr i8, ptr %op.0.i, i32 %length.2.i
  %cmp182.i = icmp ugt ptr %add.ptr175.i, %add.ptr181.i
  %add.ptr185.i = getelementptr i8, ptr %ip.3.i, i32 %length.2.i
  %cmp187.i = icmp ugt ptr %add.ptr185.i, %add.ptr186.i
  %or.cond754.i = or i1 %cmp182.i, %cmp187.i
  br i1 %or.cond754.i, label %if.then195.i, label %if.end174.i.do.body.i.i_crit_edge

if.end174.i.do.body.i.i_crit_edge:                ; preds = %if.end174.i
  br label %do.body.i.i

if.then195.i:                                     ; preds = %if.end174.i
  %cmp218.not.i = icmp ne ptr %add.ptr185.i, %add.ptr.i
  %cmp221.i = icmp ugt ptr %add.ptr175.i, %add.ptr1.i
  %or.cond759.i = select i1 %cmp218.not.i, i1 true, i1 %cmp221.i
  br i1 %or.cond759.i, label %if.then195.i._output_error.i_crit_edge, label %if.end225.thread.i

if.then195.i._output_error.i_crit_edge:           ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end225.thread.i:                               ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #5
  %22 = call ptr @memmove(ptr %op.0.i, ptr %ip.3.i, i32 %length.2.i)
  %sub.ptr.lhs.cast479.i = ptrtoint ptr %add.ptr175.i to i32
  %sub.ptr.rhs.cast480.i = ptrtoint ptr %dest to i32
  %sub.ptr.sub481.i = sub i32 %sub.ptr.lhs.cast479.i, %sub.ptr.rhs.cast480.i
  br label %LZ4_decompress_generic.exit

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end174.i.do.body.i.i_crit_edge
  %d.0.i.i = phi ptr [ %add.ptr.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %op.0.i, %if.end174.i.do.body.i.i_crit_edge ]
  %s.0.i.i = phi ptr [ %add.ptr1.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %ip.3.i, %if.end174.i.do.body.i.i_crit_edge ]
  %23 = ptrtoint ptr %s.0.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %s.0.val.i.i = load i32, ptr %s.0.i.i, align 1
  %24 = getelementptr i8, ptr %s.0.i.i, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %s.0.val5.i.i = load i32, ptr %24, align 1
  %26 = ptrtoint ptr %d.0.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %s.0.val.i.i, ptr %d.0.i.i, align 1
  %add.ptr8.i.i.i = getelementptr i32, ptr %d.0.i.i, i32 1
  %27 = ptrtoint ptr %add.ptr8.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %s.0.val5.i.i, ptr %add.ptr8.i.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %d.0.i.i, i32 8
  %add.ptr1.i.i = getelementptr i8, ptr %s.0.i.i, i32 8
  %cmp.i.i = icmp ult ptr %add.ptr.i.i, %add.ptr175.i
  br i1 %cmp.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %LZ4_wildCopy.exit.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.i

LZ4_wildCopy.exit.i:                              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %add.ptr185.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %ip.4.val.i = load i16, ptr %add.ptr185.i, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %ip.4.val.i) #3
  %conv238.i = zext i16 %29 to i32
  %add.ptr239.i = getelementptr i8, ptr %add.ptr185.i, i32 2
  %idx.neg240.i = sub nsw i32 0, %conv238.i
  %add.ptr241.i = getelementptr i8, ptr %add.ptr175.i, i32 %idx.neg240.i
  %and242.i = and i32 %conv55.i, 15
  br label %_copy_match.i

_copy_match.i:                                    ; preds = %LZ4_wildCopy.exit.i, %land.lhs.true89.i._copy_match.i_crit_edge
  %length.5.i = phi i32 [ %and82.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %and242.i, %LZ4_wildCopy.exit.i ]
  %match.0.i = phi ptr [ %add.ptr86.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %add.ptr241.i, %LZ4_wildCopy.exit.i ]
  %offset.0.i = phi i32 [ %conv83.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %conv238.i, %LZ4_wildCopy.exit.i ]
  %op.2.i = phi ptr [ %add.ptr80.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %add.ptr175.i, %LZ4_wildCopy.exit.i ]
  %ip.5.i = phi ptr [ %add.ptr84.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %add.ptr239.i, %LZ4_wildCopy.exit.i ]
  %cmp246.i = icmp ult ptr %match.0.i, %dest
  br i1 %cmp246.i, label %_copy_match.i._output_error.i_crit_edge, label %if.end255.i, !prof !34

_copy_match.i._output_error.i_crit_edge:          ; preds = %_copy_match.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

_copy_match.i.thread:                             ; preds = %if.then77.i
  %cmp246.i7 = icmp ult ptr %add.ptr86.i, %dest
  br i1 %cmp246.i7, label %_copy_match.i.thread._output_error.i_crit_edge, label %if.end255.i.thread, !prof !34

_copy_match.i.thread._output_error.i_crit_edge:   ; preds = %_copy_match.i.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end255.i.thread:                               ; preds = %_copy_match.i.thread
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %conv83.i, ptr %add.ptr80.i, align 1
  br label %do.body263.preheader.i

if.end255.i:                                      ; preds = %_copy_match.i
  %31 = ptrtoint ptr %op.2.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %offset.0.i, ptr %op.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %length.5.i)
  %cmp259.i = icmp eq i32 %length.5.i, 15
  br i1 %cmp259.i, label %if.end255.i.do.body263.preheader.i_crit_edge, label %if.end255.i.if.end294.i_crit_edge

if.end255.i.if.end294.i_crit_edge:                ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end294.i

if.end255.i.do.body263.preheader.i_crit_edge:     ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body263.preheader.i

do.body263.preheader.i:                           ; preds = %if.end255.i.do.body263.preheader.i_crit_edge, %if.end255.i.thread
  %match.0.i926 = phi ptr [ %add.ptr86.i, %if.end255.i.thread ], [ %match.0.i, %if.end255.i.do.body263.preheader.i_crit_edge ]
  %offset.0.i1024 = phi i32 [ %conv83.i, %if.end255.i.thread ], [ %offset.0.i, %if.end255.i.do.body263.preheader.i_crit_edge ]
  %op.2.i1122 = phi ptr [ %add.ptr80.i, %if.end255.i.thread ], [ %op.2.i, %if.end255.i.do.body263.preheader.i_crit_edge ]
  %ip.5.i1320 = phi ptr [ %add.ptr84.i, %if.end255.i.thread ], [ %ip.5.i, %if.end255.i.do.body263.preheader.i_crit_edge ]
  br label %do.body263.i

do.body263.i:                                     ; preds = %if.end272.i.do.body263.i_crit_edge, %do.body263.preheader.i
  %length.6.i = phi i32 [ %add273.i, %if.end272.i.do.body263.i_crit_edge ], [ 15, %do.body263.preheader.i ]
  %ip.6.i = phi ptr [ %incdec.ptr264.i, %if.end272.i.do.body263.i_crit_edge ], [ %ip.5.i1320, %do.body263.preheader.i ]
  %incdec.ptr264.i = getelementptr i8, ptr %ip.6.i, i32 1
  %cmp269.not.i = icmp ugt ptr %incdec.ptr264.i, %add.ptr268.i
  br i1 %cmp269.not.i, label %do.body263.i._output_error.i_crit_edge, label %if.end272.i

do.body263.i._output_error.i_crit_edge:           ; preds = %do.body263.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end272.i:                                      ; preds = %do.body263.i
  %32 = ptrtoint ptr %ip.6.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ip.6.i, align 1
  %conv265.i = zext i8 %33 to i32
  %add273.i = add i32 %length.6.i, %conv265.i
  %cmp275.i = icmp eq i8 %33, -1
  br i1 %cmp275.i, label %if.end272.i.do.body263.i_crit_edge, label %cleanup291.i

if.end272.i.do.body263.i_crit_edge:               ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body263.i

cleanup291.i:                                     ; preds = %if.end272.i
  %34 = ptrtoint ptr %op.2.i1122 to i32
  %35 = xor i32 %34, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add273.i, i32 %35)
  %cmp281.i = icmp ugt i32 %add273.i, %35
  br i1 %cmp281.i, label %cleanup291.i._output_error.i_crit_edge, label %cleanup291.i.if.end294.i_crit_edge

cleanup291.i.if.end294.i_crit_edge:               ; preds = %cleanup291.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end294.i

cleanup291.i._output_error.i_crit_edge:           ; preds = %cleanup291.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end294.i:                                      ; preds = %cleanup291.i.if.end294.i_crit_edge, %if.end255.i.if.end294.i_crit_edge
  %match.0.i925 = phi ptr [ %match.0.i926, %cleanup291.i.if.end294.i_crit_edge ], [ %match.0.i, %if.end255.i.if.end294.i_crit_edge ]
  %offset.0.i1023 = phi i32 [ %offset.0.i1024, %cleanup291.i.if.end294.i_crit_edge ], [ %offset.0.i, %if.end255.i.if.end294.i_crit_edge ]
  %op.2.i1121 = phi ptr [ %op.2.i1122, %cleanup291.i.if.end294.i_crit_edge ], [ %op.2.i, %if.end255.i.if.end294.i_crit_edge ]
  %length.8.i = phi i32 [ %add273.i, %cleanup291.i.if.end294.i_crit_edge ], [ %length.5.i, %if.end255.i.if.end294.i_crit_edge ]
  %ip.7.i = phi ptr [ %incdec.ptr264.i, %cleanup291.i.if.end294.i_crit_edge ], [ %ip.5.i, %if.end255.i.if.end294.i_crit_edge ]
  %add295.i = add i32 %length.8.i, 4
  %add.ptr302.i = getelementptr i8, ptr %op.2.i1121, i32 %add295.i
  %cmp367.i = icmp ugt ptr %add.ptr302.i, %add.ptr181.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %offset.0.i1023)
  %cmp402.i = icmp ult i32 %offset.0.i1023, 8
  br i1 %cmp402.i, label %if.then410.i, label %if.else424.i, !prof !35

if.then410.i:                                     ; preds = %if.end294.i
  call void @__sanitizer_cov_trace_pc() #5
  %36 = ptrtoint ptr %match.0.i925 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %match.0.i925, align 1
  %38 = ptrtoint ptr %op.2.i1121 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %op.2.i1121, align 1
  %arrayidx412.i = getelementptr i8, ptr %match.0.i925, i32 1
  %39 = ptrtoint ptr %arrayidx412.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx412.i, align 1
  %arrayidx413.i = getelementptr i8, ptr %op.2.i1121, i32 1
  %41 = ptrtoint ptr %arrayidx413.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx413.i, align 1
  %arrayidx414.i = getelementptr i8, ptr %match.0.i925, i32 2
  %42 = ptrtoint ptr %arrayidx414.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx414.i, align 1
  %arrayidx415.i = getelementptr i8, ptr %op.2.i1121, i32 2
  %44 = ptrtoint ptr %arrayidx415.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx415.i, align 1
  %arrayidx416.i = getelementptr i8, ptr %match.0.i925, i32 3
  %45 = ptrtoint ptr %arrayidx416.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx416.i, align 1
  %arrayidx417.i = getelementptr i8, ptr %op.2.i1121, i32 3
  %47 = ptrtoint ptr %arrayidx417.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx417.i, align 1
  %arrayidx418.i = getelementptr [8 x i32], ptr @LZ4_decompress_generic.inc32table, i32 0, i32 %offset.0.i1023
  %48 = ptrtoint ptr %arrayidx418.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx418.i, align 4
  %add.ptr419.i = getelementptr i8, ptr %match.0.i925, i32 %49
  %add.ptr420.i = getelementptr i8, ptr %op.2.i1121, i32 4
  %50 = ptrtoint ptr %add.ptr419.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %add.ptr419.i, align 1
  %52 = ptrtoint ptr %add.ptr420.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %51, ptr %add.ptr420.i, align 1
  %arrayidx421.i = getelementptr [8 x i32], ptr @LZ4_decompress_generic.dec64table, i32 0, i32 %offset.0.i1023
  %53 = ptrtoint ptr %arrayidx421.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx421.i, align 4
  %idx.neg422.i = sub i32 0, %54
  %add.ptr423.i = getelementptr i8, ptr %add.ptr419.i, i32 %idx.neg422.i
  br label %if.end426.i

if.else424.i:                                     ; preds = %if.end294.i
  call void @__sanitizer_cov_trace_pc() #5
  %55 = ptrtoint ptr %match.0.i925 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %match.0.val.i = load i32, ptr %match.0.i925, align 1
  %56 = getelementptr i8, ptr %match.0.i925, i32 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %match.0.val773.i = load i32, ptr %56, align 1
  %58 = ptrtoint ptr %op.2.i1121 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %match.0.val.i, ptr %op.2.i1121, align 1
  %add.ptr8.i.i = getelementptr i32, ptr %op.2.i1121, i32 1
  %59 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %match.0.val773.i, ptr %add.ptr8.i.i, align 1
  %add.ptr425.i = getelementptr i8, ptr %match.0.i925, i32 8
  br label %if.end426.i

if.end426.i:                                      ; preds = %if.else424.i, %if.then410.i
  %match.2.i = phi ptr [ %add.ptr423.i, %if.then410.i ], [ %add.ptr425.i, %if.else424.i ]
  %add.ptr427.i = getelementptr i8, ptr %op.2.i1121, i32 8
  br i1 %cmp367.i, label %if.then437.i, label %if.else462.i, !prof !35

if.then437.i:                                     ; preds = %if.end426.i
  %cmp440.i = icmp ugt ptr %add.ptr302.i, %add.ptr439.i
  br i1 %cmp440.i, label %if.then437.i._output_error.i_crit_edge, label %if.end443.i

if.then437.i._output_error.i_crit_edge:           ; preds = %if.then437.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end443.i:                                      ; preds = %if.then437.i
  %cmp444.i = icmp ult ptr %add.ptr427.i, %add.ptr438.i
  br i1 %cmp444.i, label %if.end443.i.do.body.i782.i_crit_edge, label %if.end443.i.if.end451.i_crit_edge

if.end443.i.if.end451.i_crit_edge:                ; preds = %if.end443.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end451.i

if.end443.i.do.body.i782.i_crit_edge:             ; preds = %if.end443.i
  br label %do.body.i782.i

do.body.i782.i:                                   ; preds = %do.body.i782.i.do.body.i782.i_crit_edge, %if.end443.i.do.body.i782.i_crit_edge
  %d.0.i774.i = phi ptr [ %add.ptr.i779.i, %do.body.i782.i.do.body.i782.i_crit_edge ], [ %add.ptr427.i, %if.end443.i.do.body.i782.i_crit_edge ]
  %s.0.i775.i = phi ptr [ %add.ptr1.i780.i, %do.body.i782.i.do.body.i782.i_crit_edge ], [ %match.2.i, %if.end443.i.do.body.i782.i_crit_edge ]
  %60 = ptrtoint ptr %s.0.i775.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %s.0.val.i776.i = load i32, ptr %s.0.i775.i, align 1
  %61 = getelementptr i8, ptr %s.0.i775.i, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %s.0.val5.i777.i = load i32, ptr %61, align 1
  %63 = ptrtoint ptr %d.0.i774.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %s.0.val.i776.i, ptr %d.0.i774.i, align 1
  %add.ptr8.i.i778.i = getelementptr i32, ptr %d.0.i774.i, i32 1
  %64 = ptrtoint ptr %add.ptr8.i.i778.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %s.0.val5.i777.i, ptr %add.ptr8.i.i778.i, align 1
  %add.ptr.i779.i = getelementptr i8, ptr %d.0.i774.i, i32 8
  %add.ptr1.i780.i = getelementptr i8, ptr %s.0.i775.i, i32 8
  %cmp.i781.i = icmp ult ptr %add.ptr.i779.i, %add.ptr438.i
  br i1 %cmp.i781.i, label %do.body.i782.i.do.body.i782.i_crit_edge, label %LZ4_wildCopy.exit783.i

do.body.i782.i.do.body.i782.i_crit_edge:          ; preds = %do.body.i782.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i782.i

LZ4_wildCopy.exit783.i:                           ; preds = %do.body.i782.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.ptr.rhs.cast448.i = ptrtoint ptr %add.ptr427.i to i32
  %sub.ptr.sub449.i = sub i32 %sub.ptr.lhs.cast447.i, %sub.ptr.rhs.cast448.i
  %add.ptr450.i = getelementptr i8, ptr %match.2.i, i32 %sub.ptr.sub449.i
  br label %if.end451.i

if.end451.i:                                      ; preds = %LZ4_wildCopy.exit783.i, %if.end443.i.if.end451.i_crit_edge
  %match.3.i = phi ptr [ %add.ptr450.i, %LZ4_wildCopy.exit783.i ], [ %match.2.i, %if.end443.i.if.end451.i_crit_edge ]
  %op.7.i = phi ptr [ %add.ptr438.i, %LZ4_wildCopy.exit783.i ], [ %add.ptr427.i, %if.end443.i.if.end451.i_crit_edge ]
  %cmp453843.i = icmp ult ptr %op.7.i, %add.ptr302.i
  br i1 %cmp453843.i, label %if.end451.i.while.body455.i_crit_edge, label %if.end451.i.while.cond.i.backedge_crit_edge

if.end451.i.while.cond.i.backedge_crit_edge:      ; preds = %if.end451.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

if.end451.i.while.body455.i_crit_edge:            ; preds = %if.end451.i
  br label %while.body455.i

while.body455.i:                                  ; preds = %while.body455.i.while.body455.i_crit_edge, %if.end451.i.while.body455.i_crit_edge
  %op.8845.i = phi ptr [ %incdec.ptr457.i, %while.body455.i.while.body455.i_crit_edge ], [ %op.7.i, %if.end451.i.while.body455.i_crit_edge ]
  %match.4844.i = phi ptr [ %incdec.ptr456.i, %while.body455.i.while.body455.i_crit_edge ], [ %match.3.i, %if.end451.i.while.body455.i_crit_edge ]
  %incdec.ptr456.i = getelementptr i8, ptr %match.4844.i, i32 1
  %65 = ptrtoint ptr %match.4844.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %match.4844.i, align 1
  %incdec.ptr457.i = getelementptr i8, ptr %op.8845.i, i32 1
  %67 = ptrtoint ptr %op.8845.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %op.8845.i, align 1
  %cmp453.i = icmp ult ptr %incdec.ptr457.i, %add.ptr302.i
  br i1 %cmp453.i, label %while.body455.i.while.body455.i_crit_edge, label %while.body455.i.while.cond.i.backedge_crit_edge

while.body455.i.while.cond.i.backedge_crit_edge:  ; preds = %while.body455.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

while.body455.i.while.body455.i_crit_edge:        ; preds = %while.body455.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body455.i

if.else462.i:                                     ; preds = %if.end426.i
  %68 = ptrtoint ptr %match.2.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %match.2.val.i = load i32, ptr %match.2.i, align 1
  %69 = getelementptr i8, ptr %match.2.i, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %match.2.val772.i = load i32, ptr %69, align 1
  %71 = ptrtoint ptr %add.ptr427.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %match.2.val.i, ptr %add.ptr427.i, align 1
  %add.ptr8.i784.i = getelementptr i8, ptr %op.2.i1121, i32 12
  %72 = ptrtoint ptr %add.ptr8.i784.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 %match.2.val772.i, ptr %add.ptr8.i784.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add295.i)
  %cmp463.i = icmp ugt i32 %add295.i, 16
  br i1 %cmp463.i, label %if.then465.i, label %if.else462.i.while.cond.i.backedge_crit_edge

if.else462.i.while.cond.i.backedge_crit_edge:     ; preds = %if.else462.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %do.body.i793.i.while.cond.i.backedge_crit_edge, %if.else462.i.while.cond.i.backedge_crit_edge, %while.body455.i.while.cond.i.backedge_crit_edge, %if.end451.i.while.cond.i.backedge_crit_edge, %if.then97.i
  %op.0.i.be = phi ptr [ %add.ptr302.i, %if.else462.i.while.cond.i.backedge_crit_edge ], [ %add.ptr302.i, %if.end451.i.while.cond.i.backedge_crit_edge ], [ %add.ptr104.i, %if.then97.i ], [ %add.ptr302.i, %while.body455.i.while.cond.i.backedge_crit_edge ], [ %add.ptr302.i, %do.body.i793.i.while.cond.i.backedge_crit_edge ]
  %ip.0.i.be = phi ptr [ %ip.7.i, %if.else462.i.while.cond.i.backedge_crit_edge ], [ %ip.7.i, %if.end451.i.while.cond.i.backedge_crit_edge ], [ %add.ptr84.i, %if.then97.i ], [ %ip.7.i, %while.body455.i.while.cond.i.backedge_crit_edge ], [ %ip.7.i, %do.body.i793.i.while.cond.i.backedge_crit_edge ]
  br label %while.cond.i

if.then465.i:                                     ; preds = %if.else462.i
  %add.ptr466.i = getelementptr i8, ptr %op.2.i1121, i32 16
  br label %do.body.i793.i

do.body.i793.i:                                   ; preds = %do.body.i793.i.do.body.i793.i_crit_edge, %if.then465.i
  %d.0.i785.i = phi ptr [ %add.ptr466.i, %if.then465.i ], [ %add.ptr.i790.i, %do.body.i793.i.do.body.i793.i_crit_edge ]
  %match.2.pn.i = phi ptr [ %match.2.i, %if.then465.i ], [ %s.0.i786.i, %do.body.i793.i.do.body.i793.i_crit_edge ]
  %s.0.i786.i = getelementptr i8, ptr %match.2.pn.i, i32 8
  %73 = ptrtoint ptr %s.0.i786.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %s.0.val.i787.i = load i32, ptr %s.0.i786.i, align 1
  %74 = getelementptr i8, ptr %match.2.pn.i, i32 12
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %s.0.val5.i788.i = load i32, ptr %74, align 1
  %76 = ptrtoint ptr %d.0.i785.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %s.0.val.i787.i, ptr %d.0.i785.i, align 1
  %add.ptr8.i.i789.i = getelementptr i32, ptr %d.0.i785.i, i32 1
  %77 = ptrtoint ptr %add.ptr8.i.i789.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %s.0.val5.i788.i, ptr %add.ptr8.i.i789.i, align 1
  %add.ptr.i790.i = getelementptr i8, ptr %d.0.i785.i, i32 8
  %cmp.i792.i = icmp ult ptr %add.ptr.i790.i, %add.ptr302.i
  br i1 %cmp.i792.i, label %do.body.i793.i.do.body.i793.i_crit_edge, label %do.body.i793.i.while.cond.i.backedge_crit_edge

do.body.i793.i.while.cond.i.backedge_crit_edge:   ; preds = %do.body.i793.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

do.body.i793.i.do.body.i793.i_crit_edge:          ; preds = %do.body.i793.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i793.i

_output_error.i:                                  ; preds = %if.then437.i._output_error.i_crit_edge, %cleanup291.i._output_error.i_crit_edge, %do.body263.i._output_error.i_crit_edge, %_copy_match.i.thread._output_error.i_crit_edge, %_copy_match.i._output_error.i_crit_edge, %if.then195.i._output_error.i_crit_edge, %do.end.i._output_error.i_crit_edge, %cond.end116.i._output_error.i_crit_edge
  %ip.8826.i = phi ptr [ %ip.3.i, %if.then195.i._output_error.i_crit_edge ], [ %incdec.ptr264.i, %do.body263.i._output_error.i_crit_edge ], [ %add.ptr84.i, %_copy_match.i.thread._output_error.i_crit_edge ], [ %ip.5.i, %_copy_match.i._output_error.i_crit_edge ], [ %incdec.ptr127.i, %do.end.i._output_error.i_crit_edge ], [ %incdec.ptr.i, %cond.end116.i._output_error.i_crit_edge ], [ %ip.7.i, %if.then437.i._output_error.i_crit_edge ], [ %incdec.ptr264.i, %cleanup291.i._output_error.i_crit_edge ]
  %sub.ptr.lhs.cast486.i = ptrtoint ptr %ip.8826.i to i32
  %sub.ptr.rhs.cast487.i = ptrtoint ptr %source to i32
  %78 = xor i32 %sub.ptr.lhs.cast486.i, -1
  %sub490.i = add i32 %78, %sub.ptr.rhs.cast487.i
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %_output_error.i, %if.end225.thread.i, %if.end.i.LZ4_decompress_generic.exit_crit_edge, %land.rhs20.i, %if.then.i.LZ4_decompress_generic.exit_crit_edge
  %retval.0.i = phi i32 [ %sub490.i, %_output_error.i ], [ %sub.ptr.sub481.i, %if.end225.thread.i ], [ -1, %if.then.i.LZ4_decompress_generic.exit_crit_edge ], [ %phi.cast.i, %land.rhs20.i ], [ -1, %if.end.i.LZ4_decompress_generic.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @LZ4_decompress_safe_partial(ptr noundef %src, ptr noundef %dst, i32 noundef %compressedSize, i32 noundef %targetOutputSize, i32 noundef %dstCapacity) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.smin.i32(i32 %targetOutputSize, i32 %dstCapacity)
  %add.ptr.i = getelementptr i8, ptr %src, i32 %compressedSize
  %add.ptr1.i = getelementptr i8, ptr %dst, i32 %0
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i, i32 -14
  %add.ptr7.i = getelementptr i8, ptr %add.ptr6.i, i32 -2
  %add.ptr11.i = getelementptr i8, ptr %add.ptr1.i, i32 -14
  %add.ptr12.i = getelementptr i8, ptr %add.ptr11.i, i32 -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp14.i.not = icmp eq i32 %0, 0
  br i1 %cmp14.i.not, label %if.then.i, label %if.end.i, !prof !34

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %compressedSize)
  %cmp18.i = icmp eq i32 %compressedSize, 1
  br i1 %cmp18.i, label %land.rhs20.i, label %if.then.i.LZ4_decompress_generic.exit_crit_edge

if.then.i.LZ4_decompress_generic.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %LZ4_decompress_generic.exit

land.rhs20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %src, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp22.i = icmp ne i8 %2, 0
  %phi.cast.i = sext i1 %cmp22.i to i32
  br label %LZ4_decompress_generic.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %compressedSize)
  %cmp45.i.not = icmp eq i32 %compressedSize, 0
  br i1 %cmp45.i.not, label %if.end.i.LZ4_decompress_generic.exit_crit_edge, label %while.cond.preheader.i, !prof !34

if.end.i.LZ4_decompress_generic.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %LZ4_decompress_generic.exit

while.cond.preheader.i:                           ; preds = %if.end.i
  %add.ptr112.i = getelementptr i8, ptr %add.ptr.i, i32 -15
  %add.ptr181.i = getelementptr i8, ptr %add.ptr1.i, i32 -12
  %add.ptr186.i = getelementptr i8, ptr %add.ptr.i, i32 -8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr1.i to i32
  %add.ptr268.i = getelementptr i8, ptr %add.ptr.i, i32 -5
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %while.cond.preheader.i
  %op.0.i = phi ptr [ %dst, %while.cond.preheader.i ], [ %op.0.i.be, %while.cond.i.backedge ]
  %ip.0.i = phi ptr [ %src, %while.cond.preheader.i ], [ %ip.0.i.be, %while.cond.i.backedge ]
  %incdec.ptr.i = getelementptr i8, ptr %ip.0.i, i32 1
  %3 = ptrtoint ptr %ip.0.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ip.0.i, align 1
  %conv55.i = zext i8 %4 to i32
  %shr.i = lshr i32 %conv55.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr.i)
  %cond.i = icmp eq i32 %shr.i, 15
  br i1 %cond.i, label %cond.end116.i, label %cond.true63.critedge.i

cond.true63.critedge.i:                           ; preds = %while.cond.i
  %cmp64.i = icmp uge ptr %incdec.ptr.i, %add.ptr7.i
  %cmp68.i = icmp ugt ptr %op.0.i, %add.ptr12.i
  %tobool70.not.i = or i1 %cmp68.i, %cmp64.i
  br i1 %tobool70.not.i, label %cond.true63.critedge.i.if.end174.i_crit_edge, label %if.then77.i, !prof !35

cond.true63.critedge.i.if.end174.i_crit_edge:     ; preds = %cond.true63.critedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end174.i

if.then77.i:                                      ; preds = %cond.true63.critedge.i
  %5 = call ptr @memcpy(ptr %op.0.i, ptr %incdec.ptr.i, i32 16)
  %add.ptr80.i = getelementptr i8, ptr %op.0.i, i32 %shr.i
  %add.ptr81.i = getelementptr i8, ptr %incdec.ptr.i, i32 %shr.i
  %and82.i = and i32 %conv55.i, 15
  %6 = ptrtoint ptr %add.ptr81.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %add.ptr81.val.i = load i16, ptr %add.ptr81.i, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %add.ptr81.val.i) #3
  %conv83.i = zext i16 %7 to i32
  %add.ptr84.i = getelementptr i8, ptr %add.ptr81.i, i32 2
  %idx.neg85.i = sub nsw i32 0, %conv83.i
  %add.ptr86.i = getelementptr i8, ptr %add.ptr80.i, i32 %idx.neg85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and82.i)
  %cmp87.not.i = icmp eq i32 %and82.i, 15
  br i1 %cmp87.not.i, label %_copy_match.i.thread, label %land.lhs.true89.i

land.lhs.true89.i:                                ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %7)
  %cmp90.i = icmp ult i16 %7, 8
  %cmp95.not.i = icmp ult ptr %add.ptr86.i, %dst
  %or.cond.i = select i1 %cmp90.i, i1 true, i1 %cmp95.not.i
  br i1 %or.cond.i, label %land.lhs.true89.i._copy_match.i_crit_edge, label %if.then97.i

land.lhs.true89.i._copy_match.i_crit_edge:        ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_copy_match.i

if.then97.i:                                      ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %add.ptr86.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %add.ptr86.i, align 1
  %10 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %add.ptr80.i, align 1
  %add.ptr100.i = getelementptr i8, ptr %add.ptr80.i, i32 8
  %add.ptr101.i = getelementptr i8, ptr %add.ptr86.i, i32 8
  %11 = ptrtoint ptr %add.ptr101.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %add.ptr101.i, align 1
  %13 = ptrtoint ptr %add.ptr100.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %add.ptr100.i, align 1
  %add.ptr102.i = getelementptr i8, ptr %add.ptr80.i, i32 16
  %add.ptr103.i = getelementptr i8, ptr %add.ptr86.i, i32 16
  %14 = ptrtoint ptr %add.ptr103.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %add.ptr103.i, align 1
  %16 = ptrtoint ptr %add.ptr102.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %add.ptr102.i, align 1
  %add.i = add nuw nsw i32 %and82.i, 4
  %add.ptr104.i = getelementptr i8, ptr %add.ptr80.i, i32 %add.i
  br label %while.cond.i.backedge

cond.end116.i:                                    ; preds = %while.cond.i
  %cmp113.not.i = icmp ult ptr %incdec.ptr.i, %add.ptr112.i
  br i1 %cmp113.not.i, label %cond.end116.i.do.body.i_crit_edge, label %cond.end116.i._output_error.i_crit_edge, !prof !36

cond.end116.i._output_error.i_crit_edge:          ; preds = %cond.end116.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

cond.end116.i.do.body.i_crit_edge:                ; preds = %cond.end116.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %cond.end116.i.do.body.i_crit_edge
  %length.0.i = phi i32 [ %add129.i, %do.body.i.do.body.i_crit_edge ], [ 15, %cond.end116.i.do.body.i_crit_edge ]
  %ip.1.i = phi ptr [ %incdec.ptr127.i, %do.body.i.do.body.i_crit_edge ], [ %incdec.ptr.i, %cond.end116.i.do.body.i_crit_edge ]
  %incdec.ptr127.i = getelementptr i8, ptr %ip.1.i, i32 1
  %17 = ptrtoint ptr %ip.1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ip.1.i, align 1
  %conv128.i = zext i8 %18 to i32
  %add129.i = add i32 %length.0.i, %conv128.i
  %cmp133.i = icmp ult ptr %incdec.ptr127.i, %add.ptr112.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp144.i = icmp eq i8 %18, -1
  %and146835.i = and i1 %cmp144.i, %cmp133.i
  br i1 %and146835.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %19 = ptrtoint ptr %op.0.i to i32
  %20 = xor i32 %19, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add129.i, i32 %20)
  %cmp151.i = icmp ugt i32 %add129.i, %20
  %21 = ptrtoint ptr %incdec.ptr127.i to i32
  %22 = xor i32 %21, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add129.i, i32 %22)
  %cmp164.i = icmp ugt i32 %add129.i, %22
  %or.cond = or i1 %cmp151.i, %cmp164.i
  br i1 %or.cond, label %do.end.i._output_error.i_crit_edge, label %do.end.i.if.end174.i_crit_edge, !prof !37

do.end.i.if.end174.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end174.i

do.end.i._output_error.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end174.i:                                      ; preds = %do.end.i.if.end174.i_crit_edge, %cond.true63.critedge.i.if.end174.i_crit_edge
  %length.2.i = phi i32 [ %shr.i, %cond.true63.critedge.i.if.end174.i_crit_edge ], [ %add129.i, %do.end.i.if.end174.i_crit_edge ]
  %ip.3.i = phi ptr [ %incdec.ptr.i, %cond.true63.critedge.i.if.end174.i_crit_edge ], [ %incdec.ptr127.i, %do.end.i.if.end174.i_crit_edge ]
  %add.ptr175.i = getelementptr i8, ptr %op.0.i, i32 %length.2.i
  %cmp182.i = icmp ugt ptr %add.ptr175.i, %add.ptr181.i
  %add.ptr185.i = getelementptr i8, ptr %ip.3.i, i32 %length.2.i
  %cmp187.i = icmp ugt ptr %add.ptr185.i, %add.ptr186.i
  %or.cond754.i = or i1 %cmp182.i, %cmp187.i
  br i1 %or.cond754.i, label %if.then195.i, label %if.end174.i.do.body.i.i_crit_edge

if.end174.i.do.body.i.i_crit_edge:                ; preds = %if.end174.i
  br label %do.body.i.i

if.then195.i:                                     ; preds = %if.end174.i
  %cmp198.i = icmp ugt ptr %add.ptr175.i, %add.ptr1.i
  %sub.ptr.rhs.cast.i = ptrtoint ptr %op.0.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %length.3.i = select i1 %cmp198.i, i32 %sub.ptr.sub.i, i32 %length.2.i
  %add.ptr204.i = getelementptr i8, ptr %ip.3.i, i32 %length.3.i
  %cmp205.i = icmp ugt ptr %add.ptr204.i, %add.ptr.i
  br i1 %cmp205.i, label %if.then195.i._output_error.i_crit_edge, label %if.end225.i

if.then195.i._output_error.i_crit_edge:           ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end225.i:                                      ; preds = %if.then195.i
  %23 = call ptr @memmove(ptr %op.0.i, ptr %ip.3.i, i32 %length.3.i)
  %add.ptr227.i = getelementptr i8, ptr %op.0.i, i32 %length.3.i
  %cmp230.not.i = icmp ugt ptr %add.ptr1.i, %add.ptr175.i
  br i1 %cmp230.not.i, label %if.end225.i.if.end236.i_crit_edge, label %if.end225.i.while.end476.i_crit_edge

if.end225.i.if.end236.i_crit_edge:                ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end236.i

if.end225.i.while.end476.i_crit_edge:             ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #5
  %.pre = ptrtoint ptr %add.ptr227.i to i32
  br label %while.end476.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end174.i.do.body.i.i_crit_edge
  %d.0.i.i = phi ptr [ %add.ptr.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %op.0.i, %if.end174.i.do.body.i.i_crit_edge ]
  %s.0.i.i = phi ptr [ %add.ptr1.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %ip.3.i, %if.end174.i.do.body.i.i_crit_edge ]
  %24 = ptrtoint ptr %s.0.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %s.0.val.i.i = load i32, ptr %s.0.i.i, align 1
  %25 = getelementptr i8, ptr %s.0.i.i, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %s.0.val5.i.i = load i32, ptr %25, align 1
  %27 = ptrtoint ptr %d.0.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %s.0.val.i.i, ptr %d.0.i.i, align 1
  %add.ptr8.i.i.i = getelementptr i32, ptr %d.0.i.i, i32 1
  %28 = ptrtoint ptr %add.ptr8.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %s.0.val5.i.i, ptr %add.ptr8.i.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %d.0.i.i, i32 8
  %add.ptr1.i.i = getelementptr i8, ptr %s.0.i.i, i32 8
  %cmp.i.i = icmp ult ptr %add.ptr.i.i, %add.ptr175.i
  br i1 %cmp.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.body.i.i.if.end236.i_crit_edge

do.body.i.i.if.end236.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end236.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.i

if.end236.i:                                      ; preds = %do.body.i.i.if.end236.i_crit_edge, %if.end225.i.if.end236.i_crit_edge
  %op.1.i = phi ptr [ %add.ptr227.i, %if.end225.i.if.end236.i_crit_edge ], [ %add.ptr175.i, %do.body.i.i.if.end236.i_crit_edge ]
  %ip.4.i = phi ptr [ %add.ptr204.i, %if.end225.i.if.end236.i_crit_edge ], [ %add.ptr185.i, %do.body.i.i.if.end236.i_crit_edge ]
  %29 = ptrtoint ptr %ip.4.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %ip.4.val.i = load i16, ptr %ip.4.i, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %ip.4.val.i) #3
  %conv238.i = zext i16 %30 to i32
  %add.ptr239.i = getelementptr i8, ptr %ip.4.i, i32 2
  %idx.neg240.i = sub nsw i32 0, %conv238.i
  %add.ptr241.i = getelementptr i8, ptr %op.1.i, i32 %idx.neg240.i
  %and242.i = and i32 %conv55.i, 15
  br label %_copy_match.i

_copy_match.i:                                    ; preds = %if.end236.i, %land.lhs.true89.i._copy_match.i_crit_edge
  %length.5.i = phi i32 [ %and82.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %and242.i, %if.end236.i ]
  %match.0.i = phi ptr [ %add.ptr86.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %add.ptr241.i, %if.end236.i ]
  %offset.0.i = phi i32 [ %conv83.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %conv238.i, %if.end236.i ]
  %op.2.i = phi ptr [ %add.ptr80.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %op.1.i, %if.end236.i ]
  %ip.5.i = phi ptr [ %add.ptr84.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %add.ptr239.i, %if.end236.i ]
  %cmp246.i = icmp ult ptr %match.0.i, %dst
  br i1 %cmp246.i, label %_copy_match.i._output_error.i_crit_edge, label %if.end255.i, !prof !34

_copy_match.i._output_error.i_crit_edge:          ; preds = %_copy_match.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

_copy_match.i.thread:                             ; preds = %if.then77.i
  %cmp246.i10 = icmp ult ptr %add.ptr86.i, %dst
  br i1 %cmp246.i10, label %_copy_match.i.thread._output_error.i_crit_edge, label %_copy_match.i.thread.do.body263.preheader.i_crit_edge, !prof !34

_copy_match.i.thread.do.body263.preheader.i_crit_edge: ; preds = %_copy_match.i.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body263.preheader.i

_copy_match.i.thread._output_error.i_crit_edge:   ; preds = %_copy_match.i.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end255.i:                                      ; preds = %_copy_match.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %length.5.i)
  %cmp259.i = icmp eq i32 %length.5.i, 15
  br i1 %cmp259.i, label %if.end255.i.do.body263.preheader.i_crit_edge, label %if.end255.i.if.end294.i_crit_edge

if.end255.i.if.end294.i_crit_edge:                ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end294.i

if.end255.i.do.body263.preheader.i_crit_edge:     ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body263.preheader.i

do.body263.preheader.i:                           ; preds = %if.end255.i.do.body263.preheader.i_crit_edge, %_copy_match.i.thread.do.body263.preheader.i_crit_edge
  %match.0.i1229 = phi ptr [ %match.0.i, %if.end255.i.do.body263.preheader.i_crit_edge ], [ %add.ptr86.i, %_copy_match.i.thread.do.body263.preheader.i_crit_edge ]
  %offset.0.i1327 = phi i32 [ %offset.0.i, %if.end255.i.do.body263.preheader.i_crit_edge ], [ %conv83.i, %_copy_match.i.thread.do.body263.preheader.i_crit_edge ]
  %op.2.i1425 = phi ptr [ %op.2.i, %if.end255.i.do.body263.preheader.i_crit_edge ], [ %add.ptr80.i, %_copy_match.i.thread.do.body263.preheader.i_crit_edge ]
  %ip.5.i1623 = phi ptr [ %ip.5.i, %if.end255.i.do.body263.preheader.i_crit_edge ], [ %add.ptr84.i, %_copy_match.i.thread.do.body263.preheader.i_crit_edge ]
  br label %do.body263.i

do.body263.i:                                     ; preds = %if.end272.i.do.body263.i_crit_edge, %do.body263.preheader.i
  %length.6.i = phi i32 [ %add273.i, %if.end272.i.do.body263.i_crit_edge ], [ 15, %do.body263.preheader.i ]
  %ip.6.i = phi ptr [ %incdec.ptr264.i, %if.end272.i.do.body263.i_crit_edge ], [ %ip.5.i1623, %do.body263.preheader.i ]
  %incdec.ptr264.i = getelementptr i8, ptr %ip.6.i, i32 1
  %cmp269.not.i = icmp ugt ptr %incdec.ptr264.i, %add.ptr268.i
  br i1 %cmp269.not.i, label %do.body263.i._output_error.i_crit_edge, label %if.end272.i

do.body263.i._output_error.i_crit_edge:           ; preds = %do.body263.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end272.i:                                      ; preds = %do.body263.i
  %31 = ptrtoint ptr %ip.6.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ip.6.i, align 1
  %conv265.i = zext i8 %32 to i32
  %add273.i = add i32 %length.6.i, %conv265.i
  %cmp275.i = icmp eq i8 %32, -1
  br i1 %cmp275.i, label %if.end272.i.do.body263.i_crit_edge, label %cleanup291.i

if.end272.i.do.body263.i_crit_edge:               ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body263.i

cleanup291.i:                                     ; preds = %if.end272.i
  %33 = ptrtoint ptr %op.2.i1425 to i32
  %34 = xor i32 %33, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add273.i, i32 %34)
  %cmp281.i = icmp ugt i32 %add273.i, %34
  br i1 %cmp281.i, label %cleanup291.i._output_error.i_crit_edge, label %cleanup291.i.if.end294.i_crit_edge

cleanup291.i.if.end294.i_crit_edge:               ; preds = %cleanup291.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end294.i

cleanup291.i._output_error.i_crit_edge:           ; preds = %cleanup291.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end294.i:                                      ; preds = %cleanup291.i.if.end294.i_crit_edge, %if.end255.i.if.end294.i_crit_edge
  %match.0.i1228 = phi ptr [ %match.0.i1229, %cleanup291.i.if.end294.i_crit_edge ], [ %match.0.i, %if.end255.i.if.end294.i_crit_edge ]
  %offset.0.i1326 = phi i32 [ %offset.0.i1327, %cleanup291.i.if.end294.i_crit_edge ], [ %offset.0.i, %if.end255.i.if.end294.i_crit_edge ]
  %op.2.i1424 = phi ptr [ %op.2.i1425, %cleanup291.i.if.end294.i_crit_edge ], [ %op.2.i, %if.end255.i.if.end294.i_crit_edge ]
  %length.8.i = phi i32 [ %add273.i, %cleanup291.i.if.end294.i_crit_edge ], [ %length.5.i, %if.end255.i.if.end294.i_crit_edge ]
  %ip.7.i = phi ptr [ %incdec.ptr264.i, %cleanup291.i.if.end294.i_crit_edge ], [ %ip.5.i, %if.end255.i.if.end294.i_crit_edge ]
  %add295.i = add i32 %length.8.i, 4
  %add.ptr302.i = getelementptr i8, ptr %op.2.i1424, i32 %add295.i
  %cmp367.i = icmp ugt ptr %add.ptr302.i, %add.ptr181.i
  br i1 %cmp367.i, label %if.then369.i, label %if.end401.i

if.then369.i:                                     ; preds = %if.end294.i
  %sub.ptr.rhs.cast371.i = ptrtoint ptr %op.2.i1424 to i32
  %sub.ptr.sub372.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast371.i
  %35 = tail call i32 @llvm.umin.i32(i32 %add295.i, i32 %sub.ptr.sub372.i) #3
  %add.ptr380.i = getelementptr i8, ptr %match.0.i1228, i32 %35
  %add.ptr381.i = getelementptr i8, ptr %op.2.i1424, i32 %35
  %cmp382.i = icmp ugt ptr %add.ptr380.i, %op.2.i1424
  br i1 %cmp382.i, label %while.cond385.preheader.i, label %if.else392.i

while.cond385.preheader.i:                        ; preds = %if.then369.i
  %cmp386846.i = icmp ult ptr %op.2.i1424, %add.ptr381.i
  br i1 %cmp386846.i, label %while.cond385.preheader.i.while.body388.i_crit_edge, label %while.cond385.preheader.i.if.end393.i_crit_edge

while.cond385.preheader.i.if.end393.i_crit_edge:  ; preds = %while.cond385.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end393.i

while.cond385.preheader.i.while.body388.i_crit_edge: ; preds = %while.cond385.preheader.i
  br label %while.body388.i

while.body388.i:                                  ; preds = %while.body388.i.while.body388.i_crit_edge, %while.cond385.preheader.i.while.body388.i_crit_edge
  %op.6848.i = phi ptr [ %incdec.ptr390.i, %while.body388.i.while.body388.i_crit_edge ], [ %op.2.i1424, %while.cond385.preheader.i.while.body388.i_crit_edge ]
  %match.1847.i = phi ptr [ %incdec.ptr389.i, %while.body388.i.while.body388.i_crit_edge ], [ %match.0.i1228, %while.cond385.preheader.i.while.body388.i_crit_edge ]
  %incdec.ptr389.i = getelementptr i8, ptr %match.1847.i, i32 1
  %36 = ptrtoint ptr %match.1847.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %match.1847.i, align 1
  %incdec.ptr390.i = getelementptr i8, ptr %op.6848.i, i32 1
  %38 = ptrtoint ptr %op.6848.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %op.6848.i, align 1
  %exitcond.not.i = icmp eq ptr %incdec.ptr390.i, %add.ptr381.i
  br i1 %exitcond.not.i, label %while.body388.i.if.end393.i_crit_edge, label %while.body388.i.while.body388.i_crit_edge

while.body388.i.while.body388.i_crit_edge:        ; preds = %while.body388.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body388.i

while.body388.i.if.end393.i_crit_edge:            ; preds = %while.body388.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end393.i

if.else392.i:                                     ; preds = %if.then369.i
  call void @__sanitizer_cov_trace_pc() #5
  %39 = call ptr @memcpy(ptr %op.2.i1424, ptr %match.0.i1228, i32 %35)
  br label %if.end393.i

if.end393.i:                                      ; preds = %if.else392.i, %while.body388.i.if.end393.i_crit_edge, %while.cond385.preheader.i.if.end393.i_crit_edge
  %cmp394.i = icmp eq ptr %add.ptr381.i, %add.ptr1.i
  br i1 %cmp394.i, label %if.end393.i.while.end476.i_crit_edge, label %if.end393.i.while.cond.i.backedge_crit_edge

if.end393.i.while.cond.i.backedge_crit_edge:      ; preds = %if.end393.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

if.end393.i.while.end476.i_crit_edge:             ; preds = %if.end393.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end476.i

if.end401.i:                                      ; preds = %if.end294.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %offset.0.i1326)
  %cmp402.i = icmp ult i32 %offset.0.i1326, 8
  br i1 %cmp402.i, label %if.then410.i, label %if.else424.i, !prof !35

if.then410.i:                                     ; preds = %if.end401.i
  call void @__sanitizer_cov_trace_pc() #5
  %40 = ptrtoint ptr %match.0.i1228 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %match.0.i1228, align 1
  %42 = ptrtoint ptr %op.2.i1424 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %op.2.i1424, align 1
  %arrayidx412.i = getelementptr i8, ptr %match.0.i1228, i32 1
  %43 = ptrtoint ptr %arrayidx412.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx412.i, align 1
  %arrayidx413.i = getelementptr i8, ptr %op.2.i1424, i32 1
  %45 = ptrtoint ptr %arrayidx413.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx413.i, align 1
  %arrayidx414.i = getelementptr i8, ptr %match.0.i1228, i32 2
  %46 = ptrtoint ptr %arrayidx414.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx414.i, align 1
  %arrayidx415.i = getelementptr i8, ptr %op.2.i1424, i32 2
  %48 = ptrtoint ptr %arrayidx415.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx415.i, align 1
  %arrayidx416.i = getelementptr i8, ptr %match.0.i1228, i32 3
  %49 = ptrtoint ptr %arrayidx416.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx416.i, align 1
  %arrayidx417.i = getelementptr i8, ptr %op.2.i1424, i32 3
  %51 = ptrtoint ptr %arrayidx417.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx417.i, align 1
  %arrayidx418.i = getelementptr [8 x i32], ptr @LZ4_decompress_generic.inc32table, i32 0, i32 %offset.0.i1326
  %52 = ptrtoint ptr %arrayidx418.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx418.i, align 4
  %add.ptr419.i = getelementptr i8, ptr %match.0.i1228, i32 %53
  %add.ptr420.i = getelementptr i8, ptr %op.2.i1424, i32 4
  %54 = ptrtoint ptr %add.ptr419.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %add.ptr419.i, align 1
  %56 = ptrtoint ptr %add.ptr420.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %55, ptr %add.ptr420.i, align 1
  %arrayidx421.i = getelementptr [8 x i32], ptr @LZ4_decompress_generic.dec64table, i32 0, i32 %offset.0.i1326
  %57 = ptrtoint ptr %arrayidx421.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx421.i, align 4
  %idx.neg422.i = sub i32 0, %58
  %add.ptr423.i = getelementptr i8, ptr %add.ptr419.i, i32 %idx.neg422.i
  br label %if.else462.i

if.else424.i:                                     ; preds = %if.end401.i
  call void @__sanitizer_cov_trace_pc() #5
  %59 = ptrtoint ptr %match.0.i1228 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %match.0.val.i = load i32, ptr %match.0.i1228, align 1
  %60 = getelementptr i8, ptr %match.0.i1228, i32 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %match.0.val773.i = load i32, ptr %60, align 1
  %62 = ptrtoint ptr %op.2.i1424 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %match.0.val.i, ptr %op.2.i1424, align 1
  %add.ptr8.i.i = getelementptr i32, ptr %op.2.i1424, i32 1
  %63 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %match.0.val773.i, ptr %add.ptr8.i.i, align 1
  %add.ptr425.i = getelementptr i8, ptr %match.0.i1228, i32 8
  br label %if.else462.i

if.else462.i:                                     ; preds = %if.else424.i, %if.then410.i
  %match.2.i = phi ptr [ %add.ptr423.i, %if.then410.i ], [ %add.ptr425.i, %if.else424.i ]
  %add.ptr427.i = getelementptr i8, ptr %op.2.i1424, i32 8
  %64 = ptrtoint ptr %match.2.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %match.2.val.i = load i32, ptr %match.2.i, align 1
  %65 = getelementptr i8, ptr %match.2.i, i32 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %match.2.val772.i = load i32, ptr %65, align 1
  %67 = ptrtoint ptr %add.ptr427.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %match.2.val.i, ptr %add.ptr427.i, align 1
  %add.ptr8.i784.i = getelementptr i8, ptr %op.2.i1424, i32 12
  %68 = ptrtoint ptr %add.ptr8.i784.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %match.2.val772.i, ptr %add.ptr8.i784.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add295.i)
  %cmp463.i = icmp ugt i32 %add295.i, 16
  br i1 %cmp463.i, label %if.then465.i, label %if.else462.i.while.cond.i.backedge_crit_edge

if.else462.i.while.cond.i.backedge_crit_edge:     ; preds = %if.else462.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %do.body.i793.i.while.cond.i.backedge_crit_edge, %if.else462.i.while.cond.i.backedge_crit_edge, %if.end393.i.while.cond.i.backedge_crit_edge, %if.then97.i
  %op.0.i.be = phi ptr [ %add.ptr302.i, %if.else462.i.while.cond.i.backedge_crit_edge ], [ %add.ptr381.i, %if.end393.i.while.cond.i.backedge_crit_edge ], [ %add.ptr104.i, %if.then97.i ], [ %add.ptr302.i, %do.body.i793.i.while.cond.i.backedge_crit_edge ]
  %ip.0.i.be = phi ptr [ %ip.7.i, %if.else462.i.while.cond.i.backedge_crit_edge ], [ %ip.7.i, %if.end393.i.while.cond.i.backedge_crit_edge ], [ %add.ptr84.i, %if.then97.i ], [ %ip.7.i, %do.body.i793.i.while.cond.i.backedge_crit_edge ]
  br label %while.cond.i

if.then465.i:                                     ; preds = %if.else462.i
  %add.ptr466.i = getelementptr i8, ptr %op.2.i1424, i32 16
  br label %do.body.i793.i

do.body.i793.i:                                   ; preds = %do.body.i793.i.do.body.i793.i_crit_edge, %if.then465.i
  %d.0.i785.i = phi ptr [ %add.ptr466.i, %if.then465.i ], [ %add.ptr.i790.i, %do.body.i793.i.do.body.i793.i_crit_edge ]
  %match.2.pn.i = phi ptr [ %match.2.i, %if.then465.i ], [ %s.0.i786.i, %do.body.i793.i.do.body.i793.i_crit_edge ]
  %s.0.i786.i = getelementptr i8, ptr %match.2.pn.i, i32 8
  %69 = ptrtoint ptr %s.0.i786.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %s.0.val.i787.i = load i32, ptr %s.0.i786.i, align 1
  %70 = getelementptr i8, ptr %match.2.pn.i, i32 12
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %s.0.val5.i788.i = load i32, ptr %70, align 1
  %72 = ptrtoint ptr %d.0.i785.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 %s.0.val.i787.i, ptr %d.0.i785.i, align 1
  %add.ptr8.i.i789.i = getelementptr i32, ptr %d.0.i785.i, i32 1
  %73 = ptrtoint ptr %add.ptr8.i.i789.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %s.0.val5.i788.i, ptr %add.ptr8.i.i789.i, align 1
  %add.ptr.i790.i = getelementptr i8, ptr %d.0.i785.i, i32 8
  %cmp.i792.i = icmp ult ptr %add.ptr.i790.i, %add.ptr302.i
  br i1 %cmp.i792.i, label %do.body.i793.i.do.body.i793.i_crit_edge, label %do.body.i793.i.while.cond.i.backedge_crit_edge

do.body.i793.i.while.cond.i.backedge_crit_edge:   ; preds = %do.body.i793.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

do.body.i793.i.do.body.i793.i_crit_edge:          ; preds = %do.body.i793.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i793.i

while.end476.i:                                   ; preds = %if.end393.i.while.end476.i_crit_edge, %if.end225.i.while.end476.i_crit_edge
  %sub.ptr.lhs.cast479.i.pre-phi = phi i32 [ %.pre, %if.end225.i.while.end476.i_crit_edge ], [ %sub.ptr.lhs.cast.i, %if.end393.i.while.end476.i_crit_edge ]
  %sub.ptr.rhs.cast480.i = ptrtoint ptr %dst to i32
  %sub.ptr.sub481.i = sub i32 %sub.ptr.lhs.cast479.i.pre-phi, %sub.ptr.rhs.cast480.i
  br label %LZ4_decompress_generic.exit

_output_error.i:                                  ; preds = %cleanup291.i._output_error.i_crit_edge, %do.body263.i._output_error.i_crit_edge, %_copy_match.i.thread._output_error.i_crit_edge, %_copy_match.i._output_error.i_crit_edge, %if.then195.i._output_error.i_crit_edge, %do.end.i._output_error.i_crit_edge, %cond.end116.i._output_error.i_crit_edge
  %ip.8826.i = phi ptr [ %incdec.ptr264.i, %do.body263.i._output_error.i_crit_edge ], [ %add.ptr84.i, %_copy_match.i.thread._output_error.i_crit_edge ], [ %ip.5.i, %_copy_match.i._output_error.i_crit_edge ], [ %ip.3.i, %if.then195.i._output_error.i_crit_edge ], [ %incdec.ptr127.i, %do.end.i._output_error.i_crit_edge ], [ %incdec.ptr.i, %cond.end116.i._output_error.i_crit_edge ], [ %incdec.ptr264.i, %cleanup291.i._output_error.i_crit_edge ]
  %sub.ptr.lhs.cast486.i = ptrtoint ptr %ip.8826.i to i32
  %sub.ptr.rhs.cast487.i = ptrtoint ptr %src to i32
  %74 = xor i32 %sub.ptr.lhs.cast486.i, -1
  %sub490.i = add i32 %74, %sub.ptr.rhs.cast487.i
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %_output_error.i, %while.end476.i, %if.end.i.LZ4_decompress_generic.exit_crit_edge, %land.rhs20.i, %if.then.i.LZ4_decompress_generic.exit_crit_edge
  %retval.0.i = phi i32 [ %sub490.i, %_output_error.i ], [ %sub.ptr.sub481.i, %while.end476.i ], [ -1, %if.then.i.LZ4_decompress_generic.exit_crit_edge ], [ %phi.cast.i, %land.rhs20.i ], [ -1, %if.end.i.LZ4_decompress_generic.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @LZ4_decompress_fast(ptr noundef %source, ptr noundef %dest, i32 noundef %originalSize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1.i = getelementptr i8, ptr %dest, i32 %originalSize
  %add.ptr11.i = getelementptr i8, ptr %add.ptr1.i, i32 -8
  %add.ptr12.i = getelementptr i8, ptr %add.ptr11.i, i32 -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %originalSize)
  %0 = icmp eq i32 %originalSize, 0
  br i1 %0, label %if.then37.i, label %if.end42.i, !prof !34

if.then37.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %source, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp39.i = icmp eq i8 %2, 0
  %cond41.i = select i1 %cmp39.i, i32 1, i32 -1
  br label %LZ4_decompress_generic.exit

if.end42.i:                                       ; preds = %entry
  %add.ptr181.i = getelementptr i8, ptr %add.ptr1.i, i32 -12
  %add.ptr438.i = getelementptr i8, ptr %add.ptr1.i, i32 -7
  %add.ptr439.i = getelementptr i8, ptr %add.ptr1.i, i32 -5
  %sub.ptr.lhs.cast447.i = ptrtoint ptr %add.ptr438.i to i32
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.end42.i
  %op.0.i = phi ptr [ %dest, %if.end42.i ], [ %op.0.i.be, %while.cond.i.backedge ]
  %ip.0.i = phi ptr [ %source, %if.end42.i ], [ %ip.0.i.be, %while.cond.i.backedge ]
  %incdec.ptr.i = getelementptr i8, ptr %ip.0.i, i32 1
  %3 = ptrtoint ptr %ip.0.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ip.0.i, align 1
  %conv55.i = zext i8 %4 to i32
  %shr.i = lshr i32 %conv55.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %4)
  %cmp59.i = icmp ult i8 %4, -112
  br i1 %cmp59.i, label %cond.end.i, label %if.end106.thread.i

cond.end.i:                                       ; preds = %while.cond.i
  %cmp68.i.not = icmp ugt ptr %op.0.i, %add.ptr12.i
  br i1 %cmp68.i.not, label %if.end106.i, label %if.then77.i, !prof !35

if.then77.i:                                      ; preds = %cond.end.i
  %5 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %incdec.ptr.i, align 1
  %7 = ptrtoint ptr %op.0.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %op.0.i, align 1
  %add.ptr80.i = getelementptr i8, ptr %op.0.i, i32 %shr.i
  %add.ptr81.i = getelementptr i8, ptr %incdec.ptr.i, i32 %shr.i
  %and82.i = and i32 %conv55.i, 15
  %8 = ptrtoint ptr %add.ptr81.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %add.ptr81.val.i = load i16, ptr %add.ptr81.i, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %add.ptr81.val.i) #3
  %conv83.i = zext i16 %9 to i32
  %add.ptr84.i = getelementptr i8, ptr %add.ptr81.i, i32 2
  %idx.neg85.i = sub nsw i32 0, %conv83.i
  %add.ptr86.i = getelementptr i8, ptr %add.ptr80.i, i32 %idx.neg85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and82.i)
  %cmp87.not.i = icmp eq i32 %and82.i, 15
  br i1 %cmp87.not.i, label %_copy_match.i.thread, label %land.lhs.true89.i

_copy_match.i.thread:                             ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %conv83.i, ptr %add.ptr80.i, align 1
  br label %do.body263.preheader.i

land.lhs.true89.i:                                ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %9)
  %cmp90.i = icmp ult i16 %9, 8
  br i1 %cmp90.i, label %_copy_match.i.thread16, label %if.then97.i

_copy_match.i.thread16:                           ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %conv83.i, ptr %add.ptr80.i, align 1
  br label %if.end294.i

if.then97.i:                                      ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %add.ptr86.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %add.ptr86.i, align 1
  %14 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %add.ptr80.i, align 1
  %add.ptr100.i = getelementptr i8, ptr %add.ptr80.i, i32 8
  %add.ptr101.i = getelementptr i8, ptr %add.ptr86.i, i32 8
  %15 = ptrtoint ptr %add.ptr101.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %add.ptr101.i, align 1
  %17 = ptrtoint ptr %add.ptr100.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %add.ptr100.i, align 1
  %add.ptr102.i = getelementptr i8, ptr %add.ptr80.i, i32 16
  %add.ptr103.i = getelementptr i8, ptr %add.ptr86.i, i32 16
  %18 = ptrtoint ptr %add.ptr103.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %add.ptr103.i, align 1
  %20 = ptrtoint ptr %add.ptr102.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %19, ptr %add.ptr102.i, align 1
  %add.i = add nuw nsw i32 %and82.i, 4
  %add.ptr104.i = getelementptr i8, ptr %add.ptr80.i, i32 %add.i
  br label %while.cond.i.backedge

if.end106.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr.i)
  %cmp107.i = icmp eq i32 %shr.i, 15
  br i1 %cmp107.i, label %if.end106.i.do.body.i.preheader_crit_edge, label %if.end106.i.land.lhs.true191.critedge.i_crit_edge

if.end106.i.land.lhs.true191.critedge.i_crit_edge: ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true191.critedge.i

if.end106.i.do.body.i.preheader_crit_edge:        ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.preheader

if.end106.thread.i:                               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr.i)
  %cmp107795.i = icmp eq i32 %shr.i, 15
  br i1 %cmp107795.i, label %if.end106.thread.i.do.body.i.preheader_crit_edge, label %if.end106.thread.i.land.lhs.true191.critedge.i_crit_edge

if.end106.thread.i.land.lhs.true191.critedge.i_crit_edge: ; preds = %if.end106.thread.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true191.critedge.i

if.end106.thread.i.do.body.i.preheader_crit_edge: ; preds = %if.end106.thread.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.end106.thread.i.do.body.i.preheader_crit_edge, %if.end106.i.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.i.preheader
  %length.0.i = phi i32 [ %add129.i, %do.body.i.do.body.i_crit_edge ], [ 15, %do.body.i.preheader ]
  %ip.1.i = phi ptr [ %incdec.ptr127.i, %do.body.i.do.body.i_crit_edge ], [ %incdec.ptr.i, %do.body.i.preheader ]
  %incdec.ptr127.i = getelementptr i8, ptr %ip.1.i, i32 1
  %21 = ptrtoint ptr %ip.1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ip.1.i, align 1
  %conv128.i = zext i8 %22 to i32
  %add129.i = add i32 %length.0.i, %conv128.i
  %cmp144.i = icmp eq i8 %22, -1
  br i1 %cmp144.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.land.lhs.true191.critedge.i_crit_edge

do.body.i.land.lhs.true191.critedge.i_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true191.critedge.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

land.lhs.true191.critedge.i:                      ; preds = %do.body.i.land.lhs.true191.critedge.i_crit_edge, %if.end106.thread.i.land.lhs.true191.critedge.i_crit_edge, %if.end106.i.land.lhs.true191.critedge.i_crit_edge
  %ip.3807.i = phi ptr [ %incdec.ptr.i, %if.end106.thread.i.land.lhs.true191.critedge.i_crit_edge ], [ %incdec.ptr.i, %if.end106.i.land.lhs.true191.critedge.i_crit_edge ], [ %incdec.ptr127.i, %do.body.i.land.lhs.true191.critedge.i_crit_edge ]
  %length.2804.i = phi i32 [ %shr.i, %if.end106.thread.i.land.lhs.true191.critedge.i_crit_edge ], [ %shr.i, %if.end106.i.land.lhs.true191.critedge.i_crit_edge ], [ %add129.i, %do.body.i.land.lhs.true191.critedge.i_crit_edge ]
  %add.ptr175810.i = getelementptr i8, ptr %op.0.i, i32 %length.2804.i
  %cmp193.i = icmp ugt ptr %add.ptr175810.i, %add.ptr11.i
  br i1 %cmp193.i, label %if.then195.i, label %land.lhs.true191.critedge.i.do.body.i.i_crit_edge

land.lhs.true191.critedge.i.do.body.i.i_crit_edge: ; preds = %land.lhs.true191.critedge.i
  br label %do.body.i.i

if.then195.i:                                     ; preds = %land.lhs.true191.critedge.i
  %cmp211.not.i = icmp eq ptr %add.ptr175810.i, %add.ptr1.i
  br i1 %cmp211.not.i, label %if.end214.i, label %if.then195.i._output_error.i_crit_edge

if.then195.i._output_error.i_crit_edge:           ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end214.i:                                      ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #5
  %23 = call ptr @memmove(ptr %op.0.i, ptr %ip.3807.i, i32 %length.2804.i)
  %add.ptr226814.i = getelementptr i8, ptr %ip.3807.i, i32 %length.2804.i
  %sub.ptr.lhs.cast483.i = ptrtoint ptr %add.ptr226814.i to i32
  %sub.ptr.rhs.cast484.i = ptrtoint ptr %source to i32
  %sub.ptr.sub485.i = sub i32 %sub.ptr.lhs.cast483.i, %sub.ptr.rhs.cast484.i
  br label %LZ4_decompress_generic.exit

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %land.lhs.true191.critedge.i.do.body.i.i_crit_edge
  %d.0.i.i = phi ptr [ %add.ptr.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %op.0.i, %land.lhs.true191.critedge.i.do.body.i.i_crit_edge ]
  %s.0.i.i = phi ptr [ %add.ptr1.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %ip.3807.i, %land.lhs.true191.critedge.i.do.body.i.i_crit_edge ]
  %24 = ptrtoint ptr %s.0.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %s.0.val.i.i = load i32, ptr %s.0.i.i, align 1
  %25 = getelementptr i8, ptr %s.0.i.i, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %s.0.val5.i.i = load i32, ptr %25, align 1
  %27 = ptrtoint ptr %d.0.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %s.0.val.i.i, ptr %d.0.i.i, align 1
  %add.ptr8.i.i.i = getelementptr i32, ptr %d.0.i.i, i32 1
  %28 = ptrtoint ptr %add.ptr8.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %s.0.val5.i.i, ptr %add.ptr8.i.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %d.0.i.i, i32 8
  %add.ptr1.i.i = getelementptr i8, ptr %s.0.i.i, i32 8
  %cmp.i.i = icmp ult ptr %add.ptr.i.i, %add.ptr175810.i
  br i1 %cmp.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %_copy_match.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.i

_copy_match.i:                                    ; preds = %do.body.i.i
  %add.ptr235.i = getelementptr i8, ptr %ip.3807.i, i32 %length.2804.i
  %29 = ptrtoint ptr %add.ptr235.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %ip.4.val.i = load i16, ptr %add.ptr235.i, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %ip.4.val.i) #3
  %conv238.i = zext i16 %30 to i32
  %add.ptr239.i = getelementptr i8, ptr %add.ptr235.i, i32 2
  %idx.neg240.i = sub nsw i32 0, %conv238.i
  %add.ptr241.i = getelementptr i8, ptr %add.ptr175810.i, i32 %idx.neg240.i
  %and242.i = and i32 %conv55.i, 15
  %31 = ptrtoint ptr %add.ptr175810.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %conv238.i, ptr %add.ptr175810.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and242.i)
  %cmp259.i = icmp eq i32 %and242.i, 15
  br i1 %cmp259.i, label %_copy_match.i.do.body263.preheader.i_crit_edge, label %_copy_match.i.if.end294.i_crit_edge

_copy_match.i.if.end294.i_crit_edge:              ; preds = %_copy_match.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end294.i

_copy_match.i.do.body263.preheader.i_crit_edge:   ; preds = %_copy_match.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body263.preheader.i

do.body263.preheader.i:                           ; preds = %_copy_match.i.do.body263.preheader.i_crit_edge, %_copy_match.i.thread
  %ip.5.i15 = phi ptr [ %add.ptr84.i, %_copy_match.i.thread ], [ %add.ptr239.i, %_copy_match.i.do.body263.preheader.i_crit_edge ]
  %op.2.i13 = phi ptr [ %add.ptr80.i, %_copy_match.i.thread ], [ %add.ptr175810.i, %_copy_match.i.do.body263.preheader.i_crit_edge ]
  %offset.0.i11 = phi i32 [ %conv83.i, %_copy_match.i.thread ], [ %conv238.i, %_copy_match.i.do.body263.preheader.i_crit_edge ]
  %match.0.i9 = phi ptr [ %add.ptr86.i, %_copy_match.i.thread ], [ %add.ptr241.i, %_copy_match.i.do.body263.preheader.i_crit_edge ]
  br label %do.body263.us.i

do.body263.us.i:                                  ; preds = %do.body263.us.i.do.body263.us.i_crit_edge, %do.body263.preheader.i
  %length.6.us.i = phi i32 [ %add273.us.i, %do.body263.us.i.do.body263.us.i_crit_edge ], [ 15, %do.body263.preheader.i ]
  %ip.6.us.i = phi ptr [ %incdec.ptr264.us.i, %do.body263.us.i.do.body263.us.i_crit_edge ], [ %ip.5.i15, %do.body263.preheader.i ]
  %incdec.ptr264.us.i = getelementptr i8, ptr %ip.6.us.i, i32 1
  %32 = ptrtoint ptr %ip.6.us.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ip.6.us.i, align 1
  %conv265.us.i = zext i8 %33 to i32
  %add273.us.i = add i32 %length.6.us.i, %conv265.us.i
  %cmp275.us.i = icmp eq i8 %33, -1
  br i1 %cmp275.us.i, label %do.body263.us.i.do.body263.us.i_crit_edge, label %do.body263.us.i.if.end294.i_crit_edge

do.body263.us.i.if.end294.i_crit_edge:            ; preds = %do.body263.us.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end294.i

do.body263.us.i.do.body263.us.i_crit_edge:        ; preds = %do.body263.us.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body263.us.i

if.end294.i:                                      ; preds = %do.body263.us.i.if.end294.i_crit_edge, %_copy_match.i.if.end294.i_crit_edge, %_copy_match.i.thread16
  %op.2.i12 = phi ptr [ %add.ptr175810.i, %_copy_match.i.if.end294.i_crit_edge ], [ %add.ptr80.i, %_copy_match.i.thread16 ], [ %op.2.i13, %do.body263.us.i.if.end294.i_crit_edge ]
  %offset.0.i10 = phi i32 [ %conv238.i, %_copy_match.i.if.end294.i_crit_edge ], [ %conv83.i, %_copy_match.i.thread16 ], [ %offset.0.i11, %do.body263.us.i.if.end294.i_crit_edge ]
  %match.0.i8 = phi ptr [ %add.ptr241.i, %_copy_match.i.if.end294.i_crit_edge ], [ %add.ptr86.i, %_copy_match.i.thread16 ], [ %match.0.i9, %do.body263.us.i.if.end294.i_crit_edge ]
  %length.8.i = phi i32 [ %and242.i, %_copy_match.i.if.end294.i_crit_edge ], [ %and82.i, %_copy_match.i.thread16 ], [ %add273.us.i, %do.body263.us.i.if.end294.i_crit_edge ]
  %ip.7.i = phi ptr [ %add.ptr239.i, %_copy_match.i.if.end294.i_crit_edge ], [ %add.ptr84.i, %_copy_match.i.thread16 ], [ %incdec.ptr264.us.i, %do.body263.us.i.if.end294.i_crit_edge ]
  %add295.i = add i32 %length.8.i, 4
  %add.ptr302.i = getelementptr i8, ptr %op.2.i12, i32 %add295.i
  %cmp367.i = icmp ugt ptr %add.ptr302.i, %add.ptr181.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %offset.0.i10)
  %cmp402.i = icmp ult i32 %offset.0.i10, 8
  br i1 %cmp402.i, label %if.then410.i, label %if.else424.i, !prof !35

if.then410.i:                                     ; preds = %if.end294.i
  call void @__sanitizer_cov_trace_pc() #5
  %34 = ptrtoint ptr %match.0.i8 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %match.0.i8, align 1
  %36 = ptrtoint ptr %op.2.i12 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %op.2.i12, align 1
  %arrayidx412.i = getelementptr i8, ptr %match.0.i8, i32 1
  %37 = ptrtoint ptr %arrayidx412.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx412.i, align 1
  %arrayidx413.i = getelementptr i8, ptr %op.2.i12, i32 1
  %39 = ptrtoint ptr %arrayidx413.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx413.i, align 1
  %arrayidx414.i = getelementptr i8, ptr %match.0.i8, i32 2
  %40 = ptrtoint ptr %arrayidx414.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx414.i, align 1
  %arrayidx415.i = getelementptr i8, ptr %op.2.i12, i32 2
  %42 = ptrtoint ptr %arrayidx415.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx415.i, align 1
  %arrayidx416.i = getelementptr i8, ptr %match.0.i8, i32 3
  %43 = ptrtoint ptr %arrayidx416.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx416.i, align 1
  %arrayidx417.i = getelementptr i8, ptr %op.2.i12, i32 3
  %45 = ptrtoint ptr %arrayidx417.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx417.i, align 1
  %arrayidx418.i = getelementptr [8 x i32], ptr @LZ4_decompress_generic.inc32table, i32 0, i32 %offset.0.i10
  %46 = ptrtoint ptr %arrayidx418.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx418.i, align 4
  %add.ptr419.i = getelementptr i8, ptr %match.0.i8, i32 %47
  %add.ptr420.i = getelementptr i8, ptr %op.2.i12, i32 4
  %48 = ptrtoint ptr %add.ptr419.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %add.ptr419.i, align 1
  %50 = ptrtoint ptr %add.ptr420.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %49, ptr %add.ptr420.i, align 1
  %arrayidx421.i = getelementptr [8 x i32], ptr @LZ4_decompress_generic.dec64table, i32 0, i32 %offset.0.i10
  %51 = ptrtoint ptr %arrayidx421.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx421.i, align 4
  %idx.neg422.i = sub i32 0, %52
  %add.ptr423.i = getelementptr i8, ptr %add.ptr419.i, i32 %idx.neg422.i
  br label %if.end426.i

if.else424.i:                                     ; preds = %if.end294.i
  call void @__sanitizer_cov_trace_pc() #5
  %53 = ptrtoint ptr %match.0.i8 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %match.0.val.i = load i32, ptr %match.0.i8, align 1
  %54 = getelementptr i8, ptr %match.0.i8, i32 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %match.0.val773.i = load i32, ptr %54, align 1
  %56 = ptrtoint ptr %op.2.i12 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %match.0.val.i, ptr %op.2.i12, align 1
  %add.ptr8.i.i = getelementptr i32, ptr %op.2.i12, i32 1
  %57 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %match.0.val773.i, ptr %add.ptr8.i.i, align 1
  %add.ptr425.i = getelementptr i8, ptr %match.0.i8, i32 8
  br label %if.end426.i

if.end426.i:                                      ; preds = %if.else424.i, %if.then410.i
  %match.2.i = phi ptr [ %add.ptr423.i, %if.then410.i ], [ %add.ptr425.i, %if.else424.i ]
  %add.ptr427.i = getelementptr i8, ptr %op.2.i12, i32 8
  br i1 %cmp367.i, label %if.then437.i, label %if.else462.i, !prof !35

if.then437.i:                                     ; preds = %if.end426.i
  %cmp440.i = icmp ugt ptr %add.ptr302.i, %add.ptr439.i
  br i1 %cmp440.i, label %if.then437.i._output_error.i_crit_edge, label %if.end443.i

if.then437.i._output_error.i_crit_edge:           ; preds = %if.then437.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end443.i:                                      ; preds = %if.then437.i
  %cmp444.i = icmp ult ptr %add.ptr427.i, %add.ptr438.i
  br i1 %cmp444.i, label %if.end443.i.do.body.i782.i_crit_edge, label %if.end443.i.if.end451.i_crit_edge

if.end443.i.if.end451.i_crit_edge:                ; preds = %if.end443.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end451.i

if.end443.i.do.body.i782.i_crit_edge:             ; preds = %if.end443.i
  br label %do.body.i782.i

do.body.i782.i:                                   ; preds = %do.body.i782.i.do.body.i782.i_crit_edge, %if.end443.i.do.body.i782.i_crit_edge
  %d.0.i774.i = phi ptr [ %add.ptr.i779.i, %do.body.i782.i.do.body.i782.i_crit_edge ], [ %add.ptr427.i, %if.end443.i.do.body.i782.i_crit_edge ]
  %s.0.i775.i = phi ptr [ %add.ptr1.i780.i, %do.body.i782.i.do.body.i782.i_crit_edge ], [ %match.2.i, %if.end443.i.do.body.i782.i_crit_edge ]
  %58 = ptrtoint ptr %s.0.i775.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %s.0.val.i776.i = load i32, ptr %s.0.i775.i, align 1
  %59 = getelementptr i8, ptr %s.0.i775.i, i32 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %s.0.val5.i777.i = load i32, ptr %59, align 1
  %61 = ptrtoint ptr %d.0.i774.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %s.0.val.i776.i, ptr %d.0.i774.i, align 1
  %add.ptr8.i.i778.i = getelementptr i32, ptr %d.0.i774.i, i32 1
  %62 = ptrtoint ptr %add.ptr8.i.i778.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %s.0.val5.i777.i, ptr %add.ptr8.i.i778.i, align 1
  %add.ptr.i779.i = getelementptr i8, ptr %d.0.i774.i, i32 8
  %add.ptr1.i780.i = getelementptr i8, ptr %s.0.i775.i, i32 8
  %cmp.i781.i = icmp ult ptr %add.ptr.i779.i, %add.ptr438.i
  br i1 %cmp.i781.i, label %do.body.i782.i.do.body.i782.i_crit_edge, label %LZ4_wildCopy.exit783.i

do.body.i782.i.do.body.i782.i_crit_edge:          ; preds = %do.body.i782.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i782.i

LZ4_wildCopy.exit783.i:                           ; preds = %do.body.i782.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.ptr.rhs.cast448.i = ptrtoint ptr %add.ptr427.i to i32
  %sub.ptr.sub449.i = sub i32 %sub.ptr.lhs.cast447.i, %sub.ptr.rhs.cast448.i
  %add.ptr450.i = getelementptr i8, ptr %match.2.i, i32 %sub.ptr.sub449.i
  br label %if.end451.i

if.end451.i:                                      ; preds = %LZ4_wildCopy.exit783.i, %if.end443.i.if.end451.i_crit_edge
  %match.3.i = phi ptr [ %add.ptr450.i, %LZ4_wildCopy.exit783.i ], [ %match.2.i, %if.end443.i.if.end451.i_crit_edge ]
  %op.7.i = phi ptr [ %add.ptr438.i, %LZ4_wildCopy.exit783.i ], [ %add.ptr427.i, %if.end443.i.if.end451.i_crit_edge ]
  %cmp453843.i = icmp ult ptr %op.7.i, %add.ptr302.i
  br i1 %cmp453843.i, label %if.end451.i.while.body455.i_crit_edge, label %if.end451.i.while.cond.i.backedge_crit_edge

if.end451.i.while.cond.i.backedge_crit_edge:      ; preds = %if.end451.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

if.end451.i.while.body455.i_crit_edge:            ; preds = %if.end451.i
  br label %while.body455.i

while.body455.i:                                  ; preds = %while.body455.i.while.body455.i_crit_edge, %if.end451.i.while.body455.i_crit_edge
  %op.8845.i = phi ptr [ %incdec.ptr457.i, %while.body455.i.while.body455.i_crit_edge ], [ %op.7.i, %if.end451.i.while.body455.i_crit_edge ]
  %match.4844.i = phi ptr [ %incdec.ptr456.i, %while.body455.i.while.body455.i_crit_edge ], [ %match.3.i, %if.end451.i.while.body455.i_crit_edge ]
  %incdec.ptr456.i = getelementptr i8, ptr %match.4844.i, i32 1
  %63 = ptrtoint ptr %match.4844.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %match.4844.i, align 1
  %incdec.ptr457.i = getelementptr i8, ptr %op.8845.i, i32 1
  %65 = ptrtoint ptr %op.8845.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %op.8845.i, align 1
  %cmp453.i = icmp ult ptr %incdec.ptr457.i, %add.ptr302.i
  br i1 %cmp453.i, label %while.body455.i.while.body455.i_crit_edge, label %while.body455.i.while.cond.i.backedge_crit_edge

while.body455.i.while.cond.i.backedge_crit_edge:  ; preds = %while.body455.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

while.body455.i.while.body455.i_crit_edge:        ; preds = %while.body455.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body455.i

if.else462.i:                                     ; preds = %if.end426.i
  %66 = ptrtoint ptr %match.2.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %match.2.val.i = load i32, ptr %match.2.i, align 1
  %67 = getelementptr i8, ptr %match.2.i, i32 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %match.2.val772.i = load i32, ptr %67, align 1
  %69 = ptrtoint ptr %add.ptr427.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %match.2.val.i, ptr %add.ptr427.i, align 1
  %add.ptr8.i784.i = getelementptr i8, ptr %op.2.i12, i32 12
  %70 = ptrtoint ptr %add.ptr8.i784.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %match.2.val772.i, ptr %add.ptr8.i784.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add295.i)
  %cmp463.i = icmp ugt i32 %add295.i, 16
  br i1 %cmp463.i, label %if.then465.i, label %if.else462.i.while.cond.i.backedge_crit_edge

if.else462.i.while.cond.i.backedge_crit_edge:     ; preds = %if.else462.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %do.body.i793.i.while.cond.i.backedge_crit_edge, %if.else462.i.while.cond.i.backedge_crit_edge, %while.body455.i.while.cond.i.backedge_crit_edge, %if.end451.i.while.cond.i.backedge_crit_edge, %if.then97.i
  %op.0.i.be = phi ptr [ %add.ptr302.i, %if.else462.i.while.cond.i.backedge_crit_edge ], [ %add.ptr302.i, %if.end451.i.while.cond.i.backedge_crit_edge ], [ %add.ptr104.i, %if.then97.i ], [ %add.ptr302.i, %while.body455.i.while.cond.i.backedge_crit_edge ], [ %add.ptr302.i, %do.body.i793.i.while.cond.i.backedge_crit_edge ]
  %ip.0.i.be = phi ptr [ %ip.7.i, %if.else462.i.while.cond.i.backedge_crit_edge ], [ %ip.7.i, %if.end451.i.while.cond.i.backedge_crit_edge ], [ %add.ptr84.i, %if.then97.i ], [ %ip.7.i, %while.body455.i.while.cond.i.backedge_crit_edge ], [ %ip.7.i, %do.body.i793.i.while.cond.i.backedge_crit_edge ]
  br label %while.cond.i

if.then465.i:                                     ; preds = %if.else462.i
  %add.ptr466.i = getelementptr i8, ptr %op.2.i12, i32 16
  br label %do.body.i793.i

do.body.i793.i:                                   ; preds = %do.body.i793.i.do.body.i793.i_crit_edge, %if.then465.i
  %d.0.i785.i = phi ptr [ %add.ptr466.i, %if.then465.i ], [ %add.ptr.i790.i, %do.body.i793.i.do.body.i793.i_crit_edge ]
  %match.2.pn.i = phi ptr [ %match.2.i, %if.then465.i ], [ %s.0.i786.i, %do.body.i793.i.do.body.i793.i_crit_edge ]
  %s.0.i786.i = getelementptr i8, ptr %match.2.pn.i, i32 8
  %71 = ptrtoint ptr %s.0.i786.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %s.0.val.i787.i = load i32, ptr %s.0.i786.i, align 1
  %72 = getelementptr i8, ptr %match.2.pn.i, i32 12
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %s.0.val5.i788.i = load i32, ptr %72, align 1
  %74 = ptrtoint ptr %d.0.i785.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %s.0.val.i787.i, ptr %d.0.i785.i, align 1
  %add.ptr8.i.i789.i = getelementptr i32, ptr %d.0.i785.i, i32 1
  %75 = ptrtoint ptr %add.ptr8.i.i789.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %s.0.val5.i788.i, ptr %add.ptr8.i.i789.i, align 1
  %add.ptr.i790.i = getelementptr i8, ptr %d.0.i785.i, i32 8
  %cmp.i792.i = icmp ult ptr %add.ptr.i790.i, %add.ptr302.i
  br i1 %cmp.i792.i, label %do.body.i793.i.do.body.i793.i_crit_edge, label %do.body.i793.i.while.cond.i.backedge_crit_edge

do.body.i793.i.while.cond.i.backedge_crit_edge:   ; preds = %do.body.i793.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

do.body.i793.i.do.body.i793.i_crit_edge:          ; preds = %do.body.i793.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i793.i

_output_error.i:                                  ; preds = %if.then437.i._output_error.i_crit_edge, %if.then195.i._output_error.i_crit_edge
  %ip.8826.i = phi ptr [ %ip.3807.i, %if.then195.i._output_error.i_crit_edge ], [ %ip.7.i, %if.then437.i._output_error.i_crit_edge ]
  %sub.ptr.lhs.cast486.i = ptrtoint ptr %ip.8826.i to i32
  %sub.ptr.rhs.cast487.i = ptrtoint ptr %source to i32
  %76 = xor i32 %sub.ptr.lhs.cast486.i, -1
  %sub490.i = add i32 %76, %sub.ptr.rhs.cast487.i
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %_output_error.i, %if.end214.i, %if.then37.i
  %retval.0.i = phi i32 [ %sub490.i, %_output_error.i ], [ %sub.ptr.sub485.i, %if.end214.i ], [ %cond41.i, %if.then37.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @LZ4_decompress_safe_forceExtDict(ptr noundef %source, ptr noundef %dest, i32 noundef %compressedSize, i32 noundef %maxOutputSize, ptr nocapture noundef readonly %dictStart, i32 noundef %dictSize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %source, i32 %compressedSize
  %add.ptr1.i = getelementptr i8, ptr %dest, i32 %maxOutputSize
  %add.ptr2.i = getelementptr i8, ptr %dictStart, i32 %dictSize
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %dictSize)
  %cmp3.i = icmp ult i32 %dictSize, 65536
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i, i32 -14
  %add.ptr7.i = getelementptr i8, ptr %add.ptr6.i, i32 -2
  %add.ptr11.i = getelementptr i8, ptr %add.ptr1.i, i32 -14
  %add.ptr12.i = getelementptr i8, ptr %add.ptr11.i, i32 -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxOutputSize)
  %cmp14.i.not = icmp eq i32 %maxOutputSize, 0
  br i1 %cmp14.i.not, label %if.then.i, label %if.end.i, !prof !34

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %compressedSize)
  %cmp18.i = icmp eq i32 %compressedSize, 1
  br i1 %cmp18.i, label %land.rhs20.i, label %if.then.i.LZ4_decompress_generic.exit_crit_edge

if.then.i.LZ4_decompress_generic.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %LZ4_decompress_generic.exit

land.rhs20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %source, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp22.i = icmp ne i8 %1, 0
  %phi.cast.i = sext i1 %cmp22.i to i32
  br label %LZ4_decompress_generic.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %compressedSize)
  %cmp45.i.not = icmp eq i32 %compressedSize, 0
  br i1 %cmp45.i.not, label %if.end.i.LZ4_decompress_generic.exit_crit_edge, label %while.cond.preheader.i, !prof !34

if.end.i.LZ4_decompress_generic.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %LZ4_decompress_generic.exit

while.cond.preheader.i:                           ; preds = %if.end.i
  %add.ptr112.i = getelementptr i8, ptr %add.ptr.i, i32 -15
  %add.ptr181.i = getelementptr i8, ptr %add.ptr1.i, i32 -12
  %add.ptr186.i = getelementptr i8, ptr %add.ptr.i, i32 -8
  %add.ptr268.i = getelementptr i8, ptr %add.ptr.i, i32 -5
  %add.ptr438.i = getelementptr i8, ptr %add.ptr1.i, i32 -7
  %add.ptr439.i = getelementptr i8, ptr %add.ptr1.i, i32 -5
  %sub.ptr.lhs.cast447.i = ptrtoint ptr %add.ptr438.i to i32
  %sub.ptr.lhs.cast326.i = ptrtoint ptr %dest to i32
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %while.cond.preheader.i
  %op.0.i = phi ptr [ %dest, %while.cond.preheader.i ], [ %op.0.i.be, %while.cond.i.backedge ]
  %ip.0.i = phi ptr [ %source, %while.cond.preheader.i ], [ %ip.0.i.be, %while.cond.i.backedge ]
  %incdec.ptr.i = getelementptr i8, ptr %ip.0.i, i32 1
  %2 = ptrtoint ptr %ip.0.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ip.0.i, align 1
  %conv55.i = zext i8 %3 to i32
  %shr.i = lshr i32 %conv55.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr.i)
  %cond.i = icmp eq i32 %shr.i, 15
  br i1 %cond.i, label %cond.end116.i, label %cond.true63.critedge.i

cond.true63.critedge.i:                           ; preds = %while.cond.i
  %cmp64.i = icmp uge ptr %incdec.ptr.i, %add.ptr7.i
  %cmp68.i = icmp ugt ptr %op.0.i, %add.ptr12.i
  %tobool70.not.i = or i1 %cmp68.i, %cmp64.i
  br i1 %tobool70.not.i, label %cond.true63.critedge.i.if.end174.i_crit_edge, label %if.then77.i, !prof !35

cond.true63.critedge.i.if.end174.i_crit_edge:     ; preds = %cond.true63.critedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end174.i

if.then77.i:                                      ; preds = %cond.true63.critedge.i
  %4 = call ptr @memcpy(ptr %op.0.i, ptr %incdec.ptr.i, i32 16)
  %add.ptr80.i = getelementptr i8, ptr %op.0.i, i32 %shr.i
  %add.ptr81.i = getelementptr i8, ptr %incdec.ptr.i, i32 %shr.i
  %and82.i = and i32 %conv55.i, 15
  %5 = ptrtoint ptr %add.ptr81.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %add.ptr81.val.i = load i16, ptr %add.ptr81.i, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %add.ptr81.val.i) #3
  %conv83.i = zext i16 %6 to i32
  %add.ptr84.i = getelementptr i8, ptr %add.ptr81.i, i32 2
  %idx.neg85.i = sub nsw i32 0, %conv83.i
  %add.ptr86.i = getelementptr i8, ptr %add.ptr80.i, i32 %idx.neg85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and82.i)
  %cmp87.not.i = icmp eq i32 %and82.i, 15
  br i1 %cmp87.not.i, label %_copy_match.i.thread, label %land.lhs.true89.i

land.lhs.true89.i:                                ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %6)
  %cmp90.i = icmp ult i16 %6, 8
  %cmp95.not.i = icmp ult ptr %add.ptr86.i, %dest
  %or.cond.i = select i1 %cmp90.i, i1 true, i1 %cmp95.not.i
  br i1 %or.cond.i, label %land.lhs.true89.i._copy_match.i_crit_edge, label %if.then97.i

land.lhs.true89.i._copy_match.i_crit_edge:        ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_copy_match.i

if.then97.i:                                      ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %add.ptr86.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %add.ptr86.i, align 1
  %9 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %add.ptr80.i, align 1
  %add.ptr100.i = getelementptr i8, ptr %add.ptr80.i, i32 8
  %add.ptr101.i = getelementptr i8, ptr %add.ptr86.i, i32 8
  %10 = ptrtoint ptr %add.ptr101.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %add.ptr101.i, align 1
  %12 = ptrtoint ptr %add.ptr100.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %add.ptr100.i, align 1
  %add.ptr102.i = getelementptr i8, ptr %add.ptr80.i, i32 16
  %add.ptr103.i = getelementptr i8, ptr %add.ptr86.i, i32 16
  %13 = ptrtoint ptr %add.ptr103.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %add.ptr103.i, align 1
  %15 = ptrtoint ptr %add.ptr102.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %add.ptr102.i, align 1
  %add.i = add nuw nsw i32 %and82.i, 4
  %add.ptr104.i = getelementptr i8, ptr %add.ptr80.i, i32 %add.i
  br label %while.cond.i.backedge

cond.end116.i:                                    ; preds = %while.cond.i
  %cmp113.not.i = icmp ult ptr %incdec.ptr.i, %add.ptr112.i
  br i1 %cmp113.not.i, label %cond.end116.i.do.body.i_crit_edge, label %cond.end116.i._output_error.i_crit_edge, !prof !36

cond.end116.i._output_error.i_crit_edge:          ; preds = %cond.end116.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

cond.end116.i.do.body.i_crit_edge:                ; preds = %cond.end116.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %cond.end116.i.do.body.i_crit_edge
  %length.0.i = phi i32 [ %add129.i, %do.body.i.do.body.i_crit_edge ], [ 15, %cond.end116.i.do.body.i_crit_edge ]
  %ip.1.i = phi ptr [ %incdec.ptr127.i, %do.body.i.do.body.i_crit_edge ], [ %incdec.ptr.i, %cond.end116.i.do.body.i_crit_edge ]
  %incdec.ptr127.i = getelementptr i8, ptr %ip.1.i, i32 1
  %16 = ptrtoint ptr %ip.1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ip.1.i, align 1
  %conv128.i = zext i8 %17 to i32
  %add129.i = add i32 %length.0.i, %conv128.i
  %cmp133.i = icmp ult ptr %incdec.ptr127.i, %add.ptr112.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp144.i = icmp eq i8 %17, -1
  %and146835.i = and i1 %cmp144.i, %cmp133.i
  br i1 %and146835.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %18 = ptrtoint ptr %op.0.i to i32
  %19 = xor i32 %18, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add129.i, i32 %19)
  %cmp151.i = icmp ugt i32 %add129.i, %19
  %20 = ptrtoint ptr %incdec.ptr127.i to i32
  %21 = xor i32 %20, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add129.i, i32 %21)
  %cmp164.i = icmp ugt i32 %add129.i, %21
  %or.cond = or i1 %cmp151.i, %cmp164.i
  br i1 %or.cond, label %do.end.i._output_error.i_crit_edge, label %do.end.i.if.end174.i_crit_edge, !prof !37

do.end.i.if.end174.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end174.i

do.end.i._output_error.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end174.i:                                      ; preds = %do.end.i.if.end174.i_crit_edge, %cond.true63.critedge.i.if.end174.i_crit_edge
  %length.2.i = phi i32 [ %shr.i, %cond.true63.critedge.i.if.end174.i_crit_edge ], [ %add129.i, %do.end.i.if.end174.i_crit_edge ]
  %ip.3.i = phi ptr [ %incdec.ptr.i, %cond.true63.critedge.i.if.end174.i_crit_edge ], [ %incdec.ptr127.i, %do.end.i.if.end174.i_crit_edge ]
  %add.ptr175.i = getelementptr i8, ptr %op.0.i, i32 %length.2.i
  %cmp182.i = icmp ugt ptr %add.ptr175.i, %add.ptr181.i
  %add.ptr185.i = getelementptr i8, ptr %ip.3.i, i32 %length.2.i
  %cmp187.i = icmp ugt ptr %add.ptr185.i, %add.ptr186.i
  %or.cond754.i = or i1 %cmp182.i, %cmp187.i
  br i1 %or.cond754.i, label %if.then195.i, label %if.end174.i.do.body.i.i_crit_edge

if.end174.i.do.body.i.i_crit_edge:                ; preds = %if.end174.i
  br label %do.body.i.i

if.then195.i:                                     ; preds = %if.end174.i
  %cmp218.not.i = icmp ne ptr %add.ptr185.i, %add.ptr.i
  %cmp221.i = icmp ugt ptr %add.ptr175.i, %add.ptr1.i
  %or.cond759.i = select i1 %cmp218.not.i, i1 true, i1 %cmp221.i
  br i1 %or.cond759.i, label %if.then195.i._output_error.i_crit_edge, label %if.end225.thread.i

if.then195.i._output_error.i_crit_edge:           ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end225.thread.i:                               ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #5
  %22 = call ptr @memmove(ptr %op.0.i, ptr %ip.3.i, i32 %length.2.i)
  %sub.ptr.lhs.cast479.i = ptrtoint ptr %add.ptr175.i to i32
  %sub.ptr.sub481.i = sub i32 %sub.ptr.lhs.cast479.i, %sub.ptr.lhs.cast326.i
  br label %LZ4_decompress_generic.exit

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end174.i.do.body.i.i_crit_edge
  %d.0.i.i = phi ptr [ %add.ptr.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %op.0.i, %if.end174.i.do.body.i.i_crit_edge ]
  %s.0.i.i = phi ptr [ %add.ptr1.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %ip.3.i, %if.end174.i.do.body.i.i_crit_edge ]
  %23 = ptrtoint ptr %s.0.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %s.0.val.i.i = load i32, ptr %s.0.i.i, align 1
  %24 = getelementptr i8, ptr %s.0.i.i, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %s.0.val5.i.i = load i32, ptr %24, align 1
  %26 = ptrtoint ptr %d.0.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %s.0.val.i.i, ptr %d.0.i.i, align 1
  %add.ptr8.i.i.i = getelementptr i32, ptr %d.0.i.i, i32 1
  %27 = ptrtoint ptr %add.ptr8.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %s.0.val5.i.i, ptr %add.ptr8.i.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %d.0.i.i, i32 8
  %add.ptr1.i.i = getelementptr i8, ptr %s.0.i.i, i32 8
  %cmp.i.i = icmp ult ptr %add.ptr.i.i, %add.ptr175.i
  br i1 %cmp.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %LZ4_wildCopy.exit.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.i

LZ4_wildCopy.exit.i:                              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %add.ptr185.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %ip.4.val.i = load i16, ptr %add.ptr185.i, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %ip.4.val.i) #3
  %conv238.i = zext i16 %29 to i32
  %add.ptr239.i = getelementptr i8, ptr %add.ptr185.i, i32 2
  %idx.neg240.i = sub nsw i32 0, %conv238.i
  %add.ptr241.i = getelementptr i8, ptr %add.ptr175.i, i32 %idx.neg240.i
  %and242.i = and i32 %conv55.i, 15
  br label %_copy_match.i

_copy_match.i:                                    ; preds = %LZ4_wildCopy.exit.i, %land.lhs.true89.i._copy_match.i_crit_edge
  %length.5.i = phi i32 [ %and82.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %and242.i, %LZ4_wildCopy.exit.i ]
  %match.0.i = phi ptr [ %add.ptr86.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %add.ptr241.i, %LZ4_wildCopy.exit.i ]
  %offset.0.i = phi i32 [ %conv83.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %conv238.i, %LZ4_wildCopy.exit.i ]
  %op.2.i = phi ptr [ %add.ptr80.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %add.ptr175.i, %LZ4_wildCopy.exit.i ]
  %ip.5.i = phi ptr [ %add.ptr84.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %add.ptr239.i, %LZ4_wildCopy.exit.i ]
  %add.ptr245.i = getelementptr i8, ptr %match.0.i, i32 %dictSize
  %cmp246.i = icmp ult ptr %add.ptr245.i, %dest
  %or.cond761.i = select i1 %cmp3.i, i1 %cmp246.i, i1 false
  br i1 %or.cond761.i, label %_copy_match.i._output_error.i_crit_edge, label %if.end255.i, !prof !34

_copy_match.i._output_error.i_crit_edge:          ; preds = %_copy_match.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

_copy_match.i.thread:                             ; preds = %if.then77.i
  %add.ptr245.i7 = getelementptr i8, ptr %add.ptr86.i, i32 %dictSize
  %cmp246.i8 = icmp ult ptr %add.ptr245.i7, %dest
  %or.cond761.i9 = select i1 %cmp3.i, i1 %cmp246.i8, i1 false
  br i1 %or.cond761.i9, label %_copy_match.i.thread._output_error.i_crit_edge, label %if.end255.i.thread, !prof !34

_copy_match.i.thread._output_error.i_crit_edge:   ; preds = %_copy_match.i.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end255.i.thread:                               ; preds = %_copy_match.i.thread
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %conv83.i, ptr %add.ptr80.i, align 1
  br label %do.body263.preheader.i

if.end255.i:                                      ; preds = %_copy_match.i
  %31 = ptrtoint ptr %op.2.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %offset.0.i, ptr %op.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %length.5.i)
  %cmp259.i = icmp eq i32 %length.5.i, 15
  br i1 %cmp259.i, label %if.end255.i.do.body263.preheader.i_crit_edge, label %if.end255.i.if.end294.i_crit_edge

if.end255.i.if.end294.i_crit_edge:                ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end294.i

if.end255.i.do.body263.preheader.i_crit_edge:     ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body263.preheader.i

do.body263.preheader.i:                           ; preds = %if.end255.i.do.body263.preheader.i_crit_edge, %if.end255.i.thread
  %match.0.i1128 = phi ptr [ %add.ptr86.i, %if.end255.i.thread ], [ %match.0.i, %if.end255.i.do.body263.preheader.i_crit_edge ]
  %offset.0.i1226 = phi i32 [ %conv83.i, %if.end255.i.thread ], [ %offset.0.i, %if.end255.i.do.body263.preheader.i_crit_edge ]
  %op.2.i1324 = phi ptr [ %add.ptr80.i, %if.end255.i.thread ], [ %op.2.i, %if.end255.i.do.body263.preheader.i_crit_edge ]
  %ip.5.i1522 = phi ptr [ %add.ptr84.i, %if.end255.i.thread ], [ %ip.5.i, %if.end255.i.do.body263.preheader.i_crit_edge ]
  br label %do.body263.i

do.body263.i:                                     ; preds = %if.end272.i.do.body263.i_crit_edge, %do.body263.preheader.i
  %length.6.i = phi i32 [ %add273.i, %if.end272.i.do.body263.i_crit_edge ], [ 15, %do.body263.preheader.i ]
  %ip.6.i = phi ptr [ %incdec.ptr264.i, %if.end272.i.do.body263.i_crit_edge ], [ %ip.5.i1522, %do.body263.preheader.i ]
  %incdec.ptr264.i = getelementptr i8, ptr %ip.6.i, i32 1
  %cmp269.not.i = icmp ugt ptr %incdec.ptr264.i, %add.ptr268.i
  br i1 %cmp269.not.i, label %do.body263.i._output_error.i_crit_edge, label %if.end272.i

do.body263.i._output_error.i_crit_edge:           ; preds = %do.body263.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end272.i:                                      ; preds = %do.body263.i
  %32 = ptrtoint ptr %ip.6.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ip.6.i, align 1
  %conv265.i = zext i8 %33 to i32
  %add273.i = add i32 %length.6.i, %conv265.i
  %cmp275.i = icmp eq i8 %33, -1
  br i1 %cmp275.i, label %if.end272.i.do.body263.i_crit_edge, label %cleanup291.i

if.end272.i.do.body263.i_crit_edge:               ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body263.i

cleanup291.i:                                     ; preds = %if.end272.i
  %34 = ptrtoint ptr %op.2.i1324 to i32
  %35 = xor i32 %34, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add273.i, i32 %35)
  %cmp281.i = icmp ugt i32 %add273.i, %35
  br i1 %cmp281.i, label %cleanup291.i._output_error.i_crit_edge, label %cleanup291.i.if.end294.i_crit_edge

cleanup291.i.if.end294.i_crit_edge:               ; preds = %cleanup291.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end294.i

cleanup291.i._output_error.i_crit_edge:           ; preds = %cleanup291.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end294.i:                                      ; preds = %cleanup291.i.if.end294.i_crit_edge, %if.end255.i.if.end294.i_crit_edge
  %match.0.i1127 = phi ptr [ %match.0.i1128, %cleanup291.i.if.end294.i_crit_edge ], [ %match.0.i, %if.end255.i.if.end294.i_crit_edge ]
  %offset.0.i1225 = phi i32 [ %offset.0.i1226, %cleanup291.i.if.end294.i_crit_edge ], [ %offset.0.i, %if.end255.i.if.end294.i_crit_edge ]
  %op.2.i1323 = phi ptr [ %op.2.i1324, %cleanup291.i.if.end294.i_crit_edge ], [ %op.2.i, %if.end255.i.if.end294.i_crit_edge ]
  %length.8.i = phi i32 [ %add273.i, %cleanup291.i.if.end294.i_crit_edge ], [ %length.5.i, %if.end255.i.if.end294.i_crit_edge ]
  %ip.7.i = phi ptr [ %incdec.ptr264.i, %cleanup291.i.if.end294.i_crit_edge ], [ %ip.5.i, %if.end255.i.if.end294.i_crit_edge ]
  %add295.i = add i32 %length.8.i, 4
  %cmp299.i = icmp ult ptr %match.0.i1127, %dest
  %add.ptr302.i = getelementptr i8, ptr %op.2.i1323, i32 %add295.i
  br i1 %cmp299.i, label %if.then301.i, label %if.end362.i

if.then301.i:                                     ; preds = %if.end294.i
  %cmp304.i = icmp ugt ptr %add.ptr302.i, %add.ptr439.i
  br i1 %cmp304.i, label %if.then301.i._output_error.i_crit_edge, label %if.end325.i, !prof !35

if.then301.i._output_error.i_crit_edge:           ; preds = %if.then301.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end325.i:                                      ; preds = %if.then301.i
  %sub.ptr.rhs.cast327.i = ptrtoint ptr %match.0.i1127 to i32
  %sub.ptr.sub328.i = sub i32 %sub.ptr.lhs.cast326.i, %sub.ptr.rhs.cast327.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add295.i, i32 %sub.ptr.sub328.i)
  %cmp329.not.i = icmp ugt i32 %add295.i, %sub.ptr.sub328.i
  br i1 %cmp329.not.i, label %if.else338.i, label %if.then331.i

if.then331.i:                                     ; preds = %if.end325.i
  call void @__sanitizer_cov_trace_pc() #5
  %idx.neg335.i = sub i32 0, %sub.ptr.sub328.i
  %add.ptr336.i = getelementptr i8, ptr %add.ptr2.i, i32 %idx.neg335.i
  %36 = call ptr @memmove(ptr %op.2.i1323, ptr %add.ptr336.i, i32 %add295.i)
  br label %while.cond.i.backedge

if.else338.i:                                     ; preds = %if.end325.i
  %sub.i = sub i32 %add295.i, %sub.ptr.sub328.i
  %idx.neg342.i = sub i32 0, %sub.ptr.sub328.i
  %add.ptr343.i = getelementptr i8, ptr %add.ptr2.i, i32 %idx.neg342.i
  %37 = call ptr @memcpy(ptr %op.2.i1323, ptr %add.ptr343.i, i32 %sub.ptr.sub328.i)
  %add.ptr344.i = getelementptr i8, ptr %op.2.i1323, i32 %sub.ptr.sub328.i
  %sub.ptr.lhs.cast345.i = ptrtoint ptr %add.ptr344.i to i32
  %sub.ptr.sub347.i = sub i32 %sub.ptr.lhs.cast345.i, %sub.ptr.lhs.cast326.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub.ptr.sub347.i)
  %cmp348.i = icmp ugt i32 %sub.i, %sub.ptr.sub347.i
  br i1 %cmp348.i, label %if.then350.i, label %if.else358.i

if.then350.i:                                     ; preds = %if.else338.i
  %cmp353849.i = icmp ult ptr %add.ptr344.i, %add.ptr302.i
  br i1 %cmp353849.i, label %if.then350.i.while.body355.i_crit_edge, label %if.then350.i.while.cond.i.backedge_crit_edge

if.then350.i.while.cond.i.backedge_crit_edge:     ; preds = %if.then350.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

if.then350.i.while.body355.i_crit_edge:           ; preds = %if.then350.i
  br label %while.body355.i

while.body355.i:                                  ; preds = %while.body355.i.while.body355.i_crit_edge, %if.then350.i.while.body355.i_crit_edge
  %copyFrom.0851.i = phi ptr [ %incdec.ptr356.i, %while.body355.i.while.body355.i_crit_edge ], [ %dest, %if.then350.i.while.body355.i_crit_edge ]
  %op.3850.i = phi ptr [ %incdec.ptr357.i, %while.body355.i.while.body355.i_crit_edge ], [ %add.ptr344.i, %if.then350.i.while.body355.i_crit_edge ]
  %incdec.ptr356.i = getelementptr i8, ptr %copyFrom.0851.i, i32 1
  %38 = ptrtoint ptr %copyFrom.0851.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %copyFrom.0851.i, align 1
  %incdec.ptr357.i = getelementptr i8, ptr %op.3850.i, i32 1
  %40 = ptrtoint ptr %op.3850.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %op.3850.i, align 1
  %exitcond861.not.i = icmp eq ptr %incdec.ptr357.i, %add.ptr302.i
  br i1 %exitcond861.not.i, label %while.body355.i.while.cond.i.backedge_crit_edge, label %while.body355.i.while.body355.i_crit_edge

while.body355.i.while.body355.i_crit_edge:        ; preds = %while.body355.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body355.i

while.body355.i.while.cond.i.backedge_crit_edge:  ; preds = %while.body355.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

if.else358.i:                                     ; preds = %if.else338.i
  call void @__sanitizer_cov_trace_pc() #5
  %41 = call ptr @memcpy(ptr %add.ptr344.i, ptr %dest, i32 %sub.i)
  br label %while.cond.i.backedge

if.end362.i:                                      ; preds = %if.end294.i
  %cmp367.i = icmp ugt ptr %add.ptr302.i, %add.ptr181.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %offset.0.i1225)
  %cmp402.i = icmp ult i32 %offset.0.i1225, 8
  br i1 %cmp402.i, label %if.then410.i, label %if.else424.i, !prof !35

if.then410.i:                                     ; preds = %if.end362.i
  call void @__sanitizer_cov_trace_pc() #5
  %42 = ptrtoint ptr %match.0.i1127 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %match.0.i1127, align 1
  %44 = ptrtoint ptr %op.2.i1323 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %op.2.i1323, align 1
  %arrayidx412.i = getelementptr i8, ptr %match.0.i1127, i32 1
  %45 = ptrtoint ptr %arrayidx412.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx412.i, align 1
  %arrayidx413.i = getelementptr i8, ptr %op.2.i1323, i32 1
  %47 = ptrtoint ptr %arrayidx413.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx413.i, align 1
  %arrayidx414.i = getelementptr i8, ptr %match.0.i1127, i32 2
  %48 = ptrtoint ptr %arrayidx414.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx414.i, align 1
  %arrayidx415.i = getelementptr i8, ptr %op.2.i1323, i32 2
  %50 = ptrtoint ptr %arrayidx415.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx415.i, align 1
  %arrayidx416.i = getelementptr i8, ptr %match.0.i1127, i32 3
  %51 = ptrtoint ptr %arrayidx416.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx416.i, align 1
  %arrayidx417.i = getelementptr i8, ptr %op.2.i1323, i32 3
  %53 = ptrtoint ptr %arrayidx417.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx417.i, align 1
  %arrayidx418.i = getelementptr [8 x i32], ptr @LZ4_decompress_generic.inc32table, i32 0, i32 %offset.0.i1225
  %54 = ptrtoint ptr %arrayidx418.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx418.i, align 4
  %add.ptr419.i = getelementptr i8, ptr %match.0.i1127, i32 %55
  %add.ptr420.i = getelementptr i8, ptr %op.2.i1323, i32 4
  %56 = ptrtoint ptr %add.ptr419.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %add.ptr419.i, align 1
  %58 = ptrtoint ptr %add.ptr420.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %57, ptr %add.ptr420.i, align 1
  %arrayidx421.i = getelementptr [8 x i32], ptr @LZ4_decompress_generic.dec64table, i32 0, i32 %offset.0.i1225
  %59 = ptrtoint ptr %arrayidx421.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx421.i, align 4
  %idx.neg422.i = sub i32 0, %60
  %add.ptr423.i = getelementptr i8, ptr %add.ptr419.i, i32 %idx.neg422.i
  br label %if.end426.i

if.else424.i:                                     ; preds = %if.end362.i
  call void @__sanitizer_cov_trace_pc() #5
  %61 = ptrtoint ptr %match.0.i1127 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %match.0.val.i = load i32, ptr %match.0.i1127, align 1
  %62 = getelementptr i8, ptr %match.0.i1127, i32 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %match.0.val773.i = load i32, ptr %62, align 1
  %64 = ptrtoint ptr %op.2.i1323 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %match.0.val.i, ptr %op.2.i1323, align 1
  %add.ptr8.i.i = getelementptr i32, ptr %op.2.i1323, i32 1
  %65 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %match.0.val773.i, ptr %add.ptr8.i.i, align 1
  %add.ptr425.i = getelementptr i8, ptr %match.0.i1127, i32 8
  br label %if.end426.i

if.end426.i:                                      ; preds = %if.else424.i, %if.then410.i
  %match.2.i = phi ptr [ %add.ptr423.i, %if.then410.i ], [ %add.ptr425.i, %if.else424.i ]
  %add.ptr427.i = getelementptr i8, ptr %op.2.i1323, i32 8
  br i1 %cmp367.i, label %if.then437.i, label %if.else462.i, !prof !35

if.then437.i:                                     ; preds = %if.end426.i
  %cmp440.i = icmp ugt ptr %add.ptr302.i, %add.ptr439.i
  br i1 %cmp440.i, label %if.then437.i._output_error.i_crit_edge, label %if.end443.i

if.then437.i._output_error.i_crit_edge:           ; preds = %if.then437.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end443.i:                                      ; preds = %if.then437.i
  %cmp444.i = icmp ult ptr %add.ptr427.i, %add.ptr438.i
  br i1 %cmp444.i, label %if.end443.i.do.body.i782.i_crit_edge, label %if.end443.i.if.end451.i_crit_edge

if.end443.i.if.end451.i_crit_edge:                ; preds = %if.end443.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end451.i

if.end443.i.do.body.i782.i_crit_edge:             ; preds = %if.end443.i
  br label %do.body.i782.i

do.body.i782.i:                                   ; preds = %do.body.i782.i.do.body.i782.i_crit_edge, %if.end443.i.do.body.i782.i_crit_edge
  %d.0.i774.i = phi ptr [ %add.ptr.i779.i, %do.body.i782.i.do.body.i782.i_crit_edge ], [ %add.ptr427.i, %if.end443.i.do.body.i782.i_crit_edge ]
  %s.0.i775.i = phi ptr [ %add.ptr1.i780.i, %do.body.i782.i.do.body.i782.i_crit_edge ], [ %match.2.i, %if.end443.i.do.body.i782.i_crit_edge ]
  %66 = ptrtoint ptr %s.0.i775.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %s.0.val.i776.i = load i32, ptr %s.0.i775.i, align 1
  %67 = getelementptr i8, ptr %s.0.i775.i, i32 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %s.0.val5.i777.i = load i32, ptr %67, align 1
  %69 = ptrtoint ptr %d.0.i774.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %s.0.val.i776.i, ptr %d.0.i774.i, align 1
  %add.ptr8.i.i778.i = getelementptr i32, ptr %d.0.i774.i, i32 1
  %70 = ptrtoint ptr %add.ptr8.i.i778.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %s.0.val5.i777.i, ptr %add.ptr8.i.i778.i, align 1
  %add.ptr.i779.i = getelementptr i8, ptr %d.0.i774.i, i32 8
  %add.ptr1.i780.i = getelementptr i8, ptr %s.0.i775.i, i32 8
  %cmp.i781.i = icmp ult ptr %add.ptr.i779.i, %add.ptr438.i
  br i1 %cmp.i781.i, label %do.body.i782.i.do.body.i782.i_crit_edge, label %LZ4_wildCopy.exit783.i

do.body.i782.i.do.body.i782.i_crit_edge:          ; preds = %do.body.i782.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i782.i

LZ4_wildCopy.exit783.i:                           ; preds = %do.body.i782.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.ptr.rhs.cast448.i = ptrtoint ptr %add.ptr427.i to i32
  %sub.ptr.sub449.i = sub i32 %sub.ptr.lhs.cast447.i, %sub.ptr.rhs.cast448.i
  %add.ptr450.i = getelementptr i8, ptr %match.2.i, i32 %sub.ptr.sub449.i
  br label %if.end451.i

if.end451.i:                                      ; preds = %LZ4_wildCopy.exit783.i, %if.end443.i.if.end451.i_crit_edge
  %match.3.i = phi ptr [ %add.ptr450.i, %LZ4_wildCopy.exit783.i ], [ %match.2.i, %if.end443.i.if.end451.i_crit_edge ]
  %op.7.i = phi ptr [ %add.ptr438.i, %LZ4_wildCopy.exit783.i ], [ %add.ptr427.i, %if.end443.i.if.end451.i_crit_edge ]
  %cmp453843.i = icmp ult ptr %op.7.i, %add.ptr302.i
  br i1 %cmp453843.i, label %if.end451.i.while.body455.i_crit_edge, label %if.end451.i.while.cond.i.backedge_crit_edge

if.end451.i.while.cond.i.backedge_crit_edge:      ; preds = %if.end451.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

if.end451.i.while.body455.i_crit_edge:            ; preds = %if.end451.i
  br label %while.body455.i

while.body455.i:                                  ; preds = %while.body455.i.while.body455.i_crit_edge, %if.end451.i.while.body455.i_crit_edge
  %op.8845.i = phi ptr [ %incdec.ptr457.i, %while.body455.i.while.body455.i_crit_edge ], [ %op.7.i, %if.end451.i.while.body455.i_crit_edge ]
  %match.4844.i = phi ptr [ %incdec.ptr456.i, %while.body455.i.while.body455.i_crit_edge ], [ %match.3.i, %if.end451.i.while.body455.i_crit_edge ]
  %incdec.ptr456.i = getelementptr i8, ptr %match.4844.i, i32 1
  %71 = ptrtoint ptr %match.4844.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %match.4844.i, align 1
  %incdec.ptr457.i = getelementptr i8, ptr %op.8845.i, i32 1
  %73 = ptrtoint ptr %op.8845.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %op.8845.i, align 1
  %cmp453.i = icmp ult ptr %incdec.ptr457.i, %add.ptr302.i
  br i1 %cmp453.i, label %while.body455.i.while.body455.i_crit_edge, label %while.body455.i.while.cond.i.backedge_crit_edge

while.body455.i.while.cond.i.backedge_crit_edge:  ; preds = %while.body455.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

while.body455.i.while.body455.i_crit_edge:        ; preds = %while.body455.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body455.i

if.else462.i:                                     ; preds = %if.end426.i
  %74 = ptrtoint ptr %match.2.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %match.2.val.i = load i32, ptr %match.2.i, align 1
  %75 = getelementptr i8, ptr %match.2.i, i32 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %match.2.val772.i = load i32, ptr %75, align 1
  %77 = ptrtoint ptr %add.ptr427.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %match.2.val.i, ptr %add.ptr427.i, align 1
  %add.ptr8.i784.i = getelementptr i8, ptr %op.2.i1323, i32 12
  %78 = ptrtoint ptr %add.ptr8.i784.i to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %match.2.val772.i, ptr %add.ptr8.i784.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add295.i)
  %cmp463.i = icmp ugt i32 %add295.i, 16
  br i1 %cmp463.i, label %if.then465.i, label %if.else462.i.while.cond.i.backedge_crit_edge

if.else462.i.while.cond.i.backedge_crit_edge:     ; preds = %if.else462.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %do.body.i793.i.while.cond.i.backedge_crit_edge, %if.else462.i.while.cond.i.backedge_crit_edge, %while.body455.i.while.cond.i.backedge_crit_edge, %if.end451.i.while.cond.i.backedge_crit_edge, %if.else358.i, %while.body355.i.while.cond.i.backedge_crit_edge, %if.then350.i.while.cond.i.backedge_crit_edge, %if.then331.i, %if.then97.i
  %op.0.i.be = phi ptr [ %add.ptr302.i, %if.else462.i.while.cond.i.backedge_crit_edge ], [ %add.ptr302.i, %if.end451.i.while.cond.i.backedge_crit_edge ], [ %add.ptr344.i, %if.then350.i.while.cond.i.backedge_crit_edge ], [ %add.ptr302.i, %if.then331.i ], [ %add.ptr302.i, %if.else358.i ], [ %add.ptr104.i, %if.then97.i ], [ %add.ptr302.i, %while.body355.i.while.cond.i.backedge_crit_edge ], [ %add.ptr302.i, %while.body455.i.while.cond.i.backedge_crit_edge ], [ %add.ptr302.i, %do.body.i793.i.while.cond.i.backedge_crit_edge ]
  %ip.0.i.be = phi ptr [ %ip.7.i, %if.else462.i.while.cond.i.backedge_crit_edge ], [ %ip.7.i, %if.end451.i.while.cond.i.backedge_crit_edge ], [ %ip.7.i, %if.then350.i.while.cond.i.backedge_crit_edge ], [ %ip.7.i, %if.then331.i ], [ %ip.7.i, %if.else358.i ], [ %add.ptr84.i, %if.then97.i ], [ %ip.7.i, %while.body355.i.while.cond.i.backedge_crit_edge ], [ %ip.7.i, %while.body455.i.while.cond.i.backedge_crit_edge ], [ %ip.7.i, %do.body.i793.i.while.cond.i.backedge_crit_edge ]
  br label %while.cond.i

if.then465.i:                                     ; preds = %if.else462.i
  %add.ptr466.i = getelementptr i8, ptr %op.2.i1323, i32 16
  br label %do.body.i793.i

do.body.i793.i:                                   ; preds = %do.body.i793.i.do.body.i793.i_crit_edge, %if.then465.i
  %d.0.i785.i = phi ptr [ %add.ptr466.i, %if.then465.i ], [ %add.ptr.i790.i, %do.body.i793.i.do.body.i793.i_crit_edge ]
  %match.2.pn.i = phi ptr [ %match.2.i, %if.then465.i ], [ %s.0.i786.i, %do.body.i793.i.do.body.i793.i_crit_edge ]
  %s.0.i786.i = getelementptr i8, ptr %match.2.pn.i, i32 8
  %79 = ptrtoint ptr %s.0.i786.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %s.0.val.i787.i = load i32, ptr %s.0.i786.i, align 1
  %80 = getelementptr i8, ptr %match.2.pn.i, i32 12
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %s.0.val5.i788.i = load i32, ptr %80, align 1
  %82 = ptrtoint ptr %d.0.i785.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 %s.0.val.i787.i, ptr %d.0.i785.i, align 1
  %add.ptr8.i.i789.i = getelementptr i32, ptr %d.0.i785.i, i32 1
  %83 = ptrtoint ptr %add.ptr8.i.i789.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %s.0.val5.i788.i, ptr %add.ptr8.i.i789.i, align 1
  %add.ptr.i790.i = getelementptr i8, ptr %d.0.i785.i, i32 8
  %cmp.i792.i = icmp ult ptr %add.ptr.i790.i, %add.ptr302.i
  br i1 %cmp.i792.i, label %do.body.i793.i.do.body.i793.i_crit_edge, label %do.body.i793.i.while.cond.i.backedge_crit_edge

do.body.i793.i.while.cond.i.backedge_crit_edge:   ; preds = %do.body.i793.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

do.body.i793.i.do.body.i793.i_crit_edge:          ; preds = %do.body.i793.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i793.i

_output_error.i:                                  ; preds = %if.then437.i._output_error.i_crit_edge, %if.then301.i._output_error.i_crit_edge, %cleanup291.i._output_error.i_crit_edge, %do.body263.i._output_error.i_crit_edge, %_copy_match.i.thread._output_error.i_crit_edge, %_copy_match.i._output_error.i_crit_edge, %if.then195.i._output_error.i_crit_edge, %do.end.i._output_error.i_crit_edge, %cond.end116.i._output_error.i_crit_edge
  %ip.8826.i = phi ptr [ %ip.3.i, %if.then195.i._output_error.i_crit_edge ], [ %incdec.ptr264.i, %do.body263.i._output_error.i_crit_edge ], [ %ip.7.i, %if.then301.i._output_error.i_crit_edge ], [ %add.ptr84.i, %_copy_match.i.thread._output_error.i_crit_edge ], [ %ip.5.i, %_copy_match.i._output_error.i_crit_edge ], [ %incdec.ptr127.i, %do.end.i._output_error.i_crit_edge ], [ %incdec.ptr.i, %cond.end116.i._output_error.i_crit_edge ], [ %ip.7.i, %if.then437.i._output_error.i_crit_edge ], [ %incdec.ptr264.i, %cleanup291.i._output_error.i_crit_edge ]
  %sub.ptr.lhs.cast486.i = ptrtoint ptr %ip.8826.i to i32
  %sub.ptr.rhs.cast487.i = ptrtoint ptr %source to i32
  %84 = xor i32 %sub.ptr.lhs.cast486.i, -1
  %sub490.i = add i32 %84, %sub.ptr.rhs.cast487.i
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %_output_error.i, %if.end225.thread.i, %if.end.i.LZ4_decompress_generic.exit_crit_edge, %land.rhs20.i, %if.then.i.LZ4_decompress_generic.exit_crit_edge
  %retval.0.i = phi i32 [ %sub490.i, %_output_error.i ], [ %sub.ptr.sub481.i, %if.end225.thread.i ], [ -1, %if.then.i.LZ4_decompress_generic.exit_crit_edge ], [ %phi.cast.i, %land.rhs20.i ], [ -1, %if.end.i.LZ4_decompress_generic.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @LZ4_setStreamDecode(ptr nocapture noundef writeonly %LZ4_streamDecode, ptr noundef %dictionary, i32 noundef %dictSize) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %prefixSize = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %LZ4_streamDecode, i32 0, i32 3
  %0 = ptrtoint ptr %prefixSize to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dictSize, ptr %prefixSize, align 4
  %add.ptr = getelementptr i8, ptr %dictionary, i32 %dictSize
  %prefixEnd = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %LZ4_streamDecode, i32 0, i32 2
  %1 = ptrtoint ptr %prefixEnd to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr, ptr %prefixEnd, align 4
  %2 = ptrtoint ptr %LZ4_streamDecode to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %LZ4_streamDecode, align 4
  %extDictSize = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %LZ4_streamDecode, i32 0, i32 1
  %3 = ptrtoint ptr %extDictSize to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %extDictSize, align 4
  ret i32 1
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @LZ4_decompress_safe_continue(ptr nocapture noundef %LZ4_streamDecode, ptr noundef %source, ptr noundef %dest, i32 noundef %compressedSize, i32 noundef %maxOutputSize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %prefixSize = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %LZ4_streamDecode, i32 0, i32 3
  %0 = ptrtoint ptr %prefixSize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prefixSize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @LZ4_decompress_safe(ptr noundef %source, ptr noundef %dest, i32 noundef %compressedSize, i32 noundef %maxOutputSize)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %prefixSize to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %prefixSize, align 4
  %add.ptr = getelementptr i8, ptr %dest, i32 %call
  %prefixEnd = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %LZ4_streamDecode, i32 0, i32 2
  %3 = ptrtoint ptr %prefixEnd to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %prefixEnd, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %prefixEnd4 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %LZ4_streamDecode, i32 0, i32 2
  %4 = ptrtoint ptr %prefixEnd4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prefixEnd4, align 4
  %cmp5 = icmp eq ptr %5, %dest
  br i1 %cmp5, label %if.then6, label %if.else28

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %1)
  %cmp8 = icmp ugt i32 %1, 65534
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  %call10 = tail call fastcc i32 @LZ4_decompress_safe_withPrefix64k(ptr noundef %source, ptr noundef %dest, i32 noundef %compressedSize, i32 noundef %maxOutputSize)
  br label %if.end21

if.else11:                                        ; preds = %if.then6
  %extDictSize = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %LZ4_streamDecode, i32 0, i32 1
  %6 = ptrtoint ptr %extDictSize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %extDictSize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12 = icmp eq i32 %7, 0
  br i1 %cmp12, label %if.then13, label %if.else16

if.then13:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #5
  %call15 = tail call fastcc i32 @LZ4_decompress_safe_withSmallPrefix(ptr noundef %source, ptr noundef %dest, i32 noundef %compressedSize, i32 noundef %maxOutputSize, i32 noundef %1)
  br label %if.end21

if.else16:                                        ; preds = %if.else11
  %8 = ptrtoint ptr %LZ4_streamDecode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %LZ4_streamDecode, align 4
  %idx.neg.i = sub nsw i32 0, %1
  %add.ptr.i = getelementptr i8, ptr %dest, i32 %idx.neg.i
  %add.ptr.i.i = getelementptr i8, ptr %source, i32 %compressedSize
  %add.ptr1.i.i = getelementptr i8, ptr %dest, i32 %maxOutputSize
  %add.ptr2.i.i = getelementptr i8, ptr %9, i32 %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %7)
  %cmp3.i.i = icmp ult i32 %7, 65536
  %add.ptr6.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -14
  %add.ptr7.i.i = getelementptr i8, ptr %add.ptr6.i.i, i32 -2
  %add.ptr11.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 -14
  %add.ptr12.i.i = getelementptr i8, ptr %add.ptr11.i.i, i32 -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxOutputSize)
  %cmp14.i.not.i = icmp eq i32 %maxOutputSize, 0
  br i1 %cmp14.i.not.i, label %if.then.i.i, label %if.end.i.i, !prof !34

if.then.i.i:                                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %compressedSize)
  %cmp18.i.i = icmp eq i32 %compressedSize, 1
  br i1 %cmp18.i.i, label %land.rhs20.i.i, label %if.then.i.i.cleanup_crit_edge

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.rhs20.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %source, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp22.i.i = icmp ne i8 %11, 0
  %phi.cast.i.i = sext i1 %cmp22.i.i to i32
  br label %cleanup

if.end.i.i:                                       ; preds = %if.else16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %compressedSize)
  %cmp45.i.not.i = icmp eq i32 %compressedSize, 0
  br i1 %cmp45.i.not.i, label %if.end.i.i.cleanup_crit_edge, label %while.cond.preheader.i.i, !prof !34

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.cond.preheader.i.i:                         ; preds = %if.end.i.i
  %add.ptr112.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -15
  %add.ptr181.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 -12
  %add.ptr186.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -8
  %add.ptr268.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -5
  %add.ptr438.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 -7
  %add.ptr439.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 -5
  %sub.ptr.lhs.cast447.i.i = ptrtoint ptr %add.ptr438.i.i to i32
  %sub.ptr.lhs.cast326.i.i = ptrtoint ptr %add.ptr.i to i32
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.backedge, %while.cond.preheader.i.i
  %op.0.i.i = phi ptr [ %dest, %while.cond.preheader.i.i ], [ %op.0.i.i.be, %while.cond.i.i.backedge ]
  %ip.0.i.i = phi ptr [ %source, %while.cond.preheader.i.i ], [ %ip.0.i.i.be, %while.cond.i.i.backedge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %ip.0.i.i, i32 1
  %12 = ptrtoint ptr %ip.0.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ip.0.i.i, align 1
  %conv55.i.i = zext i8 %13 to i32
  %shr.i.i = lshr i32 %conv55.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr.i.i)
  %cond.i.i = icmp eq i32 %shr.i.i, 15
  br i1 %cond.i.i, label %cond.end116.i.i, label %cond.true63.critedge.i.i

cond.true63.critedge.i.i:                         ; preds = %while.cond.i.i
  %cmp64.i.i = icmp uge ptr %incdec.ptr.i.i, %add.ptr7.i.i
  %cmp68.i.i = icmp ugt ptr %op.0.i.i, %add.ptr12.i.i
  %tobool70.not.i.i = or i1 %cmp68.i.i, %cmp64.i.i
  br i1 %tobool70.not.i.i, label %cond.true63.critedge.i.i.if.end174.i.i_crit_edge, label %if.then77.i.i, !prof !35

cond.true63.critedge.i.i.if.end174.i.i_crit_edge: ; preds = %cond.true63.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end174.i.i

if.then77.i.i:                                    ; preds = %cond.true63.critedge.i.i
  %14 = call ptr @memcpy(ptr %op.0.i.i, ptr %incdec.ptr.i.i, i32 16)
  %add.ptr80.i.i = getelementptr i8, ptr %op.0.i.i, i32 %shr.i.i
  %add.ptr81.i.i = getelementptr i8, ptr %incdec.ptr.i.i, i32 %shr.i.i
  %and82.i.i = and i32 %conv55.i.i, 15
  %15 = ptrtoint ptr %add.ptr81.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %add.ptr81.val.i.i = load i16, ptr %add.ptr81.i.i, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %add.ptr81.val.i.i) #3
  %conv83.i.i = zext i16 %16 to i32
  %add.ptr84.i.i = getelementptr i8, ptr %add.ptr81.i.i, i32 2
  %idx.neg85.i.i = sub nsw i32 0, %conv83.i.i
  %add.ptr86.i.i = getelementptr i8, ptr %add.ptr80.i.i, i32 %idx.neg85.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and82.i.i)
  %cmp87.not.i.i = icmp eq i32 %and82.i.i, 15
  br i1 %cmp87.not.i.i, label %_copy_match.i.thread.i, label %land.lhs.true89.i.i

land.lhs.true89.i.i:                              ; preds = %if.then77.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %16)
  %cmp90.i.i = icmp ult i16 %16, 8
  %cmp95.not.i.i = icmp ult ptr %add.ptr86.i.i, %add.ptr.i
  %or.cond.i.i = select i1 %cmp90.i.i, i1 true, i1 %cmp95.not.i.i
  br i1 %or.cond.i.i, label %land.lhs.true89.i.i._copy_match.i.i_crit_edge, label %if.then97.i.i

land.lhs.true89.i.i._copy_match.i.i_crit_edge:    ; preds = %land.lhs.true89.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_copy_match.i.i

if.then97.i.i:                                    ; preds = %land.lhs.true89.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %add.ptr86.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %add.ptr86.i.i, align 1
  %19 = ptrtoint ptr %add.ptr80.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %add.ptr80.i.i, align 1
  %add.ptr100.i.i = getelementptr i8, ptr %add.ptr80.i.i, i32 8
  %add.ptr101.i.i = getelementptr i8, ptr %add.ptr86.i.i, i32 8
  %20 = ptrtoint ptr %add.ptr101.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %add.ptr101.i.i, align 1
  %22 = ptrtoint ptr %add.ptr100.i.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %add.ptr100.i.i, align 1
  %add.ptr102.i.i = getelementptr i8, ptr %add.ptr80.i.i, i32 16
  %add.ptr103.i.i = getelementptr i8, ptr %add.ptr86.i.i, i32 16
  %23 = ptrtoint ptr %add.ptr103.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %add.ptr103.i.i, align 1
  %25 = ptrtoint ptr %add.ptr102.i.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %add.ptr102.i.i, align 1
  %add.i.i = add nuw nsw i32 %and82.i.i, 4
  %add.ptr104.i.i = getelementptr i8, ptr %add.ptr80.i.i, i32 %add.i.i
  br label %while.cond.i.i.backedge

cond.end116.i.i:                                  ; preds = %while.cond.i.i
  %cmp113.not.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr112.i.i
  br i1 %cmp113.not.i.i, label %cond.end116.i.i.do.body.i.i_crit_edge, label %cond.end116.i.i._output_error.i.i_crit_edge, !prof !36

cond.end116.i.i._output_error.i.i_crit_edge:      ; preds = %cond.end116.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i.i

cond.end116.i.i.do.body.i.i_crit_edge:            ; preds = %cond.end116.i.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %cond.end116.i.i.do.body.i.i_crit_edge
  %length.0.i.i = phi i32 [ %add129.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ 15, %cond.end116.i.i.do.body.i.i_crit_edge ]
  %ip.1.i.i = phi ptr [ %incdec.ptr127.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %incdec.ptr.i.i, %cond.end116.i.i.do.body.i.i_crit_edge ]
  %incdec.ptr127.i.i = getelementptr i8, ptr %ip.1.i.i, i32 1
  %26 = ptrtoint ptr %ip.1.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ip.1.i.i, align 1
  %conv128.i.i = zext i8 %27 to i32
  %add129.i.i = add i32 %length.0.i.i, %conv128.i.i
  %cmp133.i.i = icmp ult ptr %incdec.ptr127.i.i, %add.ptr112.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %cmp144.i.i = icmp eq i8 %27, -1
  %and146835.i.i = and i1 %cmp144.i.i, %cmp133.i.i
  br i1 %and146835.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  %28 = ptrtoint ptr %op.0.i.i to i32
  %29 = xor i32 %28, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add129.i.i, i32 %29)
  %cmp151.i.i = icmp ugt i32 %add129.i.i, %29
  %30 = ptrtoint ptr %incdec.ptr127.i.i to i32
  %31 = xor i32 %30, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add129.i.i, i32 %31)
  %cmp164.i.i = icmp ugt i32 %add129.i.i, %31
  %or.cond.i = or i1 %cmp151.i.i, %cmp164.i.i
  br i1 %or.cond.i, label %do.end.i.i._output_error.i.i_crit_edge, label %do.end.i.i.if.end174.i.i_crit_edge, !prof !37

do.end.i.i.if.end174.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end174.i.i

do.end.i.i._output_error.i.i_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i.i

if.end174.i.i:                                    ; preds = %do.end.i.i.if.end174.i.i_crit_edge, %cond.true63.critedge.i.i.if.end174.i.i_crit_edge
  %length.2.i.i = phi i32 [ %shr.i.i, %cond.true63.critedge.i.i.if.end174.i.i_crit_edge ], [ %add129.i.i, %do.end.i.i.if.end174.i.i_crit_edge ]
  %ip.3.i.i = phi ptr [ %incdec.ptr.i.i, %cond.true63.critedge.i.i.if.end174.i.i_crit_edge ], [ %incdec.ptr127.i.i, %do.end.i.i.if.end174.i.i_crit_edge ]
  %add.ptr175.i.i = getelementptr i8, ptr %op.0.i.i, i32 %length.2.i.i
  %cmp182.i.i = icmp ugt ptr %add.ptr175.i.i, %add.ptr181.i.i
  %add.ptr185.i.i = getelementptr i8, ptr %ip.3.i.i, i32 %length.2.i.i
  %cmp187.i.i = icmp ugt ptr %add.ptr185.i.i, %add.ptr186.i.i
  %or.cond754.i.i = or i1 %cmp182.i.i, %cmp187.i.i
  br i1 %or.cond754.i.i, label %if.then195.i.i, label %if.end174.i.i.do.body.i.i.i_crit_edge

if.end174.i.i.do.body.i.i.i_crit_edge:            ; preds = %if.end174.i.i
  br label %do.body.i.i.i

if.then195.i.i:                                   ; preds = %if.end174.i.i
  %cmp218.not.i.i = icmp ne ptr %add.ptr185.i.i, %add.ptr.i.i
  %cmp221.i.i = icmp ugt ptr %add.ptr175.i.i, %add.ptr1.i.i
  %or.cond759.i.i = select i1 %cmp218.not.i.i, i1 true, i1 %cmp221.i.i
  br i1 %or.cond759.i.i, label %if.then195.i.i._output_error.i.i_crit_edge, label %if.end225.thread.i.i

if.then195.i.i._output_error.i.i_crit_edge:       ; preds = %if.then195.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i.i

if.end225.thread.i.i:                             ; preds = %if.then195.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %32 = call ptr @memmove(ptr %op.0.i.i, ptr %ip.3.i.i, i32 %length.2.i.i)
  %sub.ptr.lhs.cast479.i.i = ptrtoint ptr %add.ptr175.i.i to i32
  %sub.ptr.rhs.cast480.i.i = ptrtoint ptr %dest to i32
  %sub.ptr.sub481.i.i = sub i32 %sub.ptr.lhs.cast479.i.i, %sub.ptr.rhs.cast480.i.i
  br label %if.end21

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end174.i.i.do.body.i.i.i_crit_edge
  %d.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ], [ %op.0.i.i, %if.end174.i.i.do.body.i.i.i_crit_edge ]
  %s.0.i.i.i = phi ptr [ %add.ptr1.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ], [ %ip.3.i.i, %if.end174.i.i.do.body.i.i.i_crit_edge ]
  %33 = ptrtoint ptr %s.0.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %s.0.val.i.i.i = load i32, ptr %s.0.i.i.i, align 1
  %34 = getelementptr i8, ptr %s.0.i.i.i, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %s.0.val5.i.i.i = load i32, ptr %34, align 1
  %36 = ptrtoint ptr %d.0.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %s.0.val.i.i.i, ptr %d.0.i.i.i, align 1
  %add.ptr8.i.i.i.i = getelementptr i32, ptr %d.0.i.i.i, i32 1
  %37 = ptrtoint ptr %add.ptr8.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %s.0.val5.i.i.i, ptr %add.ptr8.i.i.i.i, align 1
  %add.ptr.i.i.i = getelementptr i8, ptr %d.0.i.i.i, i32 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %s.0.i.i.i, i32 8
  %cmp.i.i.i = icmp ult ptr %add.ptr.i.i.i, %add.ptr175.i.i
  br i1 %cmp.i.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge, label %LZ4_wildCopy.exit.i.i

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.i.i

LZ4_wildCopy.exit.i.i:                            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %38 = ptrtoint ptr %add.ptr185.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %ip.4.val.i.i = load i16, ptr %add.ptr185.i.i, align 1
  %39 = tail call i16 @llvm.bswap.i16(i16 %ip.4.val.i.i) #3
  %conv238.i.i = zext i16 %39 to i32
  %add.ptr239.i.i = getelementptr i8, ptr %add.ptr185.i.i, i32 2
  %idx.neg240.i.i = sub nsw i32 0, %conv238.i.i
  %add.ptr241.i.i = getelementptr i8, ptr %add.ptr175.i.i, i32 %idx.neg240.i.i
  %and242.i.i = and i32 %conv55.i.i, 15
  br label %_copy_match.i.i

_copy_match.i.i:                                  ; preds = %LZ4_wildCopy.exit.i.i, %land.lhs.true89.i.i._copy_match.i.i_crit_edge
  %length.5.i.i = phi i32 [ %and82.i.i, %land.lhs.true89.i.i._copy_match.i.i_crit_edge ], [ %and242.i.i, %LZ4_wildCopy.exit.i.i ]
  %match.0.i.i = phi ptr [ %add.ptr86.i.i, %land.lhs.true89.i.i._copy_match.i.i_crit_edge ], [ %add.ptr241.i.i, %LZ4_wildCopy.exit.i.i ]
  %offset.0.i.i = phi i32 [ %conv83.i.i, %land.lhs.true89.i.i._copy_match.i.i_crit_edge ], [ %conv238.i.i, %LZ4_wildCopy.exit.i.i ]
  %op.2.i.i = phi ptr [ %add.ptr80.i.i, %land.lhs.true89.i.i._copy_match.i.i_crit_edge ], [ %add.ptr175.i.i, %LZ4_wildCopy.exit.i.i ]
  %ip.5.i.i = phi ptr [ %add.ptr84.i.i, %land.lhs.true89.i.i._copy_match.i.i_crit_edge ], [ %add.ptr239.i.i, %LZ4_wildCopy.exit.i.i ]
  %add.ptr245.i.i = getelementptr i8, ptr %match.0.i.i, i32 %7
  %cmp246.i.i = icmp ult ptr %add.ptr245.i.i, %add.ptr.i
  %or.cond761.i.i = select i1 %cmp3.i.i, i1 %cmp246.i.i, i1 false
  br i1 %or.cond761.i.i, label %_copy_match.i.i._output_error.i.i_crit_edge, label %if.end255.i.i, !prof !34

_copy_match.i.i._output_error.i.i_crit_edge:      ; preds = %_copy_match.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i.i

_copy_match.i.thread.i:                           ; preds = %if.then77.i.i
  %add.ptr245.i7.i = getelementptr i8, ptr %add.ptr86.i.i, i32 %7
  %cmp246.i8.i = icmp ult ptr %add.ptr245.i7.i, %add.ptr.i
  %or.cond761.i9.i = select i1 %cmp3.i.i, i1 %cmp246.i8.i, i1 false
  br i1 %or.cond761.i9.i, label %_copy_match.i.thread.i._output_error.i.i_crit_edge, label %if.end255.i.thread.i, !prof !34

_copy_match.i.thread.i._output_error.i.i_crit_edge: ; preds = %_copy_match.i.thread.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i.i

if.end255.i.thread.i:                             ; preds = %_copy_match.i.thread.i
  call void @__sanitizer_cov_trace_pc() #5
  %40 = ptrtoint ptr %add.ptr80.i.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %conv83.i.i, ptr %add.ptr80.i.i, align 1
  br label %do.body263.preheader.i.i

if.end255.i.i:                                    ; preds = %_copy_match.i.i
  %41 = ptrtoint ptr %op.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %offset.0.i.i, ptr %op.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %length.5.i.i)
  %cmp259.i.i = icmp eq i32 %length.5.i.i, 15
  br i1 %cmp259.i.i, label %if.end255.i.i.do.body263.preheader.i.i_crit_edge, label %if.end255.i.i.if.end294.i.i_crit_edge

if.end255.i.i.if.end294.i.i_crit_edge:            ; preds = %if.end255.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end294.i.i

if.end255.i.i.do.body263.preheader.i.i_crit_edge: ; preds = %if.end255.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body263.preheader.i.i

do.body263.preheader.i.i:                         ; preds = %if.end255.i.i.do.body263.preheader.i.i_crit_edge, %if.end255.i.thread.i
  %match.0.i1128.i = phi ptr [ %add.ptr86.i.i, %if.end255.i.thread.i ], [ %match.0.i.i, %if.end255.i.i.do.body263.preheader.i.i_crit_edge ]
  %offset.0.i1226.i = phi i32 [ %conv83.i.i, %if.end255.i.thread.i ], [ %offset.0.i.i, %if.end255.i.i.do.body263.preheader.i.i_crit_edge ]
  %op.2.i1324.i = phi ptr [ %add.ptr80.i.i, %if.end255.i.thread.i ], [ %op.2.i.i, %if.end255.i.i.do.body263.preheader.i.i_crit_edge ]
  %ip.5.i1522.i = phi ptr [ %add.ptr84.i.i, %if.end255.i.thread.i ], [ %ip.5.i.i, %if.end255.i.i.do.body263.preheader.i.i_crit_edge ]
  br label %do.body263.i.i

do.body263.i.i:                                   ; preds = %if.end272.i.i.do.body263.i.i_crit_edge, %do.body263.preheader.i.i
  %length.6.i.i = phi i32 [ %add273.i.i, %if.end272.i.i.do.body263.i.i_crit_edge ], [ 15, %do.body263.preheader.i.i ]
  %ip.6.i.i = phi ptr [ %incdec.ptr264.i.i, %if.end272.i.i.do.body263.i.i_crit_edge ], [ %ip.5.i1522.i, %do.body263.preheader.i.i ]
  %incdec.ptr264.i.i = getelementptr i8, ptr %ip.6.i.i, i32 1
  %cmp269.not.i.i = icmp ugt ptr %incdec.ptr264.i.i, %add.ptr268.i.i
  br i1 %cmp269.not.i.i, label %do.body263.i.i._output_error.i.i_crit_edge, label %if.end272.i.i

do.body263.i.i._output_error.i.i_crit_edge:       ; preds = %do.body263.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i.i

if.end272.i.i:                                    ; preds = %do.body263.i.i
  %42 = ptrtoint ptr %ip.6.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ip.6.i.i, align 1
  %conv265.i.i = zext i8 %43 to i32
  %add273.i.i = add i32 %length.6.i.i, %conv265.i.i
  %cmp275.i.i = icmp eq i8 %43, -1
  br i1 %cmp275.i.i, label %if.end272.i.i.do.body263.i.i_crit_edge, label %cleanup291.i.i

if.end272.i.i.do.body263.i.i_crit_edge:           ; preds = %if.end272.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body263.i.i

cleanup291.i.i:                                   ; preds = %if.end272.i.i
  %44 = ptrtoint ptr %op.2.i1324.i to i32
  %45 = xor i32 %44, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add273.i.i, i32 %45)
  %cmp281.i.i = icmp ugt i32 %add273.i.i, %45
  br i1 %cmp281.i.i, label %cleanup291.i.i._output_error.i.i_crit_edge, label %cleanup291.i.i.if.end294.i.i_crit_edge

cleanup291.i.i.if.end294.i.i_crit_edge:           ; preds = %cleanup291.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end294.i.i

cleanup291.i.i._output_error.i.i_crit_edge:       ; preds = %cleanup291.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i.i

if.end294.i.i:                                    ; preds = %cleanup291.i.i.if.end294.i.i_crit_edge, %if.end255.i.i.if.end294.i.i_crit_edge
  %match.0.i1127.i = phi ptr [ %match.0.i1128.i, %cleanup291.i.i.if.end294.i.i_crit_edge ], [ %match.0.i.i, %if.end255.i.i.if.end294.i.i_crit_edge ]
  %offset.0.i1225.i = phi i32 [ %offset.0.i1226.i, %cleanup291.i.i.if.end294.i.i_crit_edge ], [ %offset.0.i.i, %if.end255.i.i.if.end294.i.i_crit_edge ]
  %op.2.i1323.i = phi ptr [ %op.2.i1324.i, %cleanup291.i.i.if.end294.i.i_crit_edge ], [ %op.2.i.i, %if.end255.i.i.if.end294.i.i_crit_edge ]
  %length.8.i.i = phi i32 [ %add273.i.i, %cleanup291.i.i.if.end294.i.i_crit_edge ], [ %length.5.i.i, %if.end255.i.i.if.end294.i.i_crit_edge ]
  %ip.7.i.i = phi ptr [ %incdec.ptr264.i.i, %cleanup291.i.i.if.end294.i.i_crit_edge ], [ %ip.5.i.i, %if.end255.i.i.if.end294.i.i_crit_edge ]
  %add295.i.i = add i32 %length.8.i.i, 4
  %cmp299.i.i = icmp ult ptr %match.0.i1127.i, %add.ptr.i
  %add.ptr302.i.i = getelementptr i8, ptr %op.2.i1323.i, i32 %add295.i.i
  br i1 %cmp299.i.i, label %if.then301.i.i, label %if.end362.i.i

if.then301.i.i:                                   ; preds = %if.end294.i.i
  %cmp304.i.i = icmp ugt ptr %add.ptr302.i.i, %add.ptr439.i.i
  br i1 %cmp304.i.i, label %if.then301.i.i._output_error.i.i_crit_edge, label %if.end325.i.i, !prof !35

if.then301.i.i._output_error.i.i_crit_edge:       ; preds = %if.then301.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i.i

if.end325.i.i:                                    ; preds = %if.then301.i.i
  %sub.ptr.rhs.cast327.i.i = ptrtoint ptr %match.0.i1127.i to i32
  %sub.ptr.sub328.i.i = sub i32 %sub.ptr.lhs.cast326.i.i, %sub.ptr.rhs.cast327.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add295.i.i, i32 %sub.ptr.sub328.i.i)
  %cmp329.not.i.i = icmp ugt i32 %add295.i.i, %sub.ptr.sub328.i.i
  br i1 %cmp329.not.i.i, label %if.else338.i.i, label %if.then331.i.i

if.then331.i.i:                                   ; preds = %if.end325.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %idx.neg335.i.i = sub i32 0, %sub.ptr.sub328.i.i
  %add.ptr336.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 %idx.neg335.i.i
  %46 = call ptr @memmove(ptr %op.2.i1323.i, ptr %add.ptr336.i.i, i32 %add295.i.i)
  br label %while.cond.i.i.backedge

if.else338.i.i:                                   ; preds = %if.end325.i.i
  %sub.i.i = sub i32 %add295.i.i, %sub.ptr.sub328.i.i
  %idx.neg342.i.i = sub i32 0, %sub.ptr.sub328.i.i
  %add.ptr343.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 %idx.neg342.i.i
  %47 = call ptr @memcpy(ptr %op.2.i1323.i, ptr %add.ptr343.i.i, i32 %sub.ptr.sub328.i.i)
  %add.ptr344.i.i = getelementptr i8, ptr %op.2.i1323.i, i32 %sub.ptr.sub328.i.i
  %sub.ptr.lhs.cast345.i.i = ptrtoint ptr %add.ptr344.i.i to i32
  %sub.ptr.sub347.i.i = sub i32 %sub.ptr.lhs.cast345.i.i, %sub.ptr.lhs.cast326.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %sub.ptr.sub347.i.i)
  %cmp348.i.i = icmp ugt i32 %sub.i.i, %sub.ptr.sub347.i.i
  br i1 %cmp348.i.i, label %if.then350.i.i, label %if.else358.i.i

if.then350.i.i:                                   ; preds = %if.else338.i.i
  %cmp353849.i.i = icmp ult ptr %add.ptr344.i.i, %add.ptr302.i.i
  br i1 %cmp353849.i.i, label %if.then350.i.i.while.body355.i.i_crit_edge, label %if.then350.i.i.while.cond.i.i.backedge_crit_edge

if.then350.i.i.while.cond.i.i.backedge_crit_edge: ; preds = %if.then350.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.i.backedge

if.then350.i.i.while.body355.i.i_crit_edge:       ; preds = %if.then350.i.i
  br label %while.body355.i.i

while.body355.i.i:                                ; preds = %while.body355.i.i.while.body355.i.i_crit_edge, %if.then350.i.i.while.body355.i.i_crit_edge
  %copyFrom.0851.i.i = phi ptr [ %incdec.ptr356.i.i, %while.body355.i.i.while.body355.i.i_crit_edge ], [ %add.ptr.i, %if.then350.i.i.while.body355.i.i_crit_edge ]
  %op.3850.i.i = phi ptr [ %incdec.ptr357.i.i, %while.body355.i.i.while.body355.i.i_crit_edge ], [ %add.ptr344.i.i, %if.then350.i.i.while.body355.i.i_crit_edge ]
  %incdec.ptr356.i.i = getelementptr i8, ptr %copyFrom.0851.i.i, i32 1
  %48 = ptrtoint ptr %copyFrom.0851.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %copyFrom.0851.i.i, align 1
  %incdec.ptr357.i.i = getelementptr i8, ptr %op.3850.i.i, i32 1
  %50 = ptrtoint ptr %op.3850.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %op.3850.i.i, align 1
  %exitcond861.not.i.i = icmp eq ptr %incdec.ptr357.i.i, %add.ptr302.i.i
  br i1 %exitcond861.not.i.i, label %while.body355.i.i.while.cond.i.i.backedge_crit_edge, label %while.body355.i.i.while.body355.i.i_crit_edge

while.body355.i.i.while.body355.i.i_crit_edge:    ; preds = %while.body355.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body355.i.i

while.body355.i.i.while.cond.i.i.backedge_crit_edge: ; preds = %while.body355.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.i.backedge

if.else358.i.i:                                   ; preds = %if.else338.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %51 = call ptr @memcpy(ptr %add.ptr344.i.i, ptr %add.ptr.i, i32 %sub.i.i)
  br label %while.cond.i.i.backedge

if.end362.i.i:                                    ; preds = %if.end294.i.i
  %cmp367.i.i = icmp ugt ptr %add.ptr302.i.i, %add.ptr181.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %offset.0.i1225.i)
  %cmp402.i.i = icmp ult i32 %offset.0.i1225.i, 8
  br i1 %cmp402.i.i, label %if.then410.i.i, label %if.else424.i.i, !prof !35

if.then410.i.i:                                   ; preds = %if.end362.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %52 = ptrtoint ptr %match.0.i1127.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %match.0.i1127.i, align 1
  %54 = ptrtoint ptr %op.2.i1323.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %op.2.i1323.i, align 1
  %arrayidx412.i.i = getelementptr i8, ptr %match.0.i1127.i, i32 1
  %55 = ptrtoint ptr %arrayidx412.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx412.i.i, align 1
  %arrayidx413.i.i = getelementptr i8, ptr %op.2.i1323.i, i32 1
  %57 = ptrtoint ptr %arrayidx413.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx413.i.i, align 1
  %arrayidx414.i.i = getelementptr i8, ptr %match.0.i1127.i, i32 2
  %58 = ptrtoint ptr %arrayidx414.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx414.i.i, align 1
  %arrayidx415.i.i = getelementptr i8, ptr %op.2.i1323.i, i32 2
  %60 = ptrtoint ptr %arrayidx415.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx415.i.i, align 1
  %arrayidx416.i.i = getelementptr i8, ptr %match.0.i1127.i, i32 3
  %61 = ptrtoint ptr %arrayidx416.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx416.i.i, align 1
  %arrayidx417.i.i = getelementptr i8, ptr %op.2.i1323.i, i32 3
  %63 = ptrtoint ptr %arrayidx417.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx417.i.i, align 1
  %arrayidx418.i.i = getelementptr [8 x i32], ptr @LZ4_decompress_generic.inc32table, i32 0, i32 %offset.0.i1225.i
  %64 = ptrtoint ptr %arrayidx418.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx418.i.i, align 4
  %add.ptr419.i.i = getelementptr i8, ptr %match.0.i1127.i, i32 %65
  %add.ptr420.i.i = getelementptr i8, ptr %op.2.i1323.i, i32 4
  %66 = ptrtoint ptr %add.ptr419.i.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %add.ptr419.i.i, align 1
  %68 = ptrtoint ptr %add.ptr420.i.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %67, ptr %add.ptr420.i.i, align 1
  %arrayidx421.i.i = getelementptr [8 x i32], ptr @LZ4_decompress_generic.dec64table, i32 0, i32 %offset.0.i1225.i
  %69 = ptrtoint ptr %arrayidx421.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx421.i.i, align 4
  %idx.neg422.i.i = sub i32 0, %70
  %add.ptr423.i.i = getelementptr i8, ptr %add.ptr419.i.i, i32 %idx.neg422.i.i
  br label %if.end426.i.i

if.else424.i.i:                                   ; preds = %if.end362.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %71 = ptrtoint ptr %match.0.i1127.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %match.0.val.i.i = load i32, ptr %match.0.i1127.i, align 1
  %72 = getelementptr i8, ptr %match.0.i1127.i, i32 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %match.0.val773.i.i = load i32, ptr %72, align 1
  %74 = ptrtoint ptr %op.2.i1323.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %match.0.val.i.i, ptr %op.2.i1323.i, align 1
  %add.ptr8.i.i.i = getelementptr i32, ptr %op.2.i1323.i, i32 1
  %75 = ptrtoint ptr %add.ptr8.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %match.0.val773.i.i, ptr %add.ptr8.i.i.i, align 1
  %add.ptr425.i.i = getelementptr i8, ptr %match.0.i1127.i, i32 8
  br label %if.end426.i.i

if.end426.i.i:                                    ; preds = %if.else424.i.i, %if.then410.i.i
  %match.2.i.i = phi ptr [ %add.ptr423.i.i, %if.then410.i.i ], [ %add.ptr425.i.i, %if.else424.i.i ]
  %add.ptr427.i.i = getelementptr i8, ptr %op.2.i1323.i, i32 8
  br i1 %cmp367.i.i, label %if.then437.i.i, label %if.else462.i.i, !prof !35

if.then437.i.i:                                   ; preds = %if.end426.i.i
  %cmp440.i.i = icmp ugt ptr %add.ptr302.i.i, %add.ptr439.i.i
  br i1 %cmp440.i.i, label %if.then437.i.i._output_error.i.i_crit_edge, label %if.end443.i.i

if.then437.i.i._output_error.i.i_crit_edge:       ; preds = %if.then437.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i.i

if.end443.i.i:                                    ; preds = %if.then437.i.i
  %cmp444.i.i = icmp ult ptr %add.ptr427.i.i, %add.ptr438.i.i
  br i1 %cmp444.i.i, label %if.end443.i.i.do.body.i782.i.i_crit_edge, label %if.end443.i.i.if.end451.i.i_crit_edge

if.end443.i.i.if.end451.i.i_crit_edge:            ; preds = %if.end443.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end451.i.i

if.end443.i.i.do.body.i782.i.i_crit_edge:         ; preds = %if.end443.i.i
  br label %do.body.i782.i.i

do.body.i782.i.i:                                 ; preds = %do.body.i782.i.i.do.body.i782.i.i_crit_edge, %if.end443.i.i.do.body.i782.i.i_crit_edge
  %d.0.i774.i.i = phi ptr [ %add.ptr.i779.i.i, %do.body.i782.i.i.do.body.i782.i.i_crit_edge ], [ %add.ptr427.i.i, %if.end443.i.i.do.body.i782.i.i_crit_edge ]
  %s.0.i775.i.i = phi ptr [ %add.ptr1.i780.i.i, %do.body.i782.i.i.do.body.i782.i.i_crit_edge ], [ %match.2.i.i, %if.end443.i.i.do.body.i782.i.i_crit_edge ]
  %76 = ptrtoint ptr %s.0.i775.i.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %s.0.val.i776.i.i = load i32, ptr %s.0.i775.i.i, align 1
  %77 = getelementptr i8, ptr %s.0.i775.i.i, i32 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %s.0.val5.i777.i.i = load i32, ptr %77, align 1
  %79 = ptrtoint ptr %d.0.i774.i.i to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %s.0.val.i776.i.i, ptr %d.0.i774.i.i, align 1
  %add.ptr8.i.i778.i.i = getelementptr i32, ptr %d.0.i774.i.i, i32 1
  %80 = ptrtoint ptr %add.ptr8.i.i778.i.i to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %s.0.val5.i777.i.i, ptr %add.ptr8.i.i778.i.i, align 1
  %add.ptr.i779.i.i = getelementptr i8, ptr %d.0.i774.i.i, i32 8
  %add.ptr1.i780.i.i = getelementptr i8, ptr %s.0.i775.i.i, i32 8
  %cmp.i781.i.i = icmp ult ptr %add.ptr.i779.i.i, %add.ptr438.i.i
  br i1 %cmp.i781.i.i, label %do.body.i782.i.i.do.body.i782.i.i_crit_edge, label %LZ4_wildCopy.exit783.i.i

do.body.i782.i.i.do.body.i782.i.i_crit_edge:      ; preds = %do.body.i782.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i782.i.i

LZ4_wildCopy.exit783.i.i:                         ; preds = %do.body.i782.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.ptr.rhs.cast448.i.i = ptrtoint ptr %add.ptr427.i.i to i32
  %sub.ptr.sub449.i.i = sub i32 %sub.ptr.lhs.cast447.i.i, %sub.ptr.rhs.cast448.i.i
  %add.ptr450.i.i = getelementptr i8, ptr %match.2.i.i, i32 %sub.ptr.sub449.i.i
  br label %if.end451.i.i

if.end451.i.i:                                    ; preds = %LZ4_wildCopy.exit783.i.i, %if.end443.i.i.if.end451.i.i_crit_edge
  %match.3.i.i = phi ptr [ %add.ptr450.i.i, %LZ4_wildCopy.exit783.i.i ], [ %match.2.i.i, %if.end443.i.i.if.end451.i.i_crit_edge ]
  %op.7.i.i = phi ptr [ %add.ptr438.i.i, %LZ4_wildCopy.exit783.i.i ], [ %add.ptr427.i.i, %if.end443.i.i.if.end451.i.i_crit_edge ]
  %cmp453843.i.i = icmp ult ptr %op.7.i.i, %add.ptr302.i.i
  br i1 %cmp453843.i.i, label %if.end451.i.i.while.body455.i.i_crit_edge, label %if.end451.i.i.while.cond.i.i.backedge_crit_edge

if.end451.i.i.while.cond.i.i.backedge_crit_edge:  ; preds = %if.end451.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.i.backedge

if.end451.i.i.while.body455.i.i_crit_edge:        ; preds = %if.end451.i.i
  br label %while.body455.i.i

while.body455.i.i:                                ; preds = %while.body455.i.i.while.body455.i.i_crit_edge, %if.end451.i.i.while.body455.i.i_crit_edge
  %op.8845.i.i = phi ptr [ %incdec.ptr457.i.i, %while.body455.i.i.while.body455.i.i_crit_edge ], [ %op.7.i.i, %if.end451.i.i.while.body455.i.i_crit_edge ]
  %match.4844.i.i = phi ptr [ %incdec.ptr456.i.i, %while.body455.i.i.while.body455.i.i_crit_edge ], [ %match.3.i.i, %if.end451.i.i.while.body455.i.i_crit_edge ]
  %incdec.ptr456.i.i = getelementptr i8, ptr %match.4844.i.i, i32 1
  %81 = ptrtoint ptr %match.4844.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %match.4844.i.i, align 1
  %incdec.ptr457.i.i = getelementptr i8, ptr %op.8845.i.i, i32 1
  %83 = ptrtoint ptr %op.8845.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %op.8845.i.i, align 1
  %cmp453.i.i = icmp ult ptr %incdec.ptr457.i.i, %add.ptr302.i.i
  br i1 %cmp453.i.i, label %while.body455.i.i.while.body455.i.i_crit_edge, label %while.body455.i.i.while.cond.i.i.backedge_crit_edge

while.body455.i.i.while.cond.i.i.backedge_crit_edge: ; preds = %while.body455.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.i.backedge

while.body455.i.i.while.body455.i.i_crit_edge:    ; preds = %while.body455.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body455.i.i

if.else462.i.i:                                   ; preds = %if.end426.i.i
  %84 = ptrtoint ptr %match.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %match.2.val.i.i = load i32, ptr %match.2.i.i, align 1
  %85 = getelementptr i8, ptr %match.2.i.i, i32 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %match.2.val772.i.i = load i32, ptr %85, align 1
  %87 = ptrtoint ptr %add.ptr427.i.i to i32
  call void @__asan_storeN_noabort(i32 %87, i32 4)
  store i32 %match.2.val.i.i, ptr %add.ptr427.i.i, align 1
  %add.ptr8.i784.i.i = getelementptr i8, ptr %op.2.i1323.i, i32 12
  %88 = ptrtoint ptr %add.ptr8.i784.i.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %match.2.val772.i.i, ptr %add.ptr8.i784.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add295.i.i)
  %cmp463.i.i = icmp ugt i32 %add295.i.i, 16
  br i1 %cmp463.i.i, label %if.then465.i.i, label %if.else462.i.i.while.cond.i.i.backedge_crit_edge

if.else462.i.i.while.cond.i.i.backedge_crit_edge: ; preds = %if.else462.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.i.backedge

while.cond.i.i.backedge:                          ; preds = %do.body.i793.i.i.while.cond.i.i.backedge_crit_edge, %if.else462.i.i.while.cond.i.i.backedge_crit_edge, %while.body455.i.i.while.cond.i.i.backedge_crit_edge, %if.end451.i.i.while.cond.i.i.backedge_crit_edge, %if.else358.i.i, %while.body355.i.i.while.cond.i.i.backedge_crit_edge, %if.then350.i.i.while.cond.i.i.backedge_crit_edge, %if.then331.i.i, %if.then97.i.i
  %op.0.i.i.be = phi ptr [ %add.ptr302.i.i, %if.else462.i.i.while.cond.i.i.backedge_crit_edge ], [ %add.ptr302.i.i, %if.end451.i.i.while.cond.i.i.backedge_crit_edge ], [ %add.ptr344.i.i, %if.then350.i.i.while.cond.i.i.backedge_crit_edge ], [ %add.ptr302.i.i, %if.then331.i.i ], [ %add.ptr302.i.i, %if.else358.i.i ], [ %add.ptr104.i.i, %if.then97.i.i ], [ %add.ptr302.i.i, %while.body355.i.i.while.cond.i.i.backedge_crit_edge ], [ %add.ptr302.i.i, %while.body455.i.i.while.cond.i.i.backedge_crit_edge ], [ %add.ptr302.i.i, %do.body.i793.i.i.while.cond.i.i.backedge_crit_edge ]
  %ip.0.i.i.be = phi ptr [ %ip.7.i.i, %if.else462.i.i.while.cond.i.i.backedge_crit_edge ], [ %ip.7.i.i, %if.end451.i.i.while.cond.i.i.backedge_crit_edge ], [ %ip.7.i.i, %if.then350.i.i.while.cond.i.i.backedge_crit_edge ], [ %ip.7.i.i, %if.then331.i.i ], [ %ip.7.i.i, %if.else358.i.i ], [ %add.ptr84.i.i, %if.then97.i.i ], [ %ip.7.i.i, %while.body355.i.i.while.cond.i.i.backedge_crit_edge ], [ %ip.7.i.i, %while.body455.i.i.while.cond.i.i.backedge_crit_edge ], [ %ip.7.i.i, %do.body.i793.i.i.while.cond.i.i.backedge_crit_edge ]
  br label %while.cond.i.i

if.then465.i.i:                                   ; preds = %if.else462.i.i
  %add.ptr466.i.i = getelementptr i8, ptr %op.2.i1323.i, i32 16
  br label %do.body.i793.i.i

do.body.i793.i.i:                                 ; preds = %do.body.i793.i.i.do.body.i793.i.i_crit_edge, %if.then465.i.i
  %d.0.i785.i.i = phi ptr [ %add.ptr466.i.i, %if.then465.i.i ], [ %add.ptr.i790.i.i, %do.body.i793.i.i.do.body.i793.i.i_crit_edge ]
  %match.2.pn.i.i = phi ptr [ %match.2.i.i, %if.then465.i.i ], [ %s.0.i786.i.i, %do.body.i793.i.i.do.body.i793.i.i_crit_edge ]
  %s.0.i786.i.i = getelementptr i8, ptr %match.2.pn.i.i, i32 8
  %89 = ptrtoint ptr %s.0.i786.i.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %s.0.val.i787.i.i = load i32, ptr %s.0.i786.i.i, align 1
  %90 = getelementptr i8, ptr %match.2.pn.i.i, i32 12
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %s.0.val5.i788.i.i = load i32, ptr %90, align 1
  %92 = ptrtoint ptr %d.0.i785.i.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %s.0.val.i787.i.i, ptr %d.0.i785.i.i, align 1
  %add.ptr8.i.i789.i.i = getelementptr i32, ptr %d.0.i785.i.i, i32 1
  %93 = ptrtoint ptr %add.ptr8.i.i789.i.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %s.0.val5.i788.i.i, ptr %add.ptr8.i.i789.i.i, align 1
  %add.ptr.i790.i.i = getelementptr i8, ptr %d.0.i785.i.i, i32 8
  %cmp.i792.i.i = icmp ult ptr %add.ptr.i790.i.i, %add.ptr302.i.i
  br i1 %cmp.i792.i.i, label %do.body.i793.i.i.do.body.i793.i.i_crit_edge, label %do.body.i793.i.i.while.cond.i.i.backedge_crit_edge

do.body.i793.i.i.while.cond.i.i.backedge_crit_edge: ; preds = %do.body.i793.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.i.backedge

do.body.i793.i.i.do.body.i793.i.i_crit_edge:      ; preds = %do.body.i793.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i793.i.i

_output_error.i.i:                                ; preds = %if.then437.i.i._output_error.i.i_crit_edge, %if.then301.i.i._output_error.i.i_crit_edge, %cleanup291.i.i._output_error.i.i_crit_edge, %do.body263.i.i._output_error.i.i_crit_edge, %_copy_match.i.thread.i._output_error.i.i_crit_edge, %_copy_match.i.i._output_error.i.i_crit_edge, %if.then195.i.i._output_error.i.i_crit_edge, %do.end.i.i._output_error.i.i_crit_edge, %cond.end116.i.i._output_error.i.i_crit_edge
  %ip.8826.i.i = phi ptr [ %ip.3.i.i, %if.then195.i.i._output_error.i.i_crit_edge ], [ %incdec.ptr264.i.i, %do.body263.i.i._output_error.i.i_crit_edge ], [ %incdec.ptr264.i.i, %cleanup291.i.i._output_error.i.i_crit_edge ], [ %ip.7.i.i, %if.then437.i.i._output_error.i.i_crit_edge ], [ %incdec.ptr.i.i, %cond.end116.i.i._output_error.i.i_crit_edge ], [ %incdec.ptr127.i.i, %do.end.i.i._output_error.i.i_crit_edge ], [ %ip.5.i.i, %_copy_match.i.i._output_error.i.i_crit_edge ], [ %add.ptr84.i.i, %_copy_match.i.thread.i._output_error.i.i_crit_edge ], [ %ip.7.i.i, %if.then301.i.i._output_error.i.i_crit_edge ]
  %sub.ptr.lhs.cast486.i.i = ptrtoint ptr %ip.8826.i.i to i32
  %sub.ptr.rhs.cast487.i.i = ptrtoint ptr %source to i32
  %94 = xor i32 %sub.ptr.lhs.cast486.i.i, -1
  %sub490.i.i = add i32 %94, %sub.ptr.rhs.cast487.i.i
  br label %if.end21

if.end21:                                         ; preds = %_output_error.i.i, %if.end225.thread.i.i, %if.then13, %if.then9
  %result.0 = phi i32 [ %call10, %if.then9 ], [ %call15, %if.then13 ], [ %sub490.i.i, %_output_error.i.i ], [ %sub.ptr.sub481.i.i, %if.end225.thread.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %result.0)
  %cmp22 = icmp slt i32 %result.0, 1
  br i1 %cmp22, label %if.end21.cleanup_crit_edge, label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  %95 = ptrtoint ptr %prefixSize to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %prefixSize, align 4
  %add = add i32 %96, %result.0
  store i32 %add, ptr %prefixSize, align 4
  %97 = ptrtoint ptr %prefixEnd4 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prefixEnd4, align 4
  %add.ptr27 = getelementptr i8, ptr %98, i32 %result.0
  store ptr %add.ptr27, ptr %prefixEnd4, align 4
  br label %cleanup

if.else28:                                        ; preds = %if.else
  %extDictSize30 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %LZ4_streamDecode, i32 0, i32 1
  %99 = ptrtoint ptr %extDictSize30 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %1, ptr %extDictSize30, align 4
  %idx.neg = sub i32 0, %1
  %add.ptr33 = getelementptr i8, ptr %5, i32 %idx.neg
  %100 = ptrtoint ptr %LZ4_streamDecode to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %add.ptr33, ptr %LZ4_streamDecode, align 4
  %call37 = tail call i32 @LZ4_decompress_safe_forceExtDict(ptr noundef %source, ptr noundef %dest, i32 noundef %compressedSize, i32 noundef %maxOutputSize, ptr noundef %add.ptr33, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 1
  br i1 %cmp38, label %if.else28.cleanup_crit_edge, label %if.end40

if.else28.cleanup_crit_edge:                      ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end40:                                         ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #5
  %101 = ptrtoint ptr %prefixSize to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %call37, ptr %prefixSize, align 4
  %add.ptr42 = getelementptr i8, ptr %dest, i32 %call37
  %102 = ptrtoint ptr %prefixEnd4 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %add.ptr42, ptr %prefixEnd4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.else28.cleanup_crit_edge, %if.end24, %if.end21.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %land.rhs20.i.i, %if.then.i.i.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %result.0, %if.end21.cleanup_crit_edge ], [ %call37, %if.else28.cleanup_crit_edge ], [ %call, %if.end ], [ %result.0, %if.end24 ], [ %call37, %if.end40 ], [ -1, %if.end.i.i.cleanup_crit_edge ], [ %phi.cast.i.i, %land.rhs20.i.i ], [ -1, %if.then.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @LZ4_decompress_safe_withPrefix64k(ptr noundef %source, ptr noundef %dest, i32 noundef %compressedSize, i32 noundef %maxOutputSize) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dest, i32 -65536
  %add.ptr.i = getelementptr i8, ptr %source, i32 %compressedSize
  %add.ptr1.i = getelementptr i8, ptr %dest, i32 %maxOutputSize
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i, i32 -14
  %add.ptr7.i = getelementptr i8, ptr %add.ptr6.i, i32 -2
  %add.ptr11.i = getelementptr i8, ptr %add.ptr1.i, i32 -14
  %add.ptr12.i = getelementptr i8, ptr %add.ptr11.i, i32 -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxOutputSize)
  %cmp14.i.not = icmp eq i32 %maxOutputSize, 0
  br i1 %cmp14.i.not, label %if.then.i, label %if.end.i, !prof !34

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %compressedSize)
  %cmp18.i = icmp eq i32 %compressedSize, 1
  br i1 %cmp18.i, label %land.rhs20.i, label %if.then.i.LZ4_decompress_generic.exit_crit_edge

if.then.i.LZ4_decompress_generic.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %LZ4_decompress_generic.exit

land.rhs20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %source, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp22.i = icmp ne i8 %1, 0
  %phi.cast.i = sext i1 %cmp22.i to i32
  br label %LZ4_decompress_generic.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %compressedSize)
  %cmp45.i.not = icmp eq i32 %compressedSize, 0
  br i1 %cmp45.i.not, label %if.end.i.LZ4_decompress_generic.exit_crit_edge, label %while.cond.preheader.i, !prof !34

if.end.i.LZ4_decompress_generic.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %LZ4_decompress_generic.exit

while.cond.preheader.i:                           ; preds = %if.end.i
  %add.ptr112.i = getelementptr i8, ptr %add.ptr.i, i32 -15
  %add.ptr181.i = getelementptr i8, ptr %add.ptr1.i, i32 -12
  %add.ptr186.i = getelementptr i8, ptr %add.ptr.i, i32 -8
  %add.ptr268.i = getelementptr i8, ptr %add.ptr.i, i32 -5
  %add.ptr438.i = getelementptr i8, ptr %add.ptr1.i, i32 -7
  %add.ptr439.i = getelementptr i8, ptr %add.ptr1.i, i32 -5
  %sub.ptr.lhs.cast447.i = ptrtoint ptr %add.ptr438.i to i32
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %while.cond.preheader.i
  %op.0.i = phi ptr [ %dest, %while.cond.preheader.i ], [ %op.0.i.be, %while.cond.i.backedge ]
  %ip.0.i = phi ptr [ %source, %while.cond.preheader.i ], [ %ip.0.i.be, %while.cond.i.backedge ]
  %incdec.ptr.i = getelementptr i8, ptr %ip.0.i, i32 1
  %2 = ptrtoint ptr %ip.0.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ip.0.i, align 1
  %conv55.i = zext i8 %3 to i32
  %shr.i = lshr i32 %conv55.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr.i)
  %cond.i = icmp eq i32 %shr.i, 15
  br i1 %cond.i, label %cond.end116.i, label %cond.true63.critedge.i

cond.true63.critedge.i:                           ; preds = %while.cond.i
  %cmp64.i = icmp uge ptr %incdec.ptr.i, %add.ptr7.i
  %cmp68.i = icmp ugt ptr %op.0.i, %add.ptr12.i
  %tobool70.not.i = or i1 %cmp68.i, %cmp64.i
  br i1 %tobool70.not.i, label %cond.true63.critedge.i.if.end174.i_crit_edge, label %if.then77.i, !prof !35

cond.true63.critedge.i.if.end174.i_crit_edge:     ; preds = %cond.true63.critedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end174.i

if.then77.i:                                      ; preds = %cond.true63.critedge.i
  %4 = call ptr @memcpy(ptr %op.0.i, ptr %incdec.ptr.i, i32 16)
  %add.ptr80.i = getelementptr i8, ptr %op.0.i, i32 %shr.i
  %add.ptr81.i = getelementptr i8, ptr %incdec.ptr.i, i32 %shr.i
  %and82.i = and i32 %conv55.i, 15
  %5 = ptrtoint ptr %add.ptr81.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %add.ptr81.val.i = load i16, ptr %add.ptr81.i, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %add.ptr81.val.i) #3
  %conv83.i = zext i16 %6 to i32
  %add.ptr84.i = getelementptr i8, ptr %add.ptr81.i, i32 2
  %idx.neg85.i = sub nsw i32 0, %conv83.i
  %add.ptr86.i = getelementptr i8, ptr %add.ptr80.i, i32 %idx.neg85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and82.i)
  %cmp87.not.i = icmp eq i32 %and82.i, 15
  br i1 %cmp87.not.i, label %_copy_match.i.thread, label %land.lhs.true89.i

land.lhs.true89.i:                                ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %6)
  %cmp90.i = icmp ult i16 %6, 8
  br i1 %cmp90.i, label %land.lhs.true89.i._copy_match.i_crit_edge, label %if.then97.i

land.lhs.true89.i._copy_match.i_crit_edge:        ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_copy_match.i

if.then97.i:                                      ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %add.ptr86.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %add.ptr86.i, align 1
  %9 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %add.ptr80.i, align 1
  %add.ptr100.i = getelementptr i8, ptr %add.ptr80.i, i32 8
  %add.ptr101.i = getelementptr i8, ptr %add.ptr86.i, i32 8
  %10 = ptrtoint ptr %add.ptr101.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %add.ptr101.i, align 1
  %12 = ptrtoint ptr %add.ptr100.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %add.ptr100.i, align 1
  %add.ptr102.i = getelementptr i8, ptr %add.ptr80.i, i32 16
  %add.ptr103.i = getelementptr i8, ptr %add.ptr86.i, i32 16
  %13 = ptrtoint ptr %add.ptr103.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %add.ptr103.i, align 1
  %15 = ptrtoint ptr %add.ptr102.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %add.ptr102.i, align 1
  %add.i = add nuw nsw i32 %and82.i, 4
  %add.ptr104.i = getelementptr i8, ptr %add.ptr80.i, i32 %add.i
  br label %while.cond.i.backedge

cond.end116.i:                                    ; preds = %while.cond.i
  %cmp113.not.i = icmp ult ptr %incdec.ptr.i, %add.ptr112.i
  br i1 %cmp113.not.i, label %cond.end116.i.do.body.i_crit_edge, label %cond.end116.i._output_error.i_crit_edge, !prof !36

cond.end116.i._output_error.i_crit_edge:          ; preds = %cond.end116.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

cond.end116.i.do.body.i_crit_edge:                ; preds = %cond.end116.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %cond.end116.i.do.body.i_crit_edge
  %length.0.i = phi i32 [ %add129.i, %do.body.i.do.body.i_crit_edge ], [ 15, %cond.end116.i.do.body.i_crit_edge ]
  %ip.1.i = phi ptr [ %incdec.ptr127.i, %do.body.i.do.body.i_crit_edge ], [ %incdec.ptr.i, %cond.end116.i.do.body.i_crit_edge ]
  %incdec.ptr127.i = getelementptr i8, ptr %ip.1.i, i32 1
  %16 = ptrtoint ptr %ip.1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ip.1.i, align 1
  %conv128.i = zext i8 %17 to i32
  %add129.i = add i32 %length.0.i, %conv128.i
  %cmp133.i = icmp ult ptr %incdec.ptr127.i, %add.ptr112.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp144.i = icmp eq i8 %17, -1
  %and146835.i = and i1 %cmp144.i, %cmp133.i
  br i1 %and146835.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %18 = ptrtoint ptr %op.0.i to i32
  %19 = xor i32 %18, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add129.i, i32 %19)
  %cmp151.i = icmp ugt i32 %add129.i, %19
  %20 = ptrtoint ptr %incdec.ptr127.i to i32
  %21 = xor i32 %20, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add129.i, i32 %21)
  %cmp164.i = icmp ugt i32 %add129.i, %21
  %or.cond = or i1 %cmp151.i, %cmp164.i
  br i1 %or.cond, label %do.end.i._output_error.i_crit_edge, label %do.end.i.if.end174.i_crit_edge, !prof !37

do.end.i.if.end174.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end174.i

do.end.i._output_error.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end174.i:                                      ; preds = %do.end.i.if.end174.i_crit_edge, %cond.true63.critedge.i.if.end174.i_crit_edge
  %length.2.i = phi i32 [ %shr.i, %cond.true63.critedge.i.if.end174.i_crit_edge ], [ %add129.i, %do.end.i.if.end174.i_crit_edge ]
  %ip.3.i = phi ptr [ %incdec.ptr.i, %cond.true63.critedge.i.if.end174.i_crit_edge ], [ %incdec.ptr127.i, %do.end.i.if.end174.i_crit_edge ]
  %add.ptr175.i = getelementptr i8, ptr %op.0.i, i32 %length.2.i
  %cmp182.i = icmp ugt ptr %add.ptr175.i, %add.ptr181.i
  %add.ptr185.i = getelementptr i8, ptr %ip.3.i, i32 %length.2.i
  %cmp187.i = icmp ugt ptr %add.ptr185.i, %add.ptr186.i
  %or.cond754.i = or i1 %cmp182.i, %cmp187.i
  br i1 %or.cond754.i, label %if.then195.i, label %if.end174.i.do.body.i.i_crit_edge

if.end174.i.do.body.i.i_crit_edge:                ; preds = %if.end174.i
  br label %do.body.i.i

if.then195.i:                                     ; preds = %if.end174.i
  %cmp218.not.i = icmp ne ptr %add.ptr185.i, %add.ptr.i
  %cmp221.i = icmp ugt ptr %add.ptr175.i, %add.ptr1.i
  %or.cond759.i = select i1 %cmp218.not.i, i1 true, i1 %cmp221.i
  br i1 %or.cond759.i, label %if.then195.i._output_error.i_crit_edge, label %if.end225.thread.i

if.then195.i._output_error.i_crit_edge:           ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end225.thread.i:                               ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #5
  %22 = call ptr @memmove(ptr %op.0.i, ptr %ip.3.i, i32 %length.2.i)
  %sub.ptr.lhs.cast479.i = ptrtoint ptr %add.ptr175.i to i32
  %sub.ptr.rhs.cast480.i = ptrtoint ptr %dest to i32
  %sub.ptr.sub481.i = sub i32 %sub.ptr.lhs.cast479.i, %sub.ptr.rhs.cast480.i
  br label %LZ4_decompress_generic.exit

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end174.i.do.body.i.i_crit_edge
  %d.0.i.i = phi ptr [ %add.ptr.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %op.0.i, %if.end174.i.do.body.i.i_crit_edge ]
  %s.0.i.i = phi ptr [ %add.ptr1.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %ip.3.i, %if.end174.i.do.body.i.i_crit_edge ]
  %23 = ptrtoint ptr %s.0.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %s.0.val.i.i = load i32, ptr %s.0.i.i, align 1
  %24 = getelementptr i8, ptr %s.0.i.i, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %s.0.val5.i.i = load i32, ptr %24, align 1
  %26 = ptrtoint ptr %d.0.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %s.0.val.i.i, ptr %d.0.i.i, align 1
  %add.ptr8.i.i.i = getelementptr i32, ptr %d.0.i.i, i32 1
  %27 = ptrtoint ptr %add.ptr8.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %s.0.val5.i.i, ptr %add.ptr8.i.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %d.0.i.i, i32 8
  %add.ptr1.i.i = getelementptr i8, ptr %s.0.i.i, i32 8
  %cmp.i.i = icmp ult ptr %add.ptr.i.i, %add.ptr175.i
  br i1 %cmp.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %LZ4_wildCopy.exit.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.i

LZ4_wildCopy.exit.i:                              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %add.ptr185.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %ip.4.val.i = load i16, ptr %add.ptr185.i, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %ip.4.val.i) #3
  %conv238.i = zext i16 %29 to i32
  %add.ptr239.i = getelementptr i8, ptr %add.ptr185.i, i32 2
  %idx.neg240.i = sub nsw i32 0, %conv238.i
  %add.ptr241.i = getelementptr i8, ptr %add.ptr175.i, i32 %idx.neg240.i
  %and242.i = and i32 %conv55.i, 15
  br label %_copy_match.i

_copy_match.i:                                    ; preds = %LZ4_wildCopy.exit.i, %land.lhs.true89.i._copy_match.i_crit_edge
  %length.5.i = phi i32 [ %and82.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %and242.i, %LZ4_wildCopy.exit.i ]
  %match.0.i = phi ptr [ %add.ptr86.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %add.ptr241.i, %LZ4_wildCopy.exit.i ]
  %offset.0.i = phi i32 [ %conv83.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %conv238.i, %LZ4_wildCopy.exit.i ]
  %op.2.i = phi ptr [ %add.ptr80.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %add.ptr175.i, %LZ4_wildCopy.exit.i ]
  %ip.5.i = phi ptr [ %add.ptr84.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %add.ptr239.i, %LZ4_wildCopy.exit.i ]
  %cmp246.i = icmp ult ptr %match.0.i, %add.ptr
  br i1 %cmp246.i, label %_copy_match.i._output_error.i_crit_edge, label %if.end255.i, !prof !34

_copy_match.i._output_error.i_crit_edge:          ; preds = %_copy_match.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

_copy_match.i.thread:                             ; preds = %if.then77.i
  %cmp246.i7 = icmp ult ptr %add.ptr86.i, %add.ptr
  br i1 %cmp246.i7, label %_copy_match.i.thread._output_error.i_crit_edge, label %if.end255.i.thread, !prof !34

_copy_match.i.thread._output_error.i_crit_edge:   ; preds = %_copy_match.i.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end255.i.thread:                               ; preds = %_copy_match.i.thread
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %conv83.i, ptr %add.ptr80.i, align 1
  br label %do.body263.preheader.i

if.end255.i:                                      ; preds = %_copy_match.i
  %31 = ptrtoint ptr %op.2.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %offset.0.i, ptr %op.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %length.5.i)
  %cmp259.i = icmp eq i32 %length.5.i, 15
  br i1 %cmp259.i, label %if.end255.i.do.body263.preheader.i_crit_edge, label %if.end255.i.if.end294.i_crit_edge

if.end255.i.if.end294.i_crit_edge:                ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end294.i

if.end255.i.do.body263.preheader.i_crit_edge:     ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body263.preheader.i

do.body263.preheader.i:                           ; preds = %if.end255.i.do.body263.preheader.i_crit_edge, %if.end255.i.thread
  %match.0.i926 = phi ptr [ %add.ptr86.i, %if.end255.i.thread ], [ %match.0.i, %if.end255.i.do.body263.preheader.i_crit_edge ]
  %offset.0.i1024 = phi i32 [ %conv83.i, %if.end255.i.thread ], [ %offset.0.i, %if.end255.i.do.body263.preheader.i_crit_edge ]
  %op.2.i1122 = phi ptr [ %add.ptr80.i, %if.end255.i.thread ], [ %op.2.i, %if.end255.i.do.body263.preheader.i_crit_edge ]
  %ip.5.i1320 = phi ptr [ %add.ptr84.i, %if.end255.i.thread ], [ %ip.5.i, %if.end255.i.do.body263.preheader.i_crit_edge ]
  br label %do.body263.i

do.body263.i:                                     ; preds = %if.end272.i.do.body263.i_crit_edge, %do.body263.preheader.i
  %length.6.i = phi i32 [ %add273.i, %if.end272.i.do.body263.i_crit_edge ], [ 15, %do.body263.preheader.i ]
  %ip.6.i = phi ptr [ %incdec.ptr264.i, %if.end272.i.do.body263.i_crit_edge ], [ %ip.5.i1320, %do.body263.preheader.i ]
  %incdec.ptr264.i = getelementptr i8, ptr %ip.6.i, i32 1
  %cmp269.not.i = icmp ugt ptr %incdec.ptr264.i, %add.ptr268.i
  br i1 %cmp269.not.i, label %do.body263.i._output_error.i_crit_edge, label %if.end272.i

do.body263.i._output_error.i_crit_edge:           ; preds = %do.body263.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end272.i:                                      ; preds = %do.body263.i
  %32 = ptrtoint ptr %ip.6.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ip.6.i, align 1
  %conv265.i = zext i8 %33 to i32
  %add273.i = add i32 %length.6.i, %conv265.i
  %cmp275.i = icmp eq i8 %33, -1
  br i1 %cmp275.i, label %if.end272.i.do.body263.i_crit_edge, label %cleanup291.i

if.end272.i.do.body263.i_crit_edge:               ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body263.i

cleanup291.i:                                     ; preds = %if.end272.i
  %34 = ptrtoint ptr %op.2.i1122 to i32
  %35 = xor i32 %34, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add273.i, i32 %35)
  %cmp281.i = icmp ugt i32 %add273.i, %35
  br i1 %cmp281.i, label %cleanup291.i._output_error.i_crit_edge, label %cleanup291.i.if.end294.i_crit_edge

cleanup291.i.if.end294.i_crit_edge:               ; preds = %cleanup291.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end294.i

cleanup291.i._output_error.i_crit_edge:           ; preds = %cleanup291.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end294.i:                                      ; preds = %cleanup291.i.if.end294.i_crit_edge, %if.end255.i.if.end294.i_crit_edge
  %match.0.i925 = phi ptr [ %match.0.i926, %cleanup291.i.if.end294.i_crit_edge ], [ %match.0.i, %if.end255.i.if.end294.i_crit_edge ]
  %offset.0.i1023 = phi i32 [ %offset.0.i1024, %cleanup291.i.if.end294.i_crit_edge ], [ %offset.0.i, %if.end255.i.if.end294.i_crit_edge ]
  %op.2.i1121 = phi ptr [ %op.2.i1122, %cleanup291.i.if.end294.i_crit_edge ], [ %op.2.i, %if.end255.i.if.end294.i_crit_edge ]
  %length.8.i = phi i32 [ %add273.i, %cleanup291.i.if.end294.i_crit_edge ], [ %length.5.i, %if.end255.i.if.end294.i_crit_edge ]
  %ip.7.i = phi ptr [ %incdec.ptr264.i, %cleanup291.i.if.end294.i_crit_edge ], [ %ip.5.i, %if.end255.i.if.end294.i_crit_edge ]
  %add295.i = add i32 %length.8.i, 4
  %add.ptr302.i = getelementptr i8, ptr %op.2.i1121, i32 %add295.i
  %cmp367.i = icmp ugt ptr %add.ptr302.i, %add.ptr181.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %offset.0.i1023)
  %cmp402.i = icmp ult i32 %offset.0.i1023, 8
  br i1 %cmp402.i, label %if.then410.i, label %if.else424.i, !prof !35

if.then410.i:                                     ; preds = %if.end294.i
  call void @__sanitizer_cov_trace_pc() #5
  %36 = ptrtoint ptr %match.0.i925 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %match.0.i925, align 1
  %38 = ptrtoint ptr %op.2.i1121 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %op.2.i1121, align 1
  %arrayidx412.i = getelementptr i8, ptr %match.0.i925, i32 1
  %39 = ptrtoint ptr %arrayidx412.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx412.i, align 1
  %arrayidx413.i = getelementptr i8, ptr %op.2.i1121, i32 1
  %41 = ptrtoint ptr %arrayidx413.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx413.i, align 1
  %arrayidx414.i = getelementptr i8, ptr %match.0.i925, i32 2
  %42 = ptrtoint ptr %arrayidx414.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx414.i, align 1
  %arrayidx415.i = getelementptr i8, ptr %op.2.i1121, i32 2
  %44 = ptrtoint ptr %arrayidx415.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx415.i, align 1
  %arrayidx416.i = getelementptr i8, ptr %match.0.i925, i32 3
  %45 = ptrtoint ptr %arrayidx416.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx416.i, align 1
  %arrayidx417.i = getelementptr i8, ptr %op.2.i1121, i32 3
  %47 = ptrtoint ptr %arrayidx417.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx417.i, align 1
  %arrayidx418.i = getelementptr [8 x i32], ptr @LZ4_decompress_generic.inc32table, i32 0, i32 %offset.0.i1023
  %48 = ptrtoint ptr %arrayidx418.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx418.i, align 4
  %add.ptr419.i = getelementptr i8, ptr %match.0.i925, i32 %49
  %add.ptr420.i = getelementptr i8, ptr %op.2.i1121, i32 4
  %50 = ptrtoint ptr %add.ptr419.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %add.ptr419.i, align 1
  %52 = ptrtoint ptr %add.ptr420.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %51, ptr %add.ptr420.i, align 1
  %arrayidx421.i = getelementptr [8 x i32], ptr @LZ4_decompress_generic.dec64table, i32 0, i32 %offset.0.i1023
  %53 = ptrtoint ptr %arrayidx421.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx421.i, align 4
  %idx.neg422.i = sub i32 0, %54
  %add.ptr423.i = getelementptr i8, ptr %add.ptr419.i, i32 %idx.neg422.i
  br label %if.end426.i

if.else424.i:                                     ; preds = %if.end294.i
  call void @__sanitizer_cov_trace_pc() #5
  %55 = ptrtoint ptr %match.0.i925 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %match.0.val.i = load i32, ptr %match.0.i925, align 1
  %56 = getelementptr i8, ptr %match.0.i925, i32 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %match.0.val773.i = load i32, ptr %56, align 1
  %58 = ptrtoint ptr %op.2.i1121 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %match.0.val.i, ptr %op.2.i1121, align 1
  %add.ptr8.i.i = getelementptr i32, ptr %op.2.i1121, i32 1
  %59 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %match.0.val773.i, ptr %add.ptr8.i.i, align 1
  %add.ptr425.i = getelementptr i8, ptr %match.0.i925, i32 8
  br label %if.end426.i

if.end426.i:                                      ; preds = %if.else424.i, %if.then410.i
  %match.2.i = phi ptr [ %add.ptr423.i, %if.then410.i ], [ %add.ptr425.i, %if.else424.i ]
  %add.ptr427.i = getelementptr i8, ptr %op.2.i1121, i32 8
  br i1 %cmp367.i, label %if.then437.i, label %if.else462.i, !prof !35

if.then437.i:                                     ; preds = %if.end426.i
  %cmp440.i = icmp ugt ptr %add.ptr302.i, %add.ptr439.i
  br i1 %cmp440.i, label %if.then437.i._output_error.i_crit_edge, label %if.end443.i

if.then437.i._output_error.i_crit_edge:           ; preds = %if.then437.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end443.i:                                      ; preds = %if.then437.i
  %cmp444.i = icmp ult ptr %add.ptr427.i, %add.ptr438.i
  br i1 %cmp444.i, label %if.end443.i.do.body.i782.i_crit_edge, label %if.end443.i.if.end451.i_crit_edge

if.end443.i.if.end451.i_crit_edge:                ; preds = %if.end443.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end451.i

if.end443.i.do.body.i782.i_crit_edge:             ; preds = %if.end443.i
  br label %do.body.i782.i

do.body.i782.i:                                   ; preds = %do.body.i782.i.do.body.i782.i_crit_edge, %if.end443.i.do.body.i782.i_crit_edge
  %d.0.i774.i = phi ptr [ %add.ptr.i779.i, %do.body.i782.i.do.body.i782.i_crit_edge ], [ %add.ptr427.i, %if.end443.i.do.body.i782.i_crit_edge ]
  %s.0.i775.i = phi ptr [ %add.ptr1.i780.i, %do.body.i782.i.do.body.i782.i_crit_edge ], [ %match.2.i, %if.end443.i.do.body.i782.i_crit_edge ]
  %60 = ptrtoint ptr %s.0.i775.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %s.0.val.i776.i = load i32, ptr %s.0.i775.i, align 1
  %61 = getelementptr i8, ptr %s.0.i775.i, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %s.0.val5.i777.i = load i32, ptr %61, align 1
  %63 = ptrtoint ptr %d.0.i774.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %s.0.val.i776.i, ptr %d.0.i774.i, align 1
  %add.ptr8.i.i778.i = getelementptr i32, ptr %d.0.i774.i, i32 1
  %64 = ptrtoint ptr %add.ptr8.i.i778.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %s.0.val5.i777.i, ptr %add.ptr8.i.i778.i, align 1
  %add.ptr.i779.i = getelementptr i8, ptr %d.0.i774.i, i32 8
  %add.ptr1.i780.i = getelementptr i8, ptr %s.0.i775.i, i32 8
  %cmp.i781.i = icmp ult ptr %add.ptr.i779.i, %add.ptr438.i
  br i1 %cmp.i781.i, label %do.body.i782.i.do.body.i782.i_crit_edge, label %LZ4_wildCopy.exit783.i

do.body.i782.i.do.body.i782.i_crit_edge:          ; preds = %do.body.i782.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i782.i

LZ4_wildCopy.exit783.i:                           ; preds = %do.body.i782.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.ptr.rhs.cast448.i = ptrtoint ptr %add.ptr427.i to i32
  %sub.ptr.sub449.i = sub i32 %sub.ptr.lhs.cast447.i, %sub.ptr.rhs.cast448.i
  %add.ptr450.i = getelementptr i8, ptr %match.2.i, i32 %sub.ptr.sub449.i
  br label %if.end451.i

if.end451.i:                                      ; preds = %LZ4_wildCopy.exit783.i, %if.end443.i.if.end451.i_crit_edge
  %match.3.i = phi ptr [ %add.ptr450.i, %LZ4_wildCopy.exit783.i ], [ %match.2.i, %if.end443.i.if.end451.i_crit_edge ]
  %op.7.i = phi ptr [ %add.ptr438.i, %LZ4_wildCopy.exit783.i ], [ %add.ptr427.i, %if.end443.i.if.end451.i_crit_edge ]
  %cmp453843.i = icmp ult ptr %op.7.i, %add.ptr302.i
  br i1 %cmp453843.i, label %if.end451.i.while.body455.i_crit_edge, label %if.end451.i.while.cond.i.backedge_crit_edge

if.end451.i.while.cond.i.backedge_crit_edge:      ; preds = %if.end451.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

if.end451.i.while.body455.i_crit_edge:            ; preds = %if.end451.i
  br label %while.body455.i

while.body455.i:                                  ; preds = %while.body455.i.while.body455.i_crit_edge, %if.end451.i.while.body455.i_crit_edge
  %op.8845.i = phi ptr [ %incdec.ptr457.i, %while.body455.i.while.body455.i_crit_edge ], [ %op.7.i, %if.end451.i.while.body455.i_crit_edge ]
  %match.4844.i = phi ptr [ %incdec.ptr456.i, %while.body455.i.while.body455.i_crit_edge ], [ %match.3.i, %if.end451.i.while.body455.i_crit_edge ]
  %incdec.ptr456.i = getelementptr i8, ptr %match.4844.i, i32 1
  %65 = ptrtoint ptr %match.4844.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %match.4844.i, align 1
  %incdec.ptr457.i = getelementptr i8, ptr %op.8845.i, i32 1
  %67 = ptrtoint ptr %op.8845.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %op.8845.i, align 1
  %cmp453.i = icmp ult ptr %incdec.ptr457.i, %add.ptr302.i
  br i1 %cmp453.i, label %while.body455.i.while.body455.i_crit_edge, label %while.body455.i.while.cond.i.backedge_crit_edge

while.body455.i.while.cond.i.backedge_crit_edge:  ; preds = %while.body455.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

while.body455.i.while.body455.i_crit_edge:        ; preds = %while.body455.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body455.i

if.else462.i:                                     ; preds = %if.end426.i
  %68 = ptrtoint ptr %match.2.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %match.2.val.i = load i32, ptr %match.2.i, align 1
  %69 = getelementptr i8, ptr %match.2.i, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %match.2.val772.i = load i32, ptr %69, align 1
  %71 = ptrtoint ptr %add.ptr427.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %match.2.val.i, ptr %add.ptr427.i, align 1
  %add.ptr8.i784.i = getelementptr i8, ptr %op.2.i1121, i32 12
  %72 = ptrtoint ptr %add.ptr8.i784.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 %match.2.val772.i, ptr %add.ptr8.i784.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add295.i)
  %cmp463.i = icmp ugt i32 %add295.i, 16
  br i1 %cmp463.i, label %if.then465.i, label %if.else462.i.while.cond.i.backedge_crit_edge

if.else462.i.while.cond.i.backedge_crit_edge:     ; preds = %if.else462.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %do.body.i793.i.while.cond.i.backedge_crit_edge, %if.else462.i.while.cond.i.backedge_crit_edge, %while.body455.i.while.cond.i.backedge_crit_edge, %if.end451.i.while.cond.i.backedge_crit_edge, %if.then97.i
  %op.0.i.be = phi ptr [ %add.ptr302.i, %if.else462.i.while.cond.i.backedge_crit_edge ], [ %add.ptr302.i, %if.end451.i.while.cond.i.backedge_crit_edge ], [ %add.ptr104.i, %if.then97.i ], [ %add.ptr302.i, %while.body455.i.while.cond.i.backedge_crit_edge ], [ %add.ptr302.i, %do.body.i793.i.while.cond.i.backedge_crit_edge ]
  %ip.0.i.be = phi ptr [ %ip.7.i, %if.else462.i.while.cond.i.backedge_crit_edge ], [ %ip.7.i, %if.end451.i.while.cond.i.backedge_crit_edge ], [ %add.ptr84.i, %if.then97.i ], [ %ip.7.i, %while.body455.i.while.cond.i.backedge_crit_edge ], [ %ip.7.i, %do.body.i793.i.while.cond.i.backedge_crit_edge ]
  br label %while.cond.i

if.then465.i:                                     ; preds = %if.else462.i
  %add.ptr466.i = getelementptr i8, ptr %op.2.i1121, i32 16
  br label %do.body.i793.i

do.body.i793.i:                                   ; preds = %do.body.i793.i.do.body.i793.i_crit_edge, %if.then465.i
  %d.0.i785.i = phi ptr [ %add.ptr466.i, %if.then465.i ], [ %add.ptr.i790.i, %do.body.i793.i.do.body.i793.i_crit_edge ]
  %match.2.pn.i = phi ptr [ %match.2.i, %if.then465.i ], [ %s.0.i786.i, %do.body.i793.i.do.body.i793.i_crit_edge ]
  %s.0.i786.i = getelementptr i8, ptr %match.2.pn.i, i32 8
  %73 = ptrtoint ptr %s.0.i786.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %s.0.val.i787.i = load i32, ptr %s.0.i786.i, align 1
  %74 = getelementptr i8, ptr %match.2.pn.i, i32 12
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %s.0.val5.i788.i = load i32, ptr %74, align 1
  %76 = ptrtoint ptr %d.0.i785.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %s.0.val.i787.i, ptr %d.0.i785.i, align 1
  %add.ptr8.i.i789.i = getelementptr i32, ptr %d.0.i785.i, i32 1
  %77 = ptrtoint ptr %add.ptr8.i.i789.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %s.0.val5.i788.i, ptr %add.ptr8.i.i789.i, align 1
  %add.ptr.i790.i = getelementptr i8, ptr %d.0.i785.i, i32 8
  %cmp.i792.i = icmp ult ptr %add.ptr.i790.i, %add.ptr302.i
  br i1 %cmp.i792.i, label %do.body.i793.i.do.body.i793.i_crit_edge, label %do.body.i793.i.while.cond.i.backedge_crit_edge

do.body.i793.i.while.cond.i.backedge_crit_edge:   ; preds = %do.body.i793.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

do.body.i793.i.do.body.i793.i_crit_edge:          ; preds = %do.body.i793.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i793.i

_output_error.i:                                  ; preds = %if.then437.i._output_error.i_crit_edge, %cleanup291.i._output_error.i_crit_edge, %do.body263.i._output_error.i_crit_edge, %_copy_match.i.thread._output_error.i_crit_edge, %_copy_match.i._output_error.i_crit_edge, %if.then195.i._output_error.i_crit_edge, %do.end.i._output_error.i_crit_edge, %cond.end116.i._output_error.i_crit_edge
  %ip.8826.i = phi ptr [ %ip.3.i, %if.then195.i._output_error.i_crit_edge ], [ %incdec.ptr264.i, %do.body263.i._output_error.i_crit_edge ], [ %add.ptr84.i, %_copy_match.i.thread._output_error.i_crit_edge ], [ %ip.5.i, %_copy_match.i._output_error.i_crit_edge ], [ %incdec.ptr127.i, %do.end.i._output_error.i_crit_edge ], [ %incdec.ptr.i, %cond.end116.i._output_error.i_crit_edge ], [ %ip.7.i, %if.then437.i._output_error.i_crit_edge ], [ %incdec.ptr264.i, %cleanup291.i._output_error.i_crit_edge ]
  %sub.ptr.lhs.cast486.i = ptrtoint ptr %ip.8826.i to i32
  %sub.ptr.rhs.cast487.i = ptrtoint ptr %source to i32
  %78 = xor i32 %sub.ptr.lhs.cast486.i, -1
  %sub490.i = add i32 %78, %sub.ptr.rhs.cast487.i
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %_output_error.i, %if.end225.thread.i, %if.end.i.LZ4_decompress_generic.exit_crit_edge, %land.rhs20.i, %if.then.i.LZ4_decompress_generic.exit_crit_edge
  %retval.0.i = phi i32 [ %sub490.i, %_output_error.i ], [ %sub.ptr.sub481.i, %if.end225.thread.i ], [ -1, %if.then.i.LZ4_decompress_generic.exit_crit_edge ], [ %phi.cast.i, %land.rhs20.i ], [ -1, %if.end.i.LZ4_decompress_generic.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @LZ4_decompress_safe_withSmallPrefix(ptr noundef %source, ptr noundef %dest, i32 noundef %compressedSize, i32 noundef %maxOutputSize, i32 noundef %prefixSize) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %idx.neg = sub i32 0, %prefixSize
  %add.ptr = getelementptr i8, ptr %dest, i32 %idx.neg
  %add.ptr.i = getelementptr i8, ptr %source, i32 %compressedSize
  %add.ptr1.i = getelementptr i8, ptr %dest, i32 %maxOutputSize
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i, i32 -14
  %add.ptr7.i = getelementptr i8, ptr %add.ptr6.i, i32 -2
  %add.ptr11.i = getelementptr i8, ptr %add.ptr1.i, i32 -14
  %add.ptr12.i = getelementptr i8, ptr %add.ptr11.i, i32 -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxOutputSize)
  %cmp14.i.not = icmp eq i32 %maxOutputSize, 0
  br i1 %cmp14.i.not, label %if.then.i, label %if.end.i, !prof !34

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %compressedSize)
  %cmp18.i = icmp eq i32 %compressedSize, 1
  br i1 %cmp18.i, label %land.rhs20.i, label %if.then.i.LZ4_decompress_generic.exit_crit_edge

if.then.i.LZ4_decompress_generic.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %LZ4_decompress_generic.exit

land.rhs20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %source, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp22.i = icmp ne i8 %1, 0
  %phi.cast.i = sext i1 %cmp22.i to i32
  br label %LZ4_decompress_generic.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %compressedSize)
  %cmp45.i.not = icmp eq i32 %compressedSize, 0
  br i1 %cmp45.i.not, label %if.end.i.LZ4_decompress_generic.exit_crit_edge, label %while.cond.preheader.i, !prof !34

if.end.i.LZ4_decompress_generic.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %LZ4_decompress_generic.exit

while.cond.preheader.i:                           ; preds = %if.end.i
  %add.ptr112.i = getelementptr i8, ptr %add.ptr.i, i32 -15
  %add.ptr181.i = getelementptr i8, ptr %add.ptr1.i, i32 -12
  %add.ptr186.i = getelementptr i8, ptr %add.ptr.i, i32 -8
  %add.ptr268.i = getelementptr i8, ptr %add.ptr.i, i32 -5
  %add.ptr438.i = getelementptr i8, ptr %add.ptr1.i, i32 -7
  %add.ptr439.i = getelementptr i8, ptr %add.ptr1.i, i32 -5
  %sub.ptr.lhs.cast447.i = ptrtoint ptr %add.ptr438.i to i32
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %while.cond.preheader.i
  %op.0.i = phi ptr [ %dest, %while.cond.preheader.i ], [ %op.0.i.be, %while.cond.i.backedge ]
  %ip.0.i = phi ptr [ %source, %while.cond.preheader.i ], [ %ip.0.i.be, %while.cond.i.backedge ]
  %incdec.ptr.i = getelementptr i8, ptr %ip.0.i, i32 1
  %2 = ptrtoint ptr %ip.0.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ip.0.i, align 1
  %conv55.i = zext i8 %3 to i32
  %shr.i = lshr i32 %conv55.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr.i)
  %cond.i = icmp eq i32 %shr.i, 15
  br i1 %cond.i, label %cond.end116.i, label %cond.true63.critedge.i

cond.true63.critedge.i:                           ; preds = %while.cond.i
  %cmp64.i = icmp uge ptr %incdec.ptr.i, %add.ptr7.i
  %cmp68.i = icmp ugt ptr %op.0.i, %add.ptr12.i
  %tobool70.not.i = or i1 %cmp68.i, %cmp64.i
  br i1 %tobool70.not.i, label %cond.true63.critedge.i.if.end174.i_crit_edge, label %if.then77.i, !prof !35

cond.true63.critedge.i.if.end174.i_crit_edge:     ; preds = %cond.true63.critedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end174.i

if.then77.i:                                      ; preds = %cond.true63.critedge.i
  %4 = call ptr @memcpy(ptr %op.0.i, ptr %incdec.ptr.i, i32 16)
  %add.ptr80.i = getelementptr i8, ptr %op.0.i, i32 %shr.i
  %add.ptr81.i = getelementptr i8, ptr %incdec.ptr.i, i32 %shr.i
  %and82.i = and i32 %conv55.i, 15
  %5 = ptrtoint ptr %add.ptr81.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %add.ptr81.val.i = load i16, ptr %add.ptr81.i, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %add.ptr81.val.i) #3
  %conv83.i = zext i16 %6 to i32
  %add.ptr84.i = getelementptr i8, ptr %add.ptr81.i, i32 2
  %idx.neg85.i = sub nsw i32 0, %conv83.i
  %add.ptr86.i = getelementptr i8, ptr %add.ptr80.i, i32 %idx.neg85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and82.i)
  %cmp87.not.i = icmp eq i32 %and82.i, 15
  br i1 %cmp87.not.i, label %_copy_match.i.thread, label %land.lhs.true89.i

land.lhs.true89.i:                                ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %6)
  %cmp90.i = icmp ult i16 %6, 8
  %cmp95.not.i = icmp ult ptr %add.ptr86.i, %add.ptr
  %or.cond.i = select i1 %cmp90.i, i1 true, i1 %cmp95.not.i
  br i1 %or.cond.i, label %land.lhs.true89.i._copy_match.i_crit_edge, label %if.then97.i

land.lhs.true89.i._copy_match.i_crit_edge:        ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_copy_match.i

if.then97.i:                                      ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %add.ptr86.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %add.ptr86.i, align 1
  %9 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %add.ptr80.i, align 1
  %add.ptr100.i = getelementptr i8, ptr %add.ptr80.i, i32 8
  %add.ptr101.i = getelementptr i8, ptr %add.ptr86.i, i32 8
  %10 = ptrtoint ptr %add.ptr101.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %add.ptr101.i, align 1
  %12 = ptrtoint ptr %add.ptr100.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %add.ptr100.i, align 1
  %add.ptr102.i = getelementptr i8, ptr %add.ptr80.i, i32 16
  %add.ptr103.i = getelementptr i8, ptr %add.ptr86.i, i32 16
  %13 = ptrtoint ptr %add.ptr103.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %add.ptr103.i, align 1
  %15 = ptrtoint ptr %add.ptr102.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %add.ptr102.i, align 1
  %add.i = add nuw nsw i32 %and82.i, 4
  %add.ptr104.i = getelementptr i8, ptr %add.ptr80.i, i32 %add.i
  br label %while.cond.i.backedge

cond.end116.i:                                    ; preds = %while.cond.i
  %cmp113.not.i = icmp ult ptr %incdec.ptr.i, %add.ptr112.i
  br i1 %cmp113.not.i, label %cond.end116.i.do.body.i_crit_edge, label %cond.end116.i._output_error.i_crit_edge, !prof !36

cond.end116.i._output_error.i_crit_edge:          ; preds = %cond.end116.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

cond.end116.i.do.body.i_crit_edge:                ; preds = %cond.end116.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %cond.end116.i.do.body.i_crit_edge
  %length.0.i = phi i32 [ %add129.i, %do.body.i.do.body.i_crit_edge ], [ 15, %cond.end116.i.do.body.i_crit_edge ]
  %ip.1.i = phi ptr [ %incdec.ptr127.i, %do.body.i.do.body.i_crit_edge ], [ %incdec.ptr.i, %cond.end116.i.do.body.i_crit_edge ]
  %incdec.ptr127.i = getelementptr i8, ptr %ip.1.i, i32 1
  %16 = ptrtoint ptr %ip.1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ip.1.i, align 1
  %conv128.i = zext i8 %17 to i32
  %add129.i = add i32 %length.0.i, %conv128.i
  %cmp133.i = icmp ult ptr %incdec.ptr127.i, %add.ptr112.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp144.i = icmp eq i8 %17, -1
  %and146835.i = and i1 %cmp144.i, %cmp133.i
  br i1 %and146835.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %18 = ptrtoint ptr %op.0.i to i32
  %19 = xor i32 %18, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add129.i, i32 %19)
  %cmp151.i = icmp ugt i32 %add129.i, %19
  %20 = ptrtoint ptr %incdec.ptr127.i to i32
  %21 = xor i32 %20, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add129.i, i32 %21)
  %cmp164.i = icmp ugt i32 %add129.i, %21
  %or.cond = or i1 %cmp151.i, %cmp164.i
  br i1 %or.cond, label %do.end.i._output_error.i_crit_edge, label %do.end.i.if.end174.i_crit_edge, !prof !37

do.end.i.if.end174.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end174.i

do.end.i._output_error.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end174.i:                                      ; preds = %do.end.i.if.end174.i_crit_edge, %cond.true63.critedge.i.if.end174.i_crit_edge
  %length.2.i = phi i32 [ %shr.i, %cond.true63.critedge.i.if.end174.i_crit_edge ], [ %add129.i, %do.end.i.if.end174.i_crit_edge ]
  %ip.3.i = phi ptr [ %incdec.ptr.i, %cond.true63.critedge.i.if.end174.i_crit_edge ], [ %incdec.ptr127.i, %do.end.i.if.end174.i_crit_edge ]
  %add.ptr175.i = getelementptr i8, ptr %op.0.i, i32 %length.2.i
  %cmp182.i = icmp ugt ptr %add.ptr175.i, %add.ptr181.i
  %add.ptr185.i = getelementptr i8, ptr %ip.3.i, i32 %length.2.i
  %cmp187.i = icmp ugt ptr %add.ptr185.i, %add.ptr186.i
  %or.cond754.i = or i1 %cmp182.i, %cmp187.i
  br i1 %or.cond754.i, label %if.then195.i, label %if.end174.i.do.body.i.i_crit_edge

if.end174.i.do.body.i.i_crit_edge:                ; preds = %if.end174.i
  br label %do.body.i.i

if.then195.i:                                     ; preds = %if.end174.i
  %cmp218.not.i = icmp ne ptr %add.ptr185.i, %add.ptr.i
  %cmp221.i = icmp ugt ptr %add.ptr175.i, %add.ptr1.i
  %or.cond759.i = select i1 %cmp218.not.i, i1 true, i1 %cmp221.i
  br i1 %or.cond759.i, label %if.then195.i._output_error.i_crit_edge, label %if.end225.thread.i

if.then195.i._output_error.i_crit_edge:           ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end225.thread.i:                               ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #5
  %22 = call ptr @memmove(ptr %op.0.i, ptr %ip.3.i, i32 %length.2.i)
  %sub.ptr.lhs.cast479.i = ptrtoint ptr %add.ptr175.i to i32
  %sub.ptr.rhs.cast480.i = ptrtoint ptr %dest to i32
  %sub.ptr.sub481.i = sub i32 %sub.ptr.lhs.cast479.i, %sub.ptr.rhs.cast480.i
  br label %LZ4_decompress_generic.exit

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end174.i.do.body.i.i_crit_edge
  %d.0.i.i = phi ptr [ %add.ptr.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %op.0.i, %if.end174.i.do.body.i.i_crit_edge ]
  %s.0.i.i = phi ptr [ %add.ptr1.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %ip.3.i, %if.end174.i.do.body.i.i_crit_edge ]
  %23 = ptrtoint ptr %s.0.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %s.0.val.i.i = load i32, ptr %s.0.i.i, align 1
  %24 = getelementptr i8, ptr %s.0.i.i, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %s.0.val5.i.i = load i32, ptr %24, align 1
  %26 = ptrtoint ptr %d.0.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %s.0.val.i.i, ptr %d.0.i.i, align 1
  %add.ptr8.i.i.i = getelementptr i32, ptr %d.0.i.i, i32 1
  %27 = ptrtoint ptr %add.ptr8.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %s.0.val5.i.i, ptr %add.ptr8.i.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %d.0.i.i, i32 8
  %add.ptr1.i.i = getelementptr i8, ptr %s.0.i.i, i32 8
  %cmp.i.i = icmp ult ptr %add.ptr.i.i, %add.ptr175.i
  br i1 %cmp.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %LZ4_wildCopy.exit.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.i

LZ4_wildCopy.exit.i:                              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %add.ptr185.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %ip.4.val.i = load i16, ptr %add.ptr185.i, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %ip.4.val.i) #3
  %conv238.i = zext i16 %29 to i32
  %add.ptr239.i = getelementptr i8, ptr %add.ptr185.i, i32 2
  %idx.neg240.i = sub nsw i32 0, %conv238.i
  %add.ptr241.i = getelementptr i8, ptr %add.ptr175.i, i32 %idx.neg240.i
  %and242.i = and i32 %conv55.i, 15
  br label %_copy_match.i

_copy_match.i:                                    ; preds = %LZ4_wildCopy.exit.i, %land.lhs.true89.i._copy_match.i_crit_edge
  %length.5.i = phi i32 [ %and82.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %and242.i, %LZ4_wildCopy.exit.i ]
  %match.0.i = phi ptr [ %add.ptr86.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %add.ptr241.i, %LZ4_wildCopy.exit.i ]
  %offset.0.i = phi i32 [ %conv83.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %conv238.i, %LZ4_wildCopy.exit.i ]
  %op.2.i = phi ptr [ %add.ptr80.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %add.ptr175.i, %LZ4_wildCopy.exit.i ]
  %ip.5.i = phi ptr [ %add.ptr84.i, %land.lhs.true89.i._copy_match.i_crit_edge ], [ %add.ptr239.i, %LZ4_wildCopy.exit.i ]
  %cmp246.i = icmp ult ptr %match.0.i, %add.ptr
  br i1 %cmp246.i, label %_copy_match.i._output_error.i_crit_edge, label %if.end255.i, !prof !34

_copy_match.i._output_error.i_crit_edge:          ; preds = %_copy_match.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

_copy_match.i.thread:                             ; preds = %if.then77.i
  %cmp246.i7 = icmp ult ptr %add.ptr86.i, %add.ptr
  br i1 %cmp246.i7, label %_copy_match.i.thread._output_error.i_crit_edge, label %if.end255.i.thread, !prof !34

_copy_match.i.thread._output_error.i_crit_edge:   ; preds = %_copy_match.i.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end255.i.thread:                               ; preds = %_copy_match.i.thread
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %conv83.i, ptr %add.ptr80.i, align 1
  br label %do.body263.preheader.i

if.end255.i:                                      ; preds = %_copy_match.i
  %31 = ptrtoint ptr %op.2.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %offset.0.i, ptr %op.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %length.5.i)
  %cmp259.i = icmp eq i32 %length.5.i, 15
  br i1 %cmp259.i, label %if.end255.i.do.body263.preheader.i_crit_edge, label %if.end255.i.if.end294.i_crit_edge

if.end255.i.if.end294.i_crit_edge:                ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end294.i

if.end255.i.do.body263.preheader.i_crit_edge:     ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body263.preheader.i

do.body263.preheader.i:                           ; preds = %if.end255.i.do.body263.preheader.i_crit_edge, %if.end255.i.thread
  %match.0.i926 = phi ptr [ %add.ptr86.i, %if.end255.i.thread ], [ %match.0.i, %if.end255.i.do.body263.preheader.i_crit_edge ]
  %offset.0.i1024 = phi i32 [ %conv83.i, %if.end255.i.thread ], [ %offset.0.i, %if.end255.i.do.body263.preheader.i_crit_edge ]
  %op.2.i1122 = phi ptr [ %add.ptr80.i, %if.end255.i.thread ], [ %op.2.i, %if.end255.i.do.body263.preheader.i_crit_edge ]
  %ip.5.i1320 = phi ptr [ %add.ptr84.i, %if.end255.i.thread ], [ %ip.5.i, %if.end255.i.do.body263.preheader.i_crit_edge ]
  br label %do.body263.i

do.body263.i:                                     ; preds = %if.end272.i.do.body263.i_crit_edge, %do.body263.preheader.i
  %length.6.i = phi i32 [ %add273.i, %if.end272.i.do.body263.i_crit_edge ], [ 15, %do.body263.preheader.i ]
  %ip.6.i = phi ptr [ %incdec.ptr264.i, %if.end272.i.do.body263.i_crit_edge ], [ %ip.5.i1320, %do.body263.preheader.i ]
  %incdec.ptr264.i = getelementptr i8, ptr %ip.6.i, i32 1
  %cmp269.not.i = icmp ugt ptr %incdec.ptr264.i, %add.ptr268.i
  br i1 %cmp269.not.i, label %do.body263.i._output_error.i_crit_edge, label %if.end272.i

do.body263.i._output_error.i_crit_edge:           ; preds = %do.body263.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end272.i:                                      ; preds = %do.body263.i
  %32 = ptrtoint ptr %ip.6.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ip.6.i, align 1
  %conv265.i = zext i8 %33 to i32
  %add273.i = add i32 %length.6.i, %conv265.i
  %cmp275.i = icmp eq i8 %33, -1
  br i1 %cmp275.i, label %if.end272.i.do.body263.i_crit_edge, label %cleanup291.i

if.end272.i.do.body263.i_crit_edge:               ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body263.i

cleanup291.i:                                     ; preds = %if.end272.i
  %34 = ptrtoint ptr %op.2.i1122 to i32
  %35 = xor i32 %34, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add273.i, i32 %35)
  %cmp281.i = icmp ugt i32 %add273.i, %35
  br i1 %cmp281.i, label %cleanup291.i._output_error.i_crit_edge, label %cleanup291.i.if.end294.i_crit_edge

cleanup291.i.if.end294.i_crit_edge:               ; preds = %cleanup291.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end294.i

cleanup291.i._output_error.i_crit_edge:           ; preds = %cleanup291.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end294.i:                                      ; preds = %cleanup291.i.if.end294.i_crit_edge, %if.end255.i.if.end294.i_crit_edge
  %match.0.i925 = phi ptr [ %match.0.i926, %cleanup291.i.if.end294.i_crit_edge ], [ %match.0.i, %if.end255.i.if.end294.i_crit_edge ]
  %offset.0.i1023 = phi i32 [ %offset.0.i1024, %cleanup291.i.if.end294.i_crit_edge ], [ %offset.0.i, %if.end255.i.if.end294.i_crit_edge ]
  %op.2.i1121 = phi ptr [ %op.2.i1122, %cleanup291.i.if.end294.i_crit_edge ], [ %op.2.i, %if.end255.i.if.end294.i_crit_edge ]
  %length.8.i = phi i32 [ %add273.i, %cleanup291.i.if.end294.i_crit_edge ], [ %length.5.i, %if.end255.i.if.end294.i_crit_edge ]
  %ip.7.i = phi ptr [ %incdec.ptr264.i, %cleanup291.i.if.end294.i_crit_edge ], [ %ip.5.i, %if.end255.i.if.end294.i_crit_edge ]
  %add295.i = add i32 %length.8.i, 4
  %add.ptr302.i = getelementptr i8, ptr %op.2.i1121, i32 %add295.i
  %cmp367.i = icmp ugt ptr %add.ptr302.i, %add.ptr181.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %offset.0.i1023)
  %cmp402.i = icmp ult i32 %offset.0.i1023, 8
  br i1 %cmp402.i, label %if.then410.i, label %if.else424.i, !prof !35

if.then410.i:                                     ; preds = %if.end294.i
  call void @__sanitizer_cov_trace_pc() #5
  %36 = ptrtoint ptr %match.0.i925 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %match.0.i925, align 1
  %38 = ptrtoint ptr %op.2.i1121 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %op.2.i1121, align 1
  %arrayidx412.i = getelementptr i8, ptr %match.0.i925, i32 1
  %39 = ptrtoint ptr %arrayidx412.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx412.i, align 1
  %arrayidx413.i = getelementptr i8, ptr %op.2.i1121, i32 1
  %41 = ptrtoint ptr %arrayidx413.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx413.i, align 1
  %arrayidx414.i = getelementptr i8, ptr %match.0.i925, i32 2
  %42 = ptrtoint ptr %arrayidx414.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx414.i, align 1
  %arrayidx415.i = getelementptr i8, ptr %op.2.i1121, i32 2
  %44 = ptrtoint ptr %arrayidx415.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx415.i, align 1
  %arrayidx416.i = getelementptr i8, ptr %match.0.i925, i32 3
  %45 = ptrtoint ptr %arrayidx416.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx416.i, align 1
  %arrayidx417.i = getelementptr i8, ptr %op.2.i1121, i32 3
  %47 = ptrtoint ptr %arrayidx417.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx417.i, align 1
  %arrayidx418.i = getelementptr [8 x i32], ptr @LZ4_decompress_generic.inc32table, i32 0, i32 %offset.0.i1023
  %48 = ptrtoint ptr %arrayidx418.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx418.i, align 4
  %add.ptr419.i = getelementptr i8, ptr %match.0.i925, i32 %49
  %add.ptr420.i = getelementptr i8, ptr %op.2.i1121, i32 4
  %50 = ptrtoint ptr %add.ptr419.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %add.ptr419.i, align 1
  %52 = ptrtoint ptr %add.ptr420.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %51, ptr %add.ptr420.i, align 1
  %arrayidx421.i = getelementptr [8 x i32], ptr @LZ4_decompress_generic.dec64table, i32 0, i32 %offset.0.i1023
  %53 = ptrtoint ptr %arrayidx421.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx421.i, align 4
  %idx.neg422.i = sub i32 0, %54
  %add.ptr423.i = getelementptr i8, ptr %add.ptr419.i, i32 %idx.neg422.i
  br label %if.end426.i

if.else424.i:                                     ; preds = %if.end294.i
  call void @__sanitizer_cov_trace_pc() #5
  %55 = ptrtoint ptr %match.0.i925 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %match.0.val.i = load i32, ptr %match.0.i925, align 1
  %56 = getelementptr i8, ptr %match.0.i925, i32 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %match.0.val773.i = load i32, ptr %56, align 1
  %58 = ptrtoint ptr %op.2.i1121 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %match.0.val.i, ptr %op.2.i1121, align 1
  %add.ptr8.i.i = getelementptr i32, ptr %op.2.i1121, i32 1
  %59 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %match.0.val773.i, ptr %add.ptr8.i.i, align 1
  %add.ptr425.i = getelementptr i8, ptr %match.0.i925, i32 8
  br label %if.end426.i

if.end426.i:                                      ; preds = %if.else424.i, %if.then410.i
  %match.2.i = phi ptr [ %add.ptr423.i, %if.then410.i ], [ %add.ptr425.i, %if.else424.i ]
  %add.ptr427.i = getelementptr i8, ptr %op.2.i1121, i32 8
  br i1 %cmp367.i, label %if.then437.i, label %if.else462.i, !prof !35

if.then437.i:                                     ; preds = %if.end426.i
  %cmp440.i = icmp ugt ptr %add.ptr302.i, %add.ptr439.i
  br i1 %cmp440.i, label %if.then437.i._output_error.i_crit_edge, label %if.end443.i

if.then437.i._output_error.i_crit_edge:           ; preds = %if.then437.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end443.i:                                      ; preds = %if.then437.i
  %cmp444.i = icmp ult ptr %add.ptr427.i, %add.ptr438.i
  br i1 %cmp444.i, label %if.end443.i.do.body.i782.i_crit_edge, label %if.end443.i.if.end451.i_crit_edge

if.end443.i.if.end451.i_crit_edge:                ; preds = %if.end443.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end451.i

if.end443.i.do.body.i782.i_crit_edge:             ; preds = %if.end443.i
  br label %do.body.i782.i

do.body.i782.i:                                   ; preds = %do.body.i782.i.do.body.i782.i_crit_edge, %if.end443.i.do.body.i782.i_crit_edge
  %d.0.i774.i = phi ptr [ %add.ptr.i779.i, %do.body.i782.i.do.body.i782.i_crit_edge ], [ %add.ptr427.i, %if.end443.i.do.body.i782.i_crit_edge ]
  %s.0.i775.i = phi ptr [ %add.ptr1.i780.i, %do.body.i782.i.do.body.i782.i_crit_edge ], [ %match.2.i, %if.end443.i.do.body.i782.i_crit_edge ]
  %60 = ptrtoint ptr %s.0.i775.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %s.0.val.i776.i = load i32, ptr %s.0.i775.i, align 1
  %61 = getelementptr i8, ptr %s.0.i775.i, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %s.0.val5.i777.i = load i32, ptr %61, align 1
  %63 = ptrtoint ptr %d.0.i774.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %s.0.val.i776.i, ptr %d.0.i774.i, align 1
  %add.ptr8.i.i778.i = getelementptr i32, ptr %d.0.i774.i, i32 1
  %64 = ptrtoint ptr %add.ptr8.i.i778.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %s.0.val5.i777.i, ptr %add.ptr8.i.i778.i, align 1
  %add.ptr.i779.i = getelementptr i8, ptr %d.0.i774.i, i32 8
  %add.ptr1.i780.i = getelementptr i8, ptr %s.0.i775.i, i32 8
  %cmp.i781.i = icmp ult ptr %add.ptr.i779.i, %add.ptr438.i
  br i1 %cmp.i781.i, label %do.body.i782.i.do.body.i782.i_crit_edge, label %LZ4_wildCopy.exit783.i

do.body.i782.i.do.body.i782.i_crit_edge:          ; preds = %do.body.i782.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i782.i

LZ4_wildCopy.exit783.i:                           ; preds = %do.body.i782.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.ptr.rhs.cast448.i = ptrtoint ptr %add.ptr427.i to i32
  %sub.ptr.sub449.i = sub i32 %sub.ptr.lhs.cast447.i, %sub.ptr.rhs.cast448.i
  %add.ptr450.i = getelementptr i8, ptr %match.2.i, i32 %sub.ptr.sub449.i
  br label %if.end451.i

if.end451.i:                                      ; preds = %LZ4_wildCopy.exit783.i, %if.end443.i.if.end451.i_crit_edge
  %match.3.i = phi ptr [ %add.ptr450.i, %LZ4_wildCopy.exit783.i ], [ %match.2.i, %if.end443.i.if.end451.i_crit_edge ]
  %op.7.i = phi ptr [ %add.ptr438.i, %LZ4_wildCopy.exit783.i ], [ %add.ptr427.i, %if.end443.i.if.end451.i_crit_edge ]
  %cmp453843.i = icmp ult ptr %op.7.i, %add.ptr302.i
  br i1 %cmp453843.i, label %if.end451.i.while.body455.i_crit_edge, label %if.end451.i.while.cond.i.backedge_crit_edge

if.end451.i.while.cond.i.backedge_crit_edge:      ; preds = %if.end451.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

if.end451.i.while.body455.i_crit_edge:            ; preds = %if.end451.i
  br label %while.body455.i

while.body455.i:                                  ; preds = %while.body455.i.while.body455.i_crit_edge, %if.end451.i.while.body455.i_crit_edge
  %op.8845.i = phi ptr [ %incdec.ptr457.i, %while.body455.i.while.body455.i_crit_edge ], [ %op.7.i, %if.end451.i.while.body455.i_crit_edge ]
  %match.4844.i = phi ptr [ %incdec.ptr456.i, %while.body455.i.while.body455.i_crit_edge ], [ %match.3.i, %if.end451.i.while.body455.i_crit_edge ]
  %incdec.ptr456.i = getelementptr i8, ptr %match.4844.i, i32 1
  %65 = ptrtoint ptr %match.4844.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %match.4844.i, align 1
  %incdec.ptr457.i = getelementptr i8, ptr %op.8845.i, i32 1
  %67 = ptrtoint ptr %op.8845.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %op.8845.i, align 1
  %cmp453.i = icmp ult ptr %incdec.ptr457.i, %add.ptr302.i
  br i1 %cmp453.i, label %while.body455.i.while.body455.i_crit_edge, label %while.body455.i.while.cond.i.backedge_crit_edge

while.body455.i.while.cond.i.backedge_crit_edge:  ; preds = %while.body455.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

while.body455.i.while.body455.i_crit_edge:        ; preds = %while.body455.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body455.i

if.else462.i:                                     ; preds = %if.end426.i
  %68 = ptrtoint ptr %match.2.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %match.2.val.i = load i32, ptr %match.2.i, align 1
  %69 = getelementptr i8, ptr %match.2.i, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %match.2.val772.i = load i32, ptr %69, align 1
  %71 = ptrtoint ptr %add.ptr427.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %match.2.val.i, ptr %add.ptr427.i, align 1
  %add.ptr8.i784.i = getelementptr i8, ptr %op.2.i1121, i32 12
  %72 = ptrtoint ptr %add.ptr8.i784.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 %match.2.val772.i, ptr %add.ptr8.i784.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add295.i)
  %cmp463.i = icmp ugt i32 %add295.i, 16
  br i1 %cmp463.i, label %if.then465.i, label %if.else462.i.while.cond.i.backedge_crit_edge

if.else462.i.while.cond.i.backedge_crit_edge:     ; preds = %if.else462.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %do.body.i793.i.while.cond.i.backedge_crit_edge, %if.else462.i.while.cond.i.backedge_crit_edge, %while.body455.i.while.cond.i.backedge_crit_edge, %if.end451.i.while.cond.i.backedge_crit_edge, %if.then97.i
  %op.0.i.be = phi ptr [ %add.ptr302.i, %if.else462.i.while.cond.i.backedge_crit_edge ], [ %add.ptr302.i, %if.end451.i.while.cond.i.backedge_crit_edge ], [ %add.ptr104.i, %if.then97.i ], [ %add.ptr302.i, %while.body455.i.while.cond.i.backedge_crit_edge ], [ %add.ptr302.i, %do.body.i793.i.while.cond.i.backedge_crit_edge ]
  %ip.0.i.be = phi ptr [ %ip.7.i, %if.else462.i.while.cond.i.backedge_crit_edge ], [ %ip.7.i, %if.end451.i.while.cond.i.backedge_crit_edge ], [ %add.ptr84.i, %if.then97.i ], [ %ip.7.i, %while.body455.i.while.cond.i.backedge_crit_edge ], [ %ip.7.i, %do.body.i793.i.while.cond.i.backedge_crit_edge ]
  br label %while.cond.i

if.then465.i:                                     ; preds = %if.else462.i
  %add.ptr466.i = getelementptr i8, ptr %op.2.i1121, i32 16
  br label %do.body.i793.i

do.body.i793.i:                                   ; preds = %do.body.i793.i.do.body.i793.i_crit_edge, %if.then465.i
  %d.0.i785.i = phi ptr [ %add.ptr466.i, %if.then465.i ], [ %add.ptr.i790.i, %do.body.i793.i.do.body.i793.i_crit_edge ]
  %match.2.pn.i = phi ptr [ %match.2.i, %if.then465.i ], [ %s.0.i786.i, %do.body.i793.i.do.body.i793.i_crit_edge ]
  %s.0.i786.i = getelementptr i8, ptr %match.2.pn.i, i32 8
  %73 = ptrtoint ptr %s.0.i786.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %s.0.val.i787.i = load i32, ptr %s.0.i786.i, align 1
  %74 = getelementptr i8, ptr %match.2.pn.i, i32 12
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %s.0.val5.i788.i = load i32, ptr %74, align 1
  %76 = ptrtoint ptr %d.0.i785.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %s.0.val.i787.i, ptr %d.0.i785.i, align 1
  %add.ptr8.i.i789.i = getelementptr i32, ptr %d.0.i785.i, i32 1
  %77 = ptrtoint ptr %add.ptr8.i.i789.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %s.0.val5.i788.i, ptr %add.ptr8.i.i789.i, align 1
  %add.ptr.i790.i = getelementptr i8, ptr %d.0.i785.i, i32 8
  %cmp.i792.i = icmp ult ptr %add.ptr.i790.i, %add.ptr302.i
  br i1 %cmp.i792.i, label %do.body.i793.i.do.body.i793.i_crit_edge, label %do.body.i793.i.while.cond.i.backedge_crit_edge

do.body.i793.i.while.cond.i.backedge_crit_edge:   ; preds = %do.body.i793.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

do.body.i793.i.do.body.i793.i_crit_edge:          ; preds = %do.body.i793.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i793.i

_output_error.i:                                  ; preds = %if.then437.i._output_error.i_crit_edge, %cleanup291.i._output_error.i_crit_edge, %do.body263.i._output_error.i_crit_edge, %_copy_match.i.thread._output_error.i_crit_edge, %_copy_match.i._output_error.i_crit_edge, %if.then195.i._output_error.i_crit_edge, %do.end.i._output_error.i_crit_edge, %cond.end116.i._output_error.i_crit_edge
  %ip.8826.i = phi ptr [ %ip.3.i, %if.then195.i._output_error.i_crit_edge ], [ %incdec.ptr264.i, %do.body263.i._output_error.i_crit_edge ], [ %add.ptr84.i, %_copy_match.i.thread._output_error.i_crit_edge ], [ %ip.5.i, %_copy_match.i._output_error.i_crit_edge ], [ %incdec.ptr127.i, %do.end.i._output_error.i_crit_edge ], [ %incdec.ptr.i, %cond.end116.i._output_error.i_crit_edge ], [ %ip.7.i, %if.then437.i._output_error.i_crit_edge ], [ %incdec.ptr264.i, %cleanup291.i._output_error.i_crit_edge ]
  %sub.ptr.lhs.cast486.i = ptrtoint ptr %ip.8826.i to i32
  %sub.ptr.rhs.cast487.i = ptrtoint ptr %source to i32
  %78 = xor i32 %sub.ptr.lhs.cast486.i, -1
  %sub490.i = add i32 %78, %sub.ptr.rhs.cast487.i
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %_output_error.i, %if.end225.thread.i, %if.end.i.LZ4_decompress_generic.exit_crit_edge, %land.rhs20.i, %if.then.i.LZ4_decompress_generic.exit_crit_edge
  %retval.0.i = phi i32 [ %sub490.i, %_output_error.i ], [ %sub.ptr.sub481.i, %if.end225.thread.i ], [ -1, %if.then.i.LZ4_decompress_generic.exit_crit_edge ], [ %phi.cast.i, %land.rhs20.i ], [ -1, %if.end.i.LZ4_decompress_generic.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @LZ4_decompress_fast_continue(ptr nocapture noundef %LZ4_streamDecode, ptr noundef %source, ptr noundef %dest, i32 noundef %originalSize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %prefixSize = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %LZ4_streamDecode, i32 0, i32 3
  %0 = ptrtoint ptr %prefixSize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prefixSize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @LZ4_decompress_fast(ptr noundef %source, ptr noundef %dest, i32 noundef %originalSize)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %prefixSize to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %originalSize, ptr %prefixSize, align 4
  %add.ptr = getelementptr i8, ptr %dest, i32 %originalSize
  %prefixEnd = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %LZ4_streamDecode, i32 0, i32 2
  %3 = ptrtoint ptr %prefixEnd to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %prefixEnd, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %prefixEnd4 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %LZ4_streamDecode, i32 0, i32 2
  %4 = ptrtoint ptr %prefixEnd4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prefixEnd4, align 4
  %cmp5 = icmp eq ptr %5, %dest
  br i1 %cmp5, label %if.then6, label %if.else23

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %1)
  %cmp8 = icmp ugt i32 %1, 65534
  br i1 %cmp8, label %if.then6.if.then10_crit_edge, label %lor.lhs.false

if.then6.if.then10_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.then6
  %extDictSize = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %LZ4_streamDecode, i32 0, i32 1
  %6 = ptrtoint ptr %extDictSize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %extDictSize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9 = icmp eq i32 %7, 0
  br i1 %cmp9, label %lor.lhs.false.if.then10_crit_edge, label %if.else12

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.then6.if.then10_crit_edge
  %call11 = tail call i32 @LZ4_decompress_fast(ptr noundef %source, ptr noundef %dest, i32 noundef %originalSize)
  br label %if.end16

if.else12:                                        ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %LZ4_streamDecode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %LZ4_streamDecode, align 4
  %idx.neg.i = sub nsw i32 0, %1
  %add.ptr.i = getelementptr i8, ptr %dest, i32 %idx.neg.i
  %add.ptr1.i.i = getelementptr i8, ptr %dest, i32 %originalSize
  %add.ptr2.i.i = getelementptr i8, ptr %9, i32 %7
  %add.ptr11.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 -8
  %add.ptr12.i.i = getelementptr i8, ptr %add.ptr11.i.i, i32 -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %originalSize)
  %10 = icmp eq i32 %originalSize, 0
  br i1 %10, label %if.then37.i.i, label %if.end42.i.i, !prof !34

if.then37.i.i:                                    ; preds = %if.else12
  %11 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %source, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp39.i.i = icmp eq i8 %12, 0
  br i1 %cmp39.i.i, label %if.then37.i.i.if.end19_crit_edge, label %if.then37.i.i.cleanup_crit_edge

if.then37.i.i.cleanup_crit_edge:                  ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then37.i.i.if.end19_crit_edge:                 ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.end42.i.i:                                     ; preds = %if.else12
  %add.ptr181.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 -12
  %add.ptr438.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 -7
  %add.ptr439.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 -5
  %sub.ptr.lhs.cast447.i.i = ptrtoint ptr %add.ptr438.i.i to i32
  %sub.ptr.lhs.cast326.i.i = ptrtoint ptr %add.ptr.i to i32
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.backedge, %if.end42.i.i
  %op.0.i.i = phi ptr [ %dest, %if.end42.i.i ], [ %op.0.i.i.be, %while.cond.i.i.backedge ]
  %ip.0.i.i = phi ptr [ %source, %if.end42.i.i ], [ %ip.0.i.i.be, %while.cond.i.i.backedge ]
  %incdec.ptr.i.i = getelementptr i8, ptr %ip.0.i.i, i32 1
  %13 = ptrtoint ptr %ip.0.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ip.0.i.i, align 1
  %conv55.i.i = zext i8 %14 to i32
  %shr.i.i = lshr i32 %conv55.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %14)
  %cmp59.i.i = icmp ult i8 %14, -112
  br i1 %cmp59.i.i, label %cond.end.i.i, label %if.end106.thread.i.i

cond.end.i.i:                                     ; preds = %while.cond.i.i
  %cmp68.i.not.i = icmp ugt ptr %op.0.i.i, %add.ptr12.i.i
  br i1 %cmp68.i.not.i, label %if.end106.i.i, label %if.then77.i.i, !prof !35

if.then77.i.i:                                    ; preds = %cond.end.i.i
  %15 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %incdec.ptr.i.i, align 1
  %17 = ptrtoint ptr %op.0.i.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %op.0.i.i, align 1
  %add.ptr80.i.i = getelementptr i8, ptr %op.0.i.i, i32 %shr.i.i
  %add.ptr81.i.i = getelementptr i8, ptr %incdec.ptr.i.i, i32 %shr.i.i
  %and82.i.i = and i32 %conv55.i.i, 15
  %18 = ptrtoint ptr %add.ptr81.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %add.ptr81.val.i.i = load i16, ptr %add.ptr81.i.i, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %add.ptr81.val.i.i) #3
  %conv83.i.i = zext i16 %19 to i32
  %add.ptr84.i.i = getelementptr i8, ptr %add.ptr81.i.i, i32 2
  %idx.neg85.i.i = sub nsw i32 0, %conv83.i.i
  %add.ptr86.i.i = getelementptr i8, ptr %add.ptr80.i.i, i32 %idx.neg85.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and82.i.i)
  %cmp87.not.i.i = icmp eq i32 %and82.i.i, 15
  br i1 %cmp87.not.i.i, label %_copy_match.i.thread.i, label %land.lhs.true89.i.i

_copy_match.i.thread.i:                           ; preds = %if.then77.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %add.ptr80.i.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %conv83.i.i, ptr %add.ptr80.i.i, align 1
  br label %do.body263.preheader.i.i

land.lhs.true89.i.i:                              ; preds = %if.then77.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %19)
  %cmp90.i.i = icmp ult i16 %19, 8
  %cmp95.not.i.i = icmp ult ptr %add.ptr86.i.i, %add.ptr.i
  %or.cond.i.i = select i1 %cmp90.i.i, i1 true, i1 %cmp95.not.i.i
  br i1 %or.cond.i.i, label %_copy_match.i.thread17.i, label %if.then97.i.i

_copy_match.i.thread17.i:                         ; preds = %land.lhs.true89.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %add.ptr80.i.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %conv83.i.i, ptr %add.ptr80.i.i, align 1
  br label %if.end294.i.i

if.then97.i.i:                                    ; preds = %land.lhs.true89.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %add.ptr86.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %add.ptr86.i.i, align 1
  %24 = ptrtoint ptr %add.ptr80.i.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %add.ptr80.i.i, align 1
  %add.ptr100.i.i = getelementptr i8, ptr %add.ptr80.i.i, i32 8
  %add.ptr101.i.i = getelementptr i8, ptr %add.ptr86.i.i, i32 8
  %25 = ptrtoint ptr %add.ptr101.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %add.ptr101.i.i, align 1
  %27 = ptrtoint ptr %add.ptr100.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %add.ptr100.i.i, align 1
  %add.ptr102.i.i = getelementptr i8, ptr %add.ptr80.i.i, i32 16
  %add.ptr103.i.i = getelementptr i8, ptr %add.ptr86.i.i, i32 16
  %28 = ptrtoint ptr %add.ptr103.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %add.ptr103.i.i, align 1
  %30 = ptrtoint ptr %add.ptr102.i.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %29, ptr %add.ptr102.i.i, align 1
  %add.i.i = add nuw nsw i32 %and82.i.i, 4
  %add.ptr104.i.i = getelementptr i8, ptr %add.ptr80.i.i, i32 %add.i.i
  br label %while.cond.i.i.backedge

if.end106.i.i:                                    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr.i.i)
  %cmp107.i.i = icmp eq i32 %shr.i.i, 15
  br i1 %cmp107.i.i, label %if.end106.i.i.do.body.i.i.preheader_crit_edge, label %if.end106.i.i.land.lhs.true191.critedge.i.i_crit_edge

if.end106.i.i.land.lhs.true191.critedge.i.i_crit_edge: ; preds = %if.end106.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true191.critedge.i.i

if.end106.i.i.do.body.i.i.preheader_crit_edge:    ; preds = %if.end106.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.i.preheader

if.end106.thread.i.i:                             ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr.i.i)
  %cmp107795.i.i = icmp eq i32 %shr.i.i, 15
  br i1 %cmp107795.i.i, label %if.end106.thread.i.i.do.body.i.i.preheader_crit_edge, label %if.end106.thread.i.i.land.lhs.true191.critedge.i.i_crit_edge

if.end106.thread.i.i.land.lhs.true191.critedge.i.i_crit_edge: ; preds = %if.end106.thread.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true191.critedge.i.i

if.end106.thread.i.i.do.body.i.i.preheader_crit_edge: ; preds = %if.end106.thread.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.i.preheader

do.body.i.i.preheader:                            ; preds = %if.end106.thread.i.i.do.body.i.i.preheader_crit_edge, %if.end106.i.i.do.body.i.i.preheader_crit_edge
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.i.i.preheader
  %length.0.i.i = phi i32 [ %add129.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ 15, %do.body.i.i.preheader ]
  %ip.1.i.i = phi ptr [ %incdec.ptr127.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %incdec.ptr.i.i, %do.body.i.i.preheader ]
  %incdec.ptr127.i.i = getelementptr i8, ptr %ip.1.i.i, i32 1
  %31 = ptrtoint ptr %ip.1.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ip.1.i.i, align 1
  %conv128.i.i = zext i8 %32 to i32
  %add129.i.i = add i32 %length.0.i.i, %conv128.i.i
  %cmp144.i.i = icmp eq i8 %32, -1
  br i1 %cmp144.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.body.i.i.land.lhs.true191.critedge.i.i_crit_edge

do.body.i.i.land.lhs.true191.critedge.i.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true191.critedge.i.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.i

land.lhs.true191.critedge.i.i:                    ; preds = %do.body.i.i.land.lhs.true191.critedge.i.i_crit_edge, %if.end106.thread.i.i.land.lhs.true191.critedge.i.i_crit_edge, %if.end106.i.i.land.lhs.true191.critedge.i.i_crit_edge
  %ip.3807.i.i = phi ptr [ %incdec.ptr.i.i, %if.end106.thread.i.i.land.lhs.true191.critedge.i.i_crit_edge ], [ %incdec.ptr.i.i, %if.end106.i.i.land.lhs.true191.critedge.i.i_crit_edge ], [ %incdec.ptr127.i.i, %do.body.i.i.land.lhs.true191.critedge.i.i_crit_edge ]
  %length.2804.i.i = phi i32 [ %shr.i.i, %if.end106.thread.i.i.land.lhs.true191.critedge.i.i_crit_edge ], [ %shr.i.i, %if.end106.i.i.land.lhs.true191.critedge.i.i_crit_edge ], [ %add129.i.i, %do.body.i.i.land.lhs.true191.critedge.i.i_crit_edge ]
  %add.ptr175810.i.i = getelementptr i8, ptr %op.0.i.i, i32 %length.2804.i.i
  %cmp193.i.i = icmp ugt ptr %add.ptr175810.i.i, %add.ptr11.i.i
  br i1 %cmp193.i.i, label %if.then195.i.i, label %land.lhs.true191.critedge.i.i.do.body.i.i.i_crit_edge

land.lhs.true191.critedge.i.i.do.body.i.i.i_crit_edge: ; preds = %land.lhs.true191.critedge.i.i
  br label %do.body.i.i.i

if.then195.i.i:                                   ; preds = %land.lhs.true191.critedge.i.i
  %cmp211.not.i.i = icmp eq ptr %add.ptr175810.i.i, %add.ptr1.i.i
  br i1 %cmp211.not.i.i, label %if.end214.i.i, label %if.then195.i.i._output_error.i.i_crit_edge

if.then195.i.i._output_error.i.i_crit_edge:       ; preds = %if.then195.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i.i

if.end214.i.i:                                    ; preds = %if.then195.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %33 = call ptr @memmove(ptr %op.0.i.i, ptr %ip.3807.i.i, i32 %length.2804.i.i)
  %add.ptr226814.i.i = getelementptr i8, ptr %ip.3807.i.i, i32 %length.2804.i.i
  %sub.ptr.lhs.cast483.i.i = ptrtoint ptr %add.ptr226814.i.i to i32
  %sub.ptr.rhs.cast484.i.i = ptrtoint ptr %source to i32
  %sub.ptr.sub485.i.i = sub i32 %sub.ptr.lhs.cast483.i.i, %sub.ptr.rhs.cast484.i.i
  br label %if.end16

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true191.critedge.i.i.do.body.i.i.i_crit_edge
  %d.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ], [ %op.0.i.i, %land.lhs.true191.critedge.i.i.do.body.i.i.i_crit_edge ]
  %s.0.i.i.i = phi ptr [ %add.ptr1.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ], [ %ip.3807.i.i, %land.lhs.true191.critedge.i.i.do.body.i.i.i_crit_edge ]
  %34 = ptrtoint ptr %s.0.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %s.0.val.i.i.i = load i32, ptr %s.0.i.i.i, align 1
  %35 = getelementptr i8, ptr %s.0.i.i.i, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %s.0.val5.i.i.i = load i32, ptr %35, align 1
  %37 = ptrtoint ptr %d.0.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %s.0.val.i.i.i, ptr %d.0.i.i.i, align 1
  %add.ptr8.i.i.i.i = getelementptr i32, ptr %d.0.i.i.i, i32 1
  %38 = ptrtoint ptr %add.ptr8.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %s.0.val5.i.i.i, ptr %add.ptr8.i.i.i.i, align 1
  %add.ptr.i.i.i = getelementptr i8, ptr %d.0.i.i.i, i32 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %s.0.i.i.i, i32 8
  %cmp.i.i.i = icmp ult ptr %add.ptr.i.i.i, %add.ptr175810.i.i
  br i1 %cmp.i.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge, label %_copy_match.i.i

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.i.i

_copy_match.i.i:                                  ; preds = %do.body.i.i.i
  %add.ptr235.i.i = getelementptr i8, ptr %ip.3807.i.i, i32 %length.2804.i.i
  %39 = ptrtoint ptr %add.ptr235.i.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %ip.4.val.i.i = load i16, ptr %add.ptr235.i.i, align 1
  %40 = tail call i16 @llvm.bswap.i16(i16 %ip.4.val.i.i) #3
  %conv238.i.i = zext i16 %40 to i32
  %add.ptr239.i.i = getelementptr i8, ptr %add.ptr235.i.i, i32 2
  %idx.neg240.i.i = sub nsw i32 0, %conv238.i.i
  %add.ptr241.i.i = getelementptr i8, ptr %add.ptr175810.i.i, i32 %idx.neg240.i.i
  %and242.i.i = and i32 %conv55.i.i, 15
  %41 = ptrtoint ptr %add.ptr175810.i.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %conv238.i.i, ptr %add.ptr175810.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and242.i.i)
  %cmp259.i.i = icmp eq i32 %and242.i.i, 15
  br i1 %cmp259.i.i, label %_copy_match.i.i.do.body263.preheader.i.i_crit_edge, label %_copy_match.i.i.if.end294.i.i_crit_edge

_copy_match.i.i.if.end294.i.i_crit_edge:          ; preds = %_copy_match.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end294.i.i

_copy_match.i.i.do.body263.preheader.i.i_crit_edge: ; preds = %_copy_match.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body263.preheader.i.i

do.body263.preheader.i.i:                         ; preds = %_copy_match.i.i.do.body263.preheader.i.i_crit_edge, %_copy_match.i.thread.i
  %ip.5.i16.i = phi ptr [ %add.ptr84.i.i, %_copy_match.i.thread.i ], [ %add.ptr239.i.i, %_copy_match.i.i.do.body263.preheader.i.i_crit_edge ]
  %op.2.i14.i = phi ptr [ %add.ptr80.i.i, %_copy_match.i.thread.i ], [ %add.ptr175810.i.i, %_copy_match.i.i.do.body263.preheader.i.i_crit_edge ]
  %offset.0.i12.i = phi i32 [ %conv83.i.i, %_copy_match.i.thread.i ], [ %conv238.i.i, %_copy_match.i.i.do.body263.preheader.i.i_crit_edge ]
  %match.0.i10.i = phi ptr [ %add.ptr86.i.i, %_copy_match.i.thread.i ], [ %add.ptr241.i.i, %_copy_match.i.i.do.body263.preheader.i.i_crit_edge ]
  br label %do.body263.us.i.i

do.body263.us.i.i:                                ; preds = %do.body263.us.i.i.do.body263.us.i.i_crit_edge, %do.body263.preheader.i.i
  %length.6.us.i.i = phi i32 [ %add273.us.i.i, %do.body263.us.i.i.do.body263.us.i.i_crit_edge ], [ 15, %do.body263.preheader.i.i ]
  %ip.6.us.i.i = phi ptr [ %incdec.ptr264.us.i.i, %do.body263.us.i.i.do.body263.us.i.i_crit_edge ], [ %ip.5.i16.i, %do.body263.preheader.i.i ]
  %incdec.ptr264.us.i.i = getelementptr i8, ptr %ip.6.us.i.i, i32 1
  %42 = ptrtoint ptr %ip.6.us.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ip.6.us.i.i, align 1
  %conv265.us.i.i = zext i8 %43 to i32
  %add273.us.i.i = add i32 %length.6.us.i.i, %conv265.us.i.i
  %cmp275.us.i.i = icmp eq i8 %43, -1
  br i1 %cmp275.us.i.i, label %do.body263.us.i.i.do.body263.us.i.i_crit_edge, label %do.body263.us.i.i.if.end294.i.i_crit_edge

do.body263.us.i.i.if.end294.i.i_crit_edge:        ; preds = %do.body263.us.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end294.i.i

do.body263.us.i.i.do.body263.us.i.i_crit_edge:    ; preds = %do.body263.us.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body263.us.i.i

if.end294.i.i:                                    ; preds = %do.body263.us.i.i.if.end294.i.i_crit_edge, %_copy_match.i.i.if.end294.i.i_crit_edge, %_copy_match.i.thread17.i
  %op.2.i13.i = phi ptr [ %add.ptr175810.i.i, %_copy_match.i.i.if.end294.i.i_crit_edge ], [ %add.ptr80.i.i, %_copy_match.i.thread17.i ], [ %op.2.i14.i, %do.body263.us.i.i.if.end294.i.i_crit_edge ]
  %offset.0.i11.i = phi i32 [ %conv238.i.i, %_copy_match.i.i.if.end294.i.i_crit_edge ], [ %conv83.i.i, %_copy_match.i.thread17.i ], [ %offset.0.i12.i, %do.body263.us.i.i.if.end294.i.i_crit_edge ]
  %match.0.i9.i = phi ptr [ %add.ptr241.i.i, %_copy_match.i.i.if.end294.i.i_crit_edge ], [ %add.ptr86.i.i, %_copy_match.i.thread17.i ], [ %match.0.i10.i, %do.body263.us.i.i.if.end294.i.i_crit_edge ]
  %length.8.i.i = phi i32 [ %and242.i.i, %_copy_match.i.i.if.end294.i.i_crit_edge ], [ %and82.i.i, %_copy_match.i.thread17.i ], [ %add273.us.i.i, %do.body263.us.i.i.if.end294.i.i_crit_edge ]
  %ip.7.i.i = phi ptr [ %add.ptr239.i.i, %_copy_match.i.i.if.end294.i.i_crit_edge ], [ %add.ptr84.i.i, %_copy_match.i.thread17.i ], [ %incdec.ptr264.us.i.i, %do.body263.us.i.i.if.end294.i.i_crit_edge ]
  %add295.i.i = add i32 %length.8.i.i, 4
  %cmp299.i.i = icmp ult ptr %match.0.i9.i, %add.ptr.i
  %add.ptr302.i.i = getelementptr i8, ptr %op.2.i13.i, i32 %add295.i.i
  br i1 %cmp299.i.i, label %if.then301.i.i, label %if.end362.i.i

if.then301.i.i:                                   ; preds = %if.end294.i.i
  %cmp304.i.i = icmp ugt ptr %add.ptr302.i.i, %add.ptr439.i.i
  br i1 %cmp304.i.i, label %if.then301.i.i._output_error.i.i_crit_edge, label %if.end325.i.i, !prof !35

if.then301.i.i._output_error.i.i_crit_edge:       ; preds = %if.then301.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i.i

if.end325.i.i:                                    ; preds = %if.then301.i.i
  %sub.ptr.rhs.cast327.i.i = ptrtoint ptr %match.0.i9.i to i32
  %sub.ptr.sub328.i.i = sub i32 %sub.ptr.lhs.cast326.i.i, %sub.ptr.rhs.cast327.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add295.i.i, i32 %sub.ptr.sub328.i.i)
  %cmp329.not.i.i = icmp ugt i32 %add295.i.i, %sub.ptr.sub328.i.i
  br i1 %cmp329.not.i.i, label %if.else338.i.i, label %if.then331.i.i

if.then331.i.i:                                   ; preds = %if.end325.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %idx.neg335.i.i = sub i32 0, %sub.ptr.sub328.i.i
  %add.ptr336.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 %idx.neg335.i.i
  %44 = call ptr @memmove(ptr %op.2.i13.i, ptr %add.ptr336.i.i, i32 %add295.i.i)
  br label %while.cond.i.i.backedge

if.else338.i.i:                                   ; preds = %if.end325.i.i
  %sub.i.i = sub i32 %add295.i.i, %sub.ptr.sub328.i.i
  %idx.neg342.i.i = sub i32 0, %sub.ptr.sub328.i.i
  %add.ptr343.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 %idx.neg342.i.i
  %45 = call ptr @memcpy(ptr %op.2.i13.i, ptr %add.ptr343.i.i, i32 %sub.ptr.sub328.i.i)
  %add.ptr344.i.i = getelementptr i8, ptr %op.2.i13.i, i32 %sub.ptr.sub328.i.i
  %sub.ptr.lhs.cast345.i.i = ptrtoint ptr %add.ptr344.i.i to i32
  %sub.ptr.sub347.i.i = sub i32 %sub.ptr.lhs.cast345.i.i, %sub.ptr.lhs.cast326.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %sub.ptr.sub347.i.i)
  %cmp348.i.i = icmp ugt i32 %sub.i.i, %sub.ptr.sub347.i.i
  br i1 %cmp348.i.i, label %if.then350.i.i, label %if.else358.i.i

if.then350.i.i:                                   ; preds = %if.else338.i.i
  %cmp353849.i.i = icmp ult ptr %add.ptr344.i.i, %add.ptr302.i.i
  br i1 %cmp353849.i.i, label %if.then350.i.i.while.body355.i.i_crit_edge, label %if.then350.i.i.while.cond.i.i.backedge_crit_edge

if.then350.i.i.while.cond.i.i.backedge_crit_edge: ; preds = %if.then350.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.i.backedge

if.then350.i.i.while.body355.i.i_crit_edge:       ; preds = %if.then350.i.i
  br label %while.body355.i.i

while.body355.i.i:                                ; preds = %while.body355.i.i.while.body355.i.i_crit_edge, %if.then350.i.i.while.body355.i.i_crit_edge
  %copyFrom.0851.i.i = phi ptr [ %incdec.ptr356.i.i, %while.body355.i.i.while.body355.i.i_crit_edge ], [ %add.ptr.i, %if.then350.i.i.while.body355.i.i_crit_edge ]
  %op.3850.i.i = phi ptr [ %incdec.ptr357.i.i, %while.body355.i.i.while.body355.i.i_crit_edge ], [ %add.ptr344.i.i, %if.then350.i.i.while.body355.i.i_crit_edge ]
  %incdec.ptr356.i.i = getelementptr i8, ptr %copyFrom.0851.i.i, i32 1
  %46 = ptrtoint ptr %copyFrom.0851.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %copyFrom.0851.i.i, align 1
  %incdec.ptr357.i.i = getelementptr i8, ptr %op.3850.i.i, i32 1
  %48 = ptrtoint ptr %op.3850.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %op.3850.i.i, align 1
  %exitcond861.not.i.i = icmp eq ptr %incdec.ptr357.i.i, %add.ptr302.i.i
  br i1 %exitcond861.not.i.i, label %while.body355.i.i.while.cond.i.i.backedge_crit_edge, label %while.body355.i.i.while.body355.i.i_crit_edge

while.body355.i.i.while.body355.i.i_crit_edge:    ; preds = %while.body355.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body355.i.i

while.body355.i.i.while.cond.i.i.backedge_crit_edge: ; preds = %while.body355.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.i.backedge

if.else358.i.i:                                   ; preds = %if.else338.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %49 = call ptr @memcpy(ptr %add.ptr344.i.i, ptr %add.ptr.i, i32 %sub.i.i)
  br label %while.cond.i.i.backedge

if.end362.i.i:                                    ; preds = %if.end294.i.i
  %cmp367.i.i = icmp ugt ptr %add.ptr302.i.i, %add.ptr181.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %offset.0.i11.i)
  %cmp402.i.i = icmp ult i32 %offset.0.i11.i, 8
  br i1 %cmp402.i.i, label %if.then410.i.i, label %if.else424.i.i, !prof !35

if.then410.i.i:                                   ; preds = %if.end362.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %50 = ptrtoint ptr %match.0.i9.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %match.0.i9.i, align 1
  %52 = ptrtoint ptr %op.2.i13.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %op.2.i13.i, align 1
  %arrayidx412.i.i = getelementptr i8, ptr %match.0.i9.i, i32 1
  %53 = ptrtoint ptr %arrayidx412.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx412.i.i, align 1
  %arrayidx413.i.i = getelementptr i8, ptr %op.2.i13.i, i32 1
  %55 = ptrtoint ptr %arrayidx413.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx413.i.i, align 1
  %arrayidx414.i.i = getelementptr i8, ptr %match.0.i9.i, i32 2
  %56 = ptrtoint ptr %arrayidx414.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx414.i.i, align 1
  %arrayidx415.i.i = getelementptr i8, ptr %op.2.i13.i, i32 2
  %58 = ptrtoint ptr %arrayidx415.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx415.i.i, align 1
  %arrayidx416.i.i = getelementptr i8, ptr %match.0.i9.i, i32 3
  %59 = ptrtoint ptr %arrayidx416.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx416.i.i, align 1
  %arrayidx417.i.i = getelementptr i8, ptr %op.2.i13.i, i32 3
  %61 = ptrtoint ptr %arrayidx417.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx417.i.i, align 1
  %arrayidx418.i.i = getelementptr [8 x i32], ptr @LZ4_decompress_generic.inc32table, i32 0, i32 %offset.0.i11.i
  %62 = ptrtoint ptr %arrayidx418.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx418.i.i, align 4
  %add.ptr419.i.i = getelementptr i8, ptr %match.0.i9.i, i32 %63
  %add.ptr420.i.i = getelementptr i8, ptr %op.2.i13.i, i32 4
  %64 = ptrtoint ptr %add.ptr419.i.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %add.ptr419.i.i, align 1
  %66 = ptrtoint ptr %add.ptr420.i.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %65, ptr %add.ptr420.i.i, align 1
  %arrayidx421.i.i = getelementptr [8 x i32], ptr @LZ4_decompress_generic.dec64table, i32 0, i32 %offset.0.i11.i
  %67 = ptrtoint ptr %arrayidx421.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx421.i.i, align 4
  %idx.neg422.i.i = sub i32 0, %68
  %add.ptr423.i.i = getelementptr i8, ptr %add.ptr419.i.i, i32 %idx.neg422.i.i
  br label %if.end426.i.i

if.else424.i.i:                                   ; preds = %if.end362.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %69 = ptrtoint ptr %match.0.i9.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %match.0.val.i.i = load i32, ptr %match.0.i9.i, align 1
  %70 = getelementptr i8, ptr %match.0.i9.i, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %match.0.val773.i.i = load i32, ptr %70, align 1
  %72 = ptrtoint ptr %op.2.i13.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 %match.0.val.i.i, ptr %op.2.i13.i, align 1
  %add.ptr8.i.i.i = getelementptr i32, ptr %op.2.i13.i, i32 1
  %73 = ptrtoint ptr %add.ptr8.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %match.0.val773.i.i, ptr %add.ptr8.i.i.i, align 1
  %add.ptr425.i.i = getelementptr i8, ptr %match.0.i9.i, i32 8
  br label %if.end426.i.i

if.end426.i.i:                                    ; preds = %if.else424.i.i, %if.then410.i.i
  %match.2.i.i = phi ptr [ %add.ptr423.i.i, %if.then410.i.i ], [ %add.ptr425.i.i, %if.else424.i.i ]
  %add.ptr427.i.i = getelementptr i8, ptr %op.2.i13.i, i32 8
  br i1 %cmp367.i.i, label %if.then437.i.i, label %if.else462.i.i, !prof !35

if.then437.i.i:                                   ; preds = %if.end426.i.i
  %cmp440.i.i = icmp ugt ptr %add.ptr302.i.i, %add.ptr439.i.i
  br i1 %cmp440.i.i, label %if.then437.i.i._output_error.i.i_crit_edge, label %if.end443.i.i

if.then437.i.i._output_error.i.i_crit_edge:       ; preds = %if.then437.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i.i

if.end443.i.i:                                    ; preds = %if.then437.i.i
  %cmp444.i.i = icmp ult ptr %add.ptr427.i.i, %add.ptr438.i.i
  br i1 %cmp444.i.i, label %if.end443.i.i.do.body.i782.i.i_crit_edge, label %if.end443.i.i.if.end451.i.i_crit_edge

if.end443.i.i.if.end451.i.i_crit_edge:            ; preds = %if.end443.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end451.i.i

if.end443.i.i.do.body.i782.i.i_crit_edge:         ; preds = %if.end443.i.i
  br label %do.body.i782.i.i

do.body.i782.i.i:                                 ; preds = %do.body.i782.i.i.do.body.i782.i.i_crit_edge, %if.end443.i.i.do.body.i782.i.i_crit_edge
  %d.0.i774.i.i = phi ptr [ %add.ptr.i779.i.i, %do.body.i782.i.i.do.body.i782.i.i_crit_edge ], [ %add.ptr427.i.i, %if.end443.i.i.do.body.i782.i.i_crit_edge ]
  %s.0.i775.i.i = phi ptr [ %add.ptr1.i780.i.i, %do.body.i782.i.i.do.body.i782.i.i_crit_edge ], [ %match.2.i.i, %if.end443.i.i.do.body.i782.i.i_crit_edge ]
  %74 = ptrtoint ptr %s.0.i775.i.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %s.0.val.i776.i.i = load i32, ptr %s.0.i775.i.i, align 1
  %75 = getelementptr i8, ptr %s.0.i775.i.i, i32 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %s.0.val5.i777.i.i = load i32, ptr %75, align 1
  %77 = ptrtoint ptr %d.0.i774.i.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %s.0.val.i776.i.i, ptr %d.0.i774.i.i, align 1
  %add.ptr8.i.i778.i.i = getelementptr i32, ptr %d.0.i774.i.i, i32 1
  %78 = ptrtoint ptr %add.ptr8.i.i778.i.i to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %s.0.val5.i777.i.i, ptr %add.ptr8.i.i778.i.i, align 1
  %add.ptr.i779.i.i = getelementptr i8, ptr %d.0.i774.i.i, i32 8
  %add.ptr1.i780.i.i = getelementptr i8, ptr %s.0.i775.i.i, i32 8
  %cmp.i781.i.i = icmp ult ptr %add.ptr.i779.i.i, %add.ptr438.i.i
  br i1 %cmp.i781.i.i, label %do.body.i782.i.i.do.body.i782.i.i_crit_edge, label %LZ4_wildCopy.exit783.i.i

do.body.i782.i.i.do.body.i782.i.i_crit_edge:      ; preds = %do.body.i782.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i782.i.i

LZ4_wildCopy.exit783.i.i:                         ; preds = %do.body.i782.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.ptr.rhs.cast448.i.i = ptrtoint ptr %add.ptr427.i.i to i32
  %sub.ptr.sub449.i.i = sub i32 %sub.ptr.lhs.cast447.i.i, %sub.ptr.rhs.cast448.i.i
  %add.ptr450.i.i = getelementptr i8, ptr %match.2.i.i, i32 %sub.ptr.sub449.i.i
  br label %if.end451.i.i

if.end451.i.i:                                    ; preds = %LZ4_wildCopy.exit783.i.i, %if.end443.i.i.if.end451.i.i_crit_edge
  %match.3.i.i = phi ptr [ %add.ptr450.i.i, %LZ4_wildCopy.exit783.i.i ], [ %match.2.i.i, %if.end443.i.i.if.end451.i.i_crit_edge ]
  %op.7.i.i = phi ptr [ %add.ptr438.i.i, %LZ4_wildCopy.exit783.i.i ], [ %add.ptr427.i.i, %if.end443.i.i.if.end451.i.i_crit_edge ]
  %cmp453843.i.i = icmp ult ptr %op.7.i.i, %add.ptr302.i.i
  br i1 %cmp453843.i.i, label %if.end451.i.i.while.body455.i.i_crit_edge, label %if.end451.i.i.while.cond.i.i.backedge_crit_edge

if.end451.i.i.while.cond.i.i.backedge_crit_edge:  ; preds = %if.end451.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.i.backedge

if.end451.i.i.while.body455.i.i_crit_edge:        ; preds = %if.end451.i.i
  br label %while.body455.i.i

while.body455.i.i:                                ; preds = %while.body455.i.i.while.body455.i.i_crit_edge, %if.end451.i.i.while.body455.i.i_crit_edge
  %op.8845.i.i = phi ptr [ %incdec.ptr457.i.i, %while.body455.i.i.while.body455.i.i_crit_edge ], [ %op.7.i.i, %if.end451.i.i.while.body455.i.i_crit_edge ]
  %match.4844.i.i = phi ptr [ %incdec.ptr456.i.i, %while.body455.i.i.while.body455.i.i_crit_edge ], [ %match.3.i.i, %if.end451.i.i.while.body455.i.i_crit_edge ]
  %incdec.ptr456.i.i = getelementptr i8, ptr %match.4844.i.i, i32 1
  %79 = ptrtoint ptr %match.4844.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %match.4844.i.i, align 1
  %incdec.ptr457.i.i = getelementptr i8, ptr %op.8845.i.i, i32 1
  %81 = ptrtoint ptr %op.8845.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %op.8845.i.i, align 1
  %cmp453.i.i = icmp ult ptr %incdec.ptr457.i.i, %add.ptr302.i.i
  br i1 %cmp453.i.i, label %while.body455.i.i.while.body455.i.i_crit_edge, label %while.body455.i.i.while.cond.i.i.backedge_crit_edge

while.body455.i.i.while.cond.i.i.backedge_crit_edge: ; preds = %while.body455.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.i.backedge

while.body455.i.i.while.body455.i.i_crit_edge:    ; preds = %while.body455.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body455.i.i

if.else462.i.i:                                   ; preds = %if.end426.i.i
  %82 = ptrtoint ptr %match.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %match.2.val.i.i = load i32, ptr %match.2.i.i, align 1
  %83 = getelementptr i8, ptr %match.2.i.i, i32 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %match.2.val772.i.i = load i32, ptr %83, align 1
  %85 = ptrtoint ptr %add.ptr427.i.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 %match.2.val.i.i, ptr %add.ptr427.i.i, align 1
  %add.ptr8.i784.i.i = getelementptr i8, ptr %op.2.i13.i, i32 12
  %86 = ptrtoint ptr %add.ptr8.i784.i.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 %match.2.val772.i.i, ptr %add.ptr8.i784.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add295.i.i)
  %cmp463.i.i = icmp ugt i32 %add295.i.i, 16
  br i1 %cmp463.i.i, label %if.then465.i.i, label %if.else462.i.i.while.cond.i.i.backedge_crit_edge

if.else462.i.i.while.cond.i.i.backedge_crit_edge: ; preds = %if.else462.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.i.backedge

while.cond.i.i.backedge:                          ; preds = %do.body.i793.i.i.while.cond.i.i.backedge_crit_edge, %if.else462.i.i.while.cond.i.i.backedge_crit_edge, %while.body455.i.i.while.cond.i.i.backedge_crit_edge, %if.end451.i.i.while.cond.i.i.backedge_crit_edge, %if.else358.i.i, %while.body355.i.i.while.cond.i.i.backedge_crit_edge, %if.then350.i.i.while.cond.i.i.backedge_crit_edge, %if.then331.i.i, %if.then97.i.i
  %op.0.i.i.be = phi ptr [ %add.ptr302.i.i, %if.else462.i.i.while.cond.i.i.backedge_crit_edge ], [ %add.ptr302.i.i, %if.end451.i.i.while.cond.i.i.backedge_crit_edge ], [ %add.ptr344.i.i, %if.then350.i.i.while.cond.i.i.backedge_crit_edge ], [ %add.ptr302.i.i, %if.then331.i.i ], [ %add.ptr302.i.i, %if.else358.i.i ], [ %add.ptr104.i.i, %if.then97.i.i ], [ %add.ptr302.i.i, %while.body355.i.i.while.cond.i.i.backedge_crit_edge ], [ %add.ptr302.i.i, %while.body455.i.i.while.cond.i.i.backedge_crit_edge ], [ %add.ptr302.i.i, %do.body.i793.i.i.while.cond.i.i.backedge_crit_edge ]
  %ip.0.i.i.be = phi ptr [ %ip.7.i.i, %if.else462.i.i.while.cond.i.i.backedge_crit_edge ], [ %ip.7.i.i, %if.end451.i.i.while.cond.i.i.backedge_crit_edge ], [ %ip.7.i.i, %if.then350.i.i.while.cond.i.i.backedge_crit_edge ], [ %ip.7.i.i, %if.then331.i.i ], [ %ip.7.i.i, %if.else358.i.i ], [ %add.ptr84.i.i, %if.then97.i.i ], [ %ip.7.i.i, %while.body355.i.i.while.cond.i.i.backedge_crit_edge ], [ %ip.7.i.i, %while.body455.i.i.while.cond.i.i.backedge_crit_edge ], [ %ip.7.i.i, %do.body.i793.i.i.while.cond.i.i.backedge_crit_edge ]
  br label %while.cond.i.i

if.then465.i.i:                                   ; preds = %if.else462.i.i
  %add.ptr466.i.i = getelementptr i8, ptr %op.2.i13.i, i32 16
  br label %do.body.i793.i.i

do.body.i793.i.i:                                 ; preds = %do.body.i793.i.i.do.body.i793.i.i_crit_edge, %if.then465.i.i
  %d.0.i785.i.i = phi ptr [ %add.ptr466.i.i, %if.then465.i.i ], [ %add.ptr.i790.i.i, %do.body.i793.i.i.do.body.i793.i.i_crit_edge ]
  %match.2.pn.i.i = phi ptr [ %match.2.i.i, %if.then465.i.i ], [ %s.0.i786.i.i, %do.body.i793.i.i.do.body.i793.i.i_crit_edge ]
  %s.0.i786.i.i = getelementptr i8, ptr %match.2.pn.i.i, i32 8
  %87 = ptrtoint ptr %s.0.i786.i.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %s.0.val.i787.i.i = load i32, ptr %s.0.i786.i.i, align 1
  %88 = getelementptr i8, ptr %match.2.pn.i.i, i32 12
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %s.0.val5.i788.i.i = load i32, ptr %88, align 1
  %90 = ptrtoint ptr %d.0.i785.i.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %s.0.val.i787.i.i, ptr %d.0.i785.i.i, align 1
  %add.ptr8.i.i789.i.i = getelementptr i32, ptr %d.0.i785.i.i, i32 1
  %91 = ptrtoint ptr %add.ptr8.i.i789.i.i to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 %s.0.val5.i788.i.i, ptr %add.ptr8.i.i789.i.i, align 1
  %add.ptr.i790.i.i = getelementptr i8, ptr %d.0.i785.i.i, i32 8
  %cmp.i792.i.i = icmp ult ptr %add.ptr.i790.i.i, %add.ptr302.i.i
  br i1 %cmp.i792.i.i, label %do.body.i793.i.i.do.body.i793.i.i_crit_edge, label %do.body.i793.i.i.while.cond.i.i.backedge_crit_edge

do.body.i793.i.i.while.cond.i.i.backedge_crit_edge: ; preds = %do.body.i793.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.i.backedge

do.body.i793.i.i.do.body.i793.i.i_crit_edge:      ; preds = %do.body.i793.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i793.i.i

_output_error.i.i:                                ; preds = %if.then437.i.i._output_error.i.i_crit_edge, %if.then301.i.i._output_error.i.i_crit_edge, %if.then195.i.i._output_error.i.i_crit_edge
  %ip.8826.i.i = phi ptr [ %ip.3807.i.i, %if.then195.i.i._output_error.i.i_crit_edge ], [ %ip.7.i.i, %if.then301.i.i._output_error.i.i_crit_edge ], [ %ip.7.i.i, %if.then437.i.i._output_error.i.i_crit_edge ]
  %sub.ptr.lhs.cast486.i.i = ptrtoint ptr %ip.8826.i.i to i32
  %sub.ptr.rhs.cast487.i.i = ptrtoint ptr %source to i32
  %92 = xor i32 %sub.ptr.lhs.cast486.i.i, -1
  %sub490.i.i = add i32 %92, %sub.ptr.rhs.cast487.i.i
  br label %if.end16

if.end16:                                         ; preds = %_output_error.i.i, %if.end214.i.i, %if.then10
  %result.0 = phi i32 [ %call11, %if.then10 ], [ %sub490.i.i, %_output_error.i.i ], [ %sub.ptr.sub485.i.i, %if.end214.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %result.0)
  %cmp17 = icmp slt i32 %result.0, 1
  br i1 %cmp17, label %if.end16.cleanup_crit_edge, label %if.end16.if.end19_crit_edge

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end19:                                         ; preds = %if.end16.if.end19_crit_edge, %if.then37.i.i.if.end19_crit_edge
  %result.091 = phi i32 [ %result.0, %if.end16.if.end19_crit_edge ], [ 1, %if.then37.i.i.if.end19_crit_edge ]
  %93 = ptrtoint ptr %prefixSize to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %prefixSize, align 4
  %add = add i32 %94, %originalSize
  store i32 %add, ptr %prefixSize, align 4
  %95 = ptrtoint ptr %prefixEnd4 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prefixEnd4, align 4
  %add.ptr22 = getelementptr i8, ptr %96, i32 %originalSize
  store ptr %add.ptr22, ptr %prefixEnd4, align 4
  br label %cleanup

if.else23:                                        ; preds = %if.else
  %extDictSize25 = getelementptr inbounds %struct.LZ4_streamDecode_t_internal, ptr %LZ4_streamDecode, i32 0, i32 1
  %97 = ptrtoint ptr %extDictSize25 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %1, ptr %extDictSize25, align 4
  %idx.neg = sub i32 0, %1
  %add.ptr28 = getelementptr i8, ptr %5, i32 %idx.neg
  %98 = ptrtoint ptr %LZ4_streamDecode to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %add.ptr28, ptr %LZ4_streamDecode, align 4
  %call32 = tail call fastcc i32 @LZ4_decompress_fast_extDict(ptr noundef %source, ptr noundef %dest, i32 noundef %originalSize, ptr noundef %add.ptr28, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 1
  br i1 %cmp33, label %if.else23.cleanup_crit_edge, label %if.end35

if.else23.cleanup_crit_edge:                      ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end35:                                         ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #5
  %99 = ptrtoint ptr %prefixSize to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %originalSize, ptr %prefixSize, align 4
  %add.ptr37 = getelementptr i8, ptr %dest, i32 %originalSize
  %100 = ptrtoint ptr %prefixEnd4 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %add.ptr37, ptr %prefixEnd4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.else23.cleanup_crit_edge, %if.end19, %if.end16.cleanup_crit_edge, %if.then37.i.i.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %result.0, %if.end16.cleanup_crit_edge ], [ %call32, %if.else23.cleanup_crit_edge ], [ %call, %if.end ], [ %result.091, %if.end19 ], [ %call32, %if.end35 ], [ -1, %if.then37.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @LZ4_decompress_fast_extDict(ptr noundef %source, ptr noundef %dest, i32 noundef %originalSize, ptr nocapture noundef readonly %dictStart, i32 noundef %dictSize) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1.i = getelementptr i8, ptr %dest, i32 %originalSize
  %add.ptr2.i = getelementptr i8, ptr %dictStart, i32 %dictSize
  %add.ptr11.i = getelementptr i8, ptr %add.ptr1.i, i32 -8
  %add.ptr12.i = getelementptr i8, ptr %add.ptr11.i, i32 -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %originalSize)
  %0 = icmp eq i32 %originalSize, 0
  br i1 %0, label %if.then37.i, label %if.end42.i, !prof !34

if.then37.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %source, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp39.i = icmp eq i8 %2, 0
  %cond41.i = select i1 %cmp39.i, i32 1, i32 -1
  br label %LZ4_decompress_generic.exit

if.end42.i:                                       ; preds = %entry
  %add.ptr181.i = getelementptr i8, ptr %add.ptr1.i, i32 -12
  %add.ptr438.i = getelementptr i8, ptr %add.ptr1.i, i32 -7
  %add.ptr439.i = getelementptr i8, ptr %add.ptr1.i, i32 -5
  %sub.ptr.lhs.cast447.i = ptrtoint ptr %add.ptr438.i to i32
  %sub.ptr.lhs.cast326.i = ptrtoint ptr %dest to i32
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.end42.i
  %op.0.i = phi ptr [ %dest, %if.end42.i ], [ %op.0.i.be, %while.cond.i.backedge ]
  %ip.0.i = phi ptr [ %source, %if.end42.i ], [ %ip.0.i.be, %while.cond.i.backedge ]
  %incdec.ptr.i = getelementptr i8, ptr %ip.0.i, i32 1
  %3 = ptrtoint ptr %ip.0.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ip.0.i, align 1
  %conv55.i = zext i8 %4 to i32
  %shr.i = lshr i32 %conv55.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %4)
  %cmp59.i = icmp ult i8 %4, -112
  br i1 %cmp59.i, label %cond.end.i, label %if.end106.thread.i

cond.end.i:                                       ; preds = %while.cond.i
  %cmp68.i.not = icmp ugt ptr %op.0.i, %add.ptr12.i
  br i1 %cmp68.i.not, label %if.end106.i, label %if.then77.i, !prof !35

if.then77.i:                                      ; preds = %cond.end.i
  %5 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %incdec.ptr.i, align 1
  %7 = ptrtoint ptr %op.0.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %op.0.i, align 1
  %add.ptr80.i = getelementptr i8, ptr %op.0.i, i32 %shr.i
  %add.ptr81.i = getelementptr i8, ptr %incdec.ptr.i, i32 %shr.i
  %and82.i = and i32 %conv55.i, 15
  %8 = ptrtoint ptr %add.ptr81.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %add.ptr81.val.i = load i16, ptr %add.ptr81.i, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %add.ptr81.val.i) #3
  %conv83.i = zext i16 %9 to i32
  %add.ptr84.i = getelementptr i8, ptr %add.ptr81.i, i32 2
  %idx.neg85.i = sub nsw i32 0, %conv83.i
  %add.ptr86.i = getelementptr i8, ptr %add.ptr80.i, i32 %idx.neg85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and82.i)
  %cmp87.not.i = icmp eq i32 %and82.i, 15
  br i1 %cmp87.not.i, label %_copy_match.i.thread, label %land.lhs.true89.i

_copy_match.i.thread:                             ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %conv83.i, ptr %add.ptr80.i, align 1
  br label %do.body263.preheader.i

land.lhs.true89.i:                                ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %9)
  %cmp90.i = icmp ult i16 %9, 8
  %cmp95.not.i = icmp ult ptr %add.ptr86.i, %dest
  %or.cond.i = select i1 %cmp90.i, i1 true, i1 %cmp95.not.i
  br i1 %or.cond.i, label %_copy_match.i.thread17, label %if.then97.i

_copy_match.i.thread17:                           ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %conv83.i, ptr %add.ptr80.i, align 1
  br label %if.end294.i

if.then97.i:                                      ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %add.ptr86.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %add.ptr86.i, align 1
  %14 = ptrtoint ptr %add.ptr80.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %add.ptr80.i, align 1
  %add.ptr100.i = getelementptr i8, ptr %add.ptr80.i, i32 8
  %add.ptr101.i = getelementptr i8, ptr %add.ptr86.i, i32 8
  %15 = ptrtoint ptr %add.ptr101.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %add.ptr101.i, align 1
  %17 = ptrtoint ptr %add.ptr100.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %add.ptr100.i, align 1
  %add.ptr102.i = getelementptr i8, ptr %add.ptr80.i, i32 16
  %add.ptr103.i = getelementptr i8, ptr %add.ptr86.i, i32 16
  %18 = ptrtoint ptr %add.ptr103.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %add.ptr103.i, align 1
  %20 = ptrtoint ptr %add.ptr102.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %19, ptr %add.ptr102.i, align 1
  %add.i = add nuw nsw i32 %and82.i, 4
  %add.ptr104.i = getelementptr i8, ptr %add.ptr80.i, i32 %add.i
  br label %while.cond.i.backedge

if.end106.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr.i)
  %cmp107.i = icmp eq i32 %shr.i, 15
  br i1 %cmp107.i, label %if.end106.i.do.body.i.preheader_crit_edge, label %if.end106.i.land.lhs.true191.critedge.i_crit_edge

if.end106.i.land.lhs.true191.critedge.i_crit_edge: ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true191.critedge.i

if.end106.i.do.body.i.preheader_crit_edge:        ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.preheader

if.end106.thread.i:                               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %shr.i)
  %cmp107795.i = icmp eq i32 %shr.i, 15
  br i1 %cmp107795.i, label %if.end106.thread.i.do.body.i.preheader_crit_edge, label %if.end106.thread.i.land.lhs.true191.critedge.i_crit_edge

if.end106.thread.i.land.lhs.true191.critedge.i_crit_edge: ; preds = %if.end106.thread.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true191.critedge.i

if.end106.thread.i.do.body.i.preheader_crit_edge: ; preds = %if.end106.thread.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.end106.thread.i.do.body.i.preheader_crit_edge, %if.end106.i.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.i.preheader
  %length.0.i = phi i32 [ %add129.i, %do.body.i.do.body.i_crit_edge ], [ 15, %do.body.i.preheader ]
  %ip.1.i = phi ptr [ %incdec.ptr127.i, %do.body.i.do.body.i_crit_edge ], [ %incdec.ptr.i, %do.body.i.preheader ]
  %incdec.ptr127.i = getelementptr i8, ptr %ip.1.i, i32 1
  %21 = ptrtoint ptr %ip.1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ip.1.i, align 1
  %conv128.i = zext i8 %22 to i32
  %add129.i = add i32 %length.0.i, %conv128.i
  %cmp144.i = icmp eq i8 %22, -1
  br i1 %cmp144.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.land.lhs.true191.critedge.i_crit_edge

do.body.i.land.lhs.true191.critedge.i_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true191.critedge.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

land.lhs.true191.critedge.i:                      ; preds = %do.body.i.land.lhs.true191.critedge.i_crit_edge, %if.end106.thread.i.land.lhs.true191.critedge.i_crit_edge, %if.end106.i.land.lhs.true191.critedge.i_crit_edge
  %ip.3807.i = phi ptr [ %incdec.ptr.i, %if.end106.thread.i.land.lhs.true191.critedge.i_crit_edge ], [ %incdec.ptr.i, %if.end106.i.land.lhs.true191.critedge.i_crit_edge ], [ %incdec.ptr127.i, %do.body.i.land.lhs.true191.critedge.i_crit_edge ]
  %length.2804.i = phi i32 [ %shr.i, %if.end106.thread.i.land.lhs.true191.critedge.i_crit_edge ], [ %shr.i, %if.end106.i.land.lhs.true191.critedge.i_crit_edge ], [ %add129.i, %do.body.i.land.lhs.true191.critedge.i_crit_edge ]
  %add.ptr175810.i = getelementptr i8, ptr %op.0.i, i32 %length.2804.i
  %cmp193.i = icmp ugt ptr %add.ptr175810.i, %add.ptr11.i
  br i1 %cmp193.i, label %if.then195.i, label %land.lhs.true191.critedge.i.do.body.i.i_crit_edge

land.lhs.true191.critedge.i.do.body.i.i_crit_edge: ; preds = %land.lhs.true191.critedge.i
  br label %do.body.i.i

if.then195.i:                                     ; preds = %land.lhs.true191.critedge.i
  %cmp211.not.i = icmp eq ptr %add.ptr175810.i, %add.ptr1.i
  br i1 %cmp211.not.i, label %if.end214.i, label %if.then195.i._output_error.i_crit_edge

if.then195.i._output_error.i_crit_edge:           ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end214.i:                                      ; preds = %if.then195.i
  call void @__sanitizer_cov_trace_pc() #5
  %23 = call ptr @memmove(ptr %op.0.i, ptr %ip.3807.i, i32 %length.2804.i)
  %add.ptr226814.i = getelementptr i8, ptr %ip.3807.i, i32 %length.2804.i
  %sub.ptr.lhs.cast483.i = ptrtoint ptr %add.ptr226814.i to i32
  %sub.ptr.rhs.cast484.i = ptrtoint ptr %source to i32
  %sub.ptr.sub485.i = sub i32 %sub.ptr.lhs.cast483.i, %sub.ptr.rhs.cast484.i
  br label %LZ4_decompress_generic.exit

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %land.lhs.true191.critedge.i.do.body.i.i_crit_edge
  %d.0.i.i = phi ptr [ %add.ptr.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %op.0.i, %land.lhs.true191.critedge.i.do.body.i.i_crit_edge ]
  %s.0.i.i = phi ptr [ %add.ptr1.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %ip.3807.i, %land.lhs.true191.critedge.i.do.body.i.i_crit_edge ]
  %24 = ptrtoint ptr %s.0.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %s.0.val.i.i = load i32, ptr %s.0.i.i, align 1
  %25 = getelementptr i8, ptr %s.0.i.i, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %s.0.val5.i.i = load i32, ptr %25, align 1
  %27 = ptrtoint ptr %d.0.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %s.0.val.i.i, ptr %d.0.i.i, align 1
  %add.ptr8.i.i.i = getelementptr i32, ptr %d.0.i.i, i32 1
  %28 = ptrtoint ptr %add.ptr8.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %s.0.val5.i.i, ptr %add.ptr8.i.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %d.0.i.i, i32 8
  %add.ptr1.i.i = getelementptr i8, ptr %s.0.i.i, i32 8
  %cmp.i.i = icmp ult ptr %add.ptr.i.i, %add.ptr175810.i
  br i1 %cmp.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %_copy_match.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.i

_copy_match.i:                                    ; preds = %do.body.i.i
  %add.ptr235.i = getelementptr i8, ptr %ip.3807.i, i32 %length.2804.i
  %29 = ptrtoint ptr %add.ptr235.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %ip.4.val.i = load i16, ptr %add.ptr235.i, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %ip.4.val.i) #3
  %conv238.i = zext i16 %30 to i32
  %add.ptr239.i = getelementptr i8, ptr %add.ptr235.i, i32 2
  %idx.neg240.i = sub nsw i32 0, %conv238.i
  %add.ptr241.i = getelementptr i8, ptr %add.ptr175810.i, i32 %idx.neg240.i
  %and242.i = and i32 %conv55.i, 15
  %31 = ptrtoint ptr %add.ptr175810.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %conv238.i, ptr %add.ptr175810.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and242.i)
  %cmp259.i = icmp eq i32 %and242.i, 15
  br i1 %cmp259.i, label %_copy_match.i.do.body263.preheader.i_crit_edge, label %_copy_match.i.if.end294.i_crit_edge

_copy_match.i.if.end294.i_crit_edge:              ; preds = %_copy_match.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end294.i

_copy_match.i.do.body263.preheader.i_crit_edge:   ; preds = %_copy_match.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body263.preheader.i

do.body263.preheader.i:                           ; preds = %_copy_match.i.do.body263.preheader.i_crit_edge, %_copy_match.i.thread
  %ip.5.i16 = phi ptr [ %add.ptr84.i, %_copy_match.i.thread ], [ %add.ptr239.i, %_copy_match.i.do.body263.preheader.i_crit_edge ]
  %op.2.i14 = phi ptr [ %add.ptr80.i, %_copy_match.i.thread ], [ %add.ptr175810.i, %_copy_match.i.do.body263.preheader.i_crit_edge ]
  %offset.0.i12 = phi i32 [ %conv83.i, %_copy_match.i.thread ], [ %conv238.i, %_copy_match.i.do.body263.preheader.i_crit_edge ]
  %match.0.i10 = phi ptr [ %add.ptr86.i, %_copy_match.i.thread ], [ %add.ptr241.i, %_copy_match.i.do.body263.preheader.i_crit_edge ]
  br label %do.body263.us.i

do.body263.us.i:                                  ; preds = %do.body263.us.i.do.body263.us.i_crit_edge, %do.body263.preheader.i
  %length.6.us.i = phi i32 [ %add273.us.i, %do.body263.us.i.do.body263.us.i_crit_edge ], [ 15, %do.body263.preheader.i ]
  %ip.6.us.i = phi ptr [ %incdec.ptr264.us.i, %do.body263.us.i.do.body263.us.i_crit_edge ], [ %ip.5.i16, %do.body263.preheader.i ]
  %incdec.ptr264.us.i = getelementptr i8, ptr %ip.6.us.i, i32 1
  %32 = ptrtoint ptr %ip.6.us.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ip.6.us.i, align 1
  %conv265.us.i = zext i8 %33 to i32
  %add273.us.i = add i32 %length.6.us.i, %conv265.us.i
  %cmp275.us.i = icmp eq i8 %33, -1
  br i1 %cmp275.us.i, label %do.body263.us.i.do.body263.us.i_crit_edge, label %do.body263.us.i.if.end294.i_crit_edge

do.body263.us.i.if.end294.i_crit_edge:            ; preds = %do.body263.us.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end294.i

do.body263.us.i.do.body263.us.i_crit_edge:        ; preds = %do.body263.us.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body263.us.i

if.end294.i:                                      ; preds = %do.body263.us.i.if.end294.i_crit_edge, %_copy_match.i.if.end294.i_crit_edge, %_copy_match.i.thread17
  %op.2.i13 = phi ptr [ %add.ptr175810.i, %_copy_match.i.if.end294.i_crit_edge ], [ %add.ptr80.i, %_copy_match.i.thread17 ], [ %op.2.i14, %do.body263.us.i.if.end294.i_crit_edge ]
  %offset.0.i11 = phi i32 [ %conv238.i, %_copy_match.i.if.end294.i_crit_edge ], [ %conv83.i, %_copy_match.i.thread17 ], [ %offset.0.i12, %do.body263.us.i.if.end294.i_crit_edge ]
  %match.0.i9 = phi ptr [ %add.ptr241.i, %_copy_match.i.if.end294.i_crit_edge ], [ %add.ptr86.i, %_copy_match.i.thread17 ], [ %match.0.i10, %do.body263.us.i.if.end294.i_crit_edge ]
  %length.8.i = phi i32 [ %and242.i, %_copy_match.i.if.end294.i_crit_edge ], [ %and82.i, %_copy_match.i.thread17 ], [ %add273.us.i, %do.body263.us.i.if.end294.i_crit_edge ]
  %ip.7.i = phi ptr [ %add.ptr239.i, %_copy_match.i.if.end294.i_crit_edge ], [ %add.ptr84.i, %_copy_match.i.thread17 ], [ %incdec.ptr264.us.i, %do.body263.us.i.if.end294.i_crit_edge ]
  %add295.i = add i32 %length.8.i, 4
  %cmp299.i = icmp ult ptr %match.0.i9, %dest
  %add.ptr302.i = getelementptr i8, ptr %op.2.i13, i32 %add295.i
  br i1 %cmp299.i, label %if.then301.i, label %if.end362.i

if.then301.i:                                     ; preds = %if.end294.i
  %cmp304.i = icmp ugt ptr %add.ptr302.i, %add.ptr439.i
  br i1 %cmp304.i, label %if.then301.i._output_error.i_crit_edge, label %if.end325.i, !prof !35

if.then301.i._output_error.i_crit_edge:           ; preds = %if.then301.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end325.i:                                      ; preds = %if.then301.i
  %sub.ptr.rhs.cast327.i = ptrtoint ptr %match.0.i9 to i32
  %sub.ptr.sub328.i = sub i32 %sub.ptr.lhs.cast326.i, %sub.ptr.rhs.cast327.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add295.i, i32 %sub.ptr.sub328.i)
  %cmp329.not.i = icmp ugt i32 %add295.i, %sub.ptr.sub328.i
  br i1 %cmp329.not.i, label %if.else338.i, label %if.then331.i

if.then331.i:                                     ; preds = %if.end325.i
  call void @__sanitizer_cov_trace_pc() #5
  %idx.neg335.i = sub i32 0, %sub.ptr.sub328.i
  %add.ptr336.i = getelementptr i8, ptr %add.ptr2.i, i32 %idx.neg335.i
  %34 = call ptr @memmove(ptr %op.2.i13, ptr %add.ptr336.i, i32 %add295.i)
  br label %while.cond.i.backedge

if.else338.i:                                     ; preds = %if.end325.i
  %sub.i = sub i32 %add295.i, %sub.ptr.sub328.i
  %idx.neg342.i = sub i32 0, %sub.ptr.sub328.i
  %add.ptr343.i = getelementptr i8, ptr %add.ptr2.i, i32 %idx.neg342.i
  %35 = call ptr @memcpy(ptr %op.2.i13, ptr %add.ptr343.i, i32 %sub.ptr.sub328.i)
  %add.ptr344.i = getelementptr i8, ptr %op.2.i13, i32 %sub.ptr.sub328.i
  %sub.ptr.lhs.cast345.i = ptrtoint ptr %add.ptr344.i to i32
  %sub.ptr.sub347.i = sub i32 %sub.ptr.lhs.cast345.i, %sub.ptr.lhs.cast326.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub.ptr.sub347.i)
  %cmp348.i = icmp ugt i32 %sub.i, %sub.ptr.sub347.i
  br i1 %cmp348.i, label %if.then350.i, label %if.else358.i

if.then350.i:                                     ; preds = %if.else338.i
  %cmp353849.i = icmp ult ptr %add.ptr344.i, %add.ptr302.i
  br i1 %cmp353849.i, label %if.then350.i.while.body355.i_crit_edge, label %if.then350.i.while.cond.i.backedge_crit_edge

if.then350.i.while.cond.i.backedge_crit_edge:     ; preds = %if.then350.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

if.then350.i.while.body355.i_crit_edge:           ; preds = %if.then350.i
  br label %while.body355.i

while.body355.i:                                  ; preds = %while.body355.i.while.body355.i_crit_edge, %if.then350.i.while.body355.i_crit_edge
  %copyFrom.0851.i = phi ptr [ %incdec.ptr356.i, %while.body355.i.while.body355.i_crit_edge ], [ %dest, %if.then350.i.while.body355.i_crit_edge ]
  %op.3850.i = phi ptr [ %incdec.ptr357.i, %while.body355.i.while.body355.i_crit_edge ], [ %add.ptr344.i, %if.then350.i.while.body355.i_crit_edge ]
  %incdec.ptr356.i = getelementptr i8, ptr %copyFrom.0851.i, i32 1
  %36 = ptrtoint ptr %copyFrom.0851.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %copyFrom.0851.i, align 1
  %incdec.ptr357.i = getelementptr i8, ptr %op.3850.i, i32 1
  %38 = ptrtoint ptr %op.3850.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %op.3850.i, align 1
  %exitcond861.not.i = icmp eq ptr %incdec.ptr357.i, %add.ptr302.i
  br i1 %exitcond861.not.i, label %while.body355.i.while.cond.i.backedge_crit_edge, label %while.body355.i.while.body355.i_crit_edge

while.body355.i.while.body355.i_crit_edge:        ; preds = %while.body355.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body355.i

while.body355.i.while.cond.i.backedge_crit_edge:  ; preds = %while.body355.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

if.else358.i:                                     ; preds = %if.else338.i
  call void @__sanitizer_cov_trace_pc() #5
  %39 = call ptr @memcpy(ptr %add.ptr344.i, ptr %dest, i32 %sub.i)
  br label %while.cond.i.backedge

if.end362.i:                                      ; preds = %if.end294.i
  %cmp367.i = icmp ugt ptr %add.ptr302.i, %add.ptr181.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %offset.0.i11)
  %cmp402.i = icmp ult i32 %offset.0.i11, 8
  br i1 %cmp402.i, label %if.then410.i, label %if.else424.i, !prof !35

if.then410.i:                                     ; preds = %if.end362.i
  call void @__sanitizer_cov_trace_pc() #5
  %40 = ptrtoint ptr %match.0.i9 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %match.0.i9, align 1
  %42 = ptrtoint ptr %op.2.i13 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %op.2.i13, align 1
  %arrayidx412.i = getelementptr i8, ptr %match.0.i9, i32 1
  %43 = ptrtoint ptr %arrayidx412.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx412.i, align 1
  %arrayidx413.i = getelementptr i8, ptr %op.2.i13, i32 1
  %45 = ptrtoint ptr %arrayidx413.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx413.i, align 1
  %arrayidx414.i = getelementptr i8, ptr %match.0.i9, i32 2
  %46 = ptrtoint ptr %arrayidx414.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx414.i, align 1
  %arrayidx415.i = getelementptr i8, ptr %op.2.i13, i32 2
  %48 = ptrtoint ptr %arrayidx415.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx415.i, align 1
  %arrayidx416.i = getelementptr i8, ptr %match.0.i9, i32 3
  %49 = ptrtoint ptr %arrayidx416.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx416.i, align 1
  %arrayidx417.i = getelementptr i8, ptr %op.2.i13, i32 3
  %51 = ptrtoint ptr %arrayidx417.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx417.i, align 1
  %arrayidx418.i = getelementptr [8 x i32], ptr @LZ4_decompress_generic.inc32table, i32 0, i32 %offset.0.i11
  %52 = ptrtoint ptr %arrayidx418.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx418.i, align 4
  %add.ptr419.i = getelementptr i8, ptr %match.0.i9, i32 %53
  %add.ptr420.i = getelementptr i8, ptr %op.2.i13, i32 4
  %54 = ptrtoint ptr %add.ptr419.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %add.ptr419.i, align 1
  %56 = ptrtoint ptr %add.ptr420.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %55, ptr %add.ptr420.i, align 1
  %arrayidx421.i = getelementptr [8 x i32], ptr @LZ4_decompress_generic.dec64table, i32 0, i32 %offset.0.i11
  %57 = ptrtoint ptr %arrayidx421.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx421.i, align 4
  %idx.neg422.i = sub i32 0, %58
  %add.ptr423.i = getelementptr i8, ptr %add.ptr419.i, i32 %idx.neg422.i
  br label %if.end426.i

if.else424.i:                                     ; preds = %if.end362.i
  call void @__sanitizer_cov_trace_pc() #5
  %59 = ptrtoint ptr %match.0.i9 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %match.0.val.i = load i32, ptr %match.0.i9, align 1
  %60 = getelementptr i8, ptr %match.0.i9, i32 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %match.0.val773.i = load i32, ptr %60, align 1
  %62 = ptrtoint ptr %op.2.i13 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %match.0.val.i, ptr %op.2.i13, align 1
  %add.ptr8.i.i = getelementptr i32, ptr %op.2.i13, i32 1
  %63 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %match.0.val773.i, ptr %add.ptr8.i.i, align 1
  %add.ptr425.i = getelementptr i8, ptr %match.0.i9, i32 8
  br label %if.end426.i

if.end426.i:                                      ; preds = %if.else424.i, %if.then410.i
  %match.2.i = phi ptr [ %add.ptr423.i, %if.then410.i ], [ %add.ptr425.i, %if.else424.i ]
  %add.ptr427.i = getelementptr i8, ptr %op.2.i13, i32 8
  br i1 %cmp367.i, label %if.then437.i, label %if.else462.i, !prof !35

if.then437.i:                                     ; preds = %if.end426.i
  %cmp440.i = icmp ugt ptr %add.ptr302.i, %add.ptr439.i
  br i1 %cmp440.i, label %if.then437.i._output_error.i_crit_edge, label %if.end443.i

if.then437.i._output_error.i_crit_edge:           ; preds = %if.then437.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_output_error.i

if.end443.i:                                      ; preds = %if.then437.i
  %cmp444.i = icmp ult ptr %add.ptr427.i, %add.ptr438.i
  br i1 %cmp444.i, label %if.end443.i.do.body.i782.i_crit_edge, label %if.end443.i.if.end451.i_crit_edge

if.end443.i.if.end451.i_crit_edge:                ; preds = %if.end443.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end451.i

if.end443.i.do.body.i782.i_crit_edge:             ; preds = %if.end443.i
  br label %do.body.i782.i

do.body.i782.i:                                   ; preds = %do.body.i782.i.do.body.i782.i_crit_edge, %if.end443.i.do.body.i782.i_crit_edge
  %d.0.i774.i = phi ptr [ %add.ptr.i779.i, %do.body.i782.i.do.body.i782.i_crit_edge ], [ %add.ptr427.i, %if.end443.i.do.body.i782.i_crit_edge ]
  %s.0.i775.i = phi ptr [ %add.ptr1.i780.i, %do.body.i782.i.do.body.i782.i_crit_edge ], [ %match.2.i, %if.end443.i.do.body.i782.i_crit_edge ]
  %64 = ptrtoint ptr %s.0.i775.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %s.0.val.i776.i = load i32, ptr %s.0.i775.i, align 1
  %65 = getelementptr i8, ptr %s.0.i775.i, i32 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %s.0.val5.i777.i = load i32, ptr %65, align 1
  %67 = ptrtoint ptr %d.0.i774.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %s.0.val.i776.i, ptr %d.0.i774.i, align 1
  %add.ptr8.i.i778.i = getelementptr i32, ptr %d.0.i774.i, i32 1
  %68 = ptrtoint ptr %add.ptr8.i.i778.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %s.0.val5.i777.i, ptr %add.ptr8.i.i778.i, align 1
  %add.ptr.i779.i = getelementptr i8, ptr %d.0.i774.i, i32 8
  %add.ptr1.i780.i = getelementptr i8, ptr %s.0.i775.i, i32 8
  %cmp.i781.i = icmp ult ptr %add.ptr.i779.i, %add.ptr438.i
  br i1 %cmp.i781.i, label %do.body.i782.i.do.body.i782.i_crit_edge, label %LZ4_wildCopy.exit783.i

do.body.i782.i.do.body.i782.i_crit_edge:          ; preds = %do.body.i782.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i782.i

LZ4_wildCopy.exit783.i:                           ; preds = %do.body.i782.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.ptr.rhs.cast448.i = ptrtoint ptr %add.ptr427.i to i32
  %sub.ptr.sub449.i = sub i32 %sub.ptr.lhs.cast447.i, %sub.ptr.rhs.cast448.i
  %add.ptr450.i = getelementptr i8, ptr %match.2.i, i32 %sub.ptr.sub449.i
  br label %if.end451.i

if.end451.i:                                      ; preds = %LZ4_wildCopy.exit783.i, %if.end443.i.if.end451.i_crit_edge
  %match.3.i = phi ptr [ %add.ptr450.i, %LZ4_wildCopy.exit783.i ], [ %match.2.i, %if.end443.i.if.end451.i_crit_edge ]
  %op.7.i = phi ptr [ %add.ptr438.i, %LZ4_wildCopy.exit783.i ], [ %add.ptr427.i, %if.end443.i.if.end451.i_crit_edge ]
  %cmp453843.i = icmp ult ptr %op.7.i, %add.ptr302.i
  br i1 %cmp453843.i, label %if.end451.i.while.body455.i_crit_edge, label %if.end451.i.while.cond.i.backedge_crit_edge

if.end451.i.while.cond.i.backedge_crit_edge:      ; preds = %if.end451.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

if.end451.i.while.body455.i_crit_edge:            ; preds = %if.end451.i
  br label %while.body455.i

while.body455.i:                                  ; preds = %while.body455.i.while.body455.i_crit_edge, %if.end451.i.while.body455.i_crit_edge
  %op.8845.i = phi ptr [ %incdec.ptr457.i, %while.body455.i.while.body455.i_crit_edge ], [ %op.7.i, %if.end451.i.while.body455.i_crit_edge ]
  %match.4844.i = phi ptr [ %incdec.ptr456.i, %while.body455.i.while.body455.i_crit_edge ], [ %match.3.i, %if.end451.i.while.body455.i_crit_edge ]
  %incdec.ptr456.i = getelementptr i8, ptr %match.4844.i, i32 1
  %69 = ptrtoint ptr %match.4844.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %match.4844.i, align 1
  %incdec.ptr457.i = getelementptr i8, ptr %op.8845.i, i32 1
  %71 = ptrtoint ptr %op.8845.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %op.8845.i, align 1
  %cmp453.i = icmp ult ptr %incdec.ptr457.i, %add.ptr302.i
  br i1 %cmp453.i, label %while.body455.i.while.body455.i_crit_edge, label %while.body455.i.while.cond.i.backedge_crit_edge

while.body455.i.while.cond.i.backedge_crit_edge:  ; preds = %while.body455.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

while.body455.i.while.body455.i_crit_edge:        ; preds = %while.body455.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body455.i

if.else462.i:                                     ; preds = %if.end426.i
  %72 = ptrtoint ptr %match.2.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %match.2.val.i = load i32, ptr %match.2.i, align 1
  %73 = getelementptr i8, ptr %match.2.i, i32 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %match.2.val772.i = load i32, ptr %73, align 1
  %75 = ptrtoint ptr %add.ptr427.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %match.2.val.i, ptr %add.ptr427.i, align 1
  %add.ptr8.i784.i = getelementptr i8, ptr %op.2.i13, i32 12
  %76 = ptrtoint ptr %add.ptr8.i784.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %match.2.val772.i, ptr %add.ptr8.i784.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add295.i)
  %cmp463.i = icmp ugt i32 %add295.i, 16
  br i1 %cmp463.i, label %if.then465.i, label %if.else462.i.while.cond.i.backedge_crit_edge

if.else462.i.while.cond.i.backedge_crit_edge:     ; preds = %if.else462.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %do.body.i793.i.while.cond.i.backedge_crit_edge, %if.else462.i.while.cond.i.backedge_crit_edge, %while.body455.i.while.cond.i.backedge_crit_edge, %if.end451.i.while.cond.i.backedge_crit_edge, %if.else358.i, %while.body355.i.while.cond.i.backedge_crit_edge, %if.then350.i.while.cond.i.backedge_crit_edge, %if.then331.i, %if.then97.i
  %op.0.i.be = phi ptr [ %add.ptr302.i, %if.else462.i.while.cond.i.backedge_crit_edge ], [ %add.ptr302.i, %if.end451.i.while.cond.i.backedge_crit_edge ], [ %add.ptr344.i, %if.then350.i.while.cond.i.backedge_crit_edge ], [ %add.ptr302.i, %if.then331.i ], [ %add.ptr302.i, %if.else358.i ], [ %add.ptr104.i, %if.then97.i ], [ %add.ptr302.i, %while.body355.i.while.cond.i.backedge_crit_edge ], [ %add.ptr302.i, %while.body455.i.while.cond.i.backedge_crit_edge ], [ %add.ptr302.i, %do.body.i793.i.while.cond.i.backedge_crit_edge ]
  %ip.0.i.be = phi ptr [ %ip.7.i, %if.else462.i.while.cond.i.backedge_crit_edge ], [ %ip.7.i, %if.end451.i.while.cond.i.backedge_crit_edge ], [ %ip.7.i, %if.then350.i.while.cond.i.backedge_crit_edge ], [ %ip.7.i, %if.then331.i ], [ %ip.7.i, %if.else358.i ], [ %add.ptr84.i, %if.then97.i ], [ %ip.7.i, %while.body355.i.while.cond.i.backedge_crit_edge ], [ %ip.7.i, %while.body455.i.while.cond.i.backedge_crit_edge ], [ %ip.7.i, %do.body.i793.i.while.cond.i.backedge_crit_edge ]
  br label %while.cond.i

if.then465.i:                                     ; preds = %if.else462.i
  %add.ptr466.i = getelementptr i8, ptr %op.2.i13, i32 16
  br label %do.body.i793.i

do.body.i793.i:                                   ; preds = %do.body.i793.i.do.body.i793.i_crit_edge, %if.then465.i
  %d.0.i785.i = phi ptr [ %add.ptr466.i, %if.then465.i ], [ %add.ptr.i790.i, %do.body.i793.i.do.body.i793.i_crit_edge ]
  %match.2.pn.i = phi ptr [ %match.2.i, %if.then465.i ], [ %s.0.i786.i, %do.body.i793.i.do.body.i793.i_crit_edge ]
  %s.0.i786.i = getelementptr i8, ptr %match.2.pn.i, i32 8
  %77 = ptrtoint ptr %s.0.i786.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %s.0.val.i787.i = load i32, ptr %s.0.i786.i, align 1
  %78 = getelementptr i8, ptr %match.2.pn.i, i32 12
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %s.0.val5.i788.i = load i32, ptr %78, align 1
  %80 = ptrtoint ptr %d.0.i785.i to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %s.0.val.i787.i, ptr %d.0.i785.i, align 1
  %add.ptr8.i.i789.i = getelementptr i32, ptr %d.0.i785.i, i32 1
  %81 = ptrtoint ptr %add.ptr8.i.i789.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %s.0.val5.i788.i, ptr %add.ptr8.i.i789.i, align 1
  %add.ptr.i790.i = getelementptr i8, ptr %d.0.i785.i, i32 8
  %cmp.i792.i = icmp ult ptr %add.ptr.i790.i, %add.ptr302.i
  br i1 %cmp.i792.i, label %do.body.i793.i.do.body.i793.i_crit_edge, label %do.body.i793.i.while.cond.i.backedge_crit_edge

do.body.i793.i.while.cond.i.backedge_crit_edge:   ; preds = %do.body.i793.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.backedge

do.body.i793.i.do.body.i793.i_crit_edge:          ; preds = %do.body.i793.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i793.i

_output_error.i:                                  ; preds = %if.then437.i._output_error.i_crit_edge, %if.then301.i._output_error.i_crit_edge, %if.then195.i._output_error.i_crit_edge
  %ip.8826.i = phi ptr [ %ip.3807.i, %if.then195.i._output_error.i_crit_edge ], [ %ip.7.i, %if.then437.i._output_error.i_crit_edge ], [ %ip.7.i, %if.then301.i._output_error.i_crit_edge ]
  %sub.ptr.lhs.cast486.i = ptrtoint ptr %ip.8826.i to i32
  %sub.ptr.rhs.cast487.i = ptrtoint ptr %source to i32
  %82 = xor i32 %sub.ptr.lhs.cast486.i, -1
  %sub490.i = add i32 %82, %sub.ptr.rhs.cast487.i
  br label %LZ4_decompress_generic.exit

LZ4_decompress_generic.exit:                      ; preds = %_output_error.i, %if.end214.i, %if.then37.i
  %retval.0.i = phi i32 [ %sub490.i, %_output_error.i ], [ %sub.ptr.sub485.i, %if.end214.i ], [ %cond41.i, %if.then37.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @LZ4_decompress_safe_usingDict(ptr noundef %source, ptr noundef %dest, i32 noundef %compressedSize, i32 noundef %maxOutputSize, ptr noundef readonly %dictStart, i32 noundef %dictSize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dictSize)
  %cmp = icmp eq i32 %dictSize, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @LZ4_decompress_safe(ptr noundef %source, ptr noundef %dest, i32 noundef %compressedSize, i32 noundef %maxOutputSize)
  br label %return

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dictStart, i32 %dictSize
  %cmp1 = icmp eq ptr %add.ptr, %dest
  br i1 %cmp1, label %if.then2, label %if.end8

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %dictSize)
  %cmp3 = icmp sgt i32 %dictSize, 65534
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  %call5 = tail call fastcc i32 @LZ4_decompress_safe_withPrefix64k(ptr noundef %source, ptr noundef %dest, i32 noundef %compressedSize, i32 noundef %maxOutputSize)
  br label %return

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  %call7 = tail call fastcc i32 @LZ4_decompress_safe_withSmallPrefix(ptr noundef %source, ptr noundef %dest, i32 noundef %compressedSize, i32 noundef %maxOutputSize, i32 noundef %dictSize)
  br label %return

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call9 = tail call i32 @LZ4_decompress_safe_forceExtDict(ptr noundef %source, ptr noundef %dest, i32 noundef %compressedSize, i32 noundef %maxOutputSize, ptr noundef %dictStart, i32 noundef %dictSize)
  br label %return

return:                                           ; preds = %if.end8, %if.end6, %if.then4, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call5, %if.then4 ], [ %call7, %if.end6 ], [ %call9, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @LZ4_decompress_fast_usingDict(ptr noundef %source, ptr noundef %dest, i32 noundef %originalSize, ptr noundef readonly %dictStart, i32 noundef %dictSize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dictSize)
  %cmp = icmp eq i32 %dictSize, 0
  %add.ptr = getelementptr i8, ptr %dictStart, i32 %dictSize
  %cmp1 = icmp eq ptr %add.ptr, %dest
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @LZ4_decompress_fast(ptr noundef %source, ptr noundef %dest, i32 noundef %originalSize)
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call fastcc i32 @LZ4_decompress_fast_extDict(ptr noundef %source, ptr noundef %dest, i32 noundef %originalSize, ptr noundef %dictStart, i32 noundef %dictSize)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__ksymtab_LZ4_decompress_safe, !1, !"__ksymtab_LZ4_decompress_safe", i1 false, i1 false}
!1 = !{!"../lib/lz4/lz4_decompress.c", i32 705, i32 1}
!2 = !{ptr @__ksymtab_LZ4_decompress_safe_partial, !3, !"__ksymtab_LZ4_decompress_safe_partial", i1 false, i1 false}
!3 = !{!"../lib/lz4/lz4_decompress.c", i32 706, i32 1}
!4 = !{ptr @__ksymtab_LZ4_decompress_fast, !5, !"__ksymtab_LZ4_decompress_fast", i1 false, i1 false}
!5 = !{!"../lib/lz4/lz4_decompress.c", i32 707, i32 1}
!6 = !{ptr @__ksymtab_LZ4_setStreamDecode, !7, !"__ksymtab_LZ4_setStreamDecode", i1 false, i1 false}
!7 = !{!"../lib/lz4/lz4_decompress.c", i32 708, i32 1}
!8 = !{ptr @__ksymtab_LZ4_decompress_safe_continue, !9, !"__ksymtab_LZ4_decompress_safe_continue", i1 false, i1 false}
!9 = !{!"../lib/lz4/lz4_decompress.c", i32 709, i32 1}
!10 = !{ptr @__ksymtab_LZ4_decompress_fast_continue, !11, !"__ksymtab_LZ4_decompress_fast_continue", i1 false, i1 false}
!11 = !{!"../lib/lz4/lz4_decompress.c", i32 710, i32 1}
!12 = !{ptr @__ksymtab_LZ4_decompress_safe_usingDict, !13, !"__ksymtab_LZ4_decompress_safe_usingDict", i1 false, i1 false}
!13 = !{!"../lib/lz4/lz4_decompress.c", i32 711, i32 1}
!14 = !{ptr @__ksymtab_LZ4_decompress_fast_usingDict, !15, !"__ksymtab_LZ4_decompress_fast_usingDict", i1 false, i1 false}
!15 = !{!"../lib/lz4/lz4_decompress.c", i32 712, i32 1}
!16 = !{ptr @__UNIQUE_ID_file113, !17, !"__UNIQUE_ID_file113", i1 false, i1 false}
!17 = !{!"../lib/lz4/lz4_decompress.c", i32 714, i32 1}
!18 = !{ptr @__UNIQUE_ID_license114, !17, !"__UNIQUE_ID_license114", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_description115, !20, !"__UNIQUE_ID_description115", i1 false, i1 false}
!20 = !{!"../lib/lz4/lz4_decompress.c", i32 715, i32 1}
!21 = !{ptr @LZ4_decompress_generic.inc32table, !22, !"inc32table", i1 false, i1 false}
!22 = !{!"../lib/lz4/lz4_decompress.c", i32 91, i32 28}
!23 = !{ptr @LZ4_decompress_generic.dec64table, !24, !"dec64table", i1 false, i1 false}
!24 = !{!"../lib/lz4/lz4_decompress.c", i32 92, i32 19}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"branch_weights", i32 1, i32 4001}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{!"branch_weights", i32 4003, i32 4001}
