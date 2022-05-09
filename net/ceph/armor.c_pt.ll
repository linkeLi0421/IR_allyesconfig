; ModuleID = '/llk/IR_all_yes/net/ceph/armor.c_pt.bc'
source_filename = "../net/ceph/armor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

@.str = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 43, i64 47, i64 61]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 8, i64 43, i64 47, i64 61]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 8, i64 43, i64 47, i64 61]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 8, i64 43, i64 47, i64 61]
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [20 x i8] c"../net/ceph/armor.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 13, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_armor(ptr nocapture noundef writeonly %dst, ptr noundef readonly %src, ptr noundef readnone %end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp87 = icmp ult ptr %src, %end
  br i1 %cmp87, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end52.while.body_crit_edge, %entry.while.body_crit_edge
  %line.091 = phi i32 [ %line.1, %if.end52.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %olen.090 = phi i32 [ %olen.1, %if.end52.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %dst.addr.089 = phi ptr [ %dst.addr.2, %if.end52.while.body_crit_edge ], [ %dst, %entry.while.body_crit_edge ]
  %src.addr.088 = phi ptr [ %src.addr.1, %if.end52.while.body_crit_edge ], [ %src, %entry.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %src.addr.088, i32 1
  %0 = ptrtoint ptr %src.addr.088 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %src.addr.088, align 1
  %conv = zext i8 %1 to i32
  %2 = lshr i32 %conv, 2
  %arrayidx.i = getelementptr i8, ptr @.str, i32 %2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %incdec.ptr2 = getelementptr i8, ptr %dst.addr.089, i32 1
  %5 = ptrtoint ptr %dst.addr.089 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %dst.addr.089, align 1
  %cmp3 = icmp ult ptr %incdec.ptr, %end
  br i1 %cmp3, label %if.then, label %if.else37

if.then:                                          ; preds = %while.body
  %incdec.ptr5 = getelementptr i8, ptr %src.addr.088, i32 2
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr, align 1
  %and = shl nuw nsw i32 %conv, 4
  %shl = and i32 %and, 48
  %conv7 = zext i8 %7 to i32
  %8 = lshr i32 %conv7, 4
  %or = or i32 %8, %shl
  %arrayidx.i77 = getelementptr i8, ptr @.str, i32 %or
  %9 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i77, align 1
  %incdec.ptr11 = getelementptr i8, ptr %dst.addr.089, i32 2
  %11 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %incdec.ptr2, align 1
  %cmp12 = icmp ult ptr %incdec.ptr5, %end
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #3
  %incdec.ptr15 = getelementptr i8, ptr %src.addr.088, i32 3
  %12 = ptrtoint ptr %incdec.ptr5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr5, align 1
  %and17 = shl nuw nsw i32 %conv7, 2
  %shl18 = and i32 %and17, 60
  %conv19 = zext i8 %13 to i32
  %14 = lshr i32 %conv19, 6
  %or21 = or i32 %14, %shl18
  %arrayidx.i79 = getelementptr i8, ptr @.str, i32 %or21
  %15 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i79, align 1
  %incdec.ptr24 = getelementptr i8, ptr %dst.addr.089, i32 3
  %17 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %incdec.ptr11, align 1
  %and26 = and i32 %conv19, 63
  %arrayidx.i81 = getelementptr i8, ptr @.str, i32 %and26
  %18 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i81, align 1
  %20 = ptrtoint ptr %incdec.ptr24 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %incdec.ptr24, align 1
  br label %if.end46

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #3
  %and31 = shl nuw nsw i32 %conv7, 2
  %shl32 = and i32 %and31, 60
  %arrayidx.i83 = getelementptr i8, ptr @.str, i32 %shl32
  %21 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i83, align 1
  %incdec.ptr35 = getelementptr i8, ptr %dst.addr.089, i32 3
  %23 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %incdec.ptr11, align 1
  %24 = ptrtoint ptr %incdec.ptr35 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 61, ptr %incdec.ptr35, align 1
  br label %if.end46

if.else37:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #3
  %and39 = shl nuw nsw i32 %conv, 4
  %shl40 = and i32 %and39, 48
  %arrayidx.i85 = getelementptr i8, ptr @.str, i32 %shl40
  %25 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i85, align 1
  %incdec.ptr43 = getelementptr i8, ptr %dst.addr.089, i32 2
  %27 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %incdec.ptr2, align 1
  %incdec.ptr44 = getelementptr i8, ptr %dst.addr.089, i32 3
  %28 = ptrtoint ptr %incdec.ptr43 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 61, ptr %incdec.ptr43, align 1
  %29 = ptrtoint ptr %incdec.ptr44 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 61, ptr %incdec.ptr44, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.else37, %if.else, %if.then14
  %src.addr.1 = phi ptr [ %incdec.ptr15, %if.then14 ], [ %incdec.ptr5, %if.else ], [ %incdec.ptr, %if.else37 ]
  %dst.addr.1 = getelementptr i8, ptr %dst.addr.089, i32 4
  %add = add i32 %olen.090, 4
  %add47 = add i32 %line.091, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add47)
  %cmp48 = icmp eq i32 %add47, 64
  br i1 %cmp48, label %if.then50, label %if.end46.if.end52_crit_edge

if.end46.if.end52_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end52

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #3
  %incdec.ptr51 = getelementptr i8, ptr %dst.addr.089, i32 5
  %30 = ptrtoint ptr %dst.addr.1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 10, ptr %dst.addr.1, align 1
  %inc = add i32 %olen.090, 5
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end46.if.end52_crit_edge
  %dst.addr.2 = phi ptr [ %incdec.ptr51, %if.then50 ], [ %dst.addr.1, %if.end46.if.end52_crit_edge ]
  %olen.1 = phi i32 [ %inc, %if.then50 ], [ %add, %if.end46.if.end52_crit_edge ]
  %line.1 = phi i32 [ 0, %if.then50 ], [ %add47, %if.end46.if.end52_crit_edge ]
  %cmp = icmp ult ptr %src.addr.1, %end
  br i1 %cmp, label %if.end52.while.body_crit_edge, label %if.end52.while.end_crit_edge

if.end52.while.end_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end

if.end52.while.body_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body

while.end:                                        ; preds = %if.end52.while.end_crit_edge, %entry.while.end_crit_edge
  %olen.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %olen.1, %if.end52.while.end_crit_edge ]
  ret i32 %olen.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_unarmor(ptr nocapture noundef writeonly %dst, ptr noundef readonly %src, ptr noundef readnone %end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp133 = icmp ult ptr %src, %end
  br i1 %cmp133, label %entry.while.body_crit_edge, label %entry.cleanup56_crit_edge

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup56

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %olen.0136 = phi i32 [ %olen.1, %cleanup.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %src.addr.0135 = phi ptr [ %src.addr.1, %cleanup.while.body_crit_edge ], [ %src, %entry.while.body_crit_edge ]
  %dst.addr.0134 = phi ptr [ %dst.addr.1, %cleanup.while.body_crit_edge ], [ %dst, %entry.while.body_crit_edge ]
  %0 = ptrtoint ptr %src.addr.0135 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %src.addr.0135, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp1 = icmp eq i8 %1, 10
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #3
  %incdec.ptr = getelementptr i8, ptr %src.addr.0135, i32 1
  br label %cleanup

if.end:                                           ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %src.addr.0135, i32 4
  %cmp3 = icmp ugt ptr %add.ptr, %end
  br i1 %cmp3, label %if.end.cleanup56_crit_edge, label %if.end6

if.end.cleanup56_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup56

if.end6:                                          ; preds = %if.end
  %conv.i = zext i8 %1 to i32
  %2 = add i8 %1, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %2)
  %3 = icmp ult i8 %2, 26
  br i1 %3, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #3
  %sub.i = add nsw i32 %conv.i, -65
  br label %decode_bits.exit

if.end.i:                                         ; preds = %if.end6
  %4 = add i8 %1, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %4)
  %5 = icmp ult i8 %4, 26
  br i1 %5, label %if.then13.i, label %if.end16.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #3
  %add.i = add nsw i32 %conv.i, -71
  br label %decode_bits.exit

if.end16.i:                                       ; preds = %if.end.i
  %6 = add i8 %1, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %6)
  %7 = icmp ult i8 %6, 10
  br i1 %7, label %if.then24.i, label %if.end28.i

