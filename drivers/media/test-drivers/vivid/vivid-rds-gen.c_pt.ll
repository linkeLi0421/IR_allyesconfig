; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vivid/vivid-rds-gen.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-rds-gen.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.timezone = type { i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.v4l2_rds_data = type { i8, i8, i8 }

@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%6d.%1d\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c" The Radio Data System can switch between different Radio Texts \00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"An example of Radio Text as transmitted by the Radio Data System\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [47 x i64] [i64 45, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 44, i64 45, i64 46, i64 47, i64 56]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 147, i32 45 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 151, i32 4 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [52 x i8] c"../drivers/media/test-drivers/vivid/vivid-rds-gen.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 155, i32 4 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vivid_rds_generate(ptr noundef %rds) local_unnamed_addr #0 align 64 {
entry:
  %tm = alloca %struct.tm, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tm) #5
  %0 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 2
  %2 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 3
  %3 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 4
  %4 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 5
  %picode = getelementptr inbounds %struct.vivid_rds_gen, ptr %rds, i32 0, i32 2
  %pty = getelementptr inbounds %struct.vivid_rds_gen, ptr %rds, i32 0, i32 3
  %tp = getelementptr inbounds %struct.vivid_rds_gen, ptr %rds, i32 0, i32 9
  %ta = getelementptr inbounds %struct.vivid_rds_gen, ptr %rds, i32 0, i32 8
  %ms = getelementptr inbounds %struct.vivid_rds_gen, ptr %rds, i32 0, i32 10
  %mono_stereo.i = getelementptr inbounds %struct.vivid_rds_gen, ptr %rds, i32 0, i32 4
  %art_head.i = getelementptr inbounds %struct.vivid_rds_gen, ptr %rds, i32 0, i32 5
  %compressed.i = getelementptr inbounds %struct.vivid_rds_gen, ptr %rds, i32 0, i32 6
  %dyn_pty.i = getelementptr inbounds %struct.vivid_rds_gen, ptr %rds, i32 0, i32 7
  %5 = call ptr @memset(ptr %tm, i32 255, i32 32)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %data.0387 = phi ptr [ %rds, %entry ], [ %add.ptr, %for.inc.for.body_crit_edge ]
  %grp.0385 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %picode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %picode, align 2
  %conv2 = trunc i16 %7 to i8
  %8 = ptrtoint ptr %data.0387 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv2, ptr %data.0387, align 1
  %9 = load i16, ptr %picode, align 2
  %10 = lshr i16 %9, 8
  %conv5 = trunc i16 %10 to i8
  %msb = getelementptr inbounds %struct.v4l2_rds_data, ptr %data.0387, i32 0, i32 1
  %11 = ptrtoint ptr %msb to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv5, ptr %msb, align 1
  %block = getelementptr inbounds %struct.v4l2_rds_data, ptr %data.0387, i32 0, i32 2
  %12 = ptrtoint ptr %block to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %block, align 1
  %13 = ptrtoint ptr %pty to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pty, align 2
  %shl = shl i8 %14, 5
  %arrayidx10 = getelementptr %struct.v4l2_rds_data, ptr %data.0387, i32 1
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %shl, ptr %arrayidx10, align 1
  %16 = load i8, ptr %pty, align 2
  %17 = lshr i8 %16, 3
  %18 = ptrtoint ptr %tp to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tp, align 2, !range !15
  %20 = shl nuw nsw i8 %19, 2
  %or351 = or i8 %20, %17
  %msb19 = getelementptr %struct.v4l2_rds_data, ptr %data.0387, i32 1, i32 1
  %21 = ptrtoint ptr %msb19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %or351, ptr %msb19, align 1
  %block21 = getelementptr %struct.v4l2_rds_data, ptr %data.0387, i32 1, i32 2
  %22 = ptrtoint ptr %block21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 9, ptr %block21, align 1
  %arrayidx22 = getelementptr %struct.v4l2_rds_data, ptr %data.0387, i32 3
  %block23 = getelementptr %struct.v4l2_rds_data, ptr %data.0387, i32 3, i32 2
  %23 = ptrtoint ptr %block23 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 27, ptr %block23, align 1
  %24 = zext i32 %grp.0385 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %grp.0385, label %sw.default [
    i32 44, label %for.body.sw.bb25_crit_edge
    i32 45, label %for.body.sw.bb25_crit_edge424
    i32 46, label %for.body.sw.bb25_crit_edge425
    i32 47, label %for.body.sw.bb25_crit_edge426
    i32 22, label %for.body.sw.bb25_crit_edge427
    i32 23, label %for.body.sw.bb25_crit_edge428
    i32 24, label %for.body.sw.bb25_crit_edge429
    i32 25, label %for.body.sw.bb25_crit_edge430
    i32 0, label %for.body.sw.bb25_crit_edge431
    i32 1, label %for.body.sw.bb25_crit_edge432
    i32 2, label %for.body.sw.bb25_crit_edge433
    i32 3, label %for.body.sw.bb25_crit_edge434
    i32 26, label %for.body.sw.bb73_crit_edge
    i32 27, label %for.body.sw.bb73_crit_edge435
    i32 28, label %for.body.sw.bb73_crit_edge436
    i32 29, label %for.body.sw.bb73_crit_edge437
    i32 30, label %for.body.sw.bb73_crit_edge438
    i32 31, label %for.body.sw.bb73_crit_edge439
    i32 32, label %for.body.sw.bb73_crit_edge440
    i32 33, label %for.body.sw.bb73_crit_edge441
    i32 34, label %for.body.sw.bb73_crit_edge442
    i32 35, label %for.body.sw.bb73_crit_edge443
    i32 36, label %for.body.sw.bb73_crit_edge444
    i32 37, label %for.body.sw.bb73_crit_edge445
    i32 38, label %for.body.sw.bb73_crit_edge446
    i32 39, label %for.body.sw.bb73_crit_edge447
    i32 40, label %for.body.sw.bb73_crit_edge448
    i32 41, label %for.body.sw.bb73_crit_edge449
    i32 4, label %for.body.sw.bb73_crit_edge450
    i32 5, label %for.body.sw.bb73_crit_edge451
    i32 6, label %for.body.sw.bb73_crit_edge452
    i32 7, label %for.body.sw.bb73_crit_edge453
    i32 8, label %for.body.sw.bb73_crit_edge454
    i32 9, label %for.body.sw.bb73_crit_edge455
    i32 10, label %for.body.sw.bb73_crit_edge456
    i32 11, label %for.body.sw.bb73_crit_edge457
    i32 12, label %for.body.sw.bb73_crit_edge458
    i32 13, label %for.body.sw.bb73_crit_edge459
    i32 14, label %for.body.sw.bb73_crit_edge460
    i32 15, label %for.body.sw.bb73_crit_edge461
    i32 16, label %for.body.sw.bb73_crit_edge462
    i32 17, label %for.body.sw.bb73_crit_edge463
    i32 18, label %for.body.sw.bb73_crit_edge464
    i32 19, label %for.body.sw.bb73_crit_edge465
    i32 56, label %for.inc.thread
  ]

