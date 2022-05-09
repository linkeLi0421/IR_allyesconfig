; ModuleID = '/llk/IR_all_yes/drivers/misc/altera-stapl/altera-comp.c_pt.bc'
source_filename = "../drivers/misc/altera-stapl/altera-comp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @altera_shrink(ptr nocapture noundef readonly %in, i32 noundef %in_length, ptr nocapture noundef %out, i32 noundef %out_length, i32 noundef %version) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %version)
  %cmp = icmp sgt i32 %version, 0
  %spec.select = select i1 %cmp, i32 8191, i32 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out_length)
  %cmp1226.not = icmp eq i32 %out_length, 0
  br i1 %cmp1226.not, label %entry.altera_read_packed.exit_crit_edge, label %for.body.preheader

entry.altera_read_packed.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %altera_read_packed.exit

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %0 = call ptr @memset(ptr %out, i32 0, i32 %out_length)
  br label %altera_read_packed.exit

altera_read_packed.exit:                          ; preds = %for.body.preheader, %entry.altera_read_packed.exit_crit_edge
  %1 = ptrtoint ptr %in to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %in, align 1
  %conv.i = zext i8 %2 to i32
  br label %while.body.i.1

while.body.i.1:                                   ; preds = %if.end.i.1.while.body.i.1_crit_edge, %altera_read_packed.exit
  %bits_avail.1.1 = phi i32 [ 8, %if.end.i.1.while.body.i.1_crit_edge ], [ 0, %altera_read_packed.exit ]
  %in_index.1.1 = phi i32 [ %inc.i.1, %if.end.i.1.while.body.i.1_crit_edge ], [ 0, %altera_read_packed.exit ]
  %shift.030.i.1 = phi i32 [ %add9.i.1, %if.end.i.1.while.body.i.1_crit_edge ], [ 0, %altera_read_packed.exit ]
  %result.029.i.1 = phi i32 [ %or.i.1, %if.end.i.1.while.body.i.1_crit_edge ], [ 0, %altera_read_packed.exit ]
  %bits.addr.028.i.1 = phi i32 [ %sub10.i.1, %if.end.i.1.while.body.i.1_crit_edge ], [ 8, %altera_read_packed.exit ]
  %arrayidx.i.1 = getelementptr i8, ptr %in, i32 %in_index.1.1
  %3 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i.1, align 1
  %conv.i.1 = zext i8 %4 to i32
  %sub.i.1 = sub nuw nsw i32 8, %bits_avail.1.1
  %and.i.1 = lshr i32 %conv.i.1, %sub.i.1
  %shl.i.1 = shl i32 %and.i.1, %shift.030.i.1
  %or.i.1 = or i32 %shl.i.1, %result.029.i.1
  call void @__sanitizer_cov_trace_cmp4(i32 %bits.addr.028.i.1, i32 %bits_avail.1.1)
  %cmp3.not.i.1 = icmp ugt i32 %bits.addr.028.i.1, %bits_avail.1.1
  br i1 %cmp3.not.i.1, label %if.end.i.1, label %if.end.thread.i.1

if.end.thread.i.1:                                ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #4
  %5 = add i32 %shift.030.i.1, %bits.addr.028.i.1
  %sub5.i.1 = sub i32 16, %5
  %shr6.i.1 = lshr i32 65535, %sub5.i.1
  %and7.i.1 = and i32 %or.i.1, %shr6.i.1
  %sub8.i.1 = sub i32 %bits_avail.1.1, %bits.addr.028.i.1
  br label %altera_read_packed.exit.1

if.end.i.1:                                       ; preds = %while.body.i.1
  %inc.i.1 = add i32 %in_index.1.1, 1
  %add9.i.1 = add i32 %shift.030.i.1, %bits_avail.1.1
  %sub10.i.1 = sub i32 %bits.addr.028.i.1, %bits_avail.1.1
  %cmp.not.i.1 = icmp eq i32 %sub10.i.1, 0
  br i1 %cmp.not.i.1, label %if.end.i.1.altera_read_packed.exit.1_crit_edge, label %if.end.i.1.while.body.i.1_crit_edge

if.end.i.1.while.body.i.1_crit_edge:              ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i.1

if.end.i.1.altera_read_packed.exit.1_crit_edge:   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %altera_read_packed.exit.1

altera_read_packed.exit.1:                        ; preds = %if.end.i.1.altera_read_packed.exit.1_crit_edge, %if.end.thread.i.1
  %bits_avail.2.1 = phi i32 [ %sub8.i.1, %if.end.thread.i.1 ], [ 8, %if.end.i.1.altera_read_packed.exit.1_crit_edge ]
  %in_index.2.1 = phi i32 [ %in_index.1.1, %if.end.thread.i.1 ], [ %inc.i.1, %if.end.i.1.altera_read_packed.exit.1_crit_edge ]
  %result.0.lcssa.i.1 = phi i32 [ %and7.i.1, %if.end.thread.i.1 ], [ %or.i.1, %if.end.i.1.altera_read_packed.exit.1_crit_edge ]
  %shl.1 = shl i32 %result.0.lcssa.i.1, 8
  %or.1 = or i32 %shl.1, %conv.i
  br label %while.body.i.2

