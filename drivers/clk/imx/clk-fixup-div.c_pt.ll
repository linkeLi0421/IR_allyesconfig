; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-fixup-div.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-fixup-div.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_fixup_div = type { %struct.clk_divider, ptr, ptr }

@clk_fixup_div_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_fixup_div_recalc_rate, ptr @clk_fixup_div_round_rate, ptr null, ptr null, ptr null, ptr @clk_fixup_div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"clk_fixup_div_ops\00", align 1
@___asan_gen_.2 = private constant [35 x i8] c"../drivers/clk/imx/clk-fixup-div.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 82, i32 29 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @clk_fixup_div_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_fixup_div_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_fixup_divider(ptr noundef %name, ptr noundef %parent, ptr noundef %reg, i8 noundef zeroext %shift, i8 noundef zeroext %width, ptr noundef %fixup) local_unnamed_addr #0 align 64 {
entry:
  %parent.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent, ptr %parent.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #5
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  %tobool.not = icmp eq ptr %fixup, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 36) #8
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @clk_fixup_div_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %flags, align 4
  %7 = ptrtoint ptr %parent.addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.addr, align 4
  %tobool7.not = icmp eq ptr %8, null
  %parent.addr. = select i1 %tobool7.not, ptr null, ptr %parent.addr
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %9 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %parent.addr., ptr %parent_names, align 4
  %tobool8.not = icmp ne ptr %8, null
  %conv = zext i1 %tobool8.not to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %num_parents, align 4
  %reg10 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %reg10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg, ptr %reg10, align 4
  %shift12 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %shift12 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %shift, ptr %shift12, align 8
  %width14 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %width14 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %width, ptr %width14, align 1
  %lock = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @imx_ccm_lock, ptr %lock, align 8
  %init18 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %init18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %init, ptr %init18, align 8
  %ops19 = getelementptr inbounds %struct.clk_fixup_div, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %ops19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @clk_divider_ops, ptr %ops19, align 4
  %fixup20 = getelementptr inbounds %struct.clk_fixup_div, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %fixup20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %fixup, ptr %fixup20, align 8
  %call23 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end5.cleanup_crit_edge, label %if.then25

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then25:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %18 = inttoptr i32 %call23 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %18, %if.then25 ], [ %call7.i.i, %if.end5.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #5
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_fixup_div_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.clk_fixup_div, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %recalc_rate = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %recalc_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recalc_rate, align 4
  %call2 = tail call i32 %3(ptr noundef %hw, i32 noundef %parent_rate) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_fixup_div_round_rate(ptr noundef %hw, i32 noundef %rate, ptr noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.clk_fixup_div, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %round_rate = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %round_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %round_rate, align 4
  %call2 = tail call i32 %3(ptr noundef %hw, i32 noundef %rate, ptr noundef %prate) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_fixup_div_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %div1 = udiv i32 %parent_rate, %rate
  %width = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %width, align 1
  %conv = zext i8 %1 to i32
  %notmask = shl nsw i32 -1, %conv
  %2 = sub i32 0, %div1
  %3 = tail call i32 @llvm.umax.i32(i32 %notmask, i32 %2)
  %4 = xor i32 %3, -1
  %lock = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 6
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock, align 4
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #5
  %reg = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !11
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !12
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %width, align 1
  %conv20 = zext i8 %12 to i32
  %notmask43 = shl nsw i32 -1, %conv20
  %sub22 = xor i32 %notmask43, -1
  %shift = getelementptr inbounds %struct.clk_divider, ptr %hw, i32 0, i32 2
  %13 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %shift, align 4
  %conv23 = zext i8 %14 to i32
  %shl24 = shl i32 %sub22, %conv23
  %neg = xor i32 %shl24, -1
  %and = and i32 %10, %neg
  %shl27 = shl i32 %4, %conv23
  %or = or i32 %and, %shl27
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %val, align 4
  %fixup = getelementptr inbounds %struct.clk_fixup_div, ptr %hw, i32 0, i32 2
  %16 = ptrtoint ptr %fixup to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fixup, align 4
  call void %17(ptr noundef nonnull %val) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #5, !srcloc !14
  %23 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %call13) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @clk_fixup_div_ops, !1, !"clk_fixup_div_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-fixup-div.c", i32 82, i32 29}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 4028172}
!12 = !{i64 2152521071}
!13 = !{i64 2152521304}
!14 = !{i64 4027754}
