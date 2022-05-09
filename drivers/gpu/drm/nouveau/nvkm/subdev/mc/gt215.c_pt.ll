; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mc/gt215.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mc/gt215.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_mc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_mc_map = type { i32, i32, i32, i8 }
%struct.nvkm_mc = type { ptr, %struct.nvkm_subdev }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@gt215_mc = internal constant { %struct.nvkm_mc_func, [32 x i8] } { %struct.nvkm_mc_func { ptr @nv50_mc_init, ptr @gt215_mc_intr, ptr @nv04_mc_intr_unarm, ptr @nv04_mc_intr_rearm, ptr @gt215_mc_intr_mask, ptr @nv04_mc_intr_stat, ptr @gt215_mc_reset, ptr null }, [32 x i8] zeroinitializer }, align 32
@gt215_mc_intr = internal constant { [15 x %struct.nvkm_mc_map], [48 x i8] } { [15 x %struct.nvkm_mc_map] [%struct.nvkm_mc_map { i32 67108864, i32 30, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 4194304, i32 28, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 131072, i32 38, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 32768, i32 40, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 4096, i32 33, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 256, i32 32, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 1, i32 39, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 4362497, i32 13, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 268435456, i32 10, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 2097152, i32 5, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 2097152, i32 6, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 1048576, i32 11, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 524288, i32 22, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 262144, i32 19, i32 0, i8 0 }, %struct.nvkm_mc_map zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gt215_mc_reset = internal constant { [7 x %struct.nvkm_mc_map], [48 x i8] } { [7 x %struct.nvkm_mc_map] [%struct.nvkm_mc_map { i32 67141632, i32 40, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 16908288, i32 38, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 8396800, i32 28, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 4194306, i32 39, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 2101248, i32 33, i32 0, i8 0 }, %struct.nvkm_mc_map { i32 256, i32 32, i32 0, i8 0 }, %struct.nvkm_mc_map zeroinitializer], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [9 x i8] c"gt215_mc\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 63, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"gt215_mc_intr\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 38, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"gt215_mc_reset\00", align 1
@___asan_gen_.8 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mc/gt215.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 27, i32 1 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @gt215_mc, ptr @gt215_mc_intr, ptr @gt215_mc_reset], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_mc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_mc_intr to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt215_mc_reset to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gt215_mc_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pmc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_mc_new_(ptr noundef nonnull @gt215_mc, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pmc) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mc_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_mc_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_mc_intr_unarm(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_mc_intr_rearm(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gt215_mc_intr_mask(ptr nocapture noundef readonly %mc, i32 noundef %mask, i32 noundef %stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_mc, ptr %mc, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1600
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !17
  tail call void @arm_heavy_mb() #2
  %neg = xor i32 %mask, -1
  %and = and i32 %4, %neg
  %or = or i32 %and, %stat
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 1600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %or) #2, !srcloc !18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_mc_intr_stat(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @gt215_mc, !1, !"gt215_mc", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mc/gt215.c", i32 63, i32 1}
!2 = !{ptr @gt215_mc_intr, !3, !"gt215_mc_intr", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mc/gt215.c", i32 38, i32 1}
!4 = !{ptr @gt215_mc_reset, !5, !"gt215_mc_reset", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mc/gt215.c", i32 27, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 5386746}
!16 = !{i64 2156222683}
!17 = !{i64 2156223061}
!18 = !{i64 5386328}
