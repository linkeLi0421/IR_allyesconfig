; ModuleID = '/llk/IR_all_yes/fs/reiserfs/hashes.c_pt.bc'
source_filename = "../fs/reiserfs/hashes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyed_hash(ptr noundef readonly %msg, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %len, 8
  %or = or i32 %shl, %len
  %shl2 = shl i32 %or, 16
  %or3 = or i32 %shl2, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %len)
  %cmp368 = icmp sgt i32 %len, 15
  br i1 %cmp368, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %h1.0372 = phi i32 [ %add75, %while.body.while.body_crit_edge ], [ 1412307604, %entry.while.body_crit_edge ]
  %h0.0371 = phi i32 [ %add74, %while.body.while.body_crit_edge ], [ -1805343611, %entry.while.body_crit_edge ]
  %msg.addr.0370 = phi ptr [ %add.ptr, %while.body.while.body_crit_edge ], [ %msg, %entry.while.body_crit_edge ]
  %len.addr.0369 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %len, %entry.while.body_crit_edge ]
  %0 = ptrtoint ptr %msg.addr.0370 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msg.addr.0370, align 1
  %conv = sext i8 %1 to i32
  %arrayidx5 = getelementptr i8, ptr %msg.addr.0370, i32 1
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %3 to i32
  %shl7 = shl nsw i32 %conv6, 8
  %or8 = or i32 %shl7, %conv
  %arrayidx9 = getelementptr i8, ptr %msg.addr.0370, i32 2
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %5 to i32
  %shl11 = shl nsw i32 %conv10, 16
  %or12 = or i32 %or8, %shl11
  %arrayidx13 = getelementptr i8, ptr %msg.addr.0370, i32 3
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx13, align 1
  %conv14361 = zext i8 %7 to i32
  %shl15 = shl nuw i32 %conv14361, 24
  %or16 = or i32 %or12, %shl15
  %arrayidx17 = getelementptr i8, ptr %msg.addr.0370, i32 4
  %8 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx17, align 1
  %conv18 = sext i8 %9 to i32
  %arrayidx19 = getelementptr i8, ptr %msg.addr.0370, i32 5
  %10 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx19, align 1
  %conv20 = sext i8 %11 to i32
  %shl21 = shl nsw i32 %conv20, 8
  %or22 = or i32 %shl21, %conv18
  %arrayidx23 = getelementptr i8, ptr %msg.addr.0370, i32 6
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx23, align 1
  %conv24 = sext i8 %13 to i32
  %shl25 = shl nsw i32 %conv24, 16
  %or26 = or i32 %or22, %shl25
  %arrayidx27 = getelementptr i8, ptr %msg.addr.0370, i32 7
  %14 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx27, align 1
  %conv28362 = zext i8 %15 to i32
  %shl29 = shl nuw i32 %conv28362, 24
  %or30 = or i32 %or26, %shl29
  %arrayidx31 = getelementptr i8, ptr %msg.addr.0370, i32 8
  %16 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx31, align 1
  %conv32 = sext i8 %17 to i32
  %arrayidx33 = getelementptr i8, ptr %msg.addr.0370, i32 9
  %18 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx33, align 1
  %conv34 = sext i8 %19 to i32
  %shl35 = shl nsw i32 %conv34, 8
  %or36 = or i32 %shl35, %conv32
  %arrayidx37 = getelementptr i8, ptr %msg.addr.0370, i32 10
  %20 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx37, align 1
  %conv38 = sext i8 %21 to i32
  %shl39 = shl nsw i32 %conv38, 16
  %or40 = or i32 %or36, %shl39
  %arrayidx41 = getelementptr i8, ptr %msg.addr.0370, i32 11
  %22 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx41, align 1
  %conv42363 = zext i8 %23 to i32
  %shl43 = shl nuw i32 %conv42363, 24
  %or44 = or i32 %or40, %shl43
  %arrayidx45 = getelementptr i8, ptr %msg.addr.0370, i32 12
  %24 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx45, align 1
  %conv46 = sext i8 %25 to i32
  %arrayidx47 = getelementptr i8, ptr %msg.addr.0370, i32 13
  %26 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx47, align 1
  %conv48 = sext i8 %27 to i32
  %shl49 = shl nsw i32 %conv48, 8
  %or50 = or i32 %shl49, %conv46
  %arrayidx51 = getelementptr i8, ptr %msg.addr.0370, i32 14
  %28 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx51, align 1
  %conv52 = sext i8 %29 to i32
  %shl53 = shl nsw i32 %conv52, 16
  %or54 = or i32 %or50, %shl53
  %arrayidx55 = getelementptr i8, ptr %msg.addr.0370, i32 15
  %30 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx55, align 1
  %conv56364 = zext i8 %31 to i32
  %shl57 = shl nuw i32 %conv56364, 24
  %or58 = or i32 %or54, %shl57
  %shl60 = shl i32 %h1.0372, 4
  %add61 = add i32 %shl60, %or16
  %add62 = add i32 %h1.0372, -1640531527
  %xor = xor i32 %add61, %add62
  %shr = lshr i32 %h1.0372, 5
  %add63 = add i32 %shr, %or30
  %xor64 = xor i32 %xor, %add63
  %add65 = add i32 %xor64, %h0.0371
  %shl66 = shl i32 %add65, 4
  %add67 = add i32 %shl66, %or44
  %add68 = add i32 %add65, -1640531527
  %xor69 = xor i32 %add67, %add68
  %shr70 = lshr i32 %add65, 5
  %add71 = add i32 %shr70, %or58
  %xor72 = xor i32 %xor69, %add71
  %add73 = add i32 %xor72, %h1.0372
  %shl60.1 = shl i32 %add73, 4
  %add61.1 = add i32 %shl60.1, %or16
  %add62.1 = add i32 %add73, 1013904242
  %xor.1 = xor i32 %add61.1, %add62.1
  %shr.1 = lshr i32 %add73, 5
  %add63.1 = add i32 %shr.1, %or30
  %xor64.1 = xor i32 %xor.1, %add63.1
  %add65.1 = add i32 %xor64.1, %add65
  %shl66.1 = shl i32 %add65.1, 4
  %add67.1 = add i32 %shl66.1, %or44
  %add68.1 = add i32 %add65.1, 1013904242
  %xor69.1 = xor i32 %add67.1, %add68.1
  %shr70.1 = lshr i32 %add65.1, 5
  %add71.1 = add i32 %shr70.1, %or58
  %xor72.1 = xor i32 %xor69.1, %add71.1
  %add73.1 = add i32 %xor72.1, %add73
  %shl60.2 = shl i32 %add73.1, 4
  %add61.2 = add i32 %shl60.2, %or16
  %add62.2 = add i32 %add73.1, -626627285
  %xor.2 = xor i32 %add61.2, %add62.2
  %shr.2 = lshr i32 %add73.1, 5
  %add63.2 = add i32 %shr.2, %or30
  %xor64.2 = xor i32 %xor.2, %add63.2
  %add65.2 = add i32 %xor64.2, %add65.1
  %shl66.2 = shl i32 %add65.2, 4
  %add67.2 = add i32 %shl66.2, %or44
  %add68.2 = add i32 %add65.2, -626627285
  %xor69.2 = xor i32 %add67.2, %add68.2
  %shr70.2 = lshr i32 %add65.2, 5
  %add71.2 = add i32 %shr70.2, %or58
  %xor72.2 = xor i32 %xor69.2, %add71.2
  %add73.2 = add i32 %xor72.2, %add73.1
  %shl60.3 = shl i32 %add73.2, 4
  %add61.3 = add i32 %shl60.3, %or16
  %add62.3 = add i32 %add73.2, 2027808484
  %xor.3 = xor i32 %add61.3, %add62.3
  %shr.3 = lshr i32 %add73.2, 5
  %add63.3 = add i32 %shr.3, %or30
  %xor64.3 = xor i32 %xor.3, %add63.3
  %add65.3 = add i32 %xor64.3, %add65.2
  %shl66.3 = shl i32 %add65.3, 4
  %add67.3 = add i32 %shl66.3, %or44
  %add68.3 = add i32 %add65.3, 2027808484
  %xor69.3 = xor i32 %add67.3, %add68.3
  %shr70.3 = lshr i32 %add65.3, 5
  %add71.3 = add i32 %shr70.3, %or58
  %xor72.3 = xor i32 %xor69.3, %add71.3
  %add73.3 = add i32 %xor72.3, %add73.2
  %shl60.4 = shl i32 %add73.3, 4
  %add61.4 = add i32 %shl60.4, %or16
  %add62.4 = add i32 %add73.3, 387276957
  %xor.4 = xor i32 %add61.4, %add62.4
  %shr.4 = lshr i32 %add73.3, 5
  %add63.4 = add i32 %shr.4, %or30
  %xor64.4 = xor i32 %xor.4, %add63.4
  %add65.4 = add i32 %xor64.4, %add65.3
  %shl66.4 = shl i32 %add65.4, 4
  %add67.4 = add i32 %shl66.4, %or44
  %add68.4 = add i32 %add65.4, 387276957
  %xor69.4 = xor i32 %add67.4, %add68.4
  %shr70.4 = lshr i32 %add65.4, 5
  %add71.4 = add i32 %shr70.4, %or58
  %xor72.4 = xor i32 %xor69.4, %add71.4
  %add73.4 = add i32 %xor72.4, %add73.3
  %shl60.5 = shl i32 %add73.4, 4
  %add61.5 = add i32 %shl60.5, %or16
  %add62.5 = add i32 %add73.4, -1253254570
  %xor.5 = xor i32 %add61.5, %add62.5
  %shr.5 = lshr i32 %add73.4, 5
  %add63.5 = add i32 %shr.5, %or30
  %xor64.5 = xor i32 %xor.5, %add63.5
  %add65.5 = add i32 %xor64.5, %add65.4
  %shl66.5 = shl i32 %add65.5, 4
  %add67.5 = add i32 %shl66.5, %or44
  %add68.5 = add i32 %add65.5, -1253254570
  %xor69.5 = xor i32 %add67.5, %add68.5
  %shr70.5 = lshr i32 %add65.5, 5
  %add71.5 = add i32 %shr70.5, %or58
  %xor72.5 = xor i32 %xor69.5, %add71.5
  %add73.5 = add i32 %xor72.5, %add73.4
  %add74 = add i32 %add65.5, %h0.0371
  %add75 = add i32 %add73.5, %h1.0372
  %sub = add nsw i32 %len.addr.0369, -16
  %add.ptr = getelementptr i8, ptr %msg.addr.0370, i32 16
  %cmp = icmp ugt i32 %len.addr.0369, 31
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %len.addr.0.lcssa = phi i32 [ %len, %entry.while.end_crit_edge ], [ %sub, %while.body.while.end_crit_edge ]
  %msg.addr.0.lcssa = phi ptr [ %msg, %entry.while.end_crit_edge ], [ %add.ptr, %while.body.while.end_crit_edge ]
  %h0.0.lcssa = phi i32 [ -1805343611, %entry.while.end_crit_edge ], [ %add74, %while.body.while.end_crit_edge ]
  %h1.0.lcssa = phi i32 [ 1412307604, %entry.while.end_crit_edge ], [ %add75, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %len.addr.0.lcssa)
  %cmp78 = icmp sgt i32 %len.addr.0.lcssa, 11
  br i1 %cmp78, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %32 = ptrtoint ptr %msg.addr.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %msg.addr.0.lcssa, align 1
  %conv81 = sext i8 %33 to i32
  %arrayidx82 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 1
  %34 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx82, align 1
  %conv83 = sext i8 %35 to i32
  %shl84 = shl nsw i32 %conv83, 8
  %or85 = or i32 %shl84, %conv81
  %arrayidx86 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 2
  %36 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx86, align 1
  %conv87 = sext i8 %37 to i32
  %shl88 = shl nsw i32 %conv87, 16
  %or89 = or i32 %or85, %shl88
  %arrayidx90 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 3
  %38 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx90, align 1
  %conv91358 = zext i8 %39 to i32
  %shl92 = shl nuw i32 %conv91358, 24
  %or93 = or i32 %or89, %shl92
  %arrayidx94 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 4
  %40 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx94, align 1
  %conv95 = sext i8 %41 to i32
  %arrayidx96 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 5
  %42 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx96, align 1
  %conv97 = sext i8 %43 to i32
  %shl98 = shl nsw i32 %conv97, 8
  %or99 = or i32 %shl98, %conv95
  %arrayidx100 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 6
  %44 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx100, align 1
  %conv101 = sext i8 %45 to i32
  %shl102 = shl nsw i32 %conv101, 16
  %or103 = or i32 %or99, %shl102
  %arrayidx104 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 7
  %46 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx104, align 1
  %conv105359 = zext i8 %47 to i32
  %shl106 = shl nuw i32 %conv105359, 24
  %or107 = or i32 %or103, %shl106
  %arrayidx108 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 8
  %48 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx108, align 1
  %conv109 = sext i8 %49 to i32
  %arrayidx110 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 9
  %50 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx110, align 1
  %conv111 = sext i8 %51 to i32
  %shl112 = shl nsw i32 %conv111, 8
  %or113 = or i32 %shl112, %conv109
  %arrayidx114 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 10
  %52 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx114, align 1
  %conv115 = sext i8 %53 to i32
  %shl116 = shl nsw i32 %conv115, 16
  %or117 = or i32 %or113, %shl116
  %arrayidx118 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 11
  %54 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx118, align 1
  %conv119360 = zext i8 %55 to i32
  %shl120 = shl nuw i32 %conv119360, 24
  %or121 = or i32 %or117, %shl120
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %len.addr.0.lcssa)
  %cmp122388.not = icmp eq i32 %len.addr.0.lcssa, 12
  br i1 %cmp122388.not, label %if.then.do.body213_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.do.body213_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body213

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.0390 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 12, %if.then.for.body_crit_edge ]
  %d.0389 = phi i32 [ %or127, %for.body.for.body_crit_edge ], [ %or3, %if.then.for.body_crit_edge ]
  %shl124 = shl i32 %d.0389, 8
  %arrayidx125 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 %i.0390
  %56 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx125, align 1
  %conv126 = sext i8 %57 to i32
  %or127 = or i32 %shl124, %conv126
  %inc = add nuw nsw i32 %i.0390, 1
  %exitcond397.not = icmp eq i32 %inc, %len.addr.0.lcssa
  br i1 %exitcond397.not, label %for.body.do.body213_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.do.body213_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body213

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %len.addr.0.lcssa)
  %cmp128 = icmp sgt i32 %len.addr.0.lcssa, 7
  br i1 %cmp128, label %if.then130, label %if.else170