while.body.i.2:                                   ; preds = %if.end.i.2.while.body.i.2_crit_edge, %altera_read_packed.exit.1
  %bits_avail.1.2 = phi i32 [ 8, %if.end.i.2.while.body.i.2_crit_edge ], [ %bits_avail.2.1, %altera_read_packed.exit.1 ]
  %in_index.1.2 = phi i32 [ %inc.i.2, %if.end.i.2.while.body.i.2_crit_edge ], [ %in_index.2.1, %altera_read_packed.exit.1 ]
  %shift.030.i.2 = phi i32 [ %add9.i.2, %if.end.i.2.while.body.i.2_crit_edge ], [ 0, %altera_read_packed.exit.1 ]
  %result.029.i.2 = phi i32 [ %or.i.2, %if.end.i.2.while.body.i.2_crit_edge ], [ 0, %altera_read_packed.exit.1 ]
  %bits.addr.028.i.2 = phi i32 [ %sub10.i.2, %if.end.i.2.while.body.i.2_crit_edge ], [ 8, %altera_read_packed.exit.1 ]
  %arrayidx.i.2 = getelementptr i8, ptr %in, i32 %in_index.1.2
  %6 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.2, align 1
  %conv.i.2 = zext i8 %7 to i32
  %sub.i.2 = sub i32 8, %bits_avail.1.2
  %and.i.2 = lshr i32 %conv.i.2, %sub.i.2
  %shl.i.2 = shl i32 %and.i.2, %shift.030.i.2
  %or.i.2 = or i32 %shl.i.2, %result.029.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %bits.addr.028.i.2, i32 %bits_avail.1.2)
  %cmp3.not.i.2 = icmp ugt i32 %bits.addr.028.i.2, %bits_avail.1.2
  br i1 %cmp3.not.i.2, label %if.end.i.2, label %if.end.thread.i.2

if.end.thread.i.2:                                ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #4
  %8 = add i32 %shift.030.i.2, %bits.addr.028.i.2
  %sub5.i.2 = sub i32 16, %8
  %shr6.i.2 = lshr i32 65535, %sub5.i.2
  %and7.i.2 = and i32 %or.i.2, %shr6.i.2
  %sub8.i.2 = sub i32 %bits_avail.1.2, %bits.addr.028.i.2
  br label %altera_read_packed.exit.2

if.end.i.2:                                       ; preds = %while.body.i.2
  %inc.i.2 = add i32 %in_index.1.2, 1
  %add9.i.2 = add i32 %shift.030.i.2, %bits_avail.1.2
  %sub10.i.2 = sub i32 %bits.addr.028.i.2, %bits_avail.1.2
  %cmp.not.i.2 = icmp eq i32 %sub10.i.2, 0
  br i1 %cmp.not.i.2, label %if.end.i.2.altera_read_packed.exit.2_crit_edge, label %if.end.i.2.while.body.i.2_crit_edge

if.end.i.2.while.body.i.2_crit_edge:              ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i.2

if.end.i.2.altera_read_packed.exit.2_crit_edge:   ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %altera_read_packed.exit.2

altera_read_packed.exit.2:                        ; preds = %if.end.i.2.altera_read_packed.exit.2_crit_edge, %if.end.thread.i.2
  %bits_avail.2.2 = phi i32 [ %sub8.i.2, %if.end.thread.i.2 ], [ 8, %if.end.i.2.altera_read_packed.exit.2_crit_edge ]
  %in_index.2.2 = phi i32 [ %in_index.1.2, %if.end.thread.i.2 ], [ %inc.i.2, %if.end.i.2.altera_read_packed.exit.2_crit_edge ]
  %result.0.lcssa.i.2 = phi i32 [ %and7.i.2, %if.end.thread.i.2 ], [ %or.i.2, %if.end.i.2.altera_read_packed.exit.2_crit_edge ]
  %shl.2 = shl i32 %result.0.lcssa.i.2, 16
  %or.2 = or i32 %shl.2, %or.1
  br label %while.body.i.3

while.body.i.3:                                   ; preds = %if.end.i.3.while.body.i.3_crit_edge, %altera_read_packed.exit.2
  %bits_avail.1.3 = phi i32 [ 8, %if.end.i.3.while.body.i.3_crit_edge ], [ %bits_avail.2.2, %altera_read_packed.exit.2 ]
  %in_index.1.3 = phi i32 [ %inc.i.3, %if.end.i.3.while.body.i.3_crit_edge ], [ %in_index.2.2, %altera_read_packed.exit.2 ]
  %shift.030.i.3 = phi i32 [ %add9.i.3, %if.end.i.3.while.body.i.3_crit_edge ], [ 0, %altera_read_packed.exit.2 ]
  %result.029.i.3 = phi i32 [ %or.i.3, %if.end.i.3.while.body.i.3_crit_edge ], [ 0, %altera_read_packed.exit.2 ]
  %bits.addr.028.i.3 = phi i32 [ %sub10.i.3, %if.end.i.3.while.body.i.3_crit_edge ], [ 8, %altera_read_packed.exit.2 ]
  %arrayidx.i.3 = getelementptr i8, ptr %in, i32 %in_index.1.3
  %9 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.3, align 1
  %conv.i.3 = zext i8 %10 to i32
  %sub.i.3 = sub i32 8, %bits_avail.1.3
  %and.i.3 = lshr i32 %conv.i.3, %sub.i.3
  %shl.i.3 = shl i32 %and.i.3, %shift.030.i.3
  %or.i.3 = or i32 %shl.i.3, %result.029.i.3
  call void @__sanitizer_cov_trace_cmp4(i32 %bits.addr.028.i.3, i32 %bits_avail.1.3)
  %cmp3.not.i.3 = icmp ugt i32 %bits.addr.028.i.3, %bits_avail.1.3
  br i1 %cmp3.not.i.3, label %if.end.i.3, label %if.end.thread.i.3

if.end.thread.i.3:                                ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #4
  %11 = add i32 %shift.030.i.3, %bits.addr.028.i.3
  %sub5.i.3 = sub i32 16, %11
  %shr6.i.3 = lshr i32 65535, %sub5.i.3
  %and7.i.3 = and i32 %or.i.3, %shr6.i.3
  %sub8.i.3 = sub i32 %bits_avail.1.3, %bits.addr.028.i.3
  br label %altera_read_packed.exit.3

if.end.i.3:                                       ; preds = %while.body.i.3
  %inc.i.3 = add i32 %in_index.1.3, 1
  %add9.i.3 = add i32 %shift.030.i.3, %bits_avail.1.3
  %sub10.i.3 = sub i32 %bits.addr.028.i.3, %bits_avail.1.3
  %cmp.not.i.3 = icmp eq i32 %sub10.i.3, 0
  br i1 %cmp.not.i.3, label %if.end.i.3.altera_read_packed.exit.3_crit_edge, label %if.end.i.3.while.body.i.3_crit_edge