for.body.sw.bb73_crit_edge465:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge464:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge463:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge462:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge461:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge460:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge459:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge458:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge457:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge456:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge455:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge454:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge453:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge452:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge451:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge450:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge449:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge448:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge447:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge446:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge445:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge444:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge443:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge442:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge441:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge440:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge439:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge438:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge437:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge436:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge435:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb73_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73

for.body.sw.bb25_crit_edge434:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb25

for.body.sw.bb25_crit_edge433:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb25

for.body.sw.bb25_crit_edge432:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb25

for.body.sw.bb25_crit_edge431:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb25

for.body.sw.bb25_crit_edge430:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb25

for.body.sw.bb25_crit_edge429:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb25

for.body.sw.bb25_crit_edge428:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb25

for.body.sw.bb25_crit_edge427:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb25

for.body.sw.bb25_crit_edge426:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb25

for.body.sw.bb25_crit_edge425:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb25

for.body.sw.bb25_crit_edge424:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb25

for.body.sw.bb25_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb25

sw.bb25:                                          ; preds = %for.body.sw.bb25_crit_edge, %for.body.sw.bb25_crit_edge424, %for.body.sw.bb25_crit_edge425, %for.body.sw.bb25_crit_edge426, %for.body.sw.bb25_crit_edge427, %for.body.sw.bb25_crit_edge428, %for.body.sw.bb25_crit_edge429, %for.body.sw.bb25_crit_edge430, %for.body.sw.bb25_crit_edge431, %for.body.sw.bb25_crit_edge432, %for.body.sw.bb25_crit_edge433, %for.body.sw.bb25_crit_edge434
  %rem.lhs.trunc = trunc i32 %grp.0385 to i8
  %rem383 = urem i8 %rem.lhs.trunc, 22
  %25 = and i8 %rem383, 3
  %rem26 = zext i8 %25 to i32
  %26 = ptrtoint ptr %ta to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ta, align 1, !range !15
  %28 = shl nuw nsw i8 %27, 4
  %29 = ptrtoint ptr %ms to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ms, align 1, !range !15
  %31 = shl nuw nsw i8 %30, 3
  %or33352 = or i8 %28, %shl
  %or37353 = or i8 %or33352, %31
  %32 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %or37353, ptr %arrayidx10, align 1
  %33 = zext i32 %rem26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %rem26, label %sw.bb25.unreachabledefault [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb16.i
  ]

