; ModuleID = '/llk/IR_all_yes/kernel/time/time_test.c_pt.bc'
source_filename = "../kernel/time/time_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }

@__UNIQUE_ID_array174 = internal global [2 x ptr] [ptr @time_test_suite, ptr null], align 4
@__UNIQUE_ID_suites175 = internal global ptr @__UNIQUE_ID_array174, section ".kunit_test_suites", align 4
@__UNIQUE_ID_file176 = internal constant [37 x i8] c"time_test.file=kernel/time/time_test\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [22 x i8] c"time_test.license=GPL\00", section ".modinfo", align 1
@time_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"time_test_cases\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @time_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@time_test_cases = internal global { [2 x %struct.kunit_case], [56 x i8] } { [2 x %struct.kunit_case] [%struct.kunit_case { ptr @time64_to_tm_test_date_range, ptr @.str, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"time64_to_tm_test_date_range\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kernel/time/time_test.c\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"year - 1900\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"result.tm_year\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%05ld/%02d/%02d (%2d) : %ld\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"month - 1\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"result.tm_mon\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mdday\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"result.tm_mday\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"yday\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"result.tm_yday\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 4, i64 6, i64 9, i64 11]
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"time_test_suite\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 93, i32 27 }
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"time_test_cases\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 88, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 89, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 79, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 80, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 81, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [27 x i8] c"../kernel/time/time_test.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 82, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_license177, ptr @__UNIQUE_ID_suites175, ptr @time_test_suite, ptr @time_test_cases, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @time_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @time_test_cases to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @time64_to_tm_test_date_range(ptr noundef %test) #0 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  %year = alloca i32, align 4
  %yday = alloca i32, align 4
  %result = alloca %struct.tm, align 4
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion15 = alloca %struct.kunit_binary_assert, align 8
  %__assertion43 = alloca %struct.kunit_binary_assert, align 8
  %__assertion71 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %year)
  %0 = ptrtoint ptr %year to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -78030, ptr %year, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %yday)
  %1 = ptrtoint ptr %yday to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %yday, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %result) #3
  %2 = getelementptr inbounds %struct.tm, ptr %result, i32 0, i32 3
  %3 = getelementptr inbounds %struct.tm, ptr %result, i32 0, i32 4
  %4 = getelementptr inbounds %struct.tm, ptr %result, i32 0, i32 5
  %5 = getelementptr inbounds %struct.tm, ptr %result, i32 0, i32 7
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %type18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 1
  %line19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 2
  %file20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 3
  %message21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4
  %va23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4, i32 1
  %format24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 5
  %operation25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 1
  %left_text26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 2
  %left_value27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 3
  %right_text29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 4
  %right_value30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 5
  %type46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 1
  %line47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 2
  %file48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 3
  %message49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 4
  %va51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 4, i32 1
  %format52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion43, i32 0, i32 5
  %operation53 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 1
  %left_text54 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 2
  %left_value55 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 3
  %right_text57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 4
  %right_value58 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion43, i32 0, i32 5
  %type74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 1
  %line75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 2
  %file76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 3
  %message77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4
  %va79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4, i32 1
  %format80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 5
  %operation81 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 1
  %left_text82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 2
  %left_value83 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 3
  %right_text85 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 4
  %right_value86 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 5
  %6 = call ptr @memset(ptr %result, i32 255, i32 32)
  %7 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %8 = getelementptr inbounds i8, ptr %__assertion15, i32 32
  %9 = getelementptr inbounds i8, ptr %__assertion43, i32 32
  %10 = getelementptr inbounds i8, ptr %__assertion71, i32 32
  br label %for.body

