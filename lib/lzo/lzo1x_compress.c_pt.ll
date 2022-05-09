; ModuleID = '/llk/IR_all_yes/lib/lzo/lzo1x_compress.c_pt.bc'
source_filename = "../lib/lzo/lzo1x_compress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+lzo1x_1_compress\22, \22a\22\09"
module asm "\09.weak\09__crc_lzo1x_1_compress\09\09\09\09"
module asm "\09.long\09__crc_lzo1x_1_compress\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lzo1x_1_compress:\09\09\09\09\09"
module asm "\09.asciz \09\22lzo1x_1_compress\22\09\09\09\09\09"
module asm "__kstrtabns_lzo1x_1_compress:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+lzorle1x_1_compress\22, \22a\22\09"
module asm "\09.weak\09__crc_lzorle1x_1_compress\09\09\09\09"
module asm "\09.long\09__crc_lzorle1x_1_compress\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lzorle1x_1_compress:\09\09\09\09\09"
module asm "\09.asciz \09\22lzorle1x_1_compress\22\09\09\09\09\09"
module asm "__kstrtabns_lzorle1x_1_compress:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_lzo1x_1_compress = external dso_local constant [0 x i8], align 1
@__kstrtabns_lzo1x_1_compress = external dso_local constant [0 x i8], align 1
@__ksymtab_lzo1x_1_compress = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lzo1x_1_compress to i32), ptr @__kstrtab_lzo1x_1_compress, ptr @__kstrtabns_lzo1x_1_compress }, section "___ksymtab_gpl+lzo1x_1_compress", align 4
@__kstrtab_lzorle1x_1_compress = external dso_local constant [0 x i8], align 1
@__kstrtabns_lzorle1x_1_compress = external dso_local constant [0 x i8], align 1
@__ksymtab_lzorle1x_1_compress = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lzorle1x_1_compress to i32), ptr @__kstrtab_lzorle1x_1_compress, ptr @__kstrtabns_lzorle1x_1_compress }, section "___ksymtab_gpl+lzorle1x_1_compress", align 4
@__UNIQUE_ID_file107 = internal constant [39 x i8] c"lzo_compress.file=lib/lzo/lzo_compress\00", section ".modinfo", align 1
@__UNIQUE_ID_license108 = internal constant [25 x i8] c"lzo_compress.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description109 = internal constant [44 x i8] c"lzo_compress.description=LZO1X-1 Compressor\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_description109, ptr @__UNIQUE_ID_file107, ptr @__UNIQUE_ID_license108, ptr @__ksymtab_lzo1x_1_compress, ptr @__ksymtab_lzorle1x_1_compress], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lzo1x_1_compress(ptr noundef %in, i32 noundef %in_len, ptr noundef %out, ptr nocapture noundef %out_len, ptr nocapture noundef %wrkmem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @lzogeneric1x_1_compress(ptr noundef %in, i32 noundef %in_len, ptr noundef %out, ptr noundef %out_len, ptr noundef %wrkmem, i8 noundef zeroext 0)
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lzogeneric1x_1_compress(ptr noundef %in, i32 noundef %in_len, ptr noundef %out, ptr nocapture noundef %out_len, ptr nocapture noundef %wrkmem, i8 noundef zeroext %bitstream_version) unnamed_addr #0 align 64 {
entry:
  %state_offset = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %state_offset) #4
  %0 = ptrtoint ptr %state_offset to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -2, ptr %state_offset, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bitstream_version)
  %cmp.not = icmp eq i8 %bitstream_version, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr = getelementptr i8, ptr %out, i32 1
  %1 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 17, ptr %out, align 1
  %incdec.ptr2 = getelementptr i8, ptr %out, i32 2
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bitstream_version, ptr %incdec.ptr, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %m4_max_offset.0 = phi i32 [ 49151, %if.then ], [ 49152, %entry.if.end_crit_edge ]
  %op.0 = phi ptr [ %incdec.ptr2, %if.then ], [ %out, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %in_len)
  %cmp39 = icmp ugt i32 %in_len, 20
  br i1 %cmp39, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end.while.body_crit_edge
  %ip.013 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %in, %if.end.while.body_crit_edge ]
  %op.112 = phi ptr [ %add.ptr15, %cleanup.while.body_crit_edge ], [ %op.0, %if.end.while.body_crit_edge ]
  %l.011 = phi i32 [ %sub, %cleanup.while.body_crit_edge ], [ %in_len, %if.end.while.body_crit_edge ]
  %t.010 = phi i32 [ %call, %cleanup.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %3 = tail call i32 @llvm.umin.i32(i32 %l.011, i32 %m4_max_offset.0)
  %4 = ptrtoint ptr %ip.013 to i32
  %add8 = add i32 %3, %4
  %add9 = add i32 %3, %t.010
  %shr = lshr i32 %add9, 5
  %add10 = add i32 %add8, %shr
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %add8)
  %cmp11.not = icmp ugt i32 %add10, %add8
  br i1 %cmp11.not, label %cleanup, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

cleanup:                                          ; preds = %while.body
  %5 = call ptr @memset(ptr %wrkmem, i32 0, i32 16384)
  %call = call fastcc i32 @lzo1x_1_do_compress(ptr noundef %ip.013, i32 noundef %3, ptr noundef %op.112, ptr noundef %out_len, i32 noundef %t.010, ptr noundef %wrkmem, ptr noundef nonnull %state_offset, i8 noundef zeroext %bitstream_version)
  %add.ptr = getelementptr i8, ptr %ip.013, i32 %3
  %6 = ptrtoint ptr %out_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out_len, align 4
  %add.ptr15 = getelementptr i8, ptr %op.112, i32 %7
  %sub = sub i32 %l.011, %3
  %cmp3 = icmp ugt i32 %sub, 20
  br i1 %cmp3, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %t.0.lcssa = phi i32 [ 0, %if.end.while.end_crit_edge ], [ %t.010, %while.body.while.end_crit_edge ], [ %call, %cleanup.while.end_crit_edge ]
  %l.0.lcssa = phi i32 [ %in_len, %if.end.while.end_crit_edge ], [ %l.011, %while.body.while.end_crit_edge ], [ %sub, %cleanup.while.end_crit_edge ]
  %op.1.lcssa = phi ptr [ %op.0, %if.end.while.end_crit_edge ], [ %op.112, %while.body.while.end_crit_edge ], [ %add.ptr15, %cleanup.while.end_crit_edge ]
  %add17 = add i32 %l.0.lcssa, %t.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add17)
  %cmp18.not = icmp eq i32 %add17, 0
  br i1 %cmp18.not, label %while.end.if.end119_crit_edge, label %if.then20

while.end.if.end119_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end119

if.then20:                                        ; preds = %while.end
  %add.ptr21 = getelementptr i8, ptr %in, i32 %in_len
  %idx.neg = sub i32 0, %add17
  %add.ptr22 = getelementptr i8, ptr %add.ptr21, i32 %idx.neg
  %cmp23 = icmp eq ptr %op.1.lcssa, %op.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 239, i32 %add17)
  %cmp25 = icmp ult i32 %add17, 239
  %or.cond = select i1 %cmp23, i1 %cmp25, i1 false
  br i1 %or.cond, label %if.then20.if.end58_crit_edge, label %if.else31

if.then20.if.end58_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.else31:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add17)
  %cmp32 = icmp ult i32 %add17, 4
  br i1 %cmp32, label %if.end58.thread, label %if.else37

if.end58.thread:                                  ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %state_offset to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %state_offset, align 1
  %idxprom = sext i8 %9 to i32
  %arrayidx = getelementptr i8, ptr %op.1.lcssa, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %12 = trunc i32 %add17 to i8
  %conv36 = or i8 %11, %12
  store i8 %conv36, ptr %arrayidx, align 1
  br label %do.body111.preheader

