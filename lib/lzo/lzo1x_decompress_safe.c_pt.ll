; ModuleID = '/llk/IR_all_yes/lib/lzo/lzo1x_decompress_safe.c_pt.bc'
source_filename = "../lib/lzo/lzo1x_decompress_safe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+lzo1x_decompress_safe\22, \22a\22\09"
module asm "\09.weak\09__crc_lzo1x_decompress_safe\09\09\09\09"
module asm "\09.long\09__crc_lzo1x_decompress_safe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lzo1x_decompress_safe:\09\09\09\09\09"
module asm "\09.asciz \09\22lzo1x_decompress_safe\22\09\09\09\09\09"
module asm "__kstrtabns_lzo1x_decompress_safe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_lzo1x_decompress_safe = external dso_local constant [0 x i8], align 1
@__kstrtabns_lzo1x_decompress_safe = external dso_local constant [0 x i8], align 1
@__ksymtab_lzo1x_decompress_safe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lzo1x_decompress_safe to i32), ptr @__kstrtab_lzo1x_decompress_safe, ptr @__kstrtabns_lzo1x_decompress_safe }, section "___ksymtab_gpl+lzo1x_decompress_safe", align 4
@__UNIQUE_ID_file106 = internal constant [43 x i8] c"lzo_decompress.file=lib/lzo/lzo_decompress\00", section ".modinfo", align 1
@__UNIQUE_ID_license107 = internal constant [27 x i8] c"lzo_decompress.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description108 = internal constant [46 x i8] c"lzo_decompress.description=LZO1X Decompressor\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_description108, ptr @__UNIQUE_ID_file106, ptr @__UNIQUE_ID_license107, ptr @__ksymtab_lzo1x_decompress_safe], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lzo1x_decompress_safe(ptr noundef %in, i32 noundef %in_len, ptr noundef %out, ptr nocapture noundef %out_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %in, i32 %in_len
  %0 = ptrtoint ptr %out_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out_len, align 4
  %add.ptr1 = getelementptr i8, ptr %out, i32 %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %in_len)
  %cmp = icmp ult i32 %in_len, 3
  br i1 %cmp, label %entry.input_overrun_crit_edge, label %if.end, !prof !16

entry.input_overrun_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %input_overrun

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %in_len)
  %cmp3 = icmp ugt i32 %in_len, 4
  br i1 %cmp3, label %land.lhs.true, label %if.end.if.end20thread-pre-split_crit_edge, !prof !17

if.end.if.end20thread-pre-split_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end20thread-pre-split

land.lhs.true:                                    ; preds = %if.end
  %2 = ptrtoint ptr %in to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %3)
  %cmp10 = icmp eq i8 %3, 17
  br i1 %cmp10, label %if.then18, label %land.lhs.true.if.end20_crit_edge, !prof !17

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end20

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %arrayidx = getelementptr i8, ptr %in, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %add.ptr19 = getelementptr i8, ptr %in, i32 2
  br label %if.end20thread-pre-split

if.end20thread-pre-split:                         ; preds = %if.then18, %if.end.if.end20thread-pre-split_crit_edge
  %bitstream_version.0.ph = phi i8 [ 0, %if.end.if.end20thread-pre-split_crit_edge ], [ %5, %if.then18 ]
  %ip.0.ph = phi ptr [ %in, %if.end.if.end20thread-pre-split_crit_edge ], [ %add.ptr19, %if.then18 ]
  %6 = ptrtoint ptr %ip.0.ph to i32
  call void @__asan_load1_noabort(i32 %6)
  %.pr = load i8, ptr %ip.0.ph, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.end20thread-pre-split, %land.lhs.true.if.end20_crit_edge
  %7 = phi i8 [ %.pr, %if.end20thread-pre-split ], [ %3, %land.lhs.true.if.end20_crit_edge ]
  %bitstream_version.0 = phi i8 [ %bitstream_version.0.ph, %if.end20thread-pre-split ], [ 0, %land.lhs.true.if.end20_crit_edge ]
  %ip.0 = phi ptr [ %ip.0.ph, %if.end20thread-pre-split ], [ %in, %land.lhs.true.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %7)
  %cmp22 = icmp ugt i8 %7, 17
  br i1 %cmp22, label %if.then24, label %if.end20.for.cond.preheader_crit_edge

if.end20.for.cond.preheader_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #4
  %.pre1127 = ptrtoint ptr %add.ptr to i32
  %.pre1128 = ptrtoint ptr %add.ptr1 to i32
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.body622.for.cond.preheader_crit_edge, %while.cond619.preheader.for.cond.preheader_crit_edge, %do.body593, %if.end172.loopexit, %do.body165.for.cond.preheader_crit_edge, %if.end20.for.cond.preheader_crit_edge
  %sub.ptr.lhs.cast453.pre-phi = phi i32 [ %.pre1128, %if.end20.for.cond.preheader_crit_edge ], [ %sub.ptr.lhs.cast95.pre-phi, %if.end172.loopexit ], [ %sub.ptr.lhs.cast580.pre-phi, %while.cond619.preheader.for.cond.preheader_crit_edge ], [ %sub.ptr.lhs.cast580.pre-phi, %do.body593 ], [ %sub.ptr.lhs.cast95.pre-phi, %do.body165.for.cond.preheader_crit_edge ], [ %sub.ptr.lhs.cast580.pre-phi, %while.body622.for.cond.preheader_crit_edge ]
  %sub.ptr.lhs.cast308.pre-phi = phi i32 [ %.pre1127, %if.end20.for.cond.preheader_crit_edge ], [ %sub.ptr.lhs.cast89.pre-phi, %if.end172.loopexit ], [ %sub.ptr.lhs.cast574.pre-phi, %while.cond619.preheader.for.cond.preheader_crit_edge ], [ %sub.ptr.lhs.cast574.pre-phi, %do.body593 ], [ %sub.ptr.lhs.cast89.pre-phi, %do.body165.for.cond.preheader_crit_edge ], [ %sub.ptr.lhs.cast574.pre-phi, %while.body622.for.cond.preheader_crit_edge ]
  %state.0.ph = phi i32 [ 0, %if.end20.for.cond.preheader_crit_edge ], [ 4, %if.end172.loopexit ], [ %next.3, %while.cond619.preheader.for.cond.preheader_crit_edge ], [ %next.3, %do.body593 ], [ 4, %do.body165.for.cond.preheader_crit_edge ], [ %next.3, %while.body622.for.cond.preheader_crit_edge ]
  %ip.1.ph = phi ptr [ %ip.0, %if.end20.for.cond.preheader_crit_edge ], [ %add.ptr108, %if.end172.loopexit ], [ %ip.18, %while.cond619.preheader.for.cond.preheader_crit_edge ], [ %add.ptr602, %do.body593 ], [ %incdec.ptr166, %do.body165.for.cond.preheader_crit_edge ], [ %incdec.ptr623, %while.body622.for.cond.preheader_crit_edge ]
  %op.0.ph = phi ptr [ %out, %if.end20.for.cond.preheader_crit_edge ], [ %add.ptr109, %if.end172.loopexit ], [ %op.12, %while.cond619.preheader.for.cond.preheader_crit_edge ], [ %add.ptr601, %do.body593 ], [ %incdec.ptr167, %do.body165.for.cond.preheader_crit_edge ], [ %incdec.ptr624, %while.body622.for.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bitstream_version.0)
  %tobool325.not = icmp eq i8 %bitstream_version.0, 0
  br label %for.cond

