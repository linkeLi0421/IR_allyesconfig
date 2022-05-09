; ModuleID = '/llk/IR_all_yes/lib/zlib_inflate/inftrees.c_pt.bc'
source_filename = "../lib/zlib_inflate/inftrees.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.code = type { i8, i8, i16 }

@zlib_inflate_table.lbase = internal constant { [31 x i16], [34 x i8] } { [31 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 31, i16 35, i16 43, i16 51, i16 59, i16 67, i16 83, i16 99, i16 115, i16 131, i16 163, i16 195, i16 227, i16 258, i16 0, i16 0], [34 x i8] zeroinitializer }, align 32
@zlib_inflate_table.lext = internal constant { [31 x i16], [34 x i8] } { [31 x i16] [i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 17, i16 17, i16 18, i16 18, i16 18, i16 18, i16 19, i16 19, i16 19, i16 19, i16 20, i16 20, i16 20, i16 20, i16 21, i16 21, i16 21, i16 21, i16 16, i16 201, i16 196], [34 x i8] zeroinitializer }, align 32
@zlib_inflate_table.dbase = internal constant { [32 x i16], [32 x i8] } { [32 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 7, i16 9, i16 13, i16 17, i16 25, i16 33, i16 49, i16 65, i16 97, i16 129, i16 193, i16 257, i16 385, i16 513, i16 769, i16 1025, i16 1537, i16 2049, i16 3073, i16 4097, i16 6145, i16 8193, i16 12289, i16 16385, i16 24577, i16 0, i16 0], [32 x i8] zeroinitializer }, align 32
@zlib_inflate_table.dext = internal constant { [32 x i16], [32 x i8] } { [32 x i16] [i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 18, i16 18, i16 19, i16 19, i16 20, i16 20, i16 21, i16 21, i16 22, i16 22, i16 23, i16 23, i16 24, i16 24, i16 25, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 28, i16 29, i16 29, i16 64, i16 64], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"lbase\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 46, i32 33 }
@___asan_gen_.4 = private unnamed_addr constant [5 x i8] c"lext\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 49, i32 33 }
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"dbase\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 52, i32 33 }
@___asan_gen_.10 = private unnamed_addr constant [5 x i8] c"dext\00", align 1
@___asan_gen_.11 = private constant [31 x i8] c"../lib/zlib_inflate/inftrees.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 56, i32 33 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @zlib_inflate_table.lbase, ptr @zlib_inflate_table.lext, ptr @zlib_inflate_table.dbase, ptr @zlib_inflate_table.dext], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zlib_inflate_table.lbase to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zlib_inflate_table.lext to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zlib_inflate_table.dbase to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zlib_inflate_table.dext to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zlib_inflate_table(i32 noundef %type, ptr nocapture noundef readonly %lens, i32 noundef %codes, ptr nocapture noundef %table, ptr nocapture noundef %bits, ptr nocapture noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %count = alloca [16 x i16], align 2
  %offs = alloca [16 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %count) #3
  %0 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 6
  %6 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 7
  %7 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 8
  %8 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 9
  %9 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 10
  %10 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 11
  %11 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 12
  %12 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 13
  %13 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 14
  %14 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %offs) #3
  %15 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 1
  %16 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 2
  %17 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 3
  %18 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 4
  %19 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 5
  %20 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 6
  %21 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 7
  %22 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 8
  %23 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 9
  %24 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 10
  %25 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 11
  %26 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 12
  %27 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 13
  %28 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 14
  %29 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 15
  %30 = ptrtoint ptr %offs to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1, ptr %offs, align 2
  %31 = call ptr @memset(ptr %count, i32 0, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %codes)
  %cmp2459.not = icmp eq i32 %codes, 0
  br i1 %cmp2459.not, label %entry.for.end9_crit_edge, label %entry.for.body3_crit_edge

entry.for.body3_crit_edge:                        ; preds = %entry
  br label %for.body3

entry.for.end9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end9

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %entry.for.body3_crit_edge
  %sym.0460 = phi i32 [ %inc8, %for.body3.for.body3_crit_edge ], [ 0, %entry.for.body3_crit_edge ]
  %arrayidx4 = getelementptr i16, ptr %lens, i32 %sym.0460
  %32 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx4, align 2
  %idxprom = zext i16 %33 to i32
  %arrayidx5 = getelementptr [16 x i16], ptr %count, i32 0, i32 %idxprom
  %34 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx5, align 2
  %inc6 = add i16 %35, 1
  store i16 %inc6, ptr %arrayidx5, align 2
  %inc8 = add nuw i32 %sym.0460, 1
  %exitcond.not = icmp eq i32 %inc8, %codes
  br i1 %exitcond.not, label %for.body3.for.end9_crit_edge, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body3

for.body3.for.end9_crit_edge:                     ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end9

for.end9:                                         ; preds = %for.body3.for.end9_crit_edge, %entry.for.end9_crit_edge
  %36 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bits, align 4
  %38 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %14, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp14.not = icmp eq i16 %39, 0
  br i1 %cmp14.not, label %for.inc16, label %for.end9.for.end17_crit_edge

for.end9.for.end17_crit_edge:                     ; preds = %for.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end17

for.inc16:                                        ; preds = %for.end9
  %40 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %13, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp14.not.1 = icmp eq i16 %41, 0
  br i1 %cmp14.not.1, label %for.inc16.1, label %for.inc16.for.end17_crit_edge

for.inc16.for.end17_crit_edge:                    ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end17

for.inc16.1:                                      ; preds = %for.inc16
  %42 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %12, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp14.not.2 = icmp eq i16 %43, 0
  br i1 %cmp14.not.2, label %for.inc16.2, label %for.inc16.1.for.end17_crit_edge

for.inc16.1.for.end17_crit_edge:                  ; preds = %for.inc16.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end17

for.inc16.2:                                      ; preds = %for.inc16.1
  %44 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp14.not.3 = icmp eq i16 %45, 0
  br i1 %cmp14.not.3, label %for.inc16.3, label %for.inc16.2.for.end17_crit_edge

for.inc16.2.for.end17_crit_edge:                  ; preds = %for.inc16.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end17

for.inc16.3:                                      ; preds = %for.inc16.2
  %46 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp14.not.4 = icmp eq i16 %47, 0
  br i1 %cmp14.not.4, label %for.inc16.4, label %for.inc16.3.for.end17_crit_edge

for.inc16.3.for.end17_crit_edge:                  ; preds = %for.inc16.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end17

for.inc16.4:                                      ; preds = %for.inc16.3
  %48 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp14.not.5 = icmp eq i16 %49, 0
  br i1 %cmp14.not.5, label %for.inc16.5, label %for.inc16.4.for.end17_crit_edge

for.inc16.4.for.end17_crit_edge:                  ; preds = %for.inc16.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end17

for.inc16.5:                                      ; preds = %for.inc16.4
  %50 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp14.not.6 = icmp eq i16 %51, 0
  br i1 %cmp14.not.6, label %for.inc16.6, label %for.inc16.5.for.end17_crit_edge

for.inc16.5.for.end17_crit_edge:                  ; preds = %for.inc16.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end17

