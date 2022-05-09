; ModuleID = '/llk/IR_all_yes/lib/xz/xz_dec_lzma2.c_pt.bc'
source_filename = "../lib/xz/xz_dec_lzma2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xz_buf = type { ptr, i32, i32, ptr, i32, i32 }
%struct.xz_dec_lzma2 = type { %struct.rc_dec, %struct.dictionary, %struct.lzma2_dec, %struct.lzma_dec, %struct.anon }
%struct.rc_dec = type { i32, i32, i32, ptr, i32, i32 }
%struct.dictionary = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lzma2_dec = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.lzma_dec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [16 x i16]], [12 x i16], [12 x i16], [12 x i16], [12 x i16], [12 x [16 x i16]], [4 x [64 x i16]], [114 x i16], [16 x i16], %struct.lzma_len_dec, %struct.lzma_len_dec, [16 x [768 x i16]] }
%struct.lzma_len_dec = type { i16, i16, [16 x [8 x i16]], [16 x [8 x i16]], [256 x i16] }
%struct.anon = type { i32, [63 x i8] }

@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xz_dec_lzma2_run(ptr noundef %s, ptr noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %in_pos = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 1
  %in_size = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 2
  %lzma2 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 2
  %dict179 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1
  %compressed181 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 2, i32 3
  %out_pos.i294 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 4
  %out_size.i296 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 5
  %end.i297 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1, i32 5
  %pos.i298 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1, i32 2
  %full.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1, i32 3
  %mode.i299 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1, i32 9
  %out.i300 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 3
  %start.i301 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1, i32 1
  %pos_mask.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 8
  %literal_pos_mask.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 7
  %lc.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 6
  %lzma.i.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3
  %is_match.i.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 9
  %code.i.i.i = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 1
  %init_bytes_left.i.i.i = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 2
  %uncompressed129 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 2, i32 2
  %0 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1, i32 4
  %temp = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 4
  %len = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 5
  %next_sequence99 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 2, i32 1
  %need_dict_reset15 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 2, i32 4
  %need_props = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 2, i32 5
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %1 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %in_pos, align 4
  %3 = ptrtoint ptr %in_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %in_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp = icmp ult i32 %2, %4
  %5 = ptrtoint ptr %lzma2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr316 = load i32, ptr %lzma2, align 4
  br i1 %cmp, label %while.body, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %.pr316)
  %cmp1 = icmp eq i32 %.pr316, 7
  br i1 %cmp1, label %lor.rhs.sw.bb125_crit_edge, label %lor.rhs.cleanup_crit_edge

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.rhs.sw.bb125_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb125

while.body:                                       ; preds = %while.cond
  %6 = zext i32 %.pr316 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.pr316, label %while.body.while.cond.backedge_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb55
    i32 2, label %sw.bb66
    i32 3, label %sw.bb78
    i32 4, label %sw.bb88
    i32 5, label %sw.bb102
    i32 6, label %while.body.sw.bb111_crit_edge
    i32 7, label %while.body.sw.bb125_crit_edge
    i32 8, label %sw.bb178
  ]

while.body.sw.bb125_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb125

while.body.sw.bb111_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb111

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

sw.bb:                                            ; preds = %while.body
  %7 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b, align 4
  %inc = add nuw i32 %2, 1
  %9 = ptrtoint ptr %in_pos to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %in_pos, align 4
  %arrayidx = getelementptr i8, ptr %8, i32 %2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp5 = icmp eq i8 %11, 0
  br i1 %cmp5, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %11)
  %cmp7 = icmp ugt i8 %11, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp9 = icmp eq i8 %11, 1
  %or.cond = or i1 %cmp7, %cmp9
  br i1 %or.cond, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  %12 = ptrtoint ptr %need_props to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %need_props, align 1
  %13 = ptrtoint ptr %need_dict_reset15 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %need_dict_reset15, align 4
  %14 = ptrtoint ptr %mode.i299 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode.i299, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %if.then.i, label %if.then11.dict_reset.exit_crit_edge

if.then11.dict_reset.exit_crit_edge:              ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %dict_reset.exit

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %out.i300 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %out.i300, align 4
  %18 = ptrtoint ptr %out_pos.i294 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %out_pos.i294, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %19
  %20 = ptrtoint ptr %dict179 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i, ptr %dict179, align 4
  %21 = ptrtoint ptr %out_size.i296 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %out_size.i296, align 4
  %23 = load i32, ptr %out_pos.i294, align 4
  %sub.i = sub i32 %22, %23
  %24 = ptrtoint ptr %end.i297 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i, ptr %end.i297, align 4
  br label %dict_reset.exit

dict_reset.exit:                                  ; preds = %if.then.i, %if.then11.dict_reset.exit_crit_edge
  %25 = call ptr @memset(ptr %start.i301, i32 0, i32 16)
  br label %if.end18

if.else:                                          ; preds = %if.end
  %26 = ptrtoint ptr %need_dict_reset15 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %need_dict_reset15, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %if.else.if.end18_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end18:                                         ; preds = %if.else.if.end18_crit_edge, %dict_reset.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp19 = icmp slt i8 %11, 0
  br i1 %cmp19, label %if.then21, label %if.else45

if.then21:                                        ; preds = %if.end18
  %and = shl nuw nsw i32 %conv, 16
  %shl = and i32 %and, 2031616
  %28 = ptrtoint ptr %uncompressed129 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shl, ptr %uncompressed129, align 4
  %29 = ptrtoint ptr %lzma2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %lzma2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %11)
  %cmp25 = icmp ugt i8 %11, -65
  br i1 %cmp25, label %if.then27, label %if.else31

if.then27:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %need_props to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %need_props, align 1
  %31 = ptrtoint ptr %next_sequence99 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 5, ptr %next_sequence99, align 4
  br label %while.cond.backedge

if.else31:                                        ; preds = %if.then21
  %32 = ptrtoint ptr %need_props to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %need_props, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool34.not = icmp eq i8 %33, 0
  br i1 %tobool34.not, label %if.else36, label %if.else31.cleanup_crit_edge

if.else31.cleanup_crit_edge:                      ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else36:                                        ; preds = %if.else31
  %34 = ptrtoint ptr %next_sequence99 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 6, ptr %next_sequence99, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -97, i8 %11)
  %cmp39 = icmp ugt i8 %11, -97
  br i1 %cmp39, label %if.then41, label %if.else36.while.cond.backedge_crit_edge

if.else36.while.cond.backedge_crit_edge:          ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.then41:                                        ; preds = %if.else36
  %35 = call ptr @memset(ptr %lzma.i.i, i32 0, i32 24)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then41
  %i.017.i = phi i32 [ 0, %if.then41 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx7.i = getelementptr i16, ptr %is_match.i.i, i32 %i.017.i
  %36 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1024, ptr %arrayidx7.i, align 2
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 14134
  br i1 %exitcond.not.i, label %lzma_reset.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

lzma_reset.exit:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %s, align 4
  %38 = ptrtoint ptr %code.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %code.i.i.i, align 4
  %39 = ptrtoint ptr %init_bytes_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 5, ptr %init_bytes_left.i.i.i, align 4
  br label %while.cond.backedge

if.else45:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp46 = icmp ugt i8 %11, 2
  br i1 %cmp46, label %if.else45.cleanup_crit_edge, label %if.end49

if.else45.cleanup_crit_edge:                      ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49:                                         ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %lzma2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3, ptr %lzma2, align 4
  %41 = ptrtoint ptr %next_sequence99 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 8, ptr %next_sequence99, align 4
  br label %while.cond.backedge

sw.bb55:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b, align 4
  %inc58 = add nuw i32 %2, 1
  %44 = ptrtoint ptr %in_pos to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %inc58, ptr %in_pos, align 4
  %arrayidx59 = getelementptr i8, ptr %43, i32 %2
  %45 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %46 to i32
  %shl61 = shl nuw nsw i32 %conv60, 8
  %47 = ptrtoint ptr %uncompressed129 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %uncompressed129, align 4
  %add = add i32 %shl61, %48
  store i32 %add, ptr %uncompressed129, align 4
  %49 = ptrtoint ptr %lzma2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %lzma2, align 4
  br label %while.cond.backedge

sw.bb66:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %b, align 4
  %inc69 = add nuw i32 %2, 1
  %52 = ptrtoint ptr %in_pos to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %inc69, ptr %in_pos, align 4
  %arrayidx70 = getelementptr i8, ptr %51, i32 %2
  %53 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %54 to i32
  %add72 = add nuw nsw i32 %conv71, 1
  %55 = ptrtoint ptr %uncompressed129 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %uncompressed129, align 4
  %add75 = add i32 %add72, %56
  store i32 %add75, ptr %uncompressed129, align 4
  %57 = ptrtoint ptr %lzma2 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 3, ptr %lzma2, align 4
  br label %while.cond.backedge

sw.bb78:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %b, align 4
  %inc81 = add nuw i32 %2, 1
  %60 = ptrtoint ptr %in_pos to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %inc81, ptr %in_pos, align 4
  %arrayidx82 = getelementptr i8, ptr %59, i32 %2
  %61 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %62 to i32
  %shl84 = shl nuw nsw i32 %conv83, 8
  %63 = ptrtoint ptr %compressed181 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %shl84, ptr %compressed181, align 4
  %64 = ptrtoint ptr %lzma2 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 4, ptr %lzma2, align 4
  br label %while.cond.backedge

sw.bb88:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b, align 4
  %inc91 = add nuw i32 %2, 1
  %67 = ptrtoint ptr %in_pos to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %inc91, ptr %in_pos, align 4
  %arrayidx92 = getelementptr i8, ptr %66, i32 %2
  %68 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %69 to i32
  %add94 = add nuw nsw i32 %conv93, 1
  %70 = ptrtoint ptr %compressed181 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %compressed181, align 4
  %add97 = add i32 %add94, %71
  store i32 %add97, ptr %compressed181, align 4
  %72 = ptrtoint ptr %next_sequence99 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %next_sequence99, align 4
  %74 = ptrtoint ptr %lzma2 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %lzma2, align 4
  br label %while.cond.backedge

sw.bb102:                                         ; preds = %while.body
  %75 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %b, align 4
  %inc105 = add nuw i32 %2, 1
  %77 = ptrtoint ptr %in_pos to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %inc105, ptr %in_pos, align 4
  %arrayidx106 = getelementptr i8, ptr %76, i32 %2
  %78 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx106, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %79)
  %cmp.i269 = icmp ugt i8 %79, -32
  br i1 %cmp.i269, label %sw.bb102.cleanup_crit_edge, label %if.end.i

sw.bb102.cleanup_crit_edge:                       ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %79)
  %cmp362.i = icmp ugt i8 %79, 44
  br i1 %cmp362.i, label %while.body.preheader.i, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.preheader.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = add i8 %79, -45
  %.frozen = freeze i8 %80
  %81 = udiv i8 %.frozen, 45
  %82 = mul i8 %81, 45
  %.decomposed = sub i8 %.frozen, %82
  %narrow74.i = add nuw nsw i8 %81, 1
  %83 = zext i8 %narrow74.i to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.preheader.i, %if.end.i.while.end.i_crit_edge
  %storemerge.lcssa61.i = phi i32 [ 0, %if.end.i.while.end.i_crit_edge ], [ %83, %while.body.preheader.i ]
  %props.addr.0.lcssa.i = phi i8 [ %79, %if.end.i.while.end.i_crit_edge ], [ %.decomposed, %while.body.preheader.i ]
  %notmask.i = shl nsw i32 -1, %storemerge.lcssa61.i
  %sub11.i = xor i32 %notmask.i, -1
  %84 = ptrtoint ptr %pos_mask.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %sub11.i, ptr %pos_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %props.addr.0.lcssa.i)
  %cmp1768.i = icmp ugt i8 %props.addr.0.lcssa.i, 8
  br i1 %cmp1768.i, label %while.body19.preheader.i, label %while.end.i.while.end26.i_crit_edge

while.end.i.while.end26.i_crit_edge:              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end26.i

while.body19.preheader.i:                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = add nsw i8 %props.addr.0.lcssa.i, -9
  %.frozen320 = freeze i8 %85
  %86 = udiv i8 %.frozen320, 9
  %87 = mul i8 %86, 9
  %.decomposed321 = sub i8 %.frozen320, %87
  %narrow.i = add nuw nsw i8 %86, 1
  %88 = zext i8 %narrow.i to i32
  br label %while.end26.i

while.end26.i:                                    ; preds = %while.body19.preheader.i, %while.end.i.while.end26.i_crit_edge
  %storemerge59.lcssa67.i = phi i32 [ 0, %while.end.i.while.end26.i_crit_edge ], [ %88, %while.body19.preheader.i ]
  %props.addr.1.lcssa.i = phi i8 [ %props.addr.0.lcssa.i, %while.end.i.while.end26.i_crit_edge ], [ %.decomposed321, %while.body19.preheader.i ]
  %89 = ptrtoint ptr %literal_pos_mask.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %storemerge59.lcssa67.i, ptr %literal_pos_mask.i, align 4
  %conv16.i = zext i8 %props.addr.1.lcssa.i to i32
  %90 = ptrtoint ptr %lc.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv16.i, ptr %lc.i, align 4
  %add.i = add nuw nsw i32 %storemerge59.lcssa67.i, %conv16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i)
  %cmp33.i = icmp ugt i32 %add.i, 4
  br i1 %cmp33.i, label %while.end26.i.cleanup_crit_edge, label %if.end36.i

while.end26.i.cleanup_crit_edge:                  ; preds = %while.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36.i:                                       ; preds = %while.end26.i
  %notmask60.i = shl nsw i32 -1, %storemerge59.lcssa67.i
  %sub40.i = xor i32 %notmask60.i, -1
  %91 = ptrtoint ptr %literal_pos_mask.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %sub40.i, ptr %literal_pos_mask.i, align 4
  %92 = call ptr @memset(ptr %lzma.i.i, i32 0, i32 24)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end36.i
  %i.017.i.i = phi i32 [ 0, %if.end36.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx7.i.i = getelementptr i16, ptr %is_match.i.i, i32 %i.017.i.i
  %93 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 1024, ptr %arrayidx7.i.i, align 2
  %inc.i.i = add nuw nsw i32 %i.017.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 14134
  br i1 %exitcond.not.i.i, label %if.end108, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.end108:                                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %s, align 4
  %95 = ptrtoint ptr %code.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %code.i.i.i, align 4
  %96 = ptrtoint ptr %init_bytes_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 5, ptr %init_bytes_left.i.i.i, align 4
  %97 = ptrtoint ptr %lzma2 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 6, ptr %lzma2, align 4
  br label %sw.bb111

sw.bb111:                                         ; preds = %if.end108, %while.body.sw.bb111_crit_edge
  %98 = ptrtoint ptr %compressed181 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %compressed181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %99)
  %cmp114 = icmp ult i32 %99, 5
  br i1 %cmp114, label %sw.bb111.cleanup_crit_edge, label %if.end117

sw.bb111.cleanup_crit_edge:                       ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end117:                                        ; preds = %sw.bb111
  %100 = ptrtoint ptr %init_bytes_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %init_bytes_left.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp.not11.i = icmp eq i32 %101, 0
  br i1 %cmp.not11.i, label %if.end117.if.end120_crit_edge, label %if.end117.while.body.i_crit_edge

if.end117.while.body.i_crit_edge:                 ; preds = %if.end117
  br label %while.body.i

if.end117.if.end120_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

while.body.i:                                     ; preds = %if.end.i272.while.body.i_crit_edge, %if.end117.while.body.i_crit_edge
  %102 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %in_pos, align 4
  %104 = ptrtoint ptr %in_size to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %in_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %105)
  %cmp1.i = icmp eq i32 %103, %105
  br i1 %cmp1.i, label %while.body.i.cleanup_crit_edge, label %if.end.i272

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i272:                                      ; preds = %while.body.i
  %106 = ptrtoint ptr %code.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %code.i.i.i, align 4
  %shl.i = shl i32 %107, 8
  %108 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %b, align 4
  %inc.i270 = add i32 %103, 1
  %110 = ptrtoint ptr %in_pos to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %inc.i270, ptr %in_pos, align 4
  %arrayidx.i = getelementptr i8, ptr %109, i32 %103
  %111 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %112 to i32
  %add.i271 = or i32 %shl.i, %conv.i
  store i32 %add.i271, ptr %code.i.i.i, align 4
  %113 = ptrtoint ptr %init_bytes_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %init_bytes_left.i.i.i, align 4
  %dec.i = add i32 %114, -1
  store i32 %dec.i, ptr %init_bytes_left.i.i.i, align 4
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end.i272.if.end120_crit_edge, label %if.end.i272.while.body.i_crit_edge

if.end.i272.while.body.i_crit_edge:               ; preds = %if.end.i272
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end.i272.if.end120_crit_edge:                  ; preds = %if.end.i272
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

if.end120:                                        ; preds = %if.end.i272.if.end120_crit_edge, %if.end117.if.end120_crit_edge
  %115 = ptrtoint ptr %compressed181 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %compressed181, align 4
  %sub = add i32 %116, -5
  store i32 %sub, ptr %compressed181, align 4
  %117 = ptrtoint ptr %lzma2 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 7, ptr %lzma2, align 4
  br label %sw.bb125

sw.bb125:                                         ; preds = %if.end120, %while.body.sw.bb125_crit_edge, %lor.rhs.sw.bb125_crit_edge
  %118 = ptrtoint ptr %out_size.i296 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %out_size.i296, align 4
  %120 = ptrtoint ptr %out_pos.i294 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %out_pos.i294, align 4
  %sub127 = sub i32 %119, %121
  %122 = ptrtoint ptr %uncompressed129 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %uncompressed129, align 4
  %124 = tail call i32 @llvm.umin.i32(i32 %sub127, i32 %123)
  %125 = ptrtoint ptr %end.i297 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %end.i297, align 4
  %127 = ptrtoint ptr %pos.i298 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pos.i298, align 4
  %sub.i274 = sub i32 %126, %128
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i274, i32 %124)
  %cmp.not.i275 = icmp ugt i32 %sub.i274, %124
  %add.i276 = add i32 %128, %124
  %spec.select.i = select i1 %cmp.not.i275, i32 %add.i276, i32 %126
  %129 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %spec.select.i, ptr %0, align 4
  %call133 = tail call fastcc zeroext i1 @lzma2_lzma(ptr noundef %s, ptr noundef %b)
  br i1 %call133, label %if.end135, label %sw.bb125.cleanup_crit_edge

sw.bb125.cleanup_crit_edge:                       ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end135:                                        ; preds = %sw.bb125
  %130 = ptrtoint ptr %pos.i298 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %pos.i298, align 4
  %132 = ptrtoint ptr %start.i301 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %start.i301, align 4
  %sub.i279 = sub i32 %131, %133
  %134 = ptrtoint ptr %mode.i299 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %mode.i299, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp.not.i281 = icmp eq i32 %135, 0
  br i1 %cmp.not.i281, label %if.end135.dict_flush.exit_crit_edge, label %if.then.i283

if.end135.dict_flush.exit_crit_edge:              ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %dict_flush.exit

if.then.i283:                                     ; preds = %if.end135
  %136 = ptrtoint ptr %end.i297 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %end.i297, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %137)
  %cmp2.i = icmp eq i32 %131, %137
  br i1 %cmp2.i, label %if.then3.i, label %if.then.i283.if.end.i285_crit_edge

if.then.i283.if.end.i285_crit_edge:               ; preds = %if.then.i283
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i285

if.then3.i:                                       ; preds = %if.then.i283
  call void @__sanitizer_cov_trace_pc() #9
  %138 = ptrtoint ptr %pos.i298 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %pos.i298, align 4
  br label %if.end.i285