if.then24:                                        ; preds = %if.end20
  %conv21 = zext i8 %7 to i32
  %incdec.ptr = getelementptr i8, ptr %ip.0, i32 1
  %sub = add nsw i32 %conv21, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp26 = icmp ult i32 %sub, 4
  %.pre = ptrtoint ptr %add.ptr to i32
  %.pre1126 = ptrtoint ptr %add.ptr1 to i32
  br i1 %cmp26, label %if.then24.match_next_crit_edge, label %if.then24.copy_literal_run_crit_edge

if.then24.copy_literal_run_crit_edge:             ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #4
  br label %copy_literal_run

if.then24.match_next_crit_edge:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #4
  br label %match_next

for.cond:                                         ; preds = %cleanup544, %for.cond.preheader
  %state.0 = phi i32 [ %next.2, %cleanup544 ], [ %state.0.ph, %for.cond.preheader ]
  %ip.1 = phi ptr [ %add.ptr526, %cleanup544 ], [ %ip.1.ph, %for.cond.preheader ]
  %op.0 = phi ptr [ %add.ptr525, %cleanup544 ], [ %op.0.ph, %for.cond.preheader ]
  %incdec.ptr31 = getelementptr i8, ptr %ip.1, i32 1
  %8 = ptrtoint ptr %ip.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ip.1, align 1
  %conv32 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %9)
  %cmp33 = icmp ult i8 %9, 16
  br i1 %cmp33, label %if.then35, label %if.else213

if.then35:                                        ; preds = %for.cond
  %10 = zext i32 %state.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state.0, label %if.then176 [
    i32 0, label %if.then44
    i32 4, label %if.else200
  ], !prof !18

if.then44:                                        ; preds = %if.then35
  %conv32.le = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp45 = icmp eq i8 %9, 0
  br i1 %cmp45, label %if.then44.while.cond_crit_edge, label %if.then44.if.end87_crit_edge, !prof !16

if.then44.if.end87_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end87

if.then44.while.cond_crit_edge:                   ; preds = %if.then44
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.then44.while.cond_crit_edge
  %ip.2 = phi ptr [ %incdec.ptr63, %while.body.while.cond_crit_edge ], [ %incdec.ptr31, %if.then44.while.cond_crit_edge ]
  %11 = ptrtoint ptr %ip.2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ip.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp55 = icmp eq i8 %12, 0
  br i1 %cmp55, label %while.body, label %while.end, !prof !16

while.body:                                       ; preds = %while.cond
  %incdec.ptr63 = getelementptr i8, ptr %ip.2, i32 1
  %cmp64.not = icmp eq ptr %add.ptr, %incdec.ptr63
  br i1 %cmp64.not, label %while.body.input_overrun_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond

while.body.input_overrun_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %input_overrun

while.end:                                        ; preds = %while.cond
  %sub.ptr.lhs.cast68 = ptrtoint ptr %ip.2 to i32
  %sub.ptr.rhs.cast69 = ptrtoint ptr %incdec.ptr31 to i32
  %sub.ptr.sub70 = sub i32 %sub.ptr.lhs.cast68, %sub.ptr.rhs.cast69
  call void @__sanitizer_cov_trace_const_cmp4(i32 16843007, i32 %sub.ptr.sub70)
  %cmp71 = icmp ugt i32 %sub.ptr.sub70, 16843007
  br i1 %cmp71, label %while.end.cleanup651_crit_edge, label %cleanup.thread910, !prof !16

while.end.cleanup651_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup651

cleanup.thread910:                                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #4
  %conv54.le = zext i8 %12 to i32
  %sub81 = mul nuw i32 %sub.ptr.sub70, 255
  %incdec.ptr82 = getelementptr i8, ptr %ip.2, i32 1
  %add = add nuw nsw i32 %conv54.le, 15
  %add84 = add nuw i32 %add, %sub81
  br label %if.end87

if.end87:                                         ; preds = %cleanup.thread910, %if.then44.if.end87_crit_edge
  %t.1 = phi i32 [ %conv32.le, %if.then44.if.end87_crit_edge ], [ %add84, %cleanup.thread910 ]
  %ip.4 = phi ptr [ %incdec.ptr31, %if.then44.if.end87_crit_edge ], [ %incdec.ptr82, %cleanup.thread910 ]
  %add88 = add nuw i32 %t.1, 3
  br label %copy_literal_run

copy_literal_run:                                 ; preds = %if.end87, %if.then24.copy_literal_run_crit_edge
  %sub.ptr.lhs.cast95.pre-phi = phi i32 [ %sub.ptr.lhs.cast453.pre-phi, %if.end87 ], [ %.pre1126, %if.then24.copy_literal_run_crit_edge ]
  %sub.ptr.lhs.cast89.pre-phi = phi i32 [ %sub.ptr.lhs.cast308.pre-phi, %if.end87 ], [ %.pre, %if.then24.copy_literal_run_crit_edge ]
  %t.2 = phi i32 [ %add88, %if.end87 ], [ %sub, %if.then24.copy_literal_run_crit_edge ]
  %ip.5 = phi ptr [ %ip.4, %if.end87 ], [ %incdec.ptr, %if.then24.copy_literal_run_crit_edge ]
  %op.1 = phi ptr [ %op.0, %if.end87 ], [ %out, %if.then24.copy_literal_run_crit_edge ]
  %sub.ptr.rhs.cast90 = ptrtoint ptr %ip.5 to i32
  %sub.ptr.sub91 = sub i32 %sub.ptr.lhs.cast89.pre-phi, %sub.ptr.rhs.cast90
  %add92 = add nuw i32 %t.2, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub91, i32 %add92)
  %cmp93.not = icmp uge i32 %sub.ptr.sub91, %add92
  %sub.ptr.rhs.cast96 = ptrtoint ptr %op.1 to i32
  %sub.ptr.sub97 = sub i32 %sub.ptr.lhs.cast95.pre-phi, %sub.ptr.rhs.cast96
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub97, i32 %add92)
  %cmp99 = icmp uge i32 %sub.ptr.sub97, %add92
  %13 = select i1 %cmp93.not, i1 %cmp99, i1 false
  br i1 %13, label %if.then107, label %if.else149, !prof !17

