; ModuleID = '/llk/IR_all_yes/sound/usb/line6/midibuf.c_pt.bc'
source_filename = "../sound/usb/line6/midibuf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.midi_buffer = type { ptr, i32, i32, i32, i32, i32, i32 }

@midibuf_message_length.length = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 3, i32 3, i32 3, i32 3, i32 2, i32 2, i32 3], [36 x i8] zeroinitializer }, align 32
@midibuf_message_length.length.1 = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 -1, i32 2, i32 -1, i32 2, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 -1, i32 1, i32 1], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 19, i32 20 }
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@___asan_gen_.6 = private constant [29 x i8] c"../sound/usb/line6/midibuf.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 28, i32 20 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @midibuf_message_length.length, ptr @midibuf_message_length.length.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midibuf_message_length.length to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @midibuf_message_length.length.1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @line6_midibuf_reset(ptr nocapture noundef writeonly %this) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %full = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 5
  %0 = ptrtoint ptr %full to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %full, align 4
  %pos_write = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 4
  %1 = ptrtoint ptr %pos_write to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %pos_write, align 4
  %pos_read = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 3
  %2 = ptrtoint ptr %pos_read to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %pos_read, align 4
  %command_prev = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 6
  %3 = ptrtoint ptr %command_prev to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %command_prev, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @line6_midibuf_init(ptr nocapture noundef writeonly %this, i32 noundef %size, i32 noundef %split) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3264) #12
  %0 = ptrtoint ptr %this to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call9.i, ptr %this, align 4
  %cmp = icmp eq ptr %call9.i, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %size2 = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 1
  %1 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %size, ptr %size2, align 4
  %split3 = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 2
  %2 = ptrtoint ptr %split3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %split, ptr %split3, align 4
  %full.i = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 5
  %3 = ptrtoint ptr %full.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %full.i, align 4
  %pos_write.i = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 4
  %4 = ptrtoint ptr %pos_write.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pos_write.i, align 4
  %pos_read.i = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 3
  %5 = ptrtoint ptr %pos_read.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %pos_read.i, align 4
  %command_prev.i = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 6
  %6 = ptrtoint ptr %command_prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %command_prev.i, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @line6_midibuf_bytes_free(ptr nocapture noundef readonly %this) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %full.i = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 5
  %0 = ptrtoint ptr %full.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %full.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pos_read = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 3
  %2 = ptrtoint ptr %pos_read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos_read, align 4
  %pos_write = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 4
  %4 = ptrtoint ptr %pos_write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pos_write, align 4
  %size = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %8 = xor i32 %5, -1
  %add = add i32 %3, %8
  %sub1 = add i32 %add, %7
  %rem = srem i32 %sub1, %7
  %add3 = add i32 %rem, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %add3, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @line6_midibuf_bytes_used(ptr nocapture noundef readonly %this) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pos_read.i = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 3
  %0 = ptrtoint ptr %pos_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pos_read.i, align 4
  %pos_write.i = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 4
  %2 = ptrtoint ptr %pos_write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos_write.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.i = icmp eq i32 %3, %1
  br i1 %cmp.i, label %midibuf_is_empty.exit, label %entry.cond.false_crit_edge

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

midibuf_is_empty.exit:                            ; preds = %entry
  %full.i = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 5
  %4 = ptrtoint ptr %full.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %full.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.not = icmp eq i32 %5, 0
  br i1 %tobool.not.i.not, label %midibuf_is_empty.exit.cond.end_crit_edge, label %midibuf_is_empty.exit.cond.false_crit_edge

midibuf_is_empty.exit.cond.false_crit_edge:       ; preds = %midibuf_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

midibuf_is_empty.exit.cond.end_crit_edge:         ; preds = %midibuf_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %midibuf_is_empty.exit.cond.false_crit_edge, %entry.cond.false_crit_edge
  %size = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %sub = xor i32 %1, -1
  %add = add i32 %3, %sub
  %sub1 = add i32 %add, %7
  %rem = srem i32 %sub1, %7
  %add3 = add i32 %rem, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %midibuf_is_empty.exit.cond.end_crit_edge
  %cond = phi i32 [ %add3, %cond.false ], [ 0, %midibuf_is_empty.exit.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @line6_midibuf_write(ptr nocapture noundef %this, ptr nocapture noundef readonly %data, i32 noundef %length) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %full.i = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 5
  %0 = ptrtoint ptr %full.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %full.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp ne i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %length)
  %cmp = icmp slt i32 %length, 1
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %line6_midibuf_bytes_free.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

