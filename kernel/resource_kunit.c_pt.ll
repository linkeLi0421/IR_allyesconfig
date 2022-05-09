; ModuleID = '/llk/IR_all_yes/kernel/resource_kunit.c_pt.bc'
source_filename = "../kernel/resource_kunit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.result = type { ptr, ptr, %struct.resource, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }

@__UNIQUE_ID_array182 = internal global [2 x ptr] [ptr @resource_test_suite, ptr null], align 4
@__UNIQUE_ID_suites183 = internal global ptr @__UNIQUE_ID_array182, section ".kunit_test_suites", align 4
@__UNIQUE_ID_file184 = internal constant [42 x i8] c"resource_kunit.file=kernel/resource_kunit\00", section ".modinfo", align 1
@__UNIQUE_ID_license185 = internal constant [27 x i8] c"resource_kunit.license=GPL\00", section ".modinfo", align 1
@resource_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"resource\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @resource_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@resource_test_cases = internal global { [3 x %struct.kunit_case], [36 x i8] } { [3 x %struct.kunit_case] [%struct.kunit_case { ptr @resource_test_union, ptr @.str, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @resource_test_intersection, ptr @.str.1, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"resource_test_union\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"resource_test_intersection\00", [37 x i8] zeroinitializer }, align 32
@results_for_union = internal global { [10 x %struct.result], [104 x i8] } { [10 x %struct.result] [%struct.result { ptr @r1, ptr @r0, %struct.resource { i32 0, i32 65535, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, i8 1 }, %struct.result { ptr @r2, ptr @r0, %struct.resource { i32 0, i32 65535, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, i8 1 }, %struct.result { ptr @r3, ptr @r0, %struct.resource { i32 0, i32 65535, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, i8 1 }, %struct.result { ptr @r4, ptr @r0, %struct.resource { i32 0, i32 65535, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, i8 1 }, %struct.result { ptr @r2, ptr @r1, %struct.resource zeroinitializer, i8 0 }, %struct.result { ptr @r3, ptr @r1, %struct.resource zeroinitializer, i8 0 }, %struct.result { ptr @r4, ptr @r1, %struct.resource { i32 4660, i32 28672, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, i8 1 }, %struct.result { ptr @r2, ptr @r3, %struct.resource zeroinitializer, i8 0 }, %struct.result { ptr @r2, ptr @r4, %struct.resource { i32 8192, i32 28672, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, i8 1 }, %struct.result { ptr @r3, ptr @r4, %struct.resource { i32 8192, i32 30874, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, i8 1 }], [104 x i8] zeroinitializer }, align 32
@r1 = internal global { %struct.resource, [32 x i8] } { %struct.resource { i32 4660, i32 9029, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@r0 = internal global { %struct.resource, [32 x i8] } { %struct.resource { i32 0, i32 65535, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@r2 = internal global { %struct.resource, [32 x i8] } { %struct.resource { i32 17767, i32 22136, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@r3 = internal global { %struct.resource, [32 x i8] } { %struct.resource { i32 26505, i32 30874, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@r4 = internal global { %struct.resource, [32 x i8] } { %struct.resource { i32 8192, i32 28672, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kernel/resource_kunit.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"exp_ret\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Resources %pR %pR\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"r->start\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"exp_r->start\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Start elements are not equal\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"r->end\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exp_r->end\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"End elements are not equal\00", [37 x i8] zeroinitializer }, align 32
@results_for_intersection = internal global { [10 x %struct.result], [104 x i8] } { [10 x %struct.result] [%struct.result { ptr @r1, ptr @r0, %struct.resource { i32 4660, i32 9029, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, i8 1 }, %struct.result { ptr @r2, ptr @r0, %struct.resource { i32 17767, i32 22136, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, i8 1 }, %struct.result { ptr @r3, ptr @r0, %struct.resource { i32 26505, i32 30874, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, i8 1 }, %struct.result { ptr @r4, ptr @r0, %struct.resource { i32 8192, i32 28672, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, i8 1 }, %struct.result { ptr @r2, ptr @r1, %struct.resource zeroinitializer, i8 0 }, %struct.result { ptr @r3, ptr @r1, %struct.resource zeroinitializer, i8 0 }, %struct.result { ptr @r4, ptr @r1, %struct.resource { i32 8192, i32 9029, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, i8 1 }, %struct.result { ptr @r2, ptr @r3, %struct.resource zeroinitializer, i8 0 }, %struct.result { ptr @r2, ptr @r4, %struct.resource { i32 17767, i32 22136, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, i8 1 }, %struct.result { ptr @r3, ptr @r4, %struct.resource { i32 26505, i32 28672, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, i8 1 }], [104 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"resource_test_suite\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 146, i32 27 }
@___asan_gen_.16 = private unnamed_addr constant [20 x i8] c"resource_test_cases\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 140, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 141, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 142, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"results_for_union\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 35, i32 22 }
@___asan_gen_.28 = private unnamed_addr constant [3 x i8] c"r1\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 23, i32 24 }
@___asan_gen_.31 = private unnamed_addr constant [3 x i8] c"r0\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 22, i32 24 }
@___asan_gen_.34 = private unnamed_addr constant [3 x i8] c"r2\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 24, i32 24 }
@___asan_gen_.37 = private unnamed_addr constant [3 x i8] c"r3\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 25, i32 24 }
@___asan_gen_.40 = private unnamed_addr constant [3 x i8] c"r4\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 26, i32 24 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 87, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 88, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 89, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [25 x i8] c"results_for_intersection\00", align 1
@___asan_gen_.77 = private constant [27 x i8] c"../kernel/resource_kunit.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 59, i32 22 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_file184, ptr @__UNIQUE_ID_license185, ptr @__UNIQUE_ID_suites183, ptr @resource_test_suite, ptr @resource_test_cases, ptr @.str, ptr @.str.1, ptr @results_for_union, ptr @r1, ptr @r0, ptr @r2, ptr @r3, ptr @r4, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @results_for_intersection], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resource_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resource_test_cases to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @results_for_union to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @results_for_intersection to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @resource_test_union(ptr noundef %test) #0 align 64 {
entry:
  %result.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.resource, ptr %result.i, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %resource_do_union_test.exit.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %resource_do_union_test.exit.do.body_crit_edge ]
  %arrayidx = getelementptr %struct.result, ptr @results_for_union, i32 %i.0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %result.i) #4
  %1 = call ptr @memset(ptr %result.i, i32 0, i32 32)
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %r2.i = getelementptr %struct.result, ptr @results_for_union, i32 %i.0, i32 1
  %4 = ptrtoint ptr %r2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %r2.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %end.i.i.i = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not.i.i.i = icmp ugt i32 %7, %9
  br i1 %cmp.not.i.i.i, label %do.body.resource_union.exit.i_crit_edge, label %resource_overlaps.exit.i.i

do.body.resource_union.exit.i_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %resource_union.exit.i

resource_overlaps.exit.i.i:                       ; preds = %do.body
  %end1.i.i.i = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %end1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end1.i.i.i, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp3.i.not.i.i = icmp ult i32 %11, %13
  br i1 %cmp3.i.not.i.i, label %resource_overlaps.exit.i.i.resource_union.exit.i_crit_edge, label %if.end.i.i

resource_overlaps.exit.i.i.resource_union.exit.i_crit_edge: ; preds = %resource_overlaps.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %resource_union.exit.i

if.end.i.i:                                       ; preds = %resource_overlaps.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = tail call i32 @llvm.umin.i32(i32 %7, i32 %13) #4
  %15 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %result.i, align 4
  %16 = tail call i32 @llvm.umax.i32(i32 %11, i32 %9) #4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %0, align 4
  br label %resource_union.exit.i

resource_union.exit.i:                            ; preds = %if.end.i.i, %resource_overlaps.exit.i.i.resource_union.exit.i_crit_edge, %do.body.resource_union.exit.i_crit_edge
  %18 = phi i1 [ false, %resource_overlaps.exit.i.i.resource_union.exit.i_crit_edge ], [ true, %if.end.i.i ], [ false, %do.body.resource_union.exit.i_crit_edge ]
  %ret1.i = getelementptr %struct.result, ptr @results_for_union, i32 %i.0, i32 3
  %19 = ptrtoint ptr %ret1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ret1.i, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool2.i = icmp ne i8 %20, 0
  %r3.i = getelementptr %struct.result, ptr @results_for_union, i32 %i.0, i32 2
  call fastcc void @resource_do_test(ptr noundef %test, i1 noundef zeroext %18, ptr noundef nonnull %result.i, i1 noundef zeroext %tobool2.i, ptr noundef %r3.i, ptr noundef %3, ptr noundef %5) #4
  %21 = call ptr @memset(ptr %result.i, i32 0, i32 32)
  %22 = ptrtoint ptr %r2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %r2.i, align 4
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %23, align 4
  %end.i.i29.i = getelementptr inbounds %struct.resource, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %end.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end.i.i29.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp.not.i.i30.i = icmp ugt i32 %27, %29
  br i1 %cmp.not.i.i30.i, label %resource_union.exit.i.resource_do_union_test.exit_crit_edge, label %resource_overlaps.exit.i33.i

resource_union.exit.i.resource_do_union_test.exit_crit_edge: ; preds = %resource_union.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %resource_do_union_test.exit

resource_overlaps.exit.i33.i:                     ; preds = %resource_union.exit.i
  %end1.i.i31.i = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 1
  %30 = ptrtoint ptr %end1.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end1.i.i31.i, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp3.i.not.i32.i = icmp ult i32 %31, %33
  br i1 %cmp3.i.not.i32.i, label %resource_overlaps.exit.i33.i.resource_do_union_test.exit_crit_edge, label %if.end.i35.i

resource_overlaps.exit.i33.i.resource_do_union_test.exit_crit_edge: ; preds = %resource_overlaps.exit.i33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %resource_do_union_test.exit

if.end.i35.i:                                     ; preds = %resource_overlaps.exit.i33.i
  call void @__sanitizer_cov_trace_pc() #6
  %34 = tail call i32 @llvm.umin.i32(i32 %27, i32 %33) #4
  %35 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %result.i, align 4
  %36 = tail call i32 @llvm.umax.i32(i32 %31, i32 %29) #4
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %0, align 4
  br label %resource_do_union_test.exit

resource_do_union_test.exit:                      ; preds = %if.end.i35.i, %resource_overlaps.exit.i33.i.resource_do_union_test.exit_crit_edge, %resource_union.exit.i.resource_do_union_test.exit_crit_edge
  %38 = phi i1 [ false, %resource_overlaps.exit.i33.i.resource_do_union_test.exit_crit_edge ], [ true, %if.end.i35.i ], [ false, %resource_union.exit.i.resource_do_union_test.exit_crit_edge ]
  %39 = ptrtoint ptr %ret1.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ret1.i, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool12.i = icmp ne i8 %40, 0
  call fastcc void @resource_do_test(ptr noundef %test, i1 noundef zeroext %38, ptr noundef nonnull %result.i, i1 noundef zeroext %tobool12.i, ptr noundef %r3.i, ptr noundef %23, ptr noundef %25) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %result.i) #4
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.end, label %resource_do_union_test.exit.do.body_crit_edge

resource_do_union_test.exit.do.body_crit_edge:    ; preds = %resource_do_union_test.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %resource_do_union_test.exit
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @resource_test_intersection(ptr noundef %test) #0 align 64 {
entry:
  %result.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.resource, ptr %result.i, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %resource_do_intersection_test.exit.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %resource_do_intersection_test.exit.do.body_crit_edge ]
  %arrayidx = getelementptr %struct.result, ptr @results_for_intersection, i32 %i.0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %result.i) #4
  %1 = call ptr @memset(ptr %result.i, i32 0, i32 32)
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %r2.i = getelementptr %struct.result, ptr @results_for_intersection, i32 %i.0, i32 1
  %4 = ptrtoint ptr %r2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %r2.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %end.i.i.i = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not.i.i.i = icmp ugt i32 %7, %9
  br i1 %cmp.not.i.i.i, label %do.body.resource_intersection.exit.i_crit_edge, label %resource_overlaps.exit.i.i

do.body.resource_intersection.exit.i_crit_edge:   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %resource_intersection.exit.i

resource_overlaps.exit.i.i:                       ; preds = %do.body
  %end1.i.i.i = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %end1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end1.i.i.i, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp3.i.not.i.i = icmp ult i32 %11, %13
  br i1 %cmp3.i.not.i.i, label %resource_overlaps.exit.i.i.resource_intersection.exit.i_crit_edge, label %if.end.i.i

resource_overlaps.exit.i.i.resource_intersection.exit.i_crit_edge: ; preds = %resource_overlaps.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %resource_intersection.exit.i

if.end.i.i:                                       ; preds = %resource_overlaps.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = tail call i32 @llvm.umax.i32(i32 %7, i32 %13) #4
  %15 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %result.i, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %11, i32 %9) #4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %0, align 4
  br label %resource_intersection.exit.i

resource_intersection.exit.i:                     ; preds = %if.end.i.i, %resource_overlaps.exit.i.i.resource_intersection.exit.i_crit_edge, %do.body.resource_intersection.exit.i_crit_edge
  %18 = phi i1 [ false, %resource_overlaps.exit.i.i.resource_intersection.exit.i_crit_edge ], [ true, %if.end.i.i ], [ false, %do.body.resource_intersection.exit.i_crit_edge ]
  %ret1.i = getelementptr %struct.result, ptr @results_for_intersection, i32 %i.0, i32 3
  %19 = ptrtoint ptr %ret1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ret1.i, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool2.i = icmp ne i8 %20, 0
  %r3.i = getelementptr %struct.result, ptr @results_for_intersection, i32 %i.0, i32 2
  call fastcc void @resource_do_test(ptr noundef %test, i1 noundef zeroext %18, ptr noundef nonnull %result.i, i1 noundef zeroext %tobool2.i, ptr noundef %r3.i, ptr noundef %3, ptr noundef %5) #4
  %21 = call ptr @memset(ptr %result.i, i32 0, i32 32)
  %22 = ptrtoint ptr %r2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %r2.i, align 4
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %23, align 4
  %end.i.i29.i = getelementptr inbounds %struct.resource, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %end.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end.i.i29.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp.not.i.i30.i = icmp ugt i32 %27, %29
  br i1 %cmp.not.i.i30.i, label %resource_intersection.exit.i.resource_do_intersection_test.exit_crit_edge, label %resource_overlaps.exit.i33.i

resource_intersection.exit.i.resource_do_intersection_test.exit_crit_edge: ; preds = %resource_intersection.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %resource_do_intersection_test.exit

resource_overlaps.exit.i33.i:                     ; preds = %resource_intersection.exit.i
  %end1.i.i31.i = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 1
  %30 = ptrtoint ptr %end1.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %end1.i.i31.i, align 4
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp3.i.not.i32.i = icmp ult i32 %31, %33
  br i1 %cmp3.i.not.i32.i, label %resource_overlaps.exit.i33.i.resource_do_intersection_test.exit_crit_edge, label %if.end.i35.i

resource_overlaps.exit.i33.i.resource_do_intersection_test.exit_crit_edge: ; preds = %resource_overlaps.exit.i33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %resource_do_intersection_test.exit

if.end.i35.i:                                     ; preds = %resource_overlaps.exit.i33.i
  call void @__sanitizer_cov_trace_pc() #6
  %34 = tail call i32 @llvm.umax.i32(i32 %27, i32 %33) #4
  %35 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %result.i, align 4
  %36 = tail call i32 @llvm.umin.i32(i32 %31, i32 %29) #4
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %0, align 4
  br label %resource_do_intersection_test.exit

resource_do_intersection_test.exit:               ; preds = %if.end.i35.i, %resource_overlaps.exit.i33.i.resource_do_intersection_test.exit_crit_edge, %resource_intersection.exit.i.resource_do_intersection_test.exit_crit_edge
  %38 = phi i1 [ false, %resource_overlaps.exit.i33.i.resource_do_intersection_test.exit_crit_edge ], [ true, %if.end.i35.i ], [ false, %resource_intersection.exit.i.resource_do_intersection_test.exit_crit_edge ]
  %39 = ptrtoint ptr %ret1.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ret1.i, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool12.i = icmp ne i8 %40, 0
  call fastcc void @resource_do_test(ptr noundef %test, i1 noundef zeroext %38, ptr noundef nonnull %result.i, i1 noundef zeroext %tobool12.i, ptr noundef %r3.i, ptr noundef %23, ptr noundef %25) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %result.i) #4
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.end, label %resource_do_intersection_test.exit.do.body_crit_edge

resource_do_intersection_test.exit.do.body_crit_edge: ; preds = %resource_do_intersection_test.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %resource_do_intersection_test.exit
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @resource_do_test(ptr noundef %test, i1 noundef zeroext %ret, ptr nocapture noundef readonly %r, i1 noundef zeroext %exp_ret, ptr nocapture noundef readonly %exp_r, ptr noundef %r1, ptr noundef %r2) unnamed_addr #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion23 = alloca %struct.kunit_binary_assert, align 8
  %__assertion52 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #4
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
  store i32 87, ptr %line, align 8
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
  store ptr @.str.3, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.4, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = zext i1 %ret to i64
  %11 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %12 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.5, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv9 = zext i1 %exp_ret to i64
  %13 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv9, ptr %right_value, align 8
  %14 = xor i1 %ret, %exp_ret
  %cmp = xor i1 %14, true
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef nonnull @.str.6, ptr noundef %r1, ptr noundef %r2) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #4
  %15 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %r, align 4
  %17 = ptrtoint ptr %exp_r to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %exp_r, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion23) #4
  %19 = getelementptr inbounds i8, ptr %__assertion23, i32 32
  %20 = call ptr @memset(ptr %19, i32 255, i32 24)
  %21 = ptrtoint ptr %__assertion23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %test, ptr %__assertion23, align 8
  %type26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion23, i32 0, i32 1
  %22 = ptrtoint ptr %type26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %type26, align 4
  %line27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion23, i32 0, i32 2
  %23 = ptrtoint ptr %line27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 88, ptr %line27, align 8
  %file28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion23, i32 0, i32 3
  %24 = ptrtoint ptr %file28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.2, ptr %file28, align 4
  %message29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion23, i32 0, i32 4
  %25 = ptrtoint ptr %message29 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %message29, align 8
  %va31 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion23, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %va31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %va31, align 4
  %format32 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion23, i32 0, i32 5
  %27 = ptrtoint ptr %format32 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @kunit_binary_assert_format, ptr %format32, align 8
  %operation33 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion23, i32 0, i32 1
  %28 = ptrtoint ptr %operation33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.3, ptr %operation33, align 4
  %left_text34 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion23, i32 0, i32 2
  %29 = ptrtoint ptr %left_text34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.7, ptr %left_text34, align 8
  %left_value35 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion23, i32 0, i32 3
  %conv36 = zext i32 %16 to i64
  %30 = ptrtoint ptr %left_value35 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv36, ptr %left_value35, align 8
  %right_text37 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion23, i32 0, i32 4
  %31 = ptrtoint ptr %right_text37 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.8, ptr %right_text37, align 8
  %right_value38 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion23, i32 0, i32 5
  %conv39 = zext i32 %18 to i64
  %32 = ptrtoint ptr %right_value38 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv39, ptr %right_value38, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp41 = icmp eq i32 %16, %18
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion23, i1 noundef zeroext %cmp41, ptr noundef nonnull @.str.9) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion23) #4
  %end = getelementptr inbounds %struct.resource, ptr %r, i32 0, i32 1
  %33 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %end, align 4
  %end50 = getelementptr inbounds %struct.resource, ptr %exp_r, i32 0, i32 1
  %35 = ptrtoint ptr %end50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %end50, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion52) #4
  %37 = getelementptr inbounds i8, ptr %__assertion52, i32 32
  %38 = call ptr @memset(ptr %37, i32 255, i32 24)
  %39 = ptrtoint ptr %__assertion52 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %test, ptr %__assertion52, align 8
  %type55 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 1
  %40 = ptrtoint ptr %type55 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %type55, align 4
  %line56 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 2
  %41 = ptrtoint ptr %line56 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 89, ptr %line56, align 8
  %file57 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 3
  %42 = ptrtoint ptr %file57 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.2, ptr %file57, align 4
  %message58 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 4
  %43 = ptrtoint ptr %message58 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %message58, align 8
  %va60 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %va60 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %va60, align 4
  %format61 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion52, i32 0, i32 5
  %45 = ptrtoint ptr %format61 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @kunit_binary_assert_format, ptr %format61, align 8
  %operation62 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion52, i32 0, i32 1
  %46 = ptrtoint ptr %operation62 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.3, ptr %operation62, align 4
  %left_text63 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion52, i32 0, i32 2
  %47 = ptrtoint ptr %left_text63 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.10, ptr %left_text63, align 8
  %left_value64 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion52, i32 0, i32 3
  %conv65 = zext i32 %34 to i64
  %48 = ptrtoint ptr %left_value64 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv65, ptr %left_value64, align 8
  %right_text66 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion52, i32 0, i32 4
  %49 = ptrtoint ptr %right_text66 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.11, ptr %right_text66, align 8
  %right_value67 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion52, i32 0, i32 5
  %conv68 = zext i32 %36 to i64
  %50 = ptrtoint ptr %right_value67 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv68, ptr %right_value67, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp70 = icmp eq i32 %34, %36
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion52, i1 noundef zeroext %cmp70, ptr noundef nonnull @.str.12) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion52) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__UNIQUE_ID_suites183, !1, !"__UNIQUE_ID_suites183", i1 false, i1 false}
!1 = !{!"../kernel/resource_kunit.c", i32 150, i32 1}
!2 = !{ptr @__UNIQUE_ID_file184, !3, !"__UNIQUE_ID_file184", i1 false, i1 false}
!3 = !{!"../kernel/resource_kunit.c", i32 152, i32 1}
!4 = !{ptr @__UNIQUE_ID_license185, !3, !"__UNIQUE_ID_license185", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_array182, !1, !"__UNIQUE_ID_array182", i1 false, i1 false}
!6 = !{ptr @resource_test_suite, !7, !"resource_test_suite", i1 false, i1 false}
!7 = !{!"../kernel/resource_kunit.c", i32 146, i32 27}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/resource_kunit.c", i32 141, i32 2}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/resource_kunit.c", i32 142, i32 2}
!12 = !{ptr @resource_test_cases, !13, !"resource_test_cases", i1 false, i1 false}
!13 = !{!"../kernel/resource_kunit.c", i32 140, i32 26}
!14 = !{ptr @results_for_union, !15, !"results_for_union", i1 false, i1 false}
!15 = !{!"../kernel/resource_kunit.c", i32 35, i32 22}
!16 = !{ptr @r1, !17, !"r1", i1 false, i1 false}
!17 = !{!"../kernel/resource_kunit.c", i32 23, i32 24}
!18 = !{ptr @r0, !19, !"r0", i1 false, i1 false}
!19 = !{!"../kernel/resource_kunit.c", i32 22, i32 24}
!20 = !{ptr @r2, !21, !"r2", i1 false, i1 false}
!21 = !{!"../kernel/resource_kunit.c", i32 24, i32 24}
!22 = !{ptr @r3, !23, !"r3", i1 false, i1 false}
!23 = !{!"../kernel/resource_kunit.c", i32 25, i32 24}
!24 = !{ptr @r4, !25, !"r4", i1 false, i1 false}
!25 = !{!"../kernel/resource_kunit.c", i32 26, i32 24}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/resource_kunit.c", i32 87, i32 2}
!28 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/resource_kunit.c", i32 88, i32 2}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/resource_kunit.c", i32 89, i32 2}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @results_for_intersection, !41, !"results_for_intersection", i1 false, i1 false}
!41 = !{!"../kernel/resource_kunit.c", i32 59, i32 22}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i8 0, i8 2}
