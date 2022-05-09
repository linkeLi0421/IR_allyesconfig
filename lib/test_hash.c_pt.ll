; ModuleID = '/llk/IR_all_yes/lib/test_hash.c_pt.bc'
source_filename = "../lib/test_hash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }

@__UNIQUE_ID_array174 = internal global [2 x ptr] [ptr @hash_test_suite, ptr null], align 4
@__UNIQUE_ID_suites175 = internal global ptr @__UNIQUE_ID_array174, section ".kunit_test_suites", align 4
@__UNIQUE_ID_file176 = internal constant [29 x i8] c"test_hash.file=lib/test_hash\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [22 x i8] c"test_hash.license=GPL\00", section ".modinfo", align 1
@hash_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"hash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @hash_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@hash_test_cases = internal global [3 x %struct.kunit_case] [%struct.kunit_case { ptr @test_string_or, ptr @.str, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @test_hash_or, ptr @.str.1, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], section ".ref.data", align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"test_string_or\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"test_hash_or\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lib/test_hash.c\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"string_or\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-1u\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"OR of all string hash results = %#x != %#x\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"((u32)((hashlen) >> 32))\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"j-i\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"hashlen_string(%d..%d) returned length %u, expected %d\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"((u32)(hashlen))\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"h0\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"hashlen_string(%d..%d) = %08x != full_name_hash() = %08x\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hash_or[0][0]\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"OR of all __hash_32 results = %#x != %#x\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hash_or[0][i]\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"m\00", [30 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"OR of all hash_32(%d) results = %#x (%#x expected)\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hash_or[1][i]\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"OR of all hash_64(%d) results = %#x (%#x expected)\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"<=\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"params.h1\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hash_32(%#x, %d) = %#x > %#x\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hash_64(%#llx, %d) = %#x > %#x\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"hash_test_suite\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 230, i32 27 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 225, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 226, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 164, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 187, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 191, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 200, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 215, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 218, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 127, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [19 x i8] c"../lib/test_hash.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 133, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_license177, ptr @__UNIQUE_ID_suites175, ptr @hash_test_suite, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_string_or(ptr noundef %test) #0 align 64 {
entry:
  %buf = alloca [257 x i8], align 1
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %buf) #6
  %0 = call ptr @memset(ptr %buf, i32 255, i32 257)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.03.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %seed.addr.02.i = phi i32 [ 1, %entry ], [ %xor3.i.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i.i = shl i32 %seed.addr.02.i, 13
  %xor.i.i = xor i32 %shl.i.i, %seed.addr.02.i
  %shr.i.i = lshr i32 %xor.i.i, 17
  %xor1.i.i = xor i32 %shr.i.i, %xor.i.i
  %shl2.i.i = shl i32 %xor1.i.i, 5
  %xor3.i.i = xor i32 %shl2.i.i, %xor1.i.i
  %and.i.i = and i32 %xor3.i.i, 65535
  %shr.i1.i = lshr i32 %xor3.i.i, 16
  %add.i.i = add nuw nsw i32 %and.i.i, %shr.i1.i
  %and1.i.i = and i32 %add.i.i, 255
  %shr2.i.i = lshr i32 %add.i.i, 8
  %add3.i.i = add nuw nsw i32 %and1.i.i, %shr2.i.i
  %and4.i.i = and i32 %add3.i.i, 255
  %shr5.i.i = lshr i32 %add3.i.i, 8
  %add6.i.i = add nuw nsw i32 %and4.i.i, %shr5.i.i
  %shr8.i.i = lshr i32 %add6.i.i, 8
  %add9.i.i = add nuw nsw i32 %shr8.i.i, %add6.i.i
  %conv.i.i = trunc i32 %add9.i.i to i8
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %i.03.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv.i.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.body.i.for.body3.preheader_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i.for.body3.preheader_crit_edge:         ; preds = %for.body.i
  br label %for.body3.preheader

for.body3.preheader:                              ; preds = %for.inc7.for.body3.preheader_crit_edge, %for.body.i.for.body3.preheader_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc7.for.body3.preheader_crit_edge ], [ 257, %for.body.i.for.body3.preheader_crit_edge ]
  %string_or.034 = phi i32 [ %or, %for.inc7.for.body3.preheader_crit_edge ], [ 0, %for.body.i.for.body3.preheader_crit_edge ]
  %j.033 = phi i32 [ %dec, %for.inc7.for.body3.preheader_crit_edge ], [ 256, %for.body.i.for.body3.preheader_crit_edge ]
  %arrayidx = getelementptr [257 x i8], ptr %buf, i32 0, i32 %j.033
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.body3.preheader
  %string_or.132 = phi i32 [ %or, %for.body3.for.body3_crit_edge ], [ %string_or.034, %for.body3.preheader ]
  %i.031 = phi i32 [ %inc, %for.body3.for.body3_crit_edge ], [ 0, %for.body3.preheader ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %i.031
  %sub = sub nsw i32 %j.033, %i.031
  %call = call i32 @full_name_hash(ptr noundef %add.ptr, ptr noundef %add.ptr, i32 noundef %sub) #7
  %or = or i32 %call, %string_or.132
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond = icmp eq i32 %inc, %indvars.iv
  br i1 %exitcond, label %for.inc7, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body3

for.inc7:                                         ; preds = %for.body3
  %dec = add nsw i32 %j.033, -1
  %cmp.not = icmp eq i32 %dec, 0
  %indvars.iv.next = add nsw i32 %indvars.iv, -1
  br i1 %cmp.not, label %do.body, label %for.inc7.for.body3.preheader_crit_edge

for.inc7.for.body3.preheader_crit_edge:           ; preds = %for.inc7
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body3.preheader

do.body:                                          ; preds = %for.inc7
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #6
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
  store i32 166, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %8 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.2, ptr %file, align 4
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
  store ptr @.str.3, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %13 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.4, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = zext i32 %or to i64
  %14 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %15 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.5, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %16 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 4294967295, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or)
  %cmp13 = icmp eq i32 %or, -1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp13, ptr noundef nonnull @.str.6, i32 noundef %or, i32 noundef -1) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #6
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %buf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_hash_or(ptr noundef %test) #0 align 64 {
entry:
  %__assertion.i = alloca %struct.kunit_binary_assert, align 8
  %__assertion36.i = alloca %struct.kunit_binary_assert, align 8
  %buf = alloca [257 x i8], align 1
  %hash_or = alloca [2 x [33 x i32]], align 4
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion30 = alloca %struct.kunit_binary_assert, align 8
  %__assertion65 = alloca %struct.kunit_binary_assert, align 8
  %__assertion104 = alloca %struct.kunit_binary_assert, align 8
  %__assertion136 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %buf) #6
  %0 = call ptr @memset(ptr %buf, i32 255, i32 257)
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %hash_or) #6
  %1 = call ptr @memset(ptr %hash_or, i32 0, i32 264)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.03.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %seed.addr.02.i = phi i32 [ 1, %entry ], [ %xor3.i.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i.i = shl i32 %seed.addr.02.i, 13
  %xor.i.i = xor i32 %shl.i.i, %seed.addr.02.i
  %shr.i.i = lshr i32 %xor.i.i, 17
  %xor1.i.i = xor i32 %shr.i.i, %xor.i.i
  %shl2.i.i = shl i32 %xor1.i.i, 5
  %xor3.i.i = xor i32 %shl2.i.i, %xor1.i.i
  %and.i.i = and i32 %xor3.i.i, 65535
  %shr.i1.i = lshr i32 %xor3.i.i, 16
  %add.i.i = add nuw nsw i32 %and.i.i, %shr.i1.i
  %and1.i.i = and i32 %add.i.i, 255
  %shr2.i.i = lshr i32 %add.i.i, 8
  %add3.i.i = add nuw nsw i32 %and1.i.i, %shr2.i.i
  %and4.i.i = and i32 %add3.i.i, 255
  %shr5.i.i = lshr i32 %add3.i.i, 8
  %add6.i.i = add nuw nsw i32 %and4.i.i, %shr5.i.i
  %shr8.i.i = lshr i32 %add6.i.i, 8
  %add9.i.i = add nuw nsw i32 %shr8.i.i, %add6.i.i
  %conv.i.i = trunc i32 %add9.i.i to i8
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %i.03.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv.i.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.cond.preheader, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.cond.preheader:                               ; preds = %for.body.i
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
  %type33 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 1
  %line34 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 2
  %file35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 3
  %message36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 4
  %va38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 4, i32 1
  %format39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion30, i32 0, i32 5
  %operation40 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion30, i32 0, i32 1
  %left_text41 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion30, i32 0, i32 2
  %left_value42 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion30, i32 0, i32 3
  %right_text44 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion30, i32 0, i32 4
  %right_value45 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion30, i32 0, i32 5
  %type.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 1
  %line.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 2
  %file.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 3
  %message.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 4
  %va.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 4, i32 1
  %format.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion.i, i32 0, i32 5
  %operation.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion.i, i32 0, i32 1
  %left_text.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion.i, i32 0, i32 2
  %left_value.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion.i, i32 0, i32 3
  %right_text.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion.i, i32 0, i32 4
  %right_value.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion.i, i32 0, i32 5
  %type39.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36.i, i32 0, i32 1
  %line40.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36.i, i32 0, i32 2
  %file41.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36.i, i32 0, i32 3
  %message42.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36.i, i32 0, i32 4
  %va44.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36.i, i32 0, i32 4, i32 1
  %format45.i = getelementptr inbounds %struct.kunit_assert, ptr %__assertion36.i, i32 0, i32 5
  %operation46.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion36.i, i32 0, i32 1
  %left_text47.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion36.i, i32 0, i32 2
  %left_value48.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion36.i, i32 0, i32 3
  %right_text50.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion36.i, i32 0, i32 4
  %right_value51.i = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion36.i, i32 0, i32 5
  %3 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %4 = getelementptr inbounds i8, ptr %__assertion30, i32 32
  br label %for.body3.preheader

for.body3.preheader:                              ; preds = %for.inc57.for.body3.preheader_crit_edge, %for.cond.preheader
  %indvars.iv = phi i32 [ 257, %for.cond.preheader ], [ %indvars.iv.next, %for.inc57.for.body3.preheader_crit_edge ]
  %h64.0230 = phi i64 [ 0, %for.cond.preheader ], [ %or, %for.inc57.for.body3.preheader_crit_edge ]
  %j.0229 = phi i32 [ 256, %for.cond.preheader ], [ %dec, %for.inc57.for.body3.preheader_crit_edge ]
  %arrayidx = getelementptr [257 x i8], ptr %buf, i32 0, i32 %j.0229
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx, align 1
  br label %for.body3

for.body3:                                        ; preds = %test_int_hash.exit.for.body3_crit_edge, %for.body3.preheader
  %h64.1228 = phi i64 [ %or, %test_int_hash.exit.for.body3_crit_edge ], [ %h64.0230, %for.body3.preheader ]
  %i.0227 = phi i32 [ %inc, %test_int_hash.exit.for.body3_crit_edge ], [ 0, %for.body3.preheader ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %i.0227
  %call = call i64 @hashlen_string(ptr noundef %add.ptr, ptr noundef %add.ptr) #7
  %sub = sub nsw i32 %j.0229, %i.0227
  %call11 = call i32 @full_name_hash(ptr noundef %add.ptr, ptr noundef %add.ptr, i32 noundef %sub) #7
  %shr = lshr i64 %call, 32
  %conv = trunc i64 %shr to i32
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #6
  %6 = call ptr @memset(ptr %3, i32 255, i32 24)
  %7 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %test, ptr %__assertion, align 8
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %type, align 4
  %9 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 189, ptr %line, align 8
  %10 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.2, ptr %file, align 4
  %11 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %message, align 8
  %12 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %va, align 4
  %13 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %14 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.3, ptr %operation, align 4
  %15 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.7, ptr %left_text, align 8
  %16 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %shr, ptr %left_value, align 8
  %17 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.8, ptr %right_text, align 8
  %conv16 = sext i32 %sub to i64
  %18 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv16, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp18 = icmp eq i32 %sub, %conv
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp18, ptr noundef nonnull @.str.9, i32 noundef %i.0227, i32 noundef %j.0229, i32 noundef %conv, i32 noundef %sub) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #6
  %conv27 = trunc i64 %call to i32
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion30) #6
  %19 = call ptr @memset(ptr %4, i32 255, i32 24)
  %20 = ptrtoint ptr %__assertion30 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %test, ptr %__assertion30, align 8
  %21 = ptrtoint ptr %type33 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %type33, align 4
  %22 = ptrtoint ptr %line34 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 193, ptr %line34, align 8
  %23 = ptrtoint ptr %file35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.2, ptr %file35, align 4
  %24 = ptrtoint ptr %message36 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %message36, align 8
  %25 = ptrtoint ptr %va38 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %va38, align 4
  %26 = ptrtoint ptr %format39 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @kunit_binary_assert_format, ptr %format39, align 8
  %27 = ptrtoint ptr %operation40 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.3, ptr %operation40, align 4
  %28 = ptrtoint ptr %left_text41 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.10, ptr %left_text41, align 8
  %conv43 = and i64 %call, 4294967295
  %29 = ptrtoint ptr %left_value42 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv43, ptr %left_value42, align 8
  %30 = ptrtoint ptr %right_text44 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.11, ptr %right_text44, align 8
  %conv46 = zext i32 %call11 to i64
  %31 = ptrtoint ptr %right_value45 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv46, ptr %right_value45, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %conv27)
  %cmp48 = icmp eq i32 %call11, %conv27
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion30, i1 noundef zeroext %cmp48, ptr noundef nonnull @.str.12, i32 noundef %i.0227, i32 noundef %j.0229, i32 noundef %conv27, i32 noundef %call11) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion30) #6
  %shl = shl i64 %h64.1228, 32
  %or = or i64 %shl, %conv46
  %mul.i.i = mul i32 %call11, 1640531527
  %32 = ptrtoint ptr %hash_or to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hash_or, align 4
  %or.i = or i32 %33, %mul.i.i
  store i32 %or.i, ptr %hash_or, align 4
  %conv1.i.i = trunc i64 %h64.1228 to i32
  %mul.i.i.i = mul i32 %conv1.i.i, 1640531527
  %xor.i.i222 = xor i32 %call11, %mul.i.i.i
  %mul.i.i.i.i = mul i32 %xor.i.i222, 1640531527
  br label %for.body.i225