for.body:                                         ; preds = %advance_date.exit.for.body_crit_edge, %entry
  %secs.0139 = phi i64 [ -2524556160000, %entry ], [ %add, %advance_date.exit.for.body_crit_edge ]
  %mdday.0138 = phi i32 [ 1, %entry ], [ %mdday.1, %advance_date.exit.for.body_crit_edge ]
  %month.0137 = phi i32 [ 1, %entry ], [ %month.1, %advance_date.exit.for.body_crit_edge ]
  call void @time64_to_tm(i64 noundef %secs.0139, i32 noundef 0, ptr noundef nonnull %result) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #3
  %11 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %remainder.i, align 4, !annotation !36
  %call.i = call i64 @div_s64_rem(i64 noundef %secs.0139, i32 noundef 86400, ptr noundef nonnull %remainder.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #3
  %12 = ptrtoint ptr %year to i32
  call void @__asan_load4_noabort(i32 %12)
  %year.0.year.0. = load i32, ptr %year, align 4
  %sub1 = add i32 %year.0.year.0., -1900
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #3
  %15 = call ptr @memset(ptr %7, i32 255, i32 24)
  %16 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %test, ptr %__assertion, align 8
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %type, align 4
  %18 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 79, ptr %line, align 8
  %19 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.1, ptr %file, align 4
  %20 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %message, align 8
  %21 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %va, align 4
  %22 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %23 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.2, ptr %operation, align 4
  %24 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.3, ptr %left_text, align 8
  %conv = sext i32 %sub1 to i64
  %25 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv, ptr %left_value, align 8
  %26 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.4, ptr %right_text, align 8
  %conv4 = sext i32 %14 to i64
  %27 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv4, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1, i32 %14)
  %cmp6 = icmp eq i32 %sub1, %14
  %28 = ptrtoint ptr %yday to i32
  call void @__asan_load4_noabort(i32 %28)
  %yday.0.yday.0. = load i32, ptr %yday, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp6, ptr noundef nonnull @.str.5, i32 noundef %year.0.year.0., i32 noundef %month.0137, i32 noundef %mdday.0138, i32 noundef %yday.0.yday.0., i64 noundef %call.i) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #3
  %sub12 = add i32 %month.0137, -1
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion15) #3
  %31 = call ptr @memset(ptr %8, i32 255, i32 24)
  %32 = ptrtoint ptr %__assertion15 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %test, ptr %__assertion15, align 8
  %33 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %type18, align 4
  %34 = ptrtoint ptr %line19 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 80, ptr %line19, align 8
  %35 = ptrtoint ptr %file20 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.1, ptr %file20, align 4
  %36 = ptrtoint ptr %message21 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %message21, align 8
  %37 = ptrtoint ptr %va23 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %va23, align 4
  %38 = ptrtoint ptr %format24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @kunit_binary_assert_format, ptr %format24, align 8
  %39 = ptrtoint ptr %operation25 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.2, ptr %operation25, align 4
  %40 = ptrtoint ptr %left_text26 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.6, ptr %left_text26, align 8
  %conv28 = sext i32 %sub12 to i64
  %41 = ptrtoint ptr %left_value27 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv28, ptr %left_value27, align 8
  %42 = ptrtoint ptr %right_text29 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.7, ptr %right_text29, align 8
  %conv31 = sext i32 %30 to i64
  %43 = ptrtoint ptr %right_value30 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv31, ptr %right_value30, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub12, i32 %30)
  %cmp33 = icmp eq i32 %sub12, %30
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion15, i1 noundef zeroext %cmp33, ptr noundef nonnull @.str.5, i32 noundef %year.0.year.0., i32 noundef %month.0137, i32 noundef %mdday.0138, i32 noundef %yday.0.yday.0., i64 noundef %call.i) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion15) #3
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion43) #3
  %46 = call ptr @memset(ptr %9, i32 255, i32 24)
  %47 = ptrtoint ptr %__assertion43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %test, ptr %__assertion43, align 8
  %48 = ptrtoint ptr %type46 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %type46, align 4
  %49 = ptrtoint ptr %line47 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 81, ptr %line47, align 8
  %50 = ptrtoint ptr %file48 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.1, ptr %file48, align 4
  %51 = ptrtoint ptr %message49 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %message49, align 8
  %52 = ptrtoint ptr %va51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %va51, align 4
  %53 = ptrtoint ptr %format52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @kunit_binary_assert_format, ptr %format52, align 8
  %54 = ptrtoint ptr %operation53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.2, ptr %operation53, align 4
  %55 = ptrtoint ptr %left_text54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.8, ptr %left_text54, align 8
  %conv56 = sext i32 %mdday.0138 to i64
  %56 = ptrtoint ptr %left_value55 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv56, ptr %left_value55, align 8
  %57 = ptrtoint ptr %right_text57 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.9, ptr %right_text57, align 8
  %conv59 = sext i32 %45 to i64
  %58 = ptrtoint ptr %right_value58 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %conv59, ptr %right_value58, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mdday.0138, i32 %45)
  %cmp61 = icmp eq i32 %mdday.0138, %45
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion43, i1 noundef zeroext %cmp61, ptr noundef nonnull @.str.5, i32 noundef %year.0.year.0., i32 noundef %month.0137, i32 noundef %mdday.0138, i32 noundef %yday.0.yday.0., i64 noundef %call.i) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion43) #3
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion71) #3
  %61 = call ptr @memset(ptr %10, i32 255, i32 24)
  %62 = ptrtoint ptr %__assertion71 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %test, ptr %__assertion71, align 8
  %63 = ptrtoint ptr %type74 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %type74, align 4
  %64 = ptrtoint ptr %line75 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 82, ptr %line75, align 8
  %65 = ptrtoint ptr %file76 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.1, ptr %file76, align 4
  %66 = ptrtoint ptr %message77 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %message77, align 8
  %67 = ptrtoint ptr %va79 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %va79, align 4
  %68 = ptrtoint ptr %format80 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @kunit_binary_assert_format, ptr %format80, align 8
  %69 = ptrtoint ptr %operation81 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.2, ptr %operation81, align 4
  %70 = ptrtoint ptr %left_text82 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.10, ptr %left_text82, align 8
  %conv84 = sext i32 %yday.0.yday.0. to i64
  %71 = ptrtoint ptr %left_value83 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %conv84, ptr %left_value83, align 8
  %72 = ptrtoint ptr %right_text85 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.11, ptr %right_text85, align 8
  %conv87 = sext i32 %60 to i64
  %73 = ptrtoint ptr %right_value86 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv87, ptr %right_value86, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %yday.0.yday.0., i32 %60)
  %cmp89 = icmp eq i32 %yday.0.yday.0., %60
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion71, i1 noundef zeroext %cmp89, ptr noundef nonnull @.str.5, i32 noundef %year.0.year.0., i32 noundef %month.0137, i32 noundef %mdday.0138, i32 noundef %yday.0.yday.0., i64 noundef %call.i) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion71) #3
  %74 = zext i32 %month.0137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values)
  switch i32 %month.0137, label %if.end12.i.i [
    i32 2, label %if.then.i.i
    i32 4, label %for.body.last_day_of_month.exit.i_crit_edge
    i32 6, label %for.body.last_day_of_month.exit.i_crit_edge140
    i32 9, label %for.body.last_day_of_month.exit.i_crit_edge141
    i32 11, label %for.body.last_day_of_month.exit.i_crit_edge142
  ]

