; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/kyro/STG4000OverlayDevice.c_pt.bc'
source_filename = "../drivers/video/fbdev/kyro/STG4000OverlayDevice.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.STG4000REG = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, [37 x i32], i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [412 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [235 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, [16 x i32], i32, i32, i32, i32, i32, [454 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [151 x i32], i32, i32, [1598 x i32], i32 }

@ovlWidth = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ovlHeight = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ovlStride = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ovlLinear = internal global { i32, [28 x i8] } zeroinitializer, align 32
@adwDecim8 = internal constant { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -65537, i32 -2098177, i32 -16843009, i32 -34082881, i32 -69239841, i32 -138682897, i32 -286331153, i32 -287458441, i32 -306745929, i32 -613566757, i32 -614769829, i32 -625627797, i32 -710191701, i32 -715806037, i32 -1431655765, i32 -1431677611, i32 -1433064875, i32 -1454746987, i32 -1524292315, i32 -1533916891, i32 -1840704951, i32 -1860025207, i32 -1861152495, i32 -1870118383, i32 -2009003999, i32 -2012209087, i32 -2130640639, i32 -2139092991, i32 -2147418111, i32 -2147483647, i32 1, i32 0], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32]
@___asan_gen_.2 = private unnamed_addr constant [9 x i8] c"ovlWidth\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 76, i32 12 }
@___asan_gen_.5 = private unnamed_addr constant [10 x i8] c"ovlHeight\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 76, i32 22 }
@___asan_gen_.8 = private unnamed_addr constant [10 x i8] c"ovlStride\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 76, i32 33 }
@___asan_gen_.11 = private unnamed_addr constant [10 x i8] c"ovlLinear\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 77, i32 12 }
@___asan_gen_.14 = private unnamed_addr constant [10 x i8] c"adwDecim8\00", align 1
@___asan_gen_.15 = private constant [51 x i8] c"../drivers/video/fbdev/kyro/STG4000OverlayDevice.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 46, i32 12 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @ovlWidth, ptr @ovlHeight, ptr @ovlStride, ptr @ovlLinear, ptr @adwDecim8], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovlWidth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovlHeight to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovlStride to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovlLinear to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adwDecim8 to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ResetOverlayRegisters(ptr noundef %pSTGReg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %DACOverlayAddr = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 123
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACOverlayAddr) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  %1 = and i32 %0, 57471
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACOverlayAddr, i32 %1) #3, !srcloc !22
  %DACOverlayUAddr = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 124
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACOverlayUAddr) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  %3 = and i32 %2, 57599
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACOverlayUAddr, i32 %3) #3, !srcloc !22
  %DACOverlayVAddr = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 125
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACOverlayVAddr) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  %5 = and i32 %4, 57599
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACOverlayVAddr, i32 %5) #3, !srcloc !22
  %DACOverlaySize = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 126
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACOverlaySize) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  %7 = and i32 %6, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACOverlaySize, i32 %7) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  tail call void @arm_heavy_mb() #3
  %DACOverlayVtDec = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 127
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACOverlayVtDec, i32 -1) #3, !srcloc !22
  %DACPixelFormat = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 130
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACPixelFormat) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  %9 = and i32 %8, 268402943
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACPixelFormat, i32 %9) #3, !srcloc !22
  %DACVerticalScal = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 129
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACVerticalScal) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  %11 = and i32 %10, 15761663
  %12 = or i32 %11, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACVerticalScal, i32 %12) #3, !srcloc !22
  %DACHorizontalScal = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 131
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACHorizontalScal) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  %14 = and i32 %13, 15793407
  %15 = or i32 %14, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACHorizontalScal, i32 %15) #3, !srcloc !22
  %DACBlendCtrl = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 134
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACBlendCtrl) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACBlendCtrl, i32 0) #3, !srcloc !22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @CreateOverlaySurface(ptr noundef %pSTGReg, i32 noundef %inWidth, i32 noundef %inHeight, i32 noundef %bLinear, i32 noundef %ulOverlayOffset, ptr nocapture noundef writeonly %retStride, ptr nocapture noundef writeonly %retUVStride) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %inWidth)
  %cmp = icmp ugt i32 %inWidth, 720
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %inHeight)
  %cmp1 = icmp ugt i32 %inHeight, 576
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bLinear)
  %tobool.not = icmp eq i32 %bLinear, 0
  br i1 %tobool.not, label %if.else7, label %if.then2

