; ModuleID = '/llk/IR_all_yes/net/ceph/crush/hash.c_pt.bc'
source_filename = "../net/ceph/crush/hash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rjenkins1\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 148, i32 10 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [25 x i8] c"../net/ceph/crush/hash.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 150, i32 10 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @crush_hash32(i32 noundef %type, i32 noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cond = icmp eq i32 %type, 0
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %xor.i = xor i32 %a, 1315423911
  %sub.i = add i32 %a, -231232
  %sub1.i = sub i32 %sub.i, %xor.i
  %shr.i = lshr i32 %xor.i, 13
  %xor2.i = xor i32 %sub1.i, %shr.i
  %0 = add i32 %xor.i, %xor2.i
  %sub4.i = sub i32 231232, %0
  %shl.i = shl i32 %xor2.i, 8
  %xor5.i = xor i32 %sub4.i, %shl.i
  %1 = add i32 %xor2.i, %xor5.i
  %sub7.i = sub i32 %xor.i, %1
  %shr8.i = lshr i32 %xor5.i, 13
  %xor9.i = xor i32 %sub7.i, %shr8.i
  %2 = add i32 %xor5.i, %xor9.i
  %sub11.i = sub i32 %xor2.i, %2
  %shr12.i = lshr i32 %xor9.i, 12
  %xor13.i = xor i32 %sub11.i, %shr12.i
  %3 = add i32 %xor9.i, %xor13.i
  %sub15.i = sub i32 %xor5.i, %3
  %shl16.i = shl i32 %xor13.i, 16
  %xor17.i = xor i32 %sub15.i, %shl16.i
  %4 = add i32 %xor13.i, %xor17.i
  %sub19.i = sub i32 %xor9.i, %4
  %shr20.i = lshr i32 %xor17.i, 5
  %xor21.i = xor i32 %sub19.i, %shr20.i
  %5 = add i32 %xor17.i, %xor21.i
  %sub23.i = sub i32 %xor13.i, %5
  %shr24.i = lshr i32 %xor21.i, 3
  %xor25.i = xor i32 %sub23.i, %shr24.i
  %6 = add i32 %xor21.i, %xor25.i
  %sub27.i = sub i32 %xor17.i, %6
  %shl28.i = shl i32 %xor25.i, 10
  %xor29.i = xor i32 %sub27.i, %shl28.i
  %7 = add i32 %xor25.i, %xor29.i
  %sub31.i = sub i32 %xor21.i, %7
  %shr32.i = lshr i32 %xor29.i, 15
  %xor33.i = xor i32 %sub31.i, %shr32.i
  %8 = add i32 %xor33.i, %a
  %sub36.i = sub i32 1232, %8
  %shr37.i = lshr i32 %xor33.i, 13
  %xor38.i = xor i32 %sub36.i, %shr37.i
  %9 = add i32 %xor33.i, %xor38.i
  %sub40.i = sub i32 %a, %9
  %shl41.i = shl i32 %xor38.i, 8
  %xor42.i = xor i32 %sub40.i, %shl41.i
  %10 = add i32 %xor38.i, %xor42.i
  %sub44.i = sub i32 %xor33.i, %10
  %shr45.i = lshr i32 %xor42.i, 13
  %xor46.i = xor i32 %sub44.i, %shr45.i
  %11 = add i32 %xor42.i, %xor46.i
  %sub48.i = sub i32 %xor38.i, %11
  %shr49.i = lshr i32 %xor46.i, 12
  %xor50.i = xor i32 %sub48.i, %shr49.i
  %12 = add i32 %xor46.i, %xor50.i
  %sub52.i = sub i32 %xor42.i, %12
  %shl53.i = shl i32 %xor50.i, 16
  %xor54.i = xor i32 %sub52.i, %shl53.i
  %13 = add i32 %xor50.i, %xor54.i
  %sub56.i = sub i32 %xor46.i, %13
  %shr57.i = lshr i32 %xor54.i, 5
  %xor58.i = xor i32 %sub56.i, %shr57.i
  %14 = add i32 %xor54.i, %xor58.i
  %sub60.i = sub i32 %xor50.i, %14
  %shr61.i = lshr i32 %xor58.i, 3
  %xor62.i = xor i32 %sub60.i, %shr61.i
  %15 = add i32 %xor58.i, %xor62.i
  %sub64.i = sub i32 %xor54.i, %15
  %shl65.i = shl i32 %xor62.i, 10
  %xor66.i = xor i32 %sub64.i, %shl65.i
  %16 = add i32 %xor62.i, %xor66.i
  %sub68.i = sub i32 %xor58.i, %16
  %shr69.i = lshr i32 %xor66.i, 15
  %xor70.i = xor i32 %sub68.i, %shr69.i
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %xor70.i, %sw.bb ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @crush_hash32_2(i32 noundef %type, i32 noundef %a, i32 noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cond = icmp eq i32 %type, 0
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %0 = xor i32 %a, %b
  %xor1.i = xor i32 %0, 1315423911
  %1 = add i32 %xor1.i, %b
  %sub2.i = sub i32 %a, %1
  %shr.i = lshr i32 %xor1.i, 13
  %xor3.i = xor i32 %sub2.i, %shr.i
  %2 = add i32 %xor1.i, %xor3.i
  %sub5.i = sub i32 %b, %2
  %shl.i = shl i32 %xor3.i, 8
  %xor6.i = xor i32 %sub5.i, %shl.i
  %3 = add i32 %xor3.i, %xor6.i
  %sub8.i = sub i32 %xor1.i, %3
  %shr9.i = lshr i32 %xor6.i, 13
  %xor10.i = xor i32 %sub8.i, %shr9.i
  %4 = add i32 %xor6.i, %xor10.i
  %sub12.i = sub i32 %xor3.i, %4
  %shr13.i = lshr i32 %xor10.i, 12
  %xor14.i = xor i32 %sub12.i, %shr13.i
  %5 = add i32 %xor10.i, %xor14.i
  %sub16.i = sub i32 %xor6.i, %5
  %shl17.i = shl i32 %xor14.i, 16
  %xor18.i = xor i32 %sub16.i, %shl17.i
  %6 = add i32 %xor14.i, %xor18.i
  %sub20.i = sub i32 %xor10.i, %6
  %shr21.i = lshr i32 %xor18.i, 5
  %xor22.i = xor i32 %sub20.i, %shr21.i
  %7 = add i32 %xor18.i, %xor22.i
  %sub24.i = sub i32 %xor14.i, %7
  %shr25.i = lshr i32 %xor22.i, 3
  %xor26.i = xor i32 %sub24.i, %shr25.i
  %8 = add i32 %xor22.i, %xor26.i
  %sub28.i = sub i32 %xor18.i, %8
  %shl29.i = shl i32 %xor26.i, 10
  %xor30.i = xor i32 %sub28.i, %shl29.i
  %9 = add i32 %xor26.i, %xor30.i
  %sub32.i = sub i32 %xor22.i, %9
  %shr33.i = lshr i32 %xor30.i, 15
  %xor34.i = xor i32 %sub32.i, %shr33.i
  %10 = add i32 %xor26.i, %xor34.i
  %sub37.i = sub i32 231232, %10
  %shr38.i = lshr i32 %xor34.i, 13
  %xor39.i = xor i32 %sub37.i, %shr38.i
  %11 = add i32 %xor34.i, %xor39.i
  %sub41.i = sub i32 %xor26.i, %11
  %shl42.i = shl i32 %xor39.i, 8
  %xor43.i = xor i32 %sub41.i, %shl42.i
  %12 = add i32 %xor39.i, %xor43.i
  %sub45.i = sub i32 %xor34.i, %12
  %shr46.i = lshr i32 %xor43.i, 13
  %xor47.i = xor i32 %sub45.i, %shr46.i
  %13 = add i32 %xor43.i, %xor47.i
  %sub49.i = sub i32 %xor39.i, %13
  %shr50.i = lshr i32 %xor47.i, 12
  %xor51.i = xor i32 %sub49.i, %shr50.i
  %14 = add i32 %xor47.i, %xor51.i
  %sub53.i = sub i32 %xor43.i, %14
  %shl54.i = shl i32 %xor51.i, 16
  %xor55.i = xor i32 %sub53.i, %shl54.i
  %15 = add i32 %xor51.i, %xor55.i
  %sub57.i = sub i32 %xor47.i, %15
  %shr58.i = lshr i32 %xor55.i, 5
  %xor59.i = xor i32 %sub57.i, %shr58.i
  %16 = add i32 %xor55.i, %xor59.i
  %sub61.i = sub i32 %xor51.i, %16
  %shr62.i = lshr i32 %xor59.i, 3
  %xor63.i = xor i32 %sub61.i, %shr62.i
  %17 = add i32 %xor59.i, %xor63.i
  %sub65.i = sub i32 %xor55.i, %17
  %shl66.i = shl i32 %xor63.i, 10
  %xor67.i = xor i32 %sub65.i, %shl66.i
  %18 = add i32 %xor63.i, %xor67.i
  %sub69.i = sub i32 %xor59.i, %18
  %shr70.i = lshr i32 %xor67.i, 15
  %xor71.i = xor i32 %sub69.i, %shr70.i
  %sub75.i = add i32 %xor30.i, -1232
  %sub76.i = sub i32 %sub75.i, %xor71.i
  %shr77.i = lshr i32 %xor71.i, 13
  %xor78.i = xor i32 %sub76.i, %shr77.i
  %19 = add i32 %xor71.i, %xor78.i
  %sub80.i = sub i32 1232, %19
  %shl81.i = shl i32 %xor78.i, 8
  %xor82.i = xor i32 %sub80.i, %shl81.i
  %20 = add i32 %xor78.i, %xor82.i
  %sub84.i = sub i32 %xor71.i, %20
  %shr85.i = lshr i32 %xor82.i, 13
  %xor86.i = xor i32 %sub84.i, %shr85.i
  %21 = add i32 %xor82.i, %xor86.i
  %sub88.i = sub i32 %xor78.i, %21
  %shr89.i = lshr i32 %xor86.i, 12
  %xor90.i = xor i32 %sub88.i, %shr89.i
  %22 = add i32 %xor86.i, %xor90.i
  %sub92.i = sub i32 %xor82.i, %22
  %shl93.i = shl i32 %xor90.i, 16
  %xor94.i = xor i32 %sub92.i, %shl93.i
  %23 = add i32 %xor90.i, %xor94.i
  %sub96.i = sub i32 %xor86.i, %23
  %shr97.i = lshr i32 %xor94.i, 5
  %xor98.i = xor i32 %sub96.i, %shr97.i
  %24 = add i32 %xor94.i, %xor98.i
  %sub100.i = sub i32 %xor90.i, %24
  %shr101.i = lshr i32 %xor98.i, 3
  %xor102.i = xor i32 %sub100.i, %shr101.i
  %25 = add i32 %xor98.i, %xor102.i
  %sub104.i = sub i32 %xor94.i, %25
  %shl105.i = shl i32 %xor102.i, 10
  %xor106.i = xor i32 %sub104.i, %shl105.i
  %26 = add i32 %xor102.i, %xor106.i
  %sub108.i = sub i32 %xor98.i, %26
  %shr109.i = lshr i32 %xor106.i, 15
  %xor110.i = xor i32 %sub108.i, %shr109.i
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %xor110.i, %sw.bb ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @crush_hash32_3(i32 noundef %type, i32 noundef %a, i32 noundef %b, i32 noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cond = icmp eq i32 %type, 0
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %0 = xor i32 %a, %b
  %1 = xor i32 %0, %c
  %xor2.i = xor i32 %1, 1315423911
  %2 = add i32 %xor2.i, %b
  %sub3.i = sub i32 %a, %2
  %shr.i = lshr i32 %xor2.i, 13
  %xor4.i = xor i32 %sub3.i, %shr.i
  %3 = add i32 %xor2.i, %xor4.i
  %sub6.i = sub i32 %b, %3
  %shl.i = shl i32 %xor4.i, 8
  %xor7.i = xor i32 %sub6.i, %shl.i
  %4 = add i32 %xor4.i, %xor7.i
  %sub9.i = sub i32 %xor2.i, %4
  %shr10.i = lshr i32 %xor7.i, 13
  %xor11.i = xor i32 %sub9.i, %shr10.i
  %5 = add i32 %xor7.i, %xor11.i
  %sub13.i = sub i32 %xor4.i, %5
  %shr14.i = lshr i32 %xor11.i, 12
  %xor15.i = xor i32 %sub13.i, %shr14.i
  %6 = add i32 %xor11.i, %xor15.i
  %sub17.i = sub i32 %xor7.i, %6
  %shl18.i = shl i32 %xor15.i, 16
  %xor19.i = xor i32 %sub17.i, %shl18.i
  %7 = add i32 %xor15.i, %xor19.i
  %sub21.i = sub i32 %xor11.i, %7
  %shr22.i = lshr i32 %xor19.i, 5
  %xor23.i = xor i32 %sub21.i, %shr22.i
  %8 = add i32 %xor19.i, %xor23.i
  %sub25.i = sub i32 %xor15.i, %8
  %shr26.i = lshr i32 %xor23.i, 3
  %xor27.i = xor i32 %sub25.i, %shr26.i
  %9 = add i32 %xor23.i, %xor27.i
  %sub29.i = sub i32 %xor19.i, %9
  %shl30.i = shl i32 %xor27.i, 10
  %xor31.i = xor i32 %sub29.i, %shl30.i
  %10 = add i32 %xor27.i, %xor31.i
  %sub33.i = sub i32 %xor23.i, %10
  %shr34.i = lshr i32 %xor31.i, 15
  %xor35.i = xor i32 %sub33.i, %shr34.i
  %sub37.i = add i32 %c, -231232
  %sub38.i = sub i32 %sub37.i, %xor35.i
  %shr39.i = lshr i32 %xor35.i, 13
  %xor40.i = xor i32 %sub38.i, %shr39.i
  %11 = add i32 %xor35.i, %xor40.i
  %sub42.i = sub i32 231232, %11
  %shl43.i = shl i32 %xor40.i, 8
  %xor44.i = xor i32 %sub42.i, %shl43.i
  %12 = add i32 %xor40.i, %xor44.i
  %sub46.i = sub i32 %xor35.i, %12
  %shr47.i = lshr i32 %xor44.i, 13
  %xor48.i = xor i32 %sub46.i, %shr47.i
  %13 = add i32 %xor44.i, %xor48.i
  %sub50.i = sub i32 %xor40.i, %13
  %shr51.i = lshr i32 %xor48.i, 12
  %xor52.i = xor i32 %sub50.i, %shr51.i
  %14 = add i32 %xor48.i, %xor52.i
  %sub54.i = sub i32 %xor44.i, %14
  %shl55.i = shl i32 %xor52.i, 16
  %xor56.i = xor i32 %sub54.i, %shl55.i
  %15 = add i32 %xor52.i, %xor56.i
  %sub58.i = sub i32 %xor48.i, %15
  %shr59.i = lshr i32 %xor56.i, 5
  %xor60.i = xor i32 %sub58.i, %shr59.i
  %16 = add i32 %xor56.i, %xor60.i
  %sub62.i = sub i32 %xor52.i, %16
  %shr63.i = lshr i32 %xor60.i, 3
  %xor64.i = xor i32 %sub62.i, %shr63.i
  %17 = add i32 %xor60.i, %xor64.i
  %sub66.i = sub i32 %xor56.i, %17
  %shl67.i = shl i32 %xor64.i, 10
  %xor68.i = xor i32 %sub66.i, %shl67.i
  %18 = add i32 %xor64.i, %xor68.i
  %sub70.i = sub i32 %xor60.i, %18
  %shr71.i = lshr i32 %xor68.i, 15
  %xor72.i = xor i32 %sub70.i, %shr71.i
  %19 = add i32 %xor27.i, %xor72.i
  %sub77.i = sub i32 1232, %19
  %shr78.i = lshr i32 %xor72.i, 13
  %xor79.i = xor i32 %sub77.i, %shr78.i
  %20 = add i32 %xor72.i, %xor79.i
  %sub81.i = sub i32 %xor27.i, %20
  %shl82.i = shl i32 %xor79.i, 8
  %xor83.i = xor i32 %sub81.i, %shl82.i
  %21 = add i32 %xor79.i, %xor83.i
  %sub85.i = sub i32 %xor72.i, %21
  %shr86.i = lshr i32 %xor83.i, 13
  %xor87.i = xor i32 %sub85.i, %shr86.i
  %22 = add i32 %xor83.i, %xor87.i
  %sub89.i = sub i32 %xor79.i, %22
  %shr90.i = lshr i32 %xor87.i, 12
  %xor91.i = xor i32 %sub89.i, %shr90.i
  %23 = add i32 %xor87.i, %xor91.i
  %sub93.i = sub i32 %xor83.i, %23
  %shl94.i = shl i32 %xor91.i, 16
  %xor95.i = xor i32 %sub93.i, %shl94.i
  %24 = add i32 %xor91.i, %xor95.i
  %sub97.i = sub i32 %xor87.i, %24
  %shr98.i = lshr i32 %xor95.i, 5
  %xor99.i = xor i32 %sub97.i, %shr98.i
  %25 = add i32 %xor95.i, %xor99.i
  %sub101.i = sub i32 %xor91.i, %25
  %shr102.i = lshr i32 %xor99.i, 3
  %xor103.i = xor i32 %sub101.i, %shr102.i
  %26 = add i32 %xor99.i, %xor103.i
  %sub105.i = sub i32 %xor95.i, %26
  %shl106.i = shl i32 %xor103.i, 10
  %xor107.i = xor i32 %sub105.i, %shl106.i
  %27 = add i32 %xor103.i, %xor107.i
  %sub109.i = sub i32 %xor99.i, %27
  %shr110.i = lshr i32 %xor107.i, 15
  %xor111.i = xor i32 %sub109.i, %shr110.i
  %28 = add i32 %xor68.i, %xor111.i
  %sub116.i = sub i32 %xor31.i, %28
  %shr117.i = lshr i32 %xor111.i, 13
  %xor118.i = xor i32 %sub116.i, %shr117.i
  %29 = add i32 %xor111.i, %xor118.i
  %sub120.i = sub i32 %xor68.i, %29
  %shl121.i = shl i32 %xor118.i, 8
  %xor122.i = xor i32 %sub120.i, %shl121.i
  %30 = add i32 %xor118.i, %xor122.i
  %sub124.i = sub i32 %xor111.i, %30
  %shr125.i = lshr i32 %xor122.i, 13
  %xor126.i = xor i32 %sub124.i, %shr125.i
  %31 = add i32 %xor122.i, %xor126.i
  %sub128.i = sub i32 %xor118.i, %31
  %shr129.i = lshr i32 %xor126.i, 12
  %xor130.i = xor i32 %sub128.i, %shr129.i
  %32 = add i32 %xor126.i, %xor130.i
  %sub132.i = sub i32 %xor122.i, %32
  %shl133.i = shl i32 %xor130.i, 16
  %xor134.i = xor i32 %sub132.i, %shl133.i
  %33 = add i32 %xor130.i, %xor134.i
  %sub136.i = sub i32 %xor126.i, %33
  %shr137.i = lshr i32 %xor134.i, 5
  %xor138.i = xor i32 %sub136.i, %shr137.i
  %34 = add i32 %xor134.i, %xor138.i
  %sub140.i = sub i32 %xor130.i, %34
  %shr141.i = lshr i32 %xor138.i, 3
  %xor142.i = xor i32 %sub140.i, %shr141.i
  %35 = add i32 %xor138.i, %xor142.i
  %sub144.i = sub i32 %xor134.i, %35
  %shl145.i = shl i32 %xor142.i, 10
  %xor146.i = xor i32 %sub144.i, %shl145.i
  %36 = add i32 %xor142.i, %xor146.i
  %sub148.i = sub i32 %xor138.i, %36
  %shr149.i = lshr i32 %xor146.i, 15
  %xor150.i = xor i32 %sub148.i, %shr149.i
  %37 = add i32 %xor64.i, %xor150.i
  %sub155.i = sub i32 %xor103.i, %37
  %shr156.i = lshr i32 %xor150.i, 13
  %xor157.i = xor i32 %sub155.i, %shr156.i
  %38 = add i32 %xor150.i, %xor157.i
  %sub159.i = sub i32 %xor64.i, %38
  %shl160.i = shl i32 %xor157.i, 8
  %xor161.i = xor i32 %sub159.i, %shl160.i
  %39 = add i32 %xor157.i, %xor161.i
  %sub163.i = sub i32 %xor150.i, %39
  %shr164.i = lshr i32 %xor161.i, 13
  %xor165.i = xor i32 %sub163.i, %shr164.i
  %40 = add i32 %xor161.i, %xor165.i
  %sub167.i = sub i32 %xor157.i, %40
  %shr168.i = lshr i32 %xor165.i, 12
  %xor169.i = xor i32 %sub167.i, %shr168.i
  %41 = add i32 %xor165.i, %xor169.i
  %sub171.i = sub i32 %xor161.i, %41
  %shl172.i = shl i32 %xor169.i, 16
  %xor173.i = xor i32 %sub171.i, %shl172.i
  %42 = add i32 %xor169.i, %xor173.i
  %sub175.i = sub i32 %xor165.i, %42
  %shr176.i = lshr i32 %xor173.i, 5
  %xor177.i = xor i32 %sub175.i, %shr176.i
  %43 = add i32 %xor173.i, %xor177.i
  %sub179.i = sub i32 %xor169.i, %43
  %shr180.i = lshr i32 %xor177.i, 3
  %xor181.i = xor i32 %sub179.i, %shr180.i
  %44 = add i32 %xor177.i, %xor181.i
  %sub183.i = sub i32 %xor173.i, %44
  %shl184.i = shl i32 %xor181.i, 10
  %xor185.i = xor i32 %sub183.i, %shl184.i
  %45 = add i32 %xor181.i, %xor185.i
  %sub187.i = sub i32 %xor177.i, %45
  %shr188.i = lshr i32 %xor185.i, 15
  %xor189.i = xor i32 %sub187.i, %shr188.i
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %xor189.i, %sw.bb ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @crush_hash32_4(i32 noundef %type, i32 noundef %a, i32 noundef %b, i32 noundef %c, i32 noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cond = icmp eq i32 %type, 0
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %0 = xor i32 %a, %b
  %1 = xor i32 %0, %c
  %2 = xor i32 %1, %d
  %xor3.i = xor i32 %2, 1315423911
  %3 = add i32 %xor3.i, %b
  %sub4.i = sub i32 %a, %3
  %shr.i = lshr i32 %xor3.i, 13
  %xor5.i = xor i32 %sub4.i, %shr.i
  %4 = add i32 %xor3.i, %xor5.i
  %sub7.i = sub i32 %b, %4
  %shl.i = shl i32 %xor5.i, 8
  %xor8.i = xor i32 %sub7.i, %shl.i
  %5 = add i32 %xor5.i, %xor8.i
  %sub10.i = sub i32 %xor3.i, %5
  %shr11.i = lshr i32 %xor8.i, 13
  %xor12.i = xor i32 %sub10.i, %shr11.i
  %6 = add i32 %xor8.i, %xor12.i
  %sub14.i = sub i32 %xor5.i, %6
  %shr15.i = lshr i32 %xor12.i, 12
  %xor16.i = xor i32 %sub14.i, %shr15.i
  %7 = add i32 %xor12.i, %xor16.i
  %sub18.i = sub i32 %xor8.i, %7
  %shl19.i = shl i32 %xor16.i, 16
  %xor20.i = xor i32 %sub18.i, %shl19.i
  %8 = add i32 %xor16.i, %xor20.i
  %sub22.i = sub i32 %xor12.i, %8
  %shr23.i = lshr i32 %xor20.i, 5
  %xor24.i = xor i32 %sub22.i, %shr23.i
  %9 = add i32 %xor20.i, %xor24.i
  %sub26.i = sub i32 %xor16.i, %9
  %shr27.i = lshr i32 %xor24.i, 3
  %xor28.i = xor i32 %sub26.i, %shr27.i
  %10 = add i32 %xor24.i, %xor28.i
  %sub30.i = sub i32 %xor20.i, %10
  %shl31.i = shl i32 %xor28.i, 10
  %xor32.i = xor i32 %sub30.i, %shl31.i
  %11 = add i32 %xor28.i, %xor32.i
  %sub34.i = sub i32 %xor24.i, %11
  %shr35.i = lshr i32 %xor32.i, 15
  %xor36.i = xor i32 %sub34.i, %shr35.i
  %12 = add i32 %xor36.i, %d
  %sub39.i = sub i32 %c, %12
  %shr40.i = lshr i32 %xor36.i, 13
  %xor41.i = xor i32 %sub39.i, %shr40.i
  %13 = add i32 %xor36.i, %xor41.i
  %sub43.i = sub i32 %d, %13
  %shl44.i = shl i32 %xor41.i, 8
  %xor45.i = xor i32 %sub43.i, %shl44.i
  %14 = add i32 %xor41.i, %xor45.i
  %sub47.i = sub i32 %xor36.i, %14
  %shr48.i = lshr i32 %xor45.i, 13
  %xor49.i = xor i32 %sub47.i, %shr48.i
  %15 = add i32 %xor45.i, %xor49.i
  %sub51.i = sub i32 %xor41.i, %15
  %shr52.i = lshr i32 %xor49.i, 12
  %xor53.i = xor i32 %sub51.i, %shr52.i
  %16 = add i32 %xor49.i, %xor53.i
  %sub55.i = sub i32 %xor45.i, %16
  %shl56.i = shl i32 %xor53.i, 16
  %xor57.i = xor i32 %sub55.i, %shl56.i
  %17 = add i32 %xor53.i, %xor57.i
  %sub59.i = sub i32 %xor49.i, %17
  %shr60.i = lshr i32 %xor57.i, 5
  %xor61.i = xor i32 %sub59.i, %shr60.i
  %18 = add i32 %xor57.i, %xor61.i
  %sub63.i = sub i32 %xor53.i, %18
  %shr64.i = lshr i32 %xor61.i, 3
  %xor65.i = xor i32 %sub63.i, %shr64.i
  %19 = add i32 %xor61.i, %xor65.i
  %sub67.i = sub i32 %xor57.i, %19
  %shl68.i = shl i32 %xor65.i, 10
  %xor69.i = xor i32 %sub67.i, %shl68.i
  %20 = add i32 %xor65.i, %xor69.i
  %sub71.i = sub i32 %xor61.i, %20
  %shr72.i = lshr i32 %xor69.i, 15
  %xor73.i = xor i32 %sub71.i, %shr72.i
  %sub77.i = add i32 %xor28.i, -231232
  %sub78.i = sub i32 %sub77.i, %xor73.i
  %shr79.i = lshr i32 %xor73.i, 13
  %xor80.i = xor i32 %sub78.i, %shr79.i
  %21 = add i32 %xor73.i, %xor80.i
  %sub82.i = sub i32 231232, %21
  %shl83.i = shl i32 %xor80.i, 8
  %xor84.i = xor i32 %sub82.i, %shl83.i
  %22 = add i32 %xor80.i, %xor84.i
  %sub86.i = sub i32 %xor73.i, %22
  %shr87.i = lshr i32 %xor84.i, 13
  %xor88.i = xor i32 %sub86.i, %shr87.i
  %23 = add i32 %xor84.i, %xor88.i
  %sub90.i = sub i32 %xor80.i, %23
  %shr91.i = lshr i32 %xor88.i, 12
  %xor92.i = xor i32 %sub90.i, %shr91.i
  %24 = add i32 %xor88.i, %xor92.i
  %sub94.i = sub i32 %xor84.i, %24
  %shl95.i = shl i32 %xor92.i, 16
  %xor96.i = xor i32 %sub94.i, %shl95.i
  %25 = add i32 %xor92.i, %xor96.i
  %sub98.i = sub i32 %xor88.i, %25
  %shr99.i = lshr i32 %xor96.i, 5
  %xor100.i = xor i32 %sub98.i, %shr99.i
  %26 = add i32 %xor96.i, %xor100.i
  %sub102.i = sub i32 %xor92.i, %26
  %shr103.i = lshr i32 %xor100.i, 3
  %xor104.i = xor i32 %sub102.i, %shr103.i
  %27 = add i32 %xor100.i, %xor104.i
  %sub106.i = sub i32 %xor96.i, %27
  %shl107.i = shl i32 %xor104.i, 10
  %xor108.i = xor i32 %sub106.i, %shl107.i
  %28 = add i32 %xor104.i, %xor108.i
  %sub110.i = sub i32 %xor100.i, %28
  %shr111.i = lshr i32 %xor108.i, 15
  %xor112.i = xor i32 %sub110.i, %shr111.i
  %29 = add i32 %xor32.i, %xor112.i
  %sub117.i = sub i32 1232, %29
  %shr118.i = lshr i32 %xor112.i, 13
  %xor119.i = xor i32 %sub117.i, %shr118.i
  %30 = add i32 %xor112.i, %xor119.i
  %sub121.i = sub i32 %xor32.i, %30
  %shl122.i = shl i32 %xor119.i, 8
  %xor123.i = xor i32 %sub121.i, %shl122.i
  %31 = add i32 %xor119.i, %xor123.i
  %sub125.i = sub i32 %xor112.i, %31
  %shr126.i = lshr i32 %xor123.i, 13
  %xor127.i = xor i32 %sub125.i, %shr126.i
  %32 = add i32 %xor123.i, %xor127.i
  %sub129.i = sub i32 %xor119.i, %32
  %shr130.i = lshr i32 %xor127.i, 12
  %xor131.i = xor i32 %sub129.i, %shr130.i
  %33 = add i32 %xor127.i, %xor131.i
  %sub133.i = sub i32 %xor123.i, %33
  %shl134.i = shl i32 %xor131.i, 16
  %xor135.i = xor i32 %sub133.i, %shl134.i
  %34 = add i32 %xor131.i, %xor135.i
  %sub137.i = sub i32 %xor127.i, %34
  %shr138.i = lshr i32 %xor135.i, 5
  %xor139.i = xor i32 %sub137.i, %shr138.i
  %35 = add i32 %xor135.i, %xor139.i
  %sub141.i = sub i32 %xor131.i, %35
  %shr142.i = lshr i32 %xor139.i, 3
  %xor143.i = xor i32 %sub141.i, %shr142.i
  %36 = add i32 %xor139.i, %xor143.i
  %sub145.i = sub i32 %xor135.i, %36
  %shl146.i = shl i32 %xor143.i, 10
  %xor147.i = xor i32 %sub145.i, %shl146.i
  %37 = add i32 %xor143.i, %xor147.i
  %sub149.i = sub i32 %xor139.i, %37
  %shr150.i = lshr i32 %xor147.i, 15
  %xor151.i = xor i32 %sub149.i, %shr150.i
  %38 = add i32 %xor108.i, %xor151.i
  %sub156.i = sub i32 %xor65.i, %38
  %shr157.i = lshr i32 %xor151.i, 13
  %xor158.i = xor i32 %sub156.i, %shr157.i
  %39 = add i32 %xor151.i, %xor158.i
  %sub160.i = sub i32 %xor108.i, %39
  %shl161.i = shl i32 %xor158.i, 8
  %xor162.i = xor i32 %sub160.i, %shl161.i
  %40 = add i32 %xor158.i, %xor162.i
  %sub164.i = sub i32 %xor151.i, %40
  %shr165.i = lshr i32 %xor162.i, 13
  %xor166.i = xor i32 %sub164.i, %shr165.i
  %41 = add i32 %xor162.i, %xor166.i
  %sub168.i = sub i32 %xor158.i, %41
  %shr169.i = lshr i32 %xor166.i, 12
  %xor170.i = xor i32 %sub168.i, %shr169.i
  %42 = add i32 %xor166.i, %xor170.i
  %sub172.i = sub i32 %xor162.i, %42
  %shl173.i = shl i32 %xor170.i, 16
  %xor174.i = xor i32 %sub172.i, %shl173.i
  %43 = add i32 %xor170.i, %xor174.i
  %sub176.i = sub i32 %xor166.i, %43
  %shr177.i = lshr i32 %xor174.i, 5
  %xor178.i = xor i32 %sub176.i, %shr177.i
  %44 = add i32 %xor174.i, %xor178.i
  %sub180.i = sub i32 %xor170.i, %44
  %shr181.i = lshr i32 %xor178.i, 3
  %xor182.i = xor i32 %sub180.i, %shr181.i
  %45 = add i32 %xor178.i, %xor182.i
  %sub184.i = sub i32 %xor174.i, %45
  %shl185.i = shl i32 %xor182.i, 10
  %xor186.i = xor i32 %sub184.i, %shl185.i
  %46 = add i32 %xor182.i, %xor186.i
  %sub188.i = sub i32 %xor178.i, %46
  %shr189.i = lshr i32 %xor186.i, 15
  %xor190.i = xor i32 %sub188.i, %shr189.i
  %47 = add i32 %xor69.i, %xor190.i
  %sub195.i = sub i32 %xor143.i, %47
  %shr196.i = lshr i32 %xor190.i, 13
  %xor197.i = xor i32 %sub195.i, %shr196.i
  %48 = add i32 %xor190.i, %xor197.i
  %sub199.i = sub i32 %xor69.i, %48
  %shl200.i = shl i32 %xor197.i, 8
  %xor201.i = xor i32 %sub199.i, %shl200.i
  %49 = add i32 %xor197.i, %xor201.i
  %sub203.i = sub i32 %xor190.i, %49
  %shr204.i = lshr i32 %xor201.i, 13
  %xor205.i = xor i32 %sub203.i, %shr204.i
  %50 = add i32 %xor201.i, %xor205.i
  %sub207.i = sub i32 %xor197.i, %50
  %shr208.i = lshr i32 %xor205.i, 12
  %xor209.i = xor i32 %sub207.i, %shr208.i
  %51 = add i32 %xor205.i, %xor209.i
  %sub211.i = sub i32 %xor201.i, %51
  %shl212.i = shl i32 %xor209.i, 16
  %xor213.i = xor i32 %sub211.i, %shl212.i
  %52 = add i32 %xor209.i, %xor213.i
  %sub215.i = sub i32 %xor205.i, %52
  %shr216.i = lshr i32 %xor213.i, 5
  %xor217.i = xor i32 %sub215.i, %shr216.i
  %53 = add i32 %xor213.i, %xor217.i
  %sub219.i = sub i32 %xor209.i, %53
  %shr220.i = lshr i32 %xor217.i, 3
  %xor221.i = xor i32 %sub219.i, %shr220.i
  %54 = add i32 %xor217.i, %xor221.i
  %sub223.i = sub i32 %xor213.i, %54
  %shl224.i = shl i32 %xor221.i, 10
  %xor225.i = xor i32 %sub223.i, %shl224.i
  %55 = add i32 %xor221.i, %xor225.i
  %sub227.i = sub i32 %xor217.i, %55
  %shr228.i = lshr i32 %xor225.i, 15
  %xor229.i = xor i32 %sub227.i, %shr228.i
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %xor229.i, %sw.bb ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @crush_hash32_5(i32 noundef %type, i32 noundef %a, i32 noundef %b, i32 noundef %c, i32 noundef %d, i32 noundef %e) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cond = icmp eq i32 %type, 0
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %0 = xor i32 %a, %b
  %1 = xor i32 %0, %c
  %2 = xor i32 %1, %d
  %3 = xor i32 %2, %e
  %xor4.i = xor i32 %3, 1315423911
  %4 = add i32 %xor4.i, %b
  %sub5.i = sub i32 %a, %4
  %shr.i = lshr i32 %xor4.i, 13
  %xor6.i = xor i32 %sub5.i, %shr.i
  %5 = add i32 %xor4.i, %xor6.i
  %sub8.i = sub i32 %b, %5
  %shl.i = shl i32 %xor6.i, 8
  %xor9.i = xor i32 %sub8.i, %shl.i
  %6 = add i32 %xor6.i, %xor9.i
  %sub11.i = sub i32 %xor4.i, %6
  %shr12.i = lshr i32 %xor9.i, 13
  %xor13.i = xor i32 %sub11.i, %shr12.i
  %7 = add i32 %xor9.i, %xor13.i
  %sub15.i = sub i32 %xor6.i, %7
  %shr16.i = lshr i32 %xor13.i, 12
  %xor17.i = xor i32 %sub15.i, %shr16.i
  %8 = add i32 %xor13.i, %xor17.i
  %sub19.i = sub i32 %xor9.i, %8
  %shl20.i = shl i32 %xor17.i, 16
  %xor21.i = xor i32 %sub19.i, %shl20.i
  %9 = add i32 %xor17.i, %xor21.i
  %sub23.i = sub i32 %xor13.i, %9
  %shr24.i = lshr i32 %xor21.i, 5
  %xor25.i = xor i32 %sub23.i, %shr24.i
  %10 = add i32 %xor21.i, %xor25.i
  %sub27.i = sub i32 %xor17.i, %10
  %shr28.i = lshr i32 %xor25.i, 3
  %xor29.i = xor i32 %sub27.i, %shr28.i
  %11 = add i32 %xor25.i, %xor29.i
  %sub31.i = sub i32 %xor21.i, %11
  %shl32.i = shl i32 %xor29.i, 10
  %xor33.i = xor i32 %sub31.i, %shl32.i
  %12 = add i32 %xor29.i, %xor33.i
  %sub35.i = sub i32 %xor25.i, %12
  %shr36.i = lshr i32 %xor33.i, 15
  %xor37.i = xor i32 %sub35.i, %shr36.i
  %13 = add i32 %xor37.i, %d
  %sub40.i = sub i32 %c, %13
  %shr41.i = lshr i32 %xor37.i, 13
  %xor42.i = xor i32 %sub40.i, %shr41.i
  %14 = add i32 %xor37.i, %xor42.i
  %sub44.i = sub i32 %d, %14
  %shl45.i = shl i32 %xor42.i, 8
  %xor46.i = xor i32 %sub44.i, %shl45.i
  %15 = add i32 %xor42.i, %xor46.i
  %sub48.i = sub i32 %xor37.i, %15
  %shr49.i = lshr i32 %xor46.i, 13
  %xor50.i = xor i32 %sub48.i, %shr49.i
  %16 = add i32 %xor46.i, %xor50.i
  %sub52.i = sub i32 %xor42.i, %16
  %shr53.i = lshr i32 %xor50.i, 12
  %xor54.i = xor i32 %sub52.i, %shr53.i
  %17 = add i32 %xor50.i, %xor54.i
  %sub56.i = sub i32 %xor46.i, %17
  %shl57.i = shl i32 %xor54.i, 16
  %xor58.i = xor i32 %sub56.i, %shl57.i
  %18 = add i32 %xor54.i, %xor58.i
  %sub60.i = sub i32 %xor50.i, %18
  %shr61.i = lshr i32 %xor58.i, 5
  %xor62.i = xor i32 %sub60.i, %shr61.i
  %19 = add i32 %xor58.i, %xor62.i
  %sub64.i = sub i32 %xor54.i, %19
  %shr65.i = lshr i32 %xor62.i, 3
  %xor66.i = xor i32 %sub64.i, %shr65.i
  %20 = add i32 %xor62.i, %xor66.i
  %sub68.i = sub i32 %xor58.i, %20
  %shl69.i = shl i32 %xor66.i, 10
  %xor70.i = xor i32 %sub68.i, %shl69.i
  %21 = add i32 %xor66.i, %xor70.i
  %sub72.i = sub i32 %xor62.i, %21
  %shr73.i = lshr i32 %xor70.i, 15
  %xor74.i = xor i32 %sub72.i, %shr73.i
  %sub78.i = add i32 %e, -231232
  %sub79.i = sub i32 %sub78.i, %xor74.i
  %shr80.i = lshr i32 %xor74.i, 13
  %xor81.i = xor i32 %sub79.i, %shr80.i
  %22 = add i32 %xor74.i, %xor81.i
  %sub83.i = sub i32 231232, %22
  %shl84.i = shl i32 %xor81.i, 8
  %xor85.i = xor i32 %sub83.i, %shl84.i
  %23 = add i32 %xor81.i, %xor85.i
  %sub87.i = sub i32 %xor74.i, %23
  %shr88.i = lshr i32 %xor85.i, 13
  %xor89.i = xor i32 %sub87.i, %shr88.i
  %24 = add i32 %xor85.i, %xor89.i
  %sub91.i = sub i32 %xor81.i, %24
  %shr92.i = lshr i32 %xor89.i, 12
  %xor93.i = xor i32 %sub91.i, %shr92.i
  %25 = add i32 %xor89.i, %xor93.i
  %sub95.i = sub i32 %xor85.i, %25
  %shl96.i = shl i32 %xor93.i, 16
  %xor97.i = xor i32 %sub95.i, %shl96.i
  %26 = add i32 %xor93.i, %xor97.i
  %sub99.i = sub i32 %xor89.i, %26
  %shr100.i = lshr i32 %xor97.i, 5
  %xor101.i = xor i32 %sub99.i, %shr100.i
  %27 = add i32 %xor97.i, %xor101.i
  %sub103.i = sub i32 %xor93.i, %27
  %shr104.i = lshr i32 %xor101.i, 3
  %xor105.i = xor i32 %sub103.i, %shr104.i
  %28 = add i32 %xor101.i, %xor105.i
  %sub107.i = sub i32 %xor97.i, %28
  %shl108.i = shl i32 %xor105.i, 10
  %xor109.i = xor i32 %sub107.i, %shl108.i
  %29 = add i32 %xor105.i, %xor109.i
  %sub111.i = sub i32 %xor101.i, %29
  %shr112.i = lshr i32 %xor109.i, 15
  %xor113.i = xor i32 %sub111.i, %shr112.i
  %30 = add i32 %xor29.i, %xor113.i
  %sub118.i = sub i32 1232, %30
  %shr119.i = lshr i32 %xor113.i, 13
  %xor120.i = xor i32 %sub118.i, %shr119.i
  %31 = add i32 %xor113.i, %xor120.i
  %sub122.i = sub i32 %xor29.i, %31
  %shl123.i = shl i32 %xor120.i, 8
  %xor124.i = xor i32 %sub122.i, %shl123.i
  %32 = add i32 %xor120.i, %xor124.i
  %sub126.i = sub i32 %xor113.i, %32
  %shr127.i = lshr i32 %xor124.i, 13
  %xor128.i = xor i32 %sub126.i, %shr127.i
  %33 = add i32 %xor124.i, %xor128.i
  %sub130.i = sub i32 %xor120.i, %33
  %shr131.i = lshr i32 %xor128.i, 12
  %xor132.i = xor i32 %sub130.i, %shr131.i
  %34 = add i32 %xor128.i, %xor132.i
  %sub134.i = sub i32 %xor124.i, %34
  %shl135.i = shl i32 %xor132.i, 16
  %xor136.i = xor i32 %sub134.i, %shl135.i
  %35 = add i32 %xor132.i, %xor136.i
  %sub138.i = sub i32 %xor128.i, %35
  %shr139.i = lshr i32 %xor136.i, 5
  %xor140.i = xor i32 %sub138.i, %shr139.i
  %36 = add i32 %xor136.i, %xor140.i
  %sub142.i = sub i32 %xor132.i, %36
  %shr143.i = lshr i32 %xor140.i, 3
  %xor144.i = xor i32 %sub142.i, %shr143.i
  %37 = add i32 %xor140.i, %xor144.i
  %sub146.i = sub i32 %xor136.i, %37
  %shl147.i = shl i32 %xor144.i, 10
  %xor148.i = xor i32 %sub146.i, %shl147.i
  %38 = add i32 %xor144.i, %xor148.i
  %sub150.i = sub i32 %xor140.i, %38
  %shr151.i = lshr i32 %xor148.i, 15
  %xor152.i = xor i32 %sub150.i, %shr151.i
  %39 = add i32 %xor109.i, %xor152.i
  %sub157.i = sub i32 %xor33.i, %39
  %shr158.i = lshr i32 %xor152.i, 13
  %xor159.i = xor i32 %sub157.i, %shr158.i
  %40 = add i32 %xor152.i, %xor159.i
  %sub161.i = sub i32 %xor109.i, %40
  %shl162.i = shl i32 %xor159.i, 8
  %xor163.i = xor i32 %sub161.i, %shl162.i
  %41 = add i32 %xor159.i, %xor163.i
  %sub165.i = sub i32 %xor152.i, %41
  %shr166.i = lshr i32 %xor163.i, 13
  %xor167.i = xor i32 %sub165.i, %shr166.i
  %42 = add i32 %xor163.i, %xor167.i
  %sub169.i = sub i32 %xor159.i, %42
  %shr170.i = lshr i32 %xor167.i, 12
  %xor171.i = xor i32 %sub169.i, %shr170.i
  %43 = add i32 %xor167.i, %xor171.i
  %sub173.i = sub i32 %xor163.i, %43
  %shl174.i = shl i32 %xor171.i, 16
  %xor175.i = xor i32 %sub173.i, %shl174.i
  %44 = add i32 %xor171.i, %xor175.i
  %sub177.i = sub i32 %xor167.i, %44
  %shr178.i = lshr i32 %xor175.i, 5
  %xor179.i = xor i32 %sub177.i, %shr178.i
  %45 = add i32 %xor175.i, %xor179.i
  %sub181.i = sub i32 %xor171.i, %45
  %shr182.i = lshr i32 %xor179.i, 3
  %xor183.i = xor i32 %sub181.i, %shr182.i
  %46 = add i32 %xor179.i, %xor183.i
  %sub185.i = sub i32 %xor175.i, %46
  %shl186.i = shl i32 %xor183.i, 10
  %xor187.i = xor i32 %sub185.i, %shl186.i
  %47 = add i32 %xor183.i, %xor187.i
  %sub189.i = sub i32 %xor179.i, %47
  %shr190.i = lshr i32 %xor187.i, 15
  %xor191.i = xor i32 %sub189.i, %shr190.i
  %48 = add i32 %xor66.i, %xor191.i
  %sub196.i = sub i32 %xor144.i, %48
  %shr197.i = lshr i32 %xor191.i, 13
  %xor198.i = xor i32 %sub196.i, %shr197.i
  %49 = add i32 %xor191.i, %xor198.i
  %sub200.i = sub i32 %xor66.i, %49
  %shl201.i = shl i32 %xor198.i, 8
  %xor202.i = xor i32 %sub200.i, %shl201.i
  %50 = add i32 %xor198.i, %xor202.i
  %sub204.i = sub i32 %xor191.i, %50
  %shr205.i = lshr i32 %xor202.i, 13
  %xor206.i = xor i32 %sub204.i, %shr205.i
  %51 = add i32 %xor202.i, %xor206.i
  %sub208.i = sub i32 %xor198.i, %51
  %shr209.i = lshr i32 %xor206.i, 12
  %xor210.i = xor i32 %sub208.i, %shr209.i
  %52 = add i32 %xor206.i, %xor210.i
  %sub212.i = sub i32 %xor202.i, %52
  %shl213.i = shl i32 %xor210.i, 16
  %xor214.i = xor i32 %sub212.i, %shl213.i
  %53 = add i32 %xor210.i, %xor214.i
  %sub216.i = sub i32 %xor206.i, %53
  %shr217.i = lshr i32 %xor214.i, 5
  %xor218.i = xor i32 %sub216.i, %shr217.i
  %54 = add i32 %xor214.i, %xor218.i
  %sub220.i = sub i32 %xor210.i, %54
  %shr221.i = lshr i32 %xor218.i, 3
  %xor222.i = xor i32 %sub220.i, %shr221.i
  %55 = add i32 %xor218.i, %xor222.i
  %sub224.i = sub i32 %xor214.i, %55
  %shl225.i = shl i32 %xor222.i, 10
  %xor226.i = xor i32 %sub224.i, %shl225.i
  %56 = add i32 %xor222.i, %xor226.i
  %sub228.i = sub i32 %xor218.i, %56
  %shr229.i = lshr i32 %xor226.i, 15
  %xor230.i = xor i32 %sub228.i, %shr229.i
  %57 = add i32 %xor187.i, %xor230.i
  %sub235.i = sub i32 %xor70.i, %57
  %shr236.i = lshr i32 %xor230.i, 13
  %xor237.i = xor i32 %sub235.i, %shr236.i
  %58 = add i32 %xor230.i, %xor237.i
  %sub239.i = sub i32 %xor187.i, %58
  %shl240.i = shl i32 %xor237.i, 8
  %xor241.i = xor i32 %sub239.i, %shl240.i
  %59 = add i32 %xor237.i, %xor241.i
  %sub243.i = sub i32 %xor230.i, %59
  %shr244.i = lshr i32 %xor241.i, 13
  %xor245.i = xor i32 %sub243.i, %shr244.i
  %60 = add i32 %xor241.i, %xor245.i
  %sub247.i = sub i32 %xor237.i, %60
  %shr248.i = lshr i32 %xor245.i, 12
  %xor249.i = xor i32 %sub247.i, %shr248.i
  %61 = add i32 %xor245.i, %xor249.i
  %sub251.i = sub i32 %xor241.i, %61
  %shl252.i = shl i32 %xor249.i, 16
  %xor253.i = xor i32 %sub251.i, %shl252.i
  %62 = add i32 %xor249.i, %xor253.i
  %sub255.i = sub i32 %xor245.i, %62
  %shr256.i = lshr i32 %xor253.i, 5
  %xor257.i = xor i32 %sub255.i, %shr256.i
  %63 = add i32 %xor253.i, %xor257.i
  %sub259.i = sub i32 %xor249.i, %63
  %shr260.i = lshr i32 %xor257.i, 3
  %xor261.i = xor i32 %sub259.i, %shr260.i
  %64 = add i32 %xor257.i, %xor261.i
  %sub263.i = sub i32 %xor253.i, %64
  %shl264.i = shl i32 %xor261.i, 10
  %xor265.i = xor i32 %sub263.i, %shl264.i
  %65 = add i32 %xor261.i, %xor265.i
  %sub267.i = sub i32 %xor257.i, %65
  %shr268.i = lshr i32 %xor265.i, 15
  %xor269.i = xor i32 %sub267.i, %shr268.i
  %66 = add i32 %xor105.i, %xor269.i
  %sub274.i = sub i32 %xor222.i, %66
  %shr275.i = lshr i32 %xor269.i, 13
  %xor276.i = xor i32 %sub274.i, %shr275.i
  %67 = add i32 %xor269.i, %xor276.i
  %sub278.i = sub i32 %xor105.i, %67
  %shl279.i = shl i32 %xor276.i, 8
  %xor280.i = xor i32 %sub278.i, %shl279.i
  %68 = add i32 %xor276.i, %xor280.i
  %sub282.i = sub i32 %xor269.i, %68
  %shr283.i = lshr i32 %xor280.i, 13
  %xor284.i = xor i32 %sub282.i, %shr283.i
  %69 = add i32 %xor280.i, %xor284.i
  %sub286.i = sub i32 %xor276.i, %69
  %shr287.i = lshr i32 %xor284.i, 12
  %xor288.i = xor i32 %sub286.i, %shr287.i
  %70 = add i32 %xor284.i, %xor288.i
  %sub290.i = sub i32 %xor280.i, %70
  %shl291.i = shl i32 %xor288.i, 16
  %xor292.i = xor i32 %sub290.i, %shl291.i
  %71 = add i32 %xor288.i, %xor292.i
  %sub294.i = sub i32 %xor284.i, %71
  %shr295.i = lshr i32 %xor292.i, 5
  %xor296.i = xor i32 %sub294.i, %shr295.i
  %72 = add i32 %xor292.i, %xor296.i
  %sub298.i = sub i32 %xor288.i, %72
  %shr299.i = lshr i32 %xor296.i, 3
  %xor300.i = xor i32 %sub298.i, %shr299.i
  %73 = add i32 %xor296.i, %xor300.i
  %sub302.i = sub i32 %xor292.i, %73
  %shl303.i = shl i32 %xor300.i, 10
  %xor304.i = xor i32 %sub302.i, %shl303.i
  %74 = add i32 %xor300.i, %xor304.i
  %sub306.i = sub i32 %xor296.i, %74
  %shr307.i = lshr i32 %xor304.i, 15
  %xor308.i = xor i32 %sub306.i, %shr307.i
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %xor308.i, %sw.bb ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @crush_hash_name(i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cond = icmp eq i32 %type, 0
  %.str..str.1 = select i1 %cond, ptr @.str, ptr @.str.1
  ret ptr %.str..str.1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ceph/crush/hash.c", i32 148, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/ceph/crush/hash.c", i32 150, i32 10}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