for.body.last_day_of_month.exit.i_crit_edge142:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %last_day_of_month.exit.i

for.body.last_day_of_month.exit.i_crit_edge141:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %last_day_of_month.exit.i

for.body.last_day_of_month.exit.i_crit_edge140:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %last_day_of_month.exit.i

for.body.last_day_of_month.exit.i_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %last_day_of_month.exit.i

if.then.i.i:                                      ; preds = %for.body
  %75 = and i32 %year.0.year.0., 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i.i.i = icmp eq i32 %75, 0
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %if.then.i.i.last_day_of_month.exit.i_crit_edge

if.then.i.i.last_day_of_month.exit.i_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %last_day_of_month.exit.i

land.rhs.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %rem1.i.i.i = srem i32 %year.0.year.0., 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1.i.i.i)
  %cmp2.not.i.i.i = icmp ne i32 %rem1.i.i.i, 0
  %rem3.i.i.i = srem i32 %year.0.year.0., 400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem3.i.i.i)
  %cmp4.i.i.i = icmp eq i32 %rem3.i.i.i, 0
  %or.cond.i.i = or i1 %cmp2.not.i.i.i, %cmp4.i.i.i
  %spec.select.i.i = select i1 %or.cond.i.i, i32 29, i32 28
  br label %last_day_of_month.exit.i

