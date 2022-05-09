; ModuleID = '/llk/IR_all_yes/arch/arm/nwfpe/double_cpdo.c_pt.bc'
source_filename = "../arch/arm/nwfpe/double_cpdo.c"
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

@dyadic_double = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @float64_add, ptr @float64_mul, ptr @float64_sub, ptr @float64_rsf, ptr @float64_div, ptr @float64_rdv, ptr null, ptr null, ptr @float64_rem, ptr @float64_mul, ptr @float64_div, ptr @float64_rdv, ptr null, ptr null, ptr null, ptr null], [32 x i8] zeroinitializer }, align 32
@monadic_double = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @float64_mvf, ptr @float64_mnf, ptr @float64_abs, ptr @float64_round_to_int, ptr @float64_sqrt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @float64_round_to_int, ptr @float64_mvf], [32 x i8] zeroinitializer }, align 32
@float64Constant = external dso_local local_unnamed_addr constant [0 x i64], align 8
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.2 = private unnamed_addr constant [14 x i8] c"dyadic_double\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 41, i32 24 }
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"monadic_double\00", align 1
@___asan_gen_.6 = private constant [32 x i8] c"../arch/arm/nwfpe/double_cpdo.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 89, i32 24 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @dyadic_double, ptr @monadic_double], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dyadic_double to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @monadic_double to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @DoubleCPDO(ptr noundef %roundData, i32 noundef %opcode, ptr nocapture noundef writeonly %rFd) local_unnamed_addr #0 align 64 {
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
  %arrayidx.i = getelementptr [0 x i64], ptr @float64Constant, i32 0, i32 %and
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx.i, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %fType = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 26
  %arrayidx = getelementptr [8 x i8], ptr %fType, i32 0, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %if.else.cleanup43_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb5
  ]

if.else.cleanup43_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup43

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx3 = getelementptr [8 x %union.tagFPREG], ptr %fpstate, i32 0, i32 %and
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3, align 4
  %call4 = tail call i64 @float32_to_float64(i32 noundef %8) #4
  br label %if.end

sw.bb5:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx7 = getelementptr [8 x %union.tagFPREG], ptr %fpstate, i32 0, i32 %and
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %arrayidx7, align 4
  br label %if.end

if.end:                                           ; preds = %sw.bb5, %sw.bb, %if.then
  %rFm.0 = phi i64 [ %3, %if.then ], [ %10, %sw.bb5 ], [ %call4, %sw.bb ]
  %and8 = lshr i32 %opcode, 20
  %shr = and i32 %and8, 15
  %and9 = and i32 %opcode, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp10.not = icmp eq i32 %and9, 0
  br i1 %cmp10.not, label %if.then12, label %if.else34

if.then12:                                        ; preds = %if.end
  %and13 = lshr i32 %opcode, 16
  %shr14 = and i32 %and13, 7
  %fType15 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 26
  %arrayidx16 = getelementptr [8 x i8], ptr %fType15, i32 0, i32 %shr14
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx16, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %12, label %if.then12.cleanup43_crit_edge [
    i8 1, label %sw.bb18
    i8 2, label %sw.bb22
  ]

if.then12.cleanup43_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup43

sw.bb18:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx20 = getelementptr [8 x %union.tagFPREG], ptr %fpstate, i32 0, i32 %shr14
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx20, align 4
  %call21 = tail call i64 @float32_to_float64(i32 noundef %15) #4
  br label %sw.epilog26

sw.bb22:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx24 = getelementptr [8 x %union.tagFPREG], ptr %fpstate, i32 0, i32 %shr14
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %arrayidx24, align 4
  br label %sw.epilog26

sw.epilog26:                                      ; preds = %sw.bb22, %sw.bb18
  %rFn.0 = phi i64 [ %17, %sw.bb22 ], [ %call21, %sw.bb18 ]
  %18 = lshr i32 61632, %shr
  %19 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.not = icmp eq i32 %19, 0
  br i1 %tobool.not.not, label %if.then28, label %sw.epilog26.cleanup43_crit_edge

sw.epilog26.cleanup43_crit_edge:                  ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup43