if.then107:                                       ; preds = %copy_literal_run
  %add.ptr108 = getelementptr i8, ptr %ip.5, i32 %t.2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then107
  %ip.6 = phi ptr [ %ip.5, %if.then107 ], [ %add.ptr144, %do.body.do.body_crit_edge ]
  %op.2 = phi ptr [ %op.1, %if.then107 ], [ %add.ptr143, %do.body.do.body_crit_edge ]
  %14 = ptrtoint ptr %ip.6 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %ip.6, align 1
  %16 = ptrtoint ptr %op.2 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %op.2, align 1
  %add.ptr115 = getelementptr i8, ptr %op.2, i32 4
  %add.ptr117 = getelementptr i8, ptr %ip.6, i32 4
  %17 = ptrtoint ptr %add.ptr117 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %add.ptr117, align 1
  %19 = ptrtoint ptr %add.ptr115 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %add.ptr115, align 1
  %add.ptr123 = getelementptr i8, ptr %op.2, i32 8
  %add.ptr124 = getelementptr i8, ptr %ip.6, i32 8
  %20 = ptrtoint ptr %add.ptr124 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %add.ptr124, align 1
  %22 = ptrtoint ptr %add.ptr123 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %add.ptr123, align 1
  %add.ptr135 = getelementptr i8, ptr %op.2, i32 12
  %add.ptr137 = getelementptr i8, ptr %ip.6, i32 12
  %23 = ptrtoint ptr %add.ptr137 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %add.ptr137, align 1
  %25 = ptrtoint ptr %add.ptr135 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %add.ptr135, align 1
  %add.ptr143 = getelementptr i8, ptr %op.2, i32 16
  %add.ptr144 = getelementptr i8, ptr %ip.6, i32 16
  %cmp146 = icmp ult ptr %add.ptr144, %add.ptr108
  br i1 %cmp146, label %do.body.do.body_crit_edge, label %if.end172.loopexit

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

if.else149:                                       ; preds = %copy_literal_run
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub97, i32 %t.2)
  %cmp153.not = icmp ult i32 %sub.ptr.sub97, %t.2
  br i1 %cmp153.not, label %if.else149.output_overrun_crit_edge, label %if.end156

if.else149.output_overrun_crit_edge:              ; preds = %if.else149
  call void @__sanitizer_cov_trace_pc() #4
  br label %output_overrun

if.end156:                                        ; preds = %if.else149
  %add160 = add nuw i32 %t.2, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub91, i32 %add160)
  %cmp161.not = icmp ult i32 %sub.ptr.sub91, %add160
  br i1 %cmp161.not, label %if.end156.input_overrun_crit_edge, label %if.end156.do.body165_crit_edge

if.end156.do.body165_crit_edge:                   ; preds = %if.end156
  br label %do.body165

if.end156.input_overrun_crit_edge:                ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #4
  br label %input_overrun

do.body165:                                       ; preds = %do.body165.do.body165_crit_edge, %if.end156.do.body165_crit_edge
  %t.3 = phi i32 [ %dec, %do.body165.do.body165_crit_edge ], [ %t.2, %if.end156.do.body165_crit_edge ]
  %ip.7 = phi ptr [ %incdec.ptr166, %do.body165.do.body165_crit_edge ], [ %ip.5, %if.end156.do.body165_crit_edge ]
  %op.3 = phi ptr [ %incdec.ptr167, %do.body165.do.body165_crit_edge ], [ %op.1, %if.end156.do.body165_crit_edge ]
  %incdec.ptr166 = getelementptr i8, ptr %ip.7, i32 1
  %26 = ptrtoint ptr %ip.7 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ip.7, align 1
  %incdec.ptr167 = getelementptr i8, ptr %op.3, i32 1
  %28 = ptrtoint ptr %op.3 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %op.3, align 1
  %dec = add i32 %t.3, -1
  %cmp169.not = icmp eq i32 %dec, 0
  br i1 %cmp169.not, label %do.body165.for.cond.preheader_crit_edge, label %do.body165.do.body165_crit_edge

do.body165.do.body165_crit_edge:                  ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body165

do.body165.for.cond.preheader_crit_edge:          ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond.preheader

if.end172.loopexit:                               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr109 = getelementptr i8, ptr %op.1, i32 %t.2
  br label %for.cond.preheader

if.then176:                                       ; preds = %if.then35
  %conv32.le1229 = zext i8 %9 to i32
  %and = and i32 %conv32.le1229, 3
  %add.ptr177 = getelementptr i8, ptr %op.0, i32 -1
  %shr = lshr i32 %conv32.le1229, 2
  %idx.neg = sub nsw i32 0, %shr
  %add.ptr178 = getelementptr i8, ptr %add.ptr177, i32 %idx.neg
  %incdec.ptr179 = getelementptr i8, ptr %ip.1, i32 2
  %29 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %incdec.ptr31, align 1
  %conv180 = zext i8 %30 to i32
  %shl181.neg = mul nsw i32 %conv180, -4
  %add.ptr183 = getelementptr i8, ptr %add.ptr178, i32 %shl181.neg
  %cmp184 = icmp ult ptr %add.ptr183, %out
  br i1 %cmp184, label %if.then176.lookbehind_overrun_crit_edge, label %if.end187

if.then176.lookbehind_overrun_crit_edge:          ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #4
  br label %lookbehind_overrun

if.end187:                                        ; preds = %if.then176
  %sub.ptr.rhs.cast189 = ptrtoint ptr %op.0 to i32
  %sub.ptr.sub190 = sub i32 %sub.ptr.lhs.cast453.pre-phi, %sub.ptr.rhs.cast189
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub190)
  %cmp191 = icmp ugt i32 %sub.ptr.sub190, 1
  br i1 %cmp191, label %if.end194, label %if.end187.output_overrun_crit_edge

if.end187.output_overrun_crit_edge:               ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #4
  br label %output_overrun

if.end194:                                        ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #4
  %31 = ptrtoint ptr %add.ptr183 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %add.ptr183, align 1
  %33 = ptrtoint ptr %op.0 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %op.0, align 1
  %arrayidx197 = getelementptr i8, ptr %add.ptr183, i32 1
  %34 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx197, align 1
  %arrayidx198 = getelementptr i8, ptr %op.0, i32 1
  %36 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx198, align 1
  %add.ptr199 = getelementptr i8, ptr %op.0, i32 2
  br label %match_next

if.else200:                                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr202 = getelementptr i8, ptr %op.0, i32 -2049
  %shr203 = lshr i32 %conv32, 2
  %idx.neg204 = sub nsw i32 0, %shr203
  %add.ptr205 = getelementptr i8, ptr %add.ptr202, i32 %idx.neg204
  %incdec.ptr206 = getelementptr i8, ptr %ip.1, i32 2
  %37 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %incdec.ptr31, align 1
  %conv207 = zext i8 %38 to i32
  %shl208.neg = mul nsw i32 %conv207, -4
  %add.ptr210 = getelementptr i8, ptr %add.ptr205, i32 %shl208.neg
  br label %if.end440

if.else213:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %9)
  %cmp214 = icmp ugt i8 %9, 63
  br i1 %cmp214, label %if.then216, label %if.else231

if.then216:                                       ; preds = %if.else213
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr218 = getelementptr i8, ptr %op.0, i32 -1
  %shr219 = lshr i32 %conv32, 2
  %and220 = and i32 %shr219, 7
  %idx.neg221 = sub nsw i32 0, %and220
  %add.ptr222 = getelementptr i8, ptr %add.ptr218, i32 %idx.neg221
  %incdec.ptr223 = getelementptr i8, ptr %ip.1, i32 2
  %39 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %incdec.ptr31, align 1
  %conv224 = zext i8 %40 to i32
  %shl225.neg = mul nsw i32 %conv224, -8
  %add.ptr227 = getelementptr i8, ptr %add.ptr222, i32 %shl225.neg
  %shr228 = lshr i32 %conv32, 5
  %add230 = add nuw nsw i32 %shr228, 1
  br label %if.end440