if.else37:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %add17)
  %cmp38 = icmp ult i32 %add17, 19
  br i1 %cmp38, label %if.else37.if.end58_crit_edge, label %if.else44

if.else37.if.end58_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.else44:                                        ; preds = %if.else37
  %sub45 = add i32 %add17, -18
  %13 = ptrtoint ptr %op.1.lcssa to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %op.1.lcssa, align 1
  %op.419 = getelementptr i8, ptr %op.1.lcssa, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub45)
  %cmp4820 = icmp ugt i32 %sub45, 255
  br i1 %cmp4820, label %while.body50.preheader, label %if.else44.if.end58.thread28_crit_edge

if.else44.if.end58.thread28_crit_edge:            ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58.thread28

while.body50.preheader:                           ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #6
  %14 = add i32 %add17, -274
  %15 = udiv i32 %14, 255
  %16 = add nuw nsw i32 %15, 1
  %17 = call ptr @memset(ptr %op.419, i32 0, i32 %16)
  %.neg = mul i32 %15, -255
  %18 = add nuw nsw i32 %15, 2
  %uglygep = getelementptr i8, ptr %op.1.lcssa, i32 %16
  %19 = add i32 %add17, -273
  %20 = add i32 %.neg, %19
  %uglygep27 = getelementptr i8, ptr %op.1.lcssa, i32 %18
  br label %if.end58.thread28

if.end58.thread28:                                ; preds = %while.body50.preheader, %if.else44.if.end58.thread28_crit_edge
  %tt.0.lcssa = phi i32 [ %sub45, %if.else44.if.end58.thread28_crit_edge ], [ %20, %while.body50.preheader ]
  %op.3.pn.lcssa = phi ptr [ %op.1.lcssa, %if.else44.if.end58.thread28_crit_edge ], [ %uglygep, %while.body50.preheader ]
  %op.4.lcssa = phi ptr [ %op.419, %if.else44.if.end58.thread28_crit_edge ], [ %uglygep27, %while.body50.preheader ]
  %conv54 = trunc i32 %tt.0.lcssa to i8
  %incdec.ptr55 = getelementptr i8, ptr %op.3.pn.lcssa, i32 2
  %21 = ptrtoint ptr %op.4.lcssa to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv54, ptr %op.4.lcssa, align 1
  br label %do.body62.preheader

if.end58:                                         ; preds = %if.else37.if.end58_crit_edge, %if.then20.if.end58_crit_edge
  %.sink40 = phi i8 [ 17, %if.then20.if.end58_crit_edge ], [ -3, %if.else37.if.end58_crit_edge ]
  %op.1.lcssa.sink39 = phi ptr [ %op.0, %if.then20.if.end58_crit_edge ], [ %op.1.lcssa, %if.else37.if.end58_crit_edge ]
  %22 = trunc i32 %add17 to i8
  %conv42 = add i8 %.sink40, %22
  %incdec.ptr43 = getelementptr i8, ptr %op.1.lcssa.sink39, i32 1
  %23 = ptrtoint ptr %op.1.lcssa.sink39 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv42, ptr %op.1.lcssa.sink39, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %add17)
  %cmp59 = icmp ugt i32 %add17, 15
  br i1 %cmp59, label %if.end58.do.body62.preheader_crit_edge, label %if.end58.do.body111.preheader_crit_edge

if.end58.do.body111.preheader_crit_edge:          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body111.preheader

if.end58.do.body62.preheader_crit_edge:           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body62.preheader

do.body62.preheader:                              ; preds = %if.end58.do.body62.preheader_crit_edge, %if.end58.thread28
  %op.6.ph = phi ptr [ %incdec.ptr43, %if.end58.do.body62.preheader_crit_edge ], [ %incdec.ptr55, %if.end58.thread28 ]
  br label %do.body62

do.body62:                                        ; preds = %do.body62.do.body62_crit_edge, %do.body62.preheader
  %ii.0 = phi ptr [ %add.ptr101, %do.body62.do.body62_crit_edge ], [ %add.ptr22, %do.body62.preheader ]
  %t.3 = phi i32 [ %sub102, %do.body62.do.body62_crit_edge ], [ %add17, %do.body62.preheader ]
  %op.6 = phi ptr [ %add.ptr100, %do.body62.do.body62_crit_edge ], [ %op.6.ph, %do.body62.preheader ]
  %24 = ptrtoint ptr %ii.0 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %ii.0, align 1
  %26 = ptrtoint ptr %op.6 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %op.6, align 1
  %add.ptr70 = getelementptr i8, ptr %op.6, i32 4
  %add.ptr72 = getelementptr i8, ptr %ii.0, i32 4
  %27 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %add.ptr72, align 1
  %29 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %add.ptr70, align 1
  %add.ptr80 = getelementptr i8, ptr %op.6, i32 8
  %add.ptr82 = getelementptr i8, ptr %ii.0, i32 8
  %30 = ptrtoint ptr %add.ptr82 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %add.ptr82, align 1
  %32 = ptrtoint ptr %add.ptr80 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %add.ptr80, align 1
  %add.ptr91 = getelementptr i8, ptr %op.6, i32 12
  %add.ptr94 = getelementptr i8, ptr %ii.0, i32 12
  %33 = ptrtoint ptr %add.ptr94 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %add.ptr94, align 1
  %35 = ptrtoint ptr %add.ptr91 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %add.ptr91, align 1
  %add.ptr100 = getelementptr i8, ptr %op.6, i32 16
  %add.ptr101 = getelementptr i8, ptr %ii.0, i32 16
  %sub102 = add i32 %t.3, -16
  %cmp104 = icmp ugt i32 %sub102, 15
  br i1 %cmp104, label %do.body62.do.body62_crit_edge, label %if.end107

do.body62.do.body62_crit_edge:                    ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body62

if.end107:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub102)
  %cmp108.not = icmp eq i32 %sub102, 0
  br i1 %cmp108.not, label %if.end107.if.end119_crit_edge, label %if.end107.do.body111.preheader_crit_edge

if.end107.do.body111.preheader_crit_edge:         ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body111.preheader

if.end107.if.end119_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end119

do.body111.preheader:                             ; preds = %if.end107.do.body111.preheader_crit_edge, %if.end58.do.body111.preheader_crit_edge, %if.end58.thread
  %ii.2.ph = phi ptr [ %add.ptr22, %if.end58.do.body111.preheader_crit_edge ], [ %add.ptr22, %if.end58.thread ], [ %add.ptr101, %if.end107.do.body111.preheader_crit_edge ]
  %t.5.ph = phi i32 [ %add17, %if.end58.do.body111.preheader_crit_edge ], [ %add17, %if.end58.thread ], [ %sub102, %if.end107.do.body111.preheader_crit_edge ]
  %op.8.ph = phi ptr [ %incdec.ptr43, %if.end58.do.body111.preheader_crit_edge ], [ %op.1.lcssa, %if.end58.thread ], [ %add.ptr100, %if.end107.do.body111.preheader_crit_edge ]
  br label %do.body111

