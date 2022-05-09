; ModuleID = '/llk/IR_all_yes/lib/test_sort.c_pt.bc'
source_filename = "../lib/test_sort.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.kunit_ptr_not_err_assert = type { %struct.kunit_assert, ptr, ptr }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }

@__UNIQUE_ID_array174 = internal global [2 x ptr] [ptr @sort_test_suite, ptr null], align 4
@__UNIQUE_ID_suites175 = internal global ptr @__UNIQUE_ID_array174, section ".kunit_test_suites", align 4
@__UNIQUE_ID_file176 = internal constant [29 x i8] c"test_sort.file=lib/test_sort\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [22 x i8] c"test_sort.license=GPL\00", section ".modinfo", align 1
@sort_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"lib_sort\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @sort_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@sort_test_cases = internal global { [2 x %struct.kunit_case], [56 x i8] } { [2 x %struct.kunit_case] [%struct.kunit_case { ptr @test_sort, ptr @.str, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"test_sort\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lib/test_sort.c\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"a\00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"<=\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"a[i]\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"a[i + 1]\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [16 x i8] c"sort_test_suite\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 41, i32 27 }
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"sort_test_cases\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 36, i32 26 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 37, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 23, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [19 x i8] c"../lib/test_sort.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 33, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_license177, ptr @__UNIQUE_ID_suites175, ptr @sort_test_suite, ptr @sort_test_cases, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sort_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sort_test_cases to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_sort(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion14 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1000, i32 noundef 4, i32 noundef 3264) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #6
  %0 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %2 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 23, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.1, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %4 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %7 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.2, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call, null
  %cmp.i = icmp ule ptr %call, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.054 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %r.053 = phi i32 [ 1, %entry ], [ %rem, %for.body.for.body_crit_edge ]
  %mul = mul i32 %r.053, 725861
  %rem = srem i32 %mul, 6599
  %arrayidx = getelementptr i32, ptr %call, i32 %i.054
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %rem, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @sort(ptr noundef %call, i32 noundef 1000, i32 noundef 4, ptr noundef nonnull @cmpint, ptr noundef null) #6
  %type17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 1
  %line18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 2
  %file19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 3
  %message20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4
  %va22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4, i32 1
  %format23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 5
  %10 = getelementptr inbounds i8, ptr %__assertion14, i32 32
  br label %do.body10

do.body10:                                        ; preds = %do.body10.do.body10_crit_edge, %for.end
  %i.155 = phi i32 [ 0, %for.end ], [ %add, %do.body10.do.body10_crit_edge ]
  %arrayidx11 = getelementptr i32, ptr %call, i32 %i.155
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx11, align 4
  %add = add nuw nsw i32 %i.155, 1
  %arrayidx12 = getelementptr i32, ptr %call, i32 %add
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx12, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion14) #6
  %15 = call ptr @memset(ptr %10, i32 255, i32 24)
  %16 = ptrtoint ptr %__assertion14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %test, ptr %__assertion14, align 8
  %17 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %type17, align 4
  %18 = ptrtoint ptr %line18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 33, ptr %line18, align 8
  %19 = ptrtoint ptr %file19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.1, ptr %file19, align 4
  %20 = ptrtoint ptr %message20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %message20, align 8
  %21 = ptrtoint ptr %va22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %va22, align 4
  %22 = ptrtoint ptr %format23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @kunit_binary_assert_format, ptr %format23, align 8
  %23 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.3, ptr %operation, align 4
  %24 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.4, ptr %left_text, align 8
  %conv = sext i32 %12 to i64
  %25 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv, ptr %left_value, align 8
  %26 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.5, ptr %right_text, align 8
  %conv24 = sext i32 %14 to i64
  %27 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv24, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp26 = icmp sle i32 %12, %14
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion14, i1 noundef zeroext %cmp26, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion14) #6
  %exitcond56.not = icmp eq i32 %add, 999
  br i1 %exitcond56.not, label %for.end34, label %do.body10.do.body10_crit_edge

do.body10.do.body10_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body10

for.end34:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kunit_kmalloc_array(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_ptr_not_err_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmpint(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b, align 4
  %sub = sub i32 %1, %3
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !15, !17, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__UNIQUE_ID_suites175, !1, !"__UNIQUE_ID_suites175", i1 false, i1 false}
!1 = !{!"../lib/test_sort.c", i32 46, i32 1}
!2 = !{ptr @__UNIQUE_ID_file176, !3, !"__UNIQUE_ID_file176", i1 false, i1 false}
!3 = !{!"../lib/test_sort.c", i32 48, i32 1}
!4 = !{ptr @__UNIQUE_ID_license177, !3, !"__UNIQUE_ID_license177", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_array174, !1, !"__UNIQUE_ID_array174", i1 false, i1 false}
!6 = !{ptr @sort_test_suite, !7, !"sort_test_suite", i1 false, i1 false}
!7 = !{!"../lib/test_sort.c", i32 41, i32 27}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/test_sort.c", i32 37, i32 2}
!10 = !{ptr @sort_test_cases, !11, !"sort_test_cases", i1 false, i1 false}
!11 = !{!"../lib/test_sort.c", i32 36, i32 26}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/test_sort.c", i32 23, i32 2}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../lib/test_sort.c", i32 33, i32 3}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