if.end.i285:                                      ; preds = %if.then3.i, %if.then.i283.if.end.i285_crit_edge
  %139 = ptrtoint ptr %out.i300 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %out.i300, align 4
  %cmp5.not.i = icmp eq ptr %140, null
  br i1 %cmp5.not.i, label %if.end.i285.dict_flush.exit_crit_edge, label %if.then6.i

if.end.i285.dict_flush.exit_crit_edge:            ; preds = %if.end.i285
  call void @__sanitizer_cov_trace_pc() #9
  br label %dict_flush.exit

if.then6.i:                                       ; preds = %if.end.i285
  call void @__sanitizer_cov_trace_pc() #9
  %141 = ptrtoint ptr %out_pos.i294 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %out_pos.i294, align 4
  %add.ptr.i287 = getelementptr i8, ptr %140, i32 %142
  %143 = ptrtoint ptr %dict179 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dict179, align 4
  %add.ptr9.i = getelementptr i8, ptr %144, i32 %133
  %145 = call ptr @memcpy(ptr %add.ptr.i287, ptr %add.ptr9.i, i32 %sub.i279)
  br label %dict_flush.exit

dict_flush.exit:                                  ; preds = %if.then6.i, %if.end.i285.dict_flush.exit_crit_edge, %if.end135.dict_flush.exit_crit_edge
  %146 = ptrtoint ptr %pos.i298 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %pos.i298, align 4
  %148 = ptrtoint ptr %start.i301 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %start.i301, align 4
  %149 = ptrtoint ptr %out_pos.i294 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %out_pos.i294, align 4
  %add.i288 = add i32 %150, %sub.i279
  store i32 %add.i288, ptr %out_pos.i294, align 4
  %151 = ptrtoint ptr %uncompressed129 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %uncompressed129, align 4
  %sub140 = sub i32 %152, %sub.i279
  store i32 %sub140, ptr %uncompressed129, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %sub.i279)
  %cmp143 = icmp eq i32 %152, %sub.i279
  br i1 %cmp143, label %if.then145, label %if.else161

if.then145:                                       ; preds = %dict_flush.exit
  %153 = ptrtoint ptr %compressed181 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %compressed181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp148.not = icmp eq i32 %154, 0
  br i1 %cmp148.not, label %lor.lhs.false150, label %if.then145.cleanup_crit_edge

if.then145.cleanup_crit_edge:                     ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false150:                                 ; preds = %if.then145
  %155 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp151.not = icmp eq i32 %156, 0
  br i1 %cmp151.not, label %lor.lhs.false153, label %lor.lhs.false150.cleanup_crit_edge

lor.lhs.false150.cleanup_crit_edge:               ; preds = %lor.lhs.false150
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false153:                                 ; preds = %lor.lhs.false150
  %157 = ptrtoint ptr %code.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %code.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp.i290 = icmp eq i32 %158, 0
  br i1 %cmp.i290, label %if.end157, label %lor.lhs.false153.cleanup_crit_edge

lor.lhs.false153.cleanup_crit_edge:               ; preds = %lor.lhs.false153
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end157:                                        ; preds = %lor.lhs.false153
  call void @__sanitizer_cov_trace_pc() #9
  %159 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 -1, ptr %s, align 4
  %160 = ptrtoint ptr %code.i.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %code.i.i.i, align 4
  %161 = ptrtoint ptr %init_bytes_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 5, ptr %init_bytes_left.i.i.i, align 4
  %162 = ptrtoint ptr %lzma2 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %lzma2, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end187, %land.lhs.true.while.cond.backedge_crit_edge, %lor.lhs.false166.while.cond.backedge_crit_edge, %if.end157, %sw.bb88, %sw.bb78, %sw.bb66, %sw.bb55, %if.end49, %lzma_reset.exit, %if.else36.while.cond.backedge_crit_edge, %if.then27, %while.body.while.cond.backedge_crit_edge
  br label %while.cond

if.else161:                                       ; preds = %dict_flush.exit
  %163 = ptrtoint ptr %out_pos.i294 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %out_pos.i294, align 4
  %165 = ptrtoint ptr %out_size.i296 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %out_size.i296, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %166)
  %cmp164 = icmp eq i32 %164, %166
  br i1 %cmp164, label %if.else161.cleanup_crit_edge, label %lor.lhs.false166

if.else161.cleanup_crit_edge:                     ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false166:                                 ; preds = %if.else161
  %167 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %in_pos, align 4
  %169 = ptrtoint ptr %in_size to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %in_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %168, i32 %170)
  %cmp169 = icmp eq i32 %168, %170
  br i1 %cmp169, label %land.lhs.true, label %lor.lhs.false166.while.cond.backedge_crit_edge

lor.lhs.false166.while.cond.backedge_crit_edge:   ; preds = %lor.lhs.false166
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %lor.lhs.false166
  %171 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %temp, align 4
  %173 = ptrtoint ptr %compressed181 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %compressed181, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %172, i32 %174)
  %cmp173 = icmp ult i32 %172, %174
  br i1 %cmp173, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.while.cond.backedge_crit_edge

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb178:                                         ; preds = %while.body
  %175 = ptrtoint ptr %compressed181 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %compressed181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp.not95.i = icmp eq i32 %176, 0
  br i1 %cmp.not95.i, label %sw.bb178.if.end187_crit_edge, label %sw.bb178.land.lhs.true.i_crit_edge

sw.bb178.land.lhs.true.i_crit_edge:               ; preds = %sw.bb178
  br label %land.lhs.true.i

sw.bb178.if.end187_crit_edge:                     ; preds = %sw.bb178
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end187

land.lhs.true.i:                                  ; preds = %if.end41.i.land.lhs.true.i_crit_edge, %sw.bb178.land.lhs.true.i_crit_edge
  %177 = phi i32 [ %228, %if.end41.i.land.lhs.true.i_crit_edge ], [ %176, %sw.bb178.land.lhs.true.i_crit_edge ]
  %178 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %in_pos, align 4
  %180 = ptrtoint ptr %in_size to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %in_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %181, i32 %179)
  %cmp1.i302 = icmp ugt i32 %181, %179
  br i1 %cmp1.i302, label %land.rhs.i, label %land.lhs.true.i.dict_uncompressed.exit_crit_edge

land.lhs.true.i.dict_uncompressed.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dict_uncompressed.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %182 = ptrtoint ptr %out_pos.i294 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %out_pos.i294, align 4
  %184 = ptrtoint ptr %out_size.i296 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %out_size.i296, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %185, i32 %183)
  %cmp2.i303 = icmp ugt i32 %185, %183
  br i1 %cmp2.i303, label %while.body.i307, label %land.rhs.i.dict_uncompressed.exit_crit_edge

land.rhs.i.dict_uncompressed.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dict_uncompressed.exit

while.body.i307:                                  ; preds = %land.rhs.i
  %sub.i304 = sub i32 %181, %179
  %sub7.i = sub i32 %185, %183
  %186 = tail call i32 @llvm.umin.i32(i32 %sub.i304, i32 %sub7.i) #7
  %187 = ptrtoint ptr %end.i297 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %end.i297, align 4
  %189 = ptrtoint ptr %pos.i298 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %pos.i298, align 4
  %sub9.i = sub i32 %188, %190
  %191 = tail call i32 @llvm.umin.i32(i32 %186, i32 %sub9.i) #7
  %192 = tail call i32 @llvm.umin.i32(i32 %191, i32 %177) #7
  %sub17.i = sub i32 %177, %192
  %193 = ptrtoint ptr %compressed181 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %sub17.i, ptr %compressed181, align 4
  %194 = ptrtoint ptr %dict179 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dict179, align 4
  %add.ptr.i305 = getelementptr i8, ptr %195, i32 %190
  %196 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %b, align 4
  %198 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %in_pos, align 4
  %add.ptr20.i = getelementptr i8, ptr %197, i32 %199
  %200 = call ptr @memmove(ptr %add.ptr.i305, ptr %add.ptr20.i, i32 %192)
  %201 = ptrtoint ptr %pos.i298 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %pos.i298, align 4
  %add.i306 = add i32 %202, %192
  store i32 %add.i306, ptr %pos.i298, align 4
  %203 = ptrtoint ptr %full.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %full.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %204, i32 %add.i306)
  %cmp23.i = icmp ult i32 %204, %add.i306
  br i1 %cmp23.i, label %if.then24.i, label %while.body.i307.if.end27.i_crit_edge

while.body.i307.if.end27.i_crit_edge:             ; preds = %while.body.i307
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then24.i:                                      ; preds = %while.body.i307
  call void @__sanitizer_cov_trace_pc() #9
  %205 = ptrtoint ptr %full.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %add.i306, ptr %full.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %while.body.i307.if.end27.i_crit_edge
  %206 = ptrtoint ptr %mode.i299 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %mode.i299, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp28.not.i = icmp eq i32 %207, 0
  br i1 %cmp28.not.i, label %if.end27.i.if.end41.i_crit_edge, label %if.then29.i

if.end27.i.if.end41.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

if.then29.i:                                      ; preds = %if.end27.i
  %208 = ptrtoint ptr %end.i297 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %end.i297, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i306, i32 %209)
  %cmp32.i = icmp eq i32 %add.i306, %209
  br i1 %cmp32.i, label %if.then33.i, label %if.then29.i.if.end35.i_crit_edge

if.then29.i.if.end35.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.then33.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  %210 = ptrtoint ptr %pos.i298 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 0, ptr %pos.i298, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then33.i, %if.then29.i.if.end35.i_crit_edge
  %211 = ptrtoint ptr %out.i300 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %out.i300, align 4
  %213 = ptrtoint ptr %out_pos.i294 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %out_pos.i294, align 4
  %add.ptr37.i = getelementptr i8, ptr %212, i32 %214
  %215 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %b, align 4
  %217 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %in_pos, align 4
  %add.ptr40.i = getelementptr i8, ptr %216, i32 %218
  %219 = call ptr @memmove(ptr %add.ptr37.i, ptr %add.ptr40.i, i32 %192)
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.end35.i, %if.end27.i.if.end41.i_crit_edge
  %220 = ptrtoint ptr %pos.i298 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %pos.i298, align 4
  %222 = ptrtoint ptr %start.i301 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %start.i301, align 4
  %223 = ptrtoint ptr %out_pos.i294 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %out_pos.i294, align 4
  %add44.i = add i32 %224, %192
  store i32 %add44.i, ptr %out_pos.i294, align 4
  %225 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %in_pos, align 4
  %add46.i = add i32 %226, %192
  store i32 %add46.i, ptr %in_pos, align 4
  %227 = ptrtoint ptr %compressed181 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %compressed181, align 4
  %cmp.not.i308 = icmp eq i32 %228, 0
  br i1 %cmp.not.i308, label %if.end41.i.if.end187_crit_edge, label %if.end41.i.land.lhs.true.i_crit_edge

if.end41.i.land.lhs.true.i_crit_edge:             ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.end41.i.if.end187_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end187

dict_uncompressed.exit:                           ; preds = %land.rhs.i.dict_uncompressed.exit_crit_edge, %land.lhs.true.i.dict_uncompressed.exit_crit_edge
  %229 = ptrtoint ptr %compressed181 to i32
  call void @__asan_load4_noabort(i32 %229)
  %.pr = load i32, ptr %compressed181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp184.not = icmp eq i32 %.pr, 0
  br i1 %cmp184.not, label %dict_uncompressed.exit.if.end187_crit_edge, label %dict_uncompressed.exit.cleanup_crit_edge

dict_uncompressed.exit.cleanup_crit_edge:         ; preds = %dict_uncompressed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dict_uncompressed.exit.if.end187_crit_edge:       ; preds = %dict_uncompressed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end187

if.end187:                                        ; preds = %dict_uncompressed.exit.if.end187_crit_edge, %if.end41.i.if.end187_crit_edge, %sw.bb178.if.end187_crit_edge
  %230 = ptrtoint ptr %lzma2 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 0, ptr %lzma2, align 4
  br label %while.cond.backedge

cleanup:                                          ; preds = %dict_uncompressed.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else161.cleanup_crit_edge, %lor.lhs.false153.cleanup_crit_edge, %lor.lhs.false150.cleanup_crit_edge, %if.then145.cleanup_crit_edge, %sw.bb125.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %sw.bb111.cleanup_crit_edge, %while.end26.i.cleanup_crit_edge, %sw.bb102.cleanup_crit_edge, %if.else45.cleanup_crit_edge, %if.else31.cleanup_crit_edge, %if.else.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.body.i.cleanup_crit_edge ], [ 7, %while.end26.i.cleanup_crit_edge ], [ 7, %sw.bb102.cleanup_crit_edge ], [ 0, %lor.rhs.cleanup_crit_edge ], [ 0, %dict_uncompressed.exit.cleanup_crit_edge ], [ 0, %if.else161.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 7, %if.then145.cleanup_crit_edge ], [ 7, %lor.lhs.false150.cleanup_crit_edge ], [ 7, %lor.lhs.false153.cleanup_crit_edge ], [ 7, %sw.bb125.cleanup_crit_edge ], [ 7, %sw.bb111.cleanup_crit_edge ], [ 7, %if.else45.cleanup_crit_edge ], [ 7, %if.else31.cleanup_crit_edge ], [ 7, %if.else.cleanup_crit_edge ], [ 1, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @lzma2_lzma(ptr noundef %s, ptr nocapture noundef %b) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %in_size = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 2
  %0 = ptrtoint ptr %in_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in_size, align 4
  %in_pos = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in_pos, align 4
  %sub = sub i32 %1, %3
  %temp = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 4
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %compressed = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %compressed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %compressed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1 = icmp eq i32 %7, 0
  br i1 %cmp1, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end117_crit_edge

lor.lhs.false.if.end117_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %sub4 = sub i32 42, %5
  %compressed6 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %compressed6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %compressed6, align 4
  %sub9 = sub i32 %9, %5
  %10 = tail call i32 @llvm.umin.i32(i32 %sub4, i32 %sub9)
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 %sub)
  %buf = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 4, i32 1
  %add.ptr = getelementptr i8, ptr %buf, i32 %5
  %12 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b, align 4
  %add.ptr24 = getelementptr i8, ptr %13, i32 %3
  %14 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr24, i32 %11)
  %15 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %temp, align 4
  %add = add i32 %16, %11
  %17 = ptrtoint ptr %compressed6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %compressed6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %18)
  %cmp29 = icmp eq i32 %add, %18
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr36 = getelementptr i8, ptr %buf, i32 %16
  %add.ptr37 = getelementptr i8, ptr %add.ptr36, i32 %11
  %sub41 = sub i32 63, %add
  %19 = call ptr @memset(ptr %add.ptr37, i32 0, i32 %sub41)
  %20 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %temp, align 4
  %add44 = add i32 %21, %11
  br label %if.end63

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %add)
  %cmp48 = icmp ult i32 %add, 21
  br i1 %cmp48, label %if.then49, label %if.else55

if.then49:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %temp, align 4
  %23 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %in_pos, align 4
  %add54 = add i32 %24, %11
  store i32 %add54, ptr %in_pos, align 4
  br label %cleanup

if.else55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sub59 = add i32 %add, -21
  br label %if.end63

if.end63:                                         ; preds = %if.else55, %if.then30
  %sub59.sink = phi i32 [ %sub59, %if.else55 ], [ %add44, %if.then30 ]
  %in_limit61 = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 5
  %25 = ptrtoint ptr %in_limit61 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub59.sink, ptr %in_limit61, align 4
  %in68 = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 3
  %26 = ptrtoint ptr %in68 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buf, ptr %in68, align 4
  %in_pos70 = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 4
  %27 = ptrtoint ptr %in_pos70 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %in_pos70, align 4
  %call = tail call fastcc zeroext i1 @lzma_main(ptr noundef %s)
  br i1 %call, label %lor.lhs.false71, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false71:                                  ; preds = %if.end63
  %28 = ptrtoint ptr %in_pos70 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %in_pos70, align 4
  %30 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %temp, align 4
  %add76 = add i32 %31, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %add76)
  %cmp77 = icmp ugt i32 %29, %add76
  br i1 %cmp77, label %lor.lhs.false71.cleanup_crit_edge, label %if.end79

lor.lhs.false71.cleanup_crit_edge:                ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end79:                                         ; preds = %lor.lhs.false71
  %32 = ptrtoint ptr %compressed6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %compressed6, align 4
  %sub84 = sub i32 %33, %29
  store i32 %sub84, ptr %compressed6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp89 = icmp ugt i32 %31, %29
  br i1 %cmp89, label %if.then90, label %if.end107

if.then90:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %sub95 = sub i32 %31, %29
  %34 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub95, ptr %temp, align 4
  %add.ptr104 = getelementptr i8, ptr %buf, i32 %29
  %35 = call ptr @memmove(ptr %buf, ptr %add.ptr104, i32 %sub95)
  br label %cleanup

if.end107:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %sub112 = sub i32 %29, %31
  %36 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %in_pos, align 4
  %add114 = add i32 %sub112, %37
  store i32 %add114, ptr %in_pos, align 4
  %38 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %temp, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.end107, %lor.lhs.false.if.end117_crit_edge
  %39 = ptrtoint ptr %in_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %in_size, align 4
  %41 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %in_pos, align 4
  %sub120 = sub i32 %40, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub120)
  %cmp121 = icmp ugt i32 %sub120, 20
  br i1 %cmp121, label %if.then122, label %if.end117.if.end164_crit_edge

if.end117.if.end164_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164

if.then122:                                       ; preds = %if.end117
  %43 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %b, align 4
  %in125 = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 3
  %45 = ptrtoint ptr %in125 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %in125, align 4
  %46 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %in_pos, align 4
  %in_pos128 = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 4
  %48 = ptrtoint ptr %in_pos128 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %in_pos128, align 4
  %compressed130 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 2, i32 3
  %49 = ptrtoint ptr %compressed130 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %compressed130, align 4
  %add131 = add i32 %50, 21
  call void @__sanitizer_cov_trace_cmp4(i32 %sub120, i32 %add131)
  %cmp132.not = icmp ult i32 %sub120, %add131
  %in_size.in_pos = select i1 %cmp132.not, ptr %in_size, ptr %in_pos
  %. = select i1 %cmp132.not, i32 -21, i32 %50
  %51 = ptrtoint ptr %in_size.in_pos to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %in_size.in_pos, align 4
  %sub142 = add i32 %52, %.
  %53 = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 5
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub142, ptr %53, align 4
  %call146 = tail call fastcc zeroext i1 @lzma_main(ptr noundef %s)
  br i1 %call146, label %if.end148, label %if.then122.cleanup_crit_edge

if.then122.cleanup_crit_edge:                     ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end148:                                        ; preds = %if.then122
  %55 = ptrtoint ptr %in_pos128 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %in_pos128, align 4
  %57 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %in_pos, align 4
  %sub152 = sub i32 %56, %58
  %59 = ptrtoint ptr %compressed130 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %compressed130, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %sub152)
  %cmp155 = icmp ult i32 %60, %sub152
  br i1 %cmp155, label %if.end148.cleanup_crit_edge, label %if.end157

if.end148.cleanup_crit_edge:                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end157:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  %sub160 = sub i32 %60, %sub152
  %61 = ptrtoint ptr %compressed130 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub160, ptr %compressed130, align 4
  %62 = ptrtoint ptr %in_pos to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %56, ptr %in_pos, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.end157, %if.end117.if.end164_crit_edge
  %63 = ptrtoint ptr %in_size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %in_size, align 4
  %65 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %in_pos, align 4
  %sub167 = sub i32 %64, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %sub167)
  %cmp168 = icmp ult i32 %sub167, 21
  br i1 %cmp168, label %if.then169, label %if.end164.cleanup_crit_edge

