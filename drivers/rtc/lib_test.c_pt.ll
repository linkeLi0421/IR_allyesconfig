; ModuleID = '/llk/IR_all_yes/drivers/rtc/lib_test.c_pt.bc'
source_filename = "../drivers/rtc/lib_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }

@__UNIQUE_ID_array228 = internal global [2 x ptr] [ptr @rtc_lib_test_suite, ptr null], align 4
@__UNIQUE_ID_suites229 = internal global ptr @__UNIQUE_ID_array228, section ".kunit_test_suites", align 4
@__UNIQUE_ID_file230 = internal constant [35 x i8] c"lib_test.file=drivers/rtc/lib_test\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [21 x i8] c"lib_test.license=GPL\00", section ".modinfo", align 1
@rtc_lib_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"rtc_lib_test_cases\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @rtc_lib_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@rtc_lib_test_cases = internal global { [2 x %struct.kunit_case], [56 x i8] } { [2 x %struct.kunit_case] [%struct.kunit_case { ptr @rtc_time64_to_tm_test_date_range, ptr @.str, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rtc_time64_to_tm_test_date_range\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/rtc/lib_test.c\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"year - 1900\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"result.tm_year\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%d/%02d/%02d (%2d) : %ld\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"month - 1\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"result.tm_mon\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mday\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"result.tm_mday\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"yday\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"result.tm_yday\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"rtc_lib_test_suite\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 74, i32 27 }
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"rtc_lib_test_cases\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 69, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 70, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 60, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 61, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 62, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [26 x i8] c"../drivers/rtc/lib_test.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 63, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__UNIQUE_ID_suites229, ptr @rtc_lib_test_suite, ptr @rtc_lib_test_cases, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_lib_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_lib_test_cases to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtc_time64_to_tm_test_date_range(ptr noundef %test) #0 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  %year = alloca i32, align 4
  %yday = alloca i32, align 4
  %result = alloca %struct.rtc_time, align 4
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion14 = alloca %struct.kunit_binary_assert, align 8
  %__assertion42 = alloca %struct.kunit_binary_assert, align 8
  %__assertion70 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %year)
  %0 = ptrtoint ptr %year to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1970, ptr %year, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %yday)
  %1 = ptrtoint ptr %yday to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %yday, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %result) #3
  %2 = call ptr @memset(ptr %result, i32 255, i32 36)
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %result, i32 0, i32 5
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
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %result, i32 0, i32 4
  %type17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 1
  %line18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 2
  %file19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 3
  %message20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4
  %va22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 4, i32 1
  %format23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion14, i32 0, i32 5
  %operation24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 1
  %left_text25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 2
  %left_value26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 3
  %right_text28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 4
  %right_value29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion14, i32 0, i32 5
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %result, i32 0, i32 3
  %type45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 1
  %line46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 2
  %file47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 3
  %message48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4
  %va50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4, i32 1
  %format51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 5
  %operation52 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 1
  %left_text53 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 2
  %left_value54 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 3
  %right_text56 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 4
  %right_value57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 5
  %tm_yday = getelementptr inbounds %struct.rtc_time, ptr %result, i32 0, i32 7
  %type73 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 1
  %line74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 2
  %file75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 3
  %message76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 4
  %va78 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 4, i32 1
  %format79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 5
  %operation80 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion70, i32 0, i32 1
  %left_text81 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion70, i32 0, i32 2
  %left_value82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion70, i32 0, i32 3
  %right_text84 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion70, i32 0, i32 4
  %right_value85 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion70, i32 0, i32 5
  %3 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %4 = getelementptr inbounds i8, ptr %__assertion14, i32 32
  %5 = getelementptr inbounds i8, ptr %__assertion42, i32 32
  %6 = getelementptr inbounds i8, ptr %__assertion70, i32 32
  br label %for.body

