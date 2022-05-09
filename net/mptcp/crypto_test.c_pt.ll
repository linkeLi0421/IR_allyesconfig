; ModuleID = '/llk/IR_all_yes/net/mptcp/crypto_test.c_pt.bc'
source_filename = "../net/mptcp/crypto_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.test_case = type { ptr, ptr, ptr }
%struct.kunit_binary_str_assert = type { %struct.kunit_assert, ptr, ptr, ptr, ptr, ptr }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }

@__UNIQUE_ID_array615 = internal global [2 x ptr] [ptr @mptcp_crypto_suite, ptr null], align 4
@__UNIQUE_ID_suites616 = internal global ptr @__UNIQUE_ID_array615, section ".kunit_test_suites", align 4
@__UNIQUE_ID_file617 = internal constant [51 x i8] c"mptcp_crypto_test.file=net/mptcp/mptcp_crypto_test\00", section ".modinfo", align 1
@__UNIQUE_ID_license618 = internal constant [30 x i8] c"mptcp_crypto_test.license=GPL\00", section ".modinfo", align 1
@mptcp_crypto_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"mptcp-crypto\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @mptcp_crypto_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@mptcp_crypto_test_cases = internal global { [2 x %struct.kunit_case], [56 x i8] } { [2 x %struct.kunit_case] [%struct.kunit_case { ptr @mptcp_crypto_test_basic, ptr @.str, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mptcp_crypto_test_basic\00", [40 x i8] zeroinitializer }, align 32
@tests = internal constant { [3 x %struct.test_case], [60 x i8] } { [3 x %struct.test_case] [%struct.test_case { ptr @.str.6, ptr @.str.7, ptr @.str.8 }, %struct.test_case { ptr @.str.9, ptr @.str.10, ptr @.str.11 }, %struct.test_case { ptr @.str.12, ptr @.str.13, ptr @.str.14 }], [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/mptcp/crypto_test.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&hmac_hex[0]\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tests[i].result\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"0b0b0b0b0b0b0b0b\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"48692054\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"8385e24fb4235ac37556b6b886db106284a1da671699f46db1f235ec622dcafa\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aaaaaaaaaaaaaaaa\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dddddddd\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"2c5e219164ff1dca1c4a92318d847bb6b9d44492984e1eb71aff9022f71046e9\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"0102030405060708\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cdcdcdcd\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"e73b9ba9969969cefb04aa0d6df18ec2fcc075b6f23b4d8c4da736a5dbbc6e7d\00", [63 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"mptcp_crypto_suite\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 65, i32 27 }
@___asan_gen_.18 = private unnamed_addr constant [24 x i8] c"mptcp_crypto_test_cases\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 60, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 61, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"tests\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 15, i32 25 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 53, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 56, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 17, i32 10 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 18, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 19, i32 13 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 22, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 23, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 24, i32 13 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 27, i32 10 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 28, i32 10 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [27 x i8] c"../net/mptcp/crypto_test.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 29, i32 13 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_file617, ptr @__UNIQUE_ID_license618, ptr @__UNIQUE_ID_suites616, ptr @mptcp_crypto_suite, ptr @mptcp_crypto_test_cases, ptr @.str, ptr @tests, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_crypto_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptcp_crypto_test_cases to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tests to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptcp_crypto_test_basic(ptr noundef %test) #0 align 64 {
entry:
  %hmac = alloca [32 x i8], align 1
  %hmac_hex = alloca [65 x i8], align 1
  %msg = alloca [8 x i8], align 8
  %__assertion = alloca %struct.kunit_binary_str_assert, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hmac) #5
  %0 = call ptr @memset(ptr %hmac, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %hmac_hex) #5
  %1 = call ptr @memset(ptr %hmac_hex, i32 255, i32 65)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #5
  %2 = getelementptr inbounds [8 x i8], ptr %msg, i32 0, i32 4
  %arrayidx19 = getelementptr inbounds [65 x i8], ptr %hmac_hex, i32 0, i32 64
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_str_assert, ptr %__assertion, i32 0, i32 5
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %msg, align 8
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %i.046 = phi i32 [ 0, %entry ], [ %inc31, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x %struct.test_case], ptr @tests, i32 0, i32 %i.046
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  %arrayidx4 = getelementptr i8, ptr %5, i32 8
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx4, align 8
  %msg6 = getelementptr [3 x %struct.test_case], ptr @tests, i32 0, i32 %i.046, i32 1
  %10 = ptrtoint ptr %msg6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msg6, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %arrayidx10 = getelementptr i8, ptr %11, i32 4
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10, align 4
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %msg, align 8
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %2, align 4
  call void @mptcp_crypto_hmac_sha(i64 noundef %7, i64 noundef %9, ptr noundef nonnull %msg, i32 noundef 8, ptr noundef nonnull %hmac) #5
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.body
  %j.045 = phi i32 [ 0, %for.body ], [ %inc, %for.body16.for.body16_crit_edge ]
  %shl = shl nuw i32 %j.045, 1
  %arrayidx17 = getelementptr [65 x i8], ptr %hmac_hex, i32 0, i32 %shl
  %arrayidx18 = getelementptr [32 x i8], ptr %hmac, i32 0, i32 %j.045
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx18, align 1
  %conv = zext i8 %19 to i32
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx17, ptr noundef nonnull @.str.1, i32 noundef %conv)
  %inc = add nuw nsw i32 %j.045, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body16.for.body16_crit_edge

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body16