do.body111:                                       ; preds = %do.body111.do.body111_crit_edge, %do.body111.preheader
  %ii.2 = phi ptr [ %incdec.ptr112, %do.body111.do.body111_crit_edge ], [ %ii.2.ph, %do.body111.preheader ]
  %t.5 = phi i32 [ %dec, %do.body111.do.body111_crit_edge ], [ %t.5.ph, %do.body111.preheader ]
  %op.8 = phi ptr [ %incdec.ptr113, %do.body111.do.body111_crit_edge ], [ %op.8.ph, %do.body111.preheader ]
  %incdec.ptr112 = getelementptr i8, ptr %ii.2, i32 1
  %36 = ptrtoint ptr %ii.2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ii.2, align 1
  %incdec.ptr113 = getelementptr i8, ptr %op.8, i32 1
  %38 = ptrtoint ptr %op.8 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %op.8, align 1
  %dec = add i32 %t.5, -1
  %cmp115.not = icmp eq i32 %dec, 0
  br i1 %cmp115.not, label %do.body111.if.end119_crit_edge, label %do.body111.do.body111_crit_edge

do.body111.do.body111_crit_edge:                  ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body111

do.body111.if.end119_crit_edge:                   ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end119

if.end119:                                        ; preds = %do.body111.if.end119_crit_edge, %if.end107.if.end119_crit_edge, %while.end.if.end119_crit_edge
  %op.10 = phi ptr [ %op.1.lcssa, %while.end.if.end119_crit_edge ], [ %add.ptr100, %if.end107.if.end119_crit_edge ], [ %incdec.ptr113, %do.body111.if.end119_crit_edge ]
  %incdec.ptr120 = getelementptr i8, ptr %op.10, i32 1
  %39 = ptrtoint ptr %op.10 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 17, ptr %op.10, align 1
  %incdec.ptr121 = getelementptr i8, ptr %op.10, i32 2
  %40 = ptrtoint ptr %incdec.ptr120 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %incdec.ptr120, align 1
  %incdec.ptr122 = getelementptr i8, ptr %op.10, i32 3
  %41 = ptrtoint ptr %incdec.ptr121 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %incdec.ptr121, align 1
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr122 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %out to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %42 = ptrtoint ptr %out_len to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub.ptr.sub, ptr %out_len, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state_offset) #4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lzorle1x_1_compress(ptr noundef %in, i32 noundef %in_len, ptr noundef %out, ptr nocapture noundef %out_len, ptr nocapture noundef %wrkmem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @lzogeneric1x_1_compress(ptr noundef %in, i32 noundef %in_len, ptr noundef %out, ptr noundef %out_len, ptr noundef %wrkmem, i8 noundef zeroext 1)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lzo1x_1_do_compress(ptr noundef %in, i32 noundef %in_len, ptr noundef %out, ptr nocapture noundef writeonly %out_len, i32 noundef %ti, ptr nocapture noundef %wrkmem, ptr nocapture noundef %state_offset, i8 noundef zeroext %bitstream_version) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %in, i32 %in_len
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 -20
  %0 = tail call i32 @llvm.usub.sat.i32(i32 4, i32 %ti)
  %add.ptr3 = getelementptr i8, ptr %in, i32 %0
  %add.ptr4716 = getelementptr i8, ptr %add.ptr3, i32 1
  %cmp5.not696717 = icmp ult ptr %add.ptr4716, %add.ptr2
  br i1 %cmp5.not696717, label %if.end.lr.ph.lr.ph, label %entry.cleanup452_crit_edge, !prof !18

entry.cleanup452_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup452

if.end.lr.ph.lr.ph:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bitstream_version)
  %tobool8.not = icmp eq i8 %bitstream_version, 0
  %sub.ptr.rhs.cast80 = ptrtoint ptr %in to i32
  br label %if.end.outer

if.end.outer:                                     ; preds = %finished_writing_instruction.if.end.outer_crit_edge, %if.end.lr.ph.lr.ph
  %ti.addr.1703.ph = phi i32 [ %ti, %if.end.lr.ph.lr.ph ], [ 0, %finished_writing_instruction.if.end.outer_crit_edge ]
  %ip.1701.ph = phi ptr [ %add.ptr4716, %if.end.lr.ph.lr.ph ], [ %ip.5, %finished_writing_instruction.if.end.outer_crit_edge ]
  %op.1700.ph = phi ptr [ %out, %if.end.lr.ph.lr.ph ], [ %op.12, %finished_writing_instruction.if.end.outer_crit_edge ]
  %ii.1698.ph = phi ptr [ %in, %if.end.lr.ph.lr.ph ], [ %ip.5, %finished_writing_instruction.if.end.outer_crit_edge ]
  %m_pos.1697.ph = phi ptr [ null, %if.end.lr.ph.lr.ph ], [ %m_pos.2, %finished_writing_instruction.if.end.outer_crit_edge ]
  %ii.1698735.le = ptrtoint ptr %ii.1698.ph to i32
  br label %if.end

literal.loopexit:                                 ; preds = %if.else
  %sub.ptr.lhs.cast79.le = ptrtoint ptr %ip.1701 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast79.le, %ii.1698735.le
  %shr = ashr i32 %sub.ptr.sub, 5
  %add = add nsw i32 %shr, 1
  %add.ptr4 = getelementptr i8, ptr %ip.1701, i32 %add
  %cmp5.not696 = icmp ult ptr %add.ptr4, %add.ptr2
  br i1 %cmp5.not696, label %literal.loopexit.if.end_crit_edge, label %literal.loopexit.cleanup452_crit_edge, !prof !18

literal.loopexit.cleanup452_crit_edge:            ; preds = %literal.loopexit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup452

literal.loopexit.if.end_crit_edge:                ; preds = %literal.loopexit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %literal.loopexit.if.end_crit_edge, %if.end.outer
  %ip.1701 = phi ptr [ %add.ptr4, %literal.loopexit.if.end_crit_edge ], [ %ip.1701.ph, %if.end.outer ]
  %m_pos.1697 = phi ptr [ %add.ptr78, %literal.loopexit.if.end_crit_edge ], [ %m_pos.1697.ph, %if.end.outer ]
  %1 = ptrtoint ptr %ip.1701 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %ip.1701, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp7 = icmp ne i32 %2, 0
  %or.cond = or i1 %tobool8.not, %cmp7
  br i1 %or.cond, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  %ii.1698735.le804 = ptrtoint ptr %ii.1698.ph to i32
  %add.ptr10 = getelementptr i8, ptr %ip.1701, i32 4
  %add.ptr12 = getelementptr i8, ptr %ip.1701, i32 2052
  %cmp13 = icmp ult ptr %add.ptr2, %add.ptr12
  %add.ptr2.add.ptr12 = select i1 %cmp13, ptr %add.ptr2, ptr %add.ptr12
  %3 = ptrtoint ptr %add.ptr10 to i32
  %add21662 = add i32 %3, 3
  %and663 = and i32 %add21662, -4
  %4 = inttoptr i32 %and663 to ptr
  %cmp22664 = icmp ult ptr %add.ptr10, %4
  %cmp25665 = icmp ult ptr %add.ptr10, %add.ptr2.add.ptr12
  %or.cond649666 = and i1 %cmp22664, %cmp25665
  br i1 %or.cond649666, label %if.then9.land.rhs_crit_edge, label %if.then9.while.end_crit_edge

if.then9.while.end_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.then9.land.rhs_crit_edge:                      ; preds = %if.then9
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.then9.land.rhs_crit_edge
  %ir.0667 = phi ptr [ %incdec.ptr, %while.body.land.rhs_crit_edge ], [ %add.ptr10, %if.then9.land.rhs_crit_edge ]
  %5 = ptrtoint ptr %ir.0667 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ir.0667, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp28 = icmp eq i8 %6, 0
  br i1 %cmp28, label %while.body, label %land.rhs.while.end.loopexit_crit_edge

