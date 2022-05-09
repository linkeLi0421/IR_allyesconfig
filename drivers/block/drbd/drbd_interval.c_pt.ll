; ModuleID = '/llk/IR_all_yes/drivers/block/drbd/drbd_interval.c_pt.bc'
source_filename = "../drivers/block/drbd/drbd_interval.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drbd_interval = type { %struct.rb_node, i64, i32, i64, i8 }
%struct.rb_node = type { i32, ptr, ptr }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @drbd_insert_interval(ptr noundef %root, ptr noundef %this) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sector = getelementptr inbounds %struct.drbd_interval, ptr %this, i32 0, i32 1
  %0 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sector, align 8
  %size = getelementptr inbounds %struct.drbd_interval, ptr %this, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 8
  %shr = lshr i32 %3, 9
  %conv = zext i32 %shr to i64
  %add = add i64 %1, %conv
  %and = and i32 %3, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %while.cond.preheader, label %do.body5, !prof !11

while.cond.preheader:                             ; preds = %entry
  %4 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root, align 4
  %tobool11.not79 = icmp eq ptr %5, null
  br i1 %tobool11.not79, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/drbd/drbd_interval.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 30, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %6 = phi ptr [ %23, %cleanup.while.body_crit_edge ], [ %5, %while.cond.preheader.while.body_crit_edge ]
  %new.080 = phi ptr [ %new.2, %cleanup.while.body_crit_edge ], [ %root, %while.cond.preheader.while.body_crit_edge ]
  %end = getelementptr inbounds %struct.drbd_interval, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %end, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %add)
  %cmp12 = icmp ult i64 %8, %add
  br i1 %cmp12, label %if.then14, label %while.body.if.end16_crit_edge

while.body.if.end16_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then14:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %add, ptr %end, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %while.body.if.end16_crit_edge
  %10 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sector, align 8
  %sector18 = getelementptr inbounds %struct.drbd_interval, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %sector18 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sector18, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp19 = icmp ult i64 %11, %13
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %new.080 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %new.080, align 4
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %15, i32 0, i32 2
  br label %cleanup

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp24 = icmp ugt i64 %11, %13
  br i1 %cmp24, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %new.080 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %new.080, align 4
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 1
  br label %cleanup

if.else27:                                        ; preds = %if.else
  %cmp28 = icmp ugt ptr %6, %this
  br i1 %cmp28, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %new.080 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %new.080, align 4
  %rb_left31 = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 2
  br label %cleanup

if.else32:                                        ; preds = %if.else27
  %cmp33 = icmp ult ptr %6, %this
  br i1 %cmp33, label %if.then35, label %if.else32.cleanup44_crit_edge

if.else32.cleanup44_crit_edge:                    ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup44

if.then35:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %new.080 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %new.080, align 4
  %rb_right36 = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.then30, %if.then26, %if.then21
  %new.2 = phi ptr [ %rb_left, %if.then21 ], [ %rb_right, %if.then26 ], [ %rb_left31, %if.then30 ], [ %rb_right36, %if.then35 ]
  %22 = ptrtoint ptr %new.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %new.2, align 4
  %tobool11.not = icmp eq ptr %23, null
  br i1 %tobool11.not, label %while.cond.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  %phi.cast.le = ptrtoint ptr %6 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %while.cond.preheader.while.end_crit_edge ]
  %new.0.lcssa = phi ptr [ %new.2, %while.cond.while.end_crit_edge ], [ %root, %while.cond.preheader.while.end_crit_edge ]
  %end42 = getelementptr inbounds %struct.drbd_interval, ptr %this, i32 0, i32 3
  %24 = ptrtoint ptr %end42 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %add, ptr %end42, align 8
  %25 = ptrtoint ptr %this to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %parent.0.lcssa, ptr %this, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %this, i32 0, i32 1
  %26 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %this, i32 0, i32 2
  %27 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rb_left.i, align 4
  %28 = ptrtoint ptr %new.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %this, ptr %new.0.lcssa, align 4
  tail call void @__rb_insert_augmented(ptr noundef %this, ptr noundef %root, ptr noundef nonnull @augment_callbacks_rotate) #5
  br label %cleanup44

