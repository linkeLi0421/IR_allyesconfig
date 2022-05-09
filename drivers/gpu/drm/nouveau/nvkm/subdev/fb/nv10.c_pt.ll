; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv10.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv10.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fb_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i8, ptr }
%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { i32, ptr, ptr, ptr, ptr }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.149, %struct.anon.150, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.149 = type { %struct.mutex, %struct.nvkm_mm }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.150 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.137, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.anon.137 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@nv10_fb = internal constant { %struct.nvkm_fb_func, [56 x i8] } { %struct.nvkm_fb_func { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.anon zeroinitializer, %struct.anon.0 { i32 8, ptr @nv10_fb_tile_init, ptr null, ptr @nv10_fb_tile_fini, ptr @nv10_fb_tile_prog }, ptr @nv10_ram_new, i8 0, ptr null }, [56 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [8 x i8] c"nv10_fb\00", align 1
@___asan_gen_.2 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv10.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 58, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @nv10_fb], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_fb to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nv10_fb_tile_init(ptr nocapture readnone %fb, i32 %i, i32 noundef %addr, i32 noundef %size, i32 noundef %pitch, i32 %flags, ptr nocapture noundef writeonly %tile) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %addr, -2147483648
  %addr1 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 1
  %0 = ptrtoint ptr %addr1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or, ptr %addr1, align 4
  %add = add i32 %size, %addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp = icmp eq i32 %add, 0
  %phi.bo = add i32 %add, -1
  %cond = select i1 %cmp, i32 0, i32 %phi.bo
  %limit = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 2
  %1 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %cond, ptr %limit, align 4
  %pitch2 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 3
  %2 = ptrtoint ptr %pitch2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %pitch, ptr %pitch2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nv10_fb_tile_fini(ptr nocapture readnone %fb, i32 %i, ptr nocapture noundef writeonly %tile) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 1
  %0 = call ptr @memset(ptr %addr, i32 0, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv10_fb_tile_prog(ptr nocapture noundef readonly %fb, i32 noundef %i, ptr nocapture noundef readonly %tile) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %limit = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 2
  %2 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %limit, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %mul = shl i32 %i, 4
  %add = add i32 %mul, 1049156
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #3, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %pitch = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 3
  %6 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pitch, align 4
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add7 = add i32 %mul, 1049160
  %add.ptr8 = getelementptr i8, ptr %9, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %7) #3, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %addr = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 1
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr, align 4
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add14 = add i32 %mul, 1049152
  %add.ptr15 = getelementptr i8, ptr %13, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %11) #3, !srcloc !12
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %15, i32 %add14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv10_fb_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pfb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_fb_new_(ptr noundef nonnull @nv10_fb, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pfb) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fb_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv10_ram_new(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @nv10_fb, !1, !"nv10_fb", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv10.c", i32 58, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 2156251413}
!12 = !{i64 5391163}
!13 = !{i64 2156251855}
!14 = !{i64 2156252295}
!15 = !{i64 5391581}
!16 = !{i64 2156252790}
