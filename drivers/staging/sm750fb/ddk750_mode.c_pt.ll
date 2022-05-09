; ModuleID = '/llk/IR_all_yes/drivers/staging/sm750fb/ddk750_mode.c_pt.bc'
source_filename = "../drivers/staging/sm750fb/ddk750_mode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pll_value = type { i32, i32, i32, i32, i32, i32 }
%struct.mode_parameter = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@mmio750 = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ddk750_setModeTiming(ptr noundef readonly %parm, i32 noundef %clock) local_unnamed_addr #0 align 64 {
entry:
  %pll = alloca %struct.pll_value, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pll) #4
  %0 = getelementptr inbounds %struct.pll_value, ptr %pll, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %pll, i32 8
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 14318181, ptr %0, align 4
  %4 = ptrtoint ptr %pll to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %clock, ptr %pll, align 4
  %pixel_clock = getelementptr inbounds %struct.mode_parameter, ptr %parm, i32 0, i32 10
  %5 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pixel_clock, align 4
  %call = call i32 @sm750_calc_pll_value(i32 noundef %6, ptr noundef nonnull %pll) #4
  %call1 = call i32 @sm750_get_chip_type() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1)
  %cmp = icmp eq i32 %call1, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  call void @arm_heavy_mb() #4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -120) #4, !srcloc !10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !9
  call void @arm_heavy_mb() #4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 6) #4, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pll, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end.programModeRegisters.exit_crit_edge [
    i32 2, label %if.then.i
    i32 1, label %if.then36.i
  ]

if.end.programModeRegisters.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %programModeRegisters.exit

if.then.i:                                        ; preds = %if.end
  %call.i = call i32 @sm750_format_pll_reg(ptr noundef nonnull %pll) #4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %10 = call i32 @llvm.bswap.i32(i32 %call.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %11 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #4, !srcloc !12
  %12 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %parm, align 4
  %sub.i = shl i32 %13, 16
  %shl.i = add i32 %sub.i, 268369920
  %and.i = and i32 %shl.i, 268369920
  %horizontal_display_end.i = getelementptr inbounds %struct.mode_parameter, ptr %parm, i32 0, i32 1
  %14 = ptrtoint ptr %horizontal_display_end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %horizontal_display_end.i, align 4
  %sub1.i = add i32 %15, 4095
  %and2.i = and i32 %sub1.i, 4095
  %or.i = or i32 %and.i, %and2.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %16 = call i32 @llvm.bswap.i32(i32 %or.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %17 = load ptr, ptr @mmio750, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %17, i32 524812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %16) #4, !srcloc !12
  %horizontal_sync_width.i = getelementptr inbounds %struct.mode_parameter, ptr %parm, i32 0, i32 3
  %18 = ptrtoint ptr %horizontal_sync_width.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %horizontal_sync_width.i, align 4
  %shl3.i = shl i32 %19, 16
  %and4.i = and i32 %shl3.i, 16711680
  %horizontal_sync_start.i = getelementptr inbounds %struct.mode_parameter, ptr %parm, i32 0, i32 2
  %20 = ptrtoint ptr %horizontal_sync_start.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %horizontal_sync_start.i, align 4
  %sub5.i = add i32 %21, 4095
  %and6.i = and i32 %sub5.i, 4095
  %or7.i = or i32 %and6.i, %and4.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %22 = call i32 @llvm.bswap.i32(i32 %or7.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %23 = load ptr, ptr @mmio750, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %23, i32 524816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %22) #4, !srcloc !12
  %vertical_total.i = getelementptr inbounds %struct.mode_parameter, ptr %parm, i32 0, i32 5
  %24 = ptrtoint ptr %vertical_total.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vertical_total.i, align 4
  %sub8.i = shl i32 %25, 16
  %shl9.i = add i32 %sub8.i, 134152192
  %and10.i = and i32 %shl9.i, 134152192
  %vertical_display_end.i = getelementptr inbounds %struct.mode_parameter, ptr %parm, i32 0, i32 6
  %26 = ptrtoint ptr %vertical_display_end.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vertical_display_end.i, align 4
  %sub11.i = add i32 %27, 2047
  %and12.i = and i32 %sub11.i, 2047
  %or13.i = or i32 %and10.i, %and12.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %28 = call i32 @llvm.bswap.i32(i32 %or13.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %29 = load ptr, ptr @mmio750, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %29, i32 524820
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %28) #4, !srcloc !12
  %vertical_sync_height.i = getelementptr inbounds %struct.mode_parameter, ptr %parm, i32 0, i32 8
  %30 = ptrtoint ptr %vertical_sync_height.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vertical_sync_height.i, align 4
  %shl14.i = shl i32 %31, 16
  %and15.i = and i32 %shl14.i, 4128768
  %vertical_sync_start.i = getelementptr inbounds %struct.mode_parameter, ptr %parm, i32 0, i32 7
  %32 = ptrtoint ptr %vertical_sync_start.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vertical_sync_start.i, align 4
  %sub16.i = add i32 %33, 2047
  %and17.i = and i32 %sub16.i, 2047
  %or18.i = or i32 %and17.i, %and15.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %34 = call i32 @llvm.bswap.i32(i32 %or18.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %35 = load ptr, ptr @mmio750, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %35, i32 524824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %34) #4, !srcloc !12
  %vertical_sync_polarity.i = getelementptr inbounds %struct.mode_parameter, ptr %parm, i32 0, i32 9
  %36 = ptrtoint ptr %vertical_sync_polarity.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vertical_sync_polarity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  %spec.select.i = select i1 %tobool.not.i, i32 260, i32 8452
  %horizontal_sync_polarity.i = getelementptr inbounds %struct.mode_parameter, ptr %parm, i32 0, i32 4
  %38 = ptrtoint ptr %horizontal_sync_polarity.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %horizontal_sync_polarity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool21.not.i = icmp eq i32 %39, 0
  %or23.i = or i32 %spec.select.i, 4096
  %tmp.1.i = select i1 %tobool21.not.i, i32 %spec.select.i, i32 %or23.i
  %call25.i = call i32 @sm750_get_chip_type() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call25.i)
  %cmp26.i = icmp eq i32 %call25.i, 3
  br i1 %cmp26.i, label %if.then27.i, label %if.else.i