if.then2:                                         ; preds = %if.end
  %and = and i32 %inWidth, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  %div187 = lshr i32 %inWidth, 3
  br label %if.end16

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  %add = add nuw nsw i32 %inWidth, 8
  %div5186 = lshr i32 %add, 3
  br label %if.end16

if.else7:                                         ; preds = %if.end
  %and8 = and i32 %inWidth, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp9 = icmp eq i32 %and8, 0
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #5
  %div11185 = lshr i32 %inWidth, 4
  br label %if.end16

if.else12:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #5
  %add13 = add nuw nsw i32 %inWidth, 16
  %div14180 = lshr i32 %add13, 4
  br label %if.end16

if.end16:                                         ; preds = %if.else12, %if.then10, %if.else, %if.then4
  %masksel = phi i32 [ -2147483648, %if.then10 ], [ -2147483648, %if.else12 ], [ 0, %if.then4 ], [ 0, %if.else ]
  %ulStride.0 = phi i32 [ %div11185, %if.then10 ], [ %div14180, %if.else12 ], [ %div187, %if.then4 ], [ %div5186, %if.else ]
  %DACOverlayAddr = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 123
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACOverlayAddr) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  %1 = and i32 %0, 57471
  %2 = call i32 @llvm.bswap.i32(i32 %1)
  %shr = lshr i32 %ulOverlayOffset, 4
  %tmp.1 = or i32 %shr, %masksel
  %or26 = or i32 %tmp.1, %2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %3 = tail call i32 @llvm.bswap.i32(i32 %or26)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACOverlayAddr, i32 %3) #3, !srcloc !22
  br i1 %tobool.not, label %if.then29, label %if.end16.if.end103_crit_edge

if.end16.if.end103_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end103

if.then29:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  %and30 = and i32 %inWidth, 1
  %4 = xor i32 %and30, 1
  %cond = lshr i32 %inWidth, %4
  %and34 = and i32 %cond, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %cmp35 = icmp eq i32 %and34, 0
  %add39 = add nuw nsw i32 %cond, 16
  %uvStride.0.in = select i1 %cmp35, i32 %cond, i32 %add39
  %mul = shl nuw nsw i32 %inHeight, 4
  %mul42 = mul nuw nsw i32 %mul, %ulStride.0
  %add43 = add i32 %ulOverlayOffset, 31
  %add43.biased = add i32 %add43, %mul42
  %DACOverlayUAddr = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 124
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACOverlayUAddr) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  %6 = and i32 %5, 57599
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  %uvStride.0 = and i32 %uvStride.0.in, -16
  %ulOffset.0 = and i32 %add43.biased, -32
  %shr65 = lshr exact i32 %ulOffset.0, 4
  %or66 = or i32 %7, %shr65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %8 = tail call i32 @llvm.bswap.i32(i32 %or66)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACOverlayUAddr, i32 %8) #3, !srcloc !22
  %div71183 = lshr i32 %inHeight, 1
  %mul73 = mul nuw nsw i32 %uvStride.0, %div71183
  %add74 = add i32 %ulOffset.0, %mul73
  %and75 = and i32 %add74, 16
  %add78 = add i32 %add74, 32
  %and79 = and i32 %add78, -32
  %DACOverlayVAddr = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 125
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACOverlayVAddr) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  %10 = and i32 %9, 57599
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %cmp76.not = icmp eq i32 %and75, 0
  %ulOffset.1 = select i1 %cmp76.not, i32 %add74, i32 %and79
  %shr96 = lshr exact i32 %ulOffset.1, 4
  %or97 = or i32 %11, %shr96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !43
  tail call void @arm_heavy_mb() #3
  %12 = tail call i32 @llvm.bswap.i32(i32 %or97)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACOverlayVAddr, i32 %12) #3, !srcloc !22
  %13 = ptrtoint ptr %retUVStride to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %uvStride.0, ptr %retUVStride, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then29, %if.end16.if.end103_crit_edge
  %DACPixelFormat = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 130
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACPixelFormat) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
  %15 = and i32 %14, 268238847
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACPixelFormat, i32 %15) #3, !srcloc !22
  store i32 %inWidth, ptr @ovlWidth, align 4
  store i32 %inHeight, ptr @ovlHeight, align 4
  store i32 %ulStride.0, ptr @ovlStride, align 4
  store i32 %bLinear, ptr @ovlLinear, align 4
  %shl123 = shl nuw nsw i32 %ulStride.0, 4
  %16 = ptrtoint ptr %retStride to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shl123, ptr %retStride, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end103 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @SetOverlayBlendMode(ptr noundef %pSTGReg, i32 noundef %mode, i32 noundef %ulAlpha, i32 noundef %ulColorKey) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %DACBlendCtrl = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 134
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACBlendCtrl) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  %1 = and i32 %0, -113
  %2 = call i32 @llvm.bswap.i32(i32 %1)
  %shl3 = shl i32 %mode, 28
  %or = or i32 %2, %shl3
  %3 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 1, label %for.body7.preheader
    i32 3, label %for.body20.preheader
    i32 4, label %for.body34.preheader
    i32 5, label %for.body47.preheader
    i32 0, label %entry.do.body_crit_edge
    i32 2, label %entry.do.body_crit_edge112
  ]

