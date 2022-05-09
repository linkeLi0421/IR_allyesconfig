; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv04.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_domain = type { i32, i8, i8, ptr, i32 }
%struct.nvkm_clk = type { ptr, %struct.nvkm_subdev, ptr, %struct.nvkm_pstate, %struct.list_head, i32, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.nvkm_notify, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_pstate = type { %struct.list_head, %struct.list_head, %struct.nvkm_cstate, i8, i8, i32, i8 }
%struct.nvkm_cstate = type { %struct.list_head, i8, [29 x i32], i8 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.146, %struct.anon.146 }
%struct.anon.146 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nvkm_pll_vals = type { %union.anon.133, i32, i32 }
%union.anon.133 = type { %struct.anon.135 }
%struct.anon.135 = type { i16, i16 }
%struct.anon.134 = type { i8, i8, i8, i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.136 }
%struct.anon.136 = type { i8, i8, i8, i8, i8 }

@nv04_clk = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [1 x %struct.nvkm_domain] }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [1 x %struct.nvkm_domain] } { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, [1 x %struct.nvkm_domain] [%struct.nvkm_domain { i32 29, i8 0, i8 0, ptr null, i32 0 }] }, [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 48, i64 49, i64 53, i64 54]
@___asan_gen_.2 = private unnamed_addr constant [9 x i8] c"nv04_clk\00", align 1
@___asan_gen_.3 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv04.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 68, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @nv04_clk], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_clk to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_clk_pll_calc(ptr noundef %clock, ptr noundef %info, i32 noundef %clk, ptr nocapture noundef writeonly %pv) #0 align 64 {
entry:
  %N1 = alloca i32, align 4
  %M1 = alloca i32, align 4
  %N2 = alloca i32, align 4
  %M2 = alloca i32, align 4
  %P = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N1) #3
  %0 = ptrtoint ptr %N1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %N1, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M1) #3
  %1 = ptrtoint ptr %M1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %M1, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N2) #3
  %2 = ptrtoint ptr %N2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %N2, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M2) #3
  %3 = ptrtoint ptr %M2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %M2, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %P) #3
  %4 = ptrtoint ptr %P to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %P, align 4, !annotation !11
  %subdev = getelementptr inbounds %struct.nvkm_clk, ptr %clock, i32 0, i32 1
  %call = call i32 @nv04_pll_calc(ptr noundef %subdev, ptr noundef %info, i32 noundef %clk, ptr noundef nonnull %N1, ptr noundef nonnull %M1, ptr noundef nonnull %N2, ptr noundef nonnull %M2, ptr noundef nonnull %P) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %refclk = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 2
  %5 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %refclk, align 4
  %refclk1 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %pv, i32 0, i32 2
  %7 = ptrtoint ptr %refclk1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %refclk1, align 4
  %8 = ptrtoint ptr %N1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %N1, align 4
  %conv = trunc i32 %9 to i8
  %10 = ptrtoint ptr %pv to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %pv, align 4
  %11 = ptrtoint ptr %M1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %M1, align 4
  %conv3 = trunc i32 %12 to i8
  %M14 = getelementptr inbounds %struct.anon.134, ptr %pv, i32 0, i32 1
  %13 = ptrtoint ptr %M14 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv3, ptr %M14, align 1
  %14 = ptrtoint ptr %N2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %N2, align 4
  %conv5 = trunc i32 %15 to i8
  %N26 = getelementptr inbounds %struct.anon.134, ptr %pv, i32 0, i32 2
  %16 = ptrtoint ptr %N26 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv5, ptr %N26, align 2
  %17 = ptrtoint ptr %M2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %M2, align 4
  %conv7 = trunc i32 %18 to i8
  %M28 = getelementptr inbounds %struct.anon.134, ptr %pv, i32 0, i32 3
  %19 = ptrtoint ptr %M28 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv7, ptr %M28, align 1
  %20 = ptrtoint ptr %P to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %P, align 4
  %log2P = getelementptr inbounds %struct.nvkm_pll_vals, ptr %pv, i32 0, i32 1
  %22 = ptrtoint ptr %log2P to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %log2P, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %P) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %M2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %M1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N1) #3
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_clk_pll_prog(ptr nocapture noundef readonly %clk, i32 noundef %reg1, ptr noundef %pv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_clk, ptr %clk, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %devinit2 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %devinit2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devinit2, align 4
  %bios = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bios, align 8
  %chip = getelementptr inbounds %struct.nvkm_bios, ptr %5, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chip, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %lor.lhs.false12 [
    i8 48, label %entry.if.then_crit_edge
    i8 49, label %entry.if.then_crit_edge32
    i8 53, label %entry.if.then_crit_edge33
    i8 54, label %entry.if.then_crit_edge34
  ]

entry.if.then_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

entry.if.then_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

entry.if.then_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false12:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %7)
  %cmp13 = icmp ugt i8 %7, 63
  br i1 %cmp13, label %lor.lhs.false12.if.then_crit_edge, label %if.else18

lor.lhs.false12.if.then_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false12.if.then_crit_edge, %entry.if.then_crit_edge, %entry.if.then_crit_edge32, %entry.if.then_crit_edge33, %entry.if.then_crit_edge34
  call void @__sanitizer_cov_trace_const_cmp4(i32 16476, i32 %reg1)
  %cmp15 = icmp ugt i32 %reg1, 16476
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @setPLL_double_highregs(ptr noundef %3, i32 noundef %reg1, ptr noundef %pv) #3
  br label %if.end19

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @setPLL_double_lowregs(ptr noundef %3, i32 noundef %reg1, ptr noundef %pv) #3
  br label %if.end19

if.else18:                                        ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @setPLL_single(ptr noundef %3, i32 noundef %reg1, ptr noundef %pv) #3
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.else, %if.then17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @setPLL_double_highregs(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setPLL_double_lowregs(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setPLL_single(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_clk_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pclk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_clk_new_(ptr noundef nonnull @nv04_clk, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext false, ptr noundef %pclk) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pclk, align 4
  %pll_calc = getelementptr inbounds %struct.nvkm_clk, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %pll_calc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nv04_clk_pll_calc, ptr %pll_calc, align 4
  %3 = load ptr, ptr %pclk, align 4
  %pll_prog = getelementptr inbounds %struct.nvkm_clk, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %pll_prog to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @nv04_clk_pll_prog, ptr %pll_prog, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @nv04_clk, !1, !"nv04_clk", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/nv04.c", i32 68, i32 1}
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
