; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv30.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv30.c"
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

@nv30_fb = internal constant { %struct.nvkm_fb_func, [56 x i8] } { %struct.nvkm_fb_func { ptr null, ptr @nv20_fb_tags, ptr null, ptr @nv30_fb_init, ptr null, ptr null, ptr null, ptr null, %struct.anon zeroinitializer, %struct.anon.0 { i32 8, ptr @nv30_fb_tile_init, ptr @nv30_fb_tile_comp, ptr @nv20_fb_tile_fini, ptr @nv20_fb_tile_prog }, ptr @nv20_ram_new, i8 0, ptr null }, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 48, i64 49, i64 53]
@___asan_gen_.1 = private unnamed_addr constant [8 x i8] c"nv30_fb\00", align 1
@___asan_gen_.2 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv30.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 118, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @nv30_fb], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv30_fb to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv30_fb_tile_init(ptr noundef %fb, i32 noundef %i, i32 noundef %addr, i32 noundef %size, i32 noundef %pitch, i32 noundef %flags, ptr noundef %tile) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.else

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.else:                                          ; preds = %entry
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %comp = getelementptr inbounds %struct.nvkm_fb_func, ptr %1, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %comp, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.else.if.end9_crit_edge, label %if.then4

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %3(ptr noundef %fb, i32 noundef %i, i32 noundef %size, i32 noundef %flags, ptr noundef %tile) #3
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.else.if.end9_crit_edge, %entry.if.end9_crit_edge
  %.sink = phi i32 [ 0, %entry.if.end9_crit_edge ], [ 16, %if.then4 ], [ 16, %if.else.if.end9_crit_edge ]
  %addr10 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 1
  %or = or i32 %.sink, %addr
  %or12 = or i32 %or, 1
  %4 = ptrtoint ptr %addr10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or12, ptr %addr10, align 4
  %add = add i32 %size, %addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp = icmp eq i32 %add, 0
  %phi.bo = add i32 %add, -1
  %cond = select i1 %cmp, i32 0, i32 %phi.bo
  %limit = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 2
  %5 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %limit, align 4
  %pitch13 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 3
  %6 = ptrtoint ptr %pitch13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %pitch, ptr %pitch13, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv30_fb_init(ptr nocapture noundef readonly %fb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chipset, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.if.end_crit_edge [
    i32 48, label %entry.if.then_crit_edge
    i32 49, label %entry.if.then_crit_edge59
    i32 53, label %entry.if.then_crit_edge60
  ]

entry.if.then_crit_edge60:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

entry.if.then_crit_edge59:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge59, %entry.if.then_crit_edge60
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %3)
  %cmp8 = icmp eq i32 %3, 49
  %cond = select i1 %cmp8, i32 2, i32 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 1049552
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  br label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond10.preheader.for.cond10.preheader_crit_edge, %if.then
  %i.058 = phi i32 [ 0, %if.then ], [ %inc35, %for.cond10.preheader.for.cond10.preheader_crit_edge ]
  %mul = mul nuw nsw i32 %i.058, 12
  %add = add nuw nsw i32 %mul, 1049468
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %call13 = tail call fastcc i32 @calc_ref(ptr noundef %fb, i32 noundef %7, i32 noundef 0, i32 noundef 0)
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr17 = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %call13) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %call13.1 = tail call fastcc i32 @calc_ref(ptr noundef %fb, i32 noundef %7, i32 noundef 0, i32 noundef 1)
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add16.1 = add nuw nsw i32 %mul, 1049472
  %add.ptr17.1 = getelementptr i8, ptr %11, i32 %add16.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.1, i32 %call13.1) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %call13.2 = tail call fastcc i32 @calc_ref(ptr noundef %fb, i32 noundef %7, i32 noundef 0, i32 noundef 2)
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add16.2 = add nuw nsw i32 %mul, 1049476
  %add.ptr17.2 = getelementptr i8, ptr %13, i32 %add16.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.2, i32 %call13.2) #3, !srcloc !14
  %mul26 = shl i32 %i.058, 3
  %add27 = add nuw nsw i32 %mul26, 1049516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %call24 = tail call fastcc i32 @calc_ref(ptr noundef %fb, i32 noundef %7, i32 noundef 1, i32 noundef 0)
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr30 = getelementptr i8, ptr %15, i32 %add27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %call24) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %call24.1 = tail call fastcc i32 @calc_ref(ptr noundef %fb, i32 noundef %7, i32 noundef 1, i32 noundef 1)
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add29.1 = add nuw nsw i32 %mul26, 1049520
  %add.ptr30.1 = getelementptr i8, ptr %17, i32 %add29.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.1, i32 %call24.1) #3, !srcloc !14
  %inc35 = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc35, %cond
  br i1 %exitcond.not, label %for.cond10.preheader.if.end_crit_edge, label %for.cond10.preheader.for.cond10.preheader_crit_edge

for.cond10.preheader.for.cond10.preheader_crit_edge: ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond10.preheader