land.rhs.while.end.loopexit_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  %.pre747 = ptrtoint ptr %ir.0667 to i32
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr i8, ptr %ir.0667, i32 1
  %7 = ptrtoint ptr %incdec.ptr to i32
  %add21 = add i32 %7, 3
  %and = and i32 %add21, -4
  %8 = inttoptr i32 %and to ptr
  %cmp22 = icmp ult ptr %incdec.ptr, %8
  %cmp25 = icmp ult ptr %incdec.ptr, %add.ptr2.add.ptr12
  %or.cond649 = and i1 %cmp22, %cmp25
  br i1 %or.cond649, label %while.body.land.rhs_crit_edge, label %while.end.loopexit

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %incdec.ptr to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %land.rhs.while.end.loopexit_crit_edge, %if.then9.while.end_crit_edge
  %.pre-phi = phi i32 [ %3, %if.then9.while.end_crit_edge ], [ %.pre747, %land.rhs.while.end.loopexit_crit_edge ], [ %9, %while.end.loopexit ]
  %ir.0.lcssa661 = phi ptr [ %add.ptr10, %if.then9.while.end_crit_edge ], [ %ir.0667, %land.rhs.while.end.loopexit_crit_edge ], [ %incdec.ptr, %while.end.loopexit ]
  %and30 = and i32 %.pre-phi, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %cmp31 = icmp eq i32 %and30, 0
  br i1 %cmp31, label %while.end.for.cond34_crit_edge, label %while.end.if.end44_crit_edge

while.end.if.end44_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

while.end.for.cond34_crit_edge:                   ; preds = %while.end
  br label %for.cond34

for.cond34:                                       ; preds = %for.body.for.cond34_crit_edge, %while.end.for.cond34_crit_edge
  %ir.1 = phi ptr [ %add.ptr35, %for.body.for.cond34_crit_edge ], [ %ir.0.lcssa661, %while.end.for.cond34_crit_edge ]
  %add.ptr35 = getelementptr i8, ptr %ir.1, i32 4
  %cmp36.not = icmp ugt ptr %add.ptr35, %add.ptr2.add.ptr12
  br i1 %cmp36.not, label %for.cond34.if.end44_crit_edge, label %for.body

for.cond34.if.end44_crit_edge:                    ; preds = %for.cond34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

for.body:                                         ; preds = %for.cond34
  %10 = ptrtoint ptr %ir.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ir.1, align 4
  %tobool38.not = icmp eq i32 %11, 0
  br i1 %tobool38.not, label %for.body.for.cond34_crit_edge, label %if.then39

for.body.for.cond34_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond34

if.then39:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %12 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 true), !range !19
  %13 = lshr i32 %12, 3
  %add.ptr41 = getelementptr i8, ptr %ir.1, i32 %13
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %for.cond34.if.end44_crit_edge, %while.end.if.end44_crit_edge
  %ir.2 = phi ptr [ %add.ptr41, %if.then39 ], [ %ir.0.lcssa661, %while.end.if.end44_crit_edge ], [ %ir.1, %for.cond34.if.end44_crit_edge ]
  %cmp46671 = icmp ult ptr %ir.2, %add.ptr2.add.ptr12
  br i1 %cmp46671, label %if.end44.land.rhs54_crit_edge, label %if.end44.while.end67_crit_edge, !prof !18

if.end44.while.end67_crit_edge:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end67

if.end44.land.rhs54_crit_edge:                    ; preds = %if.end44
  br label %land.rhs54

land.rhs54:                                       ; preds = %while.body65.land.rhs54_crit_edge, %if.end44.land.rhs54_crit_edge
  %ir.3672 = phi ptr [ %incdec.ptr66, %while.body65.land.rhs54_crit_edge ], [ %ir.2, %if.end44.land.rhs54_crit_edge ]
  %14 = ptrtoint ptr %ir.3672 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ir.3672, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp56 = icmp eq i8 %15, 0
  br i1 %cmp56, label %while.body65, label %land.rhs54.while.end67_crit_edge

land.rhs54.while.end67_crit_edge:                 ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end67

while.body65:                                     ; preds = %land.rhs54
  %incdec.ptr66 = getelementptr i8, ptr %ir.3672, i32 1
  %cmp46 = icmp ult ptr %incdec.ptr66, %add.ptr2.add.ptr12
  br i1 %cmp46, label %while.body65.land.rhs54_crit_edge, label %while.body65.while.end67_crit_edge, !prof !18

while.body65.while.end67_crit_edge:               ; preds = %while.body65
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end67

while.body65.land.rhs54_crit_edge:                ; preds = %while.body65
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs54

while.end67:                                      ; preds = %while.body65.while.end67_crit_edge, %land.rhs54.while.end67_crit_edge, %if.end44.while.end67_crit_edge
  %ir.3.lcssa = phi ptr [ %ir.2, %if.end44.while.end67_crit_edge ], [ %incdec.ptr66, %while.body65.while.end67_crit_edge ], [ %ir.3672, %land.rhs54.while.end67_crit_edge ]
  %sub.ptr.lhs.cast68 = ptrtoint ptr %ir.3.lcssa to i32
  %sub.ptr.rhs.cast69 = ptrtoint ptr %ip.1701 to i32
  %sub.ptr.sub70 = sub i32 %sub.ptr.lhs.cast68, %sub.ptr.rhs.cast69
  %16 = tail call i32 @llvm.umin.i32(i32 %sub.ptr.sub70, i32 2051)
  br label %if.end95

if.else:                                          ; preds = %if.end
  %17 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  %mul = mul i32 %17, 405029533
  %shr75 = lshr i32 %mul, 19
  %arrayidx = getelementptr i16, ptr %wrkmem, i32 %shr75
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx, align 2
  %conv77 = zext i16 %19 to i32
  %add.ptr78 = getelementptr i8, ptr %in, i32 %conv77
  %sub.ptr.lhs.cast79 = ptrtoint ptr %ip.1701 to i32
  %sub.ptr.sub81 = sub i32 %sub.ptr.lhs.cast79, %sub.ptr.rhs.cast80
  %conv82 = trunc i32 %sub.ptr.sub81 to i16
  store i16 %conv82, ptr %arrayidx, align 2
  %20 = ptrtoint ptr %add.ptr78 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %add.ptr78, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %21)
  %cmp85.not = icmp eq i32 %2, %21
  br i1 %cmp85.not, label %if.end95.loopexit, label %literal.loopexit, !prof !18

if.end95.loopexit:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %ii.1698735.le803 = ptrtoint ptr %ii.1698.ph to i32
  %sub.ptr.lhs.cast79.le801 = ptrtoint ptr %ip.1701 to i32
  br label %if.end95

if.end95:                                         ; preds = %if.end95.loopexit, %while.end67
  %ii.1698735788 = phi i32 [ %ii.1698735.le804, %while.end67 ], [ %ii.1698735.le803, %if.end95.loopexit ]
  %sub.ptr.lhs.cast97.pre-phi = phi i32 [ %sub.ptr.rhs.cast69, %while.end67 ], [ %sub.ptr.lhs.cast79.le801, %if.end95.loopexit ]
  %run_length.2 = phi i32 [ %16, %while.end67 ], [ 0, %if.end95.loopexit ]
  %m_pos.2 = phi ptr [ %m_pos.1697, %while.end67 ], [ %add.ptr78, %if.end95.loopexit ]
  %idx.neg = sub i32 0, %ti.addr.1703.ph
  %add.ptr96 = getelementptr i8, ptr %ii.1698.ph, i32 %idx.neg
  %sub.ptr.rhs.cast98 = ptrtoint ptr %add.ptr96 to i32
  %sub.ptr.sub99 = sub i32 %sub.ptr.lhs.cast97.pre-phi, %sub.ptr.rhs.cast98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub99)
  %cmp100.not = icmp eq i32 %sub.ptr.sub99, 0
  br i1 %cmp100.not, label %if.end95.if.end247_crit_edge, label %if.then102

