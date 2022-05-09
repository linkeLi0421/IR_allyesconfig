; ModuleID = '/llk/IR_all_yes/fs/ntfs3/lib/decompress_common.c_pt.bc'
source_filename = "../fs/ntfs3/lib/decompress_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @make_huffman_decode_table(ptr noundef %decode_table, i32 noundef %num_syms, i32 noundef %table_bits, ptr nocapture noundef readonly %lens, i32 noundef %max_codeword_len, ptr nocapture noundef %working_space) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %max_codeword_len, 1
  %mul3 = shl i32 %add, 1
  br label %for.body

for.cond6.preheader:                              ; preds = %for.body
  %shl = shl nuw i32 1, %table_bits
  %arrayidx1 = getelementptr i16, ptr %working_space, i32 %add
  %arrayidx4 = getelementptr i16, ptr %working_space, i32 %mul3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_syms)
  %cmp7257.not = icmp eq i32 %num_syms, 0
  br i1 %cmp7257.not, label %for.cond6.preheader.for.cond15.preheader_crit_edge, label %for.cond6.preheader.for.body8_crit_edge

for.cond6.preheader.for.body8_crit_edge:          ; preds = %for.cond6.preheader
  br label %for.body8

for.cond6.preheader.for.cond15.preheader_crit_edge: ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond15.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %len.0256 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx5 = getelementptr i16, ptr %working_space, i32 %len.0256
  %0 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %arrayidx5, align 2
  %inc = add i32 %len.0256, 1
  %cmp.not = icmp ugt i32 %inc, %max_codeword_len
  br i1 %cmp.not, label %for.cond6.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.cond15.preheader:                             ; preds = %for.body8.for.cond15.preheader_crit_edge, %for.cond6.preheader.for.cond15.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_codeword_len)
  %cmp16.not259 = icmp eq i32 %max_codeword_len, 0
  br i1 %cmp16.not259, label %for.cond15.preheader.if.then25_crit_edge, label %for.cond15.preheader.for.body17_crit_edge

for.cond15.preheader.for.body17_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body17

for.cond15.preheader.if.then25_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then25

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.cond6.preheader.for.body8_crit_edge
  %sym.0258 = phi i32 [ %inc13, %for.body8.for.body8_crit_edge ], [ 0, %for.cond6.preheader.for.body8_crit_edge ]
  %arrayidx9 = getelementptr i8, ptr %lens, i32 %sym.0258
  %1 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx9, align 1
  %idxprom = zext i8 %2 to i32
  %arrayidx10 = getelementptr i16, ptr %working_space, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx10, align 2
  %inc11 = add i16 %4, 1
  store i16 %inc11, ptr %arrayidx10, align 2
  %inc13 = add nuw i32 %sym.0258, 1
  %exitcond.not = icmp eq i32 %inc13, %num_syms
  br i1 %exitcond.not, label %for.body8.for.cond15.preheader_crit_edge, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body8

for.body8.for.cond15.preheader_crit_edge:         ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond15.preheader

for.cond15:                                       ; preds = %for.body17
  %inc23 = add i32 %len.1261, 1
  %cmp16.not = icmp ugt i32 %inc23, %max_codeword_len
  br i1 %cmp16.not, label %for.end24, label %for.cond15.for.body17_crit_edge

for.cond15.for.body17_crit_edge:                  ; preds = %for.cond15
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body17

for.body17:                                       ; preds = %for.cond15.for.body17_crit_edge, %for.cond15.preheader.for.body17_crit_edge
  %len.1261 = phi i32 [ %inc23, %for.cond15.for.body17_crit_edge ], [ 1, %for.cond15.preheader.for.body17_crit_edge ]
  %left.0260 = phi i32 [ %sub, %for.cond15.for.body17_crit_edge ], [ 1, %for.cond15.preheader.for.body17_crit_edge ]
  %shl18 = shl i32 %left.0260, 1
  %arrayidx19 = getelementptr i16, ptr %working_space, i32 %len.1261
  %5 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx19, align 2
  %conv = zext i16 %6 to i32
  %sub = sub i32 %shl18, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp20 = icmp slt i32 %sub, 0
  br i1 %cmp20, label %for.body17.cleanup_crit_edge, label %for.cond15

for.body17.cleanup_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.end24:                                        ; preds = %for.cond15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end32, label %for.end24.if.then25_crit_edge

