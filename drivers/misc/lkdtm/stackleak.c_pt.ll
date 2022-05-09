; ModuleID = '/llk/IR_all_yes/drivers/misc/lkdtm/stackleak.c_pt.bc'
source_filename = "../drivers/misc/lkdtm/stackleak.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@lkdtm_STACKLEAK_ERASING._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 37, ptr null, ptr null }, align 1
@.str = private unnamed_addr constant [52 x i8] c"\013lkdtm: FAIL: not enough stack space for the test\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"lkdtm_STACKLEAK_ERASING\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"drivers/misc/lkdtm/stackleak.c\00", align 1
@lkdtm_STACKLEAK_ERASING._entry_ptr = internal global ptr @lkdtm_STACKLEAK_ERASING._entry, section ".printk_index", align 4
@lkdtm_STACKLEAK_ERASING._entry.3 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 43, ptr null, ptr null }, align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"\016lkdtm: checking unused part of the thread stack (%lu bytes)...\0A\00", align 1
@lkdtm_STACKLEAK_ERASING._entry_ptr.5 = internal global ptr @lkdtm_STACKLEAK_ERASING._entry.3, section ".printk_index", align 4
@lkdtm_STACKLEAK_ERASING._entry.6 = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 58, ptr null, ptr null }, align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"\013lkdtm: FAIL: the erased part is not found (checked %lu bytes)\0A\00", align 1
@lkdtm_STACKLEAK_ERASING._entry_ptr.8 = internal global ptr @lkdtm_STACKLEAK_ERASING._entry.6, section ".printk_index", align 4
@lkdtm_STACKLEAK_ERASING._entry.9 = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 64, ptr null, ptr null }, align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"\016lkdtm: the erased part begins after %lu not poisoned bytes\0A\00", align 1
@lkdtm_STACKLEAK_ERASING._entry_ptr.11 = internal global ptr @lkdtm_STACKLEAK_ERASING._entry.9, section ".printk_index", align 4
@lkdtm_STACKLEAK_ERASING._entry.12 = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 70, ptr null, ptr null }, align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"\013lkdtm: FAIL: bad value number %lu in the erased part: 0x%lx\0A\00", align 1
@lkdtm_STACKLEAK_ERASING._entry_ptr.14 = internal global ptr @lkdtm_STACKLEAK_ERASING._entry.12, section ".printk_index", align 4
@lkdtm_STACKLEAK_ERASING._entry.15 = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 77, ptr null, ptr null }, align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"\013lkdtm: FAIL: the thread stack is NOT properly erased!\0A\00", align 1
@lkdtm_STACKLEAK_ERASING._entry_ptr.17 = internal global ptr @lkdtm_STACKLEAK_ERASING._entry.15, section ".printk_index", align 4
@lkdtm_STACKLEAK_ERASING._entry.18 = internal constant %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 78, ptr null, ptr null }, align 1
@.str.19 = private unnamed_addr constant [101 x i8] c"\014lkdtm: This is probably expected, since this %s was built *without* CONFIG_GCC_PLUGIN_STACKLEAK=y\0A\00", align 1
@lkdtm_STACKLEAK_ERASING._entry_ptr.20 = internal global ptr @lkdtm_STACKLEAK_ERASING._entry.18, section ".printk_index", align 4
@lkdtm_kernel_info = external dso_local local_unnamed_addr global ptr, align 4
@lkdtm_STACKLEAK_ERASING._entry.21 = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 80, ptr null, ptr null }, align 1
@.str.22 = private unnamed_addr constant [62 x i8] c"\016lkdtm: OK: the rest of the thread stack is properly erased\0A\00", align 1
@lkdtm_STACKLEAK_ERASING._entry_ptr.23 = internal global ptr @lkdtm_STACKLEAK_ERASING._entry.21, section ".printk_index", align 4
@llvm.compiler.used = appending global [16 x ptr] [ptr @lkdtm_STACKLEAK_ERASING._entry, ptr @lkdtm_STACKLEAK_ERASING._entry.12, ptr @lkdtm_STACKLEAK_ERASING._entry.15, ptr @lkdtm_STACKLEAK_ERASING._entry.18, ptr @lkdtm_STACKLEAK_ERASING._entry.21, ptr @lkdtm_STACKLEAK_ERASING._entry.3, ptr @lkdtm_STACKLEAK_ERASING._entry.6, ptr @lkdtm_STACKLEAK_ERASING._entry.9, ptr @lkdtm_STACKLEAK_ERASING._entry_ptr, ptr @lkdtm_STACKLEAK_ERASING._entry_ptr.11, ptr @lkdtm_STACKLEAK_ERASING._entry_ptr.14, ptr @lkdtm_STACKLEAK_ERASING._entry_ptr.17, ptr @lkdtm_STACKLEAK_ERASING._entry_ptr.20, ptr @lkdtm_STACKLEAK_ERASING._entry_ptr.23, ptr @lkdtm_STACKLEAK_ERASING._entry_ptr.5, ptr @lkdtm_STACKLEAK_ERASING._entry_ptr.8], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lkdtm_STACKLEAK_ERASING() local_unnamed_addr #0 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #3
  store i32 -1, ptr %i, align 4, !annotation !9
  %0 = ptrtoint ptr %i to i32
  %and1 = lshr exact i32 %0, 2
  %div78 = and i32 %and1, 4095
  %incdec.ptr = getelementptr i32, ptr %i, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div78)
  %cmp = icmp ugt i32 %div78, 1
  br i1 %cmp, label %for.body.preheader, label %do.end