for.body.i225:                                    ; preds = %for.body.i225.for.body.i225_crit_edge, %for.body3
  %k.091.i = phi i32 [ 1, %for.body3 ], [ %inc.i223, %for.body.i225.for.body.i225_crit_edge ]
  %sub.i = add nsw i32 %k.091.i, -1
  %shl.i = shl i32 2, %sub.i
  %sub7.i = add i32 %shl.i, -1
  %sub.i.i = sub nuw nsw i32 32, %k.091.i
  %shr.i90.i = lshr i32 %mul.i.i, %sub.i.i
  %arrayidx12.i = getelementptr [33 x i32], ptr %hash_or, i32 0, i32 %k.091.i
  %34 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx12.i, align 4
  %or13.i = or i32 %shr.i90.i, %35
  store i32 %or13.i, ptr %arrayidx12.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion.i) #6
  %36 = call ptr @memset(ptr %left_text.i, i32 255, i32 24)
  %37 = ptrtoint ptr %__assertion.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %test, ptr %__assertion.i, align 8
  %38 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %type.i, align 4
  %39 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 129, ptr %line.i, align 8
  %40 = ptrtoint ptr %file.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.2, ptr %file.i, align 4
  %41 = ptrtoint ptr %message.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %message.i, align 8
  %42 = ptrtoint ptr %va.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %va.i, align 4
  %43 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @kunit_binary_assert_format, ptr %format.i, align 8
  %44 = ptrtoint ptr %operation.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.20, ptr %operation.i, align 4
  %45 = ptrtoint ptr %left_text.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.21, ptr %left_text.i, align 8
  %conv17.i = zext i32 %shr.i90.i to i64
  %46 = ptrtoint ptr %left_value.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv17.i, ptr %left_value.i, align 8
  %47 = ptrtoint ptr %right_text.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.16, ptr %right_text.i, align 8
  %conv18.i = zext i32 %sub7.i to i64
  %48 = ptrtoint ptr %right_value.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv18.i, ptr %right_value.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i90.i, i32 %sub7.i)
  %cmp20.i = icmp ule i32 %shr.i90.i, %sub7.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion.i, i1 noundef zeroext %cmp20.i, ptr noundef nonnull @.str.22, i32 noundef %call11, i32 noundef %k.091.i, i32 noundef %shr.i90.i, i32 noundef %sub7.i) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion.i) #6
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, %sub.i.i
  %arrayidx29.i = getelementptr [33 x i32], ptr %hash_or, i32 1, i32 %k.091.i
  %49 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx29.i, align 4
  %or30.i = or i32 %50, %shr.i.i.i
  store i32 %or30.i, ptr %arrayidx29.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion36.i) #6
  %51 = call ptr @memset(ptr %left_text47.i, i32 255, i32 24)
  %52 = ptrtoint ptr %__assertion36.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %test, ptr %__assertion36.i, align 8
  %53 = ptrtoint ptr %type39.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %type39.i, align 4
  %54 = ptrtoint ptr %line40.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 135, ptr %line40.i, align 8
  %55 = ptrtoint ptr %file41.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.2, ptr %file41.i, align 4
  %56 = ptrtoint ptr %message42.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %message42.i, align 8
  %57 = ptrtoint ptr %va44.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %va44.i, align 4
  %58 = ptrtoint ptr %format45.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @kunit_binary_assert_format, ptr %format45.i, align 8
  %59 = ptrtoint ptr %operation46.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.20, ptr %operation46.i, align 4
  %60 = ptrtoint ptr %left_text47.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.21, ptr %left_text47.i, align 8
  %conv49.i = zext i32 %shr.i.i.i to i64
  %61 = ptrtoint ptr %left_value48.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %conv49.i, ptr %left_value48.i, align 8
  %62 = ptrtoint ptr %right_text50.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.16, ptr %right_text50.i, align 8
  %63 = ptrtoint ptr %right_value51.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %conv18.i, ptr %right_value51.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i, i32 %sub7.i)
  %cmp54.i = icmp ule i32 %shr.i.i.i, %sub7.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion36.i, i1 noundef zeroext %cmp54.i, ptr noundef nonnull @.str.23, i64 noundef %or, i32 noundef %k.091.i, i32 noundef %shr.i.i.i, i32 noundef %sub7.i) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion36.i) #6
  %inc.i223 = add nuw nsw i32 %k.091.i, 1
  %exitcond.not.i224 = icmp eq i32 %inc.i223, 33
  br i1 %exitcond.not.i224, label %test_int_hash.exit, label %for.body.i225.for.body.i225_crit_edge