for.cond10.preheader.if.end_crit_edge:            ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %for.cond10.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calc_ref(ptr nocapture noundef readonly %fb, i32 noundef %l, i32 noundef %k, i32 noundef %i) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1.i = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 1
  %mul.i = shl i32 %k, 4
  %xor.i = shl i32 %i, 2
  %mul4.i = xor i32 %xor.i, 4
  %0 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1.i, align 4
  %chipset.i = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chipset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %3)
  %cmp.i = icmp ugt i32 %3, 48
  br i1 %cmp.i, label %cond.true.i, label %entry.calc_bias.exit_crit_edge

entry.calc_bias.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %calc_bias.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add.i = add i32 %mul.i, 4652
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %shr.i = lshr i32 %6, %mul4.i
  %phi.bo.i = and i32 %shr.i, 15
  br label %calc_bias.exit

calc_bias.exit:                                   ; preds = %cond.true.i, %entry.calc_bias.exit_crit_edge
  %cond.i = phi i32 [ %phi.bo.i, %cond.true.i ], [ 0, %entry.calc_bias.exit_crit_edge ]
  %7 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device1.i, align 4
  %chipset.i.1 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %chipset.i.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chipset.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %10)
  %cmp.i.1 = icmp ugt i32 %10, 48
  br i1 %cmp.i.1, label %cond.true.i.1, label %calc_bias.exit.calc_bias.exit.1_crit_edge

calc_bias.exit.calc_bias.exit.1_crit_edge:        ; preds = %calc_bias.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %calc_bias.exit.1

cond.true.i.1:                                    ; preds = %calc_bias.exit
  call void @__sanitizer_cov_trace_pc() #5
  %pri.i.1 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %11 = ptrtoint ptr %pri.i.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri.i.1, align 4
  %add3.i.1 = add i32 %mul.i, 4656
  %add.ptr.i.1 = getelementptr i8, ptr %12, i32 %add3.i.1
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %shr.i.1 = lshr i32 %13, %mul4.i
  %phi.bo.i.1 = and i32 %shr.i.1, 15
  br label %calc_bias.exit.1

calc_bias.exit.1:                                 ; preds = %cond.true.i.1, %calc_bias.exit.calc_bias.exit.1_crit_edge
  %cond.i.1 = phi i32 [ %phi.bo.i.1, %cond.true.i.1 ], [ 0, %calc_bias.exit.calc_bias.exit.1_crit_edge ]
  %14 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device1.i, align 4
  %chipset.i.2 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %chipset.i.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chipset.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %17)
  %cmp.i.2 = icmp ugt i32 %17, 48
  br i1 %cmp.i.2, label %cond.true.i.2, label %calc_bias.exit.1.calc_bias.exit.2_crit_edge

calc_bias.exit.1.calc_bias.exit.2_crit_edge:      ; preds = %calc_bias.exit.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %calc_bias.exit.2

cond.true.i.2:                                    ; preds = %calc_bias.exit.1
  call void @__sanitizer_cov_trace_pc() #5
  %pri.i.2 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %18 = ptrtoint ptr %pri.i.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri.i.2, align 4
  %add3.i.2 = add i32 %mul.i, 4660
  %add.ptr.i.2 = getelementptr i8, ptr %19, i32 %add3.i.2
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %shr.i.2 = lshr i32 %20, %mul4.i
  %phi.bo.i.2 = and i32 %shr.i.2, 15
  br label %calc_bias.exit.2

calc_bias.exit.2:                                 ; preds = %cond.true.i.2, %calc_bias.exit.1.calc_bias.exit.2_crit_edge
  %cond.i.2 = phi i32 [ %phi.bo.i.2, %cond.true.i.2 ], [ 0, %calc_bias.exit.1.calc_bias.exit.2_crit_edge ]
  %21 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device1.i, align 4
  %chipset.i.3 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 16
  %23 = ptrtoint ptr %chipset.i.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chipset.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %24)
  %cmp.i.3 = icmp ugt i32 %24, 48
  br i1 %cmp.i.3, label %cond.true.i.3, label %calc_bias.exit.2.calc_bias.exit.3_crit_edge

calc_bias.exit.2.calc_bias.exit.3_crit_edge:      ; preds = %calc_bias.exit.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %calc_bias.exit.3

cond.true.i.3:                                    ; preds = %calc_bias.exit.2
  call void @__sanitizer_cov_trace_pc() #5
  %pri.i.3 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 11
  %25 = ptrtoint ptr %pri.i.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri.i.3, align 4
  %add3.i.3 = add i32 %mul.i, 4664
  %add.ptr.i.3 = getelementptr i8, ptr %26, i32 %add3.i.3
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %shr.i.3 = lshr i32 %27, %mul4.i
  %phi.bo.i.3 = and i32 %shr.i.3, 15
  br label %calc_bias.exit.3