if.then130:                                       ; preds = %if.else
  %58 = ptrtoint ptr %msg.addr.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %msg.addr.0.lcssa, align 1
  %conv132 = sext i8 %59 to i32
  %arrayidx133 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 1
  %60 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx133, align 1
  %conv134 = sext i8 %61 to i32
  %shl135 = shl nsw i32 %conv134, 8
  %or136 = or i32 %shl135, %conv132
  %arrayidx137 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 2
  %62 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx137, align 1
  %conv138 = sext i8 %63 to i32
  %shl139 = shl nsw i32 %conv138, 16
  %or140 = or i32 %or136, %shl139
  %arrayidx141 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 3
  %64 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx141, align 1
  %conv142356 = zext i8 %65 to i32
  %shl143 = shl nuw i32 %conv142356, 24
  %or144 = or i32 %or140, %shl143
  %arrayidx145 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 4
  %66 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx145, align 1
  %conv146 = sext i8 %67 to i32
  %arrayidx147 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 5
  %68 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx147, align 1
  %conv148 = sext i8 %69 to i32
  %shl149 = shl nsw i32 %conv148, 8
  %or150 = or i32 %shl149, %conv146
  %arrayidx151 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 6
  %70 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx151, align 1
  %conv152 = sext i8 %71 to i32
  %shl153 = shl nsw i32 %conv152, 16
  %or154 = or i32 %or150, %shl153
  %arrayidx155 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 7
  %72 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx155, align 1
  %conv156357 = zext i8 %73 to i32
  %shl157 = shl nuw i32 %conv156357, 24
  %or158 = or i32 %or154, %shl157
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len.addr.0.lcssa)
  %cmp160384.not = icmp eq i32 %len.addr.0.lcssa, 8
  br i1 %cmp160384.not, label %if.then130.do.body213_crit_edge, label %if.then130.for.body162_crit_edge