line6_midibuf_bytes_free.exit:                    ; preds = %entry
  %sub = add nsw i32 %length, -1
  %arrayidx = getelementptr i8, ptr %data, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %3)
  %cmp1 = icmp eq i8 %3, -2
  %spec.select = select i1 %cmp1, i32 %sub, i32 %length
  %spec.select67 = zext i1 %cmp1 to i32
  %pos_read.i = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 3
  %4 = ptrtoint ptr %pos_read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pos_read.i, align 4
  %pos_write.i = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 4
  %6 = ptrtoint ptr %pos_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pos_write.i, align 4
  %size.i = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 1
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  %10 = xor i32 %7, -1
  %add.i = add i32 %5, %10
  %sub1.i = add i32 %add.i, %9
  %rem.i = srem i32 %sub1.i, %9
  %add3.i = add i32 %rem.i, 1
  %11 = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 %add3.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp10 = icmp sgt i32 %11, 0
  br i1 %cmp10, label %if.then12, label %line6_midibuf_bytes_free.exit.if.end32_crit_edge

line6_midibuf_bytes_free.exit.if.end32_crit_edge: ; preds = %line6_midibuf_bytes_free.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then12:                                        ; preds = %line6_midibuf_bytes_free.exit
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 4
  %14 = ptrtoint ptr %pos_write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pos_write.i, align 4
  %sub13 = sub i32 %13, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %sub13)
  %cmp14 = icmp slt i32 %11, %sub13
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %this, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 %15
  %18 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %11)
  %19 = ptrtoint ptr %pos_write.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pos_write.i, align 4
  %add = add i32 %20, %11
  br label %if.end26

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %sub19 = sub i32 %11, %sub13
  %21 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %this, align 4
  %add.ptr22 = getelementptr i8, ptr %22, i32 %15
  %23 = call ptr @memcpy(ptr %add.ptr22, ptr %data, i32 %sub13)
  %24 = load ptr, ptr %this, align 4
  %add.ptr24 = getelementptr i8, ptr %data, i32 %sub13
  %25 = call ptr @memcpy(ptr %24, ptr %add.ptr24, i32 %sub19)
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then16
  %storemerge = phi i32 [ %sub19, %if.else ], [ %add, %if.then16 ]
  %26 = ptrtoint ptr %pos_write.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %storemerge, ptr %pos_write.i, align 4
  %27 = ptrtoint ptr %pos_read.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pos_read.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge, i32 %28)
  %cmp28 = icmp eq i32 %storemerge, %28
  br i1 %cmp28, label %if.then30, label %if.end26.if.end32_crit_edge

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %full.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %full.i, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end26.if.end32_crit_edge, %line6_midibuf_bytes_free.exit.if.end32_crit_edge
  %add33 = add i32 %11, %spec.select67
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add33, %if.end32 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @line6_midibuf_read(ptr noundef %this, ptr nocapture noundef writeonly %data, i32 noundef %length) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %length)
  %cmp = icmp slt i32 %length, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pos_read.i = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 3
  %0 = ptrtoint ptr %pos_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pos_read.i, align 4
  %pos_write.i = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 4
  %2 = ptrtoint ptr %pos_write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos_write.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp eq i32 %1, %3
  br i1 %cmp.i, label %midibuf_is_empty.exit, label %if.end.cond.false.i_crit_edge

if.end.cond.false.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i

midibuf_is_empty.exit:                            ; preds = %if.end
  %full.i = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 5
  %4 = ptrtoint ptr %full.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %full.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.not = icmp eq i32 %5, 0
  br i1 %tobool.not.i.not, label %midibuf_is_empty.exit.cleanup_crit_edge, label %midibuf_is_empty.exit.i

midibuf_is_empty.exit.cleanup_crit_edge:          ; preds = %midibuf_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

midibuf_is_empty.exit.i:                          ; preds = %midibuf_is_empty.exit
  %6 = ptrtoint ptr %full.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %full.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.not.i, label %midibuf_is_empty.exit.i.line6_midibuf_bytes_used.exit_crit_edge, label %midibuf_is_empty.exit.i.cond.false.i_crit_edge