cleanup44:                                        ; preds = %while.end, %if.else32.cleanup44_crit_edge
  %tobool11.not76 = phi i1 [ true, %while.end ], [ false, %if.else32.cleanup44_crit_edge ]
  ret i1 %tobool11.not76
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @drbd_contains_interval(ptr nocapture noundef readonly %root, i64 noundef %sector, ptr noundef readnone %interval) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.030 = load ptr, ptr %root, align 4
  %tobool.not31 = icmp eq ptr %node.030, null
  br i1 %tobool.not31, label %entry.cleanup17_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup17

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %node.032 = phi ptr [ %node.0, %cleanup.while.body_crit_edge ], [ %node.030, %entry.while.body_crit_edge ]
  %sector1 = getelementptr inbounds %struct.drbd_interval, ptr %node.032, i32 0, i32 1
  %1 = ptrtoint ptr %sector1 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %sector1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %sector)
  %cmp = icmp ugt i64 %2, %sector
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %node.032, i32 0, i32 2
  br label %cleanup

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %sector)
  %cmp3 = icmp ult i64 %2, %sector
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %node.032, i32 0, i32 1
  br label %cleanup

if.else5:                                         ; preds = %if.else
  %cmp6 = icmp ugt ptr %node.032, %interval
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #7
  %rb_left8 = getelementptr inbounds %struct.rb_node, ptr %node.032, i32 0, i32 2
  br label %cleanup

if.else9:                                         ; preds = %if.else5
  %cmp10 = icmp ult ptr %node.032, %interval
  br i1 %cmp10, label %if.then11, label %if.else9.cleanup17_crit_edge

if.else9.cleanup17_crit_edge:                     ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup17

if.then11:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #7
  %rb_right12 = getelementptr inbounds %struct.rb_node, ptr %node.032, i32 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.then7, %if.then4, %if.then
  %node.1.in = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then4 ], [ %rb_left8, %if.then7 ], [ %rb_right12, %if.then11 ]
  %3 = ptrtoint ptr %node.1.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %node.0 = load ptr, ptr %node.1.in, align 4
  %tobool.not = icmp eq ptr %node.0, null
  br i1 %tobool.not, label %cleanup.cleanup17_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup.cleanup17_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup17

cleanup17:                                        ; preds = %cleanup.cleanup17_crit_edge, %if.else9.cleanup17_crit_edge, %entry.cleanup17_crit_edge
  %tobool.not.lcssa = phi i1 [ false, %entry.cleanup17_crit_edge ], [ true, %if.else9.cleanup17_crit_edge ], [ false, %cleanup.cleanup17_crit_edge ]
  ret i1 %tobool.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_remove_interval(ptr noundef %root, ptr noundef readonly %this) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %this, i32 0, i32 1
  %0 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %this, i32 0, i32 2
  %2 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rb_left.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else6.i.i

if.then.i.i:                                      ; preds = %entry
  %4 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %this, align 4
  %and.i.i = and i32 %5, -4
  %6 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.__rb_change_child.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.__rb_change_child.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rb_change_child.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rb_left.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %8, %this
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 1
  %spec.select.i.i.i = select i1 %cmp.i.i.i, ptr %rb_left.i.i.i, ptr %rb_right.i.i.i
  br label %__rb_change_child.exit.i.i

__rb_change_child.exit.i.i:                       ; preds = %if.then.i.i.i, %if.then.i.i.__rb_change_child.exit.i.i_crit_edge
  %rb_left.sink.i.i.i = phi ptr [ %root, %if.then.i.i.__rb_change_child.exit.i.i_crit_edge ], [ %spec.select.i.i.i, %if.then.i.i.i ]
  %9 = ptrtoint ptr %rb_left.sink.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %1, ptr %rb_left.sink.i.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %__rb_change_child.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %5, ptr %1, align 4
  br label %if.end69.i.i

if.else.i.i:                                      ; preds = %__rb_change_child.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %and4.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  %spec.select.i.i = select i1 %tobool5.not.i.i, ptr null, ptr %6
  br label %if.end69.i.i

if.else6.i.i:                                     ; preds = %entry
  %tobool7.not.i.i = icmp eq ptr %1, null
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %if.else12.i.i

if.then8.i.i:                                     ; preds = %if.else6.i.i
  %11 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %this, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %3, align 4
  %and11.i.i = and i32 %12, -4
  %14 = inttoptr i32 %and11.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool.not.i2.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool.not.i2.i.i, label %if.then8.i.i.__rb_change_child.exit9.i.i_crit_edge, label %if.then.i7.i.i

if.then8.i.i.__rb_change_child.exit9.i.i_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rb_change_child.exit9.i.i

if.then.i7.i.i:                                   ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_left.i3.i.i = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %rb_left.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rb_left.i3.i.i, align 4
  %cmp.i4.i.i = icmp eq ptr %16, %this
  %rb_right.i5.i.i = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 1
  %spec.select.i6.i.i = select i1 %cmp.i4.i.i, ptr %rb_left.i3.i.i, ptr %rb_right.i5.i.i
  br label %__rb_change_child.exit9.i.i

