; ModuleID = '/llk/IR_all_yes/lib/mpi/mpi-mod.c_pt.bc'
source_filename = "../lib/mpi/mpi-mod.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.barrett_ctx_s = type { ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_mod(ptr noundef %rem, ptr noundef %dividend, ptr noundef %divisor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mpi_fdiv_r(ptr noundef %rem, ptr noundef %dividend, ptr noundef %divisor) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_fdiv_r(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @mpi_barrett_init(ptr noundef %m, i32 noundef %copy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mpi_normalize(ptr noundef %m) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #6
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copy)
  %tobool1.not = icmp eq i32 %copy, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call ptr @mpi_copy(ptr noundef %m) #3
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %call7.i.i.i, align 8
  %m_copied = getelementptr inbounds %struct.barrett_ctx_s, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %m_copied to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %m_copied, align 4
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %m, ptr %call7.i.i.i, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %m, i32 0, i32 1
  %4 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nlimbs, align 4
  %k = getelementptr inbounds %struct.barrett_ctx_s, ptr %call7.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %k to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %k, align 8
  %add = add i32 %5, 1
  %call8 = tail call ptr @mpi_alloc(i32 noundef %add) #3
  %call9 = tail call ptr @mpi_set_ui(ptr noundef %call8, i32 noundef 1) #3
  %mul = shl i32 %5, 1
  tail call void @mpi_lshift_limbs(ptr noundef %call8, i32 noundef %mul) #3
  tail call void @mpi_fdiv_q(ptr noundef %call8, ptr noundef %call8, ptr noundef %m) #3
  %y = getelementptr inbounds %struct.barrett_ctx_s, ptr %call7.i.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %y, align 4
  %add13 = or i32 %mul, 1
  %call14 = tail call ptr @mpi_alloc(i32 noundef %add13) #3
  %r1 = getelementptr inbounds %struct.barrett_ctx_s, ptr %call7.i.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %r1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call14, ptr %r1, align 8
  %call18 = tail call ptr @mpi_alloc(i32 noundef %add13) #3
  %r2 = getelementptr inbounds %struct.barrett_ctx_s, ptr %call7.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %r2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call18, ptr %r2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret ptr %call7.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_normalize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_set_ui(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_lshift_limbs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_fdiv_q(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_barrett_free(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then:                                          ; preds = %entry
  %y = getelementptr inbounds %struct.barrett_ctx_s, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %y, align 4
  tail call void @mpi_free(ptr noundef %1) #3
  %r1 = getelementptr inbounds %struct.barrett_ctx_s, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %r1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %r1, align 4
  tail call void @mpi_free(ptr noundef %3) #3
  %r2 = getelementptr inbounds %struct.barrett_ctx_s, ptr %ctx, i32 0, i32 5
  %4 = ptrtoint ptr %r2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %r2, align 4
  tail call void @mpi_free(ptr noundef %5) #3
  %r3 = getelementptr inbounds %struct.barrett_ctx_s, ptr %ctx, i32 0, i32 6
  %6 = ptrtoint ptr %r3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %r3, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mpi_free(ptr noundef nonnull %7) #3
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %m_copied = getelementptr inbounds %struct.barrett_ctx_s, ptr %ctx, i32 0, i32 1
  %8 = ptrtoint ptr %m_copied to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %m_copied, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  tail call void @mpi_free(ptr noundef %11) #3
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  tail call void @kfree(ptr noundef nonnull %ctx) #3
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_mod_barrett(ptr noundef %r, ptr noundef %x, ptr nocapture noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %k2 = getelementptr inbounds %struct.barrett_ctx_s, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %k2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %k2, align 4
  %y3 = getelementptr inbounds %struct.barrett_ctx_s, ptr %ctx, i32 0, i32 3
  %4 = ptrtoint ptr %y3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %y3, align 4
  %r14 = getelementptr inbounds %struct.barrett_ctx_s, ptr %ctx, i32 0, i32 4
  %6 = ptrtoint ptr %r14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %r14, align 4
  %r25 = getelementptr inbounds %struct.barrett_ctx_s, ptr %ctx, i32 0, i32 5
  %8 = ptrtoint ptr %r25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %r25, align 4
  tail call void @mpi_normalize(ptr noundef %x) #3
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 1
  %10 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nlimbs, align 4
  %mul = shl i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %mul)
  %cmp = icmp sgt i32 %11, %mul
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mpi_fdiv_r(ptr noundef %r, ptr noundef %x, ptr noundef %1) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %sign6 = getelementptr inbounds %struct.gcry_mpi, ptr %x, i32 0, i32 3
  %12 = ptrtoint ptr %sign6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sign6, align 4
  store i32 0, ptr %sign6, align 4
  %call = tail call ptr @mpi_set(ptr noundef %9, ptr noundef %x) #3
  %sub = add i32 %3, -1
  tail call void @mpi_rshift_limbs(ptr noundef %9, i32 noundef %sub) #3
  tail call void @mpi_mul(ptr noundef %9, ptr noundef %9, ptr noundef %5) #3
  %add = add i32 %3, 1
  tail call void @mpi_rshift_limbs(ptr noundef %9, i32 noundef %add) #3
  %call8 = tail call ptr @mpi_set(ptr noundef %7, ptr noundef %x) #3
  %nlimbs9 = getelementptr inbounds %struct.gcry_mpi, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %nlimbs9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nlimbs9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add)
  %cmp11 = icmp sgt i32 %15, %add
  br i1 %cmp11, label %if.then12, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %nlimbs9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %nlimbs9, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end.if.end15_crit_edge
  tail call void @mpi_mul(ptr noundef %9, ptr noundef %9, ptr noundef %1) #3
  %nlimbs16 = getelementptr inbounds %struct.gcry_mpi, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %nlimbs16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nlimbs16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add)
  %cmp18 = icmp sgt i32 %18, %add
  br i1 %cmp18, label %if.then19, label %if.end15.if.end22_crit_edge

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %nlimbs16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %nlimbs16, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end15.if.end22_crit_edge
  tail call void @mpi_sub(ptr noundef %r, ptr noundef %7, ptr noundef %9) #3
  %sign23 = getelementptr inbounds %struct.gcry_mpi, ptr %r, i32 0, i32 3
  %20 = ptrtoint ptr %sign23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sign23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.end22.if.end36_crit_edge, label %if.then24

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36

if.then24:                                        ; preds = %if.end22
  %r3 = getelementptr inbounds %struct.barrett_ctx_s, ptr %ctx, i32 0, i32 6
  %22 = ptrtoint ptr %r3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %r3, align 4
  %tobool25.not = icmp eq ptr %23, null
  br i1 %tobool25.not, label %if.then26, label %if.then24.if.end34_crit_edge

if.then24.if.end34_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  %add27 = add i32 %3, 2
  %call28 = tail call ptr @mpi_alloc(i32 noundef %add27) #3
  %24 = ptrtoint ptr %r3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call28, ptr %r3, align 4
  %call31 = tail call ptr @mpi_set_ui(ptr noundef %call28, i32 noundef 1) #3
  %25 = ptrtoint ptr %r3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %r3, align 4
  tail call void @mpi_lshift_limbs(ptr noundef %26, i32 noundef %add) #3
  br label %if.end34

if.end34:                                         ; preds = %if.then26, %if.then24.if.end34_crit_edge
  %27 = ptrtoint ptr %r3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %r3, align 4
  tail call void @mpi_add(ptr noundef %r, ptr noundef %r, ptr noundef %28) #3
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %if.end22.if.end36_crit_edge
  %call3791 = tail call i32 @mpi_cmp(ptr noundef %r, ptr noundef %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3791)
  %cmp3892 = icmp sgt i32 %call3791, -1
  br i1 %cmp3892, label %if.end36.while.body_crit_edge, label %if.end36.while.end_crit_edge

if.end36.while.end_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

if.end36.while.body_crit_edge:                    ; preds = %if.end36
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end36.while.body_crit_edge
  tail call void @mpi_sub(ptr noundef %r, ptr noundef %r, ptr noundef %1) #3
  %call37 = tail call i32 @mpi_cmp(ptr noundef %r, ptr noundef %1) #3
  %cmp38 = icmp sgt i32 %call37, -1
  br i1 %cmp38, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end36.while.end_crit_edge
  %29 = ptrtoint ptr %sign6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %13, ptr %sign6, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_rshift_limbs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_mul(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_cmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_mul_barrett(ptr noundef %w, ptr noundef %u, ptr noundef %v, ptr nocapture noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mpi_mul(ptr noundef %w, ptr noundef %u, ptr noundef %v) #3
  tail call void @mpi_mod_barrett(ptr noundef %w, ptr noundef %w, ptr noundef %ctx)
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

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