if.else231:                                       ; preds = %if.else213
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %9)
  %cmp232 = icmp ugt i8 %9, 31
  br i1 %cmp232, label %if.then234, label %if.else307

if.then234:                                       ; preds = %if.else231
  %and235 = and i32 %conv32, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and235)
  %cmp237 = icmp eq i32 %and235, 0
  br i1 %cmp237, label %if.then234.while.cond248_crit_edge, label %if.then234.if.end299_crit_edge, !prof !16

if.then234.if.end299_crit_edge:                   ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end299

if.then234.while.cond248_crit_edge:               ; preds = %if.then234
  br label %while.cond248

while.cond248:                                    ; preds = %while.body258.while.cond248_crit_edge, %if.then234.while.cond248_crit_edge
  %ip.9 = phi ptr [ %incdec.ptr259, %while.body258.while.cond248_crit_edge ], [ %incdec.ptr31, %if.then234.while.cond248_crit_edge ]
  %41 = ptrtoint ptr %ip.9 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ip.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp250 = icmp eq i8 %42, 0
  br i1 %cmp250, label %while.body258, label %while.end267, !prof !16

while.body258:                                    ; preds = %while.cond248
  %incdec.ptr259 = getelementptr i8, ptr %ip.9, i32 1
  %cmp263.not = icmp eq ptr %add.ptr, %incdec.ptr259
  br i1 %cmp263.not, label %while.body258.input_overrun_crit_edge, label %while.body258.while.cond248_crit_edge

while.body258.while.cond248_crit_edge:            ; preds = %while.body258
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond248

while.body258.input_overrun_crit_edge:            ; preds = %while.body258
  call void @__sanitizer_cov_trace_pc() #4
  br label %input_overrun

while.end267:                                     ; preds = %while.cond248
  %sub.ptr.lhs.cast268 = ptrtoint ptr %ip.9 to i32
  %sub.ptr.rhs.cast269 = ptrtoint ptr %incdec.ptr31 to i32
  %sub.ptr.sub270 = sub i32 %sub.ptr.lhs.cast268, %sub.ptr.rhs.cast269
  call void @__sanitizer_cov_trace_const_cmp4(i32 16843007, i32 %sub.ptr.sub270)
  %cmp271 = icmp ugt i32 %sub.ptr.sub270, 16843007
  br i1 %cmp271, label %while.end267.cleanup651_crit_edge, label %if.end280, !prof !16

while.end267.cleanup651_crit_edge:                ; preds = %while.end267
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup651

if.end280:                                        ; preds = %while.end267
  %conv249.le = zext i8 %42 to i32
  %sub282 = mul nuw i32 %sub.ptr.sub270, 255
  %incdec.ptr284 = getelementptr i8, ptr %ip.9, i32 1
  %add283 = add nuw nsw i32 %conv249.le, 31
  %add286 = add nuw i32 %add283, %sub282
  %sub.ptr.rhs.cast289 = ptrtoint ptr %incdec.ptr284 to i32
  %sub.ptr.sub290 = sub i32 %sub.ptr.lhs.cast308.pre-phi, %sub.ptr.rhs.cast289
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub290)
  %cmp291 = icmp ugt i32 %sub.ptr.sub290, 1
  br i1 %cmp291, label %if.end280.if.end299_crit_edge, label %if.end280.input_overrun_crit_edge

if.end280.input_overrun_crit_edge:                ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #4
  br label %input_overrun

if.end280.if.end299_crit_edge:                    ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end299

if.end299:                                        ; preds = %if.end280.if.end299_crit_edge, %if.then234.if.end299_crit_edge
  %t.5.in = phi i32 [ %and235, %if.then234.if.end299_crit_edge ], [ %add286, %if.end280.if.end299_crit_edge ]
  %ip.11 = phi ptr [ %incdec.ptr31, %if.then234.if.end299_crit_edge ], [ %incdec.ptr284, %if.end280.if.end299_crit_edge ]
  %t.5 = add nuw i32 %t.5.in, 2
  %add.ptr300 = getelementptr i8, ptr %op.0, i32 -1
  %43 = ptrtoint ptr %ip.11 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %ip.11, align 1
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #2
  %conv301 = zext i16 %45 to i32
  %add.ptr302 = getelementptr i8, ptr %ip.11, i32 2
  %shr303 = lshr i32 %conv301, 2
  %idx.neg304 = sub nsw i32 0, %shr303
  %add.ptr305 = getelementptr i8, ptr %add.ptr300, i32 %idx.neg304
  br label %if.end440

if.else307:                                       ; preds = %if.else231
  %sub.ptr.rhs.cast309 = ptrtoint ptr %incdec.ptr31 to i32
  %sub.ptr.sub310 = sub i32 %sub.ptr.lhs.cast308.pre-phi, %sub.ptr.rhs.cast309
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub310)
  %cmp311 = icmp ugt i32 %sub.ptr.sub310, 1
  br i1 %cmp311, label %if.end314, label %if.else307.input_overrun_crit_edge

if.else307.input_overrun_crit_edge:               ; preds = %if.else307
  call void @__sanitizer_cov_trace_pc() #4
  br label %input_overrun

if.end314:                                        ; preds = %if.else307
  %46 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %incdec.ptr31, align 1
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #2
  %conv316 = zext i16 %48 to i32
  %and317 = and i32 %conv316, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 65532, i32 %and317)
  %cmp318 = icmp ne i32 %and317, 65532
  %and321 = and i32 %conv32, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and321)
  %cmp322 = icmp ne i32 %and321, 24
  %or.cond = select i1 %cmp318, i1 true, i1 %cmp322
  %or.cond906 = select i1 %or.cond, i1 true, i1 %tobool325.not
  br i1 %or.cond906, label %if.else355, label %if.then332, !prof !19

if.then332:                                       ; preds = %if.end314
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub310)
  %cmp336 = icmp ugt i32 %sub.ptr.sub310, 2
  br i1 %cmp336, label %if.end339, label %if.then332.input_overrun_crit_edge

if.then332.input_overrun_crit_edge:               ; preds = %if.then332
  call void @__sanitizer_cov_trace_pc() #4
  br label %input_overrun

if.end339:                                        ; preds = %if.then332
  %49 = and i8 %9, 7
  %arrayidx341 = getelementptr i8, ptr %ip.1, i32 3
  %50 = ptrtoint ptr %arrayidx341 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx341, align 1
  %conv342 = zext i8 %51 to i32
  %shl343 = shl nuw nsw i32 %conv342, 3
  %narrow = add nuw nsw i8 %49, 4
  %or = zext i8 %narrow to i32
  %add344 = add nuw nsw i32 %shl343, %or
  %sub.ptr.rhs.cast346 = ptrtoint ptr %op.0 to i32
  %sub.ptr.sub347 = sub i32 %sub.ptr.lhs.cast453.pre-phi, %sub.ptr.rhs.cast346
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub347, i32 %add344)
  %cmp348.not = icmp ult i32 %sub.ptr.sub347, %add344
  br i1 %cmp348.not, label %if.end339.output_overrun_crit_edge, label %if.end351