if.then130.for.body162_crit_edge:                 ; preds = %if.then130
  br label %for.body162

if.then130.do.body213_crit_edge:                  ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body213

for.body162:                                      ; preds = %for.body162.for.body162_crit_edge, %if.then130.for.body162_crit_edge
  %i.1386 = phi i32 [ %inc168, %for.body162.for.body162_crit_edge ], [ 8, %if.then130.for.body162_crit_edge ]
  %c.0385 = phi i32 [ %or166, %for.body162.for.body162_crit_edge ], [ %or3, %if.then130.for.body162_crit_edge ]
  %shl163 = shl i32 %c.0385, 8
  %arrayidx164 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 %i.1386
  %74 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx164, align 1
  %conv165 = sext i8 %75 to i32
  %or166 = or i32 %shl163, %conv165
  %inc168 = add nuw nsw i32 %i.1386, 1
  %exitcond396.not = icmp eq i32 %inc168, %len.addr.0.lcssa
  br i1 %exitcond396.not, label %for.body162.do.body213_crit_edge, label %for.body162.for.body162_crit_edge

for.body162.for.body162_crit_edge:                ; preds = %for.body162
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body162

for.body162.do.body213_crit_edge:                 ; preds = %for.body162
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body213

if.else170:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len.addr.0.lcssa)
  %cmp171 = icmp sgt i32 %len.addr.0.lcssa, 3
  br i1 %cmp171, label %if.then173, label %for.cond200.preheader