for.body.i225.for.body.i225_crit_edge:            ; preds = %for.body.i225
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i225

test_int_hash.exit:                               ; preds = %for.body.i225
  %inc = add nuw nsw i32 %i.0227, 1
  %exitcond = icmp eq i32 %inc, %indvars.iv
  br i1 %exitcond, label %for.inc57, label %test_int_hash.exit.for.body3_crit_edge

test_int_hash.exit.for.body3_crit_edge:           ; preds = %test_int_hash.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body3

for.inc57:                                        ; preds = %test_int_hash.exit
  %dec = add nsw i32 %j.0229, -1
  %cmp.not = icmp eq i32 %dec, 0
  %indvars.iv.next = add nsw i32 %indvars.iv, -1
  br i1 %cmp.not, label %do.body59, label %for.inc57.for.body3.preheader_crit_edge

for.inc57.for.body3.preheader_crit_edge:          ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body3.preheader

do.body59:                                        ; preds = %for.inc57
  %64 = ptrtoint ptr %hash_or to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %hash_or, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion65) #6
  %66 = getelementptr inbounds i8, ptr %__assertion65, i32 32
  %67 = call ptr @memset(ptr %66, i32 255, i32 24)
  %68 = ptrtoint ptr %__assertion65 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %test, ptr %__assertion65, align 8
  %type68 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion65, i32 0, i32 1
  %69 = ptrtoint ptr %type68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %type68, align 4
  %line69 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion65, i32 0, i32 2
  %70 = ptrtoint ptr %line69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 202, ptr %line69, align 8
  %file70 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion65, i32 0, i32 3
  %71 = ptrtoint ptr %file70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.2, ptr %file70, align 4
  %message71 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion65, i32 0, i32 4
  %72 = ptrtoint ptr %message71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %message71, align 8
  %va73 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion65, i32 0, i32 4, i32 1
  %73 = ptrtoint ptr %va73 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %va73, align 4
  %format74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion65, i32 0, i32 5
  %74 = ptrtoint ptr %format74 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @kunit_binary_assert_format, ptr %format74, align 8
  %operation75 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion65, i32 0, i32 1
  %75 = ptrtoint ptr %operation75 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.3, ptr %operation75, align 4
  %left_text76 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion65, i32 0, i32 2
  %76 = ptrtoint ptr %left_text76 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.13, ptr %left_text76, align 8
  %left_value77 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion65, i32 0, i32 3
  %conv78 = zext i32 %65 to i64
  %77 = ptrtoint ptr %left_value77 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %conv78, ptr %left_value77, align 8
  %right_text79 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion65, i32 0, i32 4
  %78 = ptrtoint ptr %right_text79 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.5, ptr %right_text79, align 8
  %right_value80 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion65, i32 0, i32 5
  %79 = ptrtoint ptr %right_value80 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 4294967295, ptr %right_value80, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %cmp83 = icmp eq i32 %65, -1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion65, i1 noundef zeroext %cmp83, ptr noundef nonnull @.str.14, i32 noundef %65, i32 noundef -1) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion65) #6
  %type107 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion104, i32 0, i32 1
  %line108 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion104, i32 0, i32 2
  %file109 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion104, i32 0, i32 3
  %message110 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion104, i32 0, i32 4
  %va112 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion104, i32 0, i32 4, i32 1
  %format113 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion104, i32 0, i32 5
  %operation114 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion104, i32 0, i32 1
  %left_text115 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion104, i32 0, i32 2
  %left_value116 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion104, i32 0, i32 3
  %right_text118 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion104, i32 0, i32 4
  %right_value119 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion104, i32 0, i32 5
  %type139 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 1
  %line140 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 2
  %file141 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 3
  %message142 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 4
  %va144 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 4, i32 1
  %format145 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion136, i32 0, i32 5
  %operation146 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion136, i32 0, i32 1
  %left_text147 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion136, i32 0, i32 2
  %left_value148 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion136, i32 0, i32 3
  %right_text150 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion136, i32 0, i32 4
  %right_value151 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion136, i32 0, i32 5
  %80 = getelementptr inbounds i8, ptr %__assertion104, i32 32
  %81 = getelementptr inbounds i8, ptr %__assertion136, i32 32
  br label %for.body94