if.end.i.3.while.body.i.3_crit_edge:              ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i.3

if.end.i.3.altera_read_packed.exit.3_crit_edge:   ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %altera_read_packed.exit.3

altera_read_packed.exit.3:                        ; preds = %if.end.i.3.altera_read_packed.exit.3_crit_edge, %if.end.thread.i.3
  %bits_avail.2.3 = phi i32 [ %sub8.i.3, %if.end.thread.i.3 ], [ 8, %if.end.i.3.altera_read_packed.exit.3_crit_edge ]
  %in_index.2.3 = phi i32 [ %in_index.1.3, %if.end.thread.i.3 ], [ %inc.i.3, %if.end.i.3.altera_read_packed.exit.3_crit_edge ]
  %result.0.lcssa.i.3 = phi i32 [ %and7.i.3, %if.end.thread.i.3 ], [ %or.i.3, %if.end.i.3.altera_read_packed.exit.3_crit_edge ]
  %shl.3 = shl i32 %result.0.lcssa.i.3, 24
  %or.3 = or i32 %shl.3, %or.2
  %12 = add i32 %or.3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %out_length)
  %.not = icmp ult i32 %12, %out_length
  br i1 %.not, label %altera_read_packed.exit.3.while.body.i100.preheader_crit_edge, label %altera_read_packed.exit.3.cleanup_crit_edge

altera_read_packed.exit.3.cleanup_crit_edge:      ; preds = %altera_read_packed.exit.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

altera_read_packed.exit.3.while.body.i100.preheader_crit_edge: ; preds = %altera_read_packed.exit.3
  br label %while.body.i100.preheader

while.body.i100.preheader:                        ; preds = %if.end48.while.body.i100.preheader_crit_edge, %altera_read_packed.exit.3.while.body.i100.preheader_crit_edge
  %i.2242 = phi i32 [ %i.7, %if.end48.while.body.i100.preheader_crit_edge ], [ 0, %altera_read_packed.exit.3.while.body.i100.preheader_crit_edge ]
  %in_index.3241 = phi i32 [ %in_index.14, %if.end48.while.body.i100.preheader_crit_edge ], [ %in_index.2.3, %altera_read_packed.exit.3.while.body.i100.preheader_crit_edge ]
  %bits_avail.3240 = phi i32 [ %bits_avail.14, %if.end48.while.body.i100.preheader_crit_edge ], [ %bits_avail.2.3, %altera_read_packed.exit.3.while.body.i100.preheader_crit_edge ]
  br label %while.body.i100

while.body.i100:                                  ; preds = %if.end.i110.while.body.i100_crit_edge, %while.body.i100.preheader
  %bits_avail.4 = phi i32 [ 8, %if.end.i110.while.body.i100_crit_edge ], [ %bits_avail.3240, %while.body.i100.preheader ]
  %in_index.4 = phi i32 [ %inc.i106, %if.end.i110.while.body.i100_crit_edge ], [ %in_index.3241, %while.body.i100.preheader ]
  %shift.030.i90 = phi i32 [ %add9.i107, %if.end.i110.while.body.i100_crit_edge ], [ 0, %while.body.i100.preheader ]
  %result.029.i91 = phi i32 [ %or.i98, %if.end.i110.while.body.i100_crit_edge ], [ 0, %while.body.i100.preheader ]
  %bits.addr.028.i92 = phi i32 [ %sub10.i108, %if.end.i110.while.body.i100_crit_edge ], [ 1, %while.body.i100.preheader ]
  %arrayidx.i93 = getelementptr i8, ptr %in, i32 %in_index.4
  %13 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i93, align 1
  %conv.i94 = zext i8 %14 to i32
  %sub.i95 = sub i32 8, %bits_avail.4
  %and.i96 = lshr i32 %conv.i94, %sub.i95
  %shl.i97 = shl i32 %and.i96, %shift.030.i90
  %or.i98 = or i32 %shl.i97, %result.029.i91
  call void @__sanitizer_cov_trace_cmp4(i32 %bits.addr.028.i92, i32 %bits_avail.4)
  %cmp3.not.i99 = icmp ugt i32 %bits.addr.028.i92, %bits_avail.4
  br i1 %cmp3.not.i99, label %if.end.i110, label %if.end.thread.i105

if.end.thread.i105:                               ; preds = %while.body.i100
  call void @__sanitizer_cov_trace_pc() #4
  %15 = add i32 %shift.030.i90, %bits.addr.028.i92
  %sub5.i101 = sub i32 16, %15
  %shr6.i102 = lshr i32 65535, %sub5.i101
  %and7.i103 = and i32 %or.i98, %shr6.i102
  %sub8.i104 = sub i32 %bits_avail.4, %bits.addr.028.i92
  br label %altera_read_packed.exit112

if.end.i110:                                      ; preds = %while.body.i100
  %inc.i106 = add i32 %in_index.4, 1
  %add9.i107 = add i32 %shift.030.i90, %bits_avail.4
  %sub10.i108 = sub i32 %bits.addr.028.i92, %bits_avail.4
  %cmp.not.i109 = icmp eq i32 %sub10.i108, 0
  br i1 %cmp.not.i109, label %if.end.i110.altera_read_packed.exit112_crit_edge, label %if.end.i110.while.body.i100_crit_edge

if.end.i110.while.body.i100_crit_edge:            ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i100

if.end.i110.altera_read_packed.exit112_crit_edge: ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #4
  br label %altera_read_packed.exit112