midibuf_is_empty.exit.i.cond.false.i_crit_edge:   ; preds = %midibuf_is_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i

midibuf_is_empty.exit.i.line6_midibuf_bytes_used.exit_crit_edge: ; preds = %midibuf_is_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %line6_midibuf_bytes_used.exit

cond.false.i:                                     ; preds = %midibuf_is_empty.exit.i.cond.false.i_crit_edge, %if.end.cond.false.i_crit_edge
  %size.i = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 1
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  %sub.i = xor i32 %1, -1
  %add.i = add i32 %3, %sub.i
  %sub1.i = add i32 %add.i, %9
  %rem.i = srem i32 %sub1.i, %9
  %add3.i = add i32 %rem.i, 1
  br label %line6_midibuf_bytes_used.exit

line6_midibuf_bytes_used.exit:                    ; preds = %cond.false.i, %midibuf_is_empty.exit.i.line6_midibuf_bytes_used.exit_crit_edge
  %cond.i = phi i32 [ %add3.i, %cond.false.i ], [ 0, %midibuf_is_empty.exit.i.line6_midibuf_bytes_used.exit_crit_edge ]
  %10 = tail call i32 @llvm.smin.i32(i32 %cond.i, i32 %length)
  %size = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 1
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  %sub = sub i32 %12, %1
  %13 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %this, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 %1
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %16 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %line6_midibuf_bytes_used.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp.i203 = icmp sgt i8 %16, -1
  br i1 %cmp.i203, label %if.end27.thread227, label %if.end27

if.end27.thread227:                               ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %command_prev229 = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 6
  %17 = ptrtoint ptr %command_prev229 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %command_prev229, align 4
  br label %if.then30

if.else:                                          ; preds = %line6_midibuf_bytes_used.exit
  %command_prev12 = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 6
  %18 = ptrtoint ptr %command_prev12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %command_prev12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp13 = icmp sgt i32 %19, 0
  br i1 %cmp13, label %if.then15, label %if.else.if.then30_crit_edge

if.else.if.then30_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

if.then15:                                        ; preds = %if.else
  %conv17 = trunc i32 %19 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv17)
  %cmp.i205 = icmp sgt i8 %conv17, -1
  br i1 %cmp.i205, label %if.then15.if.then30_crit_edge, label %midibuf_message_length.exit215

if.then15.if.then30_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

midibuf_message_length.exit215:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %conv17)
  %cmp3.i207 = icmp ult i8 %conv17, -16
  %conv.i206 = lshr i32 %19, 4
  %20 = and i32 %conv.i206, 15
  %sub.i208 = add nsw i32 %20, -8
  %arrayidx.i209 = getelementptr [7 x i32], ptr @midibuf_message_length.length, i32 0, i32 %sub.i208
  %and.i210 = and i32 %19, 15
  %arrayidx9.i211 = getelementptr [16 x i32], ptr @midibuf_message_length.length.1, i32 0, i32 %and.i210
  %arrayidx.sink.i212 = select i1 %cmp3.i207, ptr %arrayidx.i209, ptr %arrayidx9.i211
  %21 = ptrtoint ptr %arrayidx.sink.i212 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.sink.i212, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp19 = icmp sgt i32 %22, 1
  %sub22 = add i32 %22, -1
  br i1 %cmp19, label %midibuf_message_length.exit215.if.else94_crit_edge, label %midibuf_message_length.exit215.if.then30_crit_edge

midibuf_message_length.exit215.if.then30_crit_edge: ; preds = %midibuf_message_length.exit215
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

midibuf_message_length.exit215.if.else94_crit_edge: ; preds = %midibuf_message_length.exit215
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else94

if.end27:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %16)
  %cmp3.i = icmp ult i8 %16, -16
  %23 = lshr i32 %conv, 4
  %sub.i204 = add nsw i32 %23, -8
  %arrayidx.i = getelementptr [7 x i32], ptr @midibuf_message_length.length, i32 0, i32 %sub.i204
  %and.i = and i32 %conv, 15
  %arrayidx9.i = getelementptr [16 x i32], ptr @midibuf_message_length.length.1, i32 0, i32 %and.i
  %arrayidx.sink.i = select i1 %cmp3.i, ptr %arrayidx.i, ptr %arrayidx9.i
  %24 = ptrtoint ptr %arrayidx.sink.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.sink.i, align 4
  %command_prev = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 6
  %26 = ptrtoint ptr %command_prev to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv, ptr %command_prev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp28 = icmp slt i32 %25, 0
  br i1 %cmp28, label %if.end27.if.then30_crit_edge, label %if.end27.if.else94_crit_edge