if.then24.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #3
  %add27.i = add nuw nsw i32 %conv.i, 4
  br label %decode_bits.exit

if.end28.i:                                       ; preds = %if.end16.i
  %8 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %if.end43.i [
    i8 43, label %if.end28.i.decode_bits.exit_crit_edge
    i8 47, label %if.then37.i
    i8 61, label %if.then42.i
  ]

if.end28.i.decode_bits.exit_crit_edge:            ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %decode_bits.exit

if.then37.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %decode_bits.exit

if.then42.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %decode_bits.exit

if.end43.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %decode_bits.exit

decode_bits.exit:                                 ; preds = %if.end43.i, %if.then42.i, %if.then37.i, %if.end28.i.decode_bits.exit_crit_edge, %if.then24.i, %if.then13.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %add.i, %if.then13.i ], [ %add27.i, %if.then24.i ], [ 63, %if.then37.i ], [ 0, %if.then42.i ], [ -22, %if.end43.i ], [ 62, %if.end28.i.decode_bits.exit_crit_edge ]
  %arrayidx8 = getelementptr i8, ptr %src.addr.0135, i32 1
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx8, align 1
  %conv.i81 = zext i8 %10 to i32
  %11 = add i8 %10, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %11)
  %12 = icmp ult i8 %11, 26
  br i1 %12, label %if.then.i83, label %if.end.i84