__rb_change_child.exit9.i.i:                      ; preds = %if.then.i7.i.i, %if.then8.i.i.__rb_change_child.exit9.i.i_crit_edge
  %rb_left.sink.i8.i.i = phi ptr [ %root, %if.then8.i.i.__rb_change_child.exit9.i.i_crit_edge ], [ %spec.select.i6.i.i, %if.then.i7.i.i ]
  %17 = ptrtoint ptr %rb_left.sink.i8.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %3, ptr %rb_left.sink.i8.i.i, align 4
  br label %if.end69.i.i

if.else12.i.i:                                    ; preds = %if.else6.i.i
  %rb_left13.i.i = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %rb_left13.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rb_left13.i.i, align 4
  %tobool14.not.i.i = icmp eq ptr %19, null
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %if.else12.i.i.do.body.i.i_crit_edge

if.else12.i.i.do.body.i.i_crit_edge:              ; preds = %if.else12.i.i
  br label %do.body.i.i

if.then15.i.i:                                    ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_right16.i.i = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %rb_right16.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rb_right16.i.i, align 4
  %end.i.i.i = getelementptr inbounds %struct.drbd_interval, ptr %this, i32 0, i32 3
  %22 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %end.i.i.i, align 8
  %end4.i.i.i = getelementptr inbounds %struct.drbd_interval, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %end4.i.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %end4.i.i.i, align 8
  %.pre.i.i = ptrtoint ptr %1 to i32
  br label %if.end42.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.else12.i.i.do.body.i.i_crit_edge
  %tmp.0.i.i = phi ptr [ %26, %do.body.i.i.do.body.i.i_crit_edge ], [ %19, %if.else12.i.i.do.body.i.i_crit_edge ]
  %successor.0.i.i = phi ptr [ %tmp.0.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %1, %if.else12.i.i.do.body.i.i_crit_edge ]
  %rb_left18.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %rb_left18.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rb_left18.i.i, align 4
  %tobool19.not.i.i = icmp eq ptr %26, null
  br i1 %tobool19.not.i.i, label %do.end.i.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  %rb_right20.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %rb_right20.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rb_right20.i.i, align 4
  %rb_left26.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.0.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %rb_left26.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %28, ptr %rb_left26.i.i, align 4
  store volatile ptr %1, ptr %rb_right20.i.i, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  %and.i.i.i = and i32 %31, 1
  %32 = ptrtoint ptr %tmp.0.i.i to i32
  %or.i.i.i = or i32 %and.i.i.i, %32
  store i32 %or.i.i.i, ptr %1, align 4
  %end.i10.i.i = getelementptr inbounds %struct.drbd_interval, ptr %this, i32 0, i32 3
  %33 = ptrtoint ptr %end.i10.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %end.i10.i.i, align 8
  %end4.i11.i.i = getelementptr inbounds %struct.drbd_interval, ptr %tmp.0.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %end4.i11.i.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %end4.i11.i.i, align 8
  %cmp.not8.i.i.i = icmp eq ptr %successor.0.i.i, %tmp.0.i.i
  br i1 %cmp.not8.i.i.i, label %do.end.i.i.if.end42.i.i_crit_edge, label %do.end.i.i.while.body.i.i.i_crit_edge

do.end.i.i.while.body.i.i.i_crit_edge:            ; preds = %do.end.i.i
  br label %while.body.i.i.i

do.end.i.i.if.end42.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i.i

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %do.end.i.i.while.body.i.i.i_crit_edge
  %rb.addr.09.i.i.i = phi ptr [ %55, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %successor.0.i.i, %do.end.i.i.while.body.i.i.i_crit_edge ]
  %sector.i.i.i.i = getelementptr inbounds %struct.drbd_interval, ptr %rb.addr.09.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %sector.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %sector.i.i.i.i, align 8
  %size.i.i.i.i = getelementptr inbounds %struct.drbd_interval, ptr %rb.addr.09.i.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size.i.i.i.i, align 8
  %shr.i.i.i.i = lshr i32 %39, 9
  %conv.i.i.i.i = zext i32 %shr.i.i.i.i to i64
  %add.i.i.i.i = add i64 %37, %conv.i.i.i.i
  %rb_left.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %rb.addr.09.i.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rb_left.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i.i.i, label %while.body.i.i.i.if.end6.i.i.i.i_crit_edge, label %if.then.i.i.i.i

while.body.i.i.i.if.end6.i.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %end.i.i.i.i = getelementptr inbounds %struct.drbd_interval, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %end.i.i.i.i, align 8
  %44 = tail call i64 @llvm.umax.i64(i64 %43, i64 %add.i.i.i.i) #5
  br label %if.end6.i.i.i.i