if.end27.if.else94_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else94

if.end27.if.then30_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

if.then30:                                        ; preds = %if.end27.if.then30_crit_edge, %midibuf_message_length.exit215.if.then30_crit_edge, %if.then15.if.then30_crit_edge, %if.else.if.then30_crit_edge, %if.end27.thread227
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %sub)
  %cmp31 = icmp slt i32 %10, %sub
  br i1 %cmp31, label %for.cond.preheader, label %if.else44

for.cond.preheader:                               ; preds = %if.then30
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp34255 = icmp sgt i32 %10, 1
  br i1 %cmp34255, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end82_crit_edge

for.cond.preheader.if.end82_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0256 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %add = add i32 %i.0256, %1
  %arrayidx38 = getelementptr i8, ptr %14, i32 %add
  %27 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %tobool41.not = icmp sgt i8 %28, -1
  br i1 %tobool41.not, label %for.inc, label %for.body.if.end82_crit_edge

for.body.if.end82_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0256, 1
  %exitcond262.not = icmp eq i32 %inc, %10
  br i1 %exitcond262.not, label %for.inc.if.then90_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.then90_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then90

if.else44:                                        ; preds = %if.then30
  %sub45 = sub i32 %10, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp47249 = icmp sgt i32 %sub, 1
  br i1 %cmp47249, label %if.else44.for.body49_crit_edge, label %if.else44.for.cond66.preheader_crit_edge

if.else44.for.cond66.preheader_crit_edge:         ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond66.preheader

if.else44.for.body49_crit_edge:                   ; preds = %if.else44
  br label %for.body49

for.cond66.preheader:                             ; preds = %for.inc59.for.cond66.preheader_crit_edge, %if.else44.for.cond66.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub45)
  %cmp67251 = icmp sgt i32 %sub45, 0
  br i1 %cmp67251, label %for.cond66.preheader.for.body69_crit_edge, label %for.cond66.preheader.for.end79_crit_edge

for.cond66.preheader.for.end79_crit_edge:         ; preds = %for.cond66.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end79

for.cond66.preheader.for.body69_crit_edge:        ; preds = %for.cond66.preheader
  br label %for.body69

for.body49:                                       ; preds = %for.inc59.for.body49_crit_edge, %if.else44.for.body49_crit_edge
  %i.1250 = phi i32 [ %inc60, %for.inc59.for.body49_crit_edge ], [ 1, %if.else44.for.body49_crit_edge ]
  %add52 = add i32 %i.1250, %1
  %arrayidx53 = getelementptr i8, ptr %14, i32 %add52
  %29 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx53, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %tobool56.not = icmp sgt i8 %30, -1
  br i1 %tobool56.not, label %for.inc59, label %for.body49.if.end82_crit_edge

for.body49.if.end82_crit_edge:                    ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

for.inc59:                                        ; preds = %for.body49
  %inc60 = add nuw nsw i32 %i.1250, 1
  %exitcond.not = icmp eq i32 %inc60, %sub
  br i1 %exitcond.not, label %for.inc59.for.cond66.preheader_crit_edge, label %for.inc59.for.body49_crit_edge

for.inc59.for.body49_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body49

for.inc59.for.cond66.preheader_crit_edge:         ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond66.preheader

for.body69:                                       ; preds = %for.inc77.for.body69_crit_edge, %for.cond66.preheader.for.body69_crit_edge
  %i.2252 = phi i32 [ %inc78, %for.inc77.for.body69_crit_edge ], [ 0, %for.cond66.preheader.for.body69_crit_edge ]
  %arrayidx71 = getelementptr i8, ptr %14, i32 %i.2252
  %31 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %tobool74.not = icmp sgt i8 %32, -1
  br i1 %tobool74.not, label %for.inc77, label %for.body69.for.end79_crit_edge

for.body69.for.end79_crit_edge:                   ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end79

for.inc77:                                        ; preds = %for.body69
  %inc78 = add nuw nsw i32 %i.2252, 1
  %exitcond261.not = icmp eq i32 %inc78, %sub45
  br i1 %exitcond261.not, label %for.inc77.for.end79_crit_edge, label %for.inc77.for.body69_crit_edge

