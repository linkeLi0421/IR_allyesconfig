; ModuleID = '/llk/IR_all_yes/drivers/base/power/qos-test.c_pt.bc'
source_filename = "../drivers/base/power/qos-test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }

@__UNIQUE_ID_array184 = internal global [2 x ptr] [ptr @pm_qos_test_module, ptr null], align 4
@__UNIQUE_ID_suites185 = internal global ptr @__UNIQUE_ID_array184, section ".kunit_test_suites", align 4
@pm_qos_test_module = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"qos-kunit-test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @pm_qos_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@pm_qos_test_cases = internal global { [4 x %struct.kunit_case], [48 x i8] } { [4 x %struct.kunit_case] [%struct.kunit_case { ptr @freq_qos_test_min, ptr @.str, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @freq_qos_test_maxdef, ptr @.str.1, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @freq_qos_test_readd, ptr @.str.2, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"freq_qos_test_min\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"freq_qos_test_maxdef\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"freq_qos_test_readd\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/base/power/qos-test.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"freq_qos_read_value(&qos, FREQ_QOS_MIN)\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2000\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1000\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"freq_qos_read_value(&qos, FREQ_QOS_MAX)\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"((s32)(((u32)~0U) >> 1))\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"pm_qos_test_module\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 113, i32 27 }
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"pm_qos_test_cases\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 106, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 107, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 108, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 109, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 20, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 24, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 28, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 32, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [33 x i8] c"../drivers/base/power/qos-test.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 46, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_suites185, ptr @pm_qos_test_module, ptr @pm_qos_test_cases, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_qos_test_module to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_qos_test_cases to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @freq_qos_test_min(ptr noundef %test) #0 align 64 {
entry:
  %qos = alloca %struct.freq_constraints, align 4
  %req1 = alloca %struct.freq_qos_request, align 4
  %req2 = alloca %struct.freq_qos_request, align 4
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion13 = alloca %struct.kunit_binary_assert, align 8
  %__assertion42 = alloca %struct.kunit_binary_assert, align 8
  %__assertion71 = alloca %struct.kunit_binary_assert, align 8
  %__assertion100 = alloca %struct.kunit_binary_assert, align 8
  %__assertion129 = alloca %struct.kunit_binary_assert, align 8
  %__assertion158 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %qos) #3
  %0 = call ptr @memset(ptr %qos, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %req1) #3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %req2) #3
  call void @freq_constraints_init(ptr noundef nonnull %qos) #3
  %1 = call ptr @memset(ptr %req1, i32 0, i32 28)
  %2 = call ptr @memset(ptr %req2, i32 0, i32 28)
  %call = call i32 @freq_qos_add_request(ptr noundef nonnull %qos, ptr noundef nonnull %req1, i32 noundef 1, i32 noundef 1000) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #3
  %3 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %4 = call ptr @memset(ptr %3, i32 255, i32 24)
  %5 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %7 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %8 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.3, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %9 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %11 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %12 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.4, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %13 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.5, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = sext i32 %call to i64
  %14 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %15 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.6, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %16 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #3
  %call8 = call i32 @freq_qos_add_request(ptr noundef nonnull %qos, ptr noundef nonnull %req2, i32 noundef 1, i32 noundef 2000) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion13) #3
  %17 = getelementptr inbounds i8, ptr %__assertion13, i32 32
  %18 = call ptr @memset(ptr %17, i32 255, i32 24)
  %19 = ptrtoint ptr %__assertion13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %test, ptr %__assertion13, align 8
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 1
  %20 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 2
  %21 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 22, ptr %line17, align 8
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 3
  %22 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.3, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4
  %23 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %message19, align 8
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 5
  %25 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @kunit_binary_assert_format, ptr %format22, align 8
  %operation23 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 1
  %26 = ptrtoint ptr %operation23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.4, ptr %operation23, align 4
  %left_text24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 2
  %27 = ptrtoint ptr %left_text24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.5, ptr %left_text24, align 8
  %left_value25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 3
  %conv26 = sext i32 %call8 to i64
  %28 = ptrtoint ptr %left_value25 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv26, ptr %left_value25, align 8
  %right_text27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 4
  %29 = ptrtoint ptr %right_text27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.6, ptr %right_text27, align 8
  %right_value28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 5
  %30 = ptrtoint ptr %right_value28 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 1, ptr %right_value28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp31 = icmp eq i32 %call8, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13, i1 noundef zeroext %cmp31, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion13) #3
  %call39 = call i32 @freq_qos_read_value(ptr noundef nonnull %qos, i32 noundef 1) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion42) #3
  %31 = getelementptr inbounds i8, ptr %__assertion42, i32 32
  %32 = call ptr @memset(ptr %31, i32 255, i32 24)
  %33 = ptrtoint ptr %__assertion42 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %test, ptr %__assertion42, align 8
  %type45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 1
  %34 = ptrtoint ptr %type45 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %type45, align 4
  %line46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 2
  %35 = ptrtoint ptr %line46 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 24, ptr %line46, align 8
  %file47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 3
  %36 = ptrtoint ptr %file47 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.3, ptr %file47, align 4
  %message48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4
  %37 = ptrtoint ptr %message48 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %message48, align 8
  %va50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %va50 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %va50, align 4
  %format51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 5
  %39 = ptrtoint ptr %format51 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @kunit_binary_assert_format, ptr %format51, align 8
  %operation52 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 1
  %40 = ptrtoint ptr %operation52 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.4, ptr %operation52, align 4
  %left_text53 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 2
  %41 = ptrtoint ptr %left_text53 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.7, ptr %left_text53, align 8
  %left_value54 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 3
  %conv55 = sext i32 %call39 to i64
  %42 = ptrtoint ptr %left_value54 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv55, ptr %left_value54, align 8
  %right_text56 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 4
  %43 = ptrtoint ptr %right_text56 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.8, ptr %right_text56, align 8
  %right_value57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 5
  %44 = ptrtoint ptr %right_value57 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 2000, ptr %right_value57, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %call39)
  %cmp60 = icmp eq i32 %call39, 2000
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion42, i1 noundef zeroext %cmp60, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion42) #3
  %call66 = call i32 @freq_qos_remove_request(ptr noundef nonnull %req2) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion71) #3
  %45 = getelementptr inbounds i8, ptr %__assertion71, i32 32
  %46 = call ptr @memset(ptr %45, i32 255, i32 24)
  %47 = ptrtoint ptr %__assertion71 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %test, ptr %__assertion71, align 8
  %type74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 1
  %48 = ptrtoint ptr %type74 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %type74, align 4
  %line75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 2
  %49 = ptrtoint ptr %line75 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 27, ptr %line75, align 8
  %file76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 3
  %50 = ptrtoint ptr %file76 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.3, ptr %file76, align 4
  %message77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4
  %51 = ptrtoint ptr %message77 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %message77, align 8
  %va79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4, i32 1
  %52 = ptrtoint ptr %va79 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %va79, align 4
  %format80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 5
  %53 = ptrtoint ptr %format80 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @kunit_binary_assert_format, ptr %format80, align 8
  %operation81 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 1
  %54 = ptrtoint ptr %operation81 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.4, ptr %operation81, align 4
  %left_text82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 2
  %55 = ptrtoint ptr %left_text82 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.5, ptr %left_text82, align 8
  %left_value83 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 3
  %conv84 = sext i32 %call66 to i64
  %56 = ptrtoint ptr %left_value83 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv84, ptr %left_value83, align 8
  %right_text85 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 4
  %57 = ptrtoint ptr %right_text85 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.6, ptr %right_text85, align 8
  %right_value86 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 5
  %58 = ptrtoint ptr %right_value86 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 1, ptr %right_value86, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call66)
  %cmp89 = icmp eq i32 %call66, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion71, i1 noundef zeroext %cmp89, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion71) #3
  %call97 = call i32 @freq_qos_read_value(ptr noundef nonnull %qos, i32 noundef 1) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion100) #3
  %59 = getelementptr inbounds i8, ptr %__assertion100, i32 32
  %60 = call ptr @memset(ptr %59, i32 255, i32 24)
  %61 = ptrtoint ptr %__assertion100 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %test, ptr %__assertion100, align 8
  %type103 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 1
  %62 = ptrtoint ptr %type103 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %type103, align 4
  %line104 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 2
  %63 = ptrtoint ptr %line104 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 28, ptr %line104, align 8
  %file105 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 3
  %64 = ptrtoint ptr %file105 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.3, ptr %file105, align 4
  %message106 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 4
  %65 = ptrtoint ptr %message106 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %message106, align 8
  %va108 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 4, i32 1
  %66 = ptrtoint ptr %va108 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %va108, align 4
  %format109 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 5
  %67 = ptrtoint ptr %format109 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @kunit_binary_assert_format, ptr %format109, align 8
  %operation110 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 1
  %68 = ptrtoint ptr %operation110 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.4, ptr %operation110, align 4
  %left_text111 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 2
  %69 = ptrtoint ptr %left_text111 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.7, ptr %left_text111, align 8
  %left_value112 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 3
  %conv113 = sext i32 %call97 to i64
  %70 = ptrtoint ptr %left_value112 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %conv113, ptr %left_value112, align 8
  %right_text114 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 4
  %71 = ptrtoint ptr %right_text114 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.9, ptr %right_text114, align 8
  %right_value115 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 5
  %72 = ptrtoint ptr %right_value115 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 1000, ptr %right_value115, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call97)
  %cmp118 = icmp eq i32 %call97, 1000
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion100, i1 noundef zeroext %cmp118, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion100) #3
  %call124 = call i32 @freq_qos_remove_request(ptr noundef nonnull %req1) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion129) #3
  %73 = getelementptr inbounds i8, ptr %__assertion129, i32 32
  %74 = call ptr @memset(ptr %73, i32 255, i32 24)
  %75 = ptrtoint ptr %__assertion129 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %test, ptr %__assertion129, align 8
  %type132 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 1
  %76 = ptrtoint ptr %type132 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %type132, align 4
  %line133 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 2
  %77 = ptrtoint ptr %line133 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 31, ptr %line133, align 8
  %file134 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 3
  %78 = ptrtoint ptr %file134 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.3, ptr %file134, align 4
  %message135 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 4
  %79 = ptrtoint ptr %message135 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %message135, align 8
  %va137 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 4, i32 1
  %80 = ptrtoint ptr %va137 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %va137, align 4
  %format138 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 5
  %81 = ptrtoint ptr %format138 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @kunit_binary_assert_format, ptr %format138, align 8
  %operation139 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 1
  %82 = ptrtoint ptr %operation139 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.4, ptr %operation139, align 4
  %left_text140 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 2
  %83 = ptrtoint ptr %left_text140 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @.str.5, ptr %left_text140, align 8
  %left_value141 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 3
  %conv142 = sext i32 %call124 to i64
  %84 = ptrtoint ptr %left_value141 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %conv142, ptr %left_value141, align 8
  %right_text143 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 4
  %85 = ptrtoint ptr %right_text143 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.6, ptr %right_text143, align 8
  %right_value144 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 5
  %86 = ptrtoint ptr %right_value144 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 1, ptr %right_value144, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call124)
  %cmp147 = icmp eq i32 %call124, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion129, i1 noundef zeroext %cmp147, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion129) #3
  %call155 = call i32 @freq_qos_read_value(ptr noundef nonnull %qos, i32 noundef 1) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion158) #3
  %87 = getelementptr inbounds i8, ptr %__assertion158, i32 32
  %88 = call ptr @memset(ptr %87, i32 255, i32 24)
  %89 = ptrtoint ptr %__assertion158 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %test, ptr %__assertion158, align 8
  %type161 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 1
  %90 = ptrtoint ptr %type161 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %type161, align 4
  %line162 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 2
  %91 = ptrtoint ptr %line162 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 33, ptr %line162, align 8
  %file163 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 3
  %92 = ptrtoint ptr %file163 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @.str.3, ptr %file163, align 4
  %message164 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 4
  %93 = ptrtoint ptr %message164 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %message164, align 8
  %va166 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 4, i32 1
  %94 = ptrtoint ptr %va166 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %va166, align 4
  %format167 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 5
  %95 = ptrtoint ptr %format167 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @kunit_binary_assert_format, ptr %format167, align 8
  %operation168 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 1
  %96 = ptrtoint ptr %operation168 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @.str.4, ptr %operation168, align 4
  %left_text169 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 2
  %97 = ptrtoint ptr %left_text169 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @.str.7, ptr %left_text169, align 8
  %left_value170 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 3
  %conv171 = sext i32 %call155 to i64
  %98 = ptrtoint ptr %left_value170 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %conv171, ptr %left_value170, align 8
  %right_text172 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 4
  %99 = ptrtoint ptr %right_text172 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @.str.10, ptr %right_text172, align 8
  %right_value173 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 5
  %100 = ptrtoint ptr %right_value173 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 0, ptr %right_value173, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %cmp176 = icmp eq i32 %call155, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion158, i1 noundef zeroext %cmp176, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion158) #3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %req2) #3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %req1) #3
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %qos) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @freq_qos_test_maxdef(ptr noundef %test) #0 align 64 {
entry:
  %qos = alloca %struct.freq_constraints, align 4
  %req1 = alloca %struct.freq_qos_request, align 4
  %req2 = alloca %struct.freq_qos_request, align 4
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion13 = alloca %struct.kunit_binary_assert, align 8
  %__assertion42 = alloca %struct.kunit_binary_assert, align 8
  %__assertion71 = alloca %struct.kunit_binary_assert, align 8
  %__assertion100 = alloca %struct.kunit_binary_assert, align 8
  %__assertion129 = alloca %struct.kunit_binary_assert, align 8
  %__assertion158 = alloca %struct.kunit_binary_assert, align 8
  %__assertion187 = alloca %struct.kunit_binary_assert, align 8
  %__assertion216 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %qos) #3
  %0 = call ptr @memset(ptr %qos, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %req1) #3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %req2) #3
  call void @freq_constraints_init(ptr noundef nonnull %qos) #3
  %1 = call ptr @memset(ptr %req1, i32 0, i32 28)
  %2 = call ptr @memset(ptr %req2, i32 0, i32 28)
  %call = call i32 @freq_qos_read_value(ptr noundef nonnull %qos, i32 noundef 2) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #3
  %3 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %4 = call ptr @memset(ptr %3, i32 255, i32 24)
  %5 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %7 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 47, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %8 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.3, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %9 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %11 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %12 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.4, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %13 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.11, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = sext i32 %call to i64
  %14 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %15 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.12, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %16 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 2147483647, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %call)
  %cmp = icmp eq i32 %call, 2147483647
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #3
  %call8 = call i32 @freq_qos_add_request(ptr noundef nonnull %qos, ptr noundef nonnull %req1, i32 noundef 2, i32 noundef 2147483647) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion13) #3
  %17 = getelementptr inbounds i8, ptr %__assertion13, i32 32
  %18 = call ptr @memset(ptr %17, i32 255, i32 24)
  %19 = ptrtoint ptr %__assertion13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %test, ptr %__assertion13, align 8
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 1
  %20 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 2
  %21 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 51, ptr %line17, align 8
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 3
  %22 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.3, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4
  %23 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %message19, align 8
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 5
  %25 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @kunit_binary_assert_format, ptr %format22, align 8
  %operation23 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 1
  %26 = ptrtoint ptr %operation23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.4, ptr %operation23, align 4
  %left_text24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 2
  %27 = ptrtoint ptr %left_text24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.5, ptr %left_text24, align 8
  %left_value25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 3
  %conv26 = sext i32 %call8 to i64
  %28 = ptrtoint ptr %left_value25 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv26, ptr %left_value25, align 8
  %right_text27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 4
  %29 = ptrtoint ptr %right_text27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.10, ptr %right_text27, align 8
  %right_value28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 5
  %30 = ptrtoint ptr %right_value28 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %right_value28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp31 = icmp eq i32 %call8, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13, i1 noundef zeroext %cmp31, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion13) #3
  %call37 = call i32 @freq_qos_add_request(ptr noundef nonnull %qos, ptr noundef nonnull %req2, i32 noundef 2, i32 noundef 2147483647) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion42) #3
  %31 = getelementptr inbounds i8, ptr %__assertion42, i32 32
  %32 = call ptr @memset(ptr %31, i32 255, i32 24)
  %33 = ptrtoint ptr %__assertion42 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %test, ptr %__assertion42, align 8
  %type45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 1
  %34 = ptrtoint ptr %type45 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %type45, align 4
  %line46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 2
  %35 = ptrtoint ptr %line46 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 54, ptr %line46, align 8
  %file47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 3
  %36 = ptrtoint ptr %file47 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.3, ptr %file47, align 4
  %message48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4
  %37 = ptrtoint ptr %message48 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %message48, align 8
  %va50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %va50 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %va50, align 4
  %format51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 5
  %39 = ptrtoint ptr %format51 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @kunit_binary_assert_format, ptr %format51, align 8
  %operation52 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 1
  %40 = ptrtoint ptr %operation52 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.4, ptr %operation52, align 4
  %left_text53 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 2
  %41 = ptrtoint ptr %left_text53 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.5, ptr %left_text53, align 8
  %left_value54 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 3
  %conv55 = sext i32 %call37 to i64
  %42 = ptrtoint ptr %left_value54 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv55, ptr %left_value54, align 8
  %right_text56 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 4
  %43 = ptrtoint ptr %right_text56 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.10, ptr %right_text56, align 8
  %right_value57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 5
  %44 = ptrtoint ptr %right_value57 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 0, ptr %right_value57, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp60 = icmp eq i32 %call37, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion42, i1 noundef zeroext %cmp60, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion42) #3
  %call66 = call i32 @freq_qos_update_request(ptr noundef nonnull %req1, i32 noundef 1000) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion71) #3
  %45 = getelementptr inbounds i8, ptr %__assertion71, i32 32
  %46 = call ptr @memset(ptr %45, i32 255, i32 24)
  %47 = ptrtoint ptr %__assertion71 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %test, ptr %__assertion71, align 8
  %type74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 1
  %48 = ptrtoint ptr %type74 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %type74, align 4
  %line75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 2
  %49 = ptrtoint ptr %line75 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 58, ptr %line75, align 8
  %file76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 3
  %50 = ptrtoint ptr %file76 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.3, ptr %file76, align 4
  %message77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4
  %51 = ptrtoint ptr %message77 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %message77, align 8
  %va79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4, i32 1
  %52 = ptrtoint ptr %va79 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %va79, align 4
  %format80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 5
  %53 = ptrtoint ptr %format80 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @kunit_binary_assert_format, ptr %format80, align 8
  %operation81 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 1
  %54 = ptrtoint ptr %operation81 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.4, ptr %operation81, align 4
  %left_text82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 2
  %55 = ptrtoint ptr %left_text82 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.5, ptr %left_text82, align 8
  %left_value83 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 3
  %conv84 = sext i32 %call66 to i64
  %56 = ptrtoint ptr %left_value83 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv84, ptr %left_value83, align 8
  %right_text85 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 4
  %57 = ptrtoint ptr %right_text85 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.6, ptr %right_text85, align 8
  %right_value86 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 5
  %58 = ptrtoint ptr %right_value86 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 1, ptr %right_value86, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call66)
  %cmp89 = icmp eq i32 %call66, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion71, i1 noundef zeroext %cmp89, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion71) #3
  %call97 = call i32 @freq_qos_read_value(ptr noundef nonnull %qos, i32 noundef 2) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion100) #3
  %59 = getelementptr inbounds i8, ptr %__assertion100, i32 32
  %60 = call ptr @memset(ptr %59, i32 255, i32 24)
  %61 = ptrtoint ptr %__assertion100 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %test, ptr %__assertion100, align 8
  %type103 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 1
  %62 = ptrtoint ptr %type103 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %type103, align 4
  %line104 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 2
  %63 = ptrtoint ptr %line104 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 59, ptr %line104, align 8
  %file105 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 3
  %64 = ptrtoint ptr %file105 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.3, ptr %file105, align 4
  %message106 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 4
  %65 = ptrtoint ptr %message106 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %message106, align 8
  %va108 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 4, i32 1
  %66 = ptrtoint ptr %va108 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %va108, align 4
  %format109 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 5
  %67 = ptrtoint ptr %format109 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @kunit_binary_assert_format, ptr %format109, align 8
  %operation110 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 1
  %68 = ptrtoint ptr %operation110 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.4, ptr %operation110, align 4
  %left_text111 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 2
  %69 = ptrtoint ptr %left_text111 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.11, ptr %left_text111, align 8
  %left_value112 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 3
  %conv113 = sext i32 %call97 to i64
  %70 = ptrtoint ptr %left_value112 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %conv113, ptr %left_value112, align 8
  %right_text114 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 4
  %71 = ptrtoint ptr %right_text114 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.9, ptr %right_text114, align 8
  %right_value115 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 5
  %72 = ptrtoint ptr %right_value115 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 1000, ptr %right_value115, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call97)
  %cmp118 = icmp eq i32 %call97, 1000
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion100, i1 noundef zeroext %cmp118, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion100) #3
  %call124 = call i32 @freq_qos_update_request(ptr noundef nonnull %req2, i32 noundef 2000) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion129) #3
  %73 = getelementptr inbounds i8, ptr %__assertion129, i32 32
  %74 = call ptr @memset(ptr %73, i32 255, i32 24)
  %75 = ptrtoint ptr %__assertion129 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %test, ptr %__assertion129, align 8
  %type132 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 1
  %76 = ptrtoint ptr %type132 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %type132, align 4
  %line133 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 2
  %77 = ptrtoint ptr %line133 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 63, ptr %line133, align 8
  %file134 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 3
  %78 = ptrtoint ptr %file134 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.3, ptr %file134, align 4
  %message135 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 4
  %79 = ptrtoint ptr %message135 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %message135, align 8
  %va137 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 4, i32 1
  %80 = ptrtoint ptr %va137 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %va137, align 4
  %format138 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 5
  %81 = ptrtoint ptr %format138 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @kunit_binary_assert_format, ptr %format138, align 8
  %operation139 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 1
  %82 = ptrtoint ptr %operation139 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.4, ptr %operation139, align 4
  %left_text140 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 2
  %83 = ptrtoint ptr %left_text140 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @.str.5, ptr %left_text140, align 8
  %left_value141 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 3
  %conv142 = sext i32 %call124 to i64
  %84 = ptrtoint ptr %left_value141 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %conv142, ptr %left_value141, align 8
  %right_text143 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 4
  %85 = ptrtoint ptr %right_text143 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.10, ptr %right_text143, align 8
  %right_value144 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 5
  %86 = ptrtoint ptr %right_value144 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 0, ptr %right_value144, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp147 = icmp eq i32 %call124, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion129, i1 noundef zeroext %cmp147, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion129) #3
  %call155 = call i32 @freq_qos_read_value(ptr noundef nonnull %qos, i32 noundef 2) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion158) #3
  %87 = getelementptr inbounds i8, ptr %__assertion158, i32 32
  %88 = call ptr @memset(ptr %87, i32 255, i32 24)
  %89 = ptrtoint ptr %__assertion158 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %test, ptr %__assertion158, align 8
  %type161 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 1
  %90 = ptrtoint ptr %type161 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %type161, align 4
  %line162 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 2
  %91 = ptrtoint ptr %line162 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 64, ptr %line162, align 8
  %file163 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 3
  %92 = ptrtoint ptr %file163 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @.str.3, ptr %file163, align 4
  %message164 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 4
  %93 = ptrtoint ptr %message164 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %message164, align 8
  %va166 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 4, i32 1
  %94 = ptrtoint ptr %va166 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %va166, align 4
  %format167 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 5
  %95 = ptrtoint ptr %format167 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @kunit_binary_assert_format, ptr %format167, align 8
  %operation168 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 1
  %96 = ptrtoint ptr %operation168 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @.str.4, ptr %operation168, align 4
  %left_text169 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 2
  %97 = ptrtoint ptr %left_text169 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @.str.11, ptr %left_text169, align 8
  %left_value170 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 3
  %conv171 = sext i32 %call155 to i64
  %98 = ptrtoint ptr %left_value170 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %conv171, ptr %left_value170, align 8
  %right_text172 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 4
  %99 = ptrtoint ptr %right_text172 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @.str.9, ptr %right_text172, align 8
  %right_value173 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 5
  %100 = ptrtoint ptr %right_value173 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 1000, ptr %right_value173, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call155)
  %cmp176 = icmp eq i32 %call155, 1000
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion158, i1 noundef zeroext %cmp176, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion158) #3
  %call182 = call i32 @freq_qos_remove_request(ptr noundef nonnull %req1) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion187) #3
  %101 = getelementptr inbounds i8, ptr %__assertion187, i32 32
  %102 = call ptr @memset(ptr %101, i32 255, i32 24)
  %103 = ptrtoint ptr %__assertion187 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %test, ptr %__assertion187, align 8
  %type190 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion187, i32 0, i32 1
  %104 = ptrtoint ptr %type190 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %type190, align 4
  %line191 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion187, i32 0, i32 2
  %105 = ptrtoint ptr %line191 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 68, ptr %line191, align 8
  %file192 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion187, i32 0, i32 3
  %106 = ptrtoint ptr %file192 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @.str.3, ptr %file192, align 4
  %message193 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion187, i32 0, i32 4
  %107 = ptrtoint ptr %message193 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %message193, align 8
  %va195 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion187, i32 0, i32 4, i32 1
  %108 = ptrtoint ptr %va195 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %va195, align 4
  %format196 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion187, i32 0, i32 5
  %109 = ptrtoint ptr %format196 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @kunit_binary_assert_format, ptr %format196, align 8
  %operation197 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion187, i32 0, i32 1
  %110 = ptrtoint ptr %operation197 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @.str.4, ptr %operation197, align 4
  %left_text198 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion187, i32 0, i32 2
  %111 = ptrtoint ptr %left_text198 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @.str.5, ptr %left_text198, align 8
  %left_value199 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion187, i32 0, i32 3
  %conv200 = sext i32 %call182 to i64
  %112 = ptrtoint ptr %left_value199 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %conv200, ptr %left_value199, align 8
  %right_text201 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion187, i32 0, i32 4
  %113 = ptrtoint ptr %right_text201 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @.str.6, ptr %right_text201, align 8
  %right_value202 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion187, i32 0, i32 5
  %114 = ptrtoint ptr %right_value202 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 1, ptr %right_value202, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call182)
  %cmp205 = icmp eq i32 %call182, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion187, i1 noundef zeroext %cmp205, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion187) #3
  %call213 = call i32 @freq_qos_read_value(ptr noundef nonnull %qos, i32 noundef 2) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion216) #3
  %115 = getelementptr inbounds i8, ptr %__assertion216, i32 32
  %116 = call ptr @memset(ptr %115, i32 255, i32 24)
  %117 = ptrtoint ptr %__assertion216 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %test, ptr %__assertion216, align 8
  %type219 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion216, i32 0, i32 1
  %118 = ptrtoint ptr %type219 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 1, ptr %type219, align 4
  %line220 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion216, i32 0, i32 2
  %119 = ptrtoint ptr %line220 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 69, ptr %line220, align 8
  %file221 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion216, i32 0, i32 3
  %120 = ptrtoint ptr %file221 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @.str.3, ptr %file221, align 4
  %message222 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion216, i32 0, i32 4
  %121 = ptrtoint ptr %message222 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %message222, align 8
  %va224 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion216, i32 0, i32 4, i32 1
  %122 = ptrtoint ptr %va224 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %va224, align 4
  %format225 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion216, i32 0, i32 5
  %123 = ptrtoint ptr %format225 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @kunit_binary_assert_format, ptr %format225, align 8
  %operation226 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion216, i32 0, i32 1
  %124 = ptrtoint ptr %operation226 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @.str.4, ptr %operation226, align 4
  %left_text227 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion216, i32 0, i32 2
  %125 = ptrtoint ptr %left_text227 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @.str.11, ptr %left_text227, align 8
  %left_value228 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion216, i32 0, i32 3
  %conv229 = sext i32 %call213 to i64
  %126 = ptrtoint ptr %left_value228 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %conv229, ptr %left_value228, align 8
  %right_text230 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion216, i32 0, i32 4
  %127 = ptrtoint ptr %right_text230 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @.str.8, ptr %right_text230, align 8
  %right_value231 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion216, i32 0, i32 5
  %128 = ptrtoint ptr %right_value231 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 2000, ptr %right_value231, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %call213)
  %cmp234 = icmp eq i32 %call213, 2000
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion216, i1 noundef zeroext %cmp234, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion216) #3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %req2) #3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %req1) #3
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %qos) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @freq_qos_test_readd(ptr noundef %test) #0 align 64 {
entry:
  %qos = alloca %struct.freq_constraints, align 4
  %req = alloca %struct.freq_qos_request, align 4
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion13 = alloca %struct.kunit_binary_assert, align 8
  %__assertion42 = alloca %struct.kunit_binary_assert, align 8
  %__assertion71 = alloca %struct.kunit_binary_assert, align 8
  %__assertion100 = alloca %struct.kunit_binary_assert, align 8
  %__assertion129 = alloca %struct.kunit_binary_assert, align 8
  %__assertion158 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %qos) #3
  %0 = call ptr @memset(ptr %qos, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %req) #3
  call void @freq_constraints_init(ptr noundef nonnull %qos) #3
  %1 = call ptr @memset(ptr %req, i32 0, i32 28)
  %call = call i32 @freq_qos_read_value(ptr noundef nonnull %qos, i32 noundef 1) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #3
  %2 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %3 = call ptr @memset(ptr %2, i32 255, i32 24)
  %4 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %6 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 87, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %7 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.3, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %8 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %10 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %11 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.4, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %12 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.7, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = sext i32 %call to i64
  %13 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %14 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.10, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %15 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #3
  %call8 = call i32 @freq_qos_add_request(ptr noundef nonnull %qos, ptr noundef nonnull %req, i32 noundef 1, i32 noundef 1000) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion13) #3
  %16 = getelementptr inbounds i8, ptr %__assertion13, i32 32
  %17 = call ptr @memset(ptr %16, i32 255, i32 24)
  %18 = ptrtoint ptr %__assertion13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %test, ptr %__assertion13, align 8
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 1
  %19 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 2
  %20 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 91, ptr %line17, align 8
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 3
  %21 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.3, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4
  %22 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %message19, align 8
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 5
  %24 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @kunit_binary_assert_format, ptr %format22, align 8
  %operation23 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 1
  %25 = ptrtoint ptr %operation23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.4, ptr %operation23, align 4
  %left_text24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 2
  %26 = ptrtoint ptr %left_text24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.5, ptr %left_text24, align 8
  %left_value25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 3
  %conv26 = sext i32 %call8 to i64
  %27 = ptrtoint ptr %left_value25 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv26, ptr %left_value25, align 8
  %right_text27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 4
  %28 = ptrtoint ptr %right_text27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.6, ptr %right_text27, align 8
  %right_value28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 5
  %29 = ptrtoint ptr %right_value28 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 1, ptr %right_value28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp31 = icmp eq i32 %call8, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13, i1 noundef zeroext %cmp31, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion13) #3
  %call39 = call i32 @freq_qos_read_value(ptr noundef nonnull %qos, i32 noundef 1) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion42) #3
  %30 = getelementptr inbounds i8, ptr %__assertion42, i32 32
  %31 = call ptr @memset(ptr %30, i32 255, i32 24)
  %32 = ptrtoint ptr %__assertion42 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %test, ptr %__assertion42, align 8
  %type45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 1
  %33 = ptrtoint ptr %type45 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %type45, align 4
  %line46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 2
  %34 = ptrtoint ptr %line46 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 92, ptr %line46, align 8
  %file47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 3
  %35 = ptrtoint ptr %file47 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.3, ptr %file47, align 4
  %message48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4
  %36 = ptrtoint ptr %message48 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %message48, align 8
  %va50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %va50 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %va50, align 4
  %format51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 5
  %38 = ptrtoint ptr %format51 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @kunit_binary_assert_format, ptr %format51, align 8
  %operation52 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 1
  %39 = ptrtoint ptr %operation52 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.4, ptr %operation52, align 4
  %left_text53 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 2
  %40 = ptrtoint ptr %left_text53 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.7, ptr %left_text53, align 8
  %left_value54 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 3
  %conv55 = sext i32 %call39 to i64
  %41 = ptrtoint ptr %left_value54 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv55, ptr %left_value54, align 8
  %right_text56 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 4
  %42 = ptrtoint ptr %right_text56 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.9, ptr %right_text56, align 8
  %right_value57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 5
  %43 = ptrtoint ptr %right_value57 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 1000, ptr %right_value57, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call39)
  %cmp60 = icmp eq i32 %call39, 1000
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion42, i1 noundef zeroext %cmp60, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion42) #3
  %call66 = call i32 @freq_qos_remove_request(ptr noundef nonnull %req) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion71) #3
  %44 = getelementptr inbounds i8, ptr %__assertion71, i32 32
  %45 = call ptr @memset(ptr %44, i32 255, i32 24)
  %46 = ptrtoint ptr %__assertion71 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %test, ptr %__assertion71, align 8
  %type74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 1
  %47 = ptrtoint ptr %type74 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %type74, align 4
  %line75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 2
  %48 = ptrtoint ptr %line75 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 96, ptr %line75, align 8
  %file76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 3
  %49 = ptrtoint ptr %file76 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.3, ptr %file76, align 4
  %message77 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4
  %50 = ptrtoint ptr %message77 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %message77, align 8
  %va79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %va79 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %va79, align 4
  %format80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion71, i32 0, i32 5
  %52 = ptrtoint ptr %format80 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @kunit_binary_assert_format, ptr %format80, align 8
  %operation81 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 1
  %53 = ptrtoint ptr %operation81 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.4, ptr %operation81, align 4
  %left_text82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 2
  %54 = ptrtoint ptr %left_text82 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.5, ptr %left_text82, align 8
  %left_value83 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 3
  %conv84 = sext i32 %call66 to i64
  %55 = ptrtoint ptr %left_value83 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv84, ptr %left_value83, align 8
  %right_text85 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 4
  %56 = ptrtoint ptr %right_text85 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.6, ptr %right_text85, align 8
  %right_value86 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion71, i32 0, i32 5
  %57 = ptrtoint ptr %right_value86 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 1, ptr %right_value86, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call66)
  %cmp89 = icmp eq i32 %call66, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion71, i1 noundef zeroext %cmp89, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion71) #3
  %call97 = call i32 @freq_qos_read_value(ptr noundef nonnull %qos, i32 noundef 1) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion100) #3
  %58 = getelementptr inbounds i8, ptr %__assertion100, i32 32
  %59 = call ptr @memset(ptr %58, i32 255, i32 24)
  %60 = ptrtoint ptr %__assertion100 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %test, ptr %__assertion100, align 8
  %type103 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 1
  %61 = ptrtoint ptr %type103 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %type103, align 4
  %line104 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 2
  %62 = ptrtoint ptr %line104 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 98, ptr %line104, align 8
  %file105 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 3
  %63 = ptrtoint ptr %file105 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.3, ptr %file105, align 4
  %message106 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 4
  %64 = ptrtoint ptr %message106 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %message106, align 8
  %va108 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 4, i32 1
  %65 = ptrtoint ptr %va108 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %va108, align 4
  %format109 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 5
  %66 = ptrtoint ptr %format109 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @kunit_binary_assert_format, ptr %format109, align 8
  %operation110 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 1
  %67 = ptrtoint ptr %operation110 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.4, ptr %operation110, align 4
  %left_text111 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 2
  %68 = ptrtoint ptr %left_text111 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.7, ptr %left_text111, align 8
  %left_value112 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 3
  %conv113 = sext i32 %call97 to i64
  %69 = ptrtoint ptr %left_value112 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv113, ptr %left_value112, align 8
  %right_text114 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 4
  %70 = ptrtoint ptr %right_text114 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.10, ptr %right_text114, align 8
  %right_value115 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion100, i32 0, i32 5
  %71 = ptrtoint ptr %right_value115 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 0, ptr %right_value115, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp118 = icmp eq i32 %call97, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion100, i1 noundef zeroext %cmp118, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion100) #3
  %call124 = call i32 @freq_qos_add_request(ptr noundef nonnull %qos, ptr noundef nonnull %req, i32 noundef 1, i32 noundef 2000) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion129) #3
  %72 = getelementptr inbounds i8, ptr %__assertion129, i32 32
  %73 = call ptr @memset(ptr %72, i32 255, i32 24)
  %74 = ptrtoint ptr %__assertion129 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %test, ptr %__assertion129, align 8
  %type132 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 1
  %75 = ptrtoint ptr %type132 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %type132, align 4
  %line133 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 2
  %76 = ptrtoint ptr %line133 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 102, ptr %line133, align 8
  %file134 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 3
  %77 = ptrtoint ptr %file134 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.3, ptr %file134, align 4
  %message135 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 4
  %78 = ptrtoint ptr %message135 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %message135, align 8
  %va137 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 4, i32 1
  %79 = ptrtoint ptr %va137 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %va137, align 4
  %format138 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion129, i32 0, i32 5
  %80 = ptrtoint ptr %format138 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @kunit_binary_assert_format, ptr %format138, align 8
  %operation139 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 1
  %81 = ptrtoint ptr %operation139 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str.4, ptr %operation139, align 4
  %left_text140 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 2
  %82 = ptrtoint ptr %left_text140 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.5, ptr %left_text140, align 8
  %left_value141 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 3
  %conv142 = sext i32 %call124 to i64
  %83 = ptrtoint ptr %left_value141 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %conv142, ptr %left_value141, align 8
  %right_text143 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 4
  %84 = ptrtoint ptr %right_text143 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @.str.6, ptr %right_text143, align 8
  %right_value144 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion129, i32 0, i32 5
  %85 = ptrtoint ptr %right_value144 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 1, ptr %right_value144, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call124)
  %cmp147 = icmp eq i32 %call124, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion129, i1 noundef zeroext %cmp147, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion129) #3
  %call155 = call i32 @freq_qos_read_value(ptr noundef nonnull %qos, i32 noundef 1) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion158) #3
  %86 = getelementptr inbounds i8, ptr %__assertion158, i32 32
  %87 = call ptr @memset(ptr %86, i32 255, i32 24)
  %88 = ptrtoint ptr %__assertion158 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %test, ptr %__assertion158, align 8
  %type161 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 1
  %89 = ptrtoint ptr %type161 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %type161, align 4
  %line162 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 2
  %90 = ptrtoint ptr %line162 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 103, ptr %line162, align 8
  %file163 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 3
  %91 = ptrtoint ptr %file163 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @.str.3, ptr %file163, align 4
  %message164 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 4
  %92 = ptrtoint ptr %message164 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %message164, align 8
  %va166 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 4, i32 1
  %93 = ptrtoint ptr %va166 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %va166, align 4
  %format167 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion158, i32 0, i32 5
  %94 = ptrtoint ptr %format167 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @kunit_binary_assert_format, ptr %format167, align 8
  %operation168 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 1
  %95 = ptrtoint ptr %operation168 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @.str.4, ptr %operation168, align 4
  %left_text169 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 2
  %96 = ptrtoint ptr %left_text169 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @.str.7, ptr %left_text169, align 8
  %left_value170 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 3
  %conv171 = sext i32 %call155 to i64
  %97 = ptrtoint ptr %left_value170 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %conv171, ptr %left_value170, align 8
  %right_text172 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 4
  %98 = ptrtoint ptr %right_text172 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @.str.8, ptr %right_text172, align 8
  %right_value173 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion158, i32 0, i32 5
  %99 = ptrtoint ptr %right_value173 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 2000, ptr %right_value173, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %call155)
  %cmp176 = icmp eq i32 %call155, 2000
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion158, i1 noundef zeroext %cmp176, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion158) #3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %req) #3
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %qos) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @freq_constraints_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_add_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_read_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_remove_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !18, !20, !21, !23, !25, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__UNIQUE_ID_suites185, !1, !"__UNIQUE_ID_suites185", i1 false, i1 false}
!1 = !{!"../drivers/base/power/qos-test.c", i32 117, i32 1}
!2 = !{ptr @__UNIQUE_ID_array184, !1, !"__UNIQUE_ID_array184", i1 false, i1 false}
!3 = !{ptr @pm_qos_test_module, !4, !"pm_qos_test_module", i1 false, i1 false}
!4 = !{!"../drivers/base/power/qos-test.c", i32 113, i32 27}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/base/power/qos-test.c", i32 107, i32 2}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/base/power/qos-test.c", i32 108, i32 2}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/base/power/qos-test.c", i32 109, i32 2}
!11 = !{ptr @pm_qos_test_cases, !12, !"pm_qos_test_cases", i1 false, i1 false}
!12 = !{!"../drivers/base/power/qos-test.c", i32 106, i32 26}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/base/power/qos-test.c", i32 20, i32 2}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/base/power/qos-test.c", i32 24, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/base/power/qos-test.c", i32 28, i32 2}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/base/power/qos-test.c", i32 32, i32 2}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/base/power/qos-test.c", i32 46, i32 2}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
