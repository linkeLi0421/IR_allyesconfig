; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv40.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv40.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fifo_chan_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.84 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.84 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.150, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.150 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_instmem = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.mutex, ptr, ptr, ptr, ptr }
%struct.nvkm_ramht = type { ptr, ptr, ptr, i32, i32, [0 x %struct.nvkm_ramht_data] }
%struct.nvkm_ramht_data = type { ptr, i32, i32 }
%struct.nvkm_gpuobj = type { %union.anon.81, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.81 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.111, %struct.anon.112, i8, ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.111 = type { %struct.mutex, %struct.nvkm_mm }
%struct.anon.112 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.100, i32, i32, i32, i32, i32, i32, %union.anon.104, i32, i32, [11 x i32], %union.anon.108 }>
%union.anon.100 = type { %struct.anon.103 }
%struct.anon.103 = type { i64 }
%union.anon.104 = type { %struct.anon.107 }
%struct.anon.107 = type { i32, i32, i8 }
%union.anon.108 = type <{ %struct.anon.110, [12 x i8] }>
%struct.anon.110 = type { i48 }

@nv40_fifo_dma_oclass = external dso_local constant %struct.nvkm_fifo_chan_oclass, align 4
@nv40_fifo = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }, [56 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] } { ptr null, ptr null, ptr null, ptr @nv40_fifo_init, ptr null, ptr @nv04_fifo_intr, ptr null, ptr @nv04_fifo_engine_id, ptr @nv04_fifo_id_engine, ptr @nv04_fifo_pause, ptr @nv04_fifo_start, ptr null, ptr null, ptr null, ptr null, ptr null, [2 x ptr] [ptr @nv40_fifo_dma_oclass, ptr null] }, [56 x i8] zeroinitializer }, align 32
@nv40_fifo_ramfc = internal constant { [23 x { i8, i8, i8, i32 }], [40 x i8] } { [23 x { i8, i8, i8, i32 }] [{ i8, i8, i8, i32 } { i8 -128, i8 0, i8 0, i32 12864 }, { i8, i8, i8, i32 } { i8 -128, i8 0, i8 -128, i32 12868 }, { i8, i8, i8, i32 } { i8 -128, i8 1, i8 0, i32 12872 }, { i8, i8, i8, i32 } { i8 -128, i8 1, i8 -128, i32 12844 }, { i8, i8, i8, i32 } { i8 -128, i8 2, i8 0, i32 12960 }, { i8, i8, i8, i32 } { i8 -128, i8 2, i8 -128, i32 12840 }, { i8, i8, i8, i32 } { i8 112, i8 3, i8 0, i32 12836 }, { i8, i8, i8, i32 } { i8 11, i8 -125, i8 28, i32 8280 }, { i8, i8, i8, i32 } { i8 -128, i8 3, i8 -128, i32 12928 }, { i8, i8, i8, i32 } { i8 -128, i8 4, i8 0, i32 12884 }, { i8, i8, i8, i32 } { i8 -128, i8 4, i8 -128, i32 12904 }, { i8, i8, i8, i32 } { i8 -128, i8 5, i8 0, i32 12900 }, { i8, i8, i8, i32 } { i8 -128, i8 5, i8 -128, i32 12896 }, { i8, i8, i8, i32 } { i8 -128, i8 6, i8 0, i32 12908 }, { i8, i8, i8, i32 } { i8 -128, i8 6, i8 -128, i32 12876 }, { i8, i8, i8, i32 } { i8 -128, i8 7, i8 0, i32 13024 }, { i8, i8, i8, i32 } { i8 68, i8 7, i8 -128, i32 8260 }, { i8, i8, i8, i32 } { i8 -128, i8 8, i8 0, i32 13028 }, { i8, i8, i8, i32 } { i8 -128, i8 8, i8 -128, i32 13032 }, { i8, i8, i8, i32 } { i8 -128, i8 9, i8 -128, i32 8328 }, { i8, i8, i8, i32 } { i8 -128, i8 10, i8 0, i32 13056 }, { i8, i8, i8, i32 } { i8 -128, i8 10, i8 -128, i32 13068 }, { i8, i8, i8, i32 } zeroinitializer], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 64, i64 65, i64 66, i64 67, i64 69, i64 71, i64 72, i64 73, i64 75]
@___asan_gen_.3 = private unnamed_addr constant [10 x i8] c"nv40_fifo\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 112, i32 1 }
@___asan_gen_.6 = private unnamed_addr constant [16 x i8] c"nv40_fifo_ramfc\00", align 1
@___asan_gen_.7 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv40.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 33, i32 1 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @nv40_fifo, ptr @nv40_fifo_ramfc], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_fifo to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_fifo_ramfc to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv40_fifo_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pfifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv04_fifo_new_(ptr noundef nonnull @nv40_fifo, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i32 noundef 32, ptr noundef nonnull @nv40_fifo_ramfc, ptr noundef %pfifo) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_fifo_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv40_fifo_init(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %fb3 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %fb3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb3, align 8
  %imem4 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %imem4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %imem4, align 4
  %ramht5 = getelementptr inbounds %struct.nvkm_instmem, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %ramht5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ramht5, align 4
  %ramro6 = getelementptr inbounds %struct.nvkm_instmem, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %ramro6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ramro6, align 4
  %ramfc7 = getelementptr inbounds %struct.nvkm_instmem, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %ramfc7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ramfc7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !13
  tail call void @arm_heavy_mb() #2
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %13, i32 8256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 255) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !15
  tail call void @arm_heavy_mb() #2
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %15, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 553779199) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !16
  tail call void @arm_heavy_mb() #2
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %17, i32 8280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 1) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !17
  tail call void @arm_heavy_mb() #2
  %bits = getelementptr inbounds %struct.nvkm_ramht, ptr %7, i32 0, i32 4
  %18 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bits, align 4
  %sub = shl i32 %19, 16
  %shl = add i32 %sub, -589824
  %gpuobj = getelementptr inbounds %struct.nvkm_ramht, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %gpuobj to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gpuobj, align 4
  %addr = getelementptr inbounds %struct.nvkm_gpuobj, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %addr, align 8
  %shr = lshr i64 %23, 8
  %24 = trunc i64 %shr to i32
  %or = or i32 %shl, %24
  %conv23 = or i32 %or, 50331648
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr25 = getelementptr i8, ptr %26, i32 8720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %conv23) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !18
  tail call void @arm_heavy_mb() #2
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %9, align 4
  %addr29 = getelementptr inbounds %struct.nvkm_memory_func, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %addr29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %addr29, align 4
  %call = tail call i64 %30(ptr noundef %9) #2
  %shr30 = lshr i64 %call, 8
  %conv31 = trunc i64 %shr30 to i32
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %add.ptr33 = getelementptr i8, ptr %32, i32 8728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %conv31) #2, !srcloc !14
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %33 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chipset, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %34, label %do.body45 [
    i32 71, label %entry.do.body34_crit_edge
    i32 73, label %entry.do.body34_crit_edge118
    i32 75, label %entry.do.body34_crit_edge119
    i32 64, label %entry.do.body40_crit_edge
    i32 65, label %entry.do.body40_crit_edge120
    i32 66, label %entry.do.body40_crit_edge121
    i32 67, label %entry.do.body40_crit_edge122
    i32 69, label %entry.do.body40_crit_edge123
    i32 72, label %entry.do.body40_crit_edge124
  ]