if.end6.i.i.i.i:                                  ; preds = %if.then.i.i.i.i, %while.body.i.i.i.if.end6.i.i.i.i_crit_edge
  %max.0.i.i.i.i = phi i64 [ %add.i.i.i.i, %while.body.i.i.i.if.end6.i.i.i.i_crit_edge ], [ %44, %if.then.i.i.i.i ]
  %rb_right.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %rb.addr.09.i.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %rb_right.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rb_right.i.i.i.i, align 4
  %tobool8.not.i.i.i.i = icmp eq ptr %46, null
  br i1 %tobool8.not.i.i.i.i, label %if.end6.i.i.i.i.if.end21.i.i.i.i_crit_edge, label %if.then9.i.i.i.i

if.end6.i.i.i.i.if.end21.i.i.i.i_crit_edge:       ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i.i.i.i

if.then9.i.i.i.i:                                 ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %end15.i.i.i.i = getelementptr inbounds %struct.drbd_interval, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %end15.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %end15.i.i.i.i, align 8
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 %max.0.i.i.i.i) #5
  br label %if.end21.i.i.i.i

if.end21.i.i.i.i:                                 ; preds = %if.then9.i.i.i.i, %if.end6.i.i.i.i.if.end21.i.i.i.i_crit_edge
  %max.1.i.i.i.i = phi i64 [ %max.0.i.i.i.i, %if.end6.i.i.i.i.if.end21.i.i.i.i_crit_edge ], [ %49, %if.then9.i.i.i.i ]
  %end24.i.i.i.i = getelementptr inbounds %struct.drbd_interval, ptr %rb.addr.09.i.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %end24.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %end24.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %51, i64 %max.1.i.i.i.i)
  %cmp25.i.i.i.i = icmp eq i64 %51, %max.1.i.i.i.i
  br i1 %cmp25.i.i.i.i, label %if.end21.i.i.i.i.if.end42.i.i_crit_edge, label %cleanup.i.i.i

if.end21.i.i.i.i.if.end42.i.i_crit_edge:          ; preds = %if.end21.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i.i

cleanup.i.i.i:                                    ; preds = %if.end21.i.i.i.i
  %52 = ptrtoint ptr %end24.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %max.1.i.i.i.i, ptr %end24.i.i.i.i, align 8
  %53 = ptrtoint ptr %rb.addr.09.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rb.addr.09.i.i.i, align 8
  %and.i12.i.i = and i32 %54, -4
  %55 = inttoptr i32 %and.i12.i.i to ptr
  %cmp.not.i.i.i = icmp eq ptr %tmp.0.i.i, %55
  br i1 %cmp.not.i.i.i, label %cleanup.i.i.i.if.end42.i.i_crit_edge, label %cleanup.i.i.i.while.body.i.i.i_crit_edge

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i.i

cleanup.i.i.i.if.end42.i.i_crit_edge:             ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %cleanup.i.i.i.if.end42.i.i_crit_edge, %if.end21.i.i.i.i.if.end42.i.i_crit_edge, %do.end.i.i.if.end42.i.i_crit_edge, %if.then15.i.i
  %.pre-phi.i.i = phi i32 [ %32, %do.end.i.i.if.end42.i.i_crit_edge ], [ %.pre.i.i, %if.then15.i.i ], [ %32, %if.end21.i.i.i.i.if.end42.i.i_crit_edge ], [ %32, %cleanup.i.i.i.if.end42.i.i_crit_edge ]
  %parent.0.i.i = phi ptr [ %tmp.0.i.i, %do.end.i.i.if.end42.i.i_crit_edge ], [ %1, %if.then15.i.i ], [ %successor.0.i.i, %if.end21.i.i.i.i.if.end42.i.i_crit_edge ], [ %successor.0.i.i, %cleanup.i.i.i.if.end42.i.i_crit_edge ]
  %successor.1.i.i = phi ptr [ %tmp.0.i.i, %do.end.i.i.if.end42.i.i_crit_edge ], [ %1, %if.then15.i.i ], [ %tmp.0.i.i, %if.end21.i.i.i.i.if.end42.i.i_crit_edge ], [ %tmp.0.i.i, %cleanup.i.i.i.if.end42.i.i_crit_edge ]
  %child2.0.i.i = phi ptr [ %28, %do.end.i.i.if.end42.i.i_crit_edge ], [ %21, %if.then15.i.i ], [ %28, %if.end21.i.i.i.i.if.end42.i.i_crit_edge ], [ %28, %cleanup.i.i.i.if.end42.i.i_crit_edge ]
  %56 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rb_left.i.i, align 4
  %rb_left49.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.1.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %rb_left49.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %57, ptr %rb_left49.i.i, align 4
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %57, align 4
  %and.i13.i.i = and i32 %60, 1
  %or.i14.i.i = or i32 %and.i13.i.i, %.pre-phi.i.i
  store i32 %or.i14.i.i, ptr %57, align 4
  %61 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %this, align 4
  %and55.i.i = and i32 %62, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i)
  %tobool.not.i15.i.i = icmp eq i32 %and55.i.i, 0
  br i1 %tobool.not.i15.i.i, label %if.end42.i.i.__rb_change_child.exit22.i.i_crit_edge, label %if.then.i20.i.i