for.body94:                                       ; preds = %for.body94.for.body94_crit_edge, %do.body59
  %i.1231 = phi i32 [ 1, %do.body59 ], [ %inc163, %for.body94.for.body94_crit_edge ]
  %sub95 = add nsw i32 %i.1231, -1
  %shl96 = shl i32 2, %sub95
  %sub97 = add i32 %shl96, -1
  %arrayidx101 = getelementptr [33 x i32], ptr %hash_or, i32 0, i32 %i.1231
  %82 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx101, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion104) #6
  %84 = call ptr @memset(ptr %80, i32 255, i32 24)
  %85 = ptrtoint ptr %__assertion104 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %test, ptr %__assertion104, align 8
  %86 = ptrtoint ptr %type107 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %type107, align 4
  %87 = ptrtoint ptr %line108 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 217, ptr %line108, align 8
  %88 = ptrtoint ptr %file109 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.2, ptr %file109, align 4
  %89 = ptrtoint ptr %message110 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %message110, align 8
  %90 = ptrtoint ptr %va112 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %va112, align 4
  %91 = ptrtoint ptr %format113 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @kunit_binary_assert_format, ptr %format113, align 8
  %92 = ptrtoint ptr %operation114 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @.str.3, ptr %operation114, align 4
  %93 = ptrtoint ptr %left_text115 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @.str.15, ptr %left_text115, align 8
  %conv117 = zext i32 %83 to i64
  %94 = ptrtoint ptr %left_value116 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %conv117, ptr %left_value116, align 8
  %95 = ptrtoint ptr %right_text118 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @.str.16, ptr %right_text118, align 8
  %conv120 = zext i32 %sub97 to i64
  %96 = ptrtoint ptr %right_value119 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %conv120, ptr %right_value119, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %sub97)
  %cmp122 = icmp eq i32 %83, %sub97
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion104, i1 noundef zeroext %cmp122, ptr noundef nonnull @.str.17, i32 noundef %i.1231, i32 noundef %83, i32 noundef %sub97) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion104) #6
  %arrayidx133 = getelementptr [2 x [33 x i32]], ptr %hash_or, i32 0, i32 1, i32 %i.1231
  %97 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx133, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion136) #6
  %99 = call ptr @memset(ptr %81, i32 255, i32 24)
  %100 = ptrtoint ptr %__assertion136 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %test, ptr %__assertion136, align 8
  %101 = ptrtoint ptr %type139 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1, ptr %type139, align 4
  %102 = ptrtoint ptr %line140 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 220, ptr %line140, align 8
  %103 = ptrtoint ptr %file141 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @.str.2, ptr %file141, align 4
  %104 = ptrtoint ptr %message142 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %message142, align 8
  %105 = ptrtoint ptr %va144 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %va144, align 4
  %106 = ptrtoint ptr %format145 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @kunit_binary_assert_format, ptr %format145, align 8
  %107 = ptrtoint ptr %operation146 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @.str.3, ptr %operation146, align 4
  %108 = ptrtoint ptr %left_text147 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.18, ptr %left_text147, align 8
  %conv149 = zext i32 %98 to i64
  %109 = ptrtoint ptr %left_value148 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %conv149, ptr %left_value148, align 8
  %110 = ptrtoint ptr %right_text150 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @.str.16, ptr %right_text150, align 8
  %111 = ptrtoint ptr %right_value151 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %conv120, ptr %right_value151, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %sub97)
  %cmp154 = icmp eq i32 %98, %sub97
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion136, i1 noundef zeroext %cmp154, ptr noundef nonnull @.str.19, i32 noundef %i.1231, i32 noundef %98, i32 noundef %sub97) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion136) #6
  %inc163 = add nuw nsw i32 %i.1231, 1
  %exitcond232.not = icmp eq i32 %inc163, 33
  br i1 %exitcond232.not, label %for.end164, label %for.body94.for.body94_crit_edge