entry.do.body_crit_edge112:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body47.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and50.23 = and i32 %or, -268435456
  %and54 = and i32 %ulColorKey, 16777215
  %or55 = or i32 %and50.23, %and54
  %and66 = shl i32 %ulAlpha, 24
  %shl67 = and i32 %and66, 251658240
  %or68 = or i32 %or55, %shl67
  br label %do.body

for.body34.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and37.23 = and i32 %or, -16777216
  %and41 = and i32 %ulColorKey, 16777215
  %or42 = or i32 %and37.23, %and41
  br label %do.body

for.body20.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and23.3 = and i32 %or, -251658241
  %and27 = shl i32 %ulAlpha, 24
  %shl28 = and i32 %and27, 251658240
  %or29 = or i32 %and23.3, %shl28
  br label %do.body

for.body7.preheader:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and10.23 = and i32 %or, -16777216
  %and14 = and i32 %ulColorKey, 16777215
  %or15 = or i32 %and10.23, %and14
  br label %do.body

do.body:                                          ; preds = %for.body7.preheader, %for.body20.preheader, %for.body34.preheader, %for.body47.preheader, %entry.do.body_crit_edge, %entry.do.body_crit_edge112
  %tmp.6 = phi i32 [ %or, %entry.do.body_crit_edge ], [ %or, %entry.do.body_crit_edge112 ], [ %or68, %for.body47.preheader ], [ %or42, %for.body34.preheader ], [ %or29, %for.body20.preheader ], [ %or15, %for.body7.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  tail call void @arm_heavy_mb() #3
  %4 = tail call i32 @llvm.bswap.i32(i32 %tmp.6)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACBlendCtrl, i32 %4) #3, !srcloc !22
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @EnableOverlayPlane(ptr noundef %pSTGReg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %DACPixelFormat = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 130
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACPixelFormat) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  %1 = or i32 %0, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !49
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACPixelFormat, i32 %1) #3, !srcloc !22
  %DACStreamCtrl = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 143
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACStreamCtrl) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  %3 = or i32 %2, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACStreamCtrl, i32 %3) #3, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @SetOverlayViewPort(ptr noundef %pSTGReg, i32 noundef %left, i32 noundef %top, i32 noundef %right, i32 noundef %bottom) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ovlWidth, align 4
  %1 = load i32, ptr @ovlHeight, align 4
  %sub1 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub1)
  %cmp = icmp ult i32 %sub1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub21.neg = sub i32 1, %top
  %sub22 = add i32 %sub21.neg, %bottom
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1, i32 %sub22)
  %cmp23 = icmp ugt i32 %sub1, %sub22
  br i1 %cmp23, label %if.then24, label %if.end.if.end41_crit_edge

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