if.then27.i:                                      ; preds = %if.then.i
  %40 = ptrtoint ptr %horizontal_display_end.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %horizontal_display_end.i, align 4
  %42 = ptrtoint ptr %vertical_display_end.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vertical_display_end.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %44 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %44, i32 524928
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #4, !srcloc !12
  %sub.i.i = shl i32 %43, 16
  %shl.i.i = add i32 %sub.i.i, 134152192
  %and.i.i = and i32 %shl.i.i, 134152192
  %sub1.i.i = add i32 %41, 2047
  %and2.i.i = and i32 %sub1.i.i, 2047
  %or.i.i = or i32 %and.i.i, %and2.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %45 = call i32 @llvm.bswap.i32(i32 %or.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %46 = load ptr, ptr @mmio750, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %46, i32 524932
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %45) #4, !srcloc !12
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %41)
  %cmp.i.i = icmp eq i32 %41, 800
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %43)
  %cmp4.i.i = icmp eq i32 %43, 600
  %or.cond.i.i = select i1 %cmp.i.i, i1 %cmp4.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #6
  %or5.i.i = or i32 %tmp.1.i, 134217728
  br label %displayControlAdjust_SM750LE.exit.i

if.else.i.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %41)
  %cmp6.i.i = icmp eq i32 %41, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %43)
  %cmp8.i.i = icmp eq i32 %43, 768
  %or.cond1.i.i = select i1 %cmp6.i.i, i1 %cmp8.i.i, i1 false
  br i1 %or.cond1.i.i, label %if.then9.i.i, label %if.else11.i.i

if.then9.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %or10.i.i = or i32 %tmp.1.i, 402653184
  br label %displayControlAdjust_SM750LE.exit.i