if.end42.i.i.__rb_change_child.exit22.i.i_crit_edge: ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rb_change_child.exit22.i.i

if.then.i20.i.i:                                  ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %63 = inttoptr i32 %and55.i.i to ptr
  %rb_left.i16.i.i = getelementptr inbounds %struct.rb_node, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %rb_left.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rb_left.i16.i.i, align 4
  %cmp.i17.i.i = icmp eq ptr %65, %this
  %rb_right.i18.i.i = getelementptr inbounds %struct.rb_node, ptr %63, i32 0, i32 1
  %spec.select.i19.i.i = select i1 %cmp.i17.i.i, ptr %rb_left.i16.i.i, ptr %rb_right.i18.i.i
  br label %__rb_change_child.exit22.i.i

__rb_change_child.exit22.i.i:                     ; preds = %if.then.i20.i.i, %if.end42.i.i.__rb_change_child.exit22.i.i_crit_edge
  %rb_left.sink.i21.i.i = phi ptr [ %root, %if.end42.i.i.__rb_change_child.exit22.i.i_crit_edge ], [ %spec.select.i19.i.i, %if.then.i20.i.i ]
  %66 = ptrtoint ptr %rb_left.sink.i21.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %successor.1.i.i, ptr %rb_left.sink.i21.i.i, align 4
  %tobool56.not.i.i = icmp eq ptr %child2.0.i.i, null
  br i1 %tobool56.not.i.i, label %if.else58.i.i, label %if.then57.i.i

if.then57.i.i:                                    ; preds = %__rb_change_child.exit22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %parent.0.i.i to i32
  %or.i23.i.i = or i32 %67, 1
  %68 = ptrtoint ptr %child2.0.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or.i23.i.i, ptr %child2.0.i.i, align 4
  br label %if.end66.i.i

if.else58.i.i:                                    ; preds = %__rb_change_child.exit22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %successor.1.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %successor.1.i.i, align 4
  %and60.i.i = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i)
  %tobool61.not.i.i = icmp eq i32 %and60.i.i, 0
  %spec.select1.i.i = select i1 %tobool61.not.i.i, ptr null, ptr %parent.0.i.i
  br label %if.end66.i.i

if.end66.i.i:                                     ; preds = %if.else58.i.i, %if.then57.i.i
  %rebalance.1.i.i = phi ptr [ null, %if.then57.i.i ], [ %spec.select1.i.i, %if.else58.i.i ]
  %71 = ptrtoint ptr %successor.1.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %62, ptr %successor.1.i.i, align 4
  br label %if.end69.i.i

if.end69.i.i:                                     ; preds = %if.end66.i.i, %__rb_change_child.exit9.i.i, %if.else.i.i, %if.then2.i.i
  %tmp.1.i.i = phi ptr [ %successor.1.i.i, %if.end66.i.i ], [ %14, %__rb_change_child.exit9.i.i ], [ %6, %if.else.i.i ], [ %6, %if.then2.i.i ]
  %rebalance.2.i.i = phi ptr [ %rebalance.1.i.i, %if.end66.i.i ], [ null, %__rb_change_child.exit9.i.i ], [ %spec.select.i.i, %if.else.i.i ], [ null, %if.then2.i.i ]
  %cmp.not8.i24.i.i = icmp eq ptr %tmp.1.i.i, null
  br i1 %cmp.not8.i24.i.i, label %if.end69.i.i.__rb_erase_augmented.exit.i_crit_edge, label %if.end69.i.i.while.body.i33.i.i_crit_edge

if.end69.i.i.while.body.i33.i.i_crit_edge:        ; preds = %if.end69.i.i
  br label %while.body.i33.i.i

if.end69.i.i.__rb_erase_augmented.exit.i_crit_edge: ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rb_erase_augmented.exit.i