for.body:                                         ; preds = %advance_date.exit.for.body_crit_edge, %entry
  %secs.0139 = phi i64 [ 0, %entry ], [ %add, %advance_date.exit.for.body_crit_edge ]
  %mday.0138 = phi i32 [ 1, %entry ], [ %mday.1, %advance_date.exit.for.body_crit_edge ]
  %month.0137 = phi i32 [ 1, %entry ], [ %month.1, %advance_date.exit.for.body_crit_edge ]
  call void @rtc_time64_to_tm(i64 noundef %secs.0139, ptr noundef nonnull %result) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #3
  %7 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %remainder.i, align 4, !annotation !36
  %call.i = call i64 @div_s64_rem(i64 noundef %secs.0139, i32 noundef 86400, ptr noundef nonnull %remainder.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #3
  %8 = ptrtoint ptr %year to i32
  call void @__asan_load4_noabort(i32 %8)
  %year.0.year.0. = load i32, ptr %year, align 4
  %sub = add i32 %year.0.year.0., -1900
  %9 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm_year, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #3
  %11 = call ptr @memset(ptr %3, i32 255, i32 24)
  %12 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %test, ptr %__assertion, align 8
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %type, align 4
  %14 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 60, ptr %line, align 8
  %15 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.1, ptr %file, align 4
  %16 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %message, align 8
  %17 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %va, align 4
  %18 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %19 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.2, ptr %operation, align 4
  %20 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.3, ptr %left_text, align 8
  %conv = sext i32 %sub to i64
  %21 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv, ptr %left_value, align 8
  %22 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.4, ptr %right_text, align 8
  %conv3 = sext i32 %10 to i64
  %23 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv3, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %10)
  %cmp5 = icmp eq i32 %sub, %10
  %24 = ptrtoint ptr %yday to i32
  call void @__asan_load4_noabort(i32 %24)
  %yday.0.yday.0. = load i32, ptr %yday, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp5, ptr noundef nonnull @.str.5, i32 noundef %year.0.year.0., i32 noundef %month.0137, i32 noundef %mday.0138, i32 noundef %yday.0.yday.0., i64 noundef %call.i) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #3
  %sub11 = add i32 %month.0137, -1
  %25 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_mon, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion14) #3
  %27 = call ptr @memset(ptr %4, i32 255, i32 24)
  %28 = ptrtoint ptr %__assertion14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %test, ptr %__assertion14, align 8
  %29 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %type17, align 4
  %30 = ptrtoint ptr %line18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 61, ptr %line18, align 8
  %31 = ptrtoint ptr %file19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.1, ptr %file19, align 4
  %32 = ptrtoint ptr %message20 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %message20, align 8
  %33 = ptrtoint ptr %va22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %va22, align 4
  %34 = ptrtoint ptr %format23 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @kunit_binary_assert_format, ptr %format23, align 8
  %35 = ptrtoint ptr %operation24 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.2, ptr %operation24, align 4
  %36 = ptrtoint ptr %left_text25 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.6, ptr %left_text25, align 8
  %conv27 = sext i32 %sub11 to i64
  %37 = ptrtoint ptr %left_value26 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv27, ptr %left_value26, align 8
  %38 = ptrtoint ptr %right_text28 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.7, ptr %right_text28, align 8
  %conv30 = sext i32 %26 to i64
  %39 = ptrtoint ptr %right_value29 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv30, ptr %right_value29, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub11, i32 %26)
  %cmp32 = icmp eq i32 %sub11, %26
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion14, i1 noundef zeroext %cmp32, ptr noundef nonnull @.str.5, i32 noundef %year.0.year.0., i32 noundef %month.0137, i32 noundef %mday.0138, i32 noundef %yday.0.yday.0., i64 noundef %call.i) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion14) #3
  %40 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tm_mday, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion42) #3
  %42 = call ptr @memset(ptr %5, i32 255, i32 24)
  %43 = ptrtoint ptr %__assertion42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %test, ptr %__assertion42, align 8
  %44 = ptrtoint ptr %type45 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %type45, align 4
  %45 = ptrtoint ptr %line46 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 62, ptr %line46, align 8
  %46 = ptrtoint ptr %file47 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.1, ptr %file47, align 4
  %47 = ptrtoint ptr %message48 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %message48, align 8
  %48 = ptrtoint ptr %va50 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %va50, align 4
  %49 = ptrtoint ptr %format51 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @kunit_binary_assert_format, ptr %format51, align 8
  %50 = ptrtoint ptr %operation52 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.2, ptr %operation52, align 4
  %51 = ptrtoint ptr %left_text53 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.8, ptr %left_text53, align 8
  %conv55 = sext i32 %mday.0138 to i64
  %52 = ptrtoint ptr %left_value54 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv55, ptr %left_value54, align 8
  %53 = ptrtoint ptr %right_text56 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.9, ptr %right_text56, align 8
  %conv58 = sext i32 %41 to i64
  %54 = ptrtoint ptr %right_value57 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv58, ptr %right_value57, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mday.0138, i32 %41)
  %cmp60 = icmp eq i32 %mday.0138, %41
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion42, i1 noundef zeroext %cmp60, ptr noundef nonnull @.str.5, i32 noundef %year.0.year.0., i32 noundef %month.0137, i32 noundef %mday.0138, i32 noundef %yday.0.yday.0., i64 noundef %call.i) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion42) #3
  %55 = ptrtoint ptr %tm_yday to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tm_yday, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion70) #3
  %57 = call ptr @memset(ptr %6, i32 255, i32 24)
  %58 = ptrtoint ptr %__assertion70 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %test, ptr %__assertion70, align 8
  %59 = ptrtoint ptr %type73 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %type73, align 4
  %60 = ptrtoint ptr %line74 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 63, ptr %line74, align 8
  %61 = ptrtoint ptr %file75 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.1, ptr %file75, align 4
  %62 = ptrtoint ptr %message76 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %message76, align 8
  %63 = ptrtoint ptr %va78 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %va78, align 4
  %64 = ptrtoint ptr %format79 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @kunit_binary_assert_format, ptr %format79, align 8
  %65 = ptrtoint ptr %operation80 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.2, ptr %operation80, align 4
  %66 = ptrtoint ptr %left_text81 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.10, ptr %left_text81, align 8
  %conv83 = sext i32 %yday.0.yday.0. to i64
  %67 = ptrtoint ptr %left_value82 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv83, ptr %left_value82, align 8
  %68 = ptrtoint ptr %right_text84 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.11, ptr %right_text84, align 8
  %conv86 = sext i32 %56 to i64
  %69 = ptrtoint ptr %right_value85 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv86, ptr %right_value85, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %yday.0.yday.0., i32 %56)
  %cmp88 = icmp eq i32 %yday.0.yday.0., %56
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion70, i1 noundef zeroext %cmp88, ptr noundef nonnull @.str.5, i32 noundef %year.0.year.0., i32 noundef %month.0137, i32 noundef %mday.0138, i32 noundef %yday.0.yday.0., i64 noundef %call.i) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion70) #3
  %call.i115 = call i32 @rtc_month_days(i32 noundef %sub11, i32 noundef %year.0.year.0.) #3
  call void @__sanitizer_cov_trace_cmp4(i32 %mday.0138, i32 %call.i115)
  %cmp.not.i = icmp eq i32 %mday.0138, %call.i115
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %inc.i = add i32 %mday.0138, 1
  br label %advance_date.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %month.0137)
  %cmp2.not.i = icmp eq i32 %month.0137, 12
  br i1 %cmp2.not.i, label %if.end6.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %inc4.i = add i32 %month.0137, 1
  br label %advance_date.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %70 = ptrtoint ptr %yday to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %yday, align 4
  br label %advance_date.exit