if.end339.output_overrun_crit_edge:               ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #4
  br label %output_overrun

if.end351:                                        ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #4
  %52 = call ptr @memset(ptr %op.0, i32 0, i32 %add344)
  %add.ptr352 = getelementptr i8, ptr %op.0, i32 %add344
  %and353 = and i32 %conv316, 3
  %add.ptr354 = getelementptr i8, ptr %ip.1, i32 4
  br label %match_next

if.else355:                                       ; preds = %if.end314
  %and356 = shl nuw nsw i32 %conv32, 11
  %shl357 = and i32 %and356, 16384
  %idx.neg358 = sub nsw i32 0, %shl357
  %add.ptr359 = getelementptr i8, ptr %op.0, i32 %idx.neg358
  %and360 = and i32 %conv32, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and360)
  %cmp362 = icmp eq i32 %and360, 0
  br i1 %cmp362, label %if.else355.while.cond373_crit_edge, label %if.else355.if.end426_crit_edge, !prof !16

if.else355.if.end426_crit_edge:                   ; preds = %if.else355
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end426

if.else355.while.cond373_crit_edge:               ; preds = %if.else355
  br label %while.cond373

while.cond373:                                    ; preds = %while.body383.while.cond373_crit_edge, %if.else355.while.cond373_crit_edge
  %ip.12 = phi ptr [ %incdec.ptr384, %while.body383.while.cond373_crit_edge ], [ %incdec.ptr31, %if.else355.while.cond373_crit_edge ]
  %53 = ptrtoint ptr %ip.12 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ip.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp375 = icmp eq i8 %54, 0
  br i1 %cmp375, label %while.body383, label %while.end392, !prof !16

while.body383:                                    ; preds = %while.cond373
  %incdec.ptr384 = getelementptr i8, ptr %ip.12, i32 1
  %cmp388.not = icmp eq ptr %add.ptr, %incdec.ptr384
  br i1 %cmp388.not, label %while.body383.input_overrun_crit_edge, label %while.body383.while.cond373_crit_edge

while.body383.while.cond373_crit_edge:            ; preds = %while.body383
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond373

while.body383.input_overrun_crit_edge:            ; preds = %while.body383
  call void @__sanitizer_cov_trace_pc() #4
  br label %input_overrun

while.end392:                                     ; preds = %while.cond373
  %conv374.le = zext i8 %54 to i32
  %sub.ptr.lhs.cast393 = ptrtoint ptr %ip.12 to i32
  %sub.ptr.sub395 = sub i32 %sub.ptr.lhs.cast393, %sub.ptr.rhs.cast309
  call void @__sanitizer_cov_trace_const_cmp4(i32 16843007, i32 %sub.ptr.sub395)
  %cmp396 = icmp ugt i32 %sub.ptr.sub395, 16843007
  br i1 %cmp396, label %while.end392.cleanup651_crit_edge, label %if.end405, !prof !16

while.end392.cleanup651_crit_edge:                ; preds = %while.end392
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup651

if.end405:                                        ; preds = %while.end392
  %incdec.ptr409 = getelementptr i8, ptr %ip.12, i32 1
  %sub.ptr.rhs.cast414 = ptrtoint ptr %incdec.ptr409 to i32
  %sub.ptr.sub415 = sub i32 %sub.ptr.lhs.cast308.pre-phi, %sub.ptr.rhs.cast414
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub415)
  %cmp416 = icmp ugt i32 %sub.ptr.sub415, 1
  br i1 %cmp416, label %cleanup422, label %if.end405.input_overrun_crit_edge

if.end405.input_overrun_crit_edge:                ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #4
  br label %input_overrun

cleanup422:                                       ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #4
  %sub407 = mul nuw i32 %sub.ptr.sub395, 255
  %add408 = add nuw nsw i32 %conv374.le, 7
  %add411 = add nuw i32 %add408, %sub407
  %55 = ptrtoint ptr %incdec.ptr409 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %incdec.ptr409, align 1
  %57 = tail call i16 @llvm.bswap.i16(i16 %56) #2
  %conv421 = zext i16 %57 to i32
  br label %if.end426

if.end426:                                        ; preds = %cleanup422, %if.else355.if.end426_crit_edge
  %next.1 = phi i32 [ %conv421, %cleanup422 ], [ %conv316, %if.else355.if.end426_crit_edge ]
  %t.7.in = phi i32 [ %add411, %cleanup422 ], [ %and360, %if.else355.if.end426_crit_edge ]
  %58 = phi ptr [ %ip.12, %cleanup422 ], [ %ip.1, %if.else355.if.end426_crit_edge ]
  %t.7 = add nuw i32 %t.7.in, 2
  %add.ptr427 = getelementptr i8, ptr %58, i32 3
  %shr428 = lshr i32 %next.1, 2
  %idx.neg429 = sub nsw i32 0, %shr428
  %add.ptr430 = getelementptr i8, ptr %add.ptr359, i32 %idx.neg429
  %cmp432 = icmp eq ptr %add.ptr430, %op.0
  br i1 %cmp432, label %eof_found, label %if.end435

if.end435:                                        ; preds = %if.end426
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr436 = getelementptr i8, ptr %add.ptr430, i32 -16384
  br label %if.end440

if.end440:                                        ; preds = %if.end435, %if.end299, %if.then216, %if.else200
  %m_pos.0 = phi ptr [ %add.ptr210, %if.else200 ], [ %add.ptr227, %if.then216 ], [ %add.ptr305, %if.end299 ], [ %add.ptr436, %if.end435 ]
  %next.2.in = phi i32 [ %conv32, %if.else200 ], [ %conv32, %if.then216 ], [ %conv301, %if.end299 ], [ %next.1, %if.end435 ]
  %t.8 = phi i32 [ 3, %if.else200 ], [ %add230, %if.then216 ], [ %t.5, %if.end299 ], [ %t.7, %if.end435 ]
  %ip.15 = phi ptr [ %incdec.ptr206, %if.else200 ], [ %incdec.ptr223, %if.then216 ], [ %add.ptr302, %if.end299 ], [ %add.ptr427, %if.end435 ]
  %next.2 = and i32 %next.2.in, 3
  %cmp441 = icmp ult ptr %m_pos.0, %out
  br i1 %cmp441, label %if.end440.lookbehind_overrun_crit_edge, label %if.end444

if.end440.lookbehind_overrun_crit_edge:           ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #4
  br label %lookbehind_overrun

if.end444:                                        ; preds = %if.end440
  %sub.ptr.lhs.cast445 = ptrtoint ptr %op.0 to i32
  %sub.ptr.rhs.cast446 = ptrtoint ptr %m_pos.0 to i32
  %sub.ptr.sub447 = sub i32 %sub.ptr.lhs.cast445, %sub.ptr.rhs.cast446
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.ptr.sub447)
  %cmp448 = icmp sgt i32 %sub.ptr.sub447, 7
  br i1 %cmp448, label %if.then450, label %if.else547