if.else11.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1152, i32 %41)
  %cmp12.i.i = icmp eq i32 %41, 1152
  call void @__sanitizer_cov_trace_const_cmp4(i32 864, i32 %43)
  %cmp14.i.i = icmp eq i32 %43, 864
  %or.cond2.i.i = select i1 %cmp12.i.i, i1 %cmp14.i.i, i1 false
  br i1 %or.cond2.i.i, label %if.then15.i.i, label %if.else17.i.i

if.then15.i.i:                                    ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %or16.i.i = or i32 %tmp.1.i, 671088640
  br label %displayControlAdjust_SM750LE.exit.i

if.else17.i.i:                                    ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %41)
  %cmp18.i.i = icmp eq i32 %41, 1280
  %or.cond3.i.i = select i1 %cmp18.i.i, i1 %cmp8.i.i, i1 false
  br i1 %or.cond3.i.i, label %if.then21.i.i, label %if.else23.i.i

if.then21.i.i:                                    ; preds = %if.else17.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %or22.i.i = or i32 %tmp.1.i, 671088640
  br label %displayControlAdjust_SM750LE.exit.i

if.else23.i.i:                                    ; preds = %if.else17.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %43)
  %cmp26.i.i = icmp eq i32 %43, 720
  %or.cond4.i.i = select i1 %cmp18.i.i, i1 %cmp26.i.i, i1 false
  br i1 %or.cond4.i.i, label %if.then27.i.i, label %if.else29.i.i

if.then27.i.i:                                    ; preds = %if.else23.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %or28.i.i = or i32 %tmp.1.i, 536870912
  br label %displayControlAdjust_SM750LE.exit.i

if.else29.i.i:                                    ; preds = %if.else23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 960, i32 %43)
  %cmp32.i.i = icmp eq i32 %43, 960
  %or.cond5.i.i = select i1 %cmp18.i.i, i1 %cmp32.i.i, i1 false
  br i1 %or.cond5.i.i, label %if.then33.i.i, label %if.else35.i.i

if.then33.i.i:                                    ; preds = %if.else29.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %or34.i.i = or i32 %tmp.1.i, 805306368
  br label %displayControlAdjust_SM750LE.exit.i

if.else35.i.i:                                    ; preds = %if.else29.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %43)
  %cmp38.i.i = icmp eq i32 %43, 1024
  %or.cond6.i.i = select i1 %cmp18.i.i, i1 %cmp38.i.i, i1 false
  %or40.i.i = or i32 %tmp.1.i, 805306368
  %spec.select.i.i = select i1 %or.cond6.i.i, i32 %or40.i.i, i32 %tmp.1.i
  br label %displayControlAdjust_SM750LE.exit.i

displayControlAdjust_SM750LE.exit.i:              ; preds = %if.else35.i.i, %if.then33.i.i, %if.then27.i.i, %if.then21.i.i, %if.then15.i.i, %if.then9.i.i, %if.then.i.i
  %dispControl.addr.0.i.i = phi i32 [ %or5.i.i, %if.then.i.i ], [ %or10.i.i, %if.then9.i.i ], [ %or16.i.i, %if.then15.i.i ], [ %or22.i.i, %if.then21.i.i ], [ %or28.i.i, %if.then27.i.i ], [ %or34.i.i, %if.then33.i.i ], [ %spec.select.i.i, %if.else35.i.i ]
  %or50.i.i = or i32 %dispControl.addr.0.i.i, 50348032
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %47 = call i32 @llvm.bswap.i32(i32 %or50.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %48 = load ptr, ptr @mmio750, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %48, i32 524800
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %47) #4, !srcloc !12
  br label %programModeRegisters.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %49 = load ptr, ptr @mmio750, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %49, i32 524800
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %51 = and i32 %50, -70320129
  %52 = call i32 @llvm.bswap.i32(i32 %51) #4
  %or31.i = or i32 %52, %tmp.1.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %53 = call i32 @llvm.bswap.i32(i32 %or31.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %54 = load ptr, ptr @mmio750, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %54, i32 524800
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %53) #4, !srcloc !12
  br label %programModeRegisters.exit