altera_read_packed.exit112:                       ; preds = %if.end.i110.altera_read_packed.exit112_crit_edge, %if.end.thread.i105
  %bits_avail.5 = phi i32 [ %sub8.i104, %if.end.thread.i105 ], [ 8, %if.end.i110.altera_read_packed.exit112_crit_edge ]
  %in_index.5 = phi i32 [ %in_index.4, %if.end.thread.i105 ], [ %inc.i106, %if.end.i110.altera_read_packed.exit112_crit_edge ]
  %result.0.lcssa.i111 = phi i32 [ %and7.i103, %if.end.thread.i105 ], [ %or.i98, %if.end.i110.altera_read_packed.exit112_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.lcssa.i111)
  %cmp13 = icmp eq i32 %result.0.lcssa.i111, 0
  br i1 %cmp13, label %for.body17.preheader, label %if.else

for.body17.preheader:                             ; preds = %altera_read_packed.exit112
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2242, i32 %or.3)
  %cmp18 = icmp ult i32 %i.2242, %or.3
  br i1 %cmp18, label %for.body17.preheader.while.body.i123_crit_edge, label %for.body17.preheader.for.inc24_crit_edge

for.body17.preheader.for.inc24_crit_edge:         ; preds = %for.body17.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc24

for.body17.preheader.while.body.i123_crit_edge:   ; preds = %for.body17.preheader
  br label %while.body.i123

while.body.i123:                                  ; preds = %if.end.i133.while.body.i123_crit_edge, %for.body17.preheader.while.body.i123_crit_edge
  %bits_avail.7 = phi i32 [ 8, %if.end.i133.while.body.i123_crit_edge ], [ %bits_avail.5, %for.body17.preheader.while.body.i123_crit_edge ]
  %in_index.7 = phi i32 [ %inc.i129, %if.end.i133.while.body.i123_crit_edge ], [ %in_index.5, %for.body17.preheader.while.body.i123_crit_edge ]
  %shift.030.i113 = phi i32 [ %add9.i130, %if.end.i133.while.body.i123_crit_edge ], [ 0, %for.body17.preheader.while.body.i123_crit_edge ]
  %result.029.i114 = phi i32 [ %or.i121, %if.end.i133.while.body.i123_crit_edge ], [ 0, %for.body17.preheader.while.body.i123_crit_edge ]
  %bits.addr.028.i115 = phi i32 [ %sub10.i131, %if.end.i133.while.body.i123_crit_edge ], [ 8, %for.body17.preheader.while.body.i123_crit_edge ]
  %arrayidx.i116 = getelementptr i8, ptr %in, i32 %in_index.7
  %16 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i116, align 1
  %conv.i117 = zext i8 %17 to i32
  %sub.i118 = sub i32 8, %bits_avail.7
  %and.i119 = lshr i32 %conv.i117, %sub.i118
  %shl.i120 = shl i32 %and.i119, %shift.030.i113
  %or.i121 = or i32 %shl.i120, %result.029.i114
  call void @__sanitizer_cov_trace_cmp4(i32 %bits.addr.028.i115, i32 %bits_avail.7)
  %cmp3.not.i122 = icmp ugt i32 %bits.addr.028.i115, %bits_avail.7
  br i1 %cmp3.not.i122, label %if.end.i133, label %if.end.thread.i128

if.end.thread.i128:                               ; preds = %while.body.i123
  call void @__sanitizer_cov_trace_pc() #4
  %18 = add i32 %shift.030.i113, %bits.addr.028.i115
  %sub5.i124 = sub i32 16, %18
  %shr6.i125 = lshr i32 65535, %sub5.i124
  %and7.i126 = and i32 %or.i121, %shr6.i125
  %sub8.i127 = sub i32 %bits_avail.7, %bits.addr.028.i115
  br label %altera_read_packed.exit135

if.end.i133:                                      ; preds = %while.body.i123
  %inc.i129 = add i32 %in_index.7, 1
  %add9.i130 = add i32 %shift.030.i113, %bits_avail.7
  %sub10.i131 = sub i32 %bits.addr.028.i115, %bits_avail.7
  %cmp.not.i132 = icmp eq i32 %sub10.i131, 0
  br i1 %cmp.not.i132, label %if.end.i133.altera_read_packed.exit135_crit_edge, label %if.end.i133.while.body.i123_crit_edge

if.end.i133.while.body.i123_crit_edge:            ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i123

if.end.i133.altera_read_packed.exit135_crit_edge: ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #4
  br label %altera_read_packed.exit135

altera_read_packed.exit135:                       ; preds = %if.end.i133.altera_read_packed.exit135_crit_edge, %if.end.thread.i128
  %bits_avail.8 = phi i32 [ %sub8.i127, %if.end.thread.i128 ], [ 8, %if.end.i133.altera_read_packed.exit135_crit_edge ]
  %in_index.8 = phi i32 [ %in_index.7, %if.end.thread.i128 ], [ %inc.i129, %if.end.i133.altera_read_packed.exit135_crit_edge ]
  %result.0.lcssa.i134 = phi i32 [ %and7.i126, %if.end.thread.i128 ], [ %or.i121, %if.end.i133.altera_read_packed.exit135_crit_edge ]
  %conv = trunc i32 %result.0.lcssa.i134 to i8
  %arrayidx21 = getelementptr i8, ptr %out, i32 %i.2242
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %arrayidx21, align 1
  %inc22 = add i32 %i.2242, 1
  br label %for.inc24

for.inc24:                                        ; preds = %altera_read_packed.exit135, %for.body17.preheader.for.inc24_crit_edge
  %bits_avail.9 = phi i32 [ %bits_avail.8, %altera_read_packed.exit135 ], [ %bits_avail.5, %for.body17.preheader.for.inc24_crit_edge ]
  %in_index.9 = phi i32 [ %in_index.8, %altera_read_packed.exit135 ], [ %in_index.5, %for.body17.preheader.for.inc24_crit_edge ]
  %i.4 = phi i32 [ %inc22, %altera_read_packed.exit135 ], [ %i.2242, %for.body17.preheader.for.inc24_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.4, i32 %or.3)
  %cmp18.1 = icmp ult i32 %i.4, %or.3
  br i1 %cmp18.1, label %for.inc24.while.body.i123.1_crit_edge, label %for.inc24.for.inc24.1_crit_edge