if.then450:                                       ; preds = %if.end444
  %add.ptr452 = getelementptr i8, ptr %op.0, i32 %t.8
  %sub.ptr.sub455 = sub i32 %sub.ptr.lhs.cast453.pre-phi, %sub.ptr.lhs.cast445
  %add456 = add nuw i32 %t.8, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub455, i32 %add456)
  %cmp457.not = icmp ult i32 %sub.ptr.sub455, %add456
  br i1 %cmp457.not, label %if.else528, label %if.then450.do.body466_crit_edge, !prof !16

if.then450.do.body466_crit_edge:                  ; preds = %if.then450
  br label %do.body466

do.body466:                                       ; preds = %do.body466.do.body466_crit_edge, %if.then450.do.body466_crit_edge
  %m_pos.1 = phi ptr [ %add.ptr506, %do.body466.do.body466_crit_edge ], [ %m_pos.0, %if.then450.do.body466_crit_edge ]
  %op.5 = phi ptr [ %add.ptr505, %do.body466.do.body466_crit_edge ], [ %op.0, %if.then450.do.body466_crit_edge ]
  %59 = ptrtoint ptr %m_pos.1 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %m_pos.1, align 1
  %61 = ptrtoint ptr %op.5 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %60, ptr %op.5, align 1
  %add.ptr477 = getelementptr i8, ptr %op.5, i32 4
  %add.ptr479 = getelementptr i8, ptr %m_pos.1, i32 4
  %62 = ptrtoint ptr %add.ptr479 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %add.ptr479, align 1
  %64 = ptrtoint ptr %add.ptr477 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %63, ptr %add.ptr477, align 1
  %add.ptr485 = getelementptr i8, ptr %op.5, i32 8
  %add.ptr486 = getelementptr i8, ptr %m_pos.1, i32 8
  %65 = ptrtoint ptr %add.ptr486 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %add.ptr486, align 1
  %67 = ptrtoint ptr %add.ptr485 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %66, ptr %add.ptr485, align 1
  %add.ptr497 = getelementptr i8, ptr %op.5, i32 12
  %add.ptr499 = getelementptr i8, ptr %m_pos.1, i32 12
  %68 = ptrtoint ptr %add.ptr499 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %add.ptr499, align 1
  %70 = ptrtoint ptr %add.ptr497 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %69, ptr %add.ptr497, align 1
  %add.ptr505 = getelementptr i8, ptr %op.5, i32 16
  %add.ptr506 = getelementptr i8, ptr %m_pos.1, i32 16
  %cmp508 = icmp ult ptr %add.ptr505, %add.ptr452
  br i1 %cmp508, label %do.body466.do.body466_crit_edge, label %do.end510

do.body466.do.body466_crit_edge:                  ; preds = %do.body466
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body466

do.end510:                                        ; preds = %do.body466
  %sub.ptr.rhs.cast512 = ptrtoint ptr %ip.15 to i32
  %sub.ptr.sub513 = sub i32 %sub.ptr.lhs.cast308.pre-phi, %sub.ptr.rhs.cast512
  %cmp514 = icmp ugt i32 %sub.ptr.sub513, 5
  br i1 %cmp514, label %cleanup544, label %do.end510.match_next_crit_edge

do.end510.match_next_crit_edge:                   ; preds = %do.end510
  call void @__sanitizer_cov_trace_pc() #4
  br label %match_next

if.else528:                                       ; preds = %if.then450
  %sub.ptr.lhs.cast445.le = ptrtoint ptr %op.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub455, i32 %t.8)
  %cmp532.not = icmp ult i32 %sub.ptr.sub455, %t.8
  br i1 %cmp532.not, label %if.else528.output_overrun_crit_edge, label %if.else528.do.body536_crit_edge

if.else528.do.body536_crit_edge:                  ; preds = %if.else528
  br label %do.body536

if.else528.output_overrun_crit_edge:              ; preds = %if.else528
  call void @__sanitizer_cov_trace_pc() #4
  br label %output_overrun

do.body536:                                       ; preds = %do.body536.do.body536_crit_edge, %if.else528.do.body536_crit_edge
  %m_pos.2 = phi ptr [ %incdec.ptr537, %do.body536.do.body536_crit_edge ], [ %m_pos.0, %if.else528.do.body536_crit_edge ]
  %op.6 = phi ptr [ %incdec.ptr538, %do.body536.do.body536_crit_edge ], [ %op.0, %if.else528.do.body536_crit_edge ]
  %incdec.ptr537 = getelementptr i8, ptr %m_pos.2, i32 1
  %71 = ptrtoint ptr %m_pos.2 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %m_pos.2, align 1
  %incdec.ptr538 = getelementptr i8, ptr %op.6, i32 1
  %73 = ptrtoint ptr %op.6 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %op.6, align 1
  %cmp540 = icmp ult ptr %incdec.ptr538, %add.ptr452
  br i1 %cmp540, label %do.body536.do.body536_crit_edge, label %do.body536.match_next_crit_edge

do.body536.match_next_crit_edge:                  ; preds = %do.body536
  call void @__sanitizer_cov_trace_pc() #4
  br label %match_next

do.body536.do.body536_crit_edge:                  ; preds = %do.body536
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body536

cleanup544:                                       ; preds = %do.end510
  call void @__sanitizer_cov_trace_pc() #4
  %74 = ptrtoint ptr %ip.15 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %ip.15, align 1
  %76 = ptrtoint ptr %add.ptr452 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %75, ptr %add.ptr452, align 1
  %add.ptr525 = getelementptr i8, ptr %add.ptr452, i32 %next.2
  %add.ptr526 = getelementptr i8, ptr %ip.15, i32 %next.2
  br label %for.cond

if.else547:                                       ; preds = %if.end444
  %sub.ptr.lhs.cast445.le1226 = ptrtoint ptr %op.0 to i32
  %add.ptr549 = getelementptr i8, ptr %op.0, i32 %t.8
  %sub.ptr.sub552 = sub i32 %sub.ptr.lhs.cast453.pre-phi, %sub.ptr.lhs.cast445.le1226
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub552, i32 %t.8)
  %cmp553.not = icmp ult i32 %sub.ptr.sub552, %t.8
  br i1 %cmp553.not, label %if.else547.output_overrun_crit_edge, label %if.end556

if.else547.output_overrun_crit_edge:              ; preds = %if.else547
  call void @__sanitizer_cov_trace_pc() #4
  br label %output_overrun

if.end556:                                        ; preds = %if.else547
  %77 = ptrtoint ptr %m_pos.0 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %m_pos.0, align 1
  %79 = ptrtoint ptr %op.0 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %op.0, align 1
  %arrayidx559 = getelementptr i8, ptr %m_pos.0, i32 1
  %80 = ptrtoint ptr %arrayidx559 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx559, align 1
  %arrayidx560 = getelementptr i8, ptr %op.0, i32 1
  %82 = ptrtoint ptr %arrayidx560 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %arrayidx560, align 1
  %add.ptr561 = getelementptr i8, ptr %op.0, i32 2
  %add.ptr562 = getelementptr i8, ptr %m_pos.0, i32 2
  br label %do.body563