if.then24:                                        ; preds = %if.end
  %sub25 = sub i32 %sub1, %sub22
  %div26478 = lshr i32 %sub1, 5
  %rem = and i32 %sub1, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not5.i = icmp eq i32 %rem, 0
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then24
  %ulBits.0 = phi i32 [ 0, %if.then24 ], [ %inc, %while.body ]
  %mul = mul i32 %ulBits.0, %div26478
  %arrayidx27 = getelementptr [33 x i32], ptr @adwDecim8, i32 0, i32 %ulBits.0
  %2 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx27, align 4
  br i1 %tobool.not5.i, label %Overlap.exit.thread, label %while.cond.while.body.i_crit_edge

while.cond.while.body.i_crit_edge:                ; preds = %while.cond
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.while.body.i_crit_edge
  %ulCount.08.i = phi i32 [ %spec.select.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.cond.while.body.i_crit_edge ]
  %ulPattern.addr.07.i = phi i32 [ %shr.i, %while.body.i.while.body.i_crit_edge ], [ %3, %while.cond.while.body.i_crit_edge ]
  %ulBits.addr.06.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %rem, %while.cond.while.body.i_crit_edge ]
  %and.i = and i32 %ulPattern.addr.07.i, 1
  %4 = xor i32 %and.i, 1
  %spec.select.i = add i32 %4, %ulCount.08.i
  %dec.i = add nsw i32 %ulBits.addr.06.i, -1
  %shr.i = lshr i32 %ulPattern.addr.07.i, 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %Overlap.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

Overlap.exit:                                     ; preds = %while.body.i
  %add = add i32 %spec.select.i, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub25)
  %cmp28 = icmp ult i32 %add, %sub25
  br i1 %cmp28, label %Overlap.exit.while.body_crit_edge, label %Overlap.exit.while.body.i490_crit_edge

Overlap.exit.while.body.i490_crit_edge:           ; preds = %Overlap.exit
  br label %while.body.i490

Overlap.exit.while.body_crit_edge:                ; preds = %Overlap.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

Overlap.exit.thread:                              ; preds = %while.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %sub25)
  %cmp28495 = icmp ult i32 %mul, %sub25
  br i1 %cmp28495, label %Overlap.exit.thread.while.body_crit_edge, label %Overlap.exit.thread.if.end35_crit_edge

Overlap.exit.thread.if.end35_crit_edge:           ; preds = %Overlap.exit.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

Overlap.exit.thread.while.body_crit_edge:         ; preds = %Overlap.exit.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.body:                                       ; preds = %Overlap.exit.thread.while.body_crit_edge, %Overlap.exit.while.body_crit_edge
  %inc = add i32 %ulBits.0, 1
  br label %while.cond

while.body.i490:                                  ; preds = %while.body.i490.while.body.i490_crit_edge, %Overlap.exit.while.body.i490_crit_edge
  %ulCount.08.i482 = phi i32 [ %spec.select.i486, %while.body.i490.while.body.i490_crit_edge ], [ 0, %Overlap.exit.while.body.i490_crit_edge ]
  %ulPattern.addr.07.i483 = phi i32 [ %shr.i488, %while.body.i490.while.body.i490_crit_edge ], [ %3, %Overlap.exit.while.body.i490_crit_edge ]
  %ulBits.addr.06.i484 = phi i32 [ %dec.i487, %while.body.i490.while.body.i490_crit_edge ], [ %rem, %Overlap.exit.while.body.i490_crit_edge ]
  %and.i485 = and i32 %ulPattern.addr.07.i483, 1
  %5 = xor i32 %and.i485, 1
  %spec.select.i486 = add i32 %5, %ulCount.08.i482
  %dec.i487 = add nsw i32 %ulBits.addr.06.i484, -1
  %shr.i488 = lshr i32 %ulPattern.addr.07.i483, 1
  %tobool.not.i489 = icmp eq i32 %dec.i487, 0
  br i1 %tobool.not.i489, label %while.body.i490.if.end35_crit_edge, label %while.body.i490.while.body.i490_crit_edge

