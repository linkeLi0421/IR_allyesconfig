; ModuleID = '/llk/IR_all_yes/lib/test_uuid.c_pt.bc'
source_filename = "../lib/test_uuid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.test_uuid_data = type { ptr, %struct.guid_t, %struct.uuid_t }
%struct.guid_t = type { [16 x i8] }
%struct.uuid_t = type { [16 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_test_uuid__106_124_test_uuid_init6 = internal global ptr @test_uuid_init, section ".initcall6.init", align 4
@__exitcall_test_uuid_exit = internal global ptr @test_uuid_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author107 = internal constant [69 x i8] c"test_uuid.author=Andy Shevchenko <andriy.shevchenko@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file108 = internal constant [29 x i8] c"test_uuid.file=lib/test_uuid\00", section ".modinfo", align 1
@__UNIQUE_ID_license109 = internal constant [31 x i8] c"test_uuid.license=Dual BSD/GPL\00", section ".modinfo", align 1
@test_uuid_test_data = internal constant { [3 x %struct.test_uuid_data], [52 x i8] } { [3 x %struct.test_uuid_data] [%struct.test_uuid_data { ptr @.str.19, %struct.guid_t { [16 x i8] c"\95I?\C3\017\0EE\9F\BF j.\98\E5v" }, %struct.uuid_t { [16 x i8] c"\C3?I\957\01E\0E\9F\BF j.\98\E5v" } }, %struct.test_uuid_data { ptr @.str.20, %struct.guid_t { [16 x i8] c"\1C7\B4d\C1w\F9H\82!)\F0T\FC\02;" }, %struct.uuid_t { [16 x i8] c"d\B47\1Cw\C1H\F9\82!)\F0T\FC\02;" } }, %struct.test_uuid_data { ptr @.str.21, %struct.guid_t { [16 x i8] c"\FF\DD\B4\0CE\A5\01D\9D\06h\8A\F5>\7F\84" }, %struct.uuid_t { [16 x i8] c"\0C\B4\DD\FF\A5ED\01\9D\06h\8A\F5>\7F\84" } }], [52 x i8] zeroinitializer }, align 32
@test_uuid_wrong_data = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25], [20 x i8] zeroinitializer }, align 32
@failed_tests = internal unnamed_addr global i32 0, section ".init.data", align 4
@test_uuid_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016test_uuid: all %u tests passed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"test_uuid_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lib/test_uuid.c\00", [16 x i8] zeroinitializer }, align 32
@test_uuid_init._entry_ptr = internal global ptr @test_uuid_init._entry, section ".printk_index", align 4
@total_tests = internal unnamed_addr global i32 0, section ".init.data", align 4
@test_uuid_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013test_uuid: failed %u out of %u tests\0A\00", [56 x i8] zeroinitializer }, align 32
@test_uuid_init._entry_ptr.5 = internal global ptr @test_uuid_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"conversion\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pUl\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmp\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pUb\00", [27 x i8] zeroinitializer }, align 32
@test_uuid_failed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013test_uuid: %s test #%u %s %s data: '%s'\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_uuid_failed\00", [47 x i8] zeroinitializer }, align 32
@test_uuid_failed._entry_ptr = internal global ptr @test_uuid_failed._entry, section ".printk_index", align 4
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"passed on wrong\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"failed on\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BE\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LE\00", [29 x i8] zeroinitializer }, align 32
@test_uuid_failed._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013test_uuid: %s test #%u actual data: '%s'\0A\00", [52 x i8] zeroinitializer }, align 32
@test_uuid_failed._entry_ptr.18 = internal global ptr @test_uuid_failed._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"c33f4995-3701-450e-9fbf-206a2e98e576\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"64b4371c-77c1-48f9-8221-29f054fc023b\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"0cb4ddff-a545-4401-9d06-688af53e7f84\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"negative\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"c33f4995-3701-450e-9fbf206a2e98e576 \00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"64b4371c-77c1-48f9-8221-29f054XX023b\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"0cb4ddff-a545-4401-9d06-688af53e\00", [63 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"test_uuid_test_data\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 18, i32 36 }
@___asan_gen_.29 = private unnamed_addr constant [21 x i8] c"test_uuid_wrong_data\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 36, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 118, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 120, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 71, i32 20 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 75, i32 16 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 76, i32 20 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 86, i32 16 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 48, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 55, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 20, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 25, i32 11 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 30, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 99, i32 20 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 37, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 38, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [19 x i8] c"../lib/test_uuid.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 39, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author107, ptr @__UNIQUE_ID_file108, ptr @__UNIQUE_ID_license109, ptr @__exitcall_test_uuid_exit, ptr @__initcall__kmod_test_uuid__106_124_test_uuid_init6, ptr @test_uuid_exit, ptr @test_uuid_failed._entry, ptr @test_uuid_failed._entry.16, ptr @test_uuid_failed._entry_ptr, ptr @test_uuid_failed._entry_ptr.18, ptr @test_uuid_init._entry, ptr @test_uuid_init._entry.3, ptr @test_uuid_init._entry_ptr, ptr @test_uuid_init._entry_ptr.5, ptr @test_uuid_test_data, ptr @test_uuid_wrong_data, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_uuid_test_data to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_uuid_wrong_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_uuid_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_uuid_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_uuid_failed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_uuid_failed._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_uuid_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x %struct.test_uuid_data], ptr @test_uuid_test_data, i32 0, i32 %i.019
  tail call fastcc void @test_uuid_test(ptr noundef %arrayidx) #9
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.body.for.body3_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.body3_crit_edge:                     ; preds = %for.body
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.body.for.body3_crit_edge
  %i.120 = phi i32 [ %inc6, %for.body3.for.body3_crit_edge ], [ 0, %for.body.for.body3_crit_edge ]
  %arrayidx4 = getelementptr [3 x ptr], ptr @test_uuid_wrong_data, i32 0, i32 %i.120
  %0 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx4, align 4
  tail call fastcc void @test_uuid_wrong(ptr noundef %1) #9
  %inc6 = add nuw nsw i32 %i.120, 1
  %exitcond21.not = icmp eq i32 %inc6, 3
  br i1 %exitcond21.not, label %for.end7, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3

