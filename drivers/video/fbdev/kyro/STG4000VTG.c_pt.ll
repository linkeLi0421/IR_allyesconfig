; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/kyro/STG4000VTG.c_pt.bc'
source_filename = "../drivers/video/fbdev/kyro/STG4000VTG.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.STG4000REG = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, [37 x i32], i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [412 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [235 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, [16 x i32], i32, i32, i32, i32, i32, [454 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [151 x i32], i32, i32, [1598 x i32], i32 }
%struct.kyrofb_info = type { ptr, [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @DisableVGA(ptr noundef %pSTGReg) local_unnamed_addr #0 align 64 {
entry:
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count)
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %count, align 4
  store volatile i32 0, ptr %count, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i)
  %1 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1, ptr %i, align 4
  %SoftwareReset = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 27
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SoftwareReset) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %3 = and i32 %2, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SoftwareReset, i32 %3) #4, !srcloc !12
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %i, align 4
  %i.0.i.0.i.0.22 = load volatile i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %i.0.i.0.i.0.22)
  %cmp23 = icmp ult i32 %i.0.i.0.i.0.22, 1000
  br i1 %cmp23, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %count.0.count.0.count.0. = load volatile i32, ptr %count, align 4
  %inc = add i32 %count.0.count.0.count.0., 1
  store volatile i32 %inc, ptr %count, align 4
  %6 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %6)
  %i.0.i.0.i.0.15 = load volatile i32, ptr %i, align 4
  %inc4 = add i32 %i.0.i.0.i.0.15, 1
  store volatile i32 %inc4, ptr %i, align 4
  %i.0.i.0.i.0. = load volatile i32, ptr %i, align 4
  %cmp = icmp ult i32 %i.0.i.0.i.0., 1000
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SoftwareReset) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  %8 = or i32 %7, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %SoftwareReset, i32 %8) #4, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @StopVTG(ptr noundef %pSTGReg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %DACSyncCtrl = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 142
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACSyncCtrl) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  %1 = and i32 %0, -83886209
  %2 = or i32 %1, 83886080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACSyncCtrl, i32 %2) #4, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @StartVTG(ptr noundef %pSTGReg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %DACSyncCtrl = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 142
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACSyncCtrl) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  %1 = and i32 %0, -83886209
  %2 = or i32 %1, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACSyncCtrl, i32 %2) #4, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @SetupVTG(ptr noundef %pSTGReg, ptr nocapture noundef readonly %pTiming) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %XRES = getelementptr inbounds %struct.kyrofb_info, ptr %pTiming, i32 0, i32 12
  %0 = ptrtoint ptr %XRES to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %XRES, align 4
  %YRES = getelementptr inbounds %struct.kyrofb_info, ptr %pTiming, i32 0, i32 13
  %2 = ptrtoint ptr %YRES to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %YRES, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %1)
  %cmp = icmp eq i32 %1, 640
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %3)
  %cmp1 = icmp eq i32 %3, 480
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %VFREQ = getelementptr inbounds %struct.kyrofb_info, ptr %pTiming, i32 0, i32 14
  %4 = ptrtoint ptr %VFREQ to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %VFREQ, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %5)
  %switch.selectcmp.case1 = icmp eq i32 %5, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %5)
  %switch.selectcmp.case2 = icmp eq i32 %5, 72
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %6 = select i1 %switch.selectcmp, i32 8, i32 0
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry.if.end6_crit_edge
  %margins.0 = phi i32 [ 0, %entry.if.end6_crit_edge ], [ %6, %if.then ]
  %HTot = getelementptr inbounds %struct.kyrofb_info, ptr %pTiming, i32 0, i32 2
  %7 = ptrtoint ptr %HTot to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %HTot, align 4
  %HST = getelementptr inbounds %struct.kyrofb_info, ptr %pTiming, i32 0, i32 4
  %9 = ptrtoint ptr %HST to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %HST, align 4
  %HBP = getelementptr inbounds %struct.kyrofb_info, ptr %pTiming, i32 0, i32 5
  %11 = ptrtoint ptr %HBP to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %HBP, align 4
  %sub = sub i32 %12, %margins.0
  %add = add i32 %sub, %10
  %HFP = getelementptr inbounds %struct.kyrofb_info, ptr %pTiming, i32 0, i32 3
  %13 = ptrtoint ptr %HFP to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %HFP, align 4
  %15 = add i32 %margins.0, %8
  %16 = add i32 %1, %14
  %17 = add i32 %16, %add
  %sub10 = sub i32 %15, %17
  %shr = lshr i32 %sub10, 1
  %add17 = add i32 %shr, %add
  %add24 = add i32 %add17, %1
  %VST = getelementptr inbounds %struct.kyrofb_info, ptr %pTiming, i32 0, i32 9
  %18 = ptrtoint ptr %VST to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %VST, align 4
  %VTot = getelementptr inbounds %struct.kyrofb_info, ptr %pTiming, i32 0, i32 7
  %20 = ptrtoint ptr %VTot to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %VTot, align 4
  %VBP = getelementptr inbounds %struct.kyrofb_info, ptr %pTiming, i32 0, i32 10
  %22 = ptrtoint ptr %VBP to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %VBP, align 4
  %sub28 = sub i32 %23, %margins.0
  %add29 = add i32 %sub28, %19
  %add30 = add i32 %add29, %shr
  %add37 = add i32 %add30, %3
  %DACHorTim1 = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 135
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACHorTim1) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %add25 = add i32 %add24, %shr
  %25 = and i32 %24, 15728880
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %shl53 = shl i32 %10, 16
  %or = or i32 %shl53, %8
  %or54 = or i32 %or, %26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %27 = tail call i32 @llvm.bswap.i32(i32 %or54)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACHorTim1, i32 %27) #4, !srcloc !12
  %DACHorTim2 = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 136
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACHorTim2) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  %29 = and i32 %28, 15728880
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %shl81 = shl i32 %add17, 16
  %or82 = or i32 %shl81, %add
  %or83 = or i32 %or82, %30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %31 = tail call i32 @llvm.bswap.i32(i32 %or83)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACHorTim2, i32 %31) #4, !srcloc !12
  %DACHorTim3 = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 137
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACHorTim3) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  %33 = and i32 %32, 15728880
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %shl113 = shl i32 %add25, 16
  %or114 = or i32 %shl113, %add24
  %or115 = or i32 %or114, %34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %35 = tail call i32 @llvm.bswap.i32(i32 %or115)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACHorTim3, i32 %35) #4, !srcloc !12
  %DACVerTim1 = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 138
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACVerTim1) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  %37 = and i32 %36, 15728880
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  %shl145 = shl i32 %19, 16
  %or146 = or i32 %shl145, %21
  %or147 = or i32 %or146, %38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %39 = tail call i32 @llvm.bswap.i32(i32 %or147)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACVerTim1, i32 %39) #4, !srcloc !12
  %DACVerTim2 = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 139
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACVerTim2) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  %41 = and i32 %40, 15728880
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %shl177 = shl i32 %add30, 16
  %or178 = or i32 %shl177, %add29
  %or179 = or i32 %or178, %42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %43 = tail call i32 @llvm.bswap.i32(i32 %or179)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACVerTim2, i32 %43) #4, !srcloc !12
  %DACVerTim3 = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 140
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACVerTim3) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  %45 = and i32 %44, 15728880
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %add38 = add i32 %add37, %shr
  %shl209 = shl i32 %add38, 16
  %or210 = or i32 %shl209, %add37
  %or211 = or i32 %or210, %46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %47 = tail call i32 @llvm.bswap.i32(i32 %or211)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACVerTim3, i32 %47) #4, !srcloc !12
  %DACSyncCtrl = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 142
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACSyncCtrl) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  %49 = or i32 %48, 167772160
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %HSP = getelementptr inbounds %struct.kyrofb_info, ptr %pTiming, i32 0, i32 6
  %51 = ptrtoint ptr %HSP to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %HSP, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp223 = icmp sgt i32 %52, 0
  br i1 %cmp223, label %land.lhs.true224, label %if.else