if.end164.cleanup_crit_edge:                      ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then169:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #9
  %compressed171 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 2, i32 3
  %67 = ptrtoint ptr %compressed171 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %compressed171, align 4
  %69 = tail call i32 @llvm.umin.i32(i32 %sub167, i32 %68)
  %buf178 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %b, align 4
  %add.ptr182 = getelementptr i8, ptr %71, i32 %66
  %72 = call ptr @memcpy(ptr %buf178, ptr %add.ptr182, i32 %69)
  %73 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %69, ptr %temp, align 4
  %74 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %in_pos, align 4
  %add186 = add i32 %75, %69
  store i32 %add186, ptr %in_pos, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then169, %if.end164.cleanup_crit_edge, %if.end148.cleanup_crit_edge, %if.then122.cleanup_crit_edge, %if.then90, %lor.lhs.false71.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.then49
  %retval.0 = phi i1 [ true, %if.then90 ], [ true, %if.then49 ], [ false, %lor.lhs.false71.cleanup_crit_edge ], [ false, %if.end63.cleanup_crit_edge ], [ false, %if.then122.cleanup_crit_edge ], [ false, %if.end148.cleanup_crit_edge ], [ true, %if.then169 ], [ true, %if.end164.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xz_dec_lzma2_create(i32 noundef %mode, i32 noundef %dict_max) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 28456, i32 noundef 3264, i32 noundef 3) #10
  %cmp = icmp eq ptr %call1.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dict = getelementptr inbounds %struct.xz_dec_lzma2, ptr %call1.i.i, i32 0, i32 1
  %mode1 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %call1.i.i, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mode, ptr %mode1, align 4
  %size_max = getelementptr inbounds %struct.xz_dec_lzma2, ptr %call1.i.i, i32 0, i32 1, i32 7
  %1 = ptrtoint ptr %size_max to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %dict_max, ptr %size_max, align 4
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %mode, label %if.end.cleanup_crit_edge [
    i32 1, label %if.then4
    i32 2, label %if.then13
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %call5 = tail call noalias ptr @vmalloc(i32 noundef %dict_max) #10
  %3 = ptrtoint ptr %dict to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %dict, align 8
  %cmp9 = icmp eq ptr %call5, null
  br i1 %cmp9, label %if.then10, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call1.i.i) #7
  br label %cleanup

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dict to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dict, align 8
  %allocated = getelementptr inbounds %struct.xz_dec_lzma2, ptr %call1.i.i, i32 0, i32 1, i32 8
  %5 = ptrtoint ptr %allocated to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %allocated, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.then10, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then10 ], [ null, %entry.cleanup_crit_edge ], [ %call1.i.i, %if.end.cleanup_crit_edge ], [ %call1.i.i, %if.then13 ], [ %call1.i.i, %if.then4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xz_dec_lzma2_reset(ptr nocapture noundef %s, i8 noundef zeroext %props) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 39, i8 %props)
  %cmp = icmp ugt i8 %props, 39
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %conv = zext i8 %props to i32
  %and = and i32 %conv, 1
  %add = or i32 %and, 2
  %dict = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1
  %size = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1, i32 6
  %0 = lshr i32 %conv, 1
  %add4 = add nuw nsw i32 %0, 11
  %shl = shl i32 %add, %add4
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %shl, ptr %size, align 4
  %mode = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1, i32 9
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.not = icmp eq i32 %3, 0
  br i1 %cmp8.not, label %if.end.if.end51_crit_edge, label %if.then10

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then10:                                        ; preds = %if.end
  %size_max = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %size_max to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %5)
  %cmp14 = icmp ugt i32 %shl, %5
  br i1 %cmp14, label %if.then10.return_crit_edge, label %if.end17

if.then10.return_crit_edge:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end17:                                         ; preds = %if.then10
  %end = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shl, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp23 = icmp eq i32 %3, 2
  br i1 %cmp23, label %if.then25, label %if.end17.if.end51_crit_edge

if.end17.if.end51_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then25:                                        ; preds = %if.end17
  %allocated = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1, i32 8
  %7 = ptrtoint ptr %allocated to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %allocated, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %shl)
  %cmp29 = icmp ult i32 %8, %shl
  br i1 %cmp29, label %if.then31, label %if.then25.if.end51_crit_edge

if.then25.if.end51_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then31:                                        ; preds = %if.then25
  %9 = ptrtoint ptr %allocated to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shl, ptr %allocated, align 4
  %10 = ptrtoint ptr %dict to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dict, align 4
  tail call void @vfree(ptr noundef %11) #7
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 4
  %call = tail call noalias ptr @vmalloc(i32 noundef %13) #10
  %14 = ptrtoint ptr %dict to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %dict, align 4
  %cmp43 = icmp eq ptr %call, null
  br i1 %cmp43, label %if.then31.return.sink.split_crit_edge, label %if.then31.if.end51_crit_edge

if.then31.if.end51_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then31.return.sink.split_crit_edge:            ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split

if.end51:                                         ; preds = %if.then31.if.end51_crit_edge, %if.then25.if.end51_crit_edge, %if.end17.if.end51_crit_edge, %if.end.if.end51_crit_edge
  %lzma2 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 2
  %15 = ptrtoint ptr %lzma2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %lzma2, align 4
  %need_dict_reset = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %need_dict_reset to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %need_dict_reset, align 4
  %temp = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 4
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end51, %if.then31.return.sink.split_crit_edge
  %temp.sink = phi ptr [ %temp, %if.end51 ], [ %allocated, %if.then31.return.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end51 ], [ 3, %if.then31.return.sink.split_crit_edge ]
  %17 = ptrtoint ptr %temp.sink to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %temp.sink, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.then10.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 6, %entry.return_crit_edge ], [ 4, %if.then10.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xz_dec_lzma2_end(ptr noundef %s) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dict = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %dict to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dict, align 4
  tail call void @vfree(ptr noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %s) #7
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xz_dec_microlzma_run(ptr noundef %s_ptr, ptr nocapture noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lzma2 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 2
  %0 = ptrtoint ptr %lzma2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lzma2, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %1, label %entry.if.end14_crit_edge [
    i32 7, label %entry.if.end31_crit_edge
    i32 5, label %if.then5
  ]

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then5:                                         ; preds = %entry
  %in_pos = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 1
  %3 = ptrtoint ptr %in_pos to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %in_pos, align 4
  %in_size = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 2
  %5 = ptrtoint ptr %in_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %in_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp6.not = icmp ult i32 %4, %6
  br i1 %cmp6.not, label %if.end, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then5
  %7 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b, align 4
  %arrayidx = getelementptr i8, ptr %8, i32 %4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %10)
  %cmp.i = icmp ult i8 %10, 31
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %neg = xor i8 %10, -1
  %pos_mask.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 3, i32 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -45, i8 %10)
  %cmp362.i = icmp ult i8 %10, -45
  br i1 %cmp362.i, label %while.body.preheader.i, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.preheader.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = sub nuw i8 -46, %10
  %.frozen = freeze i8 %11
  %12 = udiv i8 %.frozen, 45
  %13 = mul i8 %12, 45
  %.decomposed = sub i8 %.frozen, %13
  %narrow74.i = add nuw nsw i8 %12, 1
  %14 = zext i8 %narrow74.i to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.preheader.i, %if.end.i.while.end.i_crit_edge
  %storemerge.lcssa61.i = phi i32 [ 0, %if.end.i.while.end.i_crit_edge ], [ %14, %while.body.preheader.i ]
  %props.addr.0.lcssa.i = phi i8 [ %neg, %if.end.i.while.end.i_crit_edge ], [ %.decomposed, %while.body.preheader.i ]
  %notmask.i = shl nsw i32 -1, %storemerge.lcssa61.i
  %sub11.i = xor i32 %notmask.i, -1
  %15 = ptrtoint ptr %pos_mask.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub11.i, ptr %pos_mask.i, align 4
  %literal_pos_mask.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 3, i32 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %props.addr.0.lcssa.i)
  %cmp1768.i = icmp ugt i8 %props.addr.0.lcssa.i, 8
  br i1 %cmp1768.i, label %while.body19.preheader.i, label %while.end.i.while.end26.i_crit_edge

while.end.i.while.end26.i_crit_edge:              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end26.i

while.body19.preheader.i:                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = add nsw i8 %props.addr.0.lcssa.i, -9
  %.frozen164 = freeze i8 %16
  %17 = udiv i8 %.frozen164, 9
  %18 = mul i8 %17, 9
  %.decomposed165 = sub i8 %.frozen164, %18
  %narrow.i = add nuw nsw i8 %17, 1
  %19 = zext i8 %narrow.i to i32
  br label %while.end26.i

while.end26.i:                                    ; preds = %while.body19.preheader.i, %while.end.i.while.end26.i_crit_edge
  %storemerge59.lcssa67.i = phi i32 [ 0, %while.end.i.while.end26.i_crit_edge ], [ %19, %while.body19.preheader.i ]
  %props.addr.1.lcssa.i = phi i8 [ %props.addr.0.lcssa.i, %while.end.i.while.end26.i_crit_edge ], [ %.decomposed165, %while.body19.preheader.i ]
  %20 = ptrtoint ptr %literal_pos_mask.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge59.lcssa67.i, ptr %literal_pos_mask.i, align 4
  %conv16.i = zext i8 %props.addr.1.lcssa.i to i32
  %lc.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 3, i32 6
  %21 = ptrtoint ptr %lc.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv16.i, ptr %lc.i, align 4
  %add.i = add nuw nsw i32 %storemerge59.lcssa67.i, %conv16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i)
  %cmp33.i = icmp ugt i32 %add.i, 4
  br i1 %cmp33.i, label %while.end26.i.cleanup_crit_edge, label %if.end36.i

while.end26.i.cleanup_crit_edge:                  ; preds = %while.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36.i:                                       ; preds = %while.end26.i
  %notmask60.i = shl nsw i32 -1, %storemerge59.lcssa67.i
  %sub40.i = xor i32 %notmask60.i, -1
  %22 = ptrtoint ptr %literal_pos_mask.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub40.i, ptr %literal_pos_mask.i, align 4
  %lzma.i.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 3
  %is_match.i.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 3, i32 9
  %23 = call ptr @memset(ptr %lzma.i.i, i32 0, i32 24)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end36.i
  %i.017.i.i = phi i32 [ 0, %if.end36.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx7.i.i = getelementptr i16, ptr %is_match.i.i, i32 %i.017.i.i
  %24 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1024, ptr %arrayidx7.i.i, align 2
  %inc.i.i = add nuw nsw i32 %i.017.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 14134
  br i1 %exitcond.not.i.i, label %if.end11, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.end11:                                         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %s_ptr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %s_ptr, align 4
  %code.i.i.i = getelementptr inbounds %struct.rc_dec, ptr %s_ptr, i32 0, i32 1
  %26 = ptrtoint ptr %code.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %code.i.i.i, align 4
  %init_bytes_left.i.i.i = getelementptr inbounds %struct.rc_dec, ptr %s_ptr, i32 0, i32 2
  %27 = ptrtoint ptr %init_bytes_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 5, ptr %init_bytes_left.i.i.i, align 4
  %28 = ptrtoint ptr %lzma2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 6, ptr %lzma2, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end11, %entry.if.end14_crit_edge
  %compressed = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %compressed to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %compressed, align 4
  %31 = add i32 %30, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741828, i32 %31)
  %32 = icmp ult i32 %31, 1073741828
  br i1 %32, label %if.end14.cleanup_crit_edge, label %if.end23

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %in_pos.i = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 1
  %init_bytes_left.i = getelementptr inbounds %struct.rc_dec, ptr %s_ptr, i32 0, i32 2
  %33 = ptrtoint ptr %init_bytes_left.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %init_bytes_left.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.not11.i = icmp eq i32 %34, 0
  br i1 %cmp.not11.i, label %if.end23.if.end26_crit_edge, label %while.body.lr.ph.i

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

while.body.lr.ph.i:                               ; preds = %if.end23
  %in_size.i = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 2
  %code.i = getelementptr inbounds %struct.rc_dec, ptr %s_ptr, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i135.while.body.i_crit_edge, %while.body.lr.ph.i
  %35 = ptrtoint ptr %in_pos.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %in_pos.i, align 4
  %37 = ptrtoint ptr %in_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %in_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp1.i = icmp eq i32 %36, %38
  br i1 %cmp1.i, label %while.body.i.cleanup_crit_edge, label %if.end.i135

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i135:                                      ; preds = %while.body.i
  %39 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %code.i, align 4
  %shl.i = shl i32 %40, 8
  %41 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b, align 4
  %inc.i = add i32 %36, 1
  %43 = ptrtoint ptr %in_pos.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %inc.i, ptr %in_pos.i, align 4
  %arrayidx.i = getelementptr i8, ptr %42, i32 %36
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %45 to i32
  %add.i134 = or i32 %shl.i, %conv.i
  store i32 %add.i134, ptr %code.i, align 4
  %46 = ptrtoint ptr %init_bytes_left.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %init_bytes_left.i, align 4
  %dec.i = add i32 %47, -1
  store i32 %dec.i, ptr %init_bytes_left.i, align 4
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end.i135.if.end26_crit_edge, label %if.end.i135.while.body.i_crit_edge

if.end.i135.while.body.i_crit_edge:               ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end.i135.if.end26_crit_edge:                   ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.end26:                                         ; preds = %if.end.i135.if.end26_crit_edge, %if.end23.if.end26_crit_edge
  %48 = ptrtoint ptr %compressed to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %compressed, align 4
  %sub = add i32 %49, -5
  store i32 %sub, ptr %compressed, align 4
  %50 = ptrtoint ptr %lzma2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 7, ptr %lzma2, align 4
  %mode.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 1, i32 9
  %51 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i136 = icmp eq i32 %52, 0
  br i1 %cmp.i136, label %if.then.i, label %if.end26.dict_reset.exit_crit_edge

if.end26.dict_reset.exit_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %dict_reset.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %dict = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 1
  %out.i = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 3
  %53 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %out.i, align 4
  %out_pos.i = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 4
  %55 = ptrtoint ptr %out_pos.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %out_pos.i, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 %56
  %57 = ptrtoint ptr %dict to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr.i, ptr %dict, align 4
  %out_size.i = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 5
  %58 = ptrtoint ptr %out_size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %out_size.i, align 4
  %60 = load i32, ptr %out_pos.i, align 4
  %sub.i = sub i32 %59, %60
  %end.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 1, i32 5
  %61 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub.i, ptr %end.i, align 4
  br label %dict_reset.exit

dict_reset.exit:                                  ; preds = %if.then.i, %if.end26.dict_reset.exit_crit_edge
  %start.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 1, i32 1
  %62 = call ptr @memset(ptr %start.i, i32 0, i32 16)
  br label %if.end31

if.end31:                                         ; preds = %dict_reset.exit, %entry.if.end31_crit_edge
  %dict32 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 1
  %mode = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 1, i32 9
  %63 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp33 = icmp eq i32 %64, 0
  br i1 %cmp33, label %if.then35, label %if.end31.if.end38_crit_edge

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %out_size = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 5
  %65 = ptrtoint ptr %out_size to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %out_size, align 4
  %out_pos = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 4
  %67 = ptrtoint ptr %out_pos to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %out_pos, align 4
  %sub36 = sub i32 %66, %68
  %end = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 1, i32 5
  %69 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub36, ptr %end, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end31.if.end38_crit_edge
  %out_size40 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 5
  %out_pos41 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 4
  %uncompressed = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 2, i32 2
  %end.i138 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 1, i32 5
  %pos.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 1, i32 2
  %70 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 1, i32 4
  %start.i143 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 1, i32 1
  %out.i149 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 3
  %in_pos81 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 1
  %in_size82 = getelementptr inbounds %struct.xz_buf, ptr %b, i32 0, i32 2
  %temp = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 4
  %compressed86 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 2, i32 3
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end38
  %71 = ptrtoint ptr %out_size40 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %out_size40, align 4
  %73 = ptrtoint ptr %out_pos41 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %out_pos41, align 4
  %sub42 = sub i32 %72, %74
  %75 = ptrtoint ptr %uncompressed to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %uncompressed, align 4
  %77 = tail call i32 @llvm.umin.i32(i32 %sub42, i32 %76)
  %78 = ptrtoint ptr %end.i138 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %end.i138, align 4
  %80 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pos.i, align 4
  %sub.i139 = sub i32 %79, %81
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i139, i32 %77)
  %cmp.not.i140 = icmp ugt i32 %sub.i139, %77
  %add.i141 = add i32 %81, %77
  %spec.select.i = select i1 %cmp.not.i140, i32 %add.i141, i32 %79
  %82 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %spec.select.i, ptr %70, align 4
  %call46 = tail call fastcc zeroext i1 @lzma2_lzma(ptr noundef %s_ptr, ptr noundef %b)
  br i1 %call46, label %if.end48, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end48:                                         ; preds = %while.cond
  %83 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pos.i, align 4
  %85 = ptrtoint ptr %start.i143 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %start.i143, align 4
  %sub.i144 = sub i32 %84, %86
  %87 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.not.i146 = icmp eq i32 %88, 0
  br i1 %cmp.not.i146, label %if.end48.dict_flush.exit_crit_edge, label %if.then.i148

if.end48.dict_flush.exit_crit_edge:               ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %dict_flush.exit

if.then.i148:                                     ; preds = %if.end48
  %89 = ptrtoint ptr %end.i138 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %end.i138, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %90)
  %cmp2.i = icmp eq i32 %84, %90
  br i1 %cmp2.i, label %if.then3.i, label %if.then.i148.if.end.i150_crit_edge

if.then.i148.if.end.i150_crit_edge:               ; preds = %if.then.i148
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i150

if.then3.i:                                       ; preds = %if.then.i148
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %pos.i, align 4
  br label %if.end.i150

if.end.i150:                                      ; preds = %if.then3.i, %if.then.i148.if.end.i150_crit_edge
  %92 = ptrtoint ptr %out.i149 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %out.i149, align 4
  %cmp5.not.i = icmp eq ptr %93, null
  br i1 %cmp5.not.i, label %if.end.i150.dict_flush.exit_crit_edge, label %if.then6.i

if.end.i150.dict_flush.exit_crit_edge:            ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #9
  br label %dict_flush.exit

if.then6.i:                                       ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %out_pos41 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %out_pos41, align 4
  %add.ptr.i152 = getelementptr i8, ptr %93, i32 %95
  %96 = ptrtoint ptr %dict32 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dict32, align 4
  %add.ptr9.i = getelementptr i8, ptr %97, i32 %86
  %98 = call ptr @memcpy(ptr %add.ptr.i152, ptr %add.ptr9.i, i32 %sub.i144)
  br label %dict_flush.exit

dict_flush.exit:                                  ; preds = %if.then6.i, %if.end.i150.dict_flush.exit_crit_edge, %if.end48.dict_flush.exit_crit_edge
  %99 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pos.i, align 4
  %101 = ptrtoint ptr %start.i143 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %start.i143, align 4
  %102 = ptrtoint ptr %out_pos41 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %out_pos41, align 4
  %add.i153 = add i32 %103, %sub.i144
  store i32 %add.i153, ptr %out_pos41, align 4
  %104 = ptrtoint ptr %uncompressed to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %uncompressed, align 4
  %sub53 = sub i32 %105, %sub.i144
  store i32 %sub53, ptr %uncompressed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %sub.i144)
  %cmp56 = icmp eq i32 %105, %sub.i144
  br i1 %cmp56, label %if.then58, label %if.end74

if.then58:                                        ; preds = %dict_flush.exit
  %pedantic_microlzma = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 2, i32 6
  %106 = ptrtoint ptr %pedantic_microlzma to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %pedantic_microlzma, align 2, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool.not = icmp eq i8 %107, 0
  br i1 %tobool.not, label %if.then58.if.end73_crit_edge, label %if.then60

if.then58.if.end73_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then60:                                        ; preds = %if.then58
  %108 = ptrtoint ptr %compressed86 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %compressed86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp63.not = icmp eq i32 %109, 0
  br i1 %cmp63.not, label %lor.lhs.false65, label %if.then60.cleanup_crit_edge

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false65:                                  ; preds = %if.then60
  %len = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s_ptr, i32 0, i32 3, i32 5
  %110 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp66.not = icmp eq i32 %111, 0
  br i1 %cmp66.not, label %lor.lhs.false68, label %lor.lhs.false65.cleanup_crit_edge