for.cond200.preheader:                            ; preds = %if.else170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.lcssa)
  %cmp201376 = icmp sgt i32 %len.addr.0.lcssa, 0
  br i1 %cmp201376, label %for.body203, label %for.cond200.preheader.do.body213_crit_edge

for.cond200.preheader.do.body213_crit_edge:       ; preds = %for.cond200.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body213

if.then173:                                       ; preds = %if.else170
  %76 = ptrtoint ptr %msg.addr.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %msg.addr.0.lcssa, align 1
  %conv175 = sext i8 %77 to i32
  %arrayidx176 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 1
  %78 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx176, align 1
  %conv177 = sext i8 %79 to i32
  %shl178 = shl nsw i32 %conv177, 8
  %or179 = or i32 %shl178, %conv175
  %arrayidx180 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 2
  %80 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx180, align 1
  %conv181 = sext i8 %81 to i32
  %shl182 = shl nsw i32 %conv181, 16
  %or183 = or i32 %or179, %shl182
  %arrayidx184 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 3
  %82 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx184, align 1
  %conv185355 = zext i8 %83 to i32
  %shl186 = shl nuw i32 %conv185355, 24
  %or187 = or i32 %or183, %shl186
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.addr.0.lcssa)
  %cmp189380.not = icmp eq i32 %len.addr.0.lcssa, 4
  br i1 %cmp189380.not, label %if.then173.do.body213_crit_edge, label %if.then173.for.body191_crit_edge

if.then173.for.body191_crit_edge:                 ; preds = %if.then173
  br label %for.body191

if.then173.do.body213_crit_edge:                  ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body213

for.body191:                                      ; preds = %for.body191.for.body191_crit_edge, %if.then173.for.body191_crit_edge
  %i.2382 = phi i32 [ %inc197, %for.body191.for.body191_crit_edge ], [ 4, %if.then173.for.body191_crit_edge ]
  %b.0381 = phi i32 [ %or195, %for.body191.for.body191_crit_edge ], [ %or3, %if.then173.for.body191_crit_edge ]
  %shl192 = shl i32 %b.0381, 8
  %arrayidx193 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 %i.2382
  %84 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx193, align 1
  %conv194 = sext i8 %85 to i32
  %or195 = or i32 %shl192, %conv194
  %inc197 = add nuw nsw i32 %i.2382, 1
  %exitcond395.not = icmp eq i32 %inc197, %len.addr.0.lcssa
  br i1 %exitcond395.not, label %for.body191.do.body213_crit_edge, label %for.body191.for.body191_crit_edge

for.body191.for.body191_crit_edge:                ; preds = %for.body191
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body191

for.body191.do.body213_crit_edge:                 ; preds = %for.body191
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body213

for.body203:                                      ; preds = %for.cond200.preheader
  %shl204 = shl i32 %or3, 8
  %86 = ptrtoint ptr %msg.addr.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %msg.addr.0.lcssa, align 1
  %conv206 = sext i8 %87 to i32
  %or207 = or i32 %shl204, %conv206
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.addr.0.lcssa)
  %exitcond.not = icmp eq i32 %len.addr.0.lcssa, 1
  br i1 %exitcond.not, label %for.body203.do.body213_crit_edge, label %for.body203.1

for.body203.do.body213_crit_edge:                 ; preds = %for.body203
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body213

for.body203.1:                                    ; preds = %for.body203
  %shl204.1 = shl i32 %or207, 8
  %arrayidx205.1 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 1
  %88 = ptrtoint ptr %arrayidx205.1 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx205.1, align 1
  %conv206.1 = sext i8 %89 to i32
  %or207.1 = or i32 %shl204.1, %conv206.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.addr.0.lcssa)
  %exitcond.not.1 = icmp eq i32 %len.addr.0.lcssa, 2
  br i1 %exitcond.not.1, label %for.body203.1.do.body213_crit_edge, label %for.body203.2

for.body203.1.do.body213_crit_edge:               ; preds = %for.body203.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body213