for.inc16.6:                                      ; preds = %for.inc16.5
  %52 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp14.not.7 = icmp eq i16 %53, 0
  br i1 %cmp14.not.7, label %for.inc16.7, label %for.inc16.6.for.end17_crit_edge

for.inc16.6.for.end17_crit_edge:                  ; preds = %for.inc16.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end17

for.inc16.7:                                      ; preds = %for.inc16.6
  %54 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %cmp14.not.8 = icmp eq i16 %55, 0
  br i1 %cmp14.not.8, label %for.inc16.8, label %for.inc16.7.for.end17_crit_edge

for.inc16.7.for.end17_crit_edge:                  ; preds = %for.inc16.7
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end17

for.inc16.8:                                      ; preds = %for.inc16.7
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp14.not.9 = icmp eq i16 %57, 0
  br i1 %cmp14.not.9, label %for.inc16.9, label %for.inc16.8.for.end17_crit_edge

for.inc16.8.for.end17_crit_edge:                  ; preds = %for.inc16.8
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end17

for.inc16.9:                                      ; preds = %for.inc16.8
  %58 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp14.not.10 = icmp eq i16 %59, 0
  br i1 %cmp14.not.10, label %for.inc16.10, label %for.inc16.9.for.end17_crit_edge

for.inc16.9.for.end17_crit_edge:                  ; preds = %for.inc16.9
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end17

for.inc16.10:                                     ; preds = %for.inc16.9
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp14.not.11 = icmp eq i16 %61, 0
  br i1 %cmp14.not.11, label %for.inc16.11, label %for.inc16.10.for.end17_crit_edge

for.inc16.10.for.end17_crit_edge:                 ; preds = %for.inc16.10
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end17

for.inc16.11:                                     ; preds = %for.inc16.10
  %62 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp14.not.12 = icmp eq i16 %63, 0
  br i1 %cmp14.not.12, label %for.inc16.12, label %for.inc16.11.for.end17_crit_edge

for.inc16.11.for.end17_crit_edge:                 ; preds = %for.inc16.11
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end17

for.inc16.12:                                     ; preds = %for.inc16.11
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %cmp14.not.13 = icmp eq i16 %65, 0
  br i1 %cmp14.not.13, label %for.inc16.13, label %for.inc16.12.for.end17_crit_edge

for.inc16.12.for.end17_crit_edge:                 ; preds = %for.inc16.12
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end17

for.inc16.13:                                     ; preds = %for.inc16.12
  %66 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp14.not.14 = icmp eq i16 %67, 0
  br i1 %cmp14.not.14, label %for.inc16.14, label %for.end17.thread

for.end17.thread:                                 ; preds = %for.inc16.13
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %68 = icmp ne i32 %37, 0
  %69 = zext i1 %68 to i32
  br label %for.end40

for.inc16.14:                                     ; preds = %for.inc16.13
  call void @__sanitizer_cov_trace_pc() #5
  %70 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %table, align 4
  %incdec.ptr = getelementptr %struct.code, ptr %71, i32 1
  store ptr %incdec.ptr, ptr %table, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 64, ptr %71, align 2
  %this.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %71, i32 1
  %73 = ptrtoint ptr %this.sroa.12.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %this.sroa.12.0..sroa_idx, align 1
  %this.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %71, i32 2
  %74 = ptrtoint ptr %this.sroa.17.0..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %this.sroa.17.0..sroa_idx, align 2
  %75 = load ptr, ptr %table, align 4
  %incdec.ptr26 = getelementptr %struct.code, ptr %75, i32 1
  store ptr %incdec.ptr26, ptr %table, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 64, ptr %75, align 2
  %this.sroa.12.0..sroa_idx297 = getelementptr inbounds i8, ptr %75, i32 1
  %77 = ptrtoint ptr %this.sroa.12.0..sroa_idx297 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %this.sroa.12.0..sroa_idx297, align 1
  %this.sroa.17.0..sroa_idx301 = getelementptr inbounds i8, ptr %75, i32 2
  %78 = ptrtoint ptr %this.sroa.17.0..sroa_idx301 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %this.sroa.17.0..sroa_idx301, align 2
  br label %cleanup.sink.split

for.end17:                                        ; preds = %for.inc16.12.for.end17_crit_edge, %for.inc16.11.for.end17_crit_edge, %for.inc16.10.for.end17_crit_edge, %for.inc16.9.for.end17_crit_edge, %for.inc16.8.for.end17_crit_edge, %for.inc16.7.for.end17_crit_edge, %for.inc16.6.for.end17_crit_edge, %for.inc16.5.for.end17_crit_edge, %for.inc16.4.for.end17_crit_edge, %for.inc16.3.for.end17_crit_edge, %for.inc16.2.for.end17_crit_edge, %for.inc16.1.for.end17_crit_edge, %for.inc16.for.end17_crit_edge, %for.end9.for.end17_crit_edge
  %max.0461.lcssa.ph = phi i32 [ 15, %for.end9.for.end17_crit_edge ], [ 14, %for.inc16.for.end17_crit_edge ], [ 13, %for.inc16.1.for.end17_crit_edge ], [ 12, %for.inc16.2.for.end17_crit_edge ], [ 11, %for.inc16.3.for.end17_crit_edge ], [ 10, %for.inc16.4.for.end17_crit_edge ], [ 9, %for.inc16.5.for.end17_crit_edge ], [ 8, %for.inc16.6.for.end17_crit_edge ], [ 7, %for.inc16.7.for.end17_crit_edge ], [ 6, %for.inc16.8.for.end17_crit_edge ], [ 5, %for.inc16.9.for.end17_crit_edge ], [ 4, %for.inc16.10.for.end17_crit_edge ], [ 3, %for.inc16.11.for.end17_crit_edge ], [ 2, %for.inc16.12.for.end17_crit_edge ]
  %79 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %79)
  %.pr = load i16, ptr %0, align 2
  %80 = tail call i32 @llvm.umin.i32(i32 %37, i32 %max.0461.lcssa.ph)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %cmp34.not = icmp eq i16 %.pr, 0
  br i1 %cmp34.not, label %for.inc38, label %for.end17.for.end40_crit_edge

for.end17.for.end40_crit_edge:                    ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end40

for.inc38:                                        ; preds = %for.end17
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %cmp34.not.1 = icmp eq i16 %82, 0
  br i1 %cmp34.not.1, label %for.inc38.1, label %for.inc38.for.end40thread-pre-split_crit_edge

for.inc38.for.end40thread-pre-split_crit_edge:    ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end40thread-pre-split

for.inc38.1:                                      ; preds = %for.inc38
  %83 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %cmp34.not.2 = icmp eq i16 %84, 0
  br i1 %cmp34.not.2, label %for.inc38.2, label %for.inc38.1.for.end40thread-pre-split_crit_edge

for.inc38.1.for.end40thread-pre-split_crit_edge:  ; preds = %for.inc38.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end40thread-pre-split

for.inc38.2:                                      ; preds = %for.inc38.1
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %cmp34.not.3 = icmp eq i16 %86, 0
  br i1 %cmp34.not.3, label %for.inc38.3, label %for.inc38.2.for.end40thread-pre-split_crit_edge