if.end12.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %last_day_of_month.exit.i

last_day_of_month.exit.i:                         ; preds = %if.end12.i.i, %land.rhs.i.i.i, %if.then.i.i.last_day_of_month.exit.i_crit_edge, %for.body.last_day_of_month.exit.i_crit_edge, %for.body.last_day_of_month.exit.i_crit_edge140, %for.body.last_day_of_month.exit.i_crit_edge141, %for.body.last_day_of_month.exit.i_crit_edge142
  %retval.0.i.i = phi i32 [ 31, %if.end12.i.i ], [ 30, %for.body.last_day_of_month.exit.i_crit_edge ], [ 30, %for.body.last_day_of_month.exit.i_crit_edge140 ], [ 30, %for.body.last_day_of_month.exit.i_crit_edge141 ], [ 30, %for.body.last_day_of_month.exit.i_crit_edge142 ], [ 28, %if.then.i.i.last_day_of_month.exit.i_crit_edge ], [ %spec.select.i.i, %land.rhs.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %mdday.0138, i32 %retval.0.i.i)
  %cmp.not.i = icmp eq i32 %mdday.0138, %retval.0.i.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %last_day_of_month.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %inc.i = add i32 %mdday.0138, 1
  br label %advance_date.exit

if.end.i:                                         ; preds = %last_day_of_month.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %month.0137)
  %cmp2.not.i = icmp eq i32 %month.0137, 12
  br i1 %cmp2.not.i, label %if.end6.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %inc4.i = add i32 %month.0137, 1
  br label %advance_date.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %76 = ptrtoint ptr %yday to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %yday, align 4
  br label %advance_date.exit

advance_date.exit:                                ; preds = %if.end6.i, %if.then3.i, %if.then.i
  %month.1 = phi i32 [ 1, %if.end6.i ], [ %inc4.i, %if.then3.i ], [ %month.0137, %if.then.i ]
  %mdday.1 = phi i32 [ 1, %if.end6.i ], [ 1, %if.then3.i ], [ %inc.i, %if.then.i ]
  %year.sink16.i = phi ptr [ %year, %if.end6.i ], [ %yday, %if.then3.i ], [ %yday, %if.then.i ]
  %77 = ptrtoint ptr %year.sink16.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %year.sink16.i, align 4
  %inc7.i = add i32 %78, 1
  store i32 %inc7.i, ptr %year.sink16.i, align 4
  %add = add nsw i64 %secs.0139, 86400
  %cmp = icmp slt i64 %secs.0139, 2524556073601
  br i1 %cmp, label %advance_date.exit.for.body_crit_edge, label %for.end

advance_date.exit.for.body_crit_edge:             ; preds = %advance_date.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %advance_date.exit
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %result) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %yday)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @time64_to_tm(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !23, !24, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__UNIQUE_ID_suites175, !1, !"__UNIQUE_ID_suites175", i1 false, i1 false}
!1 = !{!"../kernel/time/time_test.c", i32 98, i32 1}
!2 = !{ptr @__UNIQUE_ID_file176, !3, !"__UNIQUE_ID_file176", i1 false, i1 false}
!3 = !{!"../kernel/time/time_test.c", i32 99, i32 1}
!4 = !{ptr @__UNIQUE_ID_license177, !3, !"__UNIQUE_ID_license177", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_array174, !1, !"__UNIQUE_ID_array174", i1 false, i1 false}
!6 = !{ptr @time_test_suite, !7, !"time_test_suite", i1 false, i1 false}
!7 = !{!"../kernel/time/time_test.c", i32 93, i32 27}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/time/time_test.c", i32 89, i32 2}
!10 = !{ptr @time_test_cases, !11, !"time_test_cases", i1 false, i1 false}
!11 = !{!"../kernel/time/time_test.c", i32 88, i32 26}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/time/time_test.c", i32 79, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/time/time_test.c", i32 80, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../kernel/time/time_test.c", i32 81, i32 3}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/time/time_test.c", i32 82, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"auto-init"}