while.body.i490.while.body.i490_crit_edge:        ; preds = %while.body.i490
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i490

while.body.i490.if.end35_crit_edge:               ; preds = %while.body.i490
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

if.end35:                                         ; preds = %while.body.i490.if.end35_crit_edge, %Overlap.exit.thread.if.end35_crit_edge
  %ulCount.0.lcssa.i491 = phi i32 [ %spec.select.i486, %while.body.i490.if.end35_crit_edge ], [ 0, %Overlap.exit.thread.if.end35_crit_edge ]
  %6 = add i32 %mul, %ulCount.0.lcssa.i491
  %sub34 = sub i32 %sub1, %6
  %7 = zext i32 %ulBits.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %ulBits.0, label %if.then37 [
    i32 0, label %if.end35.if.end41_crit_edge
    i32 32, label %if.end35.if.end41_crit_edge559
  ]

if.end35.if.end41_crit_edge559:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  %sub38 = sub i32 63, %ulBits.0
  %sub39 = sub i32 32, %ulBits.0
  %div40 = udiv i32 %sub38, %sub39
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end35.if.end41_crit_edge, %if.end35.if.end41_crit_edge559, %if.end.if.end41_crit_edge
  %ulSrc.0500 = phi i32 [ %sub34, %if.then37 ], [ %sub34, %if.end35.if.end41_crit_edge ], [ %sub34, %if.end35.if.end41_crit_edge559 ], [ %sub1, %if.end.if.end41_crit_edge ]
  %ulPattern.0499 = phi i32 [ %3, %if.then37 ], [ %3, %if.end35.if.end41_crit_edge ], [ %3, %if.end35.if.end41_crit_edge559 ], [ -1, %if.end.if.end41_crit_edge ]
  %ulVertDecFactor.0 = phi i32 [ %div40, %if.then37 ], [ 1, %if.end35.if.end41_crit_edge ], [ 1, %if.end35.if.end41_crit_edge559 ], [ 1, %if.end.if.end41_crit_edge ]
  %sub42 = shl i32 %ulSrc.0500, 11
  %add44 = add i32 %sub22, 1
  %DACOverlayVtDec = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 127
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACOverlayVtDec) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !52
  %mul43 = add i32 %sub42, -2048
  %div45 = udiv i32 %mul43, %add44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  %9 = tail call i32 @llvm.bswap.i32(i32 %ulPattern.0499)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACOverlayVtDec, i32 %9) #3, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %left)
  %cmp60 = icmp ugt i32 %left, 2
  %add63 = add i32 %left, 2
  %ulLeft.0 = select i1 %cmp60, i32 %add63, i32 %left
  call void @__sanitizer_cov_trace_cmp4(i32 %right, i32 %left)
  %cmp72 = icmp eq i32 %right, %left
  br i1 %cmp72, label %if.end41.cleanup_crit_edge, label %if.end74

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end74:                                         ; preds = %if.end41
  %sub93 = add i32 %0, -2
  %shl95 = shl i32 %sub93, 11
  %10 = sub i32 %right, %ulLeft.0
  %add97 = add i32 %10, 3
  %ulScale.0509 = udiv i32 %shl95, %add97
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %ulScale.0509)
  %cmp100510 = icmp ugt i32 %ulScale.0509, 2048
  br i1 %cmp100510, label %if.end74.while.body101_crit_edge, label %if.end74.while.end110_crit_edge

if.end74.while.end110_crit_edge:                  ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end110

if.end74.while.body101_crit_edge:                 ; preds = %if.end74
  br label %while.body101

while.body101:                                    ; preds = %while.body101.while.body101_crit_edge, %if.end74.while.body101_crit_edge
  %ulhDecim.0511 = phi i32 [ %inc102, %while.body101.while.body101_crit_edge ], [ 0, %if.end74.while.body101_crit_edge ]
  %inc102 = add i32 %ulhDecim.0511, 1
  %sub105 = sub i32 10, %ulhDecim.0511
  %shl106 = shl i32 %sub93, %sub105
  %ulScale.0 = udiv i32 %shl106, %add97
  %cmp100 = icmp ugt i32 %ulScale.0, 2048
  br i1 %cmp100, label %while.body101.while.body101_crit_edge, label %while.body101.while.end110_crit_edge