lor.lhs.false65.cleanup_crit_edge:                ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false68:                                  ; preds = %lor.lhs.false65
  %code.i154 = getelementptr inbounds %struct.rc_dec, ptr %s_ptr, i32 0, i32 1
  %112 = ptrtoint ptr %code.i154 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %code.i154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp.i155 = icmp eq i32 %113, 0
  br i1 %cmp.i155, label %lor.lhs.false68.if.end73_crit_edge, label %lor.lhs.false68.cleanup_crit_edge

lor.lhs.false68.cleanup_crit_edge:                ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false68.if.end73_crit_edge:               ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.end73:                                         ; preds = %lor.lhs.false68.if.end73_crit_edge, %if.then58.if.end73_crit_edge
  br label %cleanup

if.end74:                                         ; preds = %dict_flush.exit
  %114 = ptrtoint ptr %out_pos41 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %out_pos41, align 4
  %116 = ptrtoint ptr %out_size40 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %out_size40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %117)
  %cmp77 = icmp eq i32 %115, %117
  br i1 %cmp77, label %if.end74.cleanup_crit_edge, label %if.end80

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end80:                                         ; preds = %if.end74
  %118 = ptrtoint ptr %in_pos81 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %in_pos81, align 4
  %120 = ptrtoint ptr %in_size82 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %in_size82, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %121)
  %cmp83 = icmp eq i32 %119, %121
  br i1 %cmp83, label %land.lhs.true, label %if.end80.while.cond.backedge_crit_edge

if.end80.while.cond.backedge_crit_edge:           ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %if.end80
  %122 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %temp, align 4
  %124 = ptrtoint ptr %compressed86 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %compressed86, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %125)
  %cmp87 = icmp ult i32 %123, %125
  br i1 %cmp87, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.while.cond.backedge_crit_edge

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.backedge:                              ; preds = %land.lhs.true.while.cond.backedge_crit_edge, %if.end80.while.cond.backedge_crit_edge
  br label %while.cond

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %if.end74.cleanup_crit_edge, %if.end73, %lor.lhs.false68.cleanup_crit_edge, %lor.lhs.false65.cleanup_crit_edge, %if.then60.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %while.end26.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end73 ], [ 0, %if.then5.cleanup_crit_edge ], [ 7, %if.end14.cleanup_crit_edge ], [ 7, %lor.lhs.false68.cleanup_crit_edge ], [ 7, %lor.lhs.false65.cleanup_crit_edge ], [ 7, %if.then60.cleanup_crit_edge ], [ 7, %if.end.cleanup_crit_edge ], [ 7, %while.end26.i.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end74.cleanup_crit_edge ], [ 7, %while.cond.cleanup_crit_edge ], [ 0, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xz_dec_microlzma_alloc(i32 noundef %mode, i32 noundef %dict_size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %dict_size, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073745919, i32 %0)
  %1 = icmp ult i32 %0, 1073745919
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 28456, i32 noundef 3264, i32 noundef 3) #10
  %cmp2 = icmp eq ptr %call1.i.i, null
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %mode6 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %call1.i.i, i32 0, i32 1, i32 9
  %2 = ptrtoint ptr %mode6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mode, ptr %mode6, align 4
  %size = getelementptr inbounds %struct.xz_dec_lzma2, ptr %call1.i.i, i32 0, i32 1, i32 6
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dict_size, ptr %size, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp9.not = icmp eq i32 %mode, 0
  br i1 %cmp9.not, label %if.end4.cleanup_crit_edge, label %if.then10

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.end4
  %dict = getelementptr inbounds %struct.xz_dec_lzma2, ptr %call1.i.i, i32 0, i32 1
  %end = getelementptr inbounds %struct.xz_dec_lzma2, ptr %call1.i.i, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dict_size, ptr %end, align 4
  %call13 = tail call noalias ptr @vmalloc(i32 noundef %dict_size) #10
  %5 = ptrtoint ptr %dict to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %dict, align 8
  %cmp19 = icmp eq ptr %call13, null
  br i1 %cmp19, label %if.then20, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call1.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.then10.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then20 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call1.i.i, %if.then10.cleanup_crit_edge ], [ %call1.i.i, %if.end4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @xz_dec_microlzma_reset(ptr nocapture noundef writeonly %s, i32 noundef %comp_size, i32 noundef %uncomp_size, i32 noundef %uncomp_size_is_exact) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lzma2 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 2
  %compressed = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %compressed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %comp_size, ptr %compressed, align 4
  %uncompressed = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 2, i32 2
  %1 = ptrtoint ptr %uncompressed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %uncomp_size, ptr %uncompressed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uncomp_size_is_exact)
  %tobool = icmp ne i32 %uncomp_size_is_exact, 0
  %pedantic_microlzma = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 2, i32 6
  %frombool = zext i1 %tobool to i8
  %2 = ptrtoint ptr %pedantic_microlzma to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %pedantic_microlzma, align 2
  %3 = ptrtoint ptr %lzma2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %lzma2, align 4
  %temp = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 4
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %temp, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xz_dec_microlzma_end(ptr noundef %s) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dict = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %dict to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dict, align 4
  tail call void @vfree(ptr noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %s) #7
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @lzma_main(ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dict = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1
  %pos.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pos.i, align 4
  %limit.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.i93 = icmp ugt i32 %3, %1
  br i1 %cmp.i93, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 5
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %lzma = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3
  %6 = ptrtoint ptr %lzma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lzma, align 4
  %full.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %full.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %full.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp.not.i = icmp ugt i32 %9, %7
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.then
  %size.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1, i32 6
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp1.not.i = icmp ugt i32 %11, %7
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %sub.i96 = sub i32 %3, %1
  %12 = tail call i32 @llvm.umin.i32(i32 %sub.i96, i32 %5) #7
  %sub3.i = sub i32 %5, %12
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub3.i, ptr %len, align 4
  %14 = xor i32 %7, -1
  %sub6.i = add i32 %1, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %7)
  %cmp8.not.i = icmp ugt i32 %1, %7
  br i1 %cmp8.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then9.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %end.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end.i, align 4
  %add.i97 = add i32 %16, %sub6.i
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end.i.if.end10.i_crit_edge
  %back.0.i = phi i32 [ %add.i97, %if.then9.i ], [ %sub6.i, %if.end.i.if.end10.i_crit_edge ]
  %end15.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1, i32 5
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end10.i
  %back.1.i = phi i32 [ %back.0.i, %if.end10.i ], [ %spec.store.select.i, %do.body.i.do.body.i_crit_edge ]
  %left.0.i = phi i32 [ %12, %if.end10.i ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %17 = ptrtoint ptr %dict to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dict, align 4
  %inc.i98 = add i32 %back.1.i, 1
  %arrayidx.i99 = getelementptr i8, ptr %18, i32 %back.1.i
  %19 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i99, align 1
  %21 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pos.i, align 4
  %inc13.i = add i32 %22, 1
  store i32 %inc13.i, ptr %pos.i, align 4
  %arrayidx14.i = getelementptr i8, ptr %18, i32 %22
  %23 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %20, ptr %arrayidx14.i, align 1
  %24 = ptrtoint ptr %end15.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %end15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i98, i32 %25)
  %cmp16.i = icmp eq i32 %inc.i98, %25
  %spec.store.select.i = select i1 %cmp16.i, i32 0, i32 %inc.i98
  %dec.i = add i32 %left.0.i, -1
  %cmp19.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp19.not.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %26 = ptrtoint ptr %full.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %full.i, align 4
  %28 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp22.i = icmp ult i32 %27, %29
  br i1 %cmp22.i, label %if.then23.i, label %do.end.i.if.end_crit_edge

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then23.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %full.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %full.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then23.i, %do.end.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %31 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pos.i, align 4
  %33 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp.i102255 = icmp ult i32 %32, %34
  br i1 %cmp.i102255, label %land.rhs.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %if.end
  %in_pos.i103 = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 4
  %in_limit.i = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 5
  %lzma10 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3
  %pos_mask = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 8
  %state = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 4
  %code.i.i = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 1
  %in.i.i = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 3
  %rep3.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 3
  %rep236.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 2
  %rep141.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 1
  %rep_len_dec.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 19
  %len.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 5
  %match_len_dec.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 18
  %dist_align.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 17
  %arrayidx.i111.i = getelementptr %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 17, i32 1
  %full.i211 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1, i32 3
  %size.i213 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1, i32 6
  %end.i223 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 1, i32 5
  %lc.i.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 6
  %literal_pos_mask.i.i = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 7
  %add.ptr.i = getelementptr %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 15, i32 3, i32 63
  br label %land.rhs

land.rhs:                                         ; preds = %if.end35.land.rhs_crit_edge, %land.rhs.lr.ph
  %35 = ptrtoint ptr %in_pos.i103 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %in_pos.i103, align 4
  %37 = ptrtoint ptr %in_limit.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %in_limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp.i104 = icmp ugt i32 %36, %38
  br i1 %cmp.i104, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %39 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pos.i, align 4
  %41 = ptrtoint ptr %pos_mask to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pos_mask, align 4
  %and = and i32 %42, %40
  %43 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %state, align 4
  %arrayidx14 = getelementptr %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 9, i32 %44, i32 %and
  %45 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %46)
  %cmp.i.i = icmp ult i32 %46, 16777216
  br i1 %cmp.i.i, label %if.then.i.i, label %while.body.rc_normalize.exit.i_crit_edge

while.body.rc_normalize.exit.i_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_normalize.exit.i

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i = shl nuw i32 %46, 8
  %47 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shl.i.i, ptr %s, align 4
  %48 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %code.i.i, align 4
  %shl2.i.i = shl i32 %49, 8
  %50 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %in.i.i, align 4
  %inc.i.i = add i32 %36, 1
  %52 = ptrtoint ptr %in_pos.i103 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %inc.i.i, ptr %in_pos.i103, align 4
  %arrayidx.i.i = getelementptr i8, ptr %51, i32 %36
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %54 to i32
  %add.i.i = or i32 %shl2.i.i, %conv.i.i
  store i32 %add.i.i, ptr %code.i.i, align 4
  br label %rc_normalize.exit.i

rc_normalize.exit.i:                              ; preds = %if.then.i.i, %while.body.rc_normalize.exit.i_crit_edge
  %55 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s, align 4
  %shr.i = lshr i32 %56, 11
  %57 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx14, align 2
  %conv.i = zext i16 %58 to i32
  %mul.i = mul i32 %shr.i, %conv.i
  %59 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %code.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %mul.i)
  %cmp.i = icmp ult i32 %60, %mul.i
  br i1 %cmp.i, label %if.then16, label %if.else

if.then16:                                        ; preds = %rc_normalize.exit.i
  %61 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %mul.i, ptr %s, align 4
  %62 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx14, align 2
  %conv3.i = zext i16 %63 to i32
  %sub.i = sub nsw i32 2048, %conv3.i
  %shr4.i = ashr i32 %sub.i, 5
  %64 = trunc i32 %shr4.i to i16
  %conv6.i = add i16 %63, %64
  store i16 %conv6.i, ptr %arrayidx14, align 2
  %65 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pos.i, align 4
  %sub1.i.i.i = add i32 %66, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.not.i.not.i.i = icmp eq i32 %66, 0
  br i1 %cmp.not.i.not.i.i, label %if.then.i.i43.i, label %if.then16.if.end.i.i.i_crit_edge

if.then16.if.end.i.i.i_crit_edge:                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

if.then.i.i43.i:                                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %end.i223 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %end.i223, align 4
  %add.i.i42.i = add i32 %68, %sub1.i.i.i
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i43.i, %if.then16.if.end.i.i.i_crit_edge
  %offset.0.i.i.i = phi i32 [ %add.i.i42.i, %if.then.i.i43.i ], [ %sub1.i.i.i, %if.then16.if.end.i.i.i_crit_edge ]
  %69 = ptrtoint ptr %full.i211 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %full.i211, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp3.not.i.i.i = icmp eq i32 %70, 0
  br i1 %cmp3.not.i.i.i, label %if.end.i.i.i.lzma_literal_probs.exit.i_crit_edge, label %cond.true.i.i.i

if.end.i.i.i.lzma_literal_probs.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lzma_literal_probs.exit.i

cond.true.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %dict to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dict, align 4
  %arrayidx.i.i44.i = getelementptr i8, ptr %72, i32 %offset.0.i.i.i
  %73 = ptrtoint ptr %arrayidx.i.i44.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i.i44.i, align 1
  %conv.i.i45.i = zext i8 %74 to i32
  br label %lzma_literal_probs.exit.i

lzma_literal_probs.exit.i:                        ; preds = %cond.true.i.i.i, %if.end.i.i.i.lzma_literal_probs.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv.i.i45.i, %cond.true.i.i.i ], [ 0, %if.end.i.i.i.lzma_literal_probs.exit.i_crit_edge ]
  %75 = ptrtoint ptr %lc.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %lc.i.i, align 4
  %sub.i46.i = sub i32 8, %76
  %shr.i47.i = lshr i32 %cond.i.i.i, %sub.i46.i
  %77 = ptrtoint ptr %literal_pos_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %literal_pos_mask.i.i, align 4
  %and.i.i = and i32 %78, %66
  %shl.i48.i = shl i32 %and.i.i, %76
  %add.i49.i = add i32 %shl.i48.i, %shr.i47.i
  %arrayidx.i50.i = getelementptr %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 20, i32 %add.i49.i
  %79 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %80)
  %cmp.i51.i = icmp ult i32 %80, 7
  br i1 %cmp.i51.i, label %lzma_literal_probs.exit.i.do.body.i.i_crit_edge, label %if.else.i110

lzma_literal_probs.exit.i.do.body.i.i_crit_edge:  ; preds = %lzma_literal_probs.exit.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %.do.body.i.i_crit_edge, %lzma_literal_probs.exit.i.do.body.i.i_crit_edge
  %symbol.0.i.i = phi i32 [ %109, %.do.body.i.i_crit_edge ], [ 1, %lzma_literal_probs.exit.i.do.body.i.i_crit_edge ]
  %arrayidx.i.i106 = getelementptr i16, ptr %arrayidx.i50.i, i32 %symbol.0.i.i
  %81 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %82)
  %cmp.i.i.i.i = icmp ult i32 %82, 16777216
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.body.i.i.rc_normalize.exit.i.i.i_crit_edge

do.body.i.i.rc_normalize.exit.i.i.i_crit_edge:    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_normalize.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i.i.i = shl nuw i32 %82, 8
  %83 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %shl.i.i.i.i, ptr %s, align 4
  %84 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %code.i.i, align 4
  %shl2.i.i.i.i = shl i32 %85, 8
  %86 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %in.i.i, align 4
  %88 = ptrtoint ptr %in_pos.i103 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %in_pos.i103, align 4
  %inc.i.i.i.i = add i32 %89, 1
  store i32 %inc.i.i.i.i, ptr %in_pos.i103, align 4
  %arrayidx.i.i.i.i = getelementptr i8, ptr %87, i32 %89
  %90 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %91 to i32
  %add.i.i.i.i = or i32 %shl2.i.i.i.i, %conv.i.i.i.i
  store i32 %add.i.i.i.i, ptr %code.i.i, align 4
  br label %rc_normalize.exit.i.i.i

rc_normalize.exit.i.i.i:                          ; preds = %if.then.i.i.i.i, %do.body.i.i.rc_normalize.exit.i.i.i_crit_edge
  %92 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %s, align 4
  %shr.i.i.i = lshr i32 %93, 11
  %94 = ptrtoint ptr %arrayidx.i.i106 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx.i.i106, align 2
  %conv.i.i.i = zext i16 %95 to i32
  %mul.i.i.i = mul i32 %shr.i.i.i, %conv.i.i.i
  %96 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %code.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %mul.i.i.i)
  %cmp.i.i.i = icmp ult i32 %97, %mul.i.i.i
  br i1 %cmp.i.i.i, label %103, label %rc_bit.exit.i.i

rc_bit.exit.i.i:                                  ; preds = %rc_normalize.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub8.i.i.i = sub i32 %93, %mul.i.i.i
  %98 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %sub8.i.i.i, ptr %s, align 4
  %sub10.i.i.i = sub i32 %97, %mul.i.i.i
  %99 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %sub10.i.i.i, ptr %code.i.i, align 4
  %100 = ptrtoint ptr %arrayidx.i.i106 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx.i.i106, align 2
  %102 = lshr i16 %101, 5
  %sub14.i.i.i = sub i16 %101, %102
  store i16 %sub14.i.i.i, ptr %arrayidx.i.i106, align 2
  %shl.i.i107 = shl nuw nsw i32 %symbol.0.i.i, 1
  %add.i.i108 = or i32 %shl.i.i107, 1
  br label %108

103:                                              ; preds = %rc_normalize.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %mul.i.i.i, ptr %s, align 4
  %105 = ptrtoint ptr %arrayidx.i.i106 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx.i.i106, align 2
  %conv3.i.i.i = zext i16 %106 to i32
  %sub.i.i.i = sub nsw i32 2048, %conv3.i.i.i
  %shr4.i.i.i = ashr i32 %sub.i.i.i, 5
  %107 = trunc i32 %shr4.i.i.i to i16
  %conv6.i.i.i = add i16 %106, %107
  store i16 %conv6.i.i.i, ptr %arrayidx.i.i106, align 2
  %shl9.i.i = shl nuw nsw i32 %symbol.0.i.i, 1
  br label %108

108:                                              ; preds = %103, %rc_bit.exit.i.i
  %109 = phi i32 [ %shl9.i.i, %103 ], [ %add.i.i108, %rc_bit.exit.i.i ]
  %cmp.i.i109 = icmp ult i32 %109, 256
  br i1 %cmp.i.i109, label %.do.body.i.i_crit_edge, label %.if.end16.i_crit_edge

.if.end16.i_crit_edge:                            ; preds = %108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

.do.body.i.i_crit_edge:                           ; preds = %108
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

if.else.i110:                                     ; preds = %lzma_literal_probs.exit.i
  %110 = ptrtoint ptr %lzma10 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %lzma10, align 4
  %112 = xor i32 %111, -1
  %sub1.i.i = add i32 %66, %112
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %111)
  %cmp.not.i.i = icmp ugt i32 %66, %111
  br i1 %cmp.not.i.i, label %if.else.i110.if.end.i.i_crit_edge, label %if.then.i53.i

if.else.i110.if.end.i.i_crit_edge:                ; preds = %if.else.i110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i53.i:                                    ; preds = %if.else.i110
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %end.i223 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %end.i223, align 4
  %add.i52.i = add i32 %114, %sub1.i.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i53.i, %if.else.i110.if.end.i.i_crit_edge
  %offset.0.i.i = phi i32 [ %add.i52.i, %if.then.i53.i ], [ %sub1.i.i, %if.else.i110.if.end.i.i_crit_edge ]
  br i1 %cmp3.not.i.i.i, label %if.end.i.i.do.body.i114.preheader_crit_edge, label %cond.true.i.i

if.end.i.i.do.body.i114.preheader_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i114.preheader

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %dict to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dict, align 4
  %arrayidx.i54.i = getelementptr i8, ptr %116, i32 %offset.0.i.i
  %117 = ptrtoint ptr %arrayidx.i54.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx.i54.i, align 1
  %conv.i55.i = zext i8 %118 to i32
  br label %do.body.i114.preheader

do.body.i114.preheader:                           ; preds = %cond.true.i.i, %if.end.i.i.do.body.i114.preheader_crit_edge
  %match_byte.0.in.i.ph = phi i32 [ 0, %if.end.i.i.do.body.i114.preheader_crit_edge ], [ %conv.i55.i, %cond.true.i.i ]
  br label %do.body.i114

