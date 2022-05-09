; ModuleID = '/llk/IR_all_yes/lib/find_bit_benchmark.c_pt.bc'
source_filename = "../lib/find_bit_benchmark.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_find_bit_benchmark__106_177_find_bit_test6 = internal global ptr @find_bit_test, section ".initcall6.init", align 4
@__UNIQUE_ID_file107 = internal constant [47 x i8] c"find_bit_benchmark.file=lib/find_bit_benchmark\00", section ".modinfo", align 1
@__UNIQUE_ID_license108 = internal constant [31 x i8] c"find_bit_benchmark.license=GPL\00", section ".modinfo", align 1
@find_bit_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013\0AStart testing find_bit() with random-filled bitmap\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"find_bit_test\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lib/find_bit_benchmark.c\00", [39 x i8] zeroinitializer }, align 32
@find_bit_test._entry_ptr = internal global ptr @find_bit_test._entry, section ".printk_index", align 4
@bitmap = internal global [10240 x i32] zeroinitializer, section ".init.data", align 4
@bitmap2 = internal global [10240 x i32] zeroinitializer, section ".init.data", align 4
@find_bit_test._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013\0AStart testing find_bit() with sparse bitmap\0A\00", [48 x i8] zeroinitializer }, align 32
@find_bit_test._entry_ptr.5 = internal global ptr @find_bit_test._entry.3, section ".printk_index", align 4
@test_find_next_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013find_next_bit:      %18llu ns, %6ld iterations\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"test_find_next_bit\00", [45 x i8] zeroinitializer }, align 32
@test_find_next_bit._entry_ptr = internal global ptr @test_find_next_bit._entry, section ".printk_index", align 4
@test_find_next_zero_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013find_next_zero_bit: %18llu ns, %6ld iterations\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"test_find_next_zero_bit\00", [40 x i8] zeroinitializer }, align 32
@test_find_next_zero_bit._entry_ptr = internal global ptr @test_find_next_zero_bit._entry, section ".printk_index", align 4
@test_find_last_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013find_last_bit:      %18llu ns, %6ld iterations\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"test_find_last_bit\00", [45 x i8] zeroinitializer }, align 32
@test_find_last_bit._entry_ptr = internal global ptr @test_find_last_bit._entry, section ".printk_index", align 4
@test_find_first_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013find_first_bit:     %18llu ns, %6ld iterations\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"test_find_first_bit\00", [44 x i8] zeroinitializer }, align 32
@test_find_first_bit._entry_ptr = internal global ptr @test_find_first_bit._entry, section ".printk_index", align 4
@test_find_first_and_bit.cp = internal global [10240 x i32] zeroinitializer, section ".init.data", align 4
@test_find_first_and_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013find_first_and_bit: %18llu ns, %6ld iterations\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"test_find_first_and_bit\00", [40 x i8] zeroinitializer }, align 32
@test_find_first_and_bit._entry_ptr = internal global ptr @test_find_first_and_bit._entry, section ".printk_index", align 4
@test_find_next_and_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013find_next_and_bit:  %18llu ns, %6ld iterations\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"test_find_next_and_bit\00", [41 x i8] zeroinitializer }, align 32
@test_find_next_and_bit._entry_ptr = internal global ptr @test_find_next_and_bit._entry, section ".printk_index", align 4
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 137, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 154, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 80, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 94, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 113, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 47, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 66, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [28 x i8] c"../lib/find_bit_benchmark.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 128, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_file107, ptr @__UNIQUE_ID_license108, ptr @__initcall__kmod_find_bit_benchmark__106_177_find_bit_test6, ptr @find_bit_test._entry, ptr @find_bit_test._entry.3, ptr @find_bit_test._entry_ptr, ptr @find_bit_test._entry_ptr.5, ptr @test_find_first_and_bit._entry, ptr @test_find_first_and_bit._entry_ptr, ptr @test_find_first_bit._entry, ptr @test_find_first_bit._entry_ptr, ptr @test_find_last_bit._entry, ptr @test_find_last_bit._entry_ptr, ptr @test_find_next_and_bit._entry, ptr @test_find_next_and_bit._entry_ptr, ptr @test_find_next_bit._entry, ptr @test_find_next_bit._entry_ptr, ptr @test_find_next_zero_bit._entry, ptr @test_find_next_zero_bit._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_bit_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_bit_test._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_next_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_next_zero_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_last_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_first_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_first_and_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_find_next_and_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @find_bit_test() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #5
  tail call void @get_random_bytes(ptr noundef nonnull @bitmap, i32 noundef 40960) #6
  tail call void @get_random_bytes(ptr noundef nonnull @bitmap2, i32 noundef 40960) #6
  tail call fastcc void @test_find_next_bit() #7
  tail call fastcc void @test_find_next_zero_bit() #7
  tail call fastcc void @test_find_last_bit() #7
  tail call fastcc void @test_find_first_bit(i32 noundef 32768) #7
  tail call fastcc void @test_find_first_and_bit(i32 noundef 163840) #7
  tail call fastcc void @test_find_next_and_bit() #7
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #5
  %0 = call ptr @memset(ptr @bitmap, i32 0, i32 40960)
  %1 = call ptr @memset(ptr @bitmap2, i32 0, i32 40960)
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %nbits.026 = phi i32 [ 655, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %nbits.026, -1
  %call12 = tail call i32 @prandom_u32() #6
  %rem = urem i32 %call12, 327680
  %rem.i = and i32 %rem, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %rem, 5
  %add.ptr.i = getelementptr i32, ptr @bitmap, i32 %div2.i
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %3
  store i32 %or.i, ptr %add.ptr.i, align 4
  %call13 = tail call i32 @prandom_u32() #6
  %rem14 = urem i32 %call13, 327680
  %rem.i21 = and i32 %rem14, 31
  %shl.i22 = shl nuw i32 1, %rem.i21
  %div2.i23 = lshr i32 %rem14, 5
  %add.ptr.i24 = getelementptr i32, ptr @bitmap2, i32 %div2.i23
  %4 = ptrtoint ptr %add.ptr.i24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i24, align 4
  %or.i25 = or i32 %shl.i22, %5
  store i32 %or.i25, ptr %add.ptr.i24, align 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  tail call fastcc void @test_find_next_bit() #7
  tail call fastcc void @test_find_next_zero_bit() #7
  tail call fastcc void @test_find_last_bit() #7
  tail call fastcc void @test_find_first_bit(i32 noundef 327680) #7
  tail call fastcc void @test_find_first_and_bit(i32 noundef 327680) #7
  tail call fastcc void @test_find_next_and_bit() #7
  ret i32 -22
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_find_next_bit() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i64 @ktime_get() #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.02 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %cnt.01 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef nonnull @bitmap, i32 noundef 327680, i32 noundef %i.02) #6
  %add = add i32 %call1, 1
  %inc = add i32 %cnt.01, 1
  %cmp = icmp ult i32 %add, 327680
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %call2 = tail call i64 @ktime_get() #6
  %sub = sub i64 %call2, %call
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i64 noundef %sub, i32 noundef %inc) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_find_next_zero_bit() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i64 @ktime_get() #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.02 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %cnt.01 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %call1 = tail call i32 @_find_next_zero_bit_be(ptr noundef nonnull @bitmap, i32 noundef 327680, i32 noundef %i.02) #6
  %add = add i32 %call1, 1
  %inc = add i32 %cnt.01, 1
  %cmp = icmp ult i32 %add, 327680
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %call2 = tail call i64 @ktime_get() #6
  %sub = sub i64 %call2, %call
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i64 noundef %sub, i32 noundef %inc) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_find_last_bit() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i64 @ktime_get() #6
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %cnt.0 = phi i32 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  %len.addr.0 = phi i32 [ 327680, %entry ], [ %call5.i, %do.body.do.body_crit_edge ]
  %inc = add i32 %cnt.0, 1
  %call5.i = tail call i32 @_find_last_bit(ptr noundef nonnull @bitmap, i32 noundef %len.addr.0) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %len.addr.0)
  %cmp.not = icmp uge i32 %call5.i, %len.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  %or.cond = or i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  %call2 = tail call i64 @ktime_get() #6
  %sub = sub i64 %call2, %call
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i64 noundef %sub, i32 noundef %inc) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_find_first_bit(i32 noundef %len) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp1.not = icmp eq i32 %len, 0
  br i1 %cmp1.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %cnt.02 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call1 = tail call i32 @_find_first_bit_be(ptr noundef nonnull @bitmap, i32 noundef %len) #6
  %rem.i = and i32 %call1, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %call1, 5
  %add.ptr.i = getelementptr i32, ptr @bitmap, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %1, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %inc = add i32 %cnt.02, 1
  %cmp = icmp ult i32 %call1, %len
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %cnt.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %call2 = tail call i64 @ktime_get() #6
  %sub = sub i64 %call2, %call
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i64 noundef %sub, i32 noundef %cnt.0.lcssa) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_find_first_and_bit(i32 noundef %len) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %0 = call ptr @memcpy(ptr @test_find_first_and_bit.cp, ptr @bitmap, i32 40960)
  %call = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp1.not = icmp eq i32 %len, 0
  br i1 %cmp1.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %cnt.02 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call6.i = tail call i32 @_find_first_and_bit(ptr noundef nonnull @test_find_first_and_bit.cp, ptr noundef nonnull @bitmap2, i32 noundef %len) #6
  %rem.i = and i32 %call6.i, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %call6.i, 5
  %add.ptr.i = getelementptr i32, ptr @test_find_first_and_bit.cp, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %2, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %inc = add i32 %cnt.02, 1
  %cmp = icmp ult i32 %call6.i, %len
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %cnt.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %call2 = tail call i64 @ktime_get() #6
  %sub = sub i64 %call2, %call
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i64 noundef %sub, i32 noundef %cnt.0.lcssa) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_find_next_and_bit() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i64 @ktime_get() #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.02 = phi i32 [ 0, %entry ], [ %call13.i, %for.body.for.body_crit_edge ]
  %cnt.01 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.02, 1
  %call13.i = tail call i32 @_find_next_bit(ptr noundef nonnull @bitmap, ptr noundef nonnull @bitmap2, i32 noundef 327680, i32 noundef %add, i32 noundef 0, i32 noundef 0) #6
  %inc = add i32 %cnt.01, 1
  %cmp = icmp ult i32 %call13.i, 327680
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %call2 = tail call i64 @ktime_get() #6
  %sub = sub i64 %call2, %call
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i64 noundef %sub, i32 noundef %inc) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_last_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_and_bit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind uwtable(sync) }
attributes #4 = { nomerge }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind }
attributes #7 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !43, !44, !45, !46, !48, !49, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_find_bit_benchmark__106_177_find_bit_test6, !1, !"__initcall__kmod_find_bit_benchmark__106_177_find_bit_test6", i1 false, i1 false}
!1 = !{!"../lib/find_bit_benchmark.c", i32 177, i32 1}
!2 = !{ptr @__UNIQUE_ID_file107, !3, !"__UNIQUE_ID_file107", i1 false, i1 false}
!3 = !{!"../lib/find_bit_benchmark.c", i32 179, i32 1}
!4 = !{ptr @__UNIQUE_ID_license108, !3, !"__UNIQUE_ID_license108", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../lib/find_bit_benchmark.c", i32 137, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @find_bit_test._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @find_bit_test._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../lib/find_bit_benchmark.c", i32 154, i32 2}
!13 = !{ptr @find_bit_test._entry.3, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @find_bit_test._entry_ptr.5, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @bitmap, !16, !"bitmap", i1 false, i1 false}
!16 = !{!"../lib/find_bit_benchmark.c", i32 29, i32 8}
!17 = !{ptr @bitmap2, !18, !"bitmap2", i1 false, i1 false}
!18 = !{!"../lib/find_bit_benchmark.c", i32 30, i32 8}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../lib/find_bit_benchmark.c", i32 80, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @test_find_next_bit._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @test_find_next_bit._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../lib/find_bit_benchmark.c", i32 94, i32 2}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @test_find_next_zero_bit._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @test_find_next_zero_bit._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../lib/find_bit_benchmark.c", i32 113, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @test_find_last_bit._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @test_find_last_bit._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../lib/find_bit_benchmark.c", i32 47, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @test_find_first_bit._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @test_find_first_bit._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @test_find_first_and_bit.cp, !40, !"cp", i1 false, i1 false}
!40 = !{!"../lib/find_bit_benchmark.c", i32 54, i32 9}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../lib/find_bit_benchmark.c", i32 66, i32 2}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @test_find_first_and_bit._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @test_find_first_and_bit._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../lib/find_bit_benchmark.c", i32 128, i32 2}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @test_find_next_and_bit._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @test_find_next_and_bit._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