entry.do.body40_crit_edge124:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body40

entry.do.body40_crit_edge123:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body40

entry.do.body40_crit_edge122:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body40

entry.do.body40_crit_edge121:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body40

entry.do.body40_crit_edge120:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body40

entry.do.body40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body40

entry.do.body34_crit_edge119:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body34

entry.do.body34_crit_edge118:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body34

entry.do.body34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body34

do.body34:                                        ; preds = %entry.do.body34_crit_edge, %entry.do.body34_crit_edge118, %entry.do.body34_crit_edge119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !19
  tail call void @arm_heavy_mb() #2
  %36 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pri, align 4
  %add.ptr38 = getelementptr i8, ptr %37, i32 8752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 1) #2, !srcloc !14
  br label %do.body40

do.body40:                                        ; preds = %do.body34, %entry.do.body40_crit_edge, %entry.do.body40_crit_edge120, %entry.do.body40_crit_edge121, %entry.do.body40_crit_edge122, %entry.do.body40_crit_edge123, %entry.do.body40_crit_edge124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !20
  tail call void @arm_heavy_mb() #2
  %38 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri, align 4
  %add.ptr44 = getelementptr i8, ptr %39, i32 8736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 196610) #2, !srcloc !14
  br label %do.body62

do.body45:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !21
  tail call void @arm_heavy_mb() #2
  %40 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri, align 4
  %add.ptr49 = getelementptr i8, ptr %41, i32 8752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 0) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !22
  tail call void @arm_heavy_mb() #2
  %ram = getelementptr inbounds %struct.nvkm_fb, ptr %3, i32 0, i32 3
  %42 = ptrtoint ptr %ram to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ram, align 4
  %size = getelementptr inbounds %struct.nvkm_ram, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %size, align 8
  %sub53 = add i64 %45, 281474976186368
  %46 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %11, align 4
  %addr55 = getelementptr inbounds %struct.nvkm_memory_func, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %addr55 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %addr55, align 4
  %call56 = tail call i64 %49(ptr noundef %11) #2
  %add = add i64 %sub53, %call56
  %shr57 = lshr i64 %add, 16
  %50 = trunc i64 %shr57 to i32
  %conv59 = or i32 %50, 196608
  %51 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pri, align 4
  %add.ptr61 = getelementptr i8, ptr %52, i32 8736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %conv59) #2, !srcloc !14
  br label %do.body62