for.end24.if.then25_crit_edge:                    ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then25

if.then25:                                        ; preds = %for.end24.if.then25_crit_edge, %for.cond15.preheader.if.then25_crit_edge
  %left.0.lcssa299 = phi i32 [ %sub, %for.end24.if.then25_crit_edge ], [ 1, %for.cond15.preheader.if.then25_crit_edge ]
  %shl26 = shl nuw i32 1, %max_codeword_len
  call void @__sanitizer_cov_trace_cmp4(i32 %left.0.lcssa299, i32 %shl26)
  %cmp27 = icmp eq i32 %left.0.lcssa299, %shl26
  br i1 %cmp27, label %if.then29, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then29:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #4
  %mul30 = shl i32 %shl, 1
  %7 = call ptr @memset(ptr %decode_table, i32 0, i32 %mul30)
  br label %cleanup

if.end32:                                         ; preds = %for.end24
  %arrayidx33 = getelementptr i16, ptr %arrayidx1, i32 1
  %8 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %arrayidx33, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %max_codeword_len)
  %cmp35262 = icmp ugt i32 %max_codeword_len, 1
  br i1 %cmp35262, label %for.body37.lver.check, label %if.end32.for.cond49.preheader_crit_edge

if.end32.for.cond49.preheader_crit_edge:          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond49.preheader

for.body37.lver.check:                            ; preds = %if.end32
  %9 = add i32 %max_codeword_len, -2
  %uglygep304 = getelementptr i8, ptr %working_space, i32 2
  %mul = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 2)
  %mul.result = extractvalue { i32, i1 } %mul, 0
  %mul.overflow = extractvalue { i32, i1 } %mul, 1
  %10 = getelementptr i8, ptr %uglygep304, i32 %mul.result
  %11 = icmp ult ptr %10, %uglygep304
  %12 = or i1 %11, %mul.overflow
  %13 = shl i32 %max_codeword_len, 1
  %14 = add i32 %13, 6
  %uglygep305 = getelementptr i8, ptr %working_space, i32 %14
  %mul306 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 2)
  %mul.result307 = extractvalue { i32, i1 } %mul306, 0
  %mul.overflow308 = extractvalue { i32, i1 } %mul306, 1
  %15 = getelementptr i8, ptr %uglygep305, i32 %mul.result307
  %16 = icmp ult ptr %15, %uglygep305
  %17 = or i1 %16, %mul.overflow308
  %18 = add i32 %13, 4
  %uglygep309 = getelementptr i8, ptr %working_space, i32 %18
  %mul310 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 2)
  %mul.result311 = extractvalue { i32, i1 } %mul310, 0
  %mul.overflow312 = extractvalue { i32, i1 } %mul310, 1
  %19 = getelementptr i8, ptr %uglygep309, i32 %mul.result311
  %20 = icmp ult ptr %19, %uglygep309
  %21 = or i1 %20, %mul.overflow312
  %22 = or i1 %12, %17
  %23 = or i1 %22, %21
  br i1 %23, label %for.body37.lver.check.for.body37.lver.orig_crit_edge, label %for.body37.ph

for.body37.lver.check.for.body37.lver.orig_crit_edge: ; preds = %for.body37.lver.check
  br label %for.body37.lver.orig

for.body37.lver.orig:                             ; preds = %for.body37.lver.orig.for.body37.lver.orig_crit_edge, %for.body37.lver.check.for.body37.lver.orig_crit_edge
  %len.2263.lver.orig = phi i32 [ %add44.lver.orig, %for.body37.lver.orig.for.body37.lver.orig_crit_edge ], [ 1, %for.body37.lver.check.for.body37.lver.orig_crit_edge ]
  %arrayidx38.lver.orig = getelementptr i16, ptr %arrayidx1, i32 %len.2263.lver.orig
  %24 = ptrtoint ptr %arrayidx38.lver.orig to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx38.lver.orig, align 2
  %arrayidx40.lver.orig = getelementptr i16, ptr %working_space, i32 %len.2263.lver.orig
  %26 = ptrtoint ptr %arrayidx40.lver.orig to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx40.lver.orig, align 2
  %add42.lver.orig = add i16 %27, %25
  %add44.lver.orig = add nuw i32 %len.2263.lver.orig, 1
  %arrayidx45.lver.orig = getelementptr i16, ptr %arrayidx1, i32 %add44.lver.orig
  %28 = ptrtoint ptr %arrayidx45.lver.orig to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %add42.lver.orig, ptr %arrayidx45.lver.orig, align 2
  %exitcond293.not.lver.orig = icmp eq i32 %add44.lver.orig, %max_codeword_len
  br i1 %exitcond293.not.lver.orig, label %for.body37.lver.orig.for.cond49.preheader_crit_edge, label %for.body37.lver.orig.for.body37.lver.orig_crit_edge