for.inc38.2.for.end40thread-pre-split_crit_edge:  ; preds = %for.inc38.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end40thread-pre-split

for.inc38.3:                                      ; preds = %for.inc38.2
  %87 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %cmp34.not.4 = icmp eq i16 %88, 0
  br i1 %cmp34.not.4, label %for.inc38.4, label %for.inc38.3.for.end40thread-pre-split_crit_edge

for.inc38.3.for.end40thread-pre-split_crit_edge:  ; preds = %for.inc38.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end40thread-pre-split

for.inc38.4:                                      ; preds = %for.inc38.3
  %89 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %cmp34.not.5 = icmp eq i16 %90, 0
  br i1 %cmp34.not.5, label %for.inc38.5, label %for.inc38.4.for.end40thread-pre-split_crit_edge

for.inc38.4.for.end40thread-pre-split_crit_edge:  ; preds = %for.inc38.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end40thread-pre-split

for.inc38.5:                                      ; preds = %for.inc38.4
  %91 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %cmp34.not.6 = icmp eq i16 %92, 0
  br i1 %cmp34.not.6, label %for.inc38.6, label %for.inc38.5.for.end40thread-pre-split_crit_edge

for.inc38.5.for.end40thread-pre-split_crit_edge:  ; preds = %for.inc38.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end40thread-pre-split

for.inc38.6:                                      ; preds = %for.inc38.5
  %93 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %cmp34.not.7 = icmp eq i16 %94, 0
  br i1 %cmp34.not.7, label %for.inc38.7, label %for.inc38.6.for.end40thread-pre-split_crit_edge

for.inc38.6.for.end40thread-pre-split_crit_edge:  ; preds = %for.inc38.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end40thread-pre-split

for.inc38.7:                                      ; preds = %for.inc38.6
  %95 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %cmp34.not.8 = icmp eq i16 %96, 0
  br i1 %cmp34.not.8, label %for.inc38.8, label %for.inc38.7.for.end40thread-pre-split_crit_edge

for.inc38.7.for.end40thread-pre-split_crit_edge:  ; preds = %for.inc38.7
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end40thread-pre-split

for.inc38.8:                                      ; preds = %for.inc38.7
  %97 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %cmp34.not.9 = icmp eq i16 %98, 0
  br i1 %cmp34.not.9, label %for.inc38.9, label %for.inc38.8.for.end40thread-pre-split_crit_edge

for.inc38.8.for.end40thread-pre-split_crit_edge:  ; preds = %for.inc38.8
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end40thread-pre-split

for.inc38.9:                                      ; preds = %for.inc38.8
  %99 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %cmp34.not.10 = icmp eq i16 %100, 0
  br i1 %cmp34.not.10, label %for.inc38.10, label %for.inc38.9.for.end40thread-pre-split_crit_edge

for.inc38.9.for.end40thread-pre-split_crit_edge:  ; preds = %for.inc38.9
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end40thread-pre-split

for.inc38.10:                                     ; preds = %for.inc38.9
  %101 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %cmp34.not.11 = icmp eq i16 %102, 0
  br i1 %cmp34.not.11, label %for.inc38.11, label %for.inc38.10.for.end40thread-pre-split_crit_edge

for.inc38.10.for.end40thread-pre-split_crit_edge: ; preds = %for.inc38.10
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end40thread-pre-split

for.inc38.11:                                     ; preds = %for.inc38.10
  %103 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %12, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %cmp34.not.12 = icmp eq i16 %104, 0
  br i1 %cmp34.not.12, label %for.inc38.12, label %for.inc38.11.for.end40thread-pre-split_crit_edge

for.inc38.11.for.end40thread-pre-split_crit_edge: ; preds = %for.inc38.11
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end40thread-pre-split

for.inc38.12:                                     ; preds = %for.inc38.11
  call void @__sanitizer_cov_trace_pc() #5
  %105 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %13, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %cmp34.not.13 = icmp eq i16 %106, 0
  %spec.select = select i1 %cmp34.not.13, i32 15, i32 14
  br label %for.end40thread-pre-split

for.end40thread-pre-split:                        ; preds = %for.inc38.12, %for.inc38.11.for.end40thread-pre-split_crit_edge, %for.inc38.10.for.end40thread-pre-split_crit_edge, %for.inc38.9.for.end40thread-pre-split_crit_edge, %for.inc38.8.for.end40thread-pre-split_crit_edge, %for.inc38.7.for.end40thread-pre-split_crit_edge, %for.inc38.6.for.end40thread-pre-split_crit_edge, %for.inc38.5.for.end40thread-pre-split_crit_edge, %for.inc38.4.for.end40thread-pre-split_crit_edge, %for.inc38.3.for.end40thread-pre-split_crit_edge, %for.inc38.2.for.end40thread-pre-split_crit_edge, %for.inc38.1.for.end40thread-pre-split_crit_edge, %for.inc38.for.end40thread-pre-split_crit_edge
  %min.0.lcssa.ph = phi i32 [ 13, %for.inc38.11.for.end40thread-pre-split_crit_edge ], [ 12, %for.inc38.10.for.end40thread-pre-split_crit_edge ], [ 11, %for.inc38.9.for.end40thread-pre-split_crit_edge ], [ 10, %for.inc38.8.for.end40thread-pre-split_crit_edge ], [ 9, %for.inc38.7.for.end40thread-pre-split_crit_edge ], [ 8, %for.inc38.6.for.end40thread-pre-split_crit_edge ], [ 7, %for.inc38.5.for.end40thread-pre-split_crit_edge ], [ 6, %for.inc38.4.for.end40thread-pre-split_crit_edge ], [ 5, %for.inc38.3.for.end40thread-pre-split_crit_edge ], [ 4, %for.inc38.2.for.end40thread-pre-split_crit_edge ], [ 3, %for.inc38.1.for.end40thread-pre-split_crit_edge ], [ 2, %for.inc38.for.end40thread-pre-split_crit_edge ], [ %spec.select, %for.inc38.12 ]
  %107 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %107)
  %.pr501 = load i16, ptr %0, align 2
  br label %for.end40

for.end40:                                        ; preds = %for.end40thread-pre-split, %for.end17.for.end40_crit_edge, %for.end17.thread
  %108 = phi i16 [ %.pr501, %for.end40thread-pre-split ], [ %67, %for.end17.thread ], [ %.pr, %for.end17.for.end40_crit_edge ]
  %109 = phi i32 [ %80, %for.end40thread-pre-split ], [ %69, %for.end17.thread ], [ %80, %for.end17.for.end40_crit_edge ]
  %max.0461.lcssa500 = phi i32 [ %max.0461.lcssa.ph, %for.end40thread-pre-split ], [ 1, %for.end17.thread ], [ %max.0461.lcssa.ph, %for.end17.for.end40_crit_edge ]
  %cmp62.not499 = phi i1 [ false, %for.end40thread-pre-split ], [ true, %for.end17.thread ], [ false, %for.end17.for.end40_crit_edge ]
  %min.0.lcssa = phi i32 [ %min.0.lcssa.ph, %for.end40thread-pre-split ], [ 1, %for.end17.thread ], [ 1, %for.end17.for.end40_crit_edge ]
  %110 = tail call i32 @llvm.umax.i32(i32 %109, i32 %min.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %108)
  %cmp51 = icmp ugt i16 %108, 2
  br i1 %cmp51, label %for.end40.cleanup_crit_edge, label %for.cond45

