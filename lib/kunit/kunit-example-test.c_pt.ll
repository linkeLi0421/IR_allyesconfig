; ModuleID = '/llk/IR_all_yes/lib/kunit/kunit-example-test.c_pt.bc'
source_filename = "../lib/kunit/kunit-example-test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kunit = type { ptr, ptr, ptr, %struct.kunit_try_catch, ptr, i32, %struct.spinlock, i32, %struct.list_head, [256 x i8] }
%struct.kunit_try_catch = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }

@__UNIQUE_ID_array176 = internal global [2 x ptr] [ptr @example_test_suite, ptr null], align 4
@__UNIQUE_ID_suites177 = internal global ptr @__UNIQUE_ID_array176, section ".kunit_test_suites", align 4
@__UNIQUE_ID_file178 = internal constant [53 x i8] c"kunit_example_test.file=lib/kunit/kunit-example-test\00", section ".modinfo", align 1
@__UNIQUE_ID_license179 = internal constant [34 x i8] c"kunit_example_test.license=GPL v2\00", section ".modinfo", align 1
@example_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"example\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @example_test_init, ptr null, ptr @example_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@example_test_cases = internal global { [4 x %struct.kunit_case], [48 x i8] } { [4 x %struct.kunit_case] [%struct.kunit_case { ptr @example_simple_test, ptr @.str.4, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @example_skip_test, ptr @.str.5, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @example_mark_skipped_test, ptr @.str.6, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [48 x i8] zeroinitializer }, align 32
@example_test_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016    # %s: initializing\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"example_test_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lib/kunit/kunit-example-test.c\00", [33 x i8] zeroinitializer }, align 32
@example_test_init._entry_ptr = internal global ptr @example_test_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"    # %s: initializing\0A\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"example_simple_test\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"example_skip_test\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"example_mark_skipped_test\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1 + 1\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@example_skip_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016    # %s: You should not see a line below.\00", [51 x i8] zeroinitializer }, align 32
@example_skip_test._entry_ptr = internal global ptr @example_skip_test._entry, section ".printk_index", align 4
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"    # %s: You should not see a line below.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"this test should be skipped\00", [36 x i8] zeroinitializer }, align 32
@example_mark_skipped_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016    # %s: You should see a line below.\00", [55 x i8] zeroinitializer }, align 32
@example_mark_skipped_test._entry_ptr = internal global ptr @example_mark_skipped_test._entry, section ".printk_index", align 4
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"    # %s: You should see a line below.\0A\00", [56 x i8] zeroinitializer }, align 32
@example_mark_skipped_test._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016    # %s: You should see this line.\00", [58 x i8] zeroinitializer }, align 32
@example_mark_skipped_test._entry_ptr.18 = internal global ptr @example_mark_skipped_test._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"    # %s: You should see this line.\0A\00", [59 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"example_test_suite\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 109, i32 27 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"example_test_cases\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 76, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 38, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 83, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 84, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 85, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 29, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 49, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 52, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 64, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [34 x i8] c"../lib/kunit/kunit-example-test.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 70, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_file178, ptr @__UNIQUE_ID_license179, ptr @__UNIQUE_ID_suites177, ptr @example_mark_skipped_test._entry, ptr @example_mark_skipped_test._entry.16, ptr @example_mark_skipped_test._entry_ptr, ptr @example_mark_skipped_test._entry_ptr.18, ptr @example_skip_test._entry, ptr @example_skip_test._entry_ptr, ptr @example_test_init._entry, ptr @example_test_init._entry_ptr, ptr @example_test_suite, ptr @example_test_cases, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_test_cases to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_test_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_skip_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_mark_skipped_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_mark_skipped_test._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @example_test_init(ptr nocapture noundef readonly %test) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %1) #9
  %log = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 2
  %2 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log, align 4
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_log_append(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @example_simple_test(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #6
  %0 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  %2 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %4 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 29, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.2, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %6 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %8 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %9 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.7, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.8, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %11 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 2, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %12 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.9, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %13 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 2, ptr %right_value, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext true, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #6
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @example_skip_test(ptr noundef %test) #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %1) #9
  %log = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 2
  %2 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log, align 4
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef %5) #6
  %status = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 7
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 2, ptr %status, align 4
  %status_comment = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 9
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %status_comment, i32 noundef 256, ptr noundef nonnull @.str.12) #6
  %try_catch = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 3
  call void @__asan_handle_no_return()
  tail call void @kunit_try_catch_throw(ptr noundef %try_catch) #10
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @example_mark_skipped_test(ptr noundef %test) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %1) #9
  %log = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 2
  %2 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log, align 4
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef %5) #6
  %status = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 7
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 2, ptr %status, align 4
  %status_comment = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 9
  %call11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %status_comment, i32 noundef 256, ptr noundef nonnull @.str.12) #6
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %8) #9
  %9 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %log, align 4
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %10, ptr noundef nonnull @.str.19, ptr noundef %12) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @kunit_try_catch_throw(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !11, !12, !13, !14, !15, !17, !19, !21, !23, !25, !26, !27, !29, !30, !31, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__UNIQUE_ID_suites177, !1, !"__UNIQUE_ID_suites177", i1 false, i1 false}
!1 = !{!"../lib/kunit/kunit-example-test.c", i32 119, i32 1}
!2 = !{ptr @__UNIQUE_ID_file178, !3, !"__UNIQUE_ID_file178", i1 false, i1 false}
!3 = !{!"../lib/kunit/kunit-example-test.c", i32 121, i32 1}
!4 = !{ptr @__UNIQUE_ID_license179, !3, !"__UNIQUE_ID_license179", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_array176, !1, !"__UNIQUE_ID_array176", i1 false, i1 false}
!6 = !{ptr @example_test_suite, !7, !"example_test_suite", i1 false, i1 false}
!7 = !{!"../lib/kunit/kunit-example-test.c", i32 109, i32 27}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/kunit/kunit-example-test.c", i32 38, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @example_test_init._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @example_test_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../lib/kunit/kunit-example-test.c", i32 83, i32 2}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../lib/kunit/kunit-example-test.c", i32 84, i32 2}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../lib/kunit/kunit-example-test.c", i32 85, i32 2}
!21 = !{ptr @example_test_cases, !22, !"example_test_cases", i1 false, i1 false}
!22 = !{!"../lib/kunit/kunit-example-test.c", i32 76, i32 26}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../lib/kunit/kunit-example-test.c", i32 29, i32 2}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../lib/kunit/kunit-example-test.c", i32 49, i32 2}
!29 = !{ptr @example_skip_test._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @example_skip_test._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../lib/kunit/kunit-example-test.c", i32 52, i32 2}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../lib/kunit/kunit-example-test.c", i32 55, i32 2}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../lib/kunit/kunit-example-test.c", i32 64, i32 2}
!38 = !{ptr @example_mark_skipped_test._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @example_mark_skipped_test._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../lib/kunit/kunit-example-test.c", i32 70, i32 2}
!43 = !{ptr @example_mark_skipped_test._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @example_mark_skipped_test._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
