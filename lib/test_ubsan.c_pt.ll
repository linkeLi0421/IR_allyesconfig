; ModuleID = '/llk/IR_all_yes/lib/test_ubsan.c_pt.bc'
source_filename = "../lib/test_ubsan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__UNIQUE_ID_author106 = internal constant [42 x i8] c"author=Jinbum Park <jinb.park7@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license107 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@test_ubsan_array = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @test_ubsan_shift_out_of_bounds, ptr @test_ubsan_out_of_bounds, ptr @test_ubsan_load_invalid_value, ptr @test_ubsan_misaligned_access], [16 x i8] zeroinitializer }, align 32
@0 = private unnamed_addr constant { i16, i16, [6 x i8] } { i16 0, i16 11, [6 x i8] c"'int'\00" }
@test_ubsan_shift_out_of_bounds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s negative exponent%s(%s=%s)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"test_ubsan_shift_out_of_bounds\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lib/test_ubsan.c\00", [47 x i8] zeroinitializer }, align 32
@test_ubsan_shift_out_of_bounds._entry_ptr = internal global ptr @test_ubsan_shift_out_of_bounds._entry, section ".printk_index", align 4
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CONFIG_UBSAN_SHIFT\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"y\00", [30 x i8] zeroinitializer }, align 32
@1 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 30, i32 7 }, ptr @0, ptr @0 }
@test_ubsan_shift_out_of_bounds._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 32, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s left overflow%s(%s=%s)\0A\00", [35 x i8] zeroinitializer }, align 32
@test_ubsan_shift_out_of_bounds._entry_ptr.8 = internal global ptr @test_ubsan_shift_out_of_bounds._entry.6, section ".printk_index", align 4
@2 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 33, i32 7 }, ptr @0, ptr @0 }
@test_ubsan_out_of_bounds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s above%s(%s=%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"test_ubsan_out_of_bounds\00", [39 x i8] zeroinitializer }, align 32
@test_ubsan_out_of_bounds._entry_ptr = internal global ptr @test_ubsan_out_of_bounds._entry, section ".printk_index", align 4
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CONFIG_UBSAN_BOUNDS\00", [44 x i8] zeroinitializer }, align 32
@3 = private unnamed_addr constant { i16, i16, [18 x i8] } { i16 -1, i16 0, [18 x i8] c"'volatile int[4]'\00" }
@4 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 46, i32 2 }, ptr @3, ptr @0 }
@test_ubsan_out_of_bounds._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.2, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s below%s(%s=%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@test_ubsan_out_of_bounds._entry_ptr.14 = internal global ptr @test_ubsan_out_of_bounds._entry.12, section ".printk_index", align 4
@5 = private unnamed_addr global { { ptr, i32, i32 }, ptr, ptr } { { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 49, i32 2 }, ptr @3, ptr @0 }
@test_ubsan_load_invalid_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s bool%s(%s=%s)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"test_ubsan_load_invalid_value\00", [34 x i8] zeroinitializer }, align 32
@test_ubsan_load_invalid_value._entry_ptr = internal global ptr @test_ubsan_load_invalid_value._entry, section ".printk_index", align 4
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CONFIG_UBSAN_BOOL\00", [46 x i8] zeroinitializer }, align 32
@6 = private unnamed_addr constant { i16, i16, [21 x i8] } { i16 0, i16 6, [21 x i8] c"'bool' (aka '_Bool')\00" }
@7 = private unnamed_addr global { { ptr, i32, i32 }, ptr } { { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 71, i32 9 }, ptr @6 }
@test_ubsan_load_invalid_value._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s enum%s(%s=%s)\0A\00", [44 x i8] zeroinitializer }, align 32
@test_ubsan_load_invalid_value._entry_ptr.20 = internal global ptr @test_ubsan_load_invalid_value._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CONFIG_UBSAN_ENUM\00", [46 x i8] zeroinitializer }, align 32
@__const.test_ubsan_misaligned_access.arr = private unnamed_addr constant [5 x i8] c"\01\02\03\04\05", align 4
@test_ubsan_misaligned_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016%s %s(%s=%s)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"test_ubsan_misaligned_access\00", [35 x i8] zeroinitializer }, align 32
@test_ubsan_misaligned_access._entry_ptr = internal global ptr @test_ubsan_misaligned_access._entry, section ".printk_index", align 4
@.str.24 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CONFIG_UBSAN_ALIGNMENT\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"n\00", [30 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"test_ubsan_array\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 92, i32 28 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 29, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 32, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 45, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 48, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 65, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 73, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private constant [20 x i8] c"../lib/test_ubsan.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 87, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author106, ptr @__UNIQUE_ID_license107, ptr @test_ubsan_load_invalid_value._entry, ptr @test_ubsan_load_invalid_value._entry.18, ptr @test_ubsan_load_invalid_value._entry_ptr, ptr @test_ubsan_load_invalid_value._entry_ptr.20, ptr @test_ubsan_misaligned_access._entry, ptr @test_ubsan_misaligned_access._entry_ptr, ptr @test_ubsan_out_of_bounds._entry, ptr @test_ubsan_out_of_bounds._entry.12, ptr @test_ubsan_out_of_bounds._entry_ptr, ptr @test_ubsan_out_of_bounds._entry_ptr.14, ptr @test_ubsan_shift_out_of_bounds._entry, ptr @test_ubsan_shift_out_of_bounds._entry.6, ptr @test_ubsan_shift_out_of_bounds._entry_ptr, ptr @test_ubsan_shift_out_of_bounds._entry_ptr.8, ptr @test_ubsan_array, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@8 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ubsan_array to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ubsan_shift_out_of_bounds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ubsan_shift_out_of_bounds._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ubsan_out_of_bounds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ubsan_out_of_bounds._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ubsan_load_invalid_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ubsan_load_invalid_value._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ubsan_misaligned_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %cont

cont:                                             ; preds = %cont.cont_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %cont.cont_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr @test_ubsan_array, i32 0, i32 %i.03
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void %1() #8
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %cont.cont_crit_edge

cont.cont_crit_edge:                              ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #7
  br label %cont

for.end:                                          ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: uwtable
declare dso_local void @__ubsan_handle_out_of_bounds(ptr, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_ubsan_shift_out_of_bounds() #4 align 64 {
entry:
  %neg = alloca i32, align 4
  %wrap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %neg)
  %0 = ptrtoint ptr %neg to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %neg, align 4
  store volatile i32 -1, ptr %neg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wrap)
  %1 = ptrtoint ptr %wrap to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1, ptr %wrap, align 4
  store volatile i32 4, ptr %wrap, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  %2 = ptrtoint ptr %neg to i32
  call void @__asan_load4_noabort(i32 %2)
  %neg.0.neg.0.neg.0. = load volatile i32, ptr %neg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %neg.0.neg.0.neg.0.)
  %3 = icmp ult i32 %neg.0.neg.0.neg.0., 32
  br i1 %3, label %entry.cont5_crit_edge, label %handler.shift_out_of_bounds4, !prof !74, !nosanitize !75