for.end:                                          ; preds = %for.body16
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx19, align 1
  %result = getelementptr [3 x %struct.test_case], ptr @tests, i32 0, i32 %i.046, i32 2
  %21 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %result, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %__assertion) #5
  %23 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %test, ptr %__assertion, align 4
  %24 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %type, align 4
  %25 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 56, ptr %line, align 4
  %26 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.2, ptr %file, align 4
  %27 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %message, align 4
  %28 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %va, align 4
  %29 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @kunit_binary_str_assert_format, ptr %format, align 4
  %30 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.3, ptr %operation, align 4
  %31 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.4, ptr %left_text, align 4
  %32 = ptrtoint ptr %left_value to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %hmac_hex, ptr %left_value, align 4
  %33 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.5, ptr %right_text, align 4
  %34 = ptrtoint ptr %right_value to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %22, ptr %right_value, align 4
  %call25 = call i32 @strcmp(ptr noundef nonnull %hmac_hex, ptr noundef %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp eq i32 %call25, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp26, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %__assertion) #5
  %inc31 = add nuw nsw i32 %i.046, 1
  %exitcond47.not = icmp eq i32 %inc31, 3
  br i1 %exitcond47.not, label %for.end32, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end32:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %hmac_hex) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hmac) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mptcp_crypto_hmac_sha(i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_str_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__UNIQUE_ID_suites616, !1, !"__UNIQUE_ID_suites616", i1 false, i1 false}
!1 = !{!"../net/mptcp/crypto_test.c", i32 70, i32 1}
!2 = !{ptr @__UNIQUE_ID_file617, !3, !"__UNIQUE_ID_file617", i1 false, i1 false}
!3 = !{!"../net/mptcp/crypto_test.c", i32 72, i32 1}
!4 = !{ptr @__UNIQUE_ID_license618, !3, !"__UNIQUE_ID_license618", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_array615, !1, !"__UNIQUE_ID_array615", i1 false, i1 false}
!6 = !{ptr @mptcp_crypto_suite, !7, !"mptcp_crypto_suite", i1 false, i1 false}
!7 = !{!"../net/mptcp/crypto_test.c", i32 65, i32 27}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/mptcp/crypto_test.c", i32 61, i32 2}
!10 = !{ptr @mptcp_crypto_test_cases, !11, !"mptcp_crypto_test_cases", i1 false, i1 false}
!11 = !{!"../net/mptcp/crypto_test.c", i32 60, i32 26}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/mptcp/crypto_test.c", i32 53, i32 31}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/mptcp/crypto_test.c", i32 56, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/mptcp/crypto_test.c", i32 17, i32 10}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/mptcp/crypto_test.c", i32 18, i32 10}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/mptcp/crypto_test.c", i32 19, i32 13}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/mptcp/crypto_test.c", i32 22, i32 10}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/mptcp/crypto_test.c", i32 23, i32 10}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/mptcp/crypto_test.c", i32 24, i32 13}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/mptcp/crypto_test.c", i32 27, i32 10}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/mptcp/crypto_test.c", i32 28, i32 10}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/mptcp/crypto_test.c", i32 29, i32 13}
!37 = !{ptr @tests, !38, !"tests", i1 false, i1 false}
!38 = !{!"../net/mptcp/crypto_test.c", i32 15, i32 25}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