for.inc77.for.body69_crit_edge:                   ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body69

for.inc77.for.end79_crit_edge:                    ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end79

for.end79:                                        ; preds = %for.inc77.for.end79_crit_edge, %for.body69.for.end79_crit_edge, %for.cond66.preheader.for.end79_crit_edge
  %i.2.lcssa = phi i32 [ 0, %for.cond66.preheader.for.end79_crit_edge ], [ %i.2252, %for.body69.for.end79_crit_edge ], [ %sub45, %for.inc77.for.end79_crit_edge ]
  %add80 = add i32 %i.2.lcssa, %sub
  br label %if.end82

if.end82:                                         ; preds = %for.end79, %for.body49.if.end82_crit_edge, %for.body.if.end82_crit_edge, %for.cond.preheader.if.end82_crit_edge
  %midi_length.2 = phi i32 [ %add80, %for.end79 ], [ 1, %for.cond.preheader.if.end82_crit_edge ], [ %i.0256, %for.body.if.end82_crit_edge ], [ %i.1250, %for.body49.if.end82_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %midi_length.2, i32 %10)
  %cmp83 = icmp eq i32 %midi_length.2, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %midi_length.2)
  %cmp88 = icmp slt i32 %midi_length.2, 0
  %or.cond = or i1 %cmp83, %cmp88
  br i1 %or.cond, label %if.end82.if.then90_crit_edge, label %if.end82.if.else94_crit_edge

if.end82.if.else94_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else94

if.end82.if.then90_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then90

if.then90:                                        ; preds = %if.end82.if.then90_crit_edge, %for.inc.if.then90_crit_edge
  %split = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 2
  %33 = ptrtoint ptr %split to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %split, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool91.not = icmp eq i32 %34, 0
  br i1 %tobool91.not, label %if.then90.cleanup_crit_edge, label %if.then90.if.end99_crit_edge

if.then90.if.end99_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then90.cleanup_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else94:                                        ; preds = %if.end82.if.else94_crit_edge, %if.end27.if.else94_crit_edge, %midibuf_message_length.exit215.if.else94_crit_edge
  %midi_length.3237 = phi i32 [ %25, %if.end27.if.else94_crit_edge ], [ %sub22, %midibuf_message_length.exit215.if.else94_crit_edge ], [ %midi_length.2, %if.end82.if.else94_crit_edge ]
  %repeat.1220236 = phi i32 [ 0, %if.end27.if.else94_crit_edge ], [ 1, %midibuf_message_length.exit215.if.else94_crit_edge ], [ 0, %if.end82.if.else94_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %midi_length.3237)
  %cmp95 = icmp slt i32 %10, %midi_length.3237
  br i1 %cmp95, label %if.else94.cleanup_crit_edge, label %if.else94.if.end99_crit_edge

if.else94.if.end99_crit_edge:                     ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.else94.cleanup_crit_edge:                      ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end99:                                         ; preds = %if.else94.if.end99_crit_edge, %if.then90.if.end99_crit_edge
  %repeat.1220235 = phi i32 [ 0, %if.then90.if.end99_crit_edge ], [ %repeat.1220236, %if.else94.if.end99_crit_edge ]
  %length.addr.1 = phi i32 [ %10, %if.then90.if.end99_crit_edge ], [ %midi_length.3237, %if.else94.if.end99_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %length.addr.1, i32 %sub)
  %cmp100 = icmp slt i32 %length.addr.1, %sub
  br i1 %cmp100, label %if.then102, label %if.else108

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %data, i32 %repeat.1220235
  %35 = call ptr @memcpy(ptr %add.ptr, ptr %arrayidx, i32 %length.addr.1)
  %36 = ptrtoint ptr %pos_read.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pos_read.i, align 4
  %add107 = add i32 %37, %length.addr.1
  br label %if.end118

if.else108:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %sub109 = sub i32 %length.addr.1, %sub
  %add.ptr110 = getelementptr i8, ptr %data, i32 %repeat.1220235
  %38 = call ptr @memcpy(ptr %add.ptr110, ptr %arrayidx, i32 %sub)
  %add.ptr115 = getelementptr i8, ptr %add.ptr110, i32 %sub
  %39 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %this, align 4
  %41 = call ptr @memcpy(ptr %add.ptr115, ptr %40, i32 %sub109)
  br label %if.end118