while.body101.while.end110_crit_edge:             ; preds = %while.body101
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end110

while.body101.while.body101_crit_edge:            ; preds = %while.body101
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body101

while.end110:                                     ; preds = %while.body101.while.end110_crit_edge, %if.end74.while.end110_crit_edge
  %ulhDecim.0.lcssa = phi i32 [ 0, %if.end74.while.end110_crit_edge ], [ %inc102, %while.body101.while.end110_crit_edge ]
  %ulScale.0.lcssa = phi i32 [ %ulScale.0509, %if.end74.while.end110_crit_edge ], [ %ulScale.0, %while.body101.while.end110_crit_edge ]
  %11 = load i32, ptr @ovlLinear, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool111.not = icmp eq i32 %11, 0
  %add118 = add i32 %0, 6
  %and119 = and i32 %add118, -8
  %add114 = add i32 %0, 30
  %and115 = and i32 %add114, -32
  %ulSrcRight.0 = select i1 %tobool111.not, i32 %and115, i32 %and119
  %shr129 = lshr i32 %ulSrcRight.0, %ulhDecim.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr129)
  %cmp130 = icmp ult i32 %shr129, 3
  br i1 %cmp130, label %while.end110.cleanup_crit_edge, label %if.end132

while.end110.cleanup_crit_edge:                   ; preds = %while.end110
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end132:                                        ; preds = %while.end110
  call void @__sanitizer_cov_trace_pc() #5
  %shl124479 = shl i32 -8, %ulhDecim.0.lcssa
  %div122476480 = and i32 %ulSrcRight.0, %shl124479
  call void @__sanitizer_cov_trace_cmp4(i32 %ulSrcRight.0, i32 %div122476480)
  %cmp126.not = icmp ne i32 %ulSrcRight.0, %div122476480
  %ulsAdd.1 = zext i1 %cmp126.not to i32
  %mul149 = shl i32 %ulVertDecFactor.0, %ulhDecim.0.lcssa
  %DACVerticalScal = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 129
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACVerticalScal) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !54
  %13 = and i32 %12, 15761663
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %add177 = add i32 %ulhDecim.0.lcssa, 3
  %shr178 = lshr i32 %ulSrcRight.0, %add177
  %add179 = add nuw i32 %shr178, %ulsAdd.1
  %shl180 = shl i32 %add179, 16
  %or = or i32 %shl180, %div45
  %or181 = or i32 %or, %14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !55
  tail call void @arm_heavy_mb() #3
  %15 = tail call i32 @llvm.bswap.i32(i32 %or181)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACVerticalScal, i32 %15) #3, !srcloc !22
  %DACOverlaySize = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 126
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACOverlaySize) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !56
  %17 = lshr i32 %16, 8
  %18 = and i32 %17, 2048
  %add150 = add i32 %mul149, 64
  %19 = load i32, ptr @ovlLinear, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool211.not = icmp eq i32 %19, 0
  %20 = load i32, ptr @ovlStride, align 4
  %add222 = add i32 %add150, %1
  %shl223 = shl i32 %add222, 12
  %sub217 = shl i32 %ulSrcRight.0, 20
  %shl218 = add i32 %sub217, -8388608
  %21 = shl i32 %ulSrcRight.0, 18
  %22 = add i32 %21, -8388608
  %shl227 = and i32 %22, -8388608
  %shl218.sink = select i1 %tobool211.not, i32 %shl227, i32 %shl218
  %or215 = or i32 %shl218.sink, %shl223
  %or219 = or i32 %or215, %20
  %tmp.5 = or i32 %or219, %18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !57
  tail call void @arm_heavy_mb() #3
  %23 = tail call i32 @llvm.bswap.i32(i32 %tmp.5)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACOverlaySize, i32 %23) #3, !srcloc !22
  %shl235 = shl i32 %ulLeft.0, 16
  %or237 = or i32 %shl235, %top
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !58
  tail call void @arm_heavy_mb() #3
  %24 = tail call i32 @llvm.bswap.i32(i32 %or237)
  %DACVidWinStart = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACVidWinStart, i32 %24) #3, !srcloc !22
  %ulRight.0 = shl i32 %right, 16
  %shl241 = add i32 %ulRight.0, 65536
  %or243 = or i32 %shl241, %bottom
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !59
  tail call void @arm_heavy_mb() #3
  %25 = tail call i32 @llvm.bswap.i32(i32 %or243)
  %DACVidWinEnd = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 133
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACVidWinEnd, i32 %25) #3, !srcloc !22
  %DACPixelFormat = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 130
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACPixelFormat) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !60
  %27 = and i32 %26, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !61
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACPixelFormat, i32 %27) #3, !srcloc !22
  %DACHorizontalScal = getelementptr inbounds %struct.STG4000REG, ptr %pSTGReg, i32 0, i32 131
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %DACHorizontalScal) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %29 = and i32 %28, 15793407
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %shl284 = shl i32 %ulhDecim.0.lcssa, 16
  %or285 = or i32 %shl284, %ulScale.0.lcssa
  %or286 = or i32 %or285, %30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  %31 = tail call i32 @llvm.bswap.i32(i32 %or286)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DACHorizontalScal, i32 %31) #3, !srcloc !22
  br label %cleanup