sw.bb.i:                                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %dyn_pty.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dyn_pty.i, align 2, !range !15
  %36 = shl nuw nsw i8 %35, 2
  br label %vivid_get_di.exit

sw.bb2.i:                                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %compressed.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %compressed.i, align 1, !range !15
  %39 = shl nuw nsw i8 %38, 2
  %40 = or i8 %39, 1
  br label %vivid_get_di.exit

sw.bb9.i:                                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %art_head.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %art_head.i, align 2, !range !15
  %43 = shl nuw nsw i8 %42, 2
  %44 = or i8 %43, 2
  br label %vivid_get_di.exit

sw.bb16.i:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %mono_stereo.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %mono_stereo.i, align 1, !range !15
  %47 = shl nuw nsw i8 %46, 2
  %48 = or i8 %47, 3
  br label %vivid_get_di.exit

sw.bb25.unreachabledefault:                       ; preds = %sw.bb25
  unreachable

vivid_get_di.exit:                                ; preds = %sw.bb16.i, %sw.bb9.i, %sw.bb2.i, %sw.bb.i
  %retval.0.i = phi i8 [ %48, %sw.bb16.i ], [ %44, %sw.bb9.i ], [ %40, %sw.bb2.i ], [ %36, %sw.bb.i ]
  %or43354 = or i8 %retval.0.i, %or37353
  %49 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %or43354, ptr %arrayidx10, align 1
  %50 = or i8 %or351, 8
  %51 = ptrtoint ptr %msb19 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %msb19, align 1
  %52 = ptrtoint ptr %picode to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %picode, align 2
  %conv53 = trunc i16 %53 to i8
  %arrayidx54 = getelementptr %struct.v4l2_rds_data, ptr %data.0387, i32 2
  %54 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv53, ptr %arrayidx54, align 1
  %55 = load i16, ptr %picode, align 2
  %56 = lshr i16 %55, 8
  %conv59 = trunc i16 %56 to i8
  %msb61 = getelementptr %struct.v4l2_rds_data, ptr %data.0387, i32 2, i32 1
  %57 = ptrtoint ptr %msb61 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv59, ptr %msb61, align 1
  %block63 = getelementptr %struct.v4l2_rds_data, ptr %data.0387, i32 2, i32 2
  %58 = ptrtoint ptr %block63 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 36, ptr %block63, align 1
  %mul = shl nuw nsw i32 %rem26, 1
  %add = or i32 %mul, 1
  %arrayidx64 = getelementptr %struct.vivid_rds_gen, ptr %rds, i32 0, i32 11, i32 %add
  %59 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx64, align 1
  %61 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx22, align 1
  %arrayidx69 = getelementptr %struct.vivid_rds_gen, ptr %rds, i32 0, i32 11, i32 %mul
  %62 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx69, align 1
  %msb71 = getelementptr %struct.v4l2_rds_data, ptr %data.0387, i32 3, i32 1
  %64 = ptrtoint ptr %msb71 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %msb71, align 1
  br label %for.inc

