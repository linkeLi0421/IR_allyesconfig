; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/basics/conversion.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/conversion.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fixed31_32 = type { i64 }

@dc_fixpt_round.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h\00", [37 x i8] zeroinitializer }, align 32
@dc_fixpt_sub.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_ = private constant [64 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/basics/conversion.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [62 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 466, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @fixed_point_to_int_frac([1 x i64] %arg.coerce, i8 noundef zeroext %integer_bits, i8 noundef zeroext %fractional_bits) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp12 = alloca %struct.fixed31_32, align 8
  %agg.tmp23 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %fractional_bits to i32
  %shl = shl nuw i32 1, %conv
  %arg.coerce.fca.0.extract.i = extractvalue [1 x i64] %arg.coerce, 0
  %0 = tail call i64 @llvm.abs.i64(i64 %arg.coerce.fca.0.extract.i, i1 false) #4
  %extract12.i = lshr i64 %0, 32
  %extract.t13.i = trunc i64 %extract12.i to i32
  %sub7.i = sub i32 0, %extract.t13.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %0)
  %cmp414.i = icmp slt i64 %0, 0
  %retval.0.i = select i1 %cmp414.i, i32 %sub7.i, i32 %extract.t13.i
  %conv4 = and i32 %retval.0.i, 65535
  %conv5 = zext i8 %integer_bits to i32
  %shl6 = shl nuw i32 1, %conv5
  %conv8 = and i32 %shl6, 65535
  %conv10 = and i32 %shl, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv10)
  %1 = icmp ult i32 %conv10, 2
  %div = select i1 %1, i32 %conv10, i32 0
  %sub = sub nsw i32 %conv8, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4, i32 %sub)
  %cmp.not = icmp sgt i32 %conv4, %sub
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv1.i.i = zext i32 %shl to i64
  %shl.i.i = shl nuw i64 %conv1.i.i, 32
  %.fca.0.insert.i = insertvalue [1 x i64] poison, i64 %shl.i.i, 0
  call void @dc_fixpt_mul(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp12, [1 x i64] %arg.coerce, [1 x i64] %.fca.0.insert.i) #4
  %2 = ptrtoint ptr %agg.tmp12 to i32
  call void @__asan_load8_noabort(i32 %2)
  %.fca.0.load66 = load i64, ptr %agg.tmp12, align 8
  %3 = call i64 @llvm.abs.i64(i64 %.fca.0.load66, i1 false) #4
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372034707292159, i64 %3)
  %cmp4.i = icmp ugt i64 %3, 9223372034707292159
  br i1 %cmp4.i, label %land.rhs.i, label %if.then.dc_fixpt_round.exit_crit_edge

if.then.dc_fixpt_round.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %dc_fixpt_round.exit

land.rhs.i:                                       ; preds = %if.then
  %.b62.i = load i1, ptr @dc_fixpt_round.__already_done, align 1
  br i1 %.b62.i, label %land.rhs.i.if.then42.i_crit_edge, label %if.then.i, !prof !18

land.rhs.i.if.then42.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then42.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @dc_fixpt_round.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 466, i32 noundef 9, ptr noundef null) #4
  br label %if.then42.i

if.then42.i:                                      ; preds = %if.then.i, %land.rhs.i.if.then42.i_crit_edge
  call void @kgdb_breakpoint() #4
  br label %dc_fixpt_round.exit

dc_fixpt_round.exit:                              ; preds = %if.then42.i, %if.then.dc_fixpt_round.exit_crit_edge
  %add.i = add nuw i64 %3, 2147483648
  %shr.i = lshr i64 %add.i, 32
  %conv.i = trunc i64 %shr.i to i32
  %sub51.i = sub i32 0, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load66)
  %cmp4764.i = icmp slt i64 %.fca.0.load66, 0
  %retval.0.i93 = select i1 %cmp4764.i, i32 %sub51.i, i32 %conv.i
  %conv17 = and i32 %retval.0.i93, 65535
  br label %if.end

if.else:                                          ; preds = %entry
  %sh_prom = zext i8 %integer_bits to i64
  %conv1.i = shl i64 4294967296, %sh_prom
  %conv1.i94 = zext i32 %shl to i64
  %shl.i95 = shl nuw i64 %conv1.i94, 32
  %.fca.0.insert = insertvalue [1 x i64] poison, i64 %shl.i95, 0
  call void @dc_fixpt_recip(ptr nonnull sret(%struct.fixed31_32) align 8 %agg.tmp23, [1 x i64] %.fca.0.insert) #4
  %4 = ptrtoint ptr %agg.tmp23 to i32
  call void @__asan_load8_noabort(i32 %4)
  %.fca.0.load57 = load i64, ptr %agg.tmp23, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fca.0.load57)
  %cmp.i = icmp slt i64 %.fca.0.load57, 0
  %add.i96 = xor i64 %.fca.0.load57, -9223372036854775808
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i96, i64 %conv1.i)
  %cmp4.not.i = icmp sgt i64 %add.i96, %conv1.i
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp4.not.i
  br i1 %or.cond.i, label %lor.rhs.i, label %if.else.dc_fixpt_sub.exit_crit_edge

if.else.dc_fixpt_sub.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %dc_fixpt_sub.exit

lor.rhs.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.fca.0.load57)
  %cmp6.i = icmp sgt i64 %.fca.0.load57, -1
  %add8.i = add i64 %.fca.0.load57, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i, i64 %conv1.i)
  %cmp10.i = icmp slt i64 %add8.i, %conv1.i
  %or.cond67.i = select i1 %cmp6.i, i1 true, i1 %cmp10.i
  br i1 %or.cond67.i, label %land.rhs13.i, label %lor.rhs.i.dc_fixpt_sub.exit_crit_edge