if.end95.if.end247_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end247

if.then102:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub99)
  %cmp103 = icmp ult i32 %sub.ptr.sub99, 4
  br i1 %cmp103, label %if.then105, label %if.else112

if.then105:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %state_offset to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %state_offset, align 1
  %idxprom = sext i8 %23 to i32
  %arrayidx106 = getelementptr i8, ptr %op.1700.ph, i32 %idxprom
  %24 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx106, align 1
  %26 = trunc i32 %sub.ptr.sub99 to i8
  %conv108 = or i8 %25, %26
  store i8 %conv108, ptr %arrayidx106, align 1
  br label %if.end247.sink.split

if.else112:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub.ptr.sub99)
  %cmp113 = icmp ult i32 %sub.ptr.sub99, 17
  br i1 %cmp113, label %if.then115, label %if.else160

if.then115:                                       ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #6
  %27 = trunc i32 %sub.ptr.sub99 to i8
  %conv117 = add nsw i8 %27, -3
  %incdec.ptr118 = getelementptr i8, ptr %op.1700.ph, i32 1
  %28 = ptrtoint ptr %op.1700.ph to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv117, ptr %op.1700.ph, align 1
  %29 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %add.ptr96, align 1
  %31 = ptrtoint ptr %incdec.ptr118 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %incdec.ptr118, align 1
  %add.ptr129 = getelementptr i8, ptr %op.1700.ph, i32 5
  %add.ptr131 = getelementptr i8, ptr %add.ptr96, i32 4
  %32 = ptrtoint ptr %add.ptr131 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %add.ptr131, align 1
  %34 = ptrtoint ptr %add.ptr129 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %add.ptr129, align 1
  %add.ptr139 = getelementptr i8, ptr %op.1700.ph, i32 9
  %add.ptr141 = getelementptr i8, ptr %add.ptr96, i32 8
  %35 = ptrtoint ptr %add.ptr141 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %add.ptr141, align 1
  %37 = ptrtoint ptr %add.ptr139 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %add.ptr139, align 1
  %add.ptr150 = getelementptr i8, ptr %op.1700.ph, i32 13
  %add.ptr153 = getelementptr i8, ptr %add.ptr141, i32 4
  br label %if.end247.sink.split

if.else160:                                       ; preds = %if.else112
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.ptr.sub99)
  %cmp161 = icmp ult i32 %sub.ptr.sub99, 19
  br i1 %cmp161, label %if.then163, label %if.else167

if.then163:                                       ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #6
  %38 = trunc i32 %sub.ptr.sub99 to i8
  %conv165 = add nsw i8 %38, -3
  %incdec.ptr166 = getelementptr i8, ptr %op.1700.ph, i32 1
  %39 = ptrtoint ptr %op.1700.ph to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv165, ptr %op.1700.ph, align 1
  br label %do.body186.preheader

if.else167:                                       ; preds = %if.else160
  %sub168 = add i32 %sub.ptr.sub99, -18
  %40 = ptrtoint ptr %op.1700.ph to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %op.1700.ph, align 1
  %op.2675 = getelementptr i8, ptr %op.1700.ph, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub168)
  %cmp171676 = icmp ugt i32 %sub168, 255
  br i1 %cmp171676, label %while.body179.preheader, label %if.else167.while.end182_crit_edge, !prof !20

if.else167.while.end182_crit_edge:                ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end182

while.body179.preheader:                          ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #6
  %41 = add i32 %ti.addr.1703.ph, -274
  %42 = add i32 %41, %sub.ptr.lhs.cast97.pre-phi
  %43 = sub i32 %42, %ii.1698735788
  %44 = udiv i32 %43, 255
  %45 = add nuw nsw i32 %44, 1
  %46 = call ptr @memset(ptr %op.2675, i32 0, i32 %45)
  %47 = add i32 %ti.addr.1703.ph, -273
  %48 = add i32 %47, %sub.ptr.lhs.cast97.pre-phi
  %.neg749 = mul i32 %44, -255
  %uglygep737 = getelementptr i8, ptr %op.1700.ph, i32 2
  %uglygep736 = getelementptr i8, ptr %op.2675, i32 %44
  %49 = sub i32 %48, %ii.1698735788
  %50 = add i32 %.neg749, %49
  %uglygep738 = getelementptr i8, ptr %uglygep737, i32 %44
  br label %while.end182

while.end182:                                     ; preds = %while.body179.preheader, %if.else167.while.end182_crit_edge
  %tt.0.lcssa = phi i32 [ %sub168, %if.else167.while.end182_crit_edge ], [ %50, %while.body179.preheader ]
  %op.1.pn.lcssa = phi ptr [ %op.1700.ph, %if.else167.while.end182_crit_edge ], [ %uglygep736, %while.body179.preheader ]
  %op.2.lcssa = phi ptr [ %op.2675, %if.else167.while.end182_crit_edge ], [ %uglygep738, %while.body179.preheader ]
  %conv183 = trunc i32 %tt.0.lcssa to i8
  %incdec.ptr184 = getelementptr i8, ptr %op.1.pn.lcssa, i32 2
  %51 = ptrtoint ptr %op.2.lcssa to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv183, ptr %op.2.lcssa, align 1
  br label %do.body186.preheader

do.body186.preheader:                             ; preds = %while.end182, %if.then163
  %op.4.ph = phi ptr [ %incdec.ptr166, %if.then163 ], [ %incdec.ptr184, %while.end182 ]
  br label %do.body186

do.body186:                                       ; preds = %do.body186.do.body186_crit_edge, %do.body186.preheader
  %t.0 = phi i32 [ %sub229, %do.body186.do.body186_crit_edge ], [ %sub.ptr.sub99, %do.body186.preheader ]
  %ii.2 = phi ptr [ %add.ptr228, %do.body186.do.body186_crit_edge ], [ %add.ptr96, %do.body186.preheader ]
  %op.4 = phi ptr [ %add.ptr227, %do.body186.do.body186_crit_edge ], [ %op.4.ph, %do.body186.preheader ]
  %52 = ptrtoint ptr %ii.2 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %ii.2, align 1
  %54 = ptrtoint ptr %op.4 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %op.4, align 1
  %add.ptr197 = getelementptr i8, ptr %op.4, i32 4
  %add.ptr199 = getelementptr i8, ptr %ii.2, i32 4
  %55 = ptrtoint ptr %add.ptr199 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %add.ptr199, align 1
  %57 = ptrtoint ptr %add.ptr197 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %56, ptr %add.ptr197, align 1
  %add.ptr207 = getelementptr i8, ptr %op.4, i32 8
  %add.ptr209 = getelementptr i8, ptr %ii.2, i32 8
  %58 = ptrtoint ptr %add.ptr209 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %add.ptr209, align 1
  %60 = ptrtoint ptr %add.ptr207 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %59, ptr %add.ptr207, align 1
  %add.ptr218 = getelementptr i8, ptr %op.4, i32 12
  %add.ptr221 = getelementptr i8, ptr %ii.2, i32 12
  %61 = ptrtoint ptr %add.ptr221 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %add.ptr221, align 1
  %63 = ptrtoint ptr %add.ptr218 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %62, ptr %add.ptr218, align 1
  %add.ptr227 = getelementptr i8, ptr %op.4, i32 16
  %add.ptr228 = getelementptr i8, ptr %ii.2, i32 16
  %sub229 = add i32 %t.0, -16
  %cmp231 = icmp ugt i32 %sub229, 15
  br i1 %cmp231, label %do.body186.do.body186_crit_edge, label %do.end233

do.body186.do.body186_crit_edge:                  ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body186