entry.cont5_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cont5

handler.shift_out_of_bounds4:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @1, i32 10, i32 %neg.0.neg.0.neg.0.) #8, !nosanitize !75
  br label %cont5, !nosanitize !75

cont5:                                            ; preds = %handler.shift_out_of_bounds4, %entry.cont5_crit_edge
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  %4 = ptrtoint ptr %wrap to i32
  call void @__asan_load4_noabort(i32 %4)
  %wrap.0.wrap.0.wrap.0. = load volatile i32, ptr %wrap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %wrap.0.wrap.0.wrap.0.)
  %5 = icmp ult i32 %wrap.0.wrap.0.wrap.0., 32
  br i1 %5, label %cont5.cont15_crit_edge, label %handler.shift_out_of_bounds14, !prof !74, !nosanitize !75

cont5.cont15_crit_edge:                           ; preds = %cont5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cont15

handler.shift_out_of_bounds14:                    ; preds = %cont5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @2, i32 2147483647, i32 %wrap.0.wrap.0.wrap.0.) #8, !nosanitize !75
  br label %cont15, !nosanitize !75

cont15:                                           ; preds = %handler.shift_out_of_bounds14, %cont5.cont15_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wrap)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %neg)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_ubsan_out_of_bounds() #4 align 64 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %above.sroa.0 = alloca i8, align 1
  %above.sroa.4 = alloca [3 x i8], align 1
  %arr = alloca [4 x i32], align 4
  %below.sroa.0 = alloca i8, align 1
  %below.sroa.4 = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i)
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %i, align 4
  store volatile i32 4, ptr %i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %j)
  %1 = ptrtoint ptr %j to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1, ptr %j, align 4
  store volatile i32 5, ptr %j, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k)
  %2 = ptrtoint ptr %k to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 -1, ptr %k, align 4
  store volatile i32 -1, ptr %k, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %above.sroa.0)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %above.sroa.4)
  %3 = call ptr @memset(ptr %above.sroa.0, i32 0, i32 1)
  %4 = call ptr @memset(ptr %above.sroa.4, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %arr) #8
  %5 = ptrtoint ptr %arr to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 -1, ptr %arr, align 4, !annotation !76
  %6 = getelementptr inbounds [4 x i32], ptr %arr, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 -1, ptr %6, align 4, !annotation !76
  %8 = getelementptr inbounds [4 x i32], ptr %arr, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 -1, ptr %8, align 4, !annotation !76
  %10 = getelementptr inbounds [4 x i32], ptr %arr, i32 0, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 -1, ptr %10, align 4, !annotation !76
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %below.sroa.0)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %below.sroa.4)
  %12 = call ptr @memset(ptr %below.sroa.0, i32 0, i32 1)
  %13 = call ptr @memset(ptr %below.sroa.4, i32 0, i32 3)
  %14 = ptrtoint ptr %below.sroa.0 to i32
  call void @__asan_load1_noabort(i32 %14)
  %below.sroa.0.0.below.sroa.0.0.below.sroa.0.0.below.sroa.0.0. = load volatile i8, ptr %below.sroa.0, align 1
  %15 = ptrtoint ptr %above.sroa.0 to i32
  call void @__asan_store1_noabort(i32 %15)
  store volatile i8 %below.sroa.0.0.below.sroa.0.0.below.sroa.0.0.below.sroa.0.0., ptr %above.sroa.0, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5) #9
  %16 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %16)
  %i.0.i.0.i.0. = load volatile i32, ptr %i, align 4
  %17 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %17)
  %j.0.j.0.j.0. = load volatile i32, ptr %j, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %j.0.j.0.j.0.)
  %18 = icmp ult i32 %j.0.j.0.j.0., 4, !nosanitize !75
  br i1 %18, label %entry.cont8_crit_edge, label %handler.out_of_bounds7, !prof !74, !nosanitize !75