for.end7:                                         ; preds = %for.body3
  %2 = load i32, ptr @failed_tests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp8 = icmp eq i32 %2, 0
  %3 = load i32, ptr @total_tests, align 4
  br i1 %cmp8, label %do.end, label %do.end11

do.end:                                           ; preds = %for.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %3) #10
  br label %if.end

do.end11:                                         ; preds = %for.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %2, i32 noundef %3) #10
  br label %if.end

if.end:                                           ; preds = %do.end11, %do.end
  %4 = load i32, ptr @failed_tests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @test_uuid_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_uuid_test(ptr nocapture noundef readonly %data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %le = alloca %struct.guid_t, align 1
  %be = alloca %struct.uuid_t, align 1
  %buf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %le) #11
  %0 = call ptr @memset(ptr %le, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %be) #11
  %1 = call ptr @memset(ptr %be, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %buf) #11
  %2 = call ptr @memset(ptr %buf, i32 255, i32 48)
  %3 = load i32, ptr @total_tests, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr @total_tests, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %call = call i32 @guid_parse(ptr noundef %5, ptr noundef nonnull %le) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = load i32, ptr @total_tests, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6, i32 noundef %8, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15, ptr noundef %7) #10
  %9 = load i32, ptr @failed_tests, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr @failed_tests, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = load i32, ptr @total_tests, align 4
  %inc2 = add i32 %10, 1
  store i32 %inc2, ptr @total_tests, align 4
  %le3 = getelementptr inbounds %struct.test_uuid_data, ptr %data, i32 0, i32 1
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %le3, ptr noundef nonnull dereferenceable(16) %le, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.7, ptr noundef nonnull %le)
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  call fastcc void @test_uuid_failed(ptr noundef nonnull @.str.8, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %12, ptr noundef nonnull %buf) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %13 = load i32, ptr @total_tests, align 4
  %inc10 = add i32 %13, 1
  store i32 %inc10, ptr @total_tests, align 4
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %call12 = call i32 @uuid_parse(ptr noundef %15, ptr noundef nonnull %be) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end9.if.end16_crit_edge, label %if.then14

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %18 = load i32, ptr @total_tests, align 4
  %call.i33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6, i32 noundef %18, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef %17) #10
  %19 = load i32, ptr @failed_tests, align 4
  %inc.i34 = add i32 %19, 1
  store i32 %inc.i34, ptr @failed_tests, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end9.if.end16_crit_edge
  %20 = load i32, ptr @total_tests, align 4
  %inc17 = add i32 %20, 1
  store i32 %inc17, ptr @total_tests, align 4
  %be18 = getelementptr inbounds %struct.test_uuid_data, ptr %data, i32 0, i32 2
  %bcmp.i35 = call i32 @bcmp(ptr noundef dereferenceable(16) %be18, ptr noundef nonnull dereferenceable(16) %be, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i35)
  %cmp.i36 = icmp eq i32 %bcmp.i35, 0
  br i1 %cmp.i36, label %if.end16.if.end25_crit_edge, label %if.then20

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.9, ptr noundef nonnull %be)
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  call fastcc void @test_uuid_failed(ptr noundef nonnull @.str.8, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %22, ptr noundef nonnull %buf) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end16.if.end25_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %buf) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %be) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %le) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_uuid_wrong(ptr noundef %data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %le = alloca %struct.guid_t, align 1
  %be = alloca %struct.uuid_t, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %le) #11
  %0 = call ptr @memset(ptr %le, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %be) #11
  %1 = call ptr @memset(ptr %be, i32 255, i32 16)
  %2 = load i32, ptr @total_tests, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr @total_tests, align 4
  %call = call i32 @guid_parse(ptr noundef %data, ptr noundef nonnull %le) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = load i32, ptr @total_tests, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.22, i32 noundef %3, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.15, ptr noundef %data) #10
  %4 = load i32, ptr @failed_tests, align 4
  %inc.i = add i32 %4, 1
  store i32 %inc.i, ptr @failed_tests, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = load i32, ptr @total_tests, align 4
  %inc1 = add i32 %5, 1
  store i32 %inc1, ptr @total_tests, align 4
  %call2 = call i32 @uuid_parse(ptr noundef %data, ptr noundef nonnull %be) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = load i32, ptr @total_tests, align 4
  %call.i9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.22, i32 noundef %6, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.14, ptr noundef %data) #10
  %7 = load i32, ptr @failed_tests, align 4
  %inc.i10 = add i32 %7, 1
  store i32 %inc.i10, ptr @failed_tests, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %be) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %le) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @guid_parse(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_uuid_failed(ptr noundef %prefix, i1 noundef zeroext %wrong, i1 noundef zeroext %be, ptr noundef %data, ptr noundef %actual) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load i32, ptr @total_tests, align 4
  %cond = select i1 %wrong, ptr @.str.12, ptr @.str.13
  %cond3 = select i1 %be, ptr @.str.14, ptr @.str.15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %prefix, i32 noundef %0, ptr noundef nonnull %cond, ptr noundef nonnull %cond3, ptr noundef %data) #10
  %tobool4.not = icmp eq ptr %actual, null
  br i1 %tobool4.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %actual to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %actual, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool5.not = icmp eq i8 %2, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %do.end7

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end7:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %3 = load i32, ptr @total_tests, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %prefix, i32 noundef %3, ptr noundef nonnull %actual) #10
  br label %if.end