do.end233:                                        ; preds = %do.body186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub229)
  %cmp234.not = icmp eq i32 %sub229, 0
  br i1 %cmp234.not, label %do.end233.if.end247_crit_edge, label %do.end233.do.body237_crit_edge

do.end233.do.body237_crit_edge:                   ; preds = %do.end233
  br label %do.body237

do.end233.if.end247_crit_edge:                    ; preds = %do.end233
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end247

do.body237:                                       ; preds = %do.body237.do.body237_crit_edge, %do.end233.do.body237_crit_edge
  %t.1 = phi i32 [ %dec, %do.body237.do.body237_crit_edge ], [ %sub229, %do.end233.do.body237_crit_edge ]
  %ii.3 = phi ptr [ %incdec.ptr238, %do.body237.do.body237_crit_edge ], [ %add.ptr228, %do.end233.do.body237_crit_edge ]
  %op.5 = phi ptr [ %incdec.ptr239, %do.body237.do.body237_crit_edge ], [ %add.ptr227, %do.end233.do.body237_crit_edge ]
  %incdec.ptr238 = getelementptr i8, ptr %ii.3, i32 1
  %64 = ptrtoint ptr %ii.3 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ii.3, align 1
  %incdec.ptr239 = getelementptr i8, ptr %op.5, i32 1
  %66 = ptrtoint ptr %op.5 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %op.5, align 1
  %dec = add i32 %t.1, -1
  %cmp241.not = icmp eq i32 %dec, 0
  br i1 %cmp241.not, label %do.body237.if.end247_crit_edge, label %do.body237.do.body237_crit_edge

do.body237.do.body237_crit_edge:                  ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body237

do.body237.if.end247_crit_edge:                   ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end247

if.end247.sink.split:                             ; preds = %if.then115, %if.then105
  %add.ptr96.sink = phi ptr [ %add.ptr96, %if.then105 ], [ %add.ptr153, %if.then115 ]
  %op.1700.sink762 = phi ptr [ %op.1700.ph, %if.then105 ], [ %add.ptr150, %if.then115 ]
  %op.1700.sink = phi ptr [ %op.1700.ph, %if.then105 ], [ %incdec.ptr118, %if.then115 ]
  %67 = ptrtoint ptr %add.ptr96.sink to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %add.ptr96.sink, align 1
  %69 = ptrtoint ptr %op.1700.sink762 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %68, ptr %op.1700.sink762, align 1
  %add.ptr111 = getelementptr i8, ptr %op.1700.sink, i32 %sub.ptr.sub99
  br label %if.end247

if.end247:                                        ; preds = %if.end247.sink.split, %do.body237.if.end247_crit_edge, %do.end233.if.end247_crit_edge, %if.end95.if.end247_crit_edge
  %op.6 = phi ptr [ %add.ptr227, %do.end233.if.end247_crit_edge ], [ %op.1700.ph, %if.end95.if.end247_crit_edge ], [ %add.ptr111, %if.end247.sink.split ], [ %incdec.ptr239, %do.body237.if.end247_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %run_length.2)
  %tobool248.not = icmp eq i32 %run_length.2, 0
  br i1 %tobool248.not, label %if.end262, label %if.then255, !prof !18

if.then255:                                       ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr256 = getelementptr i8, ptr %ip.1701, i32 %run_length.2
  %sub257 = add nsw i32 %run_length.2, -4
  %shl = shl i32 %sub257, 21
  %and259 = and i32 %sub257, 7
  %or258 = or i32 %shl, %and259
  %or260 = or i32 %or258, 16776216
  %70 = tail call i32 @llvm.bswap.i32(i32 %or260) #4
  %71 = ptrtoint ptr %op.6 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %70, ptr %op.6, align 1
  %add.ptr261 = getelementptr i8, ptr %op.6, i32 4
  br label %finished_writing_instruction

if.end262:                                        ; preds = %if.end247
  %add.ptr264 = getelementptr i8, ptr %ip.1701, i32 4
  %72 = ptrtoint ptr %add.ptr264 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %add.ptr264, align 1
  %add.ptr268 = getelementptr i8, ptr %m_pos.2, i32 4
  %74 = ptrtoint ptr %add.ptr268 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %add.ptr268, align 1
  %xor = xor i32 %75, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %cmp271 = icmp eq i32 %xor, 0
  br i1 %cmp271, label %if.end262.do.body280_crit_edge, label %if.end262.if.end320_crit_edge, !prof !20

if.end262.if.end320_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end320

if.end262.do.body280_crit_edge:                   ; preds = %if.end262
  br label %do.body280

do.body280:                                       ; preds = %do.cond316.do.body280_crit_edge, %if.end262.do.body280_crit_edge
  %m_len.0 = phi i32 [ %add295, %do.cond316.do.body280_crit_edge ], [ 4, %if.end262.do.body280_crit_edge ]
  %add281 = add i32 %m_len.0, 4
  %add.ptr283 = getelementptr i8, ptr %ip.1701, i32 %add281
  %76 = ptrtoint ptr %add.ptr283 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %add.ptr283, align 1
  %add.ptr287 = getelementptr i8, ptr %m_pos.2, i32 %add281
  %78 = ptrtoint ptr %add.ptr287 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %add.ptr287, align 1
  %xor290 = xor i32 %79, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor290)
  %cmp291.not = icmp eq i32 %xor290, 0
  br i1 %cmp291.not, label %if.end294, label %do.body280.if.end320_crit_edge

do.body280.if.end320_crit_edge:                   ; preds = %do.body280
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end320

if.end294:                                        ; preds = %do.body280
  %add295 = add i32 %m_len.0, 8
  %add.ptr297 = getelementptr i8, ptr %ip.1701, i32 %add295
  %cmp306.not = icmp ult ptr %add.ptr297, %add.ptr2
  br i1 %cmp306.not, label %do.cond316, label %if.end294.m_len_done_crit_edge, !prof !18

if.end294.m_len_done_crit_edge:                   ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #6
  br label %m_len_done

do.cond316:                                       ; preds = %if.end294
  %80 = ptrtoint ptr %add.ptr297 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %add.ptr297, align 1
  %add.ptr301 = getelementptr i8, ptr %m_pos.2, i32 %add295
  %82 = ptrtoint ptr %add.ptr301 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %add.ptr301, align 1
  %xor304 = xor i32 %83, %81
  %cmp317 = icmp eq i32 %xor304, 0
  br i1 %cmp317, label %do.cond316.do.body280_crit_edge, label %do.cond316.if.end320_crit_edge

do.cond316.if.end320_crit_edge:                   ; preds = %do.cond316
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end320

do.cond316.do.body280_crit_edge:                  ; preds = %do.cond316
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body280

if.end320:                                        ; preds = %do.cond316.if.end320_crit_edge, %do.body280.if.end320_crit_edge, %if.end262.if.end320_crit_edge
  %v.0 = phi i32 [ %xor, %if.end262.if.end320_crit_edge ], [ %xor304, %do.cond316.if.end320_crit_edge ], [ %xor290, %do.body280.if.end320_crit_edge ]
  %m_len.1 = phi i32 [ 4, %if.end262.if.end320_crit_edge ], [ %add295, %do.cond316.if.end320_crit_edge ], [ %add281, %do.body280.if.end320_crit_edge ]
  %84 = tail call i32 @llvm.ctlz.i32(i32 %v.0, i1 false), !range !19
  %div647 = lshr i32 %84, 3
  %add321 = add i32 %div647, %m_len.1
  br label %m_len_done