for.inc24.for.inc24.1_crit_edge:                  ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc24.1

for.inc24.while.body.i123.1_crit_edge:            ; preds = %for.inc24
  br label %while.body.i123.1

while.body.i123.1:                                ; preds = %if.end.i133.1.while.body.i123.1_crit_edge, %for.inc24.while.body.i123.1_crit_edge
  %bits_avail.7.1 = phi i32 [ 8, %if.end.i133.1.while.body.i123.1_crit_edge ], [ %bits_avail.9, %for.inc24.while.body.i123.1_crit_edge ]
  %in_index.7.1 = phi i32 [ %inc.i129.1, %if.end.i133.1.while.body.i123.1_crit_edge ], [ %in_index.9, %for.inc24.while.body.i123.1_crit_edge ]
  %shift.030.i113.1 = phi i32 [ %add9.i130.1, %if.end.i133.1.while.body.i123.1_crit_edge ], [ 0, %for.inc24.while.body.i123.1_crit_edge ]
  %result.029.i114.1 = phi i32 [ %or.i121.1, %if.end.i133.1.while.body.i123.1_crit_edge ], [ 0, %for.inc24.while.body.i123.1_crit_edge ]
  %bits.addr.028.i115.1 = phi i32 [ %sub10.i131.1, %if.end.i133.1.while.body.i123.1_crit_edge ], [ 8, %for.inc24.while.body.i123.1_crit_edge ]
  %arrayidx.i116.1 = getelementptr i8, ptr %in, i32 %in_index.7.1
  %20 = ptrtoint ptr %arrayidx.i116.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i116.1, align 1
  %conv.i117.1 = zext i8 %21 to i32
  %sub.i118.1 = sub i32 8, %bits_avail.7.1
  %and.i119.1 = lshr i32 %conv.i117.1, %sub.i118.1
  %shl.i120.1 = shl i32 %and.i119.1, %shift.030.i113.1
  %or.i121.1 = or i32 %shl.i120.1, %result.029.i114.1
  call void @__sanitizer_cov_trace_cmp4(i32 %bits.addr.028.i115.1, i32 %bits_avail.7.1)
  %cmp3.not.i122.1 = icmp ugt i32 %bits.addr.028.i115.1, %bits_avail.7.1
  br i1 %cmp3.not.i122.1, label %if.end.i133.1, label %if.end.thread.i128.1

if.end.thread.i128.1:                             ; preds = %while.body.i123.1
  call void @__sanitizer_cov_trace_pc() #4
  %22 = add i32 %shift.030.i113.1, %bits.addr.028.i115.1
  %sub5.i124.1 = sub i32 16, %22
  %shr6.i125.1 = lshr i32 65535, %sub5.i124.1
  %and7.i126.1 = and i32 %or.i121.1, %shr6.i125.1
  %sub8.i127.1 = sub i32 %bits_avail.7.1, %bits.addr.028.i115.1
  br label %altera_read_packed.exit135.1

if.end.i133.1:                                    ; preds = %while.body.i123.1
  %inc.i129.1 = add i32 %in_index.7.1, 1
  %add9.i130.1 = add i32 %shift.030.i113.1, %bits_avail.7.1
  %sub10.i131.1 = sub i32 %bits.addr.028.i115.1, %bits_avail.7.1
  %cmp.not.i132.1 = icmp eq i32 %sub10.i131.1, 0
  br i1 %cmp.not.i132.1, label %if.end.i133.1.altera_read_packed.exit135.1_crit_edge, label %if.end.i133.1.while.body.i123.1_crit_edge

if.end.i133.1.while.body.i123.1_crit_edge:        ; preds = %if.end.i133.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i123.1

if.end.i133.1.altera_read_packed.exit135.1_crit_edge: ; preds = %if.end.i133.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %altera_read_packed.exit135.1

altera_read_packed.exit135.1:                     ; preds = %if.end.i133.1.altera_read_packed.exit135.1_crit_edge, %if.end.thread.i128.1
  %bits_avail.8.1 = phi i32 [ %sub8.i127.1, %if.end.thread.i128.1 ], [ 8, %if.end.i133.1.altera_read_packed.exit135.1_crit_edge ]
  %in_index.8.1 = phi i32 [ %in_index.7.1, %if.end.thread.i128.1 ], [ %inc.i129.1, %if.end.i133.1.altera_read_packed.exit135.1_crit_edge ]
  %result.0.lcssa.i134.1 = phi i32 [ %and7.i126.1, %if.end.thread.i128.1 ], [ %or.i121.1, %if.end.i133.1.altera_read_packed.exit135.1_crit_edge ]
  %conv.1 = trunc i32 %result.0.lcssa.i134.1 to i8
  %arrayidx21.1 = getelementptr i8, ptr %out, i32 %i.4
  %23 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.1, ptr %arrayidx21.1, align 1
  %inc22.1 = add i32 %i.4, 1
  br label %for.inc24.1

for.inc24.1:                                      ; preds = %altera_read_packed.exit135.1, %for.inc24.for.inc24.1_crit_edge
  %bits_avail.9.1 = phi i32 [ %bits_avail.8.1, %altera_read_packed.exit135.1 ], [ %bits_avail.9, %for.inc24.for.inc24.1_crit_edge ]
  %in_index.9.1 = phi i32 [ %in_index.8.1, %altera_read_packed.exit135.1 ], [ %in_index.9, %for.inc24.for.inc24.1_crit_edge ]
  %i.4.1 = phi i32 [ %inc22.1, %altera_read_packed.exit135.1 ], [ %i.4, %for.inc24.for.inc24.1_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.4.1, i32 %or.3)
  %cmp18.2 = icmp ult i32 %i.4.1, %or.3
  br i1 %cmp18.2, label %for.inc24.1.while.body.i123.2_crit_edge, label %for.inc24.1.if.end48_crit_edge