while.body.i33.i.i:                               ; preds = %cleanup.i48.i.i.while.body.i33.i.i_crit_edge, %if.end69.i.i.while.body.i33.i.i_crit_edge
  %rb.addr.09.i25.i.i = phi ptr [ %91, %cleanup.i48.i.i.while.body.i33.i.i_crit_edge ], [ %tmp.1.i.i, %if.end69.i.i.while.body.i33.i.i_crit_edge ]
  %sector.i.i26.i.i = getelementptr inbounds %struct.drbd_interval, ptr %rb.addr.09.i25.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %sector.i.i26.i.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %sector.i.i26.i.i, align 8
  %size.i.i27.i.i = getelementptr inbounds %struct.drbd_interval, ptr %rb.addr.09.i25.i.i, i32 0, i32 2
  %74 = ptrtoint ptr %size.i.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %size.i.i27.i.i, align 8
  %shr.i.i28.i.i = lshr i32 %75, 9
  %conv.i.i29.i.i = zext i32 %shr.i.i28.i.i to i64
  %add.i.i30.i.i = add i64 %73, %conv.i.i29.i.i
  %rb_left.i.i31.i.i = getelementptr inbounds %struct.rb_node, ptr %rb.addr.09.i25.i.i, i32 0, i32 2
  %76 = ptrtoint ptr %rb_left.i.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rb_left.i.i31.i.i, align 8
  %tobool.not.i.i32.i.i = icmp eq ptr %77, null
  br i1 %tobool.not.i.i32.i.i, label %while.body.i33.i.i.if.end6.i.i39.i.i_crit_edge, label %if.then.i.i35.i.i

while.body.i33.i.i.if.end6.i.i39.i.i_crit_edge:   ; preds = %while.body.i33.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i39.i.i

if.then.i.i35.i.i:                                ; preds = %while.body.i33.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %end.i.i34.i.i = getelementptr inbounds %struct.drbd_interval, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %end.i.i34.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %end.i.i34.i.i, align 8
  %80 = tail call i64 @llvm.umax.i64(i64 %79, i64 %add.i.i30.i.i) #5
  br label %if.end6.i.i39.i.i

if.end6.i.i39.i.i:                                ; preds = %if.then.i.i35.i.i, %while.body.i33.i.i.if.end6.i.i39.i.i_crit_edge
  %max.0.i.i36.i.i = phi i64 [ %add.i.i30.i.i, %while.body.i33.i.i.if.end6.i.i39.i.i_crit_edge ], [ %80, %if.then.i.i35.i.i ]
  %rb_right.i.i37.i.i = getelementptr inbounds %struct.rb_node, ptr %rb.addr.09.i25.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %rb_right.i.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rb_right.i.i37.i.i, align 4
  %tobool8.not.i.i38.i.i = icmp eq ptr %82, null
  br i1 %tobool8.not.i.i38.i.i, label %if.end6.i.i39.i.i.if.end21.i.i45.i.i_crit_edge, label %if.then9.i.i41.i.i

if.end6.i.i39.i.i.if.end21.i.i45.i.i_crit_edge:   ; preds = %if.end6.i.i39.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i.i45.i.i

if.then9.i.i41.i.i:                               ; preds = %if.end6.i.i39.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %end15.i.i40.i.i = getelementptr inbounds %struct.drbd_interval, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %end15.i.i40.i.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %end15.i.i40.i.i, align 8
  %85 = tail call i64 @llvm.umax.i64(i64 %84, i64 %max.0.i.i36.i.i) #5
  br label %if.end21.i.i45.i.i

if.end21.i.i45.i.i:                               ; preds = %if.then9.i.i41.i.i, %if.end6.i.i39.i.i.if.end21.i.i45.i.i_crit_edge
  %max.1.i.i42.i.i = phi i64 [ %max.0.i.i36.i.i, %if.end6.i.i39.i.i.if.end21.i.i45.i.i_crit_edge ], [ %85, %if.then9.i.i41.i.i ]
  %end24.i.i43.i.i = getelementptr inbounds %struct.drbd_interval, ptr %rb.addr.09.i25.i.i, i32 0, i32 3
  %86 = ptrtoint ptr %end24.i.i43.i.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %end24.i.i43.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %87, i64 %max.1.i.i42.i.i)
  %cmp25.i.i44.i.i = icmp eq i64 %87, %max.1.i.i42.i.i
  br i1 %cmp25.i.i44.i.i, label %if.end21.i.i45.i.i.__rb_erase_augmented.exit.i_crit_edge, label %cleanup.i48.i.i

if.end21.i.i45.i.i.__rb_erase_augmented.exit.i_crit_edge: ; preds = %if.end21.i.i45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rb_erase_augmented.exit.i

cleanup.i48.i.i:                                  ; preds = %if.end21.i.i45.i.i
  %88 = ptrtoint ptr %end24.i.i43.i.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %max.1.i.i42.i.i, ptr %end24.i.i43.i.i, align 8
  %89 = ptrtoint ptr %rb.addr.09.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rb.addr.09.i25.i.i, align 8
  %and.i46.i.i = and i32 %90, -4
  %91 = inttoptr i32 %and.i46.i.i to ptr
  %cmp.not.i47.i.i = icmp eq i32 %and.i46.i.i, 0
  br i1 %cmp.not.i47.i.i, label %cleanup.i48.i.i.__rb_erase_augmented.exit.i_crit_edge, label %cleanup.i48.i.i.while.body.i33.i.i_crit_edge