entry.cont8_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cont8

handler.out_of_bounds7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__ubsan_handle_out_of_bounds(ptr nonnull @4, i32 %j.0.j.0.j.0.) #8, !nosanitize !75
  br label %cont8, !nosanitize !75

cont8:                                            ; preds = %handler.out_of_bounds7, %entry.cont8_crit_edge
  %arrayidx9 = getelementptr [4 x i32], ptr %arr, i32 0, i32 %j.0.j.0.j.0.
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %i.0.i.0.i.0., ptr %arrayidx9, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5) #9
  %20 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %20)
  %i.0.i.0.i.0.21 = load volatile i32, ptr %i, align 4
  %21 = ptrtoint ptr %k to i32
  call void @__asan_load4_noabort(i32 %21)
  %k.0.k.0.k.0. = load volatile i32, ptr %k, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %k.0.k.0.k.0.)
  %22 = icmp ult i32 %k.0.k.0.k.0., 4, !nosanitize !75
  br i1 %22, label %cont8.cont19_crit_edge, label %handler.out_of_bounds18, !prof !74, !nosanitize !75

cont8.cont19_crit_edge:                           ; preds = %cont8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cont19

handler.out_of_bounds18:                          ; preds = %cont8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__ubsan_handle_out_of_bounds(ptr nonnull @5, i32 %k.0.k.0.k.0.) #8, !nosanitize !75
  br label %cont19, !nosanitize !75

cont19:                                           ; preds = %handler.out_of_bounds18, %cont8.cont19_crit_edge
  %arrayidx20 = getelementptr [4 x i32], ptr %arr, i32 0, i32 %k.0.k.0.k.0.
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 %i.0.i.0.i.0.21, ptr %arrayidx20, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %below.sroa.0)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %below.sroa.4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %arr) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %above.sroa.0)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %above.sroa.4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %j)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_ubsan_load_invalid_value() #4 align 64 {
entry:
  %val = alloca i8, align 1
  %eval.sroa.0 = alloca i8, align 4
  %c = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %eval.sroa.0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c)
  %0 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %c, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.5) #9
  %1 = ptrtoint ptr %c to i32
  call void @__asan_load1_noabort(i32 %1)
  %c.0.c.0.c.0. = load volatile i8, ptr %c, align 1
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store volatile i8 %c.0.c.0.c.0., ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %c.0.c.0.c.0.)
  %3 = icmp ult i8 %c.0.c.0.c.0., 2
  br i1 %3, label %entry.cont_crit_edge, label %handler.load_invalid_value, !prof !74, !nosanitize !75

entry.cont_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cont

handler.load_invalid_value:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = zext i8 %c.0.c.0.c.0. to i32, !nosanitize !75
  tail call void @__ubsan_handle_load_invalid_value(ptr nonnull @7, i32 %4) #8, !nosanitize !75
  br label %cont, !nosanitize !75

cont:                                             ; preds = %handler.load_invalid_value, %entry.cont_crit_edge
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.5) #9
  %5 = ptrtoint ptr %c to i32
  call void @__asan_load1_noabort(i32 %5)
  %c.0.c.0.c.0.14 = load volatile i8, ptr %c, align 1
  %6 = ptrtoint ptr %eval.sroa.0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store volatile i8 %c.0.c.0.c.0.14, ptr %eval.sroa.0, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %eval.sroa.0)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_ubsan_misaligned_access() #4 align 64 {