if.then.i83:                                      ; preds = %decode_bits.exit
  call void @__sanitizer_cov_trace_pc() #3
  %sub.i82 = add nsw i32 %conv.i81, -65
  br label %decode_bits.exit95

if.end.i84:                                       ; preds = %decode_bits.exit
  %13 = add i8 %10, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %13)
  %14 = icmp ult i8 %13, 26
  br i1 %14, label %if.then13.i86, label %if.end16.i87

if.then13.i86:                                    ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #3
  %add.i85 = add nsw i32 %conv.i81, -71
  br label %decode_bits.exit95

if.end16.i87:                                     ; preds = %if.end.i84
  %15 = add i8 %10, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %15)
  %16 = icmp ult i8 %15, 10
  br i1 %16, label %if.then24.i89, label %if.end28.i90

if.then24.i89:                                    ; preds = %if.end16.i87
  call void @__sanitizer_cov_trace_pc() #3
  %add27.i88 = add nuw nsw i32 %conv.i81, 4
  br label %decode_bits.exit95

if.end28.i90:                                     ; preds = %if.end16.i87
  %17 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %10, label %if.end43.i93 [
    i8 43, label %if.end28.i90.decode_bits.exit95_crit_edge
    i8 47, label %if.then37.i91
    i8 61, label %if.then42.i92
  ]

if.end28.i90.decode_bits.exit95_crit_edge:        ; preds = %if.end28.i90
  call void @__sanitizer_cov_trace_pc() #3
  br label %decode_bits.exit95

if.then37.i91:                                    ; preds = %if.end28.i90
  call void @__sanitizer_cov_trace_pc() #3
  br label %decode_bits.exit95

if.then42.i92:                                    ; preds = %if.end28.i90
  call void @__sanitizer_cov_trace_pc() #3
  br label %decode_bits.exit95

if.end43.i93:                                     ; preds = %if.end28.i90
  call void @__sanitizer_cov_trace_pc() #3
  br label %decode_bits.exit95

decode_bits.exit95:                               ; preds = %if.end43.i93, %if.then42.i92, %if.then37.i91, %if.end28.i90.decode_bits.exit95_crit_edge, %if.then24.i89, %if.then13.i86, %if.then.i83
  %retval.0.i94 = phi i32 [ %sub.i82, %if.then.i83 ], [ %add.i85, %if.then13.i86 ], [ %add27.i88, %if.then24.i89 ], [ 63, %if.then37.i91 ], [ 0, %if.then42.i92 ], [ -22, %if.end43.i93 ], [ 62, %if.end28.i90.decode_bits.exit95_crit_edge ]
  %arrayidx10 = getelementptr i8, ptr %src.addr.0135, i32 2
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx10, align 1
  %conv.i96 = zext i8 %19 to i32
  %20 = add i8 %19, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %20)
  %21 = icmp ult i8 %20, 26
  br i1 %21, label %if.then.i98, label %if.end.i99

if.then.i98:                                      ; preds = %decode_bits.exit95
  call void @__sanitizer_cov_trace_pc() #3
  %sub.i97 = add nsw i32 %conv.i96, -65
  br label %decode_bits.exit110

if.end.i99:                                       ; preds = %decode_bits.exit95
  %22 = add i8 %19, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %22)
  %23 = icmp ult i8 %22, 26
  br i1 %23, label %if.then13.i101, label %if.end16.i102

