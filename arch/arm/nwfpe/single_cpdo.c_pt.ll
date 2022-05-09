; ModuleID = '/llk/IR_all_yes/arch/arm/nwfpe/single_cpdo.c_pt.bc'
source_filename = "../arch/arm/nwfpe/single_cpdo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%union.tagFPREG = type <{ i64, [4 x i8] }>

@dyadic_single = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @float32_add, ptr @float32_mul, ptr @float32_sub, ptr @float32_rsf, ptr @float32_div, ptr @float32_rdv, ptr null, ptr null, ptr @float32_rem, ptr @float32_mul, ptr @float32_div, ptr @float32_rdv, ptr null, ptr null, ptr null, ptr null], [32 x i8] zeroinitializer }, align 32
@monadic_single = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @float32_mvf, ptr @float32_mnf, ptr @float32_abs, ptr @float32_round_to_int, ptr @float32_sqrt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @float32_round_to_int, ptr @float32_mvf], [32 x i8] zeroinitializer }, align 32
@float32Constant = external dso_local local_unnamed_addr constant [0 x i32], align 4
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"dyadic_single\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 37, i32 24 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"monadic_single\00", align 1
@___asan_gen_.5 = private constant [32 x i8] c"../arch/arm/nwfpe/single_cpdo.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 66, i32 24 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @dyadic_single, ptr @monadic_single], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dyadic_single to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @monadic_single to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @SingleCPDO(ptr noundef %roundData, i32 noundef %opcode, ptr nocapture noundef writeonly %rFd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %fpstate = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9
  %and = and i32 %opcode, 7
  %and1 = and i32 %opcode, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp.not = icmp eq i32 %and1, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr [0 x i32], ptr @float32Constant, i32 0, i32 %and
  br label %if.end8

if.else:                                          ; preds = %entry
  %fType = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 26
  %arrayidx = getelementptr [8 x i8], ptr %fType, i32 0, i32 %and
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp3 = icmp eq i8 %3, 1
  br i1 %cmp3, label %if.then5, label %if.else.cleanup39_crit_edge

if.else.cleanup39_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup39

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx6 = getelementptr [8 x %union.tagFPREG], ptr %fpstate, i32 0, i32 %and
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then
  %rFm.0.in = phi ptr [ %arrayidx.i, %if.then ], [ %arrayidx6, %if.then5 ]
  %4 = ptrtoint ptr %rFm.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %rFm.0 = load i32, ptr %rFm.0.in, align 4
  %and9 = lshr i32 %opcode, 20
  %shr = and i32 %and9, 15
  %and10 = and i32 %opcode, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11.not = icmp eq i32 %and10, 0
  br i1 %cmp11.not, label %if.then13, label %if.else30

if.then13:                                        ; preds = %if.end8
  %and14 = lshr i32 %opcode, 16
  %shr15 = and i32 %and14, 7
  %fType16 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 26
  %arrayidx17 = getelementptr [8 x i8], ptr %fType16, i32 0, i32 %shr15
  %5 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp19 = icmp eq i8 %6, 1
  br i1 %cmp19, label %land.lhs.true, label %if.then13.cleanup39_crit_edge

if.then13.cleanup39_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup39

land.lhs.true:                                    ; preds = %if.then13
  %7 = lshr i32 61632, %shr
  %8 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.not = icmp eq i32 %8, 0
  br i1 %tobool.not.not, label %if.then22, label %land.lhs.true.cleanup39_crit_edge

land.lhs.true.cleanup39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup39

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx21 = getelementptr [16 x ptr], ptr @dyadic_single, i32 0, i32 %shr
  %9 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx21, align 4
  %arrayidx24 = getelementptr [8 x %union.tagFPREG], ptr %fpstate, i32 0, i32 %shr15
  %11 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx24, align 4
  %call26 = tail call i32 %10(ptr noundef %roundData, i32 noundef %12, i32 noundef %rFm.0) #4
  br label %cleanup39.sink.split

if.else30:                                        ; preds = %if.end8
  %13 = add nsw i32 %shr, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %13)
  %tobool32.not = icmp ult i32 %13, 9
  br i1 %tobool32.not, label %if.else30.cleanup39_crit_edge, label %if.then33

if.else30.cleanup39_crit_edge:                    ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup39

if.then33:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx31 = getelementptr [16 x ptr], ptr @monadic_single, i32 0, i32 %shr
  %14 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx31, align 4
  %call35 = tail call i32 %15(ptr noundef %roundData, i32 noundef %rFm.0) #4
  br label %cleanup39.sink.split

cleanup39.sink.split:                             ; preds = %if.then33, %if.then22
  %call35.sink = phi i32 [ %call35, %if.then33 ], [ %call26, %if.then22 ]
  %16 = ptrtoint ptr %rFd to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call35.sink, ptr %rFd, align 4
  br label %cleanup39

cleanup39:                                        ; preds = %cleanup39.sink.split, %if.else30.cleanup39_crit_edge, %land.lhs.true.cleanup39_crit_edge, %if.then13.cleanup39_crit_edge, %if.else.cleanup39_crit_edge
  %retval.1 = phi i32 [ 0, %if.else.cleanup39_crit_edge ], [ 0, %if.then13.cleanup39_crit_edge ], [ 0, %land.lhs.true.cleanup39_crit_edge ], [ 0, %if.else30.cleanup39_crit_edge ], [ 1, %cleanup39.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @float32_add(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @float32_mul(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @float32_sub(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @float32_rsf(ptr noundef %roundData, i32 noundef %rFn, i32 noundef %rFm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @float32_sub(ptr noundef %roundData, i32 noundef %rFm, i32 noundef %rFn) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @float32_div(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @float32_rdv(ptr noundef %roundData, i32 noundef %rFn, i32 noundef %rFm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @float32_div(ptr noundef %roundData, i32 noundef %rFm, i32 noundef %rFn) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @float32_rem(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @float32_mvf(ptr nocapture noundef readnone %roundData, i32 noundef returned %rFm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %rFm
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @float32_mnf(ptr nocapture noundef readnone %roundData, i32 noundef %rFm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %xor = xor i32 %rFm, -2147483648
  ret i32 %xor
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @float32_abs(ptr nocapture noundef readnone %roundData, i32 noundef %rFm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %rFm, 2147483647
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @float32_round_to_int(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @float32_sqrt(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind readonly }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.named.register.sp = !{!0}
!llvm.asan.globals = !{!1, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{!"sp"}
!1 = !{ptr @dyadic_single, !2, !"dyadic_single", i1 false, i1 false}
!2 = !{!"../arch/arm/nwfpe/single_cpdo.c", i32 37, i32 24}
!3 = !{ptr @monadic_single, !4, !"monadic_single", i1 false, i1 false}
!4 = !{!"../arch/arm/nwfpe/single_cpdo.c", i32 66, i32 24}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