m_len_done:                                       ; preds = %if.end320, %if.end294.m_len_done_crit_edge
  %m_len.2 = phi i32 [ %add321, %if.end320 ], [ %add295, %if.end294.m_len_done_crit_edge ]
  %sub.ptr.rhs.cast323 = ptrtoint ptr %m_pos.2 to i32
  %sub.ptr.sub324 = sub i32 %sub.ptr.lhs.cast97.pre-phi, %sub.ptr.rhs.cast323
  %add.ptr325 = getelementptr i8, ptr %ip.1701, i32 %m_len.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %m_len.2)
  %cmp326 = icmp ult i32 %m_len.2, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %sub.ptr.sub324)
  %cmp329 = icmp ult i32 %sub.ptr.sub324, 2049
  %or.cond650 = select i1 %cmp326, i1 %cmp329, i1 false
  br i1 %or.cond650, label %if.then331, label %if.else343

if.then331:                                       ; preds = %m_len_done
  call void @__sanitizer_cov_trace_pc() #6
  %sub332 = add nsw i32 %sub.ptr.sub324, -1
  %sub333 = shl nuw nsw i32 %m_len.2, 5
  %shl334 = add nuw nsw i32 %sub333, 224
  %and335 = shl nsw i32 %sub332, 2
  %shl336 = and i32 %and335, 28
  %or337 = or i32 %shl334, %shl336
  %conv338 = trunc i32 %or337 to i8
  %incdec.ptr339 = getelementptr i8, ptr %op.6, i32 1
  %85 = ptrtoint ptr %op.6 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv338, ptr %op.6, align 1
  %shr340 = lshr i32 %sub332, 3
  %conv341 = trunc i32 %shr340 to i8
  %incdec.ptr342 = getelementptr i8, ptr %op.6, i32 2
  %86 = ptrtoint ptr %incdec.ptr339 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv341, ptr %incdec.ptr339, align 1
  br label %finished_writing_instruction

if.else343:                                       ; preds = %m_len_done
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %sub.ptr.sub324)
  %cmp344 = icmp ult i32 %sub.ptr.sub324, 16385
  br i1 %cmp344, label %if.then346, label %if.else380

if.then346:                                       ; preds = %if.else343
  %sub347 = add nsw i32 %sub.ptr.sub324, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %m_len.2)
  %cmp348 = icmp ult i32 %m_len.2, 34
  br i1 %cmp348, label %if.then350, label %if.else355

if.then350:                                       ; preds = %if.then346
  call void @__sanitizer_cov_trace_pc() #6
  %87 = trunc i32 %m_len.2 to i8
  %88 = add nsw i8 %87, -2
  %conv353 = or i8 %88, 32
  %incdec.ptr354 = getelementptr i8, ptr %op.6, i32 1
  %89 = ptrtoint ptr %op.6 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv353, ptr %op.6, align 1
  br label %if.end373

if.else355:                                       ; preds = %if.then346
  %sub356 = add i32 %m_len.2, -33
  %90 = ptrtoint ptr %op.6 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 32, ptr %op.6, align 1
  %op.7689 = getelementptr i8, ptr %op.6, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub356)
  %cmp359690 = icmp ugt i32 %sub356, 255
  br i1 %cmp359690, label %while.body367.preheader, label %if.else355.while.end370_crit_edge, !prof !20

if.else355.while.end370_crit_edge:                ; preds = %if.else355
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end370

while.body367.preheader:                          ; preds = %if.else355
  call void @__sanitizer_cov_trace_pc() #6
  %91 = add i32 %m_len.2, -289
  %92 = udiv i32 %91, 255
  %93 = add nuw nsw i32 %92, 1
  %94 = call ptr @memset(ptr %op.7689, i32 0, i32 %93)
  %uglygep744 = getelementptr i8, ptr %op.7689, i32 %92
  %.neg748 = mul i32 %92, -255
  %uglygep745 = getelementptr i8, ptr %op.6, i32 2
  %95 = add i32 %m_len.2, -288
  %96 = add i32 %.neg748, %95
  %uglygep746 = getelementptr i8, ptr %uglygep745, i32 %92
  br label %while.end370

while.end370:                                     ; preds = %while.body367.preheader, %if.else355.while.end370_crit_edge
  %m_len.3.lcssa = phi i32 [ %sub356, %if.else355.while.end370_crit_edge ], [ %96, %while.body367.preheader ]
  %op.6.pn648.lcssa = phi ptr [ %op.6, %if.else355.while.end370_crit_edge ], [ %uglygep744, %while.body367.preheader ]
  %op.7.lcssa = phi ptr [ %op.7689, %if.else355.while.end370_crit_edge ], [ %uglygep746, %while.body367.preheader ]
  %conv371 = trunc i32 %m_len.3.lcssa to i8
  %incdec.ptr372 = getelementptr i8, ptr %op.6.pn648.lcssa, i32 2
  %97 = ptrtoint ptr %op.7.lcssa to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv371, ptr %op.7.lcssa, align 1
  br label %if.end373

if.end373:                                        ; preds = %while.end370, %if.then350
  %op.8 = phi ptr [ %incdec.ptr354, %if.then350 ], [ %incdec.ptr372, %while.end370 ]
  %sub347.tr = trunc i32 %sub347 to i8
  %conv375 = shl i8 %sub347.tr, 2
  %incdec.ptr376 = getelementptr i8, ptr %op.8, i32 1
  %98 = ptrtoint ptr %op.8 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv375, ptr %op.8, align 1
  %shr377 = lshr i32 %sub347, 6
  %conv378 = trunc i32 %shr377 to i8
  %incdec.ptr379 = getelementptr i8, ptr %op.8, i32 2
  %99 = ptrtoint ptr %incdec.ptr376 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv378, ptr %incdec.ptr376, align 1
  br label %finished_writing_instruction

if.else380:                                       ; preds = %if.else343
  %sub381 = add i32 %sub.ptr.sub324, -16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %m_len.2)
  %cmp382 = icmp ult i32 %m_len.2, 10
  br i1 %cmp382, label %if.then384, label %if.else392

if.then384:                                       ; preds = %if.else380
  call void @__sanitizer_cov_trace_pc() #6
  %shr385 = lshr i32 %sub381, 11
  %and386 = and i32 %shr385, 8
  %sub388 = add nuw nsw i32 %m_len.2, 254
  %or387 = or i32 %sub388, %and386
  %100 = trunc i32 %or387 to i8
  %conv390 = or i8 %100, 16
  %incdec.ptr391 = getelementptr i8, ptr %op.6, i32 1
  %101 = ptrtoint ptr %op.6 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv390, ptr %op.6, align 1
  br label %if.end443

if.else392:                                       ; preds = %if.else380
  %and393 = and i32 %sub381, 16447
  call void @__sanitizer_cov_trace_const_cmp4(i32 16447, i32 %and393)
  %cmp394 = icmp eq i32 %and393, 16447
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %m_len.2)
  %cmp397 = icmp ugt i32 %m_len.2, 260
  %or.cond651 = select i1 %cmp394, i1 %cmp397, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 265, i32 %m_len.2)
  %cmp400 = icmp ult i32 %m_len.2, 265
  %or.cond654 = select i1 %or.cond651, i1 %cmp400, i1 false
  br i1 %or.cond654, label %land.lhs.true409, label %if.else392.if.end421_crit_edge, !prof !21

if.else392.if.end421_crit_edge:                   ; preds = %if.else392
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end421

land.lhs.true409:                                 ; preds = %if.else392
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr420 = getelementptr i8, ptr %ip.1701, i32 260
  %spec.select652 = select i1 %tobool8.not, i32 %m_len.2, i32 260, !prof !20
  %spec.select653 = select i1 %tobool8.not, ptr %add.ptr325, ptr %add.ptr420, !prof !20
  br label %if.end421