advance_date.exit:                                ; preds = %if.end6.i, %if.then3.i, %if.then.i
  %month.1 = phi i32 [ 1, %if.end6.i ], [ %inc4.i, %if.then3.i ], [ %month.0137, %if.then.i ]
  %mday.1 = phi i32 [ 1, %if.end6.i ], [ 1, %if.then3.i ], [ %inc.i, %if.then.i ]
  %year.sink16.i = phi ptr [ %year, %if.end6.i ], [ %yday, %if.then3.i ], [ %yday, %if.then.i ]
  %71 = ptrtoint ptr %year.sink16.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %year.sink16.i, align 4
  %inc7.i = add i32 %72, 1
  store i32 %inc7.i, ptr %year.sink16.i, align 4
  %add = add nuw nsw i64 %secs.0139, 86400
  %cmp = icmp ult i64 %secs.0139, 5049112233601
  br i1 %cmp, label %advance_date.exit.for.body_crit_edge, label %for.end

advance_date.exit.for.body_crit_edge:             ; preds = %advance_date.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %advance_date.exit
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %result) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %yday)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_month_days(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

!0 = !{ptr @__UNIQUE_ID_suites229, !1, !"__UNIQUE_ID_suites229", i1 false, i1 false}
!1 = !{!"../drivers/rtc/lib_test.c", i32 79, i32 1}
!2 = !{ptr @__UNIQUE_ID_file230, !3, !"__UNIQUE_ID_file230", i1 false, i1 false}
!3 = !{!"../drivers/rtc/lib_test.c", i32 81, i32 1}
!4 = !{ptr @__UNIQUE_ID_license231, !3, !"__UNIQUE_ID_license231", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_array228, !1, !"__UNIQUE_ID_array228", i1 false, i1 false}
!6 = !{ptr @rtc_lib_test_suite, !7, !"rtc_lib_test_suite", i1 false, i1 false}
!7 = !{!"../drivers/rtc/lib_test.c", i32 74, i32 27}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/rtc/lib_test.c", i32 70, i32 2}
!10 = !{ptr @rtc_lib_test_cases, !11, !"rtc_lib_test_cases", i1 false, i1 false}
!11 = !{!"../drivers/rtc/lib_test.c", i32 69, i32 26}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/lib_test.c", i32 60, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/lib_test.c", i32 61, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/rtc/lib_test.c", i32 62, i32 3}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/lib_test.c", i32 63, i32 3}
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
