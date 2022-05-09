; ModuleID = '/llk/IR_all_yes/arch/arm/nwfpe/softfloat.c_pt.bc'
source_filename = "../arch/arm/nwfpe/softfloat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.floatx80 = type <{ i16, i16, i64 }>
%struct.roundingData = type { i8, i8, i8 }

@float_detect_tininess = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@countLeadingZeros32.countLeadingZerosHigh = internal constant { <{ [128 x i8], [128 x i8] }>, [64 x i8] } { <{ [128 x i8], [128 x i8] }> <{ [128 x i8] c"\08\07\06\06\05\05\05\05\04\04\04\04\04\04\04\04\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [128 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@estimateSqrt32.sqrtOddAdjustments = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 4, i16 34, i16 93, i16 177, i16 285, i16 415, i16 566, i16 736, i16 924, i16 1128, i16 1349, i16 1585, i16 1835, i16 2098, i16 2374, i16 2663], [32 x i8] zeroinitializer }, align 32
@estimateSqrt32.sqrtEvenAdjustments = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 2605, i16 2223, i16 1882, i16 1577, i16 1306, i16 1065, i16 854, i16 670, i16 512, i16 377, i16 265, i16 175, i16 104, i16 52, i16 18, i16 2], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2147483648]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32767]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 64]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32767]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32767]
@___asan_gen_ = private constant [30 x i8] c"../arch/arm/nwfpe/softfloat.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"float_detect_tininess\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [39 x i8] c"../arch/arm/nwfpe/softfloat-specialize\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 38, i32 6 }
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"countLeadingZerosHigh\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 643, i32 23 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"sqrtOddAdjustments\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 605, i32 25 }
@___asan_gen_.32 = private unnamed_addr constant [20 x i8] c"sqrtEvenAdjustments\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [35 x i8] c"../arch/arm/nwfpe/softfloat-macros\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 609, i32 25 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @float_detect_tininess, ptr @countLeadingZeros32.countLeadingZerosHigh, ptr @estimateSqrt32.sqrtOddAdjustments, ptr @estimateSqrt32.sqrtEvenAdjustments], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @float_detect_tininess to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @countLeadingZeros32.countLeadingZerosHigh to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @estimateSqrt32.sqrtOddAdjustments to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @estimateSqrt32.sqrtEvenAdjustments to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @float32_is_nan(i32 noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %a, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %shl)
  %cmp = icmp ugt i32 %shl, -16777216
  %conv1 = zext i1 %cmp to i8
  ret i8 %conv1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @float32_is_signaling_nan(i32 noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %a, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %0)
  %cmp = icmp eq i32 %0, 2139095040
  %and1 = and i32 %a, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool = icmp ne i32 %and1, 0
  %1 = and i1 %cmp, %tobool
  %conv = zext i1 %1 to i8
  ret i8 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @float64_is_nan(i64 noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i64 %a, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740992, i64 %shl)
  %cmp = icmp ugt i64 %shl, -9007199254740992
  %conv1 = zext i1 %cmp to i8
  ret i8 %conv1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @float64_is_signaling_nan(i64 noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i64 %a, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %0)
  %cmp = icmp eq i64 %0, 9218868437227405312
  %and1 = and i64 %a, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool = icmp ne i64 %and1, 0
  %1 = and i1 %cmp, %tobool
  %conv = zext i1 %1 to i8
  ret i8 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @floatx80_is_nan([3 x i32] %a.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [3 x i32] %a.coerce, 0
  %and = and i32 %a.coerce.fca.0.extract, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and)
  %cmp = icmp eq i32 %and, 32767
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %a.coerce.fca.2.extract = extractvalue [3 x i32] %a.coerce, 2
  %a.coerce.fca.1.extract = extractvalue [3 x i32] %a.coerce, 1
  %a.sroa.4.4.insert.ext = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.2.4.insert.ext = zext i32 %a.coerce.fca.1.extract to i64
  %0 = shl i64 %a.sroa.2.4.insert.ext, 33
  %1 = shl nuw nsw i64 %a.sroa.4.4.insert.ext, 1
  %shl = or i64 %0, %1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl)
  %tobool = icmp ne i64 %shl, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool, %land.rhs ]
  %conv2 = zext i1 %2 to i8
  ret i8 %conv2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @floatx80_is_signaling_nan([3 x i32] %a.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [3 x i32] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [3 x i32] %a.coerce, 1
  %a.coerce.fca.2.extract = extractvalue [3 x i32] %a.coerce, 2
  %a.sroa.5.4.insert.ext = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.2.4.insert.ext = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.2.4.insert.shift = shl nuw i64 %a.sroa.2.4.insert.ext, 32
  %a.sroa.2.4.insert.insert = or i64 %a.sroa.2.4.insert.shift, %a.sroa.5.4.insert.ext
  %and1 = and i32 %a.coerce.fca.0.extract, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and1)
  %cmp = icmp ne i32 %and1, 32767
  %shl.mask = and i64 %a.sroa.2.4.insert.insert, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %tobool.not = icmp eq i64 %shl.mask, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i64 %a.sroa.2.4.insert.insert, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.2.4.insert.insert, i64 %and)
  %cmp4 = icmp eq i64 %a.sroa.2.4.insert.insert, %and
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %0 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp4, %land.rhs ]
  %conv6 = zext i1 %0 to i8
  ret i8 %conv6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @int32_to_float32(ptr nocapture noundef %roundData, i32 noundef %a) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %a to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %a, label %if.end3 [
    i32 0, label %entry.cleanup_crit_edge
    i32 -2147483648, label %if.then2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %a.lobit = lshr i32 %a, 31
  %1 = trunc i32 %a.lobit to i8
  %2 = tail call i32 @llvm.abs.i32(i32 %a, i1 true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %2)
  %cmp.i.i = icmp ult i32 %2, 65536
  %shl.i.i = shl i32 %2, 16
  %spec.select.i.i = select i1 %cmp.i.i, i32 %shl.i.i, i32 %2
  %spec.select21.i.i = select i1 %cmp.i.i, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i)
  %cmp2.i.i = icmp ult i32 %spec.select.i.i, 16777216
  %3 = or i8 %spec.select21.i.i, 8
  %shl8.i.i = shl i32 %spec.select.i.i, 8
  %a.addr.1.i.i = select i1 %cmp2.i.i, i32 %shl8.i.i, i32 %spec.select.i.i
  %shiftCount.1.i.i = select i1 %cmp2.i.i, i8 %3, i8 %spec.select21.i.i
  %shr.i.i = lshr i32 %a.addr.1.i.i, 24
  %arrayidx.i.i = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %add12.i.i = add nsw i8 %shiftCount.1.i.i, -1
  %sub.i = add i8 %add12.i.i, %5
  %conv2.i = sext i8 %sub.i to i32
  %sub3.i = sub nsw i32 156, %conv2.i
  %shl.i = shl i32 %2, %conv2.i
  %call5.i = tail call fastcc i32 @roundAndPackFloat32(ptr noundef %roundData, i8 noundef zeroext %1, i32 noundef %sub3.i, i32 noundef %shl.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -822083584, %if.then2 ], [ %call5.i, %if.end3 ], [ %a, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @int32_to_float64(i32 noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %a)
  %cmp = icmp eq i32 %a, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %a.lobit = lshr i32 %a, 31
  %0 = tail call i32 @llvm.abs.i32(i32 %a, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %0)
  %cmp.i = icmp ult i32 %0, 65536
  %shl.i = shl i32 %0, 16
  %spec.select.i = select i1 %cmp.i, i32 %shl.i, i32 %0
  %spec.select21.i = select i1 %cmp.i, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i)
  %cmp2.i = icmp ult i32 %spec.select.i, 16777216
  %1 = or i8 %spec.select21.i, 8
  %shl8.i = shl i32 %spec.select.i, 8
  %a.addr.1.i = select i1 %cmp2.i, i32 %shl8.i, i32 %spec.select.i
  %shiftCount.1.i = select i1 %cmp2.i, i8 %1, i8 %spec.select21.i
  %shr.i = lshr i32 %a.addr.1.i, 24
  %arrayidx.i = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %add12.i = add nuw nsw i8 %shiftCount.1.i, 21
  %add = add i8 %add12.i, %3
  %conv6 = zext i32 %0 to i64
  %conv7 = sext i8 %add to i32
  %sub8 = sub nsw i32 1074, %conv7
  %sh_prom = zext i32 %conv7 to i64
  %shl = shl i64 %conv6, %sh_prom
  %conv.i = zext i32 %a.lobit to i64
  %shl.i20 = shl nuw i64 %conv.i, 63
  %conv14.i = zext i32 %sub8 to i64
  %shl2.i = shl nuw nsw i64 %conv14.i, 52
  %add.i = add i64 %shl, %shl.i20
  %add3.i = add i64 %add.i, %shl2.i
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %add3.i, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @int32_to_floatx80(ptr noalias nocapture writeonly sret(%struct.floatx80) align 4 %agg.result, i32 noundef %a) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %a)
  %cmp = icmp eq i32 %a, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.abs.i32(i32 %a, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %0)
  %cmp.i = icmp ult i32 %0, 65536
  %shl.i = shl i32 %0, 16
  %spec.select.i = select i1 %cmp.i, i32 %shl.i, i32 %0
  %spec.select21.i = select i1 %cmp.i, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i)
  %cmp2.i = icmp ult i32 %spec.select.i, 16777216
  %1 = or i8 %spec.select21.i, 8
  %shl8.i = shl i32 %spec.select.i, 8
  %a.addr.1.i = select i1 %cmp2.i, i32 %shl8.i, i32 %spec.select.i
  %shiftCount.1.i = select i1 %cmp2.i, i8 %1, i8 %spec.select21.i
  %shr.i = lshr i32 %a.addr.1.i, 24
  %arrayidx.i = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %add12.i = or i8 %shiftCount.1.i, 32
  %add = add i8 %add12.i, %3
  %conv6 = zext i32 %0 to i64
  %conv7 = sext i8 %add to i32
  %sh_prom = zext i32 %conv7 to i64
  %shl = shl i64 %conv6, %sh_prom
  %4 = lshr i32 %a, 16
  %shl.i19 = and i32 %4, 32768
  %sub8 = or i32 %shl.i19, 16446
  %add.i = sub nsw i32 %sub8, %conv7
  %conv2.i = trunc i32 %add.i to i16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %shl.sink = phi i64 [ %shl, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  %conv2.i.sink = phi i16 [ %conv2.i, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  %5 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %shl.sink, ptr %5, align 4
  %7 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv2.i.sink, ptr %7, align 2
  %9 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %agg.result, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @float32_to_int32(ptr nocapture noundef %roundData, i32 noundef %a) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %a, 8388607
  %shr.i = lshr i32 %a, 23
  %and.i18 = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %tobool3.not = icmp eq i32 %and.i18, 0
  %or = or i32 %and.i, 8388608
  %aSig.0 = select i1 %tobool3.not, i32 %and.i, i32 %or
  %sub.neg = add nuw nsw i32 %shr.i, 17
  %sub = sub nsw i32 175, %and.i18
  %conv = zext i32 %aSig.0 to i64
  %shl = shl nuw nsw i64 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 175, i32 %and.i18)
  %cmp6 = icmp ult i32 %and.i18, 175
  br i1 %cmp6, label %if.else.i, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.else.i:                                        ; preds = %entry
  tail call void asm sideeffect "@shift64RightJamming -- start", ""() #8, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub)
  %cmp1.i = icmp ult i32 %sub, 64
  br i1 %cmp1.i, label %if.then2.i, label %if.else6.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom.i = zext i32 %sub to i64
  %shr.i20 = lshr i64 %shl, %sh_prom.i
  %and.i21 = and i32 %sub.neg, 63
  %sh_prom3.i = zext i32 %and.i21 to i64
  %shl.i = shl i64 %shl, %sh_prom3.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i)
  %cmp4.i = icmp ne i64 %shl.i, 0
  %0 = zext i1 %cmp4.i to i64
  %or.i = or i64 %shr.i20, %0
  br label %shift64RightJamming.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %aSig.0)
  %cmp7.i = icmp ne i32 %aSig.0, 0
  %1 = zext i1 %cmp7.i to i64
  br label %shift64RightJamming.exit

shift64RightJamming.exit:                         ; preds = %if.else6.i, %if.then2.i
  %z.0.i = phi i64 [ %or.i, %if.then2.i ], [ %1, %if.else6.i ]
  tail call void asm sideeffect "@shift64RightJamming -- end", ""() #8, !srcloc !18
  br label %if.end9

if.end9:                                          ; preds = %shift64RightJamming.exit, %entry.if.end9_crit_edge
  %zSig.0 = phi i64 [ %z.0.i, %shift64RightJamming.exit ], [ %shl, %entry.if.end9_crit_edge ]
  %2 = ptrtoint ptr %roundData to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %roundData, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i22 = icmp eq i8 %3, 0
  br i1 %cmp.i22, label %if.end9.if.end21.i_crit_edge, label %if.then.i

if.end9.if.end21.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp4.i23 = icmp eq i8 %3, 1
  br i1 %cmp4.i23, label %if.then.i.if.end21.i_crit_edge, label %if.else.i24

if.then.i.if.end21.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.else.i24:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %a)
  %tobool7.not.i = icmp sgt i32 %a, -1
  br i1 %tobool7.not.i, label %if.else13.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.else.i24
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp10.i = icmp eq i8 %3, 3
  %spec.select.i = select i1 %cmp10.i, i8 0, i8 127
  br label %if.end21.i

if.else13.i:                                      ; preds = %if.else.i24
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp15.i = icmp eq i8 %3, 2
  %spec.select79.i = select i1 %cmp15.i, i8 0, i8 127
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else13.i, %if.then8.i, %if.then.i.if.end21.i_crit_edge, %if.end9.if.end21.i_crit_edge
  %roundIncrement.0.i = phi i8 [ 64, %if.end9.if.end21.i_crit_edge ], [ 0, %if.then.i.if.end21.i_crit_edge ], [ %spec.select.i, %if.then8.i ], [ %spec.select79.i, %if.else13.i ]
  %4 = trunc i64 %zSig.0 to i8
  %conv22.i = and i8 %4, 127
  %5 = zext i8 %roundIncrement.0.i to i64
  %add.i = add i64 %zSig.0, %5
  %shr.i25 = lshr i64 %add.i, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %conv22.i)
  %cmp25.i = icmp eq i8 %conv22.i, 64
  %and2877.i = and i1 %cmp.i22, %cmp25.i
  %and28.i = zext i1 %and2877.i to i32
  %neg.i = xor i32 %and28.i, -1
  %6 = trunc i64 %shr.i25 to i32
  %conv31.i = and i32 %6, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %a)
  %tobool32.not.i = icmp sgt i32 %a, -1
  %sub.i26 = sub i32 0, %conv31.i
  %spec.select80.i = select i1 %tobool32.not.i, i32 %conv31.i, i32 %sub.i26
  call void @__sanitizer_cov_trace_const_cmp8(i64 549755813888, i64 %add.i)
  %tobool36.not.i = icmp ult i64 %add.i, 549755813888
  br i1 %tobool36.not.i, label %lor.lhs.false.i, label %if.end21.i.if.then43.i_crit_edge

if.end21.i.if.then43.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43.i

lor.lhs.false.i:                                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select80.i)
  %tobool37.not.i = icmp eq i32 %spec.select80.i, 0
  %tobool42.not.i.unshifted = xor i32 %spec.select80.i, %a
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %tobool42.not.i.unshifted)
  %tobool42.not.i = icmp sgt i32 %tobool42.not.i.unshifted, -1
  %or.cond.i = or i1 %tobool37.not.i, %tobool42.not.i
  br i1 %or.cond.i, label %if.end48.i, label %lor.lhs.false.i.if.then43.i_crit_edge

lor.lhs.false.i.if.then43.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43.i

if.then43.i:                                      ; preds = %lor.lhs.false.i.if.then43.i_crit_edge, %if.end21.i.if.then43.i_crit_edge
  %exception.i = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %7 = ptrtoint ptr %exception.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %exception.i, align 1
  %9 = or i8 %8, 1
  store i8 %9, ptr %exception.i, align 1
  %cond.i = select i1 %tobool32.not.i, i32 2147483647, i32 -2147483648
  br label %roundAndPackInt32.exit

if.end48.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv22.i)
  %tobool49.not.i = icmp eq i8 %conv22.i, 0
  br i1 %tobool49.not.i, label %if.end48.i.roundAndPackInt32.exit_crit_edge, label %if.then50.i

if.end48.i.roundAndPackInt32.exit_crit_edge:      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %roundAndPackInt32.exit

if.then50.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %exception51.i = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %10 = ptrtoint ptr %exception51.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %exception51.i, align 1
  %12 = or i8 %11, 16
  store i8 %12, ptr %exception51.i, align 1
  br label %roundAndPackInt32.exit

roundAndPackInt32.exit:                           ; preds = %if.then50.i, %if.end48.i.roundAndPackInt32.exit_crit_edge, %if.then43.i
  %retval.0.i = phi i32 [ %cond.i, %if.then43.i ], [ %spec.select80.i, %if.then50.i ], [ %spec.select80.i, %if.end48.i.roundAndPackInt32.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @float32_to_int32_round_to_zero(i32 noundef %a) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %a, 8388607
  %shr.i = lshr i32 %a, 23
  %and.i42 = and i32 %shr.i, 255
  %sub = add nuw nsw i32 %shr.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 157, i32 %and.i42)
  %cmp = icmp ugt i32 %and.i42, 157
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -822083584, i32 %a)
  %cmp3 = icmp eq i32 %a, -822083584
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  tail call void @float_raise(i8 noundef signext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %a)
  %tobool.not = icmp sgt i32 %a, -1
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i42)
  %cmp5 = icmp ne i32 %and.i42, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not = icmp eq i32 %and.i, 0
  %or.cond = or i1 %tobool6.not, %cmp5
  %spec.select = select i1 %or.cond, i32 -2147483648, i32 2147483647
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %and.i42)
  %cmp9 = icmp ult i32 %and.i42, 127
  br i1 %cmp9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.else
  %or = or i32 %and.i42, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool11.not = icmp eq i32 %or, 0
  br i1 %tobool11.not, label %if.then10.cleanup_crit_edge, label %if.then12

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 16) #8
  br label %cleanup

if.end15:                                         ; preds = %if.else
  %or16 = shl nuw nsw i32 %and.i, 8
  %shl = or i32 %or16, -2147483648
  %sub17 = sub nuw nsw i32 158, %and.i42
  %shr = lshr i32 %shl, %sub17
  %and = and i32 %sub, 31
  %shl18 = shl i32 %shl, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl18)
  %tobool19.not = icmp eq i32 %shl18, 0
  br i1 %tobool19.not, label %if.end15.if.end21_crit_edge, label %if.then20

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 16) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end15.if.end21_crit_edge
  %sub23 = sub nsw i32 0, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %a)
  %tobool22.not44 = icmp slt i32 %a, 0
  %cond = select i1 %tobool22.not44, i32 %sub23, i32 %shr
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then12, %if.then10.cleanup_crit_edge, %lor.lhs.false, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end21 ], [ -2147483648, %if.then.cleanup_crit_edge ], [ 2147483647, %if.end.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %if.then10.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @float_raise(i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @float32_to_float64(i32 noundef %a) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %a, 8388607
  %shr.i = lshr i32 %a, 23
  %and.i23 = and i32 %shr.i, 255
  %shr.i24 = lshr i32 %a, 31
  %trunc = trunc i32 %shr.i to i8
  %0 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %trunc, label %entry.if.end13_crit_edge [
    i8 -1, label %if.then
    i8 0, label %if.then8
  ]

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %1 = and i32 %a, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %1)
  %cmp.i.i = icmp ne i32 %1, 2139095040
  %and1.i.i = and i32 %a, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.i = icmp eq i32 %and1.i.i, 0
  %tobool.not.i = or i1 %cmp.i.i, %tobool.i.i
  br i1 %tobool.not.i, label %if.then3.float32ToCommonNaN.exit_crit_edge, label %if.then.i

if.then3.float32ToCommonNaN.exit_crit_edge:       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %float32ToCommonNaN.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8, !noalias !19
  br label %float32ToCommonNaN.exit

float32ToCommonNaN.exit:                          ; preds = %if.then.i, %if.then3.float32ToCommonNaN.exit_crit_edge
  %conv1.i = zext i32 %a to i64
  %agg.tmp.sroa.0.0.insert.ext = zext i32 %shr.i24 to i64
  %agg.tmp.sroa.0.0.insert.shift = shl nuw i64 %agg.tmp.sroa.0.0.insert.ext, 63
  %2 = shl nuw nsw i64 %conv1.i, 29
  %or.i = or i64 %agg.tmp.sroa.0.0.insert.shift, %2
  %or1.i = or i64 %or.i, 9221120237041090560
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i29 = zext i32 %shr.i24 to i64
  %shl.i30 = shl nuw i64 %conv.i29, 63
  %add3.i = or i64 %shl.i30, 9218868437227405312
  br label %cleanup

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp9 = icmp eq i32 %and.i, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i31 = zext i32 %shr.i24 to i64
  %shl.i32 = shl nuw i64 %conv.i31, 63
  br label %cleanup

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %and.i)
  %cmp.i.i33 = icmp ult i32 %and.i, 65536
  %shl.i.i = shl i32 %a, 16
  %spec.select.i.i = select i1 %cmp.i.i33, i32 %shl.i.i, i32 %and.i
  %spec.select21.i.i = select i1 %cmp.i.i33, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i)
  %cmp2.i.i = icmp ult i32 %spec.select.i.i, 16777216
  %3 = or i8 %spec.select21.i.i, 8
  %shl8.i.i = shl i32 %spec.select.i.i, 8
  %a.addr.1.i.i = select i1 %cmp2.i.i, i32 %shl8.i.i, i32 %spec.select.i.i
  %shiftCount.1.i.i = select i1 %cmp2.i.i, i8 %3, i8 %spec.select21.i.i
  %shr.i.i = lshr i32 %a.addr.1.i.i, 24
  %arrayidx.i.i = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %add12.i.i = add nsw i8 %shiftCount.1.i.i, -8
  %sub.i = add i8 %add12.i.i, %5
  %conv2.i = sext i8 %sub.i to i32
  %shl.i34 = shl i32 %and.i, %conv2.i
  %dec = sub nsw i32 0, %conv2.i
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %entry.if.end13_crit_edge
  %aSig.0 = phi i32 [ %and.i, %entry.if.end13_crit_edge ], [ %shl.i34, %if.end12 ]
  %aExp.0 = phi i32 [ %and.i23, %entry.if.end13_crit_edge ], [ %dec, %if.end12 ]
  %add = add nsw i32 %aExp.0, 896
  %conv = zext i32 %aSig.0 to i64
  %shl = shl nuw nsw i64 %conv, 29
  %conv.i35 = zext i32 %shr.i24 to i64
  %shl.i36 = shl nuw i64 %conv.i35, 63
  %conv14.i = zext i32 %add to i64
  %shl2.i = shl nuw nsw i64 %conv14.i, 52
  %add.i = or i64 %shl, %shl.i36
  %add3.i37 = add nuw i64 %add.i, %shl2.i
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then10, %if.end, %float32ToCommonNaN.exit
  %retval.0 = phi i64 [ %or1.i, %float32ToCommonNaN.exit ], [ %add3.i, %if.end ], [ %shl.i32, %if.then10 ], [ %add3.i37, %if.end13 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @float32_to_floatx80(ptr noalias nocapture writeonly sret(%struct.floatx80) align 4 %agg.result, i32 noundef %a) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %a, 8388607
  %shr.i = lshr i32 %a, 23
  %and.i19 = and i32 %shr.i, 255
  %shr.i20 = lshr i32 %a, 31
  %trunc = trunc i32 %shr.i to i8
  %0 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %trunc, label %entry.if.end10_crit_edge [
    i8 -1, label %if.then
    i8 0, label %if.then6
  ]

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %1 = and i32 %a, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %1)
  %cmp.i.i = icmp ne i32 %1, 2139095040
  %and1.i.i = and i32 %a, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.i = icmp eq i32 %and1.i.i, 0
  %tobool.not.i = or i1 %cmp.i.i, %tobool.i.i
  br i1 %tobool.not.i, label %if.then3.float32ToCommonNaN.exit_crit_edge, label %if.then.i

if.then3.float32ToCommonNaN.exit_crit_edge:       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %float32ToCommonNaN.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8, !noalias !22
  br label %float32ToCommonNaN.exit

float32ToCommonNaN.exit:                          ; preds = %if.then.i, %if.then3.float32ToCommonNaN.exit_crit_edge
  %conv1.i = zext i32 %a to i64
  %2 = shl nuw nsw i32 %shr.i20, 15
  %3 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %4 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %5 = shl i64 %conv1.i, 40
  %or.i = or i64 %5, -4611686018427387904
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %or.i, ptr %4, align 4, !alias.scope !25
  %7 = trunc i32 %2 to i16
  %tr.sh.diff.i = or i16 %7, 32767
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %tr.sh.diff.i, ptr %3, align 2, !alias.scope !25
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %9 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %10 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 -9223372036854775808, ptr %10, align 4, !alias.scope !28
  %shl.i25 = shl nuw nsw i32 %shr.i20, 15
  %12 = trunc i32 %shl.i25 to i16
  %conv2.i = or i16 %12, 32767
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv2.i, ptr %9, align 2, !alias.scope !28
  br label %cleanup

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp7 = icmp eq i32 %and.i, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %14 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %15 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %15, align 4, !alias.scope !31
  %shl.i27 = shl nuw nsw i32 %shr.i20, 15
  %conv2.i28 = trunc i32 %shl.i27 to i16
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv2.i28, ptr %14, align 2, !alias.scope !31
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %and.i)
  %cmp.i.i29 = icmp ult i32 %and.i, 65536
  %shl.i.i = shl i32 %a, 16
  %spec.select.i.i = select i1 %cmp.i.i29, i32 %shl.i.i, i32 %and.i
  %spec.select21.i.i = select i1 %cmp.i.i29, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i)
  %cmp2.i.i = icmp ult i32 %spec.select.i.i, 16777216
  %18 = or i8 %spec.select21.i.i, 8
  %shl8.i.i = shl i32 %spec.select.i.i, 8
  %a.addr.1.i.i = select i1 %cmp2.i.i, i32 %shl8.i.i, i32 %spec.select.i.i
  %shiftCount.1.i.i = select i1 %cmp2.i.i, i8 %18, i8 %spec.select21.i.i
  %shr.i.i = lshr i32 %a.addr.1.i.i, 24
  %arrayidx.i.i = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i, align 1
  %add12.i.i = add nsw i8 %shiftCount.1.i.i, -8
  %sub.i = add i8 %add12.i.i, %20
  %conv2.i30 = sext i8 %sub.i to i32
  %shl.i31 = shl i32 %and.i, %conv2.i30
  %sub4.i = sub nsw i32 1, %conv2.i30
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %entry.if.end10_crit_edge
  %aSig.0 = phi i32 [ %and.i, %entry.if.end10_crit_edge ], [ %shl.i31, %if.end9 ]
  %aExp.0 = phi i32 [ %and.i19, %entry.if.end10_crit_edge ], [ %sub4.i, %if.end9 ]
  %or = or i32 %aSig.0, 8388608
  %conv = zext i32 %or to i64
  %shl = shl i64 %conv, 40
  %21 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %22 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %shl, ptr %22, align 4, !alias.scope !34
  %shl.i33 = shl nuw nsw i32 %shr.i20, 15
  %add = or i32 %shl.i33, 16256
  %add.i34 = add nsw i32 %add, %aExp.0
  %conv2.i35 = trunc i32 %add.i34 to i16
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv2.i35, ptr %21, align 2, !alias.scope !34
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.end, %float32ToCommonNaN.exit
  %25 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %agg.result, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @float32_round_to_int(ptr nocapture noundef %roundData, i32 noundef %a) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i32 %a, 23
  %and.i = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 149, i32 %and.i)
  %cmp = icmp ugt i32 %and.i, 149
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i)
  %cmp1 = icmp ne i32 %and.i, 255
  %and.i106 = and i32 %a, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106)
  %tobool.not = icmp eq i32 %and.i106, 0
  %or.cond = or i1 %tobool.not, %cmp1
  br i1 %or.cond, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.then
  %0 = and i32 %a, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %0)
  %cmp.i25.i = icmp eq i32 %0, 2139095040
  %and1.i.i = and i32 %a, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.i = icmp ne i32 %and1.i.i, 0
  %1 = and i1 %cmp.i25.i, %tobool.i.i
  br i1 %1, label %if.then.i, label %if.then3.propagateFloat32NaN.exit_crit_edge

if.then3.propagateFloat32NaN.exit_crit_edge:      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat32NaN.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat32NaN.exit

propagateFloat32NaN.exit:                         ; preds = %if.then.i, %if.then3.propagateFloat32NaN.exit_crit_edge
  %retval.0.i = or i32 %a, 4194304
  br label %cleanup

if.end5:                                          ; preds = %entry
  %2 = ptrtoint ptr %roundData to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %roundData, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %and.i)
  %cmp6 = icmp ult i32 %and.i, 127
  br i1 %cmp6, label %if.then7, label %if.end30

if.then7:                                         ; preds = %if.end5
  %shl.mask = and i32 %a, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.mask)
  %cmp8 = icmp eq i32 %shl.mask, 0
  br i1 %cmp8, label %if.then7.cleanup_crit_edge, label %if.end10

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.then7
  %exception = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %4 = ptrtoint ptr %exception to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %exception, align 1
  %6 = or i8 %5, 16
  store i8 %6, ptr %exception, align 1
  %shr.i107 = and i32 %a, -2147483648
  %conv13 = sext i8 %3 to i32
  %7 = zext i32 %conv13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %conv13, label %if.end10.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb22
    i32 3, label %sw.bb25
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %and.i)
  %cmp14 = icmp ne i32 %and.i, 126
  %and.i108 = and i32 %a, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i108)
  %tobool18.not = icmp eq i32 %and.i108, 0
  %or.cond114 = or i1 %tobool18.not, %cmp14
  %add.i = or i32 %shr.i107, 1065353216
  %spec.select115 = select i1 %or.cond114, i32 %shr.i107, i32 %add.i
  br label %cleanup

sw.bb22:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %a)
  %tobool24.not.inv = icmp slt i32 %a, 0
  %cond = select i1 %tobool24.not.inv, i32 -1082130432, i32 0
  br label %cleanup

sw.bb25:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %a)
  %tobool27.not = icmp sgt i32 %a, -1
  %cond28 = select i1 %tobool27.not, i32 1065353216, i32 -2147483648
  br label %cleanup

if.end30:                                         ; preds = %if.end5
  %sub = sub nuw nsw i32 150, %and.i
  %shl31 = shl nuw nsw i32 1, %sub
  %sub32 = add nsw i32 %shl31, -1
  %8 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %3, label %if.then45 [
    i8 0, label %if.then36
    i8 1, label %if.end30.if.end56_crit_edge
  ]

if.end30.if.end56_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then36:                                        ; preds = %if.end30
  %shr = lshr i32 %shl31, 1
  %add = add i32 %shr, %a
  %and = and i32 %add, %sub32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp37 = icmp eq i32 %and, 0
  br i1 %cmp37, label %if.then39, label %if.then36.if.end56_crit_edge

if.then36.if.end56_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then39:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %shl31, -1
  %and40 = and i32 %add, %neg
  br label %if.end56

if.then45:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i112 = lshr i32 %a, 31
  %conv.i113 = trunc i32 %shr.i112 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp49 = icmp eq i8 %3, 3
  %9 = zext i1 %cmp49 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i113, i8 %9)
  %tobool51.not = icmp eq i8 %conv.i113, %9
  %add53 = select i1 %tobool51.not, i32 0, i32 %sub32
  %spec.select = add i32 %add53, %a
  br label %if.end56

if.end56:                                         ; preds = %if.then45, %if.then39, %if.then36.if.end56_crit_edge, %if.end30.if.end56_crit_edge
  %z.0 = phi i32 [ %and40, %if.then39 ], [ %add, %if.then36.if.end56_crit_edge ], [ %a, %if.end30.if.end56_crit_edge ], [ %spec.select, %if.then45 ]
  %neg57 = sub nsw i32 0, %shl31
  %and58 = and i32 %z.0, %neg57
  call void @__sanitizer_cov_trace_cmp4(i32 %and58, i32 %a)
  %cmp59.not = icmp eq i32 %and58, %a
  br i1 %cmp59.not, label %if.end56.cleanup_crit_edge, label %if.then61

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %exception62 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %10 = ptrtoint ptr %exception62 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %exception62, align 1
  %12 = or i8 %11, 16
  store i8 %12, ptr %exception62, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %if.end56.cleanup_crit_edge, %sw.bb25, %sw.bb22, %sw.bb, %if.end10.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %propagateFloat32NaN.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %propagateFloat32NaN.exit ], [ %cond28, %sw.bb25 ], [ %cond, %sw.bb22 ], [ %a, %if.then.cleanup_crit_edge ], [ %a, %if.then7.cleanup_crit_edge ], [ %and58, %if.then61 ], [ %a, %if.end56.cleanup_crit_edge ], [ %shr.i107, %if.end10.cleanup_crit_edge ], [ %spec.select115, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @float32_add(ptr nocapture noundef %roundData, i32 noundef %a, i32 noundef %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i32 %a, 31
  %conv.i = trunc i32 %shr.i to i8
  %shr.i14 = lshr i32 %b, 31
  %conv.i15 = trunc i32 %shr.i14 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i, i8 %conv.i15)
  %cmp = icmp eq i8 %conv.i, %conv.i15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call fastcc i32 @addFloat32Sigs(ptr noundef %roundData, i32 noundef %a, i32 noundef %b, i8 noundef zeroext %conv.i)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call fastcc i32 @subFloat32Sigs(ptr noundef %roundData, i32 noundef %a, i32 noundef %b, i8 noundef zeroext %conv.i)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %call5, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @addFloat32Sigs(ptr nocapture noundef %roundData, i32 noundef %a, i32 noundef %b, i8 noundef zeroext %zSign) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i32 %a, 23
  %and.i93 = and i32 %shr.i, 255
  %shr.i95 = lshr i32 %b, 23
  %and.i96 = and i32 %shr.i95, 255
  %sub = sub nsw i32 %and.i93, %and.i96
  %and.i = shl i32 %a, 6
  %shl = and i32 %and.i, 536870848
  %and.i94 = shl i32 %b, 6
  %shl4 = and i32 %and.i94, 536870848
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.else13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i93)
  %cmp5 = icmp eq i32 %and.i93, 255
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %tobool.not = icmp eq i32 %shl, 0
  br i1 %tobool.not, label %if.then6.cleanup_crit_edge, label %if.then7

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.then6
  %0 = and i32 %a, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %0)
  %cmp.i25.i = icmp eq i32 %0, 2139095040
  %and1.i.i = and i32 %a, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.i = icmp ne i32 %and1.i.i, 0
  %1 = and i1 %cmp.i25.i, %tobool.i.i
  %2 = and i32 %b, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %2)
  %cmp.i29.i = icmp eq i32 %2, 2139095040
  %and1.i30.i = and i32 %b, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i30.i)
  %tobool.i31.i = icmp ne i32 %and1.i30.i, 0
  %3 = and i1 %cmp.i29.i, %tobool.i31.i
  %or62333.i = or i1 %1, %3
  br i1 %or62333.i, label %if.then.i, label %if.then7.propagateFloat32NaN.exit_crit_edge

if.then7.propagateFloat32NaN.exit_crit_edge:      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat32NaN.exit

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat32NaN.exit

propagateFloat32NaN.exit:                         ; preds = %if.then.i, %if.then7.propagateFloat32NaN.exit_crit_edge
  %shl.i26.i = shl i32 %b, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %shl.i26.i)
  %cmp.i27.i = icmp ugt i32 %shl.i26.i, -16777216
  %shl.i.i = shl i32 %a, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777215, i32 %shl.i.i)
  %cmp.i.i = icmp ult i32 %shl.i.i, -16777215
  %and2434.i = and i1 %1, %cmp.i27.i
  %4 = or i1 %cmp.i.i, %and2434.i
  %retval.0.v.i = select i1 %4, i32 %b, i32 %a
  %retval.0.i = or i32 %retval.0.v.i, 4194304
  br label %cleanup

if.end9:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i96)
  %cmp10 = icmp eq i32 %and.i96, 0
  br i1 %cmp10, label %if.end12, label %if.end12.thread

if.end12.thread:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %shl4, 536870912
  br label %if.else.i

if.end12:                                         ; preds = %if.end9
  %dec = add nsw i32 %sub, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.i = icmp eq i32 %dec, 0
  br i1 %cmp.i, label %if.end12.if.end46_crit_edge, label %if.end12.if.else.i_crit_edge

if.end12.if.else.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.end12.if.end46_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.else.i:                                        ; preds = %if.end12.if.else.i_crit_edge, %if.end12.thread
  %expDiff.0163 = phi i32 [ %sub, %if.end12.thread ], [ %dec, %if.end12.if.else.i_crit_edge ]
  %bSig.0162 = phi i32 [ %or, %if.end12.thread ], [ %shl4, %if.end12.if.else.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %expDiff.0163)
  %cmp1.i = icmp ult i32 %expDiff.0163, 32
  br i1 %cmp1.i, label %if.then2.i, label %if.else4.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i97 = lshr i32 %bSig.0162, %expDiff.0163
  %sub.i = sub nsw i32 0, %expDiff.0163
  %and.i98 = and i32 %sub.i, 31
  %shl.i = shl i32 %bSig.0162, %and.i98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %cmp3.i = icmp ne i32 %shl.i, 0
  %conv.i = zext i1 %cmp3.i to i32
  %or.i = or i32 %shr.i97, %conv.i
  br label %if.end46

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bSig.0162)
  %cmp5.i = icmp ne i32 %bSig.0162, 0
  %conv6.i = zext i1 %cmp5.i to i32
  br label %if.end46

if.else13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp14 = icmp slt i32 %sub, 0
  br i1 %cmp14, label %if.then15, label %if.else30

if.then15:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i96)
  %cmp16 = icmp eq i32 %and.i96, 255
  br i1 %cmp16, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl4)
  %tobool18.not = icmp eq i32 %shl4, 0
  br i1 %tobool18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.then17
  %5 = and i32 %a, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %5)
  %cmp.i25.i99 = icmp eq i32 %5, 2139095040
  %and1.i.i100 = and i32 %a, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i100)
  %tobool.i.i101 = icmp ne i32 %and1.i.i100, 0
  %6 = and i1 %cmp.i25.i99, %tobool.i.i101
  %7 = and i32 %b, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %7)
  %cmp.i29.i102 = icmp eq i32 %7, 2139095040
  %and1.i30.i103 = and i32 %b, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i30.i103)
  %tobool.i31.i104 = icmp ne i32 %and1.i30.i103, 0
  %8 = and i1 %cmp.i29.i102, %tobool.i31.i104
  %or62333.i105 = or i1 %6, %8
  br i1 %or62333.i105, label %if.then.i106, label %if.then19.propagateFloat32NaN.exit114_crit_edge

if.then19.propagateFloat32NaN.exit114_crit_edge:  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat32NaN.exit114

if.then.i106:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat32NaN.exit114

propagateFloat32NaN.exit114:                      ; preds = %if.then.i106, %if.then19.propagateFloat32NaN.exit114_crit_edge
  %shl.i26.i107 = shl i32 %b, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %shl.i26.i107)
  %cmp.i27.i108 = icmp ugt i32 %shl.i26.i107, -16777216
  %shl.i.i109 = shl i32 %a, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777215, i32 %shl.i.i109)
  %cmp.i.i110 = icmp ult i32 %shl.i.i109, -16777215
  %and2434.i111 = and i1 %6, %cmp.i27.i108
  %9 = or i1 %cmp.i.i110, %and2434.i111
  %retval.0.v.i112 = select i1 %9, i32 %b, i32 %a
  %retval.0.i113 = or i32 %retval.0.v.i112, 4194304
  br label %cleanup

if.end21:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i115 = zext i8 %zSign to i32
  %shl.i116 = shl i32 %conv.i115, 31
  %add.i = or i32 %shl.i116, 2139095040
  br label %cleanup

if.end23:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93)
  %cmp24 = icmp eq i32 %and.i93, 0
  %or27 = or i32 %shl, 536870912
  %aSig.0 = select i1 %cmp24, i32 %shl, i32 %or27
  %inc = zext i1 %cmp24 to i32
  %expDiff.1 = add nsw i32 %sub, %inc
  %sub29 = sub nsw i32 0, %expDiff.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %expDiff.1)
  %cmp.i117 = icmp eq i32 %expDiff.1, 0
  br i1 %cmp.i117, label %if.end23.if.end46_crit_edge, label %if.else.i119

if.end23.if.end46_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.else.i119:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub29)
  %cmp1.i118 = icmp ult i32 %sub29, 32
  br i1 %cmp1.i118, label %if.then2.i126, label %if.else4.i129

if.then2.i126:                                    ; preds = %if.else.i119
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i120 = lshr i32 %aSig.0, %sub29
  %and.i121 = and i32 %expDiff.1, 31
  %shl.i122 = shl i32 %aSig.0, %and.i121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i122)
  %cmp3.i123 = icmp ne i32 %shl.i122, 0
  %conv.i124 = zext i1 %cmp3.i123 to i32
  %or.i125 = or i32 %shr.i120, %conv.i124
  br label %if.end46

if.else4.i129:                                    ; preds = %if.else.i119
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %aSig.0)
  %cmp5.i127 = icmp ne i32 %aSig.0, 0
  %conv6.i128 = zext i1 %cmp5.i127 to i32
  br label %if.end46

if.else30:                                        ; preds = %if.else13
  %trunc = trunc i32 %shr.i to i8
  %10 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %trunc, label %if.end42 [
    i8 -1, label %if.then32
    i8 0, label %if.then40
  ]

if.then32:                                        ; preds = %if.else30
  %or33 = or i32 %shl4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or33)
  %tobool34.not = icmp eq i32 %or33, 0
  br i1 %tobool34.not, label %if.then32.cleanup_crit_edge, label %if.then35

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then35:                                        ; preds = %if.then32
  %11 = and i32 %a, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %11)
  %cmp.i25.i132 = icmp eq i32 %11, 2139095040
  %and1.i.i133 = and i32 %a, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i133)
  %tobool.i.i134 = icmp ne i32 %and1.i.i133, 0
  %12 = and i1 %cmp.i25.i132, %tobool.i.i134
  %13 = and i32 %b, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %13)
  %cmp.i29.i135 = icmp eq i32 %13, 2139095040
  %and1.i30.i136 = and i32 %b, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i30.i136)
  %tobool.i31.i137 = icmp ne i32 %and1.i30.i136, 0
  %14 = and i1 %cmp.i29.i135, %tobool.i31.i137
  %or62333.i138 = or i1 %12, %14
  br i1 %or62333.i138, label %if.then.i139, label %if.then35.propagateFloat32NaN.exit147_crit_edge

if.then35.propagateFloat32NaN.exit147_crit_edge:  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat32NaN.exit147

if.then.i139:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat32NaN.exit147

propagateFloat32NaN.exit147:                      ; preds = %if.then.i139, %if.then35.propagateFloat32NaN.exit147_crit_edge
  %shl.i26.i140 = shl i32 %b, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %shl.i26.i140)
  %cmp.i27.i141 = icmp ugt i32 %shl.i26.i140, -16777216
  %shl.i.i142 = shl i32 %a, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777215, i32 %shl.i.i142)
  %cmp.i.i143 = icmp ult i32 %shl.i.i142, -16777215
  %and2434.i144 = and i1 %12, %cmp.i27.i141
  %15 = or i1 %cmp.i.i143, %and2434.i144
  %retval.0.v.i145 = select i1 %15, i32 %b, i32 %a
  %retval.0.i146 = or i32 %retval.0.v.i145, 4194304
  br label %cleanup

if.then40:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i32 %shl4, %shl
  %shr = lshr exact i32 %add, 6
  %conv.i148 = zext i8 %zSign to i32
  %shl.i149 = shl i32 %conv.i148, 31
  %add2.i = or i32 %shr, %shl.i149
  br label %cleanup

if.end42:                                         ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #10
  %add43 = or i32 %shl, 1073741824
  %add44 = add nuw nsw i32 %add43, %shl4
  br label %roundAndPack

if.end46:                                         ; preds = %if.else4.i129, %if.then2.i126, %if.end23.if.end46_crit_edge, %if.else4.i, %if.then2.i, %if.end12.if.end46_crit_edge
  %aSig.1 = phi i32 [ %shl, %if.end12.if.end46_crit_edge ], [ %shl, %if.then2.i ], [ %shl, %if.else4.i ], [ %or.i125, %if.then2.i126 ], [ %conv6.i128, %if.else4.i129 ], [ %aSig.0, %if.end23.if.end46_crit_edge ]
  %bSig.1 = phi i32 [ %shl4, %if.end12.if.end46_crit_edge ], [ %or.i, %if.then2.i ], [ %conv6.i, %if.else4.i ], [ %shl4, %if.then2.i126 ], [ %shl4, %if.else4.i129 ], [ %shl4, %if.end23.if.end46_crit_edge ]
  %zExp.0 = phi i32 [ %and.i93, %if.end12.if.end46_crit_edge ], [ %and.i93, %if.then2.i ], [ %and.i93, %if.else4.i ], [ %and.i96, %if.then2.i126 ], [ %and.i96, %if.else4.i129 ], [ %and.i96, %if.end23.if.end46_crit_edge ]
  %or47 = or i32 %aSig.1, 536870912
  %add48 = add i32 %or47, %bSig.1
  %shl49 = shl i32 %add48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl49)
  %cmp51 = icmp slt i32 %shl49, 0
  %not.cmp51 = xor i1 %cmp51, true
  %dec50 = sext i1 %not.cmp51 to i32
  %spec.select = add nsw i32 %zExp.0, %dec50
  %spec.select92 = select i1 %cmp51, i32 %add48, i32 %shl49
  br label %roundAndPack

roundAndPack:                                     ; preds = %if.end46, %if.end42
  %zExp.1 = phi i32 [ %and.i93, %if.end42 ], [ %spec.select, %if.end46 ]
  %zSig.0 = phi i32 [ %add44, %if.end42 ], [ %spec.select92, %if.end46 ]
  %call56 = tail call fastcc i32 @roundAndPackFloat32(ptr noundef %roundData, i8 noundef zeroext %zSign, i32 noundef %zExp.1, i32 noundef %zSig.0)
  br label %cleanup

cleanup:                                          ; preds = %roundAndPack, %if.then40, %propagateFloat32NaN.exit147, %if.then32.cleanup_crit_edge, %if.end21, %propagateFloat32NaN.exit114, %propagateFloat32NaN.exit, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %propagateFloat32NaN.exit ], [ %call56, %roundAndPack ], [ %retval.0.i113, %propagateFloat32NaN.exit114 ], [ %add.i, %if.end21 ], [ %retval.0.i146, %propagateFloat32NaN.exit147 ], [ %add2.i, %if.then40 ], [ %a, %if.then6.cleanup_crit_edge ], [ %a, %if.then32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @subFloat32Sigs(ptr nocapture noundef %roundData, i32 noundef %a, i32 noundef %b, i8 noundef zeroext %zSign) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i32 %a, 23
  %and.i107 = and i32 %shr.i, 255
  %shr.i109 = lshr i32 %b, 23
  %and.i110 = and i32 %shr.i109, 255
  %sub = sub nsw i32 %and.i107, %and.i110
  %and.i = shl i32 %a, 7
  %shl = and i32 %and.i, 1073741696
  %and.i108 = shl i32 %b, 7
  %shl4 = and i32 %and.i108, 1073741696
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %aExpBigger, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp5 = icmp slt i32 %sub, 0
  br i1 %cmp5, label %bExpBigger, label %if.end7

if.end7:                                          ; preds = %if.end
  %trunc = trunc i32 %shr.i to i8
  %0 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %trunc, label %if.end7.if.end19_crit_edge [
    i8 -1, label %if.then9
    i8 0, label %if.then18
  ]

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then9:                                         ; preds = %if.end7
  %or = or i32 %shl4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.then9
  %1 = and i32 %a, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %1)
  %cmp.i25.i = icmp eq i32 %1, 2139095040
  %and1.i.i = and i32 %a, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.i = icmp ne i32 %and1.i.i, 0
  %2 = and i1 %cmp.i25.i, %tobool.i.i
  %3 = and i32 %b, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %3)
  %cmp.i29.i = icmp eq i32 %3, 2139095040
  %and1.i30.i = and i32 %b, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i30.i)
  %tobool.i31.i = icmp ne i32 %and1.i30.i, 0
  %4 = and i1 %cmp.i29.i, %tobool.i31.i
  %or62333.i = or i1 %2, %4
  br i1 %or62333.i, label %if.then.i, label %if.then10.propagateFloat32NaN.exit_crit_edge

if.then10.propagateFloat32NaN.exit_crit_edge:     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat32NaN.exit

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat32NaN.exit

propagateFloat32NaN.exit:                         ; preds = %if.then.i, %if.then10.propagateFloat32NaN.exit_crit_edge
  %shl.i26.i = shl i32 %b, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %shl.i26.i)
  %cmp.i27.i = icmp ugt i32 %shl.i26.i, -16777216
  %shl.i.i = shl i32 %a, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777215, i32 %shl.i.i)
  %cmp.i.i = icmp ult i32 %shl.i.i, -16777215
  %and2434.i = and i1 %2, %cmp.i27.i
  %5 = or i1 %cmp.i.i, %and2434.i
  %retval.0.v.i = select i1 %5, i32 %b, i32 %a
  %retval.0.i = or i32 %retval.0.v.i, 4194304
  br label %cleanup

if.end12:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %exception = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %6 = ptrtoint ptr %exception to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %exception, align 1
  %8 = or i8 %7, 1
  store i8 %8, ptr %exception, align 1
  br label %cleanup

if.then18:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end7.if.end19_crit_edge
  %aExp.0 = phi i32 [ 1, %if.then18 ], [ %and.i107, %if.end7.if.end19_crit_edge ]
  %bExp.0 = phi i32 [ 1, %if.then18 ], [ %and.i110, %if.end7.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shl4, i32 %shl)
  %cmp20 = icmp ult i32 %shl4, %shl
  br i1 %cmp20, label %if.end19.aBigger_crit_edge, label %if.end23

if.end19.aBigger_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %aBigger

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %shl4)
  %cmp24 = icmp ult i32 %shl, %shl4
  br i1 %cmp24, label %if.end23.bBigger_crit_edge, label %if.end27

if.end23.bBigger_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %bBigger

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %roundData to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %roundData, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp29 = icmp eq i8 %10, 2
  %shl.i = select i1 %cmp29, i32 -2147483648, i32 0
  br label %cleanup

bExpBigger:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i110)
  %cmp33 = icmp eq i32 %and.i110, 255
  br i1 %cmp33, label %if.then35, label %if.end43

if.then35:                                        ; preds = %bExpBigger
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl4)
  %tobool36.not = icmp eq i32 %shl4, 0
  br i1 %tobool36.not, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.then35
  %11 = and i32 %a, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %11)
  %cmp.i25.i111 = icmp eq i32 %11, 2139095040
  %and1.i.i112 = and i32 %a, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i112)
  %tobool.i.i113 = icmp ne i32 %and1.i.i112, 0
  %12 = and i1 %cmp.i25.i111, %tobool.i.i113
  %13 = and i32 %b, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %13)
  %cmp.i29.i114 = icmp eq i32 %13, 2139095040
  %and1.i30.i115 = and i32 %b, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i30.i115)
  %tobool.i31.i116 = icmp ne i32 %and1.i30.i115, 0
  %14 = and i1 %cmp.i29.i114, %tobool.i31.i116
  %or62333.i117 = or i1 %12, %14
  br i1 %or62333.i117, label %if.then.i118, label %if.then37.propagateFloat32NaN.exit126_crit_edge

if.then37.propagateFloat32NaN.exit126_crit_edge:  ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat32NaN.exit126

if.then.i118:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat32NaN.exit126

propagateFloat32NaN.exit126:                      ; preds = %if.then.i118, %if.then37.propagateFloat32NaN.exit126_crit_edge
  %shl.i26.i119 = shl i32 %b, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %shl.i26.i119)
  %cmp.i27.i120 = icmp ugt i32 %shl.i26.i119, -16777216
  %shl.i.i121 = shl i32 %a, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777215, i32 %shl.i.i121)
  %cmp.i.i122 = icmp ult i32 %shl.i.i121, -16777215
  %and2434.i123 = and i1 %12, %cmp.i27.i120
  %15 = or i1 %cmp.i.i122, %and2434.i123
  %retval.0.v.i124 = select i1 %15, i32 %b, i32 %a
  %retval.0.i125 = or i32 %retval.0.v.i124, 4194304
  br label %cleanup

if.end39:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %16 = xor i8 %zSign, -1
  %conv.i127 = zext i8 %16 to i32
  %shl.i128 = shl i32 %conv.i127, 31
  %add.i = or i32 %shl.i128, 2139095040
  br label %cleanup

if.end43:                                         ; preds = %bExpBigger
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i107)
  %cmp44 = icmp eq i32 %and.i107, 0
  %or47 = or i32 %shl, 1073741824
  %aSig.0 = select i1 %cmp44, i32 %shl, i32 %or47
  %inc = zext i1 %cmp44 to i32
  %expDiff.0 = add nsw i32 %sub, %inc
  %sub49 = sub nsw i32 0, %expDiff.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %expDiff.0)
  %cmp.i = icmp eq i32 %expDiff.0, 0
  br i1 %cmp.i, label %if.end43.shift32RightJamming.exit_crit_edge, label %if.else.i

if.end43.shift32RightJamming.exit_crit_edge:      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %shift32RightJamming.exit

if.else.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub49)
  %cmp1.i = icmp ult i32 %sub49, 32
  br i1 %cmp1.i, label %if.then2.i, label %if.else4.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i129 = lshr i32 %aSig.0, %sub49
  %and.i130 = and i32 %expDiff.0, 31
  %shl.i131 = shl i32 %aSig.0, %and.i130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i131)
  %cmp3.i = icmp ne i32 %shl.i131, 0
  %conv.i132 = zext i1 %cmp3.i to i32
  %or.i = or i32 %shr.i129, %conv.i132
  br label %shift32RightJamming.exit

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %aSig.0)
  %cmp5.i = icmp ne i32 %aSig.0, 0
  %conv6.i = zext i1 %cmp5.i to i32
  br label %shift32RightJamming.exit

shift32RightJamming.exit:                         ; preds = %if.else4.i, %if.then2.i, %if.end43.shift32RightJamming.exit_crit_edge
  %z.0.i = phi i32 [ %or.i, %if.then2.i ], [ %conv6.i, %if.else4.i ], [ %aSig.0, %if.end43.shift32RightJamming.exit_crit_edge ]
  %or50 = or i32 %shl4, 1073741824
  br label %bBigger

bBigger:                                          ; preds = %shift32RightJamming.exit, %if.end23.bBigger_crit_edge
  %aSig.1 = phi i32 [ %z.0.i, %shift32RightJamming.exit ], [ %shl, %if.end23.bBigger_crit_edge ]
  %bSig.0 = phi i32 [ %or50, %shift32RightJamming.exit ], [ %shl4, %if.end23.bBigger_crit_edge ]
  %bExp.1 = phi i32 [ %and.i110, %shift32RightJamming.exit ], [ %bExp.0, %if.end23.bBigger_crit_edge ]
  %sub51 = sub i32 %bSig.0, %aSig.1
  %17 = xor i8 %zSign, 1
  br label %normalizeRoundAndPack

aExpBigger:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i107)
  %cmp55 = icmp eq i32 %and.i107, 255
  br i1 %cmp55, label %if.then57, label %if.end62

if.then57:                                        ; preds = %aExpBigger
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %tobool58.not = icmp eq i32 %shl, 0
  br i1 %tobool58.not, label %if.then57.cleanup_crit_edge, label %if.then59

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then59:                                        ; preds = %if.then57
  %18 = and i32 %a, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %18)
  %cmp.i25.i133 = icmp eq i32 %18, 2139095040
  %and1.i.i134 = and i32 %a, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i134)
  %tobool.i.i135 = icmp ne i32 %and1.i.i134, 0
  %19 = and i1 %cmp.i25.i133, %tobool.i.i135
  %20 = and i32 %b, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %20)
  %cmp.i29.i136 = icmp eq i32 %20, 2139095040
  %and1.i30.i137 = and i32 %b, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i30.i137)
  %tobool.i31.i138 = icmp ne i32 %and1.i30.i137, 0
  %21 = and i1 %cmp.i29.i136, %tobool.i31.i138
  %or62333.i139 = or i1 %19, %21
  br i1 %or62333.i139, label %if.then.i140, label %if.then59.propagateFloat32NaN.exit148_crit_edge

if.then59.propagateFloat32NaN.exit148_crit_edge:  ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat32NaN.exit148

if.then.i140:                                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat32NaN.exit148

propagateFloat32NaN.exit148:                      ; preds = %if.then.i140, %if.then59.propagateFloat32NaN.exit148_crit_edge
  %shl.i26.i141 = shl i32 %b, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %shl.i26.i141)
  %cmp.i27.i142 = icmp ugt i32 %shl.i26.i141, -16777216
  %shl.i.i143 = shl i32 %a, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777215, i32 %shl.i.i143)
  %cmp.i.i144 = icmp ult i32 %shl.i.i143, -16777215
  %and2434.i145 = and i1 %19, %cmp.i27.i142
  %22 = or i1 %cmp.i.i144, %and2434.i145
  %retval.0.v.i146 = select i1 %22, i32 %b, i32 %a
  %retval.0.i147 = or i32 %retval.0.v.i146, 4194304
  br label %cleanup

if.end62:                                         ; preds = %aExpBigger
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i110)
  %cmp63 = icmp eq i32 %and.i110, 0
  br i1 %cmp63, label %if.end68, label %if.end68.thread

if.end68.thread:                                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %or67 = or i32 %shl4, 1073741824
  br label %if.else.i151

if.end68:                                         ; preds = %if.end62
  %dec = add nsw i32 %sub, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.i149 = icmp eq i32 %dec, 0
  br i1 %cmp.i149, label %if.end68.shift32RightJamming.exit163_crit_edge, label %if.end68.if.else.i151_crit_edge

if.end68.if.else.i151_crit_edge:                  ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i151

if.end68.shift32RightJamming.exit163_crit_edge:   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %shift32RightJamming.exit163

if.else.i151:                                     ; preds = %if.end68.if.else.i151_crit_edge, %if.end68.thread
  %expDiff.1185 = phi i32 [ %sub, %if.end68.thread ], [ %dec, %if.end68.if.else.i151_crit_edge ]
  %bSig.1184 = phi i32 [ %or67, %if.end68.thread ], [ %shl4, %if.end68.if.else.i151_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %expDiff.1185)
  %cmp1.i150 = icmp ult i32 %expDiff.1185, 32
  br i1 %cmp1.i150, label %if.then2.i158, label %if.else4.i161

if.then2.i158:                                    ; preds = %if.else.i151
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i152 = lshr i32 %bSig.1184, %expDiff.1185
  %sub.i = sub nsw i32 0, %expDiff.1185
  %and.i153 = and i32 %sub.i, 31
  %shl.i154 = shl i32 %bSig.1184, %and.i153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i154)
  %cmp3.i155 = icmp ne i32 %shl.i154, 0
  %conv.i156 = zext i1 %cmp3.i155 to i32
  %or.i157 = or i32 %shr.i152, %conv.i156
  br label %shift32RightJamming.exit163

if.else4.i161:                                    ; preds = %if.else.i151
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bSig.1184)
  %cmp5.i159 = icmp ne i32 %bSig.1184, 0
  %conv6.i160 = zext i1 %cmp5.i159 to i32
  br label %shift32RightJamming.exit163

shift32RightJamming.exit163:                      ; preds = %if.else4.i161, %if.then2.i158, %if.end68.shift32RightJamming.exit163_crit_edge
  %z.0.i162 = phi i32 [ %or.i157, %if.then2.i158 ], [ %conv6.i160, %if.else4.i161 ], [ %shl4, %if.end68.shift32RightJamming.exit163_crit_edge ]
  %or69 = or i32 %shl, 1073741824
  br label %aBigger

aBigger:                                          ; preds = %shift32RightJamming.exit163, %if.end19.aBigger_crit_edge
  %aSig.2 = phi i32 [ %or69, %shift32RightJamming.exit163 ], [ %shl, %if.end19.aBigger_crit_edge ]
  %bSig.2 = phi i32 [ %z.0.i162, %shift32RightJamming.exit163 ], [ %shl4, %if.end19.aBigger_crit_edge ]
  %aExp.1 = phi i32 [ %and.i107, %shift32RightJamming.exit163 ], [ %aExp.0, %if.end19.aBigger_crit_edge ]
  %sub70 = sub i32 %aSig.2, %bSig.2
  br label %normalizeRoundAndPack

normalizeRoundAndPack:                            ; preds = %aBigger, %bBigger
  %zSign.addr.0 = phi i8 [ %zSign, %aBigger ], [ %17, %bBigger ]
  %zExp.0 = phi i32 [ %aExp.1, %aBigger ], [ %bExp.1, %bBigger ]
  %zSig.0 = phi i32 [ %sub70, %aBigger ], [ %sub51, %bBigger ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %zSig.0)
  %cmp.i.i164 = icmp ult i32 %zSig.0, 65536
  %shl.i.i165 = shl i32 %zSig.0, 16
  %spec.select.i.i = select i1 %cmp.i.i164, i32 %shl.i.i165, i32 %zSig.0
  %spec.select21.i.i = select i1 %cmp.i.i164, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i)
  %cmp2.i.i = icmp ult i32 %spec.select.i.i, 16777216
  %23 = or i8 %spec.select21.i.i, 8
  %shl8.i.i = shl i32 %spec.select.i.i, 8
  %a.addr.1.i.i = select i1 %cmp2.i.i, i32 %shl8.i.i, i32 %spec.select.i.i
  %shiftCount.1.i.i = select i1 %cmp2.i.i, i8 %23, i8 %spec.select21.i.i
  %shr.i.i = lshr i32 %a.addr.1.i.i, 24
  %arrayidx.i.i = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.i, align 1
  %add12.i.i = add i8 %25, -1
  %sub.i166 = add i8 %add12.i.i, %shiftCount.1.i.i
  %conv2.i = sext i8 %sub.i166 to i32
  %26 = xor i32 %conv2.i, -1
  %sub3.i = add nsw i32 %zExp.0, %26
  %shl.i167 = shl i32 %zSig.0, %conv2.i
  %call5.i = tail call fastcc i32 @roundAndPackFloat32(ptr noundef %roundData, i8 noundef zeroext %zSign.addr.0, i32 noundef %sub3.i, i32 noundef %shl.i167) #8
  br label %cleanup

cleanup:                                          ; preds = %normalizeRoundAndPack, %propagateFloat32NaN.exit148, %if.then57.cleanup_crit_edge, %if.end39, %propagateFloat32NaN.exit126, %if.end27, %if.end12, %propagateFloat32NaN.exit
  %retval.0 = phi i32 [ %retval.0.i147, %propagateFloat32NaN.exit148 ], [ %call5.i, %normalizeRoundAndPack ], [ %retval.0.i125, %propagateFloat32NaN.exit126 ], [ %add.i, %if.end39 ], [ %retval.0.i, %propagateFloat32NaN.exit ], [ -1, %if.end12 ], [ %shl.i, %if.end27 ], [ %a, %if.then57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @float32_sub(ptr nocapture noundef %roundData, i32 noundef %a, i32 noundef %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i32 %a, 31
  %conv.i = trunc i32 %shr.i to i8
  %shr.i14 = lshr i32 %b, 31
  %conv.i15 = trunc i32 %shr.i14 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i, i8 %conv.i15)
  %cmp = icmp eq i8 %conv.i, %conv.i15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call fastcc i32 @subFloat32Sigs(ptr noundef %roundData, i32 noundef %a, i32 noundef %b, i8 noundef zeroext %conv.i)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call fastcc i32 @addFloat32Sigs(ptr noundef %roundData, i32 noundef %a, i32 noundef %b, i8 noundef zeroext %conv.i)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %call5, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @float32_mul(ptr nocapture noundef %roundData, i32 noundef %a, i32 noundef %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %a, 8388607
  %shr.i = lshr i32 %a, 23
  %and.i102 = and i32 %shr.i, 255
  %and.i104 = and i32 %b, 8388607
  %shr.i105 = lshr i32 %b, 23
  %and.i106 = and i32 %shr.i105, 255
  %shr.i103166 = xor i32 %b, %a
  %xor100165 = lshr i32 %shr.i103166, 31
  %xor100 = trunc i32 %xor100165 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i102)
  %cmp = icmp eq i32 %and.i102, 255
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then.if.then12_crit_edge

if.then.if.then12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i106)
  %cmp9 = icmp ne i32 %and.i106, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104)
  %tobool11.not = icmp eq i32 %and.i104, 0
  %or.cond = or i1 %tobool11.not, %cmp9
  br i1 %or.cond, label %if.end, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.then.if.then12_crit_edge
  %0 = and i32 %a, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %0)
  %cmp.i25.i = icmp eq i32 %0, 2139095040
  %and1.i.i = and i32 %a, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.i = icmp ne i32 %and1.i.i, 0
  %1 = and i1 %cmp.i25.i, %tobool.i.i
  %2 = and i32 %b, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %2)
  %cmp.i29.i = icmp eq i32 %2, 2139095040
  %and1.i30.i = and i32 %b, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i30.i)
  %tobool.i31.i = icmp ne i32 %and1.i30.i, 0
  %3 = and i1 %cmp.i29.i, %tobool.i31.i
  %or62333.i = or i1 %1, %3
  br i1 %or62333.i, label %if.then.i, label %if.then12.propagateFloat32NaN.exit_crit_edge

if.then12.propagateFloat32NaN.exit_crit_edge:     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat32NaN.exit

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat32NaN.exit

propagateFloat32NaN.exit:                         ; preds = %if.then.i, %if.then12.propagateFloat32NaN.exit_crit_edge
  %shl.i26.i = shl i32 %b, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %shl.i26.i)
  %cmp.i27.i = icmp ugt i32 %shl.i26.i, -16777216
  %shl.i.i = shl i32 %a, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777215, i32 %shl.i.i)
  %cmp.i.i = icmp ult i32 %shl.i.i, -16777215
  %and2434.i = and i1 %1, %cmp.i27.i
  %4 = or i1 %cmp.i.i, %and2434.i
  %retval.0.v.i = select i1 %4, i32 %b, i32 %a
  %retval.0.i = or i32 %retval.0.v.i, 4194304
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %or = or i32 %and.i106, %and.i104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp14 = icmp eq i32 %or, 0
  br i1 %cmp14, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %exception = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %5 = ptrtoint ptr %exception to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %exception, align 1
  %7 = or i8 %6, 1
  store i8 %7, ptr %exception, align 1
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = and i32 %shr.i103166, -2147483648
  %add.i = or i32 %shl.i, 2139095040
  br label %cleanup

if.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i106)
  %cmp23 = icmp eq i32 %and.i106, 255
  br i1 %cmp23, label %if.then25, label %if.end40

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104)
  %tobool26.not = icmp eq i32 %and.i104, 0
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.then25
  %8 = and i32 %a, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %8)
  %cmp.i25.i110 = icmp eq i32 %8, 2139095040
  %and1.i.i111 = and i32 %a, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i111)
  %tobool.i.i112 = icmp ne i32 %and1.i.i111, 0
  %9 = and i1 %cmp.i25.i110, %tobool.i.i112
  %10 = and i32 %b, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %10)
  %cmp.i29.i113 = icmp eq i32 %10, 2139095040
  %and1.i30.i114 = and i32 %b, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i30.i114)
  %tobool.i31.i115 = icmp ne i32 %and1.i30.i114, 0
  %11 = and i1 %cmp.i29.i113, %tobool.i31.i115
  %or62333.i116 = or i1 %9, %11
  br i1 %or62333.i116, label %if.then.i117, label %if.then27.propagateFloat32NaN.exit125_crit_edge

if.then27.propagateFloat32NaN.exit125_crit_edge:  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat32NaN.exit125

if.then.i117:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat32NaN.exit125

propagateFloat32NaN.exit125:                      ; preds = %if.then.i117, %if.then27.propagateFloat32NaN.exit125_crit_edge
  %shl.i26.i118 = shl i32 %b, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %shl.i26.i118)
  %cmp.i27.i119 = icmp ugt i32 %shl.i26.i118, -16777216
  %shl.i.i120 = shl i32 %a, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777215, i32 %shl.i.i120)
  %cmp.i.i121 = icmp ult i32 %shl.i.i120, -16777215
  %and2434.i122 = and i1 %9, %cmp.i27.i119
  %12 = or i1 %cmp.i.i121, %and2434.i122
  %retval.0.v.i123 = select i1 %12, i32 %b, i32 %a
  %retval.0.i124 = or i32 %retval.0.v.i123, 4194304
  br label %cleanup

if.end29:                                         ; preds = %if.then25
  %or30 = or i32 %and.i102, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or30)
  %cmp31 = icmp eq i32 %or30, 0
  br i1 %cmp31, label %if.then33, label %if.end38

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %exception34 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %13 = ptrtoint ptr %exception34 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %exception34, align 1
  %15 = or i8 %14, 1
  store i8 %15, ptr %exception34, align 1
  br label %cleanup

if.end38:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i127 = and i32 %shr.i103166, -2147483648
  %add.i128 = or i32 %shl.i127, 2139095040
  br label %cleanup

if.end40:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i102)
  %cmp41 = icmp eq i32 %and.i102, 0
  br i1 %cmp41, label %if.then43, label %if.end40.if.end49_crit_edge

if.end40.if.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp44 = icmp eq i32 %and.i, 0
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i130 = and i32 %shr.i103166, -2147483648
  br label %cleanup

if.end48:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %and.i)
  %cmp.i.i131 = icmp ult i32 %and.i, 65536
  %shl.i.i132 = shl i32 %a, 16
  %spec.select.i.i = select i1 %cmp.i.i131, i32 %shl.i.i132, i32 %and.i
  %spec.select21.i.i = select i1 %cmp.i.i131, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i)
  %cmp2.i.i = icmp ult i32 %spec.select.i.i, 16777216
  %16 = or i8 %spec.select21.i.i, 8
  %shl8.i.i = shl i32 %spec.select.i.i, 8
  %a.addr.1.i.i = select i1 %cmp2.i.i, i32 %shl8.i.i, i32 %spec.select.i.i
  %shiftCount.1.i.i = select i1 %cmp2.i.i, i8 %16, i8 %spec.select21.i.i
  %shr.i.i = lshr i32 %a.addr.1.i.i, 24
  %arrayidx.i.i = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.i, align 1
  %add12.i.i = add nsw i8 %shiftCount.1.i.i, -8
  %sub.i = add i8 %add12.i.i, %18
  %conv2.i = sext i8 %sub.i to i32
  %shl.i133 = shl i32 %and.i, %conv2.i
  %sub4.i = sub nsw i32 1, %conv2.i
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end40.if.end49_crit_edge
  %aExp.0 = phi i32 [ %sub4.i, %if.end48 ], [ %and.i102, %if.end40.if.end49_crit_edge ]
  %aSig.0 = phi i32 [ %shl.i133, %if.end48 ], [ %and.i, %if.end40.if.end49_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106)
  %cmp50 = icmp eq i32 %and.i106, 0
  br i1 %cmp50, label %if.then52, label %if.end49.if.end58_crit_edge

if.end49.if.end58_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104)
  %cmp53 = icmp eq i32 %and.i104, 0
  br i1 %cmp53, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i135 = and i32 %shr.i103166, -2147483648
  br label %cleanup

if.end57:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %and.i104)
  %cmp.i.i136 = icmp ult i32 %and.i104, 65536
  %shl.i.i137 = shl i32 %b, 16
  %spec.select.i.i138 = select i1 %cmp.i.i136, i32 %shl.i.i137, i32 %and.i104
  %spec.select21.i.i139 = select i1 %cmp.i.i136, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i138)
  %cmp2.i.i140 = icmp ult i32 %spec.select.i.i138, 16777216
  %19 = or i8 %spec.select21.i.i139, 8
  %shl8.i.i141 = shl i32 %spec.select.i.i138, 8
  %a.addr.1.i.i142 = select i1 %cmp2.i.i140, i32 %shl8.i.i141, i32 %spec.select.i.i138
  %shiftCount.1.i.i143 = select i1 %cmp2.i.i140, i8 %19, i8 %spec.select21.i.i139
  %shr.i.i144 = lshr i32 %a.addr.1.i.i142, 24
  %arrayidx.i.i145 = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i144
  %20 = ptrtoint ptr %arrayidx.i.i145 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.i145, align 1
  %add12.i.i146 = add nsw i8 %shiftCount.1.i.i143, -8
  %sub.i147 = add i8 %add12.i.i146, %21
  %conv2.i148 = sext i8 %sub.i147 to i32
  %shl.i149 = shl i32 %and.i104, %conv2.i148
  %sub4.i150 = sub nsw i32 1, %conv2.i148
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end49.if.end58_crit_edge
  %bExp.0 = phi i32 [ %sub4.i150, %if.end57 ], [ %and.i106, %if.end49.if.end58_crit_edge ]
  %bSig.0 = phi i32 [ %shl.i149, %if.end57 ], [ %and.i104, %if.end49.if.end58_crit_edge ]
  %add = add nsw i32 %bExp.0, %aExp.0
  %or59 = shl i32 %aSig.0, 7
  %shl = or i32 %or59, 1073741824
  %or60 = shl i32 %bSig.0, 8
  %shl61 = or i32 %or60, -2147483648
  %conv62 = zext i32 %shl to i64
  %conv63 = zext i32 %shl61 to i64
  %mul = mul nuw i64 %conv63, %conv62
  tail call void asm sideeffect "@shift64RightJamming -- start", ""() #8, !srcloc !17
  %shr.i151 = lshr i64 %mul, 32
  %shl.i152.mask = and i64 %mul, 4294934528
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i152.mask)
  %cmp4.i = icmp ne i64 %shl.i152.mask, 0
  %22 = zext i1 %cmp4.i to i64
  %or.i = or i64 %shr.i151, %22
  tail call void asm sideeffect "@shift64RightJamming -- end", ""() #8, !srcloc !18
  %conv64 = trunc i64 %or.i to i32
  %shl65 = shl i32 %conv64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl65)
  %cmp66 = icmp sgt i32 %shl65, -1
  %spec.select.v = select i1 %cmp66, i32 -128, i32 -127
  %spec.select = add nsw i32 %add, %spec.select.v
  %spec.select101 = select i1 %cmp66, i32 %shl65, i32 %conv64
  %call71 = tail call fastcc i32 @roundAndPackFloat32(ptr noundef %roundData, i8 noundef zeroext %xor100, i32 noundef %spec.select, i32 noundef %spec.select101)
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then55, %if.then46, %if.end38, %if.then33, %propagateFloat32NaN.exit125, %if.end20, %if.then16, %propagateFloat32NaN.exit
  %retval.0 = phi i32 [ %retval.0.i, %propagateFloat32NaN.exit ], [ -1, %if.then16 ], [ %add.i, %if.end20 ], [ %retval.0.i124, %propagateFloat32NaN.exit125 ], [ -1, %if.then33 ], [ %add.i128, %if.end38 ], [ %shl.i130, %if.then46 ], [ %shl.i135, %if.then55 ], [ %call71, %if.end58 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @roundAndPackFloat32(ptr nocapture noundef %roundData, i8 noundef zeroext %zSign, i32 noundef %zExp, i32 noundef %zSig) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %roundData to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %roundData, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp4 = icmp eq i8 %1, 1
  br i1 %cmp4, label %if.then.if.end21_crit_edge, label %if.else

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %zSign)
  %tobool7.not = icmp eq i8 %zSign, 0
  br i1 %tobool7.not, label %if.else13, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp10 = icmp eq i8 %1, 3
  %spec.select = sext i1 %cmp10 to i32
  %spec.select117 = select i1 %cmp10, i32 0, i32 127
  br label %if.end21

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp15 = icmp eq i8 %1, 2
  %spec.select118 = sext i1 %cmp15 to i32
  %spec.select119 = select i1 %cmp15, i32 0, i32 127
  br label %if.end21

if.end21:                                         ; preds = %if.else13, %if.then8, %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  %cmp39.neg = phi i32 [ 0, %entry.if.end21_crit_edge ], [ -1, %if.then.if.end21_crit_edge ], [ %spec.select, %if.then8 ], [ %spec.select118, %if.else13 ]
  %roundIncrement.0 = phi i32 [ 64, %entry.if.end21_crit_edge ], [ 0, %if.then.if.end21_crit_edge ], [ %spec.select117, %if.then8 ], [ %spec.select119, %if.else13 ]
  %2 = trunc i32 %zSig to i8
  %conv22 = and i8 %2, 127
  %conv24 = and i32 %zExp, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %conv24)
  %cmp25 = icmp ugt i32 %conv24, 252
  br i1 %cmp25, label %if.then27, label %if.end21.if.end71_crit_edge

if.end21.if.end71_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %zExp)
  %cmp28 = icmp sgt i32 %zExp, 253
  br i1 %cmp28, label %if.then27.if.then35_crit_edge, label %lor.lhs.false

if.then27.if.then35_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

lor.lhs.false:                                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %zExp)
  %cmp30 = icmp eq i32 %zExp, 253
  %add = add i32 %roundIncrement.0, %zSig
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp33 = icmp slt i32 %add, 0
  %or.cond = select i1 %cmp30, i1 %cmp33, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then35_crit_edge, label %if.end41

lor.lhs.false.if.then35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

if.then35:                                        ; preds = %lor.lhs.false.if.then35_crit_edge, %if.then27.if.then35_crit_edge
  %exception = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %3 = ptrtoint ptr %exception to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %exception, align 1
  %5 = or i8 %4, 20
  store i8 %5, ptr %exception, align 1
  %conv.i = zext i8 %zSign to i32
  %shl.i = shl i32 %conv.i, 31
  %add.i = or i32 %shl.i, 2139095040
  %sub = add i32 %add.i, %cmp39.neg
  br label %cleanup

if.end41:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zExp)
  %cmp42 = icmp slt i32 %zExp, 0
  br i1 %cmp42, label %if.then44, label %if.end41.if.end71_crit_edge

if.end41.if.end71_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then44:                                        ; preds = %if.end41
  %6 = load i8, ptr @float_detect_tininess, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp46 = icmp ne i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %zExp)
  %cmp49 = icmp eq i32 %zExp, -1
  %not.or.cond120 = and i1 %cmp49, %cmp46
  %spec.select143 = select i1 %not.or.cond120, i1 %cmp33, i1 false
  %sub56 = sub i32 0, %zExp
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub56)
  %cmp1.i = icmp slt i32 %sub56, 32
  br i1 %cmp1.i, label %if.then2.i, label %if.else4.i

if.then2.i:                                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = lshr i32 %zSig, %sub56
  %and.i = and i32 %zExp, 31
  %shl.i123 = shl i32 %zSig, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i123)
  %cmp3.i = icmp ne i32 %shl.i123, 0
  %conv.i124 = zext i1 %cmp3.i to i32
  %or.i = or i32 %shr.i, %conv.i124
  br label %shift32RightJamming.exit

if.else4.i:                                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zSig)
  %cmp5.i = icmp ne i32 %zSig, 0
  %conv6.i = zext i1 %cmp5.i to i32
  br label %shift32RightJamming.exit

shift32RightJamming.exit:                         ; preds = %if.else4.i, %if.then2.i
  %z.0.i = phi i32 [ %or.i, %if.then2.i ], [ %conv6.i, %if.else4.i ]
  %7 = trunc i32 %z.0.i to i8
  %conv58 = and i8 %7, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv58)
  %tobool63.not = icmp eq i8 %conv58, 0
  %or.cond121 = select i1 %spec.select143, i1 true, i1 %tobool63.not
  br i1 %or.cond121, label %shift32RightJamming.exit.if.end71_crit_edge, label %if.end71.thread

shift32RightJamming.exit.if.end71_crit_edge:      ; preds = %shift32RightJamming.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.end71.thread:                                  ; preds = %shift32RightJamming.exit
  call void @__sanitizer_cov_trace_pc() #10
  %exception65 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %8 = ptrtoint ptr %exception65 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %exception65, align 1
  %10 = or i8 %9, 8
  store i8 %10, ptr %exception65, align 1
  br label %if.then73

if.end71:                                         ; preds = %shift32RightJamming.exit.if.end71_crit_edge, %if.end41.if.end71_crit_edge, %if.end21.if.end71_crit_edge
  %zSig.addr.0 = phi i32 [ %z.0.i, %shift32RightJamming.exit.if.end71_crit_edge ], [ %zSig, %if.end41.if.end71_crit_edge ], [ %zSig, %if.end21.if.end71_crit_edge ]
  %zExp.addr.0 = phi i32 [ 0, %shift32RightJamming.exit.if.end71_crit_edge ], [ %zExp, %if.end41.if.end71_crit_edge ], [ %zExp, %if.end21.if.end71_crit_edge ]
  %roundBits.0 = phi i8 [ %conv58, %shift32RightJamming.exit.if.end71_crit_edge ], [ %conv22, %if.end41.if.end71_crit_edge ], [ %conv22, %if.end21.if.end71_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %roundBits.0)
  %tobool72.not = icmp eq i8 %roundBits.0, 0
  br i1 %tobool72.not, label %if.end71.if.end78_crit_edge, label %if.end71.if.then73_crit_edge

if.end71.if.then73_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73

if.end71.if.end78_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then73:                                        ; preds = %if.end71.if.then73_crit_edge, %if.end71.thread
  %roundBits.0141 = phi i8 [ %conv58, %if.end71.thread ], [ %roundBits.0, %if.end71.if.then73_crit_edge ]
  %zExp.addr.0139 = phi i32 [ 0, %if.end71.thread ], [ %zExp.addr.0, %if.end71.if.then73_crit_edge ]
  %zSig.addr.0137 = phi i32 [ %z.0.i, %if.end71.thread ], [ %zSig.addr.0, %if.end71.if.then73_crit_edge ]
  %exception74 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %11 = ptrtoint ptr %exception74 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %exception74, align 1
  %13 = or i8 %12, 16
  store i8 %13, ptr %exception74, align 1
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %if.end71.if.end78_crit_edge
  %roundBits.0142 = phi i8 [ %roundBits.0141, %if.then73 ], [ 0, %if.end71.if.end78_crit_edge ]
  %zExp.addr.0140 = phi i32 [ %zExp.addr.0139, %if.then73 ], [ %zExp.addr.0, %if.end71.if.end78_crit_edge ]
  %zSig.addr.0138 = phi i32 [ %zSig.addr.0137, %if.then73 ], [ %zSig.addr.0, %if.end71.if.end78_crit_edge ]
  %add80 = add i32 %zSig.addr.0138, %roundIncrement.0
  %shr = lshr i32 %add80, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %roundBits.0142)
  %cmp82 = icmp eq i8 %roundBits.0142, 64
  %and85116 = and i1 %cmp, %cmp82
  %and85 = zext i1 %and85116 to i32
  %neg = xor i32 %and85, -1
  %and86 = and i32 %shr, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %cmp87 = icmp eq i32 %and86, 0
  %conv.i125 = zext i8 %zSign to i32
  %shl.i126 = shl i32 %conv.i125, 31
  %zExp.addr.0140.op = shl i32 %zExp.addr.0140, 23
  %shl1.i = select i1 %cmp87, i32 0, i32 %zExp.addr.0140.op
  %add.i127 = or i32 %and86, %shl.i126
  %add2.i = add i32 %add.i127, %shl1.i
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.then35
  %retval.0 = phi i32 [ %sub, %if.then35 ], [ %add2.i, %if.end78 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @float32_div(ptr nocapture noundef %roundData, i32 noundef %a, i32 noundef %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %a, 8388607
  %shr.i = lshr i32 %a, 23
  %and.i394 = and i32 %shr.i, 255
  %and.i396 = and i32 %b, 8388607
  %shr.i397 = lshr i32 %b, 23
  %and.i398 = and i32 %shr.i397, 255
  %shr.i395499 = xor i32 %b, %a
  %xor392498 = lshr i32 %shr.i395499, 31
  %xor392 = trunc i32 %xor392498 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i394)
  %cmp = icmp eq i32 %and.i394, 255
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %if.then9

if.then9:                                         ; preds = %if.then
  %0 = and i32 %a, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %0)
  %cmp.i25.i = icmp eq i32 %0, 2139095040
  %and1.i.i = and i32 %a, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.i = icmp ne i32 %and1.i.i, 0
  %1 = and i1 %cmp.i25.i, %tobool.i.i
  %2 = and i32 %b, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %2)
  %cmp.i29.i = icmp eq i32 %2, 2139095040
  %and1.i30.i = and i32 %b, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i30.i)
  %tobool.i31.i = icmp ne i32 %and1.i30.i, 0
  %3 = and i1 %cmp.i29.i, %tobool.i31.i
  %or62333.i = or i1 %1, %3
  br i1 %or62333.i, label %if.then.i, label %if.then9.propagateFloat32NaN.exit_crit_edge

if.then9.propagateFloat32NaN.exit_crit_edge:      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat32NaN.exit

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat32NaN.exit

propagateFloat32NaN.exit:                         ; preds = %if.then.i, %if.then9.propagateFloat32NaN.exit_crit_edge
  %shl.i26.i = shl i32 %b, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %shl.i26.i)
  %cmp.i27.i = icmp ugt i32 %shl.i26.i, -16777216
  %shl.i.i = shl i32 %a, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777215, i32 %shl.i.i)
  %cmp.i.i = icmp ult i32 %shl.i.i, -16777215
  %and2434.i = and i1 %1, %cmp.i27.i
  %4 = or i1 %cmp.i.i, %and2434.i
  %retval.0.v.i = select i1 %4, i32 %b, i32 %a
  %retval.0.i = or i32 %retval.0.v.i, 4194304
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i398)
  %cmp11 = icmp eq i32 %and.i398, 255
  br i1 %cmp11, label %if.then13, label %if.end20

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i396)
  %tobool14.not = icmp eq i32 %and.i396, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.then13
  %5 = and i32 %a, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %5)
  %cmp.i25.i401 = icmp eq i32 %5, 2139095040
  %and1.i.i402 = and i32 %a, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i402)
  %tobool.i.i403 = icmp ne i32 %and1.i.i402, 0
  %6 = and i1 %cmp.i25.i401, %tobool.i.i403
  %7 = and i32 %b, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %7)
  %cmp.i29.i404 = icmp eq i32 %7, 2139095040
  %and1.i30.i405 = and i32 %b, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i30.i405)
  %tobool.i31.i406 = icmp ne i32 %and1.i30.i405, 0
  %8 = and i1 %cmp.i29.i404, %tobool.i31.i406
  %or62333.i407 = or i1 %6, %8
  br i1 %or62333.i407, label %if.then.i408, label %if.then15.propagateFloat32NaN.exit416_crit_edge

if.then15.propagateFloat32NaN.exit416_crit_edge:  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat32NaN.exit416

if.then.i408:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat32NaN.exit416

propagateFloat32NaN.exit416:                      ; preds = %if.then.i408, %if.then15.propagateFloat32NaN.exit416_crit_edge
  %shl.i26.i409 = shl i32 %b, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %shl.i26.i409)
  %cmp.i27.i410 = icmp ugt i32 %shl.i26.i409, -16777216
  %shl.i.i411 = shl i32 %a, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777215, i32 %shl.i.i411)
  %cmp.i.i412 = icmp ult i32 %shl.i.i411, -16777215
  %and2434.i413 = and i1 %6, %cmp.i27.i410
  %9 = or i1 %cmp.i.i412, %and2434.i413
  %retval.0.v.i414 = select i1 %9, i32 %b, i32 %a
  %retval.0.i415 = or i32 %retval.0.v.i414, 4194304
  br label %cleanup

if.end17:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %exception = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %10 = ptrtoint ptr %exception to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %exception, align 1
  %12 = or i8 %11, 1
  store i8 %12, ptr %exception, align 1
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = and i32 %shr.i395499, -2147483648
  %add.i = or i32 %shl.i, 2139095040
  br label %cleanup

if.end22:                                         ; preds = %entry
  %trunc = trunc i32 %shr.i397 to i8
  %13 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %trunc, label %if.end22.if.end53_crit_edge [
    i8 -1, label %if.then25
    i8 0, label %if.then34
  ]

if.end22.if.end53_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i396)
  %tobool26.not = icmp eq i32 %and.i396, 0
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.then25
  %14 = and i32 %a, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %14)
  %cmp.i25.i418 = icmp eq i32 %14, 2139095040
  %and1.i.i419 = and i32 %a, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i419)
  %tobool.i.i420 = icmp ne i32 %and1.i.i419, 0
  %15 = and i1 %cmp.i25.i418, %tobool.i.i420
  %16 = and i32 %b, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %16)
  %cmp.i29.i421 = icmp eq i32 %16, 2139095040
  %and1.i30.i422 = and i32 %b, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i30.i422)
  %tobool.i31.i423 = icmp ne i32 %and1.i30.i422, 0
  %17 = and i1 %cmp.i29.i421, %tobool.i31.i423
  %or62333.i424 = or i1 %15, %17
  br i1 %or62333.i424, label %if.then.i425, label %if.then27.propagateFloat32NaN.exit433_crit_edge

if.then27.propagateFloat32NaN.exit433_crit_edge:  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat32NaN.exit433

if.then.i425:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat32NaN.exit433

propagateFloat32NaN.exit433:                      ; preds = %if.then.i425, %if.then27.propagateFloat32NaN.exit433_crit_edge
  %shl.i26.i426 = shl i32 %b, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %shl.i26.i426)
  %cmp.i27.i427 = icmp ugt i32 %shl.i26.i426, -16777216
  %shl.i.i428 = shl i32 %a, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777215, i32 %shl.i.i428)
  %cmp.i.i429 = icmp ult i32 %shl.i.i428, -16777215
  %and2434.i430 = and i1 %15, %cmp.i27.i427
  %18 = or i1 %cmp.i.i429, %and2434.i430
  %retval.0.v.i431 = select i1 %18, i32 %b, i32 %a
  %retval.0.i432 = or i32 %retval.0.v.i431, 4194304
  br label %cleanup

if.end29:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i435 = and i32 %shr.i395499, -2147483648
  br label %cleanup

if.then34:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i396)
  %cmp35 = icmp eq i32 %and.i396, 0
  br i1 %cmp35, label %if.then37, label %if.end52

if.then37:                                        ; preds = %if.then34
  %or38 = or i32 %and.i394, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or38)
  %cmp39 = icmp eq i32 %or38, 0
  %exception42 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %19 = ptrtoint ptr %exception42 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %exception42, align 1
  br i1 %cmp39, label %if.then41, label %if.end46

if.then41:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %21 = or i8 %20, 1
  %22 = ptrtoint ptr %exception42 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %exception42, align 1
  br label %cleanup

if.end46:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %23 = or i8 %20, 2
  %24 = ptrtoint ptr %exception42 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %exception42, align 1
  %shl.i437 = and i32 %shr.i395499, -2147483648
  %add.i438 = or i32 %shl.i437, 2139095040
  br label %cleanup

if.end52:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %and.i396)
  %cmp.i.i439 = icmp ult i32 %and.i396, 65536
  %shl.i.i440 = shl i32 %b, 16
  %spec.select.i.i = select i1 %cmp.i.i439, i32 %shl.i.i440, i32 %and.i396
  %spec.select21.i.i = select i1 %cmp.i.i439, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i)
  %cmp2.i.i = icmp ult i32 %spec.select.i.i, 16777216
  %25 = or i8 %spec.select21.i.i, 8
  %shl8.i.i = shl i32 %spec.select.i.i, 8
  %a.addr.1.i.i = select i1 %cmp2.i.i, i32 %shl8.i.i, i32 %spec.select.i.i
  %shiftCount.1.i.i = select i1 %cmp2.i.i, i8 %25, i8 %spec.select21.i.i
  %shr.i.i = lshr i32 %a.addr.1.i.i, 24
  %arrayidx.i.i = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.i, align 1
  %add12.i.i = add nsw i8 %shiftCount.1.i.i, -8
  %sub.i = add i8 %add12.i.i, %27
  %conv2.i = sext i8 %sub.i to i32
  %shl.i441 = shl i32 %and.i396, %conv2.i
  %sub4.i = sub nsw i32 1, %conv2.i
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end22.if.end53_crit_edge
  %bExp.0 = phi i32 [ %and.i398, %if.end22.if.end53_crit_edge ], [ %sub4.i, %if.end52 ]
  %bSig.0 = phi i32 [ %and.i396, %if.end22.if.end53_crit_edge ], [ %shl.i441, %if.end52 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i394)
  %cmp54 = icmp eq i32 %and.i394, 0
  br i1 %cmp54, label %if.then56, label %if.end53.if.end62_crit_edge

if.end53.if.end62_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp57 = icmp eq i32 %and.i, 0
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i443 = and i32 %shr.i395499, -2147483648
  br label %cleanup

if.end61:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %and.i)
  %cmp.i.i444 = icmp ult i32 %and.i, 65536
  %shl.i.i445 = shl i32 %a, 16
  %spec.select.i.i446 = select i1 %cmp.i.i444, i32 %shl.i.i445, i32 %and.i
  %spec.select21.i.i447 = select i1 %cmp.i.i444, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i446)
  %cmp2.i.i448 = icmp ult i32 %spec.select.i.i446, 16777216
  %28 = or i8 %spec.select21.i.i447, 8
  %shl8.i.i449 = shl i32 %spec.select.i.i446, 8
  %a.addr.1.i.i450 = select i1 %cmp2.i.i448, i32 %shl8.i.i449, i32 %spec.select.i.i446
  %shiftCount.1.i.i451 = select i1 %cmp2.i.i448, i8 %28, i8 %spec.select21.i.i447
  %shr.i.i452 = lshr i32 %a.addr.1.i.i450, 24
  %arrayidx.i.i453 = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i452
  %29 = ptrtoint ptr %arrayidx.i.i453 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i.i453, align 1
  %add12.i.i454 = add nsw i8 %shiftCount.1.i.i451, -8
  %sub.i455 = add i8 %add12.i.i454, %30
  %conv2.i456 = sext i8 %sub.i455 to i32
  %shl.i457 = shl i32 %and.i, %conv2.i456
  %sub4.i458 = sub nsw i32 1, %conv2.i456
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end53.if.end62_crit_edge
  %aExp.0 = phi i32 [ %sub4.i458, %if.end61 ], [ %and.i394, %if.end53.if.end62_crit_edge ]
  %aSig.0 = phi i32 [ %shl.i457, %if.end61 ], [ %and.i, %if.end53.if.end62_crit_edge ]
  %sub = sub nsw i32 %aExp.0, %bExp.0
  %or63 = shl i32 %aSig.0, 7
  %shl = or i32 %or63, 1073741824
  %or64 = shl i32 %bSig.0, 8
  %shl65 = or i32 %or64, -2147483648
  %add66 = shl i32 %shl, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl65, i32 %add66)
  %cmp67.not = icmp ugt i32 %shl65, %add66
  %not.cmp67.not = xor i1 %cmp67.not, true
  %shr = zext i1 %not.cmp67.not to i32
  %aSig.1 = lshr exact i32 %shl, %shr
  %zExp.0.v = select i1 %cmp67.not, i32 125, i32 126
  %zExp.0 = add nsw i32 %sub, %zExp.0.v
  %conv71 = zext i32 %aSig.1 to i64
  %shl72 = shl nuw i64 %conv71, 32
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl65, i64 %shl72) #11, !srcloc !37
  %asmresult1.i = extractvalue { i64, i64 } %31, 1
  %conv265 = trunc i64 %asmresult1.i to i32
  %and266 = and i32 %conv265, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and266)
  %cmp267 = icmp eq i32 %and266, 0
  br i1 %cmp267, label %if.then269, label %if.end62.if.end278_crit_edge

if.end62.if.end278_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end278

if.then269:                                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %conv270 = zext i32 %shl65 to i64
  %conv271 = and i64 %asmresult1.i, 4294967295
  %mul272 = mul nuw i64 %conv271, %conv270
  call void @__sanitizer_cov_trace_cmp8(i64 %mul272, i64 %shl72)
  %cmp275 = icmp ne i64 %mul272, %shl72
  %conv276 = zext i1 %cmp275 to i32
  %or277 = or i32 %conv276, %conv265
  br label %if.end278

if.end278:                                        ; preds = %if.then269, %if.end62.if.end278_crit_edge
  %zSig.0 = phi i32 [ %or277, %if.then269 ], [ %conv265, %if.end62.if.end278_crit_edge ]
  %call279 = tail call fastcc i32 @roundAndPackFloat32(ptr noundef %roundData, i8 noundef zeroext %xor392, i32 noundef %zExp.0, i32 noundef %zSig.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end278, %if.then59, %if.end46, %if.then41, %if.end29, %propagateFloat32NaN.exit433, %if.end20, %if.end17, %propagateFloat32NaN.exit416, %propagateFloat32NaN.exit
  %retval.0 = phi i32 [ %retval.0.i, %propagateFloat32NaN.exit ], [ %retval.0.i415, %propagateFloat32NaN.exit416 ], [ -1, %if.end17 ], [ %add.i, %if.end20 ], [ %retval.0.i432, %propagateFloat32NaN.exit433 ], [ %shl.i435, %if.end29 ], [ -1, %if.then41 ], [ %add.i438, %if.end46 ], [ %shl.i443, %if.then59 ], [ %call279, %if.end278 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @float32_rem(ptr nocapture noundef %roundData, i32 noundef %a, i32 noundef %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %a, 8388607
  %shr.i = lshr i32 %a, 23
  %and.i484 = and i32 %shr.i, 255
  %shr.i485 = lshr i32 %a, 31
  %and.i486 = and i32 %b, 8388607
  %shr.i487 = lshr i32 %b, 23
  %and.i488 = and i32 %shr.i487, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i484)
  %cmp = icmp eq i32 %and.i484, 255
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then.if.then8_crit_edge

if.then.if.then8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i488)
  %cmp6 = icmp ne i32 %and.i488, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i486)
  %tobool7.not = icmp eq i32 %and.i486, 0
  %or.cond884 = or i1 %tobool7.not, %cmp6
  br i1 %or.cond884, label %if.end, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.then.if.then8_crit_edge
  %0 = and i32 %a, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %0)
  %cmp.i25.i = icmp eq i32 %0, 2139095040
  %and1.i.i = and i32 %a, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.i = icmp ne i32 %and1.i.i, 0
  %1 = and i1 %cmp.i25.i, %tobool.i.i
  %2 = and i32 %b, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %2)
  %cmp.i29.i = icmp eq i32 %2, 2139095040
  %and1.i30.i = and i32 %b, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i30.i)
  %tobool.i31.i = icmp ne i32 %and1.i30.i, 0
  %3 = and i1 %cmp.i29.i, %tobool.i31.i
  %or62333.i = or i1 %1, %3
  br i1 %or62333.i, label %if.then.i, label %if.then8.propagateFloat32NaN.exit_crit_edge

if.then8.propagateFloat32NaN.exit_crit_edge:      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat32NaN.exit

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat32NaN.exit

propagateFloat32NaN.exit:                         ; preds = %if.then.i, %if.then8.propagateFloat32NaN.exit_crit_edge
  %shl.i26.i = shl i32 %b, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %shl.i26.i)
  %cmp.i27.i = icmp ugt i32 %shl.i26.i, -16777216
  %shl.i.i = shl i32 %a, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777215, i32 %shl.i.i)
  %cmp.i.i = icmp ult i32 %shl.i.i, -16777215
  %and2434.i = and i1 %1, %cmp.i27.i
  %4 = or i1 %cmp.i.i, %and2434.i
  %retval.0.v.i = select i1 %4, i32 %b, i32 %a
  %retval.0.i = or i32 %retval.0.v.i, 4194304
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %exception = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %5 = ptrtoint ptr %exception to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %exception, align 1
  %7 = or i8 %6, 1
  store i8 %7, ptr %exception, align 1
  br label %cleanup

if.end11:                                         ; preds = %entry
  %trunc = trunc i32 %shr.i487 to i8
  %8 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %trunc, label %if.end11.if.end31_crit_edge [
    i8 -1, label %if.then14
    i8 0, label %if.then22
  ]

if.end11.if.end31_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i486)
  %tobool15.not = icmp eq i32 %and.i486, 0
  br i1 %tobool15.not, label %if.then14.cleanup_crit_edge, label %if.then16

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %if.then14
  %9 = and i32 %a, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %9)
  %cmp.i25.i491 = icmp eq i32 %9, 2139095040
  %and1.i.i492 = and i32 %a, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i492)
  %tobool.i.i493 = icmp ne i32 %and1.i.i492, 0
  %10 = and i1 %cmp.i25.i491, %tobool.i.i493
  %11 = and i32 %b, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %11)
  %cmp.i29.i494 = icmp eq i32 %11, 2139095040
  %and1.i30.i495 = and i32 %b, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i30.i495)
  %tobool.i31.i496 = icmp ne i32 %and1.i30.i495, 0
  %12 = and i1 %cmp.i29.i494, %tobool.i31.i496
  %or62333.i497 = or i1 %10, %12
  br i1 %or62333.i497, label %if.then.i498, label %if.then16.propagateFloat32NaN.exit506_crit_edge

if.then16.propagateFloat32NaN.exit506_crit_edge:  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat32NaN.exit506

if.then.i498:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat32NaN.exit506

propagateFloat32NaN.exit506:                      ; preds = %if.then.i498, %if.then16.propagateFloat32NaN.exit506_crit_edge
  %shl.i26.i499 = shl i32 %b, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %shl.i26.i499)
  %cmp.i27.i500 = icmp ugt i32 %shl.i26.i499, -16777216
  %shl.i.i501 = shl i32 %a, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777215, i32 %shl.i.i501)
  %cmp.i.i502 = icmp ult i32 %shl.i.i501, -16777215
  %and2434.i503 = and i1 %10, %cmp.i27.i500
  %13 = or i1 %cmp.i.i502, %and2434.i503
  %retval.0.v.i504 = select i1 %13, i32 %b, i32 %a
  %retval.0.i505 = or i32 %retval.0.v.i504, 4194304
  br label %cleanup

if.then22:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i486)
  %cmp23 = icmp eq i32 %and.i486, 0
  br i1 %cmp23, label %if.then25, label %if.end30

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %exception26 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %14 = ptrtoint ptr %exception26 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %exception26, align 1
  %16 = or i8 %15, 1
  store i8 %16, ptr %exception26, align 1
  br label %cleanup

if.end30:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %and.i486)
  %cmp.i.i507 = icmp ult i32 %and.i486, 65536
  %shl.i.i508 = shl i32 %b, 16
  %spec.select.i.i = select i1 %cmp.i.i507, i32 %shl.i.i508, i32 %and.i486
  %spec.select21.i.i = select i1 %cmp.i.i507, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i)
  %cmp2.i.i = icmp ult i32 %spec.select.i.i, 16777216
  %17 = or i8 %spec.select21.i.i, 8
  %shl8.i.i = shl i32 %spec.select.i.i, 8
  %a.addr.1.i.i = select i1 %cmp2.i.i, i32 %shl8.i.i, i32 %spec.select.i.i
  %shiftCount.1.i.i = select i1 %cmp2.i.i, i8 %17, i8 %spec.select21.i.i
  %shr.i.i = lshr i32 %a.addr.1.i.i, 24
  %arrayidx.i.i = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.i, align 1
  %add12.i.i = add nsw i8 %shiftCount.1.i.i, -8
  %sub.i = add i8 %add12.i.i, %19
  %conv2.i = sext i8 %sub.i to i32
  %shl.i = shl i32 %and.i486, %conv2.i
  %sub4.i = sub nsw i32 1, %conv2.i
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end11.if.end31_crit_edge
  %bExp.0 = phi i32 [ %and.i488, %if.end11.if.end31_crit_edge ], [ %sub4.i, %if.end30 ]
  %bSig.0 = phi i32 [ %and.i486, %if.end11.if.end31_crit_edge ], [ %shl.i, %if.end30 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i484)
  %cmp32 = icmp eq i32 %and.i484, 0
  br i1 %cmp32, label %if.then34, label %if.end31.if.end39_crit_edge

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp35 = icmp eq i32 %and.i, 0
  br i1 %cmp35, label %if.then34.cleanup_crit_edge, label %if.end38

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %and.i)
  %cmp.i.i509 = icmp ult i32 %and.i, 65536
  %shl.i.i510 = shl i32 %a, 16
  %spec.select.i.i511 = select i1 %cmp.i.i509, i32 %shl.i.i510, i32 %and.i
  %spec.select21.i.i512 = select i1 %cmp.i.i509, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i511)
  %cmp2.i.i513 = icmp ult i32 %spec.select.i.i511, 16777216
  %20 = or i8 %spec.select21.i.i512, 8
  %shl8.i.i514 = shl i32 %spec.select.i.i511, 8
  %a.addr.1.i.i515 = select i1 %cmp2.i.i513, i32 %shl8.i.i514, i32 %spec.select.i.i511
  %shiftCount.1.i.i516 = select i1 %cmp2.i.i513, i8 %20, i8 %spec.select21.i.i512
  %shr.i.i517 = lshr i32 %a.addr.1.i.i515, 24
  %arrayidx.i.i518 = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i517
  %21 = ptrtoint ptr %arrayidx.i.i518 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.i518, align 1
  %add12.i.i519 = add nsw i8 %shiftCount.1.i.i516, -8
  %sub.i520 = add i8 %add12.i.i519, %22
  %conv2.i521 = sext i8 %sub.i520 to i32
  %shl.i522 = shl i32 %and.i, %conv2.i521
  %sub4.i523 = sub nsw i32 1, %conv2.i521
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end31.if.end39_crit_edge
  %aExp.0 = phi i32 [ %sub4.i523, %if.end38 ], [ %and.i484, %if.end31.if.end39_crit_edge ]
  %aSig.0 = phi i32 [ %shl.i522, %if.end38 ], [ %and.i, %if.end31.if.end39_crit_edge ]
  %sub = sub nsw i32 %aExp.0, %bExp.0
  %or40 = or i32 %aSig.0, 8388608
  %or41 = or i32 %bSig.0, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub)
  %cmp42 = icmp slt i32 %sub, 32
  br i1 %cmp42, label %if.then44, label %if.else270

if.then44:                                        ; preds = %if.end39
  %shl = shl i32 %or40, 8
  %shl45 = shl i32 %or41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp46 = icmp slt i32 %sub, 0
  br i1 %cmp46, label %if.then48, label %if.end53

if.then48:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp49.not = icmp eq i32 %sub, -1
  br i1 %cmp49.not, label %if.end53.thread, label %if.then48.cleanup_crit_edge

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end53.thread:                                  ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr exact i32 %shl, 1
  br label %if.else266

if.end53:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %shl45)
  %cmp54 = icmp uge i32 %shl, %shl45
  %sub58 = select i1 %cmp54, i32 %shl45, i32 0
  %spec.select = sub i32 %shl, %sub58
  call void @__sanitizer_cov_trace_cmp4(i32 %aExp.0, i32 %bExp.0)
  %cmp60.not = icmp eq i32 %aExp.0, %bExp.0
  br i1 %cmp60.not, label %if.end53.if.else266_crit_edge, label %if.then62

if.end53.if.else266_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else266

if.then62:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %sub58)
  %cmp241 = icmp eq i32 %shl, %sub58
  br i1 %cmp241, label %if.then62.if.end255_crit_edge, label %if.else251, !prof !38

if.then62.if.end255_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end255

if.else251:                                       ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  %conv63 = zext i32 %spec.select to i64
  %shl64 = shl nuw i64 %conv63, 32
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl45, i64 %shl64) #11, !srcloc !37
  %asmresult1.i = extractvalue { i64, i64 } %23, 1
  %extract.t888 = trunc i64 %asmresult1.i to i32
  br label %if.end255

if.end255:                                        ; preds = %if.else251, %if.then62.if.end255_crit_edge
  %tmp.0.off0 = phi i32 [ %extract.t888, %if.else251 ], [ 0, %if.then62.if.end255_crit_edge ]
  %sub258 = sub nuw nsw i32 32, %sub
  %shr259 = lshr i32 %tmp.0.off0, %sub258
  %shr260 = lshr exact i32 %shl45, 2
  %shr261 = lshr exact i32 %spec.select, 1
  %sub262 = add nsw i32 %sub, -1
  %shl263 = shl i32 %shr261, %sub262
  %mul264 = mul i32 %shr259, %shr260
  %sub265 = sub i32 %shl263, %mul264
  br label %if.end318

if.else266:                                       ; preds = %if.end53.if.else266_crit_edge, %if.end53.thread
  %spec.select905 = phi i32 [ %shr, %if.end53.thread ], [ %spec.select, %if.end53.if.else266_crit_edge ]
  %cmp54904 = phi i1 [ false, %if.end53.thread ], [ %cmp54, %if.end53.if.else266_crit_edge ]
  %conv55 = zext i1 %cmp54904 to i32
  %shr267 = lshr i32 %spec.select905, 2
  %shr268 = lshr exact i32 %shl45, 2
  br label %if.end318

if.else270:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_cmp4(i32 %or40, i32 %or41)
  %cmp271.not = icmp ult i32 %or40, %or41
  %sub274 = select i1 %cmp271.not, i32 0, i32 %or41
  %spec.select885 = sub i32 %or40, %sub274
  %conv276 = zext i32 %spec.select885 to i64
  %shl277 = shl i64 %conv276, 40
  %conv278 = zext i32 %or41 to i64
  %shl279 = shl i64 %conv278, 40
  %sub280 = add nsw i32 %sub, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub)
  %cmp281890 = icmp ugt i32 %sub, 64
  br i1 %cmp281890, label %while.body.lr.ph, label %if.else270.while.end_crit_edge

if.else270.while.end_crit_edge:                   ; preds = %if.else270
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.else270
  %shr.i527 = lshr exact i64 %shl279, 32
  %conv.i528 = trunc i64 %shr.i527 to i32
  %mul292.neg = shl i64 %conv278, 38
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %aSig64.0892 = phi i64 [ %shl277, %while.body.lr.ph ], [ %shl293.neg, %while.cond.while.body_crit_edge ]
  %expDiff.0891 = phi i32 [ %sub280, %while.body.lr.ph ], [ %sub295, %while.cond.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %shl279, i64 %aSig64.0892)
  %cmp.not.i526 = icmp ugt i64 %shl279, %aSig64.0892
  br i1 %cmp.not.i526, label %if.else172.i, label %while.body.estimateDiv128To64.exit.thread_crit_edge

while.body.estimateDiv128To64.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %estimateDiv128To64.exit.thread

if.else172.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %aSig64.0892)
  %cmp174.i = icmp eq i64 %aSig64.0892, 0
  br i1 %cmp174.i, label %if.else172.i.if.end191.i_crit_edge, label %if.else184.i, !prof !38

if.else172.i.if.end191.i_crit_edge:               ; preds = %if.else172.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191.i

if.else184.i:                                     ; preds = %if.else172.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i528, i64 %aSig64.0892) #11, !srcloc !37
  %asmresult1.i.i = extractvalue { i64, i64 } %24, 1
  br label %if.end191.i

if.end191.i:                                      ; preds = %if.else184.i, %if.else172.i.if.end191.i_crit_edge
  %z.0.i = phi i64 [ %asmresult1.i.i, %if.else184.i ], [ 0, %if.else172.i.if.end191.i_crit_edge ]
  %shl190.i = shl i64 %z.0.i, 32
  %shr3.i.i = and i64 %z.0.i, 4294967295
  %mul15.i.i = mul nuw i64 %shr3.i.i, %shr.i527
  %sub1.i.i = sub i64 %aSig64.0892, %mul15.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub1.i.i)
  %cmp192688.i = icmp slt i64 %sub1.i.i, 0
  br i1 %cmp192688.i, label %if.end191.i.while.body.i_crit_edge, label %if.end191.i.while.end.i_crit_edge

if.end191.i.while.end.i_crit_edge:                ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end191.i.while.body.i_crit_edge:               ; preds = %if.end191.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end191.i.while.body.i_crit_edge
  %z.1691.i = phi i64 [ %sub194.i, %while.body.i.while.body.i_crit_edge ], [ %shl190.i, %if.end191.i.while.body.i_crit_edge ]
  %rem0.0689.i = phi i64 [ %add1.i.i, %while.body.i.while.body.i_crit_edge ], [ %sub1.i.i, %if.end191.i.while.body.i_crit_edge ]
  %sub194.i = add i64 %z.1691.i, -4294967296
  %add1.i.i = add i64 %rem0.0689.i, %shr.i527
  %cmp192.i = icmp slt i64 %add1.i.i, 0
  br i1 %cmp192.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end191.i.while.end.i_crit_edge
  %rem0.0.lcssa.i = phi i64 [ %sub1.i.i, %if.end191.i.while.end.i_crit_edge ], [ %add1.i.i, %while.body.i.while.end.i_crit_edge ]
  %z.1.lcssa.i = phi i64 [ %shl190.i, %if.end191.i.while.end.i_crit_edge ], [ %sub194.i, %while.body.i.while.end.i_crit_edge ]
  %or198.i = shl i64 %rem0.0.lcssa.i, 32
  call void @__sanitizer_cov_trace_cmp8(i64 %shl279, i64 %or198.i)
  %cmp200.not.i = icmp ugt i64 %shl279, %or198.i
  br i1 %cmp200.not.i, label %if.else405.i, label %if.then202.i

if.then202.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %or203.i = or i64 %z.1.lcssa.i, 4294967295
  br label %estimateDiv128To64.exit.thread

if.else405.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or198.i)
  %cmp407.i = icmp eq i64 %or198.i, 0
  br i1 %cmp407.i, label %if.else405.i.estimateDiv128To64.exit_crit_edge, label %if.else421.i, !prof !38

if.else405.i.estimateDiv128To64.exit_crit_edge:   ; preds = %if.else405.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %estimateDiv128To64.exit

if.else421.i:                                     ; preds = %if.else405.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i528, i64 %or198.i) #11, !srcloc !37
  %asmresult1.i635.i = extractvalue { i64, i64 } %25, 1
  br label %estimateDiv128To64.exit

estimateDiv128To64.exit:                          ; preds = %if.else421.i, %if.else405.i.estimateDiv128To64.exit_crit_edge
  %rem0.1.i = phi i64 [ %asmresult1.i635.i, %if.else421.i ], [ 0, %if.else405.i.estimateDiv128To64.exit_crit_edge ]
  %or427.i = or i64 %rem0.1.i, %z.1.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %or427.i)
  %cmp284 = icmp ugt i64 %or427.i, 2
  br i1 %cmp284, label %estimateDiv128To64.exit.estimateDiv128To64.exit.thread_crit_edge, label %estimateDiv128To64.exit.while.cond_crit_edge

estimateDiv128To64.exit.while.cond_crit_edge:     ; preds = %estimateDiv128To64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

estimateDiv128To64.exit.estimateDiv128To64.exit.thread_crit_edge: ; preds = %estimateDiv128To64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %estimateDiv128To64.exit.thread

estimateDiv128To64.exit.thread:                   ; preds = %estimateDiv128To64.exit.estimateDiv128To64.exit.thread_crit_edge, %if.then202.i, %while.body.estimateDiv128To64.exit.thread_crit_edge
  %retval.0.i529.ph.pn = phi i64 [ %or427.i, %estimateDiv128To64.exit.estimateDiv128To64.exit.thread_crit_edge ], [ %or203.i, %if.then202.i ], [ -1, %while.body.estimateDiv128To64.exit.thread_crit_edge ]
  %sub287.neg873 = sub i64 2, %retval.0.i529.ph.pn
  br label %while.cond

while.cond:                                       ; preds = %estimateDiv128To64.exit.thread, %estimateDiv128To64.exit.while.cond_crit_edge
  %26 = phi i64 [ %sub287.neg873, %estimateDiv128To64.exit.thread ], [ 0, %estimateDiv128To64.exit.while.cond_crit_edge ]
  %shl293.neg = mul i64 %mul292.neg, %26
  %sub295 = add i32 %expDiff.0891, -62
  %cmp281 = icmp sgt i32 %sub295, 0
  br i1 %cmp281, label %while.cond.while.body_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.else270.while.end_crit_edge
  %expDiff.0.lcssa = phi i32 [ %sub280, %if.else270.while.end_crit_edge ], [ %sub295, %while.cond.while.end_crit_edge ]
  %aSig64.0.lcssa = phi i64 [ %shl277, %if.else270.while.end_crit_edge ], [ %shl293.neg, %while.cond.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %shl279, i64 %aSig64.0.lcssa)
  %cmp.not.i530 = icmp ugt i64 %shl279, %aSig64.0.lcssa
  br i1 %cmp.not.i530, label %if.else.i536, label %while.end.estimateDiv128To64.exit817.thread_crit_edge

while.end.estimateDiv128To64.exit817.thread_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %estimateDiv128To64.exit817.thread

if.else.i536:                                     ; preds = %while.end
  %shr.i531 = lshr exact i64 %shl279, 32
  %conv.i534 = trunc i64 %shr.i531 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %aSig64.0.lcssa)
  %cmp174.i647 = icmp eq i64 %aSig64.0.lcssa, 0
  br i1 %cmp174.i647, label %if.else.i536.if.end191.i671_crit_edge, label %if.else184.i654, !prof !38

if.else.i536.if.end191.i671_crit_edge:            ; preds = %if.else.i536
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191.i671

if.else184.i654:                                  ; preds = %if.else.i536
  call void @__sanitizer_cov_trace_pc() #10
  %27 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i534, i64 %aSig64.0.lcssa) #11, !srcloc !37
  %asmresult1.i.i653 = extractvalue { i64, i64 } %27, 1
  br label %if.end191.i671

if.end191.i671:                                   ; preds = %if.else184.i654, %if.else.i536.if.end191.i671_crit_edge
  %z.0.i655 = phi i64 [ %asmresult1.i.i653, %if.else184.i654 ], [ 0, %if.else.i536.if.end191.i671_crit_edge ]
  %shl190.i656 = shl i64 %z.0.i655, 32
  %shr3.i.i659 = and i64 %z.0.i655, 4294967295
  %mul15.i.i662 = mul nuw i64 %shr3.i.i659, %shr.i531
  %sub1.i.i668 = sub i64 %aSig64.0.lcssa, %mul15.i.i662
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub1.i.i668)
  %cmp192688.i670 = icmp slt i64 %sub1.i.i668, 0
  br i1 %cmp192688.i670, label %if.end191.i671.while.body.i683_crit_edge, label %if.end191.i671.while.end.i689_crit_edge

if.end191.i671.while.end.i689_crit_edge:          ; preds = %if.end191.i671
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i689

if.end191.i671.while.body.i683_crit_edge:         ; preds = %if.end191.i671
  br label %while.body.i683

while.body.i683:                                  ; preds = %while.body.i683.while.body.i683_crit_edge, %if.end191.i671.while.body.i683_crit_edge
  %z.1691.i674 = phi i64 [ %sub194.i677, %while.body.i683.while.body.i683_crit_edge ], [ %shl190.i656, %if.end191.i671.while.body.i683_crit_edge ]
  %rem0.0689.i676 = phi i64 [ %add1.i.i679, %while.body.i683.while.body.i683_crit_edge ], [ %sub1.i.i668, %if.end191.i671.while.body.i683_crit_edge ]
  %sub194.i677 = add i64 %z.1691.i674, -4294967296
  %add1.i.i679 = add i64 %rem0.0689.i676, %shr.i531
  %cmp192.i682 = icmp slt i64 %add1.i.i679, 0
  br i1 %cmp192.i682, label %while.body.i683.while.body.i683_crit_edge, label %while.body.i683.while.end.i689_crit_edge

while.body.i683.while.end.i689_crit_edge:         ; preds = %while.body.i683
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i689

while.body.i683.while.body.i683_crit_edge:        ; preds = %while.body.i683
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i683

while.end.i689:                                   ; preds = %while.body.i683.while.end.i689_crit_edge, %if.end191.i671.while.end.i689_crit_edge
  %rem0.0.lcssa.i684 = phi i64 [ %sub1.i.i668, %if.end191.i671.while.end.i689_crit_edge ], [ %add1.i.i679, %while.body.i683.while.end.i689_crit_edge ]
  %z.1.lcssa.i686 = phi i64 [ %shl190.i656, %if.end191.i671.while.end.i689_crit_edge ], [ %sub194.i677, %while.body.i683.while.end.i689_crit_edge ]
  %or198.i687 = shl i64 %rem0.0.lcssa.i684, 32
  call void @__sanitizer_cov_trace_cmp8(i64 %shl279, i64 %or198.i687)
  %cmp200.not.i688 = icmp ugt i64 %shl279, %or198.i687
  br i1 %cmp200.not.i688, label %if.else405.i806, label %if.then202.i691

if.then202.i691:                                  ; preds = %while.end.i689
  call void @__sanitizer_cov_trace_pc() #10
  %or203.i690 = or i64 %z.1.lcssa.i686, 4294967295
  %phi.bo = add nsw i64 %or203.i690, -2
  br label %estimateDiv128To64.exit817.thread

if.else405.i806:                                  ; preds = %while.end.i689
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or198.i687)
  %cmp407.i805 = icmp eq i64 %or198.i687, 0
  br i1 %cmp407.i805, label %if.else405.i806.estimateDiv128To64.exit817_crit_edge, label %if.else421.i812, !prof !38

if.else405.i806.estimateDiv128To64.exit817_crit_edge: ; preds = %if.else405.i806
  call void @__sanitizer_cov_trace_pc() #10
  br label %estimateDiv128To64.exit817

if.else421.i812:                                  ; preds = %if.else405.i806
  call void @__sanitizer_cov_trace_pc() #10
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i534, i64 %or198.i687) #11, !srcloc !37
  %asmresult1.i635.i811 = extractvalue { i64, i64 } %28, 1
  br label %estimateDiv128To64.exit817

estimateDiv128To64.exit817:                       ; preds = %if.else421.i812, %if.else405.i806.estimateDiv128To64.exit817_crit_edge
  %rem0.1.i813 = phi i64 [ %asmresult1.i635.i811, %if.else421.i812 ], [ 0, %if.else405.i806.estimateDiv128To64.exit817_crit_edge ]
  %or427.i814 = or i64 %rem0.1.i813, %z.1.lcssa.i686
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %or427.i814)
  %cmp298 = icmp ugt i64 %or427.i814, 2
  %sub301 = add i64 %or427.i814, -2
  br i1 %cmp298, label %estimateDiv128To64.exit817.estimateDiv128To64.exit817.thread_crit_edge, label %estimateDiv128To64.exit817._crit_edge

estimateDiv128To64.exit817._crit_edge:            ; preds = %estimateDiv128To64.exit817
  call void @__sanitizer_cov_trace_pc() #10
  br label %29

estimateDiv128To64.exit817.estimateDiv128To64.exit817.thread_crit_edge: ; preds = %estimateDiv128To64.exit817
  call void @__sanitizer_cov_trace_pc() #10
  br label %estimateDiv128To64.exit817.thread

estimateDiv128To64.exit817.thread:                ; preds = %estimateDiv128To64.exit817.estimateDiv128To64.exit817.thread_crit_edge, %if.then202.i691, %while.end.estimateDiv128To64.exit817.thread_crit_edge
  %sub301877 = phi i64 [ %sub301, %estimateDiv128To64.exit817.estimateDiv128To64.exit817.thread_crit_edge ], [ %phi.bo, %if.then202.i691 ], [ -3, %while.end.estimateDiv128To64.exit817.thread_crit_edge ]
  br label %29

29:                                               ; preds = %estimateDiv128To64.exit817.thread, %estimateDiv128To64.exit817._crit_edge
  %30 = phi i64 [ %sub301877, %estimateDiv128To64.exit817.thread ], [ 0, %estimateDiv128To64.exit817._crit_edge ]
  %sub305 = sub i32 0, %expDiff.0.lcssa
  %sh_prom306 = zext i32 %sub305 to i64
  %shr307 = lshr i64 %30, %sh_prom306
  %conv308 = trunc i64 %shr307 to i32
  %shl309 = shl i32 %or41, 6
  %shr310 = lshr exact i64 %aSig64.0.lcssa, 33
  %sub311 = add i32 %expDiff.0.lcssa, 63
  %sh_prom312 = zext i32 %sub311 to i64
  %shl313 = shl i64 %shr310, %sh_prom312
  %mul314 = mul i32 %shl309, %conv308
  %31 = trunc i64 %shl313 to i32
  %conv317 = sub i32 %31, %mul314
  br label %if.end318

if.end318:                                        ; preds = %29, %if.else266, %if.end255
  %aSig.4 = phi i32 [ %sub265, %if.end255 ], [ %shr267, %if.else266 ], [ %conv317, %29 ]
  %bSig.1 = phi i32 [ %shr260, %if.end255 ], [ %shr268, %if.else266 ], [ %shl309, %29 ]
  %q.0 = phi i32 [ %shr259, %if.end255 ], [ %conv55, %if.else266 ], [ %conv308, %29 ]
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end318
  %aSig.5 = phi i32 [ %aSig.4, %if.end318 ], [ %sub319, %do.body.do.body_crit_edge ]
  %q.1 = phi i32 [ %q.0, %if.end318 ], [ %inc, %do.body.do.body_crit_edge ]
  %inc = add i32 %q.1, 1
  %sub319 = sub i32 %aSig.5, %bSig.1
  %cmp320 = icmp sgt i32 %sub319, -1
  br i1 %cmp320, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %do.body
  %add322 = add i32 %sub319, %aSig.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add322)
  %cmp323 = icmp slt i32 %add322, 0
  br i1 %cmp323, label %do.end.if.end332_crit_edge, label %lor.lhs.false325

do.end.if.end332_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end332

lor.lhs.false325:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add322)
  %cmp326 = icmp ne i32 %add322, 0
  %and329 = and i32 %inc, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and329)
  %tobool330.not = icmp eq i32 %and329, 0
  %or.cond = select i1 %cmp326, i1 true, i1 %tobool330.not
  br i1 %or.cond, label %lor.lhs.false325.if.then337_crit_edge, label %lor.lhs.false325.if.end332_crit_edge

lor.lhs.false325.if.end332_crit_edge:             ; preds = %lor.lhs.false325
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end332

lor.lhs.false325.if.then337_crit_edge:            ; preds = %lor.lhs.false325
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then337

if.end332:                                        ; preds = %lor.lhs.false325.if.end332_crit_edge, %do.end.if.end332_crit_edge
  %.lobit = lshr i32 %aSig.5, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %aSig.5)
  %tobool336.not = icmp sgt i32 %aSig.5, -1
  br i1 %tobool336.not, label %if.end332.if.end339_crit_edge, label %if.end332.if.then337_crit_edge

if.end332.if.then337_crit_edge:                   ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then337

if.end332.if.end339_crit_edge:                    ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end339

if.then337:                                       ; preds = %if.end332.if.then337_crit_edge, %lor.lhs.false325.if.then337_crit_edge
  %.lobit882 = phi i32 [ %.lobit, %if.end332.if.then337_crit_edge ], [ 1, %lor.lhs.false325.if.then337_crit_edge ]
  %aSig.6881 = phi i32 [ %aSig.5, %if.end332.if.then337_crit_edge ], [ %sub319, %lor.lhs.false325.if.then337_crit_edge ]
  %sub338 = sub i32 0, %aSig.6881
  br label %if.end339

if.end339:                                        ; preds = %if.then337, %if.end332.if.end339_crit_edge
  %.lobit883 = phi i32 [ %.lobit, %if.end332.if.end339_crit_edge ], [ %.lobit882, %if.then337 ]
  %aSig.7 = phi i32 [ %aSig.5, %if.end332.if.end339_crit_edge ], [ %sub338, %if.then337 ]
  %conv342886 = xor i32 %.lobit883, %shr.i485
  %conv342 = trunc i32 %conv342886 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %aSig.7)
  %cmp.i.i818 = icmp ult i32 %aSig.7, 65536
  %shl.i.i819 = shl i32 %aSig.7, 16
  %spec.select.i.i820 = select i1 %cmp.i.i818, i32 %shl.i.i819, i32 %aSig.7
  %spec.select21.i.i821 = select i1 %cmp.i.i818, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i820)
  %cmp2.i.i822 = icmp ult i32 %spec.select.i.i820, 16777216
  %32 = or i8 %spec.select21.i.i821, 8
  %shl8.i.i823 = shl i32 %spec.select.i.i820, 8
  %a.addr.1.i.i824 = select i1 %cmp2.i.i822, i32 %shl8.i.i823, i32 %spec.select.i.i820
  %shiftCount.1.i.i825 = select i1 %cmp2.i.i822, i8 %32, i8 %spec.select21.i.i821
  %shr.i.i826 = lshr i32 %a.addr.1.i.i824, 24
  %arrayidx.i.i827 = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i826
  %33 = ptrtoint ptr %arrayidx.i.i827 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i827, align 1
  %add12.i.i828 = add i8 %34, -1
  %sub.i829 = add i8 %add12.i.i828, %shiftCount.1.i.i825
  %conv2.i830 = sext i8 %sub.i829 to i32
  %sub3.i = sub nsw i32 %bExp.0, %conv2.i830
  %shl.i831 = shl i32 %aSig.7, %conv2.i830
  %call5.i = tail call fastcc i32 @roundAndPackFloat32(ptr noundef %roundData, i8 noundef zeroext %conv342, i32 noundef %sub3.i, i32 noundef %shl.i831) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end339, %if.then48.cleanup_crit_edge, %if.then34.cleanup_crit_edge, %if.then25, %propagateFloat32NaN.exit506, %if.then14.cleanup_crit_edge, %if.end, %propagateFloat32NaN.exit
  %retval.0 = phi i32 [ %retval.0.i, %propagateFloat32NaN.exit ], [ -1, %if.end ], [ %retval.0.i505, %propagateFloat32NaN.exit506 ], [ -1, %if.then25 ], [ %call5.i, %if.end339 ], [ %a, %if.then14.cleanup_crit_edge ], [ %a, %if.then34.cleanup_crit_edge ], [ %a, %if.then48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @float32_sqrt(ptr nocapture noundef %roundData, i32 noundef %a) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %a, 8388607
  %shr.i = lshr i32 %a, 23
  %and.i75 = and i32 %shr.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i75)
  %cmp = icmp eq i32 %and.i75, 255
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %0 = and i32 %a, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %0)
  %cmp.i25.i = icmp eq i32 %0, 2139095040
  %and1.i.i = and i32 %a, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.i = icmp ne i32 %and1.i.i, 0
  %1 = and i1 %cmp.i25.i, %tobool.i.i
  br i1 %1, label %if.then.i, label %if.then3.propagateFloat32NaN.exit_crit_edge

if.then3.propagateFloat32NaN.exit_crit_edge:      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat32NaN.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat32NaN.exit

propagateFloat32NaN.exit:                         ; preds = %if.then.i, %if.then3.propagateFloat32NaN.exit_crit_edge
  %shl.i.i = shl i32 %a, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777215, i32 %shl.i.i)
  %cmp.i.i = icmp ult i32 %shl.i.i, -16777215
  %a.op = or i32 %a, 4194304
  %retval.0.i = select i1 %cmp.i.i, i32 4194304, i32 %a.op
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %a)
  %tobool5.not = icmp sgt i32 %a, -1
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %exception = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %2 = ptrtoint ptr %exception to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %exception, align 1
  %4 = or i8 %3, 1
  store i8 %4, ptr %exception, align 1
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %a)
  %tobool10.not = icmp sgt i32 %a, -1
  br i1 %tobool10.not, label %if.end21, label %if.then11

if.then11:                                        ; preds = %if.end9
  %or12 = or i32 %and.i75, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or12)
  %cmp13 = icmp eq i32 %or12, 0
  br i1 %cmp13, label %if.then11.cleanup_crit_edge, label %if.end16

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %exception17 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %5 = ptrtoint ptr %exception17 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %exception17, align 1
  %7 = or i8 %6, 1
  store i8 %7, ptr %exception17, align 1
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i75)
  %cmp22 = icmp eq i32 %and.i75, 0
  br i1 %cmp22, label %if.then24, label %if.end21.if.end29_crit_edge

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp25 = icmp eq i32 %and.i, 0
  br i1 %cmp25, label %if.then24.cleanup_crit_edge, label %if.end28

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %and.i)
  %cmp.i.i77 = icmp ult i32 %and.i, 65536
  %shl.i.i78 = shl i32 %a, 16
  %spec.select.i.i = select i1 %cmp.i.i77, i32 %shl.i.i78, i32 %and.i
  %spec.select21.i.i = select i1 %cmp.i.i77, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i)
  %cmp2.i.i = icmp ult i32 %spec.select.i.i, 16777216
  %8 = or i8 %spec.select21.i.i, 8
  %shl8.i.i = shl i32 %spec.select.i.i, 8
  %a.addr.1.i.i = select i1 %cmp2.i.i, i32 %shl8.i.i, i32 %spec.select.i.i
  %shiftCount.1.i.i = select i1 %cmp2.i.i, i8 %8, i8 %spec.select21.i.i
  %shr.i.i = lshr i32 %a.addr.1.i.i, 24
  %arrayidx.i.i = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i, align 1
  %add12.i.i = add nsw i8 %shiftCount.1.i.i, -8
  %sub.i = add i8 %add12.i.i, %10
  %conv2.i = sext i8 %sub.i to i32
  %shl.i = shl i32 %and.i, %conv2.i
  %sub4.i = sub nsw i32 1, %conv2.i
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end21.if.end29_crit_edge
  %aExp.0 = phi i32 [ %sub4.i, %if.end28 ], [ %and.i75, %if.end21.if.end29_crit_edge ]
  %aSig.0 = phi i32 [ %shl.i, %if.end28 ], [ %and.i, %if.end21.if.end29_crit_edge ]
  %sub = add nsw i32 %aExp.0, -127
  %shr = ashr i32 %sub, 1
  %add = add nsw i32 %shr, 126
  %or30 = shl i32 %aSig.0, 8
  %shl = or i32 %or30, -2147483648
  %shr.i79 = lshr i32 %or30, 27
  %11 = trunc i32 %shr.i79 to i8
  %conv.i80 = and i8 %11, 15
  %and1.i = and i32 %aExp.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %shr7.i = lshr i32 %shl, 17
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i83

if.then.i83:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %shr7.i, 16384
  %12 = zext i8 %conv.i80 to i32
  %arrayidx.i = getelementptr [16 x i16], ptr @estimateSqrt32.sqrtOddAdjustments, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i, align 2
  %conv3.i = zext i16 %14 to i32
  %sub.i81 = sub nsw i32 %add.i, %conv3.i
  %div.i = udiv i32 %shl, %sub.i81
  %shl.i82 = shl i32 %div.i, 14
  %shl4.i = shl nsw i32 %sub.i81, 15
  %add5.i = add i32 %shl4.i, %shl.i82
  %shr6.i = lshr exact i32 %shl, 1
  br label %if.else214.i

if.else.i:                                        ; preds = %if.end29
  %add8.i = or i32 %shr7.i, 32768
  %15 = zext i8 %conv.i80 to i32
  %arrayidx10.i = getelementptr [16 x i16], ptr @estimateSqrt32.sqrtEvenAdjustments, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx10.i, align 2
  %conv11.i = zext i16 %17 to i32
  %sub12.i = sub nsw i32 %add8.i, %conv11.i
  %div13.i = udiv i32 %shl, %sub12.i
  %add14.i = add i32 %sub12.i, %div13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %add14.i)
  %cmp.i = icmp ugt i32 %add14.i, 131071
  %shl16.i = shl i32 %add14.i, 15
  %spec.select.i = select i1 %cmp.i, i32 -32768, i32 %shl16.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %shl)
  %cmp17.not.i = icmp ugt i32 %spec.select.i, %shl
  br i1 %cmp17.not.i, label %if.else.i.if.else214.i_crit_edge, label %if.then19.i

if.else.i.if.else214.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else214.i

if.then19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr20.i = ashr exact i32 %shl, 1
  br label %estimateSqrt32.exit

if.else214.i:                                     ; preds = %if.else.i.if.else214.i_crit_edge, %if.then.i83
  %z.0.i = phi i32 [ %add5.i, %if.then.i83 ], [ %spec.select.i, %if.else.i.if.else214.i_crit_edge ]
  %a.addr.0.i = phi i32 [ %shr6.i, %if.then.i83 ], [ %shl, %if.else.i.if.else214.i_crit_edge ]
  %conv22.i = zext i32 %a.addr.0.i to i64
  %shl23.i = shl nuw nsw i64 %conv22.i, 31
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %z.0.i, i64 %shl23.i) #11, !srcloc !37
  %asmresult1.i.i = extractvalue { i64, i64 } %18, 1
  %extract.t = trunc i64 %asmresult1.i.i to i32
  %shr221.i = lshr i32 %z.0.i, 1
  %add222.i = add i32 %shr221.i, %extract.t
  br label %estimateSqrt32.exit

estimateSqrt32.exit:                              ; preds = %if.else214.i, %if.then19.i
  %retval.0.i84 = phi i32 [ %add222.i, %if.else214.i ], [ %shr20.i, %if.then19.i ]
  %add32 = add i32 %retval.0.i84, 2
  %and = and i32 %add32, 126
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and)
  %cmp33 = icmp ult i32 %and, 6
  br i1 %cmp33, label %if.then35, label %estimateSqrt32.exit.if.end56_crit_edge

estimateSqrt32.exit.if.end56_crit_edge:           ; preds = %estimateSqrt32.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then35:                                        ; preds = %estimateSqrt32.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %retval.0.i84)
  %cmp36 = icmp ugt i32 %retval.0.i84, -3
  br i1 %cmp36, label %if.then35.if.end56_crit_edge, label %if.else

if.then35.if.end56_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.else:                                          ; preds = %if.then35
  %shr40 = lshr i32 %shl, %and1.i
  %conv41 = zext i32 %add32 to i64
  %mul = mul nuw i64 %conv41, %conv41
  %conv43 = zext i32 %shr40 to i64
  %shl44 = shl nuw i64 %conv43, 32
  %sub45 = sub i64 %shl44, %mul
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub45)
  %cmp46101 = icmp slt i64 %sub45, 0
  br i1 %cmp46101, label %if.else.while.body_crit_edge, label %if.else.while.end_crit_edge

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.else.while.body_crit_edge:                     ; preds = %if.else
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.else.while.body_crit_edge
  %rem.0103 = phi i64 [ %add51, %while.body.while.body_crit_edge ], [ %sub45, %if.else.while.body_crit_edge ]
  %zSig.0102 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %add32, %if.else.while.body_crit_edge ]
  %dec = add i32 %zSig.0102, -1
  %conv48 = zext i32 %dec to i64
  %shl49 = shl nuw nsw i64 %conv48, 1
  %or50 = add nsw i64 %rem.0103, 1
  %add51 = add nsw i64 %or50, %shl49
  %cmp46 = icmp slt i64 %add51, 0
  br i1 %cmp46, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.else.while.end_crit_edge
  %zSig.0.lcssa = phi i32 [ %add32, %if.else.while.end_crit_edge ], [ %dec, %while.body.while.end_crit_edge ]
  %rem.0.lcssa = phi i64 [ %sub45, %if.else.while.end_crit_edge ], [ %add51, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem.0.lcssa)
  %cmp52 = icmp ne i64 %rem.0.lcssa, 0
  %conv53 = zext i1 %cmp52 to i32
  %or54 = or i32 %zSig.0.lcssa, %conv53
  br label %if.end56

if.end56:                                         ; preds = %while.end, %if.then35.if.end56_crit_edge, %estimateSqrt32.exit.if.end56_crit_edge
  %zSig.1 = phi i32 [ %or54, %while.end ], [ %add32, %estimateSqrt32.exit.if.end56_crit_edge ], [ -1, %if.then35.if.end56_crit_edge ]
  %shr.i86 = lshr i32 %zSig.1, 1
  %shl.i87.mask = and i32 %zSig.1, 1
  %or.i = or i32 %shr.i86, %shl.i87.mask
  %call57 = tail call fastcc i32 @roundAndPackFloat32(ptr noundef %roundData, i8 noundef zeroext 0, i32 noundef %add, i32 noundef %or.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then24.cleanup_crit_edge, %if.end16, %if.then11.cleanup_crit_edge, %if.end7, %if.end.cleanup_crit_edge, %propagateFloat32NaN.exit
  %retval.0 = phi i32 [ %retval.0.i, %propagateFloat32NaN.exit ], [ -1, %if.end7 ], [ -1, %if.end16 ], [ %call57, %if.end56 ], [ %a, %if.end.cleanup_crit_edge ], [ %a, %if.then11.cleanup_crit_edge ], [ 0, %if.then24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @float32_eq(i32 noundef %a, i32 noundef %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %a, 2139095040
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %0)
  %cmp = icmp ne i32 %0, 2139095040
  %and.i28 = and i32 %a, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %tobool.not = icmp eq i32 %and.i28, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = and i32 %b, 2139095040
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %1)
  %cmp3 = icmp ne i32 %1, 2139095040
  %and.i31 = and i32 %b, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31)
  %tobool6.not = icmp eq i32 %and.i31, 0
  %or.cond36 = or i1 %cmp3, %tobool6.not
  br i1 %or.cond36, label %if.end14, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = and i32 %a, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %2)
  %cmp.i = icmp ne i32 %2, 2139095040
  %and1.i = and i32 %a, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.i = icmp eq i32 %and1.i, 0
  %tobool8.not = or i1 %cmp.i, %tobool.i
  br i1 %tobool8.not, label %lor.lhs.false9, label %if.then.if.then13_crit_edge

if.then.if.then13_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

lor.lhs.false9:                                   ; preds = %if.then
  %3 = and i32 %b, 2143289344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %3)
  %cmp.i32 = icmp ne i32 %3, 2139095040
  %and1.i33 = and i32 %b, 4194303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i33)
  %tobool.i34 = icmp eq i32 %and1.i33, 0
  %tobool12.not = or i1 %cmp.i32, %tobool.i34
  br i1 %tobool12.not, label %lor.lhs.false9.return_crit_edge, label %lor.lhs.false9.if.then13_crit_edge

lor.lhs.false9.if.then13_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

lor.lhs.false9.return_crit_edge:                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then13:                                        ; preds = %lor.lhs.false9.if.then13_crit_edge, %if.then.if.then13_crit_edge
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %return

if.end14:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %a, i32 %b)
  %cmp15 = icmp eq i32 %a, %b
  %or = or i32 %b, %a
  %shl.mask = and i32 %or, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.mask)
  %cmp17 = icmp eq i32 %shl.mask, 0
  %4 = or i1 %cmp15, %cmp17
  %conv19 = zext i1 %4 to i8
  br label %return

return:                                           ; preds = %if.end14, %if.then13, %lor.lhs.false9.return_crit_edge
  %retval.0 = phi i8 [ %conv19, %if.end14 ], [ 0, %if.then13 ], [ 0, %lor.lhs.false9.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @float32_le(i32 noundef %a, i32 noundef %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %a, 2139095040
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %0)
  %cmp = icmp ne i32 %0, 2139095040
  %and.i42 = and i32 %a, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %tobool.not = icmp eq i32 %and.i42, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = and i32 %b, 2139095040
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %1)
  %cmp3 = icmp ne i32 %1, 2139095040
  %and.i45 = and i32 %b, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool6.not = icmp eq i32 %and.i45, 0
  %or.cond49 = or i1 %cmp3, %tobool6.not
  br i1 %or.cond49, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %shr.i46 = lshr i32 %a, 31
  %conv.i = trunc i32 %shr.i46 to i8
  %shr.i47 = lshr i32 %b, 31
  %conv.i48 = trunc i32 %shr.i47 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i, i8 %conv.i48)
  %cmp10.not = icmp eq i8 %conv.i, %conv.i48
  br i1 %cmp10.not, label %if.end18, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %a)
  %tobool14.not = icmp slt i32 %a, 0
  %or = or i32 %b, %a
  %shl.mask = and i32 %or, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.mask)
  %cmp15 = icmp eq i32 %shl.mask, 0
  %2 = or i1 %tobool14.not, %cmp15
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %a, i32 %b)
  %cmp19 = icmp eq i32 %a, %b
  call void @__sanitizer_cov_trace_cmp4(i32 %a, i32 %b)
  %cmp23 = icmp ult i32 %a, %b
  %3 = zext i1 %cmp23 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i, i8 %3)
  %tobool25 = icmp ne i8 %conv.i, %3
  %4 = or i1 %cmp19, %tobool25
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then12, %if.then
  %retval.0.shrunk = phi i1 [ false, %if.then ], [ %2, %if.then12 ], [ %4, %if.end18 ]
  %retval.0 = zext i1 %retval.0.shrunk to i8
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @float32_lt(i32 noundef %a, i32 noundef %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %a, 2139095040
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %0)
  %cmp = icmp ne i32 %0, 2139095040
  %and.i42 = and i32 %a, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %tobool.not = icmp eq i32 %and.i42, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = and i32 %b, 2139095040
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %1)
  %cmp3 = icmp ne i32 %1, 2139095040
  %and.i45 = and i32 %b, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool6.not = icmp eq i32 %and.i45, 0
  %or.cond49 = or i1 %cmp3, %tobool6.not
  br i1 %or.cond49, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %shr.i46 = lshr i32 %a, 31
  %conv.i = trunc i32 %shr.i46 to i8
  %shr.i47 = lshr i32 %b, 31
  %conv.i48 = trunc i32 %shr.i47 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i, i8 %conv.i48)
  %cmp10.not = icmp eq i8 %conv.i, %conv.i48
  br i1 %cmp10.not, label %if.end18, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %a)
  %tobool14.not = icmp slt i32 %a, 0
  %or = or i32 %b, %a
  %shl.mask = and i32 %or, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.mask)
  %cmp15 = icmp ne i32 %shl.mask, 0
  %2 = and i1 %tobool14.not, %cmp15
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %a, i32 %b)
  %cmp19.not = icmp ne i32 %a, %b
  call void @__sanitizer_cov_trace_cmp4(i32 %a, i32 %b)
  %cmp23 = icmp ult i32 %a, %b
  %3 = zext i1 %cmp23 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i, i8 %3)
  %tobool25 = icmp ne i8 %conv.i, %3
  %4 = and i1 %cmp19.not, %tobool25
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then12, %if.then
  %retval.0.shrunk = phi i1 [ false, %if.then ], [ %2, %if.then12 ], [ %4, %if.end18 ]
  %retval.0 = zext i1 %retval.0.shrunk to i8
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @float32_eq_signaling(i32 noundef %a, i32 noundef %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %a, 2139095040
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %0)
  %cmp = icmp ne i32 %0, 2139095040
  %and.i15 = and i32 %a, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15)
  %tobool.not = icmp eq i32 %and.i15, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = and i32 %b, 2139095040
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %1)
  %cmp3 = icmp ne i32 %1, 2139095040
  %and.i18 = and i32 %b, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %tobool6.not = icmp eq i32 %and.i18, 0
  %or.cond19 = or i1 %cmp3, %tobool6.not
  br i1 %or.cond19, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %a, i32 %b)
  %cmp7 = icmp eq i32 %a, %b
  %or = or i32 %b, %a
  %shl.mask = and i32 %or, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.mask)
  %cmp8 = icmp eq i32 %shl.mask, 0
  %2 = or i1 %cmp7, %cmp8
  %conv = zext i1 %2 to i8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ 0, %if.then ], [ %conv, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @float32_le_quiet(i32 noundef %a, i32 noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %a, 2139095040
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %0)
  %cmp = icmp ne i32 %0, 2139095040
  %and.i42 = and i32 %a, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %tobool.not = icmp eq i32 %and.i42, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = and i32 %b, 2139095040
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %1)
  %cmp3 = icmp ne i32 %1, 2139095040
  %and.i45 = and i32 %b, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool6.not = icmp eq i32 %and.i45, 0
  %or.cond49 = or i1 %cmp3, %tobool6.not
  br i1 %or.cond49, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %shr.i46 = lshr i32 %a, 31
  %conv.i = trunc i32 %shr.i46 to i8
  %shr.i47 = lshr i32 %b, 31
  %conv.i48 = trunc i32 %shr.i47 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i, i8 %conv.i48)
  %cmp10.not = icmp eq i8 %conv.i, %conv.i48
  br i1 %cmp10.not, label %if.end18, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %a)
  %tobool14.not = icmp slt i32 %a, 0
  %or = or i32 %b, %a
  %shl.mask = and i32 %or, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.mask)
  %cmp15 = icmp eq i32 %shl.mask, 0
  %2 = or i1 %tobool14.not, %cmp15
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %a, i32 %b)
  %cmp19 = icmp eq i32 %a, %b
  call void @__sanitizer_cov_trace_cmp4(i32 %a, i32 %b)
  %cmp23 = icmp ult i32 %a, %b
  %3 = zext i1 %cmp23 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i, i8 %3)
  %tobool25 = icmp ne i8 %conv.i, %3
  %4 = or i1 %cmp19, %tobool25
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then12, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.shrunk = phi i1 [ %2, %if.then12 ], [ %4, %if.end18 ], [ false, %entry.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ]
  %retval.0 = zext i1 %retval.0.shrunk to i8
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @float32_lt_quiet(i32 noundef %a, i32 noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %a, 2139095040
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %0)
  %cmp = icmp ne i32 %0, 2139095040
  %and.i42 = and i32 %a, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %tobool.not = icmp eq i32 %and.i42, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = and i32 %b, 2139095040
  call void @__sanitizer_cov_trace_const_cmp4(i32 2139095040, i32 %1)
  %cmp3 = icmp ne i32 %1, 2139095040
  %and.i45 = and i32 %b, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool6.not = icmp eq i32 %and.i45, 0
  %or.cond49 = or i1 %cmp3, %tobool6.not
  br i1 %or.cond49, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %shr.i46 = lshr i32 %a, 31
  %conv.i = trunc i32 %shr.i46 to i8
  %shr.i47 = lshr i32 %b, 31
  %conv.i48 = trunc i32 %shr.i47 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i, i8 %conv.i48)
  %cmp10.not = icmp eq i8 %conv.i, %conv.i48
  br i1 %cmp10.not, label %if.end18, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %a)
  %tobool14.not = icmp slt i32 %a, 0
  %or = or i32 %b, %a
  %shl.mask = and i32 %or, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.mask)
  %cmp15 = icmp ne i32 %shl.mask, 0
  %2 = and i1 %tobool14.not, %cmp15
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %a, i32 %b)
  %cmp19.not = icmp ne i32 %a, %b
  call void @__sanitizer_cov_trace_cmp4(i32 %a, i32 %b)
  %cmp23 = icmp ult i32 %a, %b
  %3 = zext i1 %cmp23 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i, i8 %3)
  %tobool25 = icmp ne i8 %conv.i, %3
  %4 = and i1 %cmp19.not, %tobool25
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then12, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.shrunk = phi i1 [ %2, %if.then12 ], [ %4, %if.end18 ], [ false, %entry.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ]
  %retval.0 = zext i1 %retval.0.shrunk to i8
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @float64_to_int32(ptr nocapture noundef %roundData, i64 noundef %a) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i64 %a, 4503599627370495
  %shr.i = lshr i64 %a, 52
  %0 = trunc i64 %shr.i to i32
  %conv.i = and i32 %0, 2047
  %shr.i15 = lshr i64 %a, 63
  %conv.i16 = trunc i64 %shr.i15 to i8
  %1 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %conv.i, label %if.end5 [
    i32 2047, label %if.end5.thread42
    i32 0, label %if.else.i.thread
  ]

if.else.i.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "@shift64RightJamming -- start", ""() #8, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %phi.cmp = icmp ne i64 %and.i, 0
  br label %if.else6.i

if.end5.thread42:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not = icmp eq i64 %and.i, 0
  %spec.select = select i1 %tobool.not, i8 %conv.i16, i8 0
  %or44 = or i64 %and.i, 4503599627370496
  br label %if.end8

if.end5:                                          ; preds = %entry
  %or = or i64 %and.i, 4503599627370496
  %sub.neg = add nuw nsw i32 %0, 20
  %sub = sub nsw i32 1068, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1068, i32 %conv.i)
  %cmp6 = icmp ult i32 %conv.i, 1068
  br i1 %cmp6, label %if.else.i, label %if.end5.if.end8_crit_edge

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.else.i:                                        ; preds = %if.end5
  tail call void asm sideeffect "@shift64RightJamming -- start", ""() #8, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub)
  %cmp1.i = icmp ult i32 %sub, 64
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i.if.else6.i_crit_edge

if.else.i.if.else6.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else6.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom.i = zext i32 %sub to i64
  %shr.i17 = lshr i64 %or, %sh_prom.i
  %and.i18 = and i32 %sub.neg, 63
  %sh_prom3.i = zext i32 %and.i18 to i64
  %shl.i = shl i64 %or, %sh_prom3.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i)
  %cmp4.i = icmp ne i64 %shl.i, 0
  %2 = zext i1 %cmp4.i to i64
  %or.i = or i64 %shr.i17, %2
  br label %shift64RightJamming.exit

if.else6.i:                                       ; preds = %if.else.i.if.else6.i_crit_edge, %if.else.i.thread
  %aSig.03953 = phi i1 [ %phi.cmp, %if.else.i.thread ], [ true, %if.else.i.if.else6.i_crit_edge ]
  %3 = zext i1 %aSig.03953 to i64
  br label %shift64RightJamming.exit

shift64RightJamming.exit:                         ; preds = %if.else6.i, %if.then2.i
  %z.0.i = phi i64 [ %or.i, %if.then2.i ], [ %3, %if.else6.i ]
  tail call void asm sideeffect "@shift64RightJamming -- end", ""() #8, !srcloc !18
  br label %if.end8

if.end8:                                          ; preds = %shift64RightJamming.exit, %if.end5.if.end8_crit_edge, %if.end5.thread42
  %aSign.03037 = phi i8 [ %conv.i16, %shift64RightJamming.exit ], [ %conv.i16, %if.end5.if.end8_crit_edge ], [ %spec.select, %if.end5.thread42 ]
  %aSig.1 = phi i64 [ %z.0.i, %shift64RightJamming.exit ], [ %or, %if.end5.if.end8_crit_edge ], [ %or44, %if.end5.thread42 ]
  %4 = ptrtoint ptr %roundData to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %roundData, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i19 = icmp eq i8 %5, 0
  br i1 %cmp.i19, label %if.end8.if.end21.i_crit_edge, label %if.then.i

if.end8.if.end21.i_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp4.i20 = icmp eq i8 %5, 1
  br i1 %cmp4.i20, label %if.then.i.if.end21.i_crit_edge, label %if.else.i21

if.then.i.if.end21.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.else.i21:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %aSign.03037)
  %tobool7.not.i = icmp eq i8 %aSign.03037, 0
  br i1 %tobool7.not.i, label %if.else13.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.else.i21
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp10.i = icmp eq i8 %5, 3
  %spec.select.i = select i1 %cmp10.i, i8 0, i8 127
  br label %if.end21.i

if.else13.i:                                      ; preds = %if.else.i21
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp15.i = icmp eq i8 %5, 2
  %spec.select79.i = select i1 %cmp15.i, i8 0, i8 127
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else13.i, %if.then8.i, %if.then.i.if.end21.i_crit_edge, %if.end8.if.end21.i_crit_edge
  %roundIncrement.0.i = phi i8 [ 64, %if.end8.if.end21.i_crit_edge ], [ 0, %if.then.i.if.end21.i_crit_edge ], [ %spec.select.i, %if.then8.i ], [ %spec.select79.i, %if.else13.i ]
  %6 = trunc i64 %aSig.1 to i8
  %conv22.i = and i8 %6, 127
  %7 = zext i8 %roundIncrement.0.i to i64
  %add.i = add i64 %aSig.1, %7
  %shr.i22 = lshr i64 %add.i, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %conv22.i)
  %cmp25.i = icmp eq i8 %conv22.i, 64
  %and2877.i = and i1 %cmp.i19, %cmp25.i
  %and28.i = zext i1 %and2877.i to i32
  %neg.i = xor i32 %and28.i, -1
  %8 = trunc i64 %shr.i22 to i32
  %conv31.i = and i32 %8, %neg.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %aSign.03037)
  %tobool32.not.i = icmp eq i8 %aSign.03037, 0
  %sub.i23 = sub i32 0, %conv31.i
  %spec.select80.i = select i1 %tobool32.not.i, i32 %conv31.i, i32 %sub.i23
  call void @__sanitizer_cov_trace_const_cmp8(i64 549755813888, i64 %add.i)
  %tobool36.not.i = icmp ult i64 %add.i, 549755813888
  br i1 %tobool36.not.i, label %lor.lhs.false.i, label %if.end21.i.if.then43.i_crit_edge

if.end21.i.if.then43.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43.i

lor.lhs.false.i:                                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select80.i)
  %tobool37.not.i = icmp eq i32 %spec.select80.i, 0
  %z.0.lobit.i = lshr i32 %spec.select80.i, 31
  %conv40.i = zext i8 %aSign.03037 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %z.0.lobit.i, i32 %conv40.i)
  %tobool42.not.i = icmp eq i32 %z.0.lobit.i, %conv40.i
  %or.cond.i = or i1 %tobool37.not.i, %tobool42.not.i
  br i1 %or.cond.i, label %if.end48.i, label %lor.lhs.false.i.if.then43.i_crit_edge

lor.lhs.false.i.if.then43.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43.i

if.then43.i:                                      ; preds = %lor.lhs.false.i.if.then43.i_crit_edge, %if.end21.i.if.then43.i_crit_edge
  %exception.i = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %9 = ptrtoint ptr %exception.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %exception.i, align 1
  %11 = or i8 %10, 1
  store i8 %11, ptr %exception.i, align 1
  %cond.i = select i1 %tobool32.not.i, i32 2147483647, i32 -2147483648
  br label %roundAndPackInt32.exit

if.end48.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv22.i)
  %tobool49.not.i = icmp eq i8 %conv22.i, 0
  br i1 %tobool49.not.i, label %if.end48.i.roundAndPackInt32.exit_crit_edge, label %if.then50.i

if.end48.i.roundAndPackInt32.exit_crit_edge:      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %roundAndPackInt32.exit

if.then50.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %exception51.i = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %12 = ptrtoint ptr %exception51.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %exception51.i, align 1
  %14 = or i8 %13, 16
  store i8 %14, ptr %exception51.i, align 1
  br label %roundAndPackInt32.exit

roundAndPackInt32.exit:                           ; preds = %if.then50.i, %if.end48.i.roundAndPackInt32.exit_crit_edge, %if.then43.i
  %retval.0.i = phi i32 [ %cond.i, %if.then43.i ], [ %spec.select80.i, %if.then50.i ], [ %spec.select80.i, %if.end48.i.roundAndPackInt32.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @float64_to_int32_round_to_zero(i64 noundef %a) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i64 %a, 4503599627370495
  %shr.i = lshr i64 %a, 52
  %0 = trunc i64 %shr.i to i32
  %conv.i = and i32 %0, 2047
  %shr.i54 = lshr i64 %a, 63
  %conv.i55 = trunc i64 %shr.i54 to i8
  %sub = sub nsw i32 1075, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1054, i32 %conv.i)
  %cmp = icmp ugt i32 %conv.i, 1054
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %conv.i)
  %cmp3 = icmp ne i32 %conv.i, 2047
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not = icmp eq i64 %and.i, 0
  %or.cond = or i1 %tobool.not, %cmp3
  %spec.select53 = select i1 %or.cond, i8 %conv.i55, i8 0
  br label %invalid

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %sub)
  %cmp5 = icmp ugt i32 %sub, 52
  br i1 %cmp5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool7.not = icmp eq i32 %conv.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool8.not = icmp eq i64 %and.i, 0
  %or.cond52 = and i1 %tobool8.not, %tobool7.not
  br i1 %or.cond52, label %if.then6.cleanup_crit_edge, label %if.then9

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 16) #8
  br label %cleanup

if.end12:                                         ; preds = %if.else
  %or = or i64 %and.i, 4503599627370496
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 %or, %sh_prom
  %conv = trunc i64 %shr to i32
  %sub15 = sub i32 0, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a)
  %tobool13.not56 = icmp slt i64 %a, 0
  %spec.select = select i1 %tobool13.not56, i32 %sub15, i32 %conv
  %z.0.lobit = lshr i32 %spec.select, 31
  %1 = trunc i64 %shr.i54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %z.0.lobit, i32 %1)
  %tobool20.not = icmp eq i32 %z.0.lobit, %1
  br i1 %tobool20.not, label %if.end24, label %if.end12.invalid_crit_edge

if.end12.invalid_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %invalid

invalid:                                          ; preds = %if.end12.invalid_crit_edge, %if.then
  %aSign.0 = phi i8 [ %conv.i55, %if.end12.invalid_crit_edge ], [ %spec.select53, %if.then ]
  tail call void @float_raise(i8 noundef signext 1) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %aSign.0)
  %tobool23.not = icmp eq i8 %aSign.0, 0
  %cond = select i1 %tobool23.not, i32 2147483647, i32 -2147483648
  br label %cleanup

if.end24:                                         ; preds = %if.end12
  %shl = shl i64 %shr, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %or)
  %cmp26.not = icmp eq i64 %shl, %or
  br i1 %cmp26.not, label %if.end24.cleanup_crit_edge, label %if.then28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end24.cleanup_crit_edge, %invalid, %if.then9, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %invalid ], [ 0, %if.then6.cleanup_crit_edge ], [ 0, %if.then9 ], [ %spec.select, %if.then28 ], [ %spec.select, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @float64_to_uint32(ptr nocapture noundef %roundData, i64 noundef %a) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i64 %a, 4503599627370495
  %shr.i = lshr i64 %a, 52
  %0 = trunc i64 %shr.i to i32
  %conv.i = and i32 %0, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool.not = icmp eq i32 %conv.i, 0
  %or = or i64 %and.i, 4503599627370496
  %spec.select = select i1 %tobool.not, i64 %and.i, i64 %or
  %sub.neg = add nuw nsw i32 %0, 20
  %sub = sub nsw i32 1068, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1068, i32 %conv.i)
  %cmp = icmp ult i32 %conv.i, 1068
  br i1 %cmp, label %if.else.i, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.else.i:                                        ; preds = %entry
  tail call void asm sideeffect "@shift64RightJamming -- start", ""() #8, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub)
  %cmp1.i = icmp ult i32 %sub, 64
  br i1 %cmp1.i, label %if.then2.i, label %if.else6.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom.i = zext i32 %sub to i64
  %shr.i8 = lshr i64 %spec.select, %sh_prom.i
  %and.i9 = and i32 %sub.neg, 63
  %sh_prom3.i = zext i32 %and.i9 to i64
  %shl.i = shl i64 %spec.select, %sh_prom3.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i)
  %cmp4.i = icmp ne i64 %shl.i, 0
  %1 = zext i1 %cmp4.i to i64
  %or.i = or i64 %shr.i8, %1
  br label %shift64RightJamming.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %spec.select)
  %cmp7.i = icmp ne i64 %spec.select, 0
  %2 = zext i1 %cmp7.i to i64
  br label %shift64RightJamming.exit

shift64RightJamming.exit:                         ; preds = %if.else6.i, %if.then2.i
  %z.0.i = phi i64 [ %or.i, %if.then2.i ], [ %2, %if.else6.i ]
  tail call void asm sideeffect "@shift64RightJamming -- end", ""() #8, !srcloc !18
  br label %if.end3

if.end3:                                          ; preds = %shift64RightJamming.exit, %entry.if.end3_crit_edge
  %aSig.1 = phi i64 [ %z.0.i, %shift64RightJamming.exit ], [ %spec.select, %entry.if.end3_crit_edge ]
  %3 = ptrtoint ptr %roundData to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %roundData, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.i10 = icmp eq i8 %4, 0
  br i1 %cmp.i10, label %if.end3.if.end21.i_crit_edge, label %if.then.i

if.end3.if.end21.i_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp4.i11 = icmp eq i8 %4, 1
  br i1 %cmp4.i11, label %if.then.i.if.end21.i_crit_edge, label %if.else.i12

if.then.i.if.end21.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.else.i12:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp15.i = icmp eq i8 %4, 2
  %spec.select79.i = select i1 %cmp15.i, i8 0, i8 127
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else.i12, %if.then.i.if.end21.i_crit_edge, %if.end3.if.end21.i_crit_edge
  %roundIncrement.0.i = phi i8 [ 64, %if.end3.if.end21.i_crit_edge ], [ 0, %if.then.i.if.end21.i_crit_edge ], [ %spec.select79.i, %if.else.i12 ]
  %5 = trunc i64 %aSig.1 to i8
  %conv22.i = and i8 %5, 127
  %6 = zext i8 %roundIncrement.0.i to i64
  %add.i = add i64 %aSig.1, %6
  %shr.i13 = lshr i64 %add.i, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %conv22.i)
  %cmp25.i = icmp eq i8 %conv22.i, 64
  %and2877.i = and i1 %cmp.i10, %cmp25.i
  %and28.i = zext i1 %and2877.i to i32
  %neg.i = xor i32 %and28.i, -1
  %7 = trunc i64 %shr.i13 to i32
  %conv31.i = and i32 %7, %neg.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 549755813888, i64 %add.i)
  %tobool36.not.i = icmp ult i64 %add.i, 549755813888
  br i1 %tobool36.not.i, label %lor.lhs.false.i, label %if.end21.i.roundAndPackInt32.exit.sink.split_crit_edge

if.end21.i.roundAndPackInt32.exit.sink.split_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %roundAndPackInt32.exit.sink.split

lor.lhs.false.i:                                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv31.i)
  %tobool37.not.i = icmp eq i32 %conv31.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool42.not.i = icmp sgt i32 %7, -1
  %or.cond.i = or i1 %tobool42.not.i, %tobool37.not.i
  br i1 %or.cond.i, label %if.end48.i, label %lor.lhs.false.i.roundAndPackInt32.exit.sink.split_crit_edge

lor.lhs.false.i.roundAndPackInt32.exit.sink.split_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %roundAndPackInt32.exit.sink.split

if.end48.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv22.i)
  %tobool49.not.i = icmp eq i8 %conv22.i, 0
  br i1 %tobool49.not.i, label %if.end48.i.roundAndPackInt32.exit_crit_edge, label %if.end48.i.roundAndPackInt32.exit.sink.split_crit_edge

if.end48.i.roundAndPackInt32.exit.sink.split_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %roundAndPackInt32.exit.sink.split

if.end48.i.roundAndPackInt32.exit_crit_edge:      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %roundAndPackInt32.exit

roundAndPackInt32.exit.sink.split:                ; preds = %if.end48.i.roundAndPackInt32.exit.sink.split_crit_edge, %lor.lhs.false.i.roundAndPackInt32.exit.sink.split_crit_edge, %if.end21.i.roundAndPackInt32.exit.sink.split_crit_edge
  %.sink18 = phi i8 [ 1, %lor.lhs.false.i.roundAndPackInt32.exit.sink.split_crit_edge ], [ 1, %if.end21.i.roundAndPackInt32.exit.sink.split_crit_edge ], [ 16, %if.end48.i.roundAndPackInt32.exit.sink.split_crit_edge ]
  %retval.0.i.ph = phi i32 [ 2147483647, %lor.lhs.false.i.roundAndPackInt32.exit.sink.split_crit_edge ], [ 2147483647, %if.end21.i.roundAndPackInt32.exit.sink.split_crit_edge ], [ %conv31.i, %if.end48.i.roundAndPackInt32.exit.sink.split_crit_edge ]
  %exception51.i = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %8 = ptrtoint ptr %exception51.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %exception51.i, align 1
  %10 = or i8 %9, %.sink18
  store i8 %10, ptr %exception51.i, align 1
  br label %roundAndPackInt32.exit

roundAndPackInt32.exit:                           ; preds = %roundAndPackInt32.exit.sink.split, %if.end48.i.roundAndPackInt32.exit_crit_edge
  %retval.0.i = phi i32 [ %conv31.i, %if.end48.i.roundAndPackInt32.exit_crit_edge ], [ %retval.0.i.ph, %roundAndPackInt32.exit.sink.split ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @float64_to_uint32_round_to_zero(i64 noundef %a) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i64 %a, 4503599627370495
  %shr.i = lshr i64 %a, 52
  %0 = trunc i64 %shr.i to i32
  %conv.i = and i32 %0, 2047
  %shr.i54 = lshr i64 %a, 63
  %conv.i55 = trunc i64 %shr.i54 to i8
  %sub = sub nsw i32 1075, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1054, i32 %conv.i)
  %cmp = icmp ugt i32 %conv.i, 1054
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %conv.i)
  %cmp3 = icmp ne i32 %conv.i, 2047
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not = icmp eq i64 %and.i, 0
  %or.cond = or i1 %tobool.not, %cmp3
  %spec.select53 = select i1 %or.cond, i8 %conv.i55, i8 0
  br label %invalid

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %sub)
  %cmp5 = icmp ugt i32 %sub, 52
  br i1 %cmp5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool7.not = icmp eq i32 %conv.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool8.not = icmp eq i64 %and.i, 0
  %or.cond52 = and i1 %tobool8.not, %tobool7.not
  br i1 %or.cond52, label %if.then6.cleanup_crit_edge, label %if.then9

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 16) #8
  br label %cleanup

if.end12:                                         ; preds = %if.else
  %or = or i64 %and.i, 4503599627370496
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 %or, %sh_prom
  %conv = trunc i64 %shr to i32
  %sub15 = sub i32 0, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a)
  %tobool13.not56 = icmp slt i64 %a, 0
  %spec.select = select i1 %tobool13.not56, i32 %sub15, i32 %conv
  %z.0.lobit = lshr i32 %spec.select, 31
  %1 = trunc i64 %shr.i54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %z.0.lobit, i32 %1)
  %tobool20.not = icmp eq i32 %z.0.lobit, %1
  br i1 %tobool20.not, label %if.end24, label %if.end12.invalid_crit_edge

if.end12.invalid_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %invalid

invalid:                                          ; preds = %if.end12.invalid_crit_edge, %if.then
  %aSign.0 = phi i8 [ %conv.i55, %if.end12.invalid_crit_edge ], [ %spec.select53, %if.then ]
  tail call void @float_raise(i8 noundef signext 1) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %aSign.0)
  %tobool23.not = icmp eq i8 %aSign.0, 0
  %cond = select i1 %tobool23.not, i32 2147483647, i32 -2147483648
  br label %cleanup

if.end24:                                         ; preds = %if.end12
  %shl = shl i64 %shr, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %or)
  %cmp26.not = icmp eq i64 %shl, %or
  br i1 %cmp26.not, label %if.end24.cleanup_crit_edge, label %if.then28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end24.cleanup_crit_edge, %invalid, %if.then9, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %invalid ], [ 0, %if.then6.cleanup_crit_edge ], [ 0, %if.then9 ], [ %spec.select, %if.then28 ], [ %spec.select, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @float64_to_float32(ptr nocapture noundef %roundData, i64 noundef %a) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i64 %a, 4503599627370495
  %shr.i = lshr i64 %a, 52
  %0 = trunc i64 %shr.i to i32
  %conv.i = and i32 %0, 2047
  %shr.i24 = lshr i64 %a, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %conv.i)
  %cmp = icmp eq i32 %conv.i, 2047
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not = icmp eq i64 %and.i, 0
  br i1 %tobool.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %1 = and i64 %a, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %1)
  %cmp.i.i = icmp ne i64 %1, 9218868437227405312
  %and1.i.i = and i64 %a, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool.i.i = icmp eq i64 %and1.i.i, 0
  %tobool.not.i = or i1 %cmp.i.i, %tobool.i.i
  br i1 %tobool.not.i, label %if.then3.float64ToCommonNaN.exit_crit_edge, label %if.then.i

if.then3.float64ToCommonNaN.exit_crit_edge:       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %float64ToCommonNaN.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8, !noalias !39
  br label %float64ToCommonNaN.exit

float64ToCommonNaN.exit:                          ; preds = %if.then.i, %if.then3.float64ToCommonNaN.exit_crit_edge
  %agg.tmp.sroa.0.0.insert.shift = shl nuw nsw i64 %shr.i24, 31
  %2 = trunc i64 %agg.tmp.sroa.0.0.insert.shift to i32
  %3 = lshr i64 %a, 29
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 4194303
  %or.i = or i32 %5, %2
  %conv3.i = or i32 %or.i, 2143289344
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = trunc i64 %shr.i24 to i32
  %shl.i31 = shl nuw i32 %6, 31
  %add.i = or i32 %shl.i31, 2139095040
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i25 = trunc i64 %shr.i24 to i8
  tail call void asm sideeffect "@shift64RightJamming -- start", ""() #8, !srcloc !17
  %shr.i32 = lshr i64 %and.i, 22
  %shl.i33.mask = and i64 %a, 4194303
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i33.mask)
  %cmp4.i = icmp ne i64 %shl.i33.mask, 0
  %7 = zext i1 %cmp4.i to i64
  %or.i34 = or i64 %shr.i32, %7
  tail call void asm sideeffect "@shift64RightJamming -- end", ""() #8, !srcloc !18
  %conv = trunc i64 %or.i34 to i32
  %8 = or i32 %conv.i, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  %or = or i32 %conv, 1073741824
  %sub = add nsw i32 %conv.i, -897
  %aExp.0 = select i1 %9, i32 0, i32 %sub
  %zSig.0 = select i1 %9, i32 0, i32 %or
  %call11 = tail call fastcc i32 @roundAndPackFloat32(ptr noundef %roundData, i8 noundef zeroext %conv.i25, i32 noundef %aExp.0, i32 noundef %zSig.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %float64ToCommonNaN.exit
  %retval.0 = phi i32 [ %conv3.i, %float64ToCommonNaN.exit ], [ %add.i, %if.end ], [ %call11, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @float64_to_floatx80(ptr noalias nocapture writeonly sret(%struct.floatx80) align 4 %agg.result, i64 noundef %a) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i64 %a, 4503599627370495
  %shr.i = lshr i64 %a, 52
  %0 = trunc i64 %shr.i to i32
  %conv.i = and i32 %0, 2047
  %shr.i19 = lshr i64 %a, 63
  %conv.i20 = trunc i64 %shr.i19 to i16
  %1 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %conv.i, label %entry.if.end10_crit_edge [
    i32 2047, label %if.then
    i32 0, label %if.then6
  ]

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not = icmp eq i64 %and.i, 0
  br i1 %tobool.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %2 = and i64 %a, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %2)
  %cmp.i.i = icmp ne i64 %2, 9218868437227405312
  %and1.i.i = and i64 %a, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool.i.i = icmp eq i64 %and1.i.i, 0
  %tobool.not.i = or i1 %cmp.i.i, %tobool.i.i
  br i1 %tobool.not.i, label %if.then3.float64ToCommonNaN.exit_crit_edge, label %if.then.i

if.then3.float64ToCommonNaN.exit_crit_edge:       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %float64ToCommonNaN.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8, !noalias !42
  br label %float64ToCommonNaN.exit

float64ToCommonNaN.exit:                          ; preds = %if.then.i, %if.then3.float64ToCommonNaN.exit_crit_edge
  %agg.tmp.sroa.0.0.insert.shift = shl nuw nsw i64 %shr.i19, 15
  %3 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %4 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %5 = shl i64 %a, 11
  %or.i = or i64 %5, -4611686018427387904
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %or.i, ptr %4, align 4, !alias.scope !45
  %7 = trunc i64 %agg.tmp.sroa.0.0.insert.shift to i16
  %tr.sh.diff.i = or i16 %7, 32767
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %tr.sh.diff.i, ptr %3, align 2, !alias.scope !45
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %9 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %10 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 -9223372036854775808, ptr %10, align 4, !alias.scope !48
  %shl.i24 = shl nuw i16 %conv.i20, 15
  %add.i = or i16 %shl.i24, 32767
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %add.i, ptr %9, align 2, !alias.scope !48
  br label %cleanup

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %cmp7 = icmp eq i64 %and.i, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %13 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %14 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 0, ptr %14, align 4, !alias.scope !51
  %shl.i26 = shl nuw i16 %conv.i20, 15
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %shl.i26, ptr %13, align 2, !alias.scope !51
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.i)
  %cmp.i.i28 = icmp ult i64 %and.i, 4294967296
  %shr.i.i = lshr i64 %and.i, 32
  %a.addr.0.off0.v.i.i = select i1 %cmp.i.i28, i64 %a, i64 %shr.i.i
  %a.addr.0.off0.i.i = trunc i64 %a.addr.0.off0.v.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %a.addr.0.off0.i.i)
  %cmp.i.i.i = icmp ult i32 %a.addr.0.off0.i.i, 65536
  %shl.i.i.i = shl i32 %a.addr.0.off0.i.i, 16
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %shl.i.i.i, i32 %a.addr.0.off0.i.i
  %spec.select21.i.i.i = select i1 %cmp.i.i.i, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i.i)
  %cmp2.i.i.i = icmp ult i32 %spec.select.i.i.i, 16777216
  %17 = or i8 %spec.select21.i.i.i, 8
  %shl8.i.i.i = shl i32 %spec.select.i.i.i, 8
  %a.addr.1.i.i.i = select i1 %cmp2.i.i.i, i32 %shl8.i.i.i, i32 %spec.select.i.i.i
  %shiftCount.1.i.i.i = select i1 %cmp2.i.i.i, i8 %17, i8 %spec.select21.i.i.i
  %shr.i.i.i = lshr i32 %a.addr.1.i.i.i, 24
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i.i
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.i.i, align 1
  %add12.i.i.i = select i1 %cmp.i.i28, i8 21, i8 -11
  %add5.i.i = add nsw i8 %shiftCount.1.i.i.i, %add12.i.i.i
  %sub.i = add i8 %add5.i.i, %19
  %conv2.i29 = sext i8 %sub.i to i32
  %sh_prom.i = zext i32 %conv2.i29 to i64
  %shl.i30 = shl i64 %and.i, %sh_prom.i
  %sub4.i = sub nsw i32 1, %conv2.i29
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %entry.if.end10_crit_edge
  %aSig.0 = phi i64 [ %and.i, %entry.if.end10_crit_edge ], [ %shl.i30, %if.end9 ]
  %aExp.0 = phi i32 [ %conv.i, %entry.if.end10_crit_edge ], [ %sub4.i, %if.end9 ]
  %or = shl i64 %aSig.0, 11
  %shl = or i64 %or, -9223372036854775808
  %20 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %21 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %shl, ptr %21, align 4, !alias.scope !54
  %23 = trunc i64 %shr.i19 to i32
  %shl.i32 = shl nuw nsw i32 %23, 15
  %add = or i32 %shl.i32, 15360
  %add.i33 = add nsw i32 %add, %aExp.0
  %conv2.i34 = trunc i32 %add.i33 to i16
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv2.i34, ptr %20, align 2, !alias.scope !54
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.end, %float64ToCommonNaN.exit
  %25 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %agg.result, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @float64_round_to_int(ptr nocapture noundef %roundData, i64 noundef %a) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i64 %a, 52
  %0 = trunc i64 %shr.i to i32
  %conv.i = and i32 %0, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074, i32 %conv.i)
  %cmp = icmp ugt i32 %conv.i, 1074
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %conv.i)
  %cmp1 = icmp ne i32 %conv.i, 2047
  %and.i = and i64 %a, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not = icmp eq i64 %and.i, 0
  %or.cond = or i1 %tobool.not, %cmp1
  br i1 %or.cond, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.then
  %1 = and i64 %a, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %1)
  %cmp.i25.i = icmp eq i64 %1, 9218868437227405312
  %and1.i.i = and i64 %a, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool.i.i = icmp ne i64 %and1.i.i, 0
  %2 = and i1 %cmp.i25.i, %tobool.i.i
  br i1 %2, label %if.then.i, label %if.then3.propagateFloat64NaN.exit_crit_edge

if.then3.propagateFloat64NaN.exit_crit_edge:      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat64NaN.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat64NaN.exit

propagateFloat64NaN.exit:                         ; preds = %if.then.i, %if.then3.propagateFloat64NaN.exit_crit_edge
  %retval.0.i = or i64 %a, 2251799813685248
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %conv.i)
  %cmp6 = icmp ult i32 %conv.i, 1023
  br i1 %cmp6, label %if.then7, label %if.end30

if.then7:                                         ; preds = %if.end5
  %shl.mask = and i64 %a, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %cmp8 = icmp eq i64 %shl.mask, 0
  br i1 %cmp8, label %if.then7.cleanup_crit_edge, label %if.end10

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.then7
  %exception = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %3 = ptrtoint ptr %exception to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %exception, align 1
  %5 = or i8 %4, 16
  store i8 %5, ptr %exception, align 1
  %shr.i107 = and i64 %a, -9223372036854775808
  %6 = ptrtoint ptr %roundData to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %roundData, align 1
  %conv13 = sext i8 %7 to i32
  %8 = zext i32 %conv13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %conv13, label %if.end10.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb22
    i32 3, label %sw.bb25
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1022, i32 %conv.i)
  %cmp14 = icmp ne i32 %conv.i, 1022
  %and.i109 = and i64 %a, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i109)
  %tobool18.not = icmp eq i64 %and.i109, 0
  %or.cond115 = or i1 %tobool18.not, %cmp14
  %add3.i = or i64 %shr.i107, 4607182418800017408
  %spec.select116 = select i1 %or.cond115, i64 %shr.i107, i64 %add3.i
  br label %cleanup

sw.bb22:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a)
  %tobool24.not.inv = icmp slt i64 %a, 0
  %cond = select i1 %tobool24.not.inv, i64 -4616189618054758400, i64 0
  br label %cleanup

sw.bb25:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %a)
  %tobool27.not = icmp sgt i64 %a, -1
  %cond28 = select i1 %tobool27.not, i64 4607182418800017408, i64 -9223372036854775808
  br label %cleanup

if.end30:                                         ; preds = %if.end5
  %sub = sub nuw nsw i32 1075, %conv.i
  %sh_prom = zext i32 %sub to i64
  %shl31 = shl nuw nsw i64 1, %sh_prom
  %sub32 = add nsw i64 %shl31, -1
  %9 = ptrtoint ptr %roundData to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %roundData, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %10, label %if.then46 [
    i8 0, label %if.then37
    i8 1, label %if.end30.if.end57_crit_edge
  ]

if.end30.if.end57_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then37:                                        ; preds = %if.end30
  %shr = lshr i64 %shl31, 1
  %add = add i64 %shr, %a
  %and = and i64 %add, %sub32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp38 = icmp eq i64 %and, 0
  br i1 %cmp38, label %if.then40, label %if.then37.if.end57_crit_edge

if.then37.if.end57_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i64 %shl31, -1
  %and41 = and i64 %add, %neg
  br label %if.end57

if.then46:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i113 = lshr i64 %a, 63
  %conv.i114 = trunc i64 %shr.i113 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp50 = icmp eq i8 %10, 3
  %12 = zext i1 %cmp50 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i114, i8 %12)
  %tobool52.not = icmp eq i8 %conv.i114, %12
  %add54 = select i1 %tobool52.not, i64 0, i64 %sub32
  %spec.select = add i64 %add54, %a
  br label %if.end57

if.end57:                                         ; preds = %if.then46, %if.then40, %if.then37.if.end57_crit_edge, %if.end30.if.end57_crit_edge
  %z.0 = phi i64 [ %and41, %if.then40 ], [ %add, %if.then37.if.end57_crit_edge ], [ %a, %if.end30.if.end57_crit_edge ], [ %spec.select, %if.then46 ]
  %neg58 = sub nsw i64 0, %shl31
  %and59 = and i64 %z.0, %neg58
  call void @__sanitizer_cov_trace_cmp8(i64 %and59, i64 %a)
  %cmp60.not = icmp eq i64 %and59, %a
  br i1 %cmp60.not, label %if.end57.cleanup_crit_edge, label %if.then62

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %exception63 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %13 = ptrtoint ptr %exception63 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %exception63, align 1
  %15 = or i8 %14, 16
  store i8 %15, ptr %exception63, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %if.end57.cleanup_crit_edge, %sw.bb25, %sw.bb22, %sw.bb, %if.end10.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %propagateFloat64NaN.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i64 [ %retval.0.i, %propagateFloat64NaN.exit ], [ %cond28, %sw.bb25 ], [ %cond, %sw.bb22 ], [ %a, %if.then.cleanup_crit_edge ], [ %a, %if.then7.cleanup_crit_edge ], [ %and59, %if.then62 ], [ %a, %if.end57.cleanup_crit_edge ], [ %shr.i107, %if.end10.cleanup_crit_edge ], [ %spec.select116, %sw.bb ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @float64_add(ptr nocapture noundef %roundData, i64 noundef %a, i64 noundef %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i64 %a, 63
  %conv.i = trunc i64 %shr.i to i8
  %shr.i14 = lshr i64 %b, 63
  %conv.i15 = trunc i64 %shr.i14 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i, i8 %conv.i15)
  %cmp = icmp eq i8 %conv.i, %conv.i15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call fastcc i64 @addFloat64Sigs(ptr noundef %roundData, i64 noundef %a, i64 noundef %b, i8 noundef zeroext %conv.i)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call fastcc i64 @subFloat64Sigs(ptr noundef %roundData, i64 noundef %a, i64 noundef %b, i8 noundef zeroext %conv.i)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i64 [ %call4, %if.then ], [ %call5, %if.else ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @addFloat64Sigs(ptr nocapture noundef %roundData, i64 noundef %a, i64 noundef %b, i8 noundef zeroext %zSign) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i64 %a, 52
  %0 = trunc i64 %shr.i to i32
  %conv.i = and i32 %0, 2047
  %shr.i94 = lshr i64 %b, 52
  %1 = trunc i64 %shr.i94 to i32
  %conv.i95 = and i32 %1, 2047
  %sub = sub nsw i32 %conv.i, %conv.i95
  %and.i = shl i64 %a, 9
  %shl = and i64 %and.i, 2305843009213693440
  %and.i93 = shl i64 %b, 9
  %shl4 = and i64 %and.i93, 2305843009213693440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.else13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %conv.i)
  %cmp5 = icmp eq i32 %conv.i, 2047
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl)
  %tobool.not = icmp eq i64 %shl, 0
  br i1 %tobool.not, label %if.then6.cleanup_crit_edge, label %if.then7

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.then6
  %2 = and i64 %a, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %2)
  %cmp.i25.i = icmp eq i64 %2, 9218868437227405312
  %and1.i.i = and i64 %a, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool.i.i = icmp ne i64 %and1.i.i, 0
  %3 = and i1 %cmp.i25.i, %tobool.i.i
  %4 = and i64 %b, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %4)
  %cmp.i29.i = icmp eq i64 %4, 9218868437227405312
  %and1.i30.i = and i64 %b, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i30.i)
  %tobool.i31.i = icmp ne i64 %and1.i30.i, 0
  %5 = and i1 %cmp.i29.i, %tobool.i31.i
  %or62333.i = or i1 %3, %5
  br i1 %or62333.i, label %if.then.i, label %if.then7.propagateFloat64NaN.exit_crit_edge

if.then7.propagateFloat64NaN.exit_crit_edge:      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat64NaN.exit

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat64NaN.exit

propagateFloat64NaN.exit:                         ; preds = %if.then.i, %if.then7.propagateFloat64NaN.exit_crit_edge
  %shl.i26.i = shl i64 %b, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740992, i64 %shl.i26.i)
  %cmp.i27.i = icmp ugt i64 %shl.i26.i, -9007199254740992
  %shl.i.i = shl i64 %a, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740991, i64 %shl.i.i)
  %cmp.i.i = icmp ult i64 %shl.i.i, -9007199254740991
  %and2434.i = and i1 %3, %cmp.i27.i
  %6 = or i1 %cmp.i.i, %and2434.i
  %retval.0.v.i = select i1 %6, i64 %b, i64 %a
  %retval.0.i = or i64 %retval.0.v.i, 2251799813685248
  br label %cleanup

if.end9:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i95)
  %cmp10 = icmp eq i32 %conv.i95, 0
  br i1 %cmp10, label %if.end12, label %if.end12.thread

if.end12.thread:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i64 %shl4, 2305843009213693952
  tail call void asm sideeffect "@shift64RightJamming -- start", ""() #8, !srcloc !17
  br label %if.else.i

if.end12:                                         ; preds = %if.end9
  %dec = add nsw i32 %sub, -1
  tail call void asm sideeffect "@shift64RightJamming -- start", ""() #8, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.i = icmp eq i32 %dec, 0
  br i1 %cmp.i, label %if.end12.shift64RightJamming.exit_crit_edge, label %if.end12.if.else.i_crit_edge

if.end12.if.else.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.end12.shift64RightJamming.exit_crit_edge:      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %shift64RightJamming.exit

if.else.i:                                        ; preds = %if.end12.if.else.i_crit_edge, %if.end12.thread
  %expDiff.0162 = phi i32 [ %sub, %if.end12.thread ], [ %dec, %if.end12.if.else.i_crit_edge ]
  %bSig.0161 = phi i64 [ %or, %if.end12.thread ], [ %shl4, %if.end12.if.else.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %expDiff.0162)
  %cmp1.i = icmp ult i32 %expDiff.0162, 64
  br i1 %cmp1.i, label %if.then2.i, label %if.else6.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom.i = zext i32 %expDiff.0162 to i64
  %shr.i96 = lshr i64 %bSig.0161, %sh_prom.i
  %sub.i = sub nsw i32 0, %expDiff.0162
  %and.i97 = and i32 %sub.i, 63
  %sh_prom3.i = zext i32 %and.i97 to i64
  %shl.i = shl i64 %bSig.0161, %sh_prom3.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i)
  %cmp4.i = icmp ne i64 %shl.i, 0
  %7 = zext i1 %cmp4.i to i64
  %or.i = or i64 %shr.i96, %7
  br label %shift64RightJamming.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bSig.0161)
  %cmp7.i = icmp ne i64 %bSig.0161, 0
  %8 = zext i1 %cmp7.i to i64
  br label %shift64RightJamming.exit

shift64RightJamming.exit:                         ; preds = %if.else6.i, %if.then2.i, %if.end12.shift64RightJamming.exit_crit_edge
  %z.0.i = phi i64 [ %or.i, %if.then2.i ], [ %8, %if.else6.i ], [ %shl4, %if.end12.shift64RightJamming.exit_crit_edge ]
  tail call void asm sideeffect "@shift64RightJamming -- end", ""() #8, !srcloc !18
  br label %if.end46

if.else13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp14 = icmp slt i32 %sub, 0
  br i1 %cmp14, label %if.then15, label %if.else30

if.then15:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %conv.i95)
  %cmp16 = icmp eq i32 %conv.i95, 2047
  br i1 %cmp16, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl4)
  %tobool18.not = icmp eq i64 %shl4, 0
  br i1 %tobool18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.then17
  %9 = and i64 %a, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %9)
  %cmp.i25.i98 = icmp eq i64 %9, 9218868437227405312
  %and1.i.i99 = and i64 %a, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i99)
  %tobool.i.i100 = icmp ne i64 %and1.i.i99, 0
  %10 = and i1 %cmp.i25.i98, %tobool.i.i100
  %11 = and i64 %b, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %11)
  %cmp.i29.i101 = icmp eq i64 %11, 9218868437227405312
  %and1.i30.i102 = and i64 %b, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i30.i102)
  %tobool.i31.i103 = icmp ne i64 %and1.i30.i102, 0
  %12 = and i1 %cmp.i29.i101, %tobool.i31.i103
  %or62333.i104 = or i1 %10, %12
  br i1 %or62333.i104, label %if.then.i105, label %if.then19.propagateFloat64NaN.exit113_crit_edge

if.then19.propagateFloat64NaN.exit113_crit_edge:  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat64NaN.exit113

if.then.i105:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat64NaN.exit113

propagateFloat64NaN.exit113:                      ; preds = %if.then.i105, %if.then19.propagateFloat64NaN.exit113_crit_edge
  %shl.i26.i106 = shl i64 %b, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740992, i64 %shl.i26.i106)
  %cmp.i27.i107 = icmp ugt i64 %shl.i26.i106, -9007199254740992
  %shl.i.i108 = shl i64 %a, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740991, i64 %shl.i.i108)
  %cmp.i.i109 = icmp ult i64 %shl.i.i108, -9007199254740991
  %and2434.i110 = and i1 %10, %cmp.i27.i107
  %13 = or i1 %cmp.i.i109, %and2434.i110
  %retval.0.v.i111 = select i1 %13, i64 %b, i64 %a
  %retval.0.i112 = or i64 %retval.0.v.i111, 2251799813685248
  br label %cleanup

if.end21:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i114 = zext i8 %zSign to i64
  %shl.i115 = shl i64 %conv.i114, 63
  %add3.i = or i64 %shl.i115, 9218868437227405312
  br label %cleanup

if.end23:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp24 = icmp eq i32 %conv.i, 0
  %or27 = or i64 %shl, 2305843009213693952
  %aSig.0 = select i1 %cmp24, i64 %shl, i64 %or27
  %inc = zext i1 %cmp24 to i32
  %expDiff.1 = add nsw i32 %sub, %inc
  %sub29 = sub nsw i32 0, %expDiff.1
  tail call void asm sideeffect "@shift64RightJamming -- start", ""() #8, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %expDiff.1)
  %cmp.i116 = icmp eq i32 %expDiff.1, 0
  br i1 %cmp.i116, label %if.end23.shift64RightJamming.exit130_crit_edge, label %if.else.i118

if.end23.shift64RightJamming.exit130_crit_edge:   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %shift64RightJamming.exit130

if.else.i118:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub29)
  %cmp1.i117 = icmp ult i32 %sub29, 64
  br i1 %cmp1.i117, label %if.then2.i126, label %if.else6.i128

if.then2.i126:                                    ; preds = %if.else.i118
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom.i119 = zext i32 %sub29 to i64
  %shr.i120 = lshr i64 %aSig.0, %sh_prom.i119
  %and.i121 = and i32 %expDiff.1, 63
  %sh_prom3.i122 = zext i32 %and.i121 to i64
  %shl.i123 = shl i64 %aSig.0, %sh_prom3.i122
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i123)
  %cmp4.i124 = icmp ne i64 %shl.i123, 0
  %14 = zext i1 %cmp4.i124 to i64
  %or.i125 = or i64 %shr.i120, %14
  br label %shift64RightJamming.exit130

if.else6.i128:                                    ; preds = %if.else.i118
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %aSig.0)
  %cmp7.i127 = icmp ne i64 %aSig.0, 0
  %15 = zext i1 %cmp7.i127 to i64
  br label %shift64RightJamming.exit130

shift64RightJamming.exit130:                      ; preds = %if.else6.i128, %if.then2.i126, %if.end23.shift64RightJamming.exit130_crit_edge
  %z.0.i129 = phi i64 [ %or.i125, %if.then2.i126 ], [ %15, %if.else6.i128 ], [ %aSig.0, %if.end23.shift64RightJamming.exit130_crit_edge ]
  tail call void asm sideeffect "@shift64RightJamming -- end", ""() #8, !srcloc !18
  br label %if.end46

if.else30:                                        ; preds = %if.else13
  %16 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %conv.i, label %if.end42 [
    i32 2047, label %if.then32
    i32 0, label %if.then40
  ]

if.then32:                                        ; preds = %if.else30
  %or33 = or i64 %shl4, %shl
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or33)
  %tobool34.not = icmp eq i64 %or33, 0
  br i1 %tobool34.not, label %if.then32.cleanup_crit_edge, label %if.then35

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then35:                                        ; preds = %if.then32
  %17 = and i64 %a, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %17)
  %cmp.i25.i131 = icmp eq i64 %17, 9218868437227405312
  %and1.i.i132 = and i64 %a, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i132)
  %tobool.i.i133 = icmp ne i64 %and1.i.i132, 0
  %18 = and i1 %cmp.i25.i131, %tobool.i.i133
  %19 = and i64 %b, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %19)
  %cmp.i29.i134 = icmp eq i64 %19, 9218868437227405312
  %and1.i30.i135 = and i64 %b, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i30.i135)
  %tobool.i31.i136 = icmp ne i64 %and1.i30.i135, 0
  %20 = and i1 %cmp.i29.i134, %tobool.i31.i136
  %or62333.i137 = or i1 %18, %20
  br i1 %or62333.i137, label %if.then.i138, label %if.then35.propagateFloat64NaN.exit146_crit_edge

if.then35.propagateFloat64NaN.exit146_crit_edge:  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat64NaN.exit146

if.then.i138:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat64NaN.exit146

propagateFloat64NaN.exit146:                      ; preds = %if.then.i138, %if.then35.propagateFloat64NaN.exit146_crit_edge
  %shl.i26.i139 = shl i64 %b, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740992, i64 %shl.i26.i139)
  %cmp.i27.i140 = icmp ugt i64 %shl.i26.i139, -9007199254740992
  %shl.i.i141 = shl i64 %a, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740991, i64 %shl.i.i141)
  %cmp.i.i142 = icmp ult i64 %shl.i.i141, -9007199254740991
  %and2434.i143 = and i1 %18, %cmp.i27.i140
  %21 = or i1 %cmp.i.i142, %and2434.i143
  %retval.0.v.i144 = select i1 %21, i64 %b, i64 %a
  %retval.0.i145 = or i64 %retval.0.v.i144, 2251799813685248
  br label %cleanup

if.then40:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i64 %shl4, %shl
  %shr = lshr exact i64 %add, 9
  %conv.i147 = zext i8 %zSign to i64
  %shl.i148 = shl i64 %conv.i147, 63
  %add.i = or i64 %shr, %shl.i148
  br label %cleanup

if.end42:                                         ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #10
  %add43 = or i64 %shl, 4611686018427387904
  %add44 = add nuw nsw i64 %add43, %shl4
  br label %roundAndPack

if.end46:                                         ; preds = %shift64RightJamming.exit130, %shift64RightJamming.exit
  %aSig.1 = phi i64 [ %shl, %shift64RightJamming.exit ], [ %z.0.i129, %shift64RightJamming.exit130 ]
  %bSig.1 = phi i64 [ %z.0.i, %shift64RightJamming.exit ], [ %shl4, %shift64RightJamming.exit130 ]
  %zExp.0 = phi i32 [ %conv.i, %shift64RightJamming.exit ], [ %conv.i95, %shift64RightJamming.exit130 ]
  %or47 = or i64 %aSig.1, 2305843009213693952
  %add48 = add i64 %or47, %bSig.1
  %shl49 = shl i64 %add48, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl49)
  %cmp51 = icmp slt i64 %shl49, 0
  %not.cmp51 = xor i1 %cmp51, true
  %dec50 = sext i1 %not.cmp51 to i32
  %spec.select = add nsw i32 %zExp.0, %dec50
  %spec.select92 = select i1 %cmp51, i64 %add48, i64 %shl49
  br label %roundAndPack

roundAndPack:                                     ; preds = %if.end46, %if.end42
  %zExp.1 = phi i32 [ %conv.i, %if.end42 ], [ %spec.select, %if.end46 ]
  %zSig.0 = phi i64 [ %add44, %if.end42 ], [ %spec.select92, %if.end46 ]
  %call56 = tail call fastcc i64 @roundAndPackFloat64(ptr noundef %roundData, i8 noundef zeroext %zSign, i32 noundef %zExp.1, i64 noundef %zSig.0)
  br label %cleanup

cleanup:                                          ; preds = %roundAndPack, %if.then40, %propagateFloat64NaN.exit146, %if.then32.cleanup_crit_edge, %if.end21, %propagateFloat64NaN.exit113, %propagateFloat64NaN.exit, %if.then6.cleanup_crit_edge
  %retval.0 = phi i64 [ %retval.0.i, %propagateFloat64NaN.exit ], [ %call56, %roundAndPack ], [ %retval.0.i112, %propagateFloat64NaN.exit113 ], [ %add3.i, %if.end21 ], [ %retval.0.i145, %propagateFloat64NaN.exit146 ], [ %add.i, %if.then40 ], [ %a, %if.then6.cleanup_crit_edge ], [ %a, %if.then32.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @subFloat64Sigs(ptr nocapture noundef %roundData, i64 noundef %a, i64 noundef %b, i8 noundef zeroext %zSign) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i64 %a, 52
  %0 = trunc i64 %shr.i to i32
  %conv.i = and i32 %0, 2047
  %shr.i108 = lshr i64 %b, 52
  %1 = trunc i64 %shr.i108 to i32
  %conv.i109 = and i32 %1, 2047
  %sub = sub nsw i32 %conv.i, %conv.i109
  %and.i = shl i64 %a, 10
  %shl = and i64 %and.i, 4611686018427386880
  %and.i107 = shl i64 %b, 10
  %shl4 = and i64 %and.i107, 4611686018427386880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %aExpBigger, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp5 = icmp slt i32 %sub, 0
  br i1 %cmp5, label %bExpBigger, label %if.end7

if.end7:                                          ; preds = %if.end
  %2 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %conv.i, label %if.end7.if.end19_crit_edge [
    i32 2047, label %if.then9
    i32 0, label %if.then18
  ]

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then9:                                         ; preds = %if.end7
  %or = or i64 %shl4, %shl
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or)
  %tobool.not = icmp eq i64 %or, 0
  br i1 %tobool.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.then9
  %3 = and i64 %a, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %3)
  %cmp.i25.i = icmp eq i64 %3, 9218868437227405312
  %and1.i.i = and i64 %a, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool.i.i = icmp ne i64 %and1.i.i, 0
  %4 = and i1 %cmp.i25.i, %tobool.i.i
  %5 = and i64 %b, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %5)
  %cmp.i29.i = icmp eq i64 %5, 9218868437227405312
  %and1.i30.i = and i64 %b, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i30.i)
  %tobool.i31.i = icmp ne i64 %and1.i30.i, 0
  %6 = and i1 %cmp.i29.i, %tobool.i31.i
  %or62333.i = or i1 %4, %6
  br i1 %or62333.i, label %if.then.i, label %if.then10.propagateFloat64NaN.exit_crit_edge

if.then10.propagateFloat64NaN.exit_crit_edge:     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat64NaN.exit

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat64NaN.exit

propagateFloat64NaN.exit:                         ; preds = %if.then.i, %if.then10.propagateFloat64NaN.exit_crit_edge
  %shl.i26.i = shl i64 %b, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740992, i64 %shl.i26.i)
  %cmp.i27.i = icmp ugt i64 %shl.i26.i, -9007199254740992
  %shl.i.i = shl i64 %a, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740991, i64 %shl.i.i)
  %cmp.i.i = icmp ult i64 %shl.i.i, -9007199254740991
  %and2434.i = and i1 %4, %cmp.i27.i
  %7 = or i1 %cmp.i.i, %and2434.i
  %retval.0.v.i = select i1 %7, i64 %b, i64 %a
  %retval.0.i = or i64 %retval.0.v.i, 2251799813685248
  br label %cleanup

if.end12:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %exception = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %8 = ptrtoint ptr %exception to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %exception, align 1
  %10 = or i8 %9, 1
  store i8 %10, ptr %exception, align 1
  br label %cleanup

if.then18:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end7.if.end19_crit_edge
  %aExp.0 = phi i32 [ 1, %if.then18 ], [ %conv.i, %if.end7.if.end19_crit_edge ]
  %bExp.0 = phi i32 [ 1, %if.then18 ], [ %conv.i109, %if.end7.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %shl4, i64 %shl)
  %cmp20 = icmp ult i64 %shl4, %shl
  br i1 %cmp20, label %if.end19.aBigger_crit_edge, label %if.end23

if.end19.aBigger_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %aBigger

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %shl4)
  %cmp24 = icmp ult i64 %shl, %shl4
  br i1 %cmp24, label %if.end23.bBigger_crit_edge, label %if.end27

if.end23.bBigger_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %bBigger

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %roundData to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %roundData, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp29 = icmp eq i8 %12, 2
  %shl.i = select i1 %cmp29, i64 -9223372036854775808, i64 0
  br label %cleanup

bExpBigger:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %conv.i109)
  %cmp33 = icmp eq i32 %conv.i109, 2047
  br i1 %cmp33, label %if.then35, label %if.end43

if.then35:                                        ; preds = %bExpBigger
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl4)
  %tobool36.not = icmp eq i64 %shl4, 0
  br i1 %tobool36.not, label %if.end39, label %if.then37

if.then37:                                        ; preds = %if.then35
  %13 = and i64 %a, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %13)
  %cmp.i25.i111 = icmp eq i64 %13, 9218868437227405312
  %and1.i.i112 = and i64 %a, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i112)
  %tobool.i.i113 = icmp ne i64 %and1.i.i112, 0
  %14 = and i1 %cmp.i25.i111, %tobool.i.i113
  %15 = and i64 %b, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %15)
  %cmp.i29.i114 = icmp eq i64 %15, 9218868437227405312
  %and1.i30.i115 = and i64 %b, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i30.i115)
  %tobool.i31.i116 = icmp ne i64 %and1.i30.i115, 0
  %16 = and i1 %cmp.i29.i114, %tobool.i31.i116
  %or62333.i117 = or i1 %14, %16
  br i1 %or62333.i117, label %if.then.i118, label %if.then37.propagateFloat64NaN.exit126_crit_edge

if.then37.propagateFloat64NaN.exit126_crit_edge:  ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat64NaN.exit126

if.then.i118:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat64NaN.exit126

propagateFloat64NaN.exit126:                      ; preds = %if.then.i118, %if.then37.propagateFloat64NaN.exit126_crit_edge
  %shl.i26.i119 = shl i64 %b, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740992, i64 %shl.i26.i119)
  %cmp.i27.i120 = icmp ugt i64 %shl.i26.i119, -9007199254740992
  %shl.i.i121 = shl i64 %a, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740991, i64 %shl.i.i121)
  %cmp.i.i122 = icmp ult i64 %shl.i.i121, -9007199254740991
  %and2434.i123 = and i1 %14, %cmp.i27.i120
  %17 = or i1 %cmp.i.i122, %and2434.i123
  %retval.0.v.i124 = select i1 %17, i64 %b, i64 %a
  %retval.0.i125 = or i64 %retval.0.v.i124, 2251799813685248
  br label %cleanup

if.end39:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %18 = xor i8 %zSign, -1
  %conv.i127 = zext i8 %18 to i64
  %shl.i128 = shl i64 %conv.i127, 63
  %add3.i = or i64 %shl.i128, 9218868437227405312
  br label %cleanup

if.end43:                                         ; preds = %bExpBigger
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp44 = icmp eq i32 %conv.i, 0
  %or47 = or i64 %shl, 4611686018427387904
  %aSig.0 = select i1 %cmp44, i64 %shl, i64 %or47
  %inc = zext i1 %cmp44 to i32
  %expDiff.0 = add nsw i32 %sub, %inc
  %sub49 = sub nsw i32 0, %expDiff.0
  tail call void asm sideeffect "@shift64RightJamming -- start", ""() #8, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %expDiff.0)
  %cmp.i = icmp eq i32 %expDiff.0, 0
  br i1 %cmp.i, label %if.end43.shift64RightJamming.exit_crit_edge, label %if.else.i

if.end43.shift64RightJamming.exit_crit_edge:      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %shift64RightJamming.exit

if.else.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub49)
  %cmp1.i = icmp ult i32 %sub49, 64
  br i1 %cmp1.i, label %if.then2.i, label %if.else6.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom.i = zext i32 %sub49 to i64
  %shr.i129 = lshr i64 %aSig.0, %sh_prom.i
  %and.i130 = and i32 %expDiff.0, 63
  %sh_prom3.i = zext i32 %and.i130 to i64
  %shl.i131 = shl i64 %aSig.0, %sh_prom3.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i131)
  %cmp4.i = icmp ne i64 %shl.i131, 0
  %19 = zext i1 %cmp4.i to i64
  %or.i = or i64 %shr.i129, %19
  br label %shift64RightJamming.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %aSig.0)
  %cmp7.i = icmp ne i64 %aSig.0, 0
  %20 = zext i1 %cmp7.i to i64
  br label %shift64RightJamming.exit

shift64RightJamming.exit:                         ; preds = %if.else6.i, %if.then2.i, %if.end43.shift64RightJamming.exit_crit_edge
  %z.0.i = phi i64 [ %or.i, %if.then2.i ], [ %20, %if.else6.i ], [ %aSig.0, %if.end43.shift64RightJamming.exit_crit_edge ]
  tail call void asm sideeffect "@shift64RightJamming -- end", ""() #8, !srcloc !18
  %or50 = or i64 %shl4, 4611686018427387904
  br label %bBigger

bBigger:                                          ; preds = %shift64RightJamming.exit, %if.end23.bBigger_crit_edge
  %aSig.1 = phi i64 [ %z.0.i, %shift64RightJamming.exit ], [ %shl, %if.end23.bBigger_crit_edge ]
  %bSig.0 = phi i64 [ %or50, %shift64RightJamming.exit ], [ %shl4, %if.end23.bBigger_crit_edge ]
  %bExp.1 = phi i32 [ %conv.i109, %shift64RightJamming.exit ], [ %bExp.0, %if.end23.bBigger_crit_edge ]
  %sub51 = sub i64 %bSig.0, %aSig.1
  %21 = xor i8 %zSign, 1
  br label %normalizeRoundAndPack

aExpBigger:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %conv.i)
  %cmp55 = icmp eq i32 %conv.i, 2047
  br i1 %cmp55, label %if.then57, label %if.end62

if.then57:                                        ; preds = %aExpBigger
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl)
  %tobool58.not = icmp eq i64 %shl, 0
  br i1 %tobool58.not, label %if.then57.cleanup_crit_edge, label %if.then59

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then59:                                        ; preds = %if.then57
  %22 = and i64 %a, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %22)
  %cmp.i25.i132 = icmp eq i64 %22, 9218868437227405312
  %and1.i.i133 = and i64 %a, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i133)
  %tobool.i.i134 = icmp ne i64 %and1.i.i133, 0
  %23 = and i1 %cmp.i25.i132, %tobool.i.i134
  %24 = and i64 %b, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %24)
  %cmp.i29.i135 = icmp eq i64 %24, 9218868437227405312
  %and1.i30.i136 = and i64 %b, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i30.i136)
  %tobool.i31.i137 = icmp ne i64 %and1.i30.i136, 0
  %25 = and i1 %cmp.i29.i135, %tobool.i31.i137
  %or62333.i138 = or i1 %23, %25
  br i1 %or62333.i138, label %if.then.i139, label %if.then59.propagateFloat64NaN.exit147_crit_edge

if.then59.propagateFloat64NaN.exit147_crit_edge:  ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat64NaN.exit147

if.then.i139:                                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat64NaN.exit147

propagateFloat64NaN.exit147:                      ; preds = %if.then.i139, %if.then59.propagateFloat64NaN.exit147_crit_edge
  %shl.i26.i140 = shl i64 %b, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740992, i64 %shl.i26.i140)
  %cmp.i27.i141 = icmp ugt i64 %shl.i26.i140, -9007199254740992
  %shl.i.i142 = shl i64 %a, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740991, i64 %shl.i.i142)
  %cmp.i.i143 = icmp ult i64 %shl.i.i142, -9007199254740991
  %and2434.i144 = and i1 %23, %cmp.i27.i141
  %26 = or i1 %cmp.i.i143, %and2434.i144
  %retval.0.v.i145 = select i1 %26, i64 %b, i64 %a
  %retval.0.i146 = or i64 %retval.0.v.i145, 2251799813685248
  br label %cleanup

if.end62:                                         ; preds = %aExpBigger
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i109)
  %cmp63 = icmp eq i32 %conv.i109, 0
  br i1 %cmp63, label %if.end68, label %if.end68.thread

if.end68.thread:                                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %or67 = or i64 %shl4, 4611686018427387904
  tail call void asm sideeffect "@shift64RightJamming -- start", ""() #8, !srcloc !17
  br label %if.else.i150

if.end68:                                         ; preds = %if.end62
  %dec = add nsw i32 %sub, -1
  tail call void asm sideeffect "@shift64RightJamming -- start", ""() #8, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.i148 = icmp eq i32 %dec, 0
  br i1 %cmp.i148, label %if.end68.shift64RightJamming.exit162_crit_edge, label %if.end68.if.else.i150_crit_edge

if.end68.if.else.i150_crit_edge:                  ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i150

if.end68.shift64RightJamming.exit162_crit_edge:   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %shift64RightJamming.exit162

if.else.i150:                                     ; preds = %if.end68.if.else.i150_crit_edge, %if.end68.thread
  %expDiff.1184 = phi i32 [ %sub, %if.end68.thread ], [ %dec, %if.end68.if.else.i150_crit_edge ]
  %bSig.1183 = phi i64 [ %or67, %if.end68.thread ], [ %shl4, %if.end68.if.else.i150_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %expDiff.1184)
  %cmp1.i149 = icmp ult i32 %expDiff.1184, 64
  br i1 %cmp1.i149, label %if.then2.i158, label %if.else6.i160

if.then2.i158:                                    ; preds = %if.else.i150
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom.i151 = zext i32 %expDiff.1184 to i64
  %shr.i152 = lshr i64 %bSig.1183, %sh_prom.i151
  %sub.i = sub nsw i32 0, %expDiff.1184
  %and.i153 = and i32 %sub.i, 63
  %sh_prom3.i154 = zext i32 %and.i153 to i64
  %shl.i155 = shl i64 %bSig.1183, %sh_prom3.i154
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i155)
  %cmp4.i156 = icmp ne i64 %shl.i155, 0
  %27 = zext i1 %cmp4.i156 to i64
  %or.i157 = or i64 %shr.i152, %27
  br label %shift64RightJamming.exit162

if.else6.i160:                                    ; preds = %if.else.i150
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bSig.1183)
  %cmp7.i159 = icmp ne i64 %bSig.1183, 0
  %28 = zext i1 %cmp7.i159 to i64
  br label %shift64RightJamming.exit162

shift64RightJamming.exit162:                      ; preds = %if.else6.i160, %if.then2.i158, %if.end68.shift64RightJamming.exit162_crit_edge
  %z.0.i161 = phi i64 [ %or.i157, %if.then2.i158 ], [ %28, %if.else6.i160 ], [ %shl4, %if.end68.shift64RightJamming.exit162_crit_edge ]
  tail call void asm sideeffect "@shift64RightJamming -- end", ""() #8, !srcloc !18
  %or69 = or i64 %shl, 4611686018427387904
  br label %aBigger

aBigger:                                          ; preds = %shift64RightJamming.exit162, %if.end19.aBigger_crit_edge
  %aSig.2 = phi i64 [ %or69, %shift64RightJamming.exit162 ], [ %shl, %if.end19.aBigger_crit_edge ]
  %bSig.2 = phi i64 [ %z.0.i161, %shift64RightJamming.exit162 ], [ %shl4, %if.end19.aBigger_crit_edge ]
  %aExp.1 = phi i32 [ %conv.i, %shift64RightJamming.exit162 ], [ %aExp.0, %if.end19.aBigger_crit_edge ]
  %sub70 = sub i64 %aSig.2, %bSig.2
  br label %normalizeRoundAndPack

normalizeRoundAndPack:                            ; preds = %aBigger, %bBigger
  %zSign.addr.0 = phi i8 [ %zSign, %aBigger ], [ %21, %bBigger ]
  %zExp.0 = phi i32 [ %aExp.1, %aBigger ], [ %bExp.1, %bBigger ]
  %zSig.0 = phi i64 [ %sub70, %aBigger ], [ %sub51, %bBigger ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %zSig.0)
  %cmp.i.i163 = icmp ult i64 %zSig.0, 4294967296
  %shr.i.i = lshr i64 %zSig.0, 32
  %a.addr.0.off0.v.i.i = select i1 %cmp.i.i163, i64 %zSig.0, i64 %shr.i.i
  %a.addr.0.off0.i.i = trunc i64 %a.addr.0.off0.v.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %a.addr.0.off0.i.i)
  %cmp.i.i.i = icmp ult i32 %a.addr.0.off0.i.i, 65536
  %shl.i.i.i = shl i32 %a.addr.0.off0.i.i, 16
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %shl.i.i.i, i32 %a.addr.0.off0.i.i
  %spec.select21.i.i.i = select i1 %cmp.i.i.i, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i.i)
  %cmp2.i.i.i = icmp ult i32 %spec.select.i.i.i, 16777216
  %29 = or i8 %spec.select21.i.i.i, 8
  %shl8.i.i.i = shl i32 %spec.select.i.i.i, 8
  %a.addr.1.i.i.i = select i1 %cmp2.i.i.i, i32 %shl8.i.i.i, i32 %spec.select.i.i.i
  %shiftCount.1.i.i.i = select i1 %cmp2.i.i.i, i8 %29, i8 %spec.select21.i.i.i
  %shr.i.i.i = lshr i32 %a.addr.1.i.i.i, 24
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i.i
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i.i, align 1
  %add12.i.i.i = select i1 %cmp.i.i163, i8 31, i8 -1
  %add5.i.i = add i8 %add12.i.i.i, %31
  %sub.i164 = add i8 %add5.i.i, %shiftCount.1.i.i.i
  %conv2.i = sext i8 %sub.i164 to i32
  %32 = xor i32 %conv2.i, -1
  %sub3.i = add nsw i32 %zExp.0, %32
  %sh_prom.i165 = zext i32 %conv2.i to i64
  %shl.i166 = shl i64 %zSig.0, %sh_prom.i165
  %call5.i = tail call fastcc i64 @roundAndPackFloat64(ptr noundef %roundData, i8 noundef zeroext %zSign.addr.0, i32 noundef %sub3.i, i64 noundef %shl.i166) #8
  br label %cleanup

cleanup:                                          ; preds = %normalizeRoundAndPack, %propagateFloat64NaN.exit147, %if.then57.cleanup_crit_edge, %if.end39, %propagateFloat64NaN.exit126, %if.end27, %if.end12, %propagateFloat64NaN.exit
  %retval.0 = phi i64 [ %retval.0.i146, %propagateFloat64NaN.exit147 ], [ %call5.i, %normalizeRoundAndPack ], [ %retval.0.i125, %propagateFloat64NaN.exit126 ], [ %add3.i, %if.end39 ], [ %retval.0.i, %propagateFloat64NaN.exit ], [ -1, %if.end12 ], [ %shl.i, %if.end27 ], [ %a, %if.then57.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @float64_sub(ptr nocapture noundef %roundData, i64 noundef %a, i64 noundef %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i64 %a, 63
  %conv.i = trunc i64 %shr.i to i8
  %shr.i14 = lshr i64 %b, 63
  %conv.i15 = trunc i64 %shr.i14 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i, i8 %conv.i15)
  %cmp = icmp eq i8 %conv.i, %conv.i15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call fastcc i64 @subFloat64Sigs(ptr noundef %roundData, i64 noundef %a, i64 noundef %b, i8 noundef zeroext %conv.i)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call fastcc i64 @addFloat64Sigs(ptr noundef %roundData, i64 noundef %a, i64 noundef %b, i8 noundef zeroext %conv.i)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i64 [ %call4, %if.then ], [ %call5, %if.else ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @float64_mul(ptr nocapture noundef %roundData, i64 noundef %a, i64 noundef %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i64 %a, 4503599627370495
  %shr.i = lshr i64 %a, 52
  %0 = trunc i64 %shr.i to i32
  %conv.i = and i32 %0, 2047
  %and.i104 = and i64 %b, 4503599627370495
  %shr.i105 = lshr i64 %b, 52
  %1 = trunc i64 %shr.i105 to i32
  %conv.i106 = and i32 %1, 2047
  %shr.i102175 = xor i64 %b, %a
  %xor101174 = lshr i64 %shr.i102175, 63
  %xor101 = trunc i64 %xor101174 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %conv.i)
  %cmp = icmp eq i32 %conv.i, 2047
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not = icmp eq i64 %and.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then.if.then12_crit_edge

if.then.if.then12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %conv.i106)
  %cmp9 = icmp ne i32 %conv.i106, 2047
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i104)
  %tobool11.not = icmp eq i64 %and.i104, 0
  %or.cond = or i1 %tobool11.not, %cmp9
  br i1 %or.cond, label %if.end, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.then.if.then12_crit_edge
  %2 = and i64 %a, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %2)
  %cmp.i25.i = icmp eq i64 %2, 9218868437227405312
  %and1.i.i = and i64 %a, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool.i.i = icmp ne i64 %and1.i.i, 0
  %3 = and i1 %cmp.i25.i, %tobool.i.i
  %4 = and i64 %b, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %4)
  %cmp.i29.i = icmp eq i64 %4, 9218868437227405312
  %and1.i30.i = and i64 %b, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i30.i)
  %tobool.i31.i = icmp ne i64 %and1.i30.i, 0
  %5 = and i1 %cmp.i29.i, %tobool.i31.i
  %or62333.i = or i1 %3, %5
  br i1 %or62333.i, label %if.then.i, label %if.then12.propagateFloat64NaN.exit_crit_edge

if.then12.propagateFloat64NaN.exit_crit_edge:     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat64NaN.exit

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat64NaN.exit

propagateFloat64NaN.exit:                         ; preds = %if.then.i, %if.then12.propagateFloat64NaN.exit_crit_edge
  %shl.i26.i = shl i64 %b, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740992, i64 %shl.i26.i)
  %cmp.i27.i = icmp ugt i64 %shl.i26.i, -9007199254740992
  %shl.i.i = shl i64 %a, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740991, i64 %shl.i.i)
  %cmp.i.i = icmp ult i64 %shl.i.i, -9007199254740991
  %and2434.i = and i1 %3, %cmp.i27.i
  %6 = or i1 %cmp.i.i, %and2434.i
  %retval.0.v.i = select i1 %6, i64 %b, i64 %a
  %retval.0.i = or i64 %retval.0.v.i, 2251799813685248
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv14171 = zext i32 %conv.i106 to i64
  %or = or i64 %and.i104, %conv14171
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or)
  %cmp15 = icmp eq i64 %or, 0
  br i1 %cmp15, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %exception = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %7 = ptrtoint ptr %exception to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %exception, align 1
  %9 = or i8 %8, 1
  store i8 %9, ptr %exception, align 1
  br label %cleanup

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = and i64 %shr.i102175, -9223372036854775808
  %add3.i = or i64 %shl.i, 9218868437227405312
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %conv.i106)
  %cmp24 = icmp eq i32 %conv.i106, 2047
  br i1 %cmp24, label %if.then26, label %if.end42

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i104)
  %tobool27.not = icmp eq i64 %and.i104, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.then26
  %10 = and i64 %a, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %10)
  %cmp.i25.i110 = icmp eq i64 %10, 9218868437227405312
  %and1.i.i111 = and i64 %a, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i111)
  %tobool.i.i112 = icmp ne i64 %and1.i.i111, 0
  %11 = and i1 %cmp.i25.i110, %tobool.i.i112
  %12 = and i64 %b, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %12)
  %cmp.i29.i113 = icmp eq i64 %12, 9218868437227405312
  %and1.i30.i114 = and i64 %b, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i30.i114)
  %tobool.i31.i115 = icmp ne i64 %and1.i30.i114, 0
  %13 = and i1 %cmp.i29.i113, %tobool.i31.i115
  %or62333.i116 = or i1 %11, %13
  br i1 %or62333.i116, label %if.then.i117, label %if.then28.propagateFloat64NaN.exit125_crit_edge

if.then28.propagateFloat64NaN.exit125_crit_edge:  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat64NaN.exit125

if.then.i117:                                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat64NaN.exit125

propagateFloat64NaN.exit125:                      ; preds = %if.then.i117, %if.then28.propagateFloat64NaN.exit125_crit_edge
  %shl.i26.i118 = shl i64 %b, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740992, i64 %shl.i26.i118)
  %cmp.i27.i119 = icmp ugt i64 %shl.i26.i118, -9007199254740992
  %shl.i.i120 = shl i64 %a, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740991, i64 %shl.i.i120)
  %cmp.i.i121 = icmp ult i64 %shl.i.i120, -9007199254740991
  %and2434.i122 = and i1 %11, %cmp.i27.i119
  %14 = or i1 %cmp.i.i121, %and2434.i122
  %retval.0.v.i123 = select i1 %14, i64 %b, i64 %a
  %retval.0.i124 = or i64 %retval.0.v.i123, 2251799813685248
  br label %cleanup

if.end30:                                         ; preds = %if.then26
  %conv31172 = zext i32 %conv.i to i64
  %or32 = or i64 %and.i, %conv31172
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or32)
  %cmp33 = icmp eq i64 %or32, 0
  br i1 %cmp33, label %if.then35, label %if.end40

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %exception36 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %15 = ptrtoint ptr %exception36 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %exception36, align 1
  %17 = or i8 %16, 1
  store i8 %17, ptr %exception36, align 1
  br label %cleanup

if.end40:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i127 = and i64 %shr.i102175, -9223372036854775808
  %add3.i128 = or i64 %shl.i127, 9218868437227405312
  br label %cleanup

if.end42:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp43 = icmp eq i32 %conv.i, 0
  br i1 %cmp43, label %if.then45, label %if.end42.if.end51_crit_edge

if.end42.if.end51_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %cmp46 = icmp eq i64 %and.i, 0
  br i1 %cmp46, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i130 = and i64 %shr.i102175, -9223372036854775808
  br label %cleanup

if.end50:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.i)
  %cmp.i.i131 = icmp ult i64 %and.i, 4294967296
  %shr.i.i = lshr i64 %and.i, 32
  %a.addr.0.off0.v.i.i = select i1 %cmp.i.i131, i64 %a, i64 %shr.i.i
  %a.addr.0.off0.i.i = trunc i64 %a.addr.0.off0.v.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %a.addr.0.off0.i.i)
  %cmp.i.i.i = icmp ult i32 %a.addr.0.off0.i.i, 65536
  %shl.i.i.i = shl i32 %a.addr.0.off0.i.i, 16
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %shl.i.i.i, i32 %a.addr.0.off0.i.i
  %spec.select21.i.i.i = select i1 %cmp.i.i.i, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i.i)
  %cmp2.i.i.i = icmp ult i32 %spec.select.i.i.i, 16777216
  %18 = or i8 %spec.select21.i.i.i, 8
  %shl8.i.i.i = shl i32 %spec.select.i.i.i, 8
  %a.addr.1.i.i.i = select i1 %cmp2.i.i.i, i32 %shl8.i.i.i, i32 %spec.select.i.i.i
  %shiftCount.1.i.i.i = select i1 %cmp2.i.i.i, i8 %18, i8 %spec.select21.i.i.i
  %shr.i.i.i = lshr i32 %a.addr.1.i.i.i, 24
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i.i
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i.i, align 1
  %add12.i.i.i = select i1 %cmp.i.i131, i8 21, i8 -11
  %add5.i.i = add nsw i8 %shiftCount.1.i.i.i, %add12.i.i.i
  %sub.i = add i8 %add5.i.i, %20
  %conv2.i = sext i8 %sub.i to i32
  %sh_prom.i = zext i32 %conv2.i to i64
  %shl.i132 = shl i64 %and.i, %sh_prom.i
  %sub4.i = sub nsw i32 1, %conv2.i
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end42.if.end51_crit_edge
  %aExp.0 = phi i32 [ %sub4.i, %if.end50 ], [ %conv.i, %if.end42.if.end51_crit_edge ]
  %aSig.0 = phi i64 [ %shl.i132, %if.end50 ], [ %and.i, %if.end42.if.end51_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i106)
  %cmp52 = icmp eq i32 %conv.i106, 0
  br i1 %cmp52, label %if.then54, label %if.end51.if.end60_crit_edge

if.end51.if.end60_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i104)
  %cmp55 = icmp eq i64 %and.i104, 0
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i134 = and i64 %shr.i102175, -9223372036854775808
  br label %cleanup

if.end59:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.i104)
  %cmp.i.i135 = icmp ult i64 %and.i104, 4294967296
  %shr.i.i136 = lshr i64 %and.i104, 32
  %a.addr.0.off0.v.i.i137 = select i1 %cmp.i.i135, i64 %b, i64 %shr.i.i136
  %a.addr.0.off0.i.i138 = trunc i64 %a.addr.0.off0.v.i.i137 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %a.addr.0.off0.i.i138)
  %cmp.i.i.i139 = icmp ult i32 %a.addr.0.off0.i.i138, 65536
  %shl.i.i.i140 = shl i32 %a.addr.0.off0.i.i138, 16
  %spec.select.i.i.i141 = select i1 %cmp.i.i.i139, i32 %shl.i.i.i140, i32 %a.addr.0.off0.i.i138
  %spec.select21.i.i.i142 = select i1 %cmp.i.i.i139, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i.i141)
  %cmp2.i.i.i143 = icmp ult i32 %spec.select.i.i.i141, 16777216
  %21 = or i8 %spec.select21.i.i.i142, 8
  %shl8.i.i.i144 = shl i32 %spec.select.i.i.i141, 8
  %a.addr.1.i.i.i145 = select i1 %cmp2.i.i.i143, i32 %shl8.i.i.i144, i32 %spec.select.i.i.i141
  %shiftCount.1.i.i.i146 = select i1 %cmp2.i.i.i143, i8 %21, i8 %spec.select21.i.i.i142
  %shr.i.i.i147 = lshr i32 %a.addr.1.i.i.i145, 24
  %arrayidx.i.i.i148 = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i.i147
  %22 = ptrtoint ptr %arrayidx.i.i.i148 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.i.i148, align 1
  %add12.i.i.i149 = select i1 %cmp.i.i135, i8 21, i8 -11
  %add5.i.i150 = add nsw i8 %shiftCount.1.i.i.i146, %add12.i.i.i149
  %sub.i151 = add i8 %add5.i.i150, %23
  %conv2.i152 = sext i8 %sub.i151 to i32
  %sh_prom.i153 = zext i32 %conv2.i152 to i64
  %shl.i154 = shl i64 %and.i104, %sh_prom.i153
  %sub4.i155 = sub nsw i32 1, %conv2.i152
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end51.if.end60_crit_edge
  %bExp.0 = phi i32 [ %sub4.i155, %if.end59 ], [ %conv.i106, %if.end51.if.end60_crit_edge ]
  %bSig.0 = phi i64 [ %shl.i154, %if.end59 ], [ %and.i104, %if.end51.if.end60_crit_edge ]
  %add = add nsw i32 %bExp.0, %aExp.0
  %or61 = shl i64 %aSig.0, 10
  %or62 = shl i64 %bSig.0, 11
  %shl = lshr i64 %or61, 32
  %shr.i156 = or i64 %shl, 1073741824
  %shl63 = lshr i64 %or62, 32
  %shr3.i = or i64 %shl63, 2147483648
  %conv5.i = and i64 %or61, 4294966272
  %conv6.i = and i64 %or62, 4294965248
  %mul.i = mul nuw i64 %conv6.i, %conv5.i
  %mul9.i = mul nuw i64 %shr3.i, %conv5.i
  %mul12.i = mul nuw i64 %conv6.i, %shr.i156
  %mul15.i = mul nuw i64 %shr3.i, %shr.i156
  %add.i = add i64 %mul9.i, %mul12.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %mul12.i)
  %cmp.i = icmp ult i64 %add.i, %mul12.i
  %shl.i157 = select i1 %cmp.i, i64 4294967296, i64 0
  %shr18.i = lshr i64 %add.i, 32
  %shl21.i = shl i64 %add.i, 32
  %add22.i = add i64 %shl21.i, %mul.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add22.i, i64 %shl21.i)
  %cmp23.i = icmp ult i64 %add22.i, %shl21.i
  %24 = zext i1 %cmp23.i to i64
  %add19.i = add nuw i64 %shr18.i, %mul15.i
  %add20.i = add i64 %add19.i, %shl.i157
  %add26.i = add i64 %add20.i, %24
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add22.i)
  %cmp64 = icmp ne i64 %add22.i, 0
  %25 = zext i1 %cmp64 to i64
  %or67 = or i64 %add26.i, %25
  %shl68 = shl i64 %or67, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %shl68)
  %cmp69 = icmp sgt i64 %shl68, -1
  %spec.select = select i1 %cmp69, i64 %shl68, i64 %or67
  %spec.select173.v = select i1 %cmp69, i32 -1024, i32 -1023
  %spec.select173 = add nsw i32 %add, %spec.select173.v
  %call74 = tail call fastcc i64 @roundAndPackFloat64(ptr noundef %roundData, i8 noundef zeroext %xor101, i32 noundef %spec.select173, i64 noundef %spec.select)
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then57, %if.then48, %if.end40, %if.then35, %propagateFloat64NaN.exit125, %if.end21, %if.then17, %propagateFloat64NaN.exit
  %retval.0 = phi i64 [ %retval.0.i, %propagateFloat64NaN.exit ], [ -1, %if.then17 ], [ %add3.i, %if.end21 ], [ %retval.0.i124, %propagateFloat64NaN.exit125 ], [ -1, %if.then35 ], [ %add3.i128, %if.end40 ], [ %shl.i130, %if.then48 ], [ %shl.i134, %if.then57 ], [ %call74, %if.end60 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @roundAndPackFloat64(ptr nocapture noundef %roundData, i8 noundef zeroext %zSign, i32 noundef %zExp, i64 noundef %zSig) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %roundData to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %roundData, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp4 = icmp eq i8 %1, 1
  br i1 %cmp4, label %if.then.if.end21_crit_edge, label %if.else

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %zSign)
  %tobool7.not = icmp eq i8 %zSign, 0
  br i1 %tobool7.not, label %if.else13, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp10 = icmp eq i8 %1, 3
  %spec.select116 = select i1 %cmp10, i32 0, i32 1023
  br label %if.end21

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp15 = icmp eq i8 %1, 2
  %spec.select118 = select i1 %cmp15, i32 0, i32 1023
  br label %if.end21

if.end21:                                         ; preds = %if.else13, %if.then8, %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  %cmp38.shrunk = phi i1 [ false, %entry.if.end21_crit_edge ], [ true, %if.then.if.end21_crit_edge ], [ %cmp10, %if.then8 ], [ %cmp15, %if.else13 ]
  %roundIncrement.0 = phi i32 [ 512, %entry.if.end21_crit_edge ], [ 0, %if.then.if.end21_crit_edge ], [ %spec.select116, %if.then8 ], [ %spec.select118, %if.else13 ]
  %2 = trunc i64 %zSig to i32
  %conv22 = and i32 %2, 1023
  %conv24 = and i32 %zExp, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 2044, i32 %conv24)
  %cmp25 = icmp ugt i32 %conv24, 2044
  br i1 %cmp25, label %if.then27, label %if.end21.if.end70_crit_edge

if.end21.if.end70_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2045, i32 %zExp)
  %cmp28 = icmp sgt i32 %zExp, 2045
  br i1 %cmp28, label %if.then27.if.then35_crit_edge, label %lor.lhs.false

if.then27.if.then35_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

lor.lhs.false:                                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_const_cmp4(i32 2045, i32 %zExp)
  %cmp30 = icmp eq i32 %zExp, 2045
  br i1 %cmp30, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = zext i32 %roundIncrement.0 to i64
  %add = add i64 %3, %zSig
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp33 = icmp slt i64 %add, 0
  br i1 %cmp33, label %land.lhs.true.if.then35_crit_edge, label %land.lhs.true.if.end70_crit_edge

land.lhs.true.if.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

land.lhs.true.if.then35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

if.then35:                                        ; preds = %land.lhs.true.if.then35_crit_edge, %if.then27.if.then35_crit_edge
  %exception = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %4 = ptrtoint ptr %exception to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %exception, align 1
  %6 = or i8 %5, 20
  store i8 %6, ptr %exception, align 1
  %conv.i = zext i8 %zSign to i64
  %shl.i = shl i64 %conv.i, 63
  %add3.i = or i64 %shl.i, 9218868437227405312
  %.neg = sext i1 %cmp38.shrunk to i64
  %sub = add i64 %add3.i, %.neg
  br label %cleanup

if.end41:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zExp)
  %cmp42 = icmp slt i32 %zExp, 0
  br i1 %cmp42, label %if.then44, label %if.end41.if.end70_crit_edge

if.end41.if.end70_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then44:                                        ; preds = %if.end41
  %7 = load i8, ptr @float_detect_tininess, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp46 = icmp eq i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %zExp)
  %cmp49 = icmp ne i32 %zExp, -1
  %or.cond = or i1 %cmp49, %cmp46
  br i1 %or.cond, label %if.then44.lor.end_crit_edge, label %lor.rhs

if.then44.lor.end_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  %8 = zext i32 %roundIncrement.0 to i64
  %add52 = add i64 %8, %zSig
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add52)
  %phi.cmp = icmp slt i64 %add52, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then44.lor.end_crit_edge
  %9 = phi i1 [ false, %if.then44.lor.end_crit_edge ], [ %phi.cmp, %lor.rhs ]
  %sub56 = sub i32 0, %zExp
  tail call void asm sideeffect "@shift64RightJamming -- start", ""() #8, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub56)
  %cmp1.i = icmp slt i32 %sub56, 64
  br i1 %cmp1.i, label %if.then2.i, label %if.else6.i

if.then2.i:                                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom.i = zext i32 %sub56 to i64
  %shr.i = lshr i64 %zSig, %sh_prom.i
  %and.i = and i32 %zExp, 63
  %sh_prom3.i = zext i32 %and.i to i64
  %shl.i120 = shl i64 %zSig, %sh_prom3.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i120)
  %cmp4.i = icmp ne i64 %shl.i120, 0
  %10 = zext i1 %cmp4.i to i64
  %or.i = or i64 %shr.i, %10
  br label %shift64RightJamming.exit

if.else6.i:                                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %zSig)
  %cmp7.i = icmp ne i64 %zSig, 0
  %11 = zext i1 %cmp7.i to i64
  br label %shift64RightJamming.exit

shift64RightJamming.exit:                         ; preds = %if.else6.i, %if.then2.i
  %z.0.i = phi i64 [ %or.i, %if.then2.i ], [ %11, %if.else6.i ]
  tail call void asm sideeffect "@shift64RightJamming -- end", ""() #8, !srcloc !18
  %12 = trunc i64 %z.0.i to i32
  %conv58 = and i32 %12, 1023
  br i1 %9, label %shift64RightJamming.exit.if.end70_crit_edge, label %land.lhs.true61

shift64RightJamming.exit.if.end70_crit_edge:      ; preds = %shift64RightJamming.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

land.lhs.true61:                                  ; preds = %shift64RightJamming.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv58)
  %tobool62.not = icmp eq i32 %conv58, 0
  br i1 %tobool62.not, label %land.lhs.true61.if.end77_crit_edge, label %if.end70.thread137

land.lhs.true61.if.end77_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.end70.thread137:                               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #10
  %exception64 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %13 = ptrtoint ptr %exception64 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %exception64, align 1
  %15 = or i8 %14, 8
  store i8 %15, ptr %exception64, align 1
  br label %if.then72

if.end70:                                         ; preds = %shift64RightJamming.exit.if.end70_crit_edge, %if.end41.if.end70_crit_edge, %land.lhs.true.if.end70_crit_edge, %if.end21.if.end70_crit_edge
  %zSig.addr.0 = phi i64 [ %z.0.i, %shift64RightJamming.exit.if.end70_crit_edge ], [ %zSig, %if.end41.if.end70_crit_edge ], [ %zSig, %if.end21.if.end70_crit_edge ], [ %zSig, %land.lhs.true.if.end70_crit_edge ]
  %zExp.addr.0 = phi i32 [ 0, %shift64RightJamming.exit.if.end70_crit_edge ], [ %zExp, %if.end41.if.end70_crit_edge ], [ %zExp, %if.end21.if.end70_crit_edge ], [ 2045, %land.lhs.true.if.end70_crit_edge ]
  %roundBits.0 = phi i32 [ %conv58, %shift64RightJamming.exit.if.end70_crit_edge ], [ %conv22, %if.end41.if.end70_crit_edge ], [ %conv22, %if.end21.if.end70_crit_edge ], [ %conv22, %land.lhs.true.if.end70_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %roundBits.0)
  %tobool71.not = icmp eq i32 %roundBits.0, 0
  br i1 %tobool71.not, label %if.end70.if.end77_crit_edge, label %if.end70.if.then72_crit_edge

if.end70.if.then72_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72

if.end70.if.end77_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then72:                                        ; preds = %if.end70.if.then72_crit_edge, %if.end70.thread137
  %roundBits.0144 = phi i32 [ %conv58, %if.end70.thread137 ], [ %roundBits.0, %if.end70.if.then72_crit_edge ]
  %zExp.addr.0143 = phi i32 [ 0, %if.end70.thread137 ], [ %zExp.addr.0, %if.end70.if.then72_crit_edge ]
  %zSig.addr.0142 = phi i64 [ %z.0.i, %if.end70.thread137 ], [ %zSig.addr.0, %if.end70.if.then72_crit_edge ]
  %exception73 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %16 = ptrtoint ptr %exception73 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %exception73, align 1
  %18 = or i8 %17, 16
  store i8 %18, ptr %exception73, align 1
  br label %if.end77

if.end77:                                         ; preds = %if.then72, %if.end70.if.end77_crit_edge, %land.lhs.true61.if.end77_crit_edge
  %roundBits.0136 = phi i32 [ %roundBits.0144, %if.then72 ], [ 0, %if.end70.if.end77_crit_edge ], [ 0, %land.lhs.true61.if.end77_crit_edge ]
  %zExp.addr.0135 = phi i32 [ %zExp.addr.0143, %if.then72 ], [ %zExp.addr.0, %if.end70.if.end77_crit_edge ], [ 0, %land.lhs.true61.if.end77_crit_edge ]
  %zSig.addr.0134 = phi i64 [ %zSig.addr.0142, %if.then72 ], [ %zSig.addr.0, %if.end70.if.end77_crit_edge ], [ %z.0.i, %land.lhs.true61.if.end77_crit_edge ]
  %19 = zext i32 %roundIncrement.0 to i64
  %add79 = add i64 %zSig.addr.0134, %19
  %shr = lshr i64 %add79, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %roundBits.0136)
  %cmp80 = icmp eq i32 %roundBits.0136, 512
  %and83115 = and i1 %cmp, %cmp80
  %and83 = zext i1 %and83115 to i32
  %neg = xor i32 %and83, -1
  %conv84 = sext i32 %neg to i64
  %and85 = and i64 %shr, %conv84
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and85)
  %cmp86 = icmp eq i64 %and85, 0
  %conv.i121 = zext i8 %zSign to i64
  %shl.i122 = shl i64 %conv.i121, 63
  %20 = zext i32 %zExp.addr.0135 to i64
  %.op = shl i64 %20, 52
  %shl2.i = select i1 %cmp86, i64 0, i64 %.op
  %add.i = or i64 %and85, %shl.i122
  %add3.i123 = add i64 %add.i, %shl2.i
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.then35
  %retval.0 = phi i64 [ %sub, %if.then35 ], [ %add3.i123, %if.end77 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @float64_div(ptr nocapture noundef %roundData, i64 noundef %a, i64 noundef %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i64 %a, 4503599627370495
  %shr.i = lshr i64 %a, 52
  %0 = trunc i64 %shr.i to i32
  %conv.i = and i32 %0, 2047
  %and.i125 = and i64 %b, 4503599627370495
  %shr.i126 = lshr i64 %b, 52
  %1 = trunc i64 %shr.i126 to i32
  %conv.i127 = and i32 %1, 2047
  %shr.i123228 = xor i64 %b, %a
  %xor122227 = lshr i64 %shr.i123228, 63
  %xor122 = trunc i64 %xor122227 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %conv.i)
  %cmp = icmp eq i32 %conv.i, 2047
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not = icmp eq i64 %and.i, 0
  br i1 %tobool.not, label %if.end, label %if.then9

if.then9:                                         ; preds = %if.then
  %2 = and i64 %a, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %2)
  %cmp.i25.i = icmp eq i64 %2, 9218868437227405312
  %and1.i.i = and i64 %a, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool.i.i = icmp ne i64 %and1.i.i, 0
  %3 = and i1 %cmp.i25.i, %tobool.i.i
  %4 = and i64 %b, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %4)
  %cmp.i29.i = icmp eq i64 %4, 9218868437227405312
  %and1.i30.i = and i64 %b, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i30.i)
  %tobool.i31.i = icmp ne i64 %and1.i30.i, 0
  %5 = and i1 %cmp.i29.i, %tobool.i31.i
  %or62333.i = or i1 %3, %5
  br i1 %or62333.i, label %if.then.i, label %if.then9.propagateFloat64NaN.exit_crit_edge

if.then9.propagateFloat64NaN.exit_crit_edge:      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat64NaN.exit

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat64NaN.exit

propagateFloat64NaN.exit:                         ; preds = %if.then.i, %if.then9.propagateFloat64NaN.exit_crit_edge
  %shl.i26.i = shl i64 %b, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740992, i64 %shl.i26.i)
  %cmp.i27.i = icmp ugt i64 %shl.i26.i, -9007199254740992
  %shl.i.i = shl i64 %a, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740991, i64 %shl.i.i)
  %cmp.i.i = icmp ult i64 %shl.i.i, -9007199254740991
  %and2434.i = and i1 %3, %cmp.i27.i
  %6 = or i1 %cmp.i.i, %and2434.i
  %retval.0.v.i = select i1 %6, i64 %b, i64 %a
  %retval.0.i = or i64 %retval.0.v.i, 2251799813685248
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %conv.i127)
  %cmp11 = icmp eq i32 %conv.i127, 2047
  br i1 %cmp11, label %if.then13, label %if.end20

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i125)
  %tobool14.not = icmp eq i64 %and.i125, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.then13
  %7 = and i64 %a, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %7)
  %cmp.i25.i130 = icmp eq i64 %7, 9218868437227405312
  %and1.i.i131 = and i64 %a, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i131)
  %tobool.i.i132 = icmp ne i64 %and1.i.i131, 0
  %8 = and i1 %cmp.i25.i130, %tobool.i.i132
  %9 = and i64 %b, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %9)
  %cmp.i29.i133 = icmp eq i64 %9, 9218868437227405312
  %and1.i30.i134 = and i64 %b, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i30.i134)
  %tobool.i31.i135 = icmp ne i64 %and1.i30.i134, 0
  %10 = and i1 %cmp.i29.i133, %tobool.i31.i135
  %or62333.i136 = or i1 %8, %10
  br i1 %or62333.i136, label %if.then.i137, label %if.then15.propagateFloat64NaN.exit145_crit_edge

if.then15.propagateFloat64NaN.exit145_crit_edge:  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat64NaN.exit145

if.then.i137:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat64NaN.exit145

propagateFloat64NaN.exit145:                      ; preds = %if.then.i137, %if.then15.propagateFloat64NaN.exit145_crit_edge
  %shl.i26.i138 = shl i64 %b, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740992, i64 %shl.i26.i138)
  %cmp.i27.i139 = icmp ugt i64 %shl.i26.i138, -9007199254740992
  %shl.i.i140 = shl i64 %a, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740991, i64 %shl.i.i140)
  %cmp.i.i141 = icmp ult i64 %shl.i.i140, -9007199254740991
  %and2434.i142 = and i1 %8, %cmp.i27.i139
  %11 = or i1 %cmp.i.i141, %and2434.i142
  %retval.0.v.i143 = select i1 %11, i64 %b, i64 %a
  %retval.0.i144 = or i64 %retval.0.v.i143, 2251799813685248
  br label %cleanup

if.end17:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %exception = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %12 = ptrtoint ptr %exception to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %exception, align 1
  %14 = or i8 %13, 1
  store i8 %14, ptr %exception, align 1
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = and i64 %shr.i123228, -9223372036854775808
  %add3.i = or i64 %shl.i, 9218868437227405312
  br label %cleanup

if.end22:                                         ; preds = %entry
  %15 = zext i32 %conv.i127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %conv.i127, label %if.end22.if.end54_crit_edge [
    i32 2047, label %if.then25
    i32 0, label %if.then34
  ]

if.end22.if.end54_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i125)
  %tobool26.not = icmp eq i64 %and.i125, 0
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %if.then25
  %16 = and i64 %a, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %16)
  %cmp.i25.i147 = icmp eq i64 %16, 9218868437227405312
  %and1.i.i148 = and i64 %a, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i148)
  %tobool.i.i149 = icmp ne i64 %and1.i.i148, 0
  %17 = and i1 %cmp.i25.i147, %tobool.i.i149
  %18 = and i64 %b, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %18)
  %cmp.i29.i150 = icmp eq i64 %18, 9218868437227405312
  %and1.i30.i151 = and i64 %b, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i30.i151)
  %tobool.i31.i152 = icmp ne i64 %and1.i30.i151, 0
  %19 = and i1 %cmp.i29.i150, %tobool.i31.i152
  %or62333.i153 = or i1 %17, %19
  br i1 %or62333.i153, label %if.then.i154, label %if.then27.propagateFloat64NaN.exit162_crit_edge

if.then27.propagateFloat64NaN.exit162_crit_edge:  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat64NaN.exit162

if.then.i154:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat64NaN.exit162

propagateFloat64NaN.exit162:                      ; preds = %if.then.i154, %if.then27.propagateFloat64NaN.exit162_crit_edge
  %shl.i26.i155 = shl i64 %b, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740992, i64 %shl.i26.i155)
  %cmp.i27.i156 = icmp ugt i64 %shl.i26.i155, -9007199254740992
  %shl.i.i157 = shl i64 %a, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740991, i64 %shl.i.i157)
  %cmp.i.i158 = icmp ult i64 %shl.i.i157, -9007199254740991
  %and2434.i159 = and i1 %17, %cmp.i27.i156
  %20 = or i1 %cmp.i.i158, %and2434.i159
  %retval.0.v.i160 = select i1 %20, i64 %b, i64 %a
  %retval.0.i161 = or i64 %retval.0.v.i160, 2251799813685248
  br label %cleanup

if.end29:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i164 = and i64 %shr.i123228, -9223372036854775808
  br label %cleanup

if.then34:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i125)
  %cmp35 = icmp eq i64 %and.i125, 0
  br i1 %cmp35, label %if.then37, label %if.end53

if.then37:                                        ; preds = %if.then34
  %conv38226 = zext i32 %conv.i to i64
  %or39 = or i64 %and.i, %conv38226
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or39)
  %cmp40 = icmp eq i64 %or39, 0
  %exception43 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %21 = ptrtoint ptr %exception43 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %exception43, align 1
  br i1 %cmp40, label %if.then42, label %if.end47

if.then42:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %23 = or i8 %22, 1
  %24 = ptrtoint ptr %exception43 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %exception43, align 1
  br label %cleanup

if.end47:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %25 = or i8 %22, 2
  %26 = ptrtoint ptr %exception43 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %exception43, align 1
  %shl.i166 = and i64 %shr.i123228, -9223372036854775808
  %add3.i167 = or i64 %shl.i166, 9218868437227405312
  br label %cleanup

if.end53:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.i125)
  %cmp.i.i168 = icmp ult i64 %and.i125, 4294967296
  %shr.i.i = lshr i64 %and.i125, 32
  %a.addr.0.off0.v.i.i = select i1 %cmp.i.i168, i64 %b, i64 %shr.i.i
  %a.addr.0.off0.i.i = trunc i64 %a.addr.0.off0.v.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %a.addr.0.off0.i.i)
  %cmp.i.i.i = icmp ult i32 %a.addr.0.off0.i.i, 65536
  %shl.i.i.i = shl i32 %a.addr.0.off0.i.i, 16
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %shl.i.i.i, i32 %a.addr.0.off0.i.i
  %spec.select21.i.i.i = select i1 %cmp.i.i.i, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i.i)
  %cmp2.i.i.i = icmp ult i32 %spec.select.i.i.i, 16777216
  %27 = or i8 %spec.select21.i.i.i, 8
  %shl8.i.i.i = shl i32 %spec.select.i.i.i, 8
  %a.addr.1.i.i.i = select i1 %cmp2.i.i.i, i32 %shl8.i.i.i, i32 %spec.select.i.i.i
  %shiftCount.1.i.i.i = select i1 %cmp2.i.i.i, i8 %27, i8 %spec.select21.i.i.i
  %shr.i.i.i = lshr i32 %a.addr.1.i.i.i, 24
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i.i
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i.i, align 1
  %add12.i.i.i = select i1 %cmp.i.i168, i8 21, i8 -11
  %add5.i.i = add nsw i8 %shiftCount.1.i.i.i, %add12.i.i.i
  %sub.i = add i8 %add5.i.i, %29
  %conv2.i = sext i8 %sub.i to i32
  %sh_prom.i = zext i32 %conv2.i to i64
  %shl.i169 = shl i64 %and.i125, %sh_prom.i
  %sub4.i = sub nsw i32 1, %conv2.i
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end22.if.end54_crit_edge
  %bExp.0 = phi i32 [ %conv.i127, %if.end22.if.end54_crit_edge ], [ %sub4.i, %if.end53 ]
  %bSig.0 = phi i64 [ %and.i125, %if.end22.if.end54_crit_edge ], [ %shl.i169, %if.end53 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp55 = icmp eq i32 %conv.i, 0
  br i1 %cmp55, label %if.then57, label %if.end54.if.end63_crit_edge

if.end54.if.end63_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %cmp58 = icmp eq i64 %and.i, 0
  br i1 %cmp58, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i171 = and i64 %shr.i123228, -9223372036854775808
  br label %cleanup

if.end62:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.i)
  %cmp.i.i172 = icmp ult i64 %and.i, 4294967296
  %shr.i.i173 = lshr i64 %and.i, 32
  %a.addr.0.off0.v.i.i174 = select i1 %cmp.i.i172, i64 %a, i64 %shr.i.i173
  %a.addr.0.off0.i.i175 = trunc i64 %a.addr.0.off0.v.i.i174 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %a.addr.0.off0.i.i175)
  %cmp.i.i.i176 = icmp ult i32 %a.addr.0.off0.i.i175, 65536
  %shl.i.i.i177 = shl i32 %a.addr.0.off0.i.i175, 16
  %spec.select.i.i.i178 = select i1 %cmp.i.i.i176, i32 %shl.i.i.i177, i32 %a.addr.0.off0.i.i175
  %spec.select21.i.i.i179 = select i1 %cmp.i.i.i176, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i.i178)
  %cmp2.i.i.i180 = icmp ult i32 %spec.select.i.i.i178, 16777216
  %30 = or i8 %spec.select21.i.i.i179, 8
  %shl8.i.i.i181 = shl i32 %spec.select.i.i.i178, 8
  %a.addr.1.i.i.i182 = select i1 %cmp2.i.i.i180, i32 %shl8.i.i.i181, i32 %spec.select.i.i.i178
  %shiftCount.1.i.i.i183 = select i1 %cmp2.i.i.i180, i8 %30, i8 %spec.select21.i.i.i179
  %shr.i.i.i184 = lshr i32 %a.addr.1.i.i.i182, 24
  %arrayidx.i.i.i185 = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i.i184
  %31 = ptrtoint ptr %arrayidx.i.i.i185 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.i.i185, align 1
  %add12.i.i.i186 = select i1 %cmp.i.i172, i8 21, i8 -11
  %add5.i.i187 = add nsw i8 %shiftCount.1.i.i.i183, %add12.i.i.i186
  %sub.i188 = add i8 %add5.i.i187, %32
  %conv2.i189 = sext i8 %sub.i188 to i32
  %sh_prom.i190 = zext i32 %conv2.i189 to i64
  %shl.i191 = shl i64 %and.i, %sh_prom.i190
  %sub4.i192 = sub nsw i32 1, %conv2.i189
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end54.if.end63_crit_edge
  %aExp.0 = phi i32 [ %sub4.i192, %if.end62 ], [ %conv.i, %if.end54.if.end63_crit_edge ]
  %aSig.0 = phi i64 [ %shl.i191, %if.end62 ], [ %and.i, %if.end54.if.end63_crit_edge ]
  %sub = sub nsw i32 %aExp.0, %bExp.0
  %or64 = shl i64 %aSig.0, 10
  %shl = or i64 %or64, 4611686018427387904
  %or65 = shl i64 %bSig.0, 11
  %shl66 = or i64 %or65, -9223372036854775808
  %add67 = shl i64 %shl, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl66, i64 %add67)
  %cmp68.not = icmp ugt i64 %shl66, %add67
  %not.cmp68.not = xor i1 %cmp68.not, true
  %shr = zext i1 %not.cmp68.not to i64
  %aSig.1 = lshr exact i64 %shl, %shr
  %zExp.0.v = select i1 %cmp68.not, i32 1021, i32 1022
  %zExp.0 = add nsw i32 %sub, %zExp.0.v
  call void @__sanitizer_cov_trace_cmp8(i64 %shl66, i64 %aSig.1)
  %cmp.not.i = icmp ugt i64 %shl66, %aSig.1
  br i1 %cmp.not.i, label %if.end.i, label %if.end63.if.end82_crit_edge

if.end63.if.end82_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.end.i:                                         ; preds = %if.end63
  %shr.i193 = lshr i64 %shl66, 32
  %shl.i194 = and i64 %shl66, -4294967296
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i194, i64 %aSig.1)
  %cmp1.not.i = icmp ugt i64 %shl.i194, %aSig.1
  br i1 %cmp1.not.i, label %if.else184.i, label %if.end.i.if.end191.i_crit_edge

if.end.i.if.end191.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191.i

if.else184.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i195 = trunc i64 %shr.i193 to i32
  %33 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i195, i64 %aSig.1) #11, !srcloc !37
  %asmresult1.i.i = extractvalue { i64, i64 } %33, 1
  %shl190.i = shl i64 %asmresult1.i.i, 32
  br label %if.end191.i

if.end191.i:                                      ; preds = %if.else184.i, %if.end.i.if.end191.i_crit_edge
  %storemerge.i = phi i64 [ %shl190.i, %if.else184.i ], [ -4294967296, %if.end.i.if.end191.i_crit_edge ]
  %shr3.i.i = lshr exact i64 %storemerge.i, 32
  %conv5.i.i = and i64 %or65, 4294965248
  %mul9.i.i = mul nuw i64 %shr3.i.i, %conv5.i.i
  %mul15.i.i = mul nuw i64 %shr3.i.i, %shr.i193
  %shr18.i.i = lshr i64 %mul9.i.i, 32
  %shl21.i.i = shl i64 %mul9.i.i, 32
  %sub.i607.i = sub i64 0, %shl21.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl21.i.i)
  %cmp.i608.i = icmp ne i64 %shl21.i.i, 0
  %.neg.i.i = sext i1 %cmp.i608.i to i64
  %34 = add nuw i64 %mul15.i.i, %shr18.i.i
  %sub1.i.i = sub i64 %aSig.1, %34
  %sub3.i.i = add i64 %sub1.i.i, %.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub3.i.i)
  %cmp192688.i = icmp slt i64 %sub3.i.i, 0
  br i1 %cmp192688.i, label %while.body.lr.ph.i, label %if.end191.i.while.end.i_crit_edge

if.end191.i.while.end.i_crit_edge:                ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end191.i
  %shl195.i = shl i64 %bSig.0, 43
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %z.1691.i = phi i64 [ %storemerge.i, %while.body.lr.ph.i ], [ %sub194.i, %while.body.i.while.body.i_crit_edge ]
  %rem1.0690.i = phi i64 [ %sub.i607.i, %while.body.lr.ph.i ], [ %add.i609.i, %while.body.i.while.body.i_crit_edge ]
  %rem0.0689.i = phi i64 [ %sub3.i.i, %while.body.lr.ph.i ], [ %add3.i.i, %while.body.i.while.body.i_crit_edge ]
  %sub194.i = add i64 %z.1691.i, -4294967296
  %add.i609.i = add i64 %rem1.0690.i, %shl195.i
  %add1.i.i = add i64 %rem0.0689.i, %shr.i193
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i609.i, i64 %rem1.0690.i)
  %cmp.i610.i = icmp ult i64 %add.i609.i, %rem1.0690.i
  %35 = zext i1 %cmp.i610.i to i64
  %add3.i.i = add i64 %add1.i.i, %35
  %cmp192.i = icmp slt i64 %add3.i.i, 0
  br i1 %cmp192.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end191.i.while.end.i_crit_edge
  %rem0.0.lcssa.i = phi i64 [ %sub3.i.i, %if.end191.i.while.end.i_crit_edge ], [ %add3.i.i, %while.body.i.while.end.i_crit_edge ]
  %rem1.0.lcssa.i = phi i64 [ %sub.i607.i, %if.end191.i.while.end.i_crit_edge ], [ %add.i609.i, %while.body.i.while.end.i_crit_edge ]
  %z.1.lcssa.i = phi i64 [ %storemerge.i, %if.end191.i.while.end.i_crit_edge ], [ %sub194.i, %while.body.i.while.end.i_crit_edge ]
  %or198.i = tail call i64 @llvm.fshl.i64(i64 %rem0.0.lcssa.i, i64 %rem1.0.lcssa.i, i64 32) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i194, i64 %or198.i)
  %cmp200.not.i = icmp ugt i64 %shl.i194, %or198.i
  br i1 %cmp200.not.i, label %if.else204.i, label %if.then202.i

if.then202.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %or203.i = or i64 %z.1.lcssa.i, 4294967295
  br label %estimateDiv128To64.exit

if.else204.i:                                     ; preds = %while.end.i
  %conv206.i = trunc i64 %shr.i193 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %or198.i)
  %cmp407.i = icmp ult i64 %or198.i, 4294967296
  br i1 %cmp407.i, label %if.then415.i, label %if.else421.i, !prof !38

if.then415.i:                                     ; preds = %if.else204.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv416.i = trunc i64 %or198.i to i32
  %div419.i = udiv i32 %conv416.i, %conv206.i
  %conv420.i = zext i32 %div419.i to i64
  br label %if.end425.i

if.else421.i:                                     ; preds = %if.else204.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv206.i, i64 %or198.i) #11, !srcloc !37
  %asmresult1.i635.i = extractvalue { i64, i64 } %36, 1
  br label %if.end425.i

if.end425.i:                                      ; preds = %if.else421.i, %if.then415.i
  %rem0.1.i = phi i64 [ %conv420.i, %if.then415.i ], [ %asmresult1.i635.i, %if.else421.i ]
  %or427.i = or i64 %rem0.1.i, %z.1.lcssa.i
  br label %estimateDiv128To64.exit

estimateDiv128To64.exit:                          ; preds = %if.end425.i, %if.then202.i
  %retval.0.i197 = phi i64 [ %or427.i, %if.end425.i ], [ %or203.i, %if.then202.i ]
  %and = and i64 %retval.0.i197, 511
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %and)
  %cmp73 = icmp ult i64 %and, 3
  br i1 %cmp73, label %if.then75, label %estimateDiv128To64.exit.if.end82_crit_edge

estimateDiv128To64.exit.if.end82_crit_edge:       ; preds = %estimateDiv128To64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then75:                                        ; preds = %estimateDiv128To64.exit
  %shr3.i = lshr i64 %retval.0.i197, 32
  %conv6.i = and i64 %retval.0.i197, 4294967295
  %mul.i199 = mul nuw i64 %conv6.i, %conv5.i.i
  %mul9.i = mul nuw i64 %shr3.i, %conv5.i.i
  %mul12.i = mul nuw i64 %conv6.i, %shr.i193
  %mul15.i = mul nuw i64 %shr3.i, %shr.i193
  %add.i200 = add i64 %mul9.i, %mul12.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i200, i64 %mul12.i)
  %cmp.i = icmp ult i64 %add.i200, %mul12.i
  %shl.i201.neg235 = select i1 %cmp.i, i64 -4294967296, i64 0
  %shr18.i = lshr i64 %add.i200, 32
  %shl21.i = shl i64 %add.i200, 32
  %add22.i = add i64 %shl21.i, %mul.i199
  call void @__sanitizer_cov_trace_cmp8(i64 %add22.i, i64 %shl21.i)
  %cmp23.i = icmp ult i64 %add22.i, %shl21.i
  %.neg = sext i1 %cmp23.i to i64
  %sub.i202 = sub i64 0, %add22.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add22.i)
  %cmp.i203 = icmp ne i64 %add22.i, 0
  %.neg.i = sext i1 %cmp.i203 to i64
  %37 = add i64 %mul15.i, %shr18.i
  %add20.i.neg = sub i64 %aSig.1, %37
  %add26.i.neg = add i64 %add20.i.neg, %shl.i201.neg235
  %sub1.i = add i64 %add26.i.neg, %.neg
  %sub3.i = add i64 %sub1.i, %.neg.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub3.i)
  %cmp76230 = icmp slt i64 %sub3.i, 0
  br i1 %cmp76230, label %if.then75.while.body_crit_edge, label %if.then75.while.end_crit_edge

if.then75.while.end_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then75.while.body_crit_edge:                   ; preds = %if.then75
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then75.while.body_crit_edge
  %zSig.0233 = phi i64 [ %dec, %while.body.while.body_crit_edge ], [ %retval.0.i197, %if.then75.while.body_crit_edge ]
  %rem1.0232 = phi i64 [ %add.i204, %while.body.while.body_crit_edge ], [ %sub.i202, %if.then75.while.body_crit_edge ]
  %rem0.0231 = phi i64 [ %add3.i206, %while.body.while.body_crit_edge ], [ %sub3.i, %if.then75.while.body_crit_edge ]
  %dec = add i64 %zSig.0233, -1
  %add.i204 = add i64 %rem1.0232, %shl66
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i204, i64 %rem1.0232)
  %cmp.i205 = icmp ult i64 %add.i204, %rem1.0232
  %38 = zext i1 %cmp.i205 to i64
  %add3.i206 = add nsw i64 %rem0.0231, %38
  %cmp76 = icmp slt i64 %add3.i206, 0
  br i1 %cmp76, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then75.while.end_crit_edge
  %rem1.0.lcssa = phi i64 [ %sub.i202, %if.then75.while.end_crit_edge ], [ %add.i204, %while.body.while.end_crit_edge ]
  %zSig.0.lcssa = phi i64 [ %retval.0.i197, %if.then75.while.end_crit_edge ], [ %dec, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem1.0.lcssa)
  %cmp78 = icmp ne i64 %rem1.0.lcssa, 0
  %39 = zext i1 %cmp78 to i64
  %or81 = or i64 %zSig.0.lcssa, %39
  br label %if.end82

if.end82:                                         ; preds = %while.end, %estimateDiv128To64.exit.if.end82_crit_edge, %if.end63.if.end82_crit_edge
  %zSig.1 = phi i64 [ %or81, %while.end ], [ %retval.0.i197, %estimateDiv128To64.exit.if.end82_crit_edge ], [ -1, %if.end63.if.end82_crit_edge ]
  %call83 = tail call fastcc i64 @roundAndPackFloat64(ptr noundef %roundData, i8 noundef zeroext %xor122, i32 noundef %zExp.0, i64 noundef %zSig.1)
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %if.then60, %if.end47, %if.then42, %if.end29, %propagateFloat64NaN.exit162, %if.end20, %if.end17, %propagateFloat64NaN.exit145, %propagateFloat64NaN.exit
  %retval.0 = phi i64 [ %retval.0.i, %propagateFloat64NaN.exit ], [ %retval.0.i144, %propagateFloat64NaN.exit145 ], [ -1, %if.end17 ], [ %add3.i, %if.end20 ], [ %retval.0.i161, %propagateFloat64NaN.exit162 ], [ %shl.i164, %if.end29 ], [ -1, %if.then42 ], [ %add3.i167, %if.end47 ], [ %shl.i171, %if.then60 ], [ %call83, %if.end82 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @float64_rem(ptr nocapture noundef %roundData, i64 noundef %a, i64 noundef %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i64 %a, 4503599627370495
  %shr.i = lshr i64 %a, 52
  %0 = trunc i64 %shr.i to i32
  %conv.i = and i32 %0, 2047
  %shr.i163 = lshr i64 %a, 63
  %conv.i164 = trunc i64 %shr.i163 to i8
  %and.i165 = and i64 %b, 4503599627370495
  %shr.i166 = lshr i64 %b, 52
  %1 = trunc i64 %shr.i166 to i32
  %conv.i167 = and i32 %1, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %conv.i)
  %cmp = icmp eq i32 %conv.i, 2047
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not = icmp eq i64 %and.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then.if.then8_crit_edge

if.then.if.then8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %conv.i167)
  %cmp6 = icmp ne i32 %conv.i167, 2047
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i165)
  %tobool7.not = icmp eq i64 %and.i165, 0
  %or.cond560 = or i1 %tobool7.not, %cmp6
  br i1 %or.cond560, label %if.end, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.then.if.then8_crit_edge
  %2 = and i64 %a, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %2)
  %cmp.i25.i = icmp eq i64 %2, 9218868437227405312
  %and1.i.i = and i64 %a, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool.i.i = icmp ne i64 %and1.i.i, 0
  %3 = and i1 %cmp.i25.i, %tobool.i.i
  %4 = and i64 %b, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %4)
  %cmp.i29.i = icmp eq i64 %4, 9218868437227405312
  %and1.i30.i = and i64 %b, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i30.i)
  %tobool.i31.i = icmp ne i64 %and1.i30.i, 0
  %5 = and i1 %cmp.i29.i, %tobool.i31.i
  %or62333.i = or i1 %3, %5
  br i1 %or62333.i, label %if.then.i, label %if.then8.propagateFloat64NaN.exit_crit_edge

if.then8.propagateFloat64NaN.exit_crit_edge:      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat64NaN.exit

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat64NaN.exit

propagateFloat64NaN.exit:                         ; preds = %if.then.i, %if.then8.propagateFloat64NaN.exit_crit_edge
  %shl.i26.i = shl i64 %b, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740992, i64 %shl.i26.i)
  %cmp.i27.i = icmp ugt i64 %shl.i26.i, -9007199254740992
  %shl.i.i = shl i64 %a, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740991, i64 %shl.i.i)
  %cmp.i.i = icmp ult i64 %shl.i.i, -9007199254740991
  %and2434.i = and i1 %3, %cmp.i27.i
  %6 = or i1 %cmp.i.i, %and2434.i
  %retval.0.v.i = select i1 %6, i64 %b, i64 %a
  %retval.0.i = or i64 %retval.0.v.i, 2251799813685248
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %exception = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %7 = ptrtoint ptr %exception to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %exception, align 1
  %9 = or i8 %8, 1
  store i8 %9, ptr %exception, align 1
  br label %cleanup

if.end11:                                         ; preds = %entry
  %10 = zext i32 %conv.i167 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %conv.i167, label %if.end11.if.end31_crit_edge [
    i32 2047, label %if.then14
    i32 0, label %if.then22
  ]

if.end11.if.end31_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i165)
  %tobool15.not = icmp eq i64 %and.i165, 0
  br i1 %tobool15.not, label %if.then14.cleanup_crit_edge, label %if.then16

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %if.then14
  %11 = and i64 %a, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %11)
  %cmp.i25.i170 = icmp eq i64 %11, 9218868437227405312
  %and1.i.i171 = and i64 %a, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i171)
  %tobool.i.i172 = icmp ne i64 %and1.i.i171, 0
  %12 = and i1 %cmp.i25.i170, %tobool.i.i172
  %13 = and i64 %b, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %13)
  %cmp.i29.i173 = icmp eq i64 %13, 9218868437227405312
  %and1.i30.i174 = and i64 %b, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i30.i174)
  %tobool.i31.i175 = icmp ne i64 %and1.i30.i174, 0
  %14 = and i1 %cmp.i29.i173, %tobool.i31.i175
  %or62333.i176 = or i1 %12, %14
  br i1 %or62333.i176, label %if.then.i177, label %if.then16.propagateFloat64NaN.exit185_crit_edge

if.then16.propagateFloat64NaN.exit185_crit_edge:  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat64NaN.exit185

if.then.i177:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat64NaN.exit185

propagateFloat64NaN.exit185:                      ; preds = %if.then.i177, %if.then16.propagateFloat64NaN.exit185_crit_edge
  %shl.i26.i178 = shl i64 %b, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740992, i64 %shl.i26.i178)
  %cmp.i27.i179 = icmp ugt i64 %shl.i26.i178, -9007199254740992
  %shl.i.i180 = shl i64 %a, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9007199254740991, i64 %shl.i.i180)
  %cmp.i.i181 = icmp ult i64 %shl.i.i180, -9007199254740991
  %and2434.i182 = and i1 %12, %cmp.i27.i179
  %15 = or i1 %cmp.i.i181, %and2434.i182
  %retval.0.v.i183 = select i1 %15, i64 %b, i64 %a
  %retval.0.i184 = or i64 %retval.0.v.i183, 2251799813685248
  br label %cleanup

if.then22:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i165)
  %cmp23 = icmp eq i64 %and.i165, 0
  br i1 %cmp23, label %if.then25, label %if.end30

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %exception26 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %16 = ptrtoint ptr %exception26 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %exception26, align 1
  %18 = or i8 %17, 1
  store i8 %18, ptr %exception26, align 1
  br label %cleanup

if.end30:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.i165)
  %cmp.i.i186 = icmp ult i64 %and.i165, 4294967296
  %shr.i.i = lshr i64 %and.i165, 32
  %a.addr.0.off0.v.i.i = select i1 %cmp.i.i186, i64 %b, i64 %shr.i.i
  %a.addr.0.off0.i.i = trunc i64 %a.addr.0.off0.v.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %a.addr.0.off0.i.i)
  %cmp.i.i.i = icmp ult i32 %a.addr.0.off0.i.i, 65536
  %shl.i.i.i = shl i32 %a.addr.0.off0.i.i, 16
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %shl.i.i.i, i32 %a.addr.0.off0.i.i
  %spec.select21.i.i.i = select i1 %cmp.i.i.i, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i.i)
  %cmp2.i.i.i = icmp ult i32 %spec.select.i.i.i, 16777216
  %19 = or i8 %spec.select21.i.i.i, 8
  %shl8.i.i.i = shl i32 %spec.select.i.i.i, 8
  %a.addr.1.i.i.i = select i1 %cmp2.i.i.i, i32 %shl8.i.i.i, i32 %spec.select.i.i.i
  %shiftCount.1.i.i.i = select i1 %cmp2.i.i.i, i8 %19, i8 %spec.select21.i.i.i
  %shr.i.i.i = lshr i32 %a.addr.1.i.i.i, 24
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i.i
  %20 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.i.i, align 1
  %add12.i.i.i = select i1 %cmp.i.i186, i8 21, i8 -11
  %add5.i.i = add nsw i8 %shiftCount.1.i.i.i, %add12.i.i.i
  %sub.i = add i8 %add5.i.i, %21
  %conv2.i = sext i8 %sub.i to i32
  %sh_prom.i = zext i32 %conv2.i to i64
  %shl.i = shl i64 %and.i165, %sh_prom.i
  %sub4.i = sub nsw i32 1, %conv2.i
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end11.if.end31_crit_edge
  %bExp.0 = phi i32 [ %conv.i167, %if.end11.if.end31_crit_edge ], [ %sub4.i, %if.end30 ]
  %bSig.0 = phi i64 [ %and.i165, %if.end11.if.end31_crit_edge ], [ %shl.i, %if.end30 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp32 = icmp eq i32 %conv.i, 0
  br i1 %cmp32, label %if.then34, label %if.end31.if.end39_crit_edge

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %cmp35 = icmp eq i64 %and.i, 0
  br i1 %cmp35, label %if.then34.cleanup_crit_edge, label %if.end38

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.i)
  %cmp.i.i187 = icmp ult i64 %and.i, 4294967296
  %shr.i.i188 = lshr i64 %and.i, 32
  %a.addr.0.off0.v.i.i189 = select i1 %cmp.i.i187, i64 %a, i64 %shr.i.i188
  %a.addr.0.off0.i.i190 = trunc i64 %a.addr.0.off0.v.i.i189 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %a.addr.0.off0.i.i190)
  %cmp.i.i.i191 = icmp ult i32 %a.addr.0.off0.i.i190, 65536
  %shl.i.i.i192 = shl i32 %a.addr.0.off0.i.i190, 16
  %spec.select.i.i.i193 = select i1 %cmp.i.i.i191, i32 %shl.i.i.i192, i32 %a.addr.0.off0.i.i190
  %spec.select21.i.i.i194 = select i1 %cmp.i.i.i191, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i.i193)
  %cmp2.i.i.i195 = icmp ult i32 %spec.select.i.i.i193, 16777216
  %22 = or i8 %spec.select21.i.i.i194, 8
  %shl8.i.i.i196 = shl i32 %spec.select.i.i.i193, 8
  %a.addr.1.i.i.i197 = select i1 %cmp2.i.i.i195, i32 %shl8.i.i.i196, i32 %spec.select.i.i.i193
  %shiftCount.1.i.i.i198 = select i1 %cmp2.i.i.i195, i8 %22, i8 %spec.select21.i.i.i194
  %shr.i.i.i199 = lshr i32 %a.addr.1.i.i.i197, 24
  %arrayidx.i.i.i200 = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i.i199
  %23 = ptrtoint ptr %arrayidx.i.i.i200 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.i.i200, align 1
  %add12.i.i.i201 = select i1 %cmp.i.i187, i8 21, i8 -11
  %add5.i.i202 = add nsw i8 %shiftCount.1.i.i.i198, %add12.i.i.i201
  %sub.i203 = add i8 %add5.i.i202, %24
  %conv2.i204 = sext i8 %sub.i203 to i32
  %sh_prom.i205 = zext i32 %conv2.i204 to i64
  %shl.i206 = shl i64 %and.i, %sh_prom.i205
  %sub4.i207 = sub nsw i32 1, %conv2.i204
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end31.if.end39_crit_edge
  %aExp.0 = phi i32 [ %sub4.i207, %if.end38 ], [ %conv.i, %if.end31.if.end39_crit_edge ]
  %aSig.0 = phi i64 [ %shl.i206, %if.end38 ], [ %and.i, %if.end31.if.end39_crit_edge ]
  %sub = sub nsw i32 %aExp.0, %bExp.0
  %or40 = shl i64 %aSig.0, 11
  %shl = or i64 %or40, -9223372036854775808
  %or41 = shl i64 %bSig.0, 11
  %shl42 = or i64 %or41, -9223372036854775808
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp43 = icmp slt i32 %sub, 0
  br i1 %cmp43, label %if.then45, label %if.end50

if.then45:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp46.not = icmp eq i32 %sub, -1
  br i1 %cmp46.not, label %while.end.thread, label %if.then45.cleanup_crit_edge

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.end.thread:                                 ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr exact i64 %shl, 1
  br label %if.else

if.end50:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %shl42)
  %cmp51 = icmp uge i64 %shl, %shl42
  %25 = zext i1 %cmp51 to i64
  %sub56 = select i1 %cmp51, i64 %shl42, i64 0
  %spec.select = sub nsw i64 %shl, %sub56
  %sub58 = add nsw i32 %sub, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub)
  %cmp59562 = icmp ugt i32 %sub, 64
  br i1 %cmp59562, label %while.body.lr.ph, label %if.end50.while.end_crit_edge

if.end50.while.end_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end50
  %shr.i208 = lshr i64 %shl42, 32
  %shl.i209 = and i64 %shl42, -4294967296
  %conv.i210 = trunc i64 %shr.i208 to i32
  %conv5.i.i = and i64 %or41, 4294965248
  %shl195.i = shl i64 %bSig.0, 43
  %shr65 = lshr exact i64 %shl42, 2
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %expDiff.0564 = phi i32 [ %sub58, %while.body.lr.ph ], [ %sub67, %while.cond.while.body_crit_edge ]
  %aSig.3563 = phi i64 [ %spec.select, %while.body.lr.ph ], [ %sub66, %while.cond.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %shl42, i64 %aSig.3563)
  %cmp.not.i = icmp ugt i64 %shl42, %aSig.3563
  br i1 %cmp.not.i, label %if.end.i, label %while.body.estimateDiv128To64.exit.thread_crit_edge

while.body.estimateDiv128To64.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %estimateDiv128To64.exit.thread

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i209, i64 %aSig.3563)
  %cmp1.not.i = icmp ugt i64 %shl.i209, %aSig.3563
  br i1 %cmp1.not.i, label %if.else172.i, label %if.end.i.if.end191.i_crit_edge

if.end.i.if.end191.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191.i

if.else172.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %aSig.3563)
  %cmp174.i = icmp ult i64 %aSig.3563, 4294967296
  br i1 %cmp174.i, label %if.then178.i, label %if.else184.i, !prof !38

if.then178.i:                                     ; preds = %if.else172.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv179.i = trunc i64 %aSig.3563 to i32
  %div182.i = udiv i32 %conv179.i, %conv.i210
  %conv183.i = zext i32 %div182.i to i64
  br label %if.end188.i

if.else184.i:                                     ; preds = %if.else172.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i210, i64 %aSig.3563) #11, !srcloc !37
  %asmresult1.i.i = extractvalue { i64, i64 } %26, 1
  br label %if.end188.i

if.end188.i:                                      ; preds = %if.else184.i, %if.then178.i
  %z.0.i = phi i64 [ %conv183.i, %if.then178.i ], [ %asmresult1.i.i, %if.else184.i ]
  %shl190.i = shl i64 %z.0.i, 32
  br label %if.end191.i

if.end191.i:                                      ; preds = %if.end188.i, %if.end.i.if.end191.i_crit_edge
  %storemerge.i = phi i64 [ %shl190.i, %if.end188.i ], [ -4294967296, %if.end.i.if.end191.i_crit_edge ]
  %shr3.i.i = lshr exact i64 %storemerge.i, 32
  %mul9.i.i = mul nuw i64 %shr3.i.i, %conv5.i.i
  %mul15.i.i = mul nuw i64 %shr3.i.i, %shr.i208
  %shr18.i.i = lshr i64 %mul9.i.i, 32
  %shl21.i.i = shl i64 %mul9.i.i, 32
  %sub.i607.i = sub i64 0, %shl21.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl21.i.i)
  %cmp.i608.i = icmp ne i64 %shl21.i.i, 0
  %.neg.i.i = sext i1 %cmp.i608.i to i64
  %27 = add i64 %mul15.i.i, %shr18.i.i
  %sub1.i.i = sub i64 %aSig.3563, %27
  %sub3.i.i = add i64 %sub1.i.i, %.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub3.i.i)
  %cmp192688.i = icmp slt i64 %sub3.i.i, 0
  br i1 %cmp192688.i, label %if.end191.i.while.body.i_crit_edge, label %if.end191.i.while.end.i_crit_edge

if.end191.i.while.end.i_crit_edge:                ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end191.i.while.body.i_crit_edge:               ; preds = %if.end191.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end191.i.while.body.i_crit_edge
  %z.1691.i = phi i64 [ %sub194.i, %while.body.i.while.body.i_crit_edge ], [ %storemerge.i, %if.end191.i.while.body.i_crit_edge ]
  %rem1.0690.i = phi i64 [ %add.i609.i, %while.body.i.while.body.i_crit_edge ], [ %sub.i607.i, %if.end191.i.while.body.i_crit_edge ]
  %rem0.0689.i = phi i64 [ %add3.i.i, %while.body.i.while.body.i_crit_edge ], [ %sub3.i.i, %if.end191.i.while.body.i_crit_edge ]
  %sub194.i = add i64 %z.1691.i, -4294967296
  %add.i609.i = add i64 %rem1.0690.i, %shl195.i
  %add1.i.i = add i64 %rem0.0689.i, %shr.i208
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i609.i, i64 %rem1.0690.i)
  %cmp.i610.i = icmp ult i64 %add.i609.i, %rem1.0690.i
  %28 = zext i1 %cmp.i610.i to i64
  %add3.i.i = add i64 %add1.i.i, %28
  %cmp192.i = icmp slt i64 %add3.i.i, 0
  br i1 %cmp192.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end191.i.while.end.i_crit_edge
  %rem0.0.lcssa.i = phi i64 [ %sub3.i.i, %if.end191.i.while.end.i_crit_edge ], [ %add3.i.i, %while.body.i.while.end.i_crit_edge ]
  %rem1.0.lcssa.i = phi i64 [ %sub.i607.i, %if.end191.i.while.end.i_crit_edge ], [ %add.i609.i, %while.body.i.while.end.i_crit_edge ]
  %z.1.lcssa.i = phi i64 [ %storemerge.i, %if.end191.i.while.end.i_crit_edge ], [ %sub194.i, %while.body.i.while.end.i_crit_edge ]
  %or198.i = tail call i64 @llvm.fshl.i64(i64 %rem0.0.lcssa.i, i64 %rem1.0.lcssa.i, i64 32) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i209, i64 %or198.i)
  %cmp200.not.i = icmp ugt i64 %shl.i209, %or198.i
  br i1 %cmp200.not.i, label %if.else405.i, label %if.then202.i

if.then202.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %or203.i = or i64 %z.1.lcssa.i, 4294967295
  br label %estimateDiv128To64.exit.thread

if.else405.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %or198.i)
  %cmp407.i = icmp ult i64 %or198.i, 4294967296
  br i1 %cmp407.i, label %if.then415.i, label %if.else421.i, !prof !38

if.then415.i:                                     ; preds = %if.else405.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv416.i = trunc i64 %or198.i to i32
  %div419.i = udiv i32 %conv416.i, %conv.i210
  %conv420.i = zext i32 %div419.i to i64
  br label %estimateDiv128To64.exit

if.else421.i:                                     ; preds = %if.else405.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i210, i64 %or198.i) #11, !srcloc !37
  %asmresult1.i635.i = extractvalue { i64, i64 } %29, 1
  br label %estimateDiv128To64.exit

estimateDiv128To64.exit:                          ; preds = %if.else421.i, %if.then415.i
  %rem0.1.i = phi i64 [ %conv420.i, %if.then415.i ], [ %asmresult1.i635.i, %if.else421.i ]
  %or427.i = or i64 %rem0.1.i, %z.1.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %or427.i)
  %cmp62 = icmp ugt i64 %or427.i, 2
  br i1 %cmp62, label %estimateDiv128To64.exit.estimateDiv128To64.exit.thread_crit_edge, label %estimateDiv128To64.exit.while.cond_crit_edge

estimateDiv128To64.exit.while.cond_crit_edge:     ; preds = %estimateDiv128To64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

estimateDiv128To64.exit.estimateDiv128To64.exit.thread_crit_edge: ; preds = %estimateDiv128To64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %estimateDiv128To64.exit.thread

estimateDiv128To64.exit.thread:                   ; preds = %estimateDiv128To64.exit.estimateDiv128To64.exit.thread_crit_edge, %if.then202.i, %while.body.estimateDiv128To64.exit.thread_crit_edge
  %sub64551.in = phi i64 [ %or427.i, %estimateDiv128To64.exit.estimateDiv128To64.exit.thread_crit_edge ], [ %or203.i, %if.then202.i ], [ -1, %while.body.estimateDiv128To64.exit.thread_crit_edge ]
  %sub64551 = add i64 %sub64551.in, -2
  br label %while.cond

while.cond:                                       ; preds = %estimateDiv128To64.exit.thread, %estimateDiv128To64.exit.while.cond_crit_edge
  %30 = phi i64 [ %sub64551, %estimateDiv128To64.exit.thread ], [ 0, %estimateDiv128To64.exit.while.cond_crit_edge ]
  %31 = mul i64 %shr65, %30
  %sub66 = sub i64 0, %31
  %sub67 = add i32 %expDiff.0564, -62
  %cmp59 = icmp sgt i32 %sub67, 0
  br i1 %cmp59, label %while.cond.while.body_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end50.while.end_crit_edge
  %aSig.3.lcssa = phi i64 [ %spec.select, %if.end50.while.end_crit_edge ], [ %sub66, %while.cond.while.end_crit_edge ]
  %expDiff.0.lcssa = phi i32 [ %sub58, %if.end50.while.end_crit_edge ], [ %sub67, %while.cond.while.end_crit_edge ]
  %q.0.lcssa = phi i64 [ %25, %if.end50.while.end_crit_edge ], [ %30, %while.cond.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %expDiff.0.lcssa)
  %cmp68 = icmp sgt i32 %expDiff.0.lcssa, -64
  br i1 %cmp68, label %if.then70, label %while.end.if.else_crit_edge

while.end.if.else_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then70:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_cmp8(i64 %shl42, i64 %aSig.3.lcssa)
  %cmp.not.i213 = icmp ugt i64 %shl42, %aSig.3.lcssa
  br i1 %cmp.not.i213, label %if.end.i217, label %if.then70.estimateDiv128To64.exit501.thread_crit_edge

if.then70.estimateDiv128To64.exit501.thread_crit_edge: ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  br label %estimateDiv128To64.exit501.thread

if.end.i217:                                      ; preds = %if.then70
  %shr.i214 = lshr i64 %shl42, 32
  %shl.i215 = and i64 %shl42, -4294967296
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i215, i64 %aSig.3.lcssa)
  %cmp1.not.i216 = icmp ugt i64 %shl.i215, %aSig.3.lcssa
  br i1 %cmp1.not.i216, label %if.else.i220, label %if.end.i217.if.end191.i355_crit_edge

if.end.i217.if.end191.i355_crit_edge:             ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191.i355

if.else.i220:                                     ; preds = %if.end.i217
  %conv.i218 = trunc i64 %shr.i214 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %aSig.3.lcssa)
  %cmp174.i331 = icmp ult i64 %aSig.3.lcssa, 4294967296
  br i1 %cmp174.i331, label %if.then178.i336, label %if.else184.i338, !prof !38

if.then178.i336:                                  ; preds = %if.else.i220
  call void @__sanitizer_cov_trace_pc() #10
  %conv179.i333 = trunc i64 %aSig.3.lcssa to i32
  %div182.i334 = udiv i32 %conv179.i333, %conv.i218
  %conv183.i335 = zext i32 %div182.i334 to i64
  br label %if.end188.i341

if.else184.i338:                                  ; preds = %if.else.i220
  call void @__sanitizer_cov_trace_pc() #10
  %32 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i218, i64 %aSig.3.lcssa) #11, !srcloc !37
  %asmresult1.i.i337 = extractvalue { i64, i64 } %32, 1
  br label %if.end188.i341

if.end188.i341:                                   ; preds = %if.else184.i338, %if.then178.i336
  %z.0.i339 = phi i64 [ %conv183.i335, %if.then178.i336 ], [ %asmresult1.i.i337, %if.else184.i338 ]
  %shl190.i340 = shl i64 %z.0.i339, 32
  br label %if.end191.i355

if.end191.i355:                                   ; preds = %if.end188.i341, %if.end.i217.if.end191.i355_crit_edge
  %storemerge.i342 = phi i64 [ %shl190.i340, %if.end188.i341 ], [ -4294967296, %if.end.i217.if.end191.i355_crit_edge ]
  %shr3.i.i343 = lshr exact i64 %storemerge.i342, 32
  %conv5.i.i344 = and i64 %or41, 4294965248
  %mul9.i.i345 = mul nuw i64 %shr3.i.i343, %conv5.i.i344
  %mul15.i.i346 = mul nuw i64 %shr3.i.i343, %shr.i214
  %shr18.i.i347 = lshr i64 %mul9.i.i345, 32
  %shl21.i.i348 = shl i64 %mul9.i.i345, 32
  %sub.i607.i349 = sub i64 0, %shl21.i.i348
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl21.i.i348)
  %cmp.i608.i350 = icmp ne i64 %shl21.i.i348, 0
  %.neg.i.i351 = sext i1 %cmp.i608.i350 to i64
  %33 = add nuw i64 %mul15.i.i346, %shr18.i.i347
  %sub1.i.i352 = sub i64 %aSig.3.lcssa, %33
  %sub3.i.i353 = add i64 %sub1.i.i352, %.neg.i.i351
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub3.i.i353)
  %cmp192688.i354 = icmp slt i64 %sub3.i.i353, 0
  br i1 %cmp192688.i354, label %while.body.lr.ph.i357, label %if.end191.i355.while.end.i373_crit_edge

if.end191.i355.while.end.i373_crit_edge:          ; preds = %if.end191.i355
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i373

while.body.lr.ph.i357:                            ; preds = %if.end191.i355
  %shl195.i356 = shl i64 %bSig.0, 43
  br label %while.body.i367

while.body.i367:                                  ; preds = %while.body.i367.while.body.i367_crit_edge, %while.body.lr.ph.i357
  %z.1691.i358 = phi i64 [ %storemerge.i342, %while.body.lr.ph.i357 ], [ %sub194.i361, %while.body.i367.while.body.i367_crit_edge ]
  %rem1.0690.i359 = phi i64 [ %sub.i607.i349, %while.body.lr.ph.i357 ], [ %add.i609.i362, %while.body.i367.while.body.i367_crit_edge ]
  %rem0.0689.i360 = phi i64 [ %sub3.i.i353, %while.body.lr.ph.i357 ], [ %add3.i.i365, %while.body.i367.while.body.i367_crit_edge ]
  %sub194.i361 = add i64 %z.1691.i358, -4294967296
  %add.i609.i362 = add i64 %rem1.0690.i359, %shl195.i356
  %add1.i.i363 = add i64 %rem0.0689.i360, %shr.i214
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i609.i362, i64 %rem1.0690.i359)
  %cmp.i610.i364 = icmp ult i64 %add.i609.i362, %rem1.0690.i359
  %34 = zext i1 %cmp.i610.i364 to i64
  %add3.i.i365 = add i64 %add1.i.i363, %34
  %cmp192.i366 = icmp slt i64 %add3.i.i365, 0
  br i1 %cmp192.i366, label %while.body.i367.while.body.i367_crit_edge, label %while.body.i367.while.end.i373_crit_edge

while.body.i367.while.end.i373_crit_edge:         ; preds = %while.body.i367
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i373

while.body.i367.while.body.i367_crit_edge:        ; preds = %while.body.i367
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i367

while.end.i373:                                   ; preds = %while.body.i367.while.end.i373_crit_edge, %if.end191.i355.while.end.i373_crit_edge
  %rem0.0.lcssa.i368 = phi i64 [ %sub3.i.i353, %if.end191.i355.while.end.i373_crit_edge ], [ %add3.i.i365, %while.body.i367.while.end.i373_crit_edge ]
  %rem1.0.lcssa.i369 = phi i64 [ %sub.i607.i349, %if.end191.i355.while.end.i373_crit_edge ], [ %add.i609.i362, %while.body.i367.while.end.i373_crit_edge ]
  %z.1.lcssa.i370 = phi i64 [ %storemerge.i342, %if.end191.i355.while.end.i373_crit_edge ], [ %sub194.i361, %while.body.i367.while.end.i373_crit_edge ]
  %or198.i371 = tail call i64 @llvm.fshl.i64(i64 %rem0.0.lcssa.i368, i64 %rem1.0.lcssa.i369, i64 32) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i215, i64 %or198.i371)
  %cmp200.not.i372 = icmp ugt i64 %shl.i215, %or198.i371
  br i1 %cmp200.not.i372, label %if.else204.i378, label %if.then202.i375

if.then202.i375:                                  ; preds = %while.end.i373
  call void @__sanitizer_cov_trace_pc() #10
  %or203.i374 = or i64 %z.1.lcssa.i370, 4294967295
  %phi.bo = add nsw i64 %or203.i374, -2
  br label %estimateDiv128To64.exit501.thread

if.else204.i378:                                  ; preds = %while.end.i373
  %conv206.i376 = trunc i64 %shr.i214 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %or198.i371)
  %cmp407.i489 = icmp ult i64 %or198.i371, 4294967296
  br i1 %cmp407.i489, label %if.then415.i494, label %if.else421.i496, !prof !38

if.then415.i494:                                  ; preds = %if.else204.i378
  call void @__sanitizer_cov_trace_pc() #10
  %conv416.i491 = trunc i64 %or198.i371 to i32
  %div419.i492 = udiv i32 %conv416.i491, %conv206.i376
  %conv420.i493 = zext i32 %div419.i492 to i64
  br label %estimateDiv128To64.exit501

if.else421.i496:                                  ; preds = %if.else204.i378
  call void @__sanitizer_cov_trace_pc() #10
  %35 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv206.i376, i64 %or198.i371) #11, !srcloc !37
  %asmresult1.i635.i495 = extractvalue { i64, i64 } %35, 1
  br label %estimateDiv128To64.exit501

estimateDiv128To64.exit501:                       ; preds = %if.else421.i496, %if.then415.i494
  %rem0.1.i497 = phi i64 [ %conv420.i493, %if.then415.i494 ], [ %asmresult1.i635.i495, %if.else421.i496 ]
  %or427.i498 = or i64 %rem0.1.i497, %z.1.lcssa.i370
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %or427.i498)
  %cmp72 = icmp ugt i64 %or427.i498, 2
  %sub75 = add i64 %or427.i498, -2
  br i1 %cmp72, label %estimateDiv128To64.exit501.estimateDiv128To64.exit501.thread_crit_edge, label %estimateDiv128To64.exit501._crit_edge

estimateDiv128To64.exit501._crit_edge:            ; preds = %estimateDiv128To64.exit501
  call void @__sanitizer_cov_trace_pc() #10
  br label %36

estimateDiv128To64.exit501.estimateDiv128To64.exit501.thread_crit_edge: ; preds = %estimateDiv128To64.exit501
  call void @__sanitizer_cov_trace_pc() #10
  br label %estimateDiv128To64.exit501.thread

estimateDiv128To64.exit501.thread:                ; preds = %estimateDiv128To64.exit501.estimateDiv128To64.exit501.thread_crit_edge, %if.then202.i375, %if.then70.estimateDiv128To64.exit501.thread_crit_edge
  %sub75555 = phi i64 [ %sub75, %estimateDiv128To64.exit501.estimateDiv128To64.exit501.thread_crit_edge ], [ %phi.bo, %if.then202.i375 ], [ -3, %if.then70.estimateDiv128To64.exit501.thread_crit_edge ]
  br label %36

36:                                               ; preds = %estimateDiv128To64.exit501.thread, %estimateDiv128To64.exit501._crit_edge
  %37 = phi i64 [ %sub75555, %estimateDiv128To64.exit501.thread ], [ 0, %estimateDiv128To64.exit501._crit_edge ]
  %sub79 = sub i32 0, %expDiff.0.lcssa
  %sh_prom = zext i32 %sub79 to i64
  %shr80 = lshr i64 %37, %sh_prom
  %shr81 = lshr exact i64 %shl42, 2
  %shr82 = lshr i64 %aSig.3.lcssa, 1
  %sub83 = add i32 %expDiff.0.lcssa, 63
  %sh_prom84 = zext i32 %sub83 to i64
  %shl85 = shl i64 %shr82, %sh_prom84
  %mul86 = mul i64 %shr80, %shr81
  %sub87 = sub i64 %shl85, %mul86
  br label %do.body

if.else:                                          ; preds = %while.end.if.else_crit_edge, %while.end.thread
  %q.0.lcssa578 = phi i64 [ 0, %while.end.thread ], [ %q.0.lcssa, %while.end.if.else_crit_edge ]
  %aSig.3.lcssa577 = phi i64 [ %shr, %while.end.thread ], [ %aSig.3.lcssa, %while.end.if.else_crit_edge ]
  %shr88 = lshr i64 %aSig.3.lcssa577, 2
  %shr89 = lshr exact i64 %shl42, 2
  br label %do.body

do.body:                                          ; preds = %if.else, %36
  %aSig.4 = phi i64 [ %sub87, %36 ], [ %shr88, %if.else ]
  %bSig.1 = phi i64 [ %shr81, %36 ], [ %shr89, %if.else ]
  %q.1 = phi i64 [ %shr80, %36 ], [ %q.0.lcssa578, %if.else ]
  %inc = add i64 %q.1, 1
  %sub91 = sub i64 %aSig.4, %bSig.1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub91)
  %cmp92 = icmp sgt i64 %sub91, -1
  br i1 %cmp92, label %do.body.1, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.body.1:                                        ; preds = %do.body
  %inc.1 = add i64 %q.1, 2
  %sub91.1 = sub i64 %sub91, %bSig.1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub91.1)
  %cmp92.1 = icmp sgt i64 %sub91.1, -1
  br i1 %cmp92.1, label %do.body.2, label %do.body.1.do.end_crit_edge

do.body.1.do.end_crit_edge:                       ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.body.2:                                        ; preds = %do.body.1
  %inc.2 = add i64 %q.1, 3
  %sub91.2 = sub i64 %sub91.1, %bSig.1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub91.2)
  %cmp92.2 = icmp sgt i64 %sub91.2, -1
  br i1 %cmp92.2, label %do.body.3, label %do.body.2.do.end_crit_edge

do.body.2.do.end_crit_edge:                       ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.body.3:                                        ; preds = %do.body.2
  %inc.3 = add i64 %q.1, 4
  %sub91.3 = sub i64 %sub91.2, %bSig.1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub91.3)
  %cmp92.3 = icmp sgt i64 %sub91.3, -1
  br i1 %cmp92.3, label %do.body.4, label %do.body.3.do.end_crit_edge

do.body.3.do.end_crit_edge:                       ; preds = %do.body.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.body.4:                                        ; preds = %do.body.3
  call void @__sanitizer_cov_trace_pc() #10
  %inc.4 = add i64 %q.1, 5
  %sub91.4 = sub i64 %sub91.3, %bSig.1
  br label %do.end

do.end:                                           ; preds = %do.body.4, %do.body.3.do.end_crit_edge, %do.body.2.do.end_crit_edge, %do.body.1.do.end_crit_edge, %do.body.do.end_crit_edge
  %aSig.5.lcssa = phi i64 [ %aSig.4, %do.body.do.end_crit_edge ], [ %sub91, %do.body.1.do.end_crit_edge ], [ %sub91.1, %do.body.2.do.end_crit_edge ], [ %sub91.2, %do.body.3.do.end_crit_edge ], [ %sub91.3, %do.body.4 ]
  %inc.lcssa = phi i64 [ %inc, %do.body.do.end_crit_edge ], [ %inc.1, %do.body.1.do.end_crit_edge ], [ %inc.2, %do.body.2.do.end_crit_edge ], [ %inc.3, %do.body.3.do.end_crit_edge ], [ %inc.4, %do.body.4 ]
  %sub91.lcssa = phi i64 [ %sub91, %do.body.do.end_crit_edge ], [ %sub91.1, %do.body.1.do.end_crit_edge ], [ %sub91.2, %do.body.2.do.end_crit_edge ], [ %sub91.3, %do.body.3.do.end_crit_edge ], [ %sub91.4, %do.body.4 ]
  %add94 = add i64 %sub91.lcssa, %aSig.5.lcssa
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add94)
  %cmp95 = icmp slt i64 %add94, 0
  br i1 %cmp95, label %do.end.if.end103_crit_edge, label %lor.lhs.false97

do.end.if.end103_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

lor.lhs.false97:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add94)
  %cmp98 = icmp ne i64 %add94, 0
  %and = and i64 %inc.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool101.not = icmp eq i64 %and, 0
  %or.cond = select i1 %cmp98, i1 true, i1 %tobool101.not
  br i1 %or.cond, label %lor.lhs.false97.if.then108_crit_edge, label %lor.lhs.false97.if.end103_crit_edge

lor.lhs.false97.if.end103_crit_edge:              ; preds = %lor.lhs.false97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

lor.lhs.false97.if.then108_crit_edge:             ; preds = %lor.lhs.false97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then108

if.end103:                                        ; preds = %lor.lhs.false97.if.end103_crit_edge, %do.end.if.end103_crit_edge
  %.lobit = lshr i64 %aSig.5.lcssa, 63
  %38 = trunc i64 %.lobit to i8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %aSig.5.lcssa)
  %tobool107.not = icmp sgt i64 %aSig.5.lcssa, -1
  br i1 %tobool107.not, label %if.end103.if.end110_crit_edge, label %if.end103.if.then108_crit_edge

if.end103.if.then108_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then108

if.end103.if.end110_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.then108:                                       ; preds = %if.end103.if.then108_crit_edge, %lor.lhs.false97.if.then108_crit_edge
  %39 = phi i8 [ %38, %if.end103.if.then108_crit_edge ], [ 1, %lor.lhs.false97.if.then108_crit_edge ]
  %aSig.6559 = phi i64 [ %aSig.5.lcssa, %if.end103.if.then108_crit_edge ], [ %sub91.lcssa, %lor.lhs.false97.if.then108_crit_edge ]
  %sub109 = sub i64 0, %aSig.6559
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.end103.if.end110_crit_edge
  %40 = phi i8 [ %38, %if.end103.if.end110_crit_edge ], [ %39, %if.then108 ]
  %aSig.7 = phi i64 [ %aSig.5.lcssa, %if.end103.if.end110_crit_edge ], [ %sub109, %if.then108 ]
  %xor = xor i8 %40, %conv.i164
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %aSig.7)
  %cmp.i.i502 = icmp ult i64 %aSig.7, 4294967296
  %shr.i.i503 = lshr i64 %aSig.7, 32
  %a.addr.0.off0.v.i.i504 = select i1 %cmp.i.i502, i64 %aSig.7, i64 %shr.i.i503
  %a.addr.0.off0.i.i505 = trunc i64 %a.addr.0.off0.v.i.i504 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %a.addr.0.off0.i.i505)
  %cmp.i.i.i506 = icmp ult i32 %a.addr.0.off0.i.i505, 65536
  %shl.i.i.i507 = shl i32 %a.addr.0.off0.i.i505, 16
  %spec.select.i.i.i508 = select i1 %cmp.i.i.i506, i32 %shl.i.i.i507, i32 %a.addr.0.off0.i.i505
  %spec.select21.i.i.i509 = select i1 %cmp.i.i.i506, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i.i508)
  %cmp2.i.i.i510 = icmp ult i32 %spec.select.i.i.i508, 16777216
  %41 = or i8 %spec.select21.i.i.i509, 8
  %shl8.i.i.i511 = shl i32 %spec.select.i.i.i508, 8
  %a.addr.1.i.i.i512 = select i1 %cmp2.i.i.i510, i32 %shl8.i.i.i511, i32 %spec.select.i.i.i508
  %shiftCount.1.i.i.i513 = select i1 %cmp2.i.i.i510, i8 %41, i8 %spec.select21.i.i.i509
  %shr.i.i.i514 = lshr i32 %a.addr.1.i.i.i512, 24
  %arrayidx.i.i.i515 = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i.i514
  %42 = ptrtoint ptr %arrayidx.i.i.i515 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i.i.i515, align 1
  %add12.i.i.i516 = select i1 %cmp.i.i502, i8 31, i8 -1
  %add5.i.i517 = add i8 %add12.i.i.i516, %43
  %sub.i518 = add i8 %add5.i.i517, %shiftCount.1.i.i.i513
  %conv2.i519 = sext i8 %sub.i518 to i32
  %sub3.i = sub nsw i32 %bExp.0, %conv2.i519
  %sh_prom.i520 = zext i32 %conv2.i519 to i64
  %shl.i521 = shl i64 %aSig.7, %sh_prom.i520
  %call5.i = tail call fastcc i64 @roundAndPackFloat64(ptr noundef %roundData, i8 noundef zeroext %xor, i32 noundef %sub3.i, i64 noundef %shl.i521) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %if.then45.cleanup_crit_edge, %if.then34.cleanup_crit_edge, %if.then25, %propagateFloat64NaN.exit185, %if.then14.cleanup_crit_edge, %if.end, %propagateFloat64NaN.exit
  %retval.0 = phi i64 [ %retval.0.i, %propagateFloat64NaN.exit ], [ -1, %if.end ], [ %retval.0.i184, %propagateFloat64NaN.exit185 ], [ -1, %if.then25 ], [ %call5.i, %if.end110 ], [ %a, %if.then14.cleanup_crit_edge ], [ %a, %if.then34.cleanup_crit_edge ], [ %a, %if.then45.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @float64_sqrt(ptr nocapture noundef %roundData, i64 noundef %a) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i64 %a, 4503599627370495
  %shr.i = lshr i64 %a, 52
  %0 = trunc i64 %shr.i to i32
  %conv.i = and i32 %0, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %conv.i)
  %cmp = icmp eq i32 %conv.i, 2047
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not = icmp eq i64 %and.i, 0
  br i1 %tobool.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %1 = and i64 %a, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %1)
  %cmp.i25.i = icmp eq i64 %1, 9218868437227405312
  %and1.i.i = and i64 %a, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool.i.i = icmp ne i64 %and1.i.i, 0
  %2 = and i1 %cmp.i25.i, %tobool.i.i
  br i1 %2, label %if.then.i, label %if.then3.propagateFloat64NaN.exit_crit_edge

if.then3.propagateFloat64NaN.exit_crit_edge:      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloat64NaN.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %propagateFloat64NaN.exit

propagateFloat64NaN.exit:                         ; preds = %if.then.i, %if.then3.propagateFloat64NaN.exit_crit_edge
  %retval.0.i = or i64 %a, 2251799813685248
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %a)
  %tobool5.not = icmp sgt i64 %a, -1
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %exception = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %3 = ptrtoint ptr %exception to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %exception, align 1
  %5 = or i8 %4, 1
  store i8 %5, ptr %exception, align 1
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %a)
  %tobool10.not = icmp sgt i64 %a, -1
  br i1 %tobool10.not, label %if.end22, label %if.then11

if.then11:                                        ; preds = %if.end9
  %conv12165 = zext i32 %conv.i to i64
  %or13 = or i64 %and.i, %conv12165
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or13)
  %cmp14 = icmp eq i64 %or13, 0
  br i1 %cmp14, label %if.then11.cleanup_crit_edge, label %if.end17

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %exception18 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %6 = ptrtoint ptr %exception18 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %exception18, align 1
  %8 = or i8 %7, 1
  store i8 %8, ptr %exception18, align 1
  br label %cleanup

if.end22:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp23 = icmp eq i32 %conv.i, 0
  br i1 %cmp23, label %if.then25, label %if.end22.if.end30_crit_edge

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %cmp26 = icmp eq i64 %and.i, 0
  br i1 %cmp26, label %if.then25.cleanup_crit_edge, label %if.end29

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %and.i)
  %cmp.i.i81 = icmp ult i64 %and.i, 4294967296
  %shr.i.i = lshr i64 %and.i, 32
  %a.addr.0.off0.v.i.i = select i1 %cmp.i.i81, i64 %a, i64 %shr.i.i
  %a.addr.0.off0.i.i = trunc i64 %a.addr.0.off0.v.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %a.addr.0.off0.i.i)
  %cmp.i.i.i = icmp ult i32 %a.addr.0.off0.i.i, 65536
  %shl.i.i.i = shl i32 %a.addr.0.off0.i.i, 16
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %shl.i.i.i, i32 %a.addr.0.off0.i.i
  %spec.select21.i.i.i = select i1 %cmp.i.i.i, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i.i)
  %cmp2.i.i.i = icmp ult i32 %spec.select.i.i.i, 16777216
  %9 = or i8 %spec.select21.i.i.i, 8
  %shl8.i.i.i = shl i32 %spec.select.i.i.i, 8
  %a.addr.1.i.i.i = select i1 %cmp2.i.i.i, i32 %shl8.i.i.i, i32 %spec.select.i.i.i
  %shiftCount.1.i.i.i = select i1 %cmp2.i.i.i, i8 %9, i8 %spec.select21.i.i.i
  %shr.i.i.i = lshr i32 %a.addr.1.i.i.i, 24
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i.i
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i.i, align 1
  %add12.i.i.i = select i1 %cmp.i.i81, i8 21, i8 -11
  %add5.i.i = add nsw i8 %shiftCount.1.i.i.i, %add12.i.i.i
  %sub.i = add i8 %add5.i.i, %11
  %conv2.i = sext i8 %sub.i to i32
  %sh_prom.i = zext i32 %conv2.i to i64
  %shl.i = shl i64 %and.i, %sh_prom.i
  %sub4.i = sub nsw i32 1, %conv2.i
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end22.if.end30_crit_edge
  %aExp.0 = phi i32 [ %sub4.i, %if.end29 ], [ %conv.i, %if.end22.if.end30_crit_edge ]
  %aSig.0 = phi i64 [ %shl.i, %if.end29 ], [ %and.i, %if.end22.if.end30_crit_edge ]
  %sub = add nsw i32 %aExp.0, -1023
  %shr = ashr i32 %sub, 1
  %add = add nsw i32 %shr, 1022
  %or31 = or i64 %aSig.0, 4503599627370496
  %shr32 = lshr i64 %or31, 21
  %conv33 = trunc i64 %shr32 to i32
  %shr.i82 = lshr i32 %conv33, 27
  %12 = trunc i32 %shr.i82 to i8
  %conv.i83 = and i8 %12, 15
  %and1.i = and i32 %aExp.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %shr7.i = lshr i32 %conv33, 17
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i86

if.then.i86:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %shr7.i, 16384
  %13 = zext i8 %conv.i83 to i32
  %arrayidx.i = getelementptr [16 x i16], ptr @estimateSqrt32.sqrtOddAdjustments, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i, align 2
  %conv3.i = zext i16 %15 to i32
  %sub.i84 = sub nsw i32 %add.i, %conv3.i
  %div.i = udiv i32 %conv33, %sub.i84
  %shl.i85 = shl i32 %div.i, 14
  %shl4.i = shl nsw i32 %sub.i84, 15
  %add5.i = add i32 %shl4.i, %shl.i85
  %shr6.i = lshr i32 %conv33, 1
  br label %if.end21.i

if.else.i:                                        ; preds = %if.end30
  %add8.i = or i32 %shr7.i, 32768
  %16 = zext i8 %conv.i83 to i32
  %arrayidx10.i = getelementptr [16 x i16], ptr @estimateSqrt32.sqrtEvenAdjustments, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx10.i, align 2
  %conv11.i = zext i16 %18 to i32
  %sub12.i = sub nsw i32 %add8.i, %conv11.i
  %div13.i = udiv i32 %conv33, %sub12.i
  %add14.i = add i32 %sub12.i, %div13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %add14.i)
  %cmp.i = icmp ugt i32 %add14.i, 131071
  %shl16.i = shl i32 %add14.i, 15
  %spec.select.i = select i1 %cmp.i, i32 -32768, i32 %shl16.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %conv33)
  %cmp17.not.i = icmp ugt i32 %spec.select.i, %conv33
  br i1 %cmp17.not.i, label %if.else.i.if.end21.i_crit_edge, label %if.then19.i

if.else.i.if.end21.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr20.i = ashr i32 %conv33, 1
  br label %estimateSqrt32.exit

if.end21.i:                                       ; preds = %if.else.i.if.end21.i_crit_edge, %if.then.i86
  %z.0.i = phi i32 [ %add5.i, %if.then.i86 ], [ %spec.select.i, %if.else.i.if.end21.i_crit_edge ]
  %a.addr.0.i = phi i32 [ %shr6.i, %if.then.i86 ], [ %conv33, %if.else.i.if.end21.i_crit_edge ]
  %conv22.i = zext i32 %a.addr.0.i to i64
  %shl23.i = shl nuw nsw i64 %conv22.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %a.addr.0.i)
  %cmp204.i = icmp ult i32 %a.addr.0.i, 2
  br i1 %cmp204.i, label %if.then208.i, label %if.else214.i, !prof !38

if.then208.i:                                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv209.i = trunc i64 %shl23.i to i32
  %div212.i = udiv i32 %conv209.i, %z.0.i
  br label %if.end218.i

if.else214.i:                                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %z.0.i, i64 %shl23.i) #11, !srcloc !37
  %asmresult1.i.i = extractvalue { i64, i64 } %19, 1
  %extract.t346.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end218.i

if.end218.i:                                      ; preds = %if.else214.i, %if.then208.i
  %A.0.off0.i = phi i32 [ %div212.i, %if.then208.i ], [ %extract.t346.i, %if.else214.i ]
  %shr221.i = lshr i32 %z.0.i, 1
  %add222.i = add i32 %A.0.off0.i, %shr221.i
  br label %estimateSqrt32.exit

estimateSqrt32.exit:                              ; preds = %if.end218.i, %if.then19.i
  %retval.0.i88 = phi i32 [ %add222.i, %if.end218.i ], [ %shr20.i, %if.then19.i ]
  %conv35 = zext i32 %retval.0.i88 to i64
  %shl = shl nuw nsw i64 %conv35, 31
  %sub36 = sub nuw nsw i32 9, %and1.i
  %sh_prom = zext i32 %sub36 to i64
  %shl37 = shl i64 %or31, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %shl37)
  %cmp.not.i = icmp ugt i64 %shl, %shl37
  br i1 %cmp.not.i, label %if.end.i, label %estimateSqrt32.exit.estimateDiv128To64.exit_crit_edge

estimateSqrt32.exit.estimateDiv128To64.exit_crit_edge: ; preds = %estimateSqrt32.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %estimateDiv128To64.exit

if.end.i:                                         ; preds = %estimateSqrt32.exit
  %shr.i89 = lshr i64 %conv35, 1
  %shl.i90 = and i64 %shl, 9223372032559808512
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i90, i64 %shl37)
  %cmp1.not.i = icmp ugt i64 %shl.i90, %shl37
  br i1 %cmp1.not.i, label %if.else.i93, label %if.end.i.if.end191.i_crit_edge

if.end.i.if.end191.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191.i

if.else.i93:                                      ; preds = %if.end.i
  %conv.i91 = trunc i64 %shr.i89 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl37)
  %cmp174.i = icmp ult i64 %shl37, 4294967296
  br i1 %cmp174.i, label %if.then178.i, label %if.else184.i, !prof !38

if.then178.i:                                     ; preds = %if.else.i93
  call void @__sanitizer_cov_trace_pc() #10
  %conv179.i = trunc i64 %shl37 to i32
  %div182.i = udiv i32 %conv179.i, %conv.i91
  %conv183.i = zext i32 %div182.i to i64
  br label %if.end188.i

if.else184.i:                                     ; preds = %if.else.i93
  call void @__sanitizer_cov_trace_pc() #10
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i91, i64 %shl37) #11, !srcloc !37
  %asmresult1.i.i127 = extractvalue { i64, i64 } %20, 1
  br label %if.end188.i

if.end188.i:                                      ; preds = %if.else184.i, %if.then178.i
  %z.0.i128 = phi i64 [ %conv183.i, %if.then178.i ], [ %asmresult1.i.i127, %if.else184.i ]
  %shl190.i = shl i64 %z.0.i128, 32
  br label %if.end191.i

if.end191.i:                                      ; preds = %if.end188.i, %if.end.i.if.end191.i_crit_edge
  %storemerge.i = phi i64 [ %shl190.i, %if.end188.i ], [ -4294967296, %if.end.i.if.end191.i_crit_edge ]
  %shr3.i.i = lshr exact i64 %storemerge.i, 32
  %conv5.i.i = and i64 %shl, 2147483648
  %mul9.i.i = mul nuw nsw i64 %shr3.i.i, %conv5.i.i
  %mul15.i.i = mul nuw nsw i64 %shr3.i.i, %shr.i89
  %shr18.i.i = lshr i64 %mul9.i.i, 32
  %shl21.i.i = shl i64 %mul9.i.i, 32
  %sext = ashr exact i64 %shl21.i.i, 63
  %21 = add nuw nsw i64 %mul15.i.i, %shr18.i.i
  %sub1.i.i = sub i64 %shl37, %21
  %sub3.i.i = add i64 %sub1.i.i, %sext
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub3.i.i)
  %cmp192688.i = icmp slt i64 %sub3.i.i, 0
  br i1 %cmp192688.i, label %while.body.lr.ph.i, label %if.end191.i.while.end.i_crit_edge

if.end191.i.while.end.i_crit_edge:                ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end191.i
  %shl195.i = shl i64 %conv35, 63
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %z.1691.i = phi i64 [ %storemerge.i, %while.body.lr.ph.i ], [ %sub194.i, %while.body.i.while.body.i_crit_edge ]
  %rem1.0690.i = phi i64 [ %shl21.i.i, %while.body.lr.ph.i ], [ %add.i609.i, %while.body.i.while.body.i_crit_edge ]
  %rem0.0689.i = phi i64 [ %sub3.i.i, %while.body.lr.ph.i ], [ %add3.i.i, %while.body.i.while.body.i_crit_edge ]
  %sub194.i = add i64 %z.1691.i, -4294967296
  %add.i609.i = add i64 %rem1.0690.i, %shl195.i
  %add1.i.i = add i64 %rem0.0689.i, %shr.i89
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i609.i, i64 %rem1.0690.i)
  %cmp.i610.i = icmp ult i64 %add.i609.i, %rem1.0690.i
  %22 = zext i1 %cmp.i610.i to i64
  %add3.i.i = add i64 %add1.i.i, %22
  %cmp192.i = icmp slt i64 %add3.i.i, 0
  br i1 %cmp192.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end191.i.while.end.i_crit_edge
  %rem0.0.lcssa.i = phi i64 [ %sub3.i.i, %if.end191.i.while.end.i_crit_edge ], [ %add3.i.i, %while.body.i.while.end.i_crit_edge ]
  %rem1.0.lcssa.i = phi i64 [ %shl21.i.i, %if.end191.i.while.end.i_crit_edge ], [ %add.i609.i, %while.body.i.while.end.i_crit_edge ]
  %z.1.lcssa.i = phi i64 [ %storemerge.i, %if.end191.i.while.end.i_crit_edge ], [ %sub194.i, %while.body.i.while.end.i_crit_edge ]
  %or198.i = tail call i64 @llvm.fshl.i64(i64 %rem0.0.lcssa.i, i64 %rem1.0.lcssa.i, i64 32) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i90, i64 %or198.i)
  %cmp200.not.i = icmp ugt i64 %shl.i90, %or198.i
  br i1 %cmp200.not.i, label %if.else204.i, label %if.then202.i

if.then202.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %or203.i = or i64 %z.1.lcssa.i, 4294967295
  br label %estimateDiv128To64.exit

if.else204.i:                                     ; preds = %while.end.i
  %conv206.i = trunc i64 %shr.i89 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %or198.i)
  %cmp407.i = icmp ult i64 %or198.i, 4294967296
  br i1 %cmp407.i, label %if.then415.i, label %if.else421.i, !prof !38

if.then415.i:                                     ; preds = %if.else204.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv416.i = trunc i64 %or198.i to i32
  %div419.i = udiv i32 %conv416.i, %conv206.i
  %conv420.i = zext i32 %div419.i to i64
  br label %if.end425.i

if.else421.i:                                     ; preds = %if.else204.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv206.i, i64 %or198.i) #11, !srcloc !37
  %asmresult1.i635.i = extractvalue { i64, i64 } %23, 1
  br label %if.end425.i

if.end425.i:                                      ; preds = %if.else421.i, %if.then415.i
  %rem0.1.i = phi i64 [ %conv420.i, %if.then415.i ], [ %asmresult1.i635.i, %if.else421.i ]
  %or427.i = or i64 %rem0.1.i, %z.1.lcssa.i
  br label %estimateDiv128To64.exit

estimateDiv128To64.exit:                          ; preds = %if.end425.i, %if.then202.i, %estimateSqrt32.exit.estimateDiv128To64.exit_crit_edge
  %retval.0.i129 = phi i64 [ -1, %estimateSqrt32.exit.estimateDiv128To64.exit_crit_edge ], [ %or427.i, %if.end425.i ], [ %or203.i, %if.then202.i ]
  %add39 = add i64 %retval.0.i129, %shl
  %add40 = add i64 %add39, 2
  %and41 = and i64 %add40, 1022
  call void @__sanitizer_cov_trace_const_cmp8(i64 6, i64 %and41)
  %cmp42 = icmp ult i64 %and41, 6
  br i1 %cmp42, label %if.then44, label %estimateDiv128To64.exit.if.end58_crit_edge

estimateDiv128To64.exit.if.end58_crit_edge:       ; preds = %estimateDiv128To64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then44:                                        ; preds = %estimateDiv128To64.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %add39)
  %cmp45 = icmp ugt i64 %add39, -3
  br i1 %cmp45, label %if.then44.if.end58_crit_edge, label %if.else

if.then44.if.end58_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.else:                                          ; preds = %if.then44
  %shl48 = shl i64 %shl37, 2
  %shr.i130 = lshr i64 %add40, 32
  %conv5.i = and i64 %add40, 4294967295
  %mul.i131 = mul nuw i64 %conv5.i, %conv5.i
  %mul9.i = mul nuw i64 %shr.i130, %conv5.i
  %mul15.i = mul nuw i64 %shr.i130, %shr.i130
  %add.i132 = shl i64 %mul9.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i132, i64 %mul9.i)
  %cmp.i133 = icmp ult i64 %add.i132, %mul9.i
  %shl.i134.neg173 = select i1 %cmp.i133, i64 -4294967296, i64 0
  %shr18.i = lshr i64 %add.i132, 32
  %shl21.i = shl i64 %mul9.i, 33
  %add22.i = add i64 %shl21.i, %mul.i131
  call void @__sanitizer_cov_trace_cmp8(i64 %add22.i, i64 %shl21.i)
  %cmp23.i = icmp ult i64 %add22.i, %shl21.i
  %.neg174 = sext i1 %cmp23.i to i64
  %sub.i135 = sub i64 0, %add22.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add22.i)
  %cmp.i136 = icmp ne i64 %add22.i, 0
  %.neg.i = sext i1 %cmp.i136 to i64
  %24 = add nuw i64 %mul15.i, %shr18.i
  %add20.i.neg = sub i64 %shl48, %24
  %add26.i.neg = add i64 %add20.i.neg, %shl.i134.neg173
  %sub1.i = add i64 %add26.i.neg, %.neg174
  %sub3.i = add i64 %sub1.i, %.neg.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub3.i)
  %cmp49167 = icmp slt i64 %sub3.i, 0
  br i1 %cmp49167, label %if.else.while.body_crit_edge, label %if.else.while.end_crit_edge

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.else.while.body_crit_edge:                     ; preds = %if.else
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.else.while.body_crit_edge
  %rem1.0170 = phi i64 [ %add.i140, %while.body.while.body_crit_edge ], [ %sub.i135, %if.else.while.body_crit_edge ]
  %rem0.0169 = phi i64 [ %add3.i, %while.body.while.body_crit_edge ], [ %sub3.i, %if.else.while.body_crit_edge ]
  %zSig.0168 = phi i64 [ %dec, %while.body.while.body_crit_edge ], [ %add40, %if.else.while.body_crit_edge ]
  %dec = add i64 %zSig.0168, -1
  %shl.i137 = shl i64 %dec, 1
  %shr.i138 = lshr i64 %dec, 63
  %or51 = or i64 %shl.i137, 1
  %add.i140 = add i64 %or51, %rem1.0170
  %add1.i = add nsw i64 %shr.i138, %rem0.0169
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i140, i64 %rem1.0170)
  %cmp.i141 = icmp ult i64 %add.i140, %rem1.0170
  %25 = zext i1 %cmp.i141 to i64
  %add3.i = add nsw i64 %add1.i, %25
  %cmp49 = icmp slt i64 %add3.i, 0
  br i1 %cmp49, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.else.while.end_crit_edge
  %zSig.0.lcssa = phi i64 [ %add40, %if.else.while.end_crit_edge ], [ %dec, %while.body.while.end_crit_edge ]
  %rem0.0.lcssa = phi i64 [ %sub3.i, %if.else.while.end_crit_edge ], [ %add3.i, %while.body.while.end_crit_edge ]
  %rem1.0.lcssa = phi i64 [ %sub.i135, %if.else.while.end_crit_edge ], [ %add.i140, %while.body.while.end_crit_edge ]
  %or52 = or i64 %rem1.0.lcssa, %rem0.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or52)
  %cmp53 = icmp ne i64 %or52, 0
  %26 = zext i1 %cmp53 to i64
  %or56 = or i64 %zSig.0.lcssa, %26
  br label %if.end58

if.end58:                                         ; preds = %while.end, %if.then44.if.end58_crit_edge, %estimateDiv128To64.exit.if.end58_crit_edge
  %zSig.1 = phi i64 [ %or56, %while.end ], [ %add40, %estimateDiv128To64.exit.if.end58_crit_edge ], [ -1, %if.then44.if.end58_crit_edge ]
  tail call void asm sideeffect "@shift64RightJamming -- start", ""() #8, !srcloc !17
  %shr.i143 = lshr i64 %zSig.1, 1
  %shl.i144.mask = and i64 %zSig.1, 1
  %or.i = or i64 %shr.i143, %shl.i144.mask
  tail call void asm sideeffect "@shift64RightJamming -- end", ""() #8, !srcloc !18
  %call59 = tail call fastcc i64 @roundAndPackFloat64(ptr noundef %roundData, i8 noundef zeroext 0, i32 noundef %add, i64 noundef %or.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then25.cleanup_crit_edge, %if.end17, %if.then11.cleanup_crit_edge, %if.end7, %if.end.cleanup_crit_edge, %propagateFloat64NaN.exit
  %retval.0 = phi i64 [ %retval.0.i, %propagateFloat64NaN.exit ], [ -1, %if.end7 ], [ -1, %if.end17 ], [ %call59, %if.end58 ], [ %a, %if.end.cleanup_crit_edge ], [ %a, %if.then11.cleanup_crit_edge ], [ 0, %if.then25.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @float64_eq(i64 noundef %a, i64 noundef %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i64 %a, 9218868437227405312
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %0)
  %cmp = icmp ne i64 %0, 9218868437227405312
  %and.i = and i64 %a, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not = icmp eq i64 %and.i, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = and i64 %b, 9218868437227405312
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %1)
  %cmp3 = icmp ne i64 %1, 9218868437227405312
  %and.i30 = and i64 %b, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i30)
  %tobool6.not = icmp eq i64 %and.i30, 0
  %or.cond36 = or i1 %cmp3, %tobool6.not
  br i1 %or.cond36, label %if.end14, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = and i64 %a, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %2)
  %cmp.i = icmp ne i64 %2, 9218868437227405312
  %and1.i = and i64 %a, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool.i = icmp eq i64 %and1.i, 0
  %tobool8.not = or i1 %cmp.i, %tobool.i
  br i1 %tobool8.not, label %lor.lhs.false9, label %if.then.if.then13_crit_edge

if.then.if.then13_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

lor.lhs.false9:                                   ; preds = %if.then
  %3 = and i64 %b, 9221120237041090560
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %3)
  %cmp.i32 = icmp ne i64 %3, 9218868437227405312
  %and1.i33 = and i64 %b, 2251799813685247
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i33)
  %tobool.i34 = icmp eq i64 %and1.i33, 0
  %tobool12.not = or i1 %cmp.i32, %tobool.i34
  br i1 %tobool12.not, label %lor.lhs.false9.return_crit_edge, label %lor.lhs.false9.if.then13_crit_edge

lor.lhs.false9.if.then13_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

lor.lhs.false9.return_crit_edge:                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then13:                                        ; preds = %lor.lhs.false9.if.then13_crit_edge, %if.then.if.then13_crit_edge
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %return

if.end14:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp8(i64 %a, i64 %b)
  %cmp15 = icmp eq i64 %a, %b
  br i1 %cmp15, label %if.end14.lor.end_crit_edge, label %lor.rhs

if.end14.lor.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i64 %b, %a
  %shl.mask = and i64 %or, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %cmp17 = icmp eq i64 %shl.mask, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end14.lor.end_crit_edge
  %4 = phi i1 [ true, %if.end14.lor.end_crit_edge ], [ %cmp17, %lor.rhs ]
  %conv19 = zext i1 %4 to i8
  br label %return

return:                                           ; preds = %lor.end, %if.then13, %lor.lhs.false9.return_crit_edge
  %retval.0 = phi i8 [ %conv19, %lor.end ], [ 0, %if.then13 ], [ 0, %lor.lhs.false9.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @float64_le(i64 noundef %a, i64 noundef %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i64 %a, 9218868437227405312
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %0)
  %cmp = icmp ne i64 %0, 9218868437227405312
  %and.i = and i64 %a, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not = icmp eq i64 %and.i, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = and i64 %b, 9218868437227405312
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %1)
  %cmp3 = icmp ne i64 %1, 9218868437227405312
  %and.i44 = and i64 %b, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i44)
  %tobool6.not = icmp eq i64 %and.i44, 0
  %or.cond49 = or i1 %cmp3, %tobool6.not
  br i1 %or.cond49, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %shr.i45 = lshr i64 %a, 63
  %conv.i46 = trunc i64 %shr.i45 to i8
  %shr.i47 = lshr i64 %b, 63
  %conv.i48 = trunc i64 %shr.i47 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i46, i8 %conv.i48)
  %cmp10.not = icmp eq i8 %conv.i46, %conv.i48
  br i1 %cmp10.not, label %if.end18, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %a)
  %tobool14.not = icmp sgt i64 %a, -1
  br i1 %tobool14.not, label %lor.rhs, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i64 %b, %a
  %shl.mask = and i64 %or, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %cmp15 = icmp eq i64 %shl.mask, 0
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %a, i64 %b)
  %cmp19 = icmp eq i64 %a, %b
  call void @__sanitizer_cov_trace_cmp8(i64 %a, i64 %b)
  %cmp23 = icmp ult i64 %a, %b
  %2 = zext i1 %cmp23 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i46, i8 %2)
  %tobool25 = icmp ne i8 %conv.i46, %2
  %3 = or i1 %cmp19, %tobool25
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %lor.rhs, %if.then12.cleanup_crit_edge, %if.then
  %retval.0.shrunk = phi i1 [ false, %if.then ], [ %3, %if.end18 ], [ true, %if.then12.cleanup_crit_edge ], [ %cmp15, %lor.rhs ]
  %retval.0 = zext i1 %retval.0.shrunk to i8
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @float64_lt(i64 noundef %a, i64 noundef %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i64 %a, 9218868437227405312
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %0)
  %cmp = icmp ne i64 %0, 9218868437227405312
  %and.i = and i64 %a, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not = icmp eq i64 %and.i, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = and i64 %b, 9218868437227405312
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %1)
  %cmp3 = icmp ne i64 %1, 9218868437227405312
  %and.i44 = and i64 %b, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i44)
  %tobool6.not = icmp eq i64 %and.i44, 0
  %or.cond49 = or i1 %cmp3, %tobool6.not
  br i1 %or.cond49, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %shr.i45 = lshr i64 %a, 63
  %conv.i46 = trunc i64 %shr.i45 to i8
  %shr.i47 = lshr i64 %b, 63
  %conv.i48 = trunc i64 %shr.i47 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i46, i8 %conv.i48)
  %cmp10.not = icmp eq i8 %conv.i46, %conv.i48
  br i1 %cmp10.not, label %if.end18, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %a)
  %tobool14.not = icmp sgt i64 %a, -1
  br i1 %tobool14.not, label %if.then12.cleanup_crit_edge, label %land.rhs

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i64 %b, %a
  %shl.mask = and i64 %or, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %cmp15 = icmp ne i64 %shl.mask, 0
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %a, i64 %b)
  %cmp19.not = icmp ne i64 %a, %b
  call void @__sanitizer_cov_trace_cmp8(i64 %a, i64 %b)
  %cmp23 = icmp ult i64 %a, %b
  %2 = zext i1 %cmp23 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i46, i8 %2)
  %tobool25 = icmp ne i8 %conv.i46, %2
  %3 = and i1 %cmp19.not, %tobool25
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %land.rhs, %if.then12.cleanup_crit_edge, %if.then
  %retval.0.shrunk = phi i1 [ false, %if.then ], [ %3, %if.end18 ], [ false, %if.then12.cleanup_crit_edge ], [ %cmp15, %land.rhs ]
  %retval.0 = zext i1 %retval.0.shrunk to i8
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @float64_eq_signaling(i64 noundef %a, i64 noundef %b) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i64 %a, 9218868437227405312
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %0)
  %cmp = icmp ne i64 %0, 9218868437227405312
  %and.i = and i64 %a, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not = icmp eq i64 %and.i, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = and i64 %b, 9218868437227405312
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %1)
  %cmp3 = icmp ne i64 %1, 9218868437227405312
  %and.i17 = and i64 %b, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i17)
  %tobool6.not = icmp eq i64 %and.i17, 0
  %or.cond18 = or i1 %cmp3, %tobool6.not
  br i1 %or.cond18, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp8(i64 %a, i64 %b)
  %cmp7 = icmp eq i64 %a, %b
  br i1 %cmp7, label %if.end.lor.end_crit_edge, label %lor.rhs

if.end.lor.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i64 %b, %a
  %shl.mask = and i64 %or, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %cmp8 = icmp eq i64 %shl.mask, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.lor.end_crit_edge
  %2 = phi i1 [ true, %if.end.lor.end_crit_edge ], [ %cmp8, %lor.rhs ]
  %conv = zext i1 %2 to i8
  br label %return

return:                                           ; preds = %lor.end, %if.then
  %retval.0 = phi i8 [ 0, %if.then ], [ %conv, %lor.end ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @float64_le_quiet(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i64 %a, 9218868437227405312
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %0)
  %cmp = icmp ne i64 %0, 9218868437227405312
  %and.i = and i64 %a, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not = icmp eq i64 %and.i, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = and i64 %b, 9218868437227405312
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %1)
  %cmp3 = icmp ne i64 %1, 9218868437227405312
  %and.i44 = and i64 %b, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i44)
  %tobool6.not = icmp eq i64 %and.i44, 0
  %or.cond49 = or i1 %cmp3, %tobool6.not
  br i1 %or.cond49, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %shr.i45 = lshr i64 %a, 63
  %conv.i46 = trunc i64 %shr.i45 to i8
  %shr.i47 = lshr i64 %b, 63
  %conv.i48 = trunc i64 %shr.i47 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i46, i8 %conv.i48)
  %cmp10.not = icmp eq i8 %conv.i46, %conv.i48
  br i1 %cmp10.not, label %if.end18, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %a)
  %tobool14.not = icmp sgt i64 %a, -1
  br i1 %tobool14.not, label %lor.rhs, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i64 %b, %a
  %shl.mask = and i64 %or, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %cmp15 = icmp eq i64 %shl.mask, 0
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %a, i64 %b)
  %cmp19 = icmp eq i64 %a, %b
  call void @__sanitizer_cov_trace_cmp8(i64 %a, i64 %b)
  %cmp23 = icmp ult i64 %a, %b
  %2 = zext i1 %cmp23 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i46, i8 %2)
  %tobool25 = icmp ne i8 %conv.i46, %2
  %3 = or i1 %cmp19, %tobool25
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %lor.rhs, %if.then12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.shrunk = phi i1 [ %3, %if.end18 ], [ true, %if.then12.cleanup_crit_edge ], [ %cmp15, %lor.rhs ], [ false, %entry.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ]
  %retval.0 = zext i1 %retval.0.shrunk to i8
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @float64_lt_quiet(i64 noundef %a, i64 noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i64 %a, 9218868437227405312
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %0)
  %cmp = icmp ne i64 %0, 9218868437227405312
  %and.i = and i64 %a, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not = icmp eq i64 %and.i, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = and i64 %b, 9218868437227405312
  call void @__sanitizer_cov_trace_const_cmp8(i64 9218868437227405312, i64 %1)
  %cmp3 = icmp ne i64 %1, 9218868437227405312
  %and.i44 = and i64 %b, 4503599627370495
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i44)
  %tobool6.not = icmp eq i64 %and.i44, 0
  %or.cond49 = or i1 %cmp3, %tobool6.not
  br i1 %or.cond49, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %shr.i45 = lshr i64 %a, 63
  %conv.i46 = trunc i64 %shr.i45 to i8
  %shr.i47 = lshr i64 %b, 63
  %conv.i48 = trunc i64 %shr.i47 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i46, i8 %conv.i48)
  %cmp10.not = icmp eq i8 %conv.i46, %conv.i48
  br i1 %cmp10.not, label %if.end18, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %a)
  %tobool14.not = icmp sgt i64 %a, -1
  br i1 %tobool14.not, label %if.then12.cleanup_crit_edge, label %land.rhs

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i64 %b, %a
  %shl.mask = and i64 %or, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %cmp15 = icmp ne i64 %shl.mask, 0
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %a, i64 %b)
  %cmp19.not = icmp ne i64 %a, %b
  call void @__sanitizer_cov_trace_cmp8(i64 %a, i64 %b)
  %cmp23 = icmp ult i64 %a, %b
  %2 = zext i1 %cmp23 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i46, i8 %2)
  %tobool25 = icmp ne i8 %conv.i46, %2
  %3 = and i1 %cmp19.not, %tobool25
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %land.rhs, %if.then12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.shrunk = phi i1 [ %3, %if.end18 ], [ false, %if.then12.cleanup_crit_edge ], [ %cmp15, %land.rhs ], [ false, %entry.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ]
  %retval.0 = zext i1 %retval.0.shrunk to i8
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @floatx80_to_int32(ptr nocapture noundef %roundData, [3 x i32] %a.coerce) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.1.extract.i = extractvalue [3 x i32] %a.coerce, 1
  %a.coerce.fca.2.extract.i = extractvalue [3 x i32] %a.coerce, 2
  %a.sroa.3.4.insert.ext.i = zext i32 %a.coerce.fca.2.extract.i to i64
  %a.sroa.1.4.insert.ext.i = zext i32 %a.coerce.fca.1.extract.i to i64
  %a.sroa.1.4.insert.shift.i = shl nuw i64 %a.sroa.1.4.insert.ext.i, 32
  %a.sroa.1.4.insert.insert.i = or i64 %a.sroa.1.4.insert.shift.i, %a.sroa.3.4.insert.ext.i
  %a.coerce.fca.0.extract.i = extractvalue [3 x i32] %a.coerce, 0
  %and.i = and i32 %a.coerce.fca.0.extract.i, 32767
  %conv.i = lshr i32 %a.coerce.fca.0.extract.i, 15
  %0 = trunc i32 %conv.i to i8
  %conv1.i = and i8 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 32767
  %shl.mask = and i64 %a.sroa.1.4.insert.insert.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %tobool.not = icmp eq i64 %shl.mask, 0
  %spec.select = select i1 %tobool.not, i8 %conv1.i, i8 0
  %aSign.0 = select i1 %cmp, i8 %spec.select, i8 %conv1.i
  %sub = sub nsw i32 16439, %and.i
  %1 = tail call i32 @llvm.smax.i32(i32 %sub, i32 1)
  tail call void asm sideeffect "@shift64RightJamming -- start", ""() #8, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp1.i = icmp ult i32 %1, 64
  br i1 %cmp1.i, label %if.then2.i, label %if.else6.i

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom.i = zext i32 %1 to i64
  %shr.i = lshr i64 %a.sroa.1.4.insert.insert.i, %sh_prom.i
  %sub.i = sub nsw i32 0, %1
  %and.i34 = and i32 %sub.i, 63
  %sh_prom3.i = zext i32 %and.i34 to i64
  %shl.i = shl i64 %a.sroa.1.4.insert.insert.i, %sh_prom3.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i)
  %cmp4.i = icmp ne i64 %shl.i, 0
  %2 = zext i1 %cmp4.i to i64
  %or.i = or i64 %shr.i, %2
  br label %shift64RightJamming.exit

if.else6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a.sroa.1.4.insert.insert.i)
  %cmp7.i = icmp ne i64 %a.sroa.1.4.insert.insert.i, 0
  %3 = zext i1 %cmp7.i to i64
  br label %shift64RightJamming.exit

shift64RightJamming.exit:                         ; preds = %if.else6.i, %if.then2.i
  %z.0.i = phi i64 [ %or.i, %if.then2.i ], [ %3, %if.else6.i ]
  tail call void asm sideeffect "@shift64RightJamming -- end", ""() #8, !srcloc !18
  %4 = ptrtoint ptr %roundData to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %roundData, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %shift64RightJamming.exit.if.end21.i_crit_edge, label %if.then.i

shift64RightJamming.exit.if.end21.i_crit_edge:    ; preds = %shift64RightJamming.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then.i:                                        ; preds = %shift64RightJamming.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp4.i35 = icmp eq i8 %5, 1
  br i1 %cmp4.i35, label %if.then.i.if.end21.i_crit_edge, label %if.else.i

if.then.i.if.end21.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %aSign.0)
  %tobool7.not.i = icmp eq i8 %aSign.0, 0
  br i1 %tobool7.not.i, label %if.else13.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp10.i = icmp eq i8 %5, 3
  %spec.select.i = select i1 %cmp10.i, i8 0, i8 127
  br label %if.end21.i

if.else13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp15.i = icmp eq i8 %5, 2
  %spec.select79.i = select i1 %cmp15.i, i8 0, i8 127
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else13.i, %if.then8.i, %if.then.i.if.end21.i_crit_edge, %shift64RightJamming.exit.if.end21.i_crit_edge
  %roundIncrement.0.i = phi i8 [ 64, %shift64RightJamming.exit.if.end21.i_crit_edge ], [ 0, %if.then.i.if.end21.i_crit_edge ], [ %spec.select.i, %if.then8.i ], [ %spec.select79.i, %if.else13.i ]
  %6 = trunc i64 %z.0.i to i8
  %conv22.i = and i8 %6, 127
  %7 = zext i8 %roundIncrement.0.i to i64
  %add.i = add i64 %z.0.i, %7
  %shr.i36 = lshr i64 %add.i, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %conv22.i)
  %cmp25.i = icmp eq i8 %conv22.i, 64
  %and2877.i = and i1 %cmp25.i, %cmp.i
  %and28.i = zext i1 %and2877.i to i32
  %neg.i = xor i32 %and28.i, -1
  %8 = trunc i64 %shr.i36 to i32
  %conv31.i = and i32 %8, %neg.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %aSign.0)
  %tobool32.not.i = icmp eq i8 %aSign.0, 0
  %sub.i37 = sub i32 0, %conv31.i
  %spec.select80.i = select i1 %tobool32.not.i, i32 %conv31.i, i32 %sub.i37
  call void @__sanitizer_cov_trace_const_cmp8(i64 549755813888, i64 %add.i)
  %tobool36.not.i = icmp ult i64 %add.i, 549755813888
  br i1 %tobool36.not.i, label %lor.lhs.false.i, label %if.end21.i.if.then43.i_crit_edge

if.end21.i.if.then43.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43.i

lor.lhs.false.i:                                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select80.i)
  %tobool37.not.i = icmp eq i32 %spec.select80.i, 0
  %z.0.lobit.i = lshr i32 %spec.select80.i, 31
  %conv40.i = zext i8 %aSign.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %z.0.lobit.i, i32 %conv40.i)
  %tobool42.not.i = icmp eq i32 %z.0.lobit.i, %conv40.i
  %or.cond.i = or i1 %tobool37.not.i, %tobool42.not.i
  br i1 %or.cond.i, label %if.end48.i, label %lor.lhs.false.i.if.then43.i_crit_edge

lor.lhs.false.i.if.then43.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43.i

if.then43.i:                                      ; preds = %lor.lhs.false.i.if.then43.i_crit_edge, %if.end21.i.if.then43.i_crit_edge
  %exception.i = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %9 = ptrtoint ptr %exception.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %exception.i, align 1
  %11 = or i8 %10, 1
  store i8 %11, ptr %exception.i, align 1
  %cond.i = select i1 %tobool32.not.i, i32 2147483647, i32 -2147483648
  br label %roundAndPackInt32.exit

if.end48.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv22.i)
  %tobool49.not.i = icmp eq i8 %conv22.i, 0
  br i1 %tobool49.not.i, label %if.end48.i.roundAndPackInt32.exit_crit_edge, label %if.then50.i

if.end48.i.roundAndPackInt32.exit_crit_edge:      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %roundAndPackInt32.exit

if.then50.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %exception51.i = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %12 = ptrtoint ptr %exception51.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %exception51.i, align 1
  %14 = or i8 %13, 16
  store i8 %14, ptr %exception51.i, align 1
  br label %roundAndPackInt32.exit

roundAndPackInt32.exit:                           ; preds = %if.then50.i, %if.end48.i.roundAndPackInt32.exit_crit_edge, %if.then43.i
  %retval.0.i = phi i32 [ %cond.i, %if.then43.i ], [ %spec.select80.i, %if.then50.i ], [ %spec.select80.i, %if.end48.i.roundAndPackInt32.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @floatx80_to_int32_round_to_zero([3 x i32] %a.coerce) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.1.extract.i = extractvalue [3 x i32] %a.coerce, 1
  %a.coerce.fca.2.extract.i = extractvalue [3 x i32] %a.coerce, 2
  %a.sroa.3.4.insert.ext.i = zext i32 %a.coerce.fca.2.extract.i to i64
  %a.sroa.1.4.insert.ext.i = zext i32 %a.coerce.fca.1.extract.i to i64
  %a.sroa.1.4.insert.shift.i = shl nuw i64 %a.sroa.1.4.insert.ext.i, 32
  %a.sroa.1.4.insert.insert.i = or i64 %a.sroa.1.4.insert.shift.i, %a.sroa.3.4.insert.ext.i
  %a.coerce.fca.0.extract.i = extractvalue [3 x i32] %a.coerce, 0
  %and.i = and i32 %a.coerce.fca.0.extract.i, 32767
  %conv.i = lshr i32 %a.coerce.fca.0.extract.i, 15
  %0 = trunc i32 %conv.i to i8
  %conv1.i = and i8 %0, 1
  %sub = sub nsw i32 16446, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16414, i32 %and.i)
  %cmp = icmp ugt i32 %and.i, 16414
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i)
  %cmp3 = icmp ne i32 %and.i, 32767
  %shl.mask = and i64 %a.sroa.1.4.insert.insert.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %tobool.not = icmp eq i64 %shl.mask, 0
  %or.cond = select i1 %cmp3, i1 true, i1 %tobool.not
  %spec.select75 = select i1 %or.cond, i8 %conv1.i, i8 0
  br label %invalid

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub)
  %cmp5 = icmp ugt i32 %sub, 63
  br i1 %cmp5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a.sroa.1.4.insert.insert.i)
  %tobool8.not = icmp eq i64 %a.sroa.1.4.insert.insert.i, 0
  %or.cond74 = select i1 %tobool7.not, i1 %tobool8.not, i1 false
  br i1 %or.cond74, label %if.then6.cleanup_crit_edge, label %if.then9

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 16) #8
  br label %cleanup

if.end12:                                         ; preds = %if.else
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 %a.sroa.1.4.insert.insert.i, %sh_prom
  %conv = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i)
  %tobool13.not = icmp eq i8 %conv1.i, 0
  %sub15 = sub i32 0, %conv
  %spec.select = select i1 %tobool13.not, i32 %conv, i32 %sub15
  %z.0.lobit = lshr i32 %spec.select, 31
  %conv19 = zext i8 %conv1.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %z.0.lobit, i32 %conv19)
  %tobool20.not = icmp eq i32 %z.0.lobit, %conv19
  br i1 %tobool20.not, label %if.end24, label %if.end12.invalid_crit_edge

if.end12.invalid_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %invalid

invalid:                                          ; preds = %if.end12.invalid_crit_edge, %if.then
  %aSign.0 = phi i8 [ %conv1.i, %if.end12.invalid_crit_edge ], [ %spec.select75, %if.then ]
  tail call void @float_raise(i8 noundef signext 1) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %aSign.0)
  %tobool23.not = icmp eq i8 %aSign.0, 0
  %cond = select i1 %tobool23.not, i32 2147483647, i32 -2147483648
  br label %cleanup

if.end24:                                         ; preds = %if.end12
  %shl26 = shl i64 %shr, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shl26, i64 %a.sroa.1.4.insert.insert.i)
  %cmp27.not = icmp eq i64 %shl26, %a.sroa.1.4.insert.insert.i
  br i1 %cmp27.not, label %if.end24.cleanup_crit_edge, label %if.then29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end24.cleanup_crit_edge, %invalid, %if.then9, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %invalid ], [ 0, %if.then6.cleanup_crit_edge ], [ 0, %if.then9 ], [ %spec.select, %if.then29 ], [ %spec.select, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @floatx80_to_float32(ptr nocapture noundef %roundData, [3 x i32] %a.coerce) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.1.extract.i = extractvalue [3 x i32] %a.coerce, 1
  %a.coerce.fca.2.extract.i = extractvalue [3 x i32] %a.coerce, 2
  %a.sroa.3.4.insert.ext.i = zext i32 %a.coerce.fca.2.extract.i to i64
  %a.sroa.1.4.insert.ext.i = zext i32 %a.coerce.fca.1.extract.i to i64
  %a.sroa.1.4.insert.shift.i = shl nuw i64 %a.sroa.1.4.insert.ext.i, 32
  %a.sroa.1.4.insert.insert.i = or i64 %a.sroa.1.4.insert.shift.i, %a.sroa.3.4.insert.ext.i
  %a.coerce.fca.0.extract.i = extractvalue [3 x i32] %a.coerce, 0
  %and.i = and i32 %a.coerce.fca.0.extract.i, 32767
  %conv.i = lshr i32 %a.coerce.fca.0.extract.i, 15
  %0 = trunc i32 %conv.i to i8
  %conv1.i = and i8 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 32767
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %shl.mask = and i64 %a.sroa.1.4.insert.insert.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %tobool.not = icmp eq i64 %shl.mask, 0
  br i1 %tobool.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %shl.mask.i.i = and i64 %a.sroa.1.4.insert.insert.i, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i.i)
  %tobool.not.i.i = icmp ne i64 %shl.mask.i.i, 0
  %and.i.i = and i64 %a.sroa.1.4.insert.insert.i, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i, i64 %and.i.i)
  %cmp4.i.not.i = icmp eq i64 %a.sroa.1.4.insert.insert.i, %and.i.i
  %or.cond.i = and i1 %tobool.not.i.i, %cmp4.i.not.i
  br i1 %or.cond.i, label %if.then.i, label %if.then3.floatx80ToCommonNaN.exit_crit_edge

if.then3.floatx80ToCommonNaN.exit_crit_edge:      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80ToCommonNaN.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8, !noalias !57
  br label %floatx80ToCommonNaN.exit

floatx80ToCommonNaN.exit:                         ; preds = %if.then.i, %if.then3.floatx80ToCommonNaN.exit_crit_edge
  %agg.tmp.sroa.0.0.insert.shift = shl i32 %conv.i, 31
  %1 = lshr i32 %a.coerce.fca.1.extract.i, 8
  %or.i = or i32 %agg.tmp.sroa.0.0.insert.shift, %1
  %conv3.i = or i32 %or.i, 2143289344
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i69 = zext i8 %conv1.i to i32
  %shl.i70 = shl nuw i32 %conv.i69, 31
  %add.i = or i32 %shl.i70, 2139095040
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "@shift64RightJamming -- start", ""() #8, !srcloc !17
  %shr.i71 = lshr i64 %a.sroa.1.4.insert.ext.i, 1
  %shl.i72.mask = and i64 %a.sroa.1.4.insert.insert.i, 8589934591
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i72.mask)
  %cmp4.i = icmp ne i64 %shl.i72.mask, 0
  %2 = zext i1 %cmp4.i to i64
  %or.i73 = or i64 %shr.i71, %2
  tail call void asm sideeffect "@shift64RightJamming -- end", ""() #8, !srcloc !18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i73)
  %tobool8.not = icmp eq i64 %or.i73, 0
  %or.cond = select i1 %tobool7.not, i1 %tobool8.not, i1 false
  %sub = add nsw i32 %and.i, -16257
  %aExp.0 = select i1 %or.cond, i32 0, i32 %sub
  %conv = trunc i64 %or.i73 to i32
  %call11 = tail call fastcc i32 @roundAndPackFloat32(ptr noundef %roundData, i8 noundef zeroext %conv1.i, i32 noundef %aExp.0, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %floatx80ToCommonNaN.exit
  %retval.0 = phi i32 [ %conv3.i, %floatx80ToCommonNaN.exit ], [ %add.i, %if.end ], [ %call11, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @floatx80_to_float64(ptr nocapture noundef %roundData, [3 x i32] %a.coerce) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.1.extract.i = extractvalue [3 x i32] %a.coerce, 1
  %a.coerce.fca.2.extract.i = extractvalue [3 x i32] %a.coerce, 2
  %a.sroa.3.4.insert.ext.i = zext i32 %a.coerce.fca.2.extract.i to i64
  %a.sroa.1.4.insert.ext.i = zext i32 %a.coerce.fca.1.extract.i to i64
  %a.sroa.1.4.insert.shift.i = shl nuw i64 %a.sroa.1.4.insert.ext.i, 32
  %a.sroa.1.4.insert.insert.i = or i64 %a.sroa.1.4.insert.shift.i, %a.sroa.3.4.insert.ext.i
  %a.coerce.fca.0.extract.i = extractvalue [3 x i32] %a.coerce, 0
  %and.i = and i32 %a.coerce.fca.0.extract.i, 32767
  %conv.i = lshr i32 %a.coerce.fca.0.extract.i, 15
  %0 = trunc i32 %conv.i to i8
  %conv1.i = and i8 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 32767
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %shl.mask = and i64 %a.sroa.1.4.insert.insert.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %tobool.not = icmp eq i64 %shl.mask, 0
  br i1 %tobool.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  %shl.mask.i.i = and i64 %a.sroa.1.4.insert.insert.i, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i.i)
  %tobool.not.i.i = icmp ne i64 %shl.mask.i.i, 0
  %and.i.i = and i64 %a.sroa.1.4.insert.insert.i, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i, i64 %and.i.i)
  %cmp4.i.not.i = icmp eq i64 %a.sroa.1.4.insert.insert.i, %and.i.i
  %or.cond.i = and i1 %tobool.not.i.i, %cmp4.i.not.i
  br i1 %or.cond.i, label %if.then.i, label %if.then3.floatx80ToCommonNaN.exit_crit_edge

if.then3.floatx80ToCommonNaN.exit_crit_edge:      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80ToCommonNaN.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8, !noalias !60
  br label %floatx80ToCommonNaN.exit

floatx80ToCommonNaN.exit:                         ; preds = %if.then.i, %if.then3.floatx80ToCommonNaN.exit_crit_edge
  %1 = shl i64 %a.sroa.1.4.insert.ext.i, 33
  %2 = shl nuw nsw i64 %a.sroa.3.4.insert.ext.i, 1
  %shl.i = or i64 %1, %2
  %agg.tmp.sroa.0.0.insert.ext = zext i32 %conv.i to i64
  %agg.tmp.sroa.0.0.insert.shift = shl i64 %agg.tmp.sroa.0.0.insert.ext, 63
  %shr.i = lshr i64 %shl.i, 12
  %or.i = or i64 %shr.i, %agg.tmp.sroa.0.0.insert.shift
  %or1.i = or i64 %or.i, 9221120237041090560
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i72 = zext i8 %conv1.i to i64
  %shl.i73 = shl nuw i64 %conv.i72, 63
  %add3.i = or i64 %shl.i73, 9218868437227405312
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "@shift64RightJamming -- start", ""() #8, !srcloc !17
  %shr.i74 = lshr i64 %a.sroa.1.4.insert.insert.i, 1
  %shl.i75.mask = and i64 %a.sroa.3.4.insert.ext.i, 1
  %or.i76 = or i64 %shr.i74, %shl.i75.mask
  tail call void asm sideeffect "@shift64RightJamming -- end", ""() #8, !srcloc !18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a.sroa.1.4.insert.insert.i)
  %tobool8.not = icmp eq i64 %a.sroa.1.4.insert.insert.i, 0
  %or.cond = select i1 %tobool7.not, i1 %tobool8.not, i1 false
  %sub = add nsw i32 %and.i, -15361
  %aExp.0 = select i1 %or.cond, i32 0, i32 %sub
  %call11 = tail call fastcc i64 @roundAndPackFloat64(ptr noundef %roundData, i8 noundef zeroext %conv1.i, i32 noundef %aExp.0, i64 noundef %or.i76)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %floatx80ToCommonNaN.exit
  %retval.0 = phi i64 [ %or1.i, %floatx80ToCommonNaN.exit ], [ %add3.i, %if.end ], [ %call11, %if.end6 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @floatx80_round_to_int(ptr noalias writeonly sret(%struct.floatx80) align 4 %agg.result, ptr nocapture noundef %roundData, [3 x i32] %a.coerce) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [3 x i32] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [3 x i32] %a.coerce, 1
  %a.sroa.11.4.insert.ext = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.11.4.insert.shift = shl nuw i64 %a.sroa.11.4.insert.ext, 32
  %a.coerce.fca.2.extract = extractvalue [3 x i32] %a.coerce, 2
  %a.sroa.11.8.insert.ext = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.11.8.insert.insert = or i64 %a.sroa.11.4.insert.shift, %a.sroa.11.8.insert.ext
  %and.i = and i32 %a.coerce.fca.0.extract, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 16445, i32 %and.i)
  %cmp = icmp ugt i32 %and.i, 16445
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i)
  %cmp1 = icmp ne i32 %and.i, 32767
  %shl.mask = and i64 %a.sroa.11.8.insert.insert, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %tobool.not = icmp eq i64 %shl.mask, 0
  %or.cond = select i1 %cmp1, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end, label %floatx80_is_nan.exit.i

floatx80_is_nan.exit.i:                           ; preds = %if.then
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %shl.mask.i.i = and i64 %a.sroa.11.8.insert.insert, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i.i)
  %tobool.not.i.i = icmp ne i64 %shl.mask.i.i, 0
  %and.i58.i = and i64 %a.sroa.11.8.insert.insert, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.11.8.insert.insert, i64 %and.i58.i)
  %cmp4.i.i = icmp eq i64 %a.sroa.11.8.insert.insert, %and.i58.i
  %0 = and i1 %tobool.not.i.i, %cmp4.i.i
  br i1 %0, label %if.then.i, label %floatx80_is_nan.exit.i.propagateFloatx80NaN.exit_crit_edge

floatx80_is_nan.exit.i.propagateFloatx80NaN.exit_crit_edge: ; preds = %floatx80_is_nan.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloatx80NaN.exit

if.then.i:                                        ; preds = %floatx80_is_nan.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8, !noalias !63
  br label %propagateFloatx80NaN.exit

propagateFloatx80NaN.exit:                        ; preds = %if.then.i, %floatx80_is_nan.exit.i.propagateFloatx80NaN.exit_crit_edge
  %or5.i = or i64 %a.sroa.11.8.insert.insert, -4611686018427387904
  %1 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %a.coerce.fca.0.extract, ptr %agg.result, align 4, !alias.scope !63
  %b.sroa.5.0.agg.result.sroa_idx.i = getelementptr inbounds i8, ptr %agg.result, i32 4
  %2 = ptrtoint ptr %b.sroa.5.0.agg.result.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %or5.i, ptr %b.sroa.5.0.agg.result.sroa_idx.i, align 4, !alias.scope !63
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %a.coerce.fca.0.extract, ptr %agg.result, align 4
  %a.sroa.11.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 4
  %4 = ptrtoint ptr %a.sroa.11.0.agg.result.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %a.sroa.11.8.insert.insert, ptr %a.sroa.11.0.agg.result.sroa_idx, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %and.i)
  %cmp5 = icmp ult i32 %and.i, 16383
  br i1 %cmp5, label %if.then6, label %if.end34

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp7 = icmp eq i32 %and.i, 0
  %shl10.mask = and i64 %a.sroa.11.8.insert.insert, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl10.mask)
  %cmp11 = icmp eq i64 %shl10.mask, 0
  %or.cond234 = select i1 %cmp7, i1 %cmp11, i1 false
  br i1 %or.cond234, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %a.coerce.fca.0.extract, ptr %agg.result, align 4
  %a.sroa.11.0.agg.result.sroa_idx182 = getelementptr inbounds i8, ptr %agg.result, i32 4
  %6 = ptrtoint ptr %a.sroa.11.0.agg.result.sroa_idx182 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %a.sroa.11.8.insert.insert, ptr %a.sroa.11.0.agg.result.sroa_idx182, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.then6
  %exception = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %7 = ptrtoint ptr %exception to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %exception, align 1
  %9 = or i8 %8, 16
  store i8 %9, ptr %exception, align 1
  %conv.i = lshr i32 %a.coerce.fca.0.extract, 15
  %10 = trunc i32 %conv.i to i8
  %conv1.i = and i8 %10, 1
  %11 = ptrtoint ptr %roundData to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %roundData, align 1
  %conv16 = sext i8 %12 to i32
  %13 = zext i32 %conv16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %conv16, label %if.end13.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb25
    i32 3, label %sw.bb28
  ]

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 16382, i32 %and.i)
  %cmp17 = icmp ne i32 %and.i, 16382
  %or.cond235 = select i1 %cmp17, i1 true, i1 %cmp11
  br i1 %or.cond235, label %sw.bb.sw.epilog_crit_edge, label %if.then23

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then23:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %14 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %15 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 -9223372036854775808, ptr %15, align 4, !alias.scope !66
  %17 = trunc i32 %conv.i to i16
  %shl.i = shl i16 %17, 15
  %add.i = or i16 %shl.i, 16383
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %add.i, ptr %14, align 2, !alias.scope !66
  %19 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %agg.result, align 4, !alias.scope !66
  br label %cleanup

sw.bb25:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i)
  %tobool27.not = icmp eq i8 %conv1.i, 0
  %20 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %21 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  br i1 %tobool27.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 -9223372036854775808, ptr %21, align 4, !alias.scope !69
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -16385, ptr %20, align 2, !alias.scope !69
  %24 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %agg.result, align 4, !alias.scope !69
  br label %cleanup

cond.false:                                       ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 0, ptr %21, align 4, !alias.scope !72
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %20, align 2, !alias.scope !72
  %27 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %agg.result, align 4, !alias.scope !72
  br label %cleanup

sw.bb28:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i)
  %tobool30.not = icmp eq i8 %conv1.i, 0
  %28 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %29 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  br i1 %tobool30.not, label %cond.false32, label %cond.true31

cond.true31:                                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 0, ptr %29, align 4, !alias.scope !75
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -32768, ptr %28, align 2, !alias.scope !75
  %32 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %agg.result, align 4, !alias.scope !75
  br label %cleanup

cond.false32:                                     ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 -9223372036854775808, ptr %29, align 4, !alias.scope !78
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 16383, ptr %28, align 2, !alias.scope !78
  %35 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %agg.result, align 4, !alias.scope !78
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %if.end13.sw.epilog_crit_edge
  %36 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %37 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 0, ptr %37, align 4, !alias.scope !81
  %39 = trunc i32 %conv.i to i16
  %shl.i230 = shl i16 %39, 15
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %shl.i230, ptr %36, align 2, !alias.scope !81
  %41 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %agg.result, align 4, !alias.scope !81
  br label %cleanup

if.end34:                                         ; preds = %if.end4
  %sub = sub nuw nsw i32 16446, %and.i
  %sh_prom = zext i32 %sub to i64
  %shl35 = shl nuw i64 1, %sh_prom
  %sub36 = add i64 %shl35, -1
  %42 = ptrtoint ptr %roundData to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %roundData, align 1
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %43, label %if.then52 [
    i8 0, label %if.then41
    i8 1, label %if.end34.if.end64_crit_edge
  ]

if.end34.if.end64_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then41:                                        ; preds = %if.end34
  %shr = lshr i64 %shl35, 1
  %add = add i64 %shr, %a.sroa.11.8.insert.insert
  %and = and i64 %add, %sub36
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp43 = icmp eq i64 %and, 0
  br i1 %cmp43, label %if.then45, label %if.then41.if.end64_crit_edge

if.then41.if.end64_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then45:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i64 %shl35, -1
  %and47 = and i64 %add, %neg
  br label %if.end64

if.then52:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %43)
  %cmp56 = icmp ne i8 %43, 3
  %45 = and i32 %a.coerce.fca.0.extract, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %46 = icmp ne i32 %45, 0
  %tobool58.not = xor i1 %46, %cmp56
  %add61 = select i1 %tobool58.not, i64 0, i64 %sub36
  %spec.select = add i64 %add61, %a.sroa.11.8.insert.insert
  br label %if.end64

if.end64:                                         ; preds = %if.then52, %if.then45, %if.then41.if.end64_crit_edge, %if.end34.if.end64_crit_edge
  %z.sroa.9.0 = phi i64 [ %and47, %if.then45 ], [ %add, %if.then41.if.end64_crit_edge ], [ %a.sroa.11.8.insert.insert, %if.end34.if.end64_crit_edge ], [ %spec.select, %if.then52 ]
  %neg65 = sub i64 0, %shl35
  %and67 = and i64 %z.sroa.9.0, %neg65
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and67)
  %cmp69 = icmp eq i64 %and67, 0
  %inc = zext i1 %cmp69 to i32
  %spec.select216 = add i32 %a.coerce.fca.0.extract, %inc
  %spec.select217 = select i1 %cmp69, i64 -9223372036854775808, i64 %and67
  call void @__sanitizer_cov_trace_cmp8(i64 %spec.select217, i64 %a.sroa.11.8.insert.insert)
  %cmp76.not = icmp eq i64 %spec.select217, %a.sroa.11.8.insert.insert
  br i1 %cmp76.not, label %if.end64.if.end83_crit_edge, label %if.then78

if.end64.if.end83_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then78:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %exception79 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %47 = ptrtoint ptr %exception79 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %exception79, align 1
  %49 = or i8 %48, 16
  store i8 %49, ptr %exception79, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %if.end64.if.end83_crit_edge
  %z.sroa.0.sroa.6.0.insert.ext103 = and i32 %spec.select216, 65535
  %z.sroa.0.sroa.0.0.insert.shift100 = and i32 %a.coerce.fca.0.extract, -65536
  %z.sroa.0.sroa.0.0.insert.insert102 = or i32 %z.sroa.0.sroa.6.0.insert.ext103, %z.sroa.0.sroa.0.0.insert.shift100
  %50 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %z.sroa.0.sroa.0.0.insert.insert102, ptr %agg.result, align 4
  %z.sroa.9.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 4
  %51 = ptrtoint ptr %z.sroa.9.0.agg.result.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 %spec.select217, ptr %z.sroa.9.0.agg.result.sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %sw.epilog, %cond.false32, %cond.true31, %cond.false, %cond.true, %if.then23, %if.then12, %if.end, %propagateFloatx80NaN.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @floatx80_add(ptr noalias nocapture writeonly sret(%struct.floatx80) align 4 %agg.result, ptr nocapture noundef %roundData, [3 x i32] %a.coerce, [3 x i32] %b.coerce) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract.i = extractvalue [3 x i32] %a.coerce, 0
  %conv.i = lshr i32 %a.coerce.fca.0.extract.i, 15
  %0 = trunc i32 %conv.i to i8
  %conv1.i = and i8 %0, 1
  %a.coerce.fca.0.extract.i59 = extractvalue [3 x i32] %b.coerce, 0
  %conv.i60 = lshr i32 %a.coerce.fca.0.extract.i59, 15
  %1 = trunc i32 %conv.i60 to i8
  %conv1.i61 = and i8 %1, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %conv1.i, i8 %conv1.i61)
  %cmp = icmp eq i8 %conv1.i, %conv1.i61
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @addFloatx80Sigs(ptr sret(%struct.floatx80) align 4 %agg.result, ptr noundef %roundData, [3 x i32] %a.coerce, [3 x i32] %b.coerce, i8 noundef zeroext %conv1.i)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @subFloatx80Sigs(ptr sret(%struct.floatx80) align 4 %agg.result, ptr noundef %roundData, [3 x i32] %a.coerce, [3 x i32] %b.coerce, i8 noundef zeroext %conv1.i)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @addFloatx80Sigs(ptr noalias nocapture writeonly sret(%struct.floatx80) align 4 %agg.result, ptr nocapture noundef %roundData, [3 x i32] %a.coerce, [3 x i32] %b.coerce, i8 noundef zeroext %zSign) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [3 x i32] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [3 x i32] %a.coerce, 1
  %a.coerce.fca.2.extract = extractvalue [3 x i32] %a.coerce, 2
  %a.sroa.3.4.insert.ext.i = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.1.4.insert.ext.i = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.1.4.insert.shift.i = shl nuw i64 %a.sroa.1.4.insert.ext.i, 32
  %a.sroa.1.4.insert.insert.i = or i64 %a.sroa.1.4.insert.shift.i, %a.sroa.3.4.insert.ext.i
  %and.i = and i32 %a.coerce.fca.0.extract, 32767
  %a.coerce.fca.1.extract.i162 = extractvalue [3 x i32] %b.coerce, 1
  %a.coerce.fca.2.extract.i163 = extractvalue [3 x i32] %b.coerce, 2
  %a.sroa.3.4.insert.ext.i164 = zext i32 %a.coerce.fca.2.extract.i163 to i64
  %a.sroa.1.4.insert.ext.i165 = zext i32 %a.coerce.fca.1.extract.i162 to i64
  %a.sroa.1.4.insert.shift.i166 = shl nuw i64 %a.sroa.1.4.insert.ext.i165, 32
  %a.sroa.1.4.insert.insert.i167 = or i64 %a.sroa.1.4.insert.shift.i166, %a.sroa.3.4.insert.ext.i164
  %a.coerce.fca.0.extract.i168 = extractvalue [3 x i32] %b.coerce, 0
  %and.i169 = and i32 %a.coerce.fca.0.extract.i168, 32767
  %sub = sub nsw i32 %and.i, %and.i169
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i)
  %cmp4 = icmp eq i32 %and.i, 32767
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then
  %shl.mask = and i64 %a.sroa.1.4.insert.insert.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %tobool.not = icmp eq i64 %shl.mask, 0
  br i1 %tobool.not, label %if.end, label %floatx80_is_nan.exit.i

floatx80_is_nan.exit.i:                           ; preds = %if.then5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %0 = shl i64 %a.sroa.1.4.insert.ext.i, 33
  %1 = shl nuw nsw i64 %a.sroa.3.4.insert.ext.i, 1
  %shl.i.i = or i64 %0, %1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i.i)
  %tobool.i.i.not = icmp eq i64 %shl.i.i, 0
  %shl.mask.i.i = and i64 %a.sroa.1.4.insert.insert.i, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i.i)
  %tobool.not.i.i = icmp ne i64 %shl.mask.i.i, 0
  %and.i58.i = and i64 %a.sroa.1.4.insert.insert.i, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i, i64 %and.i58.i)
  %cmp4.i.i = icmp eq i64 %a.sroa.1.4.insert.insert.i, %and.i58.i
  %2 = and i1 %tobool.not.i.i, %cmp4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i169)
  %cmp.i62.i = icmp eq i32 %and.i169, 32767
  br i1 %cmp.i62.i, label %floatx80_is_nan.exit69.i, label %floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge

floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge: ; preds = %floatx80_is_nan.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80_is_signaling_nan.exit84.i

floatx80_is_nan.exit69.i:                         ; preds = %floatx80_is_nan.exit.i
  %3 = shl i64 %a.sroa.1.4.insert.ext.i165, 33
  %4 = shl nuw nsw i64 %a.sroa.3.4.insert.ext.i164, 1
  %shl.i65.i = or i64 %3, %4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i65.i)
  %tobool.i66.i = icmp ne i64 %shl.i65.i, 0
  %shl.mask.i77.i = and i64 %a.sroa.1.4.insert.insert.i167, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i77.i)
  %tobool.not.i78.i = icmp eq i64 %shl.mask.i77.i, 0
  br i1 %tobool.not.i78.i, label %floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge, label %land.rhs.i82.i

floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge: ; preds = %floatx80_is_nan.exit69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80_is_signaling_nan.exit84.i

land.rhs.i82.i:                                   ; preds = %floatx80_is_nan.exit69.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.i80.i = and i64 %a.sroa.1.4.insert.insert.i167, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i167, i64 %and.i80.i)
  %cmp4.i81.i = icmp eq i64 %a.sroa.1.4.insert.insert.i167, %and.i80.i
  br label %floatx80_is_signaling_nan.exit84.i

floatx80_is_signaling_nan.exit84.i:               ; preds = %land.rhs.i82.i, %floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge, %floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge
  %conv2.i6896.shrunk.i = phi i1 [ %tobool.i66.i, %floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge ], [ %tobool.i66.i, %land.rhs.i82.i ], [ false, %floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge ]
  %5 = phi i1 [ false, %floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge ], [ %cmp4.i81.i, %land.rhs.i82.i ], [ false, %floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge ]
  %or75397.i = or i1 %2, %5
  br i1 %or75397.i, label %if.then.i, label %floatx80_is_signaling_nan.exit84.i.propagateFloatx80NaN.exit_crit_edge

floatx80_is_signaling_nan.exit84.i.propagateFloatx80NaN.exit_crit_edge: ; preds = %floatx80_is_signaling_nan.exit84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloatx80NaN.exit

if.then.i:                                        ; preds = %floatx80_is_signaling_nan.exit84.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8, !noalias !84
  br label %propagateFloatx80NaN.exit

propagateFloatx80NaN.exit:                        ; preds = %if.then.i, %floatx80_is_signaling_nan.exit84.i.propagateFloatx80NaN.exit_crit_edge
  %and5498.i = and i1 %2, %conv2.i6896.shrunk.i
  %6 = select i1 %tobool.i.i.not, i1 true, i1 %and5498.i
  %b.coerce.fca.0.extract.sink.i = select i1 %6, i32 %a.coerce.fca.0.extract.i168, i32 %a.coerce.fca.0.extract
  %or5.sink.i.v = select i1 %6, i64 %a.sroa.1.4.insert.insert.i167, i64 %a.sroa.1.4.insert.insert.i
  %or5.sink.i = or i64 %or5.sink.i.v, -4611686018427387904
  %7 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %b.coerce.fca.0.extract.sink.i, ptr %agg.result, align 4, !alias.scope !84
  %b.sroa.5.0.agg.result.sroa_idx.i = getelementptr inbounds i8, ptr %agg.result, i32 4
  %8 = ptrtoint ptr %b.sroa.5.0.agg.result.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %or5.sink.i, ptr %b.sroa.5.0.agg.result.sroa_idx.i, align 4, !alias.scope !84
  br label %cleanup

if.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %a.coerce.fca.0.extract, ptr %agg.result, align 4
  %a.sroa.8.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 4
  %10 = ptrtoint ptr %a.sroa.8.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %a.coerce.fca.1.extract, ptr %a.sroa.8.0.agg.result.sroa_idx, align 4
  %a.sroa.14.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 8
  %11 = ptrtoint ptr %a.sroa.14.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %a.coerce.fca.2.extract, ptr %a.sroa.14.0.agg.result.sroa_idx, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i169)
  %cmp8 = icmp eq i32 %and.i169, 0
  %dec = sext i1 %cmp8 to i32
  %spec.select = add nsw i32 %sub, %dec
  %12 = sub nsw i32 0, %spec.select
  %conv.i = and i32 %12, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp.i = icmp eq i32 %spec.select, 0
  br i1 %cmp.i, label %if.end7.if.end36_crit_edge, label %if.else.i

if.end7.if.end36_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.else.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %spec.select)
  %cmp2.i = icmp ult i32 %spec.select, 64
  br i1 %cmp2.i, label %if.then4.i, label %if.else10.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom.i = zext i32 %conv.i to i64
  %shl.i = shl i64 %a.sroa.1.4.insert.insert.i167, %sh_prom.i
  %sh_prom9.i = zext i32 %spec.select to i64
  %shr.i = lshr i64 %a.sroa.1.4.insert.insert.i167, %sh_prom9.i
  br label %if.end36

if.else10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %spec.select)
  %cmp11.i = icmp eq i32 %spec.select, 64
  br i1 %cmp11.i, label %if.else10.i.if.end36_crit_edge, label %if.else18.i

if.else10.i.if.end36_crit_edge:                   ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.else18.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a.sroa.1.4.insert.insert.i167)
  %cmp20.i = icmp ne i64 %a.sroa.1.4.insert.insert.i167, 0
  %13 = zext i1 %cmp20.i to i64
  br label %if.end36

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp11 = icmp slt i32 %sub, 0
  br i1 %cmp11, label %if.then12, label %if.else24

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i169)
  %cmp13 = icmp eq i32 %and.i169, 32767
  br i1 %cmp13, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.then12
  %shl15.mask = and i64 %a.sroa.1.4.insert.insert.i167, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl15.mask)
  %tobool16.not = icmp eq i64 %shl15.mask, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.then14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i)
  %cmp.i.i188 = icmp eq i32 %and.i, 32767
  br i1 %cmp.i.i188, label %floatx80_is_nan.exit.i193, label %if.then17.floatx80_is_nan.exit69.i205_crit_edge

if.then17.floatx80_is_nan.exit69.i205_crit_edge:  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80_is_nan.exit69.i205

floatx80_is_nan.exit.i193:                        ; preds = %if.then17
  %14 = shl i64 %a.sroa.1.4.insert.ext.i, 33
  %15 = shl nuw nsw i64 %a.sroa.3.4.insert.ext.i, 1
  %shl.i.i189 = or i64 %14, %15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i.i189)
  %tobool.i.i190 = icmp ne i64 %shl.i.i189, 0
  %shl.mask.i.i191 = and i64 %a.sroa.1.4.insert.insert.i, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i.i191)
  %tobool.not.i.i192 = icmp eq i64 %shl.mask.i.i191, 0
  br i1 %tobool.not.i.i192, label %floatx80_is_nan.exit.i193.floatx80_is_nan.exit69.i205_crit_edge, label %land.rhs.i59.i196

floatx80_is_nan.exit.i193.floatx80_is_nan.exit69.i205_crit_edge: ; preds = %floatx80_is_nan.exit.i193
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80_is_nan.exit69.i205

land.rhs.i59.i196:                                ; preds = %floatx80_is_nan.exit.i193
  call void @__sanitizer_cov_trace_pc() #10
  %and.i58.i194 = and i64 %a.sroa.1.4.insert.insert.i, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i, i64 %and.i58.i194)
  %cmp4.i.i195 = icmp eq i64 %a.sroa.1.4.insert.insert.i, %and.i58.i194
  br label %floatx80_is_nan.exit69.i205

floatx80_is_nan.exit69.i205:                      ; preds = %land.rhs.i59.i196, %floatx80_is_nan.exit.i193.floatx80_is_nan.exit69.i205_crit_edge, %if.then17.floatx80_is_nan.exit69.i205_crit_edge
  %conv2.i90.shrunk.i197 = phi i1 [ %tobool.i.i190, %floatx80_is_nan.exit.i193.floatx80_is_nan.exit69.i205_crit_edge ], [ %tobool.i.i190, %land.rhs.i59.i196 ], [ false, %if.then17.floatx80_is_nan.exit69.i205_crit_edge ]
  %16 = phi i1 [ false, %floatx80_is_nan.exit.i193.floatx80_is_nan.exit69.i205_crit_edge ], [ %cmp4.i.i195, %land.rhs.i59.i196 ], [ false, %if.then17.floatx80_is_nan.exit69.i205_crit_edge ]
  %17 = shl i64 %a.sroa.1.4.insert.ext.i165, 33
  %18 = shl nuw nsw i64 %a.sroa.3.4.insert.ext.i164, 1
  %shl.i65.i201 = or i64 %17, %18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i65.i201)
  %tobool.i66.i202 = icmp ne i64 %shl.i65.i201, 0
  %shl.mask.i77.i203 = and i64 %a.sroa.1.4.insert.insert.i167, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i77.i203)
  %tobool.not.i78.i204 = icmp ne i64 %shl.mask.i77.i203, 0
  %and.i80.i206 = and i64 %a.sroa.1.4.insert.insert.i167, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i167, i64 %and.i80.i206)
  %cmp4.i81.i207 = icmp eq i64 %a.sroa.1.4.insert.insert.i167, %and.i80.i206
  %19 = and i1 %tobool.not.i78.i204, %cmp4.i81.i207
  %or75397.i210 = or i1 %19, %16
  br i1 %or75397.i210, label %if.then.i212, label %floatx80_is_nan.exit69.i205.propagateFloatx80NaN.exit221_crit_edge

floatx80_is_nan.exit69.i205.propagateFloatx80NaN.exit221_crit_edge: ; preds = %floatx80_is_nan.exit69.i205
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloatx80NaN.exit221

if.then.i212:                                     ; preds = %floatx80_is_nan.exit69.i205
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8, !noalias !87
  br label %propagateFloatx80NaN.exit221

propagateFloatx80NaN.exit221:                     ; preds = %if.then.i212, %floatx80_is_nan.exit69.i205.propagateFloatx80NaN.exit221_crit_edge
  %or5.i213 = or i64 %a.sroa.1.4.insert.insert.i167, -4611686018427387904
  %or.i214 = or i64 %a.sroa.1.4.insert.insert.i, -4611686018427387904
  %and5498.i215 = and i1 %tobool.i66.i202, %16
  %b.coerce.fca.0.extract.a.coerce.fca.0.extract.i216 = select i1 %and5498.i215, i32 %a.coerce.fca.0.extract.i168, i32 %a.coerce.fca.0.extract
  %or5.or.i217 = select i1 %and5498.i215, i64 %or5.i213, i64 %or.i214
  %b.coerce.fca.0.extract.sink.i218 = select i1 %conv2.i90.shrunk.i197, i32 %b.coerce.fca.0.extract.a.coerce.fca.0.extract.i216, i32 %a.coerce.fca.0.extract.i168
  %or5.sink.i219 = select i1 %conv2.i90.shrunk.i197, i64 %or5.or.i217, i64 %or5.i213
  %20 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %b.coerce.fca.0.extract.sink.i218, ptr %agg.result, align 4, !alias.scope !87
  %b.sroa.5.0.agg.result.sroa_idx.i220 = getelementptr inbounds i8, ptr %agg.result, i32 4
  %21 = ptrtoint ptr %b.sroa.5.0.agg.result.sroa_idx.i220 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %or5.sink.i219, ptr %b.sroa.5.0.agg.result.sroa_idx.i220, align 4, !alias.scope !87
  br label %cleanup

if.end18:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %22 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %23 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 -9223372036854775808, ptr %23, align 4, !alias.scope !90
  %conv1.i = zext i8 %zSign to i16
  %shl.i222 = shl i16 %conv1.i, 15
  %add.i = or i16 %shl.i222, 32767
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %add.i, ptr %22, align 2, !alias.scope !90
  %26 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %agg.result, align 4, !alias.scope !90
  br label %cleanup

if.end19:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp20 = icmp eq i32 %and.i, 0
  %inc = zext i1 %cmp20 to i32
  %spec.select161 = add nsw i32 %sub, %inc
  %sub23 = sub nsw i32 0, %spec.select161
  %conv.i223 = and i32 %spec.select161, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select161)
  %cmp.i224 = icmp eq i32 %spec.select161, 0
  br i1 %cmp.i224, label %if.end19.if.end36_crit_edge, label %if.else.i226

if.end19.if.end36_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.else.i226:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub23)
  %cmp2.i225 = icmp ult i32 %sub23, 64
  br i1 %cmp2.i225, label %if.then4.i231, label %if.else10.i233

if.then4.i231:                                    ; preds = %if.else.i226
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom.i227 = zext i32 %conv.i223 to i64
  %shl.i228 = shl i64 %a.sroa.1.4.insert.insert.i, %sh_prom.i227
  %sh_prom9.i229 = zext i32 %sub23 to i64
  %shr.i230 = lshr i64 %a.sroa.1.4.insert.insert.i, %sh_prom9.i229
  br label %if.end36

if.else10.i233:                                   ; preds = %if.else.i226
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %spec.select161)
  %cmp11.i232 = icmp eq i32 %spec.select161, -64
  br i1 %cmp11.i232, label %if.else10.i233.if.end36_crit_edge, label %if.else18.i236

if.else10.i233.if.end36_crit_edge:                ; preds = %if.else10.i233
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.else18.i236:                                   ; preds = %if.else10.i233
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a.sroa.1.4.insert.insert.i)
  %cmp20.i235 = icmp ne i64 %a.sroa.1.4.insert.insert.i, 0
  %27 = zext i1 %cmp20.i235 to i64
  br label %if.end36

if.else24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i)
  %cmp25 = icmp eq i32 %and.i, 32767
  br i1 %cmp25, label %if.then26, label %if.end31

if.then26:                                        ; preds = %if.else24
  %or = or i64 %a.sroa.1.4.insert.insert.i167, %a.sroa.1.4.insert.insert.i
  %shl27.mask = and i64 %or, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl27.mask)
  %tobool28.not = icmp eq i64 %shl27.mask, 0
  br i1 %tobool28.not, label %if.end30, label %floatx80_is_nan.exit.i260

floatx80_is_nan.exit.i260:                        ; preds = %if.then26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %28 = shl i64 %a.sroa.1.4.insert.ext.i, 33
  %29 = shl nuw nsw i64 %a.sroa.3.4.insert.ext.i, 1
  %shl.i.i256 = or i64 %28, %29
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i.i256)
  %tobool.i.i257.not = icmp eq i64 %shl.i.i256, 0
  %shl.mask.i.i258 = and i64 %a.sroa.1.4.insert.insert.i, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i.i258)
  %tobool.not.i.i259 = icmp ne i64 %shl.mask.i.i258, 0
  %and.i58.i261 = and i64 %a.sroa.1.4.insert.insert.i, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i, i64 %and.i58.i261)
  %cmp4.i.i262 = icmp eq i64 %a.sroa.1.4.insert.insert.i, %and.i58.i261
  %30 = and i1 %tobool.not.i.i259, %cmp4.i.i262
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i169)
  %cmp.i62.i266 = icmp eq i32 %and.i169, 32767
  br i1 %cmp.i62.i266, label %floatx80_is_nan.exit69.i272, label %floatx80_is_nan.exit.i260.floatx80_is_signaling_nan.exit84.i278_crit_edge

floatx80_is_nan.exit.i260.floatx80_is_signaling_nan.exit84.i278_crit_edge: ; preds = %floatx80_is_nan.exit.i260
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80_is_signaling_nan.exit84.i278

floatx80_is_nan.exit69.i272:                      ; preds = %floatx80_is_nan.exit.i260
  %31 = shl i64 %a.sroa.1.4.insert.ext.i165, 33
  %32 = shl nuw nsw i64 %a.sroa.3.4.insert.ext.i164, 1
  %shl.i65.i268 = or i64 %31, %32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i65.i268)
  %tobool.i66.i269 = icmp ne i64 %shl.i65.i268, 0
  %shl.mask.i77.i270 = and i64 %a.sroa.1.4.insert.insert.i167, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i77.i270)
  %tobool.not.i78.i271 = icmp eq i64 %shl.mask.i77.i270, 0
  br i1 %tobool.not.i78.i271, label %floatx80_is_nan.exit69.i272.floatx80_is_signaling_nan.exit84.i278_crit_edge, label %land.rhs.i82.i275

floatx80_is_nan.exit69.i272.floatx80_is_signaling_nan.exit84.i278_crit_edge: ; preds = %floatx80_is_nan.exit69.i272
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80_is_signaling_nan.exit84.i278

land.rhs.i82.i275:                                ; preds = %floatx80_is_nan.exit69.i272
  call void @__sanitizer_cov_trace_pc() #10
  %and.i80.i273 = and i64 %a.sroa.1.4.insert.insert.i167, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i167, i64 %and.i80.i273)
  %cmp4.i81.i274 = icmp eq i64 %a.sroa.1.4.insert.insert.i167, %and.i80.i273
  br label %floatx80_is_signaling_nan.exit84.i278

floatx80_is_signaling_nan.exit84.i278:            ; preds = %land.rhs.i82.i275, %floatx80_is_nan.exit69.i272.floatx80_is_signaling_nan.exit84.i278_crit_edge, %floatx80_is_nan.exit.i260.floatx80_is_signaling_nan.exit84.i278_crit_edge
  %conv2.i6896.shrunk.i276 = phi i1 [ %tobool.i66.i269, %floatx80_is_nan.exit69.i272.floatx80_is_signaling_nan.exit84.i278_crit_edge ], [ %tobool.i66.i269, %land.rhs.i82.i275 ], [ false, %floatx80_is_nan.exit.i260.floatx80_is_signaling_nan.exit84.i278_crit_edge ]
  %33 = phi i1 [ false, %floatx80_is_nan.exit69.i272.floatx80_is_signaling_nan.exit84.i278_crit_edge ], [ %cmp4.i81.i274, %land.rhs.i82.i275 ], [ false, %floatx80_is_nan.exit.i260.floatx80_is_signaling_nan.exit84.i278_crit_edge ]
  %or75397.i277 = or i1 %30, %33
  br i1 %or75397.i277, label %if.then.i279, label %floatx80_is_signaling_nan.exit84.i278.propagateFloatx80NaN.exit288_crit_edge

floatx80_is_signaling_nan.exit84.i278.propagateFloatx80NaN.exit288_crit_edge: ; preds = %floatx80_is_signaling_nan.exit84.i278
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloatx80NaN.exit288

if.then.i279:                                     ; preds = %floatx80_is_signaling_nan.exit84.i278
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8, !noalias !93
  br label %propagateFloatx80NaN.exit288

propagateFloatx80NaN.exit288:                     ; preds = %if.then.i279, %floatx80_is_signaling_nan.exit84.i278.propagateFloatx80NaN.exit288_crit_edge
  %and5498.i282 = and i1 %30, %conv2.i6896.shrunk.i276
  %34 = select i1 %tobool.i.i257.not, i1 true, i1 %and5498.i282
  %b.coerce.fca.0.extract.sink.i285 = select i1 %34, i32 %a.coerce.fca.0.extract.i168, i32 %a.coerce.fca.0.extract
  %or5.sink.i286.v = select i1 %34, i64 %a.sroa.1.4.insert.insert.i167, i64 %a.sroa.1.4.insert.insert.i
  %or5.sink.i286 = or i64 %or5.sink.i286.v, -4611686018427387904
  %35 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %b.coerce.fca.0.extract.sink.i285, ptr %agg.result, align 4, !alias.scope !93
  %b.sroa.5.0.agg.result.sroa_idx.i287 = getelementptr inbounds i8, ptr %agg.result, i32 4
  %36 = ptrtoint ptr %b.sroa.5.0.agg.result.sroa_idx.i287 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %or5.sink.i286, ptr %b.sroa.5.0.agg.result.sroa_idx.i287, align 4, !alias.scope !93
  br label %cleanup

if.end30:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %a.coerce.fca.0.extract, ptr %agg.result, align 4
  %a.sroa.8.0.agg.result.sroa_idx153 = getelementptr inbounds i8, ptr %agg.result, i32 4
  %38 = ptrtoint ptr %a.sroa.8.0.agg.result.sroa_idx153 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %a.coerce.fca.1.extract, ptr %a.sroa.8.0.agg.result.sroa_idx153, align 4
  %a.sroa.14.0.agg.result.sroa_idx155 = getelementptr inbounds i8, ptr %agg.result, i32 8
  %39 = ptrtoint ptr %a.sroa.14.0.agg.result.sroa_idx155 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %a.coerce.fca.2.extract, ptr %a.sroa.14.0.agg.result.sroa_idx155, align 4
  br label %cleanup

if.end31:                                         ; preds = %if.else24
  %add = add i64 %a.sroa.1.4.insert.insert.i167, %a.sroa.1.4.insert.insert.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp32 = icmp eq i32 %and.i, 0
  br i1 %cmp32, label %if.then33, label %if.end31.shiftRight1_crit_edge

if.end31.shiftRight1_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %shiftRight1

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp.i.i289 = icmp ult i64 %add, 4294967296
  %shr.i.i = lshr i64 %add, 32
  %a.addr.0.off0.v.i.i = select i1 %cmp.i.i289, i64 %add, i64 %shr.i.i
  %a.addr.0.off0.i.i = trunc i64 %a.addr.0.off0.v.i.i to i32
  %shiftCount.0.i.i = select i1 %cmp.i.i289, i8 32, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %a.addr.0.off0.i.i)
  %cmp.i.i.i = icmp ult i32 %a.addr.0.off0.i.i, 65536
  %shl.i.i.i = shl i32 %a.addr.0.off0.i.i, 16
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %shl.i.i.i, i32 %a.addr.0.off0.i.i
  %spec.select21.i.i.i = select i1 %cmp.i.i.i, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i.i)
  %cmp2.i.i.i = icmp ult i32 %spec.select.i.i.i, 16777216
  %40 = or i8 %spec.select21.i.i.i, 8
  %shl8.i.i.i = shl i32 %spec.select.i.i.i, 8
  %a.addr.1.i.i.i = select i1 %cmp2.i.i.i, i32 %shl8.i.i.i, i32 %spec.select.i.i.i
  %shiftCount.1.i.i.i = select i1 %cmp2.i.i.i, i8 %40, i8 %spec.select21.i.i.i
  %shr.i.i.i = lshr i32 %a.addr.1.i.i.i, 24
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i.i
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.i.i, align 1
  %add12.i.i.i = or i8 %shiftCount.1.i.i.i, %shiftCount.0.i.i
  %add5.i.i = add i8 %add12.i.i.i, %42
  %conv.i290 = sext i8 %add5.i.i to i32
  %sh_prom.i291 = zext i32 %conv.i290 to i64
  %shl.i292 = shl i64 %add, %sh_prom.i291
  %sub.i = sub nsw i32 1, %conv.i290
  br label %roundAndPack

if.end36:                                         ; preds = %if.else18.i236, %if.else10.i233.if.end36_crit_edge, %if.then4.i231, %if.end19.if.end36_crit_edge, %if.else18.i, %if.else10.i.if.end36_crit_edge, %if.then4.i, %if.end7.if.end36_crit_edge
  %aSig.0 = phi i64 [ %a.sroa.1.4.insert.insert.i, %if.else10.i.if.end36_crit_edge ], [ %a.sroa.1.4.insert.insert.i, %if.end7.if.end36_crit_edge ], [ %a.sroa.1.4.insert.insert.i, %if.then4.i ], [ %a.sroa.1.4.insert.insert.i, %if.else18.i ], [ %shr.i230, %if.then4.i231 ], [ %a.sroa.1.4.insert.insert.i, %if.end19.if.end36_crit_edge ], [ 0, %if.else18.i236 ], [ 0, %if.else10.i233.if.end36_crit_edge ]
  %bSig.0 = phi i64 [ 0, %if.else10.i.if.end36_crit_edge ], [ %a.sroa.1.4.insert.insert.i167, %if.end7.if.end36_crit_edge ], [ %shr.i, %if.then4.i ], [ 0, %if.else18.i ], [ %a.sroa.1.4.insert.insert.i167, %if.then4.i231 ], [ %a.sroa.1.4.insert.insert.i167, %if.end19.if.end36_crit_edge ], [ %a.sroa.1.4.insert.insert.i167, %if.else18.i236 ], [ %a.sroa.1.4.insert.insert.i167, %if.else10.i233.if.end36_crit_edge ]
  %zSig1.0 = phi i64 [ %a.sroa.1.4.insert.insert.i167, %if.else10.i.if.end36_crit_edge ], [ 0, %if.end7.if.end36_crit_edge ], [ %shl.i, %if.then4.i ], [ %13, %if.else18.i ], [ %shl.i228, %if.then4.i231 ], [ 0, %if.end19.if.end36_crit_edge ], [ %27, %if.else18.i236 ], [ %a.sroa.1.4.insert.insert.i, %if.else10.i233.if.end36_crit_edge ]
  %storemerge = phi i32 [ %and.i, %if.else10.i.if.end36_crit_edge ], [ %and.i, %if.end7.if.end36_crit_edge ], [ %and.i, %if.then4.i ], [ %and.i, %if.else18.i ], [ %and.i169, %if.then4.i231 ], [ %and.i169, %if.end19.if.end36_crit_edge ], [ %and.i169, %if.else18.i236 ], [ %and.i169, %if.else10.i233.if.end36_crit_edge ]
  %add37 = add i64 %bSig.0, %aSig.0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add37)
  %cmp38 = icmp slt i64 %add37, 0
  br i1 %cmp38, label %if.end36.roundAndPack_crit_edge, label %if.end36.shiftRight1_crit_edge

if.end36.shiftRight1_crit_edge:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %shiftRight1

if.end36.roundAndPack_crit_edge:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %roundAndPack

shiftRight1:                                      ; preds = %if.end36.shiftRight1_crit_edge, %if.end31.shiftRight1_crit_edge
  %zExp.0 = phi i32 [ %storemerge, %if.end36.shiftRight1_crit_edge ], [ %and.i, %if.end31.shiftRight1_crit_edge ]
  %zSig0.0 = phi i64 [ %add37, %if.end36.shiftRight1_crit_edge ], [ %add, %if.end31.shiftRight1_crit_edge ]
  %zSig1.1 = phi i64 [ %zSig1.0, %if.end36.shiftRight1_crit_edge ], [ 0, %if.end31.shiftRight1_crit_edge ]
  %shl.i294 = shl i64 %zSig0.0, 63
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %zSig1.1)
  %cmp6.i = icmp ne i64 %zSig1.1, 0
  %43 = zext i1 %cmp6.i to i64
  %or.i295 = or i64 %shl.i294, %43
  %shr.i296 = lshr i64 %zSig0.0, 1
  %or41 = or i64 %shr.i296, -9223372036854775808
  %inc42 = add nuw nsw i32 %zExp.0, 1
  br label %roundAndPack

roundAndPack:                                     ; preds = %shiftRight1, %if.end36.roundAndPack_crit_edge, %if.then33
  %zExp.1 = phi i32 [ %storemerge, %if.end36.roundAndPack_crit_edge ], [ %inc42, %shiftRight1 ], [ %sub.i, %if.then33 ]
  %zSig0.1 = phi i64 [ %add37, %if.end36.roundAndPack_crit_edge ], [ %or41, %shiftRight1 ], [ %shl.i292, %if.then33 ]
  %zSig1.2 = phi i64 [ %zSig1.0, %if.end36.roundAndPack_crit_edge ], [ %or.i295, %shiftRight1 ], [ 0, %if.then33 ]
  tail call fastcc void @roundAndPackFloatx80(ptr sret(%struct.floatx80) align 4 %agg.result, ptr noundef %roundData, i8 noundef zeroext %zSign, i32 noundef %zExp.1, i64 noundef %zSig0.1, i64 noundef %zSig1.2)
  br label %cleanup

cleanup:                                          ; preds = %roundAndPack, %if.end30, %propagateFloatx80NaN.exit288, %if.end18, %propagateFloatx80NaN.exit221, %if.end, %propagateFloatx80NaN.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @subFloatx80Sigs(ptr noalias nocapture writeonly sret(%struct.floatx80) align 4 %agg.result, ptr nocapture noundef %roundData, [3 x i32] %a.coerce, [3 x i32] %b.coerce, i8 noundef zeroext %zSign) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [3 x i32] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [3 x i32] %a.coerce, 1
  %a.coerce.fca.2.extract = extractvalue [3 x i32] %a.coerce, 2
  %a.sroa.3.4.insert.ext.i = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.1.4.insert.ext.i = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.1.4.insert.shift.i = shl nuw i64 %a.sroa.1.4.insert.ext.i, 32
  %a.sroa.1.4.insert.insert.i = or i64 %a.sroa.1.4.insert.shift.i, %a.sroa.3.4.insert.ext.i
  %and.i = and i32 %a.coerce.fca.0.extract, 32767
  %a.coerce.fca.1.extract.i178 = extractvalue [3 x i32] %b.coerce, 1
  %a.coerce.fca.2.extract.i179 = extractvalue [3 x i32] %b.coerce, 2
  %a.sroa.3.4.insert.ext.i180 = zext i32 %a.coerce.fca.2.extract.i179 to i64
  %a.sroa.1.4.insert.ext.i181 = zext i32 %a.coerce.fca.1.extract.i178 to i64
  %a.sroa.1.4.insert.shift.i182 = shl nuw i64 %a.sroa.1.4.insert.ext.i181, 32
  %a.sroa.1.4.insert.insert.i183 = or i64 %a.sroa.1.4.insert.shift.i182, %a.sroa.3.4.insert.ext.i180
  %a.coerce.fca.0.extract.i184 = extractvalue [3 x i32] %b.coerce, 0
  %and.i185 = and i32 %a.coerce.fca.0.extract.i184, 32767
  %sub = sub nsw i32 %and.i, %and.i185
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %aExpBigger, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp4 = icmp slt i32 %sub, 0
  br i1 %cmp4, label %bExpBigger, label %if.end6

if.end6:                                          ; preds = %if.end
  %0 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %and.i, label %if.end6.if.end17_crit_edge [
    i32 32767, label %if.then8
    i32 0, label %if.then16
  ]

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then8:                                         ; preds = %if.end6
  %or = or i64 %a.sroa.1.4.insert.insert.i183, %a.sroa.1.4.insert.insert.i
  %shl.mask = and i64 %or, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %tobool.not = icmp eq i64 %shl.mask, 0
  br i1 %tobool.not, label %if.end10, label %floatx80_is_nan.exit.i

floatx80_is_nan.exit.i:                           ; preds = %if.then8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %1 = shl i64 %a.sroa.1.4.insert.ext.i, 33
  %2 = shl nuw nsw i64 %a.sroa.3.4.insert.ext.i, 1
  %shl.i.i = or i64 %1, %2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i.i)
  %tobool.i.i.not = icmp eq i64 %shl.i.i, 0
  %shl.mask.i.i = and i64 %a.sroa.1.4.insert.insert.i, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i.i)
  %tobool.not.i.i = icmp ne i64 %shl.mask.i.i, 0
  %and.i58.i = and i64 %a.sroa.1.4.insert.insert.i, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i, i64 %and.i58.i)
  %cmp4.i.i = icmp eq i64 %a.sroa.1.4.insert.insert.i, %and.i58.i
  %3 = and i1 %tobool.not.i.i, %cmp4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i185)
  %cmp.i62.i = icmp eq i32 %and.i185, 32767
  br i1 %cmp.i62.i, label %floatx80_is_nan.exit69.i, label %floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge

floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge: ; preds = %floatx80_is_nan.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80_is_signaling_nan.exit84.i

floatx80_is_nan.exit69.i:                         ; preds = %floatx80_is_nan.exit.i
  %4 = shl i64 %a.sroa.1.4.insert.ext.i181, 33
  %5 = shl nuw nsw i64 %a.sroa.3.4.insert.ext.i180, 1
  %shl.i65.i = or i64 %4, %5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i65.i)
  %tobool.i66.i = icmp ne i64 %shl.i65.i, 0
  %shl.mask.i77.i = and i64 %a.sroa.1.4.insert.insert.i183, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i77.i)
  %tobool.not.i78.i = icmp eq i64 %shl.mask.i77.i, 0
  br i1 %tobool.not.i78.i, label %floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge, label %land.rhs.i82.i

floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge: ; preds = %floatx80_is_nan.exit69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80_is_signaling_nan.exit84.i

land.rhs.i82.i:                                   ; preds = %floatx80_is_nan.exit69.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.i80.i = and i64 %a.sroa.1.4.insert.insert.i183, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i183, i64 %and.i80.i)
  %cmp4.i81.i = icmp eq i64 %a.sroa.1.4.insert.insert.i183, %and.i80.i
  br label %floatx80_is_signaling_nan.exit84.i

floatx80_is_signaling_nan.exit84.i:               ; preds = %land.rhs.i82.i, %floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge, %floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge
  %conv2.i6896.shrunk.i = phi i1 [ %tobool.i66.i, %floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge ], [ %tobool.i66.i, %land.rhs.i82.i ], [ false, %floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge ]
  %6 = phi i1 [ false, %floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge ], [ %cmp4.i81.i, %land.rhs.i82.i ], [ false, %floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge ]
  %or75397.i = or i1 %3, %6
  br i1 %or75397.i, label %if.then.i, label %floatx80_is_signaling_nan.exit84.i.propagateFloatx80NaN.exit_crit_edge

floatx80_is_signaling_nan.exit84.i.propagateFloatx80NaN.exit_crit_edge: ; preds = %floatx80_is_signaling_nan.exit84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloatx80NaN.exit

if.then.i:                                        ; preds = %floatx80_is_signaling_nan.exit84.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8, !noalias !96
  br label %propagateFloatx80NaN.exit

propagateFloatx80NaN.exit:                        ; preds = %if.then.i, %floatx80_is_signaling_nan.exit84.i.propagateFloatx80NaN.exit_crit_edge
  %and5498.i = and i1 %3, %conv2.i6896.shrunk.i
  %7 = select i1 %tobool.i.i.not, i1 true, i1 %and5498.i
  %b.coerce.fca.0.extract.sink.i = select i1 %7, i32 %a.coerce.fca.0.extract.i184, i32 %a.coerce.fca.0.extract
  %or5.sink.i.v = select i1 %7, i64 %a.sroa.1.4.insert.insert.i183, i64 %a.sroa.1.4.insert.insert.i
  %or5.sink.i = or i64 %or5.sink.i.v, -4611686018427387904
  %8 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %b.coerce.fca.0.extract.sink.i, ptr %agg.result, align 4, !alias.scope !96
  %b.sroa.5.0.agg.result.sroa_idx.i = getelementptr inbounds i8, ptr %agg.result, i32 4
  %9 = ptrtoint ptr %b.sroa.5.0.agg.result.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %or5.sink.i, ptr %b.sroa.5.0.agg.result.sroa_idx.i, align 4, !alias.scope !96
  br label %cleanup

if.end10:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %exception = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %10 = ptrtoint ptr %exception to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %exception, align 1
  %12 = or i8 %11, 1
  store i8 %12, ptr %exception, align 1
  %13 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %agg.result, align 4
  %z.sroa.5.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 2
  %14 = ptrtoint ptr %z.sroa.5.0.agg.result.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %z.sroa.5.0.agg.result.sroa_idx, align 2
  %z.sroa.7.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 4
  %15 = ptrtoint ptr %z.sroa.7.0.agg.result.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 -1, ptr %z.sroa.7.0.agg.result.sroa_idx, align 4
  br label %cleanup

if.then16:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end6.if.end17_crit_edge
  %aExp.0 = phi i32 [ 1, %if.then16 ], [ %and.i, %if.end6.if.end17_crit_edge ]
  %bExp.0 = phi i32 [ 1, %if.then16 ], [ %and.i185, %if.end6.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i183, i64 %a.sroa.1.4.insert.insert.i)
  %cmp18 = icmp ult i64 %a.sroa.1.4.insert.insert.i183, %a.sroa.1.4.insert.insert.i
  br i1 %cmp18, label %if.end17.aBigger_crit_edge, label %if.end21

if.end17.aBigger_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %aBigger

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i, i64 %a.sroa.1.4.insert.insert.i183)
  %cmp22 = icmp ult i64 %a.sroa.1.4.insert.insert.i, %a.sroa.1.4.insert.insert.i183
  br i1 %cmp22, label %if.end21.bBigger_crit_edge, label %if.end25

if.end21.bBigger_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %bBigger

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %roundData to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %roundData, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp27 = icmp eq i8 %17, 2
  %18 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %19 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 0, ptr %19, align 4, !alias.scope !99
  %conv2.i = select i1 %cmp27, i16 -32768, i16 0
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv2.i, ptr %18, align 2, !alias.scope !99
  %22 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %agg.result, align 4, !alias.scope !99
  br label %cleanup

bExpBigger:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i185)
  %cmp30 = icmp eq i32 %and.i185, 32767
  br i1 %cmp30, label %if.then32, label %if.end39

if.then32:                                        ; preds = %bExpBigger
  %shl33.mask = and i64 %a.sroa.1.4.insert.insert.i183, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl33.mask)
  %tobool34.not = icmp eq i64 %shl33.mask, 0
  br i1 %tobool34.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.then32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i)
  %cmp.i.i204 = icmp eq i32 %and.i, 32767
  br i1 %cmp.i.i204, label %floatx80_is_nan.exit.i209, label %if.then35.floatx80_is_nan.exit69.i221_crit_edge

if.then35.floatx80_is_nan.exit69.i221_crit_edge:  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80_is_nan.exit69.i221

floatx80_is_nan.exit.i209:                        ; preds = %if.then35
  %23 = shl i64 %a.sroa.1.4.insert.ext.i, 33
  %24 = shl nuw nsw i64 %a.sroa.3.4.insert.ext.i, 1
  %shl.i.i205 = or i64 %23, %24
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i.i205)
  %tobool.i.i206 = icmp ne i64 %shl.i.i205, 0
  %shl.mask.i.i207 = and i64 %a.sroa.1.4.insert.insert.i, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i.i207)
  %tobool.not.i.i208 = icmp eq i64 %shl.mask.i.i207, 0
  br i1 %tobool.not.i.i208, label %floatx80_is_nan.exit.i209.floatx80_is_nan.exit69.i221_crit_edge, label %land.rhs.i59.i212

floatx80_is_nan.exit.i209.floatx80_is_nan.exit69.i221_crit_edge: ; preds = %floatx80_is_nan.exit.i209
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80_is_nan.exit69.i221

land.rhs.i59.i212:                                ; preds = %floatx80_is_nan.exit.i209
  call void @__sanitizer_cov_trace_pc() #10
  %and.i58.i210 = and i64 %a.sroa.1.4.insert.insert.i, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i, i64 %and.i58.i210)
  %cmp4.i.i211 = icmp eq i64 %a.sroa.1.4.insert.insert.i, %and.i58.i210
  br label %floatx80_is_nan.exit69.i221

floatx80_is_nan.exit69.i221:                      ; preds = %land.rhs.i59.i212, %floatx80_is_nan.exit.i209.floatx80_is_nan.exit69.i221_crit_edge, %if.then35.floatx80_is_nan.exit69.i221_crit_edge
  %conv2.i90.shrunk.i213 = phi i1 [ %tobool.i.i206, %floatx80_is_nan.exit.i209.floatx80_is_nan.exit69.i221_crit_edge ], [ %tobool.i.i206, %land.rhs.i59.i212 ], [ false, %if.then35.floatx80_is_nan.exit69.i221_crit_edge ]
  %25 = phi i1 [ false, %floatx80_is_nan.exit.i209.floatx80_is_nan.exit69.i221_crit_edge ], [ %cmp4.i.i211, %land.rhs.i59.i212 ], [ false, %if.then35.floatx80_is_nan.exit69.i221_crit_edge ]
  %26 = shl i64 %a.sroa.1.4.insert.ext.i181, 33
  %27 = shl nuw nsw i64 %a.sroa.3.4.insert.ext.i180, 1
  %shl.i65.i217 = or i64 %26, %27
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i65.i217)
  %tobool.i66.i218 = icmp ne i64 %shl.i65.i217, 0
  %shl.mask.i77.i219 = and i64 %a.sroa.1.4.insert.insert.i183, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i77.i219)
  %tobool.not.i78.i220 = icmp ne i64 %shl.mask.i77.i219, 0
  %and.i80.i222 = and i64 %a.sroa.1.4.insert.insert.i183, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i183, i64 %and.i80.i222)
  %cmp4.i81.i223 = icmp eq i64 %a.sroa.1.4.insert.insert.i183, %and.i80.i222
  %28 = and i1 %tobool.not.i78.i220, %cmp4.i81.i223
  %or75397.i226 = or i1 %28, %25
  br i1 %or75397.i226, label %if.then.i228, label %floatx80_is_nan.exit69.i221.propagateFloatx80NaN.exit237_crit_edge

floatx80_is_nan.exit69.i221.propagateFloatx80NaN.exit237_crit_edge: ; preds = %floatx80_is_nan.exit69.i221
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloatx80NaN.exit237

if.then.i228:                                     ; preds = %floatx80_is_nan.exit69.i221
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8, !noalias !102
  br label %propagateFloatx80NaN.exit237

propagateFloatx80NaN.exit237:                     ; preds = %if.then.i228, %floatx80_is_nan.exit69.i221.propagateFloatx80NaN.exit237_crit_edge
  %or5.i229 = or i64 %a.sroa.1.4.insert.insert.i183, -4611686018427387904
  %or.i230 = or i64 %a.sroa.1.4.insert.insert.i, -4611686018427387904
  %and5498.i231 = and i1 %tobool.i66.i218, %25
  %b.coerce.fca.0.extract.a.coerce.fca.0.extract.i232 = select i1 %and5498.i231, i32 %a.coerce.fca.0.extract.i184, i32 %a.coerce.fca.0.extract
  %or5.or.i233 = select i1 %and5498.i231, i64 %or5.i229, i64 %or.i230
  %b.coerce.fca.0.extract.sink.i234 = select i1 %conv2.i90.shrunk.i213, i32 %b.coerce.fca.0.extract.a.coerce.fca.0.extract.i232, i32 %a.coerce.fca.0.extract.i184
  %or5.sink.i235 = select i1 %conv2.i90.shrunk.i213, i64 %or5.or.i233, i64 %or5.i229
  %29 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %b.coerce.fca.0.extract.sink.i234, ptr %agg.result, align 4, !alias.scope !102
  %b.sroa.5.0.agg.result.sroa_idx.i236 = getelementptr inbounds i8, ptr %agg.result, i32 4
  %30 = ptrtoint ptr %b.sroa.5.0.agg.result.sroa_idx.i236 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %or5.sink.i235, ptr %b.sroa.5.0.agg.result.sroa_idx.i236, align 4, !alias.scope !102
  br label %cleanup

if.end36:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %31 = xor i8 %zSign, -1
  %32 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %33 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 -9223372036854775808, ptr %33, align 4, !alias.scope !105
  %conv1.i238 = zext i8 %31 to i16
  %shl.i239 = shl i16 %conv1.i238, 15
  %add.i = or i16 %shl.i239, 32767
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %add.i, ptr %32, align 2, !alias.scope !105
  %36 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %agg.result, align 4, !alias.scope !105
  br label %cleanup

if.end39:                                         ; preds = %bExpBigger
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp40 = icmp eq i32 %and.i, 0
  %inc.neg = sext i1 %cmp40 to i32
  %spec.select.neg = sub nsw i32 %inc.neg, %sub
  %37 = trunc i32 %spec.select.neg to i8
  %38 = sub i8 0, %37
  %conv.i = and i8 %38, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %inc.neg)
  %cmp.i = icmp eq i32 %sub, %inc.neg
  br i1 %cmp.i, label %if.end39.bBigger_crit_edge, label %if.else.i

if.end39.bBigger_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %bBigger

if.else.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %spec.select.neg)
  %cmp2.i = icmp ult i32 %spec.select.neg, 64
  br i1 %cmp2.i, label %if.then4.i, label %if.else16.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom.i = zext i8 %conv.i to i64
  %shl.i241 = shl i64 %a.sroa.1.4.insert.insert.i, %sh_prom.i
  %sh_prom6.i = zext i32 %spec.select.neg to i64
  %shr15.i = lshr i64 %a.sroa.1.4.insert.insert.i, %sh_prom6.i
  br label %bBigger

if.else16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %spec.select.neg)
  %cmp17.i = icmp eq i32 %spec.select.neg, 64
  br i1 %cmp17.i, label %if.else16.i.bBigger_crit_edge, label %if.else24.i

if.else16.i.bBigger_crit_edge:                    ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bBigger

if.else24.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %spec.select.neg)
  %cmp25.i = icmp ult i32 %spec.select.neg, 128
  br i1 %cmp25.i, label %if.then27.i, label %if.else39.i

if.then27.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #10
  %and28.i = and i32 %spec.select.neg, 63
  %sh_prom29.i = zext i32 %and28.i to i64
  %shr30.i = lshr i64 %a.sroa.1.4.insert.insert.i, %sh_prom29.i
  %sh_prom32.i = zext i8 %conv.i to i64
  %shl33.i = shl i64 %a.sroa.1.4.insert.insert.i, %sh_prom32.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl33.i)
  %cmp35.i = icmp ne i64 %shl33.i, 0
  %39 = zext i1 %cmp35.i to i64
  %or38.i = or i64 %shr30.i, %39
  br label %bBigger

if.else39.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a.sroa.1.4.insert.insert.i)
  %cmp41.i = icmp ne i64 %a.sroa.1.4.insert.insert.i, 0
  %40 = zext i1 %cmp41.i to i64
  br label %bBigger

bBigger:                                          ; preds = %if.else39.i, %if.then27.i, %if.else16.i.bBigger_crit_edge, %if.then4.i, %if.end39.bBigger_crit_edge, %if.end21.bBigger_crit_edge
  %aSig.0 = phi i64 [ %a.sroa.1.4.insert.insert.i, %if.end21.bBigger_crit_edge ], [ %shr15.i, %if.then4.i ], [ %a.sroa.1.4.insert.insert.i, %if.end39.bBigger_crit_edge ], [ 0, %if.else16.i.bBigger_crit_edge ], [ 0, %if.then27.i ], [ 0, %if.else39.i ]
  %zSig1.0 = phi i64 [ 0, %if.end21.bBigger_crit_edge ], [ %shl.i241, %if.then4.i ], [ 0, %if.end39.bBigger_crit_edge ], [ %a.sroa.1.4.insert.insert.i, %if.else16.i.bBigger_crit_edge ], [ %or38.i, %if.then27.i ], [ %40, %if.else39.i ]
  %bExp.1 = phi i32 [ %bExp.0, %if.end21.bBigger_crit_edge ], [ %and.i185, %if.then4.i ], [ %and.i185, %if.end39.bBigger_crit_edge ], [ %and.i185, %if.else16.i.bBigger_crit_edge ], [ %and.i185, %if.then27.i ], [ %and.i185, %if.else39.i ]
  %sub1.i = sub i64 %a.sroa.1.4.insert.insert.i183, %aSig.0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %zSig1.0)
  %cmp.i242 = icmp ne i64 %zSig1.0, 0
  %.neg.i = sext i1 %cmp.i242 to i64
  %sub3.i = add i64 %sub1.i, %.neg.i
  %41 = xor i8 %zSign, 1
  br label %normalizeRoundAndPack

aExpBigger:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i)
  %cmp48 = icmp eq i32 %and.i, 32767
  br i1 %cmp48, label %if.then50, label %if.end55

if.then50:                                        ; preds = %aExpBigger
  %shl51.mask = and i64 %a.sroa.1.4.insert.insert.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl51.mask)
  %tobool52.not = icmp eq i64 %shl51.mask, 0
  br i1 %tobool52.not, label %if.end54, label %floatx80_is_nan.exit.i263

floatx80_is_nan.exit.i263:                        ; preds = %if.then50
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %42 = shl i64 %a.sroa.1.4.insert.ext.i, 33
  %43 = shl nuw nsw i64 %a.sroa.3.4.insert.ext.i, 1
  %shl.i.i259 = or i64 %42, %43
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i.i259)
  %tobool.i.i260.not = icmp eq i64 %shl.i.i259, 0
  %shl.mask.i.i261 = and i64 %a.sroa.1.4.insert.insert.i, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i.i261)
  %tobool.not.i.i262 = icmp ne i64 %shl.mask.i.i261, 0
  %and.i58.i264 = and i64 %a.sroa.1.4.insert.insert.i, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i, i64 %and.i58.i264)
  %cmp4.i.i265 = icmp eq i64 %a.sroa.1.4.insert.insert.i, %and.i58.i264
  %44 = and i1 %tobool.not.i.i262, %cmp4.i.i265
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i185)
  %cmp.i62.i269 = icmp eq i32 %and.i185, 32767
  br i1 %cmp.i62.i269, label %floatx80_is_nan.exit69.i275, label %floatx80_is_nan.exit.i263.floatx80_is_signaling_nan.exit84.i281_crit_edge

floatx80_is_nan.exit.i263.floatx80_is_signaling_nan.exit84.i281_crit_edge: ; preds = %floatx80_is_nan.exit.i263
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80_is_signaling_nan.exit84.i281

floatx80_is_nan.exit69.i275:                      ; preds = %floatx80_is_nan.exit.i263
  %45 = shl i64 %a.sroa.1.4.insert.ext.i181, 33
  %46 = shl nuw nsw i64 %a.sroa.3.4.insert.ext.i180, 1
  %shl.i65.i271 = or i64 %45, %46
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i65.i271)
  %tobool.i66.i272 = icmp ne i64 %shl.i65.i271, 0
  %shl.mask.i77.i273 = and i64 %a.sroa.1.4.insert.insert.i183, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i77.i273)
  %tobool.not.i78.i274 = icmp eq i64 %shl.mask.i77.i273, 0
  br i1 %tobool.not.i78.i274, label %floatx80_is_nan.exit69.i275.floatx80_is_signaling_nan.exit84.i281_crit_edge, label %land.rhs.i82.i278

floatx80_is_nan.exit69.i275.floatx80_is_signaling_nan.exit84.i281_crit_edge: ; preds = %floatx80_is_nan.exit69.i275
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80_is_signaling_nan.exit84.i281

land.rhs.i82.i278:                                ; preds = %floatx80_is_nan.exit69.i275
  call void @__sanitizer_cov_trace_pc() #10
  %and.i80.i276 = and i64 %a.sroa.1.4.insert.insert.i183, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i183, i64 %and.i80.i276)
  %cmp4.i81.i277 = icmp eq i64 %a.sroa.1.4.insert.insert.i183, %and.i80.i276
  br label %floatx80_is_signaling_nan.exit84.i281

floatx80_is_signaling_nan.exit84.i281:            ; preds = %land.rhs.i82.i278, %floatx80_is_nan.exit69.i275.floatx80_is_signaling_nan.exit84.i281_crit_edge, %floatx80_is_nan.exit.i263.floatx80_is_signaling_nan.exit84.i281_crit_edge
  %conv2.i6896.shrunk.i279 = phi i1 [ %tobool.i66.i272, %floatx80_is_nan.exit69.i275.floatx80_is_signaling_nan.exit84.i281_crit_edge ], [ %tobool.i66.i272, %land.rhs.i82.i278 ], [ false, %floatx80_is_nan.exit.i263.floatx80_is_signaling_nan.exit84.i281_crit_edge ]
  %47 = phi i1 [ false, %floatx80_is_nan.exit69.i275.floatx80_is_signaling_nan.exit84.i281_crit_edge ], [ %cmp4.i81.i277, %land.rhs.i82.i278 ], [ false, %floatx80_is_nan.exit.i263.floatx80_is_signaling_nan.exit84.i281_crit_edge ]
  %or75397.i280 = or i1 %44, %47
  br i1 %or75397.i280, label %if.then.i282, label %floatx80_is_signaling_nan.exit84.i281.propagateFloatx80NaN.exit291_crit_edge

floatx80_is_signaling_nan.exit84.i281.propagateFloatx80NaN.exit291_crit_edge: ; preds = %floatx80_is_signaling_nan.exit84.i281
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloatx80NaN.exit291

if.then.i282:                                     ; preds = %floatx80_is_signaling_nan.exit84.i281
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8, !noalias !108
  br label %propagateFloatx80NaN.exit291

propagateFloatx80NaN.exit291:                     ; preds = %if.then.i282, %floatx80_is_signaling_nan.exit84.i281.propagateFloatx80NaN.exit291_crit_edge
  %and5498.i285 = and i1 %44, %conv2.i6896.shrunk.i279
  %48 = select i1 %tobool.i.i260.not, i1 true, i1 %and5498.i285
  %b.coerce.fca.0.extract.sink.i288 = select i1 %48, i32 %a.coerce.fca.0.extract.i184, i32 %a.coerce.fca.0.extract
  %or5.sink.i289.v = select i1 %48, i64 %a.sroa.1.4.insert.insert.i183, i64 %a.sroa.1.4.insert.insert.i
  %or5.sink.i289 = or i64 %or5.sink.i289.v, -4611686018427387904
  %49 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %b.coerce.fca.0.extract.sink.i288, ptr %agg.result, align 4, !alias.scope !108
  %b.sroa.5.0.agg.result.sroa_idx.i290 = getelementptr inbounds i8, ptr %agg.result, i32 4
  %50 = ptrtoint ptr %b.sroa.5.0.agg.result.sroa_idx.i290 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 %or5.sink.i289, ptr %b.sroa.5.0.agg.result.sroa_idx.i290, align 4, !alias.scope !108
  br label %cleanup

if.end54:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %a.coerce.fca.0.extract, ptr %agg.result, align 4
  %a.sroa.7.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 4
  %52 = ptrtoint ptr %a.sroa.7.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %a.coerce.fca.1.extract, ptr %a.sroa.7.0.agg.result.sroa_idx, align 4
  %a.sroa.13.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 8
  %53 = ptrtoint ptr %a.sroa.13.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %a.coerce.fca.2.extract, ptr %a.sroa.13.0.agg.result.sroa_idx, align 4
  br label %cleanup

if.end55:                                         ; preds = %aExpBigger
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i185)
  %cmp56 = icmp eq i32 %and.i185, 0
  %dec = sext i1 %cmp56 to i32
  %spec.select177 = add nsw i32 %sub, %dec
  %54 = trunc i32 %spec.select177 to i8
  %55 = sub i8 0, %54
  %conv.i292 = and i8 %55, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select177)
  %cmp.i293 = icmp eq i32 %spec.select177, 0
  br i1 %cmp.i293, label %if.end55.aBigger_crit_edge, label %if.else.i295

if.end55.aBigger_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %aBigger

if.else.i295:                                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %spec.select177)
  %cmp2.i294 = icmp ult i32 %spec.select177, 64
  br i1 %cmp2.i294, label %if.then4.i300, label %if.else16.i302

if.then4.i300:                                    ; preds = %if.else.i295
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom.i296 = zext i8 %conv.i292 to i64
  %shl.i297 = shl i64 %a.sroa.1.4.insert.insert.i183, %sh_prom.i296
  %sh_prom6.i298 = zext i32 %spec.select177 to i64
  %shr15.i299 = lshr i64 %a.sroa.1.4.insert.insert.i183, %sh_prom6.i298
  br label %aBigger

if.else16.i302:                                   ; preds = %if.else.i295
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %spec.select177)
  %cmp17.i301 = icmp eq i32 %spec.select177, 64
  br i1 %cmp17.i301, label %if.else16.i302.aBigger_crit_edge, label %if.else24.i304

if.else16.i302.aBigger_crit_edge:                 ; preds = %if.else16.i302
  call void @__sanitizer_cov_trace_pc() #10
  br label %aBigger

if.else24.i304:                                   ; preds = %if.else16.i302
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %spec.select177)
  %cmp25.i303 = icmp ult i32 %spec.select177, 128
  br i1 %cmp25.i303, label %if.then27.i312, label %if.else39.i314

if.then27.i312:                                   ; preds = %if.else24.i304
  call void @__sanitizer_cov_trace_pc() #10
  %and28.i305 = and i32 %spec.select177, 63
  %sh_prom29.i306 = zext i32 %and28.i305 to i64
  %shr30.i307 = lshr i64 %a.sroa.1.4.insert.insert.i183, %sh_prom29.i306
  %sh_prom32.i308 = zext i8 %conv.i292 to i64
  %shl33.i309 = shl i64 %a.sroa.1.4.insert.insert.i183, %sh_prom32.i308
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl33.i309)
  %cmp35.i310 = icmp ne i64 %shl33.i309, 0
  %56 = zext i1 %cmp35.i310 to i64
  %or38.i311 = or i64 %shr30.i307, %56
  br label %aBigger

if.else39.i314:                                   ; preds = %if.else24.i304
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a.sroa.1.4.insert.insert.i183)
  %cmp41.i313 = icmp ne i64 %a.sroa.1.4.insert.insert.i183, 0
  %57 = zext i1 %cmp41.i313 to i64
  br label %aBigger

aBigger:                                          ; preds = %if.else39.i314, %if.then27.i312, %if.else16.i302.aBigger_crit_edge, %if.then4.i300, %if.end55.aBigger_crit_edge, %if.end17.aBigger_crit_edge
  %bSig.0 = phi i64 [ %a.sroa.1.4.insert.insert.i183, %if.end17.aBigger_crit_edge ], [ %shr15.i299, %if.then4.i300 ], [ %a.sroa.1.4.insert.insert.i183, %if.end55.aBigger_crit_edge ], [ 0, %if.else16.i302.aBigger_crit_edge ], [ 0, %if.then27.i312 ], [ 0, %if.else39.i314 ]
  %zSig1.1 = phi i64 [ 0, %if.end17.aBigger_crit_edge ], [ %shl.i297, %if.then4.i300 ], [ 0, %if.end55.aBigger_crit_edge ], [ %a.sroa.1.4.insert.insert.i183, %if.else16.i302.aBigger_crit_edge ], [ %or38.i311, %if.then27.i312 ], [ %57, %if.else39.i314 ]
  %aExp.1 = phi i32 [ %aExp.0, %if.end17.aBigger_crit_edge ], [ %and.i, %if.then4.i300 ], [ %and.i, %if.end55.aBigger_crit_edge ], [ %and.i, %if.else16.i302.aBigger_crit_edge ], [ %and.i, %if.then27.i312 ], [ %and.i, %if.else39.i314 ]
  %sub1.i319 = sub i64 %a.sroa.1.4.insert.insert.i, %bSig.0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %zSig1.1)
  %cmp.i320 = icmp ne i64 %zSig1.1, 0
  %.neg.i321 = sext i1 %cmp.i320 to i64
  %sub3.i322 = add i64 %sub1.i319, %.neg.i321
  br label %normalizeRoundAndPack

normalizeRoundAndPack:                            ; preds = %aBigger, %bBigger
  %zSig0.0 = phi i64 [ %sub3.i322, %aBigger ], [ %sub3.i, %bBigger ]
  %zSig1.1.pn = phi i64 [ %zSig1.1, %aBigger ], [ %zSig1.0, %bBigger ]
  %zSign.addr.0 = phi i8 [ %zSign, %aBigger ], [ %41, %bBigger ]
  %zExp.0 = phi i32 [ %aExp.1, %aBigger ], [ %bExp.1, %bBigger ]
  %zSig1.2 = sub i64 0, %zSig1.1.pn
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %zSig0.0)
  %cmp.i323 = icmp eq i64 %zSig0.0, 0
  %zSig0.addr.0.i = select i1 %cmp.i323, i64 %zSig1.2, i64 %zSig0.0
  %zSig1.addr.0.i = select i1 %cmp.i323, i64 0, i64 %zSig1.2
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %zSig0.addr.0.i)
  %cmp.i.i324 = icmp ult i64 %zSig0.addr.0.i, 4294967296
  %shr.i.i = lshr i64 %zSig0.addr.0.i, 32
  %a.addr.0.off0.v.i.i = select i1 %cmp.i.i324, i64 %zSig0.addr.0.i, i64 %shr.i.i
  %a.addr.0.off0.i.i = trunc i64 %a.addr.0.off0.v.i.i to i32
  %shiftCount.0.i.i = select i1 %cmp.i.i324, i8 32, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %a.addr.0.off0.i.i)
  %cmp.i.i.i = icmp ult i32 %a.addr.0.off0.i.i, 65536
  %shl.i.i.i = shl i32 %a.addr.0.off0.i.i, 16
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %shl.i.i.i, i32 %a.addr.0.off0.i.i
  %spec.select21.i.i.i = select i1 %cmp.i.i.i, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i.i)
  %cmp2.i.i.i = icmp ult i32 %spec.select.i.i.i, 16777216
  %58 = or i8 %spec.select21.i.i.i, 8
  %shl8.i.i.i = shl i32 %spec.select.i.i.i, 8
  %a.addr.1.i.i.i = select i1 %cmp2.i.i.i, i32 %shl8.i.i.i, i32 %spec.select.i.i.i
  %shiftCount.1.i.i.i = select i1 %cmp2.i.i.i, i8 %58, i8 %spec.select21.i.i.i
  %shr.i.i.i = lshr i32 %a.addr.1.i.i.i, 24
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i.i
  %59 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i.i.i, align 1, !noalias !111
  %add12.i.i.i = or i8 %shiftCount.1.i.i.i, %shiftCount.0.i.i
  %add5.i.i = add i8 %add12.i.i.i, %60
  %conv.i325 = sext i8 %add5.i.i to i32
  %sh_prom.i.i = zext i32 %conv.i325 to i64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add5.i.i)
  %cmp.i6.i = icmp eq i8 %add5.i.i, 0
  br i1 %cmp.i6.i, label %normalizeRoundAndPack.normalizeRoundAndPackFloatx80.exit_crit_edge, label %cond.false.i.i

normalizeRoundAndPack.normalizeRoundAndPackFloatx80.exit_crit_edge: ; preds = %normalizeRoundAndPack
  call void @__sanitizer_cov_trace_pc() #10
  br label %normalizeRoundAndPackFloatx80.exit

cond.false.i.i:                                   ; preds = %normalizeRoundAndPack
  call void @__sanitizer_cov_trace_pc() #10
  %shl2.i.i = shl i64 %zSig0.addr.0.i, %sh_prom.i.i
  %sub.i.i = sub nsw i32 0, %conv.i325
  %and.i.i326 = and i32 %sub.i.i, 63
  %sh_prom3.i.i = zext i32 %and.i.i326 to i64
  %shr.i7.i = lshr i64 %zSig1.addr.0.i, %sh_prom3.i.i
  %or.i.i = or i64 %shr.i7.i, %shl2.i.i
  br label %normalizeRoundAndPackFloatx80.exit

normalizeRoundAndPackFloatx80.exit:               ; preds = %cond.false.i.i, %normalizeRoundAndPack.normalizeRoundAndPackFloatx80.exit_crit_edge
  %cond.i.i = phi i64 [ %or.i.i, %cond.false.i.i ], [ %zSig0.addr.0.i, %normalizeRoundAndPack.normalizeRoundAndPackFloatx80.exit_crit_edge ]
  %shl.i.i327 = shl i64 %zSig1.addr.0.i, %sh_prom.i.i
  %sub.i328 = add nsw i32 %zExp.0, -64
  %zExp.addr.0.i = select i1 %cmp.i323, i32 %sub.i328, i32 %zExp.0
  %sub2.i = sub nsw i32 %zExp.addr.0.i, %conv.i325
  tail call fastcc void @roundAndPackFloatx80(ptr sret(%struct.floatx80) align 4 %agg.result, ptr noundef %roundData, i8 noundef zeroext %zSign.addr.0, i32 noundef %sub2.i, i64 noundef %cond.i.i, i64 noundef %shl.i.i327) #8
  br label %cleanup

cleanup:                                          ; preds = %normalizeRoundAndPackFloatx80.exit, %if.end54, %propagateFloatx80NaN.exit291, %if.end36, %propagateFloatx80NaN.exit237, %if.end25, %if.end10, %propagateFloatx80NaN.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @floatx80_sub(ptr noalias nocapture writeonly sret(%struct.floatx80) align 4 %agg.result, ptr nocapture noundef %roundData, [3 x i32] %a.coerce, [3 x i32] %b.coerce) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract.i = extractvalue [3 x i32] %a.coerce, 0
  %conv.i = lshr i32 %a.coerce.fca.0.extract.i, 15
  %0 = trunc i32 %conv.i to i8
  %conv1.i = and i8 %0, 1
  %a.coerce.fca.0.extract.i59 = extractvalue [3 x i32] %b.coerce, 0
  %conv.i60 = lshr i32 %a.coerce.fca.0.extract.i59, 15
  %1 = trunc i32 %conv.i60 to i8
  %conv1.i61 = and i8 %1, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %conv1.i, i8 %conv1.i61)
  %cmp = icmp eq i8 %conv1.i, %conv1.i61
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @subFloatx80Sigs(ptr sret(%struct.floatx80) align 4 %agg.result, ptr noundef %roundData, [3 x i32] %a.coerce, [3 x i32] %b.coerce, i8 noundef zeroext %conv1.i)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @addFloatx80Sigs(ptr sret(%struct.floatx80) align 4 %agg.result, ptr noundef %roundData, [3 x i32] %a.coerce, [3 x i32] %b.coerce, i8 noundef zeroext %conv1.i)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @floatx80_mul(ptr noalias nocapture writeonly sret(%struct.floatx80) align 4 %agg.result, ptr nocapture noundef %roundData, [3 x i32] %a.coerce, [3 x i32] %b.coerce) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.1.extract.i = extractvalue [3 x i32] %a.coerce, 1
  %a.coerce.fca.2.extract.i = extractvalue [3 x i32] %a.coerce, 2
  %a.sroa.3.4.insert.ext.i = zext i32 %a.coerce.fca.2.extract.i to i64
  %a.sroa.1.4.insert.ext.i = zext i32 %a.coerce.fca.1.extract.i to i64
  %a.sroa.1.4.insert.shift.i = shl nuw i64 %a.sroa.1.4.insert.ext.i, 32
  %a.sroa.1.4.insert.insert.i = or i64 %a.sroa.1.4.insert.shift.i, %a.sroa.3.4.insert.ext.i
  %a.coerce.fca.0.extract.i = extractvalue [3 x i32] %a.coerce, 0
  %and.i = and i32 %a.coerce.fca.0.extract.i, 32767
  %a.coerce.fca.1.extract.i177 = extractvalue [3 x i32] %b.coerce, 1
  %a.coerce.fca.2.extract.i178 = extractvalue [3 x i32] %b.coerce, 2
  %a.sroa.3.4.insert.ext.i179 = zext i32 %a.coerce.fca.2.extract.i178 to i64
  %a.sroa.1.4.insert.ext.i180 = zext i32 %a.coerce.fca.1.extract.i177 to i64
  %a.sroa.1.4.insert.shift.i181 = shl nuw i64 %a.sroa.1.4.insert.ext.i180, 32
  %a.sroa.1.4.insert.insert.i182 = or i64 %a.sroa.1.4.insert.shift.i181, %a.sroa.3.4.insert.ext.i179
  %a.coerce.fca.0.extract.i183 = extractvalue [3 x i32] %b.coerce, 0
  %and.i184 = and i32 %a.coerce.fca.0.extract.i183, 32767
  %conv.i298 = xor i32 %a.coerce.fca.0.extract.i183, %a.coerce.fca.0.extract.i
  %conv1.i296297 = lshr i32 %conv.i298, 15
  %conv1.i296 = trunc i32 %conv1.i296297 to i8
  %xor175 = and i8 %conv1.i296, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 32767
  br i1 %cmp, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  %shl.mask = and i64 %a.sroa.1.4.insert.insert.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %tobool.not = icmp eq i64 %shl.mask, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then.floatx80_is_nan.exit.i_crit_edge

if.then.floatx80_is_nan.exit.i_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80_is_nan.exit.i

lor.lhs.false:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i184)
  %cmp9 = icmp ne i32 %and.i184, 32767
  %shl11.mask = and i64 %a.sroa.1.4.insert.insert.i182, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl11.mask)
  %tobool12.not = icmp eq i64 %shl11.mask, 0
  %or.cond = select i1 %cmp9, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %if.end, label %lor.lhs.false.floatx80_is_nan.exit.i_crit_edge

lor.lhs.false.floatx80_is_nan.exit.i_crit_edge:   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80_is_nan.exit.i

floatx80_is_nan.exit.i:                           ; preds = %lor.lhs.false.floatx80_is_nan.exit.i_crit_edge, %if.then.floatx80_is_nan.exit.i_crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %0 = shl i64 %a.sroa.1.4.insert.ext.i, 33
  %1 = shl nuw nsw i64 %a.sroa.3.4.insert.ext.i, 1
  %shl.i.i = or i64 %0, %1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i.i)
  %tobool.i.i.not = icmp eq i64 %shl.i.i, 0
  %shl.mask.i.i = and i64 %a.sroa.1.4.insert.insert.i, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i.i)
  %tobool.not.i.i = icmp ne i64 %shl.mask.i.i, 0
  %and.i58.i = and i64 %a.sroa.1.4.insert.insert.i, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i, i64 %and.i58.i)
  %cmp4.i.i = icmp eq i64 %a.sroa.1.4.insert.insert.i, %and.i58.i
  %2 = and i1 %tobool.not.i.i, %cmp4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i184)
  %cmp.i62.i = icmp eq i32 %and.i184, 32767
  br i1 %cmp.i62.i, label %floatx80_is_nan.exit69.i, label %floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge

floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge: ; preds = %floatx80_is_nan.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80_is_signaling_nan.exit84.i

floatx80_is_nan.exit69.i:                         ; preds = %floatx80_is_nan.exit.i
  %3 = shl i64 %a.sroa.1.4.insert.ext.i180, 33
  %4 = shl nuw nsw i64 %a.sroa.3.4.insert.ext.i179, 1
  %shl.i65.i = or i64 %3, %4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i65.i)
  %tobool.i66.i = icmp ne i64 %shl.i65.i, 0
  %shl.mask.i77.i = and i64 %a.sroa.1.4.insert.insert.i182, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i77.i)
  %tobool.not.i78.i = icmp eq i64 %shl.mask.i77.i, 0
  br i1 %tobool.not.i78.i, label %floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge, label %land.rhs.i82.i

floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge: ; preds = %floatx80_is_nan.exit69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80_is_signaling_nan.exit84.i

land.rhs.i82.i:                                   ; preds = %floatx80_is_nan.exit69.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.i80.i = and i64 %a.sroa.1.4.insert.insert.i182, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i182, i64 %and.i80.i)
  %cmp4.i81.i = icmp eq i64 %a.sroa.1.4.insert.insert.i182, %and.i80.i
  br label %floatx80_is_signaling_nan.exit84.i

floatx80_is_signaling_nan.exit84.i:               ; preds = %land.rhs.i82.i, %floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge, %floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge
  %conv2.i6896.shrunk.i = phi i1 [ %tobool.i66.i, %floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge ], [ %tobool.i66.i, %land.rhs.i82.i ], [ false, %floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge ]
  %5 = phi i1 [ false, %floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge ], [ %cmp4.i81.i, %land.rhs.i82.i ], [ false, %floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge ]
  %or75397.i = or i1 %2, %5
  br i1 %or75397.i, label %if.then.i, label %floatx80_is_signaling_nan.exit84.i.propagateFloatx80NaN.exit_crit_edge

floatx80_is_signaling_nan.exit84.i.propagateFloatx80NaN.exit_crit_edge: ; preds = %floatx80_is_signaling_nan.exit84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloatx80NaN.exit

if.then.i:                                        ; preds = %floatx80_is_signaling_nan.exit84.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8, !noalias !114
  br label %propagateFloatx80NaN.exit

propagateFloatx80NaN.exit:                        ; preds = %if.then.i, %floatx80_is_signaling_nan.exit84.i.propagateFloatx80NaN.exit_crit_edge
  %and5498.i = and i1 %2, %conv2.i6896.shrunk.i
  %6 = select i1 %tobool.i.i.not, i1 true, i1 %and5498.i
  %b.coerce.fca.0.extract.sink.i = select i1 %6, i32 %a.coerce.fca.0.extract.i183, i32 %a.coerce.fca.0.extract.i
  %or5.sink.i.v = select i1 %6, i64 %a.sroa.1.4.insert.insert.i182, i64 %a.sroa.1.4.insert.insert.i
  %or5.sink.i = or i64 %or5.sink.i.v, -4611686018427387904
  %7 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %b.coerce.fca.0.extract.sink.i, ptr %agg.result, align 4, !alias.scope !114
  %b.sroa.5.0.agg.result.sroa_idx.i = getelementptr inbounds i8, ptr %agg.result, i32 4
  %8 = ptrtoint ptr %b.sroa.5.0.agg.result.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %or5.sink.i, ptr %b.sroa.5.0.agg.result.sroa_idx.i, align 4, !alias.scope !114
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv14294 = zext i32 %and.i184 to i64
  %or = or i64 %a.sroa.1.4.insert.insert.i182, %conv14294
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or)
  %cmp15 = icmp eq i64 %or, 0
  br i1 %cmp15, label %if.end.invalid_crit_edge, label %if.end18

if.end.invalid_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %invalid

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %10 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 -9223372036854775808, ptr %10, align 4, !alias.scope !117
  %12 = trunc i32 %conv1.i296297 to i16
  %shl.i = shl i16 %12, 15
  %add.i = or i16 %shl.i, 32767
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %add.i, ptr %9, align 2, !alias.scope !117
  %14 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %agg.result, align 4, !alias.scope !117
  br label %cleanup

if.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i184)
  %cmp20 = icmp eq i32 %and.i184, 32767
  br i1 %cmp20, label %if.then22, label %if.end36

if.then22:                                        ; preds = %if.end19
  %shl23.mask = and i64 %a.sroa.1.4.insert.insert.i182, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl23.mask)
  %tobool24.not = icmp eq i64 %shl23.mask, 0
  br i1 %tobool24.not, label %if.end26, label %floatx80_is_nan.exit69.i224

floatx80_is_nan.exit69.i224:                      ; preds = %if.then22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %shl.mask.i77.i222 = and i64 %a.sroa.1.4.insert.insert.i182, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i77.i222)
  %tobool.not.i78.i223 = icmp ne i64 %shl.mask.i77.i222, 0
  %and.i80.i225 = and i64 %a.sroa.1.4.insert.insert.i182, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i182, i64 %and.i80.i225)
  %cmp4.i81.i226 = icmp eq i64 %a.sroa.1.4.insert.insert.i182, %and.i80.i225
  %15 = and i1 %tobool.not.i78.i223, %cmp4.i81.i226
  br i1 %15, label %if.then.i231, label %floatx80_is_nan.exit69.i224.propagateFloatx80NaN.exit240_crit_edge

floatx80_is_nan.exit69.i224.propagateFloatx80NaN.exit240_crit_edge: ; preds = %floatx80_is_nan.exit69.i224
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloatx80NaN.exit240

if.then.i231:                                     ; preds = %floatx80_is_nan.exit69.i224
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8, !noalias !120
  br label %propagateFloatx80NaN.exit240

propagateFloatx80NaN.exit240:                     ; preds = %if.then.i231, %floatx80_is_nan.exit69.i224.propagateFloatx80NaN.exit240_crit_edge
  %or5.i232 = or i64 %a.sroa.1.4.insert.insert.i182, -4611686018427387904
  %16 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %a.coerce.fca.0.extract.i183, ptr %agg.result, align 4, !alias.scope !120
  %b.sroa.5.0.agg.result.sroa_idx.i239 = getelementptr inbounds i8, ptr %agg.result, i32 4
  %17 = ptrtoint ptr %b.sroa.5.0.agg.result.sroa_idx.i239 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %or5.i232, ptr %b.sroa.5.0.agg.result.sroa_idx.i239, align 4, !alias.scope !120
  br label %cleanup

if.end26:                                         ; preds = %if.then22
  %conv27295 = zext i32 %and.i to i64
  %or28 = or i64 %a.sroa.1.4.insert.insert.i, %conv27295
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or28)
  %cmp29 = icmp eq i64 %or28, 0
  br i1 %cmp29, label %if.end26.invalid_crit_edge, label %if.end35

if.end26.invalid_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %invalid

invalid:                                          ; preds = %if.end26.invalid_crit_edge, %if.end.invalid_crit_edge
  %exception = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %18 = ptrtoint ptr %exception to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %exception, align 1
  %20 = or i8 %19, 1
  store i8 %20, ptr %exception, align 1
  %21 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %agg.result, align 4
  %z.sroa.5.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 2
  %22 = ptrtoint ptr %z.sroa.5.0.agg.result.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %z.sroa.5.0.agg.result.sroa_idx, align 2
  %z.sroa.7.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 4
  %23 = ptrtoint ptr %z.sroa.7.0.agg.result.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 -1, ptr %z.sroa.7.0.agg.result.sroa_idx, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %24 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %25 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 -9223372036854775808, ptr %25, align 4, !alias.scope !123
  %27 = trunc i32 %conv1.i296297 to i16
  %shl.i242 = shl i16 %27, 15
  %add.i243 = or i16 %shl.i242, 32767
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %add.i243, ptr %24, align 2, !alias.scope !123
  %29 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %agg.result, align 4, !alias.scope !123
  br label %cleanup

if.end36:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp37 = icmp eq i32 %and.i, 0
  br i1 %cmp37, label %if.then39, label %if.end36.if.end44_crit_edge

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a.sroa.1.4.insert.insert.i)
  %cmp40 = icmp eq i64 %a.sroa.1.4.insert.insert.i, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  %30 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %31 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 0, ptr %31, align 4, !alias.scope !126
  %33 = trunc i32 %conv1.i296297 to i16
  %shl.i246 = shl i16 %33, 15
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %shl.i246, ptr %30, align 2, !alias.scope !126
  %35 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %agg.result, align 4, !alias.scope !126
  br label %cleanup

if.end43:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %a.sroa.1.4.insert.insert.i)
  %cmp.i.i248 = icmp ult i64 %a.sroa.1.4.insert.insert.i, 4294967296
  %a.addr.0.off0.v.i.i = select i1 %cmp.i.i248, i32 %a.coerce.fca.2.extract.i, i32 %a.coerce.fca.1.extract.i
  %shiftCount.0.i.i = select i1 %cmp.i.i248, i8 32, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %a.addr.0.off0.v.i.i)
  %cmp.i.i.i = icmp ult i32 %a.addr.0.off0.v.i.i, 65536
  %shl.i.i.i = shl i32 %a.addr.0.off0.v.i.i, 16
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %shl.i.i.i, i32 %a.addr.0.off0.v.i.i
  %spec.select21.i.i.i = select i1 %cmp.i.i.i, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i.i)
  %cmp2.i.i.i = icmp ult i32 %spec.select.i.i.i, 16777216
  %36 = or i8 %spec.select21.i.i.i, 8
  %shl8.i.i.i = shl i32 %spec.select.i.i.i, 8
  %a.addr.1.i.i.i = select i1 %cmp2.i.i.i, i32 %shl8.i.i.i, i32 %spec.select.i.i.i
  %shiftCount.1.i.i.i = select i1 %cmp2.i.i.i, i8 %36, i8 %spec.select21.i.i.i
  %shr.i.i.i = lshr i32 %a.addr.1.i.i.i, 24
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i.i
  %37 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i.i.i, align 1
  %add12.i.i.i = or i8 %shiftCount.1.i.i.i, %shiftCount.0.i.i
  %add5.i.i = add i8 %add12.i.i.i, %38
  %conv.i249 = sext i8 %add5.i.i to i32
  %sh_prom.i = zext i32 %conv.i249 to i64
  %shl.i250 = shl i64 %a.sroa.1.4.insert.insert.i, %sh_prom.i
  %sub.i = sub nsw i32 1, %conv.i249
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end36.if.end44_crit_edge
  %aExp.0 = phi i32 [ %sub.i, %if.end43 ], [ %and.i, %if.end36.if.end44_crit_edge ]
  %aSig.0 = phi i64 [ %shl.i250, %if.end43 ], [ %a.sroa.1.4.insert.insert.i, %if.end36.if.end44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i184)
  %cmp45 = icmp eq i32 %and.i184, 0
  br i1 %cmp45, label %if.then47, label %if.end44.if.end52_crit_edge

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a.sroa.1.4.insert.insert.i182)
  %cmp48 = icmp eq i64 %a.sroa.1.4.insert.insert.i182, 0
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  %39 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %40 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 0, ptr %40, align 4, !alias.scope !129
  %42 = trunc i32 %conv1.i296297 to i16
  %shl.i252 = shl i16 %42, 15
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %shl.i252, ptr %39, align 2, !alias.scope !129
  %44 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %agg.result, align 4, !alias.scope !129
  br label %cleanup

if.end51:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %a.sroa.1.4.insert.insert.i182)
  %cmp.i.i254 = icmp ult i64 %a.sroa.1.4.insert.insert.i182, 4294967296
  %a.addr.0.off0.v.i.i256 = select i1 %cmp.i.i254, i32 %a.coerce.fca.2.extract.i178, i32 %a.coerce.fca.1.extract.i177
  %shiftCount.0.i.i258 = select i1 %cmp.i.i254, i8 32, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %a.addr.0.off0.v.i.i256)
  %cmp.i.i.i259 = icmp ult i32 %a.addr.0.off0.v.i.i256, 65536
  %shl.i.i.i260 = shl i32 %a.addr.0.off0.v.i.i256, 16
  %spec.select.i.i.i261 = select i1 %cmp.i.i.i259, i32 %shl.i.i.i260, i32 %a.addr.0.off0.v.i.i256
  %spec.select21.i.i.i262 = select i1 %cmp.i.i.i259, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i.i261)
  %cmp2.i.i.i263 = icmp ult i32 %spec.select.i.i.i261, 16777216
  %45 = or i8 %spec.select21.i.i.i262, 8
  %shl8.i.i.i264 = shl i32 %spec.select.i.i.i261, 8
  %a.addr.1.i.i.i265 = select i1 %cmp2.i.i.i263, i32 %shl8.i.i.i264, i32 %spec.select.i.i.i261
  %shiftCount.1.i.i.i266 = select i1 %cmp2.i.i.i263, i8 %45, i8 %spec.select21.i.i.i262
  %shr.i.i.i267 = lshr i32 %a.addr.1.i.i.i265, 24
  %arrayidx.i.i.i268 = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i.i267
  %46 = ptrtoint ptr %arrayidx.i.i.i268 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i.i.i268, align 1
  %add12.i.i.i269 = or i8 %shiftCount.1.i.i.i266, %shiftCount.0.i.i258
  %add5.i.i270 = add i8 %add12.i.i.i269, %47
  %conv.i271 = sext i8 %add5.i.i270 to i32
  %sh_prom.i272 = zext i32 %conv.i271 to i64
  %shl.i273 = shl i64 %a.sroa.1.4.insert.insert.i182, %sh_prom.i272
  %sub.i274 = sub nsw i32 1, %conv.i271
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end44.if.end52_crit_edge
  %bExp.0 = phi i32 [ %sub.i274, %if.end51 ], [ %and.i184, %if.end44.if.end52_crit_edge ]
  %bSig.0 = phi i64 [ %shl.i273, %if.end51 ], [ %a.sroa.1.4.insert.insert.i182, %if.end44.if.end52_crit_edge ]
  %add = add nsw i32 %bExp.0, %aExp.0
  %sub = add nsw i32 %add, -16382
  %shr.i = lshr i64 %aSig.0, 32
  %shr3.i = lshr i64 %bSig.0, 32
  %conv5.i = and i64 %aSig.0, 4294967295
  %conv6.i = and i64 %bSig.0, 4294967295
  %mul.i = mul nuw i64 %conv6.i, %conv5.i
  %mul9.i = mul nuw i64 %shr3.i, %conv5.i
  %mul12.i = mul nuw i64 %conv6.i, %shr.i
  %mul15.i = mul nuw i64 %shr3.i, %shr.i
  %add.i275 = add i64 %mul9.i, %mul12.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i275, i64 %mul12.i)
  %cmp.i = icmp ult i64 %add.i275, %mul12.i
  %shl.i276 = select i1 %cmp.i, i64 4294967296, i64 0
  %shr18.i = lshr i64 %add.i275, 32
  %shl21.i = shl i64 %add.i275, 32
  %add22.i = add i64 %shl21.i, %mul.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add22.i, i64 %shl21.i)
  %cmp23.i = icmp ult i64 %add22.i, %shl21.i
  %48 = zext i1 %cmp23.i to i64
  %add19.i = add nuw i64 %shr18.i, %mul15.i
  %add20.i = add i64 %add19.i, %shl.i276
  %add26.i = add i64 %add20.i, %48
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add26.i)
  %cmp53 = icmp sgt i64 %add26.i, 0
  br i1 %cmp53, label %if.then55, label %if.end52.if.end56_crit_edge

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i277 = shl i64 %add22.i, 1
  %or.i279 = tail call i64 @llvm.fshl.i64(i64 %add26.i, i64 %add22.i, i64 1)
  %dec = add nsw i32 %add, -16383
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end52.if.end56_crit_edge
  %zSig0.0 = phi i64 [ %or.i279, %if.then55 ], [ %add26.i, %if.end52.if.end56_crit_edge ]
  %zSig1.0 = phi i64 [ %shl.i277, %if.then55 ], [ %add22.i, %if.end52.if.end56_crit_edge ]
  %zExp.0 = phi i32 [ %dec, %if.then55 ], [ %sub, %if.end52.if.end56_crit_edge ]
  tail call fastcc void @roundAndPackFloatx80(ptr sret(%struct.floatx80) align 4 %agg.result, ptr noundef %roundData, i8 noundef zeroext %xor175, i32 noundef %zExp.0, i64 noundef %zSig0.0, i64 noundef %zSig1.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then50, %if.then42, %if.end35, %invalid, %propagateFloatx80NaN.exit240, %if.end18, %propagateFloatx80NaN.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @roundAndPackFloatx80(ptr noalias nocapture writeonly sret(%struct.floatx80) align 4 %agg.result, ptr nocapture noundef %roundData, i8 noundef zeroext %zSign, i32 noundef %zExp, i64 noundef %zSig0, i64 noundef %zSig1) unnamed_addr #3 align 64 {
entry:
  %zSig0.addr = alloca i64, align 8
  %zSig1.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zSig0.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %zSig0, ptr %zSig0.addr, align 8
  %1 = ptrtoint ptr %zSig1.addr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %zSig1, ptr %zSig1.addr, align 8
  %2 = ptrtoint ptr %roundData to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %roundData, align 1
  %precision = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 1
  %4 = ptrtoint ptr %precision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %precision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %5, label %precision80 [
    i8 32, label %if.then13
    i8 64, label %entry.if.end16_crit_edge
  ]

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %entry.if.end16_crit_edge
  %roundIncrement.0 = phi i64 [ 549755813888, %if.then13 ], [ 1024, %entry.if.end16_crit_edge ]
  %roundMask.0 = phi i64 [ 1099511627775, %if.then13 ], [ 2047, %entry.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %zSig1)
  %cmp17 = icmp ne i64 %zSig1, 0
  %7 = zext i1 %cmp17 to i64
  %or = or i64 %7, %zSig0
  br i1 %cmp, label %if.end16.if.end41_crit_edge, label %if.then20

if.end16.if.end41_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp22 = icmp eq i8 %3, 1
  br i1 %cmp22, label %if.then20.if.end41_crit_edge, label %if.else25

if.then20.if.end41_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.else25:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %zSign)
  %tobool26.not = icmp eq i8 %zSign, 0
  br i1 %tobool26.not, label %if.else33, label %if.then27

if.then27:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp29 = icmp eq i8 %3, 3
  %spec.select = select i1 %cmp29, i64 0, i64 %roundMask.0
  br label %if.end41

if.else33:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp35 = icmp eq i8 %3, 2
  %spec.select397 = select i1 %cmp35, i64 0, i64 %roundMask.0
  br label %if.end41

if.end41:                                         ; preds = %if.else33, %if.then27, %if.then20.if.end41_crit_edge, %if.end16.if.end41_crit_edge
  %roundIncrement.1 = phi i64 [ %roundIncrement.0, %if.end16.if.end41_crit_edge ], [ 0, %if.then20.if.end41_crit_edge ], [ %spec.select, %if.then27 ], [ %spec.select397, %if.else33 ]
  %and = and i64 %roundMask.0, %or
  %8 = add i32 %zExp, -32766
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32765, i32 %8)
  %cmp42 = icmp ult i32 %8, -32765
  br i1 %cmp42, label %if.then44, label %if.end41.if.end100_crit_edge

if.end41.if.end100_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 32766, i32 %zExp)
  %cmp45 = icmp sgt i32 %zExp, 32766
  br i1 %cmp45, label %if.then44.overflow_crit_edge, label %lor.lhs.false

if.then44.overflow_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %overflow

lor.lhs.false:                                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_const_cmp4(i32 32766, i32 %zExp)
  %cmp47 = icmp eq i32 %zExp, 32766
  %9 = xor i64 %or, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %roundIncrement.1, i64 %9)
  %cmp49 = icmp ugt i64 %roundIncrement.1, %9
  %or.cond = select i1 %cmp47, i1 %cmp49, i1 false
  br i1 %or.cond, label %lor.lhs.false.overflow_crit_edge, label %if.end52

lor.lhs.false.overflow_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %overflow

if.end52:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %zExp)
  %cmp53 = icmp slt i32 %zExp, 1
  br i1 %cmp53, label %if.then55, label %if.end52.if.end100_crit_edge

if.end52.if.end100_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then55:                                        ; preds = %if.end52
  %10 = load i8, ptr @float_detect_tininess, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp57 = icmp ne i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zExp)
  %cmp60 = icmp eq i32 %zExp, 0
  %not.or.cond398 = and i1 %cmp60, %cmp57
  %spec.select437 = select i1 %not.or.cond398, i1 %cmp49, i1 false
  %sub66 = sub i32 1, %zExp
  tail call void asm sideeffect "@shift64RightJamming -- start", ""() #8, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub66)
  %cmp1.i = icmp slt i32 %sub66, 64
  br i1 %cmp1.i, label %if.then2.i, label %if.else6.i

if.then2.i:                                       ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %sub66.neg = add nsw i32 %zExp, 63
  %sh_prom.i = zext i32 %sub66 to i64
  %shr.i = lshr i64 %or, %sh_prom.i
  %and.i = and i32 %sub66.neg, 63
  %sh_prom3.i = zext i32 %and.i to i64
  %shl.i = shl i64 %or, %sh_prom3.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i)
  %cmp4.i = icmp ne i64 %shl.i, 0
  %11 = zext i1 %cmp4.i to i64
  %or.i = or i64 %shr.i, %11
  br label %shift64RightJamming.exit

if.else6.i:                                       ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or)
  %cmp7.i = icmp ne i64 %or, 0
  %12 = zext i1 %cmp7.i to i64
  br label %shift64RightJamming.exit

shift64RightJamming.exit:                         ; preds = %if.else6.i, %if.then2.i
  %z.0.i = phi i64 [ %or.i, %if.then2.i ], [ %12, %if.else6.i ]
  tail call void asm sideeffect "@shift64RightJamming -- end", ""() #8, !srcloc !18
  %and67 = and i64 %z.0.i, %roundMask.0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and67)
  %tobool71.not = icmp eq i64 %and67, 0
  %or.cond399 = select i1 %spec.select437, i1 true, i1 %tobool71.not
  br i1 %or.cond399, label %shift64RightJamming.exit.if.end76_crit_edge, label %if.then72

shift64RightJamming.exit.if.end76_crit_edge:      ; preds = %shift64RightJamming.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then72:                                        ; preds = %shift64RightJamming.exit
  call void @__sanitizer_cov_trace_pc() #10
  %exception = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %13 = ptrtoint ptr %exception to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %exception, align 1
  %15 = or i8 %14, 8
  store i8 %15, ptr %exception, align 1
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %shift64RightJamming.exit.if.end76_crit_edge
  br i1 %tobool71.not, label %if.end76.if.end83_crit_edge, label %if.then78

if.end76.if.end83_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then78:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %exception79 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %16 = ptrtoint ptr %exception79 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %exception79, align 1
  %18 = or i8 %17, 16
  store i8 %18, ptr %exception79, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %if.end76.if.end83_crit_edge
  %add84 = add i64 %z.0.i, %roundIncrement.1
  %add84.lobit = lshr i64 %add84, 63
  %19 = trunc i64 %add84.lobit to i16
  %add89 = add nuw nsw i64 %roundMask.0, 1
  %shl = shl nuw nsw i64 %and67, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %add89)
  %cmp93 = icmp eq i64 %shl, %add89
  %or.cond401 = select i1 %cmp, i1 %cmp93, i1 false
  %or96 = select i1 %or.cond401, i64 %add89, i64 0
  %roundMask.1 = or i64 %or96, %roundMask.0
  %neg = xor i64 %roundMask.1, -1
  %and98 = and i64 %add84, %neg
  %20 = ptrtoint ptr %zSig0.addr to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %and98, ptr %zSig0.addr, align 8
  %21 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %22 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %and98, ptr %22, align 4, !alias.scope !132
  %conv1.i = zext i8 %zSign to i16
  %shl.i414 = shl i16 %conv1.i, 15
  %add.i = or i16 %shl.i414, %19
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %add.i, ptr %21, align 2, !alias.scope !132
  br label %cleanup

if.end100:                                        ; preds = %if.end52.if.end100_crit_edge, %if.end41.if.end100_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool101.not = icmp eq i64 %and, 0
  br i1 %tobool101.not, label %if.end100.if.end107_crit_edge, label %if.then102

if.end100.if.end107_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.then102:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %exception103 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %25 = ptrtoint ptr %exception103 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %exception103, align 1
  %27 = or i8 %26, 16
  store i8 %27, ptr %exception103, align 1
  br label %if.end107

if.end107:                                        ; preds = %if.then102, %if.end100.if.end107_crit_edge
  %add108 = add i64 %roundIncrement.1, %or
  call void @__sanitizer_cov_trace_cmp8(i64 %add108, i64 %roundIncrement.1)
  %cmp109 = icmp ult i64 %add108, %roundIncrement.1
  %spec.select402 = select i1 %cmp109, i64 -9223372036854775808, i64 %add108
  %inc = zext i1 %cmp109 to i32
  %spec.select403 = add nuw nsw i32 %inc, %zExp
  %add113 = add nuw nsw i64 %roundMask.0, 1
  %shl117 = shl nuw nsw i64 %and, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shl117, i64 %add113)
  %cmp118 = icmp eq i64 %shl117, %add113
  %or.cond404 = select i1 %cmp, i1 %cmp118, i1 false
  %or121 = select i1 %or.cond404, i64 %add113, i64 0
  %roundMask.2 = or i64 %or121, %roundMask.0
  %neg123 = xor i64 %roundMask.2, -1
  %and124 = and i64 %spec.select402, %neg123
  %28 = ptrtoint ptr %zSig0.addr to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %and124, ptr %zSig0.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and124)
  %cmp125 = icmp eq i64 %and124, 0
  %zExp.addr.2 = select i1 %cmp125, i32 0, i32 %spec.select403
  %29 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %30 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %and124, ptr %30, align 4, !alias.scope !135
  %conv1.i415 = zext i8 %zSign to i32
  %shl.i416 = shl nuw nsw i32 %conv1.i415, 15
  %add.i417 = add nuw nsw i32 %zExp.addr.2, %shl.i416
  %conv2.i418 = trunc i32 %add.i417 to i16
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv2.i418, ptr %29, align 2, !alias.scope !135
  br label %cleanup

precision80:                                      ; preds = %entry
  %.lobit = lshr i64 %zSig1, 63
  %33 = trunc i64 %.lobit to i8
  br i1 %cmp, label %precision80.if.end157_crit_edge, label %if.then133

precision80.if.end157_crit_edge:                  ; preds = %precision80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end157

if.then133:                                       ; preds = %precision80
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp135 = icmp eq i8 %3, 1
  br i1 %cmp135, label %if.then133.if.end157_crit_edge, label %if.else138

if.then133.if.end157_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end157

if.else138:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %zSign)
  %tobool139.not = icmp eq i8 %zSign, 0
  br i1 %tobool139.not, label %if.else146, label %if.then140

if.then140:                                       ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp142 = icmp eq i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %zSig1)
  %tobool144 = icmp ne i64 %zSig1, 0
  %spec.select405 = and i1 %tobool144, %cmp142
  %conv145 = zext i1 %spec.select405 to i8
  br label %if.end157

if.else146:                                       ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp148 = icmp eq i8 %3, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %zSig1)
  %tobool151 = icmp ne i64 %zSig1, 0
  %spec.select406 = and i1 %tobool151, %cmp148
  %conv154 = zext i1 %spec.select406 to i8
  br label %if.end157

if.end157:                                        ; preds = %if.else146, %if.then140, %if.then133.if.end157_crit_edge, %precision80.if.end157_crit_edge
  %increment.0 = phi i8 [ %33, %precision80.if.end157_crit_edge ], [ %conv145, %if.then140 ], [ %conv154, %if.else146 ], [ 0, %if.then133.if.end157_crit_edge ]
  %34 = add i32 %zExp, -32766
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32765, i32 %34)
  %cmp159 = icmp ult i32 %34, -32765
  br i1 %cmp159, label %if.then161, label %if.end157.if.end277_crit_edge

if.end157.if.end277_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end277

if.then161:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_const_cmp4(i32 32766, i32 %zExp)
  %cmp162 = icmp sgt i32 %zExp, 32766
  br i1 %cmp162, label %if.then161.overflow_crit_edge, label %lor.lhs.false164

if.then161.overflow_crit_edge:                    ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #10
  br label %overflow

lor.lhs.false164:                                 ; preds = %if.then161
  call void @__sanitizer_cov_trace_const_cmp4(i32 32766, i32 %zExp)
  %cmp165 = icmp eq i32 %zExp, 32766
  br i1 %cmp165, label %land.lhs.true167, label %if.end197

land.lhs.true167:                                 ; preds = %lor.lhs.false164
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %zSig0)
  %cmp168 = icmp ne i64 %zSig0, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %increment.0)
  %tobool172.not = icmp eq i8 %increment.0, 0
  %or.cond407 = select i1 %cmp168, i1 true, i1 %tobool172.not
  br i1 %or.cond407, label %land.lhs.true167.if.end277_crit_edge, label %land.lhs.true167.overflow_crit_edge

land.lhs.true167.overflow_crit_edge:              ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #10
  br label %overflow

land.lhs.true167.if.end277_crit_edge:             ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end277

overflow:                                         ; preds = %land.lhs.true167.overflow_crit_edge, %if.then161.overflow_crit_edge, %lor.lhs.false.overflow_crit_edge, %if.then44.overflow_crit_edge
  %roundMask.3 = phi i64 [ %roundMask.0, %if.then44.overflow_crit_edge ], [ %roundMask.0, %lor.lhs.false.overflow_crit_edge ], [ 0, %land.lhs.true167.overflow_crit_edge ], [ 0, %if.then161.overflow_crit_edge ]
  %exception174 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %35 = ptrtoint ptr %exception174 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %exception174, align 1
  %37 = or i8 %36, 20
  store i8 %37, ptr %exception174, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp179 = icmp eq i8 %3, 1
  br i1 %cmp179, label %overflow.if.then194_crit_edge, label %lor.lhs.false181

overflow.if.then194_crit_edge:                    ; preds = %overflow
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then194

lor.lhs.false181:                                 ; preds = %overflow
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %zSign)
  %tobool183.not = icmp ne i8 %zSign, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp186 = icmp eq i8 %3, 3
  %or.cond408 = select i1 %tobool183.not, i1 %cmp186, i1 false
  br i1 %or.cond408, label %lor.lhs.false181.if.then194_crit_edge, label %lor.lhs.false188

lor.lhs.false181.if.then194_crit_edge:            ; preds = %lor.lhs.false181
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then194

lor.lhs.false188:                                 ; preds = %lor.lhs.false181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %zSign)
  %tobool189.not = icmp eq i8 %zSign, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp192 = icmp eq i8 %3, 2
  %or.cond409 = select i1 %tobool189.not, i1 %cmp192, i1 false
  br i1 %or.cond409, label %lor.lhs.false188.if.then194_crit_edge, label %if.end196

lor.lhs.false188.if.then194_crit_edge:            ; preds = %lor.lhs.false188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then194

if.then194:                                       ; preds = %lor.lhs.false188.if.then194_crit_edge, %lor.lhs.false181.if.then194_crit_edge, %overflow.if.then194_crit_edge
  %neg195 = xor i64 %roundMask.3, -1
  %38 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %39 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 %neg195, ptr %39, align 4, !alias.scope !138
  %conv1.i419 = zext i8 %zSign to i16
  %shl.i420 = shl i16 %conv1.i419, 15
  %add.i421 = or i16 %shl.i420, 32766
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %add.i421, ptr %38, align 2, !alias.scope !138
  br label %cleanup

if.end196:                                        ; preds = %lor.lhs.false188
  call void @__sanitizer_cov_trace_pc() #10
  %42 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %43 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 -9223372036854775808, ptr %43, align 4, !alias.scope !141
  %conv1.i423 = zext i8 %zSign to i16
  %shl.i424 = shl i16 %conv1.i423, 15
  %add.i425 = or i16 %shl.i424, 32767
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %add.i425, ptr %42, align 2, !alias.scope !141
  br label %cleanup

if.end197:                                        ; preds = %lor.lhs.false164
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %zExp)
  %cmp198 = icmp slt i32 %zExp, 1
  br i1 %cmp198, label %if.then200, label %if.end197.if.end277_crit_edge

if.end197.if.end277_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end277

if.then200:                                       ; preds = %if.end197
  %46 = load i8, ptr @float_detect_tininess, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cmp202 = icmp eq i8 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zExp)
  %cmp205 = icmp ne i32 %zExp, 0
  %or.cond410 = or i1 %cmp205, %cmp202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %increment.0)
  %tobool208.not = icmp eq i8 %increment.0, 0
  %or.cond411 = select i1 %or.cond410, i1 true, i1 %tobool208.not
  br i1 %or.cond411, label %land.lhs.true218.critedge, label %lor.rhs209

lor.rhs209:                                       ; preds = %if.then200
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %zSig0)
  %cmp210 = icmp eq i64 %zSig0, -1
  call fastcc void @shift64ExtraRightJamming(i64 noundef %zSig0, i64 noundef %zSig1, i32 noundef 1, ptr noundef nonnull %zSig0.addr, ptr noundef nonnull %zSig1.addr)
  br i1 %cmp210, label %lor.rhs209.if.end225_crit_edge, label %lor.rhs209.land.lhs.true218_crit_edge

lor.rhs209.land.lhs.true218_crit_edge:            ; preds = %lor.rhs209
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true218

lor.rhs209.if.end225_crit_edge:                   ; preds = %lor.rhs209
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end225

land.lhs.true218.critedge:                        ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #10
  %sub215.c = sub i32 1, %zExp
  call fastcc void @shift64ExtraRightJamming(i64 noundef %zSig0, i64 noundef %zSig1, i32 noundef %sub215.c, ptr noundef nonnull %zSig0.addr, ptr noundef nonnull %zSig1.addr)
  br label %land.lhs.true218

land.lhs.true218:                                 ; preds = %land.lhs.true218.critedge, %lor.rhs209.land.lhs.true218_crit_edge
  %47 = ptrtoint ptr %zSig1.addr to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %zSig1.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %48)
  %tobool219.not = icmp eq i64 %48, 0
  br i1 %tobool219.not, label %land.lhs.true218.if.end232_crit_edge, label %if.then220

land.lhs.true218.if.end232_crit_edge:             ; preds = %land.lhs.true218
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end232

if.then220:                                       ; preds = %land.lhs.true218
  call void @__sanitizer_cov_trace_pc() #10
  %exception221 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %49 = ptrtoint ptr %exception221 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %exception221, align 1
  %51 = or i8 %50, 8
  store i8 %51, ptr %exception221, align 1
  br label %if.end225

if.end225:                                        ; preds = %if.then220, %lor.rhs209.if.end225_crit_edge
  %52 = ptrtoint ptr %zSig1.addr to i32
  call void @__asan_load8_noabort(i32 %52)
  %.pr = load i64, ptr %zSig1.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pr)
  %tobool226.not = icmp eq i64 %.pr, 0
  br i1 %tobool226.not, label %if.end225.if.end232_crit_edge, label %if.then227

if.end225.if.end232_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end232

if.then227:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #10
  %exception228 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %53 = ptrtoint ptr %exception228 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %exception228, align 1
  %55 = or i8 %54, 16
  store i8 %55, ptr %exception228, align 1
  br label %if.end232

if.end232:                                        ; preds = %if.then227, %if.end225.if.end232_crit_edge, %land.lhs.true218.if.end232_crit_edge
  %56 = phi i64 [ %.pr, %if.then227 ], [ 0, %if.end225.if.end232_crit_edge ], [ 0, %land.lhs.true218.if.end232_crit_edge ]
  br i1 %cmp, label %if.then234, label %if.else238

if.then234:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #10
  %.lobit396 = lshr i64 %56, 63
  %57 = trunc i64 %.lobit396 to i8
  br label %if.end259

if.else238:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %zSign)
  %tobool239.not = icmp eq i8 %zSign, 0
  br i1 %tobool239.not, label %if.else249, label %if.then240

if.then240:                                       ; preds = %if.else238
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp242 = icmp eq i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %56)
  %tobool245 = icmp ne i64 %56, 0
  %spec.select438 = select i1 %cmp242, i1 %tobool245, i1 false
  %conv248 = zext i1 %spec.select438 to i8
  br label %if.end259

if.else249:                                       ; preds = %if.else238
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp251 = icmp eq i8 %3, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %56)
  %tobool254 = icmp ne i64 %56, 0
  %spec.select439 = select i1 %cmp251, i1 %tobool254, i1 false
  %conv257 = zext i1 %spec.select439 to i8
  br label %if.end259

if.end259:                                        ; preds = %if.else249, %if.then240, %if.then234
  %increment.1 = phi i8 [ %57, %if.then234 ], [ %conv248, %if.then240 ], [ %conv257, %if.else249 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %increment.1)
  %tobool260.not = icmp eq i8 %increment.1, 0
  br i1 %tobool260.not, label %if.end259.if.end275_crit_edge, label %if.then261

if.end259.if.end275_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end275

if.then261:                                       ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %zSig0.addr to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %zSig0.addr, align 8
  %inc262 = add i64 %59, 1
  %add263.mask = and i64 %56, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add263.mask)
  %cmp264 = icmp eq i64 %add263.mask, 0
  %and267395 = and i1 %cmp, %cmp264
  %and267 = zext i1 %and267395 to i32
  %neg268 = xor i32 %and267, -1
  %conv269 = sext i32 %neg268 to i64
  %and270 = and i64 %inc262, %conv269
  %60 = ptrtoint ptr %zSig0.addr to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %and270, ptr %zSig0.addr, align 8
  %and270.lobit = lshr i64 %inc262, 63
  %61 = trunc i64 %and270.lobit to i16
  br label %if.end275

if.end275:                                        ; preds = %if.then261, %if.end259.if.end275_crit_edge
  %zExp.addr.3 = phi i16 [ 0, %if.end259.if.end275_crit_edge ], [ %61, %if.then261 ]
  %62 = ptrtoint ptr %zSig0.addr to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %zSig0.addr, align 8
  %64 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %65 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 %63, ptr %65, align 4, !alias.scope !144
  %conv1.i427 = zext i8 %zSign to i16
  %shl.i428 = shl i16 %conv1.i427, 15
  %add.i429 = add nuw i16 %zExp.addr.3, %shl.i428
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %add.i429, ptr %64, align 2, !alias.scope !144
  br label %cleanup

if.end277:                                        ; preds = %if.end197.if.end277_crit_edge, %land.lhs.true167.if.end277_crit_edge, %if.end157.if.end277_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %zSig1)
  %tobool278.not = icmp eq i64 %zSig1, 0
  br i1 %tobool278.not, label %if.end277.if.end284_crit_edge, label %if.then279

if.end277.if.end284_crit_edge:                    ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end284

if.then279:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #10
  %exception280 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %68 = ptrtoint ptr %exception280 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %exception280, align 1
  %70 = or i8 %69, 16
  store i8 %70, ptr %exception280, align 1
  br label %if.end284

if.end284:                                        ; preds = %if.then279, %if.end277.if.end284_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %increment.0)
  %tobool285.not = icmp eq i8 %increment.0, 0
  br i1 %tobool285.not, label %if.else302, label %if.then286

if.then286:                                       ; preds = %if.end284
  %inc287 = add i64 %zSig0, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %inc287)
  %cmp288 = icmp eq i64 %inc287, 0
  br i1 %cmp288, label %if.then290, label %if.else292

if.then290:                                       ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #10
  %inc291 = add nuw nsw i32 %zExp, 1
  %71 = ptrtoint ptr %zSig0.addr to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 -9223372036854775808, ptr %zSig0.addr, align 8
  br label %if.end307

if.else292:                                       ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #10
  %add293.mask = and i64 %zSig1, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add293.mask)
  %cmp294 = icmp eq i64 %add293.mask, 0
  %and297394 = and i1 %cmp294, %cmp
  %and297 = zext i1 %and297394 to i32
  %neg298 = xor i32 %and297, -1
  %conv299 = sext i32 %neg298 to i64
  %and300 = and i64 %inc287, %conv299
  %72 = ptrtoint ptr %zSig0.addr to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %and300, ptr %zSig0.addr, align 8
  br label %if.end307

if.else302:                                       ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %zSig0)
  %cmp303 = icmp eq i64 %zSig0, 0
  %spec.select413 = select i1 %cmp303, i32 0, i32 %zExp
  br label %if.end307

if.end307:                                        ; preds = %if.else302, %if.else292, %if.then290
  %zExp.addr.4 = phi i32 [ %inc291, %if.then290 ], [ %zExp, %if.else292 ], [ %spec.select413, %if.else302 ]
  %73 = ptrtoint ptr %zSig0.addr to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %zSig0.addr, align 8
  %75 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %76 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 8)
  store i64 %74, ptr %76, align 4, !alias.scope !147
  %conv1.i431 = zext i8 %zSign to i32
  %shl.i432 = shl nuw nsw i32 %conv1.i431, 15
  %add.i433 = add nuw nsw i32 %zExp.addr.4, %shl.i432
  %conv2.i434 = trunc i32 %add.i433 to i16
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv2.i434, ptr %75, align 2, !alias.scope !147
  br label %cleanup

cleanup:                                          ; preds = %if.end307, %if.end275, %if.end196, %if.then194, %if.end107, %if.end83
  %79 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %agg.result, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @floatx80_div(ptr noalias writeonly sret(%struct.floatx80) align 4 %agg.result, ptr nocapture noundef %roundData, [3 x i32] %a.coerce, [3 x i32] %b.coerce) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.1.extract.i = extractvalue [3 x i32] %a.coerce, 1
  %a.coerce.fca.2.extract.i = extractvalue [3 x i32] %a.coerce, 2
  %a.sroa.3.4.insert.ext.i = zext i32 %a.coerce.fca.2.extract.i to i64
  %a.sroa.1.4.insert.ext.i = zext i32 %a.coerce.fca.1.extract.i to i64
  %a.sroa.1.4.insert.shift.i = shl nuw i64 %a.sroa.1.4.insert.ext.i, 32
  %a.sroa.1.4.insert.insert.i = or i64 %a.sroa.1.4.insert.shift.i, %a.sroa.3.4.insert.ext.i
  %a.coerce.fca.0.extract.i = extractvalue [3 x i32] %a.coerce, 0
  %and.i = and i32 %a.coerce.fca.0.extract.i, 32767
  %a.coerce.fca.1.extract.i239 = extractvalue [3 x i32] %b.coerce, 1
  %a.coerce.fca.2.extract.i240 = extractvalue [3 x i32] %b.coerce, 2
  %a.sroa.3.4.insert.ext.i241 = zext i32 %a.coerce.fca.2.extract.i240 to i64
  %a.sroa.1.4.insert.ext.i242 = zext i32 %a.coerce.fca.1.extract.i239 to i64
  %a.sroa.1.4.insert.shift.i243 = shl nuw i64 %a.sroa.1.4.insert.ext.i242, 32
  %a.sroa.1.4.insert.insert.i244 = or i64 %a.sroa.1.4.insert.shift.i243, %a.sroa.3.4.insert.ext.i241
  %a.coerce.fca.0.extract.i245 = extractvalue [3 x i32] %b.coerce, 0
  %and.i246 = and i32 %a.coerce.fca.0.extract.i245, 32767
  %conv.i746 = xor i32 %a.coerce.fca.0.extract.i245, %a.coerce.fca.0.extract.i
  %conv1.i744745 = lshr i32 %conv.i746, 15
  %conv1.i744 = trunc i32 %conv1.i744745 to i8
  %xor237 = and i8 %conv1.i744, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 32767
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %shl.mask = and i64 %a.sroa.1.4.insert.insert.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %tobool.not = icmp eq i64 %shl.mask, 0
  br i1 %tobool.not, label %if.end, label %floatx80_is_nan.exit.i

floatx80_is_nan.exit.i:                           ; preds = %if.then
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %0 = shl i64 %a.sroa.1.4.insert.ext.i, 33
  %1 = shl nuw nsw i64 %a.sroa.3.4.insert.ext.i, 1
  %shl.i.i = or i64 %0, %1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i.i)
  %tobool.i.i.not = icmp eq i64 %shl.i.i, 0
  %shl.mask.i.i = and i64 %a.sroa.1.4.insert.insert.i, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i.i)
  %tobool.not.i.i = icmp ne i64 %shl.mask.i.i, 0
  %and.i58.i = and i64 %a.sroa.1.4.insert.insert.i, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i, i64 %and.i58.i)
  %cmp4.i.i = icmp eq i64 %a.sroa.1.4.insert.insert.i, %and.i58.i
  %2 = and i1 %tobool.not.i.i, %cmp4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i246)
  %cmp.i62.i = icmp eq i32 %and.i246, 32767
  br i1 %cmp.i62.i, label %floatx80_is_nan.exit69.i, label %floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge

floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge: ; preds = %floatx80_is_nan.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80_is_signaling_nan.exit84.i

floatx80_is_nan.exit69.i:                         ; preds = %floatx80_is_nan.exit.i
  %3 = shl i64 %a.sroa.1.4.insert.ext.i242, 33
  %4 = shl nuw nsw i64 %a.sroa.3.4.insert.ext.i241, 1
  %shl.i65.i = or i64 %3, %4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i65.i)
  %tobool.i66.i = icmp ne i64 %shl.i65.i, 0
  %shl.mask.i77.i = and i64 %a.sroa.1.4.insert.insert.i244, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i77.i)
  %tobool.not.i78.i = icmp eq i64 %shl.mask.i77.i, 0
  br i1 %tobool.not.i78.i, label %floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge, label %land.rhs.i82.i

floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge: ; preds = %floatx80_is_nan.exit69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80_is_signaling_nan.exit84.i

land.rhs.i82.i:                                   ; preds = %floatx80_is_nan.exit69.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.i80.i = and i64 %a.sroa.1.4.insert.insert.i244, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i244, i64 %and.i80.i)
  %cmp4.i81.i = icmp eq i64 %a.sroa.1.4.insert.insert.i244, %and.i80.i
  br label %floatx80_is_signaling_nan.exit84.i

floatx80_is_signaling_nan.exit84.i:               ; preds = %land.rhs.i82.i, %floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge, %floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge
  %conv2.i6896.shrunk.i = phi i1 [ %tobool.i66.i, %floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge ], [ %tobool.i66.i, %land.rhs.i82.i ], [ false, %floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge ]
  %5 = phi i1 [ false, %floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge ], [ %cmp4.i81.i, %land.rhs.i82.i ], [ false, %floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge ]
  %or75397.i = or i1 %2, %5
  br i1 %or75397.i, label %if.then.i, label %floatx80_is_signaling_nan.exit84.i.propagateFloatx80NaN.exit_crit_edge

floatx80_is_signaling_nan.exit84.i.propagateFloatx80NaN.exit_crit_edge: ; preds = %floatx80_is_signaling_nan.exit84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloatx80NaN.exit

if.then.i:                                        ; preds = %floatx80_is_signaling_nan.exit84.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8, !noalias !150
  br label %propagateFloatx80NaN.exit

propagateFloatx80NaN.exit:                        ; preds = %if.then.i, %floatx80_is_signaling_nan.exit84.i.propagateFloatx80NaN.exit_crit_edge
  %and5498.i = and i1 %2, %conv2.i6896.shrunk.i
  %6 = select i1 %tobool.i.i.not, i1 true, i1 %and5498.i
  %b.coerce.fca.0.extract.sink.i = select i1 %6, i32 %a.coerce.fca.0.extract.i245, i32 %a.coerce.fca.0.extract.i
  %or5.sink.i.v = select i1 %6, i64 %a.sroa.1.4.insert.insert.i244, i64 %a.sroa.1.4.insert.insert.i
  %or5.sink.i = or i64 %or5.sink.i.v, -4611686018427387904
  %7 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %b.coerce.fca.0.extract.sink.i, ptr %agg.result, align 4, !alias.scope !150
  %b.sroa.5.0.agg.result.sroa_idx.i = getelementptr inbounds i8, ptr %agg.result, i32 4
  %8 = ptrtoint ptr %b.sroa.5.0.agg.result.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %or5.sink.i, ptr %b.sroa.5.0.agg.result.sroa_idx.i, align 4, !alias.scope !150
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i246)
  %cmp10 = icmp eq i32 %and.i246, 32767
  br i1 %cmp10, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end
  %shl13.mask = and i64 %a.sroa.1.4.insert.insert.i244, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.mask)
  %tobool14.not = icmp eq i64 %shl13.mask, 0
  br i1 %tobool14.not, label %if.then12.invalid_crit_edge, label %floatx80_is_nan.exit.i273

if.then12.invalid_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %invalid

floatx80_is_nan.exit.i273:                        ; preds = %if.then12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %9 = shl i64 %a.sroa.1.4.insert.ext.i, 33
  %10 = shl nuw nsw i64 %a.sroa.3.4.insert.ext.i, 1
  %shl.i.i269 = or i64 %9, %10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i.i269)
  %tobool.i.i270.not = icmp eq i64 %shl.i.i269, 0
  %shl.mask.i.i271 = and i64 %a.sroa.1.4.insert.insert.i, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i.i271)
  %tobool.not.i.i272 = icmp ne i64 %shl.mask.i.i271, 0
  %and.i58.i274 = and i64 %a.sroa.1.4.insert.insert.i, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i, i64 %and.i58.i274)
  %cmp4.i.i275 = icmp eq i64 %a.sroa.1.4.insert.insert.i, %and.i58.i274
  %11 = and i1 %tobool.not.i.i272, %cmp4.i.i275
  %12 = shl i64 %a.sroa.1.4.insert.ext.i242, 33
  %13 = shl nuw nsw i64 %a.sroa.3.4.insert.ext.i241, 1
  %shl.i65.i281 = or i64 %12, %13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i65.i281)
  %tobool.i66.i282 = icmp ne i64 %shl.i65.i281, 0
  %shl.mask.i77.i283 = and i64 %a.sroa.1.4.insert.insert.i244, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i77.i283)
  %tobool.not.i78.i284 = icmp ne i64 %shl.mask.i77.i283, 0
  %and.i80.i286 = and i64 %a.sroa.1.4.insert.insert.i244, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i244, i64 %and.i80.i286)
  %cmp4.i81.i287 = icmp eq i64 %a.sroa.1.4.insert.insert.i244, %and.i80.i286
  %14 = and i1 %tobool.not.i78.i284, %cmp4.i81.i287
  %or75397.i290 = or i1 %11, %14
  br i1 %or75397.i290, label %if.then.i292, label %floatx80_is_nan.exit.i273.propagateFloatx80NaN.exit301_crit_edge

floatx80_is_nan.exit.i273.propagateFloatx80NaN.exit301_crit_edge: ; preds = %floatx80_is_nan.exit.i273
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloatx80NaN.exit301

if.then.i292:                                     ; preds = %floatx80_is_nan.exit.i273
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8, !noalias !153
  br label %propagateFloatx80NaN.exit301

propagateFloatx80NaN.exit301:                     ; preds = %if.then.i292, %floatx80_is_nan.exit.i273.propagateFloatx80NaN.exit301_crit_edge
  %and5498.i295 = and i1 %tobool.i66.i282, %11
  %15 = select i1 %tobool.i.i270.not, i1 true, i1 %and5498.i295
  %b.coerce.fca.0.extract.sink.i298 = select i1 %15, i32 %a.coerce.fca.0.extract.i245, i32 %a.coerce.fca.0.extract.i
  %or5.sink.i299.v = select i1 %15, i64 %a.sroa.1.4.insert.insert.i244, i64 %a.sroa.1.4.insert.insert.i
  %or5.sink.i299 = or i64 %or5.sink.i299.v, -4611686018427387904
  %16 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %b.coerce.fca.0.extract.sink.i298, ptr %agg.result, align 4, !alias.scope !153
  %b.sroa.5.0.agg.result.sroa_idx.i300 = getelementptr inbounds i8, ptr %agg.result, i32 4
  %17 = ptrtoint ptr %b.sroa.5.0.agg.result.sroa_idx.i300 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %or5.sink.i299, ptr %b.sroa.5.0.agg.result.sroa_idx.i300, align 4, !alias.scope !153
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %18 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %19 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 -9223372036854775808, ptr %19, align 4, !alias.scope !156
  %21 = trunc i32 %conv1.i744745 to i16
  %shl.i = shl i16 %21, 15
  %add.i = or i16 %shl.i, 32767
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %add.i, ptr %18, align 2, !alias.scope !156
  %23 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %agg.result, align 4, !alias.scope !156
  br label %cleanup

if.end18:                                         ; preds = %entry
  %24 = zext i32 %and.i246 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %and.i246, label %if.end18.if.end46_crit_edge [
    i32 32767, label %if.then21
    i32 0, label %if.then29
  ]

if.end18.if.end46_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then21:                                        ; preds = %if.end18
  %shl22.mask = and i64 %a.sroa.1.4.insert.insert.i244, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl22.mask)
  %tobool23.not = icmp eq i64 %shl22.mask, 0
  br i1 %tobool23.not, label %if.end25, label %floatx80_is_nan.exit69.i335

floatx80_is_nan.exit69.i335:                      ; preds = %if.then21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %shl.mask.i77.i333 = and i64 %a.sroa.1.4.insert.insert.i244, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i77.i333)
  %tobool.not.i78.i334 = icmp ne i64 %shl.mask.i77.i333, 0
  %and.i80.i336 = and i64 %a.sroa.1.4.insert.insert.i244, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i244, i64 %and.i80.i336)
  %cmp4.i81.i337 = icmp eq i64 %a.sroa.1.4.insert.insert.i244, %and.i80.i336
  %25 = and i1 %tobool.not.i78.i334, %cmp4.i81.i337
  br i1 %25, label %if.then.i342, label %floatx80_is_nan.exit69.i335.propagateFloatx80NaN.exit351_crit_edge

floatx80_is_nan.exit69.i335.propagateFloatx80NaN.exit351_crit_edge: ; preds = %floatx80_is_nan.exit69.i335
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloatx80NaN.exit351

if.then.i342:                                     ; preds = %floatx80_is_nan.exit69.i335
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8, !noalias !159
  br label %propagateFloatx80NaN.exit351

propagateFloatx80NaN.exit351:                     ; preds = %if.then.i342, %floatx80_is_nan.exit69.i335.propagateFloatx80NaN.exit351_crit_edge
  %or5.i343 = or i64 %a.sroa.1.4.insert.insert.i244, -4611686018427387904
  %26 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %a.coerce.fca.0.extract.i245, ptr %agg.result, align 4, !alias.scope !159
  %b.sroa.5.0.agg.result.sroa_idx.i350 = getelementptr inbounds i8, ptr %agg.result, i32 4
  %27 = ptrtoint ptr %b.sroa.5.0.agg.result.sroa_idx.i350 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %or5.i343, ptr %b.sroa.5.0.agg.result.sroa_idx.i350, align 4, !alias.scope !159
  br label %cleanup

if.end25:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %28 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %29 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 0, ptr %29, align 4, !alias.scope !162
  %31 = trunc i32 %conv1.i744745 to i16
  %shl.i353 = shl i16 %31, 15
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %shl.i353, ptr %28, align 2, !alias.scope !162
  %33 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %agg.result, align 4, !alias.scope !162
  br label %cleanup

if.then29:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a.sroa.1.4.insert.insert.i244)
  %cmp30 = icmp eq i64 %a.sroa.1.4.insert.insert.i244, 0
  br i1 %cmp30, label %if.then32, label %if.end45

if.then32:                                        ; preds = %if.then29
  %conv33743 = zext i32 %and.i to i64
  %or = or i64 %a.sroa.1.4.insert.insert.i, %conv33743
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or)
  %cmp34 = icmp eq i64 %or, 0
  br i1 %cmp34, label %if.then32.invalid_crit_edge, label %if.end40

if.then32.invalid_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %invalid

invalid:                                          ; preds = %if.then32.invalid_crit_edge, %if.then12.invalid_crit_edge
  %exception = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %34 = ptrtoint ptr %exception to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %exception, align 1
  %36 = or i8 %35, 1
  store i8 %36, ptr %exception, align 1
  %37 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %agg.result, align 4
  %z.sroa.5.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 2
  %38 = ptrtoint ptr %z.sroa.5.0.agg.result.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -1, ptr %z.sroa.5.0.agg.result.sroa_idx, align 2
  %z.sroa.7.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 4
  %39 = ptrtoint ptr %z.sroa.7.0.agg.result.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 -1, ptr %z.sroa.7.0.agg.result.sroa_idx, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %exception41 = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %40 = ptrtoint ptr %exception41 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %exception41, align 1
  %42 = or i8 %41, 2
  store i8 %42, ptr %exception41, align 1
  %43 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %44 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 -9223372036854775808, ptr %44, align 4, !alias.scope !165
  %46 = trunc i32 %conv1.i744745 to i16
  %shl.i356 = shl i16 %46, 15
  %add.i357 = or i16 %shl.i356, 32767
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %add.i357, ptr %43, align 2, !alias.scope !165
  %48 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %agg.result, align 4, !alias.scope !165
  br label %cleanup

if.end45:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %a.sroa.1.4.insert.insert.i244)
  %cmp.i.i359 = icmp ult i64 %a.sroa.1.4.insert.insert.i244, 4294967296
  %a.addr.0.off0.v.i.i = select i1 %cmp.i.i359, i32 %a.coerce.fca.2.extract.i240, i32 %a.coerce.fca.1.extract.i239
  %shiftCount.0.i.i = select i1 %cmp.i.i359, i8 32, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %a.addr.0.off0.v.i.i)
  %cmp.i.i.i = icmp ult i32 %a.addr.0.off0.v.i.i, 65536
  %shl.i.i.i = shl i32 %a.addr.0.off0.v.i.i, 16
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %shl.i.i.i, i32 %a.addr.0.off0.v.i.i
  %spec.select21.i.i.i = select i1 %cmp.i.i.i, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i.i)
  %cmp2.i.i.i = icmp ult i32 %spec.select.i.i.i, 16777216
  %49 = or i8 %spec.select21.i.i.i, 8
  %shl8.i.i.i = shl i32 %spec.select.i.i.i, 8
  %a.addr.1.i.i.i = select i1 %cmp2.i.i.i, i32 %shl8.i.i.i, i32 %spec.select.i.i.i
  %shiftCount.1.i.i.i = select i1 %cmp2.i.i.i, i8 %49, i8 %spec.select21.i.i.i
  %shr.i.i.i = lshr i32 %a.addr.1.i.i.i, 24
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i.i
  %50 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i.i.i, align 1
  %add12.i.i.i = or i8 %shiftCount.1.i.i.i, %shiftCount.0.i.i
  %add5.i.i = add i8 %add12.i.i.i, %51
  %conv.i360 = sext i8 %add5.i.i to i32
  %sh_prom.i = zext i32 %conv.i360 to i64
  %shl.i361 = shl i64 %a.sroa.1.4.insert.insert.i244, %sh_prom.i
  %sub.i = sub nsw i32 1, %conv.i360
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end18.if.end46_crit_edge
  %bExp.0 = phi i32 [ %and.i246, %if.end18.if.end46_crit_edge ], [ %sub.i, %if.end45 ]
  %bSig.0 = phi i64 [ %a.sroa.1.4.insert.insert.i244, %if.end18.if.end46_crit_edge ], [ %shl.i361, %if.end45 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp47 = icmp eq i32 %and.i, 0
  br i1 %cmp47, label %if.then49, label %if.end46.if.end54_crit_edge

if.end46.if.end54_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a.sroa.1.4.insert.insert.i)
  %cmp50 = icmp eq i64 %a.sroa.1.4.insert.insert.i, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %52 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %53 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 8)
  store i64 0, ptr %53, align 4, !alias.scope !168
  %55 = trunc i32 %conv1.i744745 to i16
  %shl.i363 = shl i16 %55, 15
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %shl.i363, ptr %52, align 2, !alias.scope !168
  %57 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %agg.result, align 4, !alias.scope !168
  br label %cleanup

if.end53:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %a.sroa.1.4.insert.insert.i)
  %cmp.i.i365 = icmp ult i64 %a.sroa.1.4.insert.insert.i, 4294967296
  %a.addr.0.off0.v.i.i367 = select i1 %cmp.i.i365, i32 %a.coerce.fca.2.extract.i, i32 %a.coerce.fca.1.extract.i
  %shiftCount.0.i.i369 = select i1 %cmp.i.i365, i8 32, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %a.addr.0.off0.v.i.i367)
  %cmp.i.i.i370 = icmp ult i32 %a.addr.0.off0.v.i.i367, 65536
  %shl.i.i.i371 = shl i32 %a.addr.0.off0.v.i.i367, 16
  %spec.select.i.i.i372 = select i1 %cmp.i.i.i370, i32 %shl.i.i.i371, i32 %a.addr.0.off0.v.i.i367
  %spec.select21.i.i.i373 = select i1 %cmp.i.i.i370, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i.i372)
  %cmp2.i.i.i374 = icmp ult i32 %spec.select.i.i.i372, 16777216
  %58 = or i8 %spec.select21.i.i.i373, 8
  %shl8.i.i.i375 = shl i32 %spec.select.i.i.i372, 8
  %a.addr.1.i.i.i376 = select i1 %cmp2.i.i.i374, i32 %shl8.i.i.i375, i32 %spec.select.i.i.i372
  %shiftCount.1.i.i.i377 = select i1 %cmp2.i.i.i374, i8 %58, i8 %spec.select21.i.i.i373
  %shr.i.i.i378 = lshr i32 %a.addr.1.i.i.i376, 24
  %arrayidx.i.i.i379 = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i.i378
  %59 = ptrtoint ptr %arrayidx.i.i.i379 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i.i.i379, align 1
  %add12.i.i.i380 = or i8 %shiftCount.1.i.i.i377, %shiftCount.0.i.i369
  %add5.i.i381 = add i8 %add12.i.i.i380, %60
  %conv.i382 = sext i8 %add5.i.i381 to i32
  %sh_prom.i383 = zext i32 %conv.i382 to i64
  %shl.i384 = shl i64 %a.sroa.1.4.insert.insert.i, %sh_prom.i383
  %sub.i385 = sub nsw i32 1, %conv.i382
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end46.if.end54_crit_edge
  %aExp.0 = phi i32 [ %sub.i385, %if.end53 ], [ %and.i, %if.end46.if.end54_crit_edge ]
  %aSig.0 = phi i64 [ %shl.i384, %if.end53 ], [ %a.sroa.1.4.insert.insert.i, %if.end46.if.end54_crit_edge ]
  %sub = sub nsw i32 %aExp.0, %bExp.0
  %add = add nsw i32 %sub, 16382
  call void @__sanitizer_cov_trace_cmp8(i64 %bSig.0, i64 %aSig.0)
  %cmp55.not = icmp ugt i64 %bSig.0, %aSig.0
  br i1 %cmp55.not, label %if.end54.if.end58_crit_edge, label %if.then57

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %shr8.i = lshr i64 %aSig.0, 1
  %shl.i386 = shl i64 %aSig.0, 63
  %inc = add nsw i32 %sub, 16383
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end54.if.end58_crit_edge
  %aSig.1 = phi i64 [ %aSig.0, %if.end54.if.end58_crit_edge ], [ %shr8.i, %if.then57 ]
  %rem1.0 = phi i64 [ 0, %if.end54.if.end58_crit_edge ], [ %shl.i386, %if.then57 ]
  %zExp.0 = phi i32 [ %add, %if.end54.if.end58_crit_edge ], [ %inc, %if.then57 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %bSig.0, i64 %aSig.1)
  %cmp.not.i = icmp ugt i64 %bSig.0, %aSig.1
  %shr.i = lshr i64 %bSig.0, 32
  br i1 %cmp.not.i, label %if.end.i, label %if.end58.estimateDiv128To64.exit_crit_edge

if.end58.estimateDiv128To64.exit_crit_edge:       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %.pre766 = and i64 %bSig.0, 4294967295
  br label %estimateDiv128To64.exit

if.end.i:                                         ; preds = %if.end58
  %shl.i387 = and i64 %bSig.0, -4294967296
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i387, i64 %aSig.1)
  %cmp1.not.i = icmp ugt i64 %shl.i387, %aSig.1
  br i1 %cmp1.not.i, label %if.else.i, label %if.end.i.if.end191.i_crit_edge

if.end.i.if.end191.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191.i

if.else.i:                                        ; preds = %if.end.i
  %conv.i388 = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %aSig.1)
  %cmp174.i = icmp ult i64 %aSig.1, 4294967296
  br i1 %cmp174.i, label %if.then178.i, label %if.else184.i, !prof !38

if.then178.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv179.i = trunc i64 %aSig.1 to i32
  %div182.i = udiv i32 %conv179.i, %conv.i388
  %conv183.i = zext i32 %div182.i to i64
  br label %if.end188.i

if.else184.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i388, i64 %aSig.1) #11, !srcloc !37
  %asmresult1.i.i = extractvalue { i64, i64 } %61, 1
  br label %if.end188.i

if.end188.i:                                      ; preds = %if.else184.i, %if.then178.i
  %z.0.i = phi i64 [ %conv183.i, %if.then178.i ], [ %asmresult1.i.i, %if.else184.i ]
  %shl190.i = shl i64 %z.0.i, 32
  br label %if.end191.i

if.end191.i:                                      ; preds = %if.end188.i, %if.end.i.if.end191.i_crit_edge
  %storemerge.i = phi i64 [ %shl190.i, %if.end188.i ], [ -4294967296, %if.end.i.if.end191.i_crit_edge ]
  %shr3.i.i = lshr exact i64 %storemerge.i, 32
  %conv5.i.i = and i64 %bSig.0, 4294967295
  %mul9.i.i = mul nuw i64 %shr3.i.i, %conv5.i.i
  %mul15.i.i = mul nuw i64 %shr3.i.i, %shr.i
  %shr18.i.i = lshr i64 %mul9.i.i, 32
  %shl21.i.i = shl i64 %mul9.i.i, 32
  %sub.i607.i = sub i64 %rem1.0, %shl21.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %rem1.0, i64 %shl21.i.i)
  %cmp.i608.i = icmp ult i64 %rem1.0, %shl21.i.i
  %.neg.i.i = sext i1 %cmp.i608.i to i64
  %62 = add nuw i64 %mul15.i.i, %shr18.i.i
  %sub1.i.i = sub i64 %aSig.1, %62
  %sub3.i.i = add i64 %sub1.i.i, %.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub3.i.i)
  %cmp192688.i = icmp slt i64 %sub3.i.i, 0
  br i1 %cmp192688.i, label %while.body.lr.ph.i, label %if.end191.i.while.end.i_crit_edge

if.end191.i.while.end.i_crit_edge:                ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end191.i
  %shl195.i = shl i64 %bSig.0, 32
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %z.1691.i = phi i64 [ %storemerge.i, %while.body.lr.ph.i ], [ %sub194.i, %while.body.i.while.body.i_crit_edge ]
  %rem1.0690.i = phi i64 [ %sub.i607.i, %while.body.lr.ph.i ], [ %add.i609.i, %while.body.i.while.body.i_crit_edge ]
  %rem0.0689.i = phi i64 [ %sub3.i.i, %while.body.lr.ph.i ], [ %add3.i.i, %while.body.i.while.body.i_crit_edge ]
  %sub194.i = add i64 %z.1691.i, -4294967296
  %add.i609.i = add i64 %rem1.0690.i, %shl195.i
  %add1.i.i = add i64 %rem0.0689.i, %shr.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i609.i, i64 %rem1.0690.i)
  %cmp.i610.i = icmp ult i64 %add.i609.i, %rem1.0690.i
  %63 = zext i1 %cmp.i610.i to i64
  %add3.i.i = add i64 %add1.i.i, %63
  %cmp192.i = icmp slt i64 %add3.i.i, 0
  br i1 %cmp192.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end191.i.while.end.i_crit_edge
  %rem0.0.lcssa.i = phi i64 [ %sub3.i.i, %if.end191.i.while.end.i_crit_edge ], [ %add3.i.i, %while.body.i.while.end.i_crit_edge ]
  %rem1.0.lcssa.i = phi i64 [ %sub.i607.i, %if.end191.i.while.end.i_crit_edge ], [ %add.i609.i, %while.body.i.while.end.i_crit_edge ]
  %z.1.lcssa.i = phi i64 [ %storemerge.i, %if.end191.i.while.end.i_crit_edge ], [ %sub194.i, %while.body.i.while.end.i_crit_edge ]
  %or198.i = tail call i64 @llvm.fshl.i64(i64 %rem0.0.lcssa.i, i64 %rem1.0.lcssa.i, i64 32) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i387, i64 %or198.i)
  %cmp200.not.i = icmp ugt i64 %shl.i387, %or198.i
  br i1 %cmp200.not.i, label %if.else204.i, label %if.then202.i

if.then202.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %or203.i = or i64 %z.1.lcssa.i, 4294967295
  br label %estimateDiv128To64.exit

if.else204.i:                                     ; preds = %while.end.i
  %conv206.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %or198.i)
  %cmp407.i = icmp ult i64 %or198.i, 4294967296
  br i1 %cmp407.i, label %if.then415.i, label %if.else421.i, !prof !38

if.then415.i:                                     ; preds = %if.else204.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv416.i = trunc i64 %or198.i to i32
  %div419.i = udiv i32 %conv416.i, %conv206.i
  %conv420.i = zext i32 %div419.i to i64
  br label %if.end425.i

if.else421.i:                                     ; preds = %if.else204.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv206.i, i64 %or198.i) #11, !srcloc !37
  %asmresult1.i635.i = extractvalue { i64, i64 } %64, 1
  br label %if.end425.i

if.end425.i:                                      ; preds = %if.else421.i, %if.then415.i
  %rem0.1.i = phi i64 [ %conv420.i, %if.then415.i ], [ %asmresult1.i635.i, %if.else421.i ]
  %or427.i = or i64 %rem0.1.i, %z.1.lcssa.i
  br label %estimateDiv128To64.exit

estimateDiv128To64.exit:                          ; preds = %if.end425.i, %if.then202.i, %if.end58.estimateDiv128To64.exit_crit_edge
  %conv5.i.pre-phi = phi i64 [ %.pre766, %if.end58.estimateDiv128To64.exit_crit_edge ], [ %conv5.i.i, %if.then202.i ], [ %conv5.i.i, %if.end425.i ]
  %retval.0.i = phi i64 [ -1, %if.end58.estimateDiv128To64.exit_crit_edge ], [ %or203.i, %if.then202.i ], [ %or427.i, %if.end425.i ]
  %shr3.i = lshr i64 %retval.0.i, 32
  %conv6.i = and i64 %retval.0.i, 4294967295
  %mul.i393 = mul nuw i64 %conv6.i, %conv5.i.pre-phi
  %mul9.i = mul nuw i64 %shr3.i, %conv5.i.pre-phi
  %mul12.i = mul nuw i64 %conv6.i, %shr.i
  %mul15.i = mul nuw i64 %shr3.i, %shr.i
  %add.i394 = add i64 %mul9.i, %mul12.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i394, i64 %mul12.i)
  %cmp.i = icmp ult i64 %add.i394, %mul12.i
  %shl.i395.neg762 = select i1 %cmp.i, i64 -4294967296, i64 0
  %shr18.i = lshr i64 %add.i394, 32
  %shl21.i = shl i64 %add.i394, 32
  %add22.i = add i64 %shl21.i, %mul.i393
  call void @__sanitizer_cov_trace_cmp8(i64 %add22.i, i64 %shl21.i)
  %cmp23.i = icmp ult i64 %add22.i, %shl21.i
  %.neg763 = sext i1 %cmp23.i to i64
  %sub.i396 = sub i64 %rem1.0, %add22.i
  call void @__sanitizer_cov_trace_cmp8(i64 %rem1.0, i64 %add22.i)
  %cmp.i397 = icmp ult i64 %rem1.0, %add22.i
  %.neg.i = sext i1 %cmp.i397 to i64
  %65 = add i64 %mul15.i, %shr18.i
  %add20.i.neg = sub i64 %aSig.1, %65
  %add26.i.neg = add i64 %add20.i.neg, %shl.i395.neg762
  %sub1.i = add i64 %add26.i.neg, %.neg763
  %sub3.i = add i64 %sub1.i, %.neg.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub3.i)
  %cmp60750 = icmp slt i64 %sub3.i, 0
  br i1 %cmp60750, label %estimateDiv128To64.exit.while.body_crit_edge, label %estimateDiv128To64.exit.while.end_crit_edge

estimateDiv128To64.exit.while.end_crit_edge:      ; preds = %estimateDiv128To64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

estimateDiv128To64.exit.while.body_crit_edge:     ; preds = %estimateDiv128To64.exit
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %estimateDiv128To64.exit.while.body_crit_edge
  %zSig0.0753 = phi i64 [ %dec, %while.body.while.body_crit_edge ], [ %retval.0.i, %estimateDiv128To64.exit.while.body_crit_edge ]
  %rem1.1752 = phi i64 [ %add.i398, %while.body.while.body_crit_edge ], [ %sub.i396, %estimateDiv128To64.exit.while.body_crit_edge ]
  %rem0.0751 = phi i64 [ %add3.i, %while.body.while.body_crit_edge ], [ %sub3.i, %estimateDiv128To64.exit.while.body_crit_edge ]
  %dec = add i64 %zSig0.0753, -1
  %add.i398 = add i64 %rem1.1752, %bSig.0
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i398, i64 %rem1.1752)
  %cmp.i399 = icmp ult i64 %add.i398, %rem1.1752
  %66 = zext i1 %cmp.i399 to i64
  %add3.i = add nsw i64 %rem0.0751, %66
  %cmp60 = icmp slt i64 %add3.i, 0
  br i1 %cmp60, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %estimateDiv128To64.exit.while.end_crit_edge
  %rem1.1.lcssa = phi i64 [ %sub.i396, %estimateDiv128To64.exit.while.end_crit_edge ], [ %add.i398, %while.body.while.end_crit_edge ]
  %zSig0.0.lcssa = phi i64 [ %retval.0.i, %estimateDiv128To64.exit.while.end_crit_edge ], [ %dec, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %bSig.0, i64 %rem1.1.lcssa)
  %cmp.not.i400 = icmp ugt i64 %bSig.0, %rem1.1.lcssa
  br i1 %cmp.not.i400, label %if.end.i404, label %while.end.if.end78_crit_edge

while.end.if.end78_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.end.i404:                                      ; preds = %while.end
  %shl.i402 = and i64 %bSig.0, -4294967296
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i402, i64 %rem1.1.lcssa)
  %cmp1.not.i403 = icmp ugt i64 %shl.i402, %rem1.1.lcssa
  br i1 %cmp1.not.i403, label %if.else.i407, label %if.end.i404.if.end191.i542_crit_edge

if.end.i404.if.end191.i542_crit_edge:             ; preds = %if.end.i404
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191.i542

if.else.i407:                                     ; preds = %if.end.i404
  %conv.i405 = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %rem1.1.lcssa)
  %cmp174.i518 = icmp ult i64 %rem1.1.lcssa, 4294967296
  br i1 %cmp174.i518, label %if.then178.i523, label %if.else184.i525, !prof !38

if.then178.i523:                                  ; preds = %if.else.i407
  call void @__sanitizer_cov_trace_pc() #10
  %conv179.i520 = trunc i64 %rem1.1.lcssa to i32
  %div182.i521 = udiv i32 %conv179.i520, %conv.i405
  %conv183.i522 = zext i32 %div182.i521 to i64
  br label %if.end188.i528

if.else184.i525:                                  ; preds = %if.else.i407
  call void @__sanitizer_cov_trace_pc() #10
  %67 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i405, i64 %rem1.1.lcssa) #11, !srcloc !37
  %asmresult1.i.i524 = extractvalue { i64, i64 } %67, 1
  br label %if.end188.i528

if.end188.i528:                                   ; preds = %if.else184.i525, %if.then178.i523
  %z.0.i526 = phi i64 [ %conv183.i522, %if.then178.i523 ], [ %asmresult1.i.i524, %if.else184.i525 ]
  %shl190.i527 = shl i64 %z.0.i526, 32
  br label %if.end191.i542

if.end191.i542:                                   ; preds = %if.end188.i528, %if.end.i404.if.end191.i542_crit_edge
  %storemerge.i529 = phi i64 [ %shl190.i527, %if.end188.i528 ], [ -4294967296, %if.end.i404.if.end191.i542_crit_edge ]
  %shr3.i.i530 = lshr exact i64 %storemerge.i529, 32
  %mul9.i.i532 = mul nuw i64 %shr3.i.i530, %conv5.i.pre-phi
  %mul15.i.i533 = mul nuw i64 %shr3.i.i530, %shr.i
  %shr18.i.i534 = lshr i64 %mul9.i.i532, 32
  %shl21.i.i535 = shl i64 %mul9.i.i532, 32
  %sub.i607.i536 = sub i64 0, %shl21.i.i535
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl21.i.i535)
  %cmp.i608.i537 = icmp ne i64 %shl21.i.i535, 0
  %.neg.i.i538 = sext i1 %cmp.i608.i537 to i64
  %68 = add i64 %mul15.i.i533, %shr18.i.i534
  %sub1.i.i539 = sub i64 %rem1.1.lcssa, %68
  %sub3.i.i540 = add i64 %sub1.i.i539, %.neg.i.i538
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub3.i.i540)
  %cmp192688.i541 = icmp slt i64 %sub3.i.i540, 0
  br i1 %cmp192688.i541, label %while.body.lr.ph.i544, label %if.end191.i542.while.end.i560_crit_edge

if.end191.i542.while.end.i560_crit_edge:          ; preds = %if.end191.i542
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i560

while.body.lr.ph.i544:                            ; preds = %if.end191.i542
  %shl195.i543 = shl i64 %bSig.0, 32
  br label %while.body.i554

while.body.i554:                                  ; preds = %while.body.i554.while.body.i554_crit_edge, %while.body.lr.ph.i544
  %z.1691.i545 = phi i64 [ %storemerge.i529, %while.body.lr.ph.i544 ], [ %sub194.i548, %while.body.i554.while.body.i554_crit_edge ]
  %rem1.0690.i546 = phi i64 [ %sub.i607.i536, %while.body.lr.ph.i544 ], [ %add.i609.i549, %while.body.i554.while.body.i554_crit_edge ]
  %rem0.0689.i547 = phi i64 [ %sub3.i.i540, %while.body.lr.ph.i544 ], [ %add3.i.i552, %while.body.i554.while.body.i554_crit_edge ]
  %sub194.i548 = add i64 %z.1691.i545, -4294967296
  %add.i609.i549 = add i64 %rem1.0690.i546, %shl195.i543
  %add1.i.i550 = add i64 %rem0.0689.i547, %shr.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i609.i549, i64 %rem1.0690.i546)
  %cmp.i610.i551 = icmp ult i64 %add.i609.i549, %rem1.0690.i546
  %69 = zext i1 %cmp.i610.i551 to i64
  %add3.i.i552 = add i64 %add1.i.i550, %69
  %cmp192.i553 = icmp slt i64 %add3.i.i552, 0
  br i1 %cmp192.i553, label %while.body.i554.while.body.i554_crit_edge, label %while.body.i554.while.end.i560_crit_edge

while.body.i554.while.end.i560_crit_edge:         ; preds = %while.body.i554
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i560

while.body.i554.while.body.i554_crit_edge:        ; preds = %while.body.i554
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i554

while.end.i560:                                   ; preds = %while.body.i554.while.end.i560_crit_edge, %if.end191.i542.while.end.i560_crit_edge
  %rem0.0.lcssa.i555 = phi i64 [ %sub3.i.i540, %if.end191.i542.while.end.i560_crit_edge ], [ %add3.i.i552, %while.body.i554.while.end.i560_crit_edge ]
  %rem1.0.lcssa.i556 = phi i64 [ %sub.i607.i536, %if.end191.i542.while.end.i560_crit_edge ], [ %add.i609.i549, %while.body.i554.while.end.i560_crit_edge ]
  %z.1.lcssa.i557 = phi i64 [ %storemerge.i529, %if.end191.i542.while.end.i560_crit_edge ], [ %sub194.i548, %while.body.i554.while.end.i560_crit_edge ]
  %or198.i558 = tail call i64 @llvm.fshl.i64(i64 %rem0.0.lcssa.i555, i64 %rem1.0.lcssa.i556, i64 32) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i402, i64 %or198.i558)
  %cmp200.not.i559 = icmp ugt i64 %shl.i402, %or198.i558
  br i1 %cmp200.not.i559, label %if.else204.i565, label %if.then202.i562

if.then202.i562:                                  ; preds = %while.end.i560
  call void @__sanitizer_cov_trace_pc() #10
  %or203.i561 = or i64 %z.1.lcssa.i557, 4294967295
  br label %estimateDiv128To64.exit688

if.else204.i565:                                  ; preds = %while.end.i560
  %conv206.i563 = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %or198.i558)
  %cmp407.i676 = icmp ult i64 %or198.i558, 4294967296
  br i1 %cmp407.i676, label %if.then415.i681, label %if.else421.i683, !prof !38

if.then415.i681:                                  ; preds = %if.else204.i565
  call void @__sanitizer_cov_trace_pc() #10
  %conv416.i678 = trunc i64 %or198.i558 to i32
  %div419.i679 = udiv i32 %conv416.i678, %conv206.i563
  %conv420.i680 = zext i32 %div419.i679 to i64
  br label %if.end425.i686

if.else421.i683:                                  ; preds = %if.else204.i565
  call void @__sanitizer_cov_trace_pc() #10
  %70 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv206.i563, i64 %or198.i558) #11, !srcloc !37
  %asmresult1.i635.i682 = extractvalue { i64, i64 } %70, 1
  br label %if.end425.i686

if.end425.i686:                                   ; preds = %if.else421.i683, %if.then415.i681
  %rem0.1.i684 = phi i64 [ %conv420.i680, %if.then415.i681 ], [ %asmresult1.i635.i682, %if.else421.i683 ]
  %or427.i685 = or i64 %rem0.1.i684, %z.1.lcssa.i557
  br label %estimateDiv128To64.exit688

estimateDiv128To64.exit688:                       ; preds = %if.end425.i686, %if.then202.i562
  %retval.0.i687 = phi i64 [ %or427.i685, %if.end425.i686 ], [ %or203.i561, %if.then202.i562 ]
  %shl63 = shl i64 %retval.0.i687, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 9, i64 %shl63)
  %cmp64 = icmp ult i64 %shl63, 9
  br i1 %cmp64, label %if.then66, label %estimateDiv128To64.exit688.if.end78_crit_edge

estimateDiv128To64.exit688.if.end78_crit_edge:    ; preds = %estimateDiv128To64.exit688
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then66:                                        ; preds = %estimateDiv128To64.exit688
  %shr3.i690 = lshr i64 %retval.0.i687, 32
  %conv6.i692 = and i64 %retval.0.i687, 4294967295
  %mul.i693 = mul nuw i64 %conv6.i692, %conv5.i.pre-phi
  %mul9.i694 = mul nuw i64 %shr3.i690, %conv5.i.pre-phi
  %mul12.i695 = mul nuw i64 %conv6.i692, %shr.i
  %mul15.i696 = mul nuw i64 %shr3.i690, %shr.i
  %add.i697 = add i64 %mul9.i694, %mul12.i695
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i697, i64 %mul12.i695)
  %cmp.i698 = icmp ult i64 %add.i697, %mul12.i695
  %shl.i699.neg764 = select i1 %cmp.i698, i64 -4294967296, i64 0
  %shr18.i700 = lshr i64 %add.i697, 32
  %shl21.i701 = shl i64 %add.i697, 32
  %add22.i702 = add i64 %shl21.i701, %mul.i693
  call void @__sanitizer_cov_trace_cmp8(i64 %add22.i702, i64 %shl21.i701)
  %cmp23.i703 = icmp ult i64 %add22.i702, %shl21.i701
  %.neg765 = sext i1 %cmp23.i703 to i64
  %sub.i707 = sub i64 0, %add22.i702
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add22.i702)
  %cmp.i709 = icmp ne i64 %add22.i702, 0
  %.neg.i710 = sext i1 %cmp.i709 to i64
  %71 = add i64 %mul15.i696, %shr18.i700
  %add20.i705.neg = sub i64 %rem1.1.lcssa, %71
  %add26.i706.neg = add i64 %add20.i705.neg, %shl.i699.neg764
  %sub1.i708 = add i64 %add26.i706.neg, %.neg765
  %sub3.i711 = add i64 %sub1.i708, %.neg.i710
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub3.i711)
  %cmp68755 = icmp slt i64 %sub3.i711, 0
  br i1 %cmp68755, label %if.then66.while.body70_crit_edge, label %if.then66.while.end72_crit_edge

if.then66.while.end72_crit_edge:                  ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end72

if.then66.while.body70_crit_edge:                 ; preds = %if.then66
  br label %while.body70

while.body70:                                     ; preds = %while.body70.while.body70_crit_edge, %if.then66.while.body70_crit_edge
  %zSig1.0758 = phi i64 [ %dec71, %while.body70.while.body70_crit_edge ], [ %retval.0.i687, %if.then66.while.body70_crit_edge ]
  %rem2.0757 = phi i64 [ %add.i712, %while.body70.while.body70_crit_edge ], [ %sub.i707, %if.then66.while.body70_crit_edge ]
  %rem1.2756 = phi i64 [ %add3.i714, %while.body70.while.body70_crit_edge ], [ %sub3.i711, %if.then66.while.body70_crit_edge ]
  %dec71 = add i64 %zSig1.0758, -1
  %add.i712 = add i64 %rem2.0757, %bSig.0
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i712, i64 %rem2.0757)
  %cmp.i713 = icmp ult i64 %add.i712, %rem2.0757
  %72 = zext i1 %cmp.i713 to i64
  %add3.i714 = add nsw i64 %rem1.2756, %72
  %cmp68 = icmp slt i64 %add3.i714, 0
  br i1 %cmp68, label %while.body70.while.body70_crit_edge, label %while.body70.while.end72_crit_edge

while.body70.while.end72_crit_edge:               ; preds = %while.body70
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end72

while.body70.while.body70_crit_edge:              ; preds = %while.body70
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body70

while.end72:                                      ; preds = %while.body70.while.end72_crit_edge, %if.then66.while.end72_crit_edge
  %rem1.2.lcssa = phi i64 [ %sub3.i711, %if.then66.while.end72_crit_edge ], [ 0, %while.body70.while.end72_crit_edge ]
  %rem2.0.lcssa = phi i64 [ %sub.i707, %if.then66.while.end72_crit_edge ], [ %add.i712, %while.body70.while.end72_crit_edge ]
  %zSig1.0.lcssa = phi i64 [ %retval.0.i687, %if.then66.while.end72_crit_edge ], [ %dec71, %while.body70.while.end72_crit_edge ]
  %or73 = or i64 %rem2.0.lcssa, %rem1.2.lcssa
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or73)
  %cmp74 = icmp ne i64 %or73, 0
  %73 = zext i1 %cmp74 to i64
  %or77 = or i64 %zSig1.0.lcssa, %73
  br label %if.end78

if.end78:                                         ; preds = %while.end72, %estimateDiv128To64.exit688.if.end78_crit_edge, %while.end.if.end78_crit_edge
  %zSig1.1 = phi i64 [ %or77, %while.end72 ], [ %retval.0.i687, %estimateDiv128To64.exit688.if.end78_crit_edge ], [ -1, %while.end.if.end78_crit_edge ]
  tail call fastcc void @roundAndPackFloatx80(ptr sret(%struct.floatx80) align 4 %agg.result, ptr noundef %roundData, i8 noundef zeroext %xor237, i32 noundef %zExp.0, i64 noundef %zSig0.0.lcssa, i64 noundef %zSig1.1)
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.then52, %if.end40, %invalid, %if.end25, %propagateFloatx80NaN.exit351, %if.end17, %propagateFloatx80NaN.exit301, %propagateFloatx80NaN.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @floatx80_rem(ptr noalias nocapture writeonly sret(%struct.floatx80) align 4 %agg.result, ptr nocapture noundef %roundData, [3 x i32] %a.coerce, [3 x i32] %b.coerce) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [3 x i32] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [3 x i32] %a.coerce, 1
  %a.coerce.fca.2.extract = extractvalue [3 x i32] %a.coerce, 2
  %a.sroa.3.4.insert.ext.i = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.1.4.insert.ext.i = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.1.4.insert.shift.i = shl nuw i64 %a.sroa.1.4.insert.ext.i, 32
  %a.sroa.1.4.insert.insert.i = or i64 %a.sroa.1.4.insert.shift.i, %a.sroa.3.4.insert.ext.i
  %and.i = and i32 %a.coerce.fca.0.extract, 32767
  %conv.i = lshr i32 %a.coerce.fca.0.extract, 15
  %0 = trunc i32 %conv.i to i8
  %conv1.i = and i8 %0, 1
  %a.coerce.fca.1.extract.i235 = extractvalue [3 x i32] %b.coerce, 1
  %a.coerce.fca.2.extract.i236 = extractvalue [3 x i32] %b.coerce, 2
  %a.sroa.3.4.insert.ext.i237 = zext i32 %a.coerce.fca.2.extract.i236 to i64
  %a.sroa.1.4.insert.ext.i238 = zext i32 %a.coerce.fca.1.extract.i235 to i64
  %a.sroa.1.4.insert.shift.i239 = shl nuw i64 %a.sroa.1.4.insert.ext.i238, 32
  %a.sroa.1.4.insert.insert.i240 = or i64 %a.sroa.1.4.insert.shift.i239, %a.sroa.3.4.insert.ext.i237
  %a.coerce.fca.0.extract.i241 = extractvalue [3 x i32] %b.coerce, 0
  %and.i242 = and i32 %a.coerce.fca.0.extract.i241, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 32767
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %shl.mask = and i64 %a.sroa.1.4.insert.insert.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %tobool.not = icmp eq i64 %shl.mask, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then.floatx80_is_nan.exit.i_crit_edge

if.then.floatx80_is_nan.exit.i_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80_is_nan.exit.i

lor.lhs.false:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i242)
  %cmp6 = icmp ne i32 %and.i242, 32767
  %shl7.mask = and i64 %a.sroa.1.4.insert.insert.i240, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl7.mask)
  %tobool8.not = icmp eq i64 %shl7.mask, 0
  %or.cond761 = select i1 %cmp6, i1 true, i1 %tobool8.not
  br i1 %or.cond761, label %lor.lhs.false.invalid_crit_edge, label %lor.lhs.false.floatx80_is_nan.exit.i_crit_edge

lor.lhs.false.floatx80_is_nan.exit.i_crit_edge:   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80_is_nan.exit.i

lor.lhs.false.invalid_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %invalid

floatx80_is_nan.exit.i:                           ; preds = %lor.lhs.false.floatx80_is_nan.exit.i_crit_edge, %if.then.floatx80_is_nan.exit.i_crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %1 = shl i64 %a.sroa.1.4.insert.ext.i, 33
  %2 = shl nuw nsw i64 %a.sroa.3.4.insert.ext.i, 1
  %shl.i.i = or i64 %1, %2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i.i)
  %tobool.i.i.not = icmp eq i64 %shl.i.i, 0
  %shl.mask.i.i = and i64 %a.sroa.1.4.insert.insert.i, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i.i)
  %tobool.not.i.i = icmp ne i64 %shl.mask.i.i, 0
  %and.i58.i = and i64 %a.sroa.1.4.insert.insert.i, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i, i64 %and.i58.i)
  %cmp4.i.i = icmp eq i64 %a.sroa.1.4.insert.insert.i, %and.i58.i
  %3 = and i1 %tobool.not.i.i, %cmp4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i242)
  %cmp.i62.i = icmp eq i32 %and.i242, 32767
  br i1 %cmp.i62.i, label %floatx80_is_nan.exit69.i, label %floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge

floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge: ; preds = %floatx80_is_nan.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80_is_signaling_nan.exit84.i

floatx80_is_nan.exit69.i:                         ; preds = %floatx80_is_nan.exit.i
  %4 = shl i64 %a.sroa.1.4.insert.ext.i238, 33
  %5 = shl nuw nsw i64 %a.sroa.3.4.insert.ext.i237, 1
  %shl.i65.i = or i64 %4, %5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i65.i)
  %tobool.i66.i = icmp ne i64 %shl.i65.i, 0
  %shl.mask.i77.i = and i64 %a.sroa.1.4.insert.insert.i240, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i77.i)
  %tobool.not.i78.i = icmp eq i64 %shl.mask.i77.i, 0
  br i1 %tobool.not.i78.i, label %floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge, label %land.rhs.i82.i

floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge: ; preds = %floatx80_is_nan.exit69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %floatx80_is_signaling_nan.exit84.i

land.rhs.i82.i:                                   ; preds = %floatx80_is_nan.exit69.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.i80.i = and i64 %a.sroa.1.4.insert.insert.i240, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i240, i64 %and.i80.i)
  %cmp4.i81.i = icmp eq i64 %a.sroa.1.4.insert.insert.i240, %and.i80.i
  br label %floatx80_is_signaling_nan.exit84.i

floatx80_is_signaling_nan.exit84.i:               ; preds = %land.rhs.i82.i, %floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge, %floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge
  %conv2.i6896.shrunk.i = phi i1 [ %tobool.i66.i, %floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge ], [ %tobool.i66.i, %land.rhs.i82.i ], [ false, %floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge ]
  %6 = phi i1 [ false, %floatx80_is_nan.exit69.i.floatx80_is_signaling_nan.exit84.i_crit_edge ], [ %cmp4.i81.i, %land.rhs.i82.i ], [ false, %floatx80_is_nan.exit.i.floatx80_is_signaling_nan.exit84.i_crit_edge ]
  %or75397.i = or i1 %3, %6
  br i1 %or75397.i, label %if.then.i, label %floatx80_is_signaling_nan.exit84.i.propagateFloatx80NaN.exit_crit_edge

floatx80_is_signaling_nan.exit84.i.propagateFloatx80NaN.exit_crit_edge: ; preds = %floatx80_is_signaling_nan.exit84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloatx80NaN.exit

if.then.i:                                        ; preds = %floatx80_is_signaling_nan.exit84.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8, !noalias !171
  br label %propagateFloatx80NaN.exit

propagateFloatx80NaN.exit:                        ; preds = %if.then.i, %floatx80_is_signaling_nan.exit84.i.propagateFloatx80NaN.exit_crit_edge
  %and5498.i = and i1 %3, %conv2.i6896.shrunk.i
  %7 = select i1 %tobool.i.i.not, i1 true, i1 %and5498.i
  %b.coerce.fca.0.extract.sink.i = select i1 %7, i32 %a.coerce.fca.0.extract.i241, i32 %a.coerce.fca.0.extract
  %or5.sink.i.v = select i1 %7, i64 %a.sroa.1.4.insert.insert.i240, i64 %a.sroa.1.4.insert.insert.i
  %or5.sink.i = or i64 %or5.sink.i.v, -4611686018427387904
  %8 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %b.coerce.fca.0.extract.sink.i, ptr %agg.result, align 4, !alias.scope !171
  %b.sroa.5.0.agg.result.sroa_idx.i = getelementptr inbounds i8, ptr %agg.result, i32 4
  %9 = ptrtoint ptr %b.sroa.5.0.agg.result.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %or5.sink.i, ptr %b.sroa.5.0.agg.result.sroa_idx.i, align 4, !alias.scope !171
  br label %cleanup

if.end10:                                         ; preds = %entry
  %10 = zext i32 %and.i242 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %and.i242, label %if.end10.if.end24_crit_edge [
    i32 32767, label %if.then12
    i32 0, label %if.then19
  ]

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then12:                                        ; preds = %if.end10
  %shl13.mask = and i64 %a.sroa.1.4.insert.insert.i240, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl13.mask)
  %tobool14.not = icmp eq i64 %shl13.mask, 0
  br i1 %tobool14.not, label %if.end16, label %floatx80_is_nan.exit69.i281

floatx80_is_nan.exit69.i281:                      ; preds = %if.then12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %shl.mask.i77.i279 = and i64 %a.sroa.1.4.insert.insert.i240, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i77.i279)
  %tobool.not.i78.i280 = icmp ne i64 %shl.mask.i77.i279, 0
  %and.i80.i282 = and i64 %a.sroa.1.4.insert.insert.i240, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i240, i64 %and.i80.i282)
  %cmp4.i81.i283 = icmp eq i64 %a.sroa.1.4.insert.insert.i240, %and.i80.i282
  %11 = and i1 %tobool.not.i78.i280, %cmp4.i81.i283
  br i1 %11, label %if.then.i288, label %floatx80_is_nan.exit69.i281.propagateFloatx80NaN.exit297_crit_edge

floatx80_is_nan.exit69.i281.propagateFloatx80NaN.exit297_crit_edge: ; preds = %floatx80_is_nan.exit69.i281
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloatx80NaN.exit297

if.then.i288:                                     ; preds = %floatx80_is_nan.exit69.i281
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8, !noalias !174
  br label %propagateFloatx80NaN.exit297

propagateFloatx80NaN.exit297:                     ; preds = %if.then.i288, %floatx80_is_nan.exit69.i281.propagateFloatx80NaN.exit297_crit_edge
  %or5.i289 = or i64 %a.sroa.1.4.insert.insert.i240, -4611686018427387904
  %12 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %a.coerce.fca.0.extract.i241, ptr %agg.result, align 4, !alias.scope !174
  %b.sroa.5.0.agg.result.sroa_idx.i296 = getelementptr inbounds i8, ptr %agg.result, i32 4
  %13 = ptrtoint ptr %b.sroa.5.0.agg.result.sroa_idx.i296 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %or5.i289, ptr %b.sroa.5.0.agg.result.sroa_idx.i296, align 4, !alias.scope !174
  br label %cleanup

if.end16:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %a.coerce.fca.0.extract, ptr %agg.result, align 4
  %a.sroa.9.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 4
  %15 = ptrtoint ptr %a.sroa.9.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %a.coerce.fca.1.extract, ptr %a.sroa.9.0.agg.result.sroa_idx, align 4
  %a.sroa.15.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 8
  %16 = ptrtoint ptr %a.sroa.15.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %a.coerce.fca.2.extract, ptr %a.sroa.15.0.agg.result.sroa_idx, align 4
  br label %cleanup

if.then19:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a.sroa.1.4.insert.insert.i240)
  %cmp20 = icmp eq i64 %a.sroa.1.4.insert.insert.i240, 0
  br i1 %cmp20, label %if.then19.invalid_crit_edge, label %if.end23

if.then19.invalid_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %invalid

invalid:                                          ; preds = %if.then19.invalid_crit_edge, %lor.lhs.false.invalid_crit_edge
  %exception = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %17 = ptrtoint ptr %exception to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %exception, align 1
  %19 = or i8 %18, 1
  store i8 %19, ptr %exception, align 1
  %20 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %agg.result, align 4
  %z.sroa.5.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 2
  %21 = ptrtoint ptr %z.sroa.5.0.agg.result.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %z.sroa.5.0.agg.result.sroa_idx, align 2
  %z.sroa.7.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 4
  %22 = ptrtoint ptr %z.sroa.7.0.agg.result.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 -1, ptr %z.sroa.7.0.agg.result.sroa_idx, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %a.sroa.1.4.insert.insert.i240)
  %cmp.i.i298 = icmp ult i64 %a.sroa.1.4.insert.insert.i240, 4294967296
  %a.addr.0.off0.v.i.i = select i1 %cmp.i.i298, i32 %a.coerce.fca.2.extract.i236, i32 %a.coerce.fca.1.extract.i235
  %shiftCount.0.i.i = select i1 %cmp.i.i298, i8 32, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %a.addr.0.off0.v.i.i)
  %cmp.i.i.i = icmp ult i32 %a.addr.0.off0.v.i.i, 65536
  %shl.i.i.i = shl i32 %a.addr.0.off0.v.i.i, 16
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %shl.i.i.i, i32 %a.addr.0.off0.v.i.i
  %spec.select21.i.i.i = select i1 %cmp.i.i.i, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i.i)
  %cmp2.i.i.i = icmp ult i32 %spec.select.i.i.i, 16777216
  %23 = or i8 %spec.select21.i.i.i, 8
  %shl8.i.i.i = shl i32 %spec.select.i.i.i, 8
  %a.addr.1.i.i.i = select i1 %cmp2.i.i.i, i32 %shl8.i.i.i, i32 %spec.select.i.i.i
  %shiftCount.1.i.i.i = select i1 %cmp2.i.i.i, i8 %23, i8 %spec.select21.i.i.i
  %shr.i.i.i = lshr i32 %a.addr.1.i.i.i, 24
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i.i
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.i.i, align 1
  %add12.i.i.i = or i8 %shiftCount.1.i.i.i, %shiftCount.0.i.i
  %add5.i.i = add i8 %add12.i.i.i, %25
  %conv.i299 = sext i8 %add5.i.i to i32
  %sh_prom.i = zext i32 %conv.i299 to i64
  %shl.i = shl i64 %a.sroa.1.4.insert.insert.i240, %sh_prom.i
  %sub.i = sub nsw i32 1, %conv.i299
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end10.if.end24_crit_edge
  %bExp.0 = phi i32 [ %and.i242, %if.end10.if.end24_crit_edge ], [ %sub.i, %if.end23 ]
  %bSig.0 = phi i64 [ %a.sroa.1.4.insert.insert.i240, %if.end10.if.end24_crit_edge ], [ %shl.i, %if.end23 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp25 = icmp eq i32 %and.i, 0
  br i1 %cmp25, label %if.then27, label %if.end24.if.end33_crit_edge

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then27:                                        ; preds = %if.end24
  %shl28.mask = and i64 %a.sroa.1.4.insert.insert.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl28.mask)
  %cmp29 = icmp eq i64 %shl28.mask, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %a.coerce.fca.0.extract, ptr %agg.result, align 4
  %a.sroa.9.0.agg.result.sroa_idx218 = getelementptr inbounds i8, ptr %agg.result, i32 4
  %27 = ptrtoint ptr %a.sroa.9.0.agg.result.sroa_idx218 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %a.coerce.fca.1.extract, ptr %a.sroa.9.0.agg.result.sroa_idx218, align 4
  %a.sroa.15.0.agg.result.sroa_idx222 = getelementptr inbounds i8, ptr %agg.result, i32 8
  %28 = ptrtoint ptr %a.sroa.15.0.agg.result.sroa_idx222 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %a.coerce.fca.2.extract, ptr %a.sroa.15.0.agg.result.sroa_idx222, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %a.sroa.1.4.insert.insert.i)
  %cmp.i.i300 = icmp ult i64 %a.sroa.1.4.insert.insert.i, 4294967296
  %a.addr.0.off0.v.i.i302 = select i1 %cmp.i.i300, i32 %a.coerce.fca.2.extract, i32 %a.coerce.fca.1.extract
  %shiftCount.0.i.i304 = select i1 %cmp.i.i300, i8 32, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %a.addr.0.off0.v.i.i302)
  %cmp.i.i.i305 = icmp ult i32 %a.addr.0.off0.v.i.i302, 65536
  %shl.i.i.i306 = shl i32 %a.addr.0.off0.v.i.i302, 16
  %spec.select.i.i.i307 = select i1 %cmp.i.i.i305, i32 %shl.i.i.i306, i32 %a.addr.0.off0.v.i.i302
  %spec.select21.i.i.i308 = select i1 %cmp.i.i.i305, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i.i307)
  %cmp2.i.i.i309 = icmp ult i32 %spec.select.i.i.i307, 16777216
  %29 = or i8 %spec.select21.i.i.i308, 8
  %shl8.i.i.i310 = shl i32 %spec.select.i.i.i307, 8
  %a.addr.1.i.i.i311 = select i1 %cmp2.i.i.i309, i32 %shl8.i.i.i310, i32 %spec.select.i.i.i307
  %shiftCount.1.i.i.i312 = select i1 %cmp2.i.i.i309, i8 %29, i8 %spec.select21.i.i.i308
  %shr.i.i.i313 = lshr i32 %a.addr.1.i.i.i311, 24
  %arrayidx.i.i.i314 = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i.i313
  %30 = ptrtoint ptr %arrayidx.i.i.i314 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i.i314, align 1
  %add12.i.i.i315 = or i8 %shiftCount.1.i.i.i312, %shiftCount.0.i.i304
  %add5.i.i316 = add i8 %add12.i.i.i315, %31
  %conv.i317 = sext i8 %add5.i.i316 to i32
  %sh_prom.i318 = zext i32 %conv.i317 to i64
  %shl.i319 = shl i64 %a.sroa.1.4.insert.insert.i, %sh_prom.i318
  %sub.i320 = sub nsw i32 1, %conv.i317
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end24.if.end33_crit_edge
  %aExp.0 = phi i32 [ %sub.i320, %if.end32 ], [ %and.i, %if.end24.if.end33_crit_edge ]
  %aSig0.0 = phi i64 [ %shl.i319, %if.end32 ], [ %a.sroa.1.4.insert.insert.i, %if.end24.if.end33_crit_edge ]
  %or34 = or i64 %bSig.0, -9223372036854775808
  %sub = sub nsw i32 %aExp.0, %bExp.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp35 = icmp slt i32 %sub, 0
  br i1 %cmp35, label %if.then37, label %if.end42

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp38.not = icmp eq i32 %sub, -1
  br i1 %cmp38.not, label %while.end.thread, label %if.then40

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %a.coerce.fca.0.extract, ptr %agg.result, align 4
  %a.sroa.9.0.agg.result.sroa_idx220 = getelementptr inbounds i8, ptr %agg.result, i32 4
  %33 = ptrtoint ptr %a.sroa.9.0.agg.result.sroa_idx220 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %a.coerce.fca.1.extract, ptr %a.sroa.9.0.agg.result.sroa_idx220, align 4
  %a.sroa.15.0.agg.result.sroa_idx224 = getelementptr inbounds i8, ptr %agg.result, i32 8
  %34 = ptrtoint ptr %a.sroa.15.0.agg.result.sroa_idx224 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %a.coerce.fca.2.extract, ptr %a.sroa.15.0.agg.result.sroa_idx224, align 4
  br label %cleanup

while.end.thread:                                 ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %shr8.i = lshr i64 %aSig0.0, 1
  %shl.i321 = shl i64 %aSig0.0, 63
  br label %if.end79

if.end42:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_cmp8(i64 %aSig0.0, i64 %or34)
  %cmp43 = icmp uge i64 %aSig0.0, %or34
  %35 = zext i1 %cmp43 to i64
  %sub48 = select i1 %cmp43, i64 %or34, i64 0
  %spec.select = sub i64 %aSig0.0, %sub48
  %sub50 = add nsw i32 %sub, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub)
  %cmp51765 = icmp ugt i32 %sub, 64
  br i1 %cmp51765, label %while.body.lr.ph, label %if.end42.while.end_crit_edge

if.end42.while.end_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end42
  %shr.i = lshr i64 %or34, 32
  %shl.i322 = and i64 %or34, -4294967296
  %conv.i323 = trunc i64 %shr.i to i32
  %conv5.i.i = and i64 %bSig.0, 4294967295
  %shl195.i = shl i64 %bSig.0, 32
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %expDiff.1768 = phi i32 [ %sub50, %while.body.lr.ph ], [ %sub57, %while.cond.while.body_crit_edge ]
  %aSig1.1767 = phi i64 [ 0, %while.body.lr.ph ], [ %shl.i332, %while.cond.while.body_crit_edge ]
  %aSig0.3766 = phi i64 [ %spec.select, %while.body.lr.ph ], [ %or.i334, %while.cond.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %or34, i64 %aSig0.3766)
  %cmp.not.i = icmp ugt i64 %or34, %aSig0.3766
  br i1 %cmp.not.i, label %if.end.i, label %while.body.estimateDiv128To64.exit.thread_crit_edge

while.body.estimateDiv128To64.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %estimateDiv128To64.exit.thread

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i322, i64 %aSig0.3766)
  %cmp1.not.i = icmp ugt i64 %shl.i322, %aSig0.3766
  br i1 %cmp1.not.i, label %if.else172.i, label %if.end.i.if.end191.i_crit_edge

if.end.i.if.end191.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191.i

if.else172.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %aSig0.3766)
  %cmp174.i = icmp ult i64 %aSig0.3766, 4294967296
  br i1 %cmp174.i, label %if.then178.i, label %if.else184.i, !prof !38

if.then178.i:                                     ; preds = %if.else172.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv179.i = trunc i64 %aSig0.3766 to i32
  %div182.i = udiv i32 %conv179.i, %conv.i323
  %conv183.i = zext i32 %div182.i to i64
  br label %if.end188.i

if.else184.i:                                     ; preds = %if.else172.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i323, i64 %aSig0.3766) #11, !srcloc !37
  %asmresult1.i.i = extractvalue { i64, i64 } %36, 1
  br label %if.end188.i

if.end188.i:                                      ; preds = %if.else184.i, %if.then178.i
  %z.0.i = phi i64 [ %conv183.i, %if.then178.i ], [ %asmresult1.i.i, %if.else184.i ]
  %shl190.i = shl i64 %z.0.i, 32
  br label %if.end191.i

if.end191.i:                                      ; preds = %if.end188.i, %if.end.i.if.end191.i_crit_edge
  %storemerge.i = phi i64 [ %shl190.i, %if.end188.i ], [ -4294967296, %if.end.i.if.end191.i_crit_edge ]
  %shr3.i.i = lshr exact i64 %storemerge.i, 32
  %mul9.i.i = mul nuw i64 %shr3.i.i, %conv5.i.i
  %mul15.i.i = mul nuw i64 %shr3.i.i, %shr.i
  %shr18.i.i = lshr i64 %mul9.i.i, 32
  %shl21.i.i = shl i64 %mul9.i.i, 32
  %sub.i607.i = sub i64 %aSig1.1767, %shl21.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %aSig1.1767, i64 %shl21.i.i)
  %cmp.i608.i = icmp ult i64 %aSig1.1767, %shl21.i.i
  %.neg.i.i = sext i1 %cmp.i608.i to i64
  %37 = add i64 %mul15.i.i, %shr18.i.i
  %sub1.i.i = sub i64 %aSig0.3766, %37
  %sub3.i.i = add i64 %sub1.i.i, %.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub3.i.i)
  %cmp192688.i = icmp slt i64 %sub3.i.i, 0
  br i1 %cmp192688.i, label %if.end191.i.while.body.i_crit_edge, label %if.end191.i.while.end.i_crit_edge

if.end191.i.while.end.i_crit_edge:                ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end191.i.while.body.i_crit_edge:               ; preds = %if.end191.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end191.i.while.body.i_crit_edge
  %z.1691.i = phi i64 [ %sub194.i, %while.body.i.while.body.i_crit_edge ], [ %storemerge.i, %if.end191.i.while.body.i_crit_edge ]
  %rem1.0690.i = phi i64 [ %add.i609.i, %while.body.i.while.body.i_crit_edge ], [ %sub.i607.i, %if.end191.i.while.body.i_crit_edge ]
  %rem0.0689.i = phi i64 [ %add3.i.i, %while.body.i.while.body.i_crit_edge ], [ %sub3.i.i, %if.end191.i.while.body.i_crit_edge ]
  %sub194.i = add i64 %z.1691.i, -4294967296
  %add.i609.i = add i64 %rem1.0690.i, %shl195.i
  %add1.i.i = add i64 %rem0.0689.i, %shr.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i609.i, i64 %rem1.0690.i)
  %cmp.i610.i = icmp ult i64 %add.i609.i, %rem1.0690.i
  %38 = zext i1 %cmp.i610.i to i64
  %add3.i.i = add i64 %add1.i.i, %38
  %cmp192.i = icmp slt i64 %add3.i.i, 0
  br i1 %cmp192.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end191.i.while.end.i_crit_edge
  %rem0.0.lcssa.i = phi i64 [ %sub3.i.i, %if.end191.i.while.end.i_crit_edge ], [ %add3.i.i, %while.body.i.while.end.i_crit_edge ]
  %rem1.0.lcssa.i = phi i64 [ %sub.i607.i, %if.end191.i.while.end.i_crit_edge ], [ %add.i609.i, %while.body.i.while.end.i_crit_edge ]
  %z.1.lcssa.i = phi i64 [ %storemerge.i, %if.end191.i.while.end.i_crit_edge ], [ %sub194.i, %while.body.i.while.end.i_crit_edge ]
  %or198.i = tail call i64 @llvm.fshl.i64(i64 %rem0.0.lcssa.i, i64 %rem1.0.lcssa.i, i64 32) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i322, i64 %or198.i)
  %cmp200.not.i = icmp ugt i64 %shl.i322, %or198.i
  br i1 %cmp200.not.i, label %if.else405.i, label %if.then202.i

if.then202.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %or203.i = or i64 %z.1.lcssa.i, 4294967295
  br label %estimateDiv128To64.exit.thread

if.else405.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %or198.i)
  %cmp407.i = icmp ult i64 %or198.i, 4294967296
  br i1 %cmp407.i, label %if.then415.i, label %if.else421.i, !prof !38

if.then415.i:                                     ; preds = %if.else405.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv416.i = trunc i64 %or198.i to i32
  %div419.i = udiv i32 %conv416.i, %conv.i323
  %conv420.i = zext i32 %div419.i to i64
  br label %estimateDiv128To64.exit

if.else421.i:                                     ; preds = %if.else405.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i323, i64 %or198.i) #11, !srcloc !37
  %asmresult1.i635.i = extractvalue { i64, i64 } %39, 1
  br label %estimateDiv128To64.exit

estimateDiv128To64.exit:                          ; preds = %if.else421.i, %if.then415.i
  %rem0.1.i = phi i64 [ %conv420.i, %if.then415.i ], [ %asmresult1.i635.i, %if.else421.i ]
  %or427.i = or i64 %rem0.1.i, %z.1.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %or427.i)
  %cmp54 = icmp ugt i64 %or427.i, 2
  br i1 %cmp54, label %estimateDiv128To64.exit.estimateDiv128To64.exit.thread_crit_edge, label %estimateDiv128To64.exit.while.cond_crit_edge

estimateDiv128To64.exit.while.cond_crit_edge:     ; preds = %estimateDiv128To64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

estimateDiv128To64.exit.estimateDiv128To64.exit.thread_crit_edge: ; preds = %estimateDiv128To64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %estimateDiv128To64.exit.thread

estimateDiv128To64.exit.thread:                   ; preds = %estimateDiv128To64.exit.estimateDiv128To64.exit.thread_crit_edge, %if.then202.i, %while.body.estimateDiv128To64.exit.thread_crit_edge
  %sub56752.in = phi i64 [ %or427.i, %estimateDiv128To64.exit.estimateDiv128To64.exit.thread_crit_edge ], [ %or203.i, %if.then202.i ], [ -1, %while.body.estimateDiv128To64.exit.thread_crit_edge ]
  %sub56752 = add i64 %sub56752.in, -2
  br label %while.cond

while.cond:                                       ; preds = %estimateDiv128To64.exit.thread, %estimateDiv128To64.exit.while.cond_crit_edge
  %40 = phi i64 [ %sub56752, %estimateDiv128To64.exit.thread ], [ 0, %estimateDiv128To64.exit.while.cond_crit_edge ]
  %shr3.i = lshr i64 %40, 32
  %conv6.i = and i64 %40, 4294967295
  %mul.i327 = mul nuw i64 %conv6.i, %conv5.i.i
  %mul9.i = mul nuw i64 %shr3.i, %conv5.i.i
  %mul12.i = mul nuw i64 %conv6.i, %shr.i
  %mul15.i = mul nuw i64 %shr3.i, %shr.i
  %add.i328 = add i64 %mul9.i, %mul12.i
  %shr18.i = lshr i64 %add.i328, 32
  %shl21.i = shl i64 %add.i328, 32
  %add22.i = add i64 %shl21.i, %mul.i327
  call void @__sanitizer_cov_trace_cmp8(i64 %add22.i, i64 %shl21.i)
  %cmp23.i = icmp ult i64 %add22.i, %shl21.i
  %.neg = sext i1 %cmp23.i to i64
  %sub.i330 = sub i64 %aSig1.1767, %add22.i
  call void @__sanitizer_cov_trace_cmp8(i64 %aSig1.1767, i64 %add22.i)
  %cmp.i331 = icmp ult i64 %aSig1.1767, %add22.i
  %.neg.i = sext i1 %cmp.i331 to i64
  %41 = add i64 %mul15.i, %shr18.i
  %add26.i.neg = sub i64 %aSig0.3766, %41
  %sub1.i = add i64 %add26.i.neg, %.neg
  %sub3.i = add i64 %sub1.i, %.neg.i
  %shl.i332 = shl i64 %sub.i330, 62
  %or.i334 = tail call i64 @llvm.fshl.i64(i64 %sub3.i, i64 %sub.i330, i64 62)
  %sub57 = add nsw i32 %expDiff.1768, -62
  %cmp51 = icmp sgt i32 %expDiff.1768, 62
  br i1 %cmp51, label %while.cond.while.body_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end42.while.end_crit_edge
  %aSig0.3.lcssa = phi i64 [ %spec.select, %if.end42.while.end_crit_edge ], [ %or.i334, %while.cond.while.end_crit_edge ]
  %aSig1.1.lcssa = phi i64 [ 0, %if.end42.while.end_crit_edge ], [ %shl.i332, %while.cond.while.end_crit_edge ]
  %expDiff.1.lcssa = phi i32 [ %sub50, %if.end42.while.end_crit_edge ], [ %sub57, %while.cond.while.end_crit_edge ]
  %q.0.lcssa = phi i64 [ %35, %if.end42.while.end_crit_edge ], [ %40, %while.cond.while.end_crit_edge ]
  %add = add nsw i32 %expDiff.1.lcssa, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %expDiff.1.lcssa)
  %cmp58 = icmp sgt i32 %expDiff.1.lcssa, -64
  br i1 %cmp58, label %if.then60, label %while.end.if.end79_crit_edge

while.end.if.end79_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then60:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_cmp8(i64 %or34, i64 %aSig0.3.lcssa)
  %cmp.not.i336 = icmp ugt i64 %or34, %aSig0.3.lcssa
  %shr.i337 = lshr i64 %or34, 32
  br i1 %cmp.not.i336, label %if.end.i340, label %if.then60.estimateDiv128To64.exit624.thread_crit_edge

if.then60.estimateDiv128To64.exit624.thread_crit_edge: ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = and i64 %bSig.0, 4294967295
  br label %estimateDiv128To64.exit624.thread

if.end.i340:                                      ; preds = %if.then60
  %shl.i338 = and i64 %or34, -4294967296
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i338, i64 %aSig0.3.lcssa)
  %cmp1.not.i339 = icmp ugt i64 %shl.i338, %aSig0.3.lcssa
  br i1 %cmp1.not.i339, label %if.else.i343, label %if.end.i340.if.end191.i478_crit_edge

if.end.i340.if.end191.i478_crit_edge:             ; preds = %if.end.i340
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191.i478

if.else.i343:                                     ; preds = %if.end.i340
  %conv.i341 = trunc i64 %shr.i337 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %aSig0.3.lcssa)
  %cmp174.i454 = icmp ult i64 %aSig0.3.lcssa, 4294967296
  br i1 %cmp174.i454, label %if.then178.i459, label %if.else184.i461, !prof !38

if.then178.i459:                                  ; preds = %if.else.i343
  call void @__sanitizer_cov_trace_pc() #10
  %conv179.i456 = trunc i64 %aSig0.3.lcssa to i32
  %div182.i457 = udiv i32 %conv179.i456, %conv.i341
  %conv183.i458 = zext i32 %div182.i457 to i64
  br label %if.end188.i464

if.else184.i461:                                  ; preds = %if.else.i343
  call void @__sanitizer_cov_trace_pc() #10
  %42 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i341, i64 %aSig0.3.lcssa) #11, !srcloc !37
  %asmresult1.i.i460 = extractvalue { i64, i64 } %42, 1
  br label %if.end188.i464

if.end188.i464:                                   ; preds = %if.else184.i461, %if.then178.i459
  %z.0.i462 = phi i64 [ %conv183.i458, %if.then178.i459 ], [ %asmresult1.i.i460, %if.else184.i461 ]
  %shl190.i463 = shl i64 %z.0.i462, 32
  br label %if.end191.i478

if.end191.i478:                                   ; preds = %if.end188.i464, %if.end.i340.if.end191.i478_crit_edge
  %storemerge.i465 = phi i64 [ %shl190.i463, %if.end188.i464 ], [ -4294967296, %if.end.i340.if.end191.i478_crit_edge ]
  %shr3.i.i466 = lshr exact i64 %storemerge.i465, 32
  %conv5.i.i467 = and i64 %bSig.0, 4294967295
  %mul9.i.i468 = mul nuw i64 %shr3.i.i466, %conv5.i.i467
  %mul15.i.i469 = mul nuw i64 %shr3.i.i466, %shr.i337
  %shr18.i.i470 = lshr i64 %mul9.i.i468, 32
  %shl21.i.i471 = shl i64 %mul9.i.i468, 32
  %sub.i607.i472 = sub i64 %aSig1.1.lcssa, %shl21.i.i471
  call void @__sanitizer_cov_trace_cmp8(i64 %aSig1.1.lcssa, i64 %shl21.i.i471)
  %cmp.i608.i473 = icmp ult i64 %aSig1.1.lcssa, %shl21.i.i471
  %.neg.i.i474 = sext i1 %cmp.i608.i473 to i64
  %43 = add nuw i64 %mul15.i.i469, %shr18.i.i470
  %sub1.i.i475 = sub i64 %aSig0.3.lcssa, %43
  %sub3.i.i476 = add i64 %sub1.i.i475, %.neg.i.i474
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub3.i.i476)
  %cmp192688.i477 = icmp slt i64 %sub3.i.i476, 0
  br i1 %cmp192688.i477, label %while.body.lr.ph.i480, label %if.end191.i478.while.end.i496_crit_edge

if.end191.i478.while.end.i496_crit_edge:          ; preds = %if.end191.i478
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i496

while.body.lr.ph.i480:                            ; preds = %if.end191.i478
  %shl195.i479 = shl i64 %bSig.0, 32
  br label %while.body.i490

while.body.i490:                                  ; preds = %while.body.i490.while.body.i490_crit_edge, %while.body.lr.ph.i480
  %z.1691.i481 = phi i64 [ %storemerge.i465, %while.body.lr.ph.i480 ], [ %sub194.i484, %while.body.i490.while.body.i490_crit_edge ]
  %rem1.0690.i482 = phi i64 [ %sub.i607.i472, %while.body.lr.ph.i480 ], [ %add.i609.i485, %while.body.i490.while.body.i490_crit_edge ]
  %rem0.0689.i483 = phi i64 [ %sub3.i.i476, %while.body.lr.ph.i480 ], [ %add3.i.i488, %while.body.i490.while.body.i490_crit_edge ]
  %sub194.i484 = add i64 %z.1691.i481, -4294967296
  %add.i609.i485 = add i64 %rem1.0690.i482, %shl195.i479
  %add1.i.i486 = add i64 %rem0.0689.i483, %shr.i337
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i609.i485, i64 %rem1.0690.i482)
  %cmp.i610.i487 = icmp ult i64 %add.i609.i485, %rem1.0690.i482
  %44 = zext i1 %cmp.i610.i487 to i64
  %add3.i.i488 = add i64 %add1.i.i486, %44
  %cmp192.i489 = icmp slt i64 %add3.i.i488, 0
  br i1 %cmp192.i489, label %while.body.i490.while.body.i490_crit_edge, label %while.body.i490.while.end.i496_crit_edge

while.body.i490.while.end.i496_crit_edge:         ; preds = %while.body.i490
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i496

while.body.i490.while.body.i490_crit_edge:        ; preds = %while.body.i490
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i490

while.end.i496:                                   ; preds = %while.body.i490.while.end.i496_crit_edge, %if.end191.i478.while.end.i496_crit_edge
  %rem0.0.lcssa.i491 = phi i64 [ %sub3.i.i476, %if.end191.i478.while.end.i496_crit_edge ], [ %add3.i.i488, %while.body.i490.while.end.i496_crit_edge ]
  %rem1.0.lcssa.i492 = phi i64 [ %sub.i607.i472, %if.end191.i478.while.end.i496_crit_edge ], [ %add.i609.i485, %while.body.i490.while.end.i496_crit_edge ]
  %z.1.lcssa.i493 = phi i64 [ %storemerge.i465, %if.end191.i478.while.end.i496_crit_edge ], [ %sub194.i484, %while.body.i490.while.end.i496_crit_edge ]
  %or198.i494 = tail call i64 @llvm.fshl.i64(i64 %rem0.0.lcssa.i491, i64 %rem1.0.lcssa.i492, i64 32) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i338, i64 %or198.i494)
  %cmp200.not.i495 = icmp ugt i64 %shl.i338, %or198.i494
  br i1 %cmp200.not.i495, label %if.else204.i501, label %if.then202.i498

if.then202.i498:                                  ; preds = %while.end.i496
  call void @__sanitizer_cov_trace_pc() #10
  %or203.i497 = or i64 %z.1.lcssa.i493, 4294967295
  %phi.bo = add nsw i64 %or203.i497, -2
  br label %estimateDiv128To64.exit624.thread

if.else204.i501:                                  ; preds = %while.end.i496
  %conv206.i499 = trunc i64 %shr.i337 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %or198.i494)
  %cmp407.i612 = icmp ult i64 %or198.i494, 4294967296
  br i1 %cmp407.i612, label %if.then415.i617, label %if.else421.i619, !prof !38

if.then415.i617:                                  ; preds = %if.else204.i501
  call void @__sanitizer_cov_trace_pc() #10
  %conv416.i614 = trunc i64 %or198.i494 to i32
  %div419.i615 = udiv i32 %conv416.i614, %conv206.i499
  %conv420.i616 = zext i32 %div419.i615 to i64
  br label %estimateDiv128To64.exit624

if.else421.i619:                                  ; preds = %if.else204.i501
  call void @__sanitizer_cov_trace_pc() #10
  %45 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv206.i499, i64 %or198.i494) #11, !srcloc !37
  %asmresult1.i635.i618 = extractvalue { i64, i64 } %45, 1
  br label %estimateDiv128To64.exit624

estimateDiv128To64.exit624:                       ; preds = %if.else421.i619, %if.then415.i617
  %rem0.1.i620 = phi i64 [ %conv420.i616, %if.then415.i617 ], [ %asmresult1.i635.i618, %if.else421.i619 ]
  %or427.i621 = or i64 %rem0.1.i620, %z.1.lcssa.i493
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %or427.i621)
  %cmp62 = icmp ugt i64 %or427.i621, 2
  %sub65 = add i64 %or427.i621, -2
  br i1 %cmp62, label %estimateDiv128To64.exit624.estimateDiv128To64.exit624.thread_crit_edge, label %estimateDiv128To64.exit624.shortShift128Left.exit_crit_edge

estimateDiv128To64.exit624.shortShift128Left.exit_crit_edge: ; preds = %estimateDiv128To64.exit624
  call void @__sanitizer_cov_trace_pc() #10
  br label %shortShift128Left.exit

estimateDiv128To64.exit624.estimateDiv128To64.exit624.thread_crit_edge: ; preds = %estimateDiv128To64.exit624
  call void @__sanitizer_cov_trace_pc() #10
  br label %estimateDiv128To64.exit624.thread

estimateDiv128To64.exit624.thread:                ; preds = %estimateDiv128To64.exit624.estimateDiv128To64.exit624.thread_crit_edge, %if.then202.i498, %if.then60.estimateDiv128To64.exit624.thread_crit_edge
  %.pre774.pre-phi = phi i64 [ %.pre, %if.then60.estimateDiv128To64.exit624.thread_crit_edge ], [ %conv5.i.i467, %if.then202.i498 ], [ %conv5.i.i467, %estimateDiv128To64.exit624.estimateDiv128To64.exit624.thread_crit_edge ]
  %sub65756 = phi i64 [ -3, %if.then60.estimateDiv128To64.exit624.thread_crit_edge ], [ %phi.bo, %if.then202.i498 ], [ %sub65, %estimateDiv128To64.exit624.estimateDiv128To64.exit624.thread_crit_edge ]
  br label %shortShift128Left.exit

shortShift128Left.exit:                           ; preds = %estimateDiv128To64.exit624.thread, %estimateDiv128To64.exit624.shortShift128Left.exit_crit_edge
  %conv5.i627.pre-phi = phi i64 [ %conv5.i.i467, %estimateDiv128To64.exit624.shortShift128Left.exit_crit_edge ], [ %.pre774.pre-phi, %estimateDiv128To64.exit624.thread ]
  %46 = phi i64 [ 0, %estimateDiv128To64.exit624.shortShift128Left.exit_crit_edge ], [ %sub65756, %estimateDiv128To64.exit624.thread ]
  %sub69 = sub i32 0, %expDiff.1.lcssa
  %sh_prom = zext i32 %sub69 to i64
  %shr = lshr i64 %46, %sh_prom
  %shl72 = shl i64 %shr, %sh_prom
  %shr3.i626 = lshr i64 %shl72, 32
  %conv6.i628 = and i64 %shl72, 4294967295
  %mul.i629 = mul nuw i64 %conv6.i628, %conv5.i627.pre-phi
  %mul9.i630 = mul nuw i64 %shr3.i626, %conv5.i627.pre-phi
  %mul12.i631 = mul nuw i64 %conv6.i628, %shr.i337
  %mul15.i632 = mul nuw i64 %shr3.i626, %shr.i337
  %add.i633 = add i64 %mul9.i630, %mul12.i631
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i633, i64 %mul12.i631)
  %cmp.i634 = icmp ult i64 %add.i633, %mul12.i631
  %shl.i635.neg772 = select i1 %cmp.i634, i64 -4294967296, i64 0
  %shr18.i636 = lshr i64 %add.i633, 32
  %shl21.i637 = shl i64 %add.i633, 32
  %add22.i638 = add i64 %shl21.i637, %mul.i629
  call void @__sanitizer_cov_trace_cmp8(i64 %add22.i638, i64 %shl21.i637)
  %cmp23.i639 = icmp ult i64 %add22.i638, %shl21.i637
  %.neg773 = sext i1 %cmp23.i639 to i64
  %sub.i643 = sub i64 %aSig1.1.lcssa, %add22.i638
  call void @__sanitizer_cov_trace_cmp8(i64 %aSig1.1.lcssa, i64 %add22.i638)
  %cmp.i645 = icmp ult i64 %aSig1.1.lcssa, %add22.i638
  %.neg.i646 = sext i1 %cmp.i645 to i64
  %47 = add i64 %mul15.i632, %shr18.i636
  %add20.i641.neg = sub i64 %aSig0.3.lcssa, %47
  %add26.i642.neg = add i64 %add20.i641.neg, %shl.i635.neg772
  %sub1.i644 = add i64 %add26.i642.neg, %.neg773
  %sub3.i647 = add i64 %sub1.i644, %.neg.i646
  %shl.i649 = shl i64 %or34, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %expDiff.1.lcssa)
  %cmp.i650 = icmp eq i32 %expDiff.1.lcssa, 0
  %and.i651 = and i32 %expDiff.1.lcssa, 63
  %sh_prom3.i = zext i32 %and.i651 to i64
  %shr.i652 = lshr i64 %or34, %sh_prom3.i
  %cond.i = select i1 %cmp.i650, i64 0, i64 %shr.i652
  br label %while.cond74

while.cond74:                                     ; preds = %while.body77, %shortShift128Left.exit
  %aSig0.4 = phi i64 [ %sub3.i647, %shortShift128Left.exit ], [ %sub3.i660, %while.body77 ]
  %aSig1.2 = phi i64 [ %sub.i643, %shortShift128Left.exit ], [ %sub.i656, %while.body77 ]
  %q.1 = phi i64 [ %shr, %shortShift128Left.exit ], [ %inc, %while.body77 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %aSig0.4, i64 %cond.i)
  %cmp.i654 = icmp ugt i64 %aSig0.4, %cond.i
  br i1 %cmp.i654, label %while.cond74.while.body77_crit_edge, label %le128.exit

while.cond74.while.body77_crit_edge:              ; preds = %while.cond74
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body77

le128.exit:                                       ; preds = %while.cond74
  call void @__sanitizer_cov_trace_cmp8(i64 %aSig0.4, i64 %cond.i)
  %cmp1.i = icmp ne i64 %aSig0.4, %cond.i
  call void @__sanitizer_cov_trace_cmp8(i64 %aSig1.2, i64 %shl.i649)
  %cmp2.i = icmp ult i64 %aSig1.2, %shl.i649
  %tobool76.not = or i1 %cmp1.i, %cmp2.i
  br i1 %tobool76.not, label %le128.exit.if.end79_crit_edge, label %le128.exit.while.body77_crit_edge

le128.exit.while.body77_crit_edge:                ; preds = %le128.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body77

le128.exit.if.end79_crit_edge:                    ; preds = %le128.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

while.body77:                                     ; preds = %le128.exit.while.body77_crit_edge, %while.cond74.while.body77_crit_edge
  %inc = add i64 %q.1, 1
  %sub.i656 = sub i64 %aSig1.2, %shl.i649
  %sub1.i657 = sub i64 %aSig0.4, %cond.i
  call void @__sanitizer_cov_trace_cmp8(i64 %aSig1.2, i64 %shl.i649)
  %cmp.i658 = icmp ult i64 %aSig1.2, %shl.i649
  %.neg.i659 = sext i1 %cmp.i658 to i64
  %sub3.i660 = add i64 %sub1.i657, %.neg.i659
  br label %while.cond74

if.end79:                                         ; preds = %le128.exit.if.end79_crit_edge, %while.end.if.end79_crit_edge, %while.end.thread
  %add799 = phi i32 [ %add, %while.end.if.end79_crit_edge ], [ 0, %while.end.thread ], [ %add, %le128.exit.if.end79_crit_edge ]
  %expDiff.1.lcssa798 = phi i32 [ %expDiff.1.lcssa, %while.end.if.end79_crit_edge ], [ -64, %while.end.thread ], [ %expDiff.1.lcssa, %le128.exit.if.end79_crit_edge ]
  %aSig0.5 = phi i64 [ %aSig0.3.lcssa, %while.end.if.end79_crit_edge ], [ %shr8.i, %while.end.thread ], [ %aSig0.4, %le128.exit.if.end79_crit_edge ]
  %aSig1.3 = phi i64 [ %aSig1.1.lcssa, %while.end.if.end79_crit_edge ], [ %shl.i321, %while.end.thread ], [ %aSig1.2, %le128.exit.if.end79_crit_edge ]
  %term0.0 = phi i64 [ %or34, %while.end.if.end79_crit_edge ], [ %or34, %while.end.thread ], [ %cond.i, %le128.exit.if.end79_crit_edge ]
  %term1.0 = phi i64 [ 0, %while.end.if.end79_crit_edge ], [ 0, %while.end.thread ], [ %shl.i649, %le128.exit.if.end79_crit_edge ]
  %q.2 = phi i64 [ %q.0.lcssa, %while.end.if.end79_crit_edge ], [ 0, %while.end.thread ], [ %q.1, %le128.exit.if.end79_crit_edge ]
  %sub.i661 = sub i64 %term1.0, %aSig1.3
  %sub1.i662 = sub i64 %term0.0, %aSig0.5
  call void @__sanitizer_cov_trace_cmp8(i64 %term1.0, i64 %aSig1.3)
  %cmp.i663 = icmp ult i64 %term1.0, %aSig1.3
  %.neg.i664 = sext i1 %cmp.i663 to i64
  %sub3.i665 = add i64 %sub1.i662, %.neg.i664
  call void @__sanitizer_cov_trace_cmp8(i64 %sub3.i665, i64 %aSig0.5)
  %cmp.i666 = icmp ult i64 %sub3.i665, %aSig0.5
  br i1 %cmp.i666, label %if.end79.if.then89_crit_edge, label %lt128.exit

if.end79.if.then89_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then89

lt128.exit:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_cmp8(i64 %sub3.i665, i64 %aSig0.5)
  %cmp1.i667 = icmp ne i64 %sub3.i665, %aSig0.5
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i661, i64 %aSig1.3)
  %cmp2.i668 = icmp uge i64 %sub.i661, %aSig1.3
  %tobool82.not = or i1 %cmp2.i668, %cmp1.i667
  br i1 %tobool82.not, label %lor.lhs.false83, label %lt128.exit.if.then89_crit_edge

lt128.exit.if.then89_crit_edge:                   ; preds = %lt128.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then89

lor.lhs.false83:                                  ; preds = %lt128.exit
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i661, i64 %aSig1.3)
  %cmp1.i673 = icmp ne i64 %sub.i661, %aSig1.3
  %tobool86.not = or i1 %cmp1.i673, %cmp1.i667
  %and = and i64 %q.2, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool88.not = icmp eq i64 %and, 0
  %or.cond = select i1 %tobool86.not, i1 true, i1 %tobool88.not
  br i1 %or.cond, label %lor.lhs.false83.if.end92_crit_edge, label %lor.lhs.false83.if.then89_crit_edge

lor.lhs.false83.if.then89_crit_edge:              ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then89

lor.lhs.false83.if.end92_crit_edge:               ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then89:                                        ; preds = %lor.lhs.false83.if.then89_crit_edge, %lt128.exit.if.then89_crit_edge, %if.end79.if.then89_crit_edge
  %48 = xor i8 %conv1.i, 1
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %lor.lhs.false83.if.end92_crit_edge
  %aSig0.6 = phi i64 [ %aSig0.5, %lor.lhs.false83.if.end92_crit_edge ], [ %sub3.i665, %if.then89 ]
  %aSig1.4 = phi i64 [ %aSig1.3, %lor.lhs.false83.if.end92_crit_edge ], [ %sub.i661, %if.then89 ]
  %zSign.0 = phi i8 [ %conv1.i, %lor.lhs.false83.if.end92_crit_edge ], [ %48, %if.then89 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %aSig0.6)
  %cmp.i676 = icmp eq i64 %aSig0.6, 0
  %zSig0.addr.0.i = select i1 %cmp.i676, i64 %aSig1.4, i64 %aSig0.6
  %zSig1.addr.0.i = select i1 %cmp.i676, i64 0, i64 %aSig1.4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %zSig0.addr.0.i)
  %cmp.i.i677 = icmp ult i64 %zSig0.addr.0.i, 4294967296
  %shr.i.i678 = lshr i64 %zSig0.addr.0.i, 32
  %a.addr.0.off0.v.i.i679 = select i1 %cmp.i.i677, i64 %zSig0.addr.0.i, i64 %shr.i.i678
  %a.addr.0.off0.i.i680 = trunc i64 %a.addr.0.off0.v.i.i679 to i32
  %shiftCount.0.i.i681 = select i1 %cmp.i.i677, i8 32, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %a.addr.0.off0.i.i680)
  %cmp.i.i.i682 = icmp ult i32 %a.addr.0.off0.i.i680, 65536
  %shl.i.i.i683 = shl i32 %a.addr.0.off0.i.i680, 16
  %spec.select.i.i.i684 = select i1 %cmp.i.i.i682, i32 %shl.i.i.i683, i32 %a.addr.0.off0.i.i680
  %spec.select21.i.i.i685 = select i1 %cmp.i.i.i682, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i.i684)
  %cmp2.i.i.i686 = icmp ult i32 %spec.select.i.i.i684, 16777216
  %49 = or i8 %spec.select21.i.i.i685, 8
  %shl8.i.i.i687 = shl i32 %spec.select.i.i.i684, 8
  %a.addr.1.i.i.i688 = select i1 %cmp2.i.i.i686, i32 %shl8.i.i.i687, i32 %spec.select.i.i.i684
  %shiftCount.1.i.i.i689 = select i1 %cmp2.i.i.i686, i8 %49, i8 %spec.select21.i.i.i685
  %shr.i.i.i690 = lshr i32 %a.addr.1.i.i.i688, 24
  %arrayidx.i.i.i691 = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i.i690
  %50 = ptrtoint ptr %arrayidx.i.i.i691 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i.i.i691, align 1, !noalias !177
  %add12.i.i.i692 = or i8 %shiftCount.1.i.i.i689, %shiftCount.0.i.i681
  %add5.i.i693 = add i8 %add12.i.i.i692, %51
  %conv.i694 = sext i8 %add5.i.i693 to i32
  %sh_prom.i.i = zext i32 %conv.i694 to i64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add5.i.i693)
  %cmp.i6.i = icmp eq i8 %add5.i.i693, 0
  br i1 %cmp.i6.i, label %if.end92.normalizeRoundAndPackFloatx80.exit_crit_edge, label %cond.false.i.i

if.end92.normalizeRoundAndPackFloatx80.exit_crit_edge: ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %normalizeRoundAndPackFloatx80.exit

cond.false.i.i:                                   ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub nsw i32 0, %conv.i694
  %shl2.i.i = shl i64 %zSig0.addr.0.i, %sh_prom.i.i
  %and.i.i695 = and i32 %sub.i.i, 63
  %sh_prom3.i.i = zext i32 %and.i.i695 to i64
  %shr.i7.i = lshr i64 %zSig1.addr.0.i, %sh_prom3.i.i
  %or.i.i = or i64 %shr.i7.i, %shl2.i.i
  br label %normalizeRoundAndPackFloatx80.exit

normalizeRoundAndPackFloatx80.exit:               ; preds = %cond.false.i.i, %if.end92.normalizeRoundAndPackFloatx80.exit_crit_edge
  %cond.i.i = phi i64 [ %or.i.i, %cond.false.i.i ], [ %zSig0.addr.0.i, %if.end92.normalizeRoundAndPackFloatx80.exit_crit_edge ]
  %shl.i.i696 = shl i64 %zSig1.addr.0.i, %sh_prom.i.i
  %zExp.addr.0.i.v = select i1 %cmp.i676, i32 %expDiff.1.lcssa798, i32 %add799
  %zExp.addr.0.i = add i32 %zExp.addr.0.i.v, %bExp.0
  %sub2.i = sub i32 %zExp.addr.0.i, %conv.i694
  tail call fastcc void @roundAndPackFloatx80(ptr sret(%struct.floatx80) align 4 %agg.result, ptr noundef %roundData, i8 noundef zeroext %zSign.0, i32 noundef %sub2.i, i64 noundef %cond.i.i, i64 noundef %shl.i.i696) #8
  br label %cleanup

cleanup:                                          ; preds = %normalizeRoundAndPackFloatx80.exit, %if.then40, %if.then31, %invalid, %if.end16, %propagateFloatx80NaN.exit297, %propagateFloatx80NaN.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @floatx80_sqrt(ptr noalias nocapture writeonly sret(%struct.floatx80) align 4 %agg.result, ptr nocapture noundef %roundData, [3 x i32] %a.coerce) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [3 x i32] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [3 x i32] %a.coerce, 1
  %a.coerce.fca.2.extract = extractvalue [3 x i32] %a.coerce, 2
  %a.sroa.3.4.insert.ext.i = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.1.4.insert.ext.i = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.1.4.insert.shift.i = shl nuw i64 %a.sroa.1.4.insert.ext.i, 32
  %a.sroa.1.4.insert.insert.i = or i64 %a.sroa.1.4.insert.shift.i, %a.sroa.3.4.insert.ext.i
  %and.i = and i32 %a.coerce.fca.0.extract, 32767
  %conv.i = lshr i32 %a.coerce.fca.0.extract, 15
  %0 = trunc i32 %conv.i to i8
  %conv1.i = and i8 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 32767
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %shl.mask = and i64 %a.sroa.1.4.insert.insert.i, 9223372036854775807
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %tobool.not = icmp eq i64 %shl.mask, 0
  br i1 %tobool.not, label %if.end, label %floatx80_is_nan.exit.i

floatx80_is_nan.exit.i:                           ; preds = %if.then
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %shl.mask.i.i = and i64 %a.sroa.1.4.insert.insert.i, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i.i)
  %tobool.not.i.i = icmp ne i64 %shl.mask.i.i, 0
  %and.i58.i = and i64 %a.sroa.1.4.insert.insert.i, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.1.4.insert.insert.i, i64 %and.i58.i)
  %cmp4.i.i = icmp eq i64 %a.sroa.1.4.insert.insert.i, %and.i58.i
  %1 = and i1 %tobool.not.i.i, %cmp4.i.i
  br i1 %1, label %if.then.i, label %floatx80_is_nan.exit.i.propagateFloatx80NaN.exit_crit_edge

floatx80_is_nan.exit.i.propagateFloatx80NaN.exit_crit_edge: ; preds = %floatx80_is_nan.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %propagateFloatx80NaN.exit

if.then.i:                                        ; preds = %floatx80_is_nan.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @float_raise(i8 noundef signext 1) #8, !noalias !180
  br label %propagateFloatx80NaN.exit

propagateFloatx80NaN.exit:                        ; preds = %if.then.i, %floatx80_is_nan.exit.i.propagateFloatx80NaN.exit_crit_edge
  %or5.i = or i64 %a.sroa.1.4.insert.insert.i, -4611686018427387904
  %2 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %a.coerce.fca.0.extract, ptr %agg.result, align 4, !alias.scope !180
  %b.sroa.5.0.agg.result.sroa_idx.i = getelementptr inbounds i8, ptr %agg.result, i32 4
  %3 = ptrtoint ptr %b.sroa.5.0.agg.result.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 %or5.i, ptr %b.sroa.5.0.agg.result.sroa_idx.i, align 4, !alias.scope !180
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i)
  %tobool4.not = icmp eq i8 %conv1.i, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.invalid_crit_edge

if.end.invalid_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %invalid

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %a.coerce.fca.0.extract, ptr %agg.result, align 4
  %a.sroa.8.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 4
  %5 = ptrtoint ptr %a.sroa.8.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %a.coerce.fca.1.extract, ptr %a.sroa.8.0.agg.result.sroa_idx, align 4
  %a.sroa.14.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 8
  %6 = ptrtoint ptr %a.sroa.14.0.agg.result.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %a.coerce.fca.2.extract, ptr %a.sroa.14.0.agg.result.sroa_idx, align 4
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i)
  %tobool8.not = icmp eq i8 %conv1.i, 0
  br i1 %tobool8.not, label %if.end17, label %if.then9

if.then9:                                         ; preds = %if.end7
  %conv606 = zext i32 %and.i to i64
  %or = or i64 %a.sroa.1.4.insert.insert.i, %conv606
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or)
  %cmp10 = icmp eq i64 %or, 0
  br i1 %cmp10, label %if.then12, label %if.then9.invalid_crit_edge

if.then9.invalid_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %invalid

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %a.coerce.fca.0.extract, ptr %agg.result, align 4
  %a.sroa.8.0.agg.result.sroa_idx141 = getelementptr inbounds i8, ptr %agg.result, i32 4
  %8 = ptrtoint ptr %a.sroa.8.0.agg.result.sroa_idx141 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %a.coerce.fca.1.extract, ptr %a.sroa.8.0.agg.result.sroa_idx141, align 4
  %a.sroa.14.0.agg.result.sroa_idx143 = getelementptr inbounds i8, ptr %agg.result, i32 8
  %9 = ptrtoint ptr %a.sroa.14.0.agg.result.sroa_idx143 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %a.coerce.fca.2.extract, ptr %a.sroa.14.0.agg.result.sroa_idx143, align 4
  br label %cleanup

invalid:                                          ; preds = %if.then9.invalid_crit_edge, %if.end.invalid_crit_edge
  %exception = getelementptr inbounds %struct.roundingData, ptr %roundData, i32 0, i32 2
  %10 = ptrtoint ptr %exception to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %exception, align 1
  %12 = or i8 %11, 1
  store i8 %12, ptr %exception, align 1
  %13 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %agg.result, align 4
  %z.sroa.5.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 2
  %14 = ptrtoint ptr %z.sroa.5.0.agg.result.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %z.sroa.5.0.agg.result.sroa_idx, align 2
  %z.sroa.7.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i32 4
  %15 = ptrtoint ptr %z.sroa.7.0.agg.result.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 -1, ptr %z.sroa.7.0.agg.result.sroa_idx, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp18 = icmp eq i32 %and.i, 0
  br i1 %cmp18, label %if.then20, label %if.end17.if.end25_crit_edge

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a.sroa.1.4.insert.insert.i)
  %cmp21 = icmp eq i64 %a.sroa.1.4.insert.insert.i, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %16 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 1
  %17 = getelementptr inbounds %struct.floatx80, ptr %agg.result, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 0, ptr %17, align 4, !alias.scope !183
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %16, align 2, !alias.scope !183
  %20 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %agg.result, align 4, !alias.scope !183
  br label %cleanup

if.end24:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %a.sroa.1.4.insert.insert.i)
  %cmp.i.i156 = icmp ult i64 %a.sroa.1.4.insert.insert.i, 4294967296
  %a.addr.0.off0.v.i.i = select i1 %cmp.i.i156, i32 %a.coerce.fca.2.extract, i32 %a.coerce.fca.1.extract
  %shiftCount.0.i.i = select i1 %cmp.i.i156, i8 32, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %a.addr.0.off0.v.i.i)
  %cmp.i.i.i = icmp ult i32 %a.addr.0.off0.v.i.i, 65536
  %shl.i.i.i = shl i32 %a.addr.0.off0.v.i.i, 16
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %shl.i.i.i, i32 %a.addr.0.off0.v.i.i
  %spec.select21.i.i.i = select i1 %cmp.i.i.i, i8 16, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %spec.select.i.i.i)
  %cmp2.i.i.i = icmp ult i32 %spec.select.i.i.i, 16777216
  %21 = or i8 %spec.select21.i.i.i, 8
  %shl8.i.i.i = shl i32 %spec.select.i.i.i, 8
  %a.addr.1.i.i.i = select i1 %cmp2.i.i.i, i32 %shl8.i.i.i, i32 %spec.select.i.i.i
  %shiftCount.1.i.i.i = select i1 %cmp2.i.i.i, i8 %21, i8 %spec.select21.i.i.i
  %shr.i.i.i = lshr i32 %a.addr.1.i.i.i, 24
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @countLeadingZeros32.countLeadingZerosHigh, i32 0, i32 %shr.i.i.i
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.i.i, align 1
  %add12.i.i.i = or i8 %shiftCount.1.i.i.i, %shiftCount.0.i.i
  %add5.i.i = add i8 %add12.i.i.i, %23
  %conv.i157 = sext i8 %add5.i.i to i32
  %sh_prom.i = zext i32 %conv.i157 to i64
  %shl.i = shl i64 %a.sroa.1.4.insert.insert.i, %sh_prom.i
  %sub.i = sub nsw i32 1, %conv.i157
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end17.if.end25_crit_edge
  %aExp.0 = phi i32 [ %sub.i, %if.end24 ], [ %and.i, %if.end17.if.end25_crit_edge ]
  %aSig0.0 = phi i64 [ %shl.i, %if.end24 ], [ %a.sroa.1.4.insert.insert.i, %if.end17.if.end25_crit_edge ]
  %sub = add nsw i32 %aExp.0, -16383
  %shr = ashr i32 %sub, 1
  %add = add nsw i32 %shr, 16383
  %shr26 = lshr i64 %aSig0.0, 32
  %conv27 = trunc i64 %shr26 to i32
  %shr.i = lshr i32 %conv27, 27
  %24 = trunc i32 %shr.i to i8
  %conv.i158 = and i8 %24, 15
  %and1.i = and i32 %aExp.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %shr7.i = lshr i32 %conv27, 17
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i161

if.then.i161:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add nuw nsw i32 %shr7.i, 16384
  %25 = zext i8 %conv.i158 to i32
  %arrayidx.i = getelementptr [16 x i16], ptr @estimateSqrt32.sqrtOddAdjustments, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i, align 2
  %conv3.i = zext i16 %27 to i32
  %sub.i159 = sub nsw i32 %add.i, %conv3.i
  %div.i = udiv i32 %conv27, %sub.i159
  %shl.i160 = shl i32 %div.i, 14
  %shl4.i = shl nsw i32 %sub.i159, 15
  %add5.i = add i32 %shl4.i, %shl.i160
  %shr6.i = lshr i32 %conv27, 1
  br label %if.end21.i

if.else.i:                                        ; preds = %if.end25
  %add8.i = or i32 %shr7.i, 32768
  %28 = zext i8 %conv.i158 to i32
  %arrayidx10.i = getelementptr [16 x i16], ptr @estimateSqrt32.sqrtEvenAdjustments, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx10.i, align 2
  %conv11.i = zext i16 %30 to i32
  %sub12.i = sub nsw i32 %add8.i, %conv11.i
  %div13.i = udiv i32 %conv27, %sub12.i
  %add14.i = add i32 %sub12.i, %div13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %add14.i)
  %cmp.i = icmp ugt i32 %add14.i, 131071
  %shl16.i = shl i32 %add14.i, 15
  %spec.select.i = select i1 %cmp.i, i32 -32768, i32 %shl16.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %conv27)
  %cmp17.not.i = icmp ugt i32 %spec.select.i, %conv27
  br i1 %cmp17.not.i, label %if.else.i.if.end21.i_crit_edge, label %if.then19.i

if.else.i.if.end21.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr20.i = ashr i32 %conv27, 1
  br label %estimateSqrt32.exit

if.end21.i:                                       ; preds = %if.else.i.if.end21.i_crit_edge, %if.then.i161
  %z.0.i = phi i32 [ %add5.i, %if.then.i161 ], [ %spec.select.i, %if.else.i.if.end21.i_crit_edge ]
  %a.addr.0.i = phi i32 [ %shr6.i, %if.then.i161 ], [ %conv27, %if.else.i.if.end21.i_crit_edge ]
  %conv22.i = zext i32 %a.addr.0.i to i64
  %shl23.i = shl nuw nsw i64 %conv22.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %a.addr.0.i)
  %cmp204.i = icmp ult i32 %a.addr.0.i, 2
  br i1 %cmp204.i, label %if.then208.i, label %if.else214.i, !prof !38

if.then208.i:                                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv209.i = trunc i64 %shl23.i to i32
  %div212.i = udiv i32 %conv209.i, %z.0.i
  br label %if.end218.i

if.else214.i:                                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %z.0.i, i64 %shl23.i) #11, !srcloc !37
  %asmresult1.i.i = extractvalue { i64, i64 } %31, 1
  %extract.t346.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end218.i

if.end218.i:                                      ; preds = %if.else214.i, %if.then208.i
  %A.0.off0.i = phi i32 [ %div212.i, %if.then208.i ], [ %extract.t346.i, %if.else214.i ]
  %shr221.i = lshr i32 %z.0.i, 1
  %add222.i = add i32 %A.0.off0.i, %shr221.i
  br label %estimateSqrt32.exit

estimateSqrt32.exit:                              ; preds = %if.end218.i, %if.then19.i
  %retval.0.i = phi i32 [ %add222.i, %if.end218.i ], [ %shr20.i, %if.then19.i ]
  %conv29 = zext i32 %retval.0.i to i64
  %shl30 = shl nuw nsw i64 %conv29, 31
  %add31 = or i32 %and1.i, 2
  %sh_prom6.i = zext i32 %add31 to i64
  %shr8.i = lshr i64 %aSig0.0, %sh_prom6.i
  %32 = sub nsw i32 0, %add31
  %conv.i164 = and i32 %32, 63
  %sh_prom.i165 = zext i32 %conv.i164 to i64
  %shl.i166 = shl i64 %aSig0.0, %sh_prom.i165
  call void @__sanitizer_cov_trace_cmp8(i64 %shl30, i64 %shr8.i)
  %cmp.not.i = icmp ugt i64 %shl30, %shr8.i
  br i1 %cmp.not.i, label %if.end.i, label %estimateSqrt32.exit.estimateDiv128To64.exit_crit_edge

estimateSqrt32.exit.estimateDiv128To64.exit_crit_edge: ; preds = %estimateSqrt32.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %estimateDiv128To64.exit

if.end.i:                                         ; preds = %estimateSqrt32.exit
  %shr.i167 = lshr i64 %conv29, 1
  %shl.i168 = and i64 %shl30, 9223372032559808512
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i168, i64 %shr8.i)
  %cmp1.not.i = icmp ugt i64 %shl.i168, %shr8.i
  br i1 %cmp1.not.i, label %if.else.i171, label %if.end.i.if.end191.i_crit_edge

if.end.i.if.end191.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191.i

if.else.i171:                                     ; preds = %if.end.i
  %conv.i169 = trunc i64 %shr.i167 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr8.i)
  %cmp174.i = icmp ult i64 %shr8.i, 4294967296
  br i1 %cmp174.i, label %if.then178.i, label %if.else184.i, !prof !38

if.then178.i:                                     ; preds = %if.else.i171
  call void @__sanitizer_cov_trace_pc() #10
  %conv179.i = trunc i64 %shr8.i to i32
  %div182.i = udiv i32 %conv179.i, %conv.i169
  %conv183.i = zext i32 %div182.i to i64
  br label %if.end188.i

if.else184.i:                                     ; preds = %if.else.i171
  call void @__sanitizer_cov_trace_pc() #10
  %33 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i169, i64 %shr8.i) #11, !srcloc !37
  %asmresult1.i.i205 = extractvalue { i64, i64 } %33, 1
  br label %if.end188.i

if.end188.i:                                      ; preds = %if.else184.i, %if.then178.i
  %z.0.i206 = phi i64 [ %conv183.i, %if.then178.i ], [ %asmresult1.i.i205, %if.else184.i ]
  %shl190.i = shl i64 %z.0.i206, 32
  br label %if.end191.i

if.end191.i:                                      ; preds = %if.end188.i, %if.end.i.if.end191.i_crit_edge
  %storemerge.i = phi i64 [ %shl190.i, %if.end188.i ], [ -4294967296, %if.end.i.if.end191.i_crit_edge ]
  %shr3.i.i = lshr exact i64 %storemerge.i, 32
  %conv5.i.i = and i64 %shl30, 2147483648
  %mul9.i.i = mul nuw nsw i64 %shr3.i.i, %conv5.i.i
  %mul15.i.i = mul nuw nsw i64 %shr3.i.i, %shr.i167
  %shr18.i.i = lshr i64 %mul9.i.i, 32
  %shl21.i.i = shl i64 %mul9.i.i, 32
  %sub.i607.i = sub i64 %shl.i166, %shl21.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i166, i64 %shl21.i.i)
  %cmp.i608.i = icmp ult i64 %shl.i166, %shl21.i.i
  %.neg.i.i = sext i1 %cmp.i608.i to i64
  %34 = add nuw nsw i64 %mul15.i.i, %shr18.i.i
  %sub1.i.i = sub nsw i64 %shr8.i, %34
  %sub3.i.i = add nsw i64 %sub1.i.i, %.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub3.i.i)
  %cmp192688.i = icmp slt i64 %sub3.i.i, 0
  br i1 %cmp192688.i, label %while.body.lr.ph.i, label %if.end191.i.while.end.i_crit_edge

if.end191.i.while.end.i_crit_edge:                ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end191.i
  %shl195.i = shl i64 %conv29, 63
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %z.1691.i = phi i64 [ %storemerge.i, %while.body.lr.ph.i ], [ %sub194.i, %while.body.i.while.body.i_crit_edge ]
  %rem1.0690.i = phi i64 [ %sub.i607.i, %while.body.lr.ph.i ], [ %add.i609.i, %while.body.i.while.body.i_crit_edge ]
  %rem0.0689.i = phi i64 [ %sub3.i.i, %while.body.lr.ph.i ], [ %add3.i.i, %while.body.i.while.body.i_crit_edge ]
  %sub194.i = add i64 %z.1691.i, -4294967296
  %add.i609.i = add i64 %rem1.0690.i, %shl195.i
  %add1.i.i = add i64 %rem0.0689.i, %shr.i167
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i609.i, i64 %rem1.0690.i)
  %cmp.i610.i = icmp ult i64 %add.i609.i, %rem1.0690.i
  %35 = zext i1 %cmp.i610.i to i64
  %add3.i.i = add i64 %add1.i.i, %35
  %cmp192.i = icmp slt i64 %add3.i.i, 0
  br i1 %cmp192.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end191.i.while.end.i_crit_edge
  %rem0.0.lcssa.i = phi i64 [ %sub3.i.i, %if.end191.i.while.end.i_crit_edge ], [ %add3.i.i, %while.body.i.while.end.i_crit_edge ]
  %rem1.0.lcssa.i = phi i64 [ %sub.i607.i, %if.end191.i.while.end.i_crit_edge ], [ %add.i609.i, %while.body.i.while.end.i_crit_edge ]
  %z.1.lcssa.i = phi i64 [ %storemerge.i, %if.end191.i.while.end.i_crit_edge ], [ %sub194.i, %while.body.i.while.end.i_crit_edge ]
  %or198.i = tail call i64 @llvm.fshl.i64(i64 %rem0.0.lcssa.i, i64 %rem1.0.lcssa.i, i64 32) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i168, i64 %or198.i)
  %cmp200.not.i = icmp ugt i64 %shl.i168, %or198.i
  br i1 %cmp200.not.i, label %if.else204.i, label %if.then202.i

if.then202.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %or203.i = or i64 %z.1.lcssa.i, 4294967295
  br label %estimateDiv128To64.exit

if.else204.i:                                     ; preds = %while.end.i
  %conv206.i = trunc i64 %shr.i167 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %or198.i)
  %cmp407.i = icmp ult i64 %or198.i, 4294967296
  br i1 %cmp407.i, label %if.then415.i, label %if.else421.i, !prof !38

if.then415.i:                                     ; preds = %if.else204.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv416.i = trunc i64 %or198.i to i32
  %div419.i = udiv i32 %conv416.i, %conv206.i
  %conv420.i = zext i32 %div419.i to i64
  br label %if.end425.i

if.else421.i:                                     ; preds = %if.else204.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv206.i, i64 %or198.i) #11, !srcloc !37
  %asmresult1.i635.i = extractvalue { i64, i64 } %36, 1
  br label %if.end425.i

if.end425.i:                                      ; preds = %if.else421.i, %if.then415.i
  %rem0.1.i = phi i64 [ %conv420.i, %if.then415.i ], [ %asmresult1.i635.i, %if.else421.i ]
  %or427.i = or i64 %rem0.1.i, %z.1.lcssa.i
  br label %estimateDiv128To64.exit

estimateDiv128To64.exit:                          ; preds = %if.end425.i, %if.then202.i, %estimateSqrt32.exit.estimateDiv128To64.exit_crit_edge
  %retval.0.i207 = phi i64 [ -1, %estimateSqrt32.exit.estimateDiv128To64.exit_crit_edge ], [ %or427.i, %if.end425.i ], [ %or203.i, %if.then202.i ]
  %add33 = or i64 %shl30, 4
  %add34 = add i64 %add33, %retval.0.i207
  %37 = tail call i64 @llvm.smin.i64(i64 %add34, i64 -1)
  %shl.i208 = shl i64 %shl.i166, 2
  %or.i210 = tail call i64 @llvm.fshl.i64(i64 %shr8.i, i64 %shl.i166, i64 2)
  %shr.i212 = lshr i64 %37, 32
  %conv5.i = and i64 %37, 4294967295
  %mul.i213 = mul nuw i64 %conv5.i, %conv5.i
  %mul9.i = mul nuw i64 %shr.i212, %conv5.i
  %mul15.i = mul nuw i64 %shr.i212, %shr.i212
  %add.i214 = shl i64 %mul9.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i214, i64 %mul9.i)
  %cmp.i215 = icmp ult i64 %add.i214, %mul9.i
  %shl.i216.neg624 = select i1 %cmp.i215, i64 -4294967296, i64 0
  %shr18.i = lshr i64 %add.i214, 32
  %shl21.i = shl i64 %mul9.i, 33
  %add22.i = add i64 %shl21.i, %mul.i213
  call void @__sanitizer_cov_trace_cmp8(i64 %add22.i, i64 %shl21.i)
  %cmp23.i = icmp ult i64 %add22.i, %shl21.i
  %.neg625 = sext i1 %cmp23.i to i64
  %sub.i217 = sub i64 %shl.i208, %add22.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i208, i64 %add22.i)
  %cmp.i218 = icmp ult i64 %shl.i208, %add22.i
  %.neg.i = sext i1 %cmp.i218 to i64
  %38 = add nuw i64 %mul15.i, %shr18.i
  %add20.i.neg = sub i64 %or.i210, %38
  %add26.i.neg = add i64 %add20.i.neg, %shl.i216.neg624
  %sub1.i = add i64 %add26.i.neg, %.neg625
  %sub3.i = add i64 %sub1.i, %.neg.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub3.i)
  %cmp39609 = icmp slt i64 %sub3.i, 0
  br i1 %cmp39609, label %estimateDiv128To64.exit.while.body_crit_edge, label %estimateDiv128To64.exit.while.end_crit_edge

estimateDiv128To64.exit.while.end_crit_edge:      ; preds = %estimateDiv128To64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

estimateDiv128To64.exit.while.body_crit_edge:     ; preds = %estimateDiv128To64.exit
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %estimateDiv128To64.exit.while.body_crit_edge
  %zSig0.0612 = phi i64 [ %dec, %while.body.while.body_crit_edge ], [ %37, %estimateDiv128To64.exit.while.body_crit_edge ]
  %rem1.0611 = phi i64 [ %add.i222, %while.body.while.body_crit_edge ], [ %sub.i217, %estimateDiv128To64.exit.while.body_crit_edge ]
  %rem0.0610 = phi i64 [ %add3.i, %while.body.while.body_crit_edge ], [ %sub3.i, %estimateDiv128To64.exit.while.body_crit_edge ]
  %dec = add i64 %zSig0.0612, -1
  %shl.i219 = shl i64 %dec, 1
  %shr.i220 = lshr i64 %dec, 63
  %or41 = add i64 %rem1.0611, 1
  %add.i222 = add i64 %or41, %shl.i219
  %add1.i = add nsw i64 %shr.i220, %rem0.0610
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i222, i64 %rem1.0611)
  %cmp.i223 = icmp ult i64 %add.i222, %rem1.0611
  %39 = zext i1 %cmp.i223 to i64
  %add3.i = add nsw i64 %add1.i, %39
  %cmp39 = icmp slt i64 %add3.i, 0
  br i1 %cmp39, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %estimateDiv128To64.exit.while.end_crit_edge
  %rem0.0.lcssa = phi i64 [ %sub3.i, %estimateDiv128To64.exit.while.end_crit_edge ], [ %add3.i, %while.body.while.end_crit_edge ]
  %rem1.0.lcssa = phi i64 [ %sub.i217, %estimateDiv128To64.exit.while.end_crit_edge ], [ %add.i222, %while.body.while.end_crit_edge ]
  %zSig0.0.lcssa = phi i64 [ %37, %estimateDiv128To64.exit.while.end_crit_edge ], [ %dec, %while.body.while.end_crit_edge ]
  %shl.i224 = shl i64 %rem1.0.lcssa, 63
  %or.i227 = tail call i64 @llvm.fshl.i64(i64 %rem0.0.lcssa, i64 %rem1.0.lcssa, i64 63)
  call void @__sanitizer_cov_trace_cmp8(i64 %zSig0.0.lcssa, i64 %or.i227)
  %cmp.not.i229 = icmp ugt i64 %zSig0.0.lcssa, %or.i227
  br i1 %cmp.not.i229, label %if.end.i233, label %while.end.if.end64_crit_edge

while.end.if.end64_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.end.i233:                                      ; preds = %while.end
  %shr.i230 = lshr i64 %zSig0.0.lcssa, 32
  %shl.i231 = and i64 %zSig0.0.lcssa, -4294967296
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i231, i64 %or.i227)
  %cmp1.not.i232 = icmp ugt i64 %shl.i231, %or.i227
  br i1 %cmp1.not.i232, label %if.else.i236, label %if.end.i233.if.end191.i371_crit_edge

if.end.i233.if.end191.i371_crit_edge:             ; preds = %if.end.i233
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191.i371

if.else.i236:                                     ; preds = %if.end.i233
  %conv.i234 = trunc i64 %shr.i230 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %or.i227)
  %cmp174.i347 = icmp ult i64 %or.i227, 4294967296
  br i1 %cmp174.i347, label %if.then178.i352, label %if.else184.i354, !prof !38

if.then178.i352:                                  ; preds = %if.else.i236
  call void @__sanitizer_cov_trace_pc() #10
  %conv179.i349 = trunc i64 %or.i227 to i32
  %div182.i350 = udiv i32 %conv179.i349, %conv.i234
  %conv183.i351 = zext i32 %div182.i350 to i64
  br label %if.end188.i357

if.else184.i354:                                  ; preds = %if.else.i236
  call void @__sanitizer_cov_trace_pc() #10
  %40 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i234, i64 %or.i227) #11, !srcloc !37
  %asmresult1.i.i353 = extractvalue { i64, i64 } %40, 1
  br label %if.end188.i357

if.end188.i357:                                   ; preds = %if.else184.i354, %if.then178.i352
  %z.0.i355 = phi i64 [ %conv183.i351, %if.then178.i352 ], [ %asmresult1.i.i353, %if.else184.i354 ]
  %shl190.i356 = shl i64 %z.0.i355, 32
  br label %if.end191.i371

if.end191.i371:                                   ; preds = %if.end188.i357, %if.end.i233.if.end191.i371_crit_edge
  %storemerge.i358 = phi i64 [ %shl190.i356, %if.end188.i357 ], [ -4294967296, %if.end.i233.if.end191.i371_crit_edge ]
  %shr3.i.i359 = lshr exact i64 %storemerge.i358, 32
  %conv5.i.i360 = and i64 %zSig0.0.lcssa, 4294967295
  %mul9.i.i361 = mul nuw i64 %shr3.i.i359, %conv5.i.i360
  %mul15.i.i362 = mul nuw i64 %shr3.i.i359, %shr.i230
  %shr18.i.i363 = lshr i64 %mul9.i.i361, 32
  %shl21.i.i364 = shl i64 %mul9.i.i361, 32
  %sub.i607.i365 = sub i64 %shl.i224, %shl21.i.i364
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i224, i64 %shl21.i.i364)
  %cmp.i608.i366 = icmp ult i64 %shl.i224, %shl21.i.i364
  %.neg.i.i367 = sext i1 %cmp.i608.i366 to i64
  %41 = add nuw i64 %mul15.i.i362, %shr18.i.i363
  %sub1.i.i368 = sub i64 %or.i227, %41
  %sub3.i.i369 = add i64 %sub1.i.i368, %.neg.i.i367
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub3.i.i369)
  %cmp192688.i370 = icmp slt i64 %sub3.i.i369, 0
  br i1 %cmp192688.i370, label %while.body.lr.ph.i373, label %if.end191.i371.while.end.i389_crit_edge

if.end191.i371.while.end.i389_crit_edge:          ; preds = %if.end191.i371
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i389

while.body.lr.ph.i373:                            ; preds = %if.end191.i371
  %shl195.i372 = shl i64 %zSig0.0.lcssa, 32
  br label %while.body.i383

while.body.i383:                                  ; preds = %while.body.i383.while.body.i383_crit_edge, %while.body.lr.ph.i373
  %z.1691.i374 = phi i64 [ %storemerge.i358, %while.body.lr.ph.i373 ], [ %sub194.i377, %while.body.i383.while.body.i383_crit_edge ]
  %rem1.0690.i375 = phi i64 [ %sub.i607.i365, %while.body.lr.ph.i373 ], [ %add.i609.i378, %while.body.i383.while.body.i383_crit_edge ]
  %rem0.0689.i376 = phi i64 [ %sub3.i.i369, %while.body.lr.ph.i373 ], [ %add3.i.i381, %while.body.i383.while.body.i383_crit_edge ]
  %sub194.i377 = add i64 %z.1691.i374, -4294967296
  %add.i609.i378 = add i64 %rem1.0690.i375, %shl195.i372
  %add1.i.i379 = add i64 %rem0.0689.i376, %shr.i230
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i609.i378, i64 %rem1.0690.i375)
  %cmp.i610.i380 = icmp ult i64 %add.i609.i378, %rem1.0690.i375
  %42 = zext i1 %cmp.i610.i380 to i64
  %add3.i.i381 = add i64 %add1.i.i379, %42
  %cmp192.i382 = icmp slt i64 %add3.i.i381, 0
  br i1 %cmp192.i382, label %while.body.i383.while.body.i383_crit_edge, label %while.body.i383.while.end.i389_crit_edge

while.body.i383.while.end.i389_crit_edge:         ; preds = %while.body.i383
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i389

while.body.i383.while.body.i383_crit_edge:        ; preds = %while.body.i383
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i383

while.end.i389:                                   ; preds = %while.body.i383.while.end.i389_crit_edge, %if.end191.i371.while.end.i389_crit_edge
  %rem0.0.lcssa.i384 = phi i64 [ %sub3.i.i369, %if.end191.i371.while.end.i389_crit_edge ], [ %add3.i.i381, %while.body.i383.while.end.i389_crit_edge ]
  %rem1.0.lcssa.i385 = phi i64 [ %sub.i607.i365, %if.end191.i371.while.end.i389_crit_edge ], [ %add.i609.i378, %while.body.i383.while.end.i389_crit_edge ]
  %z.1.lcssa.i386 = phi i64 [ %storemerge.i358, %if.end191.i371.while.end.i389_crit_edge ], [ %sub194.i377, %while.body.i383.while.end.i389_crit_edge ]
  %or198.i387 = tail call i64 @llvm.fshl.i64(i64 %rem0.0.lcssa.i384, i64 %rem1.0.lcssa.i385, i64 32) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i231, i64 %or198.i387)
  %cmp200.not.i388 = icmp ugt i64 %shl.i231, %or198.i387
  br i1 %cmp200.not.i388, label %if.else204.i394, label %if.then202.i391

if.then202.i391:                                  ; preds = %while.end.i389
  call void @__sanitizer_cov_trace_pc() #10
  %or203.i390 = or i64 %z.1.lcssa.i386, 4294967295
  br label %estimateDiv128To64.exit517

if.else204.i394:                                  ; preds = %while.end.i389
  %conv206.i392 = trunc i64 %shr.i230 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %or198.i387)
  %cmp407.i505 = icmp ult i64 %or198.i387, 4294967296
  br i1 %cmp407.i505, label %if.then415.i510, label %if.else421.i512, !prof !38

if.then415.i510:                                  ; preds = %if.else204.i394
  call void @__sanitizer_cov_trace_pc() #10
  %conv416.i507 = trunc i64 %or198.i387 to i32
  %div419.i508 = udiv i32 %conv416.i507, %conv206.i392
  %conv420.i509 = zext i32 %div419.i508 to i64
  br label %if.end425.i515

if.else421.i512:                                  ; preds = %if.else204.i394
  call void @__sanitizer_cov_trace_pc() #10
  %43 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv206.i392, i64 %or198.i387) #11, !srcloc !37
  %asmresult1.i635.i511 = extractvalue { i64, i64 } %43, 1
  br label %if.end425.i515

if.end425.i515:                                   ; preds = %if.else421.i512, %if.then415.i510
  %rem0.1.i513 = phi i64 [ %conv420.i509, %if.then415.i510 ], [ %asmresult1.i635.i511, %if.else421.i512 ]
  %or427.i514 = or i64 %rem0.1.i513, %z.1.lcssa.i386
  br label %estimateDiv128To64.exit517

estimateDiv128To64.exit517:                       ; preds = %if.end425.i515, %if.then202.i391
  %retval.0.i516 = phi i64 [ %or427.i514, %if.end425.i515 ], [ %or203.i390, %if.then202.i391 ]
  %shl43 = shl i64 %retval.0.i516, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 11, i64 %shl43)
  %cmp44 = icmp ult i64 %shl43, 11
  br i1 %cmp44, label %if.then46, label %estimateDiv128To64.exit517.if.end64_crit_edge

estimateDiv128To64.exit517.if.end64_crit_edge:    ; preds = %estimateDiv128To64.exit517
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then46:                                        ; preds = %estimateDiv128To64.exit517
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i516)
  %cmp47 = icmp eq i64 %retval.0.i516, 0
  %spec.store.select82 = select i1 %cmp47, i64 1, i64 %retval.0.i516
  %shr3.i519 = lshr i64 %spec.store.select82, 32
  %conv6.i521 = and i64 %spec.store.select82, 4294967295
  %mul.i522 = mul nuw i64 %conv6.i521, %conv5.i.i360
  %mul9.i523 = mul nuw i64 %shr3.i519, %conv5.i.i360
  %mul12.i524 = mul nuw i64 %conv6.i521, %shr.i230
  %mul15.i525 = mul nuw i64 %shr3.i519, %shr.i230
  %add.i526 = add i64 %mul9.i523, %mul12.i524
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i526, i64 %mul12.i524)
  %cmp.i527 = icmp ult i64 %add.i526, %mul12.i524
  %shl.i528 = select i1 %cmp.i527, i64 4294967296, i64 0
  %shr18.i529 = lshr i64 %add.i526, 32
  %shl21.i530 = shl i64 %add.i526, 32
  %add22.i531 = add i64 %shl21.i530, %mul.i522
  call void @__sanitizer_cov_trace_cmp8(i64 %add22.i531, i64 %shl21.i530)
  %cmp23.i532 = icmp ult i64 %add22.i531, %shl21.i530
  %44 = zext i1 %cmp23.i532 to i64
  %add19.i533 = add nuw i64 %shr18.i529, %mul15.i525
  %add20.i534 = add i64 %add19.i533, %shl.i528
  %add26.i535 = add i64 %add20.i534, %44
  %shl.i536 = shl i64 %add22.i531, 1
  %or.i539 = tail call i64 @llvm.fshl.i64(i64 %add26.i535, i64 %add22.i531, i64 1)
  %sub.i541 = sub i64 0, %shl.i536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i536)
  %cmp.i543 = icmp ne i64 %shl.i536, 0
  %.neg.i544 = sext i1 %cmp.i543 to i64
  %mul.i550 = mul nuw i64 %conv6.i521, %conv6.i521
  %mul9.i551 = mul nuw i64 %shr3.i519, %conv6.i521
  %mul15.i553 = mul nuw i64 %shr3.i519, %shr3.i519
  %add.i554 = shl i64 %mul9.i551, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i554, i64 %mul9.i551)
  %cmp.i555 = icmp ult i64 %add.i554, %mul9.i551
  %shl.i556 = select i1 %cmp.i555, i64 4294967296, i64 0
  %shr18.i557 = lshr i64 %add.i554, 32
  %shl21.i558 = shl i64 %mul9.i551, 33
  %add22.i559 = add i64 %shl21.i558, %mul.i550
  call void @__sanitizer_cov_trace_cmp8(i64 %add22.i559, i64 %shl21.i558)
  %cmp23.i560 = icmp ult i64 %add22.i559, %shl21.i558
  %45 = zext i1 %cmp23.i560 to i64
  %add19.i561 = add nuw i64 %shr18.i557, %mul15.i553
  %add20.i562 = add i64 %add19.i561, %shl.i556
  %add26.i563 = add i64 %add20.i562, %45
  %sub.i564 = sub i64 0, %add22.i559
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add22.i559)
  %cmp.i565 = icmp ne i64 %add22.i559, 0
  %sub2.i = sub i64 %sub.i541, %add26.i563
  call void @__sanitizer_cov_trace_cmp8(i64 %add26.i563, i64 %sub.i541)
  %cmp3.i = icmp ugt i64 %add26.i563, %sub.i541
  %46 = zext i1 %cmp.i565 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i, i64 %46)
  %cmp8.i = icmp ult i64 %sub2.i, %46
  %.neg.i566 = sext i1 %cmp8.i to i64
  %sub13.i = sub i64 %sub2.i, %46
  %.neg1.i = sext i1 %cmp3.i to i64
  %sub1.i542 = add i64 %rem1.0.lcssa, %.neg.i544
  %sub3.i545 = sub i64 %sub1.i542, %or.i539
  %sub11.i567 = add i64 %sub3.i545, %.neg1.i
  %sub15.i = add i64 %sub11.i567, %.neg.i566
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub15.i)
  %cmp52615 = icmp slt i64 %sub15.i, 0
  br i1 %cmp52615, label %while.body54.lr.ph, label %if.then46.while.end57_crit_edge

if.then46.while.end57_crit_edge:                  ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end57

while.body54.lr.ph:                               ; preds = %if.then46
  %shr9.i = lshr i64 %zSig0.0.lcssa, 63
  br label %while.body54

while.body54:                                     ; preds = %while.body54.while.body54_crit_edge, %while.body54.lr.ph
  %zSig1.0619 = phi i64 [ %spec.store.select82, %while.body54.lr.ph ], [ %dec55, %while.body54.while.body54_crit_edge ]
  %rem3.0618 = phi i64 [ %sub.i564, %while.body54.lr.ph ], [ %add.i570, %while.body54.while.body54_crit_edge ]
  %rem2.0617 = phi i64 [ %sub13.i, %while.body54.lr.ph ], [ %add8.i573, %while.body54.while.body54_crit_edge ]
  %rem1.1616 = phi i64 [ %sub15.i, %while.body54.lr.ph ], [ %add15.i, %while.body54.while.body54_crit_edge ]
  %dec55 = add i64 %zSig1.0619, -1
  %or.i568 = tail call i64 @llvm.fshl.i64(i64 %zSig0.0.lcssa, i64 %dec55, i64 1) #8
  %shl.i569 = shl i64 %dec55, 1
  %or56 = add i64 %rem3.0618, 1
  %add.i570 = add i64 %or56, %shl.i569
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i570, i64 %rem3.0618)
  %cmp.i571 = icmp ult i64 %add.i570, %rem3.0618
  %add2.i = add i64 %or.i568, %rem2.0617
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i, i64 %rem2.0617)
  %cmp3.i572 = icmp ult i64 %add2.i, %rem2.0617
  %add6.i = add nsw i64 %rem1.1616, %shr9.i
  %47 = zext i1 %cmp.i571 to i64
  %add8.i573 = add i64 %add2.i, %47
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i573, i64 %47)
  %cmp10.i = icmp ult i64 %add8.i573, %47
  %48 = zext i1 %cmp10.i to i64
  %49 = zext i1 %cmp3.i572 to i64
  %add13.i = add nsw i64 %add6.i, %49
  %add15.i = add nsw i64 %add13.i, %48
  %cmp52 = icmp slt i64 %add15.i, 0
  br i1 %cmp52, label %while.body54.while.body54_crit_edge, label %while.body54.while.end57_crit_edge

while.body54.while.end57_crit_edge:               ; preds = %while.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end57

while.body54.while.body54_crit_edge:              ; preds = %while.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body54

while.end57:                                      ; preds = %while.body54.while.end57_crit_edge, %if.then46.while.end57_crit_edge
  %rem1.1.lcssa = phi i64 [ %sub15.i, %if.then46.while.end57_crit_edge ], [ %add15.i, %while.body54.while.end57_crit_edge ]
  %rem2.0.lcssa = phi i64 [ %sub13.i, %if.then46.while.end57_crit_edge ], [ %add8.i573, %while.body54.while.end57_crit_edge ]
  %rem3.0.lcssa = phi i64 [ %sub.i564, %if.then46.while.end57_crit_edge ], [ %add.i570, %while.body54.while.end57_crit_edge ]
  %zSig1.0.lcssa = phi i64 [ %spec.store.select82, %if.then46.while.end57_crit_edge ], [ %dec55, %while.body54.while.end57_crit_edge ]
  %or58 = or i64 %rem2.0.lcssa, %rem1.1.lcssa
  %or59 = or i64 %or58, %rem3.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or59)
  %cmp60 = icmp ne i64 %or59, 0
  %50 = zext i1 %cmp60 to i64
  %or63 = or i64 %zSig1.0.lcssa, %50
  br label %if.end64

if.end64:                                         ; preds = %while.end57, %estimateDiv128To64.exit517.if.end64_crit_edge, %while.end.if.end64_crit_edge
  %zSig1.1 = phi i64 [ %or63, %while.end57 ], [ %retval.0.i516, %estimateDiv128To64.exit517.if.end64_crit_edge ], [ -1, %while.end.if.end64_crit_edge ]
  tail call fastcc void @roundAndPackFloatx80(ptr sret(%struct.floatx80) align 4 %agg.result, ptr noundef %roundData, i8 noundef zeroext 0, i32 noundef %add, i64 noundef %zSig0.0.lcssa, i64 noundef %zSig1.1)
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.then23, %invalid, %if.then12, %if.then5, %propagateFloatx80NaN.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @floatx80_eq([3 x i32] %a.coerce, [3 x i32] %b.coerce) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [3 x i32] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [3 x i32] %a.coerce, 1
  %a.coerce.fca.2.extract = extractvalue [3 x i32] %a.coerce, 2
  %b.coerce.fca.0.extract = extractvalue [3 x i32] %b.coerce, 0
  %b.coerce.fca.1.extract = extractvalue [3 x i32] %b.coerce, 1
  %b.coerce.fca.2.extract = extractvalue [3 x i32] %b.coerce, 2
  %and.i = and i32 %a.coerce.fca.0.extract, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 32767
  br i1 %cmp, label %land.lhs.true, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %a.sroa.3.4.insert.ext.i = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.1.4.insert.ext.i = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.1.4.insert.shift.i = shl nuw i64 %a.sroa.1.4.insert.ext.i, 32
  %a.sroa.1.4.insert.shift.i.masked = and i64 %a.sroa.1.4.insert.shift.i, 9223372032559808512
  %shl.mask = or i64 %a.sroa.1.4.insert.shift.i.masked, %a.sroa.3.4.insert.ext.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %tobool.not = icmp eq i64 %shl.mask, 0
  br i1 %tobool.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %and.i117 = and i32 %b.coerce.fca.0.extract, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i117)
  %cmp3 = icmp eq i32 %and.i117, 32767
  %a.sroa.3.4.insert.ext.i118 = zext i32 %b.coerce.fca.2.extract to i64
  %a.sroa.1.4.insert.ext.i119 = zext i32 %b.coerce.fca.1.extract to i64
  %a.sroa.1.4.insert.shift.i120 = shl nuw i64 %a.sroa.1.4.insert.ext.i119, 32
  br i1 %cmp3, label %land.lhs.true4, label %lor.lhs.false.if.end15_crit_edge

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true4:                                   ; preds = %lor.lhs.false
  %a.sroa.1.4.insert.shift.i120.masked = and i64 %a.sroa.1.4.insert.shift.i120, 9223372032559808512
  %shl6.mask = or i64 %a.sroa.1.4.insert.shift.i120.masked, %a.sroa.3.4.insert.ext.i118
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl6.mask)
  %tobool7.not = icmp eq i64 %shl6.mask, 0
  br i1 %tobool7.not, label %land.lhs.true4.if.end15_crit_edge, label %land.lhs.true4.if.then_crit_edge

land.lhs.true4.if.end15_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true4.if.then_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  %.pre144 = zext i32 %a.coerce.fca.2.extract to i64
  %.pre145 = zext i32 %a.coerce.fca.1.extract to i64
  %.pre146 = shl nuw i64 %.pre145, 32
  br label %if.then

if.then:                                          ; preds = %land.lhs.true4.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %a.sroa.2.4.insert.shift.i.pre-phi = phi i64 [ %.pre146, %land.lhs.true4.if.then_crit_edge ], [ %a.sroa.1.4.insert.shift.i, %land.lhs.true.if.then_crit_edge ]
  %a.sroa.5.4.insert.ext.i.pre-phi = phi i64 [ %.pre144, %land.lhs.true4.if.then_crit_edge ], [ %a.sroa.3.4.insert.ext.i, %land.lhs.true.if.then_crit_edge ]
  %a.sroa.2.4.insert.insert.i = or i64 %a.sroa.2.4.insert.shift.i.pre-phi, %a.sroa.5.4.insert.ext.i.pre-phi
  %shl.mask.i = and i64 %a.sroa.2.4.insert.insert.i, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i)
  %tobool.not.i = icmp ne i64 %shl.mask.i, 0
  %or.cond.i = select i1 %cmp, i1 %tobool.not.i, i1 false
  %and.i122 = and i64 %a.sroa.2.4.insert.insert.i, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.2.4.insert.insert.i, i64 %and.i122)
  %cmp4.i.not = icmp eq i64 %a.sroa.2.4.insert.insert.i, %and.i122
  %or.cond = select i1 %or.cond.i, i1 %cmp4.i.not, i1 false
  br i1 %or.cond, label %if.then.if.then14_crit_edge, label %lor.lhs.false10

if.then.if.then14_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

lor.lhs.false10:                                  ; preds = %if.then
  %a.sroa.5.4.insert.ext.i123 = zext i32 %b.coerce.fca.2.extract to i64
  %a.sroa.2.4.insert.ext.i124 = zext i32 %b.coerce.fca.1.extract to i64
  %a.sroa.2.4.insert.shift.i125 = shl nuw i64 %a.sroa.2.4.insert.ext.i124, 32
  %a.sroa.2.4.insert.insert.i126 = or i64 %a.sroa.2.4.insert.shift.i125, %a.sroa.5.4.insert.ext.i123
  %and1.i127 = and i32 %b.coerce.fca.0.extract, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and1.i127)
  %cmp.i128 = icmp eq i32 %and1.i127, 32767
  %shl.mask.i129 = and i64 %a.sroa.2.4.insert.insert.i126, 4611686018427387903
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask.i129)
  %tobool.not.i130 = icmp ne i64 %shl.mask.i129, 0
  %or.cond.i131 = select i1 %cmp.i128, i1 %tobool.not.i130, i1 false
  %and.i132 = and i64 %a.sroa.2.4.insert.insert.i126, -4611686018427387905
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.2.4.insert.insert.i126, i64 %and.i132)
  %cmp4.i133.not = icmp eq i64 %a.sroa.2.4.insert.insert.i126, %and.i132
  %or.cond141 = select i1 %or.cond.i131, i1 %cmp4.i133.not, i1 false
  br i1 %or.cond141, label %lor.lhs.false10.if.then14_crit_edge, label %lor.lhs.false10.return_crit_edge

lor.lhs.false10.return_crit_edge:                 ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false10.if.then14_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false10.if.then14_crit_edge, %if.then.if.then14_crit_edge
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %return

if.end15:                                         ; preds = %land.lhs.true4.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge
  %a.sroa.12.4.insert.ext = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.6.4.insert.ext = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.6.4.insert.shift = shl nuw i64 %a.sroa.6.4.insert.ext, 32
  %a.sroa.6.4.insert.insert = or i64 %a.sroa.6.4.insert.shift, %a.sroa.12.4.insert.ext
  %b.sroa.6.4.insert.insert = or i64 %a.sroa.1.4.insert.shift.i120, %a.sroa.3.4.insert.ext.i118
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.6.4.insert.insert, i64 %b.sroa.6.4.insert.insert)
  %cmp17 = icmp eq i64 %a.sroa.6.4.insert.insert, %b.sroa.6.4.insert.insert
  br i1 %cmp17, label %land.rhs, label %if.end15.land.end37_crit_edge

if.end15.land.end37_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end37

land.rhs:                                         ; preds = %if.end15
  %0 = xor i32 %b.coerce.fca.0.extract, %a.coerce.fca.0.extract
  %1 = and i32 %0, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp22 = icmp eq i32 %1, 0
  br i1 %cmp22, label %land.rhs.land.end37_crit_edge, label %lor.rhs

land.rhs.land.end37_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end37

lor.rhs:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a.sroa.6.4.insert.insert)
  %cmp25 = icmp eq i64 %a.sroa.6.4.insert.insert, 0
  br i1 %cmp25, label %land.rhs27, label %lor.rhs.land.end37_crit_edge

lor.rhs.land.end37_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end37

land.rhs27:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %b.coerce.fca.0.extract, %a.coerce.fca.0.extract
  %2 = and i32 %or, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp35 = icmp eq i32 %2, 0
  br label %land.end37

land.end37:                                       ; preds = %land.rhs27, %lor.rhs.land.end37_crit_edge, %land.rhs.land.end37_crit_edge, %if.end15.land.end37_crit_edge
  %3 = phi i1 [ false, %if.end15.land.end37_crit_edge ], [ true, %land.rhs.land.end37_crit_edge ], [ false, %lor.rhs.land.end37_crit_edge ], [ %cmp35, %land.rhs27 ]
  %conv38 = zext i1 %3 to i8
  br label %return

return:                                           ; preds = %land.end37, %if.then14, %lor.lhs.false10.return_crit_edge
  %retval.0 = phi i8 [ %conv38, %land.end37 ], [ 0, %if.then14 ], [ 0, %lor.lhs.false10.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @floatx80_le([3 x i32] %a.coerce, [3 x i32] %b.coerce) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [3 x i32] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [3 x i32] %a.coerce, 1
  %a.coerce.fca.2.extract = extractvalue [3 x i32] %a.coerce, 2
  %b.coerce.fca.0.extract = extractvalue [3 x i32] %b.coerce, 0
  %b.coerce.fca.1.extract = extractvalue [3 x i32] %b.coerce, 1
  %b.coerce.fca.2.extract = extractvalue [3 x i32] %b.coerce, 2
  %and.i = and i32 %a.coerce.fca.0.extract, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 32767
  br i1 %cmp, label %land.lhs.true, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %a.sroa.3.4.insert.ext.i = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.1.4.insert.ext.i = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.1.4.insert.shift.i = shl nuw i64 %a.sroa.1.4.insert.ext.i, 32
  %a.sroa.1.4.insert.shift.i.masked = and i64 %a.sroa.1.4.insert.shift.i, 9223372032559808512
  %shl.mask = or i64 %a.sroa.1.4.insert.shift.i.masked, %a.sroa.3.4.insert.ext.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %tobool.not = icmp eq i64 %shl.mask, 0
  br i1 %tobool.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %and.i161 = and i32 %b.coerce.fca.0.extract, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i161)
  %cmp3 = icmp eq i32 %and.i161, 32767
  br i1 %cmp3, label %land.lhs.true4, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true4:                                   ; preds = %lor.lhs.false
  %a.sroa.3.4.insert.ext.i162 = zext i32 %b.coerce.fca.2.extract to i64
  %a.sroa.1.4.insert.ext.i163 = zext i32 %b.coerce.fca.1.extract to i64
  %a.sroa.1.4.insert.shift.i164 = shl nuw i64 %a.sroa.1.4.insert.ext.i163, 32
  %a.sroa.1.4.insert.shift.i164.masked = and i64 %a.sroa.1.4.insert.shift.i164, 9223372032559808512
  %shl6.mask = or i64 %a.sroa.1.4.insert.shift.i164.masked, %a.sroa.3.4.insert.ext.i162
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl6.mask)
  %tobool7.not = icmp eq i64 %shl6.mask, 0
  br i1 %tobool7.not, label %land.lhs.true4.if.end_crit_edge, label %land.lhs.true4.if.then_crit_edge

land.lhs.true4.if.then_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true4.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true4.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %conv.i = lshr i32 %a.coerce.fca.0.extract, 15
  %0 = trunc i32 %conv.i to i8
  %conv1.i = and i8 %0, 1
  %conv.i166 = lshr i32 %b.coerce.fca.0.extract, 15
  %1 = trunc i32 %conv.i166 to i8
  %conv1.i167 = and i8 %1, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %conv1.i, i8 %conv1.i167)
  %cmp11.not = icmp eq i8 %conv1.i, %conv1.i167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i)
  %tobool30.not = icmp eq i8 %conv1.i, 0
  br i1 %cmp11.not, label %if.end28, label %if.then13

if.then13:                                        ; preds = %if.end
  br i1 %tobool30.not, label %lor.rhs, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %a.sroa.4.0.insert.ext160 = or i32 %b.coerce.fca.0.extract, %a.coerce.fca.0.extract
  %a.sroa.4.0.insert.ext160.tr = trunc i32 %a.sroa.4.0.insert.ext160 to i16
  %conv20 = shl i16 %a.sroa.4.0.insert.ext160.tr, 1
  %conv21 = zext i16 %conv20 to i64
  %a.sroa.14.4.insert.ext = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.7.4.insert.ext = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.7.4.insert.shift = shl nuw i64 %a.sroa.7.4.insert.ext, 32
  %a.sroa.7.4.insert.insert = or i64 %a.sroa.7.4.insert.shift, %a.sroa.14.4.insert.ext
  %b.sroa.14.4.insert.ext = zext i32 %b.coerce.fca.2.extract to i64
  %b.sroa.7.4.insert.ext = zext i32 %b.coerce.fca.1.extract to i64
  %b.sroa.7.4.insert.shift = shl nuw i64 %b.sroa.7.4.insert.ext, 32
  %b.sroa.7.4.insert.insert = or i64 %b.sroa.7.4.insert.shift, %b.sroa.14.4.insert.ext
  %or22 = or i64 %b.sroa.7.4.insert.insert, %a.sroa.7.4.insert.insert
  %or24 = or i64 %or22, %conv21
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or24)
  %cmp25 = icmp eq i64 %or24, 0
  br label %cleanup

if.end28:                                         ; preds = %if.end
  br i1 %tobool30.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end28
  %b.sroa.4.0.extract.trunc.mask158 = and i32 %b.coerce.fca.0.extract, 65535
  %a.sroa.4.0.extract.trunc.mask159 = and i32 %a.coerce.fca.0.extract, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %b.sroa.4.0.extract.trunc.mask158, i32 %a.sroa.4.0.extract.trunc.mask159)
  %cmp.i = icmp ult i32 %b.sroa.4.0.extract.trunc.mask158, %a.sroa.4.0.extract.trunc.mask159
  br i1 %cmp.i, label %cond.true.cleanup_crit_edge, label %lor.rhs.i

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs.i:                                        ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  %a.sroa.7.4.insert.ext141 = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.7.4.insert.shift142 = shl nuw i64 %a.sroa.7.4.insert.ext141, 32
  %a.sroa.14.4.insert.ext151 = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.7.4.insert.insert144 = or i64 %a.sroa.7.4.insert.shift142, %a.sroa.14.4.insert.ext151
  %b.sroa.7.4.insert.ext86 = zext i32 %b.coerce.fca.1.extract to i64
  %b.sroa.7.4.insert.shift87 = shl nuw i64 %b.sroa.7.4.insert.ext86, 32
  %b.sroa.14.4.insert.ext96 = zext i32 %b.coerce.fca.2.extract to i64
  %b.sroa.7.4.insert.insert89 = or i64 %b.sroa.7.4.insert.shift87, %b.sroa.14.4.insert.ext96
  call void @__sanitizer_cov_trace_cmp4(i32 %b.sroa.4.0.extract.trunc.mask158, i32 %a.sroa.4.0.extract.trunc.mask159)
  %cmp1.i = icmp eq i32 %b.sroa.4.0.extract.trunc.mask158, %a.sroa.4.0.extract.trunc.mask159
  call void @__sanitizer_cov_trace_cmp8(i64 %b.sroa.7.4.insert.insert89, i64 %a.sroa.7.4.insert.insert144)
  %cmp2.i = icmp ule i64 %b.sroa.7.4.insert.insert89, %a.sroa.7.4.insert.insert144
  %spec.select.i = and i1 %cmp1.i, %cmp2.i
  br label %cleanup

cond.false:                                       ; preds = %if.end28
  %a.sroa.4.0.extract.trunc.mask = and i32 %a.coerce.fca.0.extract, 65535
  %b.sroa.4.0.extract.trunc.mask = and i32 %b.coerce.fca.0.extract, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %a.sroa.4.0.extract.trunc.mask, i32 %b.sroa.4.0.extract.trunc.mask)
  %cmp.i169 = icmp ult i32 %a.sroa.4.0.extract.trunc.mask, %b.sroa.4.0.extract.trunc.mask
  br i1 %cmp.i169, label %cond.false.cleanup_crit_edge, label %lor.rhs.i173

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs.i173:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %b.sroa.7.4.insert.ext91 = zext i32 %b.coerce.fca.1.extract to i64
  %b.sroa.7.4.insert.shift92 = shl nuw i64 %b.sroa.7.4.insert.ext91, 32
  %b.sroa.14.4.insert.ext100 = zext i32 %b.coerce.fca.2.extract to i64
  %b.sroa.7.4.insert.insert94 = or i64 %b.sroa.7.4.insert.shift92, %b.sroa.14.4.insert.ext100
  %a.sroa.7.4.insert.ext146 = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.7.4.insert.shift147 = shl nuw i64 %a.sroa.7.4.insert.ext146, 32
  %a.sroa.14.4.insert.ext155 = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.7.4.insert.insert149 = or i64 %a.sroa.7.4.insert.shift147, %a.sroa.14.4.insert.ext155
  call void @__sanitizer_cov_trace_cmp4(i32 %a.sroa.4.0.extract.trunc.mask, i32 %b.sroa.4.0.extract.trunc.mask)
  %cmp1.i170 = icmp eq i32 %a.sroa.4.0.extract.trunc.mask, %b.sroa.4.0.extract.trunc.mask
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.7.4.insert.insert149, i64 %b.sroa.7.4.insert.insert94)
  %cmp2.i171 = icmp ule i64 %a.sroa.7.4.insert.insert149, %b.sroa.7.4.insert.insert94
  %spec.select.i172 = and i1 %cmp1.i170, %cmp2.i171
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs.i173, %cond.false.cleanup_crit_edge, %lor.rhs.i, %cond.true.cleanup_crit_edge, %lor.rhs, %if.then13.cleanup_crit_edge, %if.then
  %retval.0.shrunk = phi i1 [ false, %if.then ], [ true, %if.then13.cleanup_crit_edge ], [ %cmp25, %lor.rhs ], [ true, %cond.true.cleanup_crit_edge ], [ %spec.select.i, %lor.rhs.i ], [ true, %cond.false.cleanup_crit_edge ], [ %spec.select.i172, %lor.rhs.i173 ]
  %retval.0 = zext i1 %retval.0.shrunk to i8
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @floatx80_lt([3 x i32] %a.coerce, [3 x i32] %b.coerce) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [3 x i32] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [3 x i32] %a.coerce, 1
  %a.coerce.fca.2.extract = extractvalue [3 x i32] %a.coerce, 2
  %b.coerce.fca.0.extract = extractvalue [3 x i32] %b.coerce, 0
  %b.coerce.fca.1.extract = extractvalue [3 x i32] %b.coerce, 1
  %b.coerce.fca.2.extract = extractvalue [3 x i32] %b.coerce, 2
  %and.i = and i32 %a.coerce.fca.0.extract, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 32767
  br i1 %cmp, label %land.lhs.true, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %a.sroa.3.4.insert.ext.i = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.1.4.insert.ext.i = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.1.4.insert.shift.i = shl nuw i64 %a.sroa.1.4.insert.ext.i, 32
  %a.sroa.1.4.insert.shift.i.masked = and i64 %a.sroa.1.4.insert.shift.i, 9223372032559808512
  %shl.mask = or i64 %a.sroa.1.4.insert.shift.i.masked, %a.sroa.3.4.insert.ext.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %tobool.not = icmp eq i64 %shl.mask, 0
  br i1 %tobool.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %and.i161 = and i32 %b.coerce.fca.0.extract, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i161)
  %cmp3 = icmp eq i32 %and.i161, 32767
  br i1 %cmp3, label %land.lhs.true4, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true4:                                   ; preds = %lor.lhs.false
  %a.sroa.3.4.insert.ext.i162 = zext i32 %b.coerce.fca.2.extract to i64
  %a.sroa.1.4.insert.ext.i163 = zext i32 %b.coerce.fca.1.extract to i64
  %a.sroa.1.4.insert.shift.i164 = shl nuw i64 %a.sroa.1.4.insert.ext.i163, 32
  %a.sroa.1.4.insert.shift.i164.masked = and i64 %a.sroa.1.4.insert.shift.i164, 9223372032559808512
  %shl6.mask = or i64 %a.sroa.1.4.insert.shift.i164.masked, %a.sroa.3.4.insert.ext.i162
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl6.mask)
  %tobool7.not = icmp eq i64 %shl6.mask, 0
  br i1 %tobool7.not, label %land.lhs.true4.if.end_crit_edge, label %land.lhs.true4.if.then_crit_edge

land.lhs.true4.if.then_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true4.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true4.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %conv.i = lshr i32 %a.coerce.fca.0.extract, 15
  %0 = trunc i32 %conv.i to i8
  %conv1.i = and i8 %0, 1
  %conv.i166 = lshr i32 %b.coerce.fca.0.extract, 15
  %1 = trunc i32 %conv.i166 to i8
  %conv1.i167 = and i8 %1, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %conv1.i, i8 %conv1.i167)
  %cmp11.not = icmp eq i8 %conv1.i, %conv1.i167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i)
  %tobool30.not = icmp eq i8 %conv1.i, 0
  br i1 %cmp11.not, label %if.end28, label %if.then13

if.then13:                                        ; preds = %if.end
  br i1 %tobool30.not, label %if.then13.cleanup_crit_edge, label %land.rhs

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %a.sroa.4.0.insert.ext160 = or i32 %b.coerce.fca.0.extract, %a.coerce.fca.0.extract
  %a.sroa.4.0.insert.ext160.tr = trunc i32 %a.sroa.4.0.insert.ext160 to i16
  %conv20 = shl i16 %a.sroa.4.0.insert.ext160.tr, 1
  %conv21 = zext i16 %conv20 to i64
  %a.sroa.14.4.insert.ext = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.7.4.insert.ext = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.7.4.insert.shift = shl nuw i64 %a.sroa.7.4.insert.ext, 32
  %a.sroa.7.4.insert.insert = or i64 %a.sroa.7.4.insert.shift, %a.sroa.14.4.insert.ext
  %b.sroa.14.4.insert.ext = zext i32 %b.coerce.fca.2.extract to i64
  %b.sroa.7.4.insert.ext = zext i32 %b.coerce.fca.1.extract to i64
  %b.sroa.7.4.insert.shift = shl nuw i64 %b.sroa.7.4.insert.ext, 32
  %b.sroa.7.4.insert.insert = or i64 %b.sroa.7.4.insert.shift, %b.sroa.14.4.insert.ext
  %or22 = or i64 %b.sroa.7.4.insert.insert, %a.sroa.7.4.insert.insert
  %or24 = or i64 %or22, %conv21
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or24)
  %cmp25 = icmp ne i64 %or24, 0
  br label %cleanup

if.end28:                                         ; preds = %if.end
  br i1 %tobool30.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end28
  %b.sroa.4.0.extract.trunc.mask158 = and i32 %b.coerce.fca.0.extract, 65535
  %a.sroa.4.0.extract.trunc.mask159 = and i32 %a.coerce.fca.0.extract, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %b.sroa.4.0.extract.trunc.mask158, i32 %a.sroa.4.0.extract.trunc.mask159)
  %cmp.i = icmp ult i32 %b.sroa.4.0.extract.trunc.mask158, %a.sroa.4.0.extract.trunc.mask159
  br i1 %cmp.i, label %cond.true.cleanup_crit_edge, label %lor.rhs.i

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs.i:                                        ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  %a.sroa.7.4.insert.ext141 = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.7.4.insert.shift142 = shl nuw i64 %a.sroa.7.4.insert.ext141, 32
  %a.sroa.14.4.insert.ext151 = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.7.4.insert.insert144 = or i64 %a.sroa.7.4.insert.shift142, %a.sroa.14.4.insert.ext151
  %b.sroa.7.4.insert.ext86 = zext i32 %b.coerce.fca.1.extract to i64
  %b.sroa.7.4.insert.shift87 = shl nuw i64 %b.sroa.7.4.insert.ext86, 32
  %b.sroa.14.4.insert.ext96 = zext i32 %b.coerce.fca.2.extract to i64
  %b.sroa.7.4.insert.insert89 = or i64 %b.sroa.7.4.insert.shift87, %b.sroa.14.4.insert.ext96
  call void @__sanitizer_cov_trace_cmp4(i32 %b.sroa.4.0.extract.trunc.mask158, i32 %a.sroa.4.0.extract.trunc.mask159)
  %cmp1.i = icmp eq i32 %b.sroa.4.0.extract.trunc.mask158, %a.sroa.4.0.extract.trunc.mask159
  call void @__sanitizer_cov_trace_cmp8(i64 %b.sroa.7.4.insert.insert89, i64 %a.sroa.7.4.insert.insert144)
  %cmp2.i = icmp ult i64 %b.sroa.7.4.insert.insert89, %a.sroa.7.4.insert.insert144
  %spec.select.i = and i1 %cmp1.i, %cmp2.i
  br label %cleanup

cond.false:                                       ; preds = %if.end28
  %a.sroa.4.0.extract.trunc.mask = and i32 %a.coerce.fca.0.extract, 65535
  %b.sroa.4.0.extract.trunc.mask = and i32 %b.coerce.fca.0.extract, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %a.sroa.4.0.extract.trunc.mask, i32 %b.sroa.4.0.extract.trunc.mask)
  %cmp.i169 = icmp ult i32 %a.sroa.4.0.extract.trunc.mask, %b.sroa.4.0.extract.trunc.mask
  br i1 %cmp.i169, label %cond.false.cleanup_crit_edge, label %lor.rhs.i173

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs.i173:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %b.sroa.7.4.insert.ext91 = zext i32 %b.coerce.fca.1.extract to i64
  %b.sroa.7.4.insert.shift92 = shl nuw i64 %b.sroa.7.4.insert.ext91, 32
  %b.sroa.14.4.insert.ext100 = zext i32 %b.coerce.fca.2.extract to i64
  %b.sroa.7.4.insert.insert94 = or i64 %b.sroa.7.4.insert.shift92, %b.sroa.14.4.insert.ext100
  %a.sroa.7.4.insert.ext146 = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.7.4.insert.shift147 = shl nuw i64 %a.sroa.7.4.insert.ext146, 32
  %a.sroa.14.4.insert.ext155 = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.7.4.insert.insert149 = or i64 %a.sroa.7.4.insert.shift147, %a.sroa.14.4.insert.ext155
  call void @__sanitizer_cov_trace_cmp4(i32 %a.sroa.4.0.extract.trunc.mask, i32 %b.sroa.4.0.extract.trunc.mask)
  %cmp1.i170 = icmp eq i32 %a.sroa.4.0.extract.trunc.mask, %b.sroa.4.0.extract.trunc.mask
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.7.4.insert.insert149, i64 %b.sroa.7.4.insert.insert94)
  %cmp2.i171 = icmp ult i64 %a.sroa.7.4.insert.insert149, %b.sroa.7.4.insert.insert94
  %spec.select.i172 = and i1 %cmp1.i170, %cmp2.i171
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs.i173, %cond.false.cleanup_crit_edge, %lor.rhs.i, %cond.true.cleanup_crit_edge, %land.rhs, %if.then13.cleanup_crit_edge, %if.then
  %retval.0.shrunk = phi i1 [ false, %if.then ], [ false, %if.then13.cleanup_crit_edge ], [ %cmp25, %land.rhs ], [ true, %cond.true.cleanup_crit_edge ], [ %spec.select.i, %lor.rhs.i ], [ true, %cond.false.cleanup_crit_edge ], [ %spec.select.i172, %lor.rhs.i173 ]
  %retval.0 = zext i1 %retval.0.shrunk to i8
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @floatx80_eq_signaling([3 x i32] %a.coerce, [3 x i32] %b.coerce) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [3 x i32] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [3 x i32] %a.coerce, 1
  %a.coerce.fca.2.extract = extractvalue [3 x i32] %a.coerce, 2
  %b.coerce.fca.0.extract = extractvalue [3 x i32] %b.coerce, 0
  %b.coerce.fca.1.extract = extractvalue [3 x i32] %b.coerce, 1
  %b.coerce.fca.2.extract = extractvalue [3 x i32] %b.coerce, 2
  %and.i = and i32 %a.coerce.fca.0.extract, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 32767
  br i1 %cmp, label %land.lhs.true, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %a.sroa.3.4.insert.ext.i = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.1.4.insert.ext.i = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.1.4.insert.shift.i = shl nuw i64 %a.sroa.1.4.insert.ext.i, 32
  %a.sroa.1.4.insert.shift.i.masked = and i64 %a.sroa.1.4.insert.shift.i, 9223372032559808512
  %shl.mask = or i64 %a.sroa.1.4.insert.shift.i.masked, %a.sroa.3.4.insert.ext.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %tobool.not = icmp eq i64 %shl.mask, 0
  br i1 %tobool.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %and.i75 = and i32 %b.coerce.fca.0.extract, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i75)
  %cmp3 = icmp eq i32 %and.i75, 32767
  %a.sroa.3.4.insert.ext.i76 = zext i32 %b.coerce.fca.2.extract to i64
  %a.sroa.1.4.insert.ext.i77 = zext i32 %b.coerce.fca.1.extract to i64
  %a.sroa.1.4.insert.shift.i78 = shl nuw i64 %a.sroa.1.4.insert.ext.i77, 32
  br i1 %cmp3, label %land.lhs.true4, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true4:                                   ; preds = %lor.lhs.false
  %a.sroa.1.4.insert.shift.i78.masked = and i64 %a.sroa.1.4.insert.shift.i78, 9223372032559808512
  %shl6.mask = or i64 %a.sroa.1.4.insert.shift.i78.masked, %a.sroa.3.4.insert.ext.i76
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl6.mask)
  %tobool7.not = icmp eq i64 %shl6.mask, 0
  br i1 %tobool7.not, label %land.lhs.true4.if.end_crit_edge, label %land.lhs.true4.if.then_crit_edge

land.lhs.true4.if.then_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true4.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  tail call void @float_raise(i8 noundef signext 1) #8
  br label %return

if.end:                                           ; preds = %land.lhs.true4.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %a.sroa.10.4.insert.ext = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.5.4.insert.ext = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.5.4.insert.shift = shl nuw i64 %a.sroa.5.4.insert.ext, 32
  %a.sroa.5.4.insert.insert = or i64 %a.sroa.5.4.insert.shift, %a.sroa.10.4.insert.ext
  %b.sroa.5.4.insert.insert = or i64 %a.sroa.1.4.insert.shift.i78, %a.sroa.3.4.insert.ext.i76
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.5.4.insert.insert, i64 %b.sroa.5.4.insert.insert)
  %cmp9 = icmp eq i64 %a.sroa.5.4.insert.insert, %b.sroa.5.4.insert.insert
  br i1 %cmp9, label %land.rhs, label %if.end.land.end27_crit_edge

if.end.land.end27_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end27

land.rhs:                                         ; preds = %if.end
  %0 = xor i32 %b.coerce.fca.0.extract, %a.coerce.fca.0.extract
  %1 = and i32 %0, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12 = icmp eq i32 %1, 0
  br i1 %cmp12, label %land.rhs.land.end27_crit_edge, label %lor.rhs

land.rhs.land.end27_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end27

lor.rhs:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a.sroa.5.4.insert.insert)
  %cmp15 = icmp eq i64 %a.sroa.5.4.insert.insert, 0
  br i1 %cmp15, label %land.rhs17, label %lor.rhs.land.end27_crit_edge

lor.rhs.land.end27_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end27

land.rhs17:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %b.coerce.fca.0.extract, %a.coerce.fca.0.extract
  %2 = and i32 %or, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp25 = icmp eq i32 %2, 0
  br label %land.end27

land.end27:                                       ; preds = %land.rhs17, %lor.rhs.land.end27_crit_edge, %land.rhs.land.end27_crit_edge, %if.end.land.end27_crit_edge
  %3 = phi i1 [ false, %if.end.land.end27_crit_edge ], [ true, %land.rhs.land.end27_crit_edge ], [ false, %lor.rhs.land.end27_crit_edge ], [ %cmp25, %land.rhs17 ]
  %conv28 = zext i1 %3 to i8
  br label %return

return:                                           ; preds = %land.end27, %if.then
  %retval.0 = phi i8 [ 0, %if.then ], [ %conv28, %land.end27 ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @floatx80_le_quiet([3 x i32] %a.coerce, [3 x i32] %b.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [3 x i32] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [3 x i32] %a.coerce, 1
  %a.coerce.fca.2.extract = extractvalue [3 x i32] %a.coerce, 2
  %b.coerce.fca.0.extract = extractvalue [3 x i32] %b.coerce, 0
  %b.coerce.fca.1.extract = extractvalue [3 x i32] %b.coerce, 1
  %b.coerce.fca.2.extract = extractvalue [3 x i32] %b.coerce, 2
  %and.i = and i32 %a.coerce.fca.0.extract, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 32767
  br i1 %cmp, label %land.lhs.true, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %a.sroa.3.4.insert.ext.i = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.1.4.insert.ext.i = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.1.4.insert.shift.i = shl nuw i64 %a.sroa.1.4.insert.ext.i, 32
  %a.sroa.1.4.insert.shift.i.masked = and i64 %a.sroa.1.4.insert.shift.i, 9223372032559808512
  %shl.mask = or i64 %a.sroa.1.4.insert.shift.i.masked, %a.sroa.3.4.insert.ext.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %tobool.not = icmp eq i64 %shl.mask, 0
  br i1 %tobool.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %and.i161 = and i32 %b.coerce.fca.0.extract, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i161)
  %cmp3 = icmp eq i32 %and.i161, 32767
  br i1 %cmp3, label %land.lhs.true4, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true4:                                   ; preds = %lor.lhs.false
  %a.sroa.3.4.insert.ext.i162 = zext i32 %b.coerce.fca.2.extract to i64
  %a.sroa.1.4.insert.ext.i163 = zext i32 %b.coerce.fca.1.extract to i64
  %a.sroa.1.4.insert.shift.i164 = shl nuw i64 %a.sroa.1.4.insert.ext.i163, 32
  %a.sroa.1.4.insert.shift.i164.masked = and i64 %a.sroa.1.4.insert.shift.i164, 9223372032559808512
  %shl6.mask = or i64 %a.sroa.1.4.insert.shift.i164.masked, %a.sroa.3.4.insert.ext.i162
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl6.mask)
  %tobool7.not = icmp eq i64 %shl6.mask, 0
  br i1 %tobool7.not, label %land.lhs.true4.if.end_crit_edge, label %land.lhs.true4.cleanup_crit_edge

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true4.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %conv.i = lshr i32 %a.coerce.fca.0.extract, 15
  %0 = trunc i32 %conv.i to i8
  %conv1.i = and i8 %0, 1
  %conv.i166 = lshr i32 %b.coerce.fca.0.extract, 15
  %1 = trunc i32 %conv.i166 to i8
  %conv1.i167 = and i8 %1, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %conv1.i, i8 %conv1.i167)
  %cmp11.not = icmp eq i8 %conv1.i, %conv1.i167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i)
  %tobool30.not = icmp eq i8 %conv1.i, 0
  br i1 %cmp11.not, label %if.end28, label %if.then13

if.then13:                                        ; preds = %if.end
  br i1 %tobool30.not, label %lor.rhs, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %a.sroa.4.0.insert.ext160 = or i32 %b.coerce.fca.0.extract, %a.coerce.fca.0.extract
  %a.sroa.4.0.insert.ext160.tr = trunc i32 %a.sroa.4.0.insert.ext160 to i16
  %conv20 = shl i16 %a.sroa.4.0.insert.ext160.tr, 1
  %conv21 = zext i16 %conv20 to i64
  %a.sroa.14.4.insert.ext = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.7.4.insert.ext = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.7.4.insert.shift = shl nuw i64 %a.sroa.7.4.insert.ext, 32
  %a.sroa.7.4.insert.insert = or i64 %a.sroa.7.4.insert.shift, %a.sroa.14.4.insert.ext
  %b.sroa.14.4.insert.ext = zext i32 %b.coerce.fca.2.extract to i64
  %b.sroa.7.4.insert.ext = zext i32 %b.coerce.fca.1.extract to i64
  %b.sroa.7.4.insert.shift = shl nuw i64 %b.sroa.7.4.insert.ext, 32
  %b.sroa.7.4.insert.insert = or i64 %b.sroa.7.4.insert.shift, %b.sroa.14.4.insert.ext
  %or22 = or i64 %b.sroa.7.4.insert.insert, %a.sroa.7.4.insert.insert
  %or24 = or i64 %or22, %conv21
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or24)
  %cmp25 = icmp eq i64 %or24, 0
  br label %cleanup

if.end28:                                         ; preds = %if.end
  br i1 %tobool30.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end28
  %b.sroa.4.0.extract.trunc.mask158 = and i32 %b.coerce.fca.0.extract, 65535
  %a.sroa.4.0.extract.trunc.mask159 = and i32 %a.coerce.fca.0.extract, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %b.sroa.4.0.extract.trunc.mask158, i32 %a.sroa.4.0.extract.trunc.mask159)
  %cmp.i = icmp ult i32 %b.sroa.4.0.extract.trunc.mask158, %a.sroa.4.0.extract.trunc.mask159
  br i1 %cmp.i, label %cond.true.cleanup_crit_edge, label %lor.rhs.i

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs.i:                                        ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  %a.sroa.7.4.insert.ext141 = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.7.4.insert.shift142 = shl nuw i64 %a.sroa.7.4.insert.ext141, 32
  %a.sroa.14.4.insert.ext151 = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.7.4.insert.insert144 = or i64 %a.sroa.7.4.insert.shift142, %a.sroa.14.4.insert.ext151
  %b.sroa.7.4.insert.ext86 = zext i32 %b.coerce.fca.1.extract to i64
  %b.sroa.7.4.insert.shift87 = shl nuw i64 %b.sroa.7.4.insert.ext86, 32
  %b.sroa.14.4.insert.ext96 = zext i32 %b.coerce.fca.2.extract to i64
  %b.sroa.7.4.insert.insert89 = or i64 %b.sroa.7.4.insert.shift87, %b.sroa.14.4.insert.ext96
  call void @__sanitizer_cov_trace_cmp4(i32 %b.sroa.4.0.extract.trunc.mask158, i32 %a.sroa.4.0.extract.trunc.mask159)
  %cmp1.i = icmp eq i32 %b.sroa.4.0.extract.trunc.mask158, %a.sroa.4.0.extract.trunc.mask159
  call void @__sanitizer_cov_trace_cmp8(i64 %b.sroa.7.4.insert.insert89, i64 %a.sroa.7.4.insert.insert144)
  %cmp2.i = icmp ule i64 %b.sroa.7.4.insert.insert89, %a.sroa.7.4.insert.insert144
  %spec.select.i = and i1 %cmp1.i, %cmp2.i
  br label %cleanup

cond.false:                                       ; preds = %if.end28
  %a.sroa.4.0.extract.trunc.mask = and i32 %a.coerce.fca.0.extract, 65535
  %b.sroa.4.0.extract.trunc.mask = and i32 %b.coerce.fca.0.extract, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %a.sroa.4.0.extract.trunc.mask, i32 %b.sroa.4.0.extract.trunc.mask)
  %cmp.i169 = icmp ult i32 %a.sroa.4.0.extract.trunc.mask, %b.sroa.4.0.extract.trunc.mask
  br i1 %cmp.i169, label %cond.false.cleanup_crit_edge, label %lor.rhs.i173

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs.i173:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %b.sroa.7.4.insert.ext91 = zext i32 %b.coerce.fca.1.extract to i64
  %b.sroa.7.4.insert.shift92 = shl nuw i64 %b.sroa.7.4.insert.ext91, 32
  %b.sroa.14.4.insert.ext100 = zext i32 %b.coerce.fca.2.extract to i64
  %b.sroa.7.4.insert.insert94 = or i64 %b.sroa.7.4.insert.shift92, %b.sroa.14.4.insert.ext100
  %a.sroa.7.4.insert.ext146 = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.7.4.insert.shift147 = shl nuw i64 %a.sroa.7.4.insert.ext146, 32
  %a.sroa.14.4.insert.ext155 = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.7.4.insert.insert149 = or i64 %a.sroa.7.4.insert.shift147, %a.sroa.14.4.insert.ext155
  call void @__sanitizer_cov_trace_cmp4(i32 %a.sroa.4.0.extract.trunc.mask, i32 %b.sroa.4.0.extract.trunc.mask)
  %cmp1.i170 = icmp eq i32 %a.sroa.4.0.extract.trunc.mask, %b.sroa.4.0.extract.trunc.mask
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.7.4.insert.insert149, i64 %b.sroa.7.4.insert.insert94)
  %cmp2.i171 = icmp ule i64 %a.sroa.7.4.insert.insert149, %b.sroa.7.4.insert.insert94
  %spec.select.i172 = and i1 %cmp1.i170, %cmp2.i171
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs.i173, %cond.false.cleanup_crit_edge, %lor.rhs.i, %cond.true.cleanup_crit_edge, %lor.rhs, %if.then13.cleanup_crit_edge, %land.lhs.true4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0.shrunk = phi i1 [ false, %land.lhs.true4.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ true, %if.then13.cleanup_crit_edge ], [ %cmp25, %lor.rhs ], [ true, %cond.true.cleanup_crit_edge ], [ %spec.select.i, %lor.rhs.i ], [ true, %cond.false.cleanup_crit_edge ], [ %spec.select.i172, %lor.rhs.i173 ]
  %retval.0 = zext i1 %retval.0.shrunk to i8
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @floatx80_lt_quiet([3 x i32] %a.coerce, [3 x i32] %b.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %a.coerce.fca.0.extract = extractvalue [3 x i32] %a.coerce, 0
  %a.coerce.fca.1.extract = extractvalue [3 x i32] %a.coerce, 1
  %a.coerce.fca.2.extract = extractvalue [3 x i32] %a.coerce, 2
  %b.coerce.fca.0.extract = extractvalue [3 x i32] %b.coerce, 0
  %b.coerce.fca.1.extract = extractvalue [3 x i32] %b.coerce, 1
  %b.coerce.fca.2.extract = extractvalue [3 x i32] %b.coerce, 2
  %and.i = and i32 %a.coerce.fca.0.extract, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 32767
  br i1 %cmp, label %land.lhs.true, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %a.sroa.3.4.insert.ext.i = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.1.4.insert.ext.i = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.1.4.insert.shift.i = shl nuw i64 %a.sroa.1.4.insert.ext.i, 32
  %a.sroa.1.4.insert.shift.i.masked = and i64 %a.sroa.1.4.insert.shift.i, 9223372032559808512
  %shl.mask = or i64 %a.sroa.1.4.insert.shift.i.masked, %a.sroa.3.4.insert.ext.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.mask)
  %tobool.not = icmp eq i64 %shl.mask, 0
  br i1 %tobool.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %and.i161 = and i32 %b.coerce.fca.0.extract, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i161)
  %cmp3 = icmp eq i32 %and.i161, 32767
  br i1 %cmp3, label %land.lhs.true4, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true4:                                   ; preds = %lor.lhs.false
  %a.sroa.3.4.insert.ext.i162 = zext i32 %b.coerce.fca.2.extract to i64
  %a.sroa.1.4.insert.ext.i163 = zext i32 %b.coerce.fca.1.extract to i64
  %a.sroa.1.4.insert.shift.i164 = shl nuw i64 %a.sroa.1.4.insert.ext.i163, 32
  %a.sroa.1.4.insert.shift.i164.masked = and i64 %a.sroa.1.4.insert.shift.i164, 9223372032559808512
  %shl6.mask = or i64 %a.sroa.1.4.insert.shift.i164.masked, %a.sroa.3.4.insert.ext.i162
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl6.mask)
  %tobool7.not = icmp eq i64 %shl6.mask, 0
  br i1 %tobool7.not, label %land.lhs.true4.if.end_crit_edge, label %land.lhs.true4.cleanup_crit_edge

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true4.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %conv.i = lshr i32 %a.coerce.fca.0.extract, 15
  %0 = trunc i32 %conv.i to i8
  %conv1.i = and i8 %0, 1
  %conv.i166 = lshr i32 %b.coerce.fca.0.extract, 15
  %1 = trunc i32 %conv.i166 to i8
  %conv1.i167 = and i8 %1, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %conv1.i, i8 %conv1.i167)
  %cmp11.not = icmp eq i8 %conv1.i, %conv1.i167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i)
  %tobool30.not = icmp eq i8 %conv1.i, 0
  br i1 %cmp11.not, label %if.end28, label %if.then13

if.then13:                                        ; preds = %if.end
  br i1 %tobool30.not, label %if.then13.cleanup_crit_edge, label %land.rhs

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %a.sroa.4.0.insert.ext160 = or i32 %b.coerce.fca.0.extract, %a.coerce.fca.0.extract
  %a.sroa.4.0.insert.ext160.tr = trunc i32 %a.sroa.4.0.insert.ext160 to i16
  %conv20 = shl i16 %a.sroa.4.0.insert.ext160.tr, 1
  %conv21 = zext i16 %conv20 to i64
  %a.sroa.14.4.insert.ext = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.7.4.insert.ext = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.7.4.insert.shift = shl nuw i64 %a.sroa.7.4.insert.ext, 32
  %a.sroa.7.4.insert.insert = or i64 %a.sroa.7.4.insert.shift, %a.sroa.14.4.insert.ext
  %b.sroa.14.4.insert.ext = zext i32 %b.coerce.fca.2.extract to i64
  %b.sroa.7.4.insert.ext = zext i32 %b.coerce.fca.1.extract to i64
  %b.sroa.7.4.insert.shift = shl nuw i64 %b.sroa.7.4.insert.ext, 32
  %b.sroa.7.4.insert.insert = or i64 %b.sroa.7.4.insert.shift, %b.sroa.14.4.insert.ext
  %or22 = or i64 %b.sroa.7.4.insert.insert, %a.sroa.7.4.insert.insert
  %or24 = or i64 %or22, %conv21
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or24)
  %cmp25 = icmp ne i64 %or24, 0
  br label %cleanup

if.end28:                                         ; preds = %if.end
  br i1 %tobool30.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end28
  %b.sroa.4.0.extract.trunc.mask158 = and i32 %b.coerce.fca.0.extract, 65535
  %a.sroa.4.0.extract.trunc.mask159 = and i32 %a.coerce.fca.0.extract, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %b.sroa.4.0.extract.trunc.mask158, i32 %a.sroa.4.0.extract.trunc.mask159)
  %cmp.i = icmp ult i32 %b.sroa.4.0.extract.trunc.mask158, %a.sroa.4.0.extract.trunc.mask159
  br i1 %cmp.i, label %cond.true.cleanup_crit_edge, label %lor.rhs.i

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs.i:                                        ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  %a.sroa.7.4.insert.ext141 = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.7.4.insert.shift142 = shl nuw i64 %a.sroa.7.4.insert.ext141, 32
  %a.sroa.14.4.insert.ext151 = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.7.4.insert.insert144 = or i64 %a.sroa.7.4.insert.shift142, %a.sroa.14.4.insert.ext151
  %b.sroa.7.4.insert.ext86 = zext i32 %b.coerce.fca.1.extract to i64
  %b.sroa.7.4.insert.shift87 = shl nuw i64 %b.sroa.7.4.insert.ext86, 32
  %b.sroa.14.4.insert.ext96 = zext i32 %b.coerce.fca.2.extract to i64
  %b.sroa.7.4.insert.insert89 = or i64 %b.sroa.7.4.insert.shift87, %b.sroa.14.4.insert.ext96
  call void @__sanitizer_cov_trace_cmp4(i32 %b.sroa.4.0.extract.trunc.mask158, i32 %a.sroa.4.0.extract.trunc.mask159)
  %cmp1.i = icmp eq i32 %b.sroa.4.0.extract.trunc.mask158, %a.sroa.4.0.extract.trunc.mask159
  call void @__sanitizer_cov_trace_cmp8(i64 %b.sroa.7.4.insert.insert89, i64 %a.sroa.7.4.insert.insert144)
  %cmp2.i = icmp ult i64 %b.sroa.7.4.insert.insert89, %a.sroa.7.4.insert.insert144
  %spec.select.i = and i1 %cmp1.i, %cmp2.i
  br label %cleanup

cond.false:                                       ; preds = %if.end28
  %a.sroa.4.0.extract.trunc.mask = and i32 %a.coerce.fca.0.extract, 65535
  %b.sroa.4.0.extract.trunc.mask = and i32 %b.coerce.fca.0.extract, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %a.sroa.4.0.extract.trunc.mask, i32 %b.sroa.4.0.extract.trunc.mask)
  %cmp.i169 = icmp ult i32 %a.sroa.4.0.extract.trunc.mask, %b.sroa.4.0.extract.trunc.mask
  br i1 %cmp.i169, label %cond.false.cleanup_crit_edge, label %lor.rhs.i173

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs.i173:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %b.sroa.7.4.insert.ext91 = zext i32 %b.coerce.fca.1.extract to i64
  %b.sroa.7.4.insert.shift92 = shl nuw i64 %b.sroa.7.4.insert.ext91, 32
  %b.sroa.14.4.insert.ext100 = zext i32 %b.coerce.fca.2.extract to i64
  %b.sroa.7.4.insert.insert94 = or i64 %b.sroa.7.4.insert.shift92, %b.sroa.14.4.insert.ext100
  %a.sroa.7.4.insert.ext146 = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.7.4.insert.shift147 = shl nuw i64 %a.sroa.7.4.insert.ext146, 32
  %a.sroa.14.4.insert.ext155 = zext i32 %a.coerce.fca.2.extract to i64
  %a.sroa.7.4.insert.insert149 = or i64 %a.sroa.7.4.insert.shift147, %a.sroa.14.4.insert.ext155
  call void @__sanitizer_cov_trace_cmp4(i32 %a.sroa.4.0.extract.trunc.mask, i32 %b.sroa.4.0.extract.trunc.mask)
  %cmp1.i170 = icmp eq i32 %a.sroa.4.0.extract.trunc.mask, %b.sroa.4.0.extract.trunc.mask
  call void @__sanitizer_cov_trace_cmp8(i64 %a.sroa.7.4.insert.insert149, i64 %b.sroa.7.4.insert.insert94)
  %cmp2.i171 = icmp ult i64 %a.sroa.7.4.insert.insert149, %b.sroa.7.4.insert.insert94
  %spec.select.i172 = and i1 %cmp1.i170, %cmp2.i171
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs.i173, %cond.false.cleanup_crit_edge, %lor.rhs.i, %cond.true.cleanup_crit_edge, %land.rhs, %if.then13.cleanup_crit_edge, %land.lhs.true4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0.shrunk = phi i1 [ false, %land.lhs.true4.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %if.then13.cleanup_crit_edge ], [ %cmp25, %land.rhs ], [ true, %cond.true.cleanup_crit_edge ], [ %spec.select.i, %lor.rhs.i ], [ true, %cond.false.cleanup_crit_edge ], [ %spec.select.i172, %lor.rhs.i173 ]
  %retval.0 = zext i1 %retval.0.shrunk to i8
  ret i8 %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal fastcc void @shift64ExtraRightJamming(i64 noundef %a0, i64 noundef %a1, i32 noundef %count, ptr nocapture noundef writeonly %z0Ptr, ptr nocapture noundef writeonly %z1Ptr) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = sub i32 0, %count
  %conv = and i32 %0, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.if.end24_crit_edge, label %if.else

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count)
  %cmp2 = icmp slt i32 %count, 64
  br i1 %cmp2, label %if.then4, label %if.else10

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 %a0, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a1)
  %cmp6 = icmp ne i64 %a1, 0
  %1 = zext i1 %cmp6 to i64
  %or = or i64 %shl, %1
  %sh_prom9 = zext i32 %count to i64
  %shr = lshr i64 %a0, %sh_prom9
  br label %if.end24

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count)
  %cmp11 = icmp eq i32 %count, 64
  br i1 %cmp11, label %if.then13, label %if.else18

if.then13:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a1)
  %cmp14 = icmp ne i64 %a1, 0
  %2 = zext i1 %cmp14 to i64
  %or17 = or i64 %2, %a0
  br label %if.end24

if.else18:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #10
  %or19 = or i64 %a1, %a0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or19)
  %cmp20 = icmp ne i64 %or19, 0
  %3 = zext i1 %cmp20 to i64
  br label %if.end24

if.end24:                                         ; preds = %if.else18, %if.then13, %if.then4, %entry.if.end24_crit_edge
  %z0.0 = phi i64 [ %shr, %if.then4 ], [ %a0, %entry.if.end24_crit_edge ], [ 0, %if.else18 ], [ 0, %if.then13 ]
  %z1.1 = phi i64 [ %or, %if.then4 ], [ %a1, %entry.if.end24_crit_edge ], [ %3, %if.else18 ], [ %or17, %if.then13 ]
  %4 = ptrtoint ptr %z1Ptr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %z1.1, ptr %z1Ptr, align 8
  %5 = ptrtoint ptr %z0Ptr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %z0.0, ptr %z0Ptr, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @float_detect_tininess, !1, !"float_detect_tininess", i1 false, i1 false}
!1 = !{!"../arch/arm/nwfpe/softfloat-specialize", i32 38, i32 6}
!2 = !{ptr @countLeadingZeros32.countLeadingZerosHigh, !3, !"countLeadingZerosHigh", i1 false, i1 false}
!3 = !{!"../arch/arm/nwfpe/softfloat-macros", i32 643, i32 23}
!4 = !{ptr @estimateSqrt32.sqrtOddAdjustments, !5, !"sqrtOddAdjustments", i1 false, i1 false}
!5 = !{!"../arch/arm/nwfpe/softfloat-macros", i32 605, i32 25}
!6 = !{ptr @estimateSqrt32.sqrtEvenAdjustments, !7, !"sqrtEvenAdjustments", i1 false, i1 false}
!7 = !{!"../arch/arm/nwfpe/softfloat-macros", i32 609, i32 25}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 1434602}
!18 = !{i64 1434834}
!19 = !{!20}
!20 = distinct !{!20, !21, !"float32ToCommonNaN: %agg.result"}
!21 = distinct !{!21, !"float32ToCommonNaN"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"float32ToCommonNaN: %agg.result"}
!24 = distinct !{!24, !"float32ToCommonNaN"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"commonNaNToFloatx80: %agg.result"}
!27 = distinct !{!27, !"commonNaNToFloatx80"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"packFloatx80: %agg.result"}
!30 = distinct !{!30, !"packFloatx80"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"packFloatx80: %agg.result"}
!33 = distinct !{!33, !"packFloatx80"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"packFloatx80: %agg.result"}
!36 = distinct !{!36, !"packFloatx80"}
!37 = !{i64 2148091650, i64 2148091930, i64 2148092264, i64 2148092598}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{!40}
!40 = distinct !{!40, !41, !"float64ToCommonNaN: %agg.result"}
!41 = distinct !{!41, !"float64ToCommonNaN"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"float64ToCommonNaN: %agg.result"}
!44 = distinct !{!44, !"float64ToCommonNaN"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"commonNaNToFloatx80: %agg.result"}
!47 = distinct !{!47, !"commonNaNToFloatx80"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"packFloatx80: %agg.result"}
!50 = distinct !{!50, !"packFloatx80"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"packFloatx80: %agg.result"}
!53 = distinct !{!53, !"packFloatx80"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"packFloatx80: %agg.result"}
!56 = distinct !{!56, !"packFloatx80"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"floatx80ToCommonNaN: %agg.result"}
!59 = distinct !{!59, !"floatx80ToCommonNaN"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"floatx80ToCommonNaN: %agg.result"}
!62 = distinct !{!62, !"floatx80ToCommonNaN"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"propagateFloatx80NaN: %agg.result"}
!65 = distinct !{!65, !"propagateFloatx80NaN"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"packFloatx80: %agg.result"}
!68 = distinct !{!68, !"packFloatx80"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"packFloatx80: %agg.result"}
!71 = distinct !{!71, !"packFloatx80"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"packFloatx80: %agg.result"}
!74 = distinct !{!74, !"packFloatx80"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"packFloatx80: %agg.result"}
!77 = distinct !{!77, !"packFloatx80"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"packFloatx80: %agg.result"}
!80 = distinct !{!80, !"packFloatx80"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"packFloatx80: %agg.result"}
!83 = distinct !{!83, !"packFloatx80"}
!84 = !{!85}
!85 = distinct !{!85, !86, !"propagateFloatx80NaN: %agg.result"}
!86 = distinct !{!86, !"propagateFloatx80NaN"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"propagateFloatx80NaN: %agg.result"}
!89 = distinct !{!89, !"propagateFloatx80NaN"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"packFloatx80: %agg.result"}
!92 = distinct !{!92, !"packFloatx80"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"propagateFloatx80NaN: %agg.result"}
!95 = distinct !{!95, !"propagateFloatx80NaN"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"propagateFloatx80NaN: %agg.result"}
!98 = distinct !{!98, !"propagateFloatx80NaN"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"packFloatx80: %agg.result"}
!101 = distinct !{!101, !"packFloatx80"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"propagateFloatx80NaN: %agg.result"}
!104 = distinct !{!104, !"propagateFloatx80NaN"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"packFloatx80: %agg.result"}
!107 = distinct !{!107, !"packFloatx80"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"propagateFloatx80NaN: %agg.result"}
!110 = distinct !{!110, !"propagateFloatx80NaN"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"normalizeRoundAndPackFloatx80: %agg.result"}
!113 = distinct !{!113, !"normalizeRoundAndPackFloatx80"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"propagateFloatx80NaN: %agg.result"}
!116 = distinct !{!116, !"propagateFloatx80NaN"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"packFloatx80: %agg.result"}
!119 = distinct !{!119, !"packFloatx80"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"propagateFloatx80NaN: %agg.result"}
!122 = distinct !{!122, !"propagateFloatx80NaN"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"packFloatx80: %agg.result"}
!125 = distinct !{!125, !"packFloatx80"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"packFloatx80: %agg.result"}
!128 = distinct !{!128, !"packFloatx80"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"packFloatx80: %agg.result"}
!131 = distinct !{!131, !"packFloatx80"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"packFloatx80: %agg.result"}
!134 = distinct !{!134, !"packFloatx80"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"packFloatx80: %agg.result"}
!137 = distinct !{!137, !"packFloatx80"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"packFloatx80: %agg.result"}
!140 = distinct !{!140, !"packFloatx80"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"packFloatx80: %agg.result"}
!143 = distinct !{!143, !"packFloatx80"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"packFloatx80: %agg.result"}
!146 = distinct !{!146, !"packFloatx80"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"packFloatx80: %agg.result"}
!149 = distinct !{!149, !"packFloatx80"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"propagateFloatx80NaN: %agg.result"}
!152 = distinct !{!152, !"propagateFloatx80NaN"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"propagateFloatx80NaN: %agg.result"}
!155 = distinct !{!155, !"propagateFloatx80NaN"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"packFloatx80: %agg.result"}
!158 = distinct !{!158, !"packFloatx80"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"propagateFloatx80NaN: %agg.result"}
!161 = distinct !{!161, !"propagateFloatx80NaN"}
!162 = !{!163}
!163 = distinct !{!163, !164, !"packFloatx80: %agg.result"}
!164 = distinct !{!164, !"packFloatx80"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"packFloatx80: %agg.result"}
!167 = distinct !{!167, !"packFloatx80"}
!168 = !{!169}
!169 = distinct !{!169, !170, !"packFloatx80: %agg.result"}
!170 = distinct !{!170, !"packFloatx80"}
!171 = !{!172}
!172 = distinct !{!172, !173, !"propagateFloatx80NaN: %agg.result"}
!173 = distinct !{!173, !"propagateFloatx80NaN"}
!174 = !{!175}
!175 = distinct !{!175, !176, !"propagateFloatx80NaN: %agg.result"}
!176 = distinct !{!176, !"propagateFloatx80NaN"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"normalizeRoundAndPackFloatx80: %agg.result"}
!179 = distinct !{!179, !"normalizeRoundAndPackFloatx80"}
!180 = !{!181}
!181 = distinct !{!181, !182, !"propagateFloatx80NaN: %agg.result"}
!182 = distinct !{!182, !"propagateFloatx80NaN"}
!183 = !{!184}
!184 = distinct !{!184, !185, !"packFloatx80: %agg.result"}
!185 = distinct !{!185, !"packFloatx80"}