sw.bb73:                                          ; preds = %for.body.sw.bb73_crit_edge, %for.body.sw.bb73_crit_edge435, %for.body.sw.bb73_crit_edge436, %for.body.sw.bb73_crit_edge437, %for.body.sw.bb73_crit_edge438, %for.body.sw.bb73_crit_edge439, %for.body.sw.bb73_crit_edge440, %for.body.sw.bb73_crit_edge441, %for.body.sw.bb73_crit_edge442, %for.body.sw.bb73_crit_edge443, %for.body.sw.bb73_crit_edge444, %for.body.sw.bb73_crit_edge445, %for.body.sw.bb73_crit_edge446, %for.body.sw.bb73_crit_edge447, %for.body.sw.bb73_crit_edge448, %for.body.sw.bb73_crit_edge449, %for.body.sw.bb73_crit_edge450, %for.body.sw.bb73_crit_edge451, %for.body.sw.bb73_crit_edge452, %for.body.sw.bb73_crit_edge453, %for.body.sw.bb73_crit_edge454, %for.body.sw.bb73_crit_edge455, %for.body.sw.bb73_crit_edge456, %for.body.sw.bb73_crit_edge457, %for.body.sw.bb73_crit_edge458, %for.body.sw.bb73_crit_edge459, %for.body.sw.bb73_crit_edge460, %for.body.sw.bb73_crit_edge461, %for.body.sw.bb73_crit_edge462, %for.body.sw.bb73_crit_edge463, %for.body.sw.bb73_crit_edge464, %for.body.sw.bb73_crit_edge465
  %65 = trunc i32 %grp.0385 to i8
  %rem74.lhs.trunc = add nsw i8 %65, -4
  %rem74384 = urem i8 %rem74.lhs.trunc, 22
  %66 = and i8 %rem74384, 15
  %conv80 = or i8 %shl, %66
  %67 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv80, ptr %arrayidx10, align 1
  %68 = or i8 %or351, 32
  %69 = ptrtoint ptr %msb19 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %msb19, align 1
  %70 = shl nuw nsw i8 %66, 2
  %mul86 = zext i8 %70 to i32
  %arrayidx87 = getelementptr %struct.vivid_rds_gen, ptr %rds, i32 0, i32 12, i32 %mul86
  %71 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx87, align 1
  %arrayidx88 = getelementptr %struct.v4l2_rds_data, ptr %data.0387, i32 2
  %msb89 = getelementptr %struct.v4l2_rds_data, ptr %data.0387, i32 2, i32 1
  %73 = ptrtoint ptr %msb89 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %msb89, align 1
  %add92 = or i32 %mul86, 1
  %arrayidx93 = getelementptr %struct.vivid_rds_gen, ptr %rds, i32 0, i32 12, i32 %add92
  %74 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx93, align 1
  %76 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx88, align 1
  %block97 = getelementptr %struct.v4l2_rds_data, ptr %data.0387, i32 2, i32 2
  %77 = ptrtoint ptr %block97 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 18, ptr %block97, align 1
  %add100 = or i32 %mul86, 2
  %arrayidx101 = getelementptr %struct.vivid_rds_gen, ptr %rds, i32 0, i32 12, i32 %add100
  %78 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx101, align 1
  %msb103 = getelementptr %struct.v4l2_rds_data, ptr %data.0387, i32 3, i32 1
  %80 = ptrtoint ptr %msb103 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %msb103, align 1
  %add106 = or i32 %mul86, 3
  %arrayidx107 = getelementptr %struct.vivid_rds_gen, ptr %rds, i32 0, i32 12, i32 %add106
  %81 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx107, align 1
  %83 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx22, align 1
  br label %for.inc