for.body203.2:                                    ; preds = %for.body203.1
  call void @__sanitizer_cov_trace_pc() #4
  %shl204.2 = shl i32 %or207.1, 8
  %arrayidx205.2 = getelementptr i8, ptr %msg.addr.0.lcssa, i32 2
  %90 = ptrtoint ptr %arrayidx205.2 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx205.2, align 1
  %conv206.2 = sext i8 %91 to i32
  %or207.2 = or i32 %shl204.2, %conv206.2
  br label %do.body213

do.body213:                                       ; preds = %for.body203.2, %for.body203.1.do.body213_crit_edge, %for.body203.do.body213_crit_edge, %for.body191.do.body213_crit_edge, %if.then173.do.body213_crit_edge, %for.cond200.preheader.do.body213_crit_edge, %for.body162.do.body213_crit_edge, %if.then130.do.body213_crit_edge, %for.body.do.body213_crit_edge, %if.then.do.body213_crit_edge
  %a.1 = phi i32 [ %or93, %if.then.do.body213_crit_edge ], [ %or144, %if.then130.do.body213_crit_edge ], [ %or187, %if.then173.do.body213_crit_edge ], [ %or3, %for.cond200.preheader.do.body213_crit_edge ], [ %or93, %for.body.do.body213_crit_edge ], [ %or144, %for.body162.do.body213_crit_edge ], [ %or187, %for.body191.do.body213_crit_edge ], [ %or207, %for.body203.do.body213_crit_edge ], [ %or207.1, %for.body203.1.do.body213_crit_edge ], [ %or207.2, %for.body203.2 ]
  %b.1 = phi i32 [ %or107, %if.then.do.body213_crit_edge ], [ %or158, %if.then130.do.body213_crit_edge ], [ %or3, %if.then173.do.body213_crit_edge ], [ %or3, %for.cond200.preheader.do.body213_crit_edge ], [ %or107, %for.body.do.body213_crit_edge ], [ %or158, %for.body162.do.body213_crit_edge ], [ %or195, %for.body191.do.body213_crit_edge ], [ %or3, %for.body203.2 ], [ %or3, %for.body203.1.do.body213_crit_edge ], [ %or3, %for.body203.do.body213_crit_edge ]
  %c.1 = phi i32 [ %or121, %if.then.do.body213_crit_edge ], [ %or3, %if.then130.do.body213_crit_edge ], [ %or3, %if.then173.do.body213_crit_edge ], [ %or3, %for.cond200.preheader.do.body213_crit_edge ], [ %or121, %for.body.do.body213_crit_edge ], [ %or166, %for.body162.do.body213_crit_edge ], [ %or3, %for.body191.do.body213_crit_edge ], [ %or3, %for.body203.2 ], [ %or3, %for.body203.1.do.body213_crit_edge ], [ %or3, %for.body203.do.body213_crit_edge ]
  %d.1 = phi i32 [ %or3, %if.then.do.body213_crit_edge ], [ %or3, %if.then130.do.body213_crit_edge ], [ %or3, %if.then173.do.body213_crit_edge ], [ %or3, %for.cond200.preheader.do.body213_crit_edge ], [ %or127, %for.body.do.body213_crit_edge ], [ %or3, %for.body162.do.body213_crit_edge ], [ %or3, %for.body191.do.body213_crit_edge ], [ %or3, %for.body203.2 ], [ %or3, %for.body203.1.do.body213_crit_edge ], [ %or3, %for.body203.do.body213_crit_edge ]
  %shl220 = shl i32 %h1.0.lcssa, 4
  %add221 = add i32 %shl220, %a.1
  %add222 = add i32 %h1.0.lcssa, -1640531527
  %xor223 = xor i32 %add221, %add222
  %shr224 = lshr i32 %h1.0.lcssa, 5
  %add225 = add i32 %shr224, %b.1
  %xor226 = xor i32 %xor223, %add225
  %add227 = add i32 %xor226, %h0.0.lcssa
  %shl228 = shl i32 %add227, 4
  %add229 = add i32 %shl228, %c.1
  %add230 = add i32 %add227, -1640531527
  %xor231 = xor i32 %add229, %add230
  %shr232 = lshr i32 %add227, 5
  %add233 = add i32 %shr232, %d.1
  %xor234 = xor i32 %xor231, %add233
  %add235 = add i32 %xor234, %h1.0.lcssa
  %shl220.1 = shl i32 %add235, 4
  %add221.1 = add i32 %shl220.1, %a.1
  %add222.1 = add i32 %add235, 1013904242
  %xor223.1 = xor i32 %add221.1, %add222.1
  %shr224.1 = lshr i32 %add235, 5
  %add225.1 = add i32 %shr224.1, %b.1
  %xor226.1 = xor i32 %xor223.1, %add225.1
  %add227.1 = add i32 %xor226.1, %add227
  %shl228.1 = shl i32 %add227.1, 4
  %add229.1 = add i32 %shl228.1, %c.1
  %add230.1 = add i32 %add227.1, 1013904242
  %xor231.1 = xor i32 %add229.1, %add230.1
  %shr232.1 = lshr i32 %add227.1, 5
  %add233.1 = add i32 %shr232.1, %d.1
  %xor234.1 = xor i32 %xor231.1, %add233.1
  %add235.1 = add i32 %xor234.1, %add235
  %shl220.2 = shl i32 %add235.1, 4
  %add221.2 = add i32 %shl220.2, %a.1
  %add222.2 = add i32 %add235.1, -626627285
  %xor223.2 = xor i32 %add221.2, %add222.2
  %shr224.2 = lshr i32 %add235.1, 5
  %add225.2 = add i32 %shr224.2, %b.1
  %xor226.2 = xor i32 %xor223.2, %add225.2
  %add227.2 = add i32 %xor226.2, %add227.1
  %shl228.2 = shl i32 %add227.2, 4
  %add229.2 = add i32 %shl228.2, %c.1
  %add230.2 = add i32 %add227.2, -626627285
  %xor231.2 = xor i32 %add229.2, %add230.2
  %shr232.2 = lshr i32 %add227.2, 5
  %add233.2 = add i32 %shr232.2, %d.1
  %xor234.2 = xor i32 %xor231.2, %add233.2
  %add235.2 = add i32 %xor234.2, %add235.1
  %shl220.3 = shl i32 %add235.2, 4
  %add221.3 = add i32 %shl220.3, %a.1
  %add222.3 = add i32 %add235.2, 2027808484
  %xor223.3 = xor i32 %add221.3, %add222.3
  %shr224.3 = lshr i32 %add235.2, 5
  %add225.3 = add i32 %shr224.3, %b.1
  %xor226.3 = xor i32 %xor223.3, %add225.3
  %add227.3 = add i32 %xor226.3, %add227.2
  %shl228.3 = shl i32 %add227.3, 4
  %add229.3 = add i32 %shl228.3, %c.1
  %add230.3 = add i32 %add227.3, 2027808484
  %xor231.3 = xor i32 %add229.3, %add230.3
  %shr232.3 = lshr i32 %add227.3, 5
  %add233.3 = add i32 %shr232.3, %d.1
  %xor234.3 = xor i32 %xor231.3, %add233.3
  %add235.3 = add i32 %xor234.3, %add235.2
  %shl220.4 = shl i32 %add235.3, 4
  %add221.4 = add i32 %shl220.4, %a.1
  %add222.4 = add i32 %add235.3, 387276957
  %xor223.4 = xor i32 %add221.4, %add222.4
  %shr224.4 = lshr i32 %add235.3, 5
  %add225.4 = add i32 %shr224.4, %b.1
  %xor226.4 = xor i32 %xor223.4, %add225.4
  %add227.4 = add i32 %xor226.4, %add227.3
  %shl228.4 = shl i32 %add227.4, 4
  %add229.4 = add i32 %shl228.4, %c.1
  %add230.4 = add i32 %add227.4, 387276957
  %xor231.4 = xor i32 %add229.4, %add230.4
  %shr232.4 = lshr i32 %add227.4, 5
  %add233.4 = add i32 %shr232.4, %d.1
  %xor234.4 = xor i32 %xor231.4, %add233.4
  %add235.4 = add i32 %xor234.4, %add235.3
  %shl220.5 = shl i32 %add235.4, 4
  %add221.5 = add i32 %shl220.5, %a.1
  %add222.5 = add i32 %add235.4, -1253254570
  %xor223.5 = xor i32 %add221.5, %add222.5
  %shr224.5 = lshr i32 %add235.4, 5
  %add225.5 = add i32 %shr224.5, %b.1
  %xor226.5 = xor i32 %xor223.5, %add225.5
  %add227.5 = add i32 %xor226.5, %add227.4
  %shl228.5 = shl i32 %add227.5, 4
  %add229.5 = add i32 %shl228.5, %c.1
  %add230.5 = add i32 %add227.5, -1253254570
  %xor231.5 = xor i32 %add229.5, %add230.5
  %shr232.5 = lshr i32 %add227.5, 5
  %add233.5 = add i32 %shr232.5, %d.1
  %xor234.5 = xor i32 %xor231.5, %add233.5
  %add235.5 = add i32 %xor234.5, %add235.4
  %shl220.6 = shl i32 %add235.5, 4
  %add221.6 = add i32 %shl220.6, %a.1
  %add222.6 = add i32 %add235.5, 1401181199
  %xor223.6 = xor i32 %add221.6, %add222.6
  %shr224.6 = lshr i32 %add235.5, 5
  %add225.6 = add i32 %shr224.6, %b.1
  %xor226.6 = xor i32 %xor223.6, %add225.6
  %add227.6 = add i32 %xor226.6, %add227.5
  %shl228.6 = shl i32 %add227.6, 4
  %add229.6 = add i32 %shl228.6, %c.1
  %add230.6 = add i32 %add227.6, 1401181199
  %xor231.6 = xor i32 %add229.6, %add230.6
  %shr232.6 = lshr i32 %add227.6, 5
  %add233.6 = add i32 %shr232.6, %d.1
  %xor234.6 = xor i32 %xor231.6, %add233.6
  %add235.6 = add i32 %xor234.6, %add235.5
  %shl220.7 = shl i32 %add235.6, 4
  %add221.7 = add i32 %shl220.7, %a.1
  %add222.7 = add i32 %add235.6, -239350328
  %xor223.7 = xor i32 %add221.7, %add222.7
  %shr224.7 = lshr i32 %add235.6, 5
  %add225.7 = add i32 %shr224.7, %b.1
  %xor226.7 = xor i32 %xor223.7, %add225.7
  %add227.7 = add i32 %xor226.7, %add227.6
  %shl228.7 = shl i32 %add227.7, 4
  %add229.7 = add i32 %shl228.7, %c.1
  %add230.7 = add i32 %add227.7, -239350328
  %xor231.7 = xor i32 %add229.7, %add230.7
  %shr232.7 = lshr i32 %add227.7, 5
  %add233.7 = add i32 %shr232.7, %d.1
  %xor234.7 = xor i32 %xor231.7, %add233.7
  %add235.7 = add i32 %xor234.7, %add235.6
  %shl220.8 = shl i32 %add235.7, 4
  %add221.8 = add i32 %shl220.8, %a.1
  %add222.8 = add i32 %add235.7, -1879881855
  %xor223.8 = xor i32 %add221.8, %add222.8
  %shr224.8 = lshr i32 %add235.7, 5
  %add225.8 = add i32 %shr224.8, %b.1
  %xor226.8 = xor i32 %xor223.8, %add225.8
  %add227.8 = add i32 %xor226.8, %add227.7
  %shl228.8 = shl i32 %add227.8, 4
  %add229.8 = add i32 %shl228.8, %c.1
  %add230.8 = add i32 %add227.8, -1879881855
  %xor231.8 = xor i32 %add229.8, %add230.8
  %shr232.8 = lshr i32 %add227.8, 5
  %add233.8 = add i32 %shr232.8, %d.1
  %xor234.8 = xor i32 %xor231.8, %add233.8
  %add235.8 = add i32 %xor234.8, %add235.7
  %shl220.9 = shl i32 %add235.8, 4
  %add221.9 = add i32 %shl220.9, %a.1
  %add222.9 = add i32 %add235.8, 774553914
  %xor223.9 = xor i32 %add221.9, %add222.9
  %shr224.9 = lshr i32 %add235.8, 5
  %add225.9 = add i32 %shr224.9, %b.1
  %xor226.9 = xor i32 %xor223.9, %add225.9
  %add227.9 = add i32 %xor226.9, %add227.8
  %shl228.9 = shl i32 %add227.9, 4
  %add229.9 = add i32 %shl228.9, %c.1
  %add230.9 = add i32 %add227.9, 774553914
  %xor231.9 = xor i32 %add229.9, %add230.9
  %shr232.9 = lshr i32 %add227.9, 5
  %add233.9 = add i32 %shr232.9, %d.1
  %xor234.9 = xor i32 %xor231.9, %add233.9
  %add235.9 = add i32 %xor234.9, %add235.8
  %add240 = add i32 %add227.9, %h0.0.lcssa
  %add241 = add i32 %add235.9, %h1.0.lcssa
  %xor244 = xor i32 %add241, %add240
  ret i32 %xor244
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @yura_hash(ptr nocapture noundef readonly %msg, i32 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp99 = icmp sgt i32 %len, 1
  br i1 %cmp99, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0101 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %pow.0100 = phi i32 [ %mul, %for.body.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %mul = mul i32 %pow.0100, 10
  %inc = add nuw nsw i32 %i.0101, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %pow.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %mul, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp1 = icmp eq i32 %len, 1
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msg, align 1
  %conv = sext i8 %1 to i32
  %sub = add nsw i32 %conv, -48
  %mul5 = select i1 %cmp1, i32 1, i32 %pow.0.lcssa
  %a.0 = mul i32 %sub, %mul5
  br i1 %cmp99, label %for.body9.lr.ph, label %for.end.for.cond48.preheader.lr.ph_crit_edge

for.end.for.cond48.preheader.lr.ph_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond48.preheader.lr.ph

for.body9.lr.ph:                                  ; preds = %for.end
  %sub14 = add nsw i32 %len, -1
  br label %for.body9

for.cond26.preheader:                             ; preds = %for.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %len)
  %cmp27112 = icmp slt i32 %len, 40
  br i1 %cmp27112, label %for.cond26.preheader.for.cond48.preheader.lr.ph_crit_edge, label %for.cond44.preheader

for.cond26.preheader.for.cond48.preheader.lr.ph_crit_edge: ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond48.preheader.lr.ph

for.body9:                                        ; preds = %for.end21.for.body9_crit_edge, %for.body9.lr.ph
  %i.1108 = phi i32 [ 1, %for.body9.lr.ph ], [ %inc24, %for.end21.for.body9_crit_edge ]
  %a.1107 = phi i32 [ %a.0, %for.body9.lr.ph ], [ %add, %for.end21.for.body9_crit_edge ]
  %arrayidx10 = getelementptr i8, ptr %msg, i32 %i.1108
  %2 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %3 to i32
  %sub12 = add nsw i32 %conv11, -48
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1108, i32 %sub14)
  %cmp15102 = icmp slt i32 %i.1108, %sub14
  br i1 %cmp15102, label %for.body9.for.body17_crit_edge, label %for.body9.for.end21_crit_edge

