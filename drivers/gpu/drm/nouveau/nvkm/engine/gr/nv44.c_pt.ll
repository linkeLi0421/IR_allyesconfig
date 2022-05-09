; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/nv44.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv44.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.150 = type { ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.83 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.83 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.149, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.149 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }

@nv40_gr_object = external dso_local constant %struct.nvkm_object_func, align 4
@nv44_gr = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.150, [17 x %struct.nvkm_sclass] }, [116 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.150, [17 x %struct.nvkm_sclass] } { ptr null, ptr null, ptr @nv40_gr_init, ptr null, ptr @nv40_gr_intr, ptr @nv44_gr_tile, ptr null, ptr @nv40_gr_chan_new, ptr null, ptr @nv40_gr_units, ptr null, %struct.anon.150 zeroinitializer, [17 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 18, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 25, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 48, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 57, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 67, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 68, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 74, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 98, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 114, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 137, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 138, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 159, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 12386, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 12425, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 12446, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 17559, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [116 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/gr/nv44.c\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 68, i64 70, i64 74, i64 76, i64 78, i64 99, i64 103, i64 104]
@___asan_gen_.2 = private unnamed_addr constant [8 x i8] c"nv44_gr\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 77, i32 1 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv44.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 69, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @nv44_gr, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv44_gr to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv44_gr_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv40_gr_new_(ptr noundef nonnull @nv44_gr, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgr) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_gr_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv40_gr_intr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv44_gr_tile(ptr noundef %base, i32 noundef %i, ptr nocapture noundef readonly %tile) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_gr, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %fifo3 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %fifo3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fifo3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %flags, align 4, !annotation !13
  call void @nvkm_fifo_pause(ptr noundef %3, ptr noundef nonnull %flags) #3
  %call = call zeroext i1 @nv04_gr_idle(ptr noundef %base) #3
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chipset, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.end123 [
    i32 68, label %entry.do.body_crit_edge
    i32 74, label %entry.do.body_crit_edge183
    i32 70, label %entry.do.body21_crit_edge
    i32 76, label %entry.do.body21_crit_edge184
    i32 99, label %entry.do.body21_crit_edge185
    i32 103, label %entry.do.body21_crit_edge186
    i32 104, label %entry.do.body21_crit_edge187
    i32 78, label %do.body70
  ]

entry.do.body21_crit_edge187:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body21

entry.do.body21_crit_edge186:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body21

entry.do.body21_crit_edge185:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body21

entry.do.body21_crit_edge184:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body21

entry.do.body21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body21

entry.do.body_crit_edge183:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  call void @arm_heavy_mb() #3
  %pitch = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 3
  %8 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pitch, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %mul = shl i32 %i, 4
  %add = add i32 %mul, 4196616
  %add.ptr5 = getelementptr i8, ptr %11, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %9) #3, !srcloc !15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  call void @arm_heavy_mb() #3
  %limit = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 2
  %12 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %limit, align 4
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add11 = add i32 %mul, 4196612
  %add.ptr12 = getelementptr i8, ptr %15, i32 %add11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %13) #3, !srcloc !15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  call void @arm_heavy_mb() #3
  %addr = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 1
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr, align 4
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add18 = add i32 %mul, 4196608
  %add.ptr19 = getelementptr i8, ptr %19, i32 %add18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %17) #3, !srcloc !15
  br label %sw.epilog