for.inc.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call111 = call i64 @ktime_get_real_seconds() #5
  call void @time64_to_tm(i64 noundef %call111, i32 noundef 0, ptr noundef nonnull %tm) #5
  %84 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp112 = icmp slt i32 %85, 2
  %conv113.neg = sext i1 %cmp112 to i32
  %86 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %2, align 4
  %add114 = add i32 %87, 14956
  %88 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %4, align 4
  %sub115 = add i32 %89, %conv113.neg
  %mul116 = mul i32 %sub115, 1461
  %div = sdiv i32 %mul116, 4
  %add117 = add i32 %add114, %div
  %add119 = add i32 %85, 2
  %mul120 = select i1 %cmp112, i32 12, i32 0
  %add121 = add i32 %add119, %mul120
  %mul122 = mul i32 %add121, 306001
  %div123 = sdiv i32 %mul122, 10000
  %add124 = add i32 %add117, %div123
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %1, align 4
  %shl125 = shl i32 %91, 12
  %92 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %0, align 4
  %shl126 = shl i32 %93, 6
  %or127 = or i32 %shl126, %shl125
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %94 = load i32, ptr @sys_tz, align 4
  %95 = lshr i32 %94, 26
  %96 = and i32 %95, 32
  %97 = or i32 %or127, %96
  %or130 = xor i32 %97, 32
  %98 = call i32 @llvm.abs.i32(i32 %94, i1 false)
  %div135 = sdiv i32 %98, 30
  %or136 = or i32 %or130, %div135
  %99 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx10, align 1
  %101 = and i8 %100, -4
  %shr142 = lshr i32 %add124, 15
  %102 = trunc i32 %shr142 to i8
  %conv147 = or i8 %101, %102
  store i8 %conv147, ptr %arrayidx10, align 1
  %103 = ptrtoint ptr %msb19 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %msb19, align 1
  %105 = or i8 %104, 64
  store i8 %105, ptr %msb19, align 1
  %conv155 = shl i32 %add124, 1
  %arrayidx156 = getelementptr %struct.v4l2_rds_data, ptr %data.0387, i32 2
  %shr158 = lshr i32 %or136, 16
  %and159 = and i32 %shr158, 1
  %or163 = or i32 %and159, %conv155
  %conv164 = trunc i32 %or163 to i8
  %106 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv164, ptr %arrayidx156, align 1
  %shr165 = lshr i32 %add124, 7
  %conv167 = trunc i32 %shr165 to i8
  %msb169 = getelementptr %struct.v4l2_rds_data, ptr %data.0387, i32 2, i32 1
  %107 = ptrtoint ptr %msb169 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv167, ptr %msb169, align 1
  %block171 = getelementptr %struct.v4l2_rds_data, ptr %data.0387, i32 2, i32 2
  %108 = ptrtoint ptr %block171 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 18, ptr %block171, align 1
  %conv173 = trunc i32 %or136 to i8
  %109 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv173, ptr %arrayidx22, align 1
  %shr176 = lshr i32 %or136, 8
  %conv178 = trunc i32 %shr176 to i8
  %msb180 = getelementptr %struct.v4l2_rds_data, ptr %data.0387, i32 3, i32 1
  %110 = ptrtoint ptr %msb180 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv178, ptr %msb180, align 1
  br label %for.end

sw.default:                                       ; preds = %for.body
  %111 = ptrtoint ptr %ta to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %ta, align 1, !range !15
  %113 = shl nuw nsw i8 %112, 4
  %114 = ptrtoint ptr %ms to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %ms, align 1, !range !15
  %116 = shl nuw nsw i8 %115, 3
  %or189355 = or i8 %113, %shl
  %or193356 = or i8 %or189355, %116
  %117 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %or193356, ptr %arrayidx10, align 1
  %rem195.lhs.trunc = trunc i32 %grp.0385 to i8
  %rem195382 = urem i8 %rem195.lhs.trunc, 22
  %rem195.zext = zext i8 %rem195382 to i32
  %118 = zext i32 %rem195.zext to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %rem195.zext, label %sw.default.vivid_get_di.exit371_crit_edge [
    i32 0, label %sw.bb.i363
    i32 1, label %sw.bb2.i365
    i32 2, label %sw.bb9.i367
    i32 3, label %sw.bb16.i369
  ]

sw.default.vivid_get_di.exit371_crit_edge:        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %vivid_get_di.exit371

sw.bb.i363:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %119 = ptrtoint ptr %dyn_pty.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %dyn_pty.i, align 2, !range !15
  %121 = shl nuw nsw i8 %120, 2
  br label %vivid_get_di.exit371

sw.bb2.i365:                                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %122 = ptrtoint ptr %compressed.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %compressed.i, align 1, !range !15
  %124 = shl nuw nsw i8 %123, 2
  %125 = or i8 %124, 1
  br label %vivid_get_di.exit371

sw.bb9.i367:                                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %126 = ptrtoint ptr %art_head.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %art_head.i, align 2, !range !15
  %128 = shl nuw nsw i8 %127, 2
  %129 = or i8 %128, 2
  br label %vivid_get_di.exit371

sw.bb16.i369:                                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %130 = ptrtoint ptr %mono_stereo.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %mono_stereo.i, align 1, !range !15
  %132 = shl nuw nsw i8 %131, 2
  %133 = or i8 %132, 3
  br label %vivid_get_di.exit371

