; ModuleID = '/llk/IR_all_yes/kernel/module_signature.c_pt.bc'
source_filename = "../kernel/module_signature.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.module_signature = type { i8, i8, i8, i8, i8, [3 x i8], i32 }

@mod_check_sig._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: not signed with expected PKCS#7 message\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mod_check_sig\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kernel/module_signature.c\00", [38 x i8] zeroinitializer }, align 32
@mod_check_sig._entry_ptr = internal global ptr @mod_check_sig._entry, section ".printk_index", align 4
@mod_check_sig._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s: PKCS#7 signature info has unexpected non-zero params\0A\00", [36 x i8] zeroinitializer }, align 32
@mod_check_sig._entry_ptr.5 = internal global ptr @mod_check_sig._entry.3, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 28, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [29 x i8] c"../kernel/module_signature.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 40, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @mod_check_sig._entry, ptr @mod_check_sig._entry.3, ptr @mod_check_sig._entry_ptr, ptr @mod_check_sig._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mod_check_sig._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mod_check_sig._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_check_sig(ptr nocapture noundef readonly %ms, i32 noundef %file_len, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %sig_len = getelementptr inbounds %struct.module_signature, ptr %ms, i32 0, i32 6
  %0 = ptrtoint ptr %sig_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sig_len, align 4
  %sub = add i32 %file_len, -12
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub)
  %cmp.not = icmp ult i32 %1, %sub
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %entry
  %id_type = getelementptr inbounds %struct.module_signature, ptr %ms, i32 0, i32 2
  %2 = ptrtoint ptr %id_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp1.not = icmp eq i8 %3, 2
  br i1 %cmp1.not, label %if.end4, label %if.end.return.sink.split_crit_edge

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %return.sink.split

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %ms to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ms, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp6.not = icmp eq i8 %5, 0
  br i1 %cmp6.not, label %lor.lhs.false, label %if.end4.return.sink.split_crit_edge

if.end4.return.sink.split_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  br label %return.sink.split

lor.lhs.false:                                    ; preds = %if.end4
  %hash = getelementptr inbounds %struct.module_signature, ptr %ms, i32 0, i32 1
  %6 = ptrtoint ptr %hash to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hash, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp9.not = icmp eq i8 %7, 0
  br i1 %cmp9.not, label %lor.lhs.false11, label %lor.lhs.false.return.sink.split_crit_edge

lor.lhs.false.return.sink.split_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %return.sink.split

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %signer_len = getelementptr inbounds %struct.module_signature, ptr %ms, i32 0, i32 3
  %8 = ptrtoint ptr %signer_len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %signer_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp13.not = icmp eq i8 %9, 0
  br i1 %cmp13.not, label %lor.lhs.false15, label %lor.lhs.false11.return.sink.split_crit_edge

lor.lhs.false11.return.sink.split_crit_edge:      ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #4
  br label %return.sink.split

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %key_id_len = getelementptr inbounds %struct.module_signature, ptr %ms, i32 0, i32 4
  %10 = ptrtoint ptr %key_id_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %key_id_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp17.not = icmp eq i8 %11, 0
  br i1 %cmp17.not, label %lor.lhs.false19, label %lor.lhs.false15.return.sink.split_crit_edge

lor.lhs.false15.return.sink.split_crit_edge:      ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #4
  br label %return.sink.split

lor.lhs.false19:                                  ; preds = %lor.lhs.false15
  %__pad = getelementptr inbounds %struct.module_signature, ptr %ms, i32 0, i32 5
  %12 = ptrtoint ptr %__pad to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %__pad, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp21.not = icmp eq i8 %13, 0
  br i1 %cmp21.not, label %lor.lhs.false23, label %lor.lhs.false19.return.sink.split_crit_edge

lor.lhs.false19.return.sink.split_crit_edge:      ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #4
  br label %return.sink.split

lor.lhs.false23:                                  ; preds = %lor.lhs.false19
  %arrayidx25 = getelementptr %struct.module_signature, ptr %ms, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp27.not = icmp eq i8 %15, 0
  br i1 %cmp27.not, label %lor.lhs.false29, label %lor.lhs.false23.return.sink.split_crit_edge

lor.lhs.false23.return.sink.split_crit_edge:      ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #4
  br label %return.sink.split

lor.lhs.false29:                                  ; preds = %lor.lhs.false23
  %arrayidx31 = getelementptr %struct.module_signature, ptr %ms, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp33.not = icmp eq i8 %17, 0
  br i1 %cmp33.not, label %lor.lhs.false29.return_crit_edge, label %lor.lhs.false29.return.sink.split_crit_edge

lor.lhs.false29.return.sink.split_crit_edge:      ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #4
  br label %return.sink.split

lor.lhs.false29.return_crit_edge:                 ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

return.sink.split:                                ; preds = %lor.lhs.false29.return.sink.split_crit_edge, %lor.lhs.false23.return.sink.split_crit_edge, %lor.lhs.false19.return.sink.split_crit_edge, %lor.lhs.false15.return.sink.split_crit_edge, %lor.lhs.false11.return.sink.split_crit_edge, %lor.lhs.false.return.sink.split_crit_edge, %if.end4.return.sink.split_crit_edge, %if.end.return.sink.split_crit_edge
  %.str.4.sink = phi ptr [ @.str, %if.end.return.sink.split_crit_edge ], [ @.str.4, %lor.lhs.false29.return.sink.split_crit_edge ], [ @.str.4, %lor.lhs.false23.return.sink.split_crit_edge ], [ @.str.4, %lor.lhs.false19.return.sink.split_crit_edge ], [ @.str.4, %lor.lhs.false15.return.sink.split_crit_edge ], [ @.str.4, %lor.lhs.false11.return.sink.split_crit_edge ], [ @.str.4, %lor.lhs.false.return.sink.split_crit_edge ], [ @.str.4, %if.end4.return.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -65, %if.end.return.sink.split_crit_edge ], [ -74, %lor.lhs.false29.return.sink.split_crit_edge ], [ -74, %lor.lhs.false23.return.sink.split_crit_edge ], [ -74, %lor.lhs.false19.return.sink.split_crit_edge ], [ -74, %lor.lhs.false15.return.sink.split_crit_edge ], [ -74, %lor.lhs.false11.return.sink.split_crit_edge ], [ -74, %lor.lhs.false.return.sink.split_crit_edge ], [ -74, %if.end4.return.sink.split_crit_edge ]
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink, ptr noundef %name) #5
  br label %return

return:                                           ; preds = %return.sink.split, %lor.lhs.false29.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -74, %entry.return_crit_edge ], [ 0, %lor.lhs.false29.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/module_signature.c", i32 28, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mod_check_sig._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mod_check_sig._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/module_signature.c", i32 40, i32 3}
!8 = !{ptr @mod_check_sig._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @mod_check_sig._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
