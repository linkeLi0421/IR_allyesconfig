; ModuleID = '/llk/IR_all_yes/drivers/staging/sm750fb/ddk750_power.c_pt.bc'
source_filename = "../drivers/staging/sm750fb/ddk750_power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@mmio750 = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ddk750_set_dpms(i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sm750_get_chip_type() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp = icmp eq i32 %call, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %0 = load ptr, ptr @mmio750, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i = getelementptr i8, ptr %0, i32 524800
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  %2 = and i32 %1, -193
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shl = shl i32 %state, 30
  %or = or i32 %3, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %5 = load ptr, ptr @mmio750, align 4
  %add.ptr.i9 = getelementptr i8, ptr %5, i32 524800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %4) #3, !srcloc !12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #3, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  %7 = and i32 %6, -193
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %or4 = or i32 %8, %state
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %9 = tail call i32 @llvm.bswap.i32(i32 %or4) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %10 = load ptr, ptr @mmio750, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #3, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm750_get_chip_type() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sm750_set_power_mode(i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %0 = load ptr, ptr @mmio750, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 76
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  %2 = and i32 %1, -50331649
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %call1 = tail call i32 @sm750_get_chip_type() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1)
  %cmp = icmp eq i32 %call1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %if.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb4
    i32 1, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %or3 = or i32 %3, 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %or5 = or i32 %3, 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2, %if.end.sw.epilog_crit_edge
  %ctrl.0 = phi i32 [ %or5, %sw.bb4 ], [ %or3, %sw.bb2 ], [ %3, %if.end.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp6 = icmp eq i32 %mode, 2
  %and8 = and i32 %ctrl.0, -9
  %masksel = select i1 %cmp6, i32 0, i32 8
  %ctrl.1 = or i32 %and8, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %5 = tail call i32 @llvm.bswap.i32(i32 %ctrl.1) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %6 = load ptr, ptr @mmio750, align 4
  %add.ptr.i17 = getelementptr i8, ptr %6, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %5) #3, !srcloc !12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sm750_set_current_gate(i32 noundef %gate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @sm750_get_chip_type() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 3
  br i1 %cmp.i, label %entry.if.else_crit_edge, label %get_power_mode.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

get_power_mode.exit:                              ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %0 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 76
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  %2 = and i32 %1, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %2)
  %cmp = icmp eq i32 %2, 16777216
  br i1 %cmp, label %if.then, label %get_power_mode.exit.if.else_crit_edge

get_power_mode.exit.if.else_crit_edge:            ; preds = %get_power_mode.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then:                                          ; preds = %get_power_mode.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %3 = tail call i32 @llvm.bswap.i32(i32 %gate) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %4 = load ptr, ptr @mmio750, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #3, !srcloc !12
  br label %if.end

if.else:                                          ; preds = %get_power_mode.exit.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %5 = tail call i32 @llvm.bswap.i32(i32 %gate) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %6 = load ptr, ptr @mmio750, align 4
  %add.ptr.i2 = getelementptr i8, ptr %6, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %5) #3, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sm750_enable_2d_engine(i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %0 = load ptr, ptr @mmio750, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 64
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %2 = and i32 %1, -402653185
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %masksel = select i1 %tobool.not, i32 0, i32 24
  %gate.0 = or i32 %3, %masksel
  %call.i.i = tail call i32 @sm750_get_chip_type() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 3
  br i1 %cmp.i.i, label %entry.if.else.i_crit_edge, label %get_power_mode.exit.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

get_power_mode.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %4 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 76
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #3, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  %6 = and i32 %5, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %6)
  %cmp.i = icmp eq i32 %6, 16777216
  br i1 %cmp.i, label %if.then.i, label %get_power_mode.exit.i.if.else.i_crit_edge

get_power_mode.exit.i.if.else.i_crit_edge:        ; preds = %get_power_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

if.then.i:                                        ; preds = %get_power_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %7 = tail call i32 @llvm.bswap.i32(i32 %gate.0) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %8 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #3, !srcloc !12
  br label %sm750_set_current_gate.exit

if.else.i:                                        ; preds = %get_power_mode.exit.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %9 = tail call i32 @llvm.bswap.i32(i32 %gate.0) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %10 = load ptr, ptr @mmio750, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %10, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %9) #3, !srcloc !12
  br label %sm750_set_current_gate.exit