for.end40.cleanup_crit_edge:                      ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond45:                                       ; preds = %for.end40
  %conv50 = zext i16 %108 to i32
  %.neg = mul nsw i32 %conv50, -2
  %shl.1 = add nsw i32 %.neg, 4
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %1, align 2
  %conv50.1 = zext i16 %112 to i32
  %sub.1 = sub nsw i32 %shl.1, %conv50.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.1)
  %cmp51.1 = icmp slt i32 %sub.1, 0
  br i1 %cmp51.1, label %for.cond45.cleanup_crit_edge, label %for.cond45.1

for.cond45.cleanup_crit_edge:                     ; preds = %for.cond45
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond45.1:                                     ; preds = %for.cond45
  %shl.2 = shl nuw nsw i32 %sub.1, 1
  %113 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %2, align 2
  %conv50.2 = zext i16 %114 to i32
  %sub.2 = sub nsw i32 %shl.2, %conv50.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.2)
  %cmp51.2 = icmp slt i32 %sub.2, 0
  br i1 %cmp51.2, label %for.cond45.1.cleanup_crit_edge, label %for.cond45.2

for.cond45.1.cleanup_crit_edge:                   ; preds = %for.cond45.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond45.2:                                     ; preds = %for.cond45.1
  %shl.3 = shl nuw nsw i32 %sub.2, 1
  %115 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %3, align 2
  %conv50.3 = zext i16 %116 to i32
  %sub.3 = sub nsw i32 %shl.3, %conv50.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.3)
  %cmp51.3 = icmp slt i32 %sub.3, 0
  br i1 %cmp51.3, label %for.cond45.2.cleanup_crit_edge, label %for.cond45.3

for.cond45.2.cleanup_crit_edge:                   ; preds = %for.cond45.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond45.3:                                     ; preds = %for.cond45.2
  %shl.4 = shl nuw nsw i32 %sub.3, 1
  %117 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %4, align 2
  %conv50.4 = zext i16 %118 to i32
  %sub.4 = sub nsw i32 %shl.4, %conv50.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.4)
  %cmp51.4 = icmp slt i32 %sub.4, 0
  br i1 %cmp51.4, label %for.cond45.3.cleanup_crit_edge, label %for.cond45.4

for.cond45.3.cleanup_crit_edge:                   ; preds = %for.cond45.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond45.4:                                     ; preds = %for.cond45.3
  %shl.5 = shl nuw nsw i32 %sub.4, 1
  %119 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %5, align 2
  %conv50.5 = zext i16 %120 to i32
  %sub.5 = sub nsw i32 %shl.5, %conv50.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.5)
  %cmp51.5 = icmp slt i32 %sub.5, 0
  br i1 %cmp51.5, label %for.cond45.4.cleanup_crit_edge, label %for.cond45.5

for.cond45.4.cleanup_crit_edge:                   ; preds = %for.cond45.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond45.5:                                     ; preds = %for.cond45.4
  %shl.6 = shl nuw nsw i32 %sub.5, 1
  %121 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %6, align 2
  %conv50.6 = zext i16 %122 to i32
  %sub.6 = sub nsw i32 %shl.6, %conv50.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.6)
  %cmp51.6 = icmp slt i32 %sub.6, 0
  br i1 %cmp51.6, label %for.cond45.5.cleanup_crit_edge, label %for.cond45.6

for.cond45.5.cleanup_crit_edge:                   ; preds = %for.cond45.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond45.6:                                     ; preds = %for.cond45.5
  %shl.7 = shl nuw nsw i32 %sub.6, 1
  %123 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %7, align 2
  %conv50.7 = zext i16 %124 to i32
  %sub.7 = sub nsw i32 %shl.7, %conv50.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.7)
  %cmp51.7 = icmp slt i32 %sub.7, 0
  br i1 %cmp51.7, label %for.cond45.6.cleanup_crit_edge, label %for.cond45.7

for.cond45.6.cleanup_crit_edge:                   ; preds = %for.cond45.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond45.7:                                     ; preds = %for.cond45.6
  %shl.8 = shl nuw nsw i32 %sub.7, 1
  %125 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %8, align 2
  %conv50.8 = zext i16 %126 to i32
  %sub.8 = sub nsw i32 %shl.8, %conv50.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.8)
  %cmp51.8 = icmp slt i32 %sub.8, 0
  br i1 %cmp51.8, label %for.cond45.7.cleanup_crit_edge, label %for.cond45.8

for.cond45.7.cleanup_crit_edge:                   ; preds = %for.cond45.7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond45.8:                                     ; preds = %for.cond45.7
  %shl.9 = shl nuw nsw i32 %sub.8, 1
  %127 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %9, align 2
  %conv50.9 = zext i16 %128 to i32
  %sub.9 = sub nsw i32 %shl.9, %conv50.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.9)
  %cmp51.9 = icmp slt i32 %sub.9, 0
  br i1 %cmp51.9, label %for.cond45.8.cleanup_crit_edge, label %for.cond45.9

for.cond45.8.cleanup_crit_edge:                   ; preds = %for.cond45.8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond45.9:                                     ; preds = %for.cond45.8
  %shl.10 = shl nuw nsw i32 %sub.9, 1
  %129 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %10, align 2
  %conv50.10 = zext i16 %130 to i32
  %sub.10 = sub nsw i32 %shl.10, %conv50.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.10)
  %cmp51.10 = icmp slt i32 %sub.10, 0
  br i1 %cmp51.10, label %for.cond45.9.cleanup_crit_edge, label %for.cond45.10

for.cond45.9.cleanup_crit_edge:                   ; preds = %for.cond45.9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond45.10:                                    ; preds = %for.cond45.9
  %shl.11 = shl nuw nsw i32 %sub.10, 1
  %131 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %11, align 2
  %conv50.11 = zext i16 %132 to i32
  %sub.11 = sub nsw i32 %shl.11, %conv50.11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.11)
  %cmp51.11 = icmp slt i32 %sub.11, 0
  br i1 %cmp51.11, label %for.cond45.10.cleanup_crit_edge, label %for.cond45.11

for.cond45.10.cleanup_crit_edge:                  ; preds = %for.cond45.10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond45.11:                                    ; preds = %for.cond45.10
  %shl.12 = shl nuw nsw i32 %sub.11, 1
  %133 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %12, align 2
  %conv50.12 = zext i16 %134 to i32
  %sub.12 = sub nsw i32 %shl.12, %conv50.12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.12)
  %cmp51.12 = icmp slt i32 %sub.12, 0
  br i1 %cmp51.12, label %for.cond45.11.cleanup_crit_edge, label %for.cond45.12