do.body.i114:                                     ; preds = %rc_bit.exit.i.do.body.i114_crit_edge, %do.body.i114.preheader
  %symbol.0.i = phi i32 [ %symbol.1.i, %rc_bit.exit.i.do.body.i114_crit_edge ], [ 1, %do.body.i114.preheader ]
  %match_byte.0.in.i = phi i32 [ %match_byte.0.i, %rc_bit.exit.i.do.body.i114_crit_edge ], [ %match_byte.0.in.i.ph, %do.body.i114.preheader ]
  %offset.0.i = phi i32 [ %offset.1.i, %rc_bit.exit.i.do.body.i114_crit_edge ], [ 256, %do.body.i114.preheader ]
  %match_byte.0.i = shl i32 %match_byte.0.in.i, 1
  %and.i = and i32 %match_byte.0.i, %offset.0.i
  %add.i112 = add i32 %offset.0.i, %symbol.0.i
  %add6.i = add i32 %add.i112, %and.i
  %arrayidx.i113 = getelementptr i16, ptr %arrayidx.i50.i, i32 %add6.i
  %119 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %120)
  %cmp.i.i38.i = icmp ult i32 %120, 16777216
  br i1 %cmp.i.i38.i, label %if.then.i.i.i, label %do.body.i114.rc_normalize.exit.i.i_crit_edge

do.body.i114.rc_normalize.exit.i.i_crit_edge:     ; preds = %do.body.i114
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_normalize.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body.i114
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i.i = shl nuw i32 %120, 8
  %121 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %shl.i.i.i, ptr %s, align 4
  %122 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %code.i.i, align 4
  %shl2.i.i.i = shl i32 %123, 8
  %124 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %in.i.i, align 4
  %126 = ptrtoint ptr %in_pos.i103 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %in_pos.i103, align 4
  %inc.i.i.i = add i32 %127, 1
  store i32 %inc.i.i.i, ptr %in_pos.i103, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %125, i32 %127
  %128 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i40.i = zext i8 %129 to i32
  %add.i.i.i = or i32 %shl2.i.i.i, %conv.i.i40.i
  store i32 %add.i.i.i, ptr %code.i.i, align 4
  br label %rc_normalize.exit.i.i

rc_normalize.exit.i.i:                            ; preds = %if.then.i.i.i, %do.body.i114.rc_normalize.exit.i.i_crit_edge
  %130 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %s, align 4
  %shr.i.i = lshr i32 %131, 11
  %132 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %arrayidx.i113, align 2
  %conv.i.i115 = zext i16 %133 to i32
  %mul.i.i = mul i32 %shr.i.i, %conv.i.i115
  %134 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %code.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %mul.i.i)
  %cmp.i41.i = icmp ult i32 %135, %mul.i.i
  br i1 %cmp.i41.i, label %if.then.i.i116, label %if.else.i.i

if.then.i.i116:                                   ; preds = %rc_normalize.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %136 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %mul.i.i, ptr %s, align 4
  %137 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx.i113, align 2
  %conv3.i.i = zext i16 %138 to i32
  %sub.i.i = sub nsw i32 2048, %conv3.i.i
  %shr4.i.i = ashr i32 %sub.i.i, 5
  %139 = trunc i32 %shr4.i.i to i16
  %conv6.i.i = add i16 %138, %139
  br label %rc_bit.exit.i

if.else.i.i:                                      ; preds = %rc_normalize.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub8.i.i = sub i32 %131, %mul.i.i
  %140 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %sub8.i.i, ptr %s, align 4
  %sub10.i.i = sub i32 %135, %mul.i.i
  %141 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %sub10.i.i, ptr %code.i.i, align 4
  %142 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %arrayidx.i113, align 2
  %144 = lshr i16 %143, 5
  %sub14.i.i = sub i16 %143, %144
  br label %rc_bit.exit.i

rc_bit.exit.i:                                    ; preds = %if.else.i.i, %if.then.i.i116
  %and15.i = phi i32 [ %offset.0.i, %if.then.i.i116 ], [ 0, %if.else.i.i ]
  %storemerge.i.i = phi i16 [ %conv6.i.i, %if.then.i.i116 ], [ %sub14.i.i, %if.else.i.i ]
  %145 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %storemerge.i.i, ptr %arrayidx.i113, align 2
  %shl10.i = shl nuw nsw i32 %symbol.0.i, 1
  %not.cmp.i41.i = xor i1 %cmp.i41.i, true
  %add11.i = zext i1 %not.cmp.i41.i to i32
  %symbol.1.i = or i32 %shl10.i, %add11.i
  %offset.1.i = xor i32 %and15.i, %and.i
  %cmp.i117 = icmp ult i32 %symbol.1.i, 256
  br i1 %cmp.i117, label %rc_bit.exit.i.do.body.i114_crit_edge, label %rc_bit.exit.i.if.end16.i_crit_edge

rc_bit.exit.i.if.end16.i_crit_edge:               ; preds = %rc_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

rc_bit.exit.i.do.body.i114_crit_edge:             ; preds = %rc_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i114

if.end16.i:                                       ; preds = %rc_bit.exit.i.if.end16.i_crit_edge, %.if.end16.i_crit_edge
  %symbol.2.i = phi i32 [ %109, %.if.end16.i_crit_edge ], [ %symbol.1.i, %rc_bit.exit.i.if.end16.i_crit_edge ]
  %conv.i118 = trunc i32 %symbol.2.i to i8
  %146 = ptrtoint ptr %dict to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dict, align 4
  %148 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %pos.i, align 4
  %inc.i.i119 = add i32 %149, 1
  store i32 %inc.i.i119, ptr %pos.i, align 4
  %arrayidx.i57.i = getelementptr i8, ptr %147, i32 %149
  %150 = ptrtoint ptr %arrayidx.i57.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv.i118, ptr %arrayidx.i57.i, align 1
  %151 = ptrtoint ptr %full.i211 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %full.i211, align 4
  %153 = load i32, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %153)
  %cmp.i59.i = icmp ult i32 %152, %153
  br i1 %cmp.i59.i, label %if.then.i60.i, label %if.end16.i.dict_put.exit.i_crit_edge

if.end16.i.dict_put.exit.i_crit_edge:             ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dict_put.exit.i

if.then.i60.i:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %154 = ptrtoint ptr %full.i211 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %full.i211, align 4
  br label %dict_put.exit.i

dict_put.exit.i:                                  ; preds = %if.then.i60.i, %if.end16.i.dict_put.exit.i_crit_edge
  %155 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %156)
  %cmp.i62.i = icmp ult i32 %156, 4
  br i1 %cmp.i62.i, label %dict_put.exit.i.lzma_literal.exit_crit_edge, label %if.else.i63.i

dict_put.exit.i.lzma_literal.exit_crit_edge:      ; preds = %dict_put.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lzma_literal.exit

if.else.i63.i:                                    ; preds = %dict_put.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %156)
  %cmp1.i.i = icmp ult i32 %156, 10
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else3.i.i

if.then2.i.i:                                     ; preds = %if.else.i63.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i64.i = add nsw i32 %156, -3
  br label %lzma_literal.exit

if.else3.i.i:                                     ; preds = %if.else.i63.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub4.i.i = add i32 %156, -6
  br label %lzma_literal.exit

lzma_literal.exit:                                ; preds = %if.else3.i.i, %if.then2.i.i, %dict_put.exit.i.lzma_literal.exit_crit_edge
  %sub.sink.i.i = phi i32 [ %sub.i64.i, %if.then2.i.i ], [ %sub4.i.i, %if.else3.i.i ], [ 0, %dict_put.exit.i.lzma_literal.exit_crit_edge ]
  %157 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %sub.sink.i.i, ptr %state, align 4
  br label %if.end35

if.else:                                          ; preds = %rc_normalize.exit.i
  %sub8.i = sub i32 %56, %mul.i
  %158 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %sub8.i, ptr %s, align 4
  %sub10.i = sub i32 %60, %mul.i
  %159 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %sub10.i, ptr %code.i.i, align 4
  %160 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %arrayidx14, align 2
  %162 = lshr i16 %161, 5
  %sub14.i = sub i16 %161, %162
  store i16 %sub14.i, ptr %arrayidx14, align 2
  %163 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %state, align 4
  %arrayidx21 = getelementptr %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 10, i32 %164
  %165 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %165)
  %cmp.i.i60 = icmp ult i32 %165, 16777216
  br i1 %cmp.i.i60, label %if.then.i.i70, label %if.else.rc_normalize.exit.i76_crit_edge

if.else.rc_normalize.exit.i76_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_normalize.exit.i76

if.then.i.i70:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i61 = shl nuw i32 %165, 8
  %166 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %shl.i.i61, ptr %s, align 4
  %167 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %code.i.i, align 4
  %shl2.i.i63 = shl i32 %168, 8
  %169 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %in.i.i, align 4
  %171 = ptrtoint ptr %in_pos.i103 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %in_pos.i103, align 4
  %inc.i.i66 = add i32 %172, 1
  store i32 %inc.i.i66, ptr %in_pos.i103, align 4
  %arrayidx.i.i67 = getelementptr i8, ptr %170, i32 %172
  %173 = ptrtoint ptr %arrayidx.i.i67 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx.i.i67, align 1
  %conv.i.i68 = zext i8 %174 to i32
  %add.i.i69 = or i32 %shl2.i.i63, %conv.i.i68
  store i32 %add.i.i69, ptr %code.i.i, align 4
  br label %rc_normalize.exit.i76

rc_normalize.exit.i76:                            ; preds = %if.then.i.i70, %if.else.rc_normalize.exit.i76_crit_edge
  %175 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %s, align 4
  %shr.i71 = lshr i32 %176, 11
  %177 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %arrayidx21, align 2
  %conv.i72 = zext i16 %178 to i32
  %mul.i73 = mul i32 %shr.i71, %conv.i72
  %179 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %code.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %180, i32 %mul.i73)
  %cmp.i75 = icmp ult i32 %180, %mul.i73
  br i1 %cmp.i75, label %if.else25, label %if.then24

if.then24:                                        ; preds = %rc_normalize.exit.i76
  %sub8.i82 = sub i32 %176, %mul.i73
  %181 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %sub8.i82, ptr %s, align 4
  %sub10.i83 = sub i32 %180, %mul.i73
  %182 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %sub10.i83, ptr %code.i.i, align 4
  %183 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %arrayidx21, align 2
  %185 = lshr i16 %184, 5
  %sub14.i84 = sub i16 %184, %185
  store i16 %sub14.i84, ptr %arrayidx21, align 2
  %186 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %state, align 4
  %arrayidx.i122 = getelementptr %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 11, i32 %187
  %188 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %188)
  %cmp.i.i.i123 = icmp ult i32 %188, 16777216
  br i1 %cmp.i.i.i123, label %if.then.i.i.i133, label %if.then24.rc_normalize.exit.i.i139_crit_edge

if.then24.rc_normalize.exit.i.i139_crit_edge:     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_normalize.exit.i.i139

if.then.i.i.i133:                                 ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i.i124 = shl nuw i32 %188, 8
  %189 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %shl.i.i.i124, ptr %s, align 4
  %190 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %code.i.i, align 4
  %shl2.i.i.i126 = shl i32 %191, 8
  %192 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %in.i.i, align 4
  %194 = ptrtoint ptr %in_pos.i103 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %in_pos.i103, align 4
  %inc.i.i.i129 = add i32 %195, 1
  store i32 %inc.i.i.i129, ptr %in_pos.i103, align 4
  %arrayidx.i.i.i130 = getelementptr i8, ptr %193, i32 %195
  %196 = ptrtoint ptr %arrayidx.i.i.i130 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx.i.i.i130, align 1
  %conv.i.i.i131 = zext i8 %197 to i32
  %add.i.i.i132 = or i32 %shl2.i.i.i126, %conv.i.i.i131
  store i32 %add.i.i.i132, ptr %code.i.i, align 4
  br label %rc_normalize.exit.i.i139

rc_normalize.exit.i.i139:                         ; preds = %if.then.i.i.i133, %if.then24.rc_normalize.exit.i.i139_crit_edge
  %198 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %s, align 4
  %shr.i.i134 = lshr i32 %199, 11
  %200 = ptrtoint ptr %arrayidx.i122 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %arrayidx.i122, align 2
  %conv.i.i135 = zext i16 %201 to i32
  %mul.i.i136 = mul i32 %shr.i.i134, %conv.i.i135
  %202 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %code.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %203, i32 %mul.i.i136)
  %cmp.i.i138 = icmp ult i32 %203, %mul.i.i136
  br i1 %cmp.i.i138, label %if.then.i144, label %if.else.i149

if.then.i144:                                     ; preds = %rc_normalize.exit.i.i139
  %204 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %mul.i.i136, ptr %s, align 4
  %205 = ptrtoint ptr %arrayidx.i122 to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %arrayidx.i122, align 2
  %conv3.i.i140 = zext i16 %206 to i32
  %sub.i.i141 = sub nsw i32 2048, %conv3.i.i140
  %shr4.i.i142 = ashr i32 %sub.i.i141, 5
  %207 = trunc i32 %shr4.i.i142 to i16
  %conv6.i.i143 = add i16 %206, %207
  store i16 %conv6.i.i143, ptr %arrayidx.i122, align 2
  %208 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %state, align 4
  %arrayidx7.i = getelementptr %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 14, i32 %209, i32 %and
  %210 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %210)
  %cmp.i.i81.i = icmp ult i32 %210, 16777216
  br i1 %cmp.i.i81.i, label %if.then.i.i91.i, label %if.then.i144.rc_normalize.exit.i97.i_crit_edge

if.then.i144.rc_normalize.exit.i97.i_crit_edge:   ; preds = %if.then.i144
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_normalize.exit.i97.i

if.then.i.i91.i:                                  ; preds = %if.then.i144
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i82.i = shl nuw i32 %210, 8
  %211 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %shl.i.i82.i, ptr %s, align 4
  %212 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %code.i.i, align 4
  %shl2.i.i84.i = shl i32 %213, 8
  %214 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %in.i.i, align 4
  %216 = ptrtoint ptr %in_pos.i103 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %in_pos.i103, align 4
  %inc.i.i87.i = add i32 %217, 1
  store i32 %inc.i.i87.i, ptr %in_pos.i103, align 4
  %arrayidx.i.i88.i = getelementptr i8, ptr %215, i32 %217
  %218 = ptrtoint ptr %arrayidx.i.i88.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx.i.i88.i, align 1
  %conv.i.i89.i = zext i8 %219 to i32
  %add.i.i90.i = or i32 %shl2.i.i84.i, %conv.i.i89.i
  store i32 %add.i.i90.i, ptr %code.i.i, align 4
  br label %rc_normalize.exit.i97.i

rc_normalize.exit.i97.i:                          ; preds = %if.then.i.i91.i, %if.then.i144.rc_normalize.exit.i97.i_crit_edge
  %220 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %s, align 4
  %shr.i92.i = lshr i32 %221, 11
  %222 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %arrayidx7.i, align 2
  %conv.i93.i = zext i16 %223 to i32
  %mul.i94.i = mul i32 %shr.i92.i, %conv.i93.i
  %224 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %code.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %225, i32 %mul.i94.i)
  %cmp.i96.i = icmp ult i32 %225, %mul.i94.i
  br i1 %cmp.i96.i, label %if.then10.i, label %rc_bit.exit109.i

rc_bit.exit109.i:                                 ; preds = %rc_normalize.exit.i97.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub8.i103.i = sub i32 %221, %mul.i94.i
  %226 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %sub8.i103.i, ptr %s, align 4
  %sub10.i104.i = sub i32 %225, %mul.i94.i
  %227 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %sub10.i104.i, ptr %code.i.i, align 4
  %228 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %arrayidx7.i, align 2
  %230 = lshr i16 %229, 5
  %sub14.i105.i = sub i16 %229, %230
  store i16 %sub14.i105.i, ptr %arrayidx7.i, align 2
  br label %if.end50.i

if.then10.i:                                      ; preds = %rc_normalize.exit.i97.i
  call void @__sanitizer_cov_trace_pc() #9
  %231 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %mul.i94.i, ptr %s, align 4
  %232 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %arrayidx7.i, align 2
  %conv3.i98.i = zext i16 %233 to i32
  %sub.i99.i = sub nsw i32 2048, %conv3.i98.i
  %shr4.i100.i = ashr i32 %sub.i99.i, 5
  %234 = trunc i32 %shr4.i100.i to i16
  %conv6.i101.i = add i16 %233, %234
  store i16 %conv6.i101.i, ptr %arrayidx7.i, align 2
  %235 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %236)
  %cmp.i168.i = icmp ult i32 %236, 7
  %cond.i.i145 = select i1 %cmp.i168.i, i32 9, i32 11
  %237 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %cond.i.i145, ptr %state, align 4
  %238 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 1, ptr %len.i, align 4
  br label %if.end26

if.else.i149:                                     ; preds = %rc_normalize.exit.i.i139
  %sub8.i.i146 = sub i32 %199, %mul.i.i136
  %239 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %sub8.i.i146, ptr %s, align 4
  %sub10.i.i147 = sub i32 %203, %mul.i.i136
  %240 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %sub10.i.i147, ptr %code.i.i, align 4
  %241 = ptrtoint ptr %arrayidx.i122 to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %arrayidx.i122, align 2
  %243 = lshr i16 %242, 5
  %sub14.i.i148 = sub i16 %242, %243
  store i16 %sub14.i.i148, ptr %arrayidx.i122, align 2
  %244 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %state, align 4
  %arrayidx18.i = getelementptr %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 12, i32 %245
  %246 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %246)
  %cmp.i.i110.i = icmp ult i32 %246, 16777216
  br i1 %cmp.i.i110.i, label %if.then.i.i120.i, label %if.else.i149.rc_normalize.exit.i126.i_crit_edge

if.else.i149.rc_normalize.exit.i126.i_crit_edge:  ; preds = %if.else.i149
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_normalize.exit.i126.i

if.then.i.i120.i:                                 ; preds = %if.else.i149
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i111.i = shl nuw i32 %246, 8
  %247 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %shl.i.i111.i, ptr %s, align 4
  %248 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %code.i.i, align 4
  %shl2.i.i113.i = shl i32 %249, 8
  %250 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %in.i.i, align 4
  %252 = ptrtoint ptr %in_pos.i103 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %in_pos.i103, align 4
  %inc.i.i116.i = add i32 %253, 1
  store i32 %inc.i.i116.i, ptr %in_pos.i103, align 4
  %arrayidx.i.i117.i = getelementptr i8, ptr %251, i32 %253
  %254 = ptrtoint ptr %arrayidx.i.i117.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %arrayidx.i.i117.i, align 1
  %conv.i.i118.i = zext i8 %255 to i32
  %add.i.i119.i = or i32 %shl2.i.i113.i, %conv.i.i118.i
  store i32 %add.i.i119.i, ptr %code.i.i, align 4
  br label %rc_normalize.exit.i126.i

rc_normalize.exit.i126.i:                         ; preds = %if.then.i.i120.i, %if.else.i149.rc_normalize.exit.i126.i_crit_edge
  %256 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %s, align 4
  %shr.i121.i = lshr i32 %257, 11
  %258 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %arrayidx18.i, align 2
  %conv.i122.i = zext i16 %259 to i32
  %mul.i123.i = mul i32 %shr.i121.i, %conv.i122.i
  %260 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %code.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %261, i32 %mul.i123.i)
  %cmp.i125.i = icmp ult i32 %261, %mul.i123.i
  br i1 %cmp.i125.i, label %if.then21.i, label %if.else23.i