do.body21:                                        ; preds = %entry.do.body21_crit_edge, %entry.do.body21_crit_edge184, %entry.do.body21_crit_edge185, %entry.do.body21_crit_edge186, %entry.do.body21_crit_edge187
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  call void @arm_heavy_mb() #3
  %pitch24 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 3
  %20 = ptrtoint ptr %pitch24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pitch24, align 4
  %pri25 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %pri25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri25, align 4
  %mul26 = shl i32 %i, 4
  %add27 = add i32 %mul26, 4197640
  %add.ptr28 = getelementptr i8, ptr %23, i32 %add27
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %21) #3, !srcloc !15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  call void @arm_heavy_mb() #3
  %limit32 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 2
  %24 = ptrtoint ptr %limit32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %limit32, align 4
  %26 = ptrtoint ptr %pri25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri25, align 4
  %add35 = add i32 %mul26, 4197636
  %add.ptr36 = getelementptr i8, ptr %27, i32 %add35
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %25) #3, !srcloc !15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  call void @arm_heavy_mb() #3
  %addr40 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 1
  %28 = ptrtoint ptr %addr40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr40, align 4
  %30 = ptrtoint ptr %pri25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri25, align 4
  %add43 = add i32 %mul26, 4197632
  %add.ptr44 = getelementptr i8, ptr %31, i32 %add43
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %29) #3, !srcloc !15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  call void @arm_heavy_mb() #3
  %32 = ptrtoint ptr %pitch24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pitch24, align 4
  %34 = ptrtoint ptr %pri25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri25, align 4
  %add51 = add i32 %mul26, 4221192
  %add.ptr52 = getelementptr i8, ptr %35, i32 %add51
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %33) #3, !srcloc !15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  call void @arm_heavy_mb() #3
  %36 = ptrtoint ptr %limit32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %limit32, align 4
  %38 = ptrtoint ptr %pri25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri25, align 4
  %add59 = add i32 %mul26, 4221188
  %add.ptr60 = getelementptr i8, ptr %39, i32 %add59
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %37) #3, !srcloc !15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  call void @arm_heavy_mb() #3
  %40 = ptrtoint ptr %addr40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr40, align 4
  %42 = ptrtoint ptr %pri25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri25, align 4
  %add67 = add i32 %mul26, 4221184
  %add.ptr68 = getelementptr i8, ptr %43, i32 %add67
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %41) #3, !srcloc !15
  br label %sw.epilog

do.body70:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  call void @arm_heavy_mb() #3
  %pitch73 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 3
  %44 = ptrtoint ptr %pitch73 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pitch73, align 4
  %pri74 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %46 = ptrtoint ptr %pri74 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pri74, align 4
  %mul75 = shl i32 %i, 4
  %add76 = add i32 %mul75, 4196616
  %add.ptr77 = getelementptr i8, ptr %47, i32 %add76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %45) #3, !srcloc !15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  call void @arm_heavy_mb() #3
  %limit81 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 2
  %48 = ptrtoint ptr %limit81 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %limit81, align 4
  %50 = ptrtoint ptr %pri74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pri74, align 4
  %add84 = add i32 %mul75, 4196612
  %add.ptr85 = getelementptr i8, ptr %51, i32 %add84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 %49) #3, !srcloc !15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  call void @arm_heavy_mb() #3
  %addr89 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 1
  %52 = ptrtoint ptr %addr89 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %addr89, align 4
  %54 = ptrtoint ptr %pri74 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pri74, align 4
  %add92 = add i32 %mul75, 4196608
  %add.ptr93 = getelementptr i8, ptr %55, i32 %add92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %53) #3, !srcloc !15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  call void @arm_heavy_mb() #3
  %56 = ptrtoint ptr %pitch73 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pitch73, align 4
  %58 = ptrtoint ptr %pri74 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pri74, align 4
  %add100 = add i32 %mul75, 4221192
  %add.ptr101 = getelementptr i8, ptr %59, i32 %add100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 %57) #3, !srcloc !15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  call void @arm_heavy_mb() #3
  %60 = ptrtoint ptr %limit81 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %limit81, align 4
  %62 = ptrtoint ptr %pri74 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri74, align 4
  %add108 = add i32 %mul75, 4221188
  %add.ptr109 = getelementptr i8, ptr %63, i32 %add108
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %61) #3, !srcloc !15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  call void @arm_heavy_mb() #3
  %64 = ptrtoint ptr %addr89 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %addr89, align 4
  %66 = ptrtoint ptr %pri74 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pri74, align 4
  %add116 = add i32 %mul75, 4221184
  %add.ptr117 = getelementptr i8, ptr %67, i32 %add116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 %65) #3, !srcloc !15
  br label %sw.epilog

do.end123:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 9, ptr noundef null) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end123, %do.body70, %do.body21, %do.body
  call void @nvkm_fifo_start(ptr noundef %3, ptr noundef nonnull %flags) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_gr_chan_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nv40_gr_units(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_pause(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nv04_gr_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @nv44_gr, !1, !"nv44_gr", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv44.c", i32 77, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv44.c", i32 69, i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}
!14 = !{i64 2156272943}
!15 = !{i64 5391979}
!16 = !{i64 2156273413}
!17 = !{i64 2156273881}
!18 = !{i64 2156274350}
!19 = !{i64 2156274820}
!20 = !{i64 2156275288}
!21 = !{i64 2156275757}
!22 = !{i64 2156276227}
!23 = !{i64 2156276695}
!24 = !{i64 2156277164}
!25 = !{i64 2156277634}
!26 = !{i64 2156278102}
!27 = !{i64 2156278571}
!28 = !{i64 2156279041}
!29 = !{i64 2156279509}