if.then13.i101:                                   ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #3
  %add.i100 = add nsw i32 %conv.i96, -71
  br label %decode_bits.exit110

if.end16.i102:                                    ; preds = %if.end.i99
  %24 = add i8 %19, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %24)
  %25 = icmp ult i8 %24, 10
  br i1 %25, label %if.then24.i104, label %if.end28.i105

if.then24.i104:                                   ; preds = %if.end16.i102
  call void @__sanitizer_cov_trace_pc() #3
  %add27.i103 = add nuw nsw i32 %conv.i96, 4
  br label %decode_bits.exit110

if.end28.i105:                                    ; preds = %if.end16.i102
  %26 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %19, label %if.end43.i108 [
    i8 43, label %if.end28.i105.decode_bits.exit110_crit_edge
    i8 47, label %if.then37.i106
    i8 61, label %if.then42.i107
  ]

if.end28.i105.decode_bits.exit110_crit_edge:      ; preds = %if.end28.i105
  call void @__sanitizer_cov_trace_pc() #3
  br label %decode_bits.exit110

if.then37.i106:                                   ; preds = %if.end28.i105
  call void @__sanitizer_cov_trace_pc() #3
  br label %decode_bits.exit110

if.then42.i107:                                   ; preds = %if.end28.i105
  call void @__sanitizer_cov_trace_pc() #3
  br label %decode_bits.exit110

if.end43.i108:                                    ; preds = %if.end28.i105
  call void @__sanitizer_cov_trace_pc() #3
  br label %decode_bits.exit110

decode_bits.exit110:                              ; preds = %if.end43.i108, %if.then42.i107, %if.then37.i106, %if.end28.i105.decode_bits.exit110_crit_edge, %if.then24.i104, %if.then13.i101, %if.then.i98
  %retval.0.i109 = phi i32 [ %sub.i97, %if.then.i98 ], [ %add.i100, %if.then13.i101 ], [ %add27.i103, %if.then24.i104 ], [ 63, %if.then37.i106 ], [ 0, %if.then42.i107 ], [ -22, %if.end43.i108 ], [ 62, %if.end28.i105.decode_bits.exit110_crit_edge ]
  %arrayidx12 = getelementptr i8, ptr %src.addr.0135, i32 3
  %27 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx12, align 1
  %conv.i111 = zext i8 %28 to i32
  %29 = add i8 %28, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %29)
  %30 = icmp ult i8 %29, 26
  br i1 %30, label %if.then.i113, label %if.end.i114

if.then.i113:                                     ; preds = %decode_bits.exit110
  call void @__sanitizer_cov_trace_pc() #3
  %sub.i112 = add nsw i32 %conv.i111, -65
  br label %decode_bits.exit125

if.end.i114:                                      ; preds = %decode_bits.exit110
  %31 = add i8 %28, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %31)
  %32 = icmp ult i8 %31, 26
  br i1 %32, label %if.then13.i116, label %if.end16.i117

if.then13.i116:                                   ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #3
  %add.i115 = add nsw i32 %conv.i111, -71
  br label %decode_bits.exit125

if.end16.i117:                                    ; preds = %if.end.i114
  %33 = add i8 %28, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %33)
  %34 = icmp ult i8 %33, 10
  br i1 %34, label %if.then24.i119, label %if.end28.i120

if.then24.i119:                                   ; preds = %if.end16.i117
  call void @__sanitizer_cov_trace_pc() #3
  %add27.i118 = add nuw nsw i32 %conv.i111, 4
  br label %decode_bits.exit125

if.end28.i120:                                    ; preds = %if.end16.i117
  %35 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %28, label %if.end43.i123 [
    i8 43, label %if.end28.i120.decode_bits.exit125_crit_edge
    i8 47, label %if.then37.i121
    i8 61, label %if.then42.i122
  ]

if.end28.i120.decode_bits.exit125_crit_edge:      ; preds = %if.end28.i120
  call void @__sanitizer_cov_trace_pc() #3
  br label %decode_bits.exit125

if.then37.i121:                                   ; preds = %if.end28.i120
  call void @__sanitizer_cov_trace_pc() #3
  br label %decode_bits.exit125

if.then42.i122:                                   ; preds = %if.end28.i120
  call void @__sanitizer_cov_trace_pc() #3
  br label %decode_bits.exit125

if.end43.i123:                                    ; preds = %if.end28.i120
  call void @__sanitizer_cov_trace_pc() #3
  br label %decode_bits.exit125