if.then21.i:                                      ; preds = %rc_normalize.exit.i126.i
  call void @__sanitizer_cov_trace_pc() #9
  %262 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %mul.i123.i, ptr %s, align 4
  %263 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %arrayidx18.i, align 2
  %conv3.i127.i = zext i16 %264 to i32
  %sub.i128.i = sub nsw i32 2048, %conv3.i127.i
  %shr4.i129.i = ashr i32 %sub.i128.i, 5
  %265 = trunc i32 %shr4.i129.i to i16
  %conv6.i130.i = add i16 %264, %265
  store i16 %conv6.i130.i, ptr %arrayidx18.i, align 2
  %266 = ptrtoint ptr %rep141.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %rep141.i, align 4
  br label %if.end44.i

if.else23.i:                                      ; preds = %rc_normalize.exit.i126.i
  %sub8.i132.i = sub i32 %257, %mul.i123.i
  %268 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %sub8.i132.i, ptr %s, align 4
  %sub10.i133.i = sub i32 %261, %mul.i123.i
  %269 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %sub10.i133.i, ptr %code.i.i, align 4
  %270 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %arrayidx18.i, align 2
  %272 = lshr i16 %271, 5
  %sub14.i134.i = sub i16 %271, %272
  store i16 %sub14.i134.i, ptr %arrayidx18.i, align 2
  %273 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %state, align 4
  %arrayidx28.i = getelementptr %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 13, i32 %274
  %275 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %275)
  %cmp.i.i139.i = icmp ult i32 %275, 16777216
  br i1 %cmp.i.i139.i, label %if.then.i.i149.i, label %if.else23.i.rc_normalize.exit.i155.i_crit_edge

if.else23.i.rc_normalize.exit.i155.i_crit_edge:   ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_normalize.exit.i155.i

if.then.i.i149.i:                                 ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i140.i = shl nuw i32 %275, 8
  %276 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %shl.i.i140.i, ptr %s, align 4
  %277 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %code.i.i, align 4
  %shl2.i.i142.i = shl i32 %278, 8
  %279 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %in.i.i, align 4
  %281 = ptrtoint ptr %in_pos.i103 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %in_pos.i103, align 4
  %inc.i.i145.i = add i32 %282, 1
  store i32 %inc.i.i145.i, ptr %in_pos.i103, align 4
  %arrayidx.i.i146.i = getelementptr i8, ptr %280, i32 %282
  %283 = ptrtoint ptr %arrayidx.i.i146.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %arrayidx.i.i146.i, align 1
  %conv.i.i147.i = zext i8 %284 to i32
  %add.i.i148.i = or i32 %shl2.i.i142.i, %conv.i.i147.i
  store i32 %add.i.i148.i, ptr %code.i.i, align 4
  br label %rc_normalize.exit.i155.i

rc_normalize.exit.i155.i:                         ; preds = %if.then.i.i149.i, %if.else23.i.rc_normalize.exit.i155.i_crit_edge
  %285 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %s, align 4
  %shr.i150.i = lshr i32 %286, 11
  %287 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %arrayidx28.i, align 2
  %conv.i151.i = zext i16 %288 to i32
  %mul.i152.i = mul i32 %shr.i150.i, %conv.i151.i
  %289 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %code.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %290, i32 %mul.i152.i)
  %cmp.i154.i = icmp ult i32 %290, %mul.i152.i
  br i1 %cmp.i154.i, label %if.then31.i, label %if.else33.i

if.then31.i:                                      ; preds = %rc_normalize.exit.i155.i
  call void @__sanitizer_cov_trace_pc() #9
  %291 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %mul.i152.i, ptr %s, align 4
  %292 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %arrayidx28.i, align 2
  %conv3.i156.i = zext i16 %293 to i32
  %sub.i157.i = sub nsw i32 2048, %conv3.i156.i
  %shr4.i158.i = ashr i32 %sub.i157.i, 5
  %294 = trunc i32 %shr4.i158.i to i16
  %conv6.i159.i = add i16 %293, %294
  store i16 %conv6.i159.i, ptr %arrayidx28.i, align 2
  %295 = ptrtoint ptr %rep236.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %rep236.i, align 4
  br label %if.end39.i

if.else33.i:                                      ; preds = %rc_normalize.exit.i155.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub8.i161.i = sub i32 %286, %mul.i152.i
  %297 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %sub8.i161.i, ptr %s, align 4
  %sub10.i162.i = sub i32 %290, %mul.i152.i
  %298 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %sub10.i162.i, ptr %code.i.i, align 4
  %299 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load2_noabort(i32 %299)
  %300 = load i16, ptr %arrayidx28.i, align 2
  %301 = lshr i16 %300, 5
  %sub14.i163.i = sub i16 %300, %301
  store i16 %sub14.i163.i, ptr %arrayidx28.i, align 2
  %302 = ptrtoint ptr %rep3.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %rep3.i, align 4
  %304 = ptrtoint ptr %rep236.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %rep236.i, align 4
  store i32 %305, ptr %rep3.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else33.i, %if.then31.i
  %tmp.0.i = phi i32 [ %303, %if.else33.i ], [ %296, %if.then31.i ]
  %306 = ptrtoint ptr %rep141.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %rep141.i, align 4
  %308 = ptrtoint ptr %rep236.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %307, ptr %rep236.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.end39.i, %if.then21.i
  %tmp.1.i = phi i32 [ %tmp.0.i, %if.end39.i ], [ %267, %if.then21.i ]
  %309 = ptrtoint ptr %lzma10 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %lzma10, align 4
  %311 = ptrtoint ptr %rep141.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %310, ptr %rep141.i, align 4
  store i32 %tmp.1.i, ptr %lzma10, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.end44.i, %rc_bit.exit109.i
  %312 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %313)
  %cmp.i169.i = icmp ult i32 %313, 7
  %cond.i170.i = select i1 %cmp.i169.i, i32 8, i32 11
  %314 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %cond.i170.i, ptr %state, align 4
  tail call fastcc void @lzma_len(ptr noundef %s, ptr noundef %rep_len_dec.i, i32 noundef %and) #7
  br label %if.end26

if.else25:                                        ; preds = %rc_normalize.exit.i76
  %315 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %mul.i73, ptr %s, align 4
  %316 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %316)
  %317 = load i16, ptr %arrayidx21, align 2
  %conv3.i77 = zext i16 %317 to i32
  %sub.i78 = sub nsw i32 2048, %conv3.i77
  %shr4.i79 = ashr i32 %sub.i78, 5
  %318 = trunc i32 %shr4.i79 to i16
  %conv6.i80 = add i16 %317, %318
  store i16 %conv6.i80, ptr %arrayidx21, align 2
  %319 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %320)
  %cmp.i145.i = icmp ult i32 %320, 7
  %cond.i.i152 = select i1 %cmp.i145.i, i32 7, i32 10
  %321 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %cond.i.i152, ptr %state, align 4
  %322 = ptrtoint ptr %rep236.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %rep236.i, align 4
  %324 = ptrtoint ptr %rep3.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %323, ptr %rep3.i, align 4
  %325 = ptrtoint ptr %rep141.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %rep141.i, align 4
  store i32 %326, ptr %rep236.i, align 4
  %327 = ptrtoint ptr %lzma10 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %lzma10, align 4
  store i32 %328, ptr %rep141.i, align 4
  tail call fastcc void @lzma_len(ptr noundef %s, ptr noundef %match_len_dec.i, i32 noundef %and) #7
  %329 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %330)
  %cmp.i146.i = icmp ult i32 %330, 6
  %sub.i.i157 = add i32 %330, -2
  %spec.select.i.i = select i1 %cmp.i146.i, i32 %sub.i.i157, i32 3
  %arrayidx.i158 = getelementptr %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 15, i32 %spec.select.i.i
  br label %do.body.i.i165

do.body.i.i165:                                   ; preds = %.do.body.i.i165_crit_edge, %if.else25
  %symbol.0.i.i162 = phi i32 [ 1, %if.else25 ], [ %359, %.do.body.i.i165_crit_edge ]
  %arrayidx.i.i163 = getelementptr i16, ptr %arrayidx.i158, i32 %symbol.0.i.i162
  %331 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %332)
  %cmp.i.i.i.i164 = icmp ult i32 %332, 16777216
  br i1 %cmp.i.i.i.i164, label %if.then.i.i.i.i172, label %do.body.i.i165.rc_normalize.exit.i.i.i177_crit_edge

do.body.i.i165.rc_normalize.exit.i.i.i177_crit_edge: ; preds = %do.body.i.i165
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_normalize.exit.i.i.i177

if.then.i.i.i.i172:                               ; preds = %do.body.i.i165
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i.i.i166 = shl nuw i32 %332, 8
  %333 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %shl.i.i.i.i166, ptr %s, align 4
  %334 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %code.i.i, align 4
  %shl2.i.i.i.i167 = shl i32 %335, 8
  %336 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %in.i.i, align 4
  %338 = ptrtoint ptr %in_pos.i103 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %in_pos.i103, align 4
  %inc.i.i.i.i168 = add i32 %339, 1
  store i32 %inc.i.i.i.i168, ptr %in_pos.i103, align 4
  %arrayidx.i.i.i.i169 = getelementptr i8, ptr %337, i32 %339
  %340 = ptrtoint ptr %arrayidx.i.i.i.i169 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %arrayidx.i.i.i.i169, align 1
  %conv.i.i.i.i170 = zext i8 %341 to i32
  %add.i.i.i.i171 = or i32 %shl2.i.i.i.i167, %conv.i.i.i.i170
  store i32 %add.i.i.i.i171, ptr %code.i.i, align 4
  br label %rc_normalize.exit.i.i.i177

rc_normalize.exit.i.i.i177:                       ; preds = %if.then.i.i.i.i172, %do.body.i.i165.rc_normalize.exit.i.i.i177_crit_edge
  %342 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %s, align 4
  %shr.i.i.i173 = lshr i32 %343, 11
  %344 = ptrtoint ptr %arrayidx.i.i163 to i32
  call void @__asan_load2_noabort(i32 %344)
  %345 = load i16, ptr %arrayidx.i.i163, align 2
  %conv.i.i.i174 = zext i16 %345 to i32
  %mul.i.i.i175 = mul i32 %shr.i.i.i173, %conv.i.i.i174
  %346 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %code.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %347, i32 %mul.i.i.i175)
  %cmp.i.i.i176 = icmp ult i32 %347, %mul.i.i.i175
  br i1 %cmp.i.i.i176, label %353, label %rc_bit.exit.i.i183

rc_bit.exit.i.i183:                               ; preds = %rc_normalize.exit.i.i.i177
  call void @__sanitizer_cov_trace_pc() #9
  %sub8.i.i.i178 = sub i32 %343, %mul.i.i.i175
  %348 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %sub8.i.i.i178, ptr %s, align 4
  %sub10.i.i.i179 = sub i32 %347, %mul.i.i.i175
  %349 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %sub10.i.i.i179, ptr %code.i.i, align 4
  %350 = ptrtoint ptr %arrayidx.i.i163 to i32
  call void @__asan_load2_noabort(i32 %350)
  %351 = load i16, ptr %arrayidx.i.i163, align 2
  %352 = lshr i16 %351, 5
  %sub14.i.i.i180 = sub i16 %351, %352
  store i16 %sub14.i.i.i180, ptr %arrayidx.i.i163, align 2
  %shl.i.i181 = shl nuw nsw i32 %symbol.0.i.i162, 1
  %add.i.i182 = or i32 %shl.i.i181, 1
  br label %358

353:                                              ; preds = %rc_normalize.exit.i.i.i177
  call void @__sanitizer_cov_trace_pc() #9
  %354 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %mul.i.i.i175, ptr %s, align 4
  %355 = ptrtoint ptr %arrayidx.i.i163 to i32
  call void @__asan_load2_noabort(i32 %355)
  %356 = load i16, ptr %arrayidx.i.i163, align 2
  %conv3.i.i.i184 = zext i16 %356 to i32
  %sub.i.i.i185 = sub nsw i32 2048, %conv3.i.i.i184
  %shr4.i.i.i186 = ashr i32 %sub.i.i.i185, 5
  %357 = trunc i32 %shr4.i.i.i186 to i16
  %conv6.i.i.i187 = add i16 %356, %357
  store i16 %conv6.i.i.i187, ptr %arrayidx.i.i163, align 2
  %shl9.i.i188 = shl nuw nsw i32 %symbol.0.i.i162, 1
  br label %358

358:                                              ; preds = %353, %rc_bit.exit.i.i183
  %359 = phi i32 [ %shl9.i.i188, %353 ], [ %add.i.i182, %rc_bit.exit.i.i183 ]
  %cmp.i.i189 = icmp ult i32 %359, 64
  br i1 %cmp.i.i189, label %.do.body.i.i165_crit_edge, label %rc_bittree.exit.i

.do.body.i.i165_crit_edge:                        ; preds = %358
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i165

rc_bittree.exit.i:                                ; preds = %358
  %sub.i190 = add i32 %359, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i190)
  %cmp.i191 = icmp ult i32 %sub.i190, 4
  br i1 %cmp.i191, label %if.then.i192, label %if.else.i196

if.then.i192:                                     ; preds = %rc_bittree.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %360 = ptrtoint ptr %lzma10 to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 %sub.i190, ptr %lzma10, align 4
  br label %if.end26

if.else.i196:                                     ; preds = %rc_bittree.exit.i
  %shr.i193 = lshr i32 %sub.i190, 1
  %and.i194 = and i32 %359, 1
  %add.i195 = or i32 %and.i194, 2
  %361 = ptrtoint ptr %lzma10 to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 %add.i195, ptr %lzma10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.i190)
  %cmp19.i = icmp ult i32 %sub.i190, 14
  br i1 %cmp19.i, label %if.then20.i, label %if.else32.i

if.then20.i:                                      ; preds = %if.else.i196
  %sub16.i = add nsw i32 %shr.i193, -1
  %shl.i197 = shl i32 %add.i195, %sub16.i
  %362 = ptrtoint ptr %lzma10 to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 %shl.i197, ptr %lzma10, align 4
  %idx.neg.i = sub nsw i32 64, %359
  %add.ptr27.i = getelementptr i16, ptr %add.ptr.i, i32 %shl.i197
  %add.ptr28.i = getelementptr i16, ptr %add.ptr27.i, i32 %idx.neg.i
  br label %do.body.i84.i

do.body.i84.i:                                    ; preds = %do.cond.i.i.do.body.i84.i_crit_edge, %if.then20.i
  %symbol.0.i81.i = phi i32 [ 1, %if.then20.i ], [ %symbol.1.i.i, %do.cond.i.i.do.body.i84.i_crit_edge ]
  %i.0.i.i = phi i32 [ 0, %if.then20.i ], [ %inc.i.i200, %do.cond.i.i.do.body.i84.i_crit_edge ]
  %arrayidx.i82.i = getelementptr i16, ptr %add.ptr28.i, i32 %symbol.0.i81.i
  %363 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %364)
  %cmp.i.i.i83.i = icmp ult i32 %364, 16777216
  br i1 %cmp.i.i.i83.i, label %if.then.i.i.i91.i, label %do.body.i84.i.rc_normalize.exit.i.i96.i_crit_edge

do.body.i84.i.rc_normalize.exit.i.i96.i_crit_edge: ; preds = %do.body.i84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_normalize.exit.i.i96.i

if.then.i.i.i91.i:                                ; preds = %do.body.i84.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i.i85.i = shl nuw i32 %364, 8
  %365 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 %shl.i.i.i85.i, ptr %s, align 4
  %366 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %code.i.i, align 4
  %shl2.i.i.i86.i = shl i32 %367, 8
  %368 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %in.i.i, align 4
  %370 = ptrtoint ptr %in_pos.i103 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %in_pos.i103, align 4
  %inc.i.i.i87.i = add i32 %371, 1
  store i32 %inc.i.i.i87.i, ptr %in_pos.i103, align 4
  %arrayidx.i.i.i88.i = getelementptr i8, ptr %369, i32 %371
  %372 = ptrtoint ptr %arrayidx.i.i.i88.i to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %arrayidx.i.i.i88.i, align 1
  %conv.i.i.i89.i = zext i8 %373 to i32
  %add.i.i.i90.i = or i32 %shl2.i.i.i86.i, %conv.i.i.i89.i
  store i32 %add.i.i.i90.i, ptr %code.i.i, align 4
  br label %rc_normalize.exit.i.i96.i

rc_normalize.exit.i.i96.i:                        ; preds = %if.then.i.i.i91.i, %do.body.i84.i.rc_normalize.exit.i.i96.i_crit_edge
  %374 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %s, align 4
  %shr.i.i92.i = lshr i32 %375, 11
  %376 = ptrtoint ptr %arrayidx.i82.i to i32
  call void @__asan_load2_noabort(i32 %376)
  %377 = load i16, ptr %arrayidx.i82.i, align 2
  %conv.i.i93.i = zext i16 %377 to i32
  %mul.i.i94.i = mul i32 %shr.i.i92.i, %conv.i.i93.i
  %378 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %code.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %379, i32 %mul.i.i94.i)
  %cmp.i.i95.i = icmp ult i32 %379, %mul.i.i94.i
  br i1 %cmp.i.i95.i, label %if.else.i.i199, label %if.then.i.i198

if.then.i.i198:                                   ; preds = %rc_normalize.exit.i.i96.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub8.i.i97.i = sub i32 %375, %mul.i.i94.i
  %380 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 %sub8.i.i97.i, ptr %s, align 4
  %sub10.i.i98.i = sub i32 %379, %mul.i.i94.i
  %381 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %sub10.i.i98.i, ptr %code.i.i, align 4
  %382 = ptrtoint ptr %arrayidx.i82.i to i32
  call void @__asan_load2_noabort(i32 %382)
  %383 = load i16, ptr %arrayidx.i82.i, align 2
  %384 = lshr i16 %383, 5
  %sub14.i.i99.i = sub i16 %383, %384
  store i16 %sub14.i.i99.i, ptr %arrayidx.i82.i, align 2
  %shl.i100.i = shl i32 %symbol.0.i81.i, 1
  %add.i101.i = or i32 %shl.i100.i, 1
  %shl1.i.i = shl nuw i32 1, %i.0.i.i
  %385 = ptrtoint ptr %lzma10 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %lzma10, align 4
  %add2.i.i = add i32 %386, %shl1.i.i
  store i32 %add2.i.i, ptr %lzma10, align 4
  br label %do.cond.i.i

if.else.i.i199:                                   ; preds = %rc_normalize.exit.i.i96.i
  call void @__sanitizer_cov_trace_pc() #9
  %387 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 %mul.i.i94.i, ptr %s, align 4
  %388 = ptrtoint ptr %arrayidx.i82.i to i32
  call void @__asan_load2_noabort(i32 %388)
  %389 = load i16, ptr %arrayidx.i82.i, align 2
  %conv3.i.i102.i = zext i16 %389 to i32
  %sub.i.i103.i = sub nsw i32 2048, %conv3.i.i102.i
  %shr4.i.i104.i = ashr i32 %sub.i.i103.i, 5
  %390 = trunc i32 %shr4.i.i104.i to i16
  %conv6.i.i105.i = add i16 %389, %390
  store i16 %conv6.i.i105.i, ptr %arrayidx.i82.i, align 2
  %shl3.i.i = shl i32 %symbol.0.i81.i, 1
  br label %do.cond.i.i

do.cond.i.i:                                      ; preds = %if.else.i.i199, %if.then.i.i198
  %symbol.1.i.i = phi i32 [ %add.i101.i, %if.then.i.i198 ], [ %shl3.i.i, %if.else.i.i199 ]
  %inc.i.i200 = add nuw i32 %i.0.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i200, %sub16.i
  br i1 %exitcond.not.i.i, label %do.cond.i.i.if.end26_crit_edge, label %do.cond.i.i.do.body.i84.i_crit_edge

do.cond.i.i.do.body.i84.i_crit_edge:              ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i84.i

do.cond.i.i.if.end26_crit_edge:                   ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.else32.i:                                      ; preds = %if.else.i196
  %sub36.i = add nsw i32 %shr.i193, -5
  br label %do.body.i148.i