if.end421:                                        ; preds = %land.lhs.true409, %if.else392.if.end421_crit_edge
  %m_len.4 = phi i32 [ %spec.select652, %land.lhs.true409 ], [ %m_len.2, %if.else392.if.end421_crit_edge ]
  %ip.2 = phi ptr [ %spec.select653, %land.lhs.true409 ], [ %add.ptr325, %if.else392.if.end421_crit_edge ]
  %sub422 = add i32 %m_len.4, -9
  %shr423 = lshr i32 %sub381, 11
  %102 = trunc i32 %shr423 to i8
  %103 = and i8 %102, 8
  %conv426 = or i8 %103, 16
  %104 = ptrtoint ptr %op.6 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv426, ptr %op.6, align 1
  %op.9682 = getelementptr i8, ptr %op.6, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub422)
  %cmp429683 = icmp ugt i32 %sub422, 255
  br i1 %cmp429683, label %while.body437.preheader, label %if.end421.while.end440_crit_edge, !prof !20

if.end421.while.end440_crit_edge:                 ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end440

while.body437.preheader:                          ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #6
  %105 = add i32 %m_len.4, -265
  %106 = udiv i32 %105, 255
  %107 = add nuw nsw i32 %106, 1
  %108 = call ptr @memset(ptr %op.9682, i32 0, i32 %107)
  %uglygep740 = getelementptr i8, ptr %op.9682, i32 %106
  %.neg = mul i32 %106, -255
  %uglygep741 = getelementptr i8, ptr %op.6, i32 2
  %109 = add i32 %m_len.4, -264
  %110 = add i32 %.neg, %109
  %uglygep742 = getelementptr i8, ptr %uglygep741, i32 %106
  br label %while.end440

while.end440:                                     ; preds = %while.body437.preheader, %if.end421.while.end440_crit_edge
  %m_len.5.lcssa = phi i32 [ %sub422, %if.end421.while.end440_crit_edge ], [ %110, %while.body437.preheader ]
  %op.6.pn.lcssa = phi ptr [ %op.6, %if.end421.while.end440_crit_edge ], [ %uglygep740, %while.body437.preheader ]
  %op.9.lcssa = phi ptr [ %op.9682, %if.end421.while.end440_crit_edge ], [ %uglygep742, %while.body437.preheader ]
  %conv441 = trunc i32 %m_len.5.lcssa to i8
  %incdec.ptr442 = getelementptr i8, ptr %op.6.pn.lcssa, i32 2
  %111 = ptrtoint ptr %op.9.lcssa to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv441, ptr %op.9.lcssa, align 1
  br label %if.end443

if.end443:                                        ; preds = %while.end440, %if.then384
  %op.10 = phi ptr [ %incdec.ptr391, %if.then384 ], [ %incdec.ptr442, %while.end440 ]
  %ip.3 = phi ptr [ %add.ptr325, %if.then384 ], [ %ip.2, %while.end440 ]
  %sub381.tr = trunc i32 %sub381 to i8
  %conv445 = shl i8 %sub381.tr, 2
  %incdec.ptr446 = getelementptr i8, ptr %op.10, i32 1
  %112 = ptrtoint ptr %op.10 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv445, ptr %op.10, align 1
  %shr447 = lshr i32 %sub381, 6
  %conv448 = trunc i32 %shr447 to i8
  %incdec.ptr449 = getelementptr i8, ptr %op.10, i32 2
  %113 = ptrtoint ptr %incdec.ptr446 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv448, ptr %incdec.ptr446, align 1
  br label %finished_writing_instruction

finished_writing_instruction:                     ; preds = %if.end443, %if.end373, %if.then331, %if.then255
  %storemerge = phi i8 [ -3, %if.then255 ], [ -2, %if.end373 ], [ -2, %if.end443 ], [ -2, %if.then331 ]
  %op.12 = phi ptr [ %add.ptr261, %if.then255 ], [ %incdec.ptr379, %if.end373 ], [ %incdec.ptr449, %if.end443 ], [ %incdec.ptr342, %if.then331 ]
  %ip.5 = phi ptr [ %add.ptr256, %if.then255 ], [ %add.ptr325, %if.end373 ], [ %ip.3, %if.end443 ], [ %add.ptr325, %if.then331 ]
  %114 = ptrtoint ptr %state_offset to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %storemerge, ptr %state_offset, align 1
  %cmp5.not = icmp ult ptr %ip.5, %add.ptr2
  br i1 %cmp5.not, label %finished_writing_instruction.if.end.outer_crit_edge, label %finished_writing_instruction.cleanup452_crit_edge, !prof !18

finished_writing_instruction.cleanup452_crit_edge: ; preds = %finished_writing_instruction
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup452

finished_writing_instruction.if.end.outer_crit_edge: ; preds = %finished_writing_instruction
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.outer

cleanup452:                                       ; preds = %finished_writing_instruction.cleanup452_crit_edge, %literal.loopexit.cleanup452_crit_edge, %entry.cleanup452_crit_edge
  %ii.1.lcssa = phi ptr [ %in, %entry.cleanup452_crit_edge ], [ %ii.1698.ph, %literal.loopexit.cleanup452_crit_edge ], [ %ip.5, %finished_writing_instruction.cleanup452_crit_edge ]
  %op.1.lcssa = phi ptr [ %out, %entry.cleanup452_crit_edge ], [ %op.1700.ph, %literal.loopexit.cleanup452_crit_edge ], [ %op.12, %finished_writing_instruction.cleanup452_crit_edge ]
  %ti.addr.1.lcssa = phi i32 [ %ti, %entry.cleanup452_crit_edge ], [ %ti.addr.1703.ph, %literal.loopexit.cleanup452_crit_edge ], [ 0, %finished_writing_instruction.cleanup452_crit_edge ]
  %sub.ptr.lhs.cast459 = ptrtoint ptr %op.1.lcssa to i32
  %sub.ptr.rhs.cast460 = ptrtoint ptr %out to i32
  %sub.ptr.sub461 = sub i32 %sub.ptr.lhs.cast459, %sub.ptr.rhs.cast460
  %115 = ptrtoint ptr %out_len to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %sub.ptr.sub461, ptr %out_len, align 4
  %idx.neg462 = sub i32 0, %ti.addr.1.lcssa
  %add.ptr463 = getelementptr i8, ptr %ii.1.lcssa, i32 %idx.neg462
  %sub.ptr.lhs.cast464 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast465 = ptrtoint ptr %add.ptr463 to i32
  %sub.ptr.sub466 = sub i32 %sub.ptr.lhs.cast464, %sub.ptr.rhs.cast465
  ret i32 %sub.ptr.sub466
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree noinline nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab_lzo1x_1_compress, !1, !"__ksymtab_lzo1x_1_compress", i1 false, i1 false}
!1 = !{!"../lib/lzo/lzo1x_compress.c", i32 396, i32 1}
!2 = !{ptr @__ksymtab_lzorle1x_1_compress, !3, !"__ksymtab_lzorle1x_1_compress", i1 false, i1 false}
!3 = !{!"../lib/lzo/lzo1x_compress.c", i32 397, i32 1}
!4 = !{ptr @__UNIQUE_ID_file107, !5, !"__UNIQUE_ID_file107", i1 false, i1 false}
!5 = !{!"../lib/lzo/lzo1x_compress.c", i32 399, i32 1}
!6 = !{ptr @__UNIQUE_ID_license108, !5, !"__UNIQUE_ID_license108", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description109, !8, !"__UNIQUE_ID_description109", i1 false, i1 false}
!8 = !{!"../lib/lzo/lzo1x_compress.c", i32 400, i32 1}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i32 0, i32 33}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{!"branch_weights", i32 1, i32 4001}