for.cond45.11.cleanup_crit_edge:                  ; preds = %for.cond45.11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond45.12:                                    ; preds = %for.cond45.11
  %shl.13 = shl nuw nsw i32 %sub.12, 1
  %135 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %13, align 2
  %conv50.13 = zext i16 %136 to i32
  %sub.13 = sub nsw i32 %shl.13, %conv50.13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.13)
  %cmp51.13 = icmp slt i32 %sub.13, 0
  br i1 %cmp51.13, label %for.cond45.12.cleanup_crit_edge, label %for.cond45.13

for.cond45.12.cleanup_crit_edge:                  ; preds = %for.cond45.12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond45.13:                                    ; preds = %for.cond45.12
  %shl.14 = shl nuw nsw i32 %sub.13, 1
  %137 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %14, align 2
  %conv50.14 = zext i16 %138 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.14, i32 %conv50.14)
  %cmp51.14 = icmp slt i32 %shl.14, %conv50.14
  br i1 %cmp51.14, label %for.cond45.13.cleanup_crit_edge, label %for.cond45.14

for.cond45.13.cleanup_crit_edge:                  ; preds = %for.cond45.13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond45.14:                                    ; preds = %for.cond45.13
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.14, i32 %conv50.14)
  %cmp58.not = icmp eq i32 %shl.14, %conv50.14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp60 = icmp ne i32 %type, 0
  %or.cond = and i1 %cmp60, %cmp62.not499
  %or.cond523 = or i1 %cmp58.not, %or.cond
  br i1 %or.cond523, label %if.end65, label %for.cond45.14.cleanup_crit_edge

for.cond45.14.cleanup_crit_edge:                  ; preds = %for.cond45.14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end65:                                         ; preds = %for.cond45.14
  %139 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 0, ptr %15, align 2
  %140 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %0, align 2
  %142 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %141, ptr %16, align 2
  %143 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %1, align 2
  %add.1 = add i16 %144, %141
  %145 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %add.1, ptr %17, align 2
  %146 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %2, align 2
  %add.2 = add i16 %147, %add.1
  %148 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %add.2, ptr %18, align 2
  %149 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %3, align 2
  %add.3 = add i16 %150, %add.2
  %151 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %add.3, ptr %19, align 2
  %152 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %4, align 2
  %add.4 = add i16 %153, %add.3
  %154 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %add.4, ptr %20, align 2
  %155 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %5, align 2
  %add.5 = add i16 %156, %add.4
  %157 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %add.5, ptr %21, align 2
  %158 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %6, align 2
  %add.6 = add i16 %159, %add.5
  %160 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %add.6, ptr %22, align 2
  %161 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %7, align 2
  %add.7 = add i16 %162, %add.6
  %163 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %add.7, ptr %23, align 2
  %164 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %8, align 2
  %add.8 = add i16 %165, %add.7
  %166 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %add.8, ptr %24, align 2
  %167 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %9, align 2
  %add.9 = add i16 %168, %add.8
  %169 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %add.9, ptr %25, align 2
  %170 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %10, align 2
  %add.10 = add i16 %171, %add.9
  %172 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %add.10, ptr %26, align 2
  %173 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %11, align 2
  %add.11 = add i16 %174, %add.10
  %175 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %add.11, ptr %27, align 2
  %176 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %12, align 2
  %add.12 = add i16 %177, %add.11
  %178 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %add.12, ptr %28, align 2
  %179 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %13, align 2
  %add.13 = add i16 %180, %add.12
  %181 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %add.13, ptr %29, align 2
  br i1 %cmp2459.not, label %if.end65.for.end100_crit_edge, label %if.end65.for.body84_crit_edge

if.end65.for.body84_crit_edge:                    ; preds = %if.end65
  br label %for.body84

if.end65.for.end100_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end100

for.body84:                                       ; preds = %for.inc98.for.body84_crit_edge, %if.end65.for.body84_crit_edge
  %sym.1467 = phi i32 [ %inc99, %for.inc98.for.body84_crit_edge ], [ 0, %if.end65.for.body84_crit_edge ]
  %arrayidx85 = getelementptr i16, ptr %lens, i32 %sym.1467
  %182 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %arrayidx85, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %183)
  %cmp87.not = icmp eq i16 %183, 0
  br i1 %cmp87.not, label %for.body84.for.inc98_crit_edge, label %if.then89

for.body84.for.inc98_crit_edge:                   ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc98

if.then89:                                        ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #5
  %conv86 = zext i16 %183 to i32
  %conv90 = trunc i32 %sym.1467 to i16
  %arrayidx93 = getelementptr [16 x i16], ptr %offs, i32 0, i32 %conv86
  %184 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %arrayidx93, align 2
  %inc94 = add i16 %185, 1
  store i16 %inc94, ptr %arrayidx93, align 2
  %idxprom95 = zext i16 %185 to i32
  %arrayidx96 = getelementptr i16, ptr %work, i32 %idxprom95
  %186 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %conv90, ptr %arrayidx96, align 2
  br label %for.inc98

for.inc98:                                        ; preds = %if.then89, %for.body84.for.inc98_crit_edge
  %inc99 = add nuw i32 %sym.1467, 1
  %exitcond495.not = icmp eq i32 %inc99, %codes
  br i1 %exitcond495.not, label %for.inc98.for.end100_crit_edge, label %for.inc98.for.body84_crit_edge

for.inc98.for.body84_crit_edge:                   ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body84

for.inc98.for.end100_crit_edge:                   ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end100

for.end100:                                       ; preds = %for.inc98.for.end100_crit_edge, %if.end65.for.end100_crit_edge
  %187 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %187, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %sw.default [
    i32 0, label %for.end100.for.cond112.preheader_crit_edge
    i32 1, label %sw.epilog
  ]

for.end100.for.cond112.preheader_crit_edge:       ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond112.preheader

sw.default:                                       ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond112.preheader

sw.epilog:                                        ; preds = %for.end100
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %110)
  %cmp108 = icmp ugt i32 %110, 10
  br i1 %cmp108, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.for.cond112.preheader_crit_edge

sw.epilog.for.cond112.preheader_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond112.preheader

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond112.preheader:                            ; preds = %sw.epilog.for.cond112.preheader_crit_edge, %sw.default, %for.end100.for.cond112.preheader_crit_edge
  %cmp105515 = phi i1 [ true, %sw.epilog.for.cond112.preheader_crit_edge ], [ false, %for.end100.for.cond112.preheader_crit_edge ], [ false, %sw.default ]
  %end.0512 = phi i32 [ 256, %sw.epilog.for.cond112.preheader_crit_edge ], [ 19, %for.end100.for.cond112.preheader_crit_edge ], [ -1, %sw.default ]
  %extra.0511 = phi ptr [ getelementptr ([31 x i16], ptr @zlib_inflate_table.lext, i32 -9, i32 22), %sw.epilog.for.cond112.preheader_crit_edge ], [ %work, %for.end100.for.cond112.preheader_crit_edge ], [ @zlib_inflate_table.dext, %sw.default ]
  %base.0510 = phi ptr [ getelementptr ([31 x i16], ptr @zlib_inflate_table.lbase, i32 -9, i32 22), %sw.epilog.for.cond112.preheader_crit_edge ], [ %work, %for.end100.for.cond112.preheader_crit_edge ], [ @zlib_inflate_table.dbase, %sw.default ]
  %shl103513 = shl nuw i32 1, %110
  %sub104514 = add nsw i32 %shl103513, -1
  %188 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %table, align 4
  %conv221 = trunc i32 %110 to i8
  br label %for.cond112.outer