do.body563:                                       ; preds = %do.body563.do.body563_crit_edge, %if.end556
  %m_pos.3 = phi ptr [ %add.ptr562, %if.end556 ], [ %incdec.ptr564, %do.body563.do.body563_crit_edge ]
  %op.9 = phi ptr [ %add.ptr561, %if.end556 ], [ %incdec.ptr565, %do.body563.do.body563_crit_edge ]
  %incdec.ptr564 = getelementptr i8, ptr %m_pos.3, i32 1
  %83 = ptrtoint ptr %m_pos.3 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %m_pos.3, align 1
  %incdec.ptr565 = getelementptr i8, ptr %op.9, i32 1
  %85 = ptrtoint ptr %op.9 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %op.9, align 1
  %cmp567 = icmp ult ptr %incdec.ptr565, %add.ptr549
  br i1 %cmp567, label %do.body563.do.body563_crit_edge, label %do.body563.match_next_crit_edge

do.body563.match_next_crit_edge:                  ; preds = %do.body563
  call void @__sanitizer_cov_trace_pc() #4
  br label %match_next

do.body563.do.body563_crit_edge:                  ; preds = %do.body563
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body563

match_next:                                       ; preds = %do.body563.match_next_crit_edge, %do.body536.match_next_crit_edge, %do.end510.match_next_crit_edge, %if.end351, %if.end194, %if.then24.match_next_crit_edge
  %sub.ptr.lhs.cast580.pre-phi = phi i32 [ %sub.ptr.lhs.cast453.pre-phi, %if.end351 ], [ %sub.ptr.lhs.cast453.pre-phi, %if.end194 ], [ %.pre1126, %if.then24.match_next_crit_edge ], [ %sub.ptr.lhs.cast453.pre-phi, %do.body536.match_next_crit_edge ], [ %sub.ptr.lhs.cast453.pre-phi, %do.body563.match_next_crit_edge ], [ %sub.ptr.lhs.cast453.pre-phi, %do.end510.match_next_crit_edge ]
  %sub.ptr.lhs.cast574.pre-phi = phi i32 [ %sub.ptr.lhs.cast308.pre-phi, %if.end351 ], [ %sub.ptr.lhs.cast308.pre-phi, %if.end194 ], [ %.pre, %if.then24.match_next_crit_edge ], [ %sub.ptr.lhs.cast308.pre-phi, %do.body536.match_next_crit_edge ], [ %sub.ptr.lhs.cast308.pre-phi, %do.body563.match_next_crit_edge ], [ %sub.ptr.lhs.cast308.pre-phi, %do.end510.match_next_crit_edge ]
  %next.3 = phi i32 [ %and353, %if.end351 ], [ %and, %if.end194 ], [ %sub, %if.then24.match_next_crit_edge ], [ %next.2, %do.body536.match_next_crit_edge ], [ %next.2, %do.body563.match_next_crit_edge ], [ %next.2, %do.end510.match_next_crit_edge ]
  %ip.18 = phi ptr [ %add.ptr354, %if.end351 ], [ %incdec.ptr179, %if.end194 ], [ %incdec.ptr, %if.then24.match_next_crit_edge ], [ %ip.15, %do.body536.match_next_crit_edge ], [ %ip.15, %do.body563.match_next_crit_edge ], [ %ip.15, %do.end510.match_next_crit_edge ]
  %op.12 = phi ptr [ %add.ptr352, %if.end351 ], [ %add.ptr199, %if.end194 ], [ %out, %if.then24.match_next_crit_edge ], [ %incdec.ptr538, %do.body536.match_next_crit_edge ], [ %incdec.ptr565, %do.body563.match_next_crit_edge ], [ %add.ptr452, %do.end510.match_next_crit_edge ]
  %sub.ptr.rhs.cast575 = ptrtoint ptr %ip.18 to i32
  %sub.ptr.sub576 = sub i32 %sub.ptr.lhs.cast574.pre-phi, %sub.ptr.rhs.cast575
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.ptr.sub576)
  %cmp577 = icmp ugt i32 %sub.ptr.sub576, 5
  %sub.ptr.rhs.cast581 = ptrtoint ptr %op.12 to i32
  %sub.ptr.sub582 = sub i32 %sub.ptr.lhs.cast580.pre-phi, %sub.ptr.rhs.cast581
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub582)
  %cmp583 = icmp ugt i32 %sub.ptr.sub582, 3
  %86 = select i1 %cmp577, i1 %cmp583, i1 false, !prof !17
  br i1 %86, label %do.body593, label %if.else603, !prof !17

do.body593:                                       ; preds = %match_next
  call void @__sanitizer_cov_trace_pc() #4
  %87 = ptrtoint ptr %ip.18 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %ip.18, align 1
  %89 = ptrtoint ptr %op.12 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %88, ptr %op.12, align 1
  %add.ptr601 = getelementptr i8, ptr %op.12, i32 %next.3
  %add.ptr602 = getelementptr i8, ptr %ip.18, i32 %next.3
  br label %for.cond.preheader

if.else603:                                       ; preds = %match_next
  %add607 = add nsw i32 %next.3, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub576, i32 %add607)
  %cmp608.not = icmp ult i32 %sub.ptr.sub576, %add607
  br i1 %cmp608.not, label %if.else603.input_overrun_crit_edge, label %if.end611

if.else603.input_overrun_crit_edge:               ; preds = %if.else603
  call void @__sanitizer_cov_trace_pc() #4
  br label %input_overrun

if.end611:                                        ; preds = %if.else603
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub582, i32 %next.3)
  %cmp615.not = icmp ult i32 %sub.ptr.sub582, %next.3
  br i1 %cmp615.not, label %if.end611.output_overrun_crit_edge, label %while.cond619.preheader

if.end611.output_overrun_crit_edge:               ; preds = %if.end611
  call void @__sanitizer_cov_trace_pc() #4
  br label %output_overrun

while.cond619.preheader:                          ; preds = %if.end611
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %next.3)
  %cmp620.not1032 = icmp eq i32 %next.3, 0
  br i1 %cmp620.not1032, label %while.cond619.preheader.for.cond.preheader_crit_edge, label %while.cond619.preheader.while.body622_crit_edge

while.cond619.preheader.while.body622_crit_edge:  ; preds = %while.cond619.preheader
  br label %while.body622

while.cond619.preheader.for.cond.preheader_crit_edge: ; preds = %while.cond619.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond.preheader