decode_bits.exit125:                              ; preds = %if.end43.i123, %if.then42.i122, %if.then37.i121, %if.end28.i120.decode_bits.exit125_crit_edge, %if.then24.i119, %if.then13.i116, %if.then.i113
  %retval.0.i124 = phi i32 [ %sub.i112, %if.then.i113 ], [ %add.i115, %if.then13.i116 ], [ %add27.i118, %if.then24.i119 ], [ 63, %if.then37.i121 ], [ 0, %if.then42.i122 ], [ -22, %if.end43.i123 ], [ 62, %if.end28.i120.decode_bits.exit125_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp14 = icmp slt i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i94)
  %cmp16 = icmp slt i32 %retval.0.i94, 0
  %or.cond = select i1 %cmp14, i1 true, i1 %cmp16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i109)
  %cmp19 = icmp slt i32 %retval.0.i109, 0
  %or.cond79 = select i1 %or.cond, i1 true, i1 %cmp19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i124)
  %cmp22 = icmp slt i32 %retval.0.i124, 0
  %or.cond80 = select i1 %or.cond79, i1 true, i1 %cmp22
  br i1 %or.cond80, label %decode_bits.exit125.cleanup56_crit_edge, label %if.end25

decode_bits.exit125.cleanup56_crit_edge:          ; preds = %decode_bits.exit125
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup56

if.end25:                                         ; preds = %decode_bits.exit125
  %shl = shl nuw nsw i32 %retval.0.i, 2
  %36 = lshr i32 %retval.0.i94, 4
  %or = or i32 %36, %shl
  %conv26 = trunc i32 %or to i8
  %37 = ptrtoint ptr %dst.addr.0134 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv26, ptr %dst.addr.0134, align 1
  %38 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %39)
  %cmp30 = icmp eq i8 %39, 61
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #3
  %add = add i32 %olen.0136, 1
  br label %cleanup56

if.end33:                                         ; preds = %if.end25
  %incdec.ptr27 = getelementptr i8, ptr %dst.addr.0134, i32 1
  %and = shl nuw nsw i32 %retval.0.i94, 4
  %40 = lshr i32 %retval.0.i109, 2
  %or36 = or i32 %40, %and
  %conv37 = trunc i32 %or36 to i8
  %41 = ptrtoint ptr %incdec.ptr27 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv37, ptr %incdec.ptr27, align 1
  %42 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %43)
  %cmp41 = icmp eq i8 %43, 61
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #3
  %add44 = add i32 %olen.0136, 2
  br label %cleanup56

if.end45:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #3
  %incdec.ptr38 = getelementptr i8, ptr %dst.addr.0134, i32 2
  %and46 = shl nuw nsw i32 %retval.0.i109, 6
  %or48 = or i32 %retval.0.i124, %and46
  %conv49 = trunc i32 %or48 to i8
  %incdec.ptr50 = getelementptr i8, ptr %dst.addr.0134, i32 3
  %44 = ptrtoint ptr %incdec.ptr38 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv49, ptr %incdec.ptr38, align 1
  %add51 = add i32 %olen.0136, 3
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then
  %dst.addr.1 = phi ptr [ %dst.addr.0134, %if.then ], [ %incdec.ptr50, %if.end45 ]
  %src.addr.1 = phi ptr [ %incdec.ptr, %if.then ], [ %add.ptr, %if.end45 ]
  %olen.1 = phi i32 [ %olen.0136, %if.then ], [ %add51, %if.end45 ]
  %cmp = icmp ult ptr %src.addr.1, %end
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup56_crit_edge

cleanup.cleanup56_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup56

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body

cleanup56:                                        ; preds = %cleanup.cleanup56_crit_edge, %if.then43, %if.then32, %decode_bits.exit125.cleanup56_crit_edge, %if.end.cleanup56_crit_edge, %entry.cleanup56_crit_edge
  %retval.2 = phi i32 [ %add44, %if.then43 ], [ %add, %if.then32 ], [ 0, %entry.cleanup56_crit_edge ], [ %olen.1, %cleanup.cleanup56_crit_edge ], [ -22, %if.end.cleanup56_crit_edge ], [ -22, %decode_bits.exit125.cleanup56_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ceph/armor.c", i32 13, i32 2}
!2 = distinct !{null, !3, !"pem_key", i1 false, i1 false}
!3 = !{!"../net/ceph/armor.c", i32 12, i32 20}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