do.body.i148.i:                                   ; preds = %rc_normalize.exit.i.i210.do.body.i148.i_crit_edge, %if.else32.i
  %limit.addr.0.i.i = phi i32 [ %sub36.i, %if.else32.i ], [ %dec.i.i, %rc_normalize.exit.i.i210.do.body.i148.i_crit_edge ]
  %391 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %392)
  %cmp.i.i147.i = icmp ult i32 %392, 16777216
  br i1 %cmp.i.i147.i, label %if.then.i.i.i206, label %do.body.i148.i.rc_normalize.exit.i.i210_crit_edge

do.body.i148.i.rc_normalize.exit.i.i210_crit_edge: ; preds = %do.body.i148.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_normalize.exit.i.i210

if.then.i.i.i206:                                 ; preds = %do.body.i148.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i.i201 = shl nuw i32 %392, 8
  %393 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 %shl.i.i.i201, ptr %s, align 4
  %394 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %code.i.i, align 4
  %shl2.i.i.i202 = shl i32 %395, 8
  %396 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %in.i.i, align 4
  %398 = ptrtoint ptr %in_pos.i103 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %in_pos.i103, align 4
  %inc.i.i.i203 = add i32 %399, 1
  store i32 %inc.i.i.i203, ptr %in_pos.i103, align 4
  %arrayidx.i.i.i204 = getelementptr i8, ptr %397, i32 %399
  %400 = ptrtoint ptr %arrayidx.i.i.i204 to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %arrayidx.i.i.i204, align 1
  %conv.i.i149.i = zext i8 %401 to i32
  %add.i.i.i205 = or i32 %shl2.i.i.i202, %conv.i.i149.i
  store i32 %add.i.i.i205, ptr %code.i.i, align 4
  %.pr = load i32, ptr %s, align 4
  br label %rc_normalize.exit.i.i210

rc_normalize.exit.i.i210:                         ; preds = %if.then.i.i.i206, %do.body.i148.i.rc_normalize.exit.i.i210_crit_edge
  %402 = phi i32 [ %.pr, %if.then.i.i.i206 ], [ %392, %do.body.i148.i.rc_normalize.exit.i.i210_crit_edge ]
  %shr.i.i207 = lshr i32 %402, 1
  %403 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 %shr.i.i207, ptr %s, align 4
  %404 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %code.i.i, align 4
  %sub.i150.i = sub i32 %405, %shr.i.i207
  %shr3.neg.i.i = ashr i32 %sub.i150.i, 31
  %and.i.i208 = and i32 %shr3.neg.i.i, %shr.i.i207
  %add.i151.i = add i32 %and.i.i208, %sub.i150.i
  store i32 %add.i151.i, ptr %code.i.i, align 4
  %406 = ptrtoint ptr %lzma10 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %lzma10, align 4
  %shl.i152.i = shl i32 %407, 1
  %add7.i.i = add nsw i32 %shr3.neg.i.i, 1
  %add8.i.i = add nuw i32 %add7.i.i, %shl.i152.i
  store i32 %add8.i.i, ptr %lzma10, align 4
  %dec.i.i = add i32 %limit.addr.0.i.i, -1
  %cmp.not.i.i209 = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i209, label %rc_direct.exit.i, label %rc_normalize.exit.i.i210.do.body.i148.i_crit_edge

rc_normalize.exit.i.i210.do.body.i148.i_crit_edge: ; preds = %rc_normalize.exit.i.i210
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i148.i

rc_direct.exit.i:                                 ; preds = %rc_normalize.exit.i.i210
  %shl39.i = shl i32 %add8.i.i, 4
  %408 = ptrtoint ptr %lzma10 to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 %shl39.i, ptr %lzma10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %402)
  %cmp.i.i.i112.i = icmp ult i32 %402, 33554432
  br i1 %cmp.i.i.i112.i, label %if.then.i.i.i120.i, label %rc_direct.exit.i.rc_normalize.exit.i.i125.i_crit_edge

rc_direct.exit.i.rc_normalize.exit.i.i125.i_crit_edge: ; preds = %rc_direct.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_normalize.exit.i.i125.i

if.then.i.i.i120.i:                               ; preds = %rc_direct.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i.i114.i = shl nuw i32 %shr.i.i207, 8
  %409 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 %shl.i.i.i114.i, ptr %s, align 4
  %shl2.i.i.i115.i = shl i32 %add.i151.i, 8
  %410 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %in.i.i, align 4
  %412 = ptrtoint ptr %in_pos.i103 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %in_pos.i103, align 4
  %inc.i.i.i116.i = add i32 %413, 1
  store i32 %inc.i.i.i116.i, ptr %in_pos.i103, align 4
  %arrayidx.i.i.i117.i = getelementptr i8, ptr %411, i32 %413
  %414 = ptrtoint ptr %arrayidx.i.i.i117.i to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %arrayidx.i.i.i117.i, align 1
  %conv.i.i.i118.i = zext i8 %415 to i32
  %add.i.i.i119.i = or i32 %shl2.i.i.i115.i, %conv.i.i.i118.i
  %416 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 %add.i.i.i119.i, ptr %code.i.i, align 4
  br label %rc_normalize.exit.i.i125.i

rc_normalize.exit.i.i125.i:                       ; preds = %if.then.i.i.i120.i, %rc_direct.exit.i.rc_normalize.exit.i.i125.i_crit_edge
  %417 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %s, align 4
  %shr.i.i121.i = lshr i32 %418, 11
  %419 = ptrtoint ptr %arrayidx.i111.i to i32
  call void @__asan_load2_noabort(i32 %419)
  %420 = load i16, ptr %arrayidx.i111.i, align 2
  %conv.i.i122.i = zext i16 %420 to i32
  %mul.i.i123.i = mul i32 %shr.i.i121.i, %conv.i.i122.i
  %421 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %code.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %422, i32 %mul.i.i123.i)
  %cmp.i.i124.i = icmp ult i32 %422, %mul.i.i123.i
  br i1 %cmp.i.i124.i, label %if.else.i139.i, label %if.then.i133.i

if.then.i133.i:                                   ; preds = %rc_normalize.exit.i.i125.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub8.i.i126.i = sub i32 %418, %mul.i.i123.i
  %423 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 %sub8.i.i126.i, ptr %s, align 4
  %sub10.i.i127.i = sub i32 %422, %mul.i.i123.i
  %424 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 %sub10.i.i127.i, ptr %code.i.i, align 4
  %425 = lshr i16 %420, 5
  %sub14.i.i128.i = sub i16 %420, %425
  %426 = ptrtoint ptr %arrayidx.i111.i to i32
  call void @__asan_store2_noabort(i32 %426)
  store i16 %sub14.i.i128.i, ptr %arrayidx.i111.i, align 2
  %add2.i132.i = or i32 %shl39.i, 1
  %427 = ptrtoint ptr %lzma10 to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 %add2.i132.i, ptr %lzma10, align 4
  br label %do.cond.i143.i

if.else.i139.i:                                   ; preds = %rc_normalize.exit.i.i125.i
  call void @__sanitizer_cov_trace_pc() #9
  %428 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 %mul.i.i123.i, ptr %s, align 4
  %sub.i.i135.i = sub nsw i32 2048, %conv.i.i122.i
  %shr4.i.i136.i = ashr i32 %sub.i.i135.i, 5
  %429 = trunc i32 %shr4.i.i136.i to i16
  %conv6.i.i137.i = add i16 %420, %429
  %430 = ptrtoint ptr %arrayidx.i111.i to i32
  call void @__asan_store2_noabort(i32 %430)
  store i16 %conv6.i.i137.i, ptr %arrayidx.i111.i, align 2
  br label %do.cond.i143.i

do.cond.i143.i:                                   ; preds = %if.else.i139.i, %if.then.i133.i
  %symbol.1.i140.i = phi i32 [ 3, %if.then.i133.i ], [ 2, %if.else.i139.i ]
  %arrayidx.i111.1.i = getelementptr i16, ptr %dist_align.i, i32 %symbol.1.i140.i
  %431 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %432)
  %cmp.i.i.i112.1.i = icmp ult i32 %432, 16777216
  br i1 %cmp.i.i.i112.1.i, label %if.then.i.i.i120.1.i, label %do.cond.i143.i.rc_normalize.exit.i.i125.1.i_crit_edge

do.cond.i143.i.rc_normalize.exit.i.i125.1.i_crit_edge: ; preds = %do.cond.i143.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_normalize.exit.i.i125.1.i

if.then.i.i.i120.1.i:                             ; preds = %do.cond.i143.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i.i114.1.i = shl nuw i32 %432, 8
  %433 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 %shl.i.i.i114.1.i, ptr %s, align 4
  %434 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %code.i.i, align 4
  %shl2.i.i.i115.1.i = shl i32 %435, 8
  %436 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %in.i.i, align 4
  %438 = ptrtoint ptr %in_pos.i103 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %in_pos.i103, align 4
  %inc.i.i.i116.1.i = add i32 %439, 1
  store i32 %inc.i.i.i116.1.i, ptr %in_pos.i103, align 4
  %arrayidx.i.i.i117.1.i = getelementptr i8, ptr %437, i32 %439
  %440 = ptrtoint ptr %arrayidx.i.i.i117.1.i to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %arrayidx.i.i.i117.1.i, align 1
  %conv.i.i.i118.1.i = zext i8 %441 to i32
  %add.i.i.i119.1.i = or i32 %shl2.i.i.i115.1.i, %conv.i.i.i118.1.i
  store i32 %add.i.i.i119.1.i, ptr %code.i.i, align 4
  br label %rc_normalize.exit.i.i125.1.i

rc_normalize.exit.i.i125.1.i:                     ; preds = %if.then.i.i.i120.1.i, %do.cond.i143.i.rc_normalize.exit.i.i125.1.i_crit_edge
  %442 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %s, align 4
  %shr.i.i121.1.i = lshr i32 %443, 11
  %444 = ptrtoint ptr %arrayidx.i111.1.i to i32
  call void @__asan_load2_noabort(i32 %444)
  %445 = load i16, ptr %arrayidx.i111.1.i, align 2
  %conv.i.i122.1.i = zext i16 %445 to i32
  %mul.i.i123.1.i = mul i32 %shr.i.i121.1.i, %conv.i.i122.1.i
  %446 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %code.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %447, i32 %mul.i.i123.1.i)
  %cmp.i.i124.1.i = icmp ult i32 %447, %mul.i.i123.1.i
  br i1 %cmp.i.i124.1.i, label %if.else.i139.1.i, label %if.then.i133.1.i

if.then.i133.1.i:                                 ; preds = %rc_normalize.exit.i.i125.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub8.i.i126.1.i = sub i32 %443, %mul.i.i123.1.i
  %448 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 %sub8.i.i126.1.i, ptr %s, align 4
  %sub10.i.i127.1.i = sub i32 %447, %mul.i.i123.1.i
  %449 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 %sub10.i.i127.1.i, ptr %code.i.i, align 4
  %450 = lshr i16 %445, 5
  %sub14.i.i128.1.i = sub i16 %445, %450
  %451 = ptrtoint ptr %arrayidx.i111.1.i to i32
  call void @__asan_store2_noabort(i32 %451)
  store i16 %sub14.i.i128.1.i, ptr %arrayidx.i111.1.i, align 2
  %shl.i129.1.i = shl nuw nsw i32 %symbol.1.i140.i, 1
  %add.i130.1.i = or i32 %shl.i129.1.i, 1
  %452 = ptrtoint ptr %lzma10 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %lzma10, align 4
  %add2.i132.1.i = add i32 %453, 2
  store i32 %add2.i132.1.i, ptr %lzma10, align 4
  br label %do.cond.i143.1.i

if.else.i139.1.i:                                 ; preds = %rc_normalize.exit.i.i125.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %454 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %454)
  store i32 %mul.i.i123.1.i, ptr %s, align 4
  %sub.i.i135.1.i = sub nsw i32 2048, %conv.i.i122.1.i
  %shr4.i.i136.1.i = ashr i32 %sub.i.i135.1.i, 5
  %455 = trunc i32 %shr4.i.i136.1.i to i16
  %conv6.i.i137.1.i = add i16 %445, %455
  %456 = ptrtoint ptr %arrayidx.i111.1.i to i32
  call void @__asan_store2_noabort(i32 %456)
  store i16 %conv6.i.i137.1.i, ptr %arrayidx.i111.1.i, align 2
  %shl3.i138.1.i = shl nuw nsw i32 %symbol.1.i140.i, 1
  br label %do.cond.i143.1.i

do.cond.i143.1.i:                                 ; preds = %if.else.i139.1.i, %if.then.i133.1.i
  %symbol.1.i140.1.i = phi i32 [ %add.i130.1.i, %if.then.i133.1.i ], [ %shl3.i138.1.i, %if.else.i139.1.i ]
  %arrayidx.i111.2.i = getelementptr i16, ptr %dist_align.i, i32 %symbol.1.i140.1.i
  %457 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %458)
  %cmp.i.i.i112.2.i = icmp ult i32 %458, 16777216
  br i1 %cmp.i.i.i112.2.i, label %if.then.i.i.i120.2.i, label %do.cond.i143.1.i.rc_normalize.exit.i.i125.2.i_crit_edge

do.cond.i143.1.i.rc_normalize.exit.i.i125.2.i_crit_edge: ; preds = %do.cond.i143.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_normalize.exit.i.i125.2.i

if.then.i.i.i120.2.i:                             ; preds = %do.cond.i143.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i.i114.2.i = shl nuw i32 %458, 8
  %459 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 %shl.i.i.i114.2.i, ptr %s, align 4
  %460 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %code.i.i, align 4
  %shl2.i.i.i115.2.i = shl i32 %461, 8
  %462 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %in.i.i, align 4
  %464 = ptrtoint ptr %in_pos.i103 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %in_pos.i103, align 4
  %inc.i.i.i116.2.i = add i32 %465, 1
  store i32 %inc.i.i.i116.2.i, ptr %in_pos.i103, align 4
  %arrayidx.i.i.i117.2.i = getelementptr i8, ptr %463, i32 %465
  %466 = ptrtoint ptr %arrayidx.i.i.i117.2.i to i32
  call void @__asan_load1_noabort(i32 %466)
  %467 = load i8, ptr %arrayidx.i.i.i117.2.i, align 1
  %conv.i.i.i118.2.i = zext i8 %467 to i32
  %add.i.i.i119.2.i = or i32 %shl2.i.i.i115.2.i, %conv.i.i.i118.2.i
  store i32 %add.i.i.i119.2.i, ptr %code.i.i, align 4
  br label %rc_normalize.exit.i.i125.2.i

rc_normalize.exit.i.i125.2.i:                     ; preds = %if.then.i.i.i120.2.i, %do.cond.i143.1.i.rc_normalize.exit.i.i125.2.i_crit_edge
  %468 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %s, align 4
  %shr.i.i121.2.i = lshr i32 %469, 11
  %470 = ptrtoint ptr %arrayidx.i111.2.i to i32
  call void @__asan_load2_noabort(i32 %470)
  %471 = load i16, ptr %arrayidx.i111.2.i, align 2
  %conv.i.i122.2.i = zext i16 %471 to i32
  %mul.i.i123.2.i = mul i32 %shr.i.i121.2.i, %conv.i.i122.2.i
  %472 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %code.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %473, i32 %mul.i.i123.2.i)
  %cmp.i.i124.2.i = icmp ult i32 %473, %mul.i.i123.2.i
  br i1 %cmp.i.i124.2.i, label %if.else.i139.2.i, label %if.then.i133.2.i

if.then.i133.2.i:                                 ; preds = %rc_normalize.exit.i.i125.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub8.i.i126.2.i = sub i32 %469, %mul.i.i123.2.i
  %474 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %474)
  store i32 %sub8.i.i126.2.i, ptr %s, align 4
  %sub10.i.i127.2.i = sub i32 %473, %mul.i.i123.2.i
  %475 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %475)
  store i32 %sub10.i.i127.2.i, ptr %code.i.i, align 4
  %476 = ptrtoint ptr %arrayidx.i111.2.i to i32
  call void @__asan_load2_noabort(i32 %476)
  %477 = load i16, ptr %arrayidx.i111.2.i, align 2
  %478 = lshr i16 %477, 5
  %sub14.i.i128.2.i = sub i16 %477, %478
  store i16 %sub14.i.i128.2.i, ptr %arrayidx.i111.2.i, align 2
  %shl.i129.2.i = shl nsw i32 %symbol.1.i140.1.i, 1
  %add.i130.2.i = or i32 %shl.i129.2.i, 1
  %479 = ptrtoint ptr %lzma10 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %lzma10, align 4
  %add2.i132.2.i = add i32 %480, 4
  store i32 %add2.i132.2.i, ptr %lzma10, align 4
  br label %do.cond.i143.2.i

if.else.i139.2.i:                                 ; preds = %rc_normalize.exit.i.i125.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %481 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %481)
  store i32 %mul.i.i123.2.i, ptr %s, align 4
  %482 = ptrtoint ptr %arrayidx.i111.2.i to i32
  call void @__asan_load2_noabort(i32 %482)
  %483 = load i16, ptr %arrayidx.i111.2.i, align 2
  %conv3.i.i134.2.i = zext i16 %483 to i32
  %sub.i.i135.2.i = sub nsw i32 2048, %conv3.i.i134.2.i
  %shr4.i.i136.2.i = ashr i32 %sub.i.i135.2.i, 5
  %484 = trunc i32 %shr4.i.i136.2.i to i16
  %conv6.i.i137.2.i = add i16 %483, %484
  store i16 %conv6.i.i137.2.i, ptr %arrayidx.i111.2.i, align 2
  %shl3.i138.2.i = shl nsw i32 %symbol.1.i140.1.i, 1
  br label %do.cond.i143.2.i

do.cond.i143.2.i:                                 ; preds = %if.else.i139.2.i, %if.then.i133.2.i
  %symbol.1.i140.2.i = phi i32 [ %add.i130.2.i, %if.then.i133.2.i ], [ %shl3.i138.2.i, %if.else.i139.2.i ]
  %arrayidx.i111.3.i = getelementptr i16, ptr %dist_align.i, i32 %symbol.1.i140.2.i
  %485 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %486)
  %cmp.i.i.i112.3.i = icmp ult i32 %486, 16777216
  br i1 %cmp.i.i.i112.3.i, label %if.then.i.i.i120.3.i, label %do.cond.i143.2.i.rc_normalize.exit.i.i125.3.i_crit_edge

do.cond.i143.2.i.rc_normalize.exit.i.i125.3.i_crit_edge: ; preds = %do.cond.i143.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_normalize.exit.i.i125.3.i

if.then.i.i.i120.3.i:                             ; preds = %do.cond.i143.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i.i114.3.i = shl nuw i32 %486, 8
  %487 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %487)
  store i32 %shl.i.i.i114.3.i, ptr %s, align 4
  %488 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %code.i.i, align 4
  %shl2.i.i.i115.3.i = shl i32 %489, 8
  %490 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %in.i.i, align 4
  %492 = ptrtoint ptr %in_pos.i103 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %in_pos.i103, align 4
  %inc.i.i.i116.3.i = add i32 %493, 1
  store i32 %inc.i.i.i116.3.i, ptr %in_pos.i103, align 4
  %arrayidx.i.i.i117.3.i = getelementptr i8, ptr %491, i32 %493
  %494 = ptrtoint ptr %arrayidx.i.i.i117.3.i to i32
  call void @__asan_load1_noabort(i32 %494)
  %495 = load i8, ptr %arrayidx.i.i.i117.3.i, align 1
  %conv.i.i.i118.3.i = zext i8 %495 to i32
  %add.i.i.i119.3.i = or i32 %shl2.i.i.i115.3.i, %conv.i.i.i118.3.i
  store i32 %add.i.i.i119.3.i, ptr %code.i.i, align 4
  br label %rc_normalize.exit.i.i125.3.i