while.body622:                                    ; preds = %while.body622.while.body622_crit_edge, %while.cond619.preheader.while.body622_crit_edge
  %op.131035 = phi ptr [ %incdec.ptr624, %while.body622.while.body622_crit_edge ], [ %op.12, %while.cond619.preheader.while.body622_crit_edge ]
  %ip.191034 = phi ptr [ %incdec.ptr623, %while.body622.while.body622_crit_edge ], [ %ip.18, %while.cond619.preheader.while.body622_crit_edge ]
  %t.91033 = phi i32 [ %dec625, %while.body622.while.body622_crit_edge ], [ %next.3, %while.cond619.preheader.while.body622_crit_edge ]
  %incdec.ptr623 = getelementptr i8, ptr %ip.191034, i32 1
  %90 = ptrtoint ptr %ip.191034 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %ip.191034, align 1
  %incdec.ptr624 = getelementptr i8, ptr %op.131035, i32 1
  %92 = ptrtoint ptr %op.131035 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %op.131035, align 1
  %dec625 = add i32 %t.91033, -1
  %cmp620.not = icmp eq i32 %dec625, 0
  br i1 %cmp620.not, label %while.body622.for.cond.preheader_crit_edge, label %while.body622.while.body622_crit_edge

while.body622.while.body622_crit_edge:            ; preds = %while.body622
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body622

while.body622.for.cond.preheader_crit_edge:       ; preds = %while.body622
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond.preheader

eof_found:                                        ; preds = %if.end426
  %sub.ptr.lhs.cast628 = ptrtoint ptr %op.0 to i32
  %sub.ptr.rhs.cast629 = ptrtoint ptr %out to i32
  %sub.ptr.sub630 = sub i32 %sub.ptr.lhs.cast628, %sub.ptr.rhs.cast629
  %93 = ptrtoint ptr %out_len to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %sub.ptr.sub630, ptr %out_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %t.7)
  %cmp631.not = icmp eq i32 %t.7, 3
  br i1 %cmp631.not, label %cond.false, label %eof_found.cleanup651_crit_edge

eof_found.cleanup651_crit_edge:                   ; preds = %eof_found
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup651

cond.false:                                       ; preds = %eof_found
  %cmp633 = icmp eq ptr %add.ptr427, %add.ptr
  br i1 %cmp633, label %cond.false.cleanup651_crit_edge, label %cond.false636

cond.false.cleanup651_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup651

cond.false636:                                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #4
  %cmp637 = icmp ult ptr %add.ptr427, %add.ptr
  %cond = select i1 %cmp637, i32 -8, i32 -4
  br label %cleanup651

input_overrun:                                    ; preds = %if.else603.input_overrun_crit_edge, %if.end405.input_overrun_crit_edge, %while.body383.input_overrun_crit_edge, %if.then332.input_overrun_crit_edge, %if.else307.input_overrun_crit_edge, %if.end280.input_overrun_crit_edge, %while.body258.input_overrun_crit_edge, %if.end156.input_overrun_crit_edge, %while.body.input_overrun_crit_edge, %entry.input_overrun_crit_edge
  %op.15 = phi ptr [ %out, %entry.input_overrun_crit_edge ], [ %op.1, %if.end156.input_overrun_crit_edge ], [ %op.0, %if.then332.input_overrun_crit_edge ], [ %op.12, %if.else603.input_overrun_crit_edge ], [ %op.0, %while.body.input_overrun_crit_edge ], [ %op.0, %while.body258.input_overrun_crit_edge ], [ %op.0, %while.body383.input_overrun_crit_edge ], [ %op.0, %if.else307.input_overrun_crit_edge ], [ %op.0, %if.end280.input_overrun_crit_edge ], [ %op.0, %if.end405.input_overrun_crit_edge ]
  %sub.ptr.lhs.cast642 = ptrtoint ptr %op.15 to i32
  %sub.ptr.rhs.cast643 = ptrtoint ptr %out to i32
  %sub.ptr.sub644 = sub i32 %sub.ptr.lhs.cast642, %sub.ptr.rhs.cast643
  %94 = ptrtoint ptr %out_len to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %sub.ptr.sub644, ptr %out_len, align 4
  br label %cleanup651

output_overrun:                                   ; preds = %if.end611.output_overrun_crit_edge, %if.else547.output_overrun_crit_edge, %if.else528.output_overrun_crit_edge, %if.end339.output_overrun_crit_edge, %if.end187.output_overrun_crit_edge, %if.else149.output_overrun_crit_edge
  %sub.ptr.lhs.cast645.pre-phi = phi i32 [ %sub.ptr.lhs.cast445.le, %if.else528.output_overrun_crit_edge ], [ %sub.ptr.lhs.cast445.le1226, %if.else547.output_overrun_crit_edge ], [ %sub.ptr.rhs.cast581, %if.end611.output_overrun_crit_edge ], [ %sub.ptr.rhs.cast346, %if.end339.output_overrun_crit_edge ], [ %sub.ptr.rhs.cast189, %if.end187.output_overrun_crit_edge ], [ %sub.ptr.rhs.cast96, %if.else149.output_overrun_crit_edge ]
  %sub.ptr.rhs.cast646 = ptrtoint ptr %out to i32
  %sub.ptr.sub647 = sub i32 %sub.ptr.lhs.cast645.pre-phi, %sub.ptr.rhs.cast646
  %95 = ptrtoint ptr %out_len to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %sub.ptr.sub647, ptr %out_len, align 4
  br label %cleanup651

lookbehind_overrun:                               ; preds = %if.end440.lookbehind_overrun_crit_edge, %if.then176.lookbehind_overrun_crit_edge
  %sub.ptr.lhs.cast648 = ptrtoint ptr %op.0 to i32
  %sub.ptr.rhs.cast649 = ptrtoint ptr %out to i32
  %sub.ptr.sub650 = sub i32 %sub.ptr.lhs.cast648, %sub.ptr.rhs.cast649
  %96 = ptrtoint ptr %out_len to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %sub.ptr.sub650, ptr %out_len, align 4
  br label %cleanup651

cleanup651:                                       ; preds = %lookbehind_overrun, %output_overrun, %input_overrun, %cond.false636, %cond.false.cleanup651_crit_edge, %eof_found.cleanup651_crit_edge, %while.end392.cleanup651_crit_edge, %while.end267.cleanup651_crit_edge, %while.end.cleanup651_crit_edge
  %retval.10 = phi i32 [ -4, %input_overrun ], [ -5, %output_overrun ], [ -6, %lookbehind_overrun ], [ -1, %eof_found.cleanup651_crit_edge ], [ %cond, %cond.false636 ], [ 0, %cond.false.cleanup651_crit_edge ], [ -1, %while.end.cleanup651_crit_edge ], [ -1, %while.end267.cleanup651_crit_edge ], [ -1, %while.end392.cleanup651_crit_edge ]
  ret i32 %retval.10
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @__ksymtab_lzo1x_decompress_safe, !1, !"__ksymtab_lzo1x_decompress_safe", i1 false, i1 false}
!1 = !{!"../lib/lzo/lzo1x_decompress_safe.c", i32 291, i32 1}
!2 = !{ptr @__UNIQUE_ID_file106, !3, !"__UNIQUE_ID_file106", i1 false, i1 false}
!3 = !{!"../lib/lzo/lzo1x_decompress_safe.c", i32 293, i32 1}
!4 = !{ptr @__UNIQUE_ID_license107, !3, !"__UNIQUE_ID_license107", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description108, !6, !"__UNIQUE_ID_description108", i1 false, i1 false}
!6 = !{!"../lib/lzo/lzo1x_decompress_safe.c", i32 294, i32 1}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!19 = !{!"branch_weights", i32 2002, i32 2000}