vivid_get_di.exit371:                             ; preds = %sw.bb16.i369, %sw.bb9.i367, %sw.bb2.i365, %sw.bb.i363, %sw.default.vivid_get_di.exit371_crit_edge
  %retval.0.i370 = phi i8 [ %133, %sw.bb16.i369 ], [ %129, %sw.bb9.i367 ], [ %125, %sw.bb2.i365 ], [ %121, %sw.bb.i363 ], [ 0, %sw.default.vivid_get_di.exit371_crit_edge ]
  %or201357 = or i8 %retval.0.i370, %or193356
  %134 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %or201357, ptr %arrayidx10, align 1
  %135 = or i8 %or351, -8
  %136 = ptrtoint ptr %msb19 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %msb19, align 1
  %137 = ptrtoint ptr %picode to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %picode, align 2
  %conv211 = trunc i16 %138 to i8
  %arrayidx212 = getelementptr %struct.v4l2_rds_data, ptr %data.0387, i32 2
  %139 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv211, ptr %arrayidx212, align 1
  %140 = load i16, ptr %picode, align 2
  %141 = lshr i16 %140, 8
  %conv217 = trunc i16 %141 to i8
  %msb219 = getelementptr %struct.v4l2_rds_data, ptr %data.0387, i32 2, i32 1
  %142 = ptrtoint ptr %msb219 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv217, ptr %msb219, align 1
  %block221 = getelementptr %struct.v4l2_rds_data, ptr %data.0387, i32 2, i32 2
  %143 = ptrtoint ptr %block221 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 36, ptr %block221, align 1
  %144 = ptrtoint ptr %pty to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %pty, align 2
  %shl224 = shl i8 %145, 5
  %146 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %shl224, ptr %arrayidx22, align 1
  %147 = ptrtoint ptr %ta to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %ta, align 1, !range !15
  %149 = shl nuw nsw i8 %148, 4
  %150 = ptrtoint ptr %ms to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %ms, align 1, !range !15
  %152 = shl nuw nsw i8 %151, 3
  %or236358 = or i8 %149, %shl224
  %or240359 = or i8 %or236358, %152
  store i8 %or240359, ptr %arrayidx22, align 1
  %153 = zext i32 %rem195.zext to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %rem195.zext, label %vivid_get_di.exit371.vivid_get_di.exit381_crit_edge [
    i32 0, label %sw.bb.i373
    i32 1, label %sw.bb2.i375
    i32 2, label %sw.bb9.i377
    i32 3, label %sw.bb16.i379
  ]

vivid_get_di.exit371.vivid_get_di.exit381_crit_edge: ; preds = %vivid_get_di.exit371
  call void @__sanitizer_cov_trace_pc() #7
  br label %vivid_get_di.exit381

sw.bb.i373:                                       ; preds = %vivid_get_di.exit371
  call void @__sanitizer_cov_trace_pc() #7
  %154 = ptrtoint ptr %dyn_pty.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %dyn_pty.i, align 2, !range !15
  %156 = shl nuw nsw i8 %155, 2
  br label %vivid_get_di.exit381

sw.bb2.i375:                                      ; preds = %vivid_get_di.exit371
  call void @__sanitizer_cov_trace_pc() #7
  %157 = ptrtoint ptr %compressed.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %compressed.i, align 1, !range !15
  %159 = shl nuw nsw i8 %158, 2
  %160 = or i8 %159, 1
  br label %vivid_get_di.exit381

sw.bb9.i377:                                      ; preds = %vivid_get_di.exit371
  call void @__sanitizer_cov_trace_pc() #7
  %161 = ptrtoint ptr %art_head.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %art_head.i, align 2, !range !15
  %163 = shl nuw nsw i8 %162, 2
  %164 = or i8 %163, 2
  br label %vivid_get_di.exit381

sw.bb16.i379:                                     ; preds = %vivid_get_di.exit371
  call void @__sanitizer_cov_trace_pc() #7
  %165 = ptrtoint ptr %mono_stereo.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %mono_stereo.i, align 1, !range !15
  %167 = shl nuw nsw i8 %166, 2
  %168 = or i8 %167, 3
  br label %vivid_get_di.exit381

