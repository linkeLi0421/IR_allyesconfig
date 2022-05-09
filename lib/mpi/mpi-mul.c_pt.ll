; ModuleID = '/llk/IR_all_yes/lib/mpi/mpi-mul.c_pt.bc'
source_filename = "../lib/mpi/mpi-mul.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mpi_mulm\22, \22a\22\09"
module asm "\09.weak\09__crc_mpi_mulm\09\09\09\09"
module asm "\09.long\09__crc_mpi_mulm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_mulm:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_mulm\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_mulm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__kstrtab_mpi_mulm = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_mulm = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_mulm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_mulm to i32), ptr @__kstrtab_mpi_mulm, ptr @__kstrtabns_mpi_mulm }, section "___ksymtab_gpl+mpi_mulm", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_mpi_mulm], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_mul(ptr noundef %w, ptr nocapture noundef readonly %u, ptr nocapture noundef readonly %v) local_unnamed_addr #0 align 64 {
entry:
  %cy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cy) #4
  %0 = ptrtoint ptr %cy to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cy, align 4, !annotation !11
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %u, i32 0, i32 1
  %1 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nlimbs, align 4
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %v, i32 0, i32 1
  %3 = ptrtoint ptr %nlimbs1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nlimbs1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp = icmp slt i32 %2, %4
  %5 = tail call i32 @llvm.smax.i32(i32 %2, i32 %4)
  %6 = tail call i32 @llvm.smin.i32(i32 %2, i32 %4)
  %v.u = select i1 %cmp, ptr %v, ptr %u
  %u.v = select i1 %cmp, ptr %u, ptr %v
  %vsign.0.in = getelementptr inbounds %struct.gcry_mpi, ptr %u.v, i32 0, i32 3
  %7 = ptrtoint ptr %vsign.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %vsign.0 = load i32, ptr %vsign.0.in, align 4
  %usign.0.in = getelementptr inbounds %struct.gcry_mpi, ptr %v.u, i32 0, i32 3
  %8 = ptrtoint ptr %usign.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %usign.0 = load i32, ptr %usign.0.in, align 4
  %vp.0.in = getelementptr inbounds %struct.gcry_mpi, ptr %u.v, i32 0, i32 5
  %9 = ptrtoint ptr %vp.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %vp.0 = load ptr, ptr %vp.0.in, align 4
  %up.0.in = getelementptr inbounds %struct.gcry_mpi, ptr %v.u, i32 0, i32 5
  %10 = ptrtoint ptr %up.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %up.0 = load ptr, ptr %up.0.in, align 4
  %xor = xor i32 %usign.0, %vsign.0
  %d12 = getelementptr inbounds %struct.gcry_mpi, ptr %w, i32 0, i32 5
  %11 = ptrtoint ptr %d12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d12, align 4
  %add = add i32 %5, %6
  %13 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %add)
  %cmp13 = icmp slt i32 %14, %add
  %cmp15 = icmp eq ptr %12, %up.0
  br i1 %cmp13, label %if.then14, label %if.else22

if.then14:                                        ; preds = %entry
  %cmp16 = icmp eq ptr %12, %vp.0
  %or.cond = select i1 %cmp15, i1 true, i1 %cmp16
  br i1 %or.cond, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call ptr @mpi_alloc_limb_space(i32 noundef %add) #4
  br label %if.end49

if.else18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %call19 = tail call i32 @mpi_resize(ptr noundef %w, i32 noundef %add) #4
  %15 = ptrtoint ptr %d12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d12, align 4
  br label %if.end49

if.else22:                                        ; preds = %entry
  br i1 %cmp15, label %if.then24, label %if.else31

if.then24:                                        ; preds = %if.else22
  %call25 = tail call ptr @mpi_alloc_limb_space(i32 noundef %5) #4
  %cmp26 = icmp eq ptr %up.0, %vp.0
  %spec.select = select i1 %cmp26, ptr %call25, ptr %vp.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp29126 = icmp sgt i32 %5, 0
  br i1 %cmp29126, label %if.then24.for.body_crit_edge, label %if.then24.if.end49_crit_edge

if.then24.if.end49_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then24.for.body_crit_edge:                     ; preds = %if.then24
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then24.for.body_crit_edge
  %_i.0127 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then24.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %up.0, i32 %_i.0127
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %arrayidx30 = getelementptr i32, ptr %call25, i32 %_i.0127
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx30, align 4
  %inc = add nuw nsw i32 %_i.0127, 1
  %exitcond129.not = icmp eq i32 %inc, %5
  br i1 %exitcond129.not, label %for.body.if.end49_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.if.end49_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.else31:                                        ; preds = %if.else22
  %cmp32 = icmp eq ptr %12, %vp.0
  br i1 %cmp32, label %if.then33, label %if.else31.if.end49_crit_edge

