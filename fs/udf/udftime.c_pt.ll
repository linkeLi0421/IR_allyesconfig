; ModuleID = '/llk/IR_all_yes/fs/udf/udftime.c_pt.bc'
source_filename = "../fs/udf/udftime.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.timezone = type { i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timestamp = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }

@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @udf_disk_stamp_to_time(ptr nocapture noundef writeonly %dest, [3 x i32] %src.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %src.coerce.fca.0.extract = extractvalue [3 x i32] %src.coerce, 0
  %src.sroa.0.0.extract.shift = lshr i32 %src.coerce.fca.0.extract, 16
  %src.sroa.0.0.extract.trunc = trunc i32 %src.sroa.0.0.extract.shift to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %src.sroa.0.0.extract.trunc)
  %.mask = and i16 %0, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %.mask)
  %cmp = icmp eq i16 %.mask, 4096
  br i1 %cmp, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %shl = shl i16 %0, 4
  %1 = ashr exact i16 %shl, 4
  %shr9 = sext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32752, i16 %shl)
  %cmp12 = icmp eq i16 %shl, -32752
  %shr9.op = mul nsw i32 %shr9, 60
  %phi.bo = select i1 %cmp12, i32 0, i32 %shr9.op
  br label %if.end15

if.end15:                                         ; preds = %if.then, %entry.if.end15_crit_edge
  %offset.0 = phi i32 [ %phi.bo, %if.then ], [ 0, %entry.if.end15_crit_edge ]
  %src.sroa.2.0.extract.trunc = trunc i32 %src.coerce.fca.0.extract to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %src.sroa.2.0.extract.trunc)
  %src.coerce.fca.2.extract = extractvalue [3 x i32] %src.coerce, 2
  %src.sroa.11.8.extract.shift = lshr i32 %src.coerce.fca.2.extract, 8
  %src.sroa.10.8.extract.shift = lshr i32 %src.coerce.fca.2.extract, 16
  %src.sroa.8.8.extract.shift = lshr i32 %src.coerce.fca.2.extract, 24
  %src.coerce.fca.1.extract = extractvalue [3 x i32] %src.coerce, 1
  %src.sroa.6.4.extract.shift = lshr i32 %src.coerce.fca.1.extract, 8
  %src.sroa.5.4.extract.shift = lshr i32 %src.coerce.fca.1.extract, 16
  %src.sroa.3.4.extract.shift = lshr i32 %src.coerce.fca.1.extract, 24
  %conv16 = zext i16 %2 to i32
  %conv18 = and i32 %src.sroa.5.4.extract.shift, 255
  %conv19 = and i32 %src.sroa.6.4.extract.shift, 255
  %conv20 = and i32 %src.coerce.fca.1.extract, 255
  %call = tail call i64 @mktime64(i32 noundef %conv16, i32 noundef %src.sroa.3.4.extract.shift, i32 noundef %conv18, i32 noundef %conv19, i32 noundef %conv20, i32 noundef %src.sroa.8.8.extract.shift) #4
  %conv23 = sext i32 %offset.0 to i64
  %sub = sub i64 %call, %conv23
  %3 = ptrtoint ptr %dest to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %sub, ptr %dest, align 8
  %conv25 = and i32 %src.sroa.10.8.extract.shift, 255
  %mul26 = mul nuw nsw i32 %conv25, 10000
  %conv27 = and i32 %src.sroa.11.8.extract.shift, 255
  %mul28 = mul nuw nsw i32 %conv27, 100
  %conv29 = and i32 %src.coerce.fca.2.extract, 255
  %add = add nuw nsw i32 %mul28, %conv29
  %add30 = add nuw nsw i32 %add, %mul26
  %mul31 = mul nuw i32 %add30, 1000
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %dest, i32 0, i32 1
  %rem = srem i32 %mul31, 1000000000
  %4 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %rem, ptr %tv_nsec, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mktime64(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @udf_time_to_disk_stamp(ptr nocapture noundef %dest, [2 x i64] %ts.coerce) local_unnamed_addr #0 align 64 {
entry:
  %tm = alloca %struct.tm, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ts.coerce.fca.0.extract = extractvalue [2 x i64] %ts.coerce, 0
  %ts.coerce.fca.1.extract = extractvalue [2 x i64] %ts.coerce, 1
  %ts.sroa.2.8.extract.shift = lshr i64 %ts.coerce.fca.1.extract, 32
  %ts.sroa.2.8.extract.trunc = trunc i64 %ts.sroa.2.8.extract.shift to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tm) #4
  %0 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 2
  %2 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 3
  %3 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 4
  %4 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 5
  %5 = call ptr @memset(ptr %tm, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %6 = load i32, ptr @sys_tz, align 4
  %.neg = mul i32 %6, -65536
  %conv1 = ashr exact i32 %.neg, 16
  %7 = trunc i32 %conv1 to i16
  %8 = and i16 %7, 4095
  %conv2 = or i16 %8, 4096
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %10 = ptrtoint ptr %dest to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %dest, align 1
  %mul = mul nsw i32 %conv1, 60
  %conv4 = sext i32 %mul to i64
  %add = add i64 %ts.coerce.fca.0.extract, %conv4
  call void @time64_to_tm(i64 noundef %add, i32 noundef 0, ptr noundef nonnull %tm) #4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %4, align 4
  %13 = trunc i32 %12 to i16
  %conv6 = add i16 %13, 1900
  %14 = call i16 @llvm.bswap.i16(i16 %conv6)
  %year = getelementptr inbounds %struct.timestamp, ptr %dest, i32 0, i32 1
  %15 = ptrtoint ptr %year to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %year, align 1
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  %18 = trunc i32 %17 to i8
  %conv8 = add i8 %18, 1
  %month = getelementptr inbounds %struct.timestamp, ptr %dest, i32 0, i32 2
  %19 = ptrtoint ptr %month to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv8, ptr %month, align 1
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %2, align 4
  %conv9 = trunc i32 %21 to i8
  %day = getelementptr inbounds %struct.timestamp, ptr %dest, i32 0, i32 3
  %22 = ptrtoint ptr %day to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv9, ptr %day, align 1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  %conv10 = trunc i32 %24 to i8
  %hour = getelementptr inbounds %struct.timestamp, ptr %dest, i32 0, i32 4
  %25 = ptrtoint ptr %hour to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv10, ptr %hour, align 1
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %0, align 4
  %conv11 = trunc i32 %27 to i8
  %minute = getelementptr inbounds %struct.timestamp, ptr %dest, i32 0, i32 5
  %28 = ptrtoint ptr %minute to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv11, ptr %minute, align 1
  %29 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tm, align 4
  %conv12 = trunc i32 %30 to i8
  %second = getelementptr inbounds %struct.timestamp, ptr %dest, i32 0, i32 6
  %31 = ptrtoint ptr %second to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv12, ptr %second, align 1
  %div = sdiv i32 %ts.sroa.2.8.extract.trunc, 10000000
  %conv13 = trunc i32 %div to i8
  %centiseconds = getelementptr inbounds %struct.timestamp, ptr %dest, i32 0, i32 7
  %32 = ptrtoint ptr %centiseconds to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv13, ptr %centiseconds, align 1
  %div15 = sdiv i32 %ts.sroa.2.8.extract.trunc, 1000
  %conv17 = and i32 %div, 255
  %mul18.neg = mul nsw i32 %conv17, -10000
  %sub19 = add nsw i32 %mul18.neg, %div15
  %div20 = sdiv i32 %sub19, 100
  %conv21 = trunc i32 %div20 to i8
  %hundredsOfMicroseconds = getelementptr inbounds %struct.timestamp, ptr %dest, i32 0, i32 8
  %33 = ptrtoint ptr %hundredsOfMicroseconds to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv21, ptr %hundredsOfMicroseconds, align 1
  %mul26.neg = mul nsw i32 %div, 240
  %sub27 = add nsw i32 %mul26.neg, %div15
  %mul30.neg = mul nsw i32 %div20, 156
  %sub31 = add nsw i32 %sub27, %mul30.neg
  %conv32 = trunc i32 %sub31 to i8
  %microseconds = getelementptr inbounds %struct.timestamp, ptr %dest, i32 0, i32 9
  %34 = ptrtoint ptr %microseconds to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv32, ptr %microseconds, align 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tm) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @time64_to_tm(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