if.then36.i:                                      ; preds = %if.end
  %call37.i = call i32 @sm750_format_pll_reg(ptr noundef nonnull %pll) #4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %55 = call i32 @llvm.bswap.i32(i32 %call37.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %56 = load ptr, ptr @mmio750, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %56, i32 92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %55) #4, !srcloc !12
  %57 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %parm, align 4
  %sub39.i = shl i32 %58, 16
  %shl40.i = add i32 %sub39.i, 268369920
  %and41.i = and i32 %shl40.i, 268369920
  %horizontal_display_end42.i = getelementptr inbounds %struct.mode_parameter, ptr %parm, i32 0, i32 1
  %59 = ptrtoint ptr %horizontal_display_end42.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %horizontal_display_end42.i, align 4
  %sub43.i = add i32 %60, 4095
  %and44.i = and i32 %sub43.i, 4095
  %or45.i = or i32 %and41.i, %and44.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %61 = call i32 @llvm.bswap.i32(i32 %or45.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %62 = load ptr, ptr @mmio750, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %62, i32 524324
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %61) #4, !srcloc !12
  %horizontal_sync_width46.i = getelementptr inbounds %struct.mode_parameter, ptr %parm, i32 0, i32 3
  %63 = ptrtoint ptr %horizontal_sync_width46.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %horizontal_sync_width46.i, align 4
  %shl47.i = shl i32 %64, 16
  %and48.i = and i32 %shl47.i, 16711680
  %horizontal_sync_start49.i = getelementptr inbounds %struct.mode_parameter, ptr %parm, i32 0, i32 2
  %65 = ptrtoint ptr %horizontal_sync_start49.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %horizontal_sync_start49.i, align 4
  %sub50.i = add i32 %66, 4095
  %and51.i = and i32 %sub50.i, 4095
  %or52.i = or i32 %and51.i, %and48.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %67 = call i32 @llvm.bswap.i32(i32 %or52.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %68 = load ptr, ptr @mmio750, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %68, i32 524328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %67) #4, !srcloc !12
  %vertical_total53.i = getelementptr inbounds %struct.mode_parameter, ptr %parm, i32 0, i32 5
  %69 = ptrtoint ptr %vertical_total53.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %vertical_total53.i, align 4
  %sub54.i = shl i32 %70, 16
  %shl55.i = add i32 %sub54.i, 134152192
  %and56.i = and i32 %shl55.i, 134152192
  %vertical_display_end57.i = getelementptr inbounds %struct.mode_parameter, ptr %parm, i32 0, i32 6
  %71 = ptrtoint ptr %vertical_display_end57.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %vertical_display_end57.i, align 4
  %sub58.i = add i32 %72, 2047
  %and59.i = and i32 %sub58.i, 2047
  %or60.i = or i32 %and56.i, %and59.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %73 = call i32 @llvm.bswap.i32(i32 %or60.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %74 = load ptr, ptr @mmio750, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %74, i32 524332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %73) #4, !srcloc !12
  %vertical_sync_height61.i = getelementptr inbounds %struct.mode_parameter, ptr %parm, i32 0, i32 8
  %75 = ptrtoint ptr %vertical_sync_height61.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %vertical_sync_height61.i, align 4
  %shl62.i = shl i32 %76, 16
  %and63.i = and i32 %shl62.i, 4128768
  %vertical_sync_start64.i = getelementptr inbounds %struct.mode_parameter, ptr %parm, i32 0, i32 7
  %77 = ptrtoint ptr %vertical_sync_start64.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %vertical_sync_start64.i, align 4
  %sub65.i = add i32 %78, 2047
  %and66.i = and i32 %sub65.i, 2047
  %or67.i = or i32 %and66.i, %and63.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %79 = call i32 @llvm.bswap.i32(i32 %or67.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %80 = load ptr, ptr @mmio750, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %80, i32 524336
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %79) #4, !srcloc !12
  %vertical_sync_polarity68.i = getelementptr inbounds %struct.mode_parameter, ptr %parm, i32 0, i32 9
  %81 = ptrtoint ptr %vertical_sync_polarity68.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vertical_sync_polarity68.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool69.not.i = icmp eq i32 %82, 0
  %spec.select1.i = select i1 %tobool69.not.i, i32 260, i32 8452
  %horizontal_sync_polarity73.i = getelementptr inbounds %struct.mode_parameter, ptr %parm, i32 0, i32 4
  %83 = ptrtoint ptr %horizontal_sync_polarity73.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %horizontal_sync_polarity73.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool74.not.i = icmp eq i32 %84, 0
  %or76.i = or i32 %spec.select1.i, 4096
  %tmp.3.i = select i1 %tobool74.not.i, i32 %spec.select1.i, i32 %or76.i
  %clock_phase_polarity.i = getelementptr inbounds %struct.mode_parameter, ptr %parm, i32 0, i32 13
  %85 = ptrtoint ptr %clock_phase_polarity.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %clock_phase_polarity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool78.not.i = icmp eq i32 %86, 0
  %or80.i = or i32 %tmp.3.i, 16384
  %tmp.4.i = select i1 %tobool78.not.i, i32 %tmp.3.i, i32 %or80.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %87 = load ptr, ptr @mmio750, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %87, i32 524288
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %89 = and i32 %88, -83488961
  %90 = call i32 @llvm.bswap.i32(i32 %89) #4
  %or85.i = or i32 %tmp.4.i, %90
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  %91 = call i32 @llvm.bswap.i32(i32 %or85.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %92 = load ptr, ptr @mmio750, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %92, i32 524288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %91) #4, !srcloc !12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %93 = load ptr, ptr @mmio750, align 4
  %add.ptr.i1517.i = getelementptr i8, ptr %93, i32 524288
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1517.i) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %95 = and i32 %94, -8974529
  %96 = call i32 @llvm.bswap.i32(i32 %95) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %or85.i)
  %cmp90.not18.i = icmp eq i32 %96, %or85.i
  br i1 %cmp90.not18.i, label %if.then36.i.programModeRegisters.exit_crit_edge, label %if.then36.i.while.body.i_crit_edge