do.body62:                                        ; preds = %do.body45, %do.body40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !23
  tail call void @arm_heavy_mb() #2
  %nr = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 3
  %53 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nr, align 4
  %sub66 = add i32 %54, -1
  %55 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pri, align 4
  %add.ptr68 = getelementptr i8, ptr %56, i32 12804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %sub66) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !24
  tail call void @arm_heavy_mb() #2
  %57 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pri, align 4
  %add.ptr73 = getelementptr i8, ptr %58, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 -1) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !25
  tail call void @arm_heavy_mb() #2
  %59 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pri, align 4
  %add.ptr78 = getelementptr i8, ptr %60, i32 8512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 -1) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !26
  tail call void @arm_heavy_mb() #2
  %61 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pri, align 4
  %add.ptr83 = getelementptr i8, ptr %62, i32 12800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 1) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !27
  tail call void @arm_heavy_mb() #2
  %63 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pri, align 4
  %add.ptr88 = getelementptr i8, ptr %64, i32 12880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 1) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !28
  tail call void @arm_heavy_mb() #2
  %65 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pri, align 4
  %add.ptr93 = getelementptr i8, ptr %66, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 1) #2, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_fifo_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_fifo_engine_id(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv04_fifo_id_engine(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_fifo_pause(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_fifo_start(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @nv40_fifo, !1, !"nv40_fifo", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv40.c", i32 112, i32 1}
!2 = !{ptr @nv40_fifo_ramfc, !3, !"nv40_fifo_ramfc", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv40.c", i32 33, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2156269749}
!14 = !{i64 5391594}
!15 = !{i64 2156270162}
!16 = !{i64 2156270575}
!17 = !{i64 2156271191}
!18 = !{i64 2156271794}
!19 = !{i64 2156272232}
!20 = !{i64 2156272678}
!21 = !{i64 2156273091}
!22 = !{i64 2156273699}
!23 = !{i64 2156274223}
!24 = !{i64 2156274658}
!25 = !{i64 2156275086}
!26 = !{i64 2156275496}
!27 = !{i64 2156275897}
!28 = !{i64 2156276298}