sm750_set_current_gate.exit:                      ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sm750_enable_dma(i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %0 = load ptr, ptr @mmio750, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 64
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp ne i32 %enable, 0
  %2 = and i32 %1, -16777217
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %masksel = zext i1 %tobool.not to i32
  %gate.0 = or i32 %3, %masksel
  %call.i.i = tail call i32 @sm750_get_chip_type() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 3
  br i1 %cmp.i.i, label %entry.if.else.i_crit_edge, label %get_power_mode.exit.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

get_power_mode.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %4 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 76
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #3, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  %6 = and i32 %5, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %6)
  %cmp.i = icmp eq i32 %6, 16777216
  br i1 %cmp.i, label %if.then.i, label %get_power_mode.exit.i.if.else.i_crit_edge

get_power_mode.exit.i.if.else.i_crit_edge:        ; preds = %get_power_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

if.then.i:                                        ; preds = %get_power_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %7 = tail call i32 @llvm.bswap.i32(i32 %gate.0) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %8 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #3, !srcloc !12
  br label %sm750_set_current_gate.exit

if.else.i:                                        ; preds = %get_power_mode.exit.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %9 = tail call i32 @llvm.bswap.i32(i32 %gate.0) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %10 = load ptr, ptr @mmio750, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %10, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %9) #3, !srcloc !12
  br label %sm750_set_current_gate.exit

sm750_set_current_gate.exit:                      ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sm750_enable_gpio(i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %0 = load ptr, ptr @mmio750, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 64
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %2 = and i32 %1, -1073741825
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %masksel = select i1 %tobool.not, i32 0, i32 64
  %gate.0 = or i32 %3, %masksel
  %call.i.i = tail call i32 @sm750_get_chip_type() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 3
  br i1 %cmp.i.i, label %entry.if.else.i_crit_edge, label %get_power_mode.exit.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

get_power_mode.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %4 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 76
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #3, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  %6 = and i32 %5, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %6)
  %cmp.i = icmp eq i32 %6, 16777216
  br i1 %cmp.i, label %if.then.i, label %get_power_mode.exit.i.if.else.i_crit_edge

get_power_mode.exit.i.if.else.i_crit_edge:        ; preds = %get_power_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

if.then.i:                                        ; preds = %get_power_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %7 = tail call i32 @llvm.bswap.i32(i32 %gate.0) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %8 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #3, !srcloc !12
  br label %sm750_set_current_gate.exit

if.else.i:                                        ; preds = %get_power_mode.exit.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %9 = tail call i32 @llvm.bswap.i32(i32 %gate.0) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %10 = load ptr, ptr @mmio750, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %10, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %9) #3, !srcloc !12
  br label %sm750_set_current_gate.exit

sm750_set_current_gate.exit:                      ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sm750_enable_i2c(i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %0 = load ptr, ptr @mmio750, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 64
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %2 = and i32 %1, -65537
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %masksel = select i1 %tobool.not, i32 0, i32 256
  %gate.0 = or i32 %3, %masksel
  %call.i.i = tail call i32 @sm750_get_chip_type() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 3
  br i1 %cmp.i.i, label %entry.if.else.i_crit_edge, label %get_power_mode.exit.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

get_power_mode.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %4 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 76
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #3, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  %6 = and i32 %5, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %6)
  %cmp.i = icmp eq i32 %6, 16777216
  br i1 %cmp.i, label %if.then.i, label %get_power_mode.exit.i.if.else.i_crit_edge

get_power_mode.exit.i.if.else.i_crit_edge:        ; preds = %get_power_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

if.then.i:                                        ; preds = %get_power_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %7 = tail call i32 @llvm.bswap.i32(i32 %gate.0) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %8 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #3, !srcloc !12
  br label %sm750_set_current_gate.exit

if.else.i:                                        ; preds = %get_power_mode.exit.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %9 = tail call i32 @llvm.bswap.i32(i32 %gate.0) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %10 = load ptr, ptr @mmio750, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %10, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %9) #3, !srcloc !12
  br label %sm750_set_current_gate.exit

sm750_set_current_gate.exit:                      ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

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
!9 = !{i64 688710}
!10 = !{i64 2150623759}
!11 = !{i64 2150624140}
!12 = !{i64 688292}