if.then36.i.while.body.i_crit_edge:               ; preds = %if.then36.i
  br label %while.body.i

if.then36.i.programModeRegisters.exit_crit_edge:  ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %programModeRegisters.exit

while.body.i:                                     ; preds = %if.end93.i.while.body.i_crit_edge, %if.then36.i.while.body.i_crit_edge
  %cnt.019.i = phi i32 [ %inc.i, %if.end93.i.while.body.i_crit_edge ], [ 0, %if.then36.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %cnt.019.i)
  %exitcond.i = icmp eq i32 %cnt.019.i, 1000
  br i1 %exitcond.i, label %while.body.i.programModeRegisters.exit_crit_edge, label %if.end93.i

while.body.i.programModeRegisters.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %programModeRegisters.exit

if.end93.i:                                       ; preds = %while.body.i
  %inc.i = add nuw nsw i32 %cnt.019.i, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  call void @arm_heavy_mb() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %97 = load ptr, ptr @mmio750, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %97, i32 524288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %91) #4, !srcloc !12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %98 = load ptr, ptr @mmio750, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %98, i32 524288
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %100 = and i32 %99, -8974529
  %101 = call i32 @llvm.bswap.i32(i32 %100) #4
  %cmp90.not.i = icmp eq i32 %101, %or85.i
  br i1 %cmp90.not.i, label %if.end93.i.programModeRegisters.exit_crit_edge, label %if.end93.i.while.body.i_crit_edge

if.end93.i.while.body.i_crit_edge:                ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

if.end93.i.programModeRegisters.exit_crit_edge:   ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %programModeRegisters.exit

programModeRegisters.exit:                        ; preds = %if.end93.i.programModeRegisters.exit_crit_edge, %while.body.i.programModeRegisters.exit_crit_edge, %if.then36.i.programModeRegisters.exit_crit_edge, %if.else.i, %displayControlAdjust_SM750LE.exit.i, %if.end.programModeRegisters.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pll) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm750_calc_pll_value(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm750_get_chip_type() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm750_format_pll_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

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
!9 = !{i64 2148954022}
!10 = !{i64 773142}
!11 = !{i64 2150709187}
!12 = !{i64 773339}
!13 = !{i64 773757}
!14 = !{i64 2150708806}