vivid_get_di.exit381:                             ; preds = %sw.bb16.i379, %sw.bb9.i377, %sw.bb2.i375, %sw.bb.i373, %vivid_get_di.exit371.vivid_get_di.exit381_crit_edge
  %retval.0.i380 = phi i8 [ %168, %sw.bb16.i379 ], [ %164, %sw.bb9.i377 ], [ %160, %sw.bb2.i375 ], [ %156, %sw.bb.i373 ], [ 0, %vivid_get_di.exit371.vivid_get_di.exit381_crit_edge ]
  %or248360 = or i8 %retval.0.i380, %or240359
  %169 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %or248360, ptr %arrayidx22, align 1
  %170 = ptrtoint ptr %pty to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %pty, align 2
  %172 = lshr i8 %171, 3
  %msb254 = getelementptr %struct.v4l2_rds_data, ptr %data.0387, i32 3, i32 1
  %173 = ptrtoint ptr %msb254 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %msb254, align 1
  %or256361 = or i8 %172, %174
  %175 = or i8 %or256361, -8
  store i8 %175, ptr %msb254, align 1
  br label %for.inc

for.inc:                                          ; preds = %vivid_get_di.exit381, %sw.bb73, %vivid_get_di.exit
  %inc = add nuw nsw i32 %grp.0385, 1
  %add.ptr = getelementptr %struct.v4l2_rds_data, ptr %data.0387, i32 4
  %exitcond.not = icmp eq i32 %inc, 57
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.thread
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tm) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @time64_to_tm(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vivid_rds_gen_fill(ptr noundef %rds, i32 noundef %freq, i1 noundef zeroext %alt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %alt to i8
  %use_rbds = getelementptr inbounds %struct.vivid_rds_gen, ptr %rds, i32 0, i32 1
  %0 = ptrtoint ptr %use_rbds to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_rbds, align 2, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %conv6 = select i1 %alt, i8 16, i8 3
  %conv = select i1 %alt, i8 29, i8 2
  %.sink = select i1 %tobool.not, i16 -32632, i16 11893
  %conv.sink = select i1 %tobool.not, i8 %conv6, i8 %conv
  %2 = getelementptr inbounds %struct.vivid_rds_gen, ptr %rds, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %.sink, ptr %2, align 2
  %4 = getelementptr inbounds %struct.vivid_rds_gen, ptr %rds, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.sink, ptr %4, align 2
  %mono_stereo = getelementptr inbounds %struct.vivid_rds_gen, ptr %rds, i32 0, i32 4
  %6 = ptrtoint ptr %mono_stereo to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %mono_stereo, align 1
  %art_head = getelementptr inbounds %struct.vivid_rds_gen, ptr %rds, i32 0, i32 5
  %7 = ptrtoint ptr %art_head to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %art_head, align 2
  %compressed = getelementptr inbounds %struct.vivid_rds_gen, ptr %rds, i32 0, i32 6
  %8 = ptrtoint ptr %compressed to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %compressed, align 1
  %dyn_pty = getelementptr inbounds %struct.vivid_rds_gen, ptr %rds, i32 0, i32 7
  %9 = ptrtoint ptr %dyn_pty to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %dyn_pty, align 2
  %tp = getelementptr inbounds %struct.vivid_rds_gen, ptr %rds, i32 0, i32 9
  %10 = ptrtoint ptr %tp to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %tp, align 2
  %ta = getelementptr inbounds %struct.vivid_rds_gen, ptr %rds, i32 0, i32 8
  %11 = ptrtoint ptr %ta to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %ta, align 1
  %ms = getelementptr inbounds %struct.vivid_rds_gen, ptr %rds, i32 0, i32 10
  %12 = ptrtoint ptr %ms to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %ms, align 1
  %psname = getelementptr inbounds %struct.vivid_rds_gen, ptr %rds, i32 0, i32 11
  %div38 = lshr i32 %freq, 4
  %and = and i32 %freq, 15
  %mul = mul nuw nsw i32 %and, 10
  %div1039 = lshr i32 %mul, 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %psname, i32 noundef 9, ptr noundef nonnull @.str, i32 noundef %div38, i32 noundef %div1039)
  %.str.2.sink = select i1 %alt, ptr @.str.1, ptr @.str.2
  %radiotext16 = getelementptr inbounds %struct.vivid_rds_gen, ptr %rds, i32 0, i32 12
  %call18 = tail call i32 @strscpy(ptr noundef %radiotext16, ptr noundef nonnull %.str.2.sink, i32 noundef 65) #5
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vivid/vivid-rds-gen.c", i32 147, i32 45}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vivid/vivid-rds-gen.c", i32 151, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/test-drivers/vivid/vivid-rds-gen.c", i32 155, i32 4}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i8 0, i8 2}