cleanup.i48.i.i.while.body.i33.i.i_crit_edge:     ; preds = %cleanup.i48.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i33.i.i

cleanup.i48.i.i.__rb_erase_augmented.exit.i_crit_edge: ; preds = %cleanup.i48.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rb_erase_augmented.exit.i

__rb_erase_augmented.exit.i:                      ; preds = %cleanup.i48.i.i.__rb_erase_augmented.exit.i_crit_edge, %if.end21.i.i45.i.i.__rb_erase_augmented.exit.i_crit_edge, %if.end69.i.i.__rb_erase_augmented.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %rebalance.2.i.i, null
  br i1 %tobool.not.i, label %__rb_erase_augmented.exit.i.rb_erase_augmented.exit_crit_edge, label %if.then.i

__rb_erase_augmented.exit.i.rb_erase_augmented.exit_crit_edge: ; preds = %__rb_erase_augmented.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rb_erase_augmented.exit

if.then.i:                                        ; preds = %__rb_erase_augmented.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__rb_erase_color(ptr noundef nonnull %rebalance.2.i.i, ptr noundef %root, ptr noundef nonnull @augment_callbacks_rotate) #5
  br label %rb_erase_augmented.exit

rb_erase_augmented.exit:                          ; preds = %if.then.i, %__rb_erase_augmented.exit.i.rb_erase_augmented.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drbd_find_overlap(ptr nocapture noundef readonly %root, i64 noundef %sector, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %size, 9
  %conv = zext i32 %shr to i64
  %add = add i64 %conv, %sector
  %and = and i32 %size, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %while.cond.preheader, label %do.body4, !prof !11

while.cond.preheader:                             ; preds = %entry
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.059 = load ptr, ptr %root, align 4
  %tobool10.not60 = icmp eq ptr %node.059, null
  br i1 %tobool10.not60, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/drbd/drbd_interval.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 120, 0\0A.popsection", ""() #5, !srcloc !13
  unreachable

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %node.061 = phi ptr [ %node.0, %cleanup.while.body_crit_edge ], [ %node.059, %while.cond.preheader.while.body_crit_edge ]
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %node.061, i32 0, i32 2
  %1 = ptrtoint ptr %rb_left to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rb_left, align 4
  %tobool11.not = icmp eq ptr %2, null
  br i1 %tobool11.not, label %while.body.if.else_crit_edge, label %land.lhs.true

while.body.if.else_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %while.body
  %end.i = getelementptr inbounds %struct.drbd_interval, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %end.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %sector)
  %cmp13 = icmp ugt i64 %4, %sector
  br i1 %cmp13, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %while.body.if.else_crit_edge
  %sector17 = getelementptr inbounds %struct.drbd_interval, ptr %node.061, i32 0, i32 1
  %5 = ptrtoint ptr %sector17 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %sector17, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %add)
  %cmp18 = icmp ult i64 %6, %add
  br i1 %cmp18, label %land.lhs.true20, label %if.else.if.else29_crit_edge

if.else.if.else29_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else29

land.lhs.true20:                                  ; preds = %if.else
  %size22 = getelementptr inbounds %struct.drbd_interval, ptr %node.061, i32 0, i32 2
  %7 = ptrtoint ptr %size22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size22, align 8
  %shr23 = lshr i32 %8, 9
  %conv24 = zext i32 %shr23 to i64
  %add25 = add i64 %6, %conv24
  call void @__sanitizer_cov_trace_cmp8(i64 %add25, i64 %sector)
  %cmp26 = icmp ugt i64 %add25, %sector
  br i1 %cmp26, label %land.lhs.true20.while.end_crit_edge, label %land.lhs.true20.if.else29_crit_edge

land.lhs.true20.if.else29_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else29

land.lhs.true20.while.end_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.else29:                                        ; preds = %land.lhs.true20.if.else29_crit_edge, %if.else.if.else29_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %sector)
  %cmp31.not = icmp ugt i64 %6, %sector
  br i1 %cmp31.not, label %if.else29.while.end_crit_edge, label %if.then33