for.cond112.outer:                                ; preds = %if.end216, %for.cond112.preheader
  %len.3.ph = phi i32 [ %len.4, %if.end216 ], [ %min.0.lcssa, %for.cond112.preheader ]
  %sym.2.ph = phi i32 [ %inc162, %if.end216 ], [ 0, %for.cond112.preheader ]
  %curr.0.ph = phi i32 [ %curr.1.lcssa, %if.end216 ], [ %110, %for.cond112.preheader ]
  %drop.0.ph = phi i32 [ %spec.select442, %if.end216 ], [ 0, %for.cond112.preheader ]
  %used.0.ph = phi i32 [ %add209, %if.end216 ], [ %shl103513, %for.cond112.preheader ]
  %huff.0.ph = phi i32 [ %huff.1, %if.end216 ], [ 0, %for.cond112.preheader ]
  %low.0.ph = phi i32 [ %and181, %if.end216 ], [ -1, %for.cond112.preheader ]
  %next.0.ph = phi ptr [ %add.ptr189, %if.end216 ], [ %189, %for.cond112.preheader ]
  %shl145 = shl nuw i32 1, %curr.0.ph
  br label %for.cond112

for.cond112:                                      ; preds = %for.cond112.backedge, %for.cond112.outer
  %len.3 = phi i32 [ %len.3.ph, %for.cond112.outer ], [ %len.4, %for.cond112.backedge ]
  %sym.2 = phi i32 [ %sym.2.ph, %for.cond112.outer ], [ %inc162, %for.cond112.backedge ]
  %huff.0 = phi i32 [ %huff.0.ph, %for.cond112.outer ], [ %huff.1, %for.cond112.backedge ]
  %sub113 = sub i32 %len.3, %drop.0.ph
  %conv114 = trunc i32 %sub113 to i8
  %arrayidx116 = getelementptr i16, ptr %work, i32 %sym.2
  %190 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %arrayidx116, align 2
  %conv117 = zext i16 %191 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %end.0512, i32 %conv117)
  %cmp118 = icmp sgt i32 %end.0512, %conv117
  br i1 %cmp118, label %for.cond112.if.end142_crit_edge, label %if.else

for.cond112.if.end142_crit_edge:                  ; preds = %for.cond112
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end142

if.else:                                          ; preds = %for.cond112
  call void @__sanitizer_cov_trace_cmp4(i32 %end.0512, i32 %conv117)
  %cmp126 = icmp slt i32 %end.0512, %conv117
  br i1 %cmp126, label %if.then128, label %if.else.if.end142_crit_edge

if.else.if.end142_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end142

if.then128:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx131 = getelementptr i16, ptr %extra.0511, i32 %conv117
  %192 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %arrayidx131, align 2
  %conv132 = trunc i16 %193 to i8
  %arrayidx136 = getelementptr i16, ptr %base.0510, i32 %conv117
  %194 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %arrayidx136, align 2
  br label %if.end142

if.end142:                                        ; preds = %if.then128, %if.else.if.end142_crit_edge, %for.cond112.if.end142_crit_edge
  %this.sroa.17.0 = phi i16 [ %195, %if.then128 ], [ %191, %for.cond112.if.end142_crit_edge ], [ 0, %if.else.if.end142_crit_edge ]
  %this.sroa.0.0 = phi i8 [ %conv132, %if.then128 ], [ 0, %for.cond112.if.end142_crit_edge ], [ 96, %if.else.if.end142_crit_edge ]
  %shl144.neg = shl nsw i32 -1, %sub113
  %shr = lshr i32 %huff.0, %drop.0.ph
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end142
  %fill.0 = phi i32 [ %shl145, %if.end142 ], [ %sub146, %do.body.do.body_crit_edge ]
  %sub146 = add i32 %fill.0, %shl144.neg
  %add147 = add i32 %sub146, %shr
  %arrayidx148 = getelementptr %struct.code, ptr %next.0.ph, i32 %add147
  %196 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %this.sroa.0.0, ptr %arrayidx148, align 2
  %this.sroa.12.0.arrayidx148.sroa_idx = getelementptr inbounds i8, ptr %arrayidx148, i32 1
  %197 = ptrtoint ptr %this.sroa.12.0.arrayidx148.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %conv114, ptr %this.sroa.12.0.arrayidx148.sroa_idx, align 1
  %this.sroa.17.0.arrayidx148.sroa_idx = getelementptr inbounds i8, ptr %arrayidx148, i32 2
  %198 = ptrtoint ptr %this.sroa.17.0.arrayidx148.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %this.sroa.17.0, ptr %this.sroa.17.0.arrayidx148.sroa_idx, align 2
  %cmp149.not = icmp eq i32 %sub146, 0
  br i1 %cmp149.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.end:                                           ; preds = %do.body
  %sub151 = add i32 %len.3, -1
  %shl152 = shl nuw i32 1, %sub151
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %do.end
  %incr.0 = phi i32 [ %shl152, %do.end ], [ %shr153, %while.cond.while.cond_crit_edge ]
  %and = and i32 %incr.0, %huff.0
  %tobool.not = icmp eq i32 %and, 0
  %shr153 = lshr i32 %incr.0, 1
  br i1 %tobool.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %incr.0)
  %cmp154.not = icmp eq i32 %incr.0, 0
  %sub157 = add i32 %incr.0, -1
  %and158 = and i32 %sub157, %huff.0
  %add159 = add i32 %and158, %incr.0
  %huff.1 = select i1 %cmp154.not, i32 0, i32 %add159
  %inc162 = add i32 %sym.2, 1
  %arrayidx163 = getelementptr [16 x i16], ptr %count, i32 0, i32 %len.3
  %199 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %arrayidx163, align 2
  %dec164 = add i16 %200, -1
  store i16 %dec164, ptr %arrayidx163, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec164)
  %cmp166 = icmp eq i16 %dec164, 0
  br i1 %cmp166, label %if.then168, label %while.end.if.end177_crit_edge

while.end.if.end177_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end177

if.then168:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_cmp4(i32 %len.3, i32 %max.0461.lcssa500)
  %cmp169 = icmp eq i32 %len.3, %max.0461.lcssa500
  br i1 %cmp169, label %while.cond234.preheader, label %if.end172

while.cond234.preheader:                          ; preds = %if.then168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %huff.1)
  %cmp235.not475 = icmp eq i32 %huff.1, 0
  br i1 %cmp235.not475, label %while.cond234.preheader.while.end266_crit_edge, label %while.body237.preheader

while.cond234.preheader.while.end266_crit_edge:   ; preds = %while.cond234.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end266

while.body237.preheader:                          ; preds = %while.cond234.preheader
  %conv114.le = trunc i32 %sub113 to i8
  br label %while.body237

if.end172:                                        ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx173 = getelementptr i16, ptr %work, i32 %inc162
  %201 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %arrayidx173, align 2
  %idxprom174 = zext i16 %202 to i32
  %arrayidx175 = getelementptr i16, ptr %lens, i32 %idxprom174
  %203 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %arrayidx175, align 2
  %conv176 = zext i16 %204 to i32
  br label %if.end177

