; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/ga102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/gpio/ga102.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_gpio_func = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_gpio = type { ptr, %struct.nvkm_subdev, %struct.nvkm_event }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.133, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.133 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@ga102_gpio = internal constant { %struct.nvkm_gpio_func, [40 x i8] } { %struct.nvkm_gpio_func { i32 32, ptr @ga102_gpio_intr_stat, ptr @ga102_gpio_intr_mask, ptr @ga102_gpio_drive, ptr @ga102_gpio_sense, ptr @ga102_gpio_reset }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"ga102_gpio\00", align 1
@___asan_gen_.2 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/gpio/ga102.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 105, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @ga102_gpio], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ga102_gpio to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ga102_gpio_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgpio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_gpio_new_(ptr noundef nonnull @ga102_gpio, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pgpio) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ga102_gpio_intr_stat(ptr nocapture noundef readonly %gpio, ptr nocapture noundef writeonly %hi, ptr nocapture noundef writeonly %lo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_gpio, ptr %gpio, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 136768
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 136780
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %9, i32 136776
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  %and = and i32 %10, %4
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr14 = getelementptr i8, ptr %12, i32 136788
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %and17 = and i32 %13, %7
  %and18 = and i32 %and17, -65536
  %shr = lshr i32 %and, 16
  %or = or i32 %and18, %shr
  %14 = ptrtoint ptr %lo to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %lo, align 4
  %shl = shl i32 %and17, 16
  %and19 = and i32 %and, 65535
  %or20 = or i32 %shl, %and19
  %15 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or20, ptr %hi, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr22 = getelementptr i8, ptr %17, i32 136768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %4) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr27 = getelementptr i8, ptr %19, i32 136780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %7) #3, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ga102_gpio_intr_mask(ptr nocapture noundef readonly %gpio, i32 noundef %type, i32 noundef %mask, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_gpio, ptr %gpio, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 136776
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 136788
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  %and = and i32 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %shl = shl i32 %mask, 16
  %neg = xor i32 %shl, -1
  %and7 = and i32 %4, %neg
  %shl8 = shl i32 %data, 16
  %or = or i32 %and7, %shl8
  %inte0.0 = select i1 %tobool.not, i32 %4, i32 %or
  %and9 = and i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %entry.if.end17_crit_edge, label %if.then11

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and12 = and i32 %mask, 65535
  %neg13 = xor i32 %and12, -1
  %and14 = and i32 %inte0.0, %neg13
  %and15 = and i32 %data, 65535
  %or16 = or i32 %and14, %and15
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %entry.if.end17_crit_edge
  %inte0.1 = phi i32 [ %or16, %if.then11 ], [ %inte0.0, %entry.if.end17_crit_edge ]
  br i1 %tobool.not, label %if.end17.if.end27_crit_edge, label %if.then21

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  %shl22 = and i32 %mask, -65536
  %neg23 = xor i32 %shl22, -1
  %and24 = and i32 %7, %neg23
  %shl25 = and i32 %data, -65536
  %or26 = or i32 %and24, %shl25
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %if.end17.if.end27_crit_edge
  %inte1.0 = phi i32 [ %or26, %if.then21 ], [ %7, %if.end17.if.end27_crit_edge ]
  %shr18 = lshr i32 %data, 16
  %shr = lshr i32 %mask, 16
  %neg31 = xor i32 %shr, -1
  %and32 = and i32 %inte1.0, %neg31
  %or33 = or i32 %and32, %shr18
  %inte1.1 = select i1 %tobool10.not, i32 %inte1.0, i32 %or33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr36 = getelementptr i8, ptr %9, i32 136776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %inte0.1) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  tail call void @arm_heavy_mb() #3
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr41 = getelementptr i8, ptr %11, i32 136788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %inte1.1) #3, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ga102_gpio_drive(ptr nocapture noundef readonly %gpio, i32 noundef %line, i32 noundef %dir, i32 noundef %out) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_gpio, ptr %gpio, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %xor = shl i32 %dir, 13
  %shl = xor i32 %xor, 8192
  %shl2 = shl i32 %out, 12
  %or = or i32 %shl, %shl2
  %mul = shl i32 %line, 2
  %add = add i32 %mul, 135680
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %and = and i32 %4, -12289
  %or3 = or i32 %or, %and
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %or3) #3, !srcloc !17
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %8, i32 54788
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %or19 = or i32 %9, 1
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %11, i32 54788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %or19) #3, !srcloc !17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ga102_gpio_sense(ptr nocapture noundef readonly %gpio, i32 noundef %line) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_gpio, ptr %gpio, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %mul = shl i32 %line, 2
  %add = add i32 %mul, 135680
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  %and = lshr i32 %4, 14
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ga102_gpio_reset(ptr noundef %gpio, i8 noundef zeroext %match) #0 align 64 {
entry:
  %ver = alloca i8, align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_gpio, ptr %gpio, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %bios2 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios2, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #3
  %4 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %ver, align 1, !annotation !28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #3
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %len, align 1, !annotation !28
  %call84 = call zeroext i16 @dcb_gpio_entry(ptr noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %ver, ptr noundef nonnull %len) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call84)
  %tobool.not85 = icmp eq i16 %call84, 0
  br i1 %tobool.not85, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %match)
  %cmp21.not = icmp eq i8 %match, -1
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %call87 = phi i16 [ %call84, %while.body.lr.ph ], [ %call, %cleanup.while.body_crit_edge ]
  %inc86 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %cleanup.while.body_crit_edge ]
  %conv = zext i16 %call87 to i32
  %call4 = call i32 @nvbios_rd32(ptr noundef %3, i32 noundef %conv) #3
  %and10 = lshr i32 %call4, 8
  %conv11 = trunc i32 %and10 to i8
  %and15 = lshr i32 %call4, 24
  %6 = trunc i32 %and15 to i8
  %conv17 = and i8 %6, 31
  %7 = and i32 %call4, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %7)
  %cmp = icmp ne i32 %7, 65280
  call void @__sanitizer_cov_trace_cmp1(i8 %conv11, i8 %match)
  %cmp25.not = icmp eq i8 %conv11, %match
  %or.cond = select i1 %cmp21.not, i1 true, i1 %cmp25.not
  %or.cond88 = select i1 %cmp, i1 %or.cond, i1 false
  br i1 %or.cond88, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %while.body
  %and12 = lshr i32 %call4, 16
  %8 = lshr i32 %call4, 7
  %9 = trunc i32 %call4 to i8
  %conv5 = and i8 %9, 63
  %conv27 = and i32 %8, 1
  %call28 = call i32 @nvkm_gpio_set(ptr noundef %gpio, i32 noundef 0, i8 noundef zeroext %conv11, i8 noundef zeroext %conv5, i32 noundef %conv27) #3
  %conv29 = zext i8 %conv5 to i32
  %mul = shl nuw nsw i32 %conv29, 2
  %add = or i32 %mul, 135680
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %add
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  call void @arm_heavy_mb() #3
  %and31 = and i32 %12, -256
  %conv32 = and i32 %and12, 255
  %or = or i32 %and31, %conv32
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr34 = getelementptr i8, ptr %14, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %or) #3, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv17)
  %tobool36.not = icmp eq i8 %conv17, 0
  br i1 %tobool36.not, label %if.end.cleanup_crit_edge, label %if.then37

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %dec = add nsw i8 %conv17, -1
  %conv40 = zext i8 %dec to i32
  %mul41 = shl nuw nsw i32 %conv40, 2
  %add42 = add nuw nsw i32 %mul41, 55104
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr46 = getelementptr i8, ptr %16, i32 %add42
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #3, !srcloc !11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  call void @arm_heavy_mb() #3
  %and52 = and i32 %17, -256
  %or54 = or i32 %and52, %conv29
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr56 = getelementptr i8, ptr %19, i32 %add42
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %or54) #3, !srcloc !17
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %inc = add i32 %inc86, 1
  %call = call zeroext i16 @dcb_gpio_entry(ptr noundef %3, i32 noundef 0, i32 noundef %inc, ptr noundef nonnull %ver, ptr noundef nonnull %len) #3
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_gpio_entry(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_set(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @ga102_gpio, !1, !"ga102_gpio", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/gpio/ga102.c", i32 105, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 5386798}
!12 = !{i64 2156230071}
!13 = !{i64 2156230456}
!14 = !{i64 2156230841}
!15 = !{i64 2156231226}
!16 = !{i64 2156231558}
!17 = !{i64 5386380}
!18 = !{i64 2156231956}
!19 = !{i64 2156232407}
!20 = !{i64 2156232792}
!21 = !{i64 2156233144}
!22 = !{i64 2156233542}
!23 = !{i64 2156227500}
!24 = !{i64 2156227890}
!25 = !{i64 2156228757}
!26 = !{i64 2156229159}
!27 = !{i64 2156229686}
!28 = !{!"auto-init"}
!29 = !{i64 2156225014}
!30 = !{i64 2156225392}
!31 = !{i64 2156226254}
!32 = !{i64 2156226632}