if.then28:                                        ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx27 = getelementptr [16 x ptr], ptr @dyadic_double, i32 0, i32 %shr
  %20 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx27, align 4
  %call30 = tail call i64 %21(ptr noundef %roundData, i64 noundef %rFn.0, i64 noundef %rFm.0) #4
  br label %cleanup43.sink.split

if.else34:                                        ; preds = %if.end
  %22 = add nsw i32 %shr, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %22)
  %tobool36.not = icmp ult i32 %22, 9
  br i1 %tobool36.not, label %if.else34.cleanup43_crit_edge, label %if.then37

if.else34.cleanup43_crit_edge:                    ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup43

if.then37:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx35 = getelementptr [16 x ptr], ptr @monadic_double, i32 0, i32 %shr
  %23 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx35, align 4
  %call39 = tail call i64 %24(ptr noundef %roundData, i64 noundef %rFm.0) #4
  br label %cleanup43.sink.split

cleanup43.sink.split:                             ; preds = %if.then37, %if.then28
  %call39.sink = phi i64 [ %call39, %if.then37 ], [ %call30, %if.then28 ]
  %25 = ptrtoint ptr %rFd to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %call39.sink, ptr %rFd, align 4
  br label %cleanup43

cleanup43:                                        ; preds = %cleanup43.sink.split, %if.else34.cleanup43_crit_edge, %sw.epilog26.cleanup43_crit_edge, %if.then12.cleanup43_crit_edge, %if.else.cleanup43_crit_edge
  %retval.1 = phi i32 [ 0, %if.else.cleanup43_crit_edge ], [ 0, %sw.epilog26.cleanup43_crit_edge ], [ 0, %if.then12.cleanup43_crit_edge ], [ 0, %if.else34.cleanup43_crit_edge ], [ 1, %cleanup43.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @float32_to_float64(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @float64_add(ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @float64_mul(ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @float64_sub(ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @float64_rsf(ptr noundef %roundData, i64 noundef %rFn, i64 noundef %rFm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @float64_sub(ptr noundef %roundData, i64 noundef %rFm, i64 noundef %rFn) #4
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @float64_div(ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @float64_rdv(ptr noundef %roundData, i64 noundef %rFn, i64 noundef %rFm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @float64_div(ptr noundef %roundData, i64 noundef %rFm, i64 noundef %rFn) #4
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @float64_rem(ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @float64_mvf(ptr nocapture noundef readnone %roundData, i64 noundef returned %rFm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i64 %rFm
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @float64_mnf(ptr nocapture noundef readnone %roundData, i64 noundef %rFm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %u.sroa.0.0.extract.shift = lshr i64 %rFm, 32
  %u.sroa.0.0.extract.trunc = trunc i64 %u.sroa.0.0.extract.shift to i32
  %xor = xor i32 %u.sroa.0.0.extract.trunc, -2147483648
  %u.sroa.7.0.insert.ext = and i64 %rFm, 4294967295
  %u.sroa.0.0.insert.ext = zext i32 %xor to i64
  %u.sroa.0.0.insert.shift = shl nuw i64 %u.sroa.0.0.insert.ext, 32
  %u.sroa.0.0.insert.insert = or i64 %u.sroa.0.0.insert.shift, %u.sroa.7.0.insert.ext
  ret i64 %u.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @float64_abs(ptr nocapture noundef readnone %roundData, i64 noundef %rFm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %u.sroa.0.0.insert.insert = and i64 %rFm, 9223372036854775807
  ret i64 %u.sroa.0.0.insert.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @float64_round_to_int(ptr noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @float64_sqrt(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind readonly }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.named.register.sp = !{!0}
!llvm.asan.globals = !{!1, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{!"sp"}
!1 = !{ptr @dyadic_double, !2, !"dyadic_double", i1 false, i1 false}
!2 = !{!"../arch/arm/nwfpe/double_cpdo.c", i32 41, i32 24}
!3 = !{ptr @monadic_double, !4, !"monadic_double", i1 false, i1 false}
!4 = !{!"../arch/arm/nwfpe/double_cpdo.c", i32 89, i32 24}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