for.inc24.1.if.end48_crit_edge:                   ; preds = %for.inc24.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end48

for.inc24.1.while.body.i123.2_crit_edge:          ; preds = %for.inc24.1
  br label %while.body.i123.2

while.body.i123.2:                                ; preds = %if.end.i133.2.while.body.i123.2_crit_edge, %for.inc24.1.while.body.i123.2_crit_edge
  %bits_avail.7.2 = phi i32 [ 8, %if.end.i133.2.while.body.i123.2_crit_edge ], [ %bits_avail.9.1, %for.inc24.1.while.body.i123.2_crit_edge ]
  %in_index.7.2 = phi i32 [ %inc.i129.2, %if.end.i133.2.while.body.i123.2_crit_edge ], [ %in_index.9.1, %for.inc24.1.while.body.i123.2_crit_edge ]
  %shift.030.i113.2 = phi i32 [ %add9.i130.2, %if.end.i133.2.while.body.i123.2_crit_edge ], [ 0, %for.inc24.1.while.body.i123.2_crit_edge ]
  %result.029.i114.2 = phi i32 [ %or.i121.2, %if.end.i133.2.while.body.i123.2_crit_edge ], [ 0, %for.inc24.1.while.body.i123.2_crit_edge ]
  %bits.addr.028.i115.2 = phi i32 [ %sub10.i131.2, %if.end.i133.2.while.body.i123.2_crit_edge ], [ 8, %for.inc24.1.while.body.i123.2_crit_edge ]
  %arrayidx.i116.2 = getelementptr i8, ptr %in, i32 %in_index.7.2
  %24 = ptrtoint ptr %arrayidx.i116.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i116.2, align 1
  %conv.i117.2 = zext i8 %25 to i32
  %sub.i118.2 = sub i32 8, %bits_avail.7.2
  %and.i119.2 = lshr i32 %conv.i117.2, %sub.i118.2
  %shl.i120.2 = shl i32 %and.i119.2, %shift.030.i113.2
  %or.i121.2 = or i32 %shl.i120.2, %result.029.i114.2
  call void @__sanitizer_cov_trace_cmp4(i32 %bits.addr.028.i115.2, i32 %bits_avail.7.2)
  %cmp3.not.i122.2 = icmp ugt i32 %bits.addr.028.i115.2, %bits_avail.7.2
  br i1 %cmp3.not.i122.2, label %if.end.i133.2, label %if.end.thread.i128.2

if.end.thread.i128.2:                             ; preds = %while.body.i123.2
  call void @__sanitizer_cov_trace_pc() #4
  %26 = add i32 %shift.030.i113.2, %bits.addr.028.i115.2
  %sub5.i124.2 = sub i32 16, %26
  %shr6.i125.2 = lshr i32 65535, %sub5.i124.2
  %and7.i126.2 = and i32 %or.i121.2, %shr6.i125.2
  %sub8.i127.2 = sub i32 %bits_avail.7.2, %bits.addr.028.i115.2
  br label %altera_read_packed.exit135.2

if.end.i133.2:                                    ; preds = %while.body.i123.2
  %inc.i129.2 = add i32 %in_index.7.2, 1
  %add9.i130.2 = add i32 %shift.030.i113.2, %bits_avail.7.2
  %sub10.i131.2 = sub i32 %bits.addr.028.i115.2, %bits_avail.7.2
  %cmp.not.i132.2 = icmp eq i32 %sub10.i131.2, 0
  br i1 %cmp.not.i132.2, label %if.end.i133.2.altera_read_packed.exit135.2_crit_edge, label %if.end.i133.2.while.body.i123.2_crit_edge

if.end.i133.2.while.body.i123.2_crit_edge:        ; preds = %if.end.i133.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i123.2

if.end.i133.2.altera_read_packed.exit135.2_crit_edge: ; preds = %if.end.i133.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %altera_read_packed.exit135.2

altera_read_packed.exit135.2:                     ; preds = %if.end.i133.2.altera_read_packed.exit135.2_crit_edge, %if.end.thread.i128.2
  %bits_avail.8.2 = phi i32 [ %sub8.i127.2, %if.end.thread.i128.2 ], [ 8, %if.end.i133.2.altera_read_packed.exit135.2_crit_edge ]
  %in_index.8.2 = phi i32 [ %in_index.7.2, %if.end.thread.i128.2 ], [ %inc.i129.2, %if.end.i133.2.altera_read_packed.exit135.2_crit_edge ]
  %result.0.lcssa.i134.2 = phi i32 [ %and7.i126.2, %if.end.thread.i128.2 ], [ %or.i121.2, %if.end.i133.2.altera_read_packed.exit135.2_crit_edge ]
  %conv.2 = trunc i32 %result.0.lcssa.i134.2 to i8
  %arrayidx21.2 = getelementptr i8, ptr %out, i32 %i.4.1
  %27 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.2, ptr %arrayidx21.2, align 1
  %inc22.2 = add i32 %i.4.1, 1
  br label %if.end48

if.else:                                          ; preds = %altera_read_packed.exit112
  %28 = tail call i32 @llvm.umin.i32(i32 %i.2242, i32 %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i = icmp eq i32 %28, 0
  %n.masked.numleadingzeros.i = tail call i32 @llvm.ctlz.i32(i32 %28, i1 true) #2, !range !9
  %n.masked.numactivebits.i = sub nuw nsw i32 32, %n.masked.numleadingzeros.i
  %result.1.i = select i1 %cmp.i, i32 1, i32 %n.masked.numactivebits.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.1.i)
  %cmp.not27.i = icmp eq i32 %result.1.i, 0
  br i1 %cmp.not27.i, label %if.else.altera_read_packed.exit159_crit_edge, label %if.else.while.body.i147_crit_edge

if.else.while.body.i147_crit_edge:                ; preds = %if.else
  br label %while.body.i147