for.body9.for.end21_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end21

for.body9.for.body17_crit_edge:                   ; preds = %for.body9
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.body9.for.body17_crit_edge
  %pow.1104 = phi i32 [ %mul18, %for.body17.for.body17_crit_edge ], [ 1, %for.body9.for.body17_crit_edge ]
  %j.0103 = phi i32 [ %inc20, %for.body17.for.body17_crit_edge ], [ %i.1108, %for.body9.for.body17_crit_edge ]
  %mul18 = mul i32 %pow.1104, 10
  %inc20 = add nuw nsw i32 %j.0103, 1
  %exitcond124.not = icmp eq i32 %inc20, %sub14
  br i1 %exitcond124.not, label %for.body17.for.end21_crit_edge, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body17

for.body17.for.end21_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end21

for.end21:                                        ; preds = %for.body17.for.end21_crit_edge, %for.body9.for.end21_crit_edge
  %pow.1.lcssa = phi i32 [ 1, %for.body9.for.end21_crit_edge ], [ %mul18, %for.body17.for.end21_crit_edge ]
  %mul22 = mul i32 %pow.1.lcssa, %sub12
  %add = add i32 %mul22, %a.1107
  %inc24 = add nuw nsw i32 %i.1108, 1
  %exitcond125.not = icmp eq i32 %inc24, %len
  br i1 %exitcond125.not, label %for.cond26.preheader, label %for.end21.for.body9_crit_edge