for.body37.lver.orig.for.body37.lver.orig_crit_edge: ; preds = %for.body37.lver.orig
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body37.lver.orig

for.body37.lver.orig.for.cond49.preheader_crit_edge: ; preds = %for.body37.lver.orig
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond49.preheader

for.body37.ph:                                    ; preds = %for.body37.lver.check
  %29 = shl i32 %max_codeword_len, 1
  %30 = add i32 %29, 4
  %uglygep314 = getelementptr i8, ptr %working_space, i32 %30
  %31 = ptrtoint ptr %uglygep314 to i32
  call void @__asan_load2_noabort(i32 %31)
  %load_initial = load i16, ptr %uglygep314, align 2
  br label %for.body37

for.cond49.preheader:                             ; preds = %for.body37.for.cond49.preheader_crit_edge, %for.body37.lver.orig.for.cond49.preheader_crit_edge, %if.end32.for.cond49.preheader_crit_edge
  br i1 %cmp7257.not, label %for.cond49.preheader.for.end66_crit_edge, label %for.cond49.preheader.for.body52_crit_edge

for.cond49.preheader.for.body52_crit_edge:        ; preds = %for.cond49.preheader
  br label %for.body52

for.cond49.preheader.for.end66_crit_edge:         ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end66

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %for.body37.ph
  %store_forwarded = phi i16 [ %load_initial, %for.body37.ph ], [ %add42, %for.body37.for.body37_crit_edge ]
  %len.2263 = phi i32 [ 1, %for.body37.ph ], [ %add44, %for.body37.for.body37_crit_edge ]
  %arrayidx40 = getelementptr i16, ptr %working_space, i32 %len.2263
  %32 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx40, align 2
  %add42 = add i16 %33, %store_forwarded
  %add44 = add nuw i32 %len.2263, 1
  %arrayidx45 = getelementptr i16, ptr %arrayidx1, i32 %add44
  %34 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %add42, ptr %arrayidx45, align 2
  %exitcond293.not = icmp eq i32 %add44, %max_codeword_len
  br i1 %exitcond293.not, label %for.body37.for.cond49.preheader_crit_edge, label %for.body37.for.body37_crit_edge

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body37

for.body37.for.cond49.preheader_crit_edge:        ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond49.preheader

for.body52:                                       ; preds = %for.inc64.for.body52_crit_edge, %for.cond49.preheader.for.body52_crit_edge
  %sym.1265 = phi i32 [ %inc65, %for.inc64.for.body52_crit_edge ], [ 0, %for.cond49.preheader.for.body52_crit_edge ]
  %arrayidx53 = getelementptr i8, ptr %lens, i32 %sym.1265
  %35 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx53, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool54.not = icmp eq i8 %36, 0
  br i1 %tobool54.not, label %for.body52.for.inc64_crit_edge, label %if.then55

for.body52.for.inc64_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc64

if.then55:                                        ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #4
  %conv56 = trunc i32 %sym.1265 to i16
  %idxprom58 = zext i8 %36 to i32
  %arrayidx59 = getelementptr i16, ptr %arrayidx1, i32 %idxprom58
  %37 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx59, align 2
  %inc60 = add i16 %38, 1
  store i16 %inc60, ptr %arrayidx59, align 2
  %idxprom61 = zext i16 %38 to i32
  %arrayidx62 = getelementptr i16, ptr %arrayidx4, i32 %idxprom61
  %39 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv56, ptr %arrayidx62, align 2
  br label %for.inc64

for.inc64:                                        ; preds = %if.then55, %for.body52.for.inc64_crit_edge
  %inc65 = add nuw i32 %sym.1265, 1
  %exitcond294.not = icmp eq i32 %inc65, %num_syms
  br i1 %exitcond294.not, label %for.inc64.for.end66_crit_edge, label %for.inc64.for.body52_crit_edge

for.inc64.for.body52_crit_edge:                   ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body52

for.inc64.for.end66_crit_edge:                    ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end66

