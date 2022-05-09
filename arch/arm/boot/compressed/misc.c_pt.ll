; ModuleID = '/llk/IR_all_yes/arch/arm/boot/compressed/misc.c_pt.bc'
source_filename = "../arch/arm/boot/compressed/misc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

@.str = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"\0A\0A -- System halted\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Attempting division by 0!\00", align 1
@__stack_chk_guard = local_unnamed_addr constant i32 658943, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"stack-protector: Kernel stack is corrupted\0A\00", align 1
@output_data = local_unnamed_addr global ptr null, align 4
@free_mem_ptr = local_unnamed_addr global i32 0, align 4
@free_mem_end_ptr = local_unnamed_addr global i32 0, align 4
@__machine_arch_type = local_unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Uncompressing Linux...\00", align 1
@input_data = external global [0 x i8], align 1
@input_data_end = external global [0 x i8], align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"decompressor returned an error\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c" done, booting the kernel.\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"detected buffer overflow\00", align 1

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define void @error(ptr nocapture noundef readonly %x) #0 align 64 {
entry:
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i, %entry
  %ptr.addr.0.i = phi ptr [ @.str, %entry ], [ %incdec.ptr.i, %if.end.i ]
  %incdec.ptr.i = getelementptr i8, ptr %ptr.addr.0.i, i32 1
  %0 = load i8, ptr %ptr.addr.0.i, align 1
  %conv.i = zext i8 %0 to i32
  switch i8 %0, label %if.end.i [
    i8 0, label %while.cond.i4
    i8 10, label %if.then.i
  ]

if.then.i:                                        ; preds = %while.cond.i
  tail call void @putc(i32 noundef 13) #3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.cond.i
  tail call void @putc(i32 noundef %conv.i) #3
  br label %while.cond.i

while.cond.i4:                                    ; preds = %if.end.i6, %while.cond.i
  %ptr.addr.0.i1 = phi ptr [ %incdec.ptr.i2, %if.end.i6 ], [ %x, %while.cond.i ]
  %incdec.ptr.i2 = getelementptr i8, ptr %ptr.addr.0.i1, i32 1
  %1 = load i8, ptr %ptr.addr.0.i1, align 1
  %conv.i3 = zext i8 %1 to i32
  switch i8 %1, label %if.end.i6 [
    i8 0, label %while.cond.i11
    i8 10, label %if.then.i5
  ]

if.then.i5:                                       ; preds = %while.cond.i4
  tail call void @putc(i32 noundef 13) #3
  br label %if.end.i6

if.end.i6:                                        ; preds = %if.then.i5, %while.cond.i4
  tail call void @putc(i32 noundef %conv.i3) #3
  br label %while.cond.i4

while.cond.i11:                                   ; preds = %if.end.i13, %while.cond.i4
  %ptr.addr.0.i8 = phi ptr [ %incdec.ptr.i9, %if.end.i13 ], [ @.str.1, %while.cond.i4 ]
  %incdec.ptr.i9 = getelementptr i8, ptr %ptr.addr.0.i8, i32 1
  %2 = load i8, ptr %ptr.addr.0.i8, align 1
  %conv.i10 = zext i8 %2 to i32
  switch i8 %2, label %if.end.i13 [
    i8 0, label %while.body
    i8 10, label %if.then.i12
  ]

if.then.i12:                                      ; preds = %while.cond.i11
  tail call void @putc(i32 noundef 13) #3
  br label %if.end.i13

if.end.i13:                                       ; preds = %if.then.i12, %while.cond.i11
  tail call void @putc(i32 noundef %conv.i10) #3
  br label %while.cond.i11

while.body:                                       ; preds = %while.body, %while.cond.i11
  br label %while.body
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define void @__div0() local_unnamed_addr #0 align 64 {
entry:
  tail call void @error(ptr noundef nonnull @.str.2) #4
  unreachable
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define void @__stack_chk_fail() local_unnamed_addr #0 align 64 {
entry:
  tail call void @error(ptr noundef nonnull @.str.3) #4
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define void @decompress_kernel(i32 noundef %output_start, i32 noundef %free_mem_ptr_p, i32 noundef %free_mem_ptr_end_p, i32 noundef %arch_id) local_unnamed_addr #1 align 64 {
entry:
  %0 = inttoptr i32 %output_start to ptr
  store ptr %0, ptr @output_data, align 4
  store i32 %free_mem_ptr_p, ptr @free_mem_ptr, align 4
  store i32 %free_mem_ptr_end_p, ptr @free_mem_end_ptr, align 4
  store i32 %arch_id, ptr @__machine_arch_type, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i, %entry
  %ptr.addr.0.i = phi ptr [ @.str.4, %entry ], [ %incdec.ptr.i, %if.end.i ]
  %incdec.ptr.i = getelementptr i8, ptr %ptr.addr.0.i, i32 1
  %1 = load i8, ptr %ptr.addr.0.i, align 1
  %conv.i = zext i8 %1 to i32
  switch i8 %1, label %if.end.i [
    i8 0, label %putstr.exit
    i8 10, label %if.then.i
  ]

if.then.i:                                        ; preds = %while.cond.i
  tail call void @putc(i32 noundef 13) #3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.cond.i
  tail call void @putc(i32 noundef %conv.i) #3
  br label %while.cond.i

putstr.exit:                                      ; preds = %while.cond.i
  %2 = load ptr, ptr @output_data, align 4
  %call = tail call i32 @do_decompress(ptr noundef nonnull @input_data, i32 noundef sub (i32 ptrtoint (ptr @input_data_end to i32), i32 ptrtoint (ptr @input_data to i32)), ptr noundef %2, ptr noundef nonnull @error) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.i4, label %if.then

if.then:                                          ; preds = %putstr.exit
  tail call void @error(ptr noundef nonnull @.str.5) #4
  unreachable

while.cond.i4:                                    ; preds = %if.end.i6, %putstr.exit
  %ptr.addr.0.i1 = phi ptr [ %incdec.ptr.i2, %if.end.i6 ], [ @.str.6, %putstr.exit ]
  %incdec.ptr.i2 = getelementptr i8, ptr %ptr.addr.0.i1, i32 1
  %3 = load i8, ptr %ptr.addr.0.i1, align 1
  %conv.i3 = zext i8 %3 to i32
  switch i8 %3, label %if.end.i6 [
    i8 0, label %putstr.exit7
    i8 10, label %if.then.i5
  ]

if.then.i5:                                       ; preds = %while.cond.i4
  tail call void @putc(i32 noundef 13) #3
  br label %if.end.i6

if.end.i6:                                        ; preds = %if.then.i5, %while.cond.i4
  tail call void @putc(i32 noundef %conv.i3) #3
  br label %while.cond.i4

putstr.exit7:                                     ; preds = %while.cond.i4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @do_decompress(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define void @fortify_panic(ptr nocapture noundef readnone %name) local_unnamed_addr #0 align 64 {
entry:
  tail call void @error(ptr noundef nonnull @.str.7) #4
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare void @putc(i32 noundef) local_unnamed_addr #2

attributes #0 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin noreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 1}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
