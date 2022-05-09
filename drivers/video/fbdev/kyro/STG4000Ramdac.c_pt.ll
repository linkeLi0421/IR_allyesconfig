; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/kyro/STG4000Ramdac.c_pt.bc'
source_filename = "../drivers/video/fbdev/kyro/STG4000Ramdac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.STG4000REG = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, [37 x i32], i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [412 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [235 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, [16 x i32], i32, i32, i32, i32, i32, [454 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [151 x i32], i32, i32, [1598 x i32], i32 }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @InitialiseRamdac(ptr noundef %pSTGReg, i32 noundef %displayDepth, i32 noundef %displayWidth, i32 noundef %displayHeight, i32 noundef %HSyncPolarity, i32 noundef %VSyncPolarity, ptr nocapture noundef %pixelClock) local_unnamed_addr #0 align 64 {
entry:
  %F = alloca i32, align 4
  %R = alloca i32, align 4
  %P = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %F) #4
  %0 = ptrtoint ptr %F to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %F, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %R) #4
  %1 = ptrtoint ptr %R to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %R, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %P) #4
  %2 = ptrtoint ptr %P to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %P, align 4
  %SoftwareReset = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 27
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SoftwareReset) #4, !srcloc !13
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and3 = and i32 %4, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %5 = tail call i32 @llvm.bswap.i32(i32 %and3)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SoftwareReset, i32 %5) #4, !srcloc !16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %DACPixelFormat = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 130
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACPixelFormat) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  %7 = and i32 %6, -117637121
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %9 = zext i32 %displayDepth to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %displayDepth, label %if.end.cleanup_crit_edge [
    i32 16, label %if.end.do.body23_crit_edge
    i32 32, label %sw.bb21
  ]

if.end.do.body23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body23

do.body23:                                        ; preds = %sw.bb21, %if.end.do.body23_crit_edge
  %.sink = phi i32 [ 4, %sw.bb21 ], [ 2, %if.end.do.body23_crit_edge ]
  %or = or i32 %8, %.sink
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACPixelFormat, i32 %10) #4, !srcloc !16
  %div.rhs.trunc = trunc i32 %displayDepth to i8
  %div380 = udiv i8 -128, %div.rhs.trunc
  %DACPrimSize = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 120
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACPrimSize) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %12 = lshr i32 %11, 8
  %13 = and i32 %12, 2048
  %div.zext = zext i8 %div380 to i32
  %sub = shl i32 %displayHeight, 12
  %shl52 = add i32 %sub, -4096
  %div53 = udiv i32 %displayWidth, %div.zext
  %sub54 = shl i32 %div53, 23
  %shl55 = add i32 %sub54, -8388608
  %or56 = or i32 %13, %shl52
  %or58 = or i32 %or56, %div53
  %or59 = or i32 %or58, %shl55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %14 = tail call i32 @llvm.bswap.i32(i32 %or59)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACPrimSize, i32 %14) #4, !srcloc !16
  %15 = ptrtoint ptr %pixelClock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pixelClock, align 4
  %call64 = call i32 @ProgramClock(i32 noundef 14318, i32 noundef %16, ptr noundef nonnull %F, ptr noundef nonnull %R, ptr noundef nonnull %P) #4
  %17 = ptrtoint ptr %pixelClock to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call64, ptr %pixelClock, align 4
  %DACPLLMode = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 50
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACPLLMode) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  %19 = and i32 %18, 65535
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %P to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %P, align 4
  %23 = ptrtoint ptr %F to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %F, align 4
  %sub80 = shl i32 %24, 2
  %shl81 = add i32 %sub80, -8
  %25 = ptrtoint ptr %R to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %R, align 4
  %sub83 = shl i32 %26, 11
  %shl84 = add i32 %sub83, -4096
  %or82 = or i32 %22, %20
  %or85 = or i32 %or82, %shl81
  %or86 = or i32 %or85, %shl84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  call void @arm_heavy_mb() #4
  %27 = call i32 @llvm.bswap.i32(i32 %or86)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACPLLMode, i32 %27) #4, !srcloc !16
  %DACPrimAddress = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 119
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACPrimAddress) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACPrimAddress, i32 0) #4, !srcloc !16
  %DACCursorCtrl = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 122
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACCursorCtrl) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  %30 = and i32 %29, -129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACCursorCtrl, i32 %30) #4, !srcloc !16
  %DACCursorAddr = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 121
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACCursorAddr) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  %32 = and i32 %31, 57599
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACCursorAddr, i32 %32) #4, !srcloc !16
  %DACVidWinStart = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 132
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACVidWinStart) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  %34 = and i32 %33, 16253176
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACVidWinStart, i32 %34) #4, !srcloc !16
  %DACVidWinEnd = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 133
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACVidWinEnd) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  %36 = and i32 %35, 16253176
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACVidWinEnd, i32 %36) #4, !srcloc !16
  %DACBorderColor = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 141
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACBorderColor) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  call void @arm_heavy_mb() #4
  %38 = and i32 %37, 255
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACBorderColor, i32 %38) #4, !srcloc !16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  call void @arm_heavy_mb() #4
  %DACBurstCtrl = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 146
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACBurstCtrl, i32 67371008) #4, !srcloc !16
  %DACCrcTrigger = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 147
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACCrcTrigger) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  %40 = and i32 %39, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACCrcTrigger, i32 %40) #4, !srcloc !16
  %DigVidPortCtrl = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 153
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DigVidPortCtrl) #4, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  %42 = and i32 %41, -235798288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DigVidPortCtrl, i32 %42) #4, !srcloc !16
  br label %cleanup

cleanup:                                          ; preds = %do.body23, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body23 ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %P) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %R) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %F) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ProgramClock(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @DisableRamdacOutput(ptr noundef %pSTGReg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %DACStreamCtrl = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 143
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACStreamCtrl) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  %1 = and i32 %0, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACStreamCtrl, i32 %1) #4, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EnableRamdacOutput(ptr noundef %pSTGReg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %DACStreamCtrl = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 143
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACStreamCtrl) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  %1 = or i32 %0, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACStreamCtrl, i32 %1) #4, !srcloc !16
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !{null, !1, !"STG_PIXEL_BUS_WIDTH", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/kyro/STG4000Ramdac.c", i32 19, i32 12}
!2 = distinct !{null, !3, !"REF_CLOCK", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/kyro/STG4000Ramdac.c", i32 20, i32 12}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 1262318}
!14 = !{i64 2154430834}
!15 = !{i64 2154431121}
!16 = !{i64 1261900}
!17 = !{i64 2154431859}
!18 = !{i64 2154432302}
!19 = !{i64 2154433026}
!20 = !{i64 2154433463}
!21 = !{i64 2154434179}
!22 = !{i64 2154434527}
!23 = !{i64 2154435262}
!24 = !{i64 2154435705}
!25 = !{i64 2154436439}
!26 = !{i64 2154436719}
!27 = !{i64 2154437452}
!28 = !{i64 2154437806}
!29 = !{i64 2154438544}
!30 = !{i64 2154438987}
!31 = !{i64 2154439716}
!32 = !{i64 2154440155}
!33 = !{i64 2154440892}
!34 = !{i64 2154441248}
!35 = !{i64 2154441703}
!36 = !{i64 2154442444}
!37 = !{i64 2154442731}
!38 = !{i64 2154443469}
!39 = !{i64 2154444017}
!40 = !{i64 2154444751}
!41 = !{i64 2154445030}
!42 = !{i64 2154445763}
!43 = !{i64 2154446042}