if.end118:                                        ; preds = %if.else108, %if.then102
  %storemerge = phi i32 [ %sub109, %if.else108 ], [ %add107, %if.then102 ]
  %42 = ptrtoint ptr %pos_read.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %storemerge, ptr %pos_read.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %repeat.1220235)
  %tobool119.not = icmp eq i32 %repeat.1220235, 0
  br i1 %tobool119.not, label %if.end118.if.end124_crit_edge, label %if.then120

if.end118.if.end124_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

if.then120:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %command_prev121 = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 6
  %43 = ptrtoint ptr %command_prev121 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %command_prev121, align 4
  %conv122 = trunc i32 %44 to i8
  %45 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv122, ptr %data, align 1
  br label %if.end124

if.end124:                                        ; preds = %if.then120, %if.end118.if.end124_crit_edge
  %full = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 5
  %46 = ptrtoint ptr %full to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %full, align 4
  %add125 = add i32 %length.addr.1, %repeat.1220235
  br label %cleanup

cleanup:                                          ; preds = %if.end124, %if.else94.cleanup_crit_edge, %if.then90.cleanup_crit_edge, %midibuf_is_empty.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add125, %if.end124 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %midibuf_is_empty.exit.cleanup_crit_edge ], [ 0, %if.then90.cleanup_crit_edge ], [ 0, %if.else94.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @line6_midibuf_ignore(ptr nocapture noundef %this, i32 noundef %length) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pos_read.i.i = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 3
  %0 = ptrtoint ptr %pos_read.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pos_read.i.i, align 4
  %pos_write.i.i = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 4
  %2 = ptrtoint ptr %pos_write.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos_write.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.i.i = icmp eq i32 %3, %1
  br i1 %cmp.i.i, label %midibuf_is_empty.exit.i, label %entry.cond.false.i_crit_edge

entry.cond.false.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i

midibuf_is_empty.exit.i:                          ; preds = %entry
  %full.i.i = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 5
  %4 = ptrtoint ptr %full.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %full.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.not.i, label %midibuf_is_empty.exit.i.line6_midibuf_bytes_used.exit_crit_edge, label %midibuf_is_empty.exit.i.cond.false.i_crit_edge

midibuf_is_empty.exit.i.cond.false.i_crit_edge:   ; preds = %midibuf_is_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false.i

midibuf_is_empty.exit.i.line6_midibuf_bytes_used.exit_crit_edge: ; preds = %midibuf_is_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %line6_midibuf_bytes_used.exit

cond.false.i:                                     ; preds = %midibuf_is_empty.exit.i.cond.false.i_crit_edge, %entry.cond.false.i_crit_edge
  %size.i = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 1
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  %sub.i = xor i32 %1, -1
  %add.i = add i32 %3, %sub.i
  %sub1.i = add i32 %add.i, %7
  %rem.i = srem i32 %sub1.i, %7
  %add3.i = add i32 %rem.i, 1
  br label %line6_midibuf_bytes_used.exit

line6_midibuf_bytes_used.exit:                    ; preds = %cond.false.i, %midibuf_is_empty.exit.i.line6_midibuf_bytes_used.exit_crit_edge
  %cond.i = phi i32 [ %add3.i, %cond.false.i ], [ 0, %midibuf_is_empty.exit.i.line6_midibuf_bytes_used.exit_crit_edge ]
  %8 = tail call i32 @llvm.smin.i32(i32 %cond.i, i32 %length)
  %add = add i32 %8, %1
  %size = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 1
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %rem = srem i32 %add, %10
  %11 = ptrtoint ptr %pos_read.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %rem, ptr %pos_read.i.i, align 4
  %full = getelementptr inbounds %struct.midi_buffer, ptr %this, i32 0, i32 5
  %12 = ptrtoint ptr %full to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %full, align 4
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @line6_midibuf_destroy(ptr nocapture noundef %this) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %this, align 4
  tail call void @kfree(ptr noundef %1) #9
  %2 = ptrtoint ptr %this to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %this, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @midibuf_message_length.length, !1, !"length", i1 false, i1 false}
!1 = !{!"../sound/usb/line6/midibuf.c", i32 19, i32 20}
!2 = !{ptr @midibuf_message_length.length.1, !3, !"length", i1 false, i1 false}
!3 = !{!"../sound/usb/line6/midibuf.c", i32 28, i32 20}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