for.end66:                                        ; preds = %for.inc64.for.end66_crit_edge, %for.cond49.preheader.for.end66_crit_edge
  %sub67 = add i32 %table_bits, -1
  %shl68 = shl nuw i32 1, %sub67
  br label %for.body72

for.body72:                                       ; preds = %for.end88.for.body72_crit_edge, %for.end66
  %stores_per_loop.0276 = phi i32 [ %shl68, %for.end66 ], [ %shr, %for.end88.for.body72_crit_edge ]
  %codeword_len.0274 = phi i32 [ 1, %for.end66 ], [ %inc90, %for.end88.for.body72_crit_edge ]
  %sym_idx.0273 = phi i32 [ 0, %for.end66 ], [ %sym_idx.1.lcssa, %for.end88.for.body72_crit_edge ]
  %decode_table_ptr.0272 = phi ptr [ %decode_table, %for.end66 ], [ %decode_table_ptr.1.lcssa, %for.end88.for.body72_crit_edge ]
  %arrayidx73 = getelementptr i16, ptr %working_space, i32 %codeword_len.0274
  %40 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx73, align 2
  %conv74 = zext i16 %41 to i32
  %add75 = add i32 %sym_idx.0273, %conv74
  call void @__sanitizer_cov_trace_cmp4(i32 %sym_idx.0273, i32 %add75)
  %cmp77267 = icmp ult i32 %sym_idx.0273, %add75
  br i1 %cmp77267, label %for.body79.lr.ph, label %for.body72.for.end88_crit_edge

for.body72.for.end88_crit_edge:                   ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end88

for.body79.lr.ph:                                 ; preds = %for.body72
  %codeword_len.0.tr = trunc i32 %codeword_len.0274 to i16
  %42 = shl i16 %codeword_len.0.tr, 11
  br label %for.body79

for.body79:                                       ; preds = %do.end.for.body79_crit_edge, %for.body79.lr.ph
  %sym_idx.1269 = phi i32 [ %sym_idx.0273, %for.body79.lr.ph ], [ %inc87, %do.end.for.body79_crit_edge ]
  %decode_table_ptr.1268 = phi ptr [ %decode_table_ptr.0272, %for.body79.lr.ph ], [ %incdec.ptr, %do.end.for.body79_crit_edge ]
  %arrayidx82 = getelementptr i16, ptr %arrayidx4, i32 %sym_idx.1269
  %43 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx82, align 2
  %conv84 = or i16 %44, %42
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.body79
  %p.0 = phi ptr [ %decode_table_ptr.1268, %for.body79 ], [ %incdec.ptr, %do.body.do.body_crit_edge ]
  %n.0 = phi i32 [ %stores_per_loop.0276, %for.body79 ], [ %dec, %do.body.do.body_crit_edge ]
  %incdec.ptr = getelementptr i16, ptr %p.0, i32 1
  %45 = ptrtoint ptr %p.0 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv84, ptr %p.0, align 2
  %dec = add i32 %n.0, -1
  %tobool85.not = icmp eq i32 %dec, 0
  br i1 %tobool85.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

do.end:                                           ; preds = %do.body
  %inc87 = add nuw i32 %sym_idx.1269, 1
  %exitcond295.not = icmp eq i32 %inc87, %add75
  br i1 %exitcond295.not, label %do.end.for.end88_crit_edge, label %do.end.for.body79_crit_edge

do.end.for.body79_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body79

do.end.for.end88_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end88

for.end88:                                        ; preds = %do.end.for.end88_crit_edge, %for.body72.for.end88_crit_edge
  %decode_table_ptr.1.lcssa = phi ptr [ %decode_table_ptr.0272, %for.body72.for.end88_crit_edge ], [ %incdec.ptr, %do.end.for.end88_crit_edge ]
  %sym_idx.1.lcssa = phi i32 [ %sym_idx.0273, %for.body72.for.end88_crit_edge ], [ %add75, %do.end.for.end88_crit_edge ]
  %inc90 = add nuw nsw i32 %codeword_len.0274, 1
  %shr = lshr i32 %stores_per_loop.0276, 1
  %cmp70.not = icmp ult i32 %stores_per_loop.0276, 2
  br i1 %cmp70.not, label %for.end91, label %for.end88.for.body72_crit_edge

for.end88.for.body72_crit_edge:                   ; preds = %for.end88
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body72