rc_normalize.exit.i.i125.3.i:                     ; preds = %if.then.i.i.i120.3.i, %do.cond.i143.2.i.rc_normalize.exit.i.i125.3.i_crit_edge
  %496 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %s, align 4
  %shr.i.i121.3.i = lshr i32 %497, 11
  %498 = ptrtoint ptr %arrayidx.i111.3.i to i32
  call void @__asan_load2_noabort(i32 %498)
  %499 = load i16, ptr %arrayidx.i111.3.i, align 2
  %conv.i.i122.3.i = zext i16 %499 to i32
  %mul.i.i123.3.i = mul i32 %shr.i.i121.3.i, %conv.i.i122.3.i
  %500 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %code.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %501, i32 %mul.i.i123.3.i)
  %cmp.i.i124.3.i = icmp ult i32 %501, %mul.i.i123.3.i
  br i1 %cmp.i.i124.3.i, label %if.else.i139.3.i, label %if.then.i133.3.i

if.then.i133.3.i:                                 ; preds = %rc_normalize.exit.i.i125.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub8.i.i126.3.i = sub i32 %497, %mul.i.i123.3.i
  %502 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %502)
  store i32 %sub8.i.i126.3.i, ptr %s, align 4
  %sub10.i.i127.3.i = sub i32 %501, %mul.i.i123.3.i
  %503 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %503)
  store i32 %sub10.i.i127.3.i, ptr %code.i.i, align 4
  %504 = ptrtoint ptr %arrayidx.i111.3.i to i32
  call void @__asan_load2_noabort(i32 %504)
  %505 = load i16, ptr %arrayidx.i111.3.i, align 2
  %506 = lshr i16 %505, 5
  %sub14.i.i128.3.i = sub i16 %505, %506
  store i16 %sub14.i.i128.3.i, ptr %arrayidx.i111.3.i, align 2
  %507 = ptrtoint ptr %lzma10 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %lzma10, align 4
  %add2.i132.3.i = add i32 %508, 8
  store i32 %add2.i132.3.i, ptr %lzma10, align 4
  br label %if.end26

if.else.i139.3.i:                                 ; preds = %rc_normalize.exit.i.i125.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %509 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %509)
  store i32 %mul.i.i123.3.i, ptr %s, align 4
  %510 = ptrtoint ptr %arrayidx.i111.3.i to i32
  call void @__asan_load2_noabort(i32 %510)
  %511 = load i16, ptr %arrayidx.i111.3.i, align 2
  %conv3.i.i134.3.i = zext i16 %511 to i32
  %sub.i.i135.3.i = sub nsw i32 2048, %conv3.i.i134.3.i
  %shr4.i.i136.3.i = ashr i32 %sub.i.i135.3.i, 5
  %512 = trunc i32 %shr4.i.i136.3.i to i16
  %conv6.i.i137.3.i = add i16 %511, %512
  store i16 %conv6.i.i137.3.i, ptr %arrayidx.i111.3.i, align 2
  br label %if.end26

if.end26:                                         ; preds = %if.else.i139.3.i, %if.then.i133.3.i, %do.cond.i.i.if.end26_crit_edge, %if.then.i192, %if.end50.i, %if.then10.i
  %513 = ptrtoint ptr %lzma10 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %lzma10, align 4
  %515 = ptrtoint ptr %full.i211 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %full.i211, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %516, i32 %514)
  %cmp.not.i212 = icmp ugt i32 %516, %514
  br i1 %cmp.not.i212, label %lor.lhs.false.i215, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i215:                               ; preds = %if.end26
  %517 = ptrtoint ptr %size.i213 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %size.i213, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %518, i32 %514)
  %cmp1.not.i214 = icmp ugt i32 %518, %514
  br i1 %cmp1.not.i214, label %if.end.i222, label %lor.lhs.false.i215.cleanup_crit_edge

lor.lhs.false.i215.cleanup_crit_edge:             ; preds = %lor.lhs.false.i215
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i222:                                      ; preds = %lor.lhs.false.i215
  %519 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %limit.i, align 4
  %521 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %pos.i, align 4
  %sub.i218 = sub i32 %520, %522
  %523 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %len.i, align 4
  %525 = tail call i32 @llvm.umin.i32(i32 %sub.i218, i32 %524) #7
  %sub3.i219 = sub i32 %524, %525
  %526 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %526)
  store i32 %sub3.i219, ptr %len.i, align 4
  %527 = xor i32 %514, -1
  %sub6.i220 = add i32 %522, %527
  call void @__sanitizer_cov_trace_cmp4(i32 %522, i32 %514)
  %cmp8.not.i221 = icmp ugt i32 %522, %514
  br i1 %cmp8.not.i221, label %if.end.i222.do.body.i239.preheader_crit_edge, label %if.then9.i225

if.end.i222.do.body.i239.preheader_crit_edge:     ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i239.preheader

if.then9.i225:                                    ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #9
  %528 = ptrtoint ptr %end.i223 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %end.i223, align 4
  %add.i224 = add i32 %529, %sub6.i220
  br label %do.body.i239.preheader

do.body.i239.preheader:                           ; preds = %if.then9.i225, %if.end.i222.do.body.i239.preheader_crit_edge
  %back.1.i229.ph = phi i32 [ %sub6.i220, %if.end.i222.do.body.i239.preheader_crit_edge ], [ %add.i224, %if.then9.i225 ]
  br label %do.body.i239

do.body.i239:                                     ; preds = %do.body.i239.do.body.i239_crit_edge, %do.body.i239.preheader
  %back.1.i229 = phi i32 [ %spec.store.select.i236, %do.body.i239.do.body.i239_crit_edge ], [ %back.1.i229.ph, %do.body.i239.preheader ]
  %left.0.i230 = phi i32 [ %dec.i237, %do.body.i239.do.body.i239_crit_edge ], [ %525, %do.body.i239.preheader ]
  %530 = ptrtoint ptr %dict to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %dict, align 4
  %inc.i231 = add i32 %back.1.i229, 1
  %arrayidx.i232 = getelementptr i8, ptr %531, i32 %back.1.i229
  %532 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %arrayidx.i232, align 1
  %534 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %pos.i, align 4
  %inc13.i233 = add i32 %535, 1
  store i32 %inc13.i233, ptr %pos.i, align 4
  %arrayidx14.i234 = getelementptr i8, ptr %531, i32 %535
  %536 = ptrtoint ptr %arrayidx14.i234 to i32
  call void @__asan_store1_noabort(i32 %536)
  store i8 %533, ptr %arrayidx14.i234, align 1
  %537 = ptrtoint ptr %end.i223 to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load i32, ptr %end.i223, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i231, i32 %538)
  %cmp16.i235 = icmp eq i32 %inc.i231, %538
  %spec.store.select.i236 = select i1 %cmp16.i235, i32 0, i32 %inc.i231
  %dec.i237 = add i32 %left.0.i230, -1
  %cmp19.not.i238 = icmp eq i32 %dec.i237, 0
  br i1 %cmp19.not.i238, label %do.end.i241, label %do.body.i239.do.body.i239_crit_edge

do.body.i239.do.body.i239_crit_edge:              ; preds = %do.body.i239
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i239

do.end.i241:                                      ; preds = %do.body.i239
  %539 = ptrtoint ptr %full.i211 to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %full.i211, align 4
  %541 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %540, i32 %542)
  %cmp22.i240 = icmp ult i32 %540, %542
  br i1 %cmp22.i240, label %if.then23.i242, label %do.end.i241.if.end35_crit_edge

do.end.i241.if.end35_crit_edge:                   ; preds = %do.end.i241
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then23.i242:                                   ; preds = %do.end.i241
  call void @__sanitizer_cov_trace_pc() #9
  %543 = ptrtoint ptr %full.i211 to i32
  call void @__asan_store4_noabort(i32 %543)
  store i32 %542, ptr %full.i211, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then23.i242, %do.end.i241.if.end35_crit_edge, %lzma_literal.exit
  %544 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %pos.i, align 4
  %546 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %limit.i, align 4
  %cmp.i102 = icmp ult i32 %545, %547
  br i1 %cmp.i102, label %if.end35.land.rhs_crit_edge, label %if.end35.while.end_crit_edge

if.end35.while.end_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end35.land.rhs_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

while.end:                                        ; preds = %if.end35.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end.while.end_crit_edge
  %548 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %549)
  %cmp.i89 = icmp ult i32 %549, 16777216
  br i1 %cmp.i89, label %if.then.i92, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i92:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw i32 %549, 8
  %550 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %550)
  store i32 %shl.i, ptr %s, align 4
  %code.i90 = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 1
  %551 = ptrtoint ptr %code.i90 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %code.i90, align 4
  %shl2.i = shl i32 %552, 8
  %in.i = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 3
  %553 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %in.i, align 4
  %in_pos.i = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 4
  %555 = ptrtoint ptr %in_pos.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %in_pos.i, align 4
  %inc.i = add i32 %556, 1
  store i32 %inc.i, ptr %in_pos.i, align 4
  %arrayidx.i = getelementptr i8, ptr %554, i32 %556
  %557 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %557)
  %558 = load i8, ptr %arrayidx.i, align 1
  %conv.i91 = zext i8 %558 to i32
  %add.i = or i32 %shl2.i, %conv.i91
  store i32 %add.i, ptr %code.i90, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i92, %while.end.cleanup_crit_edge, %lor.lhs.false.i215.cleanup_crit_edge, %if.end26.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %while.end.cleanup_crit_edge ], [ true, %if.then.i92 ], [ false, %if.end26.cleanup_crit_edge ], [ false, %lor.lhs.false.i215.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lzma_len(ptr noundef %s, ptr nocapture noundef %l, i32 noundef %pos_state) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %1)
  %cmp.i.i = icmp ult i32 %1, 16777216
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.rc_normalize.exit.i_crit_edge

entry.rc_normalize.exit.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_normalize.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i = shl nuw i32 %1, 8
  %2 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shl.i.i, ptr %s, align 4
  %code.i.i = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 1
  %3 = ptrtoint ptr %code.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %code.i.i, align 4
  %shl2.i.i = shl i32 %4, 8
  %in.i.i = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 3
  %5 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %in.i.i, align 4
  %in_pos.i.i = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 4
  %7 = ptrtoint ptr %in_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %in_pos.i.i, align 4
  %inc.i.i = add i32 %8, 1
  store i32 %inc.i.i, ptr %in_pos.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %6, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %10 to i32
  %add.i.i = or i32 %shl2.i.i, %conv.i.i
  store i32 %add.i.i, ptr %code.i.i, align 4
  br label %rc_normalize.exit.i

rc_normalize.exit.i:                              ; preds = %if.then.i.i, %entry.rc_normalize.exit.i_crit_edge
  %11 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s, align 4
  %shr.i = lshr i32 %12, 11
  %13 = ptrtoint ptr %l to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %l, align 2
  %conv.i = zext i16 %14 to i32
  %mul.i = mul i32 %shr.i, %conv.i
  %code.i = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 1
  %15 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %code.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %mul.i)
  %cmp.i = icmp ult i32 %16, %mul.i
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %rc_normalize.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul.i, ptr %s, align 4
  %18 = ptrtoint ptr %l to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %l, align 2
  %conv3.i = zext i16 %19 to i32
  %sub.i = sub nsw i32 2048, %conv3.i
  %shr4.i = ashr i32 %sub.i, 5
  %20 = trunc i32 %shr4.i to i16
  %conv6.i = add i16 %19, %20
  store i16 %conv6.i, ptr %l, align 2
  %arrayidx = getelementptr %struct.lzma_len_dec, ptr %l, i32 0, i32 2, i32 %pos_state
  br label %if.end13

if.else:                                          ; preds = %rc_normalize.exit.i
  %sub8.i = sub i32 %12, %mul.i
  %21 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub8.i, ptr %s, align 4
  %sub10.i = sub i32 %16, %mul.i
  %22 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub10.i, ptr %code.i, align 4
  %23 = ptrtoint ptr %l to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %l, align 2
  %25 = lshr i16 %24, 5
  %sub14.i = sub i16 %24, %25
  store i16 %sub14.i, ptr %l, align 2
  %choice2 = getelementptr inbounds %struct.lzma_len_dec, ptr %l, i32 0, i32 1
  %26 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %26)
  %cmp.i.i30 = icmp ult i32 %26, 16777216
  br i1 %cmp.i.i30, label %if.then.i.i40, label %if.else.rc_normalize.exit.i46_crit_edge

if.else.rc_normalize.exit.i46_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_normalize.exit.i46

if.then.i.i40:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i31 = shl nuw i32 %26, 8
  %27 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shl.i.i31, ptr %s, align 4
  %28 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %code.i, align 4
  %shl2.i.i33 = shl i32 %29, 8
  %in.i.i34 = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 3
  %30 = ptrtoint ptr %in.i.i34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %in.i.i34, align 4
  %in_pos.i.i35 = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 4
  %32 = ptrtoint ptr %in_pos.i.i35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %in_pos.i.i35, align 4
  %inc.i.i36 = add i32 %33, 1
  store i32 %inc.i.i36, ptr %in_pos.i.i35, align 4
  %arrayidx.i.i37 = getelementptr i8, ptr %31, i32 %33
  %34 = ptrtoint ptr %arrayidx.i.i37 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.i37, align 1
  %conv.i.i38 = zext i8 %35 to i32
  %add.i.i39 = or i32 %shl2.i.i33, %conv.i.i38
  store i32 %add.i.i39, ptr %code.i, align 4
  br label %rc_normalize.exit.i46

rc_normalize.exit.i46:                            ; preds = %if.then.i.i40, %if.else.rc_normalize.exit.i46_crit_edge
  %36 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s, align 4
  %shr.i41 = lshr i32 %37, 11
  %38 = ptrtoint ptr %choice2 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %choice2, align 2
  %conv.i42 = zext i16 %39 to i32
  %mul.i43 = mul i32 %shr.i41, %conv.i42
  %40 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %code.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %mul.i43)
  %cmp.i45 = icmp ult i32 %41, %mul.i43
  br i1 %cmp.i45, label %if.then4, label %if.else9

if.then4:                                         ; preds = %rc_normalize.exit.i46
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul.i43, ptr %s, align 4
  %43 = ptrtoint ptr %choice2 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %choice2, align 2
  %conv3.i47 = zext i16 %44 to i32
  %sub.i48 = sub nsw i32 2048, %conv3.i47
  %shr4.i49 = ashr i32 %sub.i48, 5
  %45 = trunc i32 %shr4.i49 to i16
  %conv6.i50 = add i16 %44, %45
  store i16 %conv6.i50, ptr %choice2, align 2
  %arrayidx5 = getelementptr %struct.lzma_len_dec, ptr %l, i32 0, i32 3, i32 %pos_state
  br label %if.end13

if.else9:                                         ; preds = %rc_normalize.exit.i46
  call void @__sanitizer_cov_trace_pc() #9
  %sub8.i52 = sub i32 %37, %mul.i43
  %46 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub8.i52, ptr %s, align 4
  %sub10.i53 = sub i32 %41, %mul.i43
  %47 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub10.i53, ptr %code.i, align 4
  %48 = ptrtoint ptr %choice2 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %choice2, align 2
  %50 = lshr i16 %49, 5
  %sub14.i54 = sub i16 %49, %50
  store i16 %sub14.i54, ptr %choice2, align 2
  %high = getelementptr inbounds %struct.lzma_len_dec, ptr %l, i32 0, i32 4
  br label %if.end13

if.end13:                                         ; preds = %if.else9, %if.then4, %if.then
  %.sink = phi i32 [ 10, %if.then4 ], [ 18, %if.else9 ], [ 2, %if.then ]
  %probs.0 = phi ptr [ %arrayidx5, %if.then4 ], [ %high, %if.else9 ], [ %arrayidx, %if.then ]
  %limit.0 = phi i32 [ 8, %if.then4 ], [ 256, %if.else9 ], [ 8, %if.then ]
  %len8 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 5
  %51 = ptrtoint ptr %len8 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.sink, ptr %len8, align 4
  %in.i.i.i = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 3
  %in_pos.i.i.i = getelementptr inbounds %struct.rc_dec, ptr %s, i32 0, i32 4
  br label %do.body.i

do.body.i:                                        ; preds = %.do.body.i_crit_edge, %if.end13
  %symbol.0.i = phi i32 [ 1, %if.end13 ], [ %80, %.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %probs.0, i32 %symbol.0.i
  %52 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %53)
  %cmp.i.i.i = icmp ult i32 %53, 16777216
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.body.i.rc_normalize.exit.i.i_crit_edge

do.body.i.rc_normalize.exit.i.i_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rc_normalize.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i.i = shl nuw i32 %53, 8
  %54 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %shl.i.i.i, ptr %s, align 4
  %55 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %code.i, align 4
  %shl2.i.i.i = shl i32 %56, 8
  %57 = ptrtoint ptr %in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %in.i.i.i, align 4
  %59 = ptrtoint ptr %in_pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %in_pos.i.i.i, align 4
  %inc.i.i.i = add i32 %60, 1
  store i32 %inc.i.i.i, ptr %in_pos.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %58, i32 %60
  %61 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %62 to i32
  %add.i.i.i = or i32 %shl2.i.i.i, %conv.i.i.i
  store i32 %add.i.i.i, ptr %code.i, align 4
  br label %rc_normalize.exit.i.i

rc_normalize.exit.i.i:                            ; preds = %if.then.i.i.i, %do.body.i.rc_normalize.exit.i.i_crit_edge
  %63 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %s, align 4
  %shr.i.i = lshr i32 %64, 11
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx.i, align 2
  %conv.i.i60 = zext i16 %66 to i32
  %mul.i.i = mul i32 %shr.i.i, %conv.i.i60
  %67 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %code.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %mul.i.i)
  %cmp.i.i61 = icmp ult i32 %68, %mul.i.i
  br i1 %cmp.i.i61, label %74, label %rc_bit.exit.i

rc_bit.exit.i:                                    ; preds = %rc_normalize.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub8.i.i = sub i32 %64, %mul.i.i
  %69 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub8.i.i, ptr %s, align 4
  %sub10.i.i = sub i32 %68, %mul.i.i
  %70 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub10.i.i, ptr %code.i, align 4
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx.i, align 2
  %73 = lshr i16 %72, 5
  %sub14.i.i = sub i16 %72, %73
  store i16 %sub14.i.i, ptr %arrayidx.i, align 2
  %shl.i = shl i32 %symbol.0.i, 1
  %add.i = or i32 %shl.i, 1
  br label %79

74:                                               ; preds = %rc_normalize.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %mul.i.i, ptr %s, align 4
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx.i, align 2
  %conv3.i.i = zext i16 %77 to i32
  %sub.i.i = sub nsw i32 2048, %conv3.i.i
  %shr4.i.i = ashr i32 %sub.i.i, 5
  %78 = trunc i32 %shr4.i.i to i16
  %conv6.i.i = add i16 %77, %78
  store i16 %conv6.i.i, ptr %arrayidx.i, align 2
  %shl9.i = shl i32 %symbol.0.i, 1
  br label %79

79:                                               ; preds = %74, %rc_bit.exit.i
  %80 = phi i32 [ %shl9.i, %74 ], [ %add.i, %rc_bit.exit.i ]
  %cmp.i62 = icmp ult i32 %80, %limit.0
  br i1 %cmp.i62, label %.do.body.i_crit_edge, label %rc_bittree.exit

.do.body.i_crit_edge:                             ; preds = %79
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

rc_bittree.exit:                                  ; preds = %79
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %80, %limit.0
  %len17 = getelementptr inbounds %struct.xz_dec_lzma2, ptr %s, i32 0, i32 3, i32 5
  %81 = ptrtoint ptr %len17 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len17, align 4
  %add = add i32 %sub, %82
  store i32 %add, ptr %len17, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }

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
!9 = !{i8 0, i8 2}