entry:
  %arr.sroa.0 = alloca i8, align 4
  %arr.sroa.3 = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %arr.sroa.0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arr.sroa.3)
  %arr.sroa.0.0.copyload = load volatile i8, ptr @__const.test_ubsan_misaligned_access.arr, align 4
  %0 = ptrtoint ptr %arr.sroa.0 to i32
  call void @__asan_store1_noabort(i32 %0)
  store volatile i8 %arr.sroa.0.0.copyload, ptr %arr.sroa.0, align 4
  %arr.sroa.3.0.copyload = load volatile i32, ptr getelementptr inbounds ([5 x i8], ptr @__const.test_ubsan_misaligned_access.arr, i32 0, i32 1), align 1
  %1 = ptrtoint ptr %arr.sroa.3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %arr.sroa.3.0.copyload, ptr %arr.sroa.3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val)
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 -1, ptr %val, align 4
  store volatile i32 6, ptr %val, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %val.0.val.0.val.0. = load volatile i32, ptr %val, align 4
  %4 = ptrtoint ptr %arr.sroa.3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %val.0.val.0.val.0., ptr %arr.sroa.3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %arr.sroa.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arr.sroa.3)
  ret void
}

; Function Attrs: uwtable
declare dso_local void @__ubsan_handle_shift_out_of_bounds(ptr, i32, i32) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: uwtable
declare dso_local void @__ubsan_handle_load_invalid_value(ptr, i32) local_unnamed_addr #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @8 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @8 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { uwtable }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind uwtable(sync) }
attributes #7 = { nomerge }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !4, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !4, !21, !22, !24, !25, !4, !26, !4, !27, !28, !4, !29, !30, !32, !33, !34, !35, !4, !36, !37, !38, !40, !41, !4, !42, !43, !45, !46, !47, !48, !4, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !62, !63, !4, !64, !65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__UNIQUE_ID_author106, !1, !"__UNIQUE_ID_author106", i1 false, i1 false}
!1 = !{!"../lib/test_ubsan.c", i32 121, i32 1}
!2 = !{ptr @__UNIQUE_ID_license107, !3, !"__UNIQUE_ID_license107", i1 false, i1 false}
!3 = !{!"../lib/test_ubsan.c", i32 122, i32 1}
!4 = !{ptr @___asan_gen_.112, null, null, i1 false, i1 true}
!5 = distinct !{null, null, null, i1 false, i1 true}
!6 = distinct !{null, null, null, i1 false, i1 true}
!7 = distinct !{null, null, null, i1 false, i1 true}
!8 = !{ptr @test_ubsan_array, !9, !"test_ubsan_array", i1 false, i1 false}
!9 = !{!"../lib/test_ubsan.c", i32 92, i32 28}
!10 = !{ptr @0, null, null, i1 false, i1 true}
!11 = distinct !{null, null, null, i1 false, i1 true}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/test_ubsan.c", i32 29, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @test_ubsan_shift_out_of_bounds._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @test_ubsan_shift_out_of_bounds._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @1, null, null, i1 false, i1 true}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../lib/test_ubsan.c", i32 32, i32 2}
!24 = !{ptr @test_ubsan_shift_out_of_bounds._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @test_ubsan_shift_out_of_bounds._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @2, null, null, i1 false, i1 true}
!27 = distinct !{null, null, null, i1 false, i1 true}
!28 = distinct !{null, null, null, i1 false, i1 true}
!29 = distinct !{null, null, null, i1 false, i1 true}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../lib/test_ubsan.c", i32 45, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @test_ubsan_out_of_bounds._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @test_ubsan_out_of_bounds._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @3, null, null, i1 false, i1 true}
!37 = !{ptr @4, null, null, i1 false, i1 true}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../lib/test_ubsan.c", i32 48, i32 2}
!40 = !{ptr @test_ubsan_out_of_bounds._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @test_ubsan_out_of_bounds._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @5, null, null, i1 false, i1 true}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../lib/test_ubsan.c", i32 65, i32 2}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @test_ubsan_load_invalid_value._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @test_ubsan_load_invalid_value._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @6, null, null, i1 false, i1 true}
!50 = !{ptr @7, null, null, i1 false, i1 true}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../lib/test_ubsan.c", i32 73, i32 2}
!53 = !{ptr @test_ubsan_load_invalid_value._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @test_ubsan_load_invalid_value._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../lib/test_ubsan.c", i32 87, i32 2}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @test_ubsan_misaligned_access._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @test_ubsan_misaligned_access._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, null, null, i1 false, i1 true}
!65 = distinct !{null, null, null, i1 false, i1 true}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"branch_weights", i32 1048575, i32 1}
!75 = !{}
!76 = !{!"auto-init"}