if.end177:                                        ; preds = %if.end172, %while.end.if.end177_crit_edge
  %len.4 = phi i32 [ %conv176, %if.end172 ], [ %len.3, %while.end.if.end177_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %len.4, i32 %110)
  %cmp178 = icmp ugt i32 %len.4, %110
  br i1 %cmp178, label %land.lhs.true180, label %if.end177.for.cond112.backedge_crit_edge

if.end177.for.cond112.backedge_crit_edge:         ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond112.backedge

land.lhs.true180:                                 ; preds = %if.end177
  %and181 = and i32 %huff.1, %sub104514
  call void @__sanitizer_cov_trace_cmp4(i32 %and181, i32 %low.0.ph)
  %cmp182.not = icmp eq i32 %and181, %low.0.ph
  br i1 %cmp182.not, label %land.lhs.true180.for.cond112.backedge_crit_edge, label %if.then184

land.lhs.true180.for.cond112.backedge_crit_edge:  ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond112.backedge

for.cond112.backedge:                             ; preds = %land.lhs.true180.for.cond112.backedge_crit_edge, %if.end177.for.cond112.backedge_crit_edge
  br label %for.cond112

if.then184:                                       ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %drop.0.ph)
  %cmp185 = icmp eq i32 %drop.0.ph, 0
  %spec.select442 = select i1 %cmp185, i32 %110, i32 %drop.0.ph
  %add.ptr189 = getelementptr %struct.code, ptr %next.0.ph, i32 %shl145
  %sub190 = sub i32 %len.4, %spec.select442
  %shl191 = shl nuw i32 1, %sub190
  call void @__sanitizer_cov_trace_cmp4(i32 %len.4, i32 %max.0461.lcssa500)
  %cmp194470 = icmp ult i32 %len.4, %max.0461.lcssa500
  br i1 %cmp194470, label %while.body196.preheader, label %if.then184.while.end207_crit_edge

if.then184.while.end207_crit_edge:                ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end207

while.body196.preheader:                          ; preds = %if.then184
  %205 = sub i32 %max.0461.lcssa500, %spec.select442
  br label %while.body196

while.body196:                                    ; preds = %if.end204.while.body196_crit_edge, %while.body196.preheader
  %add193473 = phi i32 [ %add193, %if.end204.while.body196_crit_edge ], [ %len.4, %while.body196.preheader ]
  %left.1472 = phi i32 [ %shl206, %if.end204.while.body196_crit_edge ], [ %shl191, %while.body196.preheader ]
  %curr.1471 = phi i32 [ %inc205, %if.end204.while.body196_crit_edge ], [ %sub190, %while.body196.preheader ]
  %arrayidx198 = getelementptr [16 x i16], ptr %count, i32 0, i32 %add193473
  %206 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %arrayidx198, align 2
  %conv199 = zext i16 %207 to i32
  %sub200 = sub i32 %left.1472, %conv199
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub200)
  %cmp201 = icmp slt i32 %sub200, 1
  br i1 %cmp201, label %while.body196.while.end207.loopexit_crit_edge, label %if.end204

while.body196.while.end207.loopexit_crit_edge:    ; preds = %while.body196
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end207.loopexit

if.end204:                                        ; preds = %while.body196
  %inc205 = add i32 %curr.1471, 1
  %shl206 = shl nuw i32 %sub200, 1
  %add193 = add i32 %inc205, %spec.select442
  %cmp194 = icmp ult i32 %add193, %max.0461.lcssa500
  br i1 %cmp194, label %if.end204.while.body196_crit_edge, label %if.end204.while.end207.loopexit_crit_edge

if.end204.while.end207.loopexit_crit_edge:        ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end207.loopexit

if.end204.while.body196_crit_edge:                ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body196

while.end207.loopexit:                            ; preds = %if.end204.while.end207.loopexit_crit_edge, %while.body196.while.end207.loopexit_crit_edge
  %curr.1.lcssa.ph = phi i32 [ %205, %if.end204.while.end207.loopexit_crit_edge ], [ %curr.1471, %while.body196.while.end207.loopexit_crit_edge ]
  %.pre = shl nuw i32 1, %curr.1.lcssa.ph
  br label %while.end207

while.end207:                                     ; preds = %while.end207.loopexit, %if.then184.while.end207_crit_edge
  %shl208.pre-phi = phi i32 [ %.pre, %while.end207.loopexit ], [ %shl191, %if.then184.while.end207_crit_edge ]
  %curr.1.lcssa = phi i32 [ %curr.1.lcssa.ph, %while.end207.loopexit ], [ %sub190, %if.then184.while.end207_crit_edge ]
  %add209 = add i32 %shl208.pre-phi, %used.0.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 1455, i32 %add209)
  %cmp213 = icmp ugt i32 %add209, 1455
  %or.cond443 = select i1 %cmp105515, i1 %cmp213, i1 false
  br i1 %or.cond443, label %while.end207.cleanup_crit_edge, label %if.end216

while.end207.cleanup_crit_edge:                   ; preds = %while.end207
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end216:                                        ; preds = %while.end207
  call void @__sanitizer_cov_trace_pc() #5
  %conv218 = trunc i32 %curr.1.lcssa to i8
  %208 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %table, align 4
  %arrayidx219 = getelementptr %struct.code, ptr %209, i32 %and181
  %210 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %conv218, ptr %arrayidx219, align 2
  %211 = load ptr, ptr %table, align 4
  %bits223 = getelementptr %struct.code, ptr %211, i32 %and181, i32 1
  %212 = ptrtoint ptr %bits223 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %conv221, ptr %bits223, align 1
  %213 = load ptr, ptr %table, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr189 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %213 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %214 = lshr exact i32 %sub.ptr.sub, 2
  %conv224 = trunc i32 %214 to i16
  %val226 = getelementptr %struct.code, ptr %213, i32 %and181, i32 2
  %215 = ptrtoint ptr %val226 to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %conv224, ptr %val226, align 2
  br label %for.cond112.outer

while.body237:                                    ; preds = %while.end257.while.body237_crit_edge, %while.body237.preheader
  %next.2481 = phi ptr [ %next.3, %while.end257.while.body237_crit_edge ], [ %next.0.ph, %while.body237.preheader ]
  %this.sroa.12.0480 = phi i8 [ %this.sroa.12.1, %while.end257.while.body237_crit_edge ], [ %conv114.le, %while.body237.preheader ]
  %huff.2478 = phi i32 [ %add263, %while.end257.while.body237_crit_edge ], [ %add159, %while.body237.preheader ]
  %drop.3477 = phi i32 [ %drop.4, %while.end257.while.body237_crit_edge ], [ %drop.0.ph, %while.body237.preheader ]
  %len.5476 = phi i32 [ %len.6, %while.end257.while.body237_crit_edge ], [ %max.0461.lcssa500, %while.body237.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %drop.3477)
  %cmp238.not = icmp eq i32 %drop.3477, 0
  br i1 %cmp238.not, label %while.body237.if.end247_crit_edge, label %land.lhs.true240