if.else31.if.end49_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then33:                                        ; preds = %if.else31
  %call34 = tail call ptr @mpi_alloc_limb_space(i32 noundef %6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp38124 = icmp sgt i32 %6, 0
  br i1 %cmp38124, label %if.then33.for.body39_crit_edge, label %if.then33.if.end49_crit_edge

if.then33.if.end49_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then33.for.body39_crit_edge:                   ; preds = %if.then33
  br label %for.body39

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %if.then33.for.body39_crit_edge
  %_i36.0125 = phi i32 [ %inc43, %for.body39.for.body39_crit_edge ], [ 0, %if.then33.for.body39_crit_edge ]
  %arrayidx40 = getelementptr i32, ptr %vp.0, i32 %_i36.0125
  %20 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx40, align 4
  %arrayidx41 = getelementptr i32, ptr %call34, i32 %_i36.0125
  %22 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx41, align 4
  %inc43 = add nuw nsw i32 %_i36.0125, 1
  %exitcond.not = icmp eq i32 %inc43, %6
  br i1 %exitcond.not, label %for.body39.if.end49_crit_edge, label %for.body39.for.body39_crit_edge

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body39

for.body39.if.end49_crit_edge:                    ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.end49:                                         ; preds = %for.body39.if.end49_crit_edge, %if.then33.if.end49_crit_edge, %if.else31.if.end49_crit_edge, %for.body.if.end49_crit_edge, %if.then24.if.end49_crit_edge, %if.else18, %if.then17
  %up.1 = phi ptr [ %up.0, %if.then17 ], [ %up.0, %if.else18 ], [ %up.0, %if.else31.if.end49_crit_edge ], [ %call25, %if.then24.if.end49_crit_edge ], [ %up.0, %if.then33.if.end49_crit_edge ], [ %call25, %for.body.if.end49_crit_edge ], [ %up.0, %for.body39.if.end49_crit_edge ]
  %vp.2 = phi ptr [ %vp.0, %if.then17 ], [ %vp.0, %if.else18 ], [ %vp.0, %if.else31.if.end49_crit_edge ], [ %spec.select, %if.then24.if.end49_crit_edge ], [ %call34, %if.then33.if.end49_crit_edge ], [ %spec.select, %for.body.if.end49_crit_edge ], [ %call34, %for.body39.if.end49_crit_edge ]
  %wp.0 = phi ptr [ %call, %if.then17 ], [ %16, %if.else18 ], [ %12, %if.else31.if.end49_crit_edge ], [ %up.0, %if.then24.if.end49_crit_edge ], [ %vp.0, %if.then33.if.end49_crit_edge ], [ %up.0, %for.body.if.end49_crit_edge ], [ %vp.0, %for.body39.if.end49_crit_edge ]
  %tobool55.not = phi i1 [ false, %if.then17 ], [ true, %if.else18 ], [ true, %if.else31.if.end49_crit_edge ], [ true, %if.then24.if.end49_crit_edge ], [ true, %if.then33.if.end49_crit_edge ], [ true, %for.body.if.end49_crit_edge ], [ true, %for.body39.if.end49_crit_edge ]
  %tmp_limb.0 = phi ptr [ null, %if.then17 ], [ null, %if.else18 ], [ null, %if.else31.if.end49_crit_edge ], [ %call25, %if.then24.if.end49_crit_edge ], [ %call34, %if.then33.if.end49_crit_edge ], [ %call25, %for.body.if.end49_crit_edge ], [ %call34, %for.body39.if.end49_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end49.if.end54_crit_edge, label %if.else51

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.else51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  %call52 = call i32 @mpihelp_mul(ptr noundef %wp.0, ptr noundef %up.1, i32 noundef %5, ptr noundef %vp.2, i32 noundef %6, ptr noundef nonnull %cy) #4
  %23 = ptrtoint ptr %cy to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool53.not = icmp eq i32 %24, 0
  %cond.neg = sext i1 %tobool53.not to i32
  %sub = add i32 %add, %cond.neg
  br label %if.end54

if.end54:                                         ; preds = %if.else51, %if.end49.if.end54_crit_edge
  %wsize.0 = phi i32 [ %sub, %if.else51 ], [ 0, %if.end49.if.end54_crit_edge ]
  br i1 %tobool55.not, label %if.end54.if.end57_crit_edge, label %if.then56

if.end54.if.end57_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  call void @mpi_assign_limb_space(ptr noundef %w, ptr noundef %wp.0, i32 noundef %wsize.0) #4
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end54.if.end57_crit_edge
  %nlimbs58 = getelementptr inbounds %struct.gcry_mpi, ptr %w, i32 0, i32 1
  %25 = ptrtoint ptr %nlimbs58 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %wsize.0, ptr %nlimbs58, align 4
  %sign59 = getelementptr inbounds %struct.gcry_mpi, ptr %w, i32 0, i32 3
  %26 = ptrtoint ptr %sign59 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %xor, ptr %sign59, align 4
  %tobool60.not = icmp eq ptr %tmp_limb.0, null
  br i1 %tobool60.not, label %if.end57.if.end62_crit_edge, label %if.then61

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  call void @mpi_free_limb_space(ptr noundef nonnull %tmp_limb.0) #4
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end57.if.end62_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cy) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc_limb_space(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_resize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_mul(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_assign_limb_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free_limb_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_mulm(ptr noundef %w, ptr nocapture noundef readonly %u, ptr nocapture noundef readonly %v, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mpi_mul(ptr noundef %w, ptr noundef %u, ptr noundef %v)
  tail call void @mpi_tdiv_r(ptr noundef %w, ptr noundef %w, ptr noundef %m) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_tdiv_r(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @__ksymtab_mpi_mulm, !1, !"__ksymtab_mpi_mulm", i1 false, i1 false}
!1 = !{!"../lib/mpi/mpi-mul.c", i32 91, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