land.lhs.true224:                                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %VSP = getelementptr inbounds %struct.kyrofb_info, ptr %pTiming, i32 0, i32 11
  %53 = ptrtoint ptr %VSP to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %VSP, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp225 = icmp slt i32 %54, 0
  %and227 = and i32 %50, -9
  %spec.select374 = select i1 %cmp225, i32 %and227, i32 %50
  br label %do.body255

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp229 = icmp slt i32 %52, 0
  br i1 %cmp229, label %land.lhs.true230, label %if.else.do.body255_crit_edge

if.else.do.body255_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body255

land.lhs.true230:                                 ; preds = %if.else
  %VSP231 = getelementptr inbounds %struct.kyrofb_info, ptr %pTiming, i32 0, i32 11
  %55 = ptrtoint ptr %VSP231 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %VSP231, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp232 = icmp sgt i32 %56, 0
  br i1 %cmp232, label %if.then233, label %land.lhs.true238

if.then233:                                       ; preds = %land.lhs.true230
  call void @__sanitizer_cov_trace_pc() #6
  %and234 = and i32 %50, -3
  br label %do.body255

land.lhs.true238:                                 ; preds = %land.lhs.true230
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %VSP231 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %VSP231, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp240 = icmp slt i32 %58, 0
  %and242 = and i32 %50, -11
  %spec.select = select i1 %cmp240, i32 %and242, i32 %50
  br label %do.body255

do.body255:                                       ; preds = %land.lhs.true238, %if.then233, %if.else.do.body255_crit_edge, %land.lhs.true224
  %tmp.12 = phi i32 [ %and234, %if.then233 ], [ %spec.select, %land.lhs.true238 ], [ %50, %if.else.do.body255_crit_edge ], [ %spec.select374, %land.lhs.true224 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %59 = tail call i32 @llvm.bswap.i32(i32 %tmp.12)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACSyncCtrl, i32 %59) #4, !srcloc !12
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
!9 = !{i64 1097212}
!10 = !{i64 2154431549}
!11 = !{i64 2154431836}
!12 = !{i64 1096794}
!13 = !{i64 2154432569}
!14 = !{i64 2154432848}
!15 = !{i64 2154433571}
!16 = !{i64 2154433877}
!17 = !{i64 2154434598}
!18 = !{i64 2154434912}
!19 = !{i64 2154435628}
!20 = !{i64 2154436063}
!21 = !{i64 2154436778}
!22 = !{i64 2154437213}
!23 = !{i64 2154437928}
!24 = !{i64 2154438363}
!25 = !{i64 2154439078}
!26 = !{i64 2154439513}
!27 = !{i64 2154440228}
!28 = !{i64 2154440663}
!29 = !{i64 2154441378}
!30 = !{i64 2154441813}
!31 = !{i64 2154442533}
!32 = !{i64 2154442819}