while.body237.if.end247_crit_edge:                ; preds = %while.body237
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end247

land.lhs.true240:                                 ; preds = %while.body237
  %and241 = and i32 %huff.2478, %sub104514
  call void @__sanitizer_cov_trace_cmp4(i32 %and241, i32 %low.0.ph)
  %cmp242.not = icmp eq i32 %and241, %low.0.ph
  br i1 %cmp242.not, label %land.lhs.true240.if.end247_crit_edge, label %if.then244

land.lhs.true240.if.end247_crit_edge:             ; preds = %land.lhs.true240
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end247

if.then244:                                       ; preds = %land.lhs.true240
  call void @__sanitizer_cov_trace_pc() #5
  %216 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %table, align 4
  br label %if.end247

if.end247:                                        ; preds = %if.then244, %land.lhs.true240.if.end247_crit_edge, %while.body237.if.end247_crit_edge
  %len.6 = phi i32 [ %110, %if.then244 ], [ %len.5476, %land.lhs.true240.if.end247_crit_edge ], [ %len.5476, %while.body237.if.end247_crit_edge ]
  %drop.4 = phi i32 [ 0, %if.then244 ], [ %drop.3477, %land.lhs.true240.if.end247_crit_edge ], [ 0, %while.body237.if.end247_crit_edge ]
  %this.sroa.12.1 = phi i8 [ %conv221, %if.then244 ], [ %this.sroa.12.0480, %land.lhs.true240.if.end247_crit_edge ], [ %this.sroa.12.0480, %while.body237.if.end247_crit_edge ]
  %next.3 = phi ptr [ %217, %if.then244 ], [ %next.2481, %land.lhs.true240.if.end247_crit_edge ], [ %next.2481, %while.body237.if.end247_crit_edge ]
  %shr248 = lshr i32 %huff.2478, %drop.4
  %arrayidx249 = getelementptr %struct.code, ptr %next.3, i32 %shr248
  %218 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 64, ptr %arrayidx249, align 2
  %this.sroa.12.0.arrayidx249.sroa_idx = getelementptr inbounds i8, ptr %arrayidx249, i32 1
  %219 = ptrtoint ptr %this.sroa.12.0.arrayidx249.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %this.sroa.12.1, ptr %this.sroa.12.0.arrayidx249.sroa_idx, align 1
  %this.sroa.17.0.arrayidx249.sroa_idx = getelementptr inbounds i8, ptr %arrayidx249, i32 2
  %220 = ptrtoint ptr %this.sroa.17.0.arrayidx249.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 0, ptr %this.sroa.17.0.arrayidx249.sroa_idx, align 2
  %sub250 = add i32 %len.6, -1
  %shl251 = shl nuw i32 1, %sub250
  br label %while.cond252

while.cond252:                                    ; preds = %while.cond252.while.cond252_crit_edge, %if.end247
  %incr.1 = phi i32 [ %shl251, %if.end247 ], [ %shr256, %while.cond252.while.cond252_crit_edge ]
  %and253 = and i32 %incr.1, %huff.2478
  %tobool254.not = icmp eq i32 %and253, 0
  %shr256 = lshr i32 %incr.1, 1
  br i1 %tobool254.not, label %while.end257, label %while.cond252.while.cond252_crit_edge

while.cond252.while.cond252_crit_edge:            ; preds = %while.cond252
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond252

while.end257:                                     ; preds = %while.cond252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %incr.1)
  %cmp258.not = icmp eq i32 %incr.1, 0
  %sub261 = add i32 %incr.1, -1
  %and262 = and i32 %sub261, %huff.2478
  %add263 = add i32 %and262, %incr.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add263)
  %cmp235.not524 = icmp eq i32 %add263, 0
  %cmp235.not = select i1 %cmp258.not, i1 true, i1 %cmp235.not524
  br i1 %cmp235.not, label %while.end257.while.end266_crit_edge, label %while.end257.while.body237_crit_edge

while.end257.while.body237_crit_edge:             ; preds = %while.end257
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body237

while.end257.while.end266_crit_edge:              ; preds = %while.end257
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end266

while.end266:                                     ; preds = %while.end257.while.end266_crit_edge, %while.cond234.preheader.while.end266_crit_edge
  %221 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %table, align 4
  %add.ptr267 = getelementptr %struct.code, ptr %222, i32 %used.0.ph
  store ptr %add.ptr267, ptr %table, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.end266, %for.inc16.14
  %.sink = phi i32 [ %110, %while.end266 ], [ 1, %for.inc16.14 ]
  %223 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %.sink, ptr %bits, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end207.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %for.cond45.14.cleanup_crit_edge, %for.cond45.13.cleanup_crit_edge, %for.cond45.12.cleanup_crit_edge, %for.cond45.11.cleanup_crit_edge, %for.cond45.10.cleanup_crit_edge, %for.cond45.9.cleanup_crit_edge, %for.cond45.8.cleanup_crit_edge, %for.cond45.7.cleanup_crit_edge, %for.cond45.6.cleanup_crit_edge, %for.cond45.5.cleanup_crit_edge, %for.cond45.4.cleanup_crit_edge, %for.cond45.3.cleanup_crit_edge, %for.cond45.2.cleanup_crit_edge, %for.cond45.1.cleanup_crit_edge, %for.cond45.cleanup_crit_edge, %for.end40.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.epilog.cleanup_crit_edge ], [ -1, %for.cond45.13.cleanup_crit_edge ], [ -1, %for.cond45.12.cleanup_crit_edge ], [ -1, %for.cond45.11.cleanup_crit_edge ], [ -1, %for.cond45.10.cleanup_crit_edge ], [ -1, %for.cond45.9.cleanup_crit_edge ], [ -1, %for.cond45.8.cleanup_crit_edge ], [ -1, %for.cond45.7.cleanup_crit_edge ], [ -1, %for.cond45.6.cleanup_crit_edge ], [ -1, %for.cond45.5.cleanup_crit_edge ], [ -1, %for.cond45.4.cleanup_crit_edge ], [ -1, %for.cond45.3.cleanup_crit_edge ], [ -1, %for.cond45.2.cleanup_crit_edge ], [ -1, %for.cond45.1.cleanup_crit_edge ], [ -1, %for.cond45.cleanup_crit_edge ], [ -1, %for.end40.cleanup_crit_edge ], [ -1, %for.cond45.14.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ 1, %while.end207.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %offs) #3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %count) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @zlib_inflate_table.lbase, !1, !"lbase", i1 false, i1 false}
!1 = !{!"../lib/zlib_inflate/inftrees.c", i32 46, i32 33}
!2 = !{ptr @zlib_inflate_table.lext, !3, !"lext", i1 false, i1 false}
!3 = !{!"../lib/zlib_inflate/inftrees.c", i32 49, i32 33}
!4 = !{ptr @zlib_inflate_table.dbase, !5, !"dbase", i1 false, i1 false}
!5 = !{!"../lib/zlib_inflate/inftrees.c", i32 52, i32 33}
!6 = !{ptr @zlib_inflate_table.dext, !7, !"dext", i1 false, i1 false}
!7 = !{!"../lib/zlib_inflate/inftrees.c", i32 56, i32 33}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