if.else.altera_read_packed.exit159_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %altera_read_packed.exit159

while.body.i147:                                  ; preds = %if.end.i157.while.body.i147_crit_edge, %if.else.while.body.i147_crit_edge
  %bits_avail.10 = phi i32 [ 8, %if.end.i157.while.body.i147_crit_edge ], [ %bits_avail.5, %if.else.while.body.i147_crit_edge ]
  %in_index.10 = phi i32 [ %inc.i153, %if.end.i157.while.body.i147_crit_edge ], [ %in_index.5, %if.else.while.body.i147_crit_edge ]
  %shift.030.i137 = phi i32 [ %add9.i154, %if.end.i157.while.body.i147_crit_edge ], [ 0, %if.else.while.body.i147_crit_edge ]
  %result.029.i138 = phi i32 [ %or.i145, %if.end.i157.while.body.i147_crit_edge ], [ 0, %if.else.while.body.i147_crit_edge ]
  %bits.addr.028.i139 = phi i32 [ %sub10.i155, %if.end.i157.while.body.i147_crit_edge ], [ %result.1.i, %if.else.while.body.i147_crit_edge ]
  %arrayidx.i140 = getelementptr i8, ptr %in, i32 %in_index.10
  %29 = ptrtoint ptr %arrayidx.i140 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i140, align 1
  %conv.i141 = zext i8 %30 to i32
  %sub.i142 = sub i32 8, %bits_avail.10
  %and.i143 = lshr i32 %conv.i141, %sub.i142
  %shl.i144 = shl i32 %and.i143, %shift.030.i137
  %or.i145 = or i32 %shl.i144, %result.029.i138
  call void @__sanitizer_cov_trace_cmp4(i32 %bits.addr.028.i139, i32 %bits_avail.10)
  %cmp3.not.i146 = icmp ugt i32 %bits.addr.028.i139, %bits_avail.10
  br i1 %cmp3.not.i146, label %if.end.i157, label %if.end.thread.i152

if.end.thread.i152:                               ; preds = %while.body.i147
  call void @__sanitizer_cov_trace_pc() #4
  %31 = add i32 %shift.030.i137, %bits.addr.028.i139
  %sub5.i148 = sub i32 16, %31
  %shr6.i149 = lshr i32 65535, %sub5.i148
  %and7.i150 = and i32 %or.i145, %shr6.i149
  %sub8.i151 = sub i32 %bits_avail.10, %bits.addr.028.i139
  br label %altera_read_packed.exit159

if.end.i157:                                      ; preds = %while.body.i147
  %inc.i153 = add i32 %in_index.10, 1
  %add9.i154 = add i32 %shift.030.i137, %bits_avail.10
  %sub10.i155 = sub i32 %bits.addr.028.i139, %bits_avail.10
  %cmp.not.i156 = icmp eq i32 %sub10.i155, 0
  br i1 %cmp.not.i156, label %if.end.i157.altera_read_packed.exit159_crit_edge, label %if.end.i157.while.body.i147_crit_edge

if.end.i157.while.body.i147_crit_edge:            ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i147

if.end.i157.altera_read_packed.exit159_crit_edge: ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #4
  br label %altera_read_packed.exit159

altera_read_packed.exit159:                       ; preds = %if.end.i157.altera_read_packed.exit159_crit_edge, %if.end.thread.i152, %if.else.altera_read_packed.exit159_crit_edge
  %bits_avail.11 = phi i32 [ %bits_avail.5, %if.else.altera_read_packed.exit159_crit_edge ], [ %sub8.i151, %if.end.thread.i152 ], [ 8, %if.end.i157.altera_read_packed.exit159_crit_edge ]
  %in_index.11 = phi i32 [ %in_index.5, %if.else.altera_read_packed.exit159_crit_edge ], [ %in_index.10, %if.end.thread.i152 ], [ %inc.i153, %if.end.i157.altera_read_packed.exit159_crit_edge ]
  %result.0.lcssa.i158 = phi i32 [ 0, %if.else.altera_read_packed.exit159_crit_edge ], [ %and7.i150, %if.end.thread.i152 ], [ %or.i145, %if.end.i157.altera_read_packed.exit159_crit_edge ]
  br label %while.body.i170

while.body.i170:                                  ; preds = %if.end.i180.while.body.i170_crit_edge, %altera_read_packed.exit159
  %bits_avail.12 = phi i32 [ %bits_avail.11, %altera_read_packed.exit159 ], [ 8, %if.end.i180.while.body.i170_crit_edge ]
  %in_index.12 = phi i32 [ %in_index.11, %altera_read_packed.exit159 ], [ %inc.i176, %if.end.i180.while.body.i170_crit_edge ]
  %shift.030.i160 = phi i32 [ 0, %altera_read_packed.exit159 ], [ %add9.i177, %if.end.i180.while.body.i170_crit_edge ]
  %result.029.i161 = phi i32 [ 0, %altera_read_packed.exit159 ], [ %or.i168, %if.end.i180.while.body.i170_crit_edge ]
  %bits.addr.028.i162 = phi i32 [ 8, %altera_read_packed.exit159 ], [ %sub10.i178, %if.end.i180.while.body.i170_crit_edge ]
  %arrayidx.i163 = getelementptr i8, ptr %in, i32 %in_index.12
  %32 = ptrtoint ptr %arrayidx.i163 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i163, align 1
  %conv.i164 = zext i8 %33 to i32
  %sub.i165 = sub i32 8, %bits_avail.12
  %and.i166 = lshr i32 %conv.i164, %sub.i165
  %shl.i167 = shl i32 %and.i166, %shift.030.i160
  %or.i168 = or i32 %shl.i167, %result.029.i161
  call void @__sanitizer_cov_trace_cmp4(i32 %bits.addr.028.i162, i32 %bits_avail.12)
  %cmp3.not.i169 = icmp ugt i32 %bits.addr.028.i162, %bits_avail.12
  br i1 %cmp3.not.i169, label %if.end.i180, label %if.end.thread.i175