if.else29.while.end_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.then33:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #7
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %node.061, i32 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %land.lhs.true.cleanup_crit_edge
  %node.1.in = phi ptr [ %rb_right, %if.then33 ], [ %rb_left, %land.lhs.true.cleanup_crit_edge ]
  %9 = ptrtoint ptr %node.1.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %node.0 = load ptr, ptr %node.1.in, align 4
  %tobool10.not = icmp eq ptr %node.0, null
  br i1 %tobool10.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.else29.while.end_crit_edge, %land.lhs.true20.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %overlap.2 = phi ptr [ null, %while.cond.preheader.while.end_crit_edge ], [ null, %if.else29.while.end_crit_edge ], [ %node.061, %land.lhs.true20.while.end_crit_edge ], [ null, %cleanup.while.end_crit_edge ]
  ret ptr %overlap.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drbd_next_overlap(ptr noundef %i, i64 noundef %sector, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %size, 9
  %conv = zext i32 %shr to i64
  %add = add i64 %conv, %sector
  br label %for.cond

for.cond:                                         ; preds = %if.end4.for.cond_crit_edge, %entry
  %i.addr.0 = phi ptr [ %i, %entry ], [ %call, %if.end4.for.cond_crit_edge ]
  %call = tail call ptr @rb_next(ptr noundef %i.addr.0) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.cond.cleanup_crit_edge, label %if.end

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %for.cond
  %sector1 = getelementptr inbounds %struct.drbd_interval, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %sector1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sector1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %add)
  %cmp.not = icmp ult i64 %1, %add
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %size6 = getelementptr inbounds %struct.drbd_interval, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %size6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size6, align 8
  %shr7 = lshr i32 %3, 9
  %conv8 = zext i32 %shr7 to i64
  %add9 = add i64 %1, %conv8
  %cmp10 = icmp ugt i64 %add9, %sector
  br i1 %cmp10, label %if.end4.cleanup_crit_edge, label %if.end4.for.cond_crit_edge

if.end4.for.cond_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %for.cond.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call, %if.end4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_insert_augmented(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @augment_callbacks_rotate(ptr nocapture noundef %rb_old, ptr nocapture noundef writeonly %rb_new) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %end = getelementptr inbounds %struct.drbd_interval, ptr %rb_old, i32 0, i32 3
  %0 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %end, align 8
  %end4 = getelementptr inbounds %struct.drbd_interval, ptr %rb_new, i32 0, i32 3
  %2 = ptrtoint ptr %end4 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %end4, align 8
  %sector.i = getelementptr inbounds %struct.drbd_interval, ptr %rb_old, i32 0, i32 1
  %3 = ptrtoint ptr %sector.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %sector.i, align 8
  %size.i = getelementptr inbounds %struct.drbd_interval, ptr %rb_old, i32 0, i32 2
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.i, align 8
  %shr.i = lshr i32 %6, 9
  %conv.i = zext i32 %shr.i to i64
  %add.i = add i64 %4, %conv.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %rb_old, i32 0, i32 2
  %7 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rb_left.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %entry.if.end6.i_crit_edge, label %if.then.i

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %end.i = getelementptr inbounds %struct.drbd_interval, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %end.i, align 8
  %11 = tail call i64 @llvm.umax.i64(i64 %10, i64 %add.i) #5
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then.i, %entry.if.end6.i_crit_edge
  %max.0.i = phi i64 [ %add.i, %entry.if.end6.i_crit_edge ], [ %11, %if.then.i ]
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %rb_old, i32 0, i32 1
  %12 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rb_right.i, align 4
  %tobool8.not.i = icmp eq ptr %13, null
  br i1 %tobool8.not.i, label %if.end6.i.augment_callbacks_compute_max.exit_crit_edge, label %if.then9.i

if.end6.i.augment_callbacks_compute_max.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %augment_callbacks_compute_max.exit

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %end15.i = getelementptr inbounds %struct.drbd_interval, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %end15.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %end15.i, align 8
  %16 = tail call i64 @llvm.umax.i64(i64 %15, i64 %max.0.i) #5
  br label %augment_callbacks_compute_max.exit

augment_callbacks_compute_max.exit:               ; preds = %if.then9.i, %if.end6.i.augment_callbacks_compute_max.exit_crit_edge
  %max.1.i = phi i64 [ %max.0.i, %if.end6.i.augment_callbacks_compute_max.exit_crit_edge ], [ %16, %if.then9.i ]
  %17 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %max.1.i, ptr %end, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_erase_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{null, !1, !"augment_callbacks", i1 false, i1 false}
!1 = !{!"../drivers/block/drbd/drbd_interval.c", i32 18, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149234201, i64 2149234699, i64 2149234238, i64 2149234294, i64 2149234328, i64 2149234352, i64 2149234393, i64 2149234414, i64 2149234442, i64 2149234476}
!13 = !{i64 2149238423, i64 2149238922, i64 2149238460, i64 2149238516, i64 2149238550, i64 2149238574, i64 2149238615, i64 2149238636, i64 2149238664, i64 2149238698}