for.body94.for.body94_crit_edge:                  ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body94

for.end164:                                       ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %hash_or) #6
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %buf) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i64 @hashlen_string(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !40, !41, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__UNIQUE_ID_suites175, !1, !"__UNIQUE_ID_suites175", i1 false, i1 false}
!1 = !{!"../lib/test_hash.c", i32 236, i32 1}
!2 = !{ptr @__UNIQUE_ID_file176, !3, !"__UNIQUE_ID_file176", i1 false, i1 false}
!3 = !{!"../lib/test_hash.c", i32 238, i32 1}
!4 = !{ptr @__UNIQUE_ID_license177, !3, !"__UNIQUE_ID_license177", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_array174, !1, !"__UNIQUE_ID_array174", i1 false, i1 false}
!6 = !{ptr @hash_test_suite, !7, !"hash_test_suite", i1 false, i1 false}
!7 = !{!"../lib/test_hash.c", i32 230, i32 27}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/test_hash.c", i32 225, i32 2}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/test_hash.c", i32 226, i32 2}
!12 = !{ptr @hash_test_cases, !13, !"hash_test_cases", i1 false, i1 false}
!13 = !{!"../lib/test_hash.c", i32 224, i32 26}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../lib/test_hash.c", i32 164, i32 2}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../lib/test_hash.c", i32 187, i32 4}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../lib/test_hash.c", i32 191, i32 4}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../lib/test_hash.c", i32 200, i32 2}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../lib/test_hash.c", i32 215, i32 3}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../lib/test_hash.c", i32 218, i32 3}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../lib/test_hash.c", i32 127, i32 3}
!40 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../lib/test_hash.c", i32 133, i32 3}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