if.end.thread.i175:                               ; preds = %while.body.i170
  call void @__sanitizer_cov_trace_pc() #4
  %34 = add i32 %shift.030.i160, %bits.addr.028.i162
  %sub5.i171 = sub i32 16, %34
  %shr6.i172 = lshr i32 65535, %sub5.i171
  %and7.i173 = and i32 %or.i168, %shr6.i172
  %sub8.i174 = sub i32 %bits_avail.12, %bits.addr.028.i162
  br label %altera_read_packed.exit182

if.end.i180:                                      ; preds = %while.body.i170
  %inc.i176 = add i32 %in_index.12, 1
  %add9.i177 = add i32 %shift.030.i160, %bits_avail.12
  %sub10.i178 = sub i32 %bits.addr.028.i162, %bits_avail.12
  %cmp.not.i179 = icmp eq i32 %sub10.i178, 0
  br i1 %cmp.not.i179, label %if.end.i180.altera_read_packed.exit182_crit_edge, label %if.end.i180.while.body.i170_crit_edge

if.end.i180.while.body.i170_crit_edge:            ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i170

if.end.i180.altera_read_packed.exit182_crit_edge: ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #4
  br label %altera_read_packed.exit182

altera_read_packed.exit182:                       ; preds = %if.end.i180.altera_read_packed.exit182_crit_edge, %if.end.thread.i175
  %bits_avail.13 = phi i32 [ %sub8.i174, %if.end.thread.i175 ], [ 8, %if.end.i180.altera_read_packed.exit182_crit_edge ]
  %in_index.13 = phi i32 [ %in_index.12, %if.end.thread.i175 ], [ %inc.i176, %if.end.i180.altera_read_packed.exit182_crit_edge ]
  %result.0.lcssa.i181 = phi i32 [ %and7.i173, %if.end.thread.i175 ], [ %or.i168, %if.end.i180.altera_read_packed.exit182_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.lcssa.i181)
  %cmp35232.not = icmp eq i32 %result.0.lcssa.i181, 0
  br i1 %cmp35232.not, label %altera_read_packed.exit182.if.end48_crit_edge, label %altera_read_packed.exit182.for.body37_crit_edge

altera_read_packed.exit182.for.body37_crit_edge:  ; preds = %altera_read_packed.exit182
  br label %for.body37

altera_read_packed.exit182.if.end48_crit_edge:    ; preds = %altera_read_packed.exit182
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end48

for.body37:                                       ; preds = %for.inc45.for.body37_crit_edge, %altera_read_packed.exit182.for.body37_crit_edge
  %j.1234 = phi i32 [ %inc46, %for.inc45.for.body37_crit_edge ], [ 0, %altera_read_packed.exit182.for.body37_crit_edge ]
  %i.5233 = phi i32 [ %i.6, %for.inc45.for.body37_crit_edge ], [ %i.2242, %altera_read_packed.exit182.for.body37_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.5233, i32 %or.3)
  %cmp38 = icmp ult i32 %i.5233, %or.3
  br i1 %cmp38, label %if.then40, label %for.body37.for.inc45_crit_edge

for.body37.for.inc45_crit_edge:                   ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc45

if.then40:                                        ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #4
  %sub = sub i32 %i.5233, %result.0.lcssa.i158
  %arrayidx41 = getelementptr i8, ptr %out, i32 %sub
  %35 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx41, align 1
  %arrayidx42 = getelementptr i8, ptr %out, i32 %i.5233
  %37 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx42, align 1
  %inc43 = add nuw i32 %i.5233, 1
  br label %for.inc45

for.inc45:                                        ; preds = %if.then40, %for.body37.for.inc45_crit_edge
  %i.6 = phi i32 [ %inc43, %if.then40 ], [ %i.5233, %for.body37.for.inc45_crit_edge ]
  %inc46 = add nuw i32 %j.1234, 1
  %exitcond.not = icmp eq i32 %inc46, %result.0.lcssa.i181
  br i1 %exitcond.not, label %for.inc45.if.end48_crit_edge, label %for.inc45.for.body37_crit_edge

for.inc45.for.body37_crit_edge:                   ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body37

for.inc45.if.end48_crit_edge:                     ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end48

if.end48:                                         ; preds = %for.inc45.if.end48_crit_edge, %altera_read_packed.exit182.if.end48_crit_edge, %altera_read_packed.exit135.2, %for.inc24.1.if.end48_crit_edge
  %bits_avail.14 = phi i32 [ %bits_avail.13, %altera_read_packed.exit182.if.end48_crit_edge ], [ %bits_avail.8.2, %altera_read_packed.exit135.2 ], [ %bits_avail.9.1, %for.inc24.1.if.end48_crit_edge ], [ %bits_avail.13, %for.inc45.if.end48_crit_edge ]
  %in_index.14 = phi i32 [ %in_index.13, %altera_read_packed.exit182.if.end48_crit_edge ], [ %in_index.8.2, %altera_read_packed.exit135.2 ], [ %in_index.9.1, %for.inc24.1.if.end48_crit_edge ], [ %in_index.13, %for.inc45.if.end48_crit_edge ]
  %i.7 = phi i32 [ %i.2242, %altera_read_packed.exit182.if.end48_crit_edge ], [ %inc22.2, %altera_read_packed.exit135.2 ], [ %i.4.1, %for.inc24.1.if.end48_crit_edge ], [ %i.6, %for.inc45.if.end48_crit_edge ]
  %cmp11 = icmp ult i32 %i.7, %or.3
  br i1 %cmp11, label %if.end48.while.body.i100.preheader_crit_edge, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end48.while.body.i100.preheader_crit_edge:     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i100.preheader

cleanup:                                          ; preds = %if.end48.cleanup_crit_edge, %altera_read_packed.exit.3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %altera_read_packed.exit.3.cleanup_crit_edge ], [ %or.3, %if.end48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i32 18, i32 33}