lor.rhs.i.dc_fixpt_sub.exit_crit_edge:            ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dc_fixpt_sub.exit

land.rhs13.i:                                     ; preds = %lor.rhs.i
  %.b65.i = load i1, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !19
  br i1 %.b65.i, label %land.rhs13.i.if.then50.i_crit_edge, label %if.then.i97, !prof !18

land.rhs13.i.if.then50.i_crit_edge:               ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then50.i

if.then.i97:                                      ; preds = %land.rhs13.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @dc_fixpt_sub.__already_done, align 1, !noalias !19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #4, !noalias !19
  br label %if.then50.i

if.then50.i:                                      ; preds = %if.then.i97, %land.rhs13.i.if.then50.i_crit_edge
  call void @kgdb_breakpoint() #4, !noalias !19
  br label %dc_fixpt_sub.exit

dc_fixpt_sub.exit:                                ; preds = %if.then50.i, %lor.rhs.i.dc_fixpt_sub.exit_crit_edge, %if.else.dc_fixpt_sub.exit_crit_edge
  %sub.i = sub i64 %conv1.i, %.fca.0.load57
  %5 = call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #4
  %extract12.i98 = lshr i64 %5, 32
  %extract.t13.i99 = trunc i64 %extract12.i98 to i32
  %sub7.i100 = sub i32 0, %extract.t13.i99
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp414.i101 = icmp slt i64 %sub.i, 0
  %retval.0.i102 = select i1 %cmp414.i101, i32 %sub7.i100, i32 %extract.t13.i99
  br label %if.end

if.end:                                           ; preds = %dc_fixpt_sub.exit, %dc_fixpt_round.exit
  %numerator.0 = phi i32 [ %conv17, %dc_fixpt_round.exit ], [ %retval.0.i102, %dc_fixpt_sub.exit ]
  %add = add nuw nsw i32 %conv, %conv5
  %shl38 = shl i32 2, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %numerator.0)
  %cmp30104 = icmp slt i32 %numerator.0, 0
  %add39 = select i1 %cmp30104, i32 %shl38, i32 0
  %result.0.in = add i32 %add39, %numerator.0
  %conv42 = and i32 %result.0.in, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv42)
  %cmp43.not = icmp ne i32 %conv42, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %arg.coerce.fca.0.extract.i)
  %cmp.i103 = icmp slt i64 %arg.coerce.fca.0.extract.i, 0
  %or.cond = select i1 %cmp43.not, i1 %cmp.i103, i1 false
  %shl52 = shl nuw i32 1, %add
  %or = select i1 %or.cond, i32 %shl52, i32 0
  %result.1.in = or i32 %or, %result.0.in
  %result.1 = trunc i32 %result.1.in to i16
  ret i16 %result.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_recip(ptr sret(%struct.fixed31_32) align 8, [1 x i64]) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @convert_float_matrix(ptr nocapture noundef writeonly %matrix, ptr nocapture noundef readonly %flt, i32 noundef %buffer_size) local_unnamed_addr #0 align 64 {
entry:
  %min_2_13 = alloca %struct.fixed31_32, align 8
  %max_2_13 = alloca %struct.fixed31_32, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %min_2_13) #4
  %0 = ptrtoint ptr %min_2_13 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %min_2_13, align 8, !annotation !22
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %min_2_13, i64 noundef -30000, i64 noundef 10000) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %max_2_13) #4
  %1 = ptrtoint ptr %max_2_13 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %max_2_13, align 8, !annotation !22
  call void @dc_fixpt_from_fraction(ptr nonnull sret(%struct.fixed31_32) align 8 %max_2_13, i64 noundef 30000, i64 noundef 10000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buffer_size)
  %cmp15.not = icmp eq i32 %buffer_size, 0
  br i1 %cmp15.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fixed31_32, ptr %flt, i32 %i.016
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %.unpack = load i64, ptr %arrayidx, align 8
  %3 = ptrtoint ptr %min_2_13 to i32
  call void @__asan_load8_noabort(i32 %3)
  %.fca.0.load13 = load i64, ptr %min_2_13, align 8
  %4 = ptrtoint ptr %max_2_13 to i32
  call void @__asan_load8_noabort(i32 %4)
  %.fca.0.load10 = load i64, ptr %max_2_13, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %.unpack, i64 %.fca.0.load13)
  %cmp.i.not.i = icmp sgt i64 %.unpack, %.fca.0.load13
  %5 = call i64 @llvm.smin.i64(i64 %.fca.0.load10, i64 %.unpack) #4
  %arg.coerce.fca.0.extract.sink.i = select i1 %cmp.i.not.i, i64 %5, i64 %.fca.0.load13
  %.fca.0.insert = insertvalue [1 x i64] poison, i64 %arg.coerce.fca.0.extract.sink.i, 0
  %call = call zeroext i16 @fixed_point_to_int_frac([1 x i64] %.fca.0.insert, i8 noundef zeroext 2, i8 noundef zeroext 13)
  %arrayidx5 = getelementptr i16, ptr %matrix, i32 %i.016
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %call, ptr %arrayidx5, align 2
  %inc = add nuw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %buffer_size
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %max_2_13) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %min_2_13) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_from_fraction(ptr sret(%struct.fixed31_32) align 8, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_fixpt_mul(ptr sret(%struct.fixed31_32) align 8, [1 x i64], [1 x i64]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 466, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"dc_fixpt_half", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 69, i32 32}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 274, i32 2}
!7 = distinct !{null, !8, !"dc_fixpt_zero", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/include/fixed31_32.h", i32 67, i32 32}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{!20}
!20 = distinct !{!20, !21, !"dc_fixpt_sub: %agg.result"}
!21 = distinct !{!21, !"dc_fixpt_sub"}
!22 = !{!"auto-init"}