for.end21.for.body9_crit_edge:                    ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body9

for.cond44.preheader:                             ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %len)
  %cmp45119 = icmp ult i32 %len, 256
  br i1 %cmp45119, label %for.cond44.preheader.for.cond48.preheader.lr.ph_crit_edge, label %for.cond44.preheader.for.end61_crit_edge

for.cond44.preheader.for.end61_crit_edge:         ; preds = %for.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end61

for.cond44.preheader.for.cond48.preheader.lr.ph_crit_edge: ; preds = %for.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond48.preheader.lr.ph

for.cond48.preheader.lr.ph:                       ; preds = %for.cond44.preheader.for.cond48.preheader.lr.ph_crit_edge, %for.cond26.preheader.for.cond48.preheader.lr.ph_crit_edge, %for.end.for.cond48.preheader.lr.ph_crit_edge
  %i.2.lcssa136 = phi i32 [ %len, %for.cond44.preheader.for.cond48.preheader.lr.ph_crit_edge ], [ 40, %for.cond26.preheader.for.cond48.preheader.lr.ph_crit_edge ], [ 40, %for.end.for.cond48.preheader.lr.ph_crit_edge ]
  %a.1.lcssa130135 = phi i32 [ %add, %for.cond44.preheader.for.cond48.preheader.lr.ph_crit_edge ], [ %add, %for.cond26.preheader.for.cond48.preheader.lr.ph_crit_edge ], [ %a.0, %for.end.for.cond48.preheader.lr.ph_crit_edge ]
  %sub49 = add i32 %len, -1
  br label %for.cond48.preheader

