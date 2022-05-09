; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac100_dma.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac100_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }

@dwmac100_dma_ops = dso_local constant { %struct.stmmac_dma_ops, [44 x i8] } { %struct.stmmac_dma_ops { ptr @dwmac_dma_reset, ptr @dwmac100_dma_init, ptr null, ptr @dwmac100_dma_init_rx, ptr @dwmac100_dma_init_tx, ptr null, ptr @dwmac100_dump_dma_regs, ptr null, ptr @dwmac100_dma_operation_mode_tx, ptr @dwmac100_dma_diagnostic_fr, ptr @dwmac_enable_dma_transmission, ptr @dwmac_enable_dma_irq, ptr @dwmac_disable_dma_irq, ptr @dwmac_dma_start_tx, ptr @dwmac_dma_stop_tx, ptr @dwmac_dma_start_rx, ptr @dwmac_dma_stop_rx, ptr @dwmac_dma_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"dwmac100_dma_ops\00", align 1
@___asan_gen_.2 = private constant [54 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac100_dma.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 111, i32 29 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @dwmac100_dma_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac100_dma_ops to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac_dma_reset(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac100_dma_init(ptr noundef %ioaddr, ptr nocapture noundef readonly %dma_cfg, i32 noundef %atds) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %0 = ptrtoint ptr %dma_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_cfg, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = lshr i32 %2, 8
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #3, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %add.ptr3 = getelementptr i8, ptr %ioaddr, i32 4124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 1637875968) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac100_dma_init_rx(ptr noundef %ioaddr, ptr nocapture noundef readnone %dma_cfg, i32 noundef %dma_rx_phy, i32 noundef %chan) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %dma_rx_phy)
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac100_dma_init_tx(ptr noundef %ioaddr, ptr nocapture noundef readnone %dma_cfg, i32 noundef %dma_tx_phy, i32 noundef %chan) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %dma_tx_phy)
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac100_dump_dma_regs(ptr noundef %ioaddr, ptr nocapture noundef writeonly %reg_space) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4096
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !16
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  %arrayidx = getelementptr i32, ptr %reg_space, i32 1024
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arrayidx, align 4
  %add.ptr1.1 = getelementptr i8, ptr %ioaddr, i32 4100
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.1) #3, !srcloc !16
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  %arrayidx.1 = getelementptr i32, ptr %reg_space, i32 1025
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx.1, align 4
  %add.ptr1.2 = getelementptr i8, ptr %ioaddr, i32 4104
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.2) #3, !srcloc !16
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  %arrayidx.2 = getelementptr i32, ptr %reg_space, i32 1026
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx.2, align 4
  %add.ptr1.3 = getelementptr i8, ptr %ioaddr, i32 4108
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.3) #3, !srcloc !16
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  %arrayidx.3 = getelementptr i32, ptr %reg_space, i32 1027
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx.3, align 4
  %add.ptr1.4 = getelementptr i8, ptr %ioaddr, i32 4112
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.4) #3, !srcloc !16
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  %arrayidx.4 = getelementptr i32, ptr %reg_space, i32 1028
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx.4, align 4
  %add.ptr1.5 = getelementptr i8, ptr %ioaddr, i32 4116
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.5) #3, !srcloc !16
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  %arrayidx.5 = getelementptr i32, ptr %reg_space, i32 1029
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx.5, align 4
  %add.ptr1.6 = getelementptr i8, ptr %ioaddr, i32 4120
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.6) #3, !srcloc !16
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  %arrayidx.6 = getelementptr i32, ptr %reg_space, i32 1030
  %20 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.6, align 4
  %add.ptr1.7 = getelementptr i8, ptr %ioaddr, i32 4124
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.7) #3, !srcloc !16
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  %arrayidx.7 = getelementptr i32, ptr %reg_space, i32 1031
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx.7, align 4
  %add.ptr1.8 = getelementptr i8, ptr %ioaddr, i32 4128
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.8) #3, !srcloc !16
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  %arrayidx.8 = getelementptr i32, ptr %reg_space, i32 1032
  %26 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.8, align 4
  %add.ptr5 = getelementptr i8, ptr %ioaddr, i32 4176
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #3, !srcloc !16
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  %arrayidx9 = getelementptr i32, ptr %reg_space, i32 1044
  %29 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx9, align 4
  %add.ptr12 = getelementptr i8, ptr %ioaddr, i32 4180
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #3, !srcloc !16
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  %arrayidx16 = getelementptr i32, ptr %reg_space, i32 1045
  %32 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx16, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac100_dma_operation_mode_tx(ptr noundef %ioaddr, i32 noundef %mode, i32 noundef %channel, i32 noundef %fifosz, i8 noundef zeroext %qmode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4120
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !16
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %mode)
  %cmp = icmp slt i32 %mode, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %mode)
  %cmp2 = icmp ult i32 %mode, 65
  %. = select i1 %cmp2, i32 16384, i32 32768
  %.sink = select i1 %cmp, i32 4227072, i32 %.
  %or = or i32 %1, %.sink
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac100_dma_diagnostic_fr(ptr nocapture noundef %data, ptr nocapture noundef %x, ptr noundef %ioaddr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4128
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %if.then, !prof !23

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %and = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %and7 = lshr i32 %1, 17
  %shr = and i32 %and7, 2047
  %shr.sink40 = select i1 %tobool4.not, i32 %shr, i32 2048
  %rx_over_errors8 = getelementptr inbounds %struct.net_device_stats, ptr %data, i32 0, i32 11
  %2 = ptrtoint ptr %rx_over_errors8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_over_errors8, align 4
  %add9 = add i32 %3, %shr.sink40
  store i32 %add9, ptr %rx_over_errors8, align 4
  %rx_overflow_cntr10 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 25
  %4 = ptrtoint ptr %rx_overflow_cntr10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_overflow_cntr10, align 4
  %add11 = add i32 %5, %shr.sink40
  store i32 %add11, ptr %rx_overflow_cntr10, align 4
  %and12 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %and18 = and i32 %1, 65535
  %and18.sink = select i1 %tobool13.not, i32 %and18, i32 65535
  %rx_missed_errors19 = getelementptr inbounds %struct.net_device_stats, ptr %data, i32 0, i32 15
  %6 = ptrtoint ptr %rx_missed_errors19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_missed_errors19, align 4
  %add20 = add i32 %7, %and18.sink
  store i32 %add20, ptr %rx_missed_errors19, align 4
  %rx_missed_cntr21 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 24
  %8 = ptrtoint ptr %rx_missed_cntr21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_missed_cntr21, align 32
  %add16 = add i32 %9, %and18.sink
  store i32 %add16, ptr %rx_missed_cntr21, align 32
  br label %if.end24

if.end24:                                         ; preds = %if.then, %entry.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_enable_dma_transmission(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_enable_dma_irq(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_disable_dma_irq(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_dma_start_tx(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_dma_stop_tx(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_dma_start_rx(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_dma_stop_rx(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac_dma_interrupt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @dwmac100_dma_ops, !1, !"dwmac100_dma_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac100_dma.c", i32 111, i32 29}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 2156617843}
!12 = !{i64 470232}
!13 = !{i64 2156618650}
!14 = !{i64 2156619376}
!15 = !{i64 2156619949}
!16 = !{i64 470650}
!17 = !{i64 2156621688}
!18 = !{i64 2156622204}
!19 = !{i64 2156622720}
!20 = !{i64 2156620730}
!21 = !{i64 2156620958}
!22 = !{i64 2156623225}
!23 = !{!"branch_weights", i32 2000, i32 1}