for.body.preheader:                               ; preds = %entry
  %dec = add nsw i32 %div78, -1
  %mul = shl nuw nsw i32 %dec, 2
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %mul) #5
  store i32 0, ptr %i, align 4
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #5
  br label %do.end50

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %found.082 = phi i32 [ %found.1, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %storemerge81 = phi i32 [ %inc13, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %idx.neg = sub i32 0, %storemerge81
  %add.ptr = getelementptr i32, ptr %incdec.ptr, i32 %idx.neg
  %1 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -48879, i32 %1)
  %cmp9 = icmp eq i32 %1, -48879
  %inc = add nuw nsw i32 %found.082, 1
  %found.1 = select i1 %cmp9, i32 %inc, i32 0
  %inc13 = add nuw i32 %storemerge81, 1
  store i32 %inc13, ptr %i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc13, i32 %dec)
  %cmp7 = icmp ult i32 %inc13, %dec
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %found.1)
  %cmp8 = icmp ult i32 %found.1, 33
  %2 = select i1 %cmp7, i1 %cmp8, i1 false
  br i1 %2, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %cmp8, label %do.end18, label %do.end25

do.end18:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  %mul20 = shl i32 %inc13, 2
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %mul20) #5
  br label %do.end50

do.end25:                                         ; preds = %for.end
  %sub = sub i32 %inc13, %found.1
  %mul27 = shl i32 %sub, 2
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %mul27) #5
  %3 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %dec)
  %cmp3085 = icmp ult i32 %3, %dec
  br i1 %cmp3085, label %do.end25.for.body31_crit_edge, label %do.end25.do.end61_crit_edge

do.end25.do.end61_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end61

do.end25.for.body31_crit_edge:                    ; preds = %do.end25
  br label %for.body31

for.body31:                                       ; preds = %for.inc44.for.body31_crit_edge, %do.end25.for.body31_crit_edge
  %4 = phi i32 [ %inc45, %for.inc44.for.body31_crit_edge ], [ %3, %do.end25.for.body31_crit_edge ]
  %test_failed.086 = phi i8 [ %test_failed.1, %for.inc44.for.body31_crit_edge ], [ 0, %do.end25.for.body31_crit_edge ]
  %idx.neg32 = sub i32 0, %4
  %add.ptr33 = getelementptr i32, ptr %incdec.ptr, i32 %idx.neg32
  %5 = load i32, ptr %add.ptr33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -48879, i32 %5)
  %cmp34.not = icmp eq i32 %5, -48879
  br i1 %cmp34.not, label %for.body31.for.inc44_crit_edge, label %do.end38

for.body31.for.inc44_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc44

do.end38:                                         ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #4
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %4, i32 noundef %5) #5
  %.pre = load i32, ptr %i, align 4
  br label %for.inc44

for.inc44:                                        ; preds = %do.end38, %for.body31.for.inc44_crit_edge
  %6 = phi i32 [ %.pre, %do.end38 ], [ %4, %for.body31.for.inc44_crit_edge ]
  %test_failed.1 = phi i8 [ 1, %do.end38 ], [ %test_failed.086, %for.body31.for.inc44_crit_edge ]
  %inc45 = add i32 %6, 1
  store i32 %inc45, ptr %i, align 4
  %cmp30 = icmp ult i32 %inc45, %dec
  br i1 %cmp30, label %for.inc44.for.body31_crit_edge, label %end

for.inc44.for.body31_crit_edge:                   ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body31

end:                                              ; preds = %for.inc44
  %7 = and i8 %test_failed.1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %extract.t.not = icmp eq i8 %7, 0
  br i1 %extract.t.not, label %end.do.end61_crit_edge, label %end.do.end50_crit_edge

end.do.end50_crit_edge:                           ; preds = %end
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end50

end.do.end61_crit_edge:                           ; preds = %end
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end61

do.end50:                                         ; preds = %end.do.end50_crit_edge, %do.end18, %do.end
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #5
  %8 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %8) #5
  br label %if.end64

do.end61:                                         ; preds = %end.do.end61_crit_edge, %do.end25.do.end61_crit_edge
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #5
  br label %if.end64

if.end64:                                         ; preds = %do.end61, %do.end50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nomerge }
attributes #5 = { cold nobuiltin nounwind "no-builtins" }

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
!9 = !{!"auto-init"}