if.end:                                           ; preds = %do.end7, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = load i32, ptr @failed_tests, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr @failed_tests, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uuid_parse(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind uwtable(sync) }
attributes #8 = { nomerge }
attributes #9 = { cold }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_test_uuid__106_124_test_uuid_init6, !1, !"__initcall__kmod_test_uuid__106_124_test_uuid_init6", i1 false, i1 false}
!1 = !{!"../lib/test_uuid.c", i32 124, i32 1}
!2 = !{ptr @__exitcall_test_uuid_exit, !3, !"__exitcall_test_uuid_exit", i1 false, i1 false}
!3 = !{!"../lib/test_uuid.c", i32 130, i32 1}
!4 = !{ptr @__UNIQUE_ID_author107, !5, !"__UNIQUE_ID_author107", i1 false, i1 false}
!5 = !{!"../lib/test_uuid.c", i32 132, i32 1}
!6 = !{ptr @__UNIQUE_ID_file108, !7, !"__UNIQUE_ID_file108", i1 false, i1 false}
!7 = !{!"../lib/test_uuid.c", i32 133, i32 1}
!8 = !{ptr @__UNIQUE_ID_license109, !7, !"__UNIQUE_ID_license109", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../lib/test_uuid.c", i32 118, i32 3}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @test_uuid_init._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @test_uuid_init._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../lib/test_uuid.c", i32 120, i32 3}
!17 = !{ptr @test_uuid_init._entry.3, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @test_uuid_init._entry_ptr.5, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../lib/test_uuid.c", i32 71, i32 20}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../lib/test_uuid.c", i32 75, i32 16}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../lib/test_uuid.c", i32 76, i32 20}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../lib/test_uuid.c", i32 86, i32 16}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../lib/test_uuid.c", i32 48, i32 2}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @test_uuid_failed._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @test_uuid_failed._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../lib/test_uuid.c", i32 55, i32 3}
!38 = !{ptr @test_uuid_failed._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @test_uuid_failed._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../lib/test_uuid.c", i32 20, i32 11}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../lib/test_uuid.c", i32 25, i32 11}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../lib/test_uuid.c", i32 30, i32 11}
!46 = !{ptr @test_uuid_test_data, !47, !"test_uuid_test_data", i1 false, i1 false}
!47 = !{!"../lib/test_uuid.c", i32 18, i32 36}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../lib/test_uuid.c", i32 99, i32 20}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../lib/test_uuid.c", i32 37, i32 2}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../lib/test_uuid.c", i32 38, i32 2}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../lib/test_uuid.c", i32 39, i32 2}
!56 = !{ptr @test_uuid_wrong_data, !57, !"test_uuid_wrong_data", i1 false, i1 false}
!57 = !{!"../lib/test_uuid.c", i32 36, i32 27}
!58 = !{ptr @failed_tests, !59, !"failed_tests", i1 false, i1 false}
!59 = !{!"../lib/test_uuid.c", i32 43, i32 17}
!60 = !{ptr @total_tests, !61, !"total_tests", i1 false, i1 false}
!61 = !{!"../lib/test_uuid.c", i32 42, i32 17}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