for.end91:                                        ; preds = %for.end88
  %sub.ptr.lhs.cast = ptrtoint ptr %decode_table_ptr.1.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %decode_table to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr i32 %sub.ptr.sub, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div, i32 %shl)
  %cmp92.not = icmp eq i32 %sub.ptr.div, %shl
  br i1 %cmp92.not, label %for.end91.cleanup_crit_edge, label %do.body95.preheader

for.end91.cleanup_crit_edge:                      ; preds = %for.end91
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.body95.preheader:                              ; preds = %for.end91
  %46 = and i32 %sub.ptr.sub, -2
  %uglygep = getelementptr i8, ptr %decode_table, i32 %46
  %47 = shl i32 %shl, 1
  %48 = sub i32 %47, %46
  %49 = call ptr @memset(ptr %uglygep, i32 0, i32 %48)
  call void @__sanitizer_cov_trace_cmp4(i32 %codeword_len.0274, i32 %max_codeword_len)
  %cmp104.not285.not = icmp ult i32 %codeword_len.0274, %max_codeword_len
  br i1 %cmp104.not285.not, label %do.body95.preheader.for.body106_crit_edge, label %do.body95.preheader.cleanup_crit_edge

do.body95.preheader.cleanup_crit_edge:            ; preds = %do.body95.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.body95.preheader.for.body106_crit_edge:        ; preds = %do.body95.preheader
  br label %for.body106

for.body106:                                      ; preds = %for.end148.for.body106_crit_edge, %do.body95.preheader.for.body106_crit_edge
  %cur_codeword.0290 = phi i32 [ %shl151, %for.end148.for.body106_crit_edge ], [ %sub.ptr.sub, %do.body95.preheader.for.body106_crit_edge ]
  %next_free_tree_slot.0289 = phi i32 [ %next_free_tree_slot.1.lcssa, %for.end148.for.body106_crit_edge ], [ %shl, %do.body95.preheader.for.body106_crit_edge ]
  %codeword_len.1287 = phi i32 [ %inc150, %for.end148.for.body106_crit_edge ], [ %inc90, %do.body95.preheader.for.body106_crit_edge ]
  %sym_idx.2286 = phi i32 [ %sym_idx.3.lcssa, %for.end148.for.body106_crit_edge ], [ %sym_idx.1.lcssa, %do.body95.preheader.for.body106_crit_edge ]
  %arrayidx108 = getelementptr i16, ptr %working_space, i32 %codeword_len.1287
  %50 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx108, align 2
  %conv109 = zext i16 %51 to i32
  %add110 = add i32 %sym_idx.2286, %conv109
  call void @__sanitizer_cov_trace_cmp4(i32 %sym_idx.2286, i32 %add110)
  %cmp112278 = icmp ult i32 %sym_idx.2286, %add110
  br i1 %cmp112278, label %for.body114.lr.ph, label %for.body106.for.end148_crit_edge

for.body106.for.end148_crit_edge:                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end148

for.body114.lr.ph:                                ; preds = %for.body106
  %sub117 = sub i32 %codeword_len.1287, %table_bits
  br label %for.body114

for.body114:                                      ; preds = %do.end142.for.body114_crit_edge, %for.body114.lr.ph
  %cur_codeword.1281 = phi i32 [ %cur_codeword.0290, %for.body114.lr.ph ], [ %inc147, %do.end142.for.body114_crit_edge ]
  %next_free_tree_slot.1280 = phi i32 [ %next_free_tree_slot.0289, %for.body114.lr.ph ], [ %next_free_tree_slot.3, %do.end142.for.body114_crit_edge ]
  %sym_idx.3279 = phi i32 [ %sym_idx.2286, %for.body114.lr.ph ], [ %inc146, %do.end142.for.body114_crit_edge ]
  %arrayidx115 = getelementptr i16, ptr %arrayidx4, i32 %sym_idx.3279
  %52 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx115, align 2
  %shr118 = lshr i32 %cur_codeword.1281, %sub117
  br label %do.body119