calc_bias.exit.3:                                 ; preds = %cond.true.i.3, %calc_bias.exit.2.calc_bias.exit.3_crit_edge
  %cond.i.3 = phi i32 [ %phi.bo.i.3, %cond.true.i.3 ], [ 0, %calc_bias.exit.2.calc_bias.exit.3_crit_edge ]
  %and5.i.1 = and i32 %cond.i.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.1)
  %tobool.not.i.1 = icmp eq i32 %and5.i.1, 0
  %28 = shl nuw nsw i32 %cond.i.1, 1
  %29 = or i32 %28, -32
  %mul10.i.1 = select i1 %tobool.not.i.1, i32 %28, i32 %29
  %mul = shl i32 %i, 3
  %shr = ashr i32 %l, %mul
  %and = and i32 %shr, 255
  %add.1 = add nsw i32 %mul10.i.1, %and
  %30 = tail call i32 @llvm.smax.i32(i32 %add.1, i32 0)
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 31)
  %or.1 = shl nuw nsw i32 %31, 8
  %and5.i = and i32 %cond.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i = icmp eq i32 %and5.i, 0
  %32 = shl nuw nsw i32 %cond.i, 1
  %33 = or i32 %32, -32
  %mul10.i = select i1 %tobool.not.i, i32 %32, i32 %33
  %add = add nsw i32 %mul10.i, %and
  %34 = tail call i32 @llvm.smax.i32(i32 %add, i32 0)
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 31)
  %or = or i32 %or.1, %35
  %and5.i.2 = and i32 %cond.i.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.2)
  %tobool.not.i.2 = icmp eq i32 %and5.i.2, 0
  %36 = shl nuw nsw i32 %cond.i.2, 1
  %37 = or i32 %36, -32
  %mul10.i.2 = select i1 %tobool.not.i.2, i32 %36, i32 %37
  %add.2 = add nsw i32 %mul10.i.2, %and
  %38 = tail call i32 @llvm.smax.i32(i32 %add.2, i32 0)
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 31)
  %or.2 = shl nuw nsw i32 %39, 16
  %or9.1 = or i32 %or.2, %or
  %and5.i.3 = and i32 %cond.i.3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.3)
  %tobool.not.i.3 = icmp eq i32 %and5.i.3, 0
  %40 = shl nuw nsw i32 %cond.i.3, 1
  %41 = or i32 %40, -32
  %mul10.i.3 = select i1 %tobool.not.i.3, i32 %40, i32 %41
  %add.3 = add nsw i32 %mul10.i.3, %and
  %42 = tail call i32 @llvm.smax.i32(i32 %add.3, i32 0)
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 31)
  %or.3 = shl nuw nsw i32 %43, 24
  %or9.2 = or i32 %or.3, %or9.1
  %or9.3 = or i32 %or9.2, -2139062144
  ret i32 %or9.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv30_fb_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pfb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_fb_new_(ptr noundef nonnull @nv30_fb, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pfb) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fb_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_fb_tags(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv30_fb_tile_comp(ptr noundef %fb, i32 noundef %i, i32 noundef %size, i32 noundef %flags, ptr noundef %tile) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %size, 63
  %div33 = lshr i32 %sub, 6
  %ram = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 3
  %0 = ptrtoint ptr %ram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ram, align 4
  %parts = getelementptr inbounds %struct.nvkm_ram, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parts, align 8
  %div1 = udiv i32 %div33, %3
  %sub2 = add nsw i32 %div1, -1
  %or = or i32 %sub2, 63
  %add3 = add nsw i32 %or, 1
  %mm = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 4, i32 1
  %call = tail call i32 @nvkm_mm_head(ptr noundef %mm, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %add3, i32 noundef %add3, i32 noundef 1, ptr noundef %tile) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %zcomp8 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 4
  %4 = ptrtoint ptr %zcomp8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %zcomp8, align 4
  %. = select i1 %tobool5.not, i32 33554432, i32 16777216
  %or9 = or i32 %5, %.
  store i32 %or9, ptr %zcomp8, align 4
  %6 = ptrtoint ptr %tile to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tile, align 4
  %offset = getelementptr inbounds %struct.nvkm_mm_node, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %shr = lshr i32 %9, 6
  %zcomp11 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %tile, i32 0, i32 4
  %or12 = or i32 %or9, %shr
  %10 = ptrtoint ptr %zcomp11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or12, ptr %zcomp11, align 4
  %11 = load i32, ptr %offset, align 4
  %sub16 = add i32 %11, %or
  %12 = shl i32 %sub16, 6
  %shl = and i32 %12, -268439552
  %or19 = or i32 %or12, %shl
  %or21 = or i32 %or19, 268435456
  store i32 %or21, ptr %zcomp11, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then, %entry.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv20_fb_tile_fini(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv20_fb_tile_prog(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_ram_new(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_head(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @nv30_fb, !1, !"nv30_fb", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv30.c", i32 118, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 5393128}
!12 = !{i64 2156262333}
!13 = !{i64 2156262737}
!14 = !{i64 5392710}
!15 = !{i64 2156263223}
!16 = !{i64 2156253232}
