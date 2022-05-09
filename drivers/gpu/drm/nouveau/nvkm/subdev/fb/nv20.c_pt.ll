; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv20.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv20.c"
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
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.138, i32, i32, i32, i32, i32, i32, %union.anon.142, i32, i32, [11 x i32], %union.anon.146 }>
%union.anon.138 = type { %struct.anon.141 }
%struct.anon.141 = type { i64 }
%union.anon.142 = type { %struct.anon.145 }
%struct.anon.145 = type { i32, i32, i8 }
%union.anon.146 = type <{ %struct.anon.148, [12 x i8] }>
%struct.anon.148 = type { i48 }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }

@nv20_fb = internal constant { %struct.nvkm_fb_func, [56 x i8] } { %struct.nvkm_fb_func { ptr null, ptr @nv20_fb_tags, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.anon zeroinitializer, %struct.anon.0 { i32 8, ptr @nv20_fb_tile_init, ptr @nv20_fb_tile_comp, ptr @nv20_fb_tile_fini, ptr @nv20_fb_tile_prog }, ptr @nv20_ram_new, i8 0, ptr null }, [56 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [8 x i8] c"nv20_fb\00", align 1
@___asan_gen_.2 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv20.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 88, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @nv20_fb], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv20_fb to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv20_fb_tile_init(ptr noundef %fb, i32 noundef %i, i32 noundef %addr, i32 noundef %size, i32 noundef %pitch, i32 noundef %flags, ptr noundef %tile) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %addr, 1
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
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %3 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fb, align 4
  %comp = getelementptr inbounds %struct.nvkm_fb_func, ptr %4, i32 0, i32 9, i32 2
  %5 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %comp, align 4
  tail call void %6(ptr noundef %fb, i32 noundef %i, i32 noundef %size, i32 noundef %flags, ptr noundef %tile) #2
  %7 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr1, align 4
  %or5 = or i32 %8, 2
  store i32 %or5, ptr %addr1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv20_fb_tile_fini(ptr noundef %fb, i32 %i, ptr noundef %tile) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 1
  %mm = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 4, i32 1
  %0 = call ptr @memset(ptr %addr, i32 0, i32 16)
  tail call void @nvkm_mm_free(ptr noundef %mm, ptr noundef %tile) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mm_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv20_fb_tile_prog(ptr nocapture noundef readonly %fb, i32 noundef %i, ptr nocapture noundef readonly %tile) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #2, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !13
  tail call void @arm_heavy_mb() #2
  %pitch = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 3
  %6 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pitch, align 4
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add7 = add i32 %mul, 1049160
  %add.ptr8 = getelementptr i8, ptr %9, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %7) #2, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !14
  tail call void @arm_heavy_mb() #2
  %addr = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 1
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr, align 4
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add14 = add i32 %mul, 1049152
  %add.ptr15 = getelementptr i8, ptr %13, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %11) #2, !srcloc !12
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr19 = getelementptr i8, ptr %15, i32 %add14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #2, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !17
  tail call void @arm_heavy_mb() #2
  %zcomp = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 4
  %17 = ptrtoint ptr %zcomp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %zcomp, align 4
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %mul24 = shl i32 %i, 2
  %add25 = add i32 %mul24, 1049344
  %add.ptr26 = getelementptr i8, ptr %20, i32 %add25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %18) #2, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv20_fb_tags(ptr nocapture noundef readonly %fb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1049376
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %add = add i32 %4, 1
  %spec.select = select i1 %tobool.not, i32 0, i32 %add
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv20_fb_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pfb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_fb_new_(ptr noundef nonnull @nv20_fb, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pfb) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fb_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv20_fb_tile_comp(ptr noundef %fb, i32 noundef %i, i32 noundef %size, i32 noundef %flags, ptr noundef %tile) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %size, 63
  %div24 = lshr i32 %sub, 6
  %ram = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 3
  %0 = ptrtoint ptr %ram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ram, align 4
  %parts = getelementptr inbounds %struct.nvkm_ram, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parts, align 8
  %div1 = udiv i32 %div24, %3
  %sub2 = add nsw i32 %div1, -1
  %or = or i32 %sub2, 63
  %add3 = add nsw i32 %or, 1
  %mm = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 4, i32 1
  %call = tail call i32 @nvkm_mm_head(ptr noundef %mm, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %add3, i32 noundef %add3, i32 noundef 1, ptr noundef %tile) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %and = shl i32 %flags, 25
  %4 = and i32 %and, 67108864
  %5 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %5, align 4
  %7 = ptrtoint ptr %tile to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tile, align 4
  %offset = getelementptr inbounds %struct.nvkm_mm_node, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %or10 = or i32 %10, %4
  %or14 = or i32 %or10, -2013265920
  store i32 %or14, ptr %5, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_ram_new(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_head(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @nv20_fb, !1, !"nv20_fb", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv20.c", i32 88, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 2156252510}
!12 = !{i64 5392060}
!13 = !{i64 2156252952}
!14 = !{i64 2156253392}
!15 = !{i64 5392478}
!16 = !{i64 2156253887}
!17 = !{i64 2156254257}
!18 = !{i64 2156254747}