for.cond48.preheader:                             ; preds = %for.end56.for.cond48.preheader_crit_edge, %for.cond48.preheader.lr.ph
  %i.3121 = phi i32 [ %i.2.lcssa136, %for.cond48.preheader.lr.ph ], [ %inc60, %for.end56.for.cond48.preheader_crit_edge ]
  %a.3120 = phi i32 [ %a.1.lcssa130135, %for.cond48.preheader.lr.ph ], [ %add58, %for.end56.for.cond48.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3121, i32 %sub49)
  %cmp50115 = icmp slt i32 %i.3121, %sub49
  br i1 %cmp50115, label %for.cond48.preheader.for.body52_crit_edge, label %for.cond48.preheader.for.end56_crit_edge

for.cond48.preheader.for.end56_crit_edge:         ; preds = %for.cond48.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end56

for.cond48.preheader.for.body52_crit_edge:        ; preds = %for.cond48.preheader
  br label %for.body52

for.body52:                                       ; preds = %for.body52.for.body52_crit_edge, %for.cond48.preheader.for.body52_crit_edge
  %pow.3117 = phi i32 [ %mul53, %for.body52.for.body52_crit_edge ], [ 1, %for.cond48.preheader.for.body52_crit_edge ]
  %j.2116 = phi i32 [ %inc55, %for.body52.for.body52_crit_edge ], [ %i.3121, %for.cond48.preheader.for.body52_crit_edge ]
  %mul53 = mul i32 %pow.3117, 10
  %inc55 = add nsw i32 %j.2116, 1
  %cmp50 = icmp slt i32 %inc55, %sub49
  br i1 %cmp50, label %for.body52.for.body52_crit_edge, label %for.body52.for.end56_crit_edge

for.body52.for.end56_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end56

for.body52.for.body52_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body52

for.end56:                                        ; preds = %for.body52.for.end56_crit_edge, %for.cond48.preheader.for.end56_crit_edge
  %pow.3.lcssa = phi i32 [ 1, %for.cond48.preheader.for.end56_crit_edge ], [ %mul53, %for.body52.for.end56_crit_edge ]
  %mul57 = mul i32 %pow.3.lcssa, %i.3121
  %add58 = add i32 %mul57, %a.3120
  %inc60 = add nsw i32 %i.3121, 1
  %exitcond126.not = icmp eq i32 %inc60, 256
  br i1 %exitcond126.not, label %for.end56.for.end61_crit_edge, label %for.end56.for.cond48.preheader_crit_edge

for.end56.for.cond48.preheader_crit_edge:         ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond48.preheader

for.end56.for.end61_crit_edge:                    ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end61

for.end61:                                        ; preds = %for.end56.for.end61_crit_edge, %for.cond44.preheader.for.end61_crit_edge
  %a.3.lcssa = phi i32 [ %add, %for.cond44.preheader.for.end61_crit_edge ], [ %add58, %for.end56.for.end61_crit_edge ]
  %shl = shl i32 %a.3.lcssa, 7
  ret i32 %shl
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r5_hash(ptr nocapture noundef readonly %msg, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not9 = icmp eq i8 %1, 0
  br i1 %tobool.not9, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi i8 [ %4, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %a.011 = phi i32 [ %mul, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %msg.addr.010 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %msg, %entry.while.body_crit_edge ]
  %conv = sext i8 %2 to i32
  %shl = shl nsw i32 %conv, 4
  %add = add i32 %shl, %a.011
  %shr = ashr i32 %conv, 4
  %add2 = add i32 %add, %shr
  %mul = mul i32 %add2, 11
  %incdec.ptr = getelementptr i8, ptr %msg.addr.010, i32 1
  %3 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %incdec.ptr, align 1
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %a.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %mul, %while.body.while.end_crit_edge ]
  ret i32 %a.0.lcssa
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