do.body119:                                       ; preds = %if.end132.do.body119_crit_edge, %for.body114
  %next_free_tree_slot.2 = phi i32 [ %next_free_tree_slot.1280, %for.body114 ], [ %next_free_tree_slot.3, %if.end132.do.body119_crit_edge ]
  %extra_bits.0 = phi i32 [ %sub117, %for.body114 ], [ %dec135, %if.end132.do.body119_crit_edge ]
  %node_idx.0 = phi i32 [ %shr118, %for.body114 ], [ %add138, %if.end132.do.body119_crit_edge ]
  %arrayidx120 = getelementptr i16, ptr %decode_table, i32 %node_idx.0
  %54 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx120, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %cmp122 = icmp eq i16 %55, 0
  br i1 %cmp122, label %if.then124, label %do.body119.if.end132_crit_edge

do.body119.if.end132_crit_edge:                   ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end132

if.then124:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #4
  %56 = trunc i32 %next_free_tree_slot.2 to i16
  %conv126 = or i16 %56, -16384
  %57 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv126, ptr %arrayidx120, align 2
  %inc128 = add i32 %next_free_tree_slot.2, 1
  %arrayidx129 = getelementptr i16, ptr %decode_table, i32 %next_free_tree_slot.2
  %58 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %arrayidx129, align 2
  %inc130 = add i32 %next_free_tree_slot.2, 2
  %arrayidx131 = getelementptr i16, ptr %decode_table, i32 %inc128
  %59 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %arrayidx131, align 2
  br label %if.end132

if.end132:                                        ; preds = %if.then124, %do.body119.if.end132_crit_edge
  %next_free_tree_slot.3 = phi i32 [ %inc130, %if.then124 ], [ %next_free_tree_slot.2, %do.body119.if.end132_crit_edge ]
  %60 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx120, align 2
  %62 = and i16 %61, 16383
  %and = zext i16 %62 to i32
  %dec135 = add i32 %extra_bits.0, -1
  %shr136 = lshr i32 %cur_codeword.1281, %dec135
  %and137 = and i32 %shr136, 1
  %add138 = add nuw nsw i32 %and137, %and
  %cmp140.not = icmp eq i32 %dec135, 0
  br i1 %cmp140.not, label %do.end142, label %if.end132.do.body119_crit_edge

if.end132.do.body119_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body119

do.end142:                                        ; preds = %if.end132
  %arrayidx144 = getelementptr i16, ptr %decode_table, i32 %add138
  %63 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %53, ptr %arrayidx144, align 2
  %inc146 = add nuw i32 %sym_idx.3279, 1
  %inc147 = add i32 %cur_codeword.1281, 1
  %exitcond296.not = icmp eq i32 %inc146, %add110
  br i1 %exitcond296.not, label %do.end142.for.end148_crit_edge, label %do.end142.for.body114_crit_edge

do.end142.for.body114_crit_edge:                  ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body114

do.end142.for.end148_crit_edge:                   ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end148

for.end148:                                       ; preds = %do.end142.for.end148_crit_edge, %for.body106.for.end148_crit_edge
  %sym_idx.3.lcssa = phi i32 [ %sym_idx.2286, %for.body106.for.end148_crit_edge ], [ %add110, %do.end142.for.end148_crit_edge ]
  %next_free_tree_slot.1.lcssa = phi i32 [ %next_free_tree_slot.0289, %for.body106.for.end148_crit_edge ], [ %next_free_tree_slot.3, %do.end142.for.end148_crit_edge ]
  %cur_codeword.1.lcssa = phi i32 [ %cur_codeword.0290, %for.body106.for.end148_crit_edge ], [ %inc147, %do.end142.for.end148_crit_edge ]
  %inc150 = add i32 %codeword_len.1287, 1
  %shl151 = shl i32 %cur_codeword.1.lcssa, 1
  %cmp104.not = icmp ugt i32 %inc150, %max_codeword_len
  br i1 %cmp104.not, label %for.end148.cleanup_crit_edge, label %for.end148.for.body106_crit_edge

for.end148.for.body106_crit_edge:                 ; preds = %for.end148
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body106

for.end148.cleanup_crit_edge:                     ; preds = %for.end148
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup:                                          ; preds = %for.end148.cleanup_crit_edge, %do.body95.preheader.cleanup_crit_edge, %for.end91.cleanup_crit_edge, %if.then29, %if.then25.cleanup_crit_edge, %for.body17.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then29 ], [ -1, %if.then25.cleanup_crit_edge ], [ 0, %for.end91.cleanup_crit_edge ], [ 0, %do.body95.preheader.cleanup_crit_edge ], [ 0, %for.end148.cleanup_crit_edge ], [ -1, %for.body17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_store2_noabort(i32)

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

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