cleanup:                                          ; preds = %if.end132, %while.end110.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end132 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end41.cleanup_crit_edge ], [ -22, %while.end110.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @ovlWidth, !1, !"ovlWidth", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/kyro/STG4000OverlayDevice.c", i32 76, i32 12}
!2 = !{ptr @ovlHeight, !3, !"ovlHeight", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/kyro/STG4000OverlayDevice.c", i32 76, i32 22}
!4 = !{ptr @ovlStride, !5, !"ovlStride", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/kyro/STG4000OverlayDevice.c", i32 76, i32 33}
!6 = !{ptr @ovlLinear, !7, !"ovlLinear", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/kyro/STG4000OverlayDevice.c", i32 77, i32 12}
!8 = !{ptr @adwDecim8, !9, !"adwDecim8", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/kyro/STG4000OverlayDevice.c", i32 46, i32 12}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 1271582}
!20 = !{i64 2154442523}
!21 = !{i64 2154442899}
!22 = !{i64 1271164}
!23 = !{i64 2154443643}
!24 = !{i64 2154444001}
!25 = !{i64 2154444746}
!26 = !{i64 2154445104}
!27 = !{i64 2154445844}
!28 = !{i64 2154446287}
!29 = !{i64 2154446753}
!30 = !{i64 2154447493}
!31 = !{i64 2154447935}
!32 = !{i64 2154448679}
!33 = !{i64 2154449130}
!34 = !{i64 2154449885}
!35 = !{i64 2154450340}
!36 = !{i64 2154451072}
!37 = !{i64 2154451424}
!38 = !{i64 2154452172}
!39 = !{i64 2154452560}
!40 = !{i64 2154453304}
!41 = !{i64 2154453662}
!42 = !{i64 2154454407}
!43 = !{i64 2154454765}
!44 = !{i64 2154455505}
!45 = !{i64 2154455860}
!46 = !{i64 2154456589}
!47 = !{i64 2154457377}
!48 = !{i64 2154458114}
!49 = !{i64 2154458395}
!50 = !{i64 2154459129}
!51 = !{i64 2154459408}
!52 = !{i64 2154460154}
!53 = !{i64 2154460512}
!54 = !{i64 2154461263}
!55 = !{i64 2154461708}
!56 = !{i64 2154462448}
!57 = !{i64 2154462891}
!58 = !{i64 2154463344}
!59 = !{i64 2154463793}
!60 = !{i64 2154464530}
!61 = !{i64 2154464800}
!62 = !{i64 2154465554}
!63 = !{i64 2154466003}
