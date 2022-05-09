; ModuleID = '/llk/IR_all_yes/lib/lz4/lz4_compress.c_pt.bc'
source_filename = "../lib/lz4/lz4_compress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+LZ4_compress_fast\22, \22a\22\09"
module asm "\09.weak\09__crc_LZ4_compress_fast\09\09\09\09"
module asm "\09.long\09__crc_LZ4_compress_fast\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_compress_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_compress_fast\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_compress_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+LZ4_compress_default\22, \22a\22\09"
module asm "\09.weak\09__crc_LZ4_compress_default\09\09\09\09"
module asm "\09.long\09__crc_LZ4_compress_default\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_compress_default:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_compress_default\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_compress_default:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+LZ4_compress_destSize\22, \22a\22\09"
module asm "\09.weak\09__crc_LZ4_compress_destSize\09\09\09\09"
module asm "\09.long\09__crc_LZ4_compress_destSize\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_compress_destSize:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_compress_destSize\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_compress_destSize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+LZ4_loadDict\22, \22a\22\09"
module asm "\09.weak\09__crc_LZ4_loadDict\09\09\09\09"
module asm "\09.long\09__crc_LZ4_loadDict\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_loadDict:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_loadDict\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_loadDict:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+LZ4_saveDict\22, \22a\22\09"
module asm "\09.weak\09__crc_LZ4_saveDict\09\09\09\09"
module asm "\09.long\09__crc_LZ4_saveDict\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_saveDict:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_saveDict\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_saveDict:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+LZ4_compress_fast_continue\22, \22a\22\09"
module asm "\09.weak\09__crc_LZ4_compress_fast_continue\09\09\09\09"
module asm "\09.long\09__crc_LZ4_compress_fast_continue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_LZ4_compress_fast_continue:\09\09\09\09\09"
module asm "\09.asciz \09\22LZ4_compress_fast_continue\22\09\09\09\09\09"
module asm "__kstrtabns_LZ4_compress_fast_continue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.LZ4_stream_t_internal = type { [4096 x i32], i32, i32, ptr, ptr, i32 }

@__kstrtab_LZ4_compress_fast = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_compress_fast = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_compress_fast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_compress_fast to i32), ptr @__kstrtab_LZ4_compress_fast, ptr @__kstrtabns_LZ4_compress_fast }, section "___ksymtab+LZ4_compress_fast", align 4
@__kstrtab_LZ4_compress_default = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_compress_default = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_compress_default = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_compress_default to i32), ptr @__kstrtab_LZ4_compress_default, ptr @__kstrtabns_LZ4_compress_default }, section "___ksymtab+LZ4_compress_default", align 4
@__kstrtab_LZ4_compress_destSize = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_compress_destSize = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_compress_destSize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_compress_destSize to i32), ptr @__kstrtab_LZ4_compress_destSize, ptr @__kstrtabns_LZ4_compress_destSize }, section "___ksymtab+LZ4_compress_destSize", align 4
@__kstrtab_LZ4_loadDict = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_loadDict = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_loadDict = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_loadDict to i32), ptr @__kstrtab_LZ4_loadDict, ptr @__kstrtabns_LZ4_loadDict }, section "___ksymtab+LZ4_loadDict", align 4
@__kstrtab_LZ4_saveDict = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_saveDict = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_saveDict = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_saveDict to i32), ptr @__kstrtab_LZ4_saveDict, ptr @__kstrtabns_LZ4_saveDict }, section "___ksymtab+LZ4_saveDict", align 4
@__kstrtab_LZ4_compress_fast_continue = external dso_local constant [0 x i8], align 1
@__kstrtabns_LZ4_compress_fast_continue = external dso_local constant [0 x i8], align 1
@__ksymtab_LZ4_compress_fast_continue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @LZ4_compress_fast_continue to i32), ptr @__kstrtab_LZ4_compress_fast_continue, ptr @__kstrtabns_LZ4_compress_fast_continue }, section "___ksymtab+LZ4_compress_fast_continue", align 4
@__UNIQUE_ID_file106 = internal constant [39 x i8] c"lz4_compress.file=lib/lz4/lz4_compress\00", section ".modinfo", align 1
@__UNIQUE_ID_license107 = internal constant [34 x i8] c"lz4_compress.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description108 = internal constant [40 x i8] c"lz4_compress.description=LZ4 compressor\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_description108, ptr @__UNIQUE_ID_file106, ptr @__UNIQUE_ID_license107, ptr @__ksymtab_LZ4_compress_default, ptr @__ksymtab_LZ4_compress_destSize, ptr @__ksymtab_LZ4_compress_fast, ptr @__ksymtab_LZ4_compress_fast_continue, ptr @__ksymtab_LZ4_loadDict, ptr @__ksymtab_LZ4_saveDict], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @LZ4_compress_fast(ptr noundef %source, ptr noundef %dest, i32 noundef %inputSize, i32 noundef %maxOutputSize, i32 noundef %acceleration, ptr noundef %wrkmem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @LZ4_compress_fast_extState(ptr noundef %wrkmem, ptr noundef %source, ptr noundef %dest, i32 noundef %inputSize, i32 noundef %maxOutputSize, i32 noundef %acceleration)
  ret i32 %call
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @LZ4_compress_fast_extState(ptr noundef %state, ptr noundef %source, ptr noundef %dest, i32 noundef %inputSize, i32 noundef %maxOutputSize, i32 noundef %acceleration) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %state, i32 0, i32 16416)
  %1 = tail call i32 @llvm.smax.i32(i32 %acceleration, i32 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2113929216, i32 %inputSize)
  %cmp1 = icmp ugt i32 %inputSize, 2113929216
  %div = sdiv i32 %inputSize, 255
  %add = add i32 %inputSize, 16
  %add2 = add i32 %add, %div
  %cond = select i1 %cmp1, i32 0, i32 %add2
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %maxOutputSize)
  %cmp3.not = icmp sgt i32 %cond, %maxOutputSize
  call void @__sanitizer_cov_trace_const_cmp4(i32 65547, i32 %inputSize)
  %cmp9 = icmp slt i32 %inputSize, 65547
  %source890.i290 = ptrtoint ptr %source to i32
  %add.ptr4.i298 = getelementptr i8, ptr %source, i32 %inputSize
  %add.ptr5.i299 = getelementptr i8, ptr %add.ptr4.i298, i32 -12
  %add.ptr6.i300 = getelementptr i8, ptr %add.ptr4.i298, i32 -5
  br i1 %cmp3.not, label %if.else8, label %if.then4

if.then4:                                         ; preds = %entry
  br i1 %cmp9, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  br i1 %cmp1, label %if.then6.cleanup_crit_edge, label %if.end21.i

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end21.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inputSize)
  %cmp22.i = icmp ult i32 %inputSize, 13
  br i1 %cmp22.i, label %if.end21.i._last_literals.i_crit_edge, label %if.end24.i

if.end21.i._last_literals.i_crit_edge:            ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i

if.end24.i:                                       ; preds = %if.end21.i
  %2 = ptrtoint ptr %source to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %p.val.i.i = load i32, ptr %source, align 1
  %mul.i.i.i.i = mul i32 %p.val.i.i, -1640531535
  %retval.0.i.i.i.i = lshr i32 %mul.i.i.i.i, 19
  %arrayidx9.i.i.i = getelementptr i16, ptr %state, i32 %retval.0.i.i.i.i
  %3 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %arrayidx9.i.i.i, align 2
  %shl.i = shl i32 %1, 6
  %inc807.i = or i32 %shl.i, 1
  %shr808.i = and i32 %1, 67108863
  %add.ptr25806844.i = getelementptr i8, ptr %source, i32 2
  %cmp26809845.i = icmp ugt ptr %add.ptr25806844.i, %add.ptr5.i299
  br i1 %cmp26809845.i, label %if.end24.i._last_literals.i_crit_edge, label %if.end29.lr.ph.lr.ph.i, !prof !26

if.end24.i._last_literals.i_crit_edge:            ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i

if.end29.lr.ph.lr.ph.i:                           ; preds = %if.end24.i
  %add.ptr.i550.i = getelementptr i8, ptr %add.ptr6.i300, i32 -3
  %add.ptr8.i568.i = getelementptr i8, ptr %add.ptr6.i300, i32 -1
  br label %if.end29.lr.ph.i

if.end29.lr.ph.i:                                 ; preds = %cleanup238.i.if.end29.lr.ph.i_crit_edge, %if.end29.lr.ph.lr.ph.i
  %add.ptr25806852.i = phi ptr [ %add.ptr25806844.i, %if.end29.lr.ph.lr.ph.i ], [ %add.ptr25806.i, %cleanup238.i.if.end29.lr.ph.i_crit_edge ]
  %op.0848.i = phi ptr [ %dest, %if.end29.lr.ph.lr.ph.i ], [ %op.7.ph.i, %cleanup238.i.if.end29.lr.ph.i_crit_edge ]
  %anchor.0847.i = phi ptr [ %source, %if.end29.lr.ph.lr.ph.i ], [ %add.ptr151.i, %cleanup238.i.if.end29.lr.ph.i_crit_edge ]
  %ip.0850.i = getelementptr i8, ptr %anchor.0847.i, i32 1
  %4 = ptrtoint ptr %ip.0850.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %mul.i.i.pn.pn804842.pn.in.i = load i32, ptr %ip.0850.i, align 1
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.body.backedge.i.if.end29.i_crit_edge, %if.end29.lr.ph.i
  %shr816.i = phi i32 [ %shr808.i, %if.end29.lr.ph.i ], [ %shr.i, %do.body.backedge.i.if.end29.i_crit_edge ]
  %inc815.i = phi i32 [ %inc807.i, %if.end29.lr.ph.i ], [ %inc.i, %do.body.backedge.i.if.end29.i_crit_edge ]
  %add.ptr25814.i = phi ptr [ %add.ptr25806852.i, %if.end29.lr.ph.i ], [ %add.ptr25.i, %do.body.backedge.i.if.end29.i_crit_edge ]
  %mul.i.i.pn.pn804842.pn.pn.in.i = phi i32 [ %mul.i.i.pn.pn804842.pn.in.i, %if.end29.lr.ph.i ], [ %add.ptr25.val.i, %do.body.backedge.i.if.end29.i_crit_edge ]
  %forwardIp.0812.i = phi ptr [ %ip.0850.i, %if.end29.lr.ph.i ], [ %add.ptr25814.i, %do.body.backedge.i.if.end29.i_crit_edge ]
  %mul.i.i.pn.pn804842.pn.pn.i = mul i32 %mul.i.i.pn.pn804842.pn.pn.in.i, -1640531535
  %forwardH.1813.i = lshr i32 %mul.i.i.pn.pn804842.pn.pn.i, 19
  %arrayidx7.i.i = getelementptr i16, ptr %state, i32 %forwardH.1813.i
  %5 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx7.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %add.ptr8.i642.i = getelementptr i8, ptr %source, i32 %conv.i.i
  %7 = ptrtoint ptr %add.ptr25814.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %add.ptr25.val.i = load i32, ptr %add.ptr25814.i, align 1
  %sub.ptr.lhs.cast6.i.i = ptrtoint ptr %forwardIp.0812.i to i32
  %sub.ptr.sub8.i.i = sub i32 %sub.ptr.lhs.cast6.i.i, %source890.i290
  %conv.i647.i = trunc i32 %sub.ptr.sub8.i.i to i16
  store i16 %conv.i647.i, ptr %arrayidx7.i.i, align 2
  %8 = ptrtoint ptr %add.ptr8.i642.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %add.ptr49.val.i = load i32, ptr %add.ptr8.i642.i, align 1
  %9 = ptrtoint ptr %forwardIp.0812.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %forwardIp.0.val.i = load i32, ptr %forwardIp.0812.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.ptr49.val.i, i32 %forwardIp.0.val.i)
  %cmp52.not.i = icmp eq i32 %add.ptr49.val.i, %forwardIp.0.val.i
  br i1 %cmp52.not.i, label %while.cond.preheader.i, label %do.body.backedge.i

do.body.backedge.i:                               ; preds = %if.end29.i
  %add.ptr25.i = getelementptr i8, ptr %add.ptr25814.i, i32 %shr816.i
  %inc.i = add i32 %inc815.i, 1
  %shr.i = lshr i32 %inc815.i, 6
  %cmp26.i = icmp ugt ptr %add.ptr25.i, %add.ptr5.i299
  br i1 %cmp26.i, label %do.body.backedge.i._last_literals.i_crit_edge, label %do.body.backedge.i.if.end29.i_crit_edge, !prof !26

do.body.backedge.i.if.end29.i_crit_edge:          ; preds = %do.body.backedge.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.i

do.body.backedge.i._last_literals.i_crit_edge:    ; preds = %do.body.backedge.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i

while.cond.preheader.i:                           ; preds = %if.end29.i
  %conv.i.i.le = zext i16 %6 to i32
  %add.ptr8.i642.i.le = getelementptr i8, ptr %source, i32 %conv.i.i.le
  %cmp58820.i = icmp ugt ptr %forwardIp.0812.i, %anchor.0847.i
  %cmp60822.i = icmp ugt ptr %add.ptr8.i642.i.le, %source
  %and491823.i = and i1 %cmp58820.i, %cmp60822.i
  br i1 %and491823.i, label %while.cond.preheader.i.land.rhs.i_crit_edge, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.cond.preheader.i.land.rhs.i_crit_edge:      ; preds = %while.cond.preheader.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %while.cond.preheader.i.land.rhs.i_crit_edge
  %match.2825.i = phi ptr [ %arrayidx64.i, %while.body.i.land.rhs.i_crit_edge ], [ %add.ptr8.i642.i.le, %while.cond.preheader.i.land.rhs.i_crit_edge ]
  %ip.1824.i = phi ptr [ %arrayidx.i, %while.body.i.land.rhs.i_crit_edge ], [ %forwardIp.0812.i, %while.cond.preheader.i.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %ip.1824.i, i32 -1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %arrayidx64.i = getelementptr i8, ptr %match.2825.i, i32 -1
  %12 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx64.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp66.i = icmp eq i8 %11, %13
  br i1 %cmp66.i, label %while.body.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %cmp58.i = icmp ugt ptr %arrayidx.i, %anchor.0847.i
  %cmp60.i = icmp ugt ptr %arrayidx64.i, %source
  %and491.i = and i1 %cmp60.i, %cmp58.i
  br i1 %and491.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %ip.1.lcssa.i = phi ptr [ %forwardIp.0812.i, %while.cond.preheader.i.while.end.i_crit_edge ], [ %ip.1824.i, %land.rhs.i.while.end.i_crit_edge ], [ %arrayidx.i, %while.body.i.while.end.i_crit_edge ]
  %match.2.lcssa.i = phi ptr [ %add.ptr8.i642.i.le, %while.cond.preheader.i.while.end.i_crit_edge ], [ %match.2825.i, %land.rhs.i.while.end.i_crit_edge ], [ %arrayidx64.i, %while.body.i.while.end.i_crit_edge ]
  %sub.ptr.lhs.cast76.i.pre-phi = ptrtoint ptr %ip.1.lcssa.i to i32
  %sub.ptr.rhs.cast77.i = ptrtoint ptr %anchor.0847.i to i32
  %sub.ptr.sub78.i = sub i32 %sub.ptr.lhs.cast76.i.pre-phi, %sub.ptr.rhs.cast77.i
  %incdec.ptr79.i = getelementptr i8, ptr %op.0848.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub78.i)
  %cmp95.i = icmp ugt i32 %sub.ptr.sub78.i, 14
  br i1 %cmp95.i, label %if.then97.i, label %if.else106.i

if.then97.i:                                      ; preds = %while.end.i
  %sub98.i = add i32 %sub.ptr.sub78.i, -15
  %14 = ptrtoint ptr %op.0848.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -16, ptr %op.0848.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %sub98.i)
  %cmp100830.i = icmp sgt i32 %sub98.i, 254
  br i1 %cmp100830.i, label %for.body.preheader.i, label %if.then97.i.for.end.i_crit_edge

if.then97.i.for.end.i_crit_edge:                  ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #6
  %smin.i = tail call i32 @llvm.smin.i32(i32 %sub98.i, i32 509) #4
  %15 = add i32 %sub.ptr.lhs.cast76.i.pre-phi, 239
  %16 = add i32 %smin.i, %sub.ptr.rhs.cast77.i
  %17 = sub i32 %15, %16
  %18 = udiv i32 %17, 255
  %19 = add nuw nsw i32 %18, 1
  %20 = call ptr @memset(ptr %incdec.ptr79.i, i32 255, i32 %19)
  %.neg893.i = mul i32 %18, -255
  %uglygep.i = getelementptr i8, ptr %op.0848.i, i32 2
  %uglygep887.i = getelementptr i8, ptr %uglygep.i, i32 %18
  %21 = sub i32 -270, %sub.ptr.rhs.cast77.i
  %22 = add i32 %21, %sub.ptr.lhs.cast76.i.pre-phi
  %23 = add i32 %22, %.neg893.i
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.preheader.i, %if.then97.i.for.end.i_crit_edge
  %op.1.lcssa.i = phi ptr [ %incdec.ptr79.i, %if.then97.i.for.end.i_crit_edge ], [ %uglygep887.i, %for.body.preheader.i ]
  %len.0.lcssa.i = phi i32 [ %sub98.i, %if.then97.i.for.end.i_crit_edge ], [ %23, %for.body.preheader.i ]
  %conv104.i = trunc i32 %len.0.lcssa.i to i8
  %incdec.ptr105.i = getelementptr i8, ptr %op.1.lcssa.i, i32 1
  %24 = ptrtoint ptr %op.1.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv104.i, ptr %op.1.lcssa.i, align 1
  br label %if.end109.i

if.else106.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub78.tr.i = trunc i32 %sub.ptr.sub78.i to i8
  %conv108.i = shl nuw i8 %sub.ptr.sub78.tr.i, 4
  %25 = ptrtoint ptr %op.0848.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv108.i, ptr %op.0848.i, align 1
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.else106.i, %for.end.i
  %op.2.i = phi ptr [ %incdec.ptr105.i, %for.end.i ], [ %incdec.ptr79.i, %if.else106.i ]
  %add.ptr110.i = getelementptr i8, ptr %op.2.i, i32 %sub.ptr.sub78.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end109.i
  %d.0.i.i = phi ptr [ %op.2.i, %if.end109.i ], [ %add.ptr.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %s.0.i.i = phi ptr [ %anchor.0847.i, %if.end109.i ], [ %add.ptr1.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %s.0.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %s.0.val.i.i = load i32, ptr %s.0.i.i, align 1
  %27 = getelementptr i8, ptr %s.0.i.i, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %s.0.val5.i.i = load i32, ptr %27, align 1
  %29 = ptrtoint ptr %d.0.i.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %s.0.val.i.i, ptr %d.0.i.i, align 1
  %add.ptr8.i.i.i = getelementptr i32, ptr %d.0.i.i, i32 1
  %30 = ptrtoint ptr %add.ptr8.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %s.0.val5.i.i, ptr %add.ptr8.i.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %d.0.i.i, i32 8
  %add.ptr1.i.i = getelementptr i8, ptr %s.0.i.i, i32 8
  %cmp.i.i = icmp ult ptr %add.ptr.i.i, %add.ptr110.i
  br i1 %cmp.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.body.i.i._next_match.i_crit_edge

do.body.i.i._next_match.i_crit_edge:              ; preds = %do.body.i.i
  br label %_next_match.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i

_next_match.i:                                    ; preds = %if.then233.i, %do.body.i.i._next_match.i_crit_edge
  %ip.2.i = phi ptr [ %add.ptr151.i, %if.then233.i ], [ %ip.1.lcssa.i, %do.body.i.i._next_match.i_crit_edge ]
  %op.4.i = phi ptr [ %incdec.ptr234.i, %if.then233.i ], [ %add.ptr110.i, %do.body.i.i._next_match.i_crit_edge ]
  %match.3.i = phi ptr [ %add.ptr8.i.i616755.i, %if.then233.i ], [ %match.2.lcssa.i, %do.body.i.i._next_match.i_crit_edge ]
  %token.0.i = phi ptr [ %op.7.ph.i, %if.then233.i ], [ %op.0848.i, %do.body.i.i._next_match.i_crit_edge ]
  %sub.ptr.lhs.cast115.i = ptrtoint ptr %ip.2.i to i32
  %sub.ptr.rhs.cast116.i = ptrtoint ptr %match.3.i to i32
  %sub.ptr.sub117.i = sub i32 %sub.ptr.lhs.cast115.i, %sub.ptr.rhs.cast116.i
  %conv118.i = trunc i32 %sub.ptr.sub117.i to i16
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv118.i) #4
  %32 = ptrtoint ptr %op.4.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %op.4.i, align 1
  %add.ptr119.i = getelementptr i8, ptr %op.4.i, i32 2
  %add.ptr147.i = getelementptr i8, ptr %ip.2.i, i32 4
  %add.ptr148.i = getelementptr i8, ptr %match.3.i, i32 4
  %cmp59.i551.i = icmp ugt ptr %add.ptr.i550.i, %add.ptr147.i
  br i1 %cmp59.i551.i, label %_next_match.i.while.body.i558.i_crit_edge, label %_next_match.i.while.end.i570.i_crit_edge, !prof !27

_next_match.i.while.end.i570.i_crit_edge:         ; preds = %_next_match.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i570.i

_next_match.i.while.body.i558.i_crit_edge:        ; preds = %_next_match.i
  br label %while.body.i558.i

while.body.i558.i:                                ; preds = %cleanup.i565.i.while.body.i558.i_crit_edge, %_next_match.i.while.body.i558.i_crit_edge
  %pMatch.addr.061.i552.i = phi ptr [ %add.ptr5.i563.i, %cleanup.i565.i.while.body.i558.i_crit_edge ], [ %add.ptr148.i, %_next_match.i.while.body.i558.i_crit_edge ]
  %pIn.addr.060.i553.i = phi ptr [ %add.ptr4.i562.i, %cleanup.i565.i.while.body.i558.i_crit_edge ], [ %add.ptr147.i, %_next_match.i.while.body.i558.i_crit_edge ]
  %33 = ptrtoint ptr %pMatch.addr.061.i552.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %pMatch.addr.0.val.i554.i = load i32, ptr %pMatch.addr.061.i552.i, align 1
  %34 = ptrtoint ptr %pIn.addr.060.i553.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %pIn.addr.0.val.i555.i = load i32, ptr %pIn.addr.060.i553.i, align 1
  %xor.i556.i = xor i32 %pIn.addr.0.val.i555.i, %pMatch.addr.0.val.i554.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i556.i)
  %tobool3.not.i557.i = icmp eq i32 %xor.i556.i, 0
  br i1 %tobool3.not.i557.i, label %cleanup.i565.i, label %cleanup.thread.i561.i

cleanup.thread.i561.i:                            ; preds = %while.body.i558.i
  call void @__sanitizer_cov_trace_pc() #6
  %35 = tail call i32 @llvm.ctlz.i32(i32 %xor.i556.i, i1 true) #4, !range !28
  %shr.i.i559.i = lshr i32 %35, 3
  %add.ptr7.i560.i = getelementptr i8, ptr %pIn.addr.060.i553.i, i32 %shr.i.i559.i
  br label %LZ4_count.exit590.i

cleanup.i565.i:                                   ; preds = %while.body.i558.i
  %add.ptr4.i562.i = getelementptr i8, ptr %pIn.addr.060.i553.i, i32 4
  %add.ptr5.i563.i = getelementptr i8, ptr %pMatch.addr.061.i552.i, i32 4
  %cmp.i564.i = icmp ult ptr %add.ptr4.i562.i, %add.ptr.i550.i
  br i1 %cmp.i564.i, label %cleanup.i565.i.while.body.i558.i_crit_edge, label %cleanup.i565.i.while.end.i570.i_crit_edge, !prof !27

cleanup.i565.i.while.end.i570.i_crit_edge:        ; preds = %cleanup.i565.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i570.i

cleanup.i565.i.while.body.i558.i_crit_edge:       ; preds = %cleanup.i565.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i558.i

while.end.i570.i:                                 ; preds = %cleanup.i565.i.while.end.i570.i_crit_edge, %_next_match.i.while.end.i570.i_crit_edge
  %pIn.addr.0.lcssa.i566.i = phi ptr [ %add.ptr147.i, %_next_match.i.while.end.i570.i_crit_edge ], [ %add.ptr4.i562.i, %cleanup.i565.i.while.end.i570.i_crit_edge ]
  %pMatch.addr.0.lcssa.i567.i = phi ptr [ %add.ptr148.i, %_next_match.i.while.end.i570.i_crit_edge ], [ %add.ptr5.i563.i, %cleanup.i565.i.while.end.i570.i_crit_edge ]
  %cmp9.i569.i = icmp ult ptr %pIn.addr.0.lcssa.i566.i, %add.ptr8.i568.i
  br i1 %cmp9.i569.i, label %land.lhs.true.i574.i, label %while.end.i570.i.if.end18.i581.i_crit_edge

while.end.i570.i.if.end18.i581.i_crit_edge:       ; preds = %while.end.i570.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i581.i

land.lhs.true.i574.i:                             ; preds = %while.end.i570.i
  %36 = ptrtoint ptr %pMatch.addr.0.lcssa.i567.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %pMatch.addr.0.val53.i571.i = load i16, ptr %pMatch.addr.0.lcssa.i567.i, align 1
  %37 = ptrtoint ptr %pIn.addr.0.lcssa.i566.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %pIn.addr.0.val52.i572.i = load i16, ptr %pIn.addr.0.lcssa.i566.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %pMatch.addr.0.val53.i571.i, i16 %pIn.addr.0.val52.i572.i)
  %cmp13.i573.i = icmp eq i16 %pMatch.addr.0.val53.i571.i, %pIn.addr.0.val52.i572.i
  br i1 %cmp13.i573.i, label %if.then15.i577.i, label %land.lhs.true.i574.i.if.end18.i581.i_crit_edge

land.lhs.true.i574.i.if.end18.i581.i_crit_edge:   ; preds = %land.lhs.true.i574.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i581.i

if.then15.i577.i:                                 ; preds = %land.lhs.true.i574.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i575.i = getelementptr i8, ptr %pIn.addr.0.lcssa.i566.i, i32 2
  %add.ptr17.i576.i = getelementptr i8, ptr %pMatch.addr.0.lcssa.i567.i, i32 2
  br label %if.end18.i581.i

if.end18.i581.i:                                  ; preds = %if.then15.i577.i, %land.lhs.true.i574.i.if.end18.i581.i_crit_edge, %while.end.i570.i.if.end18.i581.i_crit_edge
  %pIn.addr.2.i578.i = phi ptr [ %add.ptr16.i575.i, %if.then15.i577.i ], [ %pIn.addr.0.lcssa.i566.i, %land.lhs.true.i574.i.if.end18.i581.i_crit_edge ], [ %pIn.addr.0.lcssa.i566.i, %while.end.i570.i.if.end18.i581.i_crit_edge ]
  %pMatch.addr.2.i579.i = phi ptr [ %add.ptr17.i576.i, %if.then15.i577.i ], [ %pMatch.addr.0.lcssa.i567.i, %land.lhs.true.i574.i.if.end18.i581.i_crit_edge ], [ %pMatch.addr.0.lcssa.i567.i, %while.end.i570.i.if.end18.i581.i_crit_edge ]
  %cmp19.i580.i = icmp ult ptr %pIn.addr.2.i578.i, %add.ptr6.i300
  br i1 %cmp19.i580.i, label %land.lhs.true21.i585.i, label %if.end18.i581.i.LZ4_count.exit590.i_crit_edge

if.end18.i581.i.LZ4_count.exit590.i_crit_edge:    ; preds = %if.end18.i581.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_count.exit590.i

land.lhs.true21.i585.i:                           ; preds = %if.end18.i581.i
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %pMatch.addr.2.i579.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pMatch.addr.2.i579.i, align 1
  %40 = ptrtoint ptr %pIn.addr.2.i578.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %pIn.addr.2.i578.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp24.i582.i = icmp eq i8 %39, %41
  %spec.select.idx.i583.i = zext i1 %cmp24.i582.i to i32
  %spec.select.i584.i = getelementptr i8, ptr %pIn.addr.2.i578.i, i32 %spec.select.idx.i583.i
  br label %LZ4_count.exit590.i

LZ4_count.exit590.i:                              ; preds = %land.lhs.true21.i585.i, %if.end18.i581.i.LZ4_count.exit590.i_crit_edge, %cleanup.thread.i561.i
  %add.ptr7.sink.i586.i = phi ptr [ %add.ptr7.i560.i, %cleanup.thread.i561.i ], [ %pIn.addr.2.i578.i, %if.end18.i581.i.LZ4_count.exit590.i_crit_edge ], [ %spec.select.i584.i, %land.lhs.true21.i585.i ]
  %sub.ptr.lhs.cast.i587.i = ptrtoint ptr %add.ptr7.sink.i586.i to i32
  %sub.ptr.rhs.cast.i588.i = ptrtoint ptr %add.ptr147.i to i32
  %sub.ptr.sub.i589.i = sub i32 %sub.ptr.lhs.cast.i587.i, %sub.ptr.rhs.cast.i588.i
  %add150.i = add i32 %sub.ptr.sub.i589.i, 4
  %add.ptr151.i = getelementptr i8, ptr %ip.2.i, i32 %add150.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i589.i)
  %cmp168.i = icmp ugt i32 %sub.ptr.sub.i589.i, 14
  %42 = ptrtoint ptr %token.0.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %token.0.i, align 1
  br i1 %cmp168.i, label %if.then170.i, label %if.else186.i

if.then170.i:                                     ; preds = %LZ4_count.exit590.i
  %add172.i = add i8 %43, 15
  %44 = ptrtoint ptr %token.0.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %add172.i, ptr %token.0.i, align 1
  %sub174.i = add i32 %sub.ptr.sub.i589.i, -15
  %45 = ptrtoint ptr %add.ptr119.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 -1, ptr %add.ptr119.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1019, i32 %sub174.i)
  %cmp176835.i = icmp ugt i32 %sub174.i, 1019
  br i1 %cmp176835.i, label %while.body178.preheader.i, label %if.then170.i.while.end181.i_crit_edge

if.then170.i.while.end181.i_crit_edge:            ; preds = %if.then170.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end181.i

while.body178.preheader.i:                        ; preds = %if.then170.i
  call void @__sanitizer_cov_trace_pc() #6
  %uglygep888.i = getelementptr i8, ptr %op.4.i, i32 6
  %46 = add i32 %sub.ptr.sub.i589.i, -1035
  %47 = udiv i32 %46, 1020
  %48 = shl nuw nsw i32 %47, 2
  %49 = add nuw nsw i32 %48, 4
  %50 = call ptr @memset(ptr %uglygep888.i, i32 255, i32 %49)
  %uglygep889.i = getelementptr i8, ptr %uglygep888.i, i32 %48
  %.neg892.i = mul i32 %47, -1020
  %51 = add i32 %.neg892.i, %46
  br label %while.end181.i

while.end181.i:                                   ; preds = %while.body178.preheader.i, %if.then170.i.while.end181.i_crit_edge
  %op.5.lcssa.i = phi ptr [ %add.ptr119.i, %if.then170.i.while.end181.i_crit_edge ], [ %uglygep889.i, %while.body178.preheader.i ]
  %matchCode.2.lcssa.i = phi i32 [ %sub174.i, %if.then170.i.while.end181.i_crit_edge ], [ %51, %while.body178.preheader.i ]
  %div182.lhs.trunc.i = trunc i32 %matchCode.2.lcssa.i to i16
  %div182.lhs.trunc.i.frozen = freeze i16 %div182.lhs.trunc.i
  %div182784.i = udiv i16 %div182.lhs.trunc.i.frozen, 255
  %div182.zext.i = zext i16 %div182784.i to i32
  %add.ptr183.i = getelementptr i8, ptr %op.5.lcssa.i, i32 %div182.zext.i
  %52 = mul i16 %div182784.i, 255
  %rem785.i.decomposed = sub i16 %div182.lhs.trunc.i.frozen, %52
  %conv184.i = trunc i16 %rem785.i.decomposed to i8
  %incdec.ptr185.i = getelementptr i8, ptr %add.ptr183.i, i32 1
  %53 = ptrtoint ptr %add.ptr183.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv184.i, ptr %add.ptr183.i, align 1
  br label %cleanup.cont195.i

if.else186.i:                                     ; preds = %LZ4_count.exit590.i
  call void @__sanitizer_cov_trace_pc() #6
  %54 = trunc i32 %sub.ptr.sub.i589.i to i8
  %conv191.i = add i8 %43, %54
  %55 = ptrtoint ptr %token.0.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv191.i, ptr %token.0.i, align 1
  br label %cleanup.cont195.i

cleanup.cont195.i:                                ; preds = %if.else186.i, %while.end181.i
  %op.7.ph.i = phi ptr [ %add.ptr119.i, %if.else186.i ], [ %incdec.ptr185.i, %while.end181.i ]
  %cmp196.i = icmp ugt ptr %add.ptr151.i, %add.ptr5.i299
  br i1 %cmp196.i, label %cleanup.cont195.i._last_literals.i_crit_edge, label %if.end199.i

cleanup.cont195.i._last_literals.i_crit_edge:     ; preds = %cleanup.cont195.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i

if.end199.i:                                      ; preds = %cleanup.cont195.i
  %add.ptr200.i = getelementptr i8, ptr %add.ptr151.i, i32 -2
  %56 = ptrtoint ptr %add.ptr200.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %p.val.i591.i = load i32, ptr %add.ptr200.i, align 1
  %mul.i.i.i593.i = mul i32 %p.val.i591.i, -1640531535
  %retval.0.i.i.i595.i = lshr i32 %mul.i.i.i593.i, 19
  %sub.ptr.lhs.cast6.i.i603.i = ptrtoint ptr %add.ptr200.i to i32
  %sub.ptr.sub8.i.i605.i = sub i32 %sub.ptr.lhs.cast6.i.i603.i, %source890.i290
  %conv.i.i606.i = trunc i32 %sub.ptr.sub8.i.i605.i to i16
  %arrayidx9.i.i607.i = getelementptr i16, ptr %state, i32 %retval.0.i.i.i595.i
  %57 = ptrtoint ptr %arrayidx9.i.i607.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i.i606.i, ptr %arrayidx9.i.i607.i, align 2
  %58 = ptrtoint ptr %add.ptr151.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %ip.4.val502708.i = load i32, ptr %add.ptr151.i, align 1
  %mul.i.i.i611709.i = mul i32 %ip.4.val502708.i, -1640531535
  %retval.0.i.i.i613710.i = lshr i32 %mul.i.i.i611709.i, 19
  %arrayidx7.i.i753.i = getelementptr i16, ptr %state, i32 %retval.0.i.i.i613710.i
  %59 = ptrtoint ptr %arrayidx7.i.i753.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx7.i.i753.i, align 2
  %conv.i.i615754.i = zext i16 %60 to i32
  %add.ptr8.i.i616755.i = getelementptr i8, ptr %source, i32 %conv.i.i615754.i
  %sub.ptr.lhs.cast6.i.i630.i = ptrtoint ptr %add.ptr151.i to i32
  %sub.ptr.sub8.i.i632.i = sub i32 %sub.ptr.lhs.cast6.i.i630.i, %source890.i290
  %conv.i.i633.i = trunc i32 %sub.ptr.sub8.i.i632.i to i16
  store i16 %conv.i.i633.i, ptr %arrayidx7.i.i753.i, align 2
  %add.ptr224.i = getelementptr i8, ptr %add.ptr8.i.i616755.i, i32 65535
  %cmp225.not.i = icmp ult ptr %add.ptr224.i, %add.ptr151.i
  br i1 %cmp225.not.i, label %if.end199.i.cleanup238.i_crit_edge, label %land.lhs.true227.i

if.end199.i.cleanup238.i_crit_edge:               ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup238.i

land.lhs.true227.i:                               ; preds = %if.end199.i
  %61 = ptrtoint ptr %add.ptr8.i.i616755.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %add.ptr228.val.i = load i32, ptr %add.ptr8.i.i616755.i, align 1
  %62 = ptrtoint ptr %add.ptr151.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %ip.4.val.i = load i32, ptr %add.ptr151.i, align 1
  %cmp231.i = icmp eq i32 %add.ptr228.val.i, %ip.4.val.i
  br i1 %cmp231.i, label %if.then233.i, label %land.lhs.true227.i.cleanup238.i_crit_edge

land.lhs.true227.i.cleanup238.i_crit_edge:        ; preds = %land.lhs.true227.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup238.i

if.then233.i:                                     ; preds = %land.lhs.true227.i
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr234.i = getelementptr i8, ptr %op.7.ph.i, i32 1
  %63 = ptrtoint ptr %op.7.ph.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %op.7.ph.i, align 1
  br label %_next_match.i

cleanup238.i:                                     ; preds = %land.lhs.true227.i.cleanup238.i_crit_edge, %if.end199.i.cleanup238.i_crit_edge
  %add.ptr25806.i = getelementptr i8, ptr %add.ptr151.i, i32 2
  %cmp26809.i = icmp ugt ptr %add.ptr25806.i, %add.ptr5.i299
  br i1 %cmp26809.i, label %cleanup238.i._last_literals.i_crit_edge, label %cleanup238.i.if.end29.lr.ph.i_crit_edge, !prof !26

cleanup238.i.if.end29.lr.ph.i_crit_edge:          ; preds = %cleanup238.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.lr.ph.i

cleanup238.i._last_literals.i_crit_edge:          ; preds = %cleanup238.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i

_last_literals.i:                                 ; preds = %cleanup238.i._last_literals.i_crit_edge, %cleanup.cont195.i._last_literals.i_crit_edge, %do.body.backedge.i._last_literals.i_crit_edge, %if.end24.i._last_literals.i_crit_edge, %if.end21.i._last_literals.i_crit_edge
  %anchor.3.i = phi ptr [ %source, %if.end21.i._last_literals.i_crit_edge ], [ %source, %if.end24.i._last_literals.i_crit_edge ], [ %add.ptr151.i, %cleanup.cont195.i._last_literals.i_crit_edge ], [ %anchor.0847.i, %do.body.backedge.i._last_literals.i_crit_edge ], [ %add.ptr151.i, %cleanup238.i._last_literals.i_crit_edge ]
  %op.9.i = phi ptr [ %dest, %if.end21.i._last_literals.i_crit_edge ], [ %dest, %if.end24.i._last_literals.i_crit_edge ], [ %op.7.ph.i, %cleanup.cont195.i._last_literals.i_crit_edge ], [ %op.0848.i, %do.body.backedge.i._last_literals.i_crit_edge ], [ %op.7.ph.i, %cleanup238.i._last_literals.i_crit_edge ]
  %sub.ptr.lhs.cast243.i = ptrtoint ptr %add.ptr4.i298 to i32
  %sub.ptr.rhs.cast244.i = ptrtoint ptr %anchor.3.i to i32
  %sub.ptr.sub245.i = sub i32 %sub.ptr.lhs.cast243.i, %sub.ptr.rhs.cast244.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub245.i)
  %cmp261.i = icmp ugt i32 %sub.ptr.sub245.i, 14
  br i1 %cmp261.i, label %if.then263.i, label %if.else276.i

if.then263.i:                                     ; preds = %_last_literals.i
  %sub264.i = add i32 %sub.ptr.sub245.i, -15
  %64 = ptrtoint ptr %op.9.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -16, ptr %op.9.i, align 1
  %op.10855.i = getelementptr i8, ptr %op.9.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %sub264.i)
  %cmp267856.i = icmp ugt i32 %sub264.i, 254
  br i1 %cmp267856.i, label %for.body269.preheader.i, label %if.then263.i.for.end273.i_crit_edge

if.then263.i.for.end273.i_crit_edge:              ; preds = %if.then263.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end273.i

for.body269.preheader.i:                          ; preds = %if.then263.i
  call void @__sanitizer_cov_trace_pc() #6
  %65 = add i32 %inputSize, -270
  %66 = add i32 %65, %source890.i290
  %67 = sub i32 %66, %sub.ptr.rhs.cast244.i
  %68 = udiv i32 %67, 255
  %69 = add nuw nsw i32 %68, 1
  %70 = call ptr @memset(ptr %op.10855.i, i32 255, i32 %69)
  %.neg.i = mul i32 %68, -255
  %71 = add nuw nsw i32 %68, 2
  %72 = add i32 %.neg.i, %67
  %uglygep891.i = getelementptr i8, ptr %op.9.i, i32 %71
  br label %for.end273.i

for.end273.i:                                     ; preds = %for.body269.preheader.i, %if.then263.i.for.end273.i_crit_edge
  %accumulator.0.lcssa.i = phi i32 [ %sub264.i, %if.then263.i.for.end273.i_crit_edge ], [ %72, %for.body269.preheader.i ]
  %op.10.lcssa.i = phi ptr [ %op.10855.i, %if.then263.i.for.end273.i_crit_edge ], [ %uglygep891.i, %for.body269.preheader.i ]
  %conv274.i = trunc i32 %accumulator.0.lcssa.i to i8
  %73 = ptrtoint ptr %op.10.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv274.i, ptr %op.10.lcssa.i, align 1
  br label %cleanup.cont284.i

if.else276.i:                                     ; preds = %_last_literals.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub245.tr.i = trunc i32 %sub.ptr.sub245.i to i8
  %conv278.i = shl nuw i8 %sub.ptr.sub245.tr.i, 4
  %74 = ptrtoint ptr %op.9.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv278.i, ptr %op.9.i, align 1
  br label %cleanup.cont284.i

cleanup.cont284.i:                                ; preds = %if.else276.i, %for.end273.i
  %op.10.pn.i = phi ptr [ %op.10.lcssa.i, %for.end273.i ], [ %op.9.i, %if.else276.i ]
  %op.11.i = getelementptr i8, ptr %op.10.pn.i, i32 1
  %75 = call ptr @memcpy(ptr %op.11.i, ptr %anchor.3.i, i32 %sub.ptr.sub245.i)
  %add.ptr281.i = getelementptr i8, ptr %op.11.i, i32 %sub.ptr.sub245.i
  %sub.ptr.lhs.cast285.i = ptrtoint ptr %add.ptr281.i to i32
  %sub.ptr.rhs.cast286.i = ptrtoint ptr %dest to i32
  %sub.ptr.sub287.i = sub i32 %sub.ptr.lhs.cast285.i, %sub.ptr.rhs.cast286.i
  br label %cleanup

if.else:                                          ; preds = %if.then4
  br i1 %cmp1, label %if.else.cleanup_crit_edge, label %if.end24.i58

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24.i58:                                     ; preds = %if.else
  %76 = ptrtoint ptr %source to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %p.val.i.i55 = load i32, ptr %source, align 1
  %mul.i.i.i.i56 = mul i32 %p.val.i.i55, -1640531535
  %retval.0.i.i.i.i57 = lshr i32 %mul.i.i.i.i56, 20
  %arrayidx.i.i.i = getelementptr ptr, ptr %state, i32 %retval.0.i.i.i.i57
  %77 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %source, ptr %arrayidx.i.i.i, align 4
  %shl.i59 = shl i32 %1, 6
  %inc807.i60 = or i32 %shl.i59, 1
  %shr808.i61 = and i32 %1, 67108863
  %add.ptr25806844.i62 = getelementptr i8, ptr %source, i32 2
  %cmp26809845.i63 = icmp ugt ptr %add.ptr25806844.i62, %add.ptr5.i299
  br i1 %cmp26809845.i63, label %if.end24.i58._last_literals.i265_crit_edge, label %if.end29.lr.ph.lr.ph.i67, !prof !26

if.end24.i58._last_literals.i265_crit_edge:       ; preds = %if.end24.i58
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i265

if.end29.lr.ph.lr.ph.i67:                         ; preds = %if.end24.i58
  %add.ptr.i550.i65 = getelementptr i8, ptr %add.ptr6.i300, i32 -3
  %add.ptr8.i568.i66 = getelementptr i8, ptr %add.ptr6.i300, i32 -1
  br label %if.end29.lr.ph.i75

if.end29.lr.ph.i75:                               ; preds = %cleanup238.i259.if.end29.lr.ph.i75_crit_edge, %if.end29.lr.ph.lr.ph.i67
  %add.ptr25806852.i68 = phi ptr [ %add.ptr25806844.i62, %if.end29.lr.ph.lr.ph.i67 ], [ %add.ptr25806.i257, %cleanup238.i259.if.end29.lr.ph.i75_crit_edge ]
  %op.0848.i70 = phi ptr [ %dest, %if.end29.lr.ph.lr.ph.i67 ], [ %op.7.ph.i239, %cleanup238.i259.if.end29.lr.ph.i75_crit_edge ]
  %anchor.0847.i71 = phi ptr [ %source, %if.end29.lr.ph.lr.ph.i67 ], [ %add.ptr151.i212, %cleanup238.i259.if.end29.lr.ph.i75_crit_edge ]
  %ip.0850.i73 = getelementptr i8, ptr %anchor.0847.i71, i32 1
  %78 = ptrtoint ptr %ip.0850.i73 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %mul.i.i.pn.pn804842.pn.in.i74 = load i32, ptr %ip.0850.i73, align 1
  br label %if.end29.i85

if.end29.i85:                                     ; preds = %do.body.backedge.i97.if.end29.i85_crit_edge, %if.end29.lr.ph.i75
  %shr816.i76 = phi i32 [ %shr808.i61, %if.end29.lr.ph.i75 ], [ %shr.i95, %do.body.backedge.i97.if.end29.i85_crit_edge ]
  %inc815.i77 = phi i32 [ %inc807.i60, %if.end29.lr.ph.i75 ], [ %inc.i94, %do.body.backedge.i97.if.end29.i85_crit_edge ]
  %add.ptr25814.i78 = phi ptr [ %add.ptr25806852.i68, %if.end29.lr.ph.i75 ], [ %add.ptr25.i93, %do.body.backedge.i97.if.end29.i85_crit_edge ]
  %mul.i.i.pn.pn804842.pn.pn.in.i79 = phi i32 [ %mul.i.i.pn.pn804842.pn.in.i74, %if.end29.lr.ph.i75 ], [ %add.ptr25.val655.i, %do.body.backedge.i97.if.end29.i85_crit_edge ]
  %forwardIp.0812.i80 = phi ptr [ %ip.0850.i73, %if.end29.lr.ph.i75 ], [ %add.ptr25814.i78, %do.body.backedge.i97.if.end29.i85_crit_edge ]
  %mul.i.i.pn.pn804842.pn.pn.i83 = mul i32 %mul.i.i.pn.pn804842.pn.pn.in.i79, -1640531535
  %forwardH.1813.i84 = lshr i32 %mul.i.i.pn.pn804842.pn.pn.i83, 20
  %arrayidx.i.i = getelementptr ptr, ptr %state, i32 %forwardH.1813.i84
  %79 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i.i, align 4
  %81 = ptrtoint ptr %add.ptr25814.i78 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %add.ptr25.val655.i = load i32, ptr %add.ptr25814.i78, align 1
  store ptr %forwardIp.0812.i80, ptr %arrayidx.i.i, align 4
  %add.ptr47.i87 = getelementptr i8, ptr %80, i32 65535
  %cmp48.i88 = icmp ult ptr %add.ptr47.i87, %forwardIp.0812.i80
  br i1 %cmp48.i88, label %if.end29.i85.do.body.backedge.i97_crit_edge, label %lor.rhs.i

if.end29.i85.do.body.backedge.i97_crit_edge:      ; preds = %if.end29.i85
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.backedge.i97

lor.rhs.i:                                        ; preds = %if.end29.i85
  %82 = ptrtoint ptr %80 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %add.ptr49.val.i90 = load i32, ptr %80, align 1
  %83 = ptrtoint ptr %forwardIp.0812.i80 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %forwardIp.0.val.i91 = load i32, ptr %forwardIp.0812.i80, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.ptr49.val.i90, i32 %forwardIp.0.val.i91)
  %cmp52.not.i92 = icmp eq i32 %add.ptr49.val.i90, %forwardIp.0.val.i91
  br i1 %cmp52.not.i92, label %while.cond.preheader.i102, label %lor.rhs.i.do.body.backedge.i97_crit_edge

lor.rhs.i.do.body.backedge.i97_crit_edge:         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.backedge.i97

do.body.backedge.i97:                             ; preds = %lor.rhs.i.do.body.backedge.i97_crit_edge, %if.end29.i85.do.body.backedge.i97_crit_edge
  %add.ptr25.i93 = getelementptr i8, ptr %add.ptr25814.i78, i32 %shr816.i76
  %inc.i94 = add i32 %inc815.i77, 1
  %shr.i95 = lshr i32 %inc815.i77, 6
  %cmp26.i96 = icmp ugt ptr %add.ptr25.i93, %add.ptr5.i299
  br i1 %cmp26.i96, label %do.body.backedge.i97._last_literals.i265_crit_edge, label %do.body.backedge.i97.if.end29.i85_crit_edge, !prof !26

do.body.backedge.i97.if.end29.i85_crit_edge:      ; preds = %do.body.backedge.i97
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.i85

do.body.backedge.i97._last_literals.i265_crit_edge: ; preds = %do.body.backedge.i97
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i265

while.cond.preheader.i102:                        ; preds = %lor.rhs.i
  %cmp58820.i99 = icmp ugt ptr %forwardIp.0812.i80, %anchor.0847.i71
  %cmp60822.i100 = icmp ugt ptr %80, %source
  %and491823.i101 = and i1 %cmp58820.i99, %cmp60822.i100
  br i1 %and491823.i101, label %while.cond.preheader.i102.land.rhs.i110_crit_edge, label %while.cond.preheader.i102.while.end.i128_crit_edge

while.cond.preheader.i102.while.end.i128_crit_edge: ; preds = %while.cond.preheader.i102
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i128

while.cond.preheader.i102.land.rhs.i110_crit_edge: ; preds = %while.cond.preheader.i102
  br label %land.rhs.i110

land.rhs.i110:                                    ; preds = %while.body.i116.land.rhs.i110_crit_edge, %while.cond.preheader.i102.land.rhs.i110_crit_edge
  %match.2825.i105 = phi ptr [ %arrayidx64.i108, %while.body.i116.land.rhs.i110_crit_edge ], [ %80, %while.cond.preheader.i102.land.rhs.i110_crit_edge ]
  %ip.1824.i106 = phi ptr [ %arrayidx.i107, %while.body.i116.land.rhs.i110_crit_edge ], [ %forwardIp.0812.i80, %while.cond.preheader.i102.land.rhs.i110_crit_edge ]
  %arrayidx.i107 = getelementptr i8, ptr %ip.1824.i106, i32 -1
  %84 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i107, align 1
  %arrayidx64.i108 = getelementptr i8, ptr %match.2825.i105, i32 -1
  %86 = ptrtoint ptr %arrayidx64.i108 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx64.i108, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %85, i8 %87)
  %cmp66.i109 = icmp eq i8 %85, %87
  br i1 %cmp66.i109, label %while.body.i116, label %land.rhs.i110.while.end.i128_crit_edge

land.rhs.i110.while.end.i128_crit_edge:           ; preds = %land.rhs.i110
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i128

while.body.i116:                                  ; preds = %land.rhs.i110
  %cmp58.i112 = icmp ugt ptr %arrayidx.i107, %anchor.0847.i71
  %cmp60.i114 = icmp ugt ptr %arrayidx64.i108, %source
  %and491.i115 = and i1 %cmp60.i114, %cmp58.i112
  br i1 %and491.i115, label %while.body.i116.land.rhs.i110_crit_edge, label %while.body.i116.while.end.i128_crit_edge

while.body.i116.while.end.i128_crit_edge:         ; preds = %while.body.i116
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i128

while.body.i116.land.rhs.i110_crit_edge:          ; preds = %while.body.i116
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i110

while.end.i128:                                   ; preds = %while.body.i116.while.end.i128_crit_edge, %land.rhs.i110.while.end.i128_crit_edge, %while.cond.preheader.i102.while.end.i128_crit_edge
  %ip.1.lcssa.i117 = phi ptr [ %forwardIp.0812.i80, %while.cond.preheader.i102.while.end.i128_crit_edge ], [ %ip.1824.i106, %land.rhs.i110.while.end.i128_crit_edge ], [ %arrayidx.i107, %while.body.i116.while.end.i128_crit_edge ]
  %match.2.lcssa.i118 = phi ptr [ %80, %while.cond.preheader.i102.while.end.i128_crit_edge ], [ %match.2825.i105, %land.rhs.i110.while.end.i128_crit_edge ], [ %arrayidx64.i108, %while.body.i116.while.end.i128_crit_edge ]
  %sub.ptr.lhs.cast76.i119 = ptrtoint ptr %ip.1.lcssa.i117 to i32
  %sub.ptr.rhs.cast77.i120 = ptrtoint ptr %anchor.0847.i71 to i32
  %sub.ptr.sub78.i121 = sub i32 %sub.ptr.lhs.cast76.i119, %sub.ptr.rhs.cast77.i120
  %incdec.ptr79.i122 = getelementptr i8, ptr %op.0848.i70, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub78.i121)
  %cmp95.i129 = icmp ugt i32 %sub.ptr.sub78.i121, 14
  br i1 %cmp95.i129, label %if.then97.i132, label %if.else106.i145

if.then97.i132:                                   ; preds = %while.end.i128
  %sub98.i130 = add i32 %sub.ptr.sub78.i121, -15
  %88 = ptrtoint ptr %op.0848.i70 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -16, ptr %op.0848.i70, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %sub98.i130)
  %cmp100830.i131 = icmp sgt i32 %sub98.i130, 254
  br i1 %cmp100830.i131, label %for.body.preheader.i137, label %if.then97.i132.for.end.i142_crit_edge

if.then97.i132.for.end.i142_crit_edge:            ; preds = %if.then97.i132
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i142

for.body.preheader.i137:                          ; preds = %if.then97.i132
  call void @__sanitizer_cov_trace_pc() #6
  %smin.i133 = tail call i32 @llvm.smin.i32(i32 %sub98.i130, i32 509) #4
  %89 = add i32 %sub.ptr.lhs.cast76.i119, 239
  %90 = add i32 %smin.i133, %sub.ptr.rhs.cast77.i120
  %91 = sub i32 %89, %90
  %92 = udiv i32 %91, 255
  %93 = add nuw nsw i32 %92, 1
  %94 = call ptr @memset(ptr %incdec.ptr79.i122, i32 255, i32 %93)
  %.neg893.i134 = mul i32 %92, -255
  %uglygep.i135 = getelementptr i8, ptr %op.0848.i70, i32 2
  %uglygep887.i136 = getelementptr i8, ptr %uglygep.i135, i32 %92
  %95 = sub i32 -270, %sub.ptr.rhs.cast77.i120
  %96 = add i32 %95, %sub.ptr.lhs.cast76.i119
  %97 = add i32 %96, %.neg893.i134
  br label %for.end.i142

for.end.i142:                                     ; preds = %for.body.preheader.i137, %if.then97.i132.for.end.i142_crit_edge
  %op.1.lcssa.i138 = phi ptr [ %incdec.ptr79.i122, %if.then97.i132.for.end.i142_crit_edge ], [ %uglygep887.i136, %for.body.preheader.i137 ]
  %len.0.lcssa.i139 = phi i32 [ %sub98.i130, %if.then97.i132.for.end.i142_crit_edge ], [ %97, %for.body.preheader.i137 ]
  %conv104.i140 = trunc i32 %len.0.lcssa.i139 to i8
  %incdec.ptr105.i141 = getelementptr i8, ptr %op.1.lcssa.i138, i32 1
  %98 = ptrtoint ptr %op.1.lcssa.i138 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv104.i140, ptr %op.1.lcssa.i138, align 1
  br label %if.end109.i148

if.else106.i145:                                  ; preds = %while.end.i128
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub78.tr.i143 = trunc i32 %sub.ptr.sub78.i121 to i8
  %conv108.i144 = shl nuw i8 %sub.ptr.sub78.tr.i143, 4
  %99 = ptrtoint ptr %op.0848.i70 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv108.i144, ptr %op.0848.i70, align 1
  br label %if.end109.i148

if.end109.i148:                                   ; preds = %if.else106.i145, %for.end.i142
  %op.2.i146 = phi ptr [ %incdec.ptr105.i141, %for.end.i142 ], [ %incdec.ptr79.i122, %if.else106.i145 ]
  %add.ptr110.i147 = getelementptr i8, ptr %op.2.i146, i32 %sub.ptr.sub78.i121
  br label %do.body.i.i157

do.body.i.i157:                                   ; preds = %do.body.i.i157.do.body.i.i157_crit_edge, %if.end109.i148
  %d.0.i.i149 = phi ptr [ %op.2.i146, %if.end109.i148 ], [ %add.ptr.i.i154, %do.body.i.i157.do.body.i.i157_crit_edge ]
  %s.0.i.i150 = phi ptr [ %anchor.0847.i71, %if.end109.i148 ], [ %add.ptr1.i.i155, %do.body.i.i157.do.body.i.i157_crit_edge ]
  %100 = ptrtoint ptr %s.0.i.i150 to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %s.0.val.i.i151 = load i32, ptr %s.0.i.i150, align 1
  %101 = getelementptr i8, ptr %s.0.i.i150, i32 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %s.0.val5.i.i152 = load i32, ptr %101, align 1
  %103 = ptrtoint ptr %d.0.i.i149 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 %s.0.val.i.i151, ptr %d.0.i.i149, align 1
  %add.ptr8.i.i.i153 = getelementptr i32, ptr %d.0.i.i149, i32 1
  %104 = ptrtoint ptr %add.ptr8.i.i.i153 to i32
  call void @__asan_storeN_noabort(i32 %104, i32 4)
  store i32 %s.0.val5.i.i152, ptr %add.ptr8.i.i.i153, align 1
  %add.ptr.i.i154 = getelementptr i8, ptr %d.0.i.i149, i32 8
  %add.ptr1.i.i155 = getelementptr i8, ptr %s.0.i.i150, i32 8
  %cmp.i.i156 = icmp ult ptr %add.ptr.i.i154, %add.ptr110.i147
  br i1 %cmp.i.i156, label %do.body.i.i157.do.body.i.i157_crit_edge, label %do.body.i.i157._next_match.i170_crit_edge

do.body.i.i157._next_match.i170_crit_edge:        ; preds = %do.body.i.i157
  br label %_next_match.i170

do.body.i.i157.do.body.i.i157_crit_edge:          ; preds = %do.body.i.i157
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i157

_next_match.i170:                                 ; preds = %if.then233.i256, %do.body.i.i157._next_match.i170_crit_edge
  %ip.2.i158 = phi ptr [ %add.ptr151.i212, %if.then233.i256 ], [ %ip.1.lcssa.i117, %do.body.i.i157._next_match.i170_crit_edge ]
  %op.4.i160 = phi ptr [ %incdec.ptr234.i255, %if.then233.i256 ], [ %add.ptr110.i147, %do.body.i.i157._next_match.i170_crit_edge ]
  %match.3.i162 = phi ptr [ %134, %if.then233.i256 ], [ %match.2.lcssa.i118, %do.body.i.i157._next_match.i170_crit_edge ]
  %token.0.i163 = phi ptr [ %op.7.ph.i239, %if.then233.i256 ], [ %op.0848.i70, %do.body.i.i157._next_match.i170_crit_edge ]
  %sub.ptr.lhs.cast115.i164 = ptrtoint ptr %ip.2.i158 to i32
  %sub.ptr.rhs.cast116.i165 = ptrtoint ptr %match.3.i162 to i32
  %sub.ptr.sub117.i166 = sub i32 %sub.ptr.lhs.cast115.i164, %sub.ptr.rhs.cast116.i165
  %conv118.i167 = trunc i32 %sub.ptr.sub117.i166 to i16
  %105 = tail call i16 @llvm.bswap.i16(i16 %conv118.i167) #4
  %106 = ptrtoint ptr %op.4.i160 to i32
  call void @__asan_storeN_noabort(i32 %106, i32 2)
  store i16 %105, ptr %op.4.i160, align 1
  %add.ptr119.i168 = getelementptr i8, ptr %op.4.i160, i32 2
  %add.ptr147.i171 = getelementptr i8, ptr %ip.2.i158, i32 4
  %add.ptr148.i172 = getelementptr i8, ptr %match.3.i162, i32 4
  %cmp59.i551.i173 = icmp ugt ptr %add.ptr.i550.i65, %add.ptr147.i171
  br i1 %cmp59.i551.i173, label %_next_match.i170.while.body.i558.i180_crit_edge, label %_next_match.i170.while.end.i570.i191_crit_edge, !prof !27

_next_match.i170.while.end.i570.i191_crit_edge:   ; preds = %_next_match.i170
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i570.i191

_next_match.i170.while.body.i558.i180_crit_edge:  ; preds = %_next_match.i170
  br label %while.body.i558.i180

while.body.i558.i180:                             ; preds = %cleanup.i565.i187.while.body.i558.i180_crit_edge, %_next_match.i170.while.body.i558.i180_crit_edge
  %pMatch.addr.061.i552.i174 = phi ptr [ %add.ptr5.i563.i185, %cleanup.i565.i187.while.body.i558.i180_crit_edge ], [ %add.ptr148.i172, %_next_match.i170.while.body.i558.i180_crit_edge ]
  %pIn.addr.060.i553.i175 = phi ptr [ %add.ptr4.i562.i184, %cleanup.i565.i187.while.body.i558.i180_crit_edge ], [ %add.ptr147.i171, %_next_match.i170.while.body.i558.i180_crit_edge ]
  %107 = ptrtoint ptr %pMatch.addr.061.i552.i174 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %pMatch.addr.0.val.i554.i176 = load i32, ptr %pMatch.addr.061.i552.i174, align 1
  %108 = ptrtoint ptr %pIn.addr.060.i553.i175 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %pIn.addr.0.val.i555.i177 = load i32, ptr %pIn.addr.060.i553.i175, align 1
  %xor.i556.i178 = xor i32 %pIn.addr.0.val.i555.i177, %pMatch.addr.0.val.i554.i176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i556.i178)
  %tobool3.not.i557.i179 = icmp eq i32 %xor.i556.i178, 0
  br i1 %tobool3.not.i557.i179, label %cleanup.i565.i187, label %cleanup.thread.i561.i183

cleanup.thread.i561.i183:                         ; preds = %while.body.i558.i180
  call void @__sanitizer_cov_trace_pc() #6
  %109 = tail call i32 @llvm.ctlz.i32(i32 %xor.i556.i178, i1 true) #4, !range !28
  %shr.i.i559.i181 = lshr i32 %109, 3
  %add.ptr7.i560.i182 = getelementptr i8, ptr %pIn.addr.060.i553.i175, i32 %shr.i.i559.i181
  br label %LZ4_count.exit590.i213

cleanup.i565.i187:                                ; preds = %while.body.i558.i180
  %add.ptr4.i562.i184 = getelementptr i8, ptr %pIn.addr.060.i553.i175, i32 4
  %add.ptr5.i563.i185 = getelementptr i8, ptr %pMatch.addr.061.i552.i174, i32 4
  %cmp.i564.i186 = icmp ult ptr %add.ptr4.i562.i184, %add.ptr.i550.i65
  br i1 %cmp.i564.i186, label %cleanup.i565.i187.while.body.i558.i180_crit_edge, label %cleanup.i565.i187.while.end.i570.i191_crit_edge, !prof !27

cleanup.i565.i187.while.end.i570.i191_crit_edge:  ; preds = %cleanup.i565.i187
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i570.i191

cleanup.i565.i187.while.body.i558.i180_crit_edge: ; preds = %cleanup.i565.i187
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i558.i180

while.end.i570.i191:                              ; preds = %cleanup.i565.i187.while.end.i570.i191_crit_edge, %_next_match.i170.while.end.i570.i191_crit_edge
  %pIn.addr.0.lcssa.i566.i188 = phi ptr [ %add.ptr147.i171, %_next_match.i170.while.end.i570.i191_crit_edge ], [ %add.ptr4.i562.i184, %cleanup.i565.i187.while.end.i570.i191_crit_edge ]
  %pMatch.addr.0.lcssa.i567.i189 = phi ptr [ %add.ptr148.i172, %_next_match.i170.while.end.i570.i191_crit_edge ], [ %add.ptr5.i563.i185, %cleanup.i565.i187.while.end.i570.i191_crit_edge ]
  %cmp9.i569.i190 = icmp ult ptr %pIn.addr.0.lcssa.i566.i188, %add.ptr8.i568.i66
  br i1 %cmp9.i569.i190, label %land.lhs.true.i574.i195, label %while.end.i570.i191.if.end18.i581.i202_crit_edge

while.end.i570.i191.if.end18.i581.i202_crit_edge: ; preds = %while.end.i570.i191
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i581.i202

land.lhs.true.i574.i195:                          ; preds = %while.end.i570.i191
  %110 = ptrtoint ptr %pMatch.addr.0.lcssa.i567.i189 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 2)
  %pMatch.addr.0.val53.i571.i192 = load i16, ptr %pMatch.addr.0.lcssa.i567.i189, align 1
  %111 = ptrtoint ptr %pIn.addr.0.lcssa.i566.i188 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %pIn.addr.0.val52.i572.i193 = load i16, ptr %pIn.addr.0.lcssa.i566.i188, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %pMatch.addr.0.val53.i571.i192, i16 %pIn.addr.0.val52.i572.i193)
  %cmp13.i573.i194 = icmp eq i16 %pMatch.addr.0.val53.i571.i192, %pIn.addr.0.val52.i572.i193
  br i1 %cmp13.i573.i194, label %if.then15.i577.i198, label %land.lhs.true.i574.i195.if.end18.i581.i202_crit_edge

land.lhs.true.i574.i195.if.end18.i581.i202_crit_edge: ; preds = %land.lhs.true.i574.i195
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i581.i202

if.then15.i577.i198:                              ; preds = %land.lhs.true.i574.i195
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i575.i196 = getelementptr i8, ptr %pIn.addr.0.lcssa.i566.i188, i32 2
  %add.ptr17.i576.i197 = getelementptr i8, ptr %pMatch.addr.0.lcssa.i567.i189, i32 2
  br label %if.end18.i581.i202

if.end18.i581.i202:                               ; preds = %if.then15.i577.i198, %land.lhs.true.i574.i195.if.end18.i581.i202_crit_edge, %while.end.i570.i191.if.end18.i581.i202_crit_edge
  %pIn.addr.2.i578.i199 = phi ptr [ %add.ptr16.i575.i196, %if.then15.i577.i198 ], [ %pIn.addr.0.lcssa.i566.i188, %land.lhs.true.i574.i195.if.end18.i581.i202_crit_edge ], [ %pIn.addr.0.lcssa.i566.i188, %while.end.i570.i191.if.end18.i581.i202_crit_edge ]
  %pMatch.addr.2.i579.i200 = phi ptr [ %add.ptr17.i576.i197, %if.then15.i577.i198 ], [ %pMatch.addr.0.lcssa.i567.i189, %land.lhs.true.i574.i195.if.end18.i581.i202_crit_edge ], [ %pMatch.addr.0.lcssa.i567.i189, %while.end.i570.i191.if.end18.i581.i202_crit_edge ]
  %cmp19.i580.i201 = icmp ult ptr %pIn.addr.2.i578.i199, %add.ptr6.i300
  br i1 %cmp19.i580.i201, label %land.lhs.true21.i585.i206, label %if.end18.i581.i202.LZ4_count.exit590.i213_crit_edge

if.end18.i581.i202.LZ4_count.exit590.i213_crit_edge: ; preds = %if.end18.i581.i202
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_count.exit590.i213

land.lhs.true21.i585.i206:                        ; preds = %if.end18.i581.i202
  call void @__sanitizer_cov_trace_pc() #6
  %112 = ptrtoint ptr %pMatch.addr.2.i579.i200 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %pMatch.addr.2.i579.i200, align 1
  %114 = ptrtoint ptr %pIn.addr.2.i578.i199 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %pIn.addr.2.i578.i199, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %113, i8 %115)
  %cmp24.i582.i203 = icmp eq i8 %113, %115
  %spec.select.idx.i583.i204 = zext i1 %cmp24.i582.i203 to i32
  %spec.select.i584.i205 = getelementptr i8, ptr %pIn.addr.2.i578.i199, i32 %spec.select.idx.i583.i204
  br label %LZ4_count.exit590.i213

LZ4_count.exit590.i213:                           ; preds = %land.lhs.true21.i585.i206, %if.end18.i581.i202.LZ4_count.exit590.i213_crit_edge, %cleanup.thread.i561.i183
  %add.ptr7.sink.i586.i207 = phi ptr [ %add.ptr7.i560.i182, %cleanup.thread.i561.i183 ], [ %pIn.addr.2.i578.i199, %if.end18.i581.i202.LZ4_count.exit590.i213_crit_edge ], [ %spec.select.i584.i205, %land.lhs.true21.i585.i206 ]
  %sub.ptr.lhs.cast.i587.i208 = ptrtoint ptr %add.ptr7.sink.i586.i207 to i32
  %sub.ptr.rhs.cast.i588.i209 = ptrtoint ptr %add.ptr147.i171 to i32
  %sub.ptr.sub.i589.i210 = sub i32 %sub.ptr.lhs.cast.i587.i208, %sub.ptr.rhs.cast.i588.i209
  %add150.i211 = add i32 %sub.ptr.sub.i589.i210, 4
  %add.ptr151.i212 = getelementptr i8, ptr %ip.2.i158, i32 %add150.i211
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i589.i210)
  %cmp168.i218 = icmp ugt i32 %sub.ptr.sub.i589.i210, 14
  %116 = ptrtoint ptr %token.0.i163 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %token.0.i163, align 1
  br i1 %cmp168.i218, label %if.then170.i222, label %if.else186.i238

if.then170.i222:                                  ; preds = %LZ4_count.exit590.i213
  %add172.i219 = add i8 %117, 15
  %118 = ptrtoint ptr %token.0.i163 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %add172.i219, ptr %token.0.i163, align 1
  %sub174.i220 = add i32 %sub.ptr.sub.i589.i210, -15
  %119 = ptrtoint ptr %add.ptr119.i168 to i32
  call void @__asan_storeN_noabort(i32 %119, i32 4)
  store i32 -1, ptr %add.ptr119.i168, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1019, i32 %sub174.i220)
  %cmp176835.i221 = icmp ugt i32 %sub174.i220, 1019
  br i1 %cmp176835.i221, label %while.body178.preheader.i226, label %if.then170.i222.while.end181.i236_crit_edge

if.then170.i222.while.end181.i236_crit_edge:      ; preds = %if.then170.i222
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end181.i236

while.body178.preheader.i226:                     ; preds = %if.then170.i222
  call void @__sanitizer_cov_trace_pc() #6
  %uglygep888.i223 = getelementptr i8, ptr %op.4.i160, i32 6
  %120 = add i32 %sub.ptr.sub.i589.i210, -1035
  %121 = udiv i32 %120, 1020
  %122 = shl nuw nsw i32 %121, 2
  %123 = add nuw nsw i32 %122, 4
  %124 = call ptr @memset(ptr %uglygep888.i223, i32 255, i32 %123)
  %uglygep889.i224 = getelementptr i8, ptr %uglygep888.i223, i32 %122
  %.neg892.i225 = mul i32 %121, -1020
  %125 = add i32 %.neg892.i225, %120
  br label %while.end181.i236

while.end181.i236:                                ; preds = %while.body178.preheader.i226, %if.then170.i222.while.end181.i236_crit_edge
  %op.5.lcssa.i227 = phi ptr [ %add.ptr119.i168, %if.then170.i222.while.end181.i236_crit_edge ], [ %uglygep889.i224, %while.body178.preheader.i226 ]
  %matchCode.2.lcssa.i228 = phi i32 [ %sub174.i220, %if.then170.i222.while.end181.i236_crit_edge ], [ %125, %while.body178.preheader.i226 ]
  %div182.lhs.trunc.i229 = trunc i32 %matchCode.2.lcssa.i228 to i16
  %div182.lhs.trunc.i229.frozen = freeze i16 %div182.lhs.trunc.i229
  %div182784.i230 = udiv i16 %div182.lhs.trunc.i229.frozen, 255
  %div182.zext.i231 = zext i16 %div182784.i230 to i32
  %add.ptr183.i232 = getelementptr i8, ptr %op.5.lcssa.i227, i32 %div182.zext.i231
  %126 = mul i16 %div182784.i230, 255
  %rem785.i233.decomposed = sub i16 %div182.lhs.trunc.i229.frozen, %126
  %conv184.i234 = trunc i16 %rem785.i233.decomposed to i8
  %incdec.ptr185.i235 = getelementptr i8, ptr %add.ptr183.i232, i32 1
  %127 = ptrtoint ptr %add.ptr183.i232 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv184.i234, ptr %add.ptr183.i232, align 1
  br label %cleanup.cont195.i241

if.else186.i238:                                  ; preds = %LZ4_count.exit590.i213
  call void @__sanitizer_cov_trace_pc() #6
  %128 = trunc i32 %sub.ptr.sub.i589.i210 to i8
  %conv191.i237 = add i8 %117, %128
  %129 = ptrtoint ptr %token.0.i163 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv191.i237, ptr %token.0.i163, align 1
  br label %cleanup.cont195.i241

cleanup.cont195.i241:                             ; preds = %if.else186.i238, %while.end181.i236
  %op.7.ph.i239 = phi ptr [ %add.ptr119.i168, %if.else186.i238 ], [ %incdec.ptr185.i235, %while.end181.i236 ]
  %cmp196.i240 = icmp ugt ptr %add.ptr151.i212, %add.ptr5.i299
  br i1 %cmp196.i240, label %cleanup.cont195.i241._last_literals.i265_crit_edge, label %if.end199.i246

cleanup.cont195.i241._last_literals.i265_crit_edge: ; preds = %cleanup.cont195.i241
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i265

if.end199.i246:                                   ; preds = %cleanup.cont195.i241
  %add.ptr200.i242 = getelementptr i8, ptr %add.ptr151.i212, i32 -2
  %130 = ptrtoint ptr %add.ptr200.i242 to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %p.val.i591.i243 = load i32, ptr %add.ptr200.i242, align 1
  %mul.i.i.i593.i244 = mul i32 %p.val.i591.i243, -1640531535
  %retval.0.i.i.i595.i245 = lshr i32 %mul.i.i.i593.i244, 20
  %arrayidx.i.i596.i = getelementptr ptr, ptr %state, i32 %retval.0.i.i.i595.i245
  %131 = ptrtoint ptr %arrayidx.i.i596.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %add.ptr200.i242, ptr %arrayidx.i.i596.i, align 4
  %132 = ptrtoint ptr %add.ptr151.i212 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %ip.4.val502714.i = load i32, ptr %add.ptr151.i212, align 1
  %mul.i.i.i611715.i = mul i32 %ip.4.val502714.i, -1640531535
  %retval.0.i.i.i613716.i = lshr i32 %mul.i.i.i611715.i, 20
  %arrayidx.i.i614.i = getelementptr ptr, ptr %state, i32 %retval.0.i.i.i613716.i
  %133 = ptrtoint ptr %arrayidx.i.i614.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx.i.i614.i, align 4
  store ptr %add.ptr151.i212, ptr %arrayidx.i.i614.i, align 4
  %add.ptr224.i248 = getelementptr i8, ptr %134, i32 65535
  %cmp225.not.i249 = icmp ult ptr %add.ptr224.i248, %add.ptr151.i212
  br i1 %cmp225.not.i249, label %if.end199.i246.cleanup238.i259_crit_edge, label %land.lhs.true227.i254

if.end199.i246.cleanup238.i259_crit_edge:         ; preds = %if.end199.i246
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup238.i259

land.lhs.true227.i254:                            ; preds = %if.end199.i246
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %add.ptr228.val.i251 = load i32, ptr %134, align 1
  %136 = ptrtoint ptr %add.ptr151.i212 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 4)
  %ip.4.val.i252 = load i32, ptr %add.ptr151.i212, align 1
  %cmp231.i253 = icmp eq i32 %add.ptr228.val.i251, %ip.4.val.i252
  br i1 %cmp231.i253, label %if.then233.i256, label %land.lhs.true227.i254.cleanup238.i259_crit_edge

land.lhs.true227.i254.cleanup238.i259_crit_edge:  ; preds = %land.lhs.true227.i254
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup238.i259

if.then233.i256:                                  ; preds = %land.lhs.true227.i254
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr234.i255 = getelementptr i8, ptr %op.7.ph.i239, i32 1
  %137 = ptrtoint ptr %op.7.ph.i239 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %op.7.ph.i239, align 1
  br label %_next_match.i170

cleanup238.i259:                                  ; preds = %land.lhs.true227.i254.cleanup238.i259_crit_edge, %if.end199.i246.cleanup238.i259_crit_edge
  %add.ptr25806.i257 = getelementptr i8, ptr %add.ptr151.i212, i32 2
  %cmp26809.i258 = icmp ugt ptr %add.ptr25806.i257, %add.ptr5.i299
  br i1 %cmp26809.i258, label %cleanup238.i259._last_literals.i265_crit_edge, label %cleanup238.i259.if.end29.lr.ph.i75_crit_edge, !prof !26

cleanup238.i259.if.end29.lr.ph.i75_crit_edge:     ; preds = %cleanup238.i259
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.lr.ph.i75

cleanup238.i259._last_literals.i265_crit_edge:    ; preds = %cleanup238.i259
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i265

_last_literals.i265:                              ; preds = %cleanup238.i259._last_literals.i265_crit_edge, %cleanup.cont195.i241._last_literals.i265_crit_edge, %do.body.backedge.i97._last_literals.i265_crit_edge, %if.end24.i58._last_literals.i265_crit_edge
  %anchor.3.i260 = phi ptr [ %source, %if.end24.i58._last_literals.i265_crit_edge ], [ %add.ptr151.i212, %cleanup.cont195.i241._last_literals.i265_crit_edge ], [ %anchor.0847.i71, %do.body.backedge.i97._last_literals.i265_crit_edge ], [ %add.ptr151.i212, %cleanup238.i259._last_literals.i265_crit_edge ]
  %op.9.i261 = phi ptr [ %dest, %if.end24.i58._last_literals.i265_crit_edge ], [ %op.7.ph.i239, %cleanup.cont195.i241._last_literals.i265_crit_edge ], [ %op.0848.i70, %do.body.backedge.i97._last_literals.i265_crit_edge ], [ %op.7.ph.i239, %cleanup238.i259._last_literals.i265_crit_edge ]
  %sub.ptr.lhs.cast243.i262 = ptrtoint ptr %add.ptr4.i298 to i32
  %sub.ptr.rhs.cast244.i263 = ptrtoint ptr %anchor.3.i260 to i32
  %sub.ptr.sub245.i264 = sub i32 %sub.ptr.lhs.cast243.i262, %sub.ptr.rhs.cast244.i263
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub245.i264)
  %cmp261.i266 = icmp ugt i32 %sub.ptr.sub245.i264, 14
  br i1 %cmp261.i266, label %if.then263.i270, label %if.else276.i280

if.then263.i270:                                  ; preds = %_last_literals.i265
  %sub264.i267 = add i32 %sub.ptr.sub245.i264, -15
  %138 = ptrtoint ptr %op.9.i261 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 -16, ptr %op.9.i261, align 1
  %op.10855.i268 = getelementptr i8, ptr %op.9.i261, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %sub264.i267)
  %cmp267856.i269 = icmp ugt i32 %sub264.i267, 254
  br i1 %cmp267856.i269, label %for.body269.preheader.i273, label %if.then263.i270.for.end273.i277_crit_edge

if.then263.i270.for.end273.i277_crit_edge:        ; preds = %if.then263.i270
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end273.i277

for.body269.preheader.i273:                       ; preds = %if.then263.i270
  call void @__sanitizer_cov_trace_pc() #6
  %139 = add i32 %inputSize, -270
  %140 = add i32 %139, %source890.i290
  %141 = sub i32 %140, %sub.ptr.rhs.cast244.i263
  %142 = udiv i32 %141, 255
  %143 = add nuw nsw i32 %142, 1
  %144 = call ptr @memset(ptr %op.10855.i268, i32 255, i32 %143)
  %.neg.i271 = mul i32 %142, -255
  %145 = add nuw nsw i32 %142, 2
  %146 = add i32 %.neg.i271, %141
  %uglygep891.i272 = getelementptr i8, ptr %op.9.i261, i32 %145
  br label %for.end273.i277

for.end273.i277:                                  ; preds = %for.body269.preheader.i273, %if.then263.i270.for.end273.i277_crit_edge
  %accumulator.0.lcssa.i274 = phi i32 [ %sub264.i267, %if.then263.i270.for.end273.i277_crit_edge ], [ %146, %for.body269.preheader.i273 ]
  %op.10.lcssa.i275 = phi ptr [ %op.10855.i268, %if.then263.i270.for.end273.i277_crit_edge ], [ %uglygep891.i272, %for.body269.preheader.i273 ]
  %conv274.i276 = trunc i32 %accumulator.0.lcssa.i274 to i8
  %147 = ptrtoint ptr %op.10.lcssa.i275 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv274.i276, ptr %op.10.lcssa.i275, align 1
  br label %cleanup.cont284.i287

if.else276.i280:                                  ; preds = %_last_literals.i265
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub245.tr.i278 = trunc i32 %sub.ptr.sub245.i264 to i8
  %conv278.i279 = shl nuw i8 %sub.ptr.sub245.tr.i278, 4
  %148 = ptrtoint ptr %op.9.i261 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv278.i279, ptr %op.9.i261, align 1
  br label %cleanup.cont284.i287

cleanup.cont284.i287:                             ; preds = %if.else276.i280, %for.end273.i277
  %op.10.pn.i281 = phi ptr [ %op.10.lcssa.i275, %for.end273.i277 ], [ %op.9.i261, %if.else276.i280 ]
  %op.11.i282 = getelementptr i8, ptr %op.10.pn.i281, i32 1
  %149 = call ptr @memcpy(ptr %op.11.i282, ptr %anchor.3.i260, i32 %sub.ptr.sub245.i264)
  %add.ptr281.i283 = getelementptr i8, ptr %op.11.i282, i32 %sub.ptr.sub245.i264
  %sub.ptr.lhs.cast285.i284 = ptrtoint ptr %add.ptr281.i283 to i32
  %sub.ptr.rhs.cast286.i285 = ptrtoint ptr %dest to i32
  %sub.ptr.sub287.i286 = sub i32 %sub.ptr.lhs.cast285.i284, %sub.ptr.rhs.cast286.i285
  br label %cleanup

if.else8:                                         ; preds = %entry
  %add.ptr7.i = getelementptr i8, ptr %dest, i32 %maxOutputSize
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else8
  br i1 %cmp1, label %if.then10.cleanup_crit_edge, label %if.end21.i305

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end21.i305:                                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inputSize)
  %cmp22.i304 = icmp ult i32 %inputSize, 13
  br i1 %cmp22.i304, label %if.end21.i305._last_literals.i547_crit_edge, label %if.end24.i309

if.end21.i305._last_literals.i547_crit_edge:      ; preds = %if.end21.i305
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i547

if.end24.i309:                                    ; preds = %if.end21.i305
  %150 = ptrtoint ptr %source to i32
  call void @__asan_loadN_noabort(i32 %150, i32 4)
  %p.val.i.i306 = load i32, ptr %source, align 1
  %mul.i.i.i.i307 = mul i32 %p.val.i.i306, -1640531535
  %retval.0.i.i.i.i308 = lshr i32 %mul.i.i.i.i307, 19
  %arrayidx9.i.i.i313 = getelementptr i16, ptr %state, i32 %retval.0.i.i.i.i308
  %151 = ptrtoint ptr %arrayidx9.i.i.i313 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %arrayidx9.i.i.i313, align 2
  %shl.i314 = shl i32 %1, 6
  %inc807.i315 = or i32 %shl.i314, 1
  %shr808.i316 = and i32 %1, 67108863
  %add.ptr25806844.i317 = getelementptr i8, ptr %source, i32 2
  %cmp26809845.i318 = icmp ugt ptr %add.ptr25806844.i317, %add.ptr5.i299
  br i1 %cmp26809845.i318, label %if.end24.i309._last_literals.i547_crit_edge, label %if.end29.lr.ph.lr.ph.i322, !prof !26

if.end24.i309._last_literals.i547_crit_edge:      ; preds = %if.end24.i309
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i547

if.end29.lr.ph.lr.ph.i322:                        ; preds = %if.end24.i309
  %add.ptr.i550.i320 = getelementptr i8, ptr %add.ptr6.i300, i32 -3
  %add.ptr8.i568.i321 = getelementptr i8, ptr %add.ptr6.i300, i32 -1
  br label %if.end29.lr.ph.i330

if.end29.lr.ph.i330:                              ; preds = %cleanup238.i541.if.end29.lr.ph.i330_crit_edge, %if.end29.lr.ph.lr.ph.i322
  %add.ptr25806852.i323 = phi ptr [ %add.ptr25806844.i317, %if.end29.lr.ph.lr.ph.i322 ], [ %add.ptr25806.i539, %cleanup238.i541.if.end29.lr.ph.i330_crit_edge ]
  %op.0848.i325 = phi ptr [ %dest, %if.end29.lr.ph.lr.ph.i322 ], [ %op.7.ph.i505, %cleanup238.i541.if.end29.lr.ph.i330_crit_edge ]
  %anchor.0847.i326 = phi ptr [ %source, %if.end29.lr.ph.lr.ph.i322 ], [ %add.ptr151.i478, %cleanup238.i541.if.end29.lr.ph.i330_crit_edge ]
  %ip.0850.i328 = getelementptr i8, ptr %anchor.0847.i326, i32 1
  %152 = ptrtoint ptr %ip.0850.i328 to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %mul.i.i.pn.pn804842.pn.in.i329 = load i32, ptr %ip.0850.i328, align 1
  br label %if.end29.i340

if.end29.i340:                                    ; preds = %do.body.backedge.i363.if.end29.i340_crit_edge, %if.end29.lr.ph.i330
  %shr816.i331 = phi i32 [ %shr808.i316, %if.end29.lr.ph.i330 ], [ %shr.i361, %do.body.backedge.i363.if.end29.i340_crit_edge ]
  %inc815.i332 = phi i32 [ %inc807.i315, %if.end29.lr.ph.i330 ], [ %inc.i360, %do.body.backedge.i363.if.end29.i340_crit_edge ]
  %add.ptr25814.i333 = phi ptr [ %add.ptr25806852.i323, %if.end29.lr.ph.i330 ], [ %add.ptr25.i359, %do.body.backedge.i363.if.end29.i340_crit_edge ]
  %mul.i.i.pn.pn804842.pn.pn.in.i334 = phi i32 [ %mul.i.i.pn.pn804842.pn.in.i329, %if.end29.lr.ph.i330 ], [ %add.ptr25.val.i347, %do.body.backedge.i363.if.end29.i340_crit_edge ]
  %forwardIp.0812.i335 = phi ptr [ %ip.0850.i328, %if.end29.lr.ph.i330 ], [ %add.ptr25814.i333, %do.body.backedge.i363.if.end29.i340_crit_edge ]
  %mul.i.i.pn.pn804842.pn.pn.i338 = mul i32 %mul.i.i.pn.pn804842.pn.pn.in.i334, -1640531535
  %forwardH.1813.i339 = lshr i32 %mul.i.i.pn.pn804842.pn.pn.i338, 19
  %arrayidx7.i.i341 = getelementptr i16, ptr %state, i32 %forwardH.1813.i339
  %153 = ptrtoint ptr %arrayidx7.i.i341 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %arrayidx7.i.i341, align 2
  %conv.i.i342 = zext i16 %154 to i32
  %add.ptr8.i642.i343 = getelementptr i8, ptr %source, i32 %conv.i.i342
  %155 = ptrtoint ptr %add.ptr25814.i333 to i32
  call void @__asan_loadN_noabort(i32 %155, i32 4)
  %add.ptr25.val.i347 = load i32, ptr %add.ptr25814.i333, align 1
  %sub.ptr.lhs.cast6.i.i348 = ptrtoint ptr %forwardIp.0812.i335 to i32
  %sub.ptr.sub8.i.i349 = sub i32 %sub.ptr.lhs.cast6.i.i348, %source890.i290
  %conv.i647.i350 = trunc i32 %sub.ptr.sub8.i.i349 to i16
  store i16 %conv.i647.i350, ptr %arrayidx7.i.i341, align 2
  %156 = ptrtoint ptr %add.ptr8.i642.i343 to i32
  call void @__asan_loadN_noabort(i32 %156, i32 4)
  %add.ptr49.val.i355 = load i32, ptr %add.ptr8.i642.i343, align 1
  %157 = ptrtoint ptr %forwardIp.0812.i335 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 4)
  %forwardIp.0.val.i356 = load i32, ptr %forwardIp.0812.i335, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.ptr49.val.i355, i32 %forwardIp.0.val.i356)
  %cmp52.not.i357 = icmp eq i32 %add.ptr49.val.i355, %forwardIp.0.val.i356
  br i1 %cmp52.not.i357, label %while.cond.preheader.i368, label %do.body.backedge.i363

do.body.backedge.i363:                            ; preds = %if.end29.i340
  %add.ptr25.i359 = getelementptr i8, ptr %add.ptr25814.i333, i32 %shr816.i331
  %inc.i360 = add i32 %inc815.i332, 1
  %shr.i361 = lshr i32 %inc815.i332, 6
  %cmp26.i362 = icmp ugt ptr %add.ptr25.i359, %add.ptr5.i299
  br i1 %cmp26.i362, label %do.body.backedge.i363._last_literals.i547_crit_edge, label %do.body.backedge.i363.if.end29.i340_crit_edge, !prof !26

do.body.backedge.i363.if.end29.i340_crit_edge:    ; preds = %do.body.backedge.i363
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.i340

do.body.backedge.i363._last_literals.i547_crit_edge: ; preds = %do.body.backedge.i363
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i547

while.cond.preheader.i368:                        ; preds = %if.end29.i340
  %conv.i.i342.le = zext i16 %154 to i32
  %add.ptr8.i642.i343.le = getelementptr i8, ptr %source, i32 %conv.i.i342.le
  %cmp58820.i365 = icmp ugt ptr %forwardIp.0812.i335, %anchor.0847.i326
  %cmp60822.i366 = icmp ugt ptr %add.ptr8.i642.i343.le, %source
  %and491823.i367 = and i1 %cmp58820.i365, %cmp60822.i366
  br i1 %and491823.i367, label %while.cond.preheader.i368.land.rhs.i376_crit_edge, label %while.cond.preheader.i368.while.end.i394_crit_edge

while.cond.preheader.i368.while.end.i394_crit_edge: ; preds = %while.cond.preheader.i368
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i394

while.cond.preheader.i368.land.rhs.i376_crit_edge: ; preds = %while.cond.preheader.i368
  br label %land.rhs.i376

land.rhs.i376:                                    ; preds = %while.body.i382.land.rhs.i376_crit_edge, %while.cond.preheader.i368.land.rhs.i376_crit_edge
  %match.2825.i371 = phi ptr [ %arrayidx64.i374, %while.body.i382.land.rhs.i376_crit_edge ], [ %add.ptr8.i642.i343.le, %while.cond.preheader.i368.land.rhs.i376_crit_edge ]
  %ip.1824.i372 = phi ptr [ %arrayidx.i373, %while.body.i382.land.rhs.i376_crit_edge ], [ %forwardIp.0812.i335, %while.cond.preheader.i368.land.rhs.i376_crit_edge ]
  %arrayidx.i373 = getelementptr i8, ptr %ip.1824.i372, i32 -1
  %158 = ptrtoint ptr %arrayidx.i373 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx.i373, align 1
  %arrayidx64.i374 = getelementptr i8, ptr %match.2825.i371, i32 -1
  %160 = ptrtoint ptr %arrayidx64.i374 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx64.i374, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %159, i8 %161)
  %cmp66.i375 = icmp eq i8 %159, %161
  br i1 %cmp66.i375, label %while.body.i382, label %land.rhs.i376.while.end.i394_crit_edge

land.rhs.i376.while.end.i394_crit_edge:           ; preds = %land.rhs.i376
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i394

while.body.i382:                                  ; preds = %land.rhs.i376
  %cmp58.i378 = icmp ugt ptr %arrayidx.i373, %anchor.0847.i326
  %cmp60.i380 = icmp ugt ptr %arrayidx64.i374, %source
  %and491.i381 = and i1 %cmp60.i380, %cmp58.i378
  br i1 %and491.i381, label %while.body.i382.land.rhs.i376_crit_edge, label %while.body.i382.while.end.i394_crit_edge

while.body.i382.while.end.i394_crit_edge:         ; preds = %while.body.i382
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i394

while.body.i382.land.rhs.i376_crit_edge:          ; preds = %while.body.i382
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i376

while.end.i394:                                   ; preds = %while.body.i382.while.end.i394_crit_edge, %land.rhs.i376.while.end.i394_crit_edge, %while.cond.preheader.i368.while.end.i394_crit_edge
  %ip.1.lcssa.i383 = phi ptr [ %forwardIp.0812.i335, %while.cond.preheader.i368.while.end.i394_crit_edge ], [ %ip.1824.i372, %land.rhs.i376.while.end.i394_crit_edge ], [ %arrayidx.i373, %while.body.i382.while.end.i394_crit_edge ]
  %match.2.lcssa.i384 = phi ptr [ %add.ptr8.i642.i343.le, %while.cond.preheader.i368.while.end.i394_crit_edge ], [ %match.2825.i371, %land.rhs.i376.while.end.i394_crit_edge ], [ %arrayidx64.i374, %while.body.i382.while.end.i394_crit_edge ]
  %sub.ptr.lhs.cast76.i385.pre-phi = ptrtoint ptr %ip.1.lcssa.i383 to i32
  %sub.ptr.rhs.cast77.i386 = ptrtoint ptr %anchor.0847.i326 to i32
  %sub.ptr.sub78.i387 = sub i32 %sub.ptr.lhs.cast76.i385.pre-phi, %sub.ptr.rhs.cast77.i386
  %incdec.ptr79.i388 = getelementptr i8, ptr %op.0848.i325, i32 1
  %add.ptr82.i389 = getelementptr i8, ptr %op.0848.i325, i32 9
  %add.ptr83.i390 = getelementptr i8, ptr %add.ptr82.i389, i32 %sub.ptr.sub78.i387
  %div.i391 = udiv i32 %sub.ptr.sub78.i387, 255
  %add.ptr84.i392 = getelementptr i8, ptr %add.ptr83.i390, i32 %div.i391
  %cmp85.i393 = icmp ugt ptr %add.ptr84.i392, %add.ptr7.i
  br i1 %cmp85.i393, label %while.end.i394.cleanup_crit_edge, label %if.end94.i, !prof !29

while.end.i394.cleanup_crit_edge:                 ; preds = %while.end.i394
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end94.i:                                       ; preds = %while.end.i394
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub78.i387)
  %cmp95.i395 = icmp ugt i32 %sub.ptr.sub78.i387, 14
  br i1 %cmp95.i395, label %if.then97.i398, label %if.else106.i411

if.then97.i398:                                   ; preds = %if.end94.i
  %sub98.i396 = add i32 %sub.ptr.sub78.i387, -15
  %162 = ptrtoint ptr %op.0848.i325 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 -16, ptr %op.0848.i325, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %sub98.i396)
  %cmp100830.i397 = icmp sgt i32 %sub98.i396, 254
  br i1 %cmp100830.i397, label %for.body.preheader.i403, label %if.then97.i398.for.end.i408_crit_edge

if.then97.i398.for.end.i408_crit_edge:            ; preds = %if.then97.i398
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i408

for.body.preheader.i403:                          ; preds = %if.then97.i398
  call void @__sanitizer_cov_trace_pc() #6
  %smin.i399 = tail call i32 @llvm.smin.i32(i32 %sub98.i396, i32 509) #4
  %163 = add i32 %sub.ptr.lhs.cast76.i385.pre-phi, 239
  %164 = add i32 %smin.i399, %sub.ptr.rhs.cast77.i386
  %165 = sub i32 %163, %164
  %166 = udiv i32 %165, 255
  %167 = add nuw nsw i32 %166, 1
  %168 = call ptr @memset(ptr %incdec.ptr79.i388, i32 255, i32 %167)
  %.neg893.i400 = mul i32 %166, -255
  %uglygep.i401 = getelementptr i8, ptr %op.0848.i325, i32 2
  %uglygep887.i402 = getelementptr i8, ptr %uglygep.i401, i32 %166
  %169 = sub i32 -270, %sub.ptr.rhs.cast77.i386
  %170 = add i32 %169, %sub.ptr.lhs.cast76.i385.pre-phi
  %171 = add i32 %170, %.neg893.i400
  br label %for.end.i408

for.end.i408:                                     ; preds = %for.body.preheader.i403, %if.then97.i398.for.end.i408_crit_edge
  %op.1.lcssa.i404 = phi ptr [ %incdec.ptr79.i388, %if.then97.i398.for.end.i408_crit_edge ], [ %uglygep887.i402, %for.body.preheader.i403 ]
  %len.0.lcssa.i405 = phi i32 [ %sub98.i396, %if.then97.i398.for.end.i408_crit_edge ], [ %171, %for.body.preheader.i403 ]
  %conv104.i406 = trunc i32 %len.0.lcssa.i405 to i8
  %incdec.ptr105.i407 = getelementptr i8, ptr %op.1.lcssa.i404, i32 1
  %172 = ptrtoint ptr %op.1.lcssa.i404 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %conv104.i406, ptr %op.1.lcssa.i404, align 1
  br label %if.end109.i414

if.else106.i411:                                  ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub78.tr.i409 = trunc i32 %sub.ptr.sub78.i387 to i8
  %conv108.i410 = shl nuw i8 %sub.ptr.sub78.tr.i409, 4
  %173 = ptrtoint ptr %op.0848.i325 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %conv108.i410, ptr %op.0848.i325, align 1
  br label %if.end109.i414

if.end109.i414:                                   ; preds = %if.else106.i411, %for.end.i408
  %op.2.i412 = phi ptr [ %incdec.ptr105.i407, %for.end.i408 ], [ %incdec.ptr79.i388, %if.else106.i411 ]
  %add.ptr110.i413 = getelementptr i8, ptr %op.2.i412, i32 %sub.ptr.sub78.i387
  br label %do.body.i.i423

do.body.i.i423:                                   ; preds = %do.body.i.i423.do.body.i.i423_crit_edge, %if.end109.i414
  %d.0.i.i415 = phi ptr [ %op.2.i412, %if.end109.i414 ], [ %add.ptr.i.i420, %do.body.i.i423.do.body.i.i423_crit_edge ]
  %s.0.i.i416 = phi ptr [ %anchor.0847.i326, %if.end109.i414 ], [ %add.ptr1.i.i421, %do.body.i.i423.do.body.i.i423_crit_edge ]
  %174 = ptrtoint ptr %s.0.i.i416 to i32
  call void @__asan_loadN_noabort(i32 %174, i32 4)
  %s.0.val.i.i417 = load i32, ptr %s.0.i.i416, align 1
  %175 = getelementptr i8, ptr %s.0.i.i416, i32 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_loadN_noabort(i32 %176, i32 4)
  %s.0.val5.i.i418 = load i32, ptr %175, align 1
  %177 = ptrtoint ptr %d.0.i.i415 to i32
  call void @__asan_storeN_noabort(i32 %177, i32 4)
  store i32 %s.0.val.i.i417, ptr %d.0.i.i415, align 1
  %add.ptr8.i.i.i419 = getelementptr i32, ptr %d.0.i.i415, i32 1
  %178 = ptrtoint ptr %add.ptr8.i.i.i419 to i32
  call void @__asan_storeN_noabort(i32 %178, i32 4)
  store i32 %s.0.val5.i.i418, ptr %add.ptr8.i.i.i419, align 1
  %add.ptr.i.i420 = getelementptr i8, ptr %d.0.i.i415, i32 8
  %add.ptr1.i.i421 = getelementptr i8, ptr %s.0.i.i416, i32 8
  %cmp.i.i422 = icmp ult ptr %add.ptr.i.i420, %add.ptr110.i413
  br i1 %cmp.i.i422, label %do.body.i.i423.do.body.i.i423_crit_edge, label %do.body.i.i423._next_match.i436_crit_edge

do.body.i.i423._next_match.i436_crit_edge:        ; preds = %do.body.i.i423
  br label %_next_match.i436

do.body.i.i423.do.body.i.i423_crit_edge:          ; preds = %do.body.i.i423
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i423

_next_match.i436:                                 ; preds = %if.then233.i538, %do.body.i.i423._next_match.i436_crit_edge
  %ip.2.i424 = phi ptr [ %add.ptr151.i478, %if.then233.i538 ], [ %ip.1.lcssa.i383, %do.body.i.i423._next_match.i436_crit_edge ]
  %op.4.i426 = phi ptr [ %incdec.ptr234.i537, %if.then233.i538 ], [ %add.ptr110.i413, %do.body.i.i423._next_match.i436_crit_edge ]
  %match.3.i428 = phi ptr [ %add.ptr8.i.i616755.i522, %if.then233.i538 ], [ %match.2.lcssa.i384, %do.body.i.i423._next_match.i436_crit_edge ]
  %token.0.i429 = phi ptr [ %op.7.ph.i505, %if.then233.i538 ], [ %op.0848.i325, %do.body.i.i423._next_match.i436_crit_edge ]
  %sub.ptr.lhs.cast115.i430 = ptrtoint ptr %ip.2.i424 to i32
  %sub.ptr.rhs.cast116.i431 = ptrtoint ptr %match.3.i428 to i32
  %sub.ptr.sub117.i432 = sub i32 %sub.ptr.lhs.cast115.i430, %sub.ptr.rhs.cast116.i431
  %conv118.i433 = trunc i32 %sub.ptr.sub117.i432 to i16
  %179 = tail call i16 @llvm.bswap.i16(i16 %conv118.i433) #4
  %180 = ptrtoint ptr %op.4.i426 to i32
  call void @__asan_storeN_noabort(i32 %180, i32 2)
  store i16 %179, ptr %op.4.i426, align 1
  %add.ptr119.i434 = getelementptr i8, ptr %op.4.i426, i32 2
  %add.ptr147.i437 = getelementptr i8, ptr %ip.2.i424, i32 4
  %add.ptr148.i438 = getelementptr i8, ptr %match.3.i428, i32 4
  %cmp59.i551.i439 = icmp ugt ptr %add.ptr.i550.i320, %add.ptr147.i437
  br i1 %cmp59.i551.i439, label %_next_match.i436.while.body.i558.i446_crit_edge, label %_next_match.i436.while.end.i570.i457_crit_edge, !prof !27

_next_match.i436.while.end.i570.i457_crit_edge:   ; preds = %_next_match.i436
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i570.i457

_next_match.i436.while.body.i558.i446_crit_edge:  ; preds = %_next_match.i436
  br label %while.body.i558.i446

while.body.i558.i446:                             ; preds = %cleanup.i565.i453.while.body.i558.i446_crit_edge, %_next_match.i436.while.body.i558.i446_crit_edge
  %pMatch.addr.061.i552.i440 = phi ptr [ %add.ptr5.i563.i451, %cleanup.i565.i453.while.body.i558.i446_crit_edge ], [ %add.ptr148.i438, %_next_match.i436.while.body.i558.i446_crit_edge ]
  %pIn.addr.060.i553.i441 = phi ptr [ %add.ptr4.i562.i450, %cleanup.i565.i453.while.body.i558.i446_crit_edge ], [ %add.ptr147.i437, %_next_match.i436.while.body.i558.i446_crit_edge ]
  %181 = ptrtoint ptr %pMatch.addr.061.i552.i440 to i32
  call void @__asan_loadN_noabort(i32 %181, i32 4)
  %pMatch.addr.0.val.i554.i442 = load i32, ptr %pMatch.addr.061.i552.i440, align 1
  %182 = ptrtoint ptr %pIn.addr.060.i553.i441 to i32
  call void @__asan_loadN_noabort(i32 %182, i32 4)
  %pIn.addr.0.val.i555.i443 = load i32, ptr %pIn.addr.060.i553.i441, align 1
  %xor.i556.i444 = xor i32 %pIn.addr.0.val.i555.i443, %pMatch.addr.0.val.i554.i442
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i556.i444)
  %tobool3.not.i557.i445 = icmp eq i32 %xor.i556.i444, 0
  br i1 %tobool3.not.i557.i445, label %cleanup.i565.i453, label %cleanup.thread.i561.i449

cleanup.thread.i561.i449:                         ; preds = %while.body.i558.i446
  call void @__sanitizer_cov_trace_pc() #6
  %183 = tail call i32 @llvm.ctlz.i32(i32 %xor.i556.i444, i1 true) #4, !range !28
  %shr.i.i559.i447 = lshr i32 %183, 3
  %add.ptr7.i560.i448 = getelementptr i8, ptr %pIn.addr.060.i553.i441, i32 %shr.i.i559.i447
  br label %LZ4_count.exit590.i479

cleanup.i565.i453:                                ; preds = %while.body.i558.i446
  %add.ptr4.i562.i450 = getelementptr i8, ptr %pIn.addr.060.i553.i441, i32 4
  %add.ptr5.i563.i451 = getelementptr i8, ptr %pMatch.addr.061.i552.i440, i32 4
  %cmp.i564.i452 = icmp ult ptr %add.ptr4.i562.i450, %add.ptr.i550.i320
  br i1 %cmp.i564.i452, label %cleanup.i565.i453.while.body.i558.i446_crit_edge, label %cleanup.i565.i453.while.end.i570.i457_crit_edge, !prof !27

cleanup.i565.i453.while.end.i570.i457_crit_edge:  ; preds = %cleanup.i565.i453
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i570.i457

cleanup.i565.i453.while.body.i558.i446_crit_edge: ; preds = %cleanup.i565.i453
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i558.i446

while.end.i570.i457:                              ; preds = %cleanup.i565.i453.while.end.i570.i457_crit_edge, %_next_match.i436.while.end.i570.i457_crit_edge
  %pIn.addr.0.lcssa.i566.i454 = phi ptr [ %add.ptr147.i437, %_next_match.i436.while.end.i570.i457_crit_edge ], [ %add.ptr4.i562.i450, %cleanup.i565.i453.while.end.i570.i457_crit_edge ]
  %pMatch.addr.0.lcssa.i567.i455 = phi ptr [ %add.ptr148.i438, %_next_match.i436.while.end.i570.i457_crit_edge ], [ %add.ptr5.i563.i451, %cleanup.i565.i453.while.end.i570.i457_crit_edge ]
  %cmp9.i569.i456 = icmp ult ptr %pIn.addr.0.lcssa.i566.i454, %add.ptr8.i568.i321
  br i1 %cmp9.i569.i456, label %land.lhs.true.i574.i461, label %while.end.i570.i457.if.end18.i581.i468_crit_edge

while.end.i570.i457.if.end18.i581.i468_crit_edge: ; preds = %while.end.i570.i457
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i581.i468

land.lhs.true.i574.i461:                          ; preds = %while.end.i570.i457
  %184 = ptrtoint ptr %pMatch.addr.0.lcssa.i567.i455 to i32
  call void @__asan_loadN_noabort(i32 %184, i32 2)
  %pMatch.addr.0.val53.i571.i458 = load i16, ptr %pMatch.addr.0.lcssa.i567.i455, align 1
  %185 = ptrtoint ptr %pIn.addr.0.lcssa.i566.i454 to i32
  call void @__asan_loadN_noabort(i32 %185, i32 2)
  %pIn.addr.0.val52.i572.i459 = load i16, ptr %pIn.addr.0.lcssa.i566.i454, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %pMatch.addr.0.val53.i571.i458, i16 %pIn.addr.0.val52.i572.i459)
  %cmp13.i573.i460 = icmp eq i16 %pMatch.addr.0.val53.i571.i458, %pIn.addr.0.val52.i572.i459
  br i1 %cmp13.i573.i460, label %if.then15.i577.i464, label %land.lhs.true.i574.i461.if.end18.i581.i468_crit_edge

land.lhs.true.i574.i461.if.end18.i581.i468_crit_edge: ; preds = %land.lhs.true.i574.i461
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i581.i468

if.then15.i577.i464:                              ; preds = %land.lhs.true.i574.i461
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i575.i462 = getelementptr i8, ptr %pIn.addr.0.lcssa.i566.i454, i32 2
  %add.ptr17.i576.i463 = getelementptr i8, ptr %pMatch.addr.0.lcssa.i567.i455, i32 2
  br label %if.end18.i581.i468

if.end18.i581.i468:                               ; preds = %if.then15.i577.i464, %land.lhs.true.i574.i461.if.end18.i581.i468_crit_edge, %while.end.i570.i457.if.end18.i581.i468_crit_edge
  %pIn.addr.2.i578.i465 = phi ptr [ %add.ptr16.i575.i462, %if.then15.i577.i464 ], [ %pIn.addr.0.lcssa.i566.i454, %land.lhs.true.i574.i461.if.end18.i581.i468_crit_edge ], [ %pIn.addr.0.lcssa.i566.i454, %while.end.i570.i457.if.end18.i581.i468_crit_edge ]
  %pMatch.addr.2.i579.i466 = phi ptr [ %add.ptr17.i576.i463, %if.then15.i577.i464 ], [ %pMatch.addr.0.lcssa.i567.i455, %land.lhs.true.i574.i461.if.end18.i581.i468_crit_edge ], [ %pMatch.addr.0.lcssa.i567.i455, %while.end.i570.i457.if.end18.i581.i468_crit_edge ]
  %cmp19.i580.i467 = icmp ult ptr %pIn.addr.2.i578.i465, %add.ptr6.i300
  br i1 %cmp19.i580.i467, label %land.lhs.true21.i585.i472, label %if.end18.i581.i468.LZ4_count.exit590.i479_crit_edge

if.end18.i581.i468.LZ4_count.exit590.i479_crit_edge: ; preds = %if.end18.i581.i468
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_count.exit590.i479

land.lhs.true21.i585.i472:                        ; preds = %if.end18.i581.i468
  call void @__sanitizer_cov_trace_pc() #6
  %186 = ptrtoint ptr %pMatch.addr.2.i579.i466 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %pMatch.addr.2.i579.i466, align 1
  %188 = ptrtoint ptr %pIn.addr.2.i578.i465 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %pIn.addr.2.i578.i465, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %187, i8 %189)
  %cmp24.i582.i469 = icmp eq i8 %187, %189
  %spec.select.idx.i583.i470 = zext i1 %cmp24.i582.i469 to i32
  %spec.select.i584.i471 = getelementptr i8, ptr %pIn.addr.2.i578.i465, i32 %spec.select.idx.i583.i470
  br label %LZ4_count.exit590.i479

LZ4_count.exit590.i479:                           ; preds = %land.lhs.true21.i585.i472, %if.end18.i581.i468.LZ4_count.exit590.i479_crit_edge, %cleanup.thread.i561.i449
  %add.ptr7.sink.i586.i473 = phi ptr [ %add.ptr7.i560.i448, %cleanup.thread.i561.i449 ], [ %pIn.addr.2.i578.i465, %if.end18.i581.i468.LZ4_count.exit590.i479_crit_edge ], [ %spec.select.i584.i471, %land.lhs.true21.i585.i472 ]
  %sub.ptr.lhs.cast.i587.i474 = ptrtoint ptr %add.ptr7.sink.i586.i473 to i32
  %sub.ptr.rhs.cast.i588.i475 = ptrtoint ptr %add.ptr147.i437 to i32
  %sub.ptr.sub.i589.i476 = sub i32 %sub.ptr.lhs.cast.i587.i474, %sub.ptr.rhs.cast.i588.i475
  %add150.i477 = add i32 %sub.ptr.sub.i589.i476, 4
  %add.ptr151.i478 = getelementptr i8, ptr %ip.2.i424, i32 %add150.i477
  %add.ptr155.i480 = getelementptr i8, ptr %op.4.i426, i32 8
  %shr156.i481 = lshr i32 %sub.ptr.sub.i589.i476, 8
  %add.ptr157.i482 = getelementptr i8, ptr %add.ptr155.i480, i32 %shr156.i481
  %cmp158.i483 = icmp ugt ptr %add.ptr157.i482, %add.ptr7.i
  br i1 %cmp158.i483, label %LZ4_count.exit590.i479.cleanup_crit_edge, label %if.end167.i, !prof !29

LZ4_count.exit590.i479.cleanup_crit_edge:         ; preds = %LZ4_count.exit590.i479
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end167.i:                                      ; preds = %LZ4_count.exit590.i479
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i589.i476)
  %cmp168.i484 = icmp ugt i32 %sub.ptr.sub.i589.i476, 14
  %190 = ptrtoint ptr %token.0.i429 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %token.0.i429, align 1
  br i1 %cmp168.i484, label %if.then170.i488, label %if.else186.i504

if.then170.i488:                                  ; preds = %if.end167.i
  %add172.i485 = add i8 %191, 15
  %192 = ptrtoint ptr %token.0.i429 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %add172.i485, ptr %token.0.i429, align 1
  %sub174.i486 = add i32 %sub.ptr.sub.i589.i476, -15
  %193 = ptrtoint ptr %add.ptr119.i434 to i32
  call void @__asan_storeN_noabort(i32 %193, i32 4)
  store i32 -1, ptr %add.ptr119.i434, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1019, i32 %sub174.i486)
  %cmp176835.i487 = icmp ugt i32 %sub174.i486, 1019
  br i1 %cmp176835.i487, label %while.body178.preheader.i492, label %if.then170.i488.while.end181.i502_crit_edge

if.then170.i488.while.end181.i502_crit_edge:      ; preds = %if.then170.i488
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end181.i502

while.body178.preheader.i492:                     ; preds = %if.then170.i488
  call void @__sanitizer_cov_trace_pc() #6
  %uglygep888.i489 = getelementptr i8, ptr %op.4.i426, i32 6
  %194 = add i32 %sub.ptr.sub.i589.i476, -1035
  %195 = udiv i32 %194, 1020
  %196 = shl nuw nsw i32 %195, 2
  %197 = add nuw nsw i32 %196, 4
  %198 = call ptr @memset(ptr %uglygep888.i489, i32 255, i32 %197)
  %uglygep889.i490 = getelementptr i8, ptr %uglygep888.i489, i32 %196
  %.neg892.i491 = mul i32 %195, -1020
  %199 = add i32 %.neg892.i491, %194
  br label %while.end181.i502

while.end181.i502:                                ; preds = %while.body178.preheader.i492, %if.then170.i488.while.end181.i502_crit_edge
  %op.5.lcssa.i493 = phi ptr [ %add.ptr119.i434, %if.then170.i488.while.end181.i502_crit_edge ], [ %uglygep889.i490, %while.body178.preheader.i492 ]
  %matchCode.2.lcssa.i494 = phi i32 [ %sub174.i486, %if.then170.i488.while.end181.i502_crit_edge ], [ %199, %while.body178.preheader.i492 ]
  %div182.lhs.trunc.i495 = trunc i32 %matchCode.2.lcssa.i494 to i16
  %div182.lhs.trunc.i495.frozen = freeze i16 %div182.lhs.trunc.i495
  %div182784.i496 = udiv i16 %div182.lhs.trunc.i495.frozen, 255
  %div182.zext.i497 = zext i16 %div182784.i496 to i32
  %add.ptr183.i498 = getelementptr i8, ptr %op.5.lcssa.i493, i32 %div182.zext.i497
  %200 = mul i16 %div182784.i496, 255
  %rem785.i499.decomposed = sub i16 %div182.lhs.trunc.i495.frozen, %200
  %conv184.i500 = trunc i16 %rem785.i499.decomposed to i8
  %incdec.ptr185.i501 = getelementptr i8, ptr %add.ptr183.i498, i32 1
  %201 = ptrtoint ptr %add.ptr183.i498 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %conv184.i500, ptr %add.ptr183.i498, align 1
  br label %cleanup.cont195.i507

if.else186.i504:                                  ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #6
  %202 = trunc i32 %sub.ptr.sub.i589.i476 to i8
  %conv191.i503 = add i8 %191, %202
  %203 = ptrtoint ptr %token.0.i429 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %conv191.i503, ptr %token.0.i429, align 1
  br label %cleanup.cont195.i507

cleanup.cont195.i507:                             ; preds = %if.else186.i504, %while.end181.i502
  %op.7.ph.i505 = phi ptr [ %add.ptr119.i434, %if.else186.i504 ], [ %incdec.ptr185.i501, %while.end181.i502 ]
  %cmp196.i506 = icmp ugt ptr %add.ptr151.i478, %add.ptr5.i299
  br i1 %cmp196.i506, label %cleanup.cont195.i507._last_literals.i547_crit_edge, label %if.end199.i512

cleanup.cont195.i507._last_literals.i547_crit_edge: ; preds = %cleanup.cont195.i507
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i547

if.end199.i512:                                   ; preds = %cleanup.cont195.i507
  %add.ptr200.i508 = getelementptr i8, ptr %add.ptr151.i478, i32 -2
  %204 = ptrtoint ptr %add.ptr200.i508 to i32
  call void @__asan_loadN_noabort(i32 %204, i32 4)
  %p.val.i591.i509 = load i32, ptr %add.ptr200.i508, align 1
  %mul.i.i.i593.i510 = mul i32 %p.val.i591.i509, -1640531535
  %retval.0.i.i.i595.i511 = lshr i32 %mul.i.i.i593.i510, 19
  %sub.ptr.lhs.cast6.i.i603.i513 = ptrtoint ptr %add.ptr200.i508 to i32
  %sub.ptr.sub8.i.i605.i514 = sub i32 %sub.ptr.lhs.cast6.i.i603.i513, %source890.i290
  %conv.i.i606.i515 = trunc i32 %sub.ptr.sub8.i.i605.i514 to i16
  %arrayidx9.i.i607.i516 = getelementptr i16, ptr %state, i32 %retval.0.i.i.i595.i511
  %205 = ptrtoint ptr %arrayidx9.i.i607.i516 to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %conv.i.i606.i515, ptr %arrayidx9.i.i607.i516, align 2
  %206 = ptrtoint ptr %add.ptr151.i478 to i32
  call void @__asan_loadN_noabort(i32 %206, i32 4)
  %ip.4.val502708.i517 = load i32, ptr %add.ptr151.i478, align 1
  %mul.i.i.i611709.i518 = mul i32 %ip.4.val502708.i517, -1640531535
  %retval.0.i.i.i613710.i519 = lshr i32 %mul.i.i.i611709.i518, 19
  %arrayidx7.i.i753.i520 = getelementptr i16, ptr %state, i32 %retval.0.i.i.i613710.i519
  %207 = ptrtoint ptr %arrayidx7.i.i753.i520 to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %arrayidx7.i.i753.i520, align 2
  %conv.i.i615754.i521 = zext i16 %208 to i32
  %add.ptr8.i.i616755.i522 = getelementptr i8, ptr %source, i32 %conv.i.i615754.i521
  %sub.ptr.lhs.cast6.i.i630.i526 = ptrtoint ptr %add.ptr151.i478 to i32
  %sub.ptr.sub8.i.i632.i527 = sub i32 %sub.ptr.lhs.cast6.i.i630.i526, %source890.i290
  %conv.i.i633.i528 = trunc i32 %sub.ptr.sub8.i.i632.i527 to i16
  store i16 %conv.i.i633.i528, ptr %arrayidx7.i.i753.i520, align 2
  %add.ptr224.i530 = getelementptr i8, ptr %add.ptr8.i.i616755.i522, i32 65535
  %cmp225.not.i531 = icmp ult ptr %add.ptr224.i530, %add.ptr151.i478
  br i1 %cmp225.not.i531, label %if.end199.i512.cleanup238.i541_crit_edge, label %land.lhs.true227.i536

if.end199.i512.cleanup238.i541_crit_edge:         ; preds = %if.end199.i512
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup238.i541

land.lhs.true227.i536:                            ; preds = %if.end199.i512
  %209 = ptrtoint ptr %add.ptr8.i.i616755.i522 to i32
  call void @__asan_loadN_noabort(i32 %209, i32 4)
  %add.ptr228.val.i533 = load i32, ptr %add.ptr8.i.i616755.i522, align 1
  %210 = ptrtoint ptr %add.ptr151.i478 to i32
  call void @__asan_loadN_noabort(i32 %210, i32 4)
  %ip.4.val.i534 = load i32, ptr %add.ptr151.i478, align 1
  %cmp231.i535 = icmp eq i32 %add.ptr228.val.i533, %ip.4.val.i534
  br i1 %cmp231.i535, label %if.then233.i538, label %land.lhs.true227.i536.cleanup238.i541_crit_edge

land.lhs.true227.i536.cleanup238.i541_crit_edge:  ; preds = %land.lhs.true227.i536
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup238.i541

if.then233.i538:                                  ; preds = %land.lhs.true227.i536
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr234.i537 = getelementptr i8, ptr %op.7.ph.i505, i32 1
  %211 = ptrtoint ptr %op.7.ph.i505 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 0, ptr %op.7.ph.i505, align 1
  br label %_next_match.i436

cleanup238.i541:                                  ; preds = %land.lhs.true227.i536.cleanup238.i541_crit_edge, %if.end199.i512.cleanup238.i541_crit_edge
  %add.ptr25806.i539 = getelementptr i8, ptr %add.ptr151.i478, i32 2
  %cmp26809.i540 = icmp ugt ptr %add.ptr25806.i539, %add.ptr5.i299
  br i1 %cmp26809.i540, label %cleanup238.i541._last_literals.i547_crit_edge, label %cleanup238.i541.if.end29.lr.ph.i330_crit_edge, !prof !26

cleanup238.i541.if.end29.lr.ph.i330_crit_edge:    ; preds = %cleanup238.i541
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.lr.ph.i330

cleanup238.i541._last_literals.i547_crit_edge:    ; preds = %cleanup238.i541
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i547

_last_literals.i547:                              ; preds = %cleanup238.i541._last_literals.i547_crit_edge, %cleanup.cont195.i507._last_literals.i547_crit_edge, %do.body.backedge.i363._last_literals.i547_crit_edge, %if.end24.i309._last_literals.i547_crit_edge, %if.end21.i305._last_literals.i547_crit_edge
  %anchor.3.i542 = phi ptr [ %source, %if.end21.i305._last_literals.i547_crit_edge ], [ %source, %if.end24.i309._last_literals.i547_crit_edge ], [ %add.ptr151.i478, %cleanup.cont195.i507._last_literals.i547_crit_edge ], [ %anchor.0847.i326, %do.body.backedge.i363._last_literals.i547_crit_edge ], [ %add.ptr151.i478, %cleanup238.i541._last_literals.i547_crit_edge ]
  %op.9.i543 = phi ptr [ %dest, %if.end21.i305._last_literals.i547_crit_edge ], [ %dest, %if.end24.i309._last_literals.i547_crit_edge ], [ %op.7.ph.i505, %cleanup.cont195.i507._last_literals.i547_crit_edge ], [ %op.0848.i325, %do.body.backedge.i363._last_literals.i547_crit_edge ], [ %op.7.ph.i505, %cleanup238.i541._last_literals.i547_crit_edge ]
  %sub.ptr.lhs.cast243.i544 = ptrtoint ptr %add.ptr4.i298 to i32
  %sub.ptr.rhs.cast244.i545 = ptrtoint ptr %anchor.3.i542 to i32
  %sub.ptr.sub245.i546 = sub i32 %sub.ptr.lhs.cast243.i544, %sub.ptr.rhs.cast244.i545
  %sub.ptr.lhs.cast248.i = ptrtoint ptr %op.9.i543 to i32
  %sub.ptr.rhs.cast249.i = ptrtoint ptr %dest to i32
  %sub254.i = add i32 %sub.ptr.sub245.i546, 240
  %div255.i = udiv i32 %sub254.i, 255
  %sub.ptr.sub250.i = sub i32 1, %sub.ptr.rhs.cast249.i
  %add251.i = add i32 %sub.ptr.sub250.i, %sub.ptr.lhs.cast248.i
  %add252.i = add i32 %add251.i, %sub.ptr.sub245.i546
  %add256.i = add i32 %add252.i, %div255.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add256.i, i32 %maxOutputSize)
  %cmp257.i = icmp ugt i32 %add256.i, %maxOutputSize
  br i1 %cmp257.i, label %_last_literals.i547.cleanup_crit_edge, label %if.end260.i

_last_literals.i547.cleanup_crit_edge:            ; preds = %_last_literals.i547
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end260.i:                                      ; preds = %_last_literals.i547
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub245.i546)
  %cmp261.i548 = icmp ugt i32 %sub.ptr.sub245.i546, 14
  br i1 %cmp261.i548, label %if.then263.i552, label %if.else276.i562

if.then263.i552:                                  ; preds = %if.end260.i
  %sub264.i549 = add i32 %sub.ptr.sub245.i546, -15
  %212 = ptrtoint ptr %op.9.i543 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 -16, ptr %op.9.i543, align 1
  %op.10855.i550 = getelementptr i8, ptr %op.9.i543, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %sub264.i549)
  %cmp267856.i551 = icmp ugt i32 %sub264.i549, 254
  br i1 %cmp267856.i551, label %for.body269.preheader.i555, label %if.then263.i552.for.end273.i559_crit_edge

if.then263.i552.for.end273.i559_crit_edge:        ; preds = %if.then263.i552
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end273.i559

for.body269.preheader.i555:                       ; preds = %if.then263.i552
  call void @__sanitizer_cov_trace_pc() #6
  %213 = add i32 %inputSize, -270
  %214 = add i32 %213, %source890.i290
  %215 = sub i32 %214, %sub.ptr.rhs.cast244.i545
  %216 = udiv i32 %215, 255
  %217 = add nuw nsw i32 %216, 1
  %218 = call ptr @memset(ptr %op.10855.i550, i32 255, i32 %217)
  %.neg.i553 = mul i32 %216, -255
  %219 = add nuw nsw i32 %216, 2
  %220 = add i32 %.neg.i553, %215
  %uglygep891.i554 = getelementptr i8, ptr %op.9.i543, i32 %219
  br label %for.end273.i559

for.end273.i559:                                  ; preds = %for.body269.preheader.i555, %if.then263.i552.for.end273.i559_crit_edge
  %accumulator.0.lcssa.i556 = phi i32 [ %sub264.i549, %if.then263.i552.for.end273.i559_crit_edge ], [ %220, %for.body269.preheader.i555 ]
  %op.10.lcssa.i557 = phi ptr [ %op.10855.i550, %if.then263.i552.for.end273.i559_crit_edge ], [ %uglygep891.i554, %for.body269.preheader.i555 ]
  %conv274.i558 = trunc i32 %accumulator.0.lcssa.i556 to i8
  %221 = ptrtoint ptr %op.10.lcssa.i557 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %conv274.i558, ptr %op.10.lcssa.i557, align 1
  br label %cleanup.cont284.i569

if.else276.i562:                                  ; preds = %if.end260.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub245.tr.i560 = trunc i32 %sub.ptr.sub245.i546 to i8
  %conv278.i561 = shl nuw i8 %sub.ptr.sub245.tr.i560, 4
  %222 = ptrtoint ptr %op.9.i543 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %conv278.i561, ptr %op.9.i543, align 1
  br label %cleanup.cont284.i569

cleanup.cont284.i569:                             ; preds = %if.else276.i562, %for.end273.i559
  %op.10.pn.i563 = phi ptr [ %op.10.lcssa.i557, %for.end273.i559 ], [ %op.9.i543, %if.else276.i562 ]
  %op.11.i564 = getelementptr i8, ptr %op.10.pn.i563, i32 1
  %223 = call ptr @memcpy(ptr %op.11.i564, ptr %anchor.3.i542, i32 %sub.ptr.sub245.i546)
  %add.ptr281.i565 = getelementptr i8, ptr %op.11.i564, i32 %sub.ptr.sub245.i546
  %sub.ptr.lhs.cast285.i566 = ptrtoint ptr %add.ptr281.i565 to i32
  %sub.ptr.sub287.i568 = sub i32 %sub.ptr.lhs.cast285.i566, %sub.ptr.rhs.cast249.i
  br label %cleanup

if.else12:                                        ; preds = %if.else8
  br i1 %cmp1, label %if.else12.cleanup_crit_edge, label %if.end24.i592

if.else12.cleanup_crit_edge:                      ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24.i592:                                    ; preds = %if.else12
  %224 = ptrtoint ptr %source to i32
  call void @__asan_loadN_noabort(i32 %224, i32 4)
  %p.val.i.i589 = load i32, ptr %source, align 1
  %mul.i.i.i.i590 = mul i32 %p.val.i.i589, -1640531535
  %retval.0.i.i.i.i591 = lshr i32 %mul.i.i.i.i590, 20
  %arrayidx.i.i.i593 = getelementptr ptr, ptr %state, i32 %retval.0.i.i.i.i591
  %225 = ptrtoint ptr %arrayidx.i.i.i593 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %source, ptr %arrayidx.i.i.i593, align 4
  %shl.i594 = shl i32 %1, 6
  %inc807.i595 = or i32 %shl.i594, 1
  %shr808.i596 = and i32 %1, 67108863
  %add.ptr25806844.i597 = getelementptr i8, ptr %source, i32 2
  %cmp26809845.i598 = icmp ugt ptr %add.ptr25806844.i597, %add.ptr5.i299
  br i1 %cmp26809845.i598, label %if.end24.i592._last_literals.i816_crit_edge, label %if.end29.lr.ph.lr.ph.i602, !prof !26

if.end24.i592._last_literals.i816_crit_edge:      ; preds = %if.end24.i592
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i816

if.end29.lr.ph.lr.ph.i602:                        ; preds = %if.end24.i592
  %add.ptr.i550.i600 = getelementptr i8, ptr %add.ptr6.i300, i32 -3
  %add.ptr8.i568.i601 = getelementptr i8, ptr %add.ptr6.i300, i32 -1
  br label %if.end29.lr.ph.i610

if.end29.lr.ph.i610:                              ; preds = %cleanup238.i810.if.end29.lr.ph.i610_crit_edge, %if.end29.lr.ph.lr.ph.i602
  %add.ptr25806852.i603 = phi ptr [ %add.ptr25806844.i597, %if.end29.lr.ph.lr.ph.i602 ], [ %add.ptr25806.i808, %cleanup238.i810.if.end29.lr.ph.i610_crit_edge ]
  %op.0848.i605 = phi ptr [ %dest, %if.end29.lr.ph.lr.ph.i602 ], [ %op.7.ph.i782, %cleanup238.i810.if.end29.lr.ph.i610_crit_edge ]
  %anchor.0847.i606 = phi ptr [ %source, %if.end29.lr.ph.lr.ph.i602 ], [ %add.ptr151.i754, %cleanup238.i810.if.end29.lr.ph.i610_crit_edge ]
  %ip.0850.i608 = getelementptr i8, ptr %anchor.0847.i606, i32 1
  %226 = ptrtoint ptr %ip.0850.i608 to i32
  call void @__asan_loadN_noabort(i32 %226, i32 4)
  %mul.i.i.pn.pn804842.pn.in.i609 = load i32, ptr %ip.0850.i608, align 1
  br label %if.end29.i620

if.end29.i620:                                    ; preds = %do.body.backedge.i638.if.end29.i620_crit_edge, %if.end29.lr.ph.i610
  %shr816.i611 = phi i32 [ %shr808.i596, %if.end29.lr.ph.i610 ], [ %shr.i636, %do.body.backedge.i638.if.end29.i620_crit_edge ]
  %inc815.i612 = phi i32 [ %inc807.i595, %if.end29.lr.ph.i610 ], [ %inc.i635, %do.body.backedge.i638.if.end29.i620_crit_edge ]
  %add.ptr25814.i613 = phi ptr [ %add.ptr25806852.i603, %if.end29.lr.ph.i610 ], [ %add.ptr25.i634, %do.body.backedge.i638.if.end29.i620_crit_edge ]
  %mul.i.i.pn.pn804842.pn.pn.in.i614 = phi i32 [ %mul.i.i.pn.pn804842.pn.in.i609, %if.end29.lr.ph.i610 ], [ %add.ptr25.val655.i625, %do.body.backedge.i638.if.end29.i620_crit_edge ]
  %forwardIp.0812.i615 = phi ptr [ %ip.0850.i608, %if.end29.lr.ph.i610 ], [ %add.ptr25814.i613, %do.body.backedge.i638.if.end29.i620_crit_edge ]
  %mul.i.i.pn.pn804842.pn.pn.i618 = mul i32 %mul.i.i.pn.pn804842.pn.pn.in.i614, -1640531535
  %forwardH.1813.i619 = lshr i32 %mul.i.i.pn.pn804842.pn.pn.i618, 20
  %arrayidx.i.i621 = getelementptr ptr, ptr %state, i32 %forwardH.1813.i619
  %227 = ptrtoint ptr %arrayidx.i.i621 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %arrayidx.i.i621, align 4
  %229 = ptrtoint ptr %add.ptr25814.i613 to i32
  call void @__asan_loadN_noabort(i32 %229, i32 4)
  %add.ptr25.val655.i625 = load i32, ptr %add.ptr25814.i613, align 1
  store ptr %forwardIp.0812.i615, ptr %arrayidx.i.i621, align 4
  %add.ptr47.i627 = getelementptr i8, ptr %228, i32 65535
  %cmp48.i628 = icmp ult ptr %add.ptr47.i627, %forwardIp.0812.i615
  br i1 %cmp48.i628, label %if.end29.i620.do.body.backedge.i638_crit_edge, label %lor.rhs.i633

if.end29.i620.do.body.backedge.i638_crit_edge:    ; preds = %if.end29.i620
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.backedge.i638

lor.rhs.i633:                                     ; preds = %if.end29.i620
  %230 = ptrtoint ptr %228 to i32
  call void @__asan_loadN_noabort(i32 %230, i32 4)
  %add.ptr49.val.i630 = load i32, ptr %228, align 1
  %231 = ptrtoint ptr %forwardIp.0812.i615 to i32
  call void @__asan_loadN_noabort(i32 %231, i32 4)
  %forwardIp.0.val.i631 = load i32, ptr %forwardIp.0812.i615, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.ptr49.val.i630, i32 %forwardIp.0.val.i631)
  %cmp52.not.i632 = icmp eq i32 %add.ptr49.val.i630, %forwardIp.0.val.i631
  br i1 %cmp52.not.i632, label %while.cond.preheader.i643, label %lor.rhs.i633.do.body.backedge.i638_crit_edge

lor.rhs.i633.do.body.backedge.i638_crit_edge:     ; preds = %lor.rhs.i633
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.backedge.i638

do.body.backedge.i638:                            ; preds = %lor.rhs.i633.do.body.backedge.i638_crit_edge, %if.end29.i620.do.body.backedge.i638_crit_edge
  %add.ptr25.i634 = getelementptr i8, ptr %add.ptr25814.i613, i32 %shr816.i611
  %inc.i635 = add i32 %inc815.i612, 1
  %shr.i636 = lshr i32 %inc815.i612, 6
  %cmp26.i637 = icmp ugt ptr %add.ptr25.i634, %add.ptr5.i299
  br i1 %cmp26.i637, label %do.body.backedge.i638._last_literals.i816_crit_edge, label %do.body.backedge.i638.if.end29.i620_crit_edge, !prof !26

do.body.backedge.i638.if.end29.i620_crit_edge:    ; preds = %do.body.backedge.i638
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.i620

do.body.backedge.i638._last_literals.i816_crit_edge: ; preds = %do.body.backedge.i638
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i816

while.cond.preheader.i643:                        ; preds = %lor.rhs.i633
  %cmp58820.i640 = icmp ugt ptr %forwardIp.0812.i615, %anchor.0847.i606
  %cmp60822.i641 = icmp ugt ptr %228, %source
  %and491823.i642 = and i1 %cmp58820.i640, %cmp60822.i641
  br i1 %and491823.i642, label %while.cond.preheader.i643.land.rhs.i651_crit_edge, label %while.cond.preheader.i643.while.end.i669_crit_edge

while.cond.preheader.i643.while.end.i669_crit_edge: ; preds = %while.cond.preheader.i643
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i669

while.cond.preheader.i643.land.rhs.i651_crit_edge: ; preds = %while.cond.preheader.i643
  br label %land.rhs.i651

land.rhs.i651:                                    ; preds = %while.body.i657.land.rhs.i651_crit_edge, %while.cond.preheader.i643.land.rhs.i651_crit_edge
  %match.2825.i646 = phi ptr [ %arrayidx64.i649, %while.body.i657.land.rhs.i651_crit_edge ], [ %228, %while.cond.preheader.i643.land.rhs.i651_crit_edge ]
  %ip.1824.i647 = phi ptr [ %arrayidx.i648, %while.body.i657.land.rhs.i651_crit_edge ], [ %forwardIp.0812.i615, %while.cond.preheader.i643.land.rhs.i651_crit_edge ]
  %arrayidx.i648 = getelementptr i8, ptr %ip.1824.i647, i32 -1
  %232 = ptrtoint ptr %arrayidx.i648 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx.i648, align 1
  %arrayidx64.i649 = getelementptr i8, ptr %match.2825.i646, i32 -1
  %234 = ptrtoint ptr %arrayidx64.i649 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %arrayidx64.i649, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %233, i8 %235)
  %cmp66.i650 = icmp eq i8 %233, %235
  br i1 %cmp66.i650, label %while.body.i657, label %land.rhs.i651.while.end.i669_crit_edge

land.rhs.i651.while.end.i669_crit_edge:           ; preds = %land.rhs.i651
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i669

while.body.i657:                                  ; preds = %land.rhs.i651
  %cmp58.i653 = icmp ugt ptr %arrayidx.i648, %anchor.0847.i606
  %cmp60.i655 = icmp ugt ptr %arrayidx64.i649, %source
  %and491.i656 = and i1 %cmp60.i655, %cmp58.i653
  br i1 %and491.i656, label %while.body.i657.land.rhs.i651_crit_edge, label %while.body.i657.while.end.i669_crit_edge

while.body.i657.while.end.i669_crit_edge:         ; preds = %while.body.i657
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i669

while.body.i657.land.rhs.i651_crit_edge:          ; preds = %while.body.i657
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i651

while.end.i669:                                   ; preds = %while.body.i657.while.end.i669_crit_edge, %land.rhs.i651.while.end.i669_crit_edge, %while.cond.preheader.i643.while.end.i669_crit_edge
  %ip.1.lcssa.i658 = phi ptr [ %forwardIp.0812.i615, %while.cond.preheader.i643.while.end.i669_crit_edge ], [ %ip.1824.i647, %land.rhs.i651.while.end.i669_crit_edge ], [ %arrayidx.i648, %while.body.i657.while.end.i669_crit_edge ]
  %match.2.lcssa.i659 = phi ptr [ %228, %while.cond.preheader.i643.while.end.i669_crit_edge ], [ %match.2825.i646, %land.rhs.i651.while.end.i669_crit_edge ], [ %arrayidx64.i649, %while.body.i657.while.end.i669_crit_edge ]
  %sub.ptr.lhs.cast76.i660 = ptrtoint ptr %ip.1.lcssa.i658 to i32
  %sub.ptr.rhs.cast77.i661 = ptrtoint ptr %anchor.0847.i606 to i32
  %sub.ptr.sub78.i662 = sub i32 %sub.ptr.lhs.cast76.i660, %sub.ptr.rhs.cast77.i661
  %incdec.ptr79.i663 = getelementptr i8, ptr %op.0848.i605, i32 1
  %add.ptr82.i664 = getelementptr i8, ptr %op.0848.i605, i32 9
  %add.ptr83.i665 = getelementptr i8, ptr %add.ptr82.i664, i32 %sub.ptr.sub78.i662
  %div.i666 = udiv i32 %sub.ptr.sub78.i662, 255
  %add.ptr84.i667 = getelementptr i8, ptr %add.ptr83.i665, i32 %div.i666
  %cmp85.i668 = icmp ugt ptr %add.ptr84.i667, %add.ptr7.i
  br i1 %cmp85.i668, label %while.end.i669.cleanup_crit_edge, label %if.end94.i671, !prof !29

while.end.i669.cleanup_crit_edge:                 ; preds = %while.end.i669
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end94.i671:                                    ; preds = %while.end.i669
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub78.i662)
  %cmp95.i670 = icmp ugt i32 %sub.ptr.sub78.i662, 14
  br i1 %cmp95.i670, label %if.then97.i674, label %if.else106.i687

if.then97.i674:                                   ; preds = %if.end94.i671
  %sub98.i672 = add i32 %sub.ptr.sub78.i662, -15
  %236 = ptrtoint ptr %op.0848.i605 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 -16, ptr %op.0848.i605, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %sub98.i672)
  %cmp100830.i673 = icmp sgt i32 %sub98.i672, 254
  br i1 %cmp100830.i673, label %for.body.preheader.i679, label %if.then97.i674.for.end.i684_crit_edge

if.then97.i674.for.end.i684_crit_edge:            ; preds = %if.then97.i674
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i684

for.body.preheader.i679:                          ; preds = %if.then97.i674
  call void @__sanitizer_cov_trace_pc() #6
  %smin.i675 = tail call i32 @llvm.smin.i32(i32 %sub98.i672, i32 509) #4
  %237 = add i32 %sub.ptr.lhs.cast76.i660, 239
  %238 = add i32 %smin.i675, %sub.ptr.rhs.cast77.i661
  %239 = sub i32 %237, %238
  %240 = udiv i32 %239, 255
  %241 = add nuw nsw i32 %240, 1
  %242 = call ptr @memset(ptr %incdec.ptr79.i663, i32 255, i32 %241)
  %.neg893.i676 = mul i32 %240, -255
  %uglygep.i677 = getelementptr i8, ptr %op.0848.i605, i32 2
  %uglygep887.i678 = getelementptr i8, ptr %uglygep.i677, i32 %240
  %243 = sub i32 -270, %sub.ptr.rhs.cast77.i661
  %244 = add i32 %243, %sub.ptr.lhs.cast76.i660
  %245 = add i32 %244, %.neg893.i676
  br label %for.end.i684

for.end.i684:                                     ; preds = %for.body.preheader.i679, %if.then97.i674.for.end.i684_crit_edge
  %op.1.lcssa.i680 = phi ptr [ %incdec.ptr79.i663, %if.then97.i674.for.end.i684_crit_edge ], [ %uglygep887.i678, %for.body.preheader.i679 ]
  %len.0.lcssa.i681 = phi i32 [ %sub98.i672, %if.then97.i674.for.end.i684_crit_edge ], [ %245, %for.body.preheader.i679 ]
  %conv104.i682 = trunc i32 %len.0.lcssa.i681 to i8
  %incdec.ptr105.i683 = getelementptr i8, ptr %op.1.lcssa.i680, i32 1
  %246 = ptrtoint ptr %op.1.lcssa.i680 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %conv104.i682, ptr %op.1.lcssa.i680, align 1
  br label %if.end109.i690

if.else106.i687:                                  ; preds = %if.end94.i671
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub78.tr.i685 = trunc i32 %sub.ptr.sub78.i662 to i8
  %conv108.i686 = shl nuw i8 %sub.ptr.sub78.tr.i685, 4
  %247 = ptrtoint ptr %op.0848.i605 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %conv108.i686, ptr %op.0848.i605, align 1
  br label %if.end109.i690

if.end109.i690:                                   ; preds = %if.else106.i687, %for.end.i684
  %op.2.i688 = phi ptr [ %incdec.ptr105.i683, %for.end.i684 ], [ %incdec.ptr79.i663, %if.else106.i687 ]
  %add.ptr110.i689 = getelementptr i8, ptr %op.2.i688, i32 %sub.ptr.sub78.i662
  br label %do.body.i.i699

do.body.i.i699:                                   ; preds = %do.body.i.i699.do.body.i.i699_crit_edge, %if.end109.i690
  %d.0.i.i691 = phi ptr [ %op.2.i688, %if.end109.i690 ], [ %add.ptr.i.i696, %do.body.i.i699.do.body.i.i699_crit_edge ]
  %s.0.i.i692 = phi ptr [ %anchor.0847.i606, %if.end109.i690 ], [ %add.ptr1.i.i697, %do.body.i.i699.do.body.i.i699_crit_edge ]
  %248 = ptrtoint ptr %s.0.i.i692 to i32
  call void @__asan_loadN_noabort(i32 %248, i32 4)
  %s.0.val.i.i693 = load i32, ptr %s.0.i.i692, align 1
  %249 = getelementptr i8, ptr %s.0.i.i692, i32 4
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_loadN_noabort(i32 %250, i32 4)
  %s.0.val5.i.i694 = load i32, ptr %249, align 1
  %251 = ptrtoint ptr %d.0.i.i691 to i32
  call void @__asan_storeN_noabort(i32 %251, i32 4)
  store i32 %s.0.val.i.i693, ptr %d.0.i.i691, align 1
  %add.ptr8.i.i.i695 = getelementptr i32, ptr %d.0.i.i691, i32 1
  %252 = ptrtoint ptr %add.ptr8.i.i.i695 to i32
  call void @__asan_storeN_noabort(i32 %252, i32 4)
  store i32 %s.0.val5.i.i694, ptr %add.ptr8.i.i.i695, align 1
  %add.ptr.i.i696 = getelementptr i8, ptr %d.0.i.i691, i32 8
  %add.ptr1.i.i697 = getelementptr i8, ptr %s.0.i.i692, i32 8
  %cmp.i.i698 = icmp ult ptr %add.ptr.i.i696, %add.ptr110.i689
  br i1 %cmp.i.i698, label %do.body.i.i699.do.body.i.i699_crit_edge, label %do.body.i.i699._next_match.i712_crit_edge

do.body.i.i699._next_match.i712_crit_edge:        ; preds = %do.body.i.i699
  br label %_next_match.i712

do.body.i.i699.do.body.i.i699_crit_edge:          ; preds = %do.body.i.i699
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i699

_next_match.i712:                                 ; preds = %if.then233.i807, %do.body.i.i699._next_match.i712_crit_edge
  %ip.2.i700 = phi ptr [ %add.ptr151.i754, %if.then233.i807 ], [ %ip.1.lcssa.i658, %do.body.i.i699._next_match.i712_crit_edge ]
  %op.4.i702 = phi ptr [ %incdec.ptr234.i806, %if.then233.i807 ], [ %add.ptr110.i689, %do.body.i.i699._next_match.i712_crit_edge ]
  %match.3.i704 = phi ptr [ %282, %if.then233.i807 ], [ %match.2.lcssa.i659, %do.body.i.i699._next_match.i712_crit_edge ]
  %token.0.i705 = phi ptr [ %op.7.ph.i782, %if.then233.i807 ], [ %op.0848.i605, %do.body.i.i699._next_match.i712_crit_edge ]
  %sub.ptr.lhs.cast115.i706 = ptrtoint ptr %ip.2.i700 to i32
  %sub.ptr.rhs.cast116.i707 = ptrtoint ptr %match.3.i704 to i32
  %sub.ptr.sub117.i708 = sub i32 %sub.ptr.lhs.cast115.i706, %sub.ptr.rhs.cast116.i707
  %conv118.i709 = trunc i32 %sub.ptr.sub117.i708 to i16
  %253 = tail call i16 @llvm.bswap.i16(i16 %conv118.i709) #4
  %254 = ptrtoint ptr %op.4.i702 to i32
  call void @__asan_storeN_noabort(i32 %254, i32 2)
  store i16 %253, ptr %op.4.i702, align 1
  %add.ptr119.i710 = getelementptr i8, ptr %op.4.i702, i32 2
  %add.ptr147.i713 = getelementptr i8, ptr %ip.2.i700, i32 4
  %add.ptr148.i714 = getelementptr i8, ptr %match.3.i704, i32 4
  %cmp59.i551.i715 = icmp ugt ptr %add.ptr.i550.i600, %add.ptr147.i713
  br i1 %cmp59.i551.i715, label %_next_match.i712.while.body.i558.i722_crit_edge, label %_next_match.i712.while.end.i570.i733_crit_edge, !prof !27

_next_match.i712.while.end.i570.i733_crit_edge:   ; preds = %_next_match.i712
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i570.i733

_next_match.i712.while.body.i558.i722_crit_edge:  ; preds = %_next_match.i712
  br label %while.body.i558.i722

while.body.i558.i722:                             ; preds = %cleanup.i565.i729.while.body.i558.i722_crit_edge, %_next_match.i712.while.body.i558.i722_crit_edge
  %pMatch.addr.061.i552.i716 = phi ptr [ %add.ptr5.i563.i727, %cleanup.i565.i729.while.body.i558.i722_crit_edge ], [ %add.ptr148.i714, %_next_match.i712.while.body.i558.i722_crit_edge ]
  %pIn.addr.060.i553.i717 = phi ptr [ %add.ptr4.i562.i726, %cleanup.i565.i729.while.body.i558.i722_crit_edge ], [ %add.ptr147.i713, %_next_match.i712.while.body.i558.i722_crit_edge ]
  %255 = ptrtoint ptr %pMatch.addr.061.i552.i716 to i32
  call void @__asan_loadN_noabort(i32 %255, i32 4)
  %pMatch.addr.0.val.i554.i718 = load i32, ptr %pMatch.addr.061.i552.i716, align 1
  %256 = ptrtoint ptr %pIn.addr.060.i553.i717 to i32
  call void @__asan_loadN_noabort(i32 %256, i32 4)
  %pIn.addr.0.val.i555.i719 = load i32, ptr %pIn.addr.060.i553.i717, align 1
  %xor.i556.i720 = xor i32 %pIn.addr.0.val.i555.i719, %pMatch.addr.0.val.i554.i718
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i556.i720)
  %tobool3.not.i557.i721 = icmp eq i32 %xor.i556.i720, 0
  br i1 %tobool3.not.i557.i721, label %cleanup.i565.i729, label %cleanup.thread.i561.i725

cleanup.thread.i561.i725:                         ; preds = %while.body.i558.i722
  call void @__sanitizer_cov_trace_pc() #6
  %257 = tail call i32 @llvm.ctlz.i32(i32 %xor.i556.i720, i1 true) #4, !range !28
  %shr.i.i559.i723 = lshr i32 %257, 3
  %add.ptr7.i560.i724 = getelementptr i8, ptr %pIn.addr.060.i553.i717, i32 %shr.i.i559.i723
  br label %LZ4_count.exit590.i755

cleanup.i565.i729:                                ; preds = %while.body.i558.i722
  %add.ptr4.i562.i726 = getelementptr i8, ptr %pIn.addr.060.i553.i717, i32 4
  %add.ptr5.i563.i727 = getelementptr i8, ptr %pMatch.addr.061.i552.i716, i32 4
  %cmp.i564.i728 = icmp ult ptr %add.ptr4.i562.i726, %add.ptr.i550.i600
  br i1 %cmp.i564.i728, label %cleanup.i565.i729.while.body.i558.i722_crit_edge, label %cleanup.i565.i729.while.end.i570.i733_crit_edge, !prof !27

cleanup.i565.i729.while.end.i570.i733_crit_edge:  ; preds = %cleanup.i565.i729
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i570.i733

cleanup.i565.i729.while.body.i558.i722_crit_edge: ; preds = %cleanup.i565.i729
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i558.i722

while.end.i570.i733:                              ; preds = %cleanup.i565.i729.while.end.i570.i733_crit_edge, %_next_match.i712.while.end.i570.i733_crit_edge
  %pIn.addr.0.lcssa.i566.i730 = phi ptr [ %add.ptr147.i713, %_next_match.i712.while.end.i570.i733_crit_edge ], [ %add.ptr4.i562.i726, %cleanup.i565.i729.while.end.i570.i733_crit_edge ]
  %pMatch.addr.0.lcssa.i567.i731 = phi ptr [ %add.ptr148.i714, %_next_match.i712.while.end.i570.i733_crit_edge ], [ %add.ptr5.i563.i727, %cleanup.i565.i729.while.end.i570.i733_crit_edge ]
  %cmp9.i569.i732 = icmp ult ptr %pIn.addr.0.lcssa.i566.i730, %add.ptr8.i568.i601
  br i1 %cmp9.i569.i732, label %land.lhs.true.i574.i737, label %while.end.i570.i733.if.end18.i581.i744_crit_edge

while.end.i570.i733.if.end18.i581.i744_crit_edge: ; preds = %while.end.i570.i733
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i581.i744

land.lhs.true.i574.i737:                          ; preds = %while.end.i570.i733
  %258 = ptrtoint ptr %pMatch.addr.0.lcssa.i567.i731 to i32
  call void @__asan_loadN_noabort(i32 %258, i32 2)
  %pMatch.addr.0.val53.i571.i734 = load i16, ptr %pMatch.addr.0.lcssa.i567.i731, align 1
  %259 = ptrtoint ptr %pIn.addr.0.lcssa.i566.i730 to i32
  call void @__asan_loadN_noabort(i32 %259, i32 2)
  %pIn.addr.0.val52.i572.i735 = load i16, ptr %pIn.addr.0.lcssa.i566.i730, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %pMatch.addr.0.val53.i571.i734, i16 %pIn.addr.0.val52.i572.i735)
  %cmp13.i573.i736 = icmp eq i16 %pMatch.addr.0.val53.i571.i734, %pIn.addr.0.val52.i572.i735
  br i1 %cmp13.i573.i736, label %if.then15.i577.i740, label %land.lhs.true.i574.i737.if.end18.i581.i744_crit_edge

land.lhs.true.i574.i737.if.end18.i581.i744_crit_edge: ; preds = %land.lhs.true.i574.i737
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i581.i744

if.then15.i577.i740:                              ; preds = %land.lhs.true.i574.i737
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i575.i738 = getelementptr i8, ptr %pIn.addr.0.lcssa.i566.i730, i32 2
  %add.ptr17.i576.i739 = getelementptr i8, ptr %pMatch.addr.0.lcssa.i567.i731, i32 2
  br label %if.end18.i581.i744

if.end18.i581.i744:                               ; preds = %if.then15.i577.i740, %land.lhs.true.i574.i737.if.end18.i581.i744_crit_edge, %while.end.i570.i733.if.end18.i581.i744_crit_edge
  %pIn.addr.2.i578.i741 = phi ptr [ %add.ptr16.i575.i738, %if.then15.i577.i740 ], [ %pIn.addr.0.lcssa.i566.i730, %land.lhs.true.i574.i737.if.end18.i581.i744_crit_edge ], [ %pIn.addr.0.lcssa.i566.i730, %while.end.i570.i733.if.end18.i581.i744_crit_edge ]
  %pMatch.addr.2.i579.i742 = phi ptr [ %add.ptr17.i576.i739, %if.then15.i577.i740 ], [ %pMatch.addr.0.lcssa.i567.i731, %land.lhs.true.i574.i737.if.end18.i581.i744_crit_edge ], [ %pMatch.addr.0.lcssa.i567.i731, %while.end.i570.i733.if.end18.i581.i744_crit_edge ]
  %cmp19.i580.i743 = icmp ult ptr %pIn.addr.2.i578.i741, %add.ptr6.i300
  br i1 %cmp19.i580.i743, label %land.lhs.true21.i585.i748, label %if.end18.i581.i744.LZ4_count.exit590.i755_crit_edge

if.end18.i581.i744.LZ4_count.exit590.i755_crit_edge: ; preds = %if.end18.i581.i744
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_count.exit590.i755

land.lhs.true21.i585.i748:                        ; preds = %if.end18.i581.i744
  call void @__sanitizer_cov_trace_pc() #6
  %260 = ptrtoint ptr %pMatch.addr.2.i579.i742 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %pMatch.addr.2.i579.i742, align 1
  %262 = ptrtoint ptr %pIn.addr.2.i578.i741 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %pIn.addr.2.i578.i741, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %261, i8 %263)
  %cmp24.i582.i745 = icmp eq i8 %261, %263
  %spec.select.idx.i583.i746 = zext i1 %cmp24.i582.i745 to i32
  %spec.select.i584.i747 = getelementptr i8, ptr %pIn.addr.2.i578.i741, i32 %spec.select.idx.i583.i746
  br label %LZ4_count.exit590.i755

LZ4_count.exit590.i755:                           ; preds = %land.lhs.true21.i585.i748, %if.end18.i581.i744.LZ4_count.exit590.i755_crit_edge, %cleanup.thread.i561.i725
  %add.ptr7.sink.i586.i749 = phi ptr [ %add.ptr7.i560.i724, %cleanup.thread.i561.i725 ], [ %pIn.addr.2.i578.i741, %if.end18.i581.i744.LZ4_count.exit590.i755_crit_edge ], [ %spec.select.i584.i747, %land.lhs.true21.i585.i748 ]
  %sub.ptr.lhs.cast.i587.i750 = ptrtoint ptr %add.ptr7.sink.i586.i749 to i32
  %sub.ptr.rhs.cast.i588.i751 = ptrtoint ptr %add.ptr147.i713 to i32
  %sub.ptr.sub.i589.i752 = sub i32 %sub.ptr.lhs.cast.i587.i750, %sub.ptr.rhs.cast.i588.i751
  %add150.i753 = add i32 %sub.ptr.sub.i589.i752, 4
  %add.ptr151.i754 = getelementptr i8, ptr %ip.2.i700, i32 %add150.i753
  %add.ptr155.i756 = getelementptr i8, ptr %op.4.i702, i32 8
  %shr156.i757 = lshr i32 %sub.ptr.sub.i589.i752, 8
  %add.ptr157.i758 = getelementptr i8, ptr %add.ptr155.i756, i32 %shr156.i757
  %cmp158.i759 = icmp ugt ptr %add.ptr157.i758, %add.ptr7.i
  br i1 %cmp158.i759, label %LZ4_count.exit590.i755.cleanup_crit_edge, label %if.end167.i761, !prof !29

LZ4_count.exit590.i755.cleanup_crit_edge:         ; preds = %LZ4_count.exit590.i755
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end167.i761:                                   ; preds = %LZ4_count.exit590.i755
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i589.i752)
  %cmp168.i760 = icmp ugt i32 %sub.ptr.sub.i589.i752, 14
  %264 = ptrtoint ptr %token.0.i705 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %token.0.i705, align 1
  br i1 %cmp168.i760, label %if.then170.i765, label %if.else186.i781

if.then170.i765:                                  ; preds = %if.end167.i761
  %add172.i762 = add i8 %265, 15
  %266 = ptrtoint ptr %token.0.i705 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %add172.i762, ptr %token.0.i705, align 1
  %sub174.i763 = add i32 %sub.ptr.sub.i589.i752, -15
  %267 = ptrtoint ptr %add.ptr119.i710 to i32
  call void @__asan_storeN_noabort(i32 %267, i32 4)
  store i32 -1, ptr %add.ptr119.i710, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1019, i32 %sub174.i763)
  %cmp176835.i764 = icmp ugt i32 %sub174.i763, 1019
  br i1 %cmp176835.i764, label %while.body178.preheader.i769, label %if.then170.i765.while.end181.i779_crit_edge

if.then170.i765.while.end181.i779_crit_edge:      ; preds = %if.then170.i765
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end181.i779

while.body178.preheader.i769:                     ; preds = %if.then170.i765
  call void @__sanitizer_cov_trace_pc() #6
  %uglygep888.i766 = getelementptr i8, ptr %op.4.i702, i32 6
  %268 = add i32 %sub.ptr.sub.i589.i752, -1035
  %269 = udiv i32 %268, 1020
  %270 = shl nuw nsw i32 %269, 2
  %271 = add nuw nsw i32 %270, 4
  %272 = call ptr @memset(ptr %uglygep888.i766, i32 255, i32 %271)
  %uglygep889.i767 = getelementptr i8, ptr %uglygep888.i766, i32 %270
  %.neg892.i768 = mul i32 %269, -1020
  %273 = add i32 %.neg892.i768, %268
  br label %while.end181.i779

while.end181.i779:                                ; preds = %while.body178.preheader.i769, %if.then170.i765.while.end181.i779_crit_edge
  %op.5.lcssa.i770 = phi ptr [ %add.ptr119.i710, %if.then170.i765.while.end181.i779_crit_edge ], [ %uglygep889.i767, %while.body178.preheader.i769 ]
  %matchCode.2.lcssa.i771 = phi i32 [ %sub174.i763, %if.then170.i765.while.end181.i779_crit_edge ], [ %273, %while.body178.preheader.i769 ]
  %div182.lhs.trunc.i772 = trunc i32 %matchCode.2.lcssa.i771 to i16
  %div182.lhs.trunc.i772.frozen = freeze i16 %div182.lhs.trunc.i772
  %div182784.i773 = udiv i16 %div182.lhs.trunc.i772.frozen, 255
  %div182.zext.i774 = zext i16 %div182784.i773 to i32
  %add.ptr183.i775 = getelementptr i8, ptr %op.5.lcssa.i770, i32 %div182.zext.i774
  %274 = mul i16 %div182784.i773, 255
  %rem785.i776.decomposed = sub i16 %div182.lhs.trunc.i772.frozen, %274
  %conv184.i777 = trunc i16 %rem785.i776.decomposed to i8
  %incdec.ptr185.i778 = getelementptr i8, ptr %add.ptr183.i775, i32 1
  %275 = ptrtoint ptr %add.ptr183.i775 to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 %conv184.i777, ptr %add.ptr183.i775, align 1
  br label %cleanup.cont195.i784

if.else186.i781:                                  ; preds = %if.end167.i761
  call void @__sanitizer_cov_trace_pc() #6
  %276 = trunc i32 %sub.ptr.sub.i589.i752 to i8
  %conv191.i780 = add i8 %265, %276
  %277 = ptrtoint ptr %token.0.i705 to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %conv191.i780, ptr %token.0.i705, align 1
  br label %cleanup.cont195.i784

cleanup.cont195.i784:                             ; preds = %if.else186.i781, %while.end181.i779
  %op.7.ph.i782 = phi ptr [ %add.ptr119.i710, %if.else186.i781 ], [ %incdec.ptr185.i778, %while.end181.i779 ]
  %cmp196.i783 = icmp ugt ptr %add.ptr151.i754, %add.ptr5.i299
  br i1 %cmp196.i783, label %cleanup.cont195.i784._last_literals.i816_crit_edge, label %if.end199.i789

cleanup.cont195.i784._last_literals.i816_crit_edge: ; preds = %cleanup.cont195.i784
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i816

if.end199.i789:                                   ; preds = %cleanup.cont195.i784
  %add.ptr200.i785 = getelementptr i8, ptr %add.ptr151.i754, i32 -2
  %278 = ptrtoint ptr %add.ptr200.i785 to i32
  call void @__asan_loadN_noabort(i32 %278, i32 4)
  %p.val.i591.i786 = load i32, ptr %add.ptr200.i785, align 1
  %mul.i.i.i593.i787 = mul i32 %p.val.i591.i786, -1640531535
  %retval.0.i.i.i595.i788 = lshr i32 %mul.i.i.i593.i787, 20
  %arrayidx.i.i596.i790 = getelementptr ptr, ptr %state, i32 %retval.0.i.i.i595.i788
  %279 = ptrtoint ptr %arrayidx.i.i596.i790 to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %add.ptr200.i785, ptr %arrayidx.i.i596.i790, align 4
  %280 = ptrtoint ptr %add.ptr151.i754 to i32
  call void @__asan_loadN_noabort(i32 %280, i32 4)
  %ip.4.val502714.i791 = load i32, ptr %add.ptr151.i754, align 1
  %mul.i.i.i611715.i792 = mul i32 %ip.4.val502714.i791, -1640531535
  %retval.0.i.i.i613716.i793 = lshr i32 %mul.i.i.i611715.i792, 20
  %arrayidx.i.i614.i794 = getelementptr ptr, ptr %state, i32 %retval.0.i.i.i613716.i793
  %281 = ptrtoint ptr %arrayidx.i.i614.i794 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %arrayidx.i.i614.i794, align 4
  store ptr %add.ptr151.i754, ptr %arrayidx.i.i614.i794, align 4
  %add.ptr224.i799 = getelementptr i8, ptr %282, i32 65535
  %cmp225.not.i800 = icmp ult ptr %add.ptr224.i799, %add.ptr151.i754
  br i1 %cmp225.not.i800, label %if.end199.i789.cleanup238.i810_crit_edge, label %land.lhs.true227.i805

if.end199.i789.cleanup238.i810_crit_edge:         ; preds = %if.end199.i789
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup238.i810

land.lhs.true227.i805:                            ; preds = %if.end199.i789
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_loadN_noabort(i32 %283, i32 4)
  %add.ptr228.val.i802 = load i32, ptr %282, align 1
  %284 = ptrtoint ptr %add.ptr151.i754 to i32
  call void @__asan_loadN_noabort(i32 %284, i32 4)
  %ip.4.val.i803 = load i32, ptr %add.ptr151.i754, align 1
  %cmp231.i804 = icmp eq i32 %add.ptr228.val.i802, %ip.4.val.i803
  br i1 %cmp231.i804, label %if.then233.i807, label %land.lhs.true227.i805.cleanup238.i810_crit_edge

land.lhs.true227.i805.cleanup238.i810_crit_edge:  ; preds = %land.lhs.true227.i805
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup238.i810

if.then233.i807:                                  ; preds = %land.lhs.true227.i805
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr234.i806 = getelementptr i8, ptr %op.7.ph.i782, i32 1
  %285 = ptrtoint ptr %op.7.ph.i782 to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 0, ptr %op.7.ph.i782, align 1
  br label %_next_match.i712

cleanup238.i810:                                  ; preds = %land.lhs.true227.i805.cleanup238.i810_crit_edge, %if.end199.i789.cleanup238.i810_crit_edge
  %add.ptr25806.i808 = getelementptr i8, ptr %add.ptr151.i754, i32 2
  %cmp26809.i809 = icmp ugt ptr %add.ptr25806.i808, %add.ptr5.i299
  br i1 %cmp26809.i809, label %cleanup238.i810._last_literals.i816_crit_edge, label %cleanup238.i810.if.end29.lr.ph.i610_crit_edge, !prof !26

cleanup238.i810.if.end29.lr.ph.i610_crit_edge:    ; preds = %cleanup238.i810
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.lr.ph.i610

cleanup238.i810._last_literals.i816_crit_edge:    ; preds = %cleanup238.i810
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i816

_last_literals.i816:                              ; preds = %cleanup238.i810._last_literals.i816_crit_edge, %cleanup.cont195.i784._last_literals.i816_crit_edge, %do.body.backedge.i638._last_literals.i816_crit_edge, %if.end24.i592._last_literals.i816_crit_edge
  %anchor.3.i811 = phi ptr [ %source, %if.end24.i592._last_literals.i816_crit_edge ], [ %add.ptr151.i754, %cleanup.cont195.i784._last_literals.i816_crit_edge ], [ %anchor.0847.i606, %do.body.backedge.i638._last_literals.i816_crit_edge ], [ %add.ptr151.i754, %cleanup238.i810._last_literals.i816_crit_edge ]
  %op.9.i812 = phi ptr [ %dest, %if.end24.i592._last_literals.i816_crit_edge ], [ %op.7.ph.i782, %cleanup.cont195.i784._last_literals.i816_crit_edge ], [ %op.0848.i605, %do.body.backedge.i638._last_literals.i816_crit_edge ], [ %op.7.ph.i782, %cleanup238.i810._last_literals.i816_crit_edge ]
  %sub.ptr.lhs.cast243.i813 = ptrtoint ptr %add.ptr4.i298 to i32
  %sub.ptr.rhs.cast244.i814 = ptrtoint ptr %anchor.3.i811 to i32
  %sub.ptr.sub245.i815 = sub i32 %sub.ptr.lhs.cast243.i813, %sub.ptr.rhs.cast244.i814
  %sub.ptr.lhs.cast248.i817 = ptrtoint ptr %op.9.i812 to i32
  %sub.ptr.rhs.cast249.i818 = ptrtoint ptr %dest to i32
  %sub254.i819 = add i32 %sub.ptr.sub245.i815, 240
  %div255.i820 = udiv i32 %sub254.i819, 255
  %sub.ptr.sub250.i821 = sub i32 1, %sub.ptr.rhs.cast249.i818
  %add251.i822 = add i32 %sub.ptr.sub250.i821, %sub.ptr.lhs.cast248.i817
  %add252.i823 = add i32 %add251.i822, %sub.ptr.sub245.i815
  %add256.i824 = add i32 %add252.i823, %div255.i820
  call void @__sanitizer_cov_trace_cmp4(i32 %add256.i824, i32 %maxOutputSize)
  %cmp257.i825 = icmp ugt i32 %add256.i824, %maxOutputSize
  br i1 %cmp257.i825, label %_last_literals.i816.cleanup_crit_edge, label %if.end260.i827

_last_literals.i816.cleanup_crit_edge:            ; preds = %_last_literals.i816
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end260.i827:                                   ; preds = %_last_literals.i816
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub245.i815)
  %cmp261.i826 = icmp ugt i32 %sub.ptr.sub245.i815, 14
  br i1 %cmp261.i826, label %if.then263.i831, label %if.else276.i841

if.then263.i831:                                  ; preds = %if.end260.i827
  %sub264.i828 = add i32 %sub.ptr.sub245.i815, -15
  %286 = ptrtoint ptr %op.9.i812 to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 -16, ptr %op.9.i812, align 1
  %op.10855.i829 = getelementptr i8, ptr %op.9.i812, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %sub264.i828)
  %cmp267856.i830 = icmp ugt i32 %sub264.i828, 254
  br i1 %cmp267856.i830, label %for.body269.preheader.i834, label %if.then263.i831.for.end273.i838_crit_edge

if.then263.i831.for.end273.i838_crit_edge:        ; preds = %if.then263.i831
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end273.i838

for.body269.preheader.i834:                       ; preds = %if.then263.i831
  call void @__sanitizer_cov_trace_pc() #6
  %287 = add i32 %inputSize, -270
  %288 = add i32 %287, %source890.i290
  %289 = sub i32 %288, %sub.ptr.rhs.cast244.i814
  %290 = udiv i32 %289, 255
  %291 = add nuw nsw i32 %290, 1
  %292 = call ptr @memset(ptr %op.10855.i829, i32 255, i32 %291)
  %.neg.i832 = mul i32 %290, -255
  %293 = add nuw nsw i32 %290, 2
  %294 = add i32 %.neg.i832, %289
  %uglygep891.i833 = getelementptr i8, ptr %op.9.i812, i32 %293
  br label %for.end273.i838

for.end273.i838:                                  ; preds = %for.body269.preheader.i834, %if.then263.i831.for.end273.i838_crit_edge
  %accumulator.0.lcssa.i835 = phi i32 [ %sub264.i828, %if.then263.i831.for.end273.i838_crit_edge ], [ %294, %for.body269.preheader.i834 ]
  %op.10.lcssa.i836 = phi ptr [ %op.10855.i829, %if.then263.i831.for.end273.i838_crit_edge ], [ %uglygep891.i833, %for.body269.preheader.i834 ]
  %conv274.i837 = trunc i32 %accumulator.0.lcssa.i835 to i8
  %295 = ptrtoint ptr %op.10.lcssa.i836 to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 %conv274.i837, ptr %op.10.lcssa.i836, align 1
  br label %cleanup.cont284.i848

if.else276.i841:                                  ; preds = %if.end260.i827
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub245.tr.i839 = trunc i32 %sub.ptr.sub245.i815 to i8
  %conv278.i840 = shl nuw i8 %sub.ptr.sub245.tr.i839, 4
  %296 = ptrtoint ptr %op.9.i812 to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 %conv278.i840, ptr %op.9.i812, align 1
  br label %cleanup.cont284.i848

cleanup.cont284.i848:                             ; preds = %if.else276.i841, %for.end273.i838
  %op.10.pn.i842 = phi ptr [ %op.10.lcssa.i836, %for.end273.i838 ], [ %op.9.i812, %if.else276.i841 ]
  %op.11.i843 = getelementptr i8, ptr %op.10.pn.i842, i32 1
  %297 = call ptr @memcpy(ptr %op.11.i843, ptr %anchor.3.i811, i32 %sub.ptr.sub245.i815)
  %add.ptr281.i844 = getelementptr i8, ptr %op.11.i843, i32 %sub.ptr.sub245.i815
  %sub.ptr.lhs.cast285.i845 = ptrtoint ptr %add.ptr281.i844 to i32
  %sub.ptr.sub287.i847 = sub i32 %sub.ptr.lhs.cast285.i845, %sub.ptr.rhs.cast249.i818
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cont284.i848, %_last_literals.i816.cleanup_crit_edge, %LZ4_count.exit590.i755.cleanup_crit_edge, %while.end.i669.cleanup_crit_edge, %if.else12.cleanup_crit_edge, %cleanup.cont284.i569, %_last_literals.i547.cleanup_crit_edge, %LZ4_count.exit590.i479.cleanup_crit_edge, %while.end.i394.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %cleanup.cont284.i287, %if.else.cleanup_crit_edge, %cleanup.cont284.i, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.sub287.i, %cleanup.cont284.i ], [ 0, %if.then6.cleanup_crit_edge ], [ %sub.ptr.sub287.i286, %cleanup.cont284.i287 ], [ 0, %if.else.cleanup_crit_edge ], [ %sub.ptr.sub287.i568, %cleanup.cont284.i569 ], [ 0, %if.then10.cleanup_crit_edge ], [ 0, %_last_literals.i547.cleanup_crit_edge ], [ %sub.ptr.sub287.i847, %cleanup.cont284.i848 ], [ 0, %if.else12.cleanup_crit_edge ], [ 0, %_last_literals.i816.cleanup_crit_edge ], [ 0, %LZ4_count.exit590.i479.cleanup_crit_edge ], [ 0, %while.end.i394.cleanup_crit_edge ], [ 0, %LZ4_count.exit590.i755.cleanup_crit_edge ], [ 0, %while.end.i669.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @LZ4_compress_default(ptr noundef %source, ptr noundef %dest, i32 noundef %inputSize, i32 noundef %maxOutputSize, ptr noundef %wrkmem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @LZ4_compress_fast_extState(ptr noundef %wrkmem, ptr noundef %source, ptr noundef %dest, i32 noundef %inputSize, i32 noundef %maxOutputSize, i32 noundef 1) #4
  ret i32 %call.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @LZ4_compress_destSize(ptr noundef %src, ptr noundef %dst, ptr nocapture noundef %srcSizePtr, i32 noundef %targetDstSize, ptr noundef %wrkmem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %wrkmem, i32 0, i32 16416)
  %1 = ptrtoint ptr %srcSizePtr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %srcSizePtr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2113929216, i32 %2)
  %cmp.i = icmp ugt i32 %2, 2113929216
  %div.i = sdiv i32 %2, 255
  %add.i = add i32 %2, 16
  %add1.i = add i32 %add.i, %div.i
  %cond.i = select i1 %cmp.i, i32 0, i32 %add1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %targetDstSize)
  %cmp2.not.i = icmp sgt i32 %cond.i, %targetDstSize
  br i1 %cmp2.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call fastcc i32 @LZ4_compress_fast_extState(ptr noundef %wrkmem, ptr noundef %src, ptr noundef %dst, i32 noundef %2, i32 noundef %targetDstSize, i32 noundef 1) #4
  br label %LZ4_compress_destSize_extState.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65547, i32 %2)
  %cmp3.i = icmp slt i32 %2, 65547
  br i1 %cmp3.i, label %if.then4.i, label %if.else6.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %call5.i = tail call fastcc i32 @LZ4_compress_destSize_generic(ptr noundef %wrkmem, ptr noundef %src, ptr noundef %dst, ptr noundef %srcSizePtr, i32 noundef %targetDstSize, i32 noundef 2) #4
  br label %LZ4_compress_destSize_extState.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %call7.i = tail call fastcc i32 @LZ4_compress_destSize_generic(ptr noundef %wrkmem, ptr noundef %src, ptr noundef %dst, ptr noundef %srcSizePtr, i32 noundef %targetDstSize, i32 noundef 0) #4
  br label %LZ4_compress_destSize_extState.exit

LZ4_compress_destSize_extState.exit:              ; preds = %if.else6.i, %if.then4.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call5.i, %if.then4.i ], [ %call7.i, %if.else6.i ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @LZ4_resetStream(ptr nocapture noundef writeonly %LZ4_stream) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %LZ4_stream, i32 0, i32 16416)
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @LZ4_loadDict(ptr nocapture noundef %LZ4_dict, ptr noundef %dictionary, i32 noundef %dictSize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dictionary, i32 %dictSize
  %initCheck = getelementptr inbounds %struct.LZ4_stream_t_internal, ptr %LZ4_dict, i32 0, i32 2
  %0 = ptrtoint ptr %initCheck to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %initCheck, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %currentOffset = getelementptr inbounds %struct.LZ4_stream_t_internal, ptr %LZ4_dict, i32 0, i32 1
  %2 = ptrtoint ptr %currentOffset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %currentOffset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %3)
  %cmp = icmp ugt i32 %3, 1073741824
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %4 = call ptr @memset(ptr %LZ4_dict, i32 0, i32 16416)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dictSize)
  %cmp1 = icmp slt i32 %dictSize, 4
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dictionary3 = getelementptr inbounds %struct.LZ4_stream_t_internal, ptr %LZ4_dict, i32 0, i32 3
  %5 = ptrtoint ptr %dictionary3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %dictionary3, align 4
  %dictSize4 = getelementptr inbounds %struct.LZ4_stream_t_internal, ptr %LZ4_dict, i32 0, i32 5
  %6 = ptrtoint ptr %dictSize4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dictSize4, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %dictSize)
  %cmp6 = icmp ugt i32 %dictSize, 65536
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 -65536
  %spec.select = select i1 %cmp6, ptr %add.ptr8, ptr %dictionary
  %currentOffset10 = getelementptr inbounds %struct.LZ4_stream_t_internal, ptr %LZ4_dict, i32 0, i32 1
  %7 = ptrtoint ptr %currentOffset10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %currentOffset10, align 4
  %add = add i32 %8, 65536
  %dictionary13 = getelementptr inbounds %struct.LZ4_stream_t_internal, ptr %LZ4_dict, i32 0, i32 3
  %9 = ptrtoint ptr %dictionary13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.select, ptr %dictionary13, align 4
  %sub.ptr.rhs.cast15 = ptrtoint ptr %spec.select to i32
  %sub.ptr.sub16 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast15
  %dictSize17 = getelementptr inbounds %struct.LZ4_stream_t_internal, ptr %LZ4_dict, i32 0, i32 5
  %10 = ptrtoint ptr %dictSize17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub.ptr.sub16, ptr %dictSize17, align 4
  %add20 = add i32 %add, %sub.ptr.sub16
  store i32 %add20, ptr %currentOffset10, align 4
  %add.ptr21 = getelementptr i8, ptr %add.ptr, i32 -4
  %cmp22.not51 = icmp ugt ptr %spec.select, %add.ptr21
  br i1 %cmp22.not51, label %if.end5.cleanup_crit_edge, label %while.body.lr.ph

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end5
  %idx.neg = sub i32 -65536, %8
  %add.ptr12 = getelementptr i8, ptr %spec.select, i32 %idx.neg
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr12 to i32
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %p.152 = phi ptr [ %spec.select, %while.body.lr.ph ], [ %add.ptr23, %while.body.while.body_crit_edge ]
  %11 = ptrtoint ptr %p.152 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %p.val.i = load i32, ptr %p.152, align 1
  %mul.i.i.i = mul i32 %p.val.i, -1640531535
  %retval.0.i.i.i = lshr i32 %mul.i.i.i, 20
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %p.152 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %arrayidx3.i.i = getelementptr i32, ptr %LZ4_dict, i32 %retval.0.i.i.i
  %12 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub.ptr.sub.i.i, ptr %arrayidx3.i.i, align 4
  %add.ptr23 = getelementptr i8, ptr %p.152, i32 3
  %cmp22.not = icmp ugt ptr %add.ptr23, %add.ptr21
  br i1 %cmp22.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ %sub.ptr.sub16, %if.end5.cleanup_crit_edge ], [ %sub.ptr.sub16, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @LZ4_saveDict(ptr nocapture noundef %LZ4_dict, ptr noundef %safeBuffer, i32 noundef %dictSize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dictionary = getelementptr inbounds %struct.LZ4_stream_t_internal, ptr %LZ4_dict, i32 0, i32 3
  %0 = ptrtoint ptr %dictionary to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dictionary, align 4
  %dictSize1 = getelementptr inbounds %struct.LZ4_stream_t_internal, ptr %LZ4_dict, i32 0, i32 5
  %2 = ptrtoint ptr %dictSize1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dictSize1, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %dictSize, i32 %3)
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 65536)
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %idx.neg = sub nsw i32 0, %5
  %add.ptr7 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %6 = call ptr @memmove(ptr %safeBuffer, ptr %add.ptr7, i32 %5)
  %7 = ptrtoint ptr %dictionary to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %safeBuffer, ptr %dictionary, align 4
  %8 = ptrtoint ptr %dictSize1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %dictSize1, align 4
  ret i32 %5
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @LZ4_compress_fast_continue(ptr noundef %LZ4_stream, ptr noundef %source, ptr noundef %dest, i32 noundef %inputSize, i32 noundef %maxOutputSize, i32 noundef %acceleration) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dictionary = getelementptr inbounds %struct.LZ4_stream_t_internal, ptr %LZ4_stream, i32 0, i32 3
  %0 = ptrtoint ptr %dictionary to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dictionary, align 4
  %dictSize = getelementptr inbounds %struct.LZ4_stream_t_internal, ptr %LZ4_stream, i32 0, i32 5
  %2 = ptrtoint ptr %dictSize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dictSize, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %initCheck = getelementptr inbounds %struct.LZ4_stream_t_internal, ptr %LZ4_stream, i32 0, i32 2
  %4 = ptrtoint ptr %initCheck to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %initCheck, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp ne i32 %3, 0
  %cmp2 = icmp ult ptr %add.ptr, %source
  %or.cond = select i1 %cmp.not, i1 %cmp2, i1 false
  %smallest.0 = select i1 %or.cond, ptr %add.ptr, ptr %source
  %currentOffset.i = getelementptr inbounds %struct.LZ4_stream_t_internal, ptr %LZ4_stream, i32 0, i32 1
  %6 = ptrtoint ptr %currentOffset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %currentOffset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %7)
  %cmp.i1100 = icmp ugt i32 %7, -2147483648
  %8 = ptrtoint ptr %smallest.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %8)
  %cmp2.i = icmp ugt i32 %7, %8
  %or.cond.i = or i1 %cmp.i1100, %cmp2.i
  br i1 %or.cond.i, label %if.then.i, label %if.end.LZ4_renormDictT.exit_crit_edge

if.end.LZ4_renormDictT.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_renormDictT.exit

if.then.i:                                        ; preds = %if.end
  %sub.i1101 = add i32 %7, -65536
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i
  %i.040.i = phi i32 [ 0, %if.then.i ], [ %inc.i1104, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i1103 = getelementptr [4096 x i32], ptr %LZ4_stream, i32 0, i32 %i.040.i
  %9 = ptrtoint ptr %arrayidx.i1103 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i1103, align 4
  %11 = tail call i32 @llvm.usub.sat.i32(i32 %10, i32 %sub.i1101) #4
  %12 = ptrtoint ptr %arrayidx.i1103 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx.i1103, align 4
  %inc.i1104 = add nuw nsw i32 %i.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i1104, 4096
  br i1 %exitcond.not.i, label %for.end.i1106, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i1106:                                    ; preds = %for.body.i
  %13 = ptrtoint ptr %currentOffset.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65536, ptr %currentOffset.i, align 4
  %14 = ptrtoint ptr %dictSize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dictSize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %15)
  %cmp14.i = icmp ugt i32 %15, 65536
  br i1 %cmp14.i, label %if.then15.i, label %for.end.i1106.if.end17.i_crit_edge

for.end.i1106.if.end17.i_crit_edge:               ; preds = %for.end.i1106
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17.i

if.then15.i:                                      ; preds = %for.end.i1106
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %dictSize to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 65536, ptr %dictSize, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %for.end.i1106.if.end17.i_crit_edge
  %17 = ptrtoint ptr %dictSize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dictSize, align 4
  %idx.neg.i1107 = sub i32 0, %18
  %add.ptr19.i = getelementptr i8, ptr %add.ptr, i32 %idx.neg.i1107
  %19 = ptrtoint ptr %dictionary to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr19.i, ptr %dictionary, align 4
  br label %LZ4_renormDictT.exit

LZ4_renormDictT.exit:                             ; preds = %if.end17.i, %if.end.LZ4_renormDictT.exit_crit_edge
  %20 = tail call i32 @llvm.smax.i32(i32 %acceleration, i32 1)
  %add.ptr8 = getelementptr i8, ptr %source, i32 %inputSize
  %21 = ptrtoint ptr %dictionary to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dictionary, align 4
  %cmp10 = icmp ugt ptr %add.ptr8, %22
  %cmp12 = icmp ult ptr %add.ptr8, %add.ptr
  %or.cond123 = select i1 %cmp10, i1 %cmp12, i1 false
  br i1 %or.cond123, label %if.then13, label %LZ4_renormDictT.exit.if.end28_crit_edge

LZ4_renormDictT.exit.if.end28_crit_edge:          ; preds = %LZ4_renormDictT.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then13:                                        ; preds = %LZ4_renormDictT.exit
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr8 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %23 = tail call i32 @llvm.umin.i32(i32 %sub.ptr.sub, i32 65536)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp21 = icmp ult i32 %23, 4
  %storemerge122 = select i1 %cmp21, i32 0, i32 %23
  %24 = ptrtoint ptr %dictSize to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %storemerge122, ptr %dictSize, align 4
  %idx.neg = sub nsw i32 0, %storemerge122
  %add.ptr26 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %25 = ptrtoint ptr %dictionary to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr26, ptr %dictionary, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then13, %LZ4_renormDictT.exit.if.end28_crit_edge
  %cmp29 = icmp eq ptr %add.ptr, %source
  %26 = ptrtoint ptr %dictSize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dictSize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %27)
  %cmp32 = icmp ult i32 %27, 65536
  br i1 %cmp29, label %if.then30, label %if.end42

if.then30:                                        ; preds = %if.end28
  br i1 %cmp32, label %land.lhs.true33, label %if.then30.if.else_crit_edge

if.then30.if.else_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true33:                                  ; preds = %if.then30
  %28 = ptrtoint ptr %currentOffset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %currentOffset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp35 = icmp ult i32 %27, %29
  br i1 %cmp35, label %if.then36, label %land.lhs.true33.if.else_crit_edge

land.lhs.true33.if.else_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then36:                                        ; preds = %land.lhs.true33
  %source890.i = ptrtoint ptr %source to i32
  %idx.neg.i = sub nsw i32 0, %27
  %add.ptr.i = getelementptr i8, ptr %source, i32 %idx.neg.i
  %add.ptr5.i = getelementptr i8, ptr %add.ptr8, i32 -12
  %add.ptr6.i = getelementptr i8, ptr %add.ptr8, i32 -5
  %add.ptr7.i = getelementptr i8, ptr %dest, i32 %maxOutputSize
  call void @__sanitizer_cov_trace_const_cmp4(i32 2113929216, i32 %inputSize)
  %cmp.i = icmp ugt i32 %inputSize, 2113929216
  br i1 %cmp.i, label %if.then36.if.end38_crit_edge, label %if.end.i

if.then36.if.end38_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.end.i:                                         ; preds = %if.then36
  %idx.neg16.i = sub i32 0, %29
  %add.ptr17.i = getelementptr i8, ptr %source, i32 %idx.neg16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inputSize)
  %cmp22.i = icmp ult i32 %inputSize, 13
  br i1 %cmp22.i, label %if.end.i._last_literals.i_crit_edge, label %if.end24.i

if.end.i._last_literals.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i

if.end24.i:                                       ; preds = %if.end.i
  %30 = ptrtoint ptr %source to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %p.val.i.i = load i32, ptr %source, align 1
  %mul.i.i.i.i = mul i32 %p.val.i.i, -1640531535
  %retval.0.i.i.i.i = lshr i32 %mul.i.i.i.i, 20
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr17.i to i32
  %arrayidx3.i.i.i = getelementptr i32, ptr %LZ4_stream, i32 %retval.0.i.i.i.i
  %31 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %arrayidx3.i.i.i, align 4
  %shl.i = shl i32 %20, 6
  %inc807.i = or i32 %shl.i, 1
  %shr808.i = and i32 %20, 67108863
  %add.ptr25806844.i = getelementptr i8, ptr %source, i32 2
  %cmp26809845.i = icmp ugt ptr %add.ptr25806844.i, %add.ptr5.i
  br i1 %cmp26809845.i, label %if.end24.i._last_literals.i_crit_edge, label %if.end29.lr.ph.lr.ph.i, !prof !26

if.end24.i._last_literals.i_crit_edge:            ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i

if.end29.lr.ph.lr.ph.i:                           ; preds = %if.end24.i
  %add.ptr.i550.i = getelementptr i8, ptr %add.ptr6.i, i32 -3
  %add.ptr8.i568.i = getelementptr i8, ptr %add.ptr6.i, i32 -1
  br label %if.end29.lr.ph.i

if.end29.lr.ph.i:                                 ; preds = %cleanup238.i.if.end29.lr.ph.i_crit_edge, %if.end29.lr.ph.lr.ph.i
  %add.ptr25806852.i = phi ptr [ %add.ptr25806844.i, %if.end29.lr.ph.lr.ph.i ], [ %add.ptr25806.i, %cleanup238.i.if.end29.lr.ph.i_crit_edge ]
  %op.0848.i = phi ptr [ %dest, %if.end29.lr.ph.lr.ph.i ], [ %op.7.ph.i, %cleanup238.i.if.end29.lr.ph.i_crit_edge ]
  %anchor.0847.i = phi ptr [ %source, %if.end29.lr.ph.lr.ph.i ], [ %add.ptr151.i, %cleanup238.i.if.end29.lr.ph.i_crit_edge ]
  %ip.0850.i = getelementptr i8, ptr %anchor.0847.i, i32 1
  %32 = ptrtoint ptr %ip.0850.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %mul.i.i.pn.pn804842.pn.in.i = load i32, ptr %ip.0850.i, align 1
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.body.backedge.i.if.end29.i_crit_edge, %if.end29.lr.ph.i
  %shr816.i = phi i32 [ %shr808.i, %if.end29.lr.ph.i ], [ %shr.i, %do.body.backedge.i.if.end29.i_crit_edge ]
  %inc815.i = phi i32 [ %inc807.i, %if.end29.lr.ph.i ], [ %inc.i, %do.body.backedge.i.if.end29.i_crit_edge ]
  %add.ptr25814.i = phi ptr [ %add.ptr25806852.i, %if.end29.lr.ph.i ], [ %add.ptr25.i, %do.body.backedge.i.if.end29.i_crit_edge ]
  %mul.i.i.pn.pn804842.pn.pn.in.i = phi i32 [ %mul.i.i.pn.pn804842.pn.in.i, %if.end29.lr.ph.i ], [ %add.ptr25.val674.i, %do.body.backedge.i.if.end29.i_crit_edge ]
  %forwardIp.0812.i = phi ptr [ %ip.0850.i, %if.end29.lr.ph.i ], [ %add.ptr25814.i, %do.body.backedge.i.if.end29.i_crit_edge ]
  %mul.i.i.pn.pn804842.pn.pn.i = mul i32 %mul.i.i.pn.pn804842.pn.pn.in.i, -1640531535
  %forwardH.1813.i = lshr i32 %mul.i.i.pn.pn804842.pn.pn.i, 20
  %arrayidx4.i.i = getelementptr i32, ptr %LZ4_stream, i32 %forwardH.1813.i
  %33 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx4.i.i, align 4
  %add.ptr.i641.i = getelementptr i8, ptr %add.ptr17.i, i32 %34
  %35 = ptrtoint ptr %add.ptr25814.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %add.ptr25.val674.i = load i32, ptr %add.ptr25814.i, align 1
  %sub.ptr.lhs.cast.i644.i = ptrtoint ptr %forwardIp.0812.i to i32
  %sub.ptr.sub.i646.i = sub i32 %sub.ptr.lhs.cast.i644.i, %sub.ptr.rhs.cast.i.i.i
  store i32 %sub.ptr.sub.i646.i, ptr %arrayidx4.i.i, align 4
  %cmp43.i = icmp ult ptr %add.ptr.i641.i, %add.ptr.i
  %add.ptr47.i = getelementptr i8, ptr %add.ptr.i641.i, i32 65535
  %cmp48.i = icmp ult ptr %add.ptr47.i, %forwardIp.0812.i
  %or.cond1108 = or i1 %cmp43.i, %cmp48.i
  br i1 %or.cond1108, label %if.end29.i.do.body.backedge.i_crit_edge, label %lor.rhs.i

if.end29.i.do.body.backedge.i_crit_edge:          ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.backedge.i

lor.rhs.i:                                        ; preds = %if.end29.i
  %36 = ptrtoint ptr %add.ptr.i641.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %add.ptr49.val.i = load i32, ptr %add.ptr.i641.i, align 1
  %37 = ptrtoint ptr %forwardIp.0812.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %forwardIp.0.val.i = load i32, ptr %forwardIp.0812.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.ptr49.val.i, i32 %forwardIp.0.val.i)
  %cmp52.not.i = icmp eq i32 %add.ptr49.val.i, %forwardIp.0.val.i
  br i1 %cmp52.not.i, label %while.cond.preheader.i, label %lor.rhs.i.do.body.backedge.i_crit_edge

lor.rhs.i.do.body.backedge.i_crit_edge:           ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.backedge.i

do.body.backedge.i:                               ; preds = %lor.rhs.i.do.body.backedge.i_crit_edge, %if.end29.i.do.body.backedge.i_crit_edge
  %add.ptr25.i = getelementptr i8, ptr %add.ptr25814.i, i32 %shr816.i
  %inc.i = add i32 %inc815.i, 1
  %shr.i = lshr i32 %inc815.i, 6
  %cmp26.i = icmp ugt ptr %add.ptr25.i, %add.ptr5.i
  br i1 %cmp26.i, label %do.body.backedge.i._last_literals.i_crit_edge, label %do.body.backedge.i.if.end29.i_crit_edge, !prof !26

do.body.backedge.i.if.end29.i_crit_edge:          ; preds = %do.body.backedge.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.i

do.body.backedge.i._last_literals.i_crit_edge:    ; preds = %do.body.backedge.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i

while.cond.preheader.i:                           ; preds = %lor.rhs.i
  %cmp58820.i = icmp ugt ptr %forwardIp.0812.i, %anchor.0847.i
  %cmp60822.i = icmp ugt ptr %add.ptr.i641.i, %add.ptr.i
  %and491823.i = and i1 %cmp58820.i, %cmp60822.i
  br i1 %and491823.i, label %while.cond.preheader.i.land.rhs.i_crit_edge, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.cond.preheader.i.land.rhs.i_crit_edge:      ; preds = %while.cond.preheader.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %while.cond.preheader.i.land.rhs.i_crit_edge
  %match.2825.i = phi ptr [ %arrayidx64.i, %while.body.i.land.rhs.i_crit_edge ], [ %add.ptr.i641.i, %while.cond.preheader.i.land.rhs.i_crit_edge ]
  %ip.1824.i = phi ptr [ %arrayidx.i, %while.body.i.land.rhs.i_crit_edge ], [ %forwardIp.0812.i, %while.cond.preheader.i.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %ip.1824.i, i32 -1
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i, align 1
  %arrayidx64.i = getelementptr i8, ptr %match.2825.i, i32 -1
  %40 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx64.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp66.i = icmp eq i8 %39, %41
  br i1 %cmp66.i, label %while.body.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %cmp58.i = icmp ugt ptr %arrayidx.i, %anchor.0847.i
  %cmp60.i = icmp ugt ptr %arrayidx64.i, %add.ptr.i
  %and491.i = and i1 %cmp60.i, %cmp58.i
  br i1 %and491.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %ip.1.lcssa.i = phi ptr [ %forwardIp.0812.i, %while.cond.preheader.i.while.end.i_crit_edge ], [ %ip.1824.i, %land.rhs.i.while.end.i_crit_edge ], [ %arrayidx.i, %while.body.i.while.end.i_crit_edge ]
  %match.2.lcssa.i = phi ptr [ %add.ptr.i641.i, %while.cond.preheader.i.while.end.i_crit_edge ], [ %match.2825.i, %land.rhs.i.while.end.i_crit_edge ], [ %arrayidx64.i, %while.body.i.while.end.i_crit_edge ]
  %sub.ptr.lhs.cast76.i.pre-phi = ptrtoint ptr %ip.1.lcssa.i to i32
  %sub.ptr.rhs.cast77.i = ptrtoint ptr %anchor.0847.i to i32
  %sub.ptr.sub78.i = sub i32 %sub.ptr.lhs.cast76.i.pre-phi, %sub.ptr.rhs.cast77.i
  %incdec.ptr79.i = getelementptr i8, ptr %op.0848.i, i32 1
  %add.ptr82.i = getelementptr i8, ptr %op.0848.i, i32 9
  %add.ptr83.i = getelementptr i8, ptr %add.ptr82.i, i32 %sub.ptr.sub78.i
  %div.i = udiv i32 %sub.ptr.sub78.i, 255
  %add.ptr84.i = getelementptr i8, ptr %add.ptr83.i, i32 %div.i
  %cmp85.i = icmp ugt ptr %add.ptr84.i, %add.ptr7.i
  br i1 %cmp85.i, label %while.end.i.if.end38_crit_edge, label %if.end94.i, !prof !29

while.end.i.if.end38_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.end94.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub78.i)
  %cmp95.i = icmp ugt i32 %sub.ptr.sub78.i, 14
  br i1 %cmp95.i, label %if.then97.i, label %if.else106.i

if.then97.i:                                      ; preds = %if.end94.i
  %sub98.i = add i32 %sub.ptr.sub78.i, -15
  %42 = ptrtoint ptr %op.0848.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -16, ptr %op.0848.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %sub98.i)
  %cmp100830.i = icmp sgt i32 %sub98.i, 254
  br i1 %cmp100830.i, label %for.body.preheader.i, label %if.then97.i.for.end.i_crit_edge

if.then97.i.for.end.i_crit_edge:                  ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #6
  %smin.i = tail call i32 @llvm.smin.i32(i32 %sub98.i, i32 509) #4
  %43 = add i32 %sub.ptr.lhs.cast76.i.pre-phi, 239
  %44 = add i32 %smin.i, %sub.ptr.rhs.cast77.i
  %45 = sub i32 %43, %44
  %46 = udiv i32 %45, 255
  %47 = add nuw nsw i32 %46, 1
  %48 = call ptr @memset(ptr %incdec.ptr79.i, i32 255, i32 %47)
  %.neg893.i = mul i32 %46, -255
  %uglygep.i = getelementptr i8, ptr %op.0848.i, i32 2
  %uglygep887.i = getelementptr i8, ptr %uglygep.i, i32 %46
  %49 = sub i32 -270, %sub.ptr.rhs.cast77.i
  %50 = add i32 %49, %sub.ptr.lhs.cast76.i.pre-phi
  %51 = add i32 %50, %.neg893.i
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.preheader.i, %if.then97.i.for.end.i_crit_edge
  %op.1.lcssa.i = phi ptr [ %incdec.ptr79.i, %if.then97.i.for.end.i_crit_edge ], [ %uglygep887.i, %for.body.preheader.i ]
  %len.0.lcssa.i = phi i32 [ %sub98.i, %if.then97.i.for.end.i_crit_edge ], [ %51, %for.body.preheader.i ]
  %conv104.i = trunc i32 %len.0.lcssa.i to i8
  %incdec.ptr105.i = getelementptr i8, ptr %op.1.lcssa.i, i32 1
  %52 = ptrtoint ptr %op.1.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv104.i, ptr %op.1.lcssa.i, align 1
  br label %if.end109.i

if.else106.i:                                     ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub78.tr.i = trunc i32 %sub.ptr.sub78.i to i8
  %conv108.i = shl nuw i8 %sub.ptr.sub78.tr.i, 4
  %53 = ptrtoint ptr %op.0848.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv108.i, ptr %op.0848.i, align 1
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.else106.i, %for.end.i
  %op.2.i = phi ptr [ %incdec.ptr105.i, %for.end.i ], [ %incdec.ptr79.i, %if.else106.i ]
  %add.ptr110.i = getelementptr i8, ptr %op.2.i, i32 %sub.ptr.sub78.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end109.i
  %d.0.i.i = phi ptr [ %op.2.i, %if.end109.i ], [ %add.ptr.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %s.0.i.i = phi ptr [ %anchor.0847.i, %if.end109.i ], [ %add.ptr1.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %54 = ptrtoint ptr %s.0.i.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %s.0.val.i.i = load i32, ptr %s.0.i.i, align 1
  %55 = getelementptr i8, ptr %s.0.i.i, i32 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %s.0.val5.i.i = load i32, ptr %55, align 1
  %57 = ptrtoint ptr %d.0.i.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %s.0.val.i.i, ptr %d.0.i.i, align 1
  %add.ptr8.i.i.i = getelementptr i32, ptr %d.0.i.i, i32 1
  %58 = ptrtoint ptr %add.ptr8.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %s.0.val5.i.i, ptr %add.ptr8.i.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %d.0.i.i, i32 8
  %add.ptr1.i.i = getelementptr i8, ptr %s.0.i.i, i32 8
  %cmp.i.i = icmp ult ptr %add.ptr.i.i, %add.ptr110.i
  br i1 %cmp.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.body.i.i._next_match.i_crit_edge

do.body.i.i._next_match.i_crit_edge:              ; preds = %do.body.i.i
  br label %_next_match.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i

_next_match.i:                                    ; preds = %if.then233.i, %do.body.i.i._next_match.i_crit_edge
  %ip.2.i = phi ptr [ %add.ptr151.i, %if.then233.i ], [ %ip.1.lcssa.i, %do.body.i.i._next_match.i_crit_edge ]
  %op.4.i = phi ptr [ %incdec.ptr234.i, %if.then233.i ], [ %add.ptr110.i, %do.body.i.i._next_match.i_crit_edge ]
  %match.3.i = phi ptr [ %add.ptr.i.i.i, %if.then233.i ], [ %match.2.lcssa.i, %do.body.i.i._next_match.i_crit_edge ]
  %token.0.i = phi ptr [ %op.7.ph.i, %if.then233.i ], [ %op.0848.i, %do.body.i.i._next_match.i_crit_edge ]
  %sub.ptr.lhs.cast115.i = ptrtoint ptr %ip.2.i to i32
  %sub.ptr.rhs.cast116.i = ptrtoint ptr %match.3.i to i32
  %sub.ptr.sub117.i = sub i32 %sub.ptr.lhs.cast115.i, %sub.ptr.rhs.cast116.i
  %conv118.i = trunc i32 %sub.ptr.sub117.i to i16
  %59 = tail call i16 @llvm.bswap.i16(i16 %conv118.i) #4
  %60 = ptrtoint ptr %op.4.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %59, ptr %op.4.i, align 1
  %add.ptr119.i = getelementptr i8, ptr %op.4.i, i32 2
  %add.ptr147.i = getelementptr i8, ptr %ip.2.i, i32 4
  %add.ptr148.i = getelementptr i8, ptr %match.3.i, i32 4
  %cmp59.i551.i = icmp ugt ptr %add.ptr.i550.i, %add.ptr147.i
  br i1 %cmp59.i551.i, label %_next_match.i.while.body.i558.i_crit_edge, label %_next_match.i.while.end.i570.i_crit_edge, !prof !27

_next_match.i.while.end.i570.i_crit_edge:         ; preds = %_next_match.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i570.i

_next_match.i.while.body.i558.i_crit_edge:        ; preds = %_next_match.i
  br label %while.body.i558.i

while.body.i558.i:                                ; preds = %cleanup.i565.i.while.body.i558.i_crit_edge, %_next_match.i.while.body.i558.i_crit_edge
  %pMatch.addr.061.i552.i = phi ptr [ %add.ptr5.i563.i, %cleanup.i565.i.while.body.i558.i_crit_edge ], [ %add.ptr148.i, %_next_match.i.while.body.i558.i_crit_edge ]
  %pIn.addr.060.i553.i = phi ptr [ %add.ptr4.i562.i, %cleanup.i565.i.while.body.i558.i_crit_edge ], [ %add.ptr147.i, %_next_match.i.while.body.i558.i_crit_edge ]
  %61 = ptrtoint ptr %pMatch.addr.061.i552.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %pMatch.addr.0.val.i554.i = load i32, ptr %pMatch.addr.061.i552.i, align 1
  %62 = ptrtoint ptr %pIn.addr.060.i553.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %pIn.addr.0.val.i555.i = load i32, ptr %pIn.addr.060.i553.i, align 1
  %xor.i556.i = xor i32 %pIn.addr.0.val.i555.i, %pMatch.addr.0.val.i554.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i556.i)
  %tobool3.not.i557.i = icmp eq i32 %xor.i556.i, 0
  br i1 %tobool3.not.i557.i, label %cleanup.i565.i, label %cleanup.thread.i561.i

cleanup.thread.i561.i:                            ; preds = %while.body.i558.i
  call void @__sanitizer_cov_trace_pc() #6
  %63 = tail call i32 @llvm.ctlz.i32(i32 %xor.i556.i, i1 true) #4, !range !28
  %shr.i.i559.i = lshr i32 %63, 3
  %add.ptr7.i560.i = getelementptr i8, ptr %pIn.addr.060.i553.i, i32 %shr.i.i559.i
  br label %LZ4_count.exit590.i

cleanup.i565.i:                                   ; preds = %while.body.i558.i
  %add.ptr4.i562.i = getelementptr i8, ptr %pIn.addr.060.i553.i, i32 4
  %add.ptr5.i563.i = getelementptr i8, ptr %pMatch.addr.061.i552.i, i32 4
  %cmp.i564.i = icmp ult ptr %add.ptr4.i562.i, %add.ptr.i550.i
  br i1 %cmp.i564.i, label %cleanup.i565.i.while.body.i558.i_crit_edge, label %cleanup.i565.i.while.end.i570.i_crit_edge, !prof !27

cleanup.i565.i.while.end.i570.i_crit_edge:        ; preds = %cleanup.i565.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i570.i

cleanup.i565.i.while.body.i558.i_crit_edge:       ; preds = %cleanup.i565.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i558.i

while.end.i570.i:                                 ; preds = %cleanup.i565.i.while.end.i570.i_crit_edge, %_next_match.i.while.end.i570.i_crit_edge
  %pIn.addr.0.lcssa.i566.i = phi ptr [ %add.ptr147.i, %_next_match.i.while.end.i570.i_crit_edge ], [ %add.ptr4.i562.i, %cleanup.i565.i.while.end.i570.i_crit_edge ]
  %pMatch.addr.0.lcssa.i567.i = phi ptr [ %add.ptr148.i, %_next_match.i.while.end.i570.i_crit_edge ], [ %add.ptr5.i563.i, %cleanup.i565.i.while.end.i570.i_crit_edge ]
  %cmp9.i569.i = icmp ult ptr %pIn.addr.0.lcssa.i566.i, %add.ptr8.i568.i
  br i1 %cmp9.i569.i, label %land.lhs.true.i574.i, label %while.end.i570.i.if.end18.i581.i_crit_edge

while.end.i570.i.if.end18.i581.i_crit_edge:       ; preds = %while.end.i570.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i581.i

land.lhs.true.i574.i:                             ; preds = %while.end.i570.i
  %64 = ptrtoint ptr %pMatch.addr.0.lcssa.i567.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %pMatch.addr.0.val53.i571.i = load i16, ptr %pMatch.addr.0.lcssa.i567.i, align 1
  %65 = ptrtoint ptr %pIn.addr.0.lcssa.i566.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %pIn.addr.0.val52.i572.i = load i16, ptr %pIn.addr.0.lcssa.i566.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %pMatch.addr.0.val53.i571.i, i16 %pIn.addr.0.val52.i572.i)
  %cmp13.i573.i = icmp eq i16 %pMatch.addr.0.val53.i571.i, %pIn.addr.0.val52.i572.i
  br i1 %cmp13.i573.i, label %if.then15.i577.i, label %land.lhs.true.i574.i.if.end18.i581.i_crit_edge

land.lhs.true.i574.i.if.end18.i581.i_crit_edge:   ; preds = %land.lhs.true.i574.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i581.i

if.then15.i577.i:                                 ; preds = %land.lhs.true.i574.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i575.i = getelementptr i8, ptr %pIn.addr.0.lcssa.i566.i, i32 2
  %add.ptr17.i576.i = getelementptr i8, ptr %pMatch.addr.0.lcssa.i567.i, i32 2
  br label %if.end18.i581.i

if.end18.i581.i:                                  ; preds = %if.then15.i577.i, %land.lhs.true.i574.i.if.end18.i581.i_crit_edge, %while.end.i570.i.if.end18.i581.i_crit_edge
  %pIn.addr.2.i578.i = phi ptr [ %add.ptr16.i575.i, %if.then15.i577.i ], [ %pIn.addr.0.lcssa.i566.i, %land.lhs.true.i574.i.if.end18.i581.i_crit_edge ], [ %pIn.addr.0.lcssa.i566.i, %while.end.i570.i.if.end18.i581.i_crit_edge ]
  %pMatch.addr.2.i579.i = phi ptr [ %add.ptr17.i576.i, %if.then15.i577.i ], [ %pMatch.addr.0.lcssa.i567.i, %land.lhs.true.i574.i.if.end18.i581.i_crit_edge ], [ %pMatch.addr.0.lcssa.i567.i, %while.end.i570.i.if.end18.i581.i_crit_edge ]
  %cmp19.i580.i = icmp ult ptr %pIn.addr.2.i578.i, %add.ptr6.i
  br i1 %cmp19.i580.i, label %land.lhs.true21.i585.i, label %if.end18.i581.i.LZ4_count.exit590.i_crit_edge

if.end18.i581.i.LZ4_count.exit590.i_crit_edge:    ; preds = %if.end18.i581.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_count.exit590.i

land.lhs.true21.i585.i:                           ; preds = %if.end18.i581.i
  call void @__sanitizer_cov_trace_pc() #6
  %66 = ptrtoint ptr %pMatch.addr.2.i579.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %pMatch.addr.2.i579.i, align 1
  %68 = ptrtoint ptr %pIn.addr.2.i578.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %pIn.addr.2.i578.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %69)
  %cmp24.i582.i = icmp eq i8 %67, %69
  %spec.select.idx.i583.i = zext i1 %cmp24.i582.i to i32
  %spec.select.i584.i = getelementptr i8, ptr %pIn.addr.2.i578.i, i32 %spec.select.idx.i583.i
  br label %LZ4_count.exit590.i

LZ4_count.exit590.i:                              ; preds = %land.lhs.true21.i585.i, %if.end18.i581.i.LZ4_count.exit590.i_crit_edge, %cleanup.thread.i561.i
  %add.ptr7.sink.i586.i = phi ptr [ %add.ptr7.i560.i, %cleanup.thread.i561.i ], [ %pIn.addr.2.i578.i, %if.end18.i581.i.LZ4_count.exit590.i_crit_edge ], [ %spec.select.i584.i, %land.lhs.true21.i585.i ]
  %sub.ptr.lhs.cast.i587.i = ptrtoint ptr %add.ptr7.sink.i586.i to i32
  %sub.ptr.rhs.cast.i588.i = ptrtoint ptr %add.ptr147.i to i32
  %sub.ptr.sub.i589.i = sub i32 %sub.ptr.lhs.cast.i587.i, %sub.ptr.rhs.cast.i588.i
  %add150.i = add i32 %sub.ptr.sub.i589.i, 4
  %add.ptr151.i = getelementptr i8, ptr %ip.2.i, i32 %add150.i
  %add.ptr155.i = getelementptr i8, ptr %op.4.i, i32 8
  %shr156.i = lshr i32 %sub.ptr.sub.i589.i, 8
  %add.ptr157.i = getelementptr i8, ptr %add.ptr155.i, i32 %shr156.i
  %cmp158.i = icmp ugt ptr %add.ptr157.i, %add.ptr7.i
  br i1 %cmp158.i, label %LZ4_count.exit590.i.if.end38_crit_edge, label %if.end167.i, !prof !29

LZ4_count.exit590.i.if.end38_crit_edge:           ; preds = %LZ4_count.exit590.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.end167.i:                                      ; preds = %LZ4_count.exit590.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i589.i)
  %cmp168.i = icmp ugt i32 %sub.ptr.sub.i589.i, 14
  %70 = ptrtoint ptr %token.0.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %token.0.i, align 1
  br i1 %cmp168.i, label %if.then170.i, label %if.else186.i

if.then170.i:                                     ; preds = %if.end167.i
  %add172.i = add i8 %71, 15
  %72 = ptrtoint ptr %token.0.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %add172.i, ptr %token.0.i, align 1
  %sub174.i = add i32 %sub.ptr.sub.i589.i, -15
  %73 = ptrtoint ptr %add.ptr119.i to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 -1, ptr %add.ptr119.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1019, i32 %sub174.i)
  %cmp176835.i = icmp ugt i32 %sub174.i, 1019
  br i1 %cmp176835.i, label %while.body178.preheader.i, label %if.then170.i.while.end181.i_crit_edge

if.then170.i.while.end181.i_crit_edge:            ; preds = %if.then170.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end181.i

while.body178.preheader.i:                        ; preds = %if.then170.i
  call void @__sanitizer_cov_trace_pc() #6
  %uglygep888.i = getelementptr i8, ptr %op.4.i, i32 6
  %74 = add i32 %sub.ptr.sub.i589.i, -1035
  %75 = udiv i32 %74, 1020
  %76 = shl nuw nsw i32 %75, 2
  %77 = add nuw nsw i32 %76, 4
  %78 = call ptr @memset(ptr %uglygep888.i, i32 255, i32 %77)
  %uglygep889.i = getelementptr i8, ptr %uglygep888.i, i32 %76
  %.neg892.i = mul i32 %75, -1020
  %79 = add i32 %.neg892.i, %74
  br label %while.end181.i

while.end181.i:                                   ; preds = %while.body178.preheader.i, %if.then170.i.while.end181.i_crit_edge
  %op.5.lcssa.i = phi ptr [ %add.ptr119.i, %if.then170.i.while.end181.i_crit_edge ], [ %uglygep889.i, %while.body178.preheader.i ]
  %matchCode.2.lcssa.i = phi i32 [ %sub174.i, %if.then170.i.while.end181.i_crit_edge ], [ %79, %while.body178.preheader.i ]
  %div182.lhs.trunc.i = trunc i32 %matchCode.2.lcssa.i to i16
  %div182.lhs.trunc.i.frozen = freeze i16 %div182.lhs.trunc.i
  %div182784.i = udiv i16 %div182.lhs.trunc.i.frozen, 255
  %div182.zext.i = zext i16 %div182784.i to i32
  %add.ptr183.i = getelementptr i8, ptr %op.5.lcssa.i, i32 %div182.zext.i
  %80 = mul i16 %div182784.i, 255
  %rem785.i.decomposed = sub i16 %div182.lhs.trunc.i.frozen, %80
  %conv184.i = trunc i16 %rem785.i.decomposed to i8
  %incdec.ptr185.i = getelementptr i8, ptr %add.ptr183.i, i32 1
  %81 = ptrtoint ptr %add.ptr183.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv184.i, ptr %add.ptr183.i, align 1
  br label %cleanup.cont195.i

if.else186.i:                                     ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #6
  %82 = trunc i32 %sub.ptr.sub.i589.i to i8
  %conv191.i = add i8 %71, %82
  %83 = ptrtoint ptr %token.0.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv191.i, ptr %token.0.i, align 1
  br label %cleanup.cont195.i

cleanup.cont195.i:                                ; preds = %if.else186.i, %while.end181.i
  %op.7.ph.i = phi ptr [ %add.ptr119.i, %if.else186.i ], [ %incdec.ptr185.i, %while.end181.i ]
  %cmp196.i = icmp ugt ptr %add.ptr151.i, %add.ptr5.i
  br i1 %cmp196.i, label %cleanup.cont195.i._last_literals.i_crit_edge, label %if.end199.i

cleanup.cont195.i._last_literals.i_crit_edge:     ; preds = %cleanup.cont195.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i

if.end199.i:                                      ; preds = %cleanup.cont195.i
  %add.ptr200.i = getelementptr i8, ptr %add.ptr151.i, i32 -2
  %84 = ptrtoint ptr %add.ptr200.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %p.val.i591.i = load i32, ptr %add.ptr200.i, align 1
  %mul.i.i.i593.i = mul i32 %p.val.i591.i, -1640531535
  %retval.0.i.i.i595.i = lshr i32 %mul.i.i.i593.i, 20
  %sub.ptr.lhs.cast.i.i598.i = ptrtoint ptr %add.ptr200.i to i32
  %sub.ptr.sub.i.i600.i = sub i32 %sub.ptr.lhs.cast.i.i598.i, %sub.ptr.rhs.cast.i.i.i
  %arrayidx3.i.i601.i = getelementptr i32, ptr %LZ4_stream, i32 %retval.0.i.i.i595.i
  %85 = ptrtoint ptr %arrayidx3.i.i601.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %sub.ptr.sub.i.i600.i, ptr %arrayidx3.i.i601.i, align 4
  %86 = ptrtoint ptr %add.ptr151.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %ip.4.val502719.i = load i32, ptr %add.ptr151.i, align 1
  %mul.i.i.i611720.i = mul i32 %ip.4.val502719.i, -1640531535
  %retval.0.i.i.i613721.i = lshr i32 %mul.i.i.i611720.i, 20
  %arrayidx4.i.i.i = getelementptr i32, ptr %LZ4_stream, i32 %retval.0.i.i.i613721.i
  %87 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx4.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr17.i, i32 %88
  %sub.ptr.lhs.cast.i.i625.i = ptrtoint ptr %add.ptr151.i to i32
  %sub.ptr.sub.i.i627.i = sub i32 %sub.ptr.lhs.cast.i.i625.i, %sub.ptr.rhs.cast.i.i.i
  store i32 %sub.ptr.sub.i.i627.i, ptr %arrayidx4.i.i.i, align 4
  %cmp220.not.i = icmp ult ptr %add.ptr.i.i.i, %add.ptr.i
  %add.ptr224.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 65535
  %cmp225.not.i = icmp ult ptr %add.ptr224.i, %add.ptr151.i
  %or.cond501.i = select i1 %cmp220.not.i, i1 true, i1 %cmp225.not.i
  br i1 %or.cond501.i, label %if.end199.i.cleanup238.i_crit_edge, label %land.lhs.true227.i

if.end199.i.cleanup238.i_crit_edge:               ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup238.i

land.lhs.true227.i:                               ; preds = %if.end199.i
  %89 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %add.ptr228.val.i = load i32, ptr %add.ptr.i.i.i, align 1
  %90 = ptrtoint ptr %add.ptr151.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %ip.4.val.i = load i32, ptr %add.ptr151.i, align 1
  %cmp231.i = icmp eq i32 %add.ptr228.val.i, %ip.4.val.i
  br i1 %cmp231.i, label %if.then233.i, label %land.lhs.true227.i.cleanup238.i_crit_edge

land.lhs.true227.i.cleanup238.i_crit_edge:        ; preds = %land.lhs.true227.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup238.i

if.then233.i:                                     ; preds = %land.lhs.true227.i
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr234.i = getelementptr i8, ptr %op.7.ph.i, i32 1
  %91 = ptrtoint ptr %op.7.ph.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %op.7.ph.i, align 1
  br label %_next_match.i

cleanup238.i:                                     ; preds = %land.lhs.true227.i.cleanup238.i_crit_edge, %if.end199.i.cleanup238.i_crit_edge
  %add.ptr25806.i = getelementptr i8, ptr %add.ptr151.i, i32 2
  %cmp26809.i = icmp ugt ptr %add.ptr25806.i, %add.ptr5.i
  br i1 %cmp26809.i, label %cleanup238.i._last_literals.i_crit_edge, label %cleanup238.i.if.end29.lr.ph.i_crit_edge, !prof !26

cleanup238.i.if.end29.lr.ph.i_crit_edge:          ; preds = %cleanup238.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.lr.ph.i

cleanup238.i._last_literals.i_crit_edge:          ; preds = %cleanup238.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i

_last_literals.i:                                 ; preds = %cleanup238.i._last_literals.i_crit_edge, %cleanup.cont195.i._last_literals.i_crit_edge, %do.body.backedge.i._last_literals.i_crit_edge, %if.end24.i._last_literals.i_crit_edge, %if.end.i._last_literals.i_crit_edge
  %anchor.3.i = phi ptr [ %source, %if.end.i._last_literals.i_crit_edge ], [ %source, %if.end24.i._last_literals.i_crit_edge ], [ %add.ptr151.i, %cleanup.cont195.i._last_literals.i_crit_edge ], [ %anchor.0847.i, %do.body.backedge.i._last_literals.i_crit_edge ], [ %add.ptr151.i, %cleanup238.i._last_literals.i_crit_edge ]
  %op.9.i = phi ptr [ %dest, %if.end.i._last_literals.i_crit_edge ], [ %dest, %if.end24.i._last_literals.i_crit_edge ], [ %op.7.ph.i, %cleanup.cont195.i._last_literals.i_crit_edge ], [ %op.0848.i, %do.body.backedge.i._last_literals.i_crit_edge ], [ %op.7.ph.i, %cleanup238.i._last_literals.i_crit_edge ]
  %sub.ptr.lhs.cast243.i = ptrtoint ptr %add.ptr8 to i32
  %sub.ptr.rhs.cast244.i = ptrtoint ptr %anchor.3.i to i32
  %sub.ptr.sub245.i = sub i32 %sub.ptr.lhs.cast243.i, %sub.ptr.rhs.cast244.i
  %sub.ptr.lhs.cast248.i = ptrtoint ptr %op.9.i to i32
  %sub.ptr.rhs.cast249.i = ptrtoint ptr %dest to i32
  %sub254.i = add i32 %sub.ptr.sub245.i, 240
  %div255.i = udiv i32 %sub254.i, 255
  %sub.ptr.sub250.i = sub i32 1, %sub.ptr.rhs.cast249.i
  %add251.i = add i32 %sub.ptr.sub250.i, %sub.ptr.lhs.cast248.i
  %add252.i = add i32 %add251.i, %sub.ptr.sub245.i
  %add256.i = add i32 %add252.i, %div255.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add256.i, i32 %maxOutputSize)
  %cmp257.i = icmp ugt i32 %add256.i, %maxOutputSize
  br i1 %cmp257.i, label %_last_literals.i.if.end38_crit_edge, label %if.end260.i

_last_literals.i.if.end38_crit_edge:              ; preds = %_last_literals.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.end260.i:                                      ; preds = %_last_literals.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub245.i)
  %cmp261.i = icmp ugt i32 %sub.ptr.sub245.i, 14
  br i1 %cmp261.i, label %if.then263.i, label %if.else276.i

if.then263.i:                                     ; preds = %if.end260.i
  %sub264.i = add i32 %sub.ptr.sub245.i, -15
  %92 = ptrtoint ptr %op.9.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -16, ptr %op.9.i, align 1
  %op.10855.i = getelementptr i8, ptr %op.9.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %sub264.i)
  %cmp267856.i = icmp ugt i32 %sub264.i, 254
  br i1 %cmp267856.i, label %for.body269.preheader.i, label %if.then263.i.for.end273.i_crit_edge

if.then263.i.for.end273.i_crit_edge:              ; preds = %if.then263.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end273.i

for.body269.preheader.i:                          ; preds = %if.then263.i
  call void @__sanitizer_cov_trace_pc() #6
  %93 = add i32 %inputSize, -270
  %94 = add i32 %93, %source890.i
  %95 = sub i32 %94, %sub.ptr.rhs.cast244.i
  %96 = udiv i32 %95, 255
  %97 = add nuw nsw i32 %96, 1
  %98 = call ptr @memset(ptr %op.10855.i, i32 255, i32 %97)
  %.neg.i = mul i32 %96, -255
  %99 = add nuw nsw i32 %96, 2
  %100 = add i32 %.neg.i, %95
  %uglygep891.i = getelementptr i8, ptr %op.9.i, i32 %99
  br label %for.end273.i

for.end273.i:                                     ; preds = %for.body269.preheader.i, %if.then263.i.for.end273.i_crit_edge
  %accumulator.0.lcssa.i = phi i32 [ %sub264.i, %if.then263.i.for.end273.i_crit_edge ], [ %100, %for.body269.preheader.i ]
  %op.10.lcssa.i = phi ptr [ %op.10855.i, %if.then263.i.for.end273.i_crit_edge ], [ %uglygep891.i, %for.body269.preheader.i ]
  %conv274.i = trunc i32 %accumulator.0.lcssa.i to i8
  %101 = ptrtoint ptr %op.10.lcssa.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv274.i, ptr %op.10.lcssa.i, align 1
  br label %cleanup.cont284.i

if.else276.i:                                     ; preds = %if.end260.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub245.tr.i = trunc i32 %sub.ptr.sub245.i to i8
  %conv278.i = shl nuw i8 %sub.ptr.sub245.tr.i, 4
  %102 = ptrtoint ptr %op.9.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv278.i, ptr %op.9.i, align 1
  br label %cleanup.cont284.i

cleanup.cont284.i:                                ; preds = %if.else276.i, %for.end273.i
  %op.10.pn.i = phi ptr [ %op.10.lcssa.i, %for.end273.i ], [ %op.9.i, %if.else276.i ]
  %op.11.i = getelementptr i8, ptr %op.10.pn.i, i32 1
  %103 = call ptr @memcpy(ptr %op.11.i, ptr %anchor.3.i, i32 %sub.ptr.sub245.i)
  %add.ptr281.i = getelementptr i8, ptr %op.11.i, i32 %sub.ptr.sub245.i
  %sub.ptr.lhs.cast285.i = ptrtoint ptr %add.ptr281.i to i32
  %sub.ptr.sub287.i = sub i32 %sub.ptr.lhs.cast285.i, %sub.ptr.rhs.cast249.i
  br label %if.end38

if.else:                                          ; preds = %land.lhs.true33.if.else_crit_edge, %if.then30.if.else_crit_edge
  %source890.i124 = ptrtoint ptr %source to i32
  %idx.neg.i126 = sub i32 0, %27
  %add.ptr.i127 = getelementptr i8, ptr %source, i32 %idx.neg.i126
  %add.ptr5.i133 = getelementptr i8, ptr %add.ptr8, i32 -12
  %add.ptr6.i134 = getelementptr i8, ptr %add.ptr8, i32 -5
  %add.ptr7.i135 = getelementptr i8, ptr %dest, i32 %maxOutputSize
  call void @__sanitizer_cov_trace_const_cmp4(i32 2113929216, i32 %inputSize)
  %cmp.i136 = icmp ugt i32 %inputSize, 2113929216
  br i1 %cmp.i136, label %if.else.if.end38_crit_edge, label %if.end.i137

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.end.i137:                                      ; preds = %if.else
  %104 = ptrtoint ptr %currentOffset.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %currentOffset.i, align 4
  %idx.neg16.i139 = sub i32 0, %105
  %add.ptr17.i140 = getelementptr i8, ptr %source, i32 %idx.neg16.i139
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inputSize)
  %cmp22.i142 = icmp ult i32 %inputSize, 13
  br i1 %cmp22.i142, label %if.end.i137._last_literals.i381_crit_edge, label %if.end24.i146

if.end.i137._last_literals.i381_crit_edge:        ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i381

if.end24.i146:                                    ; preds = %if.end.i137
  %106 = ptrtoint ptr %source to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %p.val.i.i143 = load i32, ptr %source, align 1
  %mul.i.i.i.i144 = mul i32 %p.val.i.i143, -1640531535
  %retval.0.i.i.i.i145 = lshr i32 %mul.i.i.i.i144, 20
  %sub.ptr.rhs.cast.i.i.i147 = ptrtoint ptr %add.ptr17.i140 to i32
  %arrayidx3.i.i.i149 = getelementptr i32, ptr %LZ4_stream, i32 %retval.0.i.i.i.i145
  %107 = ptrtoint ptr %arrayidx3.i.i.i149 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %105, ptr %arrayidx3.i.i.i149, align 4
  %shl.i150 = shl i32 %20, 6
  %inc807.i151 = or i32 %shl.i150, 1
  %shr808.i152 = and i32 %20, 67108863
  %add.ptr25806844.i153 = getelementptr i8, ptr %source, i32 2
  %cmp26809845.i154 = icmp ugt ptr %add.ptr25806844.i153, %add.ptr5.i133
  br i1 %cmp26809845.i154, label %if.end24.i146._last_literals.i381_crit_edge, label %if.end29.lr.ph.lr.ph.i158, !prof !26

if.end24.i146._last_literals.i381_crit_edge:      ; preds = %if.end24.i146
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i381

if.end29.lr.ph.lr.ph.i158:                        ; preds = %if.end24.i146
  %add.ptr.i550.i156 = getelementptr i8, ptr %add.ptr6.i134, i32 -3
  %add.ptr8.i568.i157 = getelementptr i8, ptr %add.ptr6.i134, i32 -1
  br label %if.end29.lr.ph.i166

if.end29.lr.ph.i166:                              ; preds = %cleanup238.i375.if.end29.lr.ph.i166_crit_edge, %if.end29.lr.ph.lr.ph.i158
  %add.ptr25806852.i159 = phi ptr [ %add.ptr25806844.i153, %if.end29.lr.ph.lr.ph.i158 ], [ %add.ptr25806.i373, %cleanup238.i375.if.end29.lr.ph.i166_crit_edge ]
  %op.0848.i161 = phi ptr [ %dest, %if.end29.lr.ph.lr.ph.i158 ], [ %op.7.ph.i342, %cleanup238.i375.if.end29.lr.ph.i166_crit_edge ]
  %anchor.0847.i162 = phi ptr [ %source, %if.end29.lr.ph.lr.ph.i158 ], [ %add.ptr151.i314, %cleanup238.i375.if.end29.lr.ph.i166_crit_edge ]
  %ip.0850.i164 = getelementptr i8, ptr %anchor.0847.i162, i32 1
  %108 = ptrtoint ptr %ip.0850.i164 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %mul.i.i.pn.pn804842.pn.in.i165 = load i32, ptr %ip.0850.i164, align 1
  br label %if.end29.i176

if.end29.i176:                                    ; preds = %do.body.backedge.i198.if.end29.i176_crit_edge, %if.end29.lr.ph.i166
  %shr816.i167 = phi i32 [ %shr808.i152, %if.end29.lr.ph.i166 ], [ %shr.i196, %do.body.backedge.i198.if.end29.i176_crit_edge ]
  %inc815.i168 = phi i32 [ %inc807.i151, %if.end29.lr.ph.i166 ], [ %inc.i195, %do.body.backedge.i198.if.end29.i176_crit_edge ]
  %add.ptr25814.i169 = phi ptr [ %add.ptr25806852.i159, %if.end29.lr.ph.i166 ], [ %add.ptr25.i194, %do.body.backedge.i198.if.end29.i176_crit_edge ]
  %mul.i.i.pn.pn804842.pn.pn.in.i170 = phi i32 [ %mul.i.i.pn.pn804842.pn.in.i165, %if.end29.lr.ph.i166 ], [ %add.ptr25.val674.i182, %do.body.backedge.i198.if.end29.i176_crit_edge ]
  %forwardIp.0812.i171 = phi ptr [ %ip.0850.i164, %if.end29.lr.ph.i166 ], [ %add.ptr25814.i169, %do.body.backedge.i198.if.end29.i176_crit_edge ]
  %mul.i.i.pn.pn804842.pn.pn.i174 = mul i32 %mul.i.i.pn.pn804842.pn.pn.in.i170, -1640531535
  %forwardH.1813.i175 = lshr i32 %mul.i.i.pn.pn804842.pn.pn.i174, 20
  %arrayidx4.i.i177 = getelementptr i32, ptr %LZ4_stream, i32 %forwardH.1813.i175
  %109 = ptrtoint ptr %arrayidx4.i.i177 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx4.i.i177, align 4
  %add.ptr.i641.i178 = getelementptr i8, ptr %add.ptr17.i140, i32 %110
  %111 = ptrtoint ptr %add.ptr25814.i169 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %add.ptr25.val674.i182 = load i32, ptr %add.ptr25814.i169, align 1
  %sub.ptr.lhs.cast.i644.i183 = ptrtoint ptr %forwardIp.0812.i171 to i32
  %sub.ptr.sub.i646.i184 = sub i32 %sub.ptr.lhs.cast.i644.i183, %sub.ptr.rhs.cast.i.i.i147
  store i32 %sub.ptr.sub.i646.i184, ptr %arrayidx4.i.i177, align 4
  %add.ptr47.i186 = getelementptr i8, ptr %add.ptr.i641.i178, i32 65535
  %cmp48.i187 = icmp ult ptr %add.ptr47.i186, %forwardIp.0812.i171
  br i1 %cmp48.i187, label %if.end29.i176.do.body.backedge.i198_crit_edge, label %lor.rhs.i193

if.end29.i176.do.body.backedge.i198_crit_edge:    ; preds = %if.end29.i176
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.backedge.i198

lor.rhs.i193:                                     ; preds = %if.end29.i176
  %112 = ptrtoint ptr %add.ptr.i641.i178 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %add.ptr49.val.i190 = load i32, ptr %add.ptr.i641.i178, align 1
  %113 = ptrtoint ptr %forwardIp.0812.i171 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %forwardIp.0.val.i191 = load i32, ptr %forwardIp.0812.i171, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.ptr49.val.i190, i32 %forwardIp.0.val.i191)
  %cmp52.not.i192 = icmp eq i32 %add.ptr49.val.i190, %forwardIp.0.val.i191
  br i1 %cmp52.not.i192, label %while.cond.preheader.i203, label %lor.rhs.i193.do.body.backedge.i198_crit_edge

lor.rhs.i193.do.body.backedge.i198_crit_edge:     ; preds = %lor.rhs.i193
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.backedge.i198

do.body.backedge.i198:                            ; preds = %lor.rhs.i193.do.body.backedge.i198_crit_edge, %if.end29.i176.do.body.backedge.i198_crit_edge
  %add.ptr25.i194 = getelementptr i8, ptr %add.ptr25814.i169, i32 %shr816.i167
  %inc.i195 = add i32 %inc815.i168, 1
  %shr.i196 = lshr i32 %inc815.i168, 6
  %cmp26.i197 = icmp ugt ptr %add.ptr25.i194, %add.ptr5.i133
  br i1 %cmp26.i197, label %do.body.backedge.i198._last_literals.i381_crit_edge, label %do.body.backedge.i198.if.end29.i176_crit_edge, !prof !26

do.body.backedge.i198.if.end29.i176_crit_edge:    ; preds = %do.body.backedge.i198
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.i176

do.body.backedge.i198._last_literals.i381_crit_edge: ; preds = %do.body.backedge.i198
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i381

while.cond.preheader.i203:                        ; preds = %lor.rhs.i193
  %cmp58820.i200 = icmp ugt ptr %forwardIp.0812.i171, %anchor.0847.i162
  %cmp60822.i201 = icmp ugt ptr %add.ptr.i641.i178, %add.ptr.i127
  %and491823.i202 = and i1 %cmp58820.i200, %cmp60822.i201
  br i1 %and491823.i202, label %while.cond.preheader.i203.land.rhs.i211_crit_edge, label %while.cond.preheader.i203.while.end.i229_crit_edge

while.cond.preheader.i203.while.end.i229_crit_edge: ; preds = %while.cond.preheader.i203
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i229

while.cond.preheader.i203.land.rhs.i211_crit_edge: ; preds = %while.cond.preheader.i203
  br label %land.rhs.i211

land.rhs.i211:                                    ; preds = %while.body.i217.land.rhs.i211_crit_edge, %while.cond.preheader.i203.land.rhs.i211_crit_edge
  %match.2825.i206 = phi ptr [ %arrayidx64.i209, %while.body.i217.land.rhs.i211_crit_edge ], [ %add.ptr.i641.i178, %while.cond.preheader.i203.land.rhs.i211_crit_edge ]
  %ip.1824.i207 = phi ptr [ %arrayidx.i208, %while.body.i217.land.rhs.i211_crit_edge ], [ %forwardIp.0812.i171, %while.cond.preheader.i203.land.rhs.i211_crit_edge ]
  %arrayidx.i208 = getelementptr i8, ptr %ip.1824.i207, i32 -1
  %114 = ptrtoint ptr %arrayidx.i208 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx.i208, align 1
  %arrayidx64.i209 = getelementptr i8, ptr %match.2825.i206, i32 -1
  %116 = ptrtoint ptr %arrayidx64.i209 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx64.i209, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %115, i8 %117)
  %cmp66.i210 = icmp eq i8 %115, %117
  br i1 %cmp66.i210, label %while.body.i217, label %land.rhs.i211.while.end.i229_crit_edge

land.rhs.i211.while.end.i229_crit_edge:           ; preds = %land.rhs.i211
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i229

while.body.i217:                                  ; preds = %land.rhs.i211
  %cmp58.i213 = icmp ugt ptr %arrayidx.i208, %anchor.0847.i162
  %cmp60.i215 = icmp ugt ptr %arrayidx64.i209, %add.ptr.i127
  %and491.i216 = and i1 %cmp60.i215, %cmp58.i213
  br i1 %and491.i216, label %while.body.i217.land.rhs.i211_crit_edge, label %while.body.i217.while.end.i229_crit_edge

while.body.i217.while.end.i229_crit_edge:         ; preds = %while.body.i217
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i229

while.body.i217.land.rhs.i211_crit_edge:          ; preds = %while.body.i217
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i211

while.end.i229:                                   ; preds = %while.body.i217.while.end.i229_crit_edge, %land.rhs.i211.while.end.i229_crit_edge, %while.cond.preheader.i203.while.end.i229_crit_edge
  %ip.1.lcssa.i218 = phi ptr [ %forwardIp.0812.i171, %while.cond.preheader.i203.while.end.i229_crit_edge ], [ %ip.1824.i207, %land.rhs.i211.while.end.i229_crit_edge ], [ %arrayidx.i208, %while.body.i217.while.end.i229_crit_edge ]
  %match.2.lcssa.i219 = phi ptr [ %add.ptr.i641.i178, %while.cond.preheader.i203.while.end.i229_crit_edge ], [ %match.2825.i206, %land.rhs.i211.while.end.i229_crit_edge ], [ %arrayidx64.i209, %while.body.i217.while.end.i229_crit_edge ]
  %sub.ptr.lhs.cast76.i220.pre-phi = ptrtoint ptr %ip.1.lcssa.i218 to i32
  %sub.ptr.rhs.cast77.i221 = ptrtoint ptr %anchor.0847.i162 to i32
  %sub.ptr.sub78.i222 = sub i32 %sub.ptr.lhs.cast76.i220.pre-phi, %sub.ptr.rhs.cast77.i221
  %incdec.ptr79.i223 = getelementptr i8, ptr %op.0848.i161, i32 1
  %add.ptr82.i224 = getelementptr i8, ptr %op.0848.i161, i32 9
  %add.ptr83.i225 = getelementptr i8, ptr %add.ptr82.i224, i32 %sub.ptr.sub78.i222
  %div.i226 = udiv i32 %sub.ptr.sub78.i222, 255
  %add.ptr84.i227 = getelementptr i8, ptr %add.ptr83.i225, i32 %div.i226
  %cmp85.i228 = icmp ugt ptr %add.ptr84.i227, %add.ptr7.i135
  br i1 %cmp85.i228, label %while.end.i229.if.end38_crit_edge, label %if.end94.i231, !prof !29

while.end.i229.if.end38_crit_edge:                ; preds = %while.end.i229
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.end94.i231:                                    ; preds = %while.end.i229
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub78.i222)
  %cmp95.i230 = icmp ugt i32 %sub.ptr.sub78.i222, 14
  br i1 %cmp95.i230, label %if.then97.i234, label %if.else106.i247

if.then97.i234:                                   ; preds = %if.end94.i231
  %sub98.i232 = add i32 %sub.ptr.sub78.i222, -15
  %118 = ptrtoint ptr %op.0848.i161 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 -16, ptr %op.0848.i161, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %sub98.i232)
  %cmp100830.i233 = icmp sgt i32 %sub98.i232, 254
  br i1 %cmp100830.i233, label %for.body.preheader.i239, label %if.then97.i234.for.end.i244_crit_edge

if.then97.i234.for.end.i244_crit_edge:            ; preds = %if.then97.i234
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i244

for.body.preheader.i239:                          ; preds = %if.then97.i234
  call void @__sanitizer_cov_trace_pc() #6
  %smin.i235 = tail call i32 @llvm.smin.i32(i32 %sub98.i232, i32 509) #4
  %119 = add i32 %sub.ptr.lhs.cast76.i220.pre-phi, 239
  %120 = add i32 %smin.i235, %sub.ptr.rhs.cast77.i221
  %121 = sub i32 %119, %120
  %122 = udiv i32 %121, 255
  %123 = add nuw nsw i32 %122, 1
  %124 = call ptr @memset(ptr %incdec.ptr79.i223, i32 255, i32 %123)
  %.neg893.i236 = mul i32 %122, -255
  %uglygep.i237 = getelementptr i8, ptr %op.0848.i161, i32 2
  %uglygep887.i238 = getelementptr i8, ptr %uglygep.i237, i32 %122
  %125 = sub i32 -270, %sub.ptr.rhs.cast77.i221
  %126 = add i32 %125, %sub.ptr.lhs.cast76.i220.pre-phi
  %127 = add i32 %126, %.neg893.i236
  br label %for.end.i244

for.end.i244:                                     ; preds = %for.body.preheader.i239, %if.then97.i234.for.end.i244_crit_edge
  %op.1.lcssa.i240 = phi ptr [ %incdec.ptr79.i223, %if.then97.i234.for.end.i244_crit_edge ], [ %uglygep887.i238, %for.body.preheader.i239 ]
  %len.0.lcssa.i241 = phi i32 [ %sub98.i232, %if.then97.i234.for.end.i244_crit_edge ], [ %127, %for.body.preheader.i239 ]
  %conv104.i242 = trunc i32 %len.0.lcssa.i241 to i8
  %incdec.ptr105.i243 = getelementptr i8, ptr %op.1.lcssa.i240, i32 1
  %128 = ptrtoint ptr %op.1.lcssa.i240 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv104.i242, ptr %op.1.lcssa.i240, align 1
  br label %if.end109.i250

if.else106.i247:                                  ; preds = %if.end94.i231
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub78.tr.i245 = trunc i32 %sub.ptr.sub78.i222 to i8
  %conv108.i246 = shl nuw i8 %sub.ptr.sub78.tr.i245, 4
  %129 = ptrtoint ptr %op.0848.i161 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv108.i246, ptr %op.0848.i161, align 1
  br label %if.end109.i250

if.end109.i250:                                   ; preds = %if.else106.i247, %for.end.i244
  %op.2.i248 = phi ptr [ %incdec.ptr105.i243, %for.end.i244 ], [ %incdec.ptr79.i223, %if.else106.i247 ]
  %add.ptr110.i249 = getelementptr i8, ptr %op.2.i248, i32 %sub.ptr.sub78.i222
  br label %do.body.i.i259

do.body.i.i259:                                   ; preds = %do.body.i.i259.do.body.i.i259_crit_edge, %if.end109.i250
  %d.0.i.i251 = phi ptr [ %op.2.i248, %if.end109.i250 ], [ %add.ptr.i.i256, %do.body.i.i259.do.body.i.i259_crit_edge ]
  %s.0.i.i252 = phi ptr [ %anchor.0847.i162, %if.end109.i250 ], [ %add.ptr1.i.i257, %do.body.i.i259.do.body.i.i259_crit_edge ]
  %130 = ptrtoint ptr %s.0.i.i252 to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %s.0.val.i.i253 = load i32, ptr %s.0.i.i252, align 1
  %131 = getelementptr i8, ptr %s.0.i.i252, i32 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %s.0.val5.i.i254 = load i32, ptr %131, align 1
  %133 = ptrtoint ptr %d.0.i.i251 to i32
  call void @__asan_storeN_noabort(i32 %133, i32 4)
  store i32 %s.0.val.i.i253, ptr %d.0.i.i251, align 1
  %add.ptr8.i.i.i255 = getelementptr i32, ptr %d.0.i.i251, i32 1
  %134 = ptrtoint ptr %add.ptr8.i.i.i255 to i32
  call void @__asan_storeN_noabort(i32 %134, i32 4)
  store i32 %s.0.val5.i.i254, ptr %add.ptr8.i.i.i255, align 1
  %add.ptr.i.i256 = getelementptr i8, ptr %d.0.i.i251, i32 8
  %add.ptr1.i.i257 = getelementptr i8, ptr %s.0.i.i252, i32 8
  %cmp.i.i258 = icmp ult ptr %add.ptr.i.i256, %add.ptr110.i249
  br i1 %cmp.i.i258, label %do.body.i.i259.do.body.i.i259_crit_edge, label %do.body.i.i259._next_match.i272_crit_edge

do.body.i.i259._next_match.i272_crit_edge:        ; preds = %do.body.i.i259
  br label %_next_match.i272

do.body.i.i259.do.body.i.i259_crit_edge:          ; preds = %do.body.i.i259
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i259

_next_match.i272:                                 ; preds = %if.then233.i372, %do.body.i.i259._next_match.i272_crit_edge
  %ip.2.i260 = phi ptr [ %add.ptr151.i314, %if.then233.i372 ], [ %ip.1.lcssa.i218, %do.body.i.i259._next_match.i272_crit_edge ]
  %op.4.i262 = phi ptr [ %incdec.ptr234.i371, %if.then233.i372 ], [ %add.ptr110.i249, %do.body.i.i259._next_match.i272_crit_edge ]
  %match.3.i264 = phi ptr [ %add.ptr.i.i.i357, %if.then233.i372 ], [ %match.2.lcssa.i219, %do.body.i.i259._next_match.i272_crit_edge ]
  %token.0.i265 = phi ptr [ %op.7.ph.i342, %if.then233.i372 ], [ %op.0848.i161, %do.body.i.i259._next_match.i272_crit_edge ]
  %sub.ptr.lhs.cast115.i266 = ptrtoint ptr %ip.2.i260 to i32
  %sub.ptr.rhs.cast116.i267 = ptrtoint ptr %match.3.i264 to i32
  %sub.ptr.sub117.i268 = sub i32 %sub.ptr.lhs.cast115.i266, %sub.ptr.rhs.cast116.i267
  %conv118.i269 = trunc i32 %sub.ptr.sub117.i268 to i16
  %135 = tail call i16 @llvm.bswap.i16(i16 %conv118.i269) #4
  %136 = ptrtoint ptr %op.4.i262 to i32
  call void @__asan_storeN_noabort(i32 %136, i32 2)
  store i16 %135, ptr %op.4.i262, align 1
  %add.ptr119.i270 = getelementptr i8, ptr %op.4.i262, i32 2
  %add.ptr147.i273 = getelementptr i8, ptr %ip.2.i260, i32 4
  %add.ptr148.i274 = getelementptr i8, ptr %match.3.i264, i32 4
  %cmp59.i551.i275 = icmp ugt ptr %add.ptr.i550.i156, %add.ptr147.i273
  br i1 %cmp59.i551.i275, label %_next_match.i272.while.body.i558.i282_crit_edge, label %_next_match.i272.while.end.i570.i293_crit_edge, !prof !27

_next_match.i272.while.end.i570.i293_crit_edge:   ; preds = %_next_match.i272
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i570.i293

_next_match.i272.while.body.i558.i282_crit_edge:  ; preds = %_next_match.i272
  br label %while.body.i558.i282

while.body.i558.i282:                             ; preds = %cleanup.i565.i289.while.body.i558.i282_crit_edge, %_next_match.i272.while.body.i558.i282_crit_edge
  %pMatch.addr.061.i552.i276 = phi ptr [ %add.ptr5.i563.i287, %cleanup.i565.i289.while.body.i558.i282_crit_edge ], [ %add.ptr148.i274, %_next_match.i272.while.body.i558.i282_crit_edge ]
  %pIn.addr.060.i553.i277 = phi ptr [ %add.ptr4.i562.i286, %cleanup.i565.i289.while.body.i558.i282_crit_edge ], [ %add.ptr147.i273, %_next_match.i272.while.body.i558.i282_crit_edge ]
  %137 = ptrtoint ptr %pMatch.addr.061.i552.i276 to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %pMatch.addr.0.val.i554.i278 = load i32, ptr %pMatch.addr.061.i552.i276, align 1
  %138 = ptrtoint ptr %pIn.addr.060.i553.i277 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %pIn.addr.0.val.i555.i279 = load i32, ptr %pIn.addr.060.i553.i277, align 1
  %xor.i556.i280 = xor i32 %pIn.addr.0.val.i555.i279, %pMatch.addr.0.val.i554.i278
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i556.i280)
  %tobool3.not.i557.i281 = icmp eq i32 %xor.i556.i280, 0
  br i1 %tobool3.not.i557.i281, label %cleanup.i565.i289, label %cleanup.thread.i561.i285

cleanup.thread.i561.i285:                         ; preds = %while.body.i558.i282
  call void @__sanitizer_cov_trace_pc() #6
  %139 = tail call i32 @llvm.ctlz.i32(i32 %xor.i556.i280, i1 true) #4, !range !28
  %shr.i.i559.i283 = lshr i32 %139, 3
  %add.ptr7.i560.i284 = getelementptr i8, ptr %pIn.addr.060.i553.i277, i32 %shr.i.i559.i283
  br label %LZ4_count.exit590.i315

cleanup.i565.i289:                                ; preds = %while.body.i558.i282
  %add.ptr4.i562.i286 = getelementptr i8, ptr %pIn.addr.060.i553.i277, i32 4
  %add.ptr5.i563.i287 = getelementptr i8, ptr %pMatch.addr.061.i552.i276, i32 4
  %cmp.i564.i288 = icmp ult ptr %add.ptr4.i562.i286, %add.ptr.i550.i156
  br i1 %cmp.i564.i288, label %cleanup.i565.i289.while.body.i558.i282_crit_edge, label %cleanup.i565.i289.while.end.i570.i293_crit_edge, !prof !27

cleanup.i565.i289.while.end.i570.i293_crit_edge:  ; preds = %cleanup.i565.i289
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i570.i293

cleanup.i565.i289.while.body.i558.i282_crit_edge: ; preds = %cleanup.i565.i289
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i558.i282

while.end.i570.i293:                              ; preds = %cleanup.i565.i289.while.end.i570.i293_crit_edge, %_next_match.i272.while.end.i570.i293_crit_edge
  %pIn.addr.0.lcssa.i566.i290 = phi ptr [ %add.ptr147.i273, %_next_match.i272.while.end.i570.i293_crit_edge ], [ %add.ptr4.i562.i286, %cleanup.i565.i289.while.end.i570.i293_crit_edge ]
  %pMatch.addr.0.lcssa.i567.i291 = phi ptr [ %add.ptr148.i274, %_next_match.i272.while.end.i570.i293_crit_edge ], [ %add.ptr5.i563.i287, %cleanup.i565.i289.while.end.i570.i293_crit_edge ]
  %cmp9.i569.i292 = icmp ult ptr %pIn.addr.0.lcssa.i566.i290, %add.ptr8.i568.i157
  br i1 %cmp9.i569.i292, label %land.lhs.true.i574.i297, label %while.end.i570.i293.if.end18.i581.i304_crit_edge

while.end.i570.i293.if.end18.i581.i304_crit_edge: ; preds = %while.end.i570.i293
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i581.i304

land.lhs.true.i574.i297:                          ; preds = %while.end.i570.i293
  %140 = ptrtoint ptr %pMatch.addr.0.lcssa.i567.i291 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 2)
  %pMatch.addr.0.val53.i571.i294 = load i16, ptr %pMatch.addr.0.lcssa.i567.i291, align 1
  %141 = ptrtoint ptr %pIn.addr.0.lcssa.i566.i290 to i32
  call void @__asan_loadN_noabort(i32 %141, i32 2)
  %pIn.addr.0.val52.i572.i295 = load i16, ptr %pIn.addr.0.lcssa.i566.i290, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %pMatch.addr.0.val53.i571.i294, i16 %pIn.addr.0.val52.i572.i295)
  %cmp13.i573.i296 = icmp eq i16 %pMatch.addr.0.val53.i571.i294, %pIn.addr.0.val52.i572.i295
  br i1 %cmp13.i573.i296, label %if.then15.i577.i300, label %land.lhs.true.i574.i297.if.end18.i581.i304_crit_edge

land.lhs.true.i574.i297.if.end18.i581.i304_crit_edge: ; preds = %land.lhs.true.i574.i297
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i581.i304

if.then15.i577.i300:                              ; preds = %land.lhs.true.i574.i297
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i575.i298 = getelementptr i8, ptr %pIn.addr.0.lcssa.i566.i290, i32 2
  %add.ptr17.i576.i299 = getelementptr i8, ptr %pMatch.addr.0.lcssa.i567.i291, i32 2
  br label %if.end18.i581.i304

if.end18.i581.i304:                               ; preds = %if.then15.i577.i300, %land.lhs.true.i574.i297.if.end18.i581.i304_crit_edge, %while.end.i570.i293.if.end18.i581.i304_crit_edge
  %pIn.addr.2.i578.i301 = phi ptr [ %add.ptr16.i575.i298, %if.then15.i577.i300 ], [ %pIn.addr.0.lcssa.i566.i290, %land.lhs.true.i574.i297.if.end18.i581.i304_crit_edge ], [ %pIn.addr.0.lcssa.i566.i290, %while.end.i570.i293.if.end18.i581.i304_crit_edge ]
  %pMatch.addr.2.i579.i302 = phi ptr [ %add.ptr17.i576.i299, %if.then15.i577.i300 ], [ %pMatch.addr.0.lcssa.i567.i291, %land.lhs.true.i574.i297.if.end18.i581.i304_crit_edge ], [ %pMatch.addr.0.lcssa.i567.i291, %while.end.i570.i293.if.end18.i581.i304_crit_edge ]
  %cmp19.i580.i303 = icmp ult ptr %pIn.addr.2.i578.i301, %add.ptr6.i134
  br i1 %cmp19.i580.i303, label %land.lhs.true21.i585.i308, label %if.end18.i581.i304.LZ4_count.exit590.i315_crit_edge

if.end18.i581.i304.LZ4_count.exit590.i315_crit_edge: ; preds = %if.end18.i581.i304
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_count.exit590.i315

land.lhs.true21.i585.i308:                        ; preds = %if.end18.i581.i304
  call void @__sanitizer_cov_trace_pc() #6
  %142 = ptrtoint ptr %pMatch.addr.2.i579.i302 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %pMatch.addr.2.i579.i302, align 1
  %144 = ptrtoint ptr %pIn.addr.2.i578.i301 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %pIn.addr.2.i578.i301, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %143, i8 %145)
  %cmp24.i582.i305 = icmp eq i8 %143, %145
  %spec.select.idx.i583.i306 = zext i1 %cmp24.i582.i305 to i32
  %spec.select.i584.i307 = getelementptr i8, ptr %pIn.addr.2.i578.i301, i32 %spec.select.idx.i583.i306
  br label %LZ4_count.exit590.i315

LZ4_count.exit590.i315:                           ; preds = %land.lhs.true21.i585.i308, %if.end18.i581.i304.LZ4_count.exit590.i315_crit_edge, %cleanup.thread.i561.i285
  %add.ptr7.sink.i586.i309 = phi ptr [ %add.ptr7.i560.i284, %cleanup.thread.i561.i285 ], [ %pIn.addr.2.i578.i301, %if.end18.i581.i304.LZ4_count.exit590.i315_crit_edge ], [ %spec.select.i584.i307, %land.lhs.true21.i585.i308 ]
  %sub.ptr.lhs.cast.i587.i310 = ptrtoint ptr %add.ptr7.sink.i586.i309 to i32
  %sub.ptr.rhs.cast.i588.i311 = ptrtoint ptr %add.ptr147.i273 to i32
  %sub.ptr.sub.i589.i312 = sub i32 %sub.ptr.lhs.cast.i587.i310, %sub.ptr.rhs.cast.i588.i311
  %add150.i313 = add i32 %sub.ptr.sub.i589.i312, 4
  %add.ptr151.i314 = getelementptr i8, ptr %ip.2.i260, i32 %add150.i313
  %add.ptr155.i316 = getelementptr i8, ptr %op.4.i262, i32 8
  %shr156.i317 = lshr i32 %sub.ptr.sub.i589.i312, 8
  %add.ptr157.i318 = getelementptr i8, ptr %add.ptr155.i316, i32 %shr156.i317
  %cmp158.i319 = icmp ugt ptr %add.ptr157.i318, %add.ptr7.i135
  br i1 %cmp158.i319, label %LZ4_count.exit590.i315.if.end38_crit_edge, label %if.end167.i321, !prof !29

LZ4_count.exit590.i315.if.end38_crit_edge:        ; preds = %LZ4_count.exit590.i315
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.end167.i321:                                   ; preds = %LZ4_count.exit590.i315
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i589.i312)
  %cmp168.i320 = icmp ugt i32 %sub.ptr.sub.i589.i312, 14
  %146 = ptrtoint ptr %token.0.i265 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %token.0.i265, align 1
  br i1 %cmp168.i320, label %if.then170.i325, label %if.else186.i341

if.then170.i325:                                  ; preds = %if.end167.i321
  %add172.i322 = add i8 %147, 15
  %148 = ptrtoint ptr %token.0.i265 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %add172.i322, ptr %token.0.i265, align 1
  %sub174.i323 = add i32 %sub.ptr.sub.i589.i312, -15
  %149 = ptrtoint ptr %add.ptr119.i270 to i32
  call void @__asan_storeN_noabort(i32 %149, i32 4)
  store i32 -1, ptr %add.ptr119.i270, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1019, i32 %sub174.i323)
  %cmp176835.i324 = icmp ugt i32 %sub174.i323, 1019
  br i1 %cmp176835.i324, label %while.body178.preheader.i329, label %if.then170.i325.while.end181.i339_crit_edge

if.then170.i325.while.end181.i339_crit_edge:      ; preds = %if.then170.i325
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end181.i339

while.body178.preheader.i329:                     ; preds = %if.then170.i325
  call void @__sanitizer_cov_trace_pc() #6
  %uglygep888.i326 = getelementptr i8, ptr %op.4.i262, i32 6
  %150 = add i32 %sub.ptr.sub.i589.i312, -1035
  %151 = udiv i32 %150, 1020
  %152 = shl nuw nsw i32 %151, 2
  %153 = add nuw nsw i32 %152, 4
  %154 = call ptr @memset(ptr %uglygep888.i326, i32 255, i32 %153)
  %uglygep889.i327 = getelementptr i8, ptr %uglygep888.i326, i32 %152
  %.neg892.i328 = mul i32 %151, -1020
  %155 = add i32 %.neg892.i328, %150
  br label %while.end181.i339

while.end181.i339:                                ; preds = %while.body178.preheader.i329, %if.then170.i325.while.end181.i339_crit_edge
  %op.5.lcssa.i330 = phi ptr [ %add.ptr119.i270, %if.then170.i325.while.end181.i339_crit_edge ], [ %uglygep889.i327, %while.body178.preheader.i329 ]
  %matchCode.2.lcssa.i331 = phi i32 [ %sub174.i323, %if.then170.i325.while.end181.i339_crit_edge ], [ %155, %while.body178.preheader.i329 ]
  %div182.lhs.trunc.i332 = trunc i32 %matchCode.2.lcssa.i331 to i16
  %div182.lhs.trunc.i332.frozen = freeze i16 %div182.lhs.trunc.i332
  %div182784.i333 = udiv i16 %div182.lhs.trunc.i332.frozen, 255
  %div182.zext.i334 = zext i16 %div182784.i333 to i32
  %add.ptr183.i335 = getelementptr i8, ptr %op.5.lcssa.i330, i32 %div182.zext.i334
  %156 = mul i16 %div182784.i333, 255
  %rem785.i336.decomposed = sub i16 %div182.lhs.trunc.i332.frozen, %156
  %conv184.i337 = trunc i16 %rem785.i336.decomposed to i8
  %incdec.ptr185.i338 = getelementptr i8, ptr %add.ptr183.i335, i32 1
  %157 = ptrtoint ptr %add.ptr183.i335 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv184.i337, ptr %add.ptr183.i335, align 1
  br label %cleanup.cont195.i344

if.else186.i341:                                  ; preds = %if.end167.i321
  call void @__sanitizer_cov_trace_pc() #6
  %158 = trunc i32 %sub.ptr.sub.i589.i312 to i8
  %conv191.i340 = add i8 %147, %158
  %159 = ptrtoint ptr %token.0.i265 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv191.i340, ptr %token.0.i265, align 1
  br label %cleanup.cont195.i344

cleanup.cont195.i344:                             ; preds = %if.else186.i341, %while.end181.i339
  %op.7.ph.i342 = phi ptr [ %add.ptr119.i270, %if.else186.i341 ], [ %incdec.ptr185.i338, %while.end181.i339 ]
  %cmp196.i343 = icmp ugt ptr %add.ptr151.i314, %add.ptr5.i133
  br i1 %cmp196.i343, label %cleanup.cont195.i344._last_literals.i381_crit_edge, label %if.end199.i349

cleanup.cont195.i344._last_literals.i381_crit_edge: ; preds = %cleanup.cont195.i344
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i381

if.end199.i349:                                   ; preds = %cleanup.cont195.i344
  %add.ptr200.i345 = getelementptr i8, ptr %add.ptr151.i314, i32 -2
  %160 = ptrtoint ptr %add.ptr200.i345 to i32
  call void @__asan_loadN_noabort(i32 %160, i32 4)
  %p.val.i591.i346 = load i32, ptr %add.ptr200.i345, align 1
  %mul.i.i.i593.i347 = mul i32 %p.val.i591.i346, -1640531535
  %retval.0.i.i.i595.i348 = lshr i32 %mul.i.i.i593.i347, 20
  %sub.ptr.lhs.cast.i.i598.i350 = ptrtoint ptr %add.ptr200.i345 to i32
  %sub.ptr.sub.i.i600.i351 = sub i32 %sub.ptr.lhs.cast.i.i598.i350, %sub.ptr.rhs.cast.i.i.i147
  %arrayidx3.i.i601.i352 = getelementptr i32, ptr %LZ4_stream, i32 %retval.0.i.i.i595.i348
  %161 = ptrtoint ptr %arrayidx3.i.i601.i352 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %sub.ptr.sub.i.i600.i351, ptr %arrayidx3.i.i601.i352, align 4
  %162 = ptrtoint ptr %add.ptr151.i314 to i32
  call void @__asan_loadN_noabort(i32 %162, i32 4)
  %ip.4.val502719.i353 = load i32, ptr %add.ptr151.i314, align 1
  %mul.i.i.i611720.i354 = mul i32 %ip.4.val502719.i353, -1640531535
  %retval.0.i.i.i613721.i355 = lshr i32 %mul.i.i.i611720.i354, 20
  %arrayidx4.i.i.i356 = getelementptr i32, ptr %LZ4_stream, i32 %retval.0.i.i.i613721.i355
  %163 = ptrtoint ptr %arrayidx4.i.i.i356 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx4.i.i.i356, align 4
  %add.ptr.i.i.i357 = getelementptr i8, ptr %add.ptr17.i140, i32 %164
  %sub.ptr.lhs.cast.i.i625.i361 = ptrtoint ptr %add.ptr151.i314 to i32
  %sub.ptr.sub.i.i627.i362 = sub i32 %sub.ptr.lhs.cast.i.i625.i361, %sub.ptr.rhs.cast.i.i.i147
  store i32 %sub.ptr.sub.i.i627.i362, ptr %arrayidx4.i.i.i356, align 4
  %add.ptr224.i364 = getelementptr i8, ptr %add.ptr.i.i.i357, i32 65535
  %cmp225.not.i365 = icmp ult ptr %add.ptr224.i364, %add.ptr151.i314
  br i1 %cmp225.not.i365, label %if.end199.i349.cleanup238.i375_crit_edge, label %land.lhs.true227.i370

if.end199.i349.cleanup238.i375_crit_edge:         ; preds = %if.end199.i349
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup238.i375

land.lhs.true227.i370:                            ; preds = %if.end199.i349
  %165 = ptrtoint ptr %add.ptr.i.i.i357 to i32
  call void @__asan_loadN_noabort(i32 %165, i32 4)
  %add.ptr228.val.i367 = load i32, ptr %add.ptr.i.i.i357, align 1
  %166 = ptrtoint ptr %add.ptr151.i314 to i32
  call void @__asan_loadN_noabort(i32 %166, i32 4)
  %ip.4.val.i368 = load i32, ptr %add.ptr151.i314, align 1
  %cmp231.i369 = icmp eq i32 %add.ptr228.val.i367, %ip.4.val.i368
  br i1 %cmp231.i369, label %if.then233.i372, label %land.lhs.true227.i370.cleanup238.i375_crit_edge

land.lhs.true227.i370.cleanup238.i375_crit_edge:  ; preds = %land.lhs.true227.i370
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup238.i375

if.then233.i372:                                  ; preds = %land.lhs.true227.i370
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr234.i371 = getelementptr i8, ptr %op.7.ph.i342, i32 1
  %167 = ptrtoint ptr %op.7.ph.i342 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %op.7.ph.i342, align 1
  br label %_next_match.i272

cleanup238.i375:                                  ; preds = %land.lhs.true227.i370.cleanup238.i375_crit_edge, %if.end199.i349.cleanup238.i375_crit_edge
  %add.ptr25806.i373 = getelementptr i8, ptr %add.ptr151.i314, i32 2
  %cmp26809.i374 = icmp ugt ptr %add.ptr25806.i373, %add.ptr5.i133
  br i1 %cmp26809.i374, label %cleanup238.i375._last_literals.i381_crit_edge, label %cleanup238.i375.if.end29.lr.ph.i166_crit_edge, !prof !26

cleanup238.i375.if.end29.lr.ph.i166_crit_edge:    ; preds = %cleanup238.i375
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.lr.ph.i166

cleanup238.i375._last_literals.i381_crit_edge:    ; preds = %cleanup238.i375
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i381

_last_literals.i381:                              ; preds = %cleanup238.i375._last_literals.i381_crit_edge, %cleanup.cont195.i344._last_literals.i381_crit_edge, %do.body.backedge.i198._last_literals.i381_crit_edge, %if.end24.i146._last_literals.i381_crit_edge, %if.end.i137._last_literals.i381_crit_edge
  %anchor.3.i376 = phi ptr [ %source, %if.end.i137._last_literals.i381_crit_edge ], [ %source, %if.end24.i146._last_literals.i381_crit_edge ], [ %add.ptr151.i314, %cleanup.cont195.i344._last_literals.i381_crit_edge ], [ %anchor.0847.i162, %do.body.backedge.i198._last_literals.i381_crit_edge ], [ %add.ptr151.i314, %cleanup238.i375._last_literals.i381_crit_edge ]
  %op.9.i377 = phi ptr [ %dest, %if.end.i137._last_literals.i381_crit_edge ], [ %dest, %if.end24.i146._last_literals.i381_crit_edge ], [ %op.7.ph.i342, %cleanup.cont195.i344._last_literals.i381_crit_edge ], [ %op.0848.i161, %do.body.backedge.i198._last_literals.i381_crit_edge ], [ %op.7.ph.i342, %cleanup238.i375._last_literals.i381_crit_edge ]
  %sub.ptr.lhs.cast243.i378 = ptrtoint ptr %add.ptr8 to i32
  %sub.ptr.rhs.cast244.i379 = ptrtoint ptr %anchor.3.i376 to i32
  %sub.ptr.sub245.i380 = sub i32 %sub.ptr.lhs.cast243.i378, %sub.ptr.rhs.cast244.i379
  %sub.ptr.lhs.cast248.i382 = ptrtoint ptr %op.9.i377 to i32
  %sub.ptr.rhs.cast249.i383 = ptrtoint ptr %dest to i32
  %sub254.i384 = add i32 %sub.ptr.sub245.i380, 240
  %div255.i385 = udiv i32 %sub254.i384, 255
  %sub.ptr.sub250.i386 = sub i32 1, %sub.ptr.rhs.cast249.i383
  %add251.i387 = add i32 %sub.ptr.sub250.i386, %sub.ptr.lhs.cast248.i382
  %add252.i388 = add i32 %add251.i387, %sub.ptr.sub245.i380
  %add256.i389 = add i32 %add252.i388, %div255.i385
  call void @__sanitizer_cov_trace_cmp4(i32 %add256.i389, i32 %maxOutputSize)
  %cmp257.i390 = icmp ugt i32 %add256.i389, %maxOutputSize
  br i1 %cmp257.i390, label %_last_literals.i381.if.end38_crit_edge, label %if.end260.i392

_last_literals.i381.if.end38_crit_edge:           ; preds = %_last_literals.i381
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.end260.i392:                                   ; preds = %_last_literals.i381
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub245.i380)
  %cmp261.i391 = icmp ugt i32 %sub.ptr.sub245.i380, 14
  br i1 %cmp261.i391, label %if.then263.i396, label %if.else276.i406

if.then263.i396:                                  ; preds = %if.end260.i392
  %sub264.i393 = add i32 %sub.ptr.sub245.i380, -15
  %168 = ptrtoint ptr %op.9.i377 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 -16, ptr %op.9.i377, align 1
  %op.10855.i394 = getelementptr i8, ptr %op.9.i377, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %sub264.i393)
  %cmp267856.i395 = icmp ugt i32 %sub264.i393, 254
  br i1 %cmp267856.i395, label %for.body269.preheader.i399, label %if.then263.i396.for.end273.i403_crit_edge

if.then263.i396.for.end273.i403_crit_edge:        ; preds = %if.then263.i396
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end273.i403

for.body269.preheader.i399:                       ; preds = %if.then263.i396
  call void @__sanitizer_cov_trace_pc() #6
  %169 = add i32 %inputSize, -270
  %170 = add i32 %169, %source890.i124
  %171 = sub i32 %170, %sub.ptr.rhs.cast244.i379
  %172 = udiv i32 %171, 255
  %173 = add nuw nsw i32 %172, 1
  %174 = call ptr @memset(ptr %op.10855.i394, i32 255, i32 %173)
  %.neg.i397 = mul i32 %172, -255
  %175 = add nuw nsw i32 %172, 2
  %176 = add i32 %.neg.i397, %171
  %uglygep891.i398 = getelementptr i8, ptr %op.9.i377, i32 %175
  br label %for.end273.i403

for.end273.i403:                                  ; preds = %for.body269.preheader.i399, %if.then263.i396.for.end273.i403_crit_edge
  %accumulator.0.lcssa.i400 = phi i32 [ %sub264.i393, %if.then263.i396.for.end273.i403_crit_edge ], [ %176, %for.body269.preheader.i399 ]
  %op.10.lcssa.i401 = phi ptr [ %op.10855.i394, %if.then263.i396.for.end273.i403_crit_edge ], [ %uglygep891.i398, %for.body269.preheader.i399 ]
  %conv274.i402 = trunc i32 %accumulator.0.lcssa.i400 to i8
  %177 = ptrtoint ptr %op.10.lcssa.i401 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %conv274.i402, ptr %op.10.lcssa.i401, align 1
  br label %cleanup.cont284.i413

if.else276.i406:                                  ; preds = %if.end260.i392
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub245.tr.i404 = trunc i32 %sub.ptr.sub245.i380 to i8
  %conv278.i405 = shl nuw i8 %sub.ptr.sub245.tr.i404, 4
  %178 = ptrtoint ptr %op.9.i377 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %conv278.i405, ptr %op.9.i377, align 1
  br label %cleanup.cont284.i413

cleanup.cont284.i413:                             ; preds = %if.else276.i406, %for.end273.i403
  %op.10.pn.i407 = phi ptr [ %op.10.lcssa.i401, %for.end273.i403 ], [ %op.9.i377, %if.else276.i406 ]
  %op.11.i408 = getelementptr i8, ptr %op.10.pn.i407, i32 1
  %179 = call ptr @memcpy(ptr %op.11.i408, ptr %anchor.3.i376, i32 %sub.ptr.sub245.i380)
  %add.ptr281.i409 = getelementptr i8, ptr %op.11.i408, i32 %sub.ptr.sub245.i380
  %sub.ptr.lhs.cast285.i410 = ptrtoint ptr %add.ptr281.i409 to i32
  %sub.ptr.sub287.i412 = sub i32 %sub.ptr.lhs.cast285.i410, %sub.ptr.rhs.cast249.i383
  br label %if.end38

if.end38:                                         ; preds = %cleanup.cont284.i413, %_last_literals.i381.if.end38_crit_edge, %LZ4_count.exit590.i315.if.end38_crit_edge, %while.end.i229.if.end38_crit_edge, %if.else.if.end38_crit_edge, %cleanup.cont284.i, %_last_literals.i.if.end38_crit_edge, %LZ4_count.exit590.i.if.end38_crit_edge, %while.end.i.if.end38_crit_edge, %if.then36.if.end38_crit_edge
  %result.0 = phi i32 [ %sub.ptr.sub287.i, %cleanup.cont284.i ], [ 0, %if.then36.if.end38_crit_edge ], [ 0, %_last_literals.i.if.end38_crit_edge ], [ %sub.ptr.sub287.i412, %cleanup.cont284.i413 ], [ 0, %if.else.if.end38_crit_edge ], [ 0, %_last_literals.i381.if.end38_crit_edge ], [ 0, %LZ4_count.exit590.i.if.end38_crit_edge ], [ 0, %while.end.i.if.end38_crit_edge ], [ 0, %LZ4_count.exit590.i315.if.end38_crit_edge ], [ 0, %while.end.i229.if.end38_crit_edge ]
  %180 = ptrtoint ptr %dictSize to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %dictSize, align 4
  %add = add i32 %181, %inputSize
  br label %cleanup.sink.split

if.end42:                                         ; preds = %if.end28
  br i1 %cmp32, label %land.lhs.true46, label %if.end42.if.else52_crit_edge

if.end42.if.else52_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else52

land.lhs.true46:                                  ; preds = %if.end42
  %182 = ptrtoint ptr %currentOffset.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %currentOffset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %183)
  %cmp49 = icmp ult i32 %27, %183
  br i1 %cmp49, label %if.then50, label %land.lhs.true46.if.else52_crit_edge

land.lhs.true46.if.else52_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else52

if.then50:                                        ; preds = %land.lhs.true46
  %source890.i416 = ptrtoint ptr %source to i32
  %idx.neg.i418 = sub nsw i32 0, %27
  %add.ptr.i419 = getelementptr i8, ptr %source, i32 %idx.neg.i418
  %184 = ptrtoint ptr %dictionary to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dictionary, align 4
  %add.ptr3.i421 = getelementptr i8, ptr %185, i32 %27
  %sub.ptr.lhs.cast.i422 = ptrtoint ptr %add.ptr3.i421 to i32
  %sub.ptr.sub.i423 = sub i32 %sub.ptr.lhs.cast.i422, %source890.i416
  %add.ptr5.i425 = getelementptr i8, ptr %add.ptr8, i32 -12
  %add.ptr6.i426 = getelementptr i8, ptr %add.ptr8, i32 -5
  %add.ptr7.i427 = getelementptr i8, ptr %dest, i32 %maxOutputSize
  call void @__sanitizer_cov_trace_const_cmp4(i32 2113929216, i32 %inputSize)
  %cmp.i428 = icmp ugt i32 %inputSize, 2113929216
  br i1 %cmp.i428, label %if.then50.if.end54_crit_edge, label %if.end.i429

if.then50.if.end54_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.end.i429:                                      ; preds = %if.then50
  %idx.neg16.i431 = sub i32 0, %183
  %add.ptr17.i432 = getelementptr i8, ptr %source, i32 %idx.neg16.i431
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inputSize)
  %cmp22.i434 = icmp ult i32 %inputSize, 13
  br i1 %cmp22.i434, label %if.end.i429._last_literals.i674_crit_edge, label %if.end24.i438

if.end.i429._last_literals.i674_crit_edge:        ; preds = %if.end.i429
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i674

if.end24.i438:                                    ; preds = %if.end.i429
  %186 = ptrtoint ptr %source to i32
  call void @__asan_loadN_noabort(i32 %186, i32 4)
  %p.val.i.i435 = load i32, ptr %source, align 1
  %mul.i.i.i.i436 = mul i32 %p.val.i.i435, -1640531535
  %retval.0.i.i.i.i437 = lshr i32 %mul.i.i.i.i436, 20
  %sub.ptr.rhs.cast.i.i.i439 = ptrtoint ptr %add.ptr17.i432 to i32
  %arrayidx3.i.i.i441 = getelementptr i32, ptr %LZ4_stream, i32 %retval.0.i.i.i.i437
  %187 = ptrtoint ptr %arrayidx3.i.i.i441 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %183, ptr %arrayidx3.i.i.i441, align 4
  %shl.i442 = shl i32 %20, 6
  %inc807.i443 = or i32 %shl.i442, 1
  %shr808.i444 = and i32 %20, 67108863
  %add.ptr25806844.i445 = getelementptr i8, ptr %source, i32 2
  %cmp26809845.i446 = icmp ugt ptr %add.ptr25806844.i445, %add.ptr5.i425
  br i1 %cmp26809845.i446, label %if.end24.i438._last_literals.i674_crit_edge, label %if.end29.lr.ph.lr.ph.i450, !prof !26

if.end24.i438._last_literals.i674_crit_edge:      ; preds = %if.end24.i438
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i674

if.end29.lr.ph.lr.ph.i450:                        ; preds = %if.end24.i438
  %add.ptr.i550.i448 = getelementptr i8, ptr %add.ptr6.i426, i32 -3
  %add.ptr8.i568.i449 = getelementptr i8, ptr %add.ptr6.i426, i32 -1
  br label %if.end29.lr.ph.i458

if.end29.lr.ph.i458:                              ; preds = %cleanup238.i668.if.end29.lr.ph.i458_crit_edge, %if.end29.lr.ph.lr.ph.i450
  %add.ptr25806852.i451 = phi ptr [ %add.ptr25806844.i445, %if.end29.lr.ph.lr.ph.i450 ], [ %add.ptr25806.i666, %cleanup238.i668.if.end29.lr.ph.i458_crit_edge ]
  %op.0848.i453 = phi ptr [ %dest, %if.end29.lr.ph.lr.ph.i450 ], [ %op.7.ph.i634, %cleanup238.i668.if.end29.lr.ph.i458_crit_edge ]
  %anchor.0847.i454 = phi ptr [ %source, %if.end29.lr.ph.lr.ph.i450 ], [ %ip.4.i, %cleanup238.i668.if.end29.lr.ph.i458_crit_edge ]
  %ip.0850.i456 = getelementptr i8, ptr %anchor.0847.i454, i32 1
  %188 = ptrtoint ptr %ip.0850.i456 to i32
  call void @__asan_loadN_noabort(i32 %188, i32 4)
  %mul.i.i.pn.pn804842.pn.in.i457 = load i32, ptr %ip.0850.i456, align 1
  br label %if.end29.i468

if.end29.i468:                                    ; preds = %do.body.backedge.i490.if.end29.i468_crit_edge, %if.end29.lr.ph.i458
  %shr816.i459 = phi i32 [ %shr808.i444, %if.end29.lr.ph.i458 ], [ %shr.i488, %do.body.backedge.i490.if.end29.i468_crit_edge ]
  %inc815.i460 = phi i32 [ %inc807.i443, %if.end29.lr.ph.i458 ], [ %inc.i487, %do.body.backedge.i490.if.end29.i468_crit_edge ]
  %add.ptr25814.i461 = phi ptr [ %add.ptr25806852.i451, %if.end29.lr.ph.i458 ], [ %add.ptr25.i486, %do.body.backedge.i490.if.end29.i468_crit_edge ]
  %mul.i.i.pn.pn804842.pn.pn.in.i462 = phi i32 [ %mul.i.i.pn.pn804842.pn.in.i457, %if.end29.lr.ph.i458 ], [ %add.ptr25.val674.i474, %do.body.backedge.i490.if.end29.i468_crit_edge ]
  %forwardIp.0812.i463 = phi ptr [ %ip.0850.i456, %if.end29.lr.ph.i458 ], [ %add.ptr25814.i461, %do.body.backedge.i490.if.end29.i468_crit_edge ]
  %mul.i.i.pn.pn804842.pn.pn.i466 = mul i32 %mul.i.i.pn.pn804842.pn.pn.in.i462, -1640531535
  %forwardH.1813.i467 = lshr i32 %mul.i.i.pn.pn804842.pn.pn.i466, 20
  %arrayidx4.i.i469 = getelementptr i32, ptr %LZ4_stream, i32 %forwardH.1813.i467
  %189 = ptrtoint ptr %arrayidx4.i.i469 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx4.i.i469, align 4
  %add.ptr.i641.i470 = getelementptr i8, ptr %add.ptr17.i432, i32 %190
  %191 = ptrtoint ptr %add.ptr25814.i461 to i32
  call void @__asan_loadN_noabort(i32 %191, i32 4)
  %add.ptr25.val674.i474 = load i32, ptr %add.ptr25814.i461, align 1
  %sub.ptr.lhs.cast.i644.i475 = ptrtoint ptr %forwardIp.0812.i463 to i32
  %sub.ptr.sub.i646.i476 = sub i32 %sub.ptr.lhs.cast.i644.i475, %sub.ptr.rhs.cast.i.i.i439
  store i32 %sub.ptr.sub.i646.i476, ptr %arrayidx4.i.i469, align 4
  %cmp43.i477 = icmp ult ptr %add.ptr.i641.i470, %add.ptr.i419
  %add.ptr47.i478 = getelementptr i8, ptr %add.ptr.i641.i470, i32 65535
  %cmp48.i479 = icmp ult ptr %add.ptr47.i478, %forwardIp.0812.i463
  %or.cond1109 = or i1 %cmp43.i477, %cmp48.i479
  br i1 %or.cond1109, label %if.end29.i468.do.body.backedge.i490_crit_edge, label %lor.rhs.i485

if.end29.i468.do.body.backedge.i490_crit_edge:    ; preds = %if.end29.i468
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.backedge.i490

lor.rhs.i485:                                     ; preds = %if.end29.i468
  %cmp35669.i471 = icmp ult ptr %add.ptr.i641.i470, %source
  %sub.ptr.sub.671.i473 = select i1 %cmp35669.i471, i32 %sub.ptr.sub.i423, i32 0
  %add.ptr49.i481 = getelementptr i8, ptr %add.ptr.i641.i470, i32 %sub.ptr.sub.671.i473
  %192 = ptrtoint ptr %add.ptr49.i481 to i32
  call void @__asan_loadN_noabort(i32 %192, i32 4)
  %add.ptr49.val.i482 = load i32, ptr %add.ptr49.i481, align 1
  %193 = ptrtoint ptr %forwardIp.0812.i463 to i32
  call void @__asan_loadN_noabort(i32 %193, i32 4)
  %forwardIp.0.val.i483 = load i32, ptr %forwardIp.0812.i463, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.ptr49.val.i482, i32 %forwardIp.0.val.i483)
  %cmp52.not.i484 = icmp eq i32 %add.ptr49.val.i482, %forwardIp.0.val.i483
  br i1 %cmp52.not.i484, label %while.cond.preheader.i495, label %lor.rhs.i485.do.body.backedge.i490_crit_edge

lor.rhs.i485.do.body.backedge.i490_crit_edge:     ; preds = %lor.rhs.i485
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.backedge.i490

do.body.backedge.i490:                            ; preds = %lor.rhs.i485.do.body.backedge.i490_crit_edge, %if.end29.i468.do.body.backedge.i490_crit_edge
  %add.ptr25.i486 = getelementptr i8, ptr %add.ptr25814.i461, i32 %shr816.i459
  %inc.i487 = add i32 %inc815.i460, 1
  %shr.i488 = lshr i32 %inc815.i460, 6
  %cmp26.i489 = icmp ugt ptr %add.ptr25.i486, %add.ptr5.i425
  br i1 %cmp26.i489, label %do.body.backedge.i490._last_literals.i674_crit_edge, label %do.body.backedge.i490.if.end29.i468_crit_edge, !prof !26

do.body.backedge.i490.if.end29.i468_crit_edge:    ; preds = %do.body.backedge.i490
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.i468

do.body.backedge.i490._last_literals.i674_crit_edge: ; preds = %do.body.backedge.i490
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i674

while.cond.preheader.i495:                        ; preds = %lor.rhs.i485
  %add.ptr49.i481.le = getelementptr i8, ptr %add.ptr.i641.i470, i32 %sub.ptr.sub.671.i473
  %.source670.i472.le = select i1 %cmp35669.i471, ptr %185, ptr %source
  %cmp58820.i492 = icmp ugt ptr %forwardIp.0812.i463, %anchor.0847.i454
  %cmp60822.i493 = icmp ugt ptr %add.ptr49.i481.le, %.source670.i472.le
  %and491823.i494 = and i1 %cmp58820.i492, %cmp60822.i493
  br i1 %and491823.i494, label %land.rhs.lr.ph.i497, label %while.cond.preheader.i495.while.end.i521_crit_edge

while.cond.preheader.i495.while.end.i521_crit_edge: ; preds = %while.cond.preheader.i495
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i521

land.rhs.lr.ph.i497:                              ; preds = %while.cond.preheader.i495
  %sub.i496 = add i32 %sub.ptr.sub.671.i473, -1
  br label %land.rhs.i503

land.rhs.i503:                                    ; preds = %while.body.i509.land.rhs.i503_crit_edge, %land.rhs.lr.ph.i497
  %match.2825.i498 = phi ptr [ %add.ptr.i641.i470, %land.rhs.lr.ph.i497 ], [ %incdec.ptr75.i504, %while.body.i509.land.rhs.i503_crit_edge ]
  %ip.1824.i499 = phi ptr [ %forwardIp.0812.i463, %land.rhs.lr.ph.i497 ], [ %arrayidx.i500, %while.body.i509.land.rhs.i503_crit_edge ]
  %arrayidx.i500 = getelementptr i8, ptr %ip.1824.i499, i32 -1
  %194 = ptrtoint ptr %arrayidx.i500 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx.i500, align 1
  %arrayidx64.i501 = getelementptr i8, ptr %match.2825.i498, i32 %sub.i496
  %196 = ptrtoint ptr %arrayidx64.i501 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx64.i501, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %195, i8 %197)
  %cmp66.i502 = icmp eq i8 %195, %197
  br i1 %cmp66.i502, label %while.body.i509, label %land.rhs.i503.while.end.i521_crit_edge

land.rhs.i503.while.end.i521_crit_edge:           ; preds = %land.rhs.i503
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i521

while.body.i509:                                  ; preds = %land.rhs.i503
  %incdec.ptr75.i504 = getelementptr i8, ptr %match.2825.i498, i32 -1
  %cmp58.i505 = icmp ugt ptr %arrayidx.i500, %anchor.0847.i454
  %add.ptr59.i506 = getelementptr i8, ptr %incdec.ptr75.i504, i32 %sub.ptr.sub.671.i473
  %cmp60.i507 = icmp ugt ptr %add.ptr59.i506, %.source670.i472.le
  %and491.i508 = and i1 %cmp58.i505, %cmp60.i507
  br i1 %and491.i508, label %while.body.i509.land.rhs.i503_crit_edge, label %while.body.i509.while.end.i521_crit_edge

while.body.i509.while.end.i521_crit_edge:         ; preds = %while.body.i509
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i521

while.body.i509.land.rhs.i503_crit_edge:          ; preds = %while.body.i509
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i503

while.end.i521:                                   ; preds = %while.body.i509.while.end.i521_crit_edge, %land.rhs.i503.while.end.i521_crit_edge, %while.cond.preheader.i495.while.end.i521_crit_edge
  %ip.1.lcssa.i510 = phi ptr [ %forwardIp.0812.i463, %while.cond.preheader.i495.while.end.i521_crit_edge ], [ %ip.1824.i499, %land.rhs.i503.while.end.i521_crit_edge ], [ %arrayidx.i500, %while.body.i509.while.end.i521_crit_edge ]
  %match.2.lcssa.i511 = phi ptr [ %add.ptr.i641.i470, %while.cond.preheader.i495.while.end.i521_crit_edge ], [ %match.2825.i498, %land.rhs.i503.while.end.i521_crit_edge ], [ %incdec.ptr75.i504, %while.body.i509.while.end.i521_crit_edge ]
  %sub.ptr.lhs.cast76.i512.pre-phi = ptrtoint ptr %ip.1.lcssa.i510 to i32
  %sub.ptr.rhs.cast77.i513 = ptrtoint ptr %anchor.0847.i454 to i32
  %sub.ptr.sub78.i514 = sub i32 %sub.ptr.lhs.cast76.i512.pre-phi, %sub.ptr.rhs.cast77.i513
  %incdec.ptr79.i515 = getelementptr i8, ptr %op.0848.i453, i32 1
  %add.ptr82.i516 = getelementptr i8, ptr %op.0848.i453, i32 9
  %add.ptr83.i517 = getelementptr i8, ptr %add.ptr82.i516, i32 %sub.ptr.sub78.i514
  %div.i518 = udiv i32 %sub.ptr.sub78.i514, 255
  %add.ptr84.i519 = getelementptr i8, ptr %add.ptr83.i517, i32 %div.i518
  %cmp85.i520 = icmp ugt ptr %add.ptr84.i519, %add.ptr7.i427
  br i1 %cmp85.i520, label %while.end.i521.if.end54_crit_edge, label %if.end94.i523, !prof !29

while.end.i521.if.end54_crit_edge:                ; preds = %while.end.i521
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.end94.i523:                                    ; preds = %while.end.i521
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub78.i514)
  %cmp95.i522 = icmp ugt i32 %sub.ptr.sub78.i514, 14
  br i1 %cmp95.i522, label %if.then97.i526, label %if.else106.i539

if.then97.i526:                                   ; preds = %if.end94.i523
  %sub98.i524 = add i32 %sub.ptr.sub78.i514, -15
  %198 = ptrtoint ptr %op.0848.i453 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 -16, ptr %op.0848.i453, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %sub98.i524)
  %cmp100830.i525 = icmp sgt i32 %sub98.i524, 254
  br i1 %cmp100830.i525, label %for.body.preheader.i531, label %if.then97.i526.for.end.i536_crit_edge

if.then97.i526.for.end.i536_crit_edge:            ; preds = %if.then97.i526
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i536

for.body.preheader.i531:                          ; preds = %if.then97.i526
  call void @__sanitizer_cov_trace_pc() #6
  %smin.i527 = tail call i32 @llvm.smin.i32(i32 %sub98.i524, i32 509) #4
  %199 = add i32 %sub.ptr.lhs.cast76.i512.pre-phi, 239
  %200 = add i32 %smin.i527, %sub.ptr.rhs.cast77.i513
  %201 = sub i32 %199, %200
  %202 = udiv i32 %201, 255
  %203 = add nuw nsw i32 %202, 1
  %204 = call ptr @memset(ptr %incdec.ptr79.i515, i32 255, i32 %203)
  %.neg893.i528 = mul i32 %202, -255
  %uglygep.i529 = getelementptr i8, ptr %op.0848.i453, i32 2
  %uglygep887.i530 = getelementptr i8, ptr %uglygep.i529, i32 %202
  %205 = sub i32 -270, %sub.ptr.rhs.cast77.i513
  %206 = add i32 %205, %sub.ptr.lhs.cast76.i512.pre-phi
  %207 = add i32 %206, %.neg893.i528
  br label %for.end.i536

for.end.i536:                                     ; preds = %for.body.preheader.i531, %if.then97.i526.for.end.i536_crit_edge
  %op.1.lcssa.i532 = phi ptr [ %incdec.ptr79.i515, %if.then97.i526.for.end.i536_crit_edge ], [ %uglygep887.i530, %for.body.preheader.i531 ]
  %len.0.lcssa.i533 = phi i32 [ %sub98.i524, %if.then97.i526.for.end.i536_crit_edge ], [ %207, %for.body.preheader.i531 ]
  %conv104.i534 = trunc i32 %len.0.lcssa.i533 to i8
  %incdec.ptr105.i535 = getelementptr i8, ptr %op.1.lcssa.i532, i32 1
  %208 = ptrtoint ptr %op.1.lcssa.i532 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %conv104.i534, ptr %op.1.lcssa.i532, align 1
  br label %if.end109.i542

if.else106.i539:                                  ; preds = %if.end94.i523
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub78.tr.i537 = trunc i32 %sub.ptr.sub78.i514 to i8
  %conv108.i538 = shl nuw i8 %sub.ptr.sub78.tr.i537, 4
  %209 = ptrtoint ptr %op.0848.i453 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %conv108.i538, ptr %op.0848.i453, align 1
  br label %if.end109.i542

if.end109.i542:                                   ; preds = %if.else106.i539, %for.end.i536
  %op.2.i540 = phi ptr [ %incdec.ptr105.i535, %for.end.i536 ], [ %incdec.ptr79.i515, %if.else106.i539 ]
  %add.ptr110.i541 = getelementptr i8, ptr %op.2.i540, i32 %sub.ptr.sub78.i514
  br label %do.body.i.i551

do.body.i.i551:                                   ; preds = %do.body.i.i551.do.body.i.i551_crit_edge, %if.end109.i542
  %d.0.i.i543 = phi ptr [ %op.2.i540, %if.end109.i542 ], [ %add.ptr.i.i548, %do.body.i.i551.do.body.i.i551_crit_edge ]
  %s.0.i.i544 = phi ptr [ %anchor.0847.i454, %if.end109.i542 ], [ %add.ptr1.i.i549, %do.body.i.i551.do.body.i.i551_crit_edge ]
  %210 = ptrtoint ptr %s.0.i.i544 to i32
  call void @__asan_loadN_noabort(i32 %210, i32 4)
  %s.0.val.i.i545 = load i32, ptr %s.0.i.i544, align 1
  %211 = getelementptr i8, ptr %s.0.i.i544, i32 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_loadN_noabort(i32 %212, i32 4)
  %s.0.val5.i.i546 = load i32, ptr %211, align 1
  %213 = ptrtoint ptr %d.0.i.i543 to i32
  call void @__asan_storeN_noabort(i32 %213, i32 4)
  store i32 %s.0.val.i.i545, ptr %d.0.i.i543, align 1
  %add.ptr8.i.i.i547 = getelementptr i32, ptr %d.0.i.i543, i32 1
  %214 = ptrtoint ptr %add.ptr8.i.i.i547 to i32
  call void @__asan_storeN_noabort(i32 %214, i32 4)
  store i32 %s.0.val5.i.i546, ptr %add.ptr8.i.i.i547, align 1
  %add.ptr.i.i548 = getelementptr i8, ptr %d.0.i.i543, i32 8
  %add.ptr1.i.i549 = getelementptr i8, ptr %s.0.i.i544, i32 8
  %cmp.i.i550 = icmp ult ptr %add.ptr.i.i548, %add.ptr110.i541
  br i1 %cmp.i.i550, label %do.body.i.i551.do.body.i.i551_crit_edge, label %do.body.i.i551._next_match.i564_crit_edge

do.body.i.i551._next_match.i564_crit_edge:        ; preds = %do.body.i.i551
  br label %_next_match.i564

do.body.i.i551.do.body.i.i551_crit_edge:          ; preds = %do.body.i.i551
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i551

_next_match.i564:                                 ; preds = %if.then233.i665, %do.body.i.i551._next_match.i564_crit_edge
  %ip.2.i552 = phi ptr [ %ip.4.i, %if.then233.i665 ], [ %ip.1.lcssa.i510, %do.body.i.i551._next_match.i564_crit_edge ]
  %lowLimit.5.i553 = phi ptr [ %.source498743.i651, %if.then233.i665 ], [ %.source670.i472.le, %do.body.i.i551._next_match.i564_crit_edge ]
  %op.4.i554 = phi ptr [ %incdec.ptr234.i664, %if.then233.i665 ], [ %add.ptr110.i541, %do.body.i.i551._next_match.i564_crit_edge ]
  %refDelta.4.i555 = phi i32 [ %sub.ptr.sub.499744.i652, %if.then233.i665 ], [ %sub.ptr.sub.671.i473, %do.body.i.i551._next_match.i564_crit_edge ]
  %match.3.i556 = phi ptr [ %add.ptr.i.i.i649, %if.then233.i665 ], [ %match.2.lcssa.i511, %do.body.i.i551._next_match.i564_crit_edge ]
  %token.0.i557 = phi ptr [ %op.7.ph.i634, %if.then233.i665 ], [ %op.0848.i453, %do.body.i.i551._next_match.i564_crit_edge ]
  %sub.ptr.lhs.cast115.i558 = ptrtoint ptr %ip.2.i552 to i32
  %sub.ptr.rhs.cast116.i559 = ptrtoint ptr %match.3.i556 to i32
  %sub.ptr.sub117.i560 = sub i32 %sub.ptr.lhs.cast115.i558, %sub.ptr.rhs.cast116.i559
  %conv118.i561 = trunc i32 %sub.ptr.sub117.i560 to i16
  %215 = tail call i16 @llvm.bswap.i16(i16 %conv118.i561) #4
  %216 = ptrtoint ptr %op.4.i554 to i32
  call void @__asan_storeN_noabort(i32 %216, i32 2)
  store i16 %215, ptr %op.4.i554, align 1
  %add.ptr119.i562 = getelementptr i8, ptr %op.4.i554, i32 2
  %cmp123.i563 = icmp eq ptr %lowLimit.5.i553, %185
  br i1 %cmp123.i563, label %if.then125.i, label %if.else146.i

if.then125.i:                                     ; preds = %_next_match.i564
  %add.ptr126.i = getelementptr i8, ptr %match.3.i556, i32 %refDelta.4.i555
  %sub.ptr.rhs.cast128.i = ptrtoint ptr %add.ptr126.i to i32
  %sub.ptr.sub129.i = sub i32 %sub.ptr.lhs.cast.i422, %sub.ptr.rhs.cast128.i
  %add.ptr130.i = getelementptr i8, ptr %ip.2.i552, i32 %sub.ptr.sub129.i
  %cmp131.i = icmp ugt ptr %add.ptr130.i, %add.ptr6.i426
  %spec.select.i = select i1 %cmp131.i, ptr %add.ptr6.i426, ptr %add.ptr130.i
  %add.ptr135.i = getelementptr i8, ptr %ip.2.i552, i32 4
  %add.ptr136.i = getelementptr i8, ptr %add.ptr126.i, i32 4
  %add.ptr.i507.i = getelementptr i8, ptr %spec.select.i, i32 -3
  %cmp59.i.i = icmp ugt ptr %add.ptr.i507.i, %add.ptr135.i
  br i1 %cmp59.i.i, label %if.then125.i.while.body.i.i_crit_edge, label %if.then125.i.while.end.i.i_crit_edge, !prof !27

if.then125.i.while.end.i.i_crit_edge:             ; preds = %if.then125.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i

if.then125.i.while.body.i.i_crit_edge:            ; preds = %if.then125.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.then125.i.while.body.i.i_crit_edge
  %pMatch.addr.061.i.i = phi ptr [ %add.ptr5.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %add.ptr136.i, %if.then125.i.while.body.i.i_crit_edge ]
  %pIn.addr.060.i.i = phi ptr [ %add.ptr4.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %add.ptr135.i, %if.then125.i.while.body.i.i_crit_edge ]
  %217 = ptrtoint ptr %pMatch.addr.061.i.i to i32
  call void @__asan_loadN_noabort(i32 %217, i32 4)
  %pMatch.addr.0.val.i.i = load i32, ptr %pMatch.addr.061.i.i, align 1
  %218 = ptrtoint ptr %pIn.addr.060.i.i to i32
  call void @__asan_loadN_noabort(i32 %218, i32 4)
  %pIn.addr.0.val.i.i = load i32, ptr %pIn.addr.060.i.i, align 1
  %xor.i.i = xor i32 %pIn.addr.0.val.i.i, %pMatch.addr.0.val.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i.i)
  %tobool3.not.i.i = icmp eq i32 %xor.i.i, 0
  br i1 %tobool3.not.i.i, label %cleanup.i.i, label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %219 = tail call i32 @llvm.ctlz.i32(i32 %xor.i.i, i1 true) #4, !range !28
  %shr.i.i.i = lshr i32 %219, 3
  %add.ptr7.i.i = getelementptr i8, ptr %pIn.addr.060.i.i, i32 %shr.i.i.i
  br label %LZ4_count.exit.i

cleanup.i.i:                                      ; preds = %while.body.i.i
  %add.ptr4.i.i = getelementptr i8, ptr %pIn.addr.060.i.i, i32 4
  %add.ptr5.i.i = getelementptr i8, ptr %pMatch.addr.061.i.i, i32 4
  %cmp.i508.i = icmp ult ptr %add.ptr4.i.i, %add.ptr.i507.i
  br i1 %cmp.i508.i, label %cleanup.i.i.while.body.i.i_crit_edge, label %cleanup.i.i.while.end.i.i_crit_edge, !prof !27

cleanup.i.i.while.end.i.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %cleanup.i.i.while.end.i.i_crit_edge, %if.then125.i.while.end.i.i_crit_edge
  %pIn.addr.0.lcssa.i.i = phi ptr [ %add.ptr135.i, %if.then125.i.while.end.i.i_crit_edge ], [ %add.ptr4.i.i, %cleanup.i.i.while.end.i.i_crit_edge ]
  %pMatch.addr.0.lcssa.i.i = phi ptr [ %add.ptr136.i, %if.then125.i.while.end.i.i_crit_edge ], [ %add.ptr5.i.i, %cleanup.i.i.while.end.i.i_crit_edge ]
  %add.ptr8.i.i = getelementptr i8, ptr %spec.select.i, i32 -1
  %cmp9.i.i = icmp ult ptr %pIn.addr.0.lcssa.i.i, %add.ptr8.i.i
  br i1 %cmp9.i.i, label %land.lhs.true.i.i, label %while.end.i.i.if.end18.i.i_crit_edge

while.end.i.i.if.end18.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i.i

land.lhs.true.i.i:                                ; preds = %while.end.i.i
  %220 = ptrtoint ptr %pMatch.addr.0.lcssa.i.i to i32
  call void @__asan_loadN_noabort(i32 %220, i32 2)
  %pMatch.addr.0.val53.i.i = load i16, ptr %pMatch.addr.0.lcssa.i.i, align 1
  %221 = ptrtoint ptr %pIn.addr.0.lcssa.i.i to i32
  call void @__asan_loadN_noabort(i32 %221, i32 2)
  %pIn.addr.0.val52.i.i = load i16, ptr %pIn.addr.0.lcssa.i.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %pMatch.addr.0.val53.i.i, i16 %pIn.addr.0.val52.i.i)
  %cmp13.i.i = icmp eq i16 %pMatch.addr.0.val53.i.i, %pIn.addr.0.val52.i.i
  br i1 %cmp13.i.i, label %if.then15.i.i, label %land.lhs.true.i.i.if.end18.i.i_crit_edge

land.lhs.true.i.i.if.end18.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i.i

if.then15.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i.i = getelementptr i8, ptr %pIn.addr.0.lcssa.i.i, i32 2
  %add.ptr17.i.i = getelementptr i8, ptr %pMatch.addr.0.lcssa.i.i, i32 2
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then15.i.i, %land.lhs.true.i.i.if.end18.i.i_crit_edge, %while.end.i.i.if.end18.i.i_crit_edge
  %pIn.addr.2.i.i = phi ptr [ %add.ptr16.i.i, %if.then15.i.i ], [ %pIn.addr.0.lcssa.i.i, %land.lhs.true.i.i.if.end18.i.i_crit_edge ], [ %pIn.addr.0.lcssa.i.i, %while.end.i.i.if.end18.i.i_crit_edge ]
  %pMatch.addr.2.i.i = phi ptr [ %add.ptr17.i.i, %if.then15.i.i ], [ %pMatch.addr.0.lcssa.i.i, %land.lhs.true.i.i.if.end18.i.i_crit_edge ], [ %pMatch.addr.0.lcssa.i.i, %while.end.i.i.if.end18.i.i_crit_edge ]
  %cmp19.i.i = icmp ult ptr %pIn.addr.2.i.i, %spec.select.i
  br i1 %cmp19.i.i, label %land.lhs.true21.i.i, label %if.end18.i.i.LZ4_count.exit.i_crit_edge

if.end18.i.i.LZ4_count.exit.i_crit_edge:          ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_count.exit.i

land.lhs.true21.i.i:                              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %222 = ptrtoint ptr %pMatch.addr.2.i.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %pMatch.addr.2.i.i, align 1
  %224 = ptrtoint ptr %pIn.addr.2.i.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %pIn.addr.2.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %223, i8 %225)
  %cmp24.i.i = icmp eq i8 %223, %225
  %spec.select.idx.i.i = zext i1 %cmp24.i.i to i32
  %spec.select.i.i = getelementptr i8, ptr %pIn.addr.2.i.i, i32 %spec.select.idx.i.i
  br label %LZ4_count.exit.i

LZ4_count.exit.i:                                 ; preds = %land.lhs.true21.i.i, %if.end18.i.i.LZ4_count.exit.i_crit_edge, %cleanup.thread.i.i
  %add.ptr7.sink.i.i = phi ptr [ %add.ptr7.i.i, %cleanup.thread.i.i ], [ %pIn.addr.2.i.i, %if.end18.i.i.LZ4_count.exit.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true21.i.i ]
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr7.sink.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr135.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.i = add i32 %sub.ptr.sub.i.i, 4
  %add.ptr138.i = getelementptr i8, ptr %ip.2.i552, i32 %add.i
  %cmp139.i = icmp eq ptr %add.ptr138.i, %spec.select.i
  br i1 %cmp139.i, label %if.then141.i, label %LZ4_count.exit.i.if.end152.i_crit_edge

LZ4_count.exit.i.if.end152.i_crit_edge:           ; preds = %LZ4_count.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end152.i

if.then141.i:                                     ; preds = %LZ4_count.exit.i
  %cmp59.i510.i = icmp ugt ptr %add.ptr.i550.i448, %spec.select.i
  br i1 %cmp59.i510.i, label %if.then141.i.while.body.i517.i_crit_edge, label %if.then141.i.while.end.i529.i_crit_edge, !prof !27

if.then141.i.while.end.i529.i_crit_edge:          ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i529.i

if.then141.i.while.body.i517.i_crit_edge:         ; preds = %if.then141.i
  br label %while.body.i517.i

while.body.i517.i:                                ; preds = %cleanup.i524.i.while.body.i517.i_crit_edge, %if.then141.i.while.body.i517.i_crit_edge
  %pMatch.addr.061.i511.i = phi ptr [ %add.ptr5.i522.i, %cleanup.i524.i.while.body.i517.i_crit_edge ], [ %source, %if.then141.i.while.body.i517.i_crit_edge ]
  %pIn.addr.060.i512.i = phi ptr [ %add.ptr4.i521.i, %cleanup.i524.i.while.body.i517.i_crit_edge ], [ %spec.select.i, %if.then141.i.while.body.i517.i_crit_edge ]
  %226 = ptrtoint ptr %pMatch.addr.061.i511.i to i32
  call void @__asan_loadN_noabort(i32 %226, i32 4)
  %pMatch.addr.0.val.i513.i = load i32, ptr %pMatch.addr.061.i511.i, align 1
  %227 = ptrtoint ptr %pIn.addr.060.i512.i to i32
  call void @__asan_loadN_noabort(i32 %227, i32 4)
  %pIn.addr.0.val.i514.i = load i32, ptr %pIn.addr.060.i512.i, align 1
  %xor.i515.i = xor i32 %pIn.addr.0.val.i514.i, %pMatch.addr.0.val.i513.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i515.i)
  %tobool3.not.i516.i = icmp eq i32 %xor.i515.i, 0
  br i1 %tobool3.not.i516.i, label %cleanup.i524.i, label %cleanup.thread.i520.i

cleanup.thread.i520.i:                            ; preds = %while.body.i517.i
  call void @__sanitizer_cov_trace_pc() #6
  %228 = tail call i32 @llvm.ctlz.i32(i32 %xor.i515.i, i1 true) #4, !range !28
  %shr.i.i518.i = lshr i32 %228, 3
  %add.ptr7.i519.i = getelementptr i8, ptr %pIn.addr.060.i512.i, i32 %shr.i.i518.i
  br label %LZ4_count.exit549.i

cleanup.i524.i:                                   ; preds = %while.body.i517.i
  %add.ptr4.i521.i = getelementptr i8, ptr %pIn.addr.060.i512.i, i32 4
  %add.ptr5.i522.i = getelementptr i8, ptr %pMatch.addr.061.i511.i, i32 4
  %cmp.i523.i = icmp ult ptr %add.ptr4.i521.i, %add.ptr.i550.i448
  br i1 %cmp.i523.i, label %cleanup.i524.i.while.body.i517.i_crit_edge, label %cleanup.i524.i.while.end.i529.i_crit_edge, !prof !27

cleanup.i524.i.while.end.i529.i_crit_edge:        ; preds = %cleanup.i524.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i529.i

cleanup.i524.i.while.body.i517.i_crit_edge:       ; preds = %cleanup.i524.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i517.i

while.end.i529.i:                                 ; preds = %cleanup.i524.i.while.end.i529.i_crit_edge, %if.then141.i.while.end.i529.i_crit_edge
  %pIn.addr.0.lcssa.i525.i = phi ptr [ %spec.select.i, %if.then141.i.while.end.i529.i_crit_edge ], [ %add.ptr4.i521.i, %cleanup.i524.i.while.end.i529.i_crit_edge ]
  %pMatch.addr.0.lcssa.i526.i = phi ptr [ %source, %if.then141.i.while.end.i529.i_crit_edge ], [ %add.ptr5.i522.i, %cleanup.i524.i.while.end.i529.i_crit_edge ]
  %cmp9.i528.i = icmp ult ptr %pIn.addr.0.lcssa.i525.i, %add.ptr8.i568.i449
  br i1 %cmp9.i528.i, label %land.lhs.true.i533.i, label %while.end.i529.i.if.end18.i540.i_crit_edge

while.end.i529.i.if.end18.i540.i_crit_edge:       ; preds = %while.end.i529.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i540.i

land.lhs.true.i533.i:                             ; preds = %while.end.i529.i
  %229 = ptrtoint ptr %pMatch.addr.0.lcssa.i526.i to i32
  call void @__asan_loadN_noabort(i32 %229, i32 2)
  %pMatch.addr.0.val53.i530.i = load i16, ptr %pMatch.addr.0.lcssa.i526.i, align 1
  %230 = ptrtoint ptr %pIn.addr.0.lcssa.i525.i to i32
  call void @__asan_loadN_noabort(i32 %230, i32 2)
  %pIn.addr.0.val52.i531.i = load i16, ptr %pIn.addr.0.lcssa.i525.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %pMatch.addr.0.val53.i530.i, i16 %pIn.addr.0.val52.i531.i)
  %cmp13.i532.i = icmp eq i16 %pMatch.addr.0.val53.i530.i, %pIn.addr.0.val52.i531.i
  br i1 %cmp13.i532.i, label %if.then15.i536.i, label %land.lhs.true.i533.i.if.end18.i540.i_crit_edge

land.lhs.true.i533.i.if.end18.i540.i_crit_edge:   ; preds = %land.lhs.true.i533.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i540.i

if.then15.i536.i:                                 ; preds = %land.lhs.true.i533.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i534.i = getelementptr i8, ptr %pIn.addr.0.lcssa.i525.i, i32 2
  %add.ptr17.i535.i = getelementptr i8, ptr %pMatch.addr.0.lcssa.i526.i, i32 2
  br label %if.end18.i540.i

if.end18.i540.i:                                  ; preds = %if.then15.i536.i, %land.lhs.true.i533.i.if.end18.i540.i_crit_edge, %while.end.i529.i.if.end18.i540.i_crit_edge
  %pIn.addr.2.i537.i = phi ptr [ %add.ptr16.i534.i, %if.then15.i536.i ], [ %pIn.addr.0.lcssa.i525.i, %land.lhs.true.i533.i.if.end18.i540.i_crit_edge ], [ %pIn.addr.0.lcssa.i525.i, %while.end.i529.i.if.end18.i540.i_crit_edge ]
  %pMatch.addr.2.i538.i = phi ptr [ %add.ptr17.i535.i, %if.then15.i536.i ], [ %pMatch.addr.0.lcssa.i526.i, %land.lhs.true.i533.i.if.end18.i540.i_crit_edge ], [ %pMatch.addr.0.lcssa.i526.i, %while.end.i529.i.if.end18.i540.i_crit_edge ]
  %cmp19.i539.i = icmp ult ptr %pIn.addr.2.i537.i, %add.ptr6.i426
  br i1 %cmp19.i539.i, label %land.lhs.true21.i544.i, label %if.end18.i540.i.LZ4_count.exit549.i_crit_edge

if.end18.i540.i.LZ4_count.exit549.i_crit_edge:    ; preds = %if.end18.i540.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_count.exit549.i

land.lhs.true21.i544.i:                           ; preds = %if.end18.i540.i
  call void @__sanitizer_cov_trace_pc() #6
  %231 = ptrtoint ptr %pMatch.addr.2.i538.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %pMatch.addr.2.i538.i, align 1
  %233 = ptrtoint ptr %pIn.addr.2.i537.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %pIn.addr.2.i537.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %232, i8 %234)
  %cmp24.i541.i = icmp eq i8 %232, %234
  %spec.select.idx.i542.i = zext i1 %cmp24.i541.i to i32
  %spec.select.i543.i = getelementptr i8, ptr %pIn.addr.2.i537.i, i32 %spec.select.idx.i542.i
  br label %LZ4_count.exit549.i

LZ4_count.exit549.i:                              ; preds = %land.lhs.true21.i544.i, %if.end18.i540.i.LZ4_count.exit549.i_crit_edge, %cleanup.thread.i520.i
  %add.ptr7.sink.i545.i = phi ptr [ %add.ptr7.i519.i, %cleanup.thread.i520.i ], [ %pIn.addr.2.i537.i, %if.end18.i540.i.LZ4_count.exit549.i_crit_edge ], [ %spec.select.i543.i, %land.lhs.true21.i544.i ]
  %sub.ptr.lhs.cast.i546.i = ptrtoint ptr %add.ptr7.sink.i545.i to i32
  %sub.ptr.rhs.cast.i547.i = ptrtoint ptr %spec.select.i to i32
  %sub.ptr.sub.i548.i = sub i32 %sub.ptr.lhs.cast.i546.i, %sub.ptr.rhs.cast.i547.i
  %add143.i = add i32 %sub.ptr.sub.i548.i, %sub.ptr.sub.i.i
  %add.ptr144.i = getelementptr i8, ptr %spec.select.i, i32 %sub.ptr.sub.i548.i
  br label %if.end152.i

if.else146.i:                                     ; preds = %_next_match.i564
  %add.ptr147.i565 = getelementptr i8, ptr %ip.2.i552, i32 4
  %add.ptr148.i566 = getelementptr i8, ptr %match.3.i556, i32 4
  %cmp59.i551.i567 = icmp ugt ptr %add.ptr.i550.i448, %add.ptr147.i565
  br i1 %cmp59.i551.i567, label %if.else146.i.while.body.i558.i574_crit_edge, label %if.else146.i.while.end.i570.i585_crit_edge, !prof !27

if.else146.i.while.end.i570.i585_crit_edge:       ; preds = %if.else146.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i570.i585

if.else146.i.while.body.i558.i574_crit_edge:      ; preds = %if.else146.i
  br label %while.body.i558.i574

while.body.i558.i574:                             ; preds = %cleanup.i565.i581.while.body.i558.i574_crit_edge, %if.else146.i.while.body.i558.i574_crit_edge
  %pMatch.addr.061.i552.i568 = phi ptr [ %add.ptr5.i563.i579, %cleanup.i565.i581.while.body.i558.i574_crit_edge ], [ %add.ptr148.i566, %if.else146.i.while.body.i558.i574_crit_edge ]
  %pIn.addr.060.i553.i569 = phi ptr [ %add.ptr4.i562.i578, %cleanup.i565.i581.while.body.i558.i574_crit_edge ], [ %add.ptr147.i565, %if.else146.i.while.body.i558.i574_crit_edge ]
  %235 = ptrtoint ptr %pMatch.addr.061.i552.i568 to i32
  call void @__asan_loadN_noabort(i32 %235, i32 4)
  %pMatch.addr.0.val.i554.i570 = load i32, ptr %pMatch.addr.061.i552.i568, align 1
  %236 = ptrtoint ptr %pIn.addr.060.i553.i569 to i32
  call void @__asan_loadN_noabort(i32 %236, i32 4)
  %pIn.addr.0.val.i555.i571 = load i32, ptr %pIn.addr.060.i553.i569, align 1
  %xor.i556.i572 = xor i32 %pIn.addr.0.val.i555.i571, %pMatch.addr.0.val.i554.i570
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i556.i572)
  %tobool3.not.i557.i573 = icmp eq i32 %xor.i556.i572, 0
  br i1 %tobool3.not.i557.i573, label %cleanup.i565.i581, label %cleanup.thread.i561.i577

cleanup.thread.i561.i577:                         ; preds = %while.body.i558.i574
  call void @__sanitizer_cov_trace_pc() #6
  %237 = tail call i32 @llvm.ctlz.i32(i32 %xor.i556.i572, i1 true) #4, !range !28
  %shr.i.i559.i575 = lshr i32 %237, 3
  %add.ptr7.i560.i576 = getelementptr i8, ptr %pIn.addr.060.i553.i569, i32 %shr.i.i559.i575
  br label %LZ4_count.exit590.i607

cleanup.i565.i581:                                ; preds = %while.body.i558.i574
  %add.ptr4.i562.i578 = getelementptr i8, ptr %pIn.addr.060.i553.i569, i32 4
  %add.ptr5.i563.i579 = getelementptr i8, ptr %pMatch.addr.061.i552.i568, i32 4
  %cmp.i564.i580 = icmp ult ptr %add.ptr4.i562.i578, %add.ptr.i550.i448
  br i1 %cmp.i564.i580, label %cleanup.i565.i581.while.body.i558.i574_crit_edge, label %cleanup.i565.i581.while.end.i570.i585_crit_edge, !prof !27

cleanup.i565.i581.while.end.i570.i585_crit_edge:  ; preds = %cleanup.i565.i581
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i570.i585

cleanup.i565.i581.while.body.i558.i574_crit_edge: ; preds = %cleanup.i565.i581
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i558.i574

while.end.i570.i585:                              ; preds = %cleanup.i565.i581.while.end.i570.i585_crit_edge, %if.else146.i.while.end.i570.i585_crit_edge
  %pIn.addr.0.lcssa.i566.i582 = phi ptr [ %add.ptr147.i565, %if.else146.i.while.end.i570.i585_crit_edge ], [ %add.ptr4.i562.i578, %cleanup.i565.i581.while.end.i570.i585_crit_edge ]
  %pMatch.addr.0.lcssa.i567.i583 = phi ptr [ %add.ptr148.i566, %if.else146.i.while.end.i570.i585_crit_edge ], [ %add.ptr5.i563.i579, %cleanup.i565.i581.while.end.i570.i585_crit_edge ]
  %cmp9.i569.i584 = icmp ult ptr %pIn.addr.0.lcssa.i566.i582, %add.ptr8.i568.i449
  br i1 %cmp9.i569.i584, label %land.lhs.true.i574.i589, label %while.end.i570.i585.if.end18.i581.i596_crit_edge

while.end.i570.i585.if.end18.i581.i596_crit_edge: ; preds = %while.end.i570.i585
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i581.i596

land.lhs.true.i574.i589:                          ; preds = %while.end.i570.i585
  %238 = ptrtoint ptr %pMatch.addr.0.lcssa.i567.i583 to i32
  call void @__asan_loadN_noabort(i32 %238, i32 2)
  %pMatch.addr.0.val53.i571.i586 = load i16, ptr %pMatch.addr.0.lcssa.i567.i583, align 1
  %239 = ptrtoint ptr %pIn.addr.0.lcssa.i566.i582 to i32
  call void @__asan_loadN_noabort(i32 %239, i32 2)
  %pIn.addr.0.val52.i572.i587 = load i16, ptr %pIn.addr.0.lcssa.i566.i582, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %pMatch.addr.0.val53.i571.i586, i16 %pIn.addr.0.val52.i572.i587)
  %cmp13.i573.i588 = icmp eq i16 %pMatch.addr.0.val53.i571.i586, %pIn.addr.0.val52.i572.i587
  br i1 %cmp13.i573.i588, label %if.then15.i577.i592, label %land.lhs.true.i574.i589.if.end18.i581.i596_crit_edge

land.lhs.true.i574.i589.if.end18.i581.i596_crit_edge: ; preds = %land.lhs.true.i574.i589
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i581.i596

if.then15.i577.i592:                              ; preds = %land.lhs.true.i574.i589
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i575.i590 = getelementptr i8, ptr %pIn.addr.0.lcssa.i566.i582, i32 2
  %add.ptr17.i576.i591 = getelementptr i8, ptr %pMatch.addr.0.lcssa.i567.i583, i32 2
  br label %if.end18.i581.i596

if.end18.i581.i596:                               ; preds = %if.then15.i577.i592, %land.lhs.true.i574.i589.if.end18.i581.i596_crit_edge, %while.end.i570.i585.if.end18.i581.i596_crit_edge
  %pIn.addr.2.i578.i593 = phi ptr [ %add.ptr16.i575.i590, %if.then15.i577.i592 ], [ %pIn.addr.0.lcssa.i566.i582, %land.lhs.true.i574.i589.if.end18.i581.i596_crit_edge ], [ %pIn.addr.0.lcssa.i566.i582, %while.end.i570.i585.if.end18.i581.i596_crit_edge ]
  %pMatch.addr.2.i579.i594 = phi ptr [ %add.ptr17.i576.i591, %if.then15.i577.i592 ], [ %pMatch.addr.0.lcssa.i567.i583, %land.lhs.true.i574.i589.if.end18.i581.i596_crit_edge ], [ %pMatch.addr.0.lcssa.i567.i583, %while.end.i570.i585.if.end18.i581.i596_crit_edge ]
  %cmp19.i580.i595 = icmp ult ptr %pIn.addr.2.i578.i593, %add.ptr6.i426
  br i1 %cmp19.i580.i595, label %land.lhs.true21.i585.i600, label %if.end18.i581.i596.LZ4_count.exit590.i607_crit_edge

if.end18.i581.i596.LZ4_count.exit590.i607_crit_edge: ; preds = %if.end18.i581.i596
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_count.exit590.i607

land.lhs.true21.i585.i600:                        ; preds = %if.end18.i581.i596
  call void @__sanitizer_cov_trace_pc() #6
  %240 = ptrtoint ptr %pMatch.addr.2.i579.i594 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %pMatch.addr.2.i579.i594, align 1
  %242 = ptrtoint ptr %pIn.addr.2.i578.i593 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %pIn.addr.2.i578.i593, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %241, i8 %243)
  %cmp24.i582.i597 = icmp eq i8 %241, %243
  %spec.select.idx.i583.i598 = zext i1 %cmp24.i582.i597 to i32
  %spec.select.i584.i599 = getelementptr i8, ptr %pIn.addr.2.i578.i593, i32 %spec.select.idx.i583.i598
  br label %LZ4_count.exit590.i607

LZ4_count.exit590.i607:                           ; preds = %land.lhs.true21.i585.i600, %if.end18.i581.i596.LZ4_count.exit590.i607_crit_edge, %cleanup.thread.i561.i577
  %add.ptr7.sink.i586.i601 = phi ptr [ %add.ptr7.i560.i576, %cleanup.thread.i561.i577 ], [ %pIn.addr.2.i578.i593, %if.end18.i581.i596.LZ4_count.exit590.i607_crit_edge ], [ %spec.select.i584.i599, %land.lhs.true21.i585.i600 ]
  %sub.ptr.lhs.cast.i587.i602 = ptrtoint ptr %add.ptr7.sink.i586.i601 to i32
  %sub.ptr.rhs.cast.i588.i603 = ptrtoint ptr %add.ptr147.i565 to i32
  %sub.ptr.sub.i589.i604 = sub i32 %sub.ptr.lhs.cast.i587.i602, %sub.ptr.rhs.cast.i588.i603
  %add150.i605 = add i32 %sub.ptr.sub.i589.i604, 4
  %add.ptr151.i606 = getelementptr i8, ptr %ip.2.i552, i32 %add150.i605
  br label %if.end152.i

if.end152.i:                                      ; preds = %LZ4_count.exit590.i607, %LZ4_count.exit549.i, %LZ4_count.exit.i.if.end152.i_crit_edge
  %ip.4.i = phi ptr [ %add.ptr151.i606, %LZ4_count.exit590.i607 ], [ %add.ptr144.i, %LZ4_count.exit549.i ], [ %add.ptr138.i, %LZ4_count.exit.i.if.end152.i_crit_edge ]
  %matchCode.1.i = phi i32 [ %sub.ptr.sub.i589.i604, %LZ4_count.exit590.i607 ], [ %add143.i, %LZ4_count.exit549.i ], [ %sub.ptr.sub.i.i, %LZ4_count.exit.i.if.end152.i_crit_edge ]
  %add.ptr155.i608 = getelementptr i8, ptr %op.4.i554, i32 8
  %shr156.i609 = lshr i32 %matchCode.1.i, 8
  %add.ptr157.i610 = getelementptr i8, ptr %add.ptr155.i608, i32 %shr156.i609
  %cmp158.i611 = icmp ugt ptr %add.ptr157.i610, %add.ptr7.i427
  br i1 %cmp158.i611, label %if.end152.i.if.end54_crit_edge, label %if.end167.i613, !prof !29

if.end152.i.if.end54_crit_edge:                   ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.end167.i613:                                   ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %matchCode.1.i)
  %cmp168.i612 = icmp ugt i32 %matchCode.1.i, 14
  %244 = ptrtoint ptr %token.0.i557 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %token.0.i557, align 1
  br i1 %cmp168.i612, label %if.then170.i617, label %if.else186.i633

if.then170.i617:                                  ; preds = %if.end167.i613
  %add172.i614 = add i8 %245, 15
  %246 = ptrtoint ptr %token.0.i557 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %add172.i614, ptr %token.0.i557, align 1
  %sub174.i615 = add i32 %matchCode.1.i, -15
  %247 = ptrtoint ptr %add.ptr119.i562 to i32
  call void @__asan_storeN_noabort(i32 %247, i32 4)
  store i32 -1, ptr %add.ptr119.i562, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1019, i32 %sub174.i615)
  %cmp176835.i616 = icmp ugt i32 %sub174.i615, 1019
  br i1 %cmp176835.i616, label %while.body178.preheader.i621, label %if.then170.i617.while.end181.i631_crit_edge

if.then170.i617.while.end181.i631_crit_edge:      ; preds = %if.then170.i617
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end181.i631

while.body178.preheader.i621:                     ; preds = %if.then170.i617
  call void @__sanitizer_cov_trace_pc() #6
  %uglygep888.i618 = getelementptr i8, ptr %op.4.i554, i32 6
  %248 = add i32 %matchCode.1.i, -1035
  %249 = udiv i32 %248, 1020
  %250 = shl nuw nsw i32 %249, 2
  %251 = add nuw nsw i32 %250, 4
  %252 = call ptr @memset(ptr %uglygep888.i618, i32 255, i32 %251)
  %uglygep889.i619 = getelementptr i8, ptr %uglygep888.i618, i32 %250
  %.neg892.i620 = mul i32 %249, -1020
  %253 = add i32 %.neg892.i620, %248
  br label %while.end181.i631

while.end181.i631:                                ; preds = %while.body178.preheader.i621, %if.then170.i617.while.end181.i631_crit_edge
  %op.5.lcssa.i622 = phi ptr [ %add.ptr119.i562, %if.then170.i617.while.end181.i631_crit_edge ], [ %uglygep889.i619, %while.body178.preheader.i621 ]
  %matchCode.2.lcssa.i623 = phi i32 [ %sub174.i615, %if.then170.i617.while.end181.i631_crit_edge ], [ %253, %while.body178.preheader.i621 ]
  %div182.lhs.trunc.i624 = trunc i32 %matchCode.2.lcssa.i623 to i16
  %div182.lhs.trunc.i624.frozen = freeze i16 %div182.lhs.trunc.i624
  %div182784.i625 = udiv i16 %div182.lhs.trunc.i624.frozen, 255
  %div182.zext.i626 = zext i16 %div182784.i625 to i32
  %add.ptr183.i627 = getelementptr i8, ptr %op.5.lcssa.i622, i32 %div182.zext.i626
  %254 = mul i16 %div182784.i625, 255
  %rem785.i628.decomposed = sub i16 %div182.lhs.trunc.i624.frozen, %254
  %conv184.i629 = trunc i16 %rem785.i628.decomposed to i8
  %incdec.ptr185.i630 = getelementptr i8, ptr %add.ptr183.i627, i32 1
  %255 = ptrtoint ptr %add.ptr183.i627 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %conv184.i629, ptr %add.ptr183.i627, align 1
  br label %cleanup.cont195.i636

if.else186.i633:                                  ; preds = %if.end167.i613
  call void @__sanitizer_cov_trace_pc() #6
  %256 = trunc i32 %matchCode.1.i to i8
  %conv191.i632 = add i8 %245, %256
  %257 = ptrtoint ptr %token.0.i557 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %conv191.i632, ptr %token.0.i557, align 1
  br label %cleanup.cont195.i636

cleanup.cont195.i636:                             ; preds = %if.else186.i633, %while.end181.i631
  %op.7.ph.i634 = phi ptr [ %add.ptr119.i562, %if.else186.i633 ], [ %incdec.ptr185.i630, %while.end181.i631 ]
  %cmp196.i635 = icmp ugt ptr %ip.4.i, %add.ptr5.i425
  br i1 %cmp196.i635, label %cleanup.cont195.i636._last_literals.i674_crit_edge, label %if.end199.i641

cleanup.cont195.i636._last_literals.i674_crit_edge: ; preds = %cleanup.cont195.i636
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i674

if.end199.i641:                                   ; preds = %cleanup.cont195.i636
  %add.ptr200.i637 = getelementptr i8, ptr %ip.4.i, i32 -2
  %258 = ptrtoint ptr %add.ptr200.i637 to i32
  call void @__asan_loadN_noabort(i32 %258, i32 4)
  %p.val.i591.i638 = load i32, ptr %add.ptr200.i637, align 1
  %mul.i.i.i593.i639 = mul i32 %p.val.i591.i638, -1640531535
  %retval.0.i.i.i595.i640 = lshr i32 %mul.i.i.i593.i639, 20
  %sub.ptr.lhs.cast.i.i598.i642 = ptrtoint ptr %add.ptr200.i637 to i32
  %sub.ptr.sub.i.i600.i643 = sub i32 %sub.ptr.lhs.cast.i.i598.i642, %sub.ptr.rhs.cast.i.i.i439
  %arrayidx3.i.i601.i644 = getelementptr i32, ptr %LZ4_stream, i32 %retval.0.i.i.i595.i640
  %259 = ptrtoint ptr %arrayidx3.i.i601.i644 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %sub.ptr.sub.i.i600.i643, ptr %arrayidx3.i.i601.i644, align 4
  %260 = ptrtoint ptr %ip.4.i to i32
  call void @__asan_loadN_noabort(i32 %260, i32 4)
  %ip.4.val502719.i645 = load i32, ptr %ip.4.i, align 1
  %mul.i.i.i611720.i646 = mul i32 %ip.4.val502719.i645, -1640531535
  %retval.0.i.i.i613721.i647 = lshr i32 %mul.i.i.i611720.i646, 20
  %arrayidx4.i.i.i648 = getelementptr i32, ptr %LZ4_stream, i32 %retval.0.i.i.i613721.i647
  %261 = ptrtoint ptr %arrayidx4.i.i.i648 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx4.i.i.i648, align 4
  %add.ptr.i.i.i649 = getelementptr i8, ptr %add.ptr17.i432, i32 %262
  %cmp209742.i650 = icmp ult ptr %add.ptr.i.i.i649, %source
  %.source498743.i651 = select i1 %cmp209742.i650, ptr %185, ptr %source
  %sub.ptr.sub.499744.i652 = select i1 %cmp209742.i650, i32 %sub.ptr.sub.i423, i32 0
  %sub.ptr.lhs.cast.i.i625.i653 = ptrtoint ptr %ip.4.i to i32
  %sub.ptr.sub.i.i627.i654 = sub i32 %sub.ptr.lhs.cast.i.i625.i653, %sub.ptr.rhs.cast.i.i.i439
  store i32 %sub.ptr.sub.i.i627.i654, ptr %arrayidx4.i.i.i648, align 4
  %cmp220.not.i655 = icmp ult ptr %add.ptr.i.i.i649, %add.ptr.i419
  %add.ptr224.i656 = getelementptr i8, ptr %add.ptr.i.i.i649, i32 65535
  %cmp225.not.i657 = icmp ult ptr %add.ptr224.i656, %ip.4.i
  %or.cond501.i658 = select i1 %cmp220.not.i655, i1 true, i1 %cmp225.not.i657
  br i1 %or.cond501.i658, label %if.end199.i641.cleanup238.i668_crit_edge, label %land.lhs.true227.i663

if.end199.i641.cleanup238.i668_crit_edge:         ; preds = %if.end199.i641
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup238.i668

land.lhs.true227.i663:                            ; preds = %if.end199.i641
  %add.ptr228.i659 = getelementptr i8, ptr %add.ptr.i.i.i649, i32 %sub.ptr.sub.499744.i652
  %263 = ptrtoint ptr %add.ptr228.i659 to i32
  call void @__asan_loadN_noabort(i32 %263, i32 4)
  %add.ptr228.val.i660 = load i32, ptr %add.ptr228.i659, align 1
  %264 = ptrtoint ptr %ip.4.i to i32
  call void @__asan_loadN_noabort(i32 %264, i32 4)
  %ip.4.val.i661 = load i32, ptr %ip.4.i, align 1
  %cmp231.i662 = icmp eq i32 %add.ptr228.val.i660, %ip.4.val.i661
  br i1 %cmp231.i662, label %if.then233.i665, label %land.lhs.true227.i663.cleanup238.i668_crit_edge

land.lhs.true227.i663.cleanup238.i668_crit_edge:  ; preds = %land.lhs.true227.i663
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup238.i668

if.then233.i665:                                  ; preds = %land.lhs.true227.i663
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr234.i664 = getelementptr i8, ptr %op.7.ph.i634, i32 1
  %265 = ptrtoint ptr %op.7.ph.i634 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 0, ptr %op.7.ph.i634, align 1
  br label %_next_match.i564

cleanup238.i668:                                  ; preds = %land.lhs.true227.i663.cleanup238.i668_crit_edge, %if.end199.i641.cleanup238.i668_crit_edge
  %add.ptr25806.i666 = getelementptr i8, ptr %ip.4.i, i32 2
  %cmp26809.i667 = icmp ugt ptr %add.ptr25806.i666, %add.ptr5.i425
  br i1 %cmp26809.i667, label %cleanup238.i668._last_literals.i674_crit_edge, label %cleanup238.i668.if.end29.lr.ph.i458_crit_edge, !prof !26

cleanup238.i668.if.end29.lr.ph.i458_crit_edge:    ; preds = %cleanup238.i668
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.lr.ph.i458

cleanup238.i668._last_literals.i674_crit_edge:    ; preds = %cleanup238.i668
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i674

_last_literals.i674:                              ; preds = %cleanup238.i668._last_literals.i674_crit_edge, %cleanup.cont195.i636._last_literals.i674_crit_edge, %do.body.backedge.i490._last_literals.i674_crit_edge, %if.end24.i438._last_literals.i674_crit_edge, %if.end.i429._last_literals.i674_crit_edge
  %anchor.3.i669 = phi ptr [ %source, %if.end.i429._last_literals.i674_crit_edge ], [ %source, %if.end24.i438._last_literals.i674_crit_edge ], [ %ip.4.i, %cleanup.cont195.i636._last_literals.i674_crit_edge ], [ %anchor.0847.i454, %do.body.backedge.i490._last_literals.i674_crit_edge ], [ %ip.4.i, %cleanup238.i668._last_literals.i674_crit_edge ]
  %op.9.i670 = phi ptr [ %dest, %if.end.i429._last_literals.i674_crit_edge ], [ %dest, %if.end24.i438._last_literals.i674_crit_edge ], [ %op.7.ph.i634, %cleanup.cont195.i636._last_literals.i674_crit_edge ], [ %op.0848.i453, %do.body.backedge.i490._last_literals.i674_crit_edge ], [ %op.7.ph.i634, %cleanup238.i668._last_literals.i674_crit_edge ]
  %sub.ptr.lhs.cast243.i671 = ptrtoint ptr %add.ptr8 to i32
  %sub.ptr.rhs.cast244.i672 = ptrtoint ptr %anchor.3.i669 to i32
  %sub.ptr.sub245.i673 = sub i32 %sub.ptr.lhs.cast243.i671, %sub.ptr.rhs.cast244.i672
  %sub.ptr.lhs.cast248.i675 = ptrtoint ptr %op.9.i670 to i32
  %sub.ptr.rhs.cast249.i676 = ptrtoint ptr %dest to i32
  %sub254.i677 = add i32 %sub.ptr.sub245.i673, 240
  %div255.i678 = udiv i32 %sub254.i677, 255
  %sub.ptr.sub250.i679 = sub i32 1, %sub.ptr.rhs.cast249.i676
  %add251.i680 = add i32 %sub.ptr.sub250.i679, %sub.ptr.lhs.cast248.i675
  %add252.i681 = add i32 %add251.i680, %sub.ptr.sub245.i673
  %add256.i682 = add i32 %add252.i681, %div255.i678
  call void @__sanitizer_cov_trace_cmp4(i32 %add256.i682, i32 %maxOutputSize)
  %cmp257.i683 = icmp ugt i32 %add256.i682, %maxOutputSize
  br i1 %cmp257.i683, label %_last_literals.i674.if.end54_crit_edge, label %if.end260.i685

_last_literals.i674.if.end54_crit_edge:           ; preds = %_last_literals.i674
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.end260.i685:                                   ; preds = %_last_literals.i674
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub245.i673)
  %cmp261.i684 = icmp ugt i32 %sub.ptr.sub245.i673, 14
  br i1 %cmp261.i684, label %if.then263.i689, label %if.else276.i699

if.then263.i689:                                  ; preds = %if.end260.i685
  %sub264.i686 = add i32 %sub.ptr.sub245.i673, -15
  %266 = ptrtoint ptr %op.9.i670 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 -16, ptr %op.9.i670, align 1
  %op.10855.i687 = getelementptr i8, ptr %op.9.i670, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %sub264.i686)
  %cmp267856.i688 = icmp ugt i32 %sub264.i686, 254
  br i1 %cmp267856.i688, label %for.body269.preheader.i692, label %if.then263.i689.for.end273.i696_crit_edge

if.then263.i689.for.end273.i696_crit_edge:        ; preds = %if.then263.i689
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end273.i696

for.body269.preheader.i692:                       ; preds = %if.then263.i689
  call void @__sanitizer_cov_trace_pc() #6
  %267 = add i32 %inputSize, -270
  %268 = add i32 %267, %source890.i416
  %269 = sub i32 %268, %sub.ptr.rhs.cast244.i672
  %270 = udiv i32 %269, 255
  %271 = add nuw nsw i32 %270, 1
  %272 = call ptr @memset(ptr %op.10855.i687, i32 255, i32 %271)
  %.neg.i690 = mul i32 %270, -255
  %273 = add nuw nsw i32 %270, 2
  %274 = add i32 %.neg.i690, %269
  %uglygep891.i691 = getelementptr i8, ptr %op.9.i670, i32 %273
  br label %for.end273.i696

for.end273.i696:                                  ; preds = %for.body269.preheader.i692, %if.then263.i689.for.end273.i696_crit_edge
  %accumulator.0.lcssa.i693 = phi i32 [ %sub264.i686, %if.then263.i689.for.end273.i696_crit_edge ], [ %274, %for.body269.preheader.i692 ]
  %op.10.lcssa.i694 = phi ptr [ %op.10855.i687, %if.then263.i689.for.end273.i696_crit_edge ], [ %uglygep891.i691, %for.body269.preheader.i692 ]
  %conv274.i695 = trunc i32 %accumulator.0.lcssa.i693 to i8
  %275 = ptrtoint ptr %op.10.lcssa.i694 to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 %conv274.i695, ptr %op.10.lcssa.i694, align 1
  br label %cleanup.cont284.i706

if.else276.i699:                                  ; preds = %if.end260.i685
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub245.tr.i697 = trunc i32 %sub.ptr.sub245.i673 to i8
  %conv278.i698 = shl nuw i8 %sub.ptr.sub245.tr.i697, 4
  %276 = ptrtoint ptr %op.9.i670 to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %conv278.i698, ptr %op.9.i670, align 1
  br label %cleanup.cont284.i706

cleanup.cont284.i706:                             ; preds = %if.else276.i699, %for.end273.i696
  %op.10.pn.i700 = phi ptr [ %op.10.lcssa.i694, %for.end273.i696 ], [ %op.9.i670, %if.else276.i699 ]
  %op.11.i701 = getelementptr i8, ptr %op.10.pn.i700, i32 1
  %277 = call ptr @memcpy(ptr %op.11.i701, ptr %anchor.3.i669, i32 %sub.ptr.sub245.i673)
  %add.ptr281.i702 = getelementptr i8, ptr %op.11.i701, i32 %sub.ptr.sub245.i673
  %sub.ptr.lhs.cast285.i703 = ptrtoint ptr %add.ptr281.i702 to i32
  %sub.ptr.sub287.i705 = sub i32 %sub.ptr.lhs.cast285.i703, %sub.ptr.rhs.cast249.i676
  br label %if.end54

if.else52:                                        ; preds = %land.lhs.true46.if.else52_crit_edge, %if.end42.if.else52_crit_edge
  %source890.i709 = ptrtoint ptr %source to i32
  %278 = ptrtoint ptr %dictionary to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dictionary, align 4
  %add.ptr3.i714 = getelementptr i8, ptr %279, i32 %27
  %sub.ptr.lhs.cast.i715 = ptrtoint ptr %add.ptr3.i714 to i32
  %sub.ptr.sub.i716 = sub i32 %sub.ptr.lhs.cast.i715, %source890.i709
  %add.ptr5.i718 = getelementptr i8, ptr %add.ptr8, i32 -12
  %add.ptr6.i719 = getelementptr i8, ptr %add.ptr8, i32 -5
  %add.ptr7.i720 = getelementptr i8, ptr %dest, i32 %maxOutputSize
  call void @__sanitizer_cov_trace_const_cmp4(i32 2113929216, i32 %inputSize)
  %cmp.i721 = icmp ugt i32 %inputSize, 2113929216
  br i1 %cmp.i721, label %if.else52.if.end54_crit_edge, label %if.end.i722

if.else52.if.end54_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.end.i722:                                      ; preds = %if.else52
  %280 = ptrtoint ptr %currentOffset.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %currentOffset.i, align 4
  %idx.neg16.i724 = sub i32 0, %281
  %add.ptr17.i725 = getelementptr i8, ptr %source, i32 %idx.neg16.i724
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inputSize)
  %cmp22.i727 = icmp ult i32 %inputSize, 13
  br i1 %cmp22.i727, label %if.end.i722._last_literals.i1065_crit_edge, label %if.end24.i731

if.end.i722._last_literals.i1065_crit_edge:       ; preds = %if.end.i722
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i1065

if.end24.i731:                                    ; preds = %if.end.i722
  %282 = ptrtoint ptr %source to i32
  call void @__asan_loadN_noabort(i32 %282, i32 4)
  %p.val.i.i728 = load i32, ptr %source, align 1
  %mul.i.i.i.i729 = mul i32 %p.val.i.i728, -1640531535
  %retval.0.i.i.i.i730 = lshr i32 %mul.i.i.i.i729, 20
  %sub.ptr.rhs.cast.i.i.i732 = ptrtoint ptr %add.ptr17.i725 to i32
  %arrayidx3.i.i.i734 = getelementptr i32, ptr %LZ4_stream, i32 %retval.0.i.i.i.i730
  %283 = ptrtoint ptr %arrayidx3.i.i.i734 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %281, ptr %arrayidx3.i.i.i734, align 4
  %shl.i735 = shl i32 %20, 6
  %inc807.i736 = or i32 %shl.i735, 1
  %shr808.i737 = and i32 %20, 67108863
  %add.ptr25806844.i738 = getelementptr i8, ptr %source, i32 2
  %cmp26809845.i739 = icmp ugt ptr %add.ptr25806844.i738, %add.ptr5.i718
  br i1 %cmp26809845.i739, label %if.end24.i731._last_literals.i1065_crit_edge, label %if.end29.lr.ph.lr.ph.i743, !prof !26

if.end24.i731._last_literals.i1065_crit_edge:     ; preds = %if.end24.i731
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i1065

if.end29.lr.ph.lr.ph.i743:                        ; preds = %if.end24.i731
  %add.ptr.i550.i741 = getelementptr i8, ptr %add.ptr6.i719, i32 -3
  %add.ptr8.i568.i742 = getelementptr i8, ptr %add.ptr6.i719, i32 -1
  br label %if.end29.lr.ph.i751

if.end29.lr.ph.i751:                              ; preds = %cleanup238.i1059.if.end29.lr.ph.i751_crit_edge, %if.end29.lr.ph.lr.ph.i743
  %add.ptr25806852.i744 = phi ptr [ %add.ptr25806844.i738, %if.end29.lr.ph.lr.ph.i743 ], [ %add.ptr25806.i1057, %cleanup238.i1059.if.end29.lr.ph.i751_crit_edge ]
  %op.0848.i746 = phi ptr [ %dest, %if.end29.lr.ph.lr.ph.i743 ], [ %op.7.ph.i1026, %cleanup238.i1059.if.end29.lr.ph.i751_crit_edge ]
  %anchor.0847.i747 = phi ptr [ %source, %if.end29.lr.ph.lr.ph.i743 ], [ %ip.4.i997, %cleanup238.i1059.if.end29.lr.ph.i751_crit_edge ]
  %ip.0850.i749 = getelementptr i8, ptr %anchor.0847.i747, i32 1
  %284 = ptrtoint ptr %ip.0850.i749 to i32
  call void @__asan_loadN_noabort(i32 %284, i32 4)
  %mul.i.i.pn.pn804842.pn.in.i750 = load i32, ptr %ip.0850.i749, align 1
  br label %if.end29.i761

if.end29.i761:                                    ; preds = %do.body.backedge.i783.if.end29.i761_crit_edge, %if.end29.lr.ph.i751
  %shr816.i752 = phi i32 [ %shr808.i737, %if.end29.lr.ph.i751 ], [ %shr.i781, %do.body.backedge.i783.if.end29.i761_crit_edge ]
  %inc815.i753 = phi i32 [ %inc807.i736, %if.end29.lr.ph.i751 ], [ %inc.i780, %do.body.backedge.i783.if.end29.i761_crit_edge ]
  %add.ptr25814.i754 = phi ptr [ %add.ptr25806852.i744, %if.end29.lr.ph.i751 ], [ %add.ptr25.i779, %do.body.backedge.i783.if.end29.i761_crit_edge ]
  %mul.i.i.pn.pn804842.pn.pn.in.i755 = phi i32 [ %mul.i.i.pn.pn804842.pn.in.i750, %if.end29.lr.ph.i751 ], [ %add.ptr25.val674.i767, %do.body.backedge.i783.if.end29.i761_crit_edge ]
  %forwardIp.0812.i756 = phi ptr [ %ip.0850.i749, %if.end29.lr.ph.i751 ], [ %add.ptr25814.i754, %do.body.backedge.i783.if.end29.i761_crit_edge ]
  %mul.i.i.pn.pn804842.pn.pn.i759 = mul i32 %mul.i.i.pn.pn804842.pn.pn.in.i755, -1640531535
  %forwardH.1813.i760 = lshr i32 %mul.i.i.pn.pn804842.pn.pn.i759, 20
  %arrayidx4.i.i762 = getelementptr i32, ptr %LZ4_stream, i32 %forwardH.1813.i760
  %285 = ptrtoint ptr %arrayidx4.i.i762 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %arrayidx4.i.i762, align 4
  %add.ptr.i641.i763 = getelementptr i8, ptr %add.ptr17.i725, i32 %286
  %287 = ptrtoint ptr %add.ptr25814.i754 to i32
  call void @__asan_loadN_noabort(i32 %287, i32 4)
  %add.ptr25.val674.i767 = load i32, ptr %add.ptr25814.i754, align 1
  %sub.ptr.lhs.cast.i644.i768 = ptrtoint ptr %forwardIp.0812.i756 to i32
  %sub.ptr.sub.i646.i769 = sub i32 %sub.ptr.lhs.cast.i644.i768, %sub.ptr.rhs.cast.i.i.i732
  store i32 %sub.ptr.sub.i646.i769, ptr %arrayidx4.i.i762, align 4
  %add.ptr47.i771 = getelementptr i8, ptr %add.ptr.i641.i763, i32 65535
  %cmp48.i772 = icmp ult ptr %add.ptr47.i771, %forwardIp.0812.i756
  br i1 %cmp48.i772, label %if.end29.i761.do.body.backedge.i783_crit_edge, label %lor.rhs.i778

if.end29.i761.do.body.backedge.i783_crit_edge:    ; preds = %if.end29.i761
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.backedge.i783

lor.rhs.i778:                                     ; preds = %if.end29.i761
  %cmp35669.i764 = icmp ult ptr %add.ptr.i641.i763, %source
  %sub.ptr.sub.671.i766 = select i1 %cmp35669.i764, i32 %sub.ptr.sub.i716, i32 0
  %add.ptr49.i774 = getelementptr i8, ptr %add.ptr.i641.i763, i32 %sub.ptr.sub.671.i766
  %288 = ptrtoint ptr %add.ptr49.i774 to i32
  call void @__asan_loadN_noabort(i32 %288, i32 4)
  %add.ptr49.val.i775 = load i32, ptr %add.ptr49.i774, align 1
  %289 = ptrtoint ptr %forwardIp.0812.i756 to i32
  call void @__asan_loadN_noabort(i32 %289, i32 4)
  %forwardIp.0.val.i776 = load i32, ptr %forwardIp.0812.i756, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.ptr49.val.i775, i32 %forwardIp.0.val.i776)
  %cmp52.not.i777 = icmp eq i32 %add.ptr49.val.i775, %forwardIp.0.val.i776
  br i1 %cmp52.not.i777, label %while.cond.preheader.i788, label %lor.rhs.i778.do.body.backedge.i783_crit_edge

lor.rhs.i778.do.body.backedge.i783_crit_edge:     ; preds = %lor.rhs.i778
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.backedge.i783

do.body.backedge.i783:                            ; preds = %lor.rhs.i778.do.body.backedge.i783_crit_edge, %if.end29.i761.do.body.backedge.i783_crit_edge
  %add.ptr25.i779 = getelementptr i8, ptr %add.ptr25814.i754, i32 %shr816.i752
  %inc.i780 = add i32 %inc815.i753, 1
  %shr.i781 = lshr i32 %inc815.i753, 6
  %cmp26.i782 = icmp ugt ptr %add.ptr25.i779, %add.ptr5.i718
  br i1 %cmp26.i782, label %do.body.backedge.i783._last_literals.i1065_crit_edge, label %do.body.backedge.i783.if.end29.i761_crit_edge, !prof !26

do.body.backedge.i783.if.end29.i761_crit_edge:    ; preds = %do.body.backedge.i783
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.i761

do.body.backedge.i783._last_literals.i1065_crit_edge: ; preds = %do.body.backedge.i783
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i1065

while.cond.preheader.i788:                        ; preds = %lor.rhs.i778
  %add.ptr49.i774.le = getelementptr i8, ptr %add.ptr.i641.i763, i32 %sub.ptr.sub.671.i766
  %.source670.i765.le = select i1 %cmp35669.i764, ptr %279, ptr %source
  %cmp58820.i785 = icmp ugt ptr %forwardIp.0812.i756, %anchor.0847.i747
  %cmp60822.i786 = icmp ugt ptr %add.ptr49.i774.le, %.source670.i765.le
  %and491823.i787 = and i1 %cmp58820.i785, %cmp60822.i786
  br i1 %and491823.i787, label %land.rhs.lr.ph.i790, label %while.cond.preheader.i788.while.end.i814_crit_edge

while.cond.preheader.i788.while.end.i814_crit_edge: ; preds = %while.cond.preheader.i788
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i814

land.rhs.lr.ph.i790:                              ; preds = %while.cond.preheader.i788
  %sub.i789 = add i32 %sub.ptr.sub.671.i766, -1
  br label %land.rhs.i796

land.rhs.i796:                                    ; preds = %while.body.i802.land.rhs.i796_crit_edge, %land.rhs.lr.ph.i790
  %match.2825.i791 = phi ptr [ %add.ptr.i641.i763, %land.rhs.lr.ph.i790 ], [ %incdec.ptr75.i797, %while.body.i802.land.rhs.i796_crit_edge ]
  %ip.1824.i792 = phi ptr [ %forwardIp.0812.i756, %land.rhs.lr.ph.i790 ], [ %arrayidx.i793, %while.body.i802.land.rhs.i796_crit_edge ]
  %arrayidx.i793 = getelementptr i8, ptr %ip.1824.i792, i32 -1
  %290 = ptrtoint ptr %arrayidx.i793 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %arrayidx.i793, align 1
  %arrayidx64.i794 = getelementptr i8, ptr %match.2825.i791, i32 %sub.i789
  %292 = ptrtoint ptr %arrayidx64.i794 to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %arrayidx64.i794, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %291, i8 %293)
  %cmp66.i795 = icmp eq i8 %291, %293
  br i1 %cmp66.i795, label %while.body.i802, label %land.rhs.i796.while.end.i814_crit_edge

land.rhs.i796.while.end.i814_crit_edge:           ; preds = %land.rhs.i796
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i814

while.body.i802:                                  ; preds = %land.rhs.i796
  %incdec.ptr75.i797 = getelementptr i8, ptr %match.2825.i791, i32 -1
  %cmp58.i798 = icmp ugt ptr %arrayidx.i793, %anchor.0847.i747
  %add.ptr59.i799 = getelementptr i8, ptr %incdec.ptr75.i797, i32 %sub.ptr.sub.671.i766
  %cmp60.i800 = icmp ugt ptr %add.ptr59.i799, %.source670.i765.le
  %and491.i801 = and i1 %cmp58.i798, %cmp60.i800
  br i1 %and491.i801, label %while.body.i802.land.rhs.i796_crit_edge, label %while.body.i802.while.end.i814_crit_edge

while.body.i802.while.end.i814_crit_edge:         ; preds = %while.body.i802
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i814

while.body.i802.land.rhs.i796_crit_edge:          ; preds = %while.body.i802
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i796

while.end.i814:                                   ; preds = %while.body.i802.while.end.i814_crit_edge, %land.rhs.i796.while.end.i814_crit_edge, %while.cond.preheader.i788.while.end.i814_crit_edge
  %ip.1.lcssa.i803 = phi ptr [ %forwardIp.0812.i756, %while.cond.preheader.i788.while.end.i814_crit_edge ], [ %ip.1824.i792, %land.rhs.i796.while.end.i814_crit_edge ], [ %arrayidx.i793, %while.body.i802.while.end.i814_crit_edge ]
  %match.2.lcssa.i804 = phi ptr [ %add.ptr.i641.i763, %while.cond.preheader.i788.while.end.i814_crit_edge ], [ %match.2825.i791, %land.rhs.i796.while.end.i814_crit_edge ], [ %incdec.ptr75.i797, %while.body.i802.while.end.i814_crit_edge ]
  %sub.ptr.lhs.cast76.i805.pre-phi = ptrtoint ptr %ip.1.lcssa.i803 to i32
  %sub.ptr.rhs.cast77.i806 = ptrtoint ptr %anchor.0847.i747 to i32
  %sub.ptr.sub78.i807 = sub i32 %sub.ptr.lhs.cast76.i805.pre-phi, %sub.ptr.rhs.cast77.i806
  %incdec.ptr79.i808 = getelementptr i8, ptr %op.0848.i746, i32 1
  %add.ptr82.i809 = getelementptr i8, ptr %op.0848.i746, i32 9
  %add.ptr83.i810 = getelementptr i8, ptr %add.ptr82.i809, i32 %sub.ptr.sub78.i807
  %div.i811 = udiv i32 %sub.ptr.sub78.i807, 255
  %add.ptr84.i812 = getelementptr i8, ptr %add.ptr83.i810, i32 %div.i811
  %cmp85.i813 = icmp ugt ptr %add.ptr84.i812, %add.ptr7.i720
  br i1 %cmp85.i813, label %while.end.i814.if.end54_crit_edge, label %if.end94.i816, !prof !29

while.end.i814.if.end54_crit_edge:                ; preds = %while.end.i814
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.end94.i816:                                    ; preds = %while.end.i814
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub78.i807)
  %cmp95.i815 = icmp ugt i32 %sub.ptr.sub78.i807, 14
  br i1 %cmp95.i815, label %if.then97.i819, label %if.else106.i832

if.then97.i819:                                   ; preds = %if.end94.i816
  %sub98.i817 = add i32 %sub.ptr.sub78.i807, -15
  %294 = ptrtoint ptr %op.0848.i746 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 -16, ptr %op.0848.i746, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %sub98.i817)
  %cmp100830.i818 = icmp sgt i32 %sub98.i817, 254
  br i1 %cmp100830.i818, label %for.body.preheader.i824, label %if.then97.i819.for.end.i829_crit_edge

if.then97.i819.for.end.i829_crit_edge:            ; preds = %if.then97.i819
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i829

for.body.preheader.i824:                          ; preds = %if.then97.i819
  call void @__sanitizer_cov_trace_pc() #6
  %smin.i820 = tail call i32 @llvm.smin.i32(i32 %sub98.i817, i32 509) #4
  %295 = add i32 %sub.ptr.lhs.cast76.i805.pre-phi, 239
  %296 = add i32 %smin.i820, %sub.ptr.rhs.cast77.i806
  %297 = sub i32 %295, %296
  %298 = udiv i32 %297, 255
  %299 = add nuw nsw i32 %298, 1
  %300 = call ptr @memset(ptr %incdec.ptr79.i808, i32 255, i32 %299)
  %.neg893.i821 = mul i32 %298, -255
  %uglygep.i822 = getelementptr i8, ptr %op.0848.i746, i32 2
  %uglygep887.i823 = getelementptr i8, ptr %uglygep.i822, i32 %298
  %301 = sub i32 -270, %sub.ptr.rhs.cast77.i806
  %302 = add i32 %301, %sub.ptr.lhs.cast76.i805.pre-phi
  %303 = add i32 %302, %.neg893.i821
  br label %for.end.i829

for.end.i829:                                     ; preds = %for.body.preheader.i824, %if.then97.i819.for.end.i829_crit_edge
  %op.1.lcssa.i825 = phi ptr [ %incdec.ptr79.i808, %if.then97.i819.for.end.i829_crit_edge ], [ %uglygep887.i823, %for.body.preheader.i824 ]
  %len.0.lcssa.i826 = phi i32 [ %sub98.i817, %if.then97.i819.for.end.i829_crit_edge ], [ %303, %for.body.preheader.i824 ]
  %conv104.i827 = trunc i32 %len.0.lcssa.i826 to i8
  %incdec.ptr105.i828 = getelementptr i8, ptr %op.1.lcssa.i825, i32 1
  %304 = ptrtoint ptr %op.1.lcssa.i825 to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %conv104.i827, ptr %op.1.lcssa.i825, align 1
  br label %if.end109.i835

if.else106.i832:                                  ; preds = %if.end94.i816
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub78.tr.i830 = trunc i32 %sub.ptr.sub78.i807 to i8
  %conv108.i831 = shl nuw i8 %sub.ptr.sub78.tr.i830, 4
  %305 = ptrtoint ptr %op.0848.i746 to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %conv108.i831, ptr %op.0848.i746, align 1
  br label %if.end109.i835

if.end109.i835:                                   ; preds = %if.else106.i832, %for.end.i829
  %op.2.i833 = phi ptr [ %incdec.ptr105.i828, %for.end.i829 ], [ %incdec.ptr79.i808, %if.else106.i832 ]
  %add.ptr110.i834 = getelementptr i8, ptr %op.2.i833, i32 %sub.ptr.sub78.i807
  br label %do.body.i.i844

do.body.i.i844:                                   ; preds = %do.body.i.i844.do.body.i.i844_crit_edge, %if.end109.i835
  %d.0.i.i836 = phi ptr [ %op.2.i833, %if.end109.i835 ], [ %add.ptr.i.i841, %do.body.i.i844.do.body.i.i844_crit_edge ]
  %s.0.i.i837 = phi ptr [ %anchor.0847.i747, %if.end109.i835 ], [ %add.ptr1.i.i842, %do.body.i.i844.do.body.i.i844_crit_edge ]
  %306 = ptrtoint ptr %s.0.i.i837 to i32
  call void @__asan_loadN_noabort(i32 %306, i32 4)
  %s.0.val.i.i838 = load i32, ptr %s.0.i.i837, align 1
  %307 = getelementptr i8, ptr %s.0.i.i837, i32 4
  %308 = ptrtoint ptr %307 to i32
  call void @__asan_loadN_noabort(i32 %308, i32 4)
  %s.0.val5.i.i839 = load i32, ptr %307, align 1
  %309 = ptrtoint ptr %d.0.i.i836 to i32
  call void @__asan_storeN_noabort(i32 %309, i32 4)
  store i32 %s.0.val.i.i838, ptr %d.0.i.i836, align 1
  %add.ptr8.i.i.i840 = getelementptr i32, ptr %d.0.i.i836, i32 1
  %310 = ptrtoint ptr %add.ptr8.i.i.i840 to i32
  call void @__asan_storeN_noabort(i32 %310, i32 4)
  store i32 %s.0.val5.i.i839, ptr %add.ptr8.i.i.i840, align 1
  %add.ptr.i.i841 = getelementptr i8, ptr %d.0.i.i836, i32 8
  %add.ptr1.i.i842 = getelementptr i8, ptr %s.0.i.i837, i32 8
  %cmp.i.i843 = icmp ult ptr %add.ptr.i.i841, %add.ptr110.i834
  br i1 %cmp.i.i843, label %do.body.i.i844.do.body.i.i844_crit_edge, label %do.body.i.i844._next_match.i857_crit_edge

do.body.i.i844._next_match.i857_crit_edge:        ; preds = %do.body.i.i844
  br label %_next_match.i857

do.body.i.i844.do.body.i.i844_crit_edge:          ; preds = %do.body.i.i844
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i844

_next_match.i857:                                 ; preds = %if.then233.i1056, %do.body.i.i844._next_match.i857_crit_edge
  %ip.2.i845 = phi ptr [ %ip.4.i997, %if.then233.i1056 ], [ %ip.1.lcssa.i803, %do.body.i.i844._next_match.i857_crit_edge ]
  %lowLimit.5.i846 = phi ptr [ %.source498743.i1043, %if.then233.i1056 ], [ %.source670.i765.le, %do.body.i.i844._next_match.i857_crit_edge ]
  %op.4.i847 = phi ptr [ %incdec.ptr234.i1055, %if.then233.i1056 ], [ %add.ptr110.i834, %do.body.i.i844._next_match.i857_crit_edge ]
  %refDelta.4.i848 = phi i32 [ %sub.ptr.sub.499744.i1044, %if.then233.i1056 ], [ %sub.ptr.sub.671.i766, %do.body.i.i844._next_match.i857_crit_edge ]
  %match.3.i849 = phi ptr [ %add.ptr.i.i.i1041, %if.then233.i1056 ], [ %match.2.lcssa.i804, %do.body.i.i844._next_match.i857_crit_edge ]
  %token.0.i850 = phi ptr [ %op.7.ph.i1026, %if.then233.i1056 ], [ %op.0848.i746, %do.body.i.i844._next_match.i857_crit_edge ]
  %sub.ptr.lhs.cast115.i851 = ptrtoint ptr %ip.2.i845 to i32
  %sub.ptr.rhs.cast116.i852 = ptrtoint ptr %match.3.i849 to i32
  %sub.ptr.sub117.i853 = sub i32 %sub.ptr.lhs.cast115.i851, %sub.ptr.rhs.cast116.i852
  %conv118.i854 = trunc i32 %sub.ptr.sub117.i853 to i16
  %311 = tail call i16 @llvm.bswap.i16(i16 %conv118.i854) #4
  %312 = ptrtoint ptr %op.4.i847 to i32
  call void @__asan_storeN_noabort(i32 %312, i32 2)
  store i16 %311, ptr %op.4.i847, align 1
  %add.ptr119.i855 = getelementptr i8, ptr %op.4.i847, i32 2
  %cmp123.i856 = icmp eq ptr %lowLimit.5.i846, %279
  br i1 %cmp123.i856, label %if.then125.i868, label %if.else146.i956

if.then125.i868:                                  ; preds = %_next_match.i857
  %add.ptr126.i858 = getelementptr i8, ptr %match.3.i849, i32 %refDelta.4.i848
  %sub.ptr.rhs.cast128.i859 = ptrtoint ptr %add.ptr126.i858 to i32
  %sub.ptr.sub129.i860 = sub i32 %sub.ptr.lhs.cast.i715, %sub.ptr.rhs.cast128.i859
  %add.ptr130.i861 = getelementptr i8, ptr %ip.2.i845, i32 %sub.ptr.sub129.i860
  %cmp131.i862 = icmp ugt ptr %add.ptr130.i861, %add.ptr6.i719
  %spec.select.i863 = select i1 %cmp131.i862, ptr %add.ptr6.i719, ptr %add.ptr130.i861
  %add.ptr135.i864 = getelementptr i8, ptr %ip.2.i845, i32 4
  %add.ptr136.i865 = getelementptr i8, ptr %add.ptr126.i858, i32 4
  %add.ptr.i507.i866 = getelementptr i8, ptr %spec.select.i863, i32 -3
  %cmp59.i.i867 = icmp ugt ptr %add.ptr.i507.i866, %add.ptr135.i864
  br i1 %cmp59.i.i867, label %if.then125.i868.while.body.i.i875_crit_edge, label %if.then125.i868.while.end.i.i887_crit_edge, !prof !27

if.then125.i868.while.end.i.i887_crit_edge:       ; preds = %if.then125.i868
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i887

if.then125.i868.while.body.i.i875_crit_edge:      ; preds = %if.then125.i868
  br label %while.body.i.i875

while.body.i.i875:                                ; preds = %cleanup.i.i882.while.body.i.i875_crit_edge, %if.then125.i868.while.body.i.i875_crit_edge
  %pMatch.addr.061.i.i869 = phi ptr [ %add.ptr5.i.i880, %cleanup.i.i882.while.body.i.i875_crit_edge ], [ %add.ptr136.i865, %if.then125.i868.while.body.i.i875_crit_edge ]
  %pIn.addr.060.i.i870 = phi ptr [ %add.ptr4.i.i879, %cleanup.i.i882.while.body.i.i875_crit_edge ], [ %add.ptr135.i864, %if.then125.i868.while.body.i.i875_crit_edge ]
  %313 = ptrtoint ptr %pMatch.addr.061.i.i869 to i32
  call void @__asan_loadN_noabort(i32 %313, i32 4)
  %pMatch.addr.0.val.i.i871 = load i32, ptr %pMatch.addr.061.i.i869, align 1
  %314 = ptrtoint ptr %pIn.addr.060.i.i870 to i32
  call void @__asan_loadN_noabort(i32 %314, i32 4)
  %pIn.addr.0.val.i.i872 = load i32, ptr %pIn.addr.060.i.i870, align 1
  %xor.i.i873 = xor i32 %pIn.addr.0.val.i.i872, %pMatch.addr.0.val.i.i871
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i.i873)
  %tobool3.not.i.i874 = icmp eq i32 %xor.i.i873, 0
  br i1 %tobool3.not.i.i874, label %cleanup.i.i882, label %cleanup.thread.i.i878

cleanup.thread.i.i878:                            ; preds = %while.body.i.i875
  call void @__sanitizer_cov_trace_pc() #6
  %315 = tail call i32 @llvm.ctlz.i32(i32 %xor.i.i873, i1 true) #4, !range !28
  %shr.i.i.i876 = lshr i32 %315, 3
  %add.ptr7.i.i877 = getelementptr i8, ptr %pIn.addr.060.i.i870, i32 %shr.i.i.i876
  br label %LZ4_count.exit.i910

cleanup.i.i882:                                   ; preds = %while.body.i.i875
  %add.ptr4.i.i879 = getelementptr i8, ptr %pIn.addr.060.i.i870, i32 4
  %add.ptr5.i.i880 = getelementptr i8, ptr %pMatch.addr.061.i.i869, i32 4
  %cmp.i508.i881 = icmp ult ptr %add.ptr4.i.i879, %add.ptr.i507.i866
  br i1 %cmp.i508.i881, label %cleanup.i.i882.while.body.i.i875_crit_edge, label %cleanup.i.i882.while.end.i.i887_crit_edge, !prof !27

cleanup.i.i882.while.end.i.i887_crit_edge:        ; preds = %cleanup.i.i882
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i887

cleanup.i.i882.while.body.i.i875_crit_edge:       ; preds = %cleanup.i.i882
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i875

while.end.i.i887:                                 ; preds = %cleanup.i.i882.while.end.i.i887_crit_edge, %if.then125.i868.while.end.i.i887_crit_edge
  %pIn.addr.0.lcssa.i.i883 = phi ptr [ %add.ptr135.i864, %if.then125.i868.while.end.i.i887_crit_edge ], [ %add.ptr4.i.i879, %cleanup.i.i882.while.end.i.i887_crit_edge ]
  %pMatch.addr.0.lcssa.i.i884 = phi ptr [ %add.ptr136.i865, %if.then125.i868.while.end.i.i887_crit_edge ], [ %add.ptr5.i.i880, %cleanup.i.i882.while.end.i.i887_crit_edge ]
  %add.ptr8.i.i885 = getelementptr i8, ptr %spec.select.i863, i32 -1
  %cmp9.i.i886 = icmp ult ptr %pIn.addr.0.lcssa.i.i883, %add.ptr8.i.i885
  br i1 %cmp9.i.i886, label %land.lhs.true.i.i891, label %while.end.i.i887.if.end18.i.i898_crit_edge

while.end.i.i887.if.end18.i.i898_crit_edge:       ; preds = %while.end.i.i887
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i.i898

land.lhs.true.i.i891:                             ; preds = %while.end.i.i887
  %316 = ptrtoint ptr %pMatch.addr.0.lcssa.i.i884 to i32
  call void @__asan_loadN_noabort(i32 %316, i32 2)
  %pMatch.addr.0.val53.i.i888 = load i16, ptr %pMatch.addr.0.lcssa.i.i884, align 1
  %317 = ptrtoint ptr %pIn.addr.0.lcssa.i.i883 to i32
  call void @__asan_loadN_noabort(i32 %317, i32 2)
  %pIn.addr.0.val52.i.i889 = load i16, ptr %pIn.addr.0.lcssa.i.i883, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %pMatch.addr.0.val53.i.i888, i16 %pIn.addr.0.val52.i.i889)
  %cmp13.i.i890 = icmp eq i16 %pMatch.addr.0.val53.i.i888, %pIn.addr.0.val52.i.i889
  br i1 %cmp13.i.i890, label %if.then15.i.i894, label %land.lhs.true.i.i891.if.end18.i.i898_crit_edge

land.lhs.true.i.i891.if.end18.i.i898_crit_edge:   ; preds = %land.lhs.true.i.i891
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i.i898

if.then15.i.i894:                                 ; preds = %land.lhs.true.i.i891
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i.i892 = getelementptr i8, ptr %pIn.addr.0.lcssa.i.i883, i32 2
  %add.ptr17.i.i893 = getelementptr i8, ptr %pMatch.addr.0.lcssa.i.i884, i32 2
  br label %if.end18.i.i898

if.end18.i.i898:                                  ; preds = %if.then15.i.i894, %land.lhs.true.i.i891.if.end18.i.i898_crit_edge, %while.end.i.i887.if.end18.i.i898_crit_edge
  %pIn.addr.2.i.i895 = phi ptr [ %add.ptr16.i.i892, %if.then15.i.i894 ], [ %pIn.addr.0.lcssa.i.i883, %land.lhs.true.i.i891.if.end18.i.i898_crit_edge ], [ %pIn.addr.0.lcssa.i.i883, %while.end.i.i887.if.end18.i.i898_crit_edge ]
  %pMatch.addr.2.i.i896 = phi ptr [ %add.ptr17.i.i893, %if.then15.i.i894 ], [ %pMatch.addr.0.lcssa.i.i884, %land.lhs.true.i.i891.if.end18.i.i898_crit_edge ], [ %pMatch.addr.0.lcssa.i.i884, %while.end.i.i887.if.end18.i.i898_crit_edge ]
  %cmp19.i.i897 = icmp ult ptr %pIn.addr.2.i.i895, %spec.select.i863
  br i1 %cmp19.i.i897, label %land.lhs.true21.i.i902, label %if.end18.i.i898.LZ4_count.exit.i910_crit_edge

if.end18.i.i898.LZ4_count.exit.i910_crit_edge:    ; preds = %if.end18.i.i898
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_count.exit.i910

land.lhs.true21.i.i902:                           ; preds = %if.end18.i.i898
  call void @__sanitizer_cov_trace_pc() #6
  %318 = ptrtoint ptr %pMatch.addr.2.i.i896 to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %pMatch.addr.2.i.i896, align 1
  %320 = ptrtoint ptr %pIn.addr.2.i.i895 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %pIn.addr.2.i.i895, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %319, i8 %321)
  %cmp24.i.i899 = icmp eq i8 %319, %321
  %spec.select.idx.i.i900 = zext i1 %cmp24.i.i899 to i32
  %spec.select.i.i901 = getelementptr i8, ptr %pIn.addr.2.i.i895, i32 %spec.select.idx.i.i900
  br label %LZ4_count.exit.i910

LZ4_count.exit.i910:                              ; preds = %land.lhs.true21.i.i902, %if.end18.i.i898.LZ4_count.exit.i910_crit_edge, %cleanup.thread.i.i878
  %add.ptr7.sink.i.i903 = phi ptr [ %add.ptr7.i.i877, %cleanup.thread.i.i878 ], [ %pIn.addr.2.i.i895, %if.end18.i.i898.LZ4_count.exit.i910_crit_edge ], [ %spec.select.i.i901, %land.lhs.true21.i.i902 ]
  %sub.ptr.lhs.cast.i.i904 = ptrtoint ptr %add.ptr7.sink.i.i903 to i32
  %sub.ptr.rhs.cast.i.i905 = ptrtoint ptr %add.ptr135.i864 to i32
  %sub.ptr.sub.i.i906 = sub i32 %sub.ptr.lhs.cast.i.i904, %sub.ptr.rhs.cast.i.i905
  %add.i907 = add i32 %sub.ptr.sub.i.i906, 4
  %add.ptr138.i908 = getelementptr i8, ptr %ip.2.i845, i32 %add.i907
  %cmp139.i909 = icmp eq ptr %add.ptr138.i908, %spec.select.i863
  br i1 %cmp139.i909, label %if.then141.i912, label %LZ4_count.exit.i910.if.end152.i1003_crit_edge

LZ4_count.exit.i910.if.end152.i1003_crit_edge:    ; preds = %LZ4_count.exit.i910
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end152.i1003

if.then141.i912:                                  ; preds = %LZ4_count.exit.i910
  %cmp59.i510.i911 = icmp ugt ptr %add.ptr.i550.i741, %spec.select.i863
  br i1 %cmp59.i510.i911, label %if.then141.i912.while.body.i517.i919_crit_edge, label %if.then141.i912.while.end.i529.i930_crit_edge, !prof !27

if.then141.i912.while.end.i529.i930_crit_edge:    ; preds = %if.then141.i912
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i529.i930

if.then141.i912.while.body.i517.i919_crit_edge:   ; preds = %if.then141.i912
  br label %while.body.i517.i919

while.body.i517.i919:                             ; preds = %cleanup.i524.i926.while.body.i517.i919_crit_edge, %if.then141.i912.while.body.i517.i919_crit_edge
  %pMatch.addr.061.i511.i913 = phi ptr [ %add.ptr5.i522.i924, %cleanup.i524.i926.while.body.i517.i919_crit_edge ], [ %source, %if.then141.i912.while.body.i517.i919_crit_edge ]
  %pIn.addr.060.i512.i914 = phi ptr [ %add.ptr4.i521.i923, %cleanup.i524.i926.while.body.i517.i919_crit_edge ], [ %spec.select.i863, %if.then141.i912.while.body.i517.i919_crit_edge ]
  %322 = ptrtoint ptr %pMatch.addr.061.i511.i913 to i32
  call void @__asan_loadN_noabort(i32 %322, i32 4)
  %pMatch.addr.0.val.i513.i915 = load i32, ptr %pMatch.addr.061.i511.i913, align 1
  %323 = ptrtoint ptr %pIn.addr.060.i512.i914 to i32
  call void @__asan_loadN_noabort(i32 %323, i32 4)
  %pIn.addr.0.val.i514.i916 = load i32, ptr %pIn.addr.060.i512.i914, align 1
  %xor.i515.i917 = xor i32 %pIn.addr.0.val.i514.i916, %pMatch.addr.0.val.i513.i915
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i515.i917)
  %tobool3.not.i516.i918 = icmp eq i32 %xor.i515.i917, 0
  br i1 %tobool3.not.i516.i918, label %cleanup.i524.i926, label %cleanup.thread.i520.i922

cleanup.thread.i520.i922:                         ; preds = %while.body.i517.i919
  call void @__sanitizer_cov_trace_pc() #6
  %324 = tail call i32 @llvm.ctlz.i32(i32 %xor.i515.i917, i1 true) #4, !range !28
  %shr.i.i518.i920 = lshr i32 %324, 3
  %add.ptr7.i519.i921 = getelementptr i8, ptr %pIn.addr.060.i512.i914, i32 %shr.i.i518.i920
  br label %LZ4_count.exit549.i952

cleanup.i524.i926:                                ; preds = %while.body.i517.i919
  %add.ptr4.i521.i923 = getelementptr i8, ptr %pIn.addr.060.i512.i914, i32 4
  %add.ptr5.i522.i924 = getelementptr i8, ptr %pMatch.addr.061.i511.i913, i32 4
  %cmp.i523.i925 = icmp ult ptr %add.ptr4.i521.i923, %add.ptr.i550.i741
  br i1 %cmp.i523.i925, label %cleanup.i524.i926.while.body.i517.i919_crit_edge, label %cleanup.i524.i926.while.end.i529.i930_crit_edge, !prof !27

cleanup.i524.i926.while.end.i529.i930_crit_edge:  ; preds = %cleanup.i524.i926
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i529.i930

cleanup.i524.i926.while.body.i517.i919_crit_edge: ; preds = %cleanup.i524.i926
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i517.i919

while.end.i529.i930:                              ; preds = %cleanup.i524.i926.while.end.i529.i930_crit_edge, %if.then141.i912.while.end.i529.i930_crit_edge
  %pIn.addr.0.lcssa.i525.i927 = phi ptr [ %spec.select.i863, %if.then141.i912.while.end.i529.i930_crit_edge ], [ %add.ptr4.i521.i923, %cleanup.i524.i926.while.end.i529.i930_crit_edge ]
  %pMatch.addr.0.lcssa.i526.i928 = phi ptr [ %source, %if.then141.i912.while.end.i529.i930_crit_edge ], [ %add.ptr5.i522.i924, %cleanup.i524.i926.while.end.i529.i930_crit_edge ]
  %cmp9.i528.i929 = icmp ult ptr %pIn.addr.0.lcssa.i525.i927, %add.ptr8.i568.i742
  br i1 %cmp9.i528.i929, label %land.lhs.true.i533.i934, label %while.end.i529.i930.if.end18.i540.i941_crit_edge

while.end.i529.i930.if.end18.i540.i941_crit_edge: ; preds = %while.end.i529.i930
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i540.i941

land.lhs.true.i533.i934:                          ; preds = %while.end.i529.i930
  %325 = ptrtoint ptr %pMatch.addr.0.lcssa.i526.i928 to i32
  call void @__asan_loadN_noabort(i32 %325, i32 2)
  %pMatch.addr.0.val53.i530.i931 = load i16, ptr %pMatch.addr.0.lcssa.i526.i928, align 1
  %326 = ptrtoint ptr %pIn.addr.0.lcssa.i525.i927 to i32
  call void @__asan_loadN_noabort(i32 %326, i32 2)
  %pIn.addr.0.val52.i531.i932 = load i16, ptr %pIn.addr.0.lcssa.i525.i927, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %pMatch.addr.0.val53.i530.i931, i16 %pIn.addr.0.val52.i531.i932)
  %cmp13.i532.i933 = icmp eq i16 %pMatch.addr.0.val53.i530.i931, %pIn.addr.0.val52.i531.i932
  br i1 %cmp13.i532.i933, label %if.then15.i536.i937, label %land.lhs.true.i533.i934.if.end18.i540.i941_crit_edge

land.lhs.true.i533.i934.if.end18.i540.i941_crit_edge: ; preds = %land.lhs.true.i533.i934
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i540.i941

if.then15.i536.i937:                              ; preds = %land.lhs.true.i533.i934
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i534.i935 = getelementptr i8, ptr %pIn.addr.0.lcssa.i525.i927, i32 2
  %add.ptr17.i535.i936 = getelementptr i8, ptr %pMatch.addr.0.lcssa.i526.i928, i32 2
  br label %if.end18.i540.i941

if.end18.i540.i941:                               ; preds = %if.then15.i536.i937, %land.lhs.true.i533.i934.if.end18.i540.i941_crit_edge, %while.end.i529.i930.if.end18.i540.i941_crit_edge
  %pIn.addr.2.i537.i938 = phi ptr [ %add.ptr16.i534.i935, %if.then15.i536.i937 ], [ %pIn.addr.0.lcssa.i525.i927, %land.lhs.true.i533.i934.if.end18.i540.i941_crit_edge ], [ %pIn.addr.0.lcssa.i525.i927, %while.end.i529.i930.if.end18.i540.i941_crit_edge ]
  %pMatch.addr.2.i538.i939 = phi ptr [ %add.ptr17.i535.i936, %if.then15.i536.i937 ], [ %pMatch.addr.0.lcssa.i526.i928, %land.lhs.true.i533.i934.if.end18.i540.i941_crit_edge ], [ %pMatch.addr.0.lcssa.i526.i928, %while.end.i529.i930.if.end18.i540.i941_crit_edge ]
  %cmp19.i539.i940 = icmp ult ptr %pIn.addr.2.i537.i938, %add.ptr6.i719
  br i1 %cmp19.i539.i940, label %land.lhs.true21.i544.i945, label %if.end18.i540.i941.LZ4_count.exit549.i952_crit_edge

if.end18.i540.i941.LZ4_count.exit549.i952_crit_edge: ; preds = %if.end18.i540.i941
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_count.exit549.i952

land.lhs.true21.i544.i945:                        ; preds = %if.end18.i540.i941
  call void @__sanitizer_cov_trace_pc() #6
  %327 = ptrtoint ptr %pMatch.addr.2.i538.i939 to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %pMatch.addr.2.i538.i939, align 1
  %329 = ptrtoint ptr %pIn.addr.2.i537.i938 to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %pIn.addr.2.i537.i938, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %328, i8 %330)
  %cmp24.i541.i942 = icmp eq i8 %328, %330
  %spec.select.idx.i542.i943 = zext i1 %cmp24.i541.i942 to i32
  %spec.select.i543.i944 = getelementptr i8, ptr %pIn.addr.2.i537.i938, i32 %spec.select.idx.i542.i943
  br label %LZ4_count.exit549.i952

LZ4_count.exit549.i952:                           ; preds = %land.lhs.true21.i544.i945, %if.end18.i540.i941.LZ4_count.exit549.i952_crit_edge, %cleanup.thread.i520.i922
  %add.ptr7.sink.i545.i946 = phi ptr [ %add.ptr7.i519.i921, %cleanup.thread.i520.i922 ], [ %pIn.addr.2.i537.i938, %if.end18.i540.i941.LZ4_count.exit549.i952_crit_edge ], [ %spec.select.i543.i944, %land.lhs.true21.i544.i945 ]
  %sub.ptr.lhs.cast.i546.i947 = ptrtoint ptr %add.ptr7.sink.i545.i946 to i32
  %sub.ptr.rhs.cast.i547.i948 = ptrtoint ptr %spec.select.i863 to i32
  %sub.ptr.sub.i548.i949 = sub i32 %sub.ptr.lhs.cast.i546.i947, %sub.ptr.rhs.cast.i547.i948
  %add143.i950 = add i32 %sub.ptr.sub.i548.i949, %sub.ptr.sub.i.i906
  %add.ptr144.i951 = getelementptr i8, ptr %spec.select.i863, i32 %sub.ptr.sub.i548.i949
  br label %if.end152.i1003

if.else146.i956:                                  ; preds = %_next_match.i857
  %add.ptr147.i953 = getelementptr i8, ptr %ip.2.i845, i32 4
  %add.ptr148.i954 = getelementptr i8, ptr %match.3.i849, i32 4
  %cmp59.i551.i955 = icmp ugt ptr %add.ptr.i550.i741, %add.ptr147.i953
  br i1 %cmp59.i551.i955, label %if.else146.i956.while.body.i558.i963_crit_edge, label %if.else146.i956.while.end.i570.i974_crit_edge, !prof !27

if.else146.i956.while.end.i570.i974_crit_edge:    ; preds = %if.else146.i956
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i570.i974

if.else146.i956.while.body.i558.i963_crit_edge:   ; preds = %if.else146.i956
  br label %while.body.i558.i963

while.body.i558.i963:                             ; preds = %cleanup.i565.i970.while.body.i558.i963_crit_edge, %if.else146.i956.while.body.i558.i963_crit_edge
  %pMatch.addr.061.i552.i957 = phi ptr [ %add.ptr5.i563.i968, %cleanup.i565.i970.while.body.i558.i963_crit_edge ], [ %add.ptr148.i954, %if.else146.i956.while.body.i558.i963_crit_edge ]
  %pIn.addr.060.i553.i958 = phi ptr [ %add.ptr4.i562.i967, %cleanup.i565.i970.while.body.i558.i963_crit_edge ], [ %add.ptr147.i953, %if.else146.i956.while.body.i558.i963_crit_edge ]
  %331 = ptrtoint ptr %pMatch.addr.061.i552.i957 to i32
  call void @__asan_loadN_noabort(i32 %331, i32 4)
  %pMatch.addr.0.val.i554.i959 = load i32, ptr %pMatch.addr.061.i552.i957, align 1
  %332 = ptrtoint ptr %pIn.addr.060.i553.i958 to i32
  call void @__asan_loadN_noabort(i32 %332, i32 4)
  %pIn.addr.0.val.i555.i960 = load i32, ptr %pIn.addr.060.i553.i958, align 1
  %xor.i556.i961 = xor i32 %pIn.addr.0.val.i555.i960, %pMatch.addr.0.val.i554.i959
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i556.i961)
  %tobool3.not.i557.i962 = icmp eq i32 %xor.i556.i961, 0
  br i1 %tobool3.not.i557.i962, label %cleanup.i565.i970, label %cleanup.thread.i561.i966

cleanup.thread.i561.i966:                         ; preds = %while.body.i558.i963
  call void @__sanitizer_cov_trace_pc() #6
  %333 = tail call i32 @llvm.ctlz.i32(i32 %xor.i556.i961, i1 true) #4, !range !28
  %shr.i.i559.i964 = lshr i32 %333, 3
  %add.ptr7.i560.i965 = getelementptr i8, ptr %pIn.addr.060.i553.i958, i32 %shr.i.i559.i964
  br label %LZ4_count.exit590.i996

cleanup.i565.i970:                                ; preds = %while.body.i558.i963
  %add.ptr4.i562.i967 = getelementptr i8, ptr %pIn.addr.060.i553.i958, i32 4
  %add.ptr5.i563.i968 = getelementptr i8, ptr %pMatch.addr.061.i552.i957, i32 4
  %cmp.i564.i969 = icmp ult ptr %add.ptr4.i562.i967, %add.ptr.i550.i741
  br i1 %cmp.i564.i969, label %cleanup.i565.i970.while.body.i558.i963_crit_edge, label %cleanup.i565.i970.while.end.i570.i974_crit_edge, !prof !27

cleanup.i565.i970.while.end.i570.i974_crit_edge:  ; preds = %cleanup.i565.i970
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i570.i974

cleanup.i565.i970.while.body.i558.i963_crit_edge: ; preds = %cleanup.i565.i970
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i558.i963

while.end.i570.i974:                              ; preds = %cleanup.i565.i970.while.end.i570.i974_crit_edge, %if.else146.i956.while.end.i570.i974_crit_edge
  %pIn.addr.0.lcssa.i566.i971 = phi ptr [ %add.ptr147.i953, %if.else146.i956.while.end.i570.i974_crit_edge ], [ %add.ptr4.i562.i967, %cleanup.i565.i970.while.end.i570.i974_crit_edge ]
  %pMatch.addr.0.lcssa.i567.i972 = phi ptr [ %add.ptr148.i954, %if.else146.i956.while.end.i570.i974_crit_edge ], [ %add.ptr5.i563.i968, %cleanup.i565.i970.while.end.i570.i974_crit_edge ]
  %cmp9.i569.i973 = icmp ult ptr %pIn.addr.0.lcssa.i566.i971, %add.ptr8.i568.i742
  br i1 %cmp9.i569.i973, label %land.lhs.true.i574.i978, label %while.end.i570.i974.if.end18.i581.i985_crit_edge

while.end.i570.i974.if.end18.i581.i985_crit_edge: ; preds = %while.end.i570.i974
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i581.i985

land.lhs.true.i574.i978:                          ; preds = %while.end.i570.i974
  %334 = ptrtoint ptr %pMatch.addr.0.lcssa.i567.i972 to i32
  call void @__asan_loadN_noabort(i32 %334, i32 2)
  %pMatch.addr.0.val53.i571.i975 = load i16, ptr %pMatch.addr.0.lcssa.i567.i972, align 1
  %335 = ptrtoint ptr %pIn.addr.0.lcssa.i566.i971 to i32
  call void @__asan_loadN_noabort(i32 %335, i32 2)
  %pIn.addr.0.val52.i572.i976 = load i16, ptr %pIn.addr.0.lcssa.i566.i971, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %pMatch.addr.0.val53.i571.i975, i16 %pIn.addr.0.val52.i572.i976)
  %cmp13.i573.i977 = icmp eq i16 %pMatch.addr.0.val53.i571.i975, %pIn.addr.0.val52.i572.i976
  br i1 %cmp13.i573.i977, label %if.then15.i577.i981, label %land.lhs.true.i574.i978.if.end18.i581.i985_crit_edge

land.lhs.true.i574.i978.if.end18.i581.i985_crit_edge: ; preds = %land.lhs.true.i574.i978
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i581.i985

if.then15.i577.i981:                              ; preds = %land.lhs.true.i574.i978
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i575.i979 = getelementptr i8, ptr %pIn.addr.0.lcssa.i566.i971, i32 2
  %add.ptr17.i576.i980 = getelementptr i8, ptr %pMatch.addr.0.lcssa.i567.i972, i32 2
  br label %if.end18.i581.i985

if.end18.i581.i985:                               ; preds = %if.then15.i577.i981, %land.lhs.true.i574.i978.if.end18.i581.i985_crit_edge, %while.end.i570.i974.if.end18.i581.i985_crit_edge
  %pIn.addr.2.i578.i982 = phi ptr [ %add.ptr16.i575.i979, %if.then15.i577.i981 ], [ %pIn.addr.0.lcssa.i566.i971, %land.lhs.true.i574.i978.if.end18.i581.i985_crit_edge ], [ %pIn.addr.0.lcssa.i566.i971, %while.end.i570.i974.if.end18.i581.i985_crit_edge ]
  %pMatch.addr.2.i579.i983 = phi ptr [ %add.ptr17.i576.i980, %if.then15.i577.i981 ], [ %pMatch.addr.0.lcssa.i567.i972, %land.lhs.true.i574.i978.if.end18.i581.i985_crit_edge ], [ %pMatch.addr.0.lcssa.i567.i972, %while.end.i570.i974.if.end18.i581.i985_crit_edge ]
  %cmp19.i580.i984 = icmp ult ptr %pIn.addr.2.i578.i982, %add.ptr6.i719
  br i1 %cmp19.i580.i984, label %land.lhs.true21.i585.i989, label %if.end18.i581.i985.LZ4_count.exit590.i996_crit_edge

if.end18.i581.i985.LZ4_count.exit590.i996_crit_edge: ; preds = %if.end18.i581.i985
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_count.exit590.i996

land.lhs.true21.i585.i989:                        ; preds = %if.end18.i581.i985
  call void @__sanitizer_cov_trace_pc() #6
  %336 = ptrtoint ptr %pMatch.addr.2.i579.i983 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %pMatch.addr.2.i579.i983, align 1
  %338 = ptrtoint ptr %pIn.addr.2.i578.i982 to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %pIn.addr.2.i578.i982, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %337, i8 %339)
  %cmp24.i582.i986 = icmp eq i8 %337, %339
  %spec.select.idx.i583.i987 = zext i1 %cmp24.i582.i986 to i32
  %spec.select.i584.i988 = getelementptr i8, ptr %pIn.addr.2.i578.i982, i32 %spec.select.idx.i583.i987
  br label %LZ4_count.exit590.i996

LZ4_count.exit590.i996:                           ; preds = %land.lhs.true21.i585.i989, %if.end18.i581.i985.LZ4_count.exit590.i996_crit_edge, %cleanup.thread.i561.i966
  %add.ptr7.sink.i586.i990 = phi ptr [ %add.ptr7.i560.i965, %cleanup.thread.i561.i966 ], [ %pIn.addr.2.i578.i982, %if.end18.i581.i985.LZ4_count.exit590.i996_crit_edge ], [ %spec.select.i584.i988, %land.lhs.true21.i585.i989 ]
  %sub.ptr.lhs.cast.i587.i991 = ptrtoint ptr %add.ptr7.sink.i586.i990 to i32
  %sub.ptr.rhs.cast.i588.i992 = ptrtoint ptr %add.ptr147.i953 to i32
  %sub.ptr.sub.i589.i993 = sub i32 %sub.ptr.lhs.cast.i587.i991, %sub.ptr.rhs.cast.i588.i992
  %add150.i994 = add i32 %sub.ptr.sub.i589.i993, 4
  %add.ptr151.i995 = getelementptr i8, ptr %ip.2.i845, i32 %add150.i994
  br label %if.end152.i1003

if.end152.i1003:                                  ; preds = %LZ4_count.exit590.i996, %LZ4_count.exit549.i952, %LZ4_count.exit.i910.if.end152.i1003_crit_edge
  %ip.4.i997 = phi ptr [ %add.ptr151.i995, %LZ4_count.exit590.i996 ], [ %add.ptr144.i951, %LZ4_count.exit549.i952 ], [ %add.ptr138.i908, %LZ4_count.exit.i910.if.end152.i1003_crit_edge ]
  %matchCode.1.i998 = phi i32 [ %sub.ptr.sub.i589.i993, %LZ4_count.exit590.i996 ], [ %add143.i950, %LZ4_count.exit549.i952 ], [ %sub.ptr.sub.i.i906, %LZ4_count.exit.i910.if.end152.i1003_crit_edge ]
  %add.ptr155.i999 = getelementptr i8, ptr %op.4.i847, i32 8
  %shr156.i1000 = lshr i32 %matchCode.1.i998, 8
  %add.ptr157.i1001 = getelementptr i8, ptr %add.ptr155.i999, i32 %shr156.i1000
  %cmp158.i1002 = icmp ugt ptr %add.ptr157.i1001, %add.ptr7.i720
  br i1 %cmp158.i1002, label %if.end152.i1003.if.end54_crit_edge, label %if.end167.i1005, !prof !29

if.end152.i1003.if.end54_crit_edge:               ; preds = %if.end152.i1003
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.end167.i1005:                                  ; preds = %if.end152.i1003
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %matchCode.1.i998)
  %cmp168.i1004 = icmp ugt i32 %matchCode.1.i998, 14
  %340 = ptrtoint ptr %token.0.i850 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %token.0.i850, align 1
  br i1 %cmp168.i1004, label %if.then170.i1009, label %if.else186.i1025

if.then170.i1009:                                 ; preds = %if.end167.i1005
  %add172.i1006 = add i8 %341, 15
  %342 = ptrtoint ptr %token.0.i850 to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %add172.i1006, ptr %token.0.i850, align 1
  %sub174.i1007 = add i32 %matchCode.1.i998, -15
  %343 = ptrtoint ptr %add.ptr119.i855 to i32
  call void @__asan_storeN_noabort(i32 %343, i32 4)
  store i32 -1, ptr %add.ptr119.i855, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1019, i32 %sub174.i1007)
  %cmp176835.i1008 = icmp ugt i32 %sub174.i1007, 1019
  br i1 %cmp176835.i1008, label %while.body178.preheader.i1013, label %if.then170.i1009.while.end181.i1023_crit_edge

if.then170.i1009.while.end181.i1023_crit_edge:    ; preds = %if.then170.i1009
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end181.i1023

while.body178.preheader.i1013:                    ; preds = %if.then170.i1009
  call void @__sanitizer_cov_trace_pc() #6
  %uglygep888.i1010 = getelementptr i8, ptr %op.4.i847, i32 6
  %344 = add i32 %matchCode.1.i998, -1035
  %345 = udiv i32 %344, 1020
  %346 = shl nuw nsw i32 %345, 2
  %347 = add nuw nsw i32 %346, 4
  %348 = call ptr @memset(ptr %uglygep888.i1010, i32 255, i32 %347)
  %uglygep889.i1011 = getelementptr i8, ptr %uglygep888.i1010, i32 %346
  %.neg892.i1012 = mul i32 %345, -1020
  %349 = add i32 %.neg892.i1012, %344
  br label %while.end181.i1023

while.end181.i1023:                               ; preds = %while.body178.preheader.i1013, %if.then170.i1009.while.end181.i1023_crit_edge
  %op.5.lcssa.i1014 = phi ptr [ %add.ptr119.i855, %if.then170.i1009.while.end181.i1023_crit_edge ], [ %uglygep889.i1011, %while.body178.preheader.i1013 ]
  %matchCode.2.lcssa.i1015 = phi i32 [ %sub174.i1007, %if.then170.i1009.while.end181.i1023_crit_edge ], [ %349, %while.body178.preheader.i1013 ]
  %div182.lhs.trunc.i1016 = trunc i32 %matchCode.2.lcssa.i1015 to i16
  %div182.lhs.trunc.i1016.frozen = freeze i16 %div182.lhs.trunc.i1016
  %div182784.i1017 = udiv i16 %div182.lhs.trunc.i1016.frozen, 255
  %div182.zext.i1018 = zext i16 %div182784.i1017 to i32
  %add.ptr183.i1019 = getelementptr i8, ptr %op.5.lcssa.i1014, i32 %div182.zext.i1018
  %350 = mul i16 %div182784.i1017, 255
  %rem785.i1020.decomposed = sub i16 %div182.lhs.trunc.i1016.frozen, %350
  %conv184.i1021 = trunc i16 %rem785.i1020.decomposed to i8
  %incdec.ptr185.i1022 = getelementptr i8, ptr %add.ptr183.i1019, i32 1
  %351 = ptrtoint ptr %add.ptr183.i1019 to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 %conv184.i1021, ptr %add.ptr183.i1019, align 1
  br label %cleanup.cont195.i1028

if.else186.i1025:                                 ; preds = %if.end167.i1005
  call void @__sanitizer_cov_trace_pc() #6
  %352 = trunc i32 %matchCode.1.i998 to i8
  %conv191.i1024 = add i8 %341, %352
  %353 = ptrtoint ptr %token.0.i850 to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 %conv191.i1024, ptr %token.0.i850, align 1
  br label %cleanup.cont195.i1028

cleanup.cont195.i1028:                            ; preds = %if.else186.i1025, %while.end181.i1023
  %op.7.ph.i1026 = phi ptr [ %add.ptr119.i855, %if.else186.i1025 ], [ %incdec.ptr185.i1022, %while.end181.i1023 ]
  %cmp196.i1027 = icmp ugt ptr %ip.4.i997, %add.ptr5.i718
  br i1 %cmp196.i1027, label %cleanup.cont195.i1028._last_literals.i1065_crit_edge, label %if.end199.i1033

cleanup.cont195.i1028._last_literals.i1065_crit_edge: ; preds = %cleanup.cont195.i1028
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i1065

if.end199.i1033:                                  ; preds = %cleanup.cont195.i1028
  %add.ptr200.i1029 = getelementptr i8, ptr %ip.4.i997, i32 -2
  %354 = ptrtoint ptr %add.ptr200.i1029 to i32
  call void @__asan_loadN_noabort(i32 %354, i32 4)
  %p.val.i591.i1030 = load i32, ptr %add.ptr200.i1029, align 1
  %mul.i.i.i593.i1031 = mul i32 %p.val.i591.i1030, -1640531535
  %retval.0.i.i.i595.i1032 = lshr i32 %mul.i.i.i593.i1031, 20
  %sub.ptr.lhs.cast.i.i598.i1034 = ptrtoint ptr %add.ptr200.i1029 to i32
  %sub.ptr.sub.i.i600.i1035 = sub i32 %sub.ptr.lhs.cast.i.i598.i1034, %sub.ptr.rhs.cast.i.i.i732
  %arrayidx3.i.i601.i1036 = getelementptr i32, ptr %LZ4_stream, i32 %retval.0.i.i.i595.i1032
  %355 = ptrtoint ptr %arrayidx3.i.i601.i1036 to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 %sub.ptr.sub.i.i600.i1035, ptr %arrayidx3.i.i601.i1036, align 4
  %356 = ptrtoint ptr %ip.4.i997 to i32
  call void @__asan_loadN_noabort(i32 %356, i32 4)
  %ip.4.val502719.i1037 = load i32, ptr %ip.4.i997, align 1
  %mul.i.i.i611720.i1038 = mul i32 %ip.4.val502719.i1037, -1640531535
  %retval.0.i.i.i613721.i1039 = lshr i32 %mul.i.i.i611720.i1038, 20
  %arrayidx4.i.i.i1040 = getelementptr i32, ptr %LZ4_stream, i32 %retval.0.i.i.i613721.i1039
  %357 = ptrtoint ptr %arrayidx4.i.i.i1040 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %arrayidx4.i.i.i1040, align 4
  %add.ptr.i.i.i1041 = getelementptr i8, ptr %add.ptr17.i725, i32 %358
  %cmp209742.i1042 = icmp ult ptr %add.ptr.i.i.i1041, %source
  %.source498743.i1043 = select i1 %cmp209742.i1042, ptr %279, ptr %source
  %sub.ptr.sub.499744.i1044 = select i1 %cmp209742.i1042, i32 %sub.ptr.sub.i716, i32 0
  %sub.ptr.lhs.cast.i.i625.i1045 = ptrtoint ptr %ip.4.i997 to i32
  %sub.ptr.sub.i.i627.i1046 = sub i32 %sub.ptr.lhs.cast.i.i625.i1045, %sub.ptr.rhs.cast.i.i.i732
  store i32 %sub.ptr.sub.i.i627.i1046, ptr %arrayidx4.i.i.i1040, align 4
  %add.ptr224.i1048 = getelementptr i8, ptr %add.ptr.i.i.i1041, i32 65535
  %cmp225.not.i1049 = icmp ult ptr %add.ptr224.i1048, %ip.4.i997
  br i1 %cmp225.not.i1049, label %if.end199.i1033.cleanup238.i1059_crit_edge, label %land.lhs.true227.i1054

if.end199.i1033.cleanup238.i1059_crit_edge:       ; preds = %if.end199.i1033
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup238.i1059

land.lhs.true227.i1054:                           ; preds = %if.end199.i1033
  %add.ptr228.i1050 = getelementptr i8, ptr %add.ptr.i.i.i1041, i32 %sub.ptr.sub.499744.i1044
  %359 = ptrtoint ptr %add.ptr228.i1050 to i32
  call void @__asan_loadN_noabort(i32 %359, i32 4)
  %add.ptr228.val.i1051 = load i32, ptr %add.ptr228.i1050, align 1
  %360 = ptrtoint ptr %ip.4.i997 to i32
  call void @__asan_loadN_noabort(i32 %360, i32 4)
  %ip.4.val.i1052 = load i32, ptr %ip.4.i997, align 1
  %cmp231.i1053 = icmp eq i32 %add.ptr228.val.i1051, %ip.4.val.i1052
  br i1 %cmp231.i1053, label %if.then233.i1056, label %land.lhs.true227.i1054.cleanup238.i1059_crit_edge

land.lhs.true227.i1054.cleanup238.i1059_crit_edge: ; preds = %land.lhs.true227.i1054
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup238.i1059

if.then233.i1056:                                 ; preds = %land.lhs.true227.i1054
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr234.i1055 = getelementptr i8, ptr %op.7.ph.i1026, i32 1
  %361 = ptrtoint ptr %op.7.ph.i1026 to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 0, ptr %op.7.ph.i1026, align 1
  br label %_next_match.i857

cleanup238.i1059:                                 ; preds = %land.lhs.true227.i1054.cleanup238.i1059_crit_edge, %if.end199.i1033.cleanup238.i1059_crit_edge
  %add.ptr25806.i1057 = getelementptr i8, ptr %ip.4.i997, i32 2
  %cmp26809.i1058 = icmp ugt ptr %add.ptr25806.i1057, %add.ptr5.i718
  br i1 %cmp26809.i1058, label %cleanup238.i1059._last_literals.i1065_crit_edge, label %cleanup238.i1059.if.end29.lr.ph.i751_crit_edge, !prof !26

cleanup238.i1059.if.end29.lr.ph.i751_crit_edge:   ; preds = %cleanup238.i1059
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.lr.ph.i751

cleanup238.i1059._last_literals.i1065_crit_edge:  ; preds = %cleanup238.i1059
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals.i1065

_last_literals.i1065:                             ; preds = %cleanup238.i1059._last_literals.i1065_crit_edge, %cleanup.cont195.i1028._last_literals.i1065_crit_edge, %do.body.backedge.i783._last_literals.i1065_crit_edge, %if.end24.i731._last_literals.i1065_crit_edge, %if.end.i722._last_literals.i1065_crit_edge
  %anchor.3.i1060 = phi ptr [ %source, %if.end.i722._last_literals.i1065_crit_edge ], [ %source, %if.end24.i731._last_literals.i1065_crit_edge ], [ %ip.4.i997, %cleanup.cont195.i1028._last_literals.i1065_crit_edge ], [ %anchor.0847.i747, %do.body.backedge.i783._last_literals.i1065_crit_edge ], [ %ip.4.i997, %cleanup238.i1059._last_literals.i1065_crit_edge ]
  %op.9.i1061 = phi ptr [ %dest, %if.end.i722._last_literals.i1065_crit_edge ], [ %dest, %if.end24.i731._last_literals.i1065_crit_edge ], [ %op.7.ph.i1026, %cleanup.cont195.i1028._last_literals.i1065_crit_edge ], [ %op.0848.i746, %do.body.backedge.i783._last_literals.i1065_crit_edge ], [ %op.7.ph.i1026, %cleanup238.i1059._last_literals.i1065_crit_edge ]
  %sub.ptr.lhs.cast243.i1062 = ptrtoint ptr %add.ptr8 to i32
  %sub.ptr.rhs.cast244.i1063 = ptrtoint ptr %anchor.3.i1060 to i32
  %sub.ptr.sub245.i1064 = sub i32 %sub.ptr.lhs.cast243.i1062, %sub.ptr.rhs.cast244.i1063
  %sub.ptr.lhs.cast248.i1066 = ptrtoint ptr %op.9.i1061 to i32
  %sub.ptr.rhs.cast249.i1067 = ptrtoint ptr %dest to i32
  %sub254.i1068 = add i32 %sub.ptr.sub245.i1064, 240
  %div255.i1069 = udiv i32 %sub254.i1068, 255
  %sub.ptr.sub250.i1070 = sub i32 1, %sub.ptr.rhs.cast249.i1067
  %add251.i1071 = add i32 %sub.ptr.sub250.i1070, %sub.ptr.lhs.cast248.i1066
  %add252.i1072 = add i32 %add251.i1071, %sub.ptr.sub245.i1064
  %add256.i1073 = add i32 %add252.i1072, %div255.i1069
  call void @__sanitizer_cov_trace_cmp4(i32 %add256.i1073, i32 %maxOutputSize)
  %cmp257.i1074 = icmp ugt i32 %add256.i1073, %maxOutputSize
  br i1 %cmp257.i1074, label %_last_literals.i1065.if.end54_crit_edge, label %if.end260.i1076

_last_literals.i1065.if.end54_crit_edge:          ; preds = %_last_literals.i1065
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.end260.i1076:                                  ; preds = %_last_literals.i1065
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub245.i1064)
  %cmp261.i1075 = icmp ugt i32 %sub.ptr.sub245.i1064, 14
  br i1 %cmp261.i1075, label %if.then263.i1080, label %if.else276.i1090

if.then263.i1080:                                 ; preds = %if.end260.i1076
  %sub264.i1077 = add i32 %sub.ptr.sub245.i1064, -15
  %362 = ptrtoint ptr %op.9.i1061 to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 -16, ptr %op.9.i1061, align 1
  %op.10855.i1078 = getelementptr i8, ptr %op.9.i1061, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %sub264.i1077)
  %cmp267856.i1079 = icmp ugt i32 %sub264.i1077, 254
  br i1 %cmp267856.i1079, label %for.body269.preheader.i1083, label %if.then263.i1080.for.end273.i1087_crit_edge

if.then263.i1080.for.end273.i1087_crit_edge:      ; preds = %if.then263.i1080
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end273.i1087

for.body269.preheader.i1083:                      ; preds = %if.then263.i1080
  call void @__sanitizer_cov_trace_pc() #6
  %363 = add i32 %inputSize, -270
  %364 = add i32 %363, %source890.i709
  %365 = sub i32 %364, %sub.ptr.rhs.cast244.i1063
  %366 = udiv i32 %365, 255
  %367 = add nuw nsw i32 %366, 1
  %368 = call ptr @memset(ptr %op.10855.i1078, i32 255, i32 %367)
  %.neg.i1081 = mul i32 %366, -255
  %369 = add nuw nsw i32 %366, 2
  %370 = add i32 %.neg.i1081, %365
  %uglygep891.i1082 = getelementptr i8, ptr %op.9.i1061, i32 %369
  br label %for.end273.i1087

for.end273.i1087:                                 ; preds = %for.body269.preheader.i1083, %if.then263.i1080.for.end273.i1087_crit_edge
  %accumulator.0.lcssa.i1084 = phi i32 [ %sub264.i1077, %if.then263.i1080.for.end273.i1087_crit_edge ], [ %370, %for.body269.preheader.i1083 ]
  %op.10.lcssa.i1085 = phi ptr [ %op.10855.i1078, %if.then263.i1080.for.end273.i1087_crit_edge ], [ %uglygep891.i1082, %for.body269.preheader.i1083 ]
  %conv274.i1086 = trunc i32 %accumulator.0.lcssa.i1084 to i8
  %371 = ptrtoint ptr %op.10.lcssa.i1085 to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 %conv274.i1086, ptr %op.10.lcssa.i1085, align 1
  br label %cleanup.cont284.i1097

if.else276.i1090:                                 ; preds = %if.end260.i1076
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub245.tr.i1088 = trunc i32 %sub.ptr.sub245.i1064 to i8
  %conv278.i1089 = shl nuw i8 %sub.ptr.sub245.tr.i1088, 4
  %372 = ptrtoint ptr %op.9.i1061 to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 %conv278.i1089, ptr %op.9.i1061, align 1
  br label %cleanup.cont284.i1097

cleanup.cont284.i1097:                            ; preds = %if.else276.i1090, %for.end273.i1087
  %op.10.pn.i1091 = phi ptr [ %op.10.lcssa.i1085, %for.end273.i1087 ], [ %op.9.i1061, %if.else276.i1090 ]
  %op.11.i1092 = getelementptr i8, ptr %op.10.pn.i1091, i32 1
  %373 = call ptr @memcpy(ptr %op.11.i1092, ptr %anchor.3.i1060, i32 %sub.ptr.sub245.i1064)
  %add.ptr281.i1093 = getelementptr i8, ptr %op.11.i1092, i32 %sub.ptr.sub245.i1064
  %sub.ptr.lhs.cast285.i1094 = ptrtoint ptr %add.ptr281.i1093 to i32
  %sub.ptr.sub287.i1096 = sub i32 %sub.ptr.lhs.cast285.i1094, %sub.ptr.rhs.cast249.i1067
  br label %if.end54

if.end54:                                         ; preds = %cleanup.cont284.i1097, %_last_literals.i1065.if.end54_crit_edge, %if.end152.i1003.if.end54_crit_edge, %while.end.i814.if.end54_crit_edge, %if.else52.if.end54_crit_edge, %cleanup.cont284.i706, %_last_literals.i674.if.end54_crit_edge, %if.end152.i.if.end54_crit_edge, %while.end.i521.if.end54_crit_edge, %if.then50.if.end54_crit_edge
  %result43.0 = phi i32 [ %sub.ptr.sub287.i705, %cleanup.cont284.i706 ], [ 0, %if.then50.if.end54_crit_edge ], [ 0, %_last_literals.i674.if.end54_crit_edge ], [ %sub.ptr.sub287.i1096, %cleanup.cont284.i1097 ], [ 0, %if.else52.if.end54_crit_edge ], [ 0, %_last_literals.i1065.if.end54_crit_edge ], [ 0, %if.end152.i.if.end54_crit_edge ], [ 0, %while.end.i521.if.end54_crit_edge ], [ 0, %if.end152.i1003.if.end54_crit_edge ], [ 0, %while.end.i814.if.end54_crit_edge ]
  %374 = ptrtoint ptr %dictionary to i32
  call void @__asan_store4_noabort(i32 %374)
  store ptr %source, ptr %dictionary, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end54, %if.end38
  %inputSize.sink = phi i32 [ %inputSize, %if.end54 ], [ %add, %if.end38 ]
  %retval.0.ph = phi i32 [ %result43.0, %if.end54 ], [ %result.0, %if.end38 ]
  %375 = ptrtoint ptr %dictSize to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 %inputSize.sink, ptr %dictSize, align 4
  %376 = ptrtoint ptr %currentOffset.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %currentOffset.i, align 4
  %add58 = add i32 %377, %inputSize
  store i32 %add58, ptr %currentOffset.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @LZ4_compress_destSize_generic(ptr nocapture noundef %ctx, ptr noundef %src, ptr noundef %dst, ptr nocapture noundef %srcSizePtr, i32 noundef %targetDstSize, i32 noundef %tableType) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %srcSizePtr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %srcSizePtr, align 4
  %add.ptr = getelementptr i8, ptr %src, i32 %1
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 -12
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 -5
  %add.ptr3 = getelementptr i8, ptr %dst, i32 %targetDstSize
  %add.ptr5 = getelementptr i8, ptr %add.ptr3, i32 -2
  %add.ptr6 = getelementptr i8, ptr %add.ptr5, i32 -8
  %add.ptr7 = getelementptr i8, ptr %add.ptr6, i32 -1
  %add.ptr9 = getelementptr i8, ptr %add.ptr3, i32 -6
  %add.ptr10 = getelementptr i8, ptr %add.ptr7, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %targetDstSize)
  %cmp = icmp slt i32 %targetDstSize, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2113929216, i32 %1)
  %cmp11 = icmp ugt i32 %1, 2113929216
  %or.cond365 = select i1 %cmp, i1 true, i1 %cmp11
  br i1 %or.cond365, label %entry.cleanup208_crit_edge, label %if.end13

entry.cleanup208_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup208

if.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %tableType)
  %cmp14 = icmp eq i32 %tableType, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65546, i32 %1)
  %cmp15 = icmp ugt i32 %1, 65546
  %or.cond = select i1 %cmp14, i1 %cmp15, i1 false
  br i1 %or.cond, label %if.end13.cleanup208_crit_edge, label %if.end17

if.end13.cleanup208_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup208

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %1)
  %cmp18 = icmp ult i32 %1, 13
  br i1 %cmp18, label %if.end17._last_literals_crit_edge, label %if.end20

if.end17._last_literals_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals

if.end20:                                         ; preds = %if.end17
  %2 = ptrtoint ptr %srcSizePtr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %srcSizePtr, align 4
  %3 = ptrtoint ptr %src to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %p.val.i = load i32, ptr %src, align 1
  %mul.i.i.i = mul i32 %p.val.i, -1640531535
  %retval.0.v.i.i.i = select i1 %cmp14, i32 19, i32 20
  %retval.0.i.i.i = lshr i32 %mul.i.i.i, %retval.0.v.i.i.i
  %4 = zext i32 %tableType to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %tableType, label %if.end20.LZ4_putPosition.exit_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb4.i.i
  ]

if.end20.LZ4_putPosition.exit_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_putPosition.exit

sw.bb.i.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i.i = getelementptr ptr, ptr %ctx, i32 %retval.0.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %src, ptr %arrayidx.i.i, align 4
  br label %LZ4_putPosition.exit

sw.bb1.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx3.i.i = getelementptr i32, ptr %ctx, i32 %retval.0.i.i.i
  %6 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx3.i.i, align 4
  br label %LZ4_putPosition.exit

sw.bb4.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx9.i.i = getelementptr i16, ptr %ctx, i32 %retval.0.i.i.i
  %7 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %arrayidx9.i.i, align 2
  br label %LZ4_putPosition.exit

LZ4_putPosition.exit:                             ; preds = %sw.bb4.i.i, %sw.bb1.i.i, %sw.bb.i.i, %if.end20.LZ4_putPosition.exit_crit_edge
  %add.ptr21504524 = getelementptr i8, ptr %src, i32 2
  %cmp22505525 = icmp ugt ptr %add.ptr21504524, %add.ptr1
  br i1 %cmp22505525, label %LZ4_putPosition.exit._last_literals_crit_edge, label %if.end25.lr.ph.lr.ph, !prof !26

LZ4_putPosition.exit._last_literals_crit_edge:    ; preds = %LZ4_putPosition.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals

if.end25.lr.ph.lr.ph:                             ; preds = %LZ4_putPosition.exit
  %incdec.ptr = getelementptr i8, ptr %src, i32 1
  %sub.ptr.rhs.cast.i425 = ptrtoint ptr %src to i32
  %cmp14.not = xor i1 %cmp14, true
  %add.ptr.i372 = getelementptr i8, ptr %add.ptr2, i32 -3
  %sub.ptr.lhs.cast97 = ptrtoint ptr %add.ptr9 to i32
  %add.ptr8.i = getelementptr i8, ptr %add.ptr2, i32 -1
  br label %if.end25.lr.ph

if.end25.lr.ph:                                   ; preds = %cleanup156.if.end25.lr.ph_crit_edge, %if.end25.lr.ph.lr.ph
  %add.ptr21504530 = phi ptr [ %add.ptr21504524, %if.end25.lr.ph.lr.ph ], [ %add.ptr21504, %cleanup156.if.end25.lr.ph_crit_edge ]
  %op.0528 = phi ptr [ %dst, %if.end25.lr.ph.lr.ph ], [ %op.6, %cleanup156.if.end25.lr.ph_crit_edge ]
  %anchor.0527 = phi ptr [ %src, %if.end25.lr.ph.lr.ph ], [ %add.ptr103, %cleanup156.if.end25.lr.ph_crit_edge ]
  %ip.0526 = phi ptr [ %incdec.ptr, %if.end25.lr.ph.lr.ph ], [ %incdec.ptr154, %cleanup156.if.end25.lr.ph_crit_edge ]
  %8 = ptrtoint ptr %ip.0526 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %mul.i.i.pn.in = load i32, ptr %ip.0526, align 1
  %mul.i.i.pn = mul i32 %mul.i.i.pn.in, -1640531535
  %forwardH.0529 = lshr i32 %mul.i.i.pn, %retval.0.v.i.i.i
  br label %if.end25

if.end25:                                         ; preds = %do.body.backedge.if.end25_crit_edge, %if.end25.lr.ph
  %shr510 = phi i32 [ 1, %if.end25.lr.ph ], [ %shr, %do.body.backedge.if.end25_crit_edge ]
  %inc509 = phi i32 [ 65, %if.end25.lr.ph ], [ %inc, %do.body.backedge.if.end25_crit_edge ]
  %add.ptr21508 = phi ptr [ %add.ptr21504530, %if.end25.lr.ph ], [ %add.ptr21, %do.body.backedge.if.end25_crit_edge ]
  %forwardIp.0507 = phi ptr [ %ip.0526, %if.end25.lr.ph ], [ %add.ptr21508, %do.body.backedge.if.end25_crit_edge ]
  %forwardH.1506 = phi i32 [ %forwardH.0529, %if.end25.lr.ph ], [ %forwardH.2.ph566, %do.body.backedge.if.end25_crit_edge ]
  %9 = zext i32 %tableType to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %tableType, label %LZ4_getPositionOnHash.exit [
    i32 0, label %LZ4_getPositionOnHash.exit.thread
    i32 1, label %LZ4_getPositionOnHash.exit.thread436
  ]

LZ4_getPositionOnHash.exit.thread:                ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr ptr, ptr %ctx, i32 %forwardH.1506
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %add.ptr21508 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %add.ptr21.val429 = load i32, ptr %add.ptr21508, align 1
  store ptr %forwardIp.0507, ptr %arrayidx.i, align 4
  br label %do.cond

LZ4_getPositionOnHash.exit.thread436:             ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx4.i = getelementptr i32, ptr %ctx, i32 %forwardH.1506
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4.i, align 4
  %add.ptr.i421 = getelementptr i8, ptr %src, i32 %14
  %15 = ptrtoint ptr %add.ptr21508 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %add.ptr21.val438 = load i32, ptr %add.ptr21508, align 1
  %sub.ptr.lhs.cast.i424 = ptrtoint ptr %forwardIp.0507 to i32
  %sub.ptr.sub.i426 = sub i32 %sub.ptr.lhs.cast.i424, %sub.ptr.rhs.cast.i425
  store i32 %sub.ptr.sub.i426, ptr %arrayidx4.i, align 4
  br label %do.cond

LZ4_getPositionOnHash.exit:                       ; preds = %if.end25
  %arrayidx7.i = getelementptr i16, ptr %ctx, i32 %forwardH.1506
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx7.i, align 2
  %conv.i = zext i16 %17 to i32
  %add.ptr8.i422 = getelementptr i8, ptr %src, i32 %conv.i
  %18 = ptrtoint ptr %add.ptr21508 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %add.ptr21.val = load i32, ptr %add.ptr21508, align 1
  br i1 %cmp14, label %do.cond.thread, label %LZ4_getPositionOnHash.exit.do.cond_crit_edge

LZ4_getPositionOnHash.exit.do.cond_crit_edge:     ; preds = %LZ4_getPositionOnHash.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond

do.cond.thread:                                   ; preds = %LZ4_getPositionOnHash.exit
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.lhs.cast6.i = ptrtoint ptr %forwardIp.0507 to i32
  %sub.ptr.sub8.i = sub i32 %sub.ptr.lhs.cast6.i, %sub.ptr.rhs.cast.i425
  %conv.i427 = trunc i32 %sub.ptr.sub8.i to i16
  %19 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i427, ptr %arrayidx7.i, align 2
  %mul.i.i369.pn559 = mul i32 %add.ptr21.val, -1640531535
  %forwardH.2.ph560 = lshr i32 %mul.i.i369.pn559, %retval.0.v.i.i.i
  br label %lor.rhs

do.cond:                                          ; preds = %LZ4_getPositionOnHash.exit.do.cond_crit_edge, %LZ4_getPositionOnHash.exit.thread436, %LZ4_getPositionOnHash.exit.thread
  %mul.i.i369.pn.in = phi i32 [ %add.ptr21.val438, %LZ4_getPositionOnHash.exit.thread436 ], [ %add.ptr21.val429, %LZ4_getPositionOnHash.exit.thread ], [ %add.ptr21.val, %LZ4_getPositionOnHash.exit.do.cond_crit_edge ]
  %match.1.ph = phi ptr [ %add.ptr.i421, %LZ4_getPositionOnHash.exit.thread436 ], [ %11, %LZ4_getPositionOnHash.exit.thread ], [ %add.ptr8.i422, %LZ4_getPositionOnHash.exit.do.cond_crit_edge ]
  %mul.i.i369.pn = mul i32 %mul.i.i369.pn.in, -1640531535
  %forwardH.2.ph = lshr i32 %mul.i.i369.pn, %retval.0.v.i.i.i
  %add.ptr33 = getelementptr i8, ptr %match.1.ph, i32 65535
  %cmp34 = icmp ult ptr %add.ptr33, %forwardIp.0507
  %or.cond363 = select i1 %cmp14.not, i1 %cmp34, i1 false
  br i1 %or.cond363, label %do.cond.do.body.backedge_crit_edge, label %do.cond.lor.rhs_crit_edge

do.cond.lor.rhs_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.rhs

do.cond.do.body.backedge_crit_edge:               ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.backedge

lor.rhs:                                          ; preds = %do.cond.lor.rhs_crit_edge, %do.cond.thread
  %forwardH.2.ph565 = phi i32 [ %forwardH.2.ph560, %do.cond.thread ], [ %forwardH.2.ph, %do.cond.lor.rhs_crit_edge ]
  %match.1.ph564 = phi ptr [ %add.ptr8.i422, %do.cond.thread ], [ %match.1.ph, %do.cond.lor.rhs_crit_edge ]
  %20 = ptrtoint ptr %match.1.ph564 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %match.1.val = load i32, ptr %match.1.ph564, align 1
  %21 = ptrtoint ptr %forwardIp.0507 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %forwardIp.0.val = load i32, ptr %forwardIp.0507, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %match.1.val, i32 %forwardIp.0.val)
  %cmp37.not = icmp eq i32 %match.1.val, %forwardIp.0.val
  br i1 %cmp37.not, label %lor.rhs.while.cond_crit_edge, label %lor.rhs.do.body.backedge_crit_edge

lor.rhs.do.body.backedge_crit_edge:               ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.backedge

lor.rhs.while.cond_crit_edge:                     ; preds = %lor.rhs
  br label %while.cond

do.body.backedge:                                 ; preds = %lor.rhs.do.body.backedge_crit_edge, %do.cond.do.body.backedge_crit_edge
  %forwardH.2.ph566 = phi i32 [ %forwardH.2.ph565, %lor.rhs.do.body.backedge_crit_edge ], [ %forwardH.2.ph, %do.cond.do.body.backedge_crit_edge ]
  %add.ptr21 = getelementptr i8, ptr %add.ptr21508, i32 %shr510
  %inc = add i32 %inc509, 1
  %shr = lshr i32 %inc509, 6
  %cmp22 = icmp ugt ptr %add.ptr21, %add.ptr1
  br i1 %cmp22, label %do.body.backedge._last_literals_crit_edge, label %do.body.backedge.if.end25_crit_edge, !prof !26

do.body.backedge.if.end25_crit_edge:              ; preds = %do.body.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

do.body.backedge._last_literals_crit_edge:        ; preds = %do.body.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %lor.rhs.while.cond_crit_edge
  %ip.1 = phi ptr [ %arrayidx, %land.rhs.while.cond_crit_edge ], [ %forwardIp.0507, %lor.rhs.while.cond_crit_edge ]
  %match.2 = phi ptr [ %arrayidx46, %land.rhs.while.cond_crit_edge ], [ %match.1.ph564, %lor.rhs.while.cond_crit_edge ]
  %cmp43 = icmp ugt ptr %ip.1, %anchor.0527
  %cmp45 = icmp ugt ptr %match.2, %src
  %or.cond364 = and i1 %cmp43, %cmp45
  br i1 %or.cond364, label %land.rhs, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr i8, ptr %ip.1, i32 -1
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %arrayidx46 = getelementptr i8, ptr %match.2, i32 -1
  %24 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx46, align 1
  %cmp48 = icmp eq i8 %23, %25
  br i1 %cmp48, label %land.rhs.while.cond_crit_edge, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %sub.ptr.lhs.cast = ptrtoint ptr %ip.1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %anchor.0527 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %incdec.ptr58 = getelementptr i8, ptr %op.0528, i32 1
  %add = add i32 %sub.ptr.sub, 240
  %div = udiv i32 %add, 255
  %add.ptr59 = getelementptr i8, ptr %incdec.ptr58, i32 %div
  %add.ptr60 = getelementptr i8, ptr %add.ptr59, i32 %sub.ptr.sub
  %cmp61 = icmp ugt ptr %add.ptr60, %add.ptr7
  br i1 %cmp61, label %while.end._last_literals_crit_edge, label %if.end65

while.end._last_literals_crit_edge:               ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals

if.end65:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub)
  %cmp66 = icmp ugt i32 %sub.ptr.sub, 14
  br i1 %cmp66, label %if.then68, label %if.else

if.then68:                                        ; preds = %if.end65
  %sub = add i32 %sub.ptr.sub, -15
  %26 = ptrtoint ptr %op.0528 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -16, ptr %op.0528, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %sub)
  %cmp70514 = icmp ugt i32 %sub, 254
  br i1 %cmp70514, label %for.body.preheader, label %if.then68.for.end_crit_edge

if.then68.for.end_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.preheader:                               ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #6
  %27 = add i32 %sub.ptr.lhs.cast, -270
  %28 = sub i32 %27, %sub.ptr.rhs.cast
  %29 = udiv i32 %28, 255
  %30 = add nuw nsw i32 %29, 1
  %31 = call ptr @memset(ptr %incdec.ptr58, i32 255, i32 %30)
  %uglygep = getelementptr i8, ptr %op.0528, i32 2
  %.neg556 = mul i32 %29, -255
  %uglygep551 = getelementptr i8, ptr %uglygep, i32 %29
  %32 = add i32 %.neg556, %28
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %if.then68.for.end_crit_edge
  %op.1.lcssa = phi ptr [ %incdec.ptr58, %if.then68.for.end_crit_edge ], [ %uglygep551, %for.body.preheader ]
  %len.0.lcssa = phi i32 [ %sub, %if.then68.for.end_crit_edge ], [ %32, %for.body.preheader ]
  %conv74 = trunc i32 %len.0.lcssa to i8
  %incdec.ptr75 = getelementptr i8, ptr %op.1.lcssa, i32 1
  %33 = ptrtoint ptr %op.1.lcssa to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv74, ptr %op.1.lcssa, align 1
  br label %if.end77

if.else:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.sub.tr = trunc i32 %sub.ptr.sub to i8
  %conv76 = shl nuw i8 %sub.ptr.sub.tr, 4
  %34 = ptrtoint ptr %op.0528 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv76, ptr %op.0528, align 1
  br label %if.end77

if.end77:                                         ; preds = %if.else, %for.end
  %op.2 = phi ptr [ %incdec.ptr75, %for.end ], [ %incdec.ptr58, %if.else ]
  %add.ptr78 = getelementptr i8, ptr %op.2, i32 %sub.ptr.sub
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end77
  %d.0.i = phi ptr [ %op.2, %if.end77 ], [ %add.ptr.i, %do.body.i.do.body.i_crit_edge ]
  %s.0.i = phi ptr [ %anchor.0527, %if.end77 ], [ %add.ptr1.i, %do.body.i.do.body.i_crit_edge ]
  %35 = ptrtoint ptr %s.0.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %s.0.val.i = load i32, ptr %s.0.i, align 1
  %36 = getelementptr i8, ptr %s.0.i, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %s.0.val5.i = load i32, ptr %36, align 1
  %38 = ptrtoint ptr %d.0.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %s.0.val.i, ptr %d.0.i, align 1
  %add.ptr8.i.i = getelementptr i32, ptr %d.0.i, i32 1
  %39 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %s.0.val5.i, ptr %add.ptr8.i.i, align 1
  %add.ptr.i = getelementptr i8, ptr %d.0.i, i32 8
  %add.ptr1.i = getelementptr i8, ptr %s.0.i, i32 8
  %cmp.i = icmp ult ptr %add.ptr.i, %add.ptr78
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i._next_match_crit_edge

do.body.i._next_match_crit_edge:                  ; preds = %do.body.i
  br label %_next_match

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

_next_match:                                      ; preds = %if.then151, %do.body.i._next_match_crit_edge
  %ip.2 = phi ptr [ %add.ptr103, %if.then151 ], [ %ip.1, %do.body.i._next_match_crit_edge ]
  %op.4 = phi ptr [ %incdec.ptr152, %if.then151 ], [ %add.ptr78, %do.body.i._next_match_crit_edge ]
  %match.3 = phi ptr [ %retval.0.i.i397475, %if.then151 ], [ %match.2, %do.body.i._next_match_crit_edge ]
  %token.0 = phi ptr [ %op.6, %if.then151 ], [ %op.0528, %do.body.i._next_match_crit_edge ]
  %sub.ptr.lhs.cast83 = ptrtoint ptr %ip.2 to i32
  %sub.ptr.rhs.cast84 = ptrtoint ptr %match.3 to i32
  %sub.ptr.sub85 = sub i32 %sub.ptr.lhs.cast83, %sub.ptr.rhs.cast84
  %conv86 = trunc i32 %sub.ptr.sub85 to i16
  %40 = tail call i16 @llvm.bswap.i16(i16 %conv86) #4
  %41 = ptrtoint ptr %op.4 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %op.4, align 1
  %add.ptr87 = getelementptr i8, ptr %op.4, i32 2
  %add.ptr88 = getelementptr i8, ptr %ip.2, i32 4
  %add.ptr89 = getelementptr i8, ptr %match.3, i32 4
  %cmp59.i = icmp ugt ptr %add.ptr.i372, %add.ptr88
  br i1 %cmp59.i, label %_next_match.while.body.i_crit_edge, label %_next_match.while.end.i_crit_edge, !prof !27

_next_match.while.end.i_crit_edge:                ; preds = %_next_match
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

_next_match.while.body.i_crit_edge:               ; preds = %_next_match
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %_next_match.while.body.i_crit_edge
  %pMatch.addr.061.i = phi ptr [ %add.ptr5.i, %cleanup.i.while.body.i_crit_edge ], [ %add.ptr89, %_next_match.while.body.i_crit_edge ]
  %pIn.addr.060.i = phi ptr [ %add.ptr4.i, %cleanup.i.while.body.i_crit_edge ], [ %add.ptr88, %_next_match.while.body.i_crit_edge ]
  %42 = ptrtoint ptr %pMatch.addr.061.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %pMatch.addr.0.val.i = load i32, ptr %pMatch.addr.061.i, align 1
  %43 = ptrtoint ptr %pIn.addr.060.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %pIn.addr.0.val.i = load i32, ptr %pIn.addr.060.i, align 1
  %xor.i = xor i32 %pIn.addr.0.val.i, %pMatch.addr.0.val.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i)
  %tobool3.not.i = icmp eq i32 %xor.i, 0
  br i1 %tobool3.not.i, label %cleanup.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %44 = tail call i32 @llvm.ctlz.i32(i32 %xor.i, i1 true) #4, !range !28
  %shr.i.i = lshr i32 %44, 3
  %add.ptr7.i = getelementptr i8, ptr %pIn.addr.060.i, i32 %shr.i.i
  br label %LZ4_count.exit

cleanup.i:                                        ; preds = %while.body.i
  %add.ptr4.i = getelementptr i8, ptr %pIn.addr.060.i, i32 4
  %add.ptr5.i = getelementptr i8, ptr %pMatch.addr.061.i, i32 4
  %cmp.i373 = icmp ult ptr %add.ptr4.i, %add.ptr.i372
  br i1 %cmp.i373, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.while.end.i_crit_edge, !prof !27

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %_next_match.while.end.i_crit_edge
  %pIn.addr.0.lcssa.i = phi ptr [ %add.ptr88, %_next_match.while.end.i_crit_edge ], [ %add.ptr4.i, %cleanup.i.while.end.i_crit_edge ]
  %pMatch.addr.0.lcssa.i = phi ptr [ %add.ptr89, %_next_match.while.end.i_crit_edge ], [ %add.ptr5.i, %cleanup.i.while.end.i_crit_edge ]
  %cmp9.i = icmp ult ptr %pIn.addr.0.lcssa.i, %add.ptr8.i
  br i1 %cmp9.i, label %land.lhs.true.i, label %while.end.i.if.end18.i_crit_edge

while.end.i.if.end18.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %while.end.i
  %45 = ptrtoint ptr %pMatch.addr.0.lcssa.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %pMatch.addr.0.val53.i = load i16, ptr %pMatch.addr.0.lcssa.i, align 1
  %46 = ptrtoint ptr %pIn.addr.0.lcssa.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %pIn.addr.0.val52.i = load i16, ptr %pIn.addr.0.lcssa.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %pMatch.addr.0.val53.i, i16 %pIn.addr.0.val52.i)
  %cmp13.i = icmp eq i16 %pMatch.addr.0.val53.i, %pIn.addr.0.val52.i
  br i1 %cmp13.i, label %if.then15.i, label %land.lhs.true.i.if.end18.i_crit_edge

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr16.i = getelementptr i8, ptr %pIn.addr.0.lcssa.i, i32 2
  %add.ptr17.i = getelementptr i8, ptr %pMatch.addr.0.lcssa.i, i32 2
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %land.lhs.true.i.if.end18.i_crit_edge, %while.end.i.if.end18.i_crit_edge
  %pIn.addr.2.i = phi ptr [ %add.ptr16.i, %if.then15.i ], [ %pIn.addr.0.lcssa.i, %land.lhs.true.i.if.end18.i_crit_edge ], [ %pIn.addr.0.lcssa.i, %while.end.i.if.end18.i_crit_edge ]
  %pMatch.addr.2.i = phi ptr [ %add.ptr17.i, %if.then15.i ], [ %pMatch.addr.0.lcssa.i, %land.lhs.true.i.if.end18.i_crit_edge ], [ %pMatch.addr.0.lcssa.i, %while.end.i.if.end18.i_crit_edge ]
  %cmp19.i = icmp ult ptr %pIn.addr.2.i, %add.ptr2
  br i1 %cmp19.i, label %land.lhs.true21.i, label %if.end18.i.LZ4_count.exit_crit_edge

if.end18.i.LZ4_count.exit_crit_edge:              ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %LZ4_count.exit

land.lhs.true21.i:                                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %pMatch.addr.2.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pMatch.addr.2.i, align 1
  %49 = ptrtoint ptr %pIn.addr.2.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pIn.addr.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %50)
  %cmp24.i = icmp eq i8 %48, %50
  %spec.select.idx.i = zext i1 %cmp24.i to i32
  %spec.select.i = getelementptr i8, ptr %pIn.addr.2.i, i32 %spec.select.idx.i
  br label %LZ4_count.exit

LZ4_count.exit:                                   ; preds = %land.lhs.true21.i, %if.end18.i.LZ4_count.exit_crit_edge, %cleanup.thread.i
  %add.ptr7.sink.i = phi ptr [ %add.ptr7.i, %cleanup.thread.i ], [ %pIn.addr.2.i, %if.end18.i.LZ4_count.exit_crit_edge ], [ %spec.select.i, %land.lhs.true21.i ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr7.sink.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr88 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add91 = add i32 %sub.ptr.sub.i, 240
  %div92 = udiv i32 %add91, 255
  %add.ptr93 = getelementptr i8, ptr %add.ptr87, i32 %div92
  %cmp94 = icmp ugt ptr %add.ptr93, %add.ptr9
  %sub.ptr.rhs.cast98 = ptrtoint ptr %add.ptr87 to i32
  %sub.ptr.sub99 = sub i32 %sub.ptr.lhs.cast97, %sub.ptr.rhs.cast98
  %mul = mul i32 %sub.ptr.sub99, 255
  %add100 = add i32 %mul, 14
  %matchLength.0 = select i1 %cmp94, i32 %add100, i32 %sub.ptr.sub.i
  %add102 = add i32 %matchLength.0, 4
  %add.ptr103 = getelementptr i8, ptr %ip.2, i32 %add102
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %matchLength.0)
  %cmp104 = icmp ugt i32 %matchLength.0, 14
  %51 = ptrtoint ptr %token.0 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %token.0, align 1
  br i1 %cmp104, label %if.then106, label %if.else120

if.then106:                                       ; preds = %LZ4_count.exit
  %add108 = add i8 %52, 15
  %53 = ptrtoint ptr %token.0 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %add108, ptr %token.0, align 1
  %sub110 = add i32 %matchLength.0, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %sub110)
  %cmp112519 = icmp ugt i32 %sub110, 254
  br i1 %cmp112519, label %while.body114.preheader, label %if.then106.while.end117_crit_edge

if.then106.while.end117_crit_edge:                ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end117

while.body114.preheader:                          ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #6
  %54 = add i32 %matchLength.0, -270
  %55 = udiv i32 %54, 255
  %56 = add nuw nsw i32 %55, 1
  %57 = call ptr @memset(ptr %add.ptr87, i32 255, i32 %56)
  %.neg555 = mul i32 %55, -255
  %uglygep552 = getelementptr i8, ptr %op.4, i32 3
  %58 = add i32 %.neg555, %54
  %uglygep553 = getelementptr i8, ptr %uglygep552, i32 %55
  br label %while.end117

while.end117:                                     ; preds = %while.body114.preheader, %if.then106.while.end117_crit_edge
  %op.5.lcssa = phi ptr [ %add.ptr87, %if.then106.while.end117_crit_edge ], [ %uglygep553, %while.body114.preheader ]
  %matchLength.1.lcssa = phi i32 [ %sub110, %if.then106.while.end117_crit_edge ], [ %58, %while.body114.preheader ]
  %conv118 = trunc i32 %matchLength.1.lcssa to i8
  %incdec.ptr119 = getelementptr i8, ptr %op.5.lcssa, i32 1
  %59 = ptrtoint ptr %op.5.lcssa to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv118, ptr %op.5.lcssa, align 1
  br label %if.end126

if.else120:                                       ; preds = %LZ4_count.exit
  call void @__sanitizer_cov_trace_pc() #6
  %60 = trunc i32 %matchLength.0 to i8
  %conv125 = add i8 %52, %60
  %61 = ptrtoint ptr %token.0 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv125, ptr %token.0, align 1
  br label %if.end126

if.end126:                                        ; preds = %if.else120, %while.end117
  %op.6 = phi ptr [ %incdec.ptr119, %while.end117 ], [ %add.ptr87, %if.else120 ]
  %cmp127 = icmp ugt ptr %add.ptr103, %add.ptr1
  %cmp131 = icmp ugt ptr %op.6, %add.ptr10
  %or.cond366 = or i1 %cmp127, %cmp131
  br i1 %or.cond366, label %if.end126._last_literals_crit_edge, label %if.end134

if.end126._last_literals_crit_edge:               ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals

if.end134:                                        ; preds = %if.end126
  %add.ptr135 = getelementptr i8, ptr %add.ptr103, i32 -2
  %62 = ptrtoint ptr %add.ptr135 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %p.val.i374 = load i32, ptr %add.ptr135, align 1
  %mul.i.i.i376 = mul i32 %p.val.i374, -1640531535
  %retval.0.i.i.i378 = lshr i32 %mul.i.i.i376, %retval.0.v.i.i.i
  %63 = zext i32 %tableType to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %tableType, label %LZ4_putPosition.exit389 [
    i32 0, label %LZ4_putPosition.exit389.thread461
    i32 1, label %LZ4_putPosition.exit389.thread466
    i32 2, label %LZ4_getPosition.exit.thread481
  ]

LZ4_putPosition.exit389.thread461:                ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i.i379 = getelementptr ptr, ptr %ctx, i32 %retval.0.i.i.i378
  %64 = ptrtoint ptr %arrayidx.i.i379 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr135, ptr %arrayidx.i.i379, align 4
  %65 = ptrtoint ptr %add.ptr103 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %add.ptr103.val367462 = load i32, ptr %add.ptr103, align 1
  %mul.i.i.i391463 = mul i32 %add.ptr103.val367462, -1640531535
  %retval.0.i.i.i393464 = lshr i32 %mul.i.i.i391463, %retval.0.v.i.i.i
  %arrayidx.i.i394 = getelementptr ptr, ptr %ctx, i32 %retval.0.i.i.i393464
  %66 = ptrtoint ptr %arrayidx.i.i394 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i.i394, align 4
  store ptr %add.ptr103, ptr %arrayidx.i.i394, align 4
  br label %LZ4_putPosition.exit416

LZ4_putPosition.exit389.thread466:                ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.lhs.cast.i.i381 = ptrtoint ptr %add.ptr135 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i381, %sub.ptr.rhs.cast.i425
  %arrayidx3.i.i383 = getelementptr i32, ptr %ctx, i32 %retval.0.i.i.i378
  %68 = ptrtoint ptr %arrayidx3.i.i383 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %sub.ptr.sub.i.i, ptr %arrayidx3.i.i383, align 4
  %69 = ptrtoint ptr %add.ptr103 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %add.ptr103.val367467 = load i32, ptr %add.ptr103, align 1
  %mul.i.i.i391468 = mul i32 %add.ptr103.val367467, -1640531535
  %retval.0.i.i.i393469 = lshr i32 %mul.i.i.i391468, %retval.0.v.i.i.i
  %arrayidx4.i.i = getelementptr i32, ptr %ctx, i32 %retval.0.i.i.i393469
  %70 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx4.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %src, i32 %71
  %sub.ptr.lhs.cast.i.i405 = ptrtoint ptr %add.ptr103 to i32
  %sub.ptr.sub.i.i407 = sub i32 %sub.ptr.lhs.cast.i.i405, %sub.ptr.rhs.cast.i425
  store i32 %sub.ptr.sub.i.i407, ptr %arrayidx4.i.i, align 4
  br label %LZ4_putPosition.exit416

LZ4_getPosition.exit.thread481:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.lhs.cast6.i.i385 = ptrtoint ptr %add.ptr135 to i32
  %sub.ptr.sub8.i.i = sub i32 %sub.ptr.lhs.cast6.i.i385, %sub.ptr.rhs.cast.i425
  %conv.i.i = trunc i32 %sub.ptr.sub8.i.i to i16
  %arrayidx9.i.i387 = getelementptr i16, ptr %ctx, i32 %retval.0.i.i.i378
  %72 = ptrtoint ptr %arrayidx9.i.i387 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv.i.i, ptr %arrayidx9.i.i387, align 2
  %73 = ptrtoint ptr %add.ptr103 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %add.ptr103.val367456 = load i32, ptr %add.ptr103, align 1
  %mul.i.i.i391457 = mul i32 %add.ptr103.val367456, -1640531535
  %retval.0.i.i.i393458 = lshr i32 %mul.i.i.i391457, %retval.0.v.i.i.i
  %arrayidx7.i.i483 = getelementptr i16, ptr %ctx, i32 %retval.0.i.i.i393458
  %74 = ptrtoint ptr %arrayidx7.i.i483 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx7.i.i483, align 2
  %conv.i.i395484 = zext i16 %75 to i32
  %add.ptr8.i.i396485 = getelementptr i8, ptr %src, i32 %conv.i.i395484
  %sub.ptr.lhs.cast6.i.i410 = ptrtoint ptr %add.ptr103 to i32
  %sub.ptr.sub8.i.i412 = sub i32 %sub.ptr.lhs.cast6.i.i410, %sub.ptr.rhs.cast.i425
  %conv.i.i413 = trunc i32 %sub.ptr.sub8.i.i412 to i16
  store i16 %conv.i.i413, ptr %arrayidx7.i.i483, align 2
  br label %LZ4_putPosition.exit416

LZ4_putPosition.exit389:                          ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #6
  %76 = ptrtoint ptr %add.ptr103 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %add.ptr103.val367 = load i32, ptr %add.ptr103, align 1
  %mul.i.i.i391 = mul i32 %add.ptr103.val367, -1640531535
  %retval.0.i.i.i393 = lshr i32 %mul.i.i.i391, %retval.0.v.i.i.i
  %arrayidx7.i.i = getelementptr i16, ptr %ctx, i32 %retval.0.i.i.i393
  %77 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx7.i.i, align 2
  %conv.i.i395 = zext i16 %78 to i32
  %add.ptr8.i.i396 = getelementptr i8, ptr %src, i32 %conv.i.i395
  br label %LZ4_putPosition.exit416

LZ4_putPosition.exit416:                          ; preds = %LZ4_putPosition.exit389, %LZ4_getPosition.exit.thread481, %LZ4_putPosition.exit389.thread466, %LZ4_putPosition.exit389.thread461
  %retval.0.i.i397475 = phi ptr [ %add.ptr8.i.i396, %LZ4_putPosition.exit389 ], [ %67, %LZ4_putPosition.exit389.thread461 ], [ %add.ptr.i.i, %LZ4_putPosition.exit389.thread466 ], [ %add.ptr8.i.i396485, %LZ4_getPosition.exit.thread481 ]
  %add.ptr143 = getelementptr i8, ptr %retval.0.i.i397475, i32 65535
  %cmp144.not = icmp ult ptr %add.ptr143, %add.ptr103
  br i1 %cmp144.not, label %LZ4_putPosition.exit416.cleanup156_crit_edge, label %land.lhs.true146

LZ4_putPosition.exit416.cleanup156_crit_edge:     ; preds = %LZ4_putPosition.exit416
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup156

land.lhs.true146:                                 ; preds = %LZ4_putPosition.exit416
  %79 = ptrtoint ptr %retval.0.i.i397475 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %call140.val = load i32, ptr %retval.0.i.i397475, align 1
  %80 = ptrtoint ptr %add.ptr103 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %add.ptr103.val = load i32, ptr %add.ptr103, align 1
  %cmp149 = icmp eq i32 %call140.val, %add.ptr103.val
  br i1 %cmp149, label %if.then151, label %land.lhs.true146.cleanup156_crit_edge

land.lhs.true146.cleanup156_crit_edge:            ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup156

if.then151:                                       ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr152 = getelementptr i8, ptr %op.6, i32 1
  %81 = ptrtoint ptr %op.6 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %op.6, align 1
  br label %_next_match

cleanup156:                                       ; preds = %land.lhs.true146.cleanup156_crit_edge, %LZ4_putPosition.exit416.cleanup156_crit_edge
  %incdec.ptr154 = getelementptr i8, ptr %add.ptr103, i32 1
  %add.ptr21504 = getelementptr i8, ptr %incdec.ptr154, i32 1
  %cmp22505 = icmp ugt ptr %add.ptr21504, %add.ptr1
  br i1 %cmp22505, label %cleanup156._last_literals_crit_edge, label %cleanup156.if.end25.lr.ph_crit_edge, !prof !26

cleanup156.if.end25.lr.ph_crit_edge:              ; preds = %cleanup156
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25.lr.ph

cleanup156._last_literals_crit_edge:              ; preds = %cleanup156
  call void @__sanitizer_cov_trace_pc() #6
  br label %_last_literals

_last_literals:                                   ; preds = %cleanup156._last_literals_crit_edge, %if.end126._last_literals_crit_edge, %while.end._last_literals_crit_edge, %do.body.backedge._last_literals_crit_edge, %LZ4_putPosition.exit._last_literals_crit_edge, %if.end17._last_literals_crit_edge
  %anchor.2 = phi ptr [ %src, %if.end17._last_literals_crit_edge ], [ %src, %LZ4_putPosition.exit._last_literals_crit_edge ], [ %add.ptr103, %if.end126._last_literals_crit_edge ], [ %anchor.0527, %do.body.backedge._last_literals_crit_edge ], [ %add.ptr103, %cleanup156._last_literals_crit_edge ], [ %anchor.0527, %while.end._last_literals_crit_edge ]
  %op.8 = phi ptr [ %dst, %if.end17._last_literals_crit_edge ], [ %dst, %LZ4_putPosition.exit._last_literals_crit_edge ], [ %op.6, %if.end126._last_literals_crit_edge ], [ %op.0528, %do.body.backedge._last_literals_crit_edge ], [ %op.6, %cleanup156._last_literals_crit_edge ], [ %op.0528, %while.end._last_literals_crit_edge ]
  %sub.ptr.lhs.cast161 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast162 = ptrtoint ptr %anchor.2 to i32
  %sub.ptr.sub163 = sub i32 %sub.ptr.lhs.cast161, %sub.ptr.rhs.cast162
  %add.ptr164 = getelementptr i8, ptr %op.8, i32 1
  %add165 = add i32 %sub.ptr.sub163, 240
  %div166 = udiv i32 %add165, 255
  %add.ptr167 = getelementptr i8, ptr %add.ptr164, i32 %div166
  %add.ptr168 = getelementptr i8, ptr %add.ptr167, i32 %sub.ptr.sub163
  %cmp169 = icmp ugt ptr %add.ptr168, %add.ptr3
  br i1 %cmp169, label %if.then171, label %_last_literals.if.end179_crit_edge

_last_literals.if.end179_crit_edge:               ; preds = %_last_literals
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end179

if.then171:                                       ; preds = %_last_literals
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.lhs.cast172 = ptrtoint ptr %add.ptr3 to i32
  %sub.ptr.rhs.cast173 = ptrtoint ptr %op.8 to i32
  %82 = xor i32 %sub.ptr.rhs.cast173, -1
  %sub175 = add i32 %82, %sub.ptr.lhs.cast172
  %add176 = add i32 %sub175, 240
  %div177 = udiv i32 %add176, 255
  %sub178 = sub i32 %sub175, %div177
  br label %if.end179

if.end179:                                        ; preds = %if.then171, %_last_literals.if.end179_crit_edge
  %lastRunSize.0 = phi i32 [ %sub178, %if.then171 ], [ %sub.ptr.sub163, %_last_literals.if.end179_crit_edge ]
  %add.ptr180 = getelementptr i8, ptr %anchor.2, i32 %lastRunSize.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %lastRunSize.0)
  %cmp181 = icmp ugt i32 %lastRunSize.0, 14
  br i1 %cmp181, label %if.then183, label %if.else196

if.then183:                                       ; preds = %if.end179
  %sub184 = add i32 %lastRunSize.0, -15
  %83 = ptrtoint ptr %op.8 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -16, ptr %op.8, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %sub184)
  %cmp187533 = icmp ugt i32 %sub184, 254
  br i1 %cmp187533, label %for.body189.preheader, label %if.then183.for.end193_crit_edge

if.then183.for.end193_crit_edge:                  ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end193

for.body189.preheader:                            ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #6
  %84 = add i32 %lastRunSize.0, -270
  %85 = udiv i32 %84, 255
  %86 = add nuw nsw i32 %85, 1
  %87 = call ptr @memset(ptr %add.ptr164, i32 255, i32 %86)
  %88 = add nuw nsw i32 %85, 2
  %.neg = mul i32 %85, -255
  %uglygep554 = getelementptr i8, ptr %op.8, i32 %88
  %89 = add i32 %.neg, %84
  br label %for.end193

for.end193:                                       ; preds = %for.body189.preheader, %if.then183.for.end193_crit_edge
  %op.9.lcssa = phi ptr [ %add.ptr164, %if.then183.for.end193_crit_edge ], [ %uglygep554, %for.body189.preheader ]
  %accumulator.0.lcssa = phi i32 [ %sub184, %if.then183.for.end193_crit_edge ], [ %89, %for.body189.preheader ]
  %conv194 = trunc i32 %accumulator.0.lcssa to i8
  %incdec.ptr195 = getelementptr i8, ptr %op.9.lcssa, i32 1
  %90 = ptrtoint ptr %op.9.lcssa to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv194, ptr %op.9.lcssa, align 1
  br label %if.end200

if.else196:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #6
  %lastRunSize.0.tr = trunc i32 %lastRunSize.0 to i8
  %conv198 = shl nuw i8 %lastRunSize.0.tr, 4
  %91 = ptrtoint ptr %op.8 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv198, ptr %op.8, align 1
  br label %if.end200

if.end200:                                        ; preds = %if.else196, %for.end193
  %op.10 = phi ptr [ %incdec.ptr195, %for.end193 ], [ %add.ptr164, %if.else196 ]
  %92 = call ptr @memcpy(ptr %op.10, ptr %anchor.2, i32 %lastRunSize.0)
  %add.ptr201 = getelementptr i8, ptr %op.10, i32 %lastRunSize.0
  %sub.ptr.lhs.cast202 = ptrtoint ptr %add.ptr180 to i32
  %sub.ptr.rhs.cast203 = ptrtoint ptr %src to i32
  %sub.ptr.sub204 = sub i32 %sub.ptr.lhs.cast202, %sub.ptr.rhs.cast203
  %93 = ptrtoint ptr %srcSizePtr to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %sub.ptr.sub204, ptr %srcSizePtr, align 4
  %sub.ptr.lhs.cast205 = ptrtoint ptr %add.ptr201 to i32
  %sub.ptr.rhs.cast206 = ptrtoint ptr %dst to i32
  %sub.ptr.sub207 = sub i32 %sub.ptr.lhs.cast205, %sub.ptr.rhs.cast206
  br label %cleanup208

cleanup208:                                       ; preds = %if.end200, %if.end13.cleanup208_crit_edge, %entry.cleanup208_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.sub207, %if.end200 ], [ 0, %entry.cleanup208_crit_edge ], [ 0, %if.end13.cleanup208_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__ksymtab_LZ4_compress_fast, !1, !"__ksymtab_LZ4_compress_fast", i1 false, i1 false}
!1 = !{!"../lib/lz4/lz4_compress.c", i32 509, i32 1}
!2 = !{ptr @__ksymtab_LZ4_compress_default, !3, !"__ksymtab_LZ4_compress_default", i1 false, i1 false}
!3 = !{!"../lib/lz4/lz4_compress.c", i32 517, i32 1}
!4 = !{ptr @__ksymtab_LZ4_compress_destSize, !5, !"__ksymtab_LZ4_compress_destSize", i1 false, i1 false}
!5 = !{!"../lib/lz4/lz4_compress.c", i32 765, i32 1}
!6 = !{ptr @__ksymtab_LZ4_loadDict, !7, !"__ksymtab_LZ4_loadDict", i1 false, i1 false}
!7 = !{!"../lib/lz4/lz4_compress.c", i32 810, i32 1}
!8 = !{ptr @__ksymtab_LZ4_saveDict, !9, !"__ksymtab_LZ4_saveDict", i1 false, i1 false}
!9 = !{!"../lib/lz4/lz4_compress.c", i32 855, i32 1}
!10 = !{ptr @__ksymtab_LZ4_compress_fast_continue, !11, !"__ksymtab_LZ4_compress_fast_continue", i1 false, i1 false}
!11 = !{!"../lib/lz4/lz4_compress.c", i32 937, i32 1}
!12 = !{ptr @__UNIQUE_ID_file106, !13, !"__UNIQUE_ID_file106", i1 false, i1 false}
!13 = !{!"../lib/lz4/lz4_compress.c", i32 939, i32 1}
!14 = !{ptr @__UNIQUE_ID_license107, !13, !"__UNIQUE_ID_license107", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_description108, !16, !"__UNIQUE_ID_description108", i1 false, i1 false}
!16 = !{!"../lib/lz4/lz4_compress.c", i32 940, i32 1}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i32 0, i32 33}
!29 = !{!"branch_weights", i32 1, i32 4001}
