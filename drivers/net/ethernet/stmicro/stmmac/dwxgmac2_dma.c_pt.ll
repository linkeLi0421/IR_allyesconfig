; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_dma_cfg = type { i32, i32, i32, i8, i32, i32, i8, i8, i8, i8 }
%struct.stmmac_axi = type { i8, i8, i32, i32, i8, [7 x i32], i8, i8, i8 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dwxgmac210_dma_ops = dso_local constant { %struct.stmmac_dma_ops, [44 x i8] } { %struct.stmmac_dma_ops { ptr @dwxgmac2_dma_reset, ptr @dwxgmac2_dma_init, ptr @dwxgmac2_dma_init_chan, ptr @dwxgmac2_dma_init_rx_chan, ptr @dwxgmac2_dma_init_tx_chan, ptr @dwxgmac2_dma_axi, ptr @dwxgmac2_dma_dump_regs, ptr @dwxgmac2_dma_rx_mode, ptr @dwxgmac2_dma_tx_mode, ptr null, ptr null, ptr @dwxgmac2_enable_dma_irq, ptr @dwxgmac2_disable_dma_irq, ptr @dwxgmac2_dma_start_tx, ptr @dwxgmac2_dma_stop_tx, ptr @dwxgmac2_dma_start_rx, ptr @dwxgmac2_dma_stop_rx, ptr @dwxgmac2_dma_interrupt, ptr @dwxgmac2_get_hw_feature, ptr @dwxgmac2_rx_watchdog, ptr @dwxgmac2_set_tx_ring_len, ptr @dwxgmac2_set_rx_ring_len, ptr @dwxgmac2_set_rx_tail_ptr, ptr @dwxgmac2_set_tx_tail_ptr, ptr @dwxgmac2_enable_tso, ptr @dwxgmac2_qmode, ptr @dwxgmac2_set_bfsize, ptr @dwxgmac2_enable_sph, ptr @dwxgmac2_enable_tbs }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.1 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.2 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.3 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.4 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.5 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.6 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"dwxgmac210_dma_ops\00", align 1
@___asan_gen_.9 = private constant [54 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 554, i32 29 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @dwxgmac210_dma_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwxgmac210_dma_ops to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwxgmac2_dma_reset(ptr noundef %ioaddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 12288
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %1 = or i32 %0, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #3, !srcloc !16
  %call3 = tail call i64 @ktime_get() #3
  %add.i = add i64 %call3, 100000000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %entry
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.cond.for.end_crit_edge, label %land.lhs.true

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond
  %call23 = tail call i64 @ktime_get() #3
  %cmp3.i = icmp sgt i64 %call23, %add.i
  br i1 %cmp3.i, label %if.then26, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %phi.cmp = icmp eq i32 %5, 0
  %phi.sel = select i1 %phi.cmp, i32 0, i32 -110
  br label %for.end

for.end:                                          ; preds = %if.then26, %for.cond.for.end_crit_edge
  %and38.pre-phi = phi i32 [ %phi.sel, %if.then26 ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %and38.pre-phi
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_init(ptr noundef %ioaddr, ptr nocapture noundef readonly %dma_cfg, i32 noundef %atds) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 12292
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  %aal = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %dma_cfg, i32 0, i32 6
  %2 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %aal, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %or = or i32 %1, 4096
  %spec.select = select i1 %tobool.not, i32 %1, i32 %or
  %eame = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %dma_cfg, i32 0, i32 7
  %4 = ptrtoint ptr %eame to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %eame, align 1, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  %or4 = or i32 %spec.select, 2048
  %value.1 = select i1 %tobool2.not, i32 %spec.select, i32 %or4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %6 = tail call i32 @llvm.bswap.i32(i32 %value.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_init_chan(ptr noundef %ioaddr, ptr nocapture noundef readonly %dma_cfg, i32 noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add = add i32 %mul, 12544
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  %pblx8 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %dma_cfg, i32 0, i32 3
  %2 = ptrtoint ptr %pblx8 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pblx8, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %or = or i32 %1, 65536
  %spec.select = select i1 %tobool.not, i32 %1, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %4 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %add9 = add i32 %mul, 12600
  %add.ptr10 = getelementptr i8, ptr %ioaddr, i32 %add9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 -1044381696) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_init_rx_chan(ptr noundef %ioaddr, ptr nocapture noundef readonly %dma_cfg, i32 noundef %phy, i32 noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rxpbl1 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %dma_cfg, i32 0, i32 2
  %0 = ptrtoint ptr %rxpbl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rxpbl1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %dma_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_cfg, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.false ], [ %1, %entry.cond.end_crit_edge ]
  %mul = shl i32 %chan, 7
  %add = add i32 %mul, 12552
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  %5 = and i32 %4, -16129
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %shl = shl i32 %cond, 16
  %and3 = and i32 %shl, 4128768
  %or = or i32 %6, %and3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %add12 = add i32 %mul, 12568
  %add.ptr13 = getelementptr i8, ptr %ioaddr, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  %8 = tail call i32 @llvm.bswap.i32(i32 %phy)
  %add19 = add i32 %mul, 12572
  %add.ptr20 = getelementptr i8, ptr %ioaddr, i32 %add19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %8) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_init_tx_chan(ptr noundef %ioaddr, ptr nocapture noundef readonly %dma_cfg, i32 noundef %phy, i32 noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %txpbl1 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %dma_cfg, i32 0, i32 1
  %0 = ptrtoint ptr %txpbl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %txpbl1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %dma_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_cfg, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.false ], [ %1, %entry.cond.end_crit_edge ]
  %mul = shl i32 %chan, 7
  %add = add i32 %mul, 12548
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %5 = and i32 %4, -16129
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %shl = shl i32 %cond, 16
  %and3 = and i32 %shl, 4128768
  %or = or i32 %and3, %6
  %or4 = or i32 %or, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  tail call void @arm_heavy_mb() #3
  %7 = tail call i32 @llvm.bswap.i32(i32 %or4)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  %add13 = add i32 %mul, 12560
  %add.ptr14 = getelementptr i8, ptr %ioaddr, i32 %add13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  tail call void @arm_heavy_mb() #3
  %8 = tail call i32 @llvm.bswap.i32(i32 %phy)
  %add20 = add i32 %mul, 12564
  %add.ptr21 = getelementptr i8, ptr %ioaddr, i32 %add20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %8) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_axi(ptr noundef %ioaddr, ptr nocapture noundef readonly %axi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 12292
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %2 = ptrtoint ptr %axi to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %axi, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %or = or i32 %1, 32768
  %spec.select = select i1 %tobool.not, i32 %1, i32 %or
  %axi_xit_frm = getelementptr inbounds %struct.stmmac_axi, ptr %axi, i32 0, i32 1
  %4 = ptrtoint ptr %axi_xit_frm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %axi_xit_frm, align 1, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  %or4 = or i32 %spec.select, 16384
  %value.1 = select i1 %tobool2.not, i32 %spec.select, i32 %or4
  %and = and i32 %value.1, -1061093631
  %axi_wr_osr_lmt = getelementptr inbounds %struct.stmmac_axi, ptr %axi, i32 0, i32 2
  %6 = ptrtoint ptr %axi_wr_osr_lmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %axi_wr_osr_lmt, align 4
  %shl = shl i32 %7, 24
  %and6 = and i32 %shl, 1056964608
  %or7 = or i32 %and, %and6
  %axi_rd_osr_lmt = getelementptr inbounds %struct.stmmac_axi, ptr %axi, i32 0, i32 3
  %8 = ptrtoint ptr %axi_rd_osr_lmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %axi_rd_osr_lmt, align 4
  %shl9 = shl i32 %9, 16
  %and10 = and i32 %shl9, 4128768
  %or11 = or i32 %or7, %and10
  %axi_fb = getelementptr inbounds %struct.stmmac_axi, ptr %axi, i32 0, i32 6
  %10 = ptrtoint ptr %axi_fb to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %axi_fb, align 4, !range !20
  %12 = xor i8 %11, 1
  %.masked = zext i8 %12 to i32
  %and16 = or i32 %or11, %.masked
  %arrayidx = getelementptr %struct.stmmac_axi, ptr %axi, i32 0, i32 5, i32 0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %entry.for.inc_crit_edge [
    i32 256, label %sw.bb
    i32 128, label %sw.bb18
    i32 64, label %sw.bb20
    i32 32, label %sw.bb22
    i32 16, label %sw.bb24
    i32 8, label %sw.bb26
    i32 4, label %sw.bb28
  ]

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or17 = or i32 %and16, 128
  br label %for.inc

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or19 = or i32 %and16, 64
  br label %for.inc

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or21 = or i32 %and16, 32
  br label %for.inc

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or23 = or i32 %and16, 16
  br label %for.inc

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or25 = or i32 %and16, 8
  br label %for.inc

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or27 = or i32 %and16, 4
  br label %for.inc

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or29 = or i32 %and16, 2
  br label %for.inc

for.inc:                                          ; preds = %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb, %entry.for.inc_crit_edge
  %value.4 = phi i32 [ %and16, %entry.for.inc_crit_edge ], [ %or29, %sw.bb28 ], [ %or27, %sw.bb26 ], [ %or25, %sw.bb24 ], [ %or23, %sw.bb22 ], [ %or21, %sw.bb20 ], [ %or19, %sw.bb18 ], [ %or17, %sw.bb ]
  %arrayidx.1 = getelementptr %struct.stmmac_axi, ptr %axi, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %17, label %for.inc.for.inc.1_crit_edge [
    i32 256, label %sw.bb.1
    i32 128, label %sw.bb18.1
    i32 64, label %sw.bb20.1
    i32 32, label %sw.bb22.1
    i32 16, label %sw.bb24.1
    i32 8, label %sw.bb26.1
    i32 4, label %sw.bb28.1
  ]

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.1

sw.bb28.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  %or29.1 = or i32 %value.4, 2
  br label %for.inc.1

sw.bb26.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  %or27.1 = or i32 %value.4, 4
  br label %for.inc.1

sw.bb24.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  %or25.1 = or i32 %value.4, 8
  br label %for.inc.1

sw.bb22.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  %or23.1 = or i32 %value.4, 16
  br label %for.inc.1

sw.bb20.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  %or21.1 = or i32 %value.4, 32
  br label %for.inc.1

sw.bb18.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  %or19.1 = or i32 %value.4, 64
  br label %for.inc.1

sw.bb.1:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  %or17.1 = or i32 %value.4, 128
  br label %for.inc.1

for.inc.1:                                        ; preds = %sw.bb.1, %sw.bb18.1, %sw.bb20.1, %sw.bb22.1, %sw.bb24.1, %sw.bb26.1, %sw.bb28.1, %for.inc.for.inc.1_crit_edge
  %value.4.1 = phi i32 [ %value.4, %for.inc.for.inc.1_crit_edge ], [ %or29.1, %sw.bb28.1 ], [ %or27.1, %sw.bb26.1 ], [ %or25.1, %sw.bb24.1 ], [ %or23.1, %sw.bb22.1 ], [ %or21.1, %sw.bb20.1 ], [ %or19.1, %sw.bb18.1 ], [ %or17.1, %sw.bb.1 ]
  %arrayidx.2 = getelementptr %struct.stmmac_axi, ptr %axi, i32 0, i32 5, i32 2
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.2, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %20, label %for.inc.1.for.inc.2_crit_edge [
    i32 256, label %sw.bb.2
    i32 128, label %sw.bb18.2
    i32 64, label %sw.bb20.2
    i32 32, label %sw.bb22.2
    i32 16, label %sw.bb24.2
    i32 8, label %sw.bb26.2
    i32 4, label %sw.bb28.2
  ]

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.2

sw.bb28.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  %or29.2 = or i32 %value.4.1, 2
  br label %for.inc.2

sw.bb26.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  %or27.2 = or i32 %value.4.1, 4
  br label %for.inc.2

sw.bb24.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  %or25.2 = or i32 %value.4.1, 8
  br label %for.inc.2

sw.bb22.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  %or23.2 = or i32 %value.4.1, 16
  br label %for.inc.2

sw.bb20.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  %or21.2 = or i32 %value.4.1, 32
  br label %for.inc.2

sw.bb18.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  %or19.2 = or i32 %value.4.1, 64
  br label %for.inc.2

sw.bb.2:                                          ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  %or17.2 = or i32 %value.4.1, 128
  br label %for.inc.2

for.inc.2:                                        ; preds = %sw.bb.2, %sw.bb18.2, %sw.bb20.2, %sw.bb22.2, %sw.bb24.2, %sw.bb26.2, %sw.bb28.2, %for.inc.1.for.inc.2_crit_edge
  %value.4.2 = phi i32 [ %value.4.1, %for.inc.1.for.inc.2_crit_edge ], [ %or29.2, %sw.bb28.2 ], [ %or27.2, %sw.bb26.2 ], [ %or25.2, %sw.bb24.2 ], [ %or23.2, %sw.bb22.2 ], [ %or21.2, %sw.bb20.2 ], [ %or19.2, %sw.bb18.2 ], [ %or17.2, %sw.bb.2 ]
  %arrayidx.3 = getelementptr %struct.stmmac_axi, ptr %axi, i32 0, i32 5, i32 3
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.3, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %23, label %for.inc.2.for.inc.3_crit_edge [
    i32 256, label %sw.bb.3
    i32 128, label %sw.bb18.3
    i32 64, label %sw.bb20.3
    i32 32, label %sw.bb22.3
    i32 16, label %sw.bb24.3
    i32 8, label %sw.bb26.3
    i32 4, label %sw.bb28.3
  ]

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.3

sw.bb28.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  %or29.3 = or i32 %value.4.2, 2
  br label %for.inc.3

sw.bb26.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  %or27.3 = or i32 %value.4.2, 4
  br label %for.inc.3

sw.bb24.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  %or25.3 = or i32 %value.4.2, 8
  br label %for.inc.3

sw.bb22.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  %or23.3 = or i32 %value.4.2, 16
  br label %for.inc.3

sw.bb20.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  %or21.3 = or i32 %value.4.2, 32
  br label %for.inc.3

sw.bb18.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  %or19.3 = or i32 %value.4.2, 64
  br label %for.inc.3

sw.bb.3:                                          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  %or17.3 = or i32 %value.4.2, 128
  br label %for.inc.3

for.inc.3:                                        ; preds = %sw.bb.3, %sw.bb18.3, %sw.bb20.3, %sw.bb22.3, %sw.bb24.3, %sw.bb26.3, %sw.bb28.3, %for.inc.2.for.inc.3_crit_edge
  %value.4.3 = phi i32 [ %value.4.2, %for.inc.2.for.inc.3_crit_edge ], [ %or29.3, %sw.bb28.3 ], [ %or27.3, %sw.bb26.3 ], [ %or25.3, %sw.bb24.3 ], [ %or23.3, %sw.bb22.3 ], [ %or21.3, %sw.bb20.3 ], [ %or19.3, %sw.bb18.3 ], [ %or17.3, %sw.bb.3 ]
  %arrayidx.4 = getelementptr %struct.stmmac_axi, ptr %axi, i32 0, i32 5, i32 4
  %25 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.4, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %26, label %for.inc.3.for.inc.4_crit_edge [
    i32 256, label %sw.bb.4
    i32 128, label %sw.bb18.4
    i32 64, label %sw.bb20.4
    i32 32, label %sw.bb22.4
    i32 16, label %sw.bb24.4
    i32 8, label %sw.bb26.4
    i32 4, label %sw.bb28.4
  ]

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.4

sw.bb28.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  %or29.4 = or i32 %value.4.3, 2
  br label %for.inc.4

sw.bb26.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  %or27.4 = or i32 %value.4.3, 4
  br label %for.inc.4

sw.bb24.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  %or25.4 = or i32 %value.4.3, 8
  br label %for.inc.4

sw.bb22.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  %or23.4 = or i32 %value.4.3, 16
  br label %for.inc.4

sw.bb20.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  %or21.4 = or i32 %value.4.3, 32
  br label %for.inc.4

sw.bb18.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  %or19.4 = or i32 %value.4.3, 64
  br label %for.inc.4

sw.bb.4:                                          ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  %or17.4 = or i32 %value.4.3, 128
  br label %for.inc.4

for.inc.4:                                        ; preds = %sw.bb.4, %sw.bb18.4, %sw.bb20.4, %sw.bb22.4, %sw.bb24.4, %sw.bb26.4, %sw.bb28.4, %for.inc.3.for.inc.4_crit_edge
  %value.4.4 = phi i32 [ %value.4.3, %for.inc.3.for.inc.4_crit_edge ], [ %or29.4, %sw.bb28.4 ], [ %or27.4, %sw.bb26.4 ], [ %or25.4, %sw.bb24.4 ], [ %or23.4, %sw.bb22.4 ], [ %or21.4, %sw.bb20.4 ], [ %or19.4, %sw.bb18.4 ], [ %or17.4, %sw.bb.4 ]
  %arrayidx.5 = getelementptr %struct.stmmac_axi, ptr %axi, i32 0, i32 5, i32 5
  %28 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.5, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %29, label %for.inc.4.for.inc.5_crit_edge [
    i32 256, label %sw.bb.5
    i32 128, label %sw.bb18.5
    i32 64, label %sw.bb20.5
    i32 32, label %sw.bb22.5
    i32 16, label %sw.bb24.5
    i32 8, label %sw.bb26.5
    i32 4, label %sw.bb28.5
  ]

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.5

sw.bb28.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  %or29.5 = or i32 %value.4.4, 2
  br label %for.inc.5

sw.bb26.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  %or27.5 = or i32 %value.4.4, 4
  br label %for.inc.5

sw.bb24.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  %or25.5 = or i32 %value.4.4, 8
  br label %for.inc.5

sw.bb22.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  %or23.5 = or i32 %value.4.4, 16
  br label %for.inc.5

sw.bb20.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  %or21.5 = or i32 %value.4.4, 32
  br label %for.inc.5

sw.bb18.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  %or19.5 = or i32 %value.4.4, 64
  br label %for.inc.5

sw.bb.5:                                          ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  %or17.5 = or i32 %value.4.4, 128
  br label %for.inc.5

for.inc.5:                                        ; preds = %sw.bb.5, %sw.bb18.5, %sw.bb20.5, %sw.bb22.5, %sw.bb24.5, %sw.bb26.5, %sw.bb28.5, %for.inc.4.for.inc.5_crit_edge
  %value.4.5 = phi i32 [ %value.4.4, %for.inc.4.for.inc.5_crit_edge ], [ %or29.5, %sw.bb28.5 ], [ %or27.5, %sw.bb26.5 ], [ %or25.5, %sw.bb24.5 ], [ %or23.5, %sw.bb22.5 ], [ %or21.5, %sw.bb20.5 ], [ %or19.5, %sw.bb18.5 ], [ %or17.5, %sw.bb.5 ]
  %arrayidx.6 = getelementptr %struct.stmmac_axi, ptr %axi, i32 0, i32 5, i32 6
  %31 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.6, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %32, label %for.inc.5.for.inc.6_crit_edge [
    i32 256, label %sw.bb.6
    i32 128, label %sw.bb18.6
    i32 64, label %sw.bb20.6
    i32 32, label %sw.bb22.6
    i32 16, label %sw.bb24.6
    i32 8, label %sw.bb26.6
    i32 4, label %sw.bb28.6
  ]

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.6

sw.bb28.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #5
  %or29.6 = or i32 %value.4.5, 2
  br label %for.inc.6

sw.bb26.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #5
  %or27.6 = or i32 %value.4.5, 4
  br label %for.inc.6

sw.bb24.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #5
  %or25.6 = or i32 %value.4.5, 8
  br label %for.inc.6

sw.bb22.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #5
  %or23.6 = or i32 %value.4.5, 16
  br label %for.inc.6

sw.bb20.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #5
  %or21.6 = or i32 %value.4.5, 32
  br label %for.inc.6

sw.bb18.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #5
  %or19.6 = or i32 %value.4.5, 64
  br label %for.inc.6

sw.bb.6:                                          ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #5
  %or17.6 = or i32 %value.4.5, 128
  br label %for.inc.6

for.inc.6:                                        ; preds = %sw.bb.6, %sw.bb18.6, %sw.bb20.6, %sw.bb22.6, %sw.bb24.6, %sw.bb26.6, %sw.bb28.6, %for.inc.5.for.inc.6_crit_edge
  %value.4.6 = phi i32 [ %value.4.5, %for.inc.5.for.inc.6_crit_edge ], [ %or29.6, %sw.bb28.6 ], [ %or27.6, %sw.bb26.6 ], [ %or25.6, %sw.bb24.6 ], [ %or23.6, %sw.bb22.6 ], [ %or21.6, %sw.bb20.6 ], [ %or19.6, %sw.bb18.6 ], [ %or17.6, %sw.bb.6 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  %34 = tail call i32 @llvm.bswap.i32(i32 %value.4.6)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %34) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %add.ptr34 = getelementptr i8, ptr %ioaddr, i32 12352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 -193) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  %add.ptr38 = getelementptr i8, ptr %ioaddr, i32 12356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 -193) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_dump_regs(ptr noundef %ioaddr, ptr nocapture noundef writeonly %reg_space) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 3072, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.05, 2
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %mul
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  %arrayidx = getelementptr i32, ptr %reg_space, i32 %i.05
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 3647
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_rx_mode(ptr noundef %ioaddr, i32 noundef %mode, i32 noundef %channel, i32 noundef %fifosz, i8 noundef zeroext %qmode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %channel, 7
  %add = add i32 %mul, 4416
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  %div = sdiv i32 %fifosz, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or = or i32 %1, 32
  br label %if.end13

if.else:                                          ; preds = %entry
  %and2 = and i32 %1, -36
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %mode)
  %cmp3 = icmp slt i32 %mode, 65
  br i1 %cmp3, label %if.else.if.end13_crit_edge, label %if.else6

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 97, i32 %mode)
  %cmp7 = icmp ult i32 %mode, 97
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #5
  %or9 = or i32 %and2, 2
  br label %if.end13

if.else10:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #5
  %or11 = or i32 %and2, 3
  br label %if.end13

if.end13:                                         ; preds = %if.else10, %if.then8, %if.else.if.end13_crit_edge, %if.then
  %value.0 = phi i32 [ %or, %if.then ], [ %or9, %if.then8 ], [ %or11, %if.else10 ], [ %and2, %if.else.if.end13_crit_edge ]
  %and14 = and i32 %value.0, -67043329
  %sub = shl i32 %div, 16
  %shl = add i32 %sub, 67043328
  %and15 = and i32 %shl, 67043328
  %or16 = or i32 %and14, %and15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %fifosz)
  %cmp17 = icmp slt i32 %fifosz, 4096
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %qmode)
  %cmp18.not = icmp eq i8 %qmode, 0
  %or.cond = or i1 %cmp17, %cmp18.not
  br i1 %or.cond, label %if.end13.do.body40_crit_edge, label %if.then20

if.end13.do.body40_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body40

if.then20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  %add24 = add i32 %mul, 4432
  %add.ptr25 = getelementptr i8, ptr %ioaddr, i32 %add24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  %or29 = or i32 %or16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %fifosz)
  %cond = icmp eq i32 %fifosz, 4096
  %3 = and i32 %2, 16777472
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and33 = select i1 %cond, i32 393218, i32 917512
  %or35 = or i32 %and33, %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  tail call void @arm_heavy_mb() #3
  %5 = tail call i32 @llvm.bswap.i32(i32 %or35)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %5) #3, !srcloc !16
  br label %do.body40

do.body40:                                        ; preds = %if.then20, %if.end13.do.body40_crit_edge
  %value.1 = phi i32 [ %or29, %if.then20 ], [ %or16, %if.end13.do.body40_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %6 = tail call i32 @llvm.bswap.i32(i32 %value.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #3, !srcloc !16
  %add49 = add i32 %mul, 4464
  %add.ptr50 = getelementptr i8, ptr %ioaddr, i32 %add49
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !43
  tail call void @arm_heavy_mb() #3
  %8 = or i32 %7, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %8) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_tx_mode(ptr noundef %ioaddr, i32 noundef %mode, i32 noundef %channel, i32 noundef %fifosz, i8 noundef zeroext %qmode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %channel, 7
  %add = add i32 %mul, 4352
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or = or i32 %1, 2
  br label %if.end33

if.else:                                          ; preds = %entry
  %and2 = and i32 %1, -115
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %mode)
  %cmp3 = icmp slt i32 %mode, 65
  br i1 %cmp3, label %if.else.if.end33_crit_edge, label %if.else6

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end33

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 97, i32 %mode)
  %cmp7 = icmp ult i32 %mode, 97
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #5
  %or9 = or i32 %and2, 32
  br label %if.end33

if.else10:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %mode)
  %cmp11 = icmp ult i32 %mode, 129
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #5
  %or13 = or i32 %and2, 48
  br label %if.end33

if.else14:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_const_cmp4(i32 193, i32 %mode)
  %cmp15 = icmp ult i32 %mode, 193
  br i1 %cmp15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #5
  %or17 = or i32 %and2, 64
  br label %if.end33

if.else18:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %mode)
  %cmp19 = icmp ult i32 %mode, 257
  br i1 %cmp19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #5
  %or21 = or i32 %and2, 80
  br label %if.end33

if.else22:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_const_cmp4(i32 385, i32 %mode)
  %cmp23 = icmp ult i32 %mode, 385
  br i1 %cmp23, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #5
  %or25 = or i32 %and2, 96
  br label %if.end33

if.else26:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #5
  %or27 = or i32 %and2, 112
  br label %if.end33

if.end33:                                         ; preds = %if.else26, %if.then24, %if.then20, %if.then16, %if.then12, %if.then8, %if.else.if.end33_crit_edge, %if.then
  %value.0 = phi i32 [ %or, %if.then ], [ %or9, %if.then8 ], [ %or13, %if.then12 ], [ %or17, %if.then16 ], [ %or21, %if.then20 ], [ %or25, %if.then24 ], [ %or27, %if.else26 ], [ %and2, %if.else.if.end33_crit_edge ]
  %shl = shl i32 %channel, 8
  %and34 = and i32 %shl, 1792
  %value.0.masked = and i32 %value.0, -67043341
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %qmode)
  %cmp37.not = icmp eq i8 %qmode, 0
  %value.1.v = select i1 %cmp37.not, i32 4, i32 8
  %div = sdiv i32 %fifosz, 256
  %sub = shl i32 %div, 16
  %shl45 = add i32 %sub, 67043328
  %and46 = and i32 %shl45, 67043328
  %and36 = or i32 %value.1.v, %and34
  %value.1 = or i32 %and36, %and46
  %or47 = or i32 %value.1, %value.0.masked
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %or47)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_enable_dma_irq(ptr noundef %ioaddr, i32 noundef %chan, i1 noundef zeroext %rx, i1 noundef zeroext %tx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add = add i32 %mul, 12600
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  %or = or i32 %1, 192
  %spec.select = select i1 %rx, i32 %or, i32 %1
  %or5 = zext i1 %tx to i32
  %value.1 = or i32 %spec.select, %or5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %value.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_disable_dma_irq(ptr noundef %ioaddr, i32 noundef %chan, i1 noundef zeroext %rx, i1 noundef zeroext %tx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add = add i32 %mul, 12600
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  %and = and i32 %1, -193
  %spec.select = select i1 %rx, i32 %and, i32 %1
  %and5 = and i32 %spec.select, -2
  %value.1 = select i1 %tx, i32 %and5, i32 %spec.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !49
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %value.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_start_tx(ptr noundef %ioaddr, i32 noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add = add i32 %mul, 12548
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  %1 = or i32 %0, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #3, !srcloc !16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ioaddr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !52
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ioaddr, i32 %3) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_stop_tx(ptr noundef %ioaddr, i32 noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add = add i32 %mul, 12548
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !54
  %1 = and i32 %0, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !55
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #3, !srcloc !16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ioaddr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !56
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !57
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ioaddr, i32 %3) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_start_rx(ptr noundef %ioaddr, i32 noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add = add i32 %mul, 12552
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !58
  %1 = or i32 %0, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !59
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #3, !srcloc !16
  %add.ptr7 = getelementptr i8, ptr %ioaddr, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !60
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !61
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %3) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_dma_stop_rx(ptr noundef %ioaddr, i32 noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add = add i32 %mul, 12552
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %1 = and i32 %0, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwxgmac2_dma_interrupt(ptr noundef %ioaddr, ptr nocapture noundef %x, i32 noundef %chan, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add = add i32 %mul, 12640
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !64
  %add5 = add i32 %mul, 12600
  %add.ptr6 = getelementptr i8, ptr %ioaddr, i32 %add5
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !65
  %3 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %dir, label %entry.if.end13_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then11
  ]

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and = and i32 %1, 53440
  br label %if.end13

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and12 = and i32 %1, 53255
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then, %entry.if.end13_crit_edge
  %intr_status.0 = phi i32 [ %and, %if.then ], [ %and12, %if.then11 ], [ %1, %entry.if.end13_crit_edge ]
  %and14 = and i32 %intr_status.0, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool.not = icmp eq i32 %and14, 0
  br i1 %tobool.not, label %if.end13.if.end52_crit_edge, label %if.then17, !prof !66

if.end13.if.end52_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end52

if.then17:                                        ; preds = %if.end13
  %and18 = and i32 %intr_status.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then17.if.end27_crit_edge, label %if.then26, !prof !66

if.then17.if.end27_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.then26:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #5
  %rx_buf_unav_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 32
  %4 = ptrtoint ptr %rx_buf_unav_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_buf_unav_irq, align 128
  %inc = add i32 %5, 1
  store i32 %inc, ptr %rx_buf_unav_irq, align 128
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.then17.if.end27_crit_edge
  %ret.0 = phi i32 [ 4, %if.then26 ], [ 0, %if.then17.if.end27_crit_edge ]
  %and28 = and i32 %intr_status.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end39_crit_edge, label %if.then36, !prof !66

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end39

if.then36:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  %tx_process_stopped_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 29
  %6 = ptrtoint ptr %tx_process_stopped_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_process_stopped_irq, align 4
  %inc37 = add i32 %7, 1
  store i32 %inc37, ptr %tx_process_stopped_irq, align 4
  %or38 = or i32 %ret.0, 1
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end27.if.end39_crit_edge
  %ret.1 = phi i32 [ %or38, %if.then36 ], [ %ret.0, %if.end27.if.end39_crit_edge ]
  %and40 = and i32 %intr_status.0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end52_crit_edge, label %if.then48, !prof !66

if.end39.if.end52_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end52

if.then48:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  %fatal_bus_error_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 36
  %8 = ptrtoint ptr %fatal_bus_error_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fatal_bus_error_irq, align 16
  %inc49 = add i32 %9, 1
  store i32 %inc49, ptr %fatal_bus_error_irq, align 16
  %or50 = or i32 %ret.1, 1
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end39.if.end52_crit_edge, %if.end13.if.end52_crit_edge
  %ret.2 = phi i32 [ %or50, %if.then48 ], [ %ret.1, %if.end39.if.end52_crit_edge ], [ 0, %if.end13.if.end52_crit_edge ]
  %and53 = and i32 %intr_status.0, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.do.body_crit_edge, label %if.then61, !prof !67

if.end52.do.body_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.then61:                                        ; preds = %if.end52
  %normal_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 41
  %10 = ptrtoint ptr %normal_irq_n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %normal_irq_n, align 4
  %inc62 = add i32 %11, 1
  store i32 %inc62, ptr %normal_irq_n, align 4
  %and63 = and i32 %intr_status.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.then61.if.end74_crit_edge, label %if.then71, !prof !67

if.then61.if.end74_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end74

if.then71:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #5
  %rx_normal_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 42
  %12 = ptrtoint ptr %rx_normal_irq_n to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_normal_irq_n, align 8
  %inc72 = add i32 %13, 1
  store i32 %inc72, ptr %rx_normal_irq_n, align 8
  %or73 = or i32 %ret.2, 4
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.then61.if.end74_crit_edge
  %ret.3 = phi i32 [ %or73, %if.then71 ], [ %ret.2, %if.then61.if.end74_crit_edge ]
  %and75 = and i32 %intr_status.0, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end74.do.body_crit_edge, label %if.then83, !prof !67

if.end74.do.body_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.then83:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #5
  %tx_normal_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 44
  %14 = ptrtoint ptr %tx_normal_irq_n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_normal_irq_n, align 16
  %inc84 = add i32 %15, 1
  store i32 %inc84, ptr %tx_normal_irq_n, align 16
  %or85 = or i32 %ret.3, 8
  br label %do.body

do.body:                                          ; preds = %if.then83, %if.end74.do.body_crit_edge, %if.end52.do.body_crit_edge
  %ret.4 = phi i32 [ %or85, %if.then83 ], [ %ret.3, %if.end74.do.body_crit_edge ], [ %ret.2, %if.end52.do.body_crit_edge ]
  %16 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !68
  tail call void @arm_heavy_mb() #3
  %and88 = and i32 %intr_status.0, %16
  %17 = tail call i32 @llvm.bswap.i32(i32 %and88)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #3, !srcloc !16
  ret i32 %ret.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwxgmac2_get_hw_feature(ptr noundef %ioaddr, ptr noundef writeonly %dma_cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 284
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !69
  %and = lshr i32 %1, 27
  %shr = and i32 %and, 1
  %vlins = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 37
  %2 = ptrtoint ptr %vlins to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr, ptr %vlins, align 4
  %and2 = lshr i32 %1, 16
  %shr3 = and i32 %and2, 1
  %rx_coe = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 17
  %3 = ptrtoint ptr %rx_coe to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr3, ptr %rx_coe, align 4
  %and4 = lshr i32 %1, 14
  %shr5 = and i32 %and4, 1
  %tx_coe = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 16
  %4 = ptrtoint ptr %tx_coe to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr5, ptr %tx_coe, align 4
  %and6 = lshr i32 %1, 13
  %shr7 = and i32 %and6, 1
  %eee = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 12
  %5 = ptrtoint ptr %eee to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr7, ptr %eee, align 4
  %and8 = lshr i32 %1, 12
  %shr9 = and i32 %and8, 1
  %atime_stamp = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 11
  %6 = ptrtoint ptr %atime_stamp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr9, ptr %atime_stamp, align 4
  %and10 = lshr i32 %1, 11
  %av = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 13
  %7 = lshr i32 %1, 10
  %.lobit = and i32 %7, 1
  %8 = xor i32 %.lobit, 1
  %and15 = and i32 %8, %and10
  %9 = ptrtoint ptr %av to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and15, ptr %av, align 4
  %and16 = lshr i32 %1, 9
  %shr17 = and i32 %and16, 1
  %arpoffsel = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 40
  %10 = ptrtoint ptr %arpoffsel to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr17, ptr %arpoffsel, align 4
  %and18 = lshr i32 %1, 8
  %shr19 = and i32 %and18, 1
  %rmon = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 9
  %11 = ptrtoint ptr %rmon to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr19, ptr %rmon, align 4
  %and20 = lshr i32 %1, 7
  %shr21 = and i32 %and20, 1
  %pmt_magic_frame = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 8
  %12 = ptrtoint ptr %pmt_magic_frame to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr21, ptr %pmt_magic_frame, align 4
  %and22 = lshr i32 %1, 6
  %shr23 = and i32 %and22, 1
  %pmt_remote_wake_up = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 7
  %13 = ptrtoint ptr %pmt_remote_wake_up to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr23, ptr %pmt_remote_wake_up, align 4
  %and24 = lshr i32 %1, 4
  %shr25 = and i32 %and24, 1
  %vlhash = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 35
  %14 = ptrtoint ptr %vlhash to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr25, ptr %vlhash, align 4
  %and26 = lshr i32 %1, 1
  %shr27 = and i32 %and26, 1
  %mbps_1000 = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 1
  %15 = ptrtoint ptr %mbps_1000 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr27, ptr %mbps_1000, align 4
  %add.ptr30 = getelementptr i8, ptr %ioaddr, i32 288
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #3, !srcloc !13
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !70
  %and34 = lshr i32 %17, 27
  %shr35 = and i32 %and34, 15
  %l3l4fnum = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 39
  %18 = ptrtoint ptr %l3l4fnum to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr35, ptr %l3l4fnum, align 4
  %and36 = lshr i32 %17, 24
  %shr37 = and i32 %and36, 3
  %hash_tb_sz = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 14
  %19 = ptrtoint ptr %hash_tb_sz to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr37, ptr %hash_tb_sz, align 4
  %and38 = lshr i32 %17, 20
  %shr39 = and i32 %and38, 1
  %rssen = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 34
  %20 = ptrtoint ptr %rssen to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr39, ptr %rssen, align 4
  %and40 = lshr i32 %17, 18
  %shr41 = and i32 %and40, 1
  %tsoen = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 15
  %21 = ptrtoint ptr %tsoen to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr41, ptr %tsoen, align 4
  %and42 = lshr i32 %17, 17
  %shr43 = and i32 %and42, 1
  %sphen = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 36
  %22 = ptrtoint ptr %sphen to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr43, ptr %sphen, align 4
  %and44 = lshr i32 %17, 14
  %shr45 = and i32 %and44, 3
  %addr64 = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr45)
  %switch.selectcmp = icmp eq i32 %shr45, 1
  %switch.select = select i1 %switch.selectcmp, i32 40, i32 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr45)
  %switch.selectcmp181 = icmp eq i32 %shr45, 2
  %switch.select182 = select i1 %switch.selectcmp181, i32 48, i32 %switch.select
  %23 = ptrtoint ptr %addr64 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %switch.select182, ptr %addr64, align 4
  %and53 = lshr i32 %17, 6
  %shr54 = and i32 %and53, 31
  %shl = shl i32 128, %shr54
  %tx_fifo_size = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 27
  %24 = ptrtoint ptr %tx_fifo_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shl, ptr %tx_fifo_size, align 4
  %and55 = and i32 %17, 31
  %shl57 = shl i32 128, %and55
  %rx_fifo_size = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 28
  %25 = ptrtoint ptr %rx_fifo_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shl57, ptr %rx_fifo_size, align 4
  %add.ptr60 = getelementptr i8, ptr %ioaddr, i32 292
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #3, !srcloc !13
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !71
  %and64 = lshr i32 %27, 24
  %shr65 = and i32 %and64, 7
  %pps_out_num = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 25
  %28 = ptrtoint ptr %pps_out_num to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shr65, ptr %pps_out_num, align 4
  %and66 = lshr i32 %27, 18
  %shr67 = and i32 %and66, 15
  %add = add nuw nsw i32 %shr67, 1
  %number_tx_channel = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 22
  %29 = ptrtoint ptr %number_tx_channel to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add, ptr %number_tx_channel, align 4
  %and68 = lshr i32 %27, 12
  %shr69 = and i32 %and68, 15
  %add70 = add nuw nsw i32 %shr69, 1
  %number_rx_channel = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 21
  %30 = ptrtoint ptr %number_rx_channel to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add70, ptr %number_rx_channel, align 4
  %and71 = lshr i32 %27, 6
  %shr72 = and i32 %and71, 15
  %add73 = add nuw nsw i32 %shr72, 1
  %number_tx_queues = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 24
  %31 = ptrtoint ptr %number_tx_queues to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add73, ptr %number_tx_queues, align 4
  %and74 = and i32 %27, 15
  %add76 = add nuw nsw i32 %and74, 1
  %number_rx_queues = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 23
  %32 = ptrtoint ptr %number_rx_queues to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add76, ptr %number_rx_queues, align 4
  %add.ptr79 = getelementptr i8, ptr %ioaddr, i32 296
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #3, !srcloc !13
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !72
  %and83 = lshr i32 %34, 27
  %shr84 = and i32 %and83, 1
  %tbssel = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 45
  %35 = ptrtoint ptr %tbssel to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shr84, ptr %tbssel, align 4
  %and85 = lshr i32 %34, 26
  %shr86 = and i32 %and85, 1
  %fpesel = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 44
  %36 = ptrtoint ptr %fpesel to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shr86, ptr %fpesel, align 4
  %and87 = lshr i32 %34, 23
  %shr88 = and i32 %and87, 3
  %estwid = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 41
  %37 = ptrtoint ptr %estwid to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shr88, ptr %estwid, align 4
  %and89 = lshr i32 %34, 20
  %shr90 = and i32 %and89, 7
  %estdep = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 42
  %38 = ptrtoint ptr %estdep to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shr90, ptr %estdep, align 4
  %and91 = lshr i32 %34, 19
  %shr92 = and i32 %and91, 1
  %estsel = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 43
  %39 = ptrtoint ptr %estsel to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shr92, ptr %estsel, align 4
  %and93 = lshr i32 %34, 14
  %shr94 = and i32 %and93, 3
  %asp = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 29
  %40 = ptrtoint ptr %asp to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shr94, ptr %asp, align 4
  %and95 = lshr i32 %34, 13
  %shr96 = and i32 %and95, 1
  %dvlan = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 38
  %41 = ptrtoint ptr %dvlan to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shr96, ptr %dvlan, align 4
  %and97 = lshr i32 %34, 11
  %shr98 = and i32 %and97, 3
  %frpes = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 32
  %42 = ptrtoint ptr %frpes to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr98, ptr %frpes, align 4
  %and99 = lshr i32 %34, 9
  %shr100 = and i32 %and99, 3
  %frpbs = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 31
  %43 = ptrtoint ptr %frpbs to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shr100, ptr %frpbs, align 4
  %and101 = lshr i32 %34, 3
  %shr102 = and i32 %and101, 1
  %frpsel = getelementptr inbounds %struct.dma_features, ptr %dma_cap, i32 0, i32 30
  %44 = ptrtoint ptr %frpsel to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shr102, ptr %frpsel, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_rx_watchdog(ptr noundef %ioaddr, i32 noundef %riwt, i32 noundef %queue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !73
  tail call void @arm_heavy_mb() #3
  %and = shl i32 %riwt, 24
  %mul = shl i32 %queue, 7
  %add = add i32 %mul, 12604
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %and) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_set_tx_ring_len(ptr noundef %ioaddr, i32 noundef %len, i32 noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !74
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %len)
  %mul = shl i32 %chan, 7
  %add = add i32 %mul, 12592
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_set_rx_ring_len(ptr noundef %ioaddr, i32 noundef %len, i32 noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !75
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %len)
  %mul = shl i32 %chan, 7
  %add = add i32 %mul, 12596
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_set_rx_tail_ptr(ptr noundef %ioaddr, i32 noundef %ptr, i32 noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !76
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %ptr)
  %mul = shl i32 %chan, 7
  %add = add i32 %mul, 12588
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_set_tx_tail_ptr(ptr noundef %ioaddr, i32 noundef %ptr, i32 noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !77
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %ptr)
  %mul = shl i32 %chan, 7
  %add = add i32 %mul, 12580
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_enable_tso(ptr noundef %ioaddr, i1 noundef zeroext %en, i32 noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add = add i32 %mul, 12548
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !78
  %1 = and i32 %0, -1048577
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %masksel = select i1 %en, i32 4096, i32 0
  %value.0 = or i32 %2, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !79
  tail call void @arm_heavy_mb() #3
  %3 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_qmode(ptr noundef %ioaddr, i32 noundef %channel, i8 noundef zeroext %qmode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %channel, 7
  %add = add i32 %mul, 4352
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !80
  %add.ptr4 = getelementptr i8, ptr %ioaddr, i32 144
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !81
  %2 = and i32 %0, -201326593
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %qmode)
  %cmp.not = icmp eq i8 %qmode, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or = or i32 %3, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !82
  tail call void @arm_heavy_mb() #3
  %add10 = add i32 %mul, 4368
  %add.ptr11 = getelementptr i8, ptr %ioaddr, i32 %add10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #3, !srcloc !16
  br label %do.body18

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or12 = or i32 %3, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !83
  tail call void @arm_heavy_mb() #3
  %4 = and i32 %1, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #3, !srcloc !16
  br label %do.body18

do.body18:                                        ; preds = %if.else, %if.then
  %value.0 = phi i32 [ %or, %if.then ], [ %or12, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !84
  tail call void @arm_heavy_mb() #3
  %5 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_set_bfsize(ptr noundef %ioaddr, i32 noundef %bfsize, i32 noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add = add i32 %mul, 12552
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !85
  %1 = and i32 %0, 25231359
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %shl = shl i32 %bfsize, 1
  %or = or i32 %2, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !86
  tail call void @arm_heavy_mb() #3
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac2_enable_sph(ptr noundef %ioaddr, i1 noundef zeroext %en, i32 noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !87
  %1 = and i32 %0, -7340033
  %2 = or i32 %1, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !88
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #3, !srcloc !16
  %mul = shl i32 %chan, 7
  %add = add i32 %mul, 12544
  %add.ptr5 = getelementptr i8, ptr %ioaddr, i32 %add
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !89
  %4 = and i32 %3, -2
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %masksel = select i1 %en, i32 16777216, i32 0
  %value.0 = or i32 %5, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !90
  tail call void @arm_heavy_mb() #3
  %6 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %6) #3, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwxgmac2_enable_tbs(ptr noundef %ioaddr, i1 noundef zeroext %en, i32 noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add = add i32 %mul, 12548
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !91
  %1 = and i32 %0, -17
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %masksel = select i1 %en, i32 268435456, i32 0
  %value.0 = or i32 %2, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !92
  tail call void @arm_heavy_mb() #3
  %3 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #3, !srcloc !16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !93
  %5 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool15.not = icmp eq i32 %5, 0
  %or.cond = select i1 %en, i1 %tobool15.not, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body18

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !94
  tail call void @arm_heavy_mb() #3
  %add.ptr21 = getelementptr i8, ptr %ioaddr, i32 12372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 33554431) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !95
  tail call void @arm_heavy_mb() #3
  %add.ptr25 = getelementptr i8, ptr %ioaddr, i32 12376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 33554431) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !96
  tail call void @arm_heavy_mb() #3
  %add.ptr29 = getelementptr i8, ptr %ioaddr, i32 12380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 33554431) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !97
  tail call void @arm_heavy_mb() #3
  %add.ptr33 = getelementptr i8, ptr %ioaddr, i32 12384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 33554431) #3, !srcloc !16
  br label %cleanup

cleanup:                                          ; preds = %do.body18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body18 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @dwxgmac210_dma_ops, !1, !"dwxgmac210_dma_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c", i32 554, i32 29}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c", i32 18, i32 9}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2997965}
!14 = !{i64 2157339296}
!15 = !{i64 2157339637}
!16 = !{i64 2997547}
!17 = !{i64 2157341717}
!18 = !{i64 2157342211}
!19 = !{i64 2157342720}
!20 = !{i8 0, i8 2}
!21 = !{i64 2157343117}
!22 = !{i64 2157343915}
!23 = !{i64 2157344272}
!24 = !{i64 2157345380}
!25 = !{i64 2157346644}
!26 = !{i64 2157348304}
!27 = !{i64 2157348838}
!28 = !{i64 2157349445}
!29 = !{i64 2157350337}
!30 = !{i64 2157352079}
!31 = !{i64 2157352613}
!32 = !{i64 2157353220}
!33 = !{i64 2157354002}
!34 = !{i64 2157358505}
!35 = !{i64 2157359882}
!36 = !{i64 2157362105}
!37 = !{i64 2157363652}
!38 = !{i64 2157364282}
!39 = !{i64 2157367149}
!40 = !{i64 2157368889}
!41 = !{i64 2157369373}
!42 = !{i64 2157370211}
!43 = !{i64 2157370605}
!44 = !{i64 2157371536}
!45 = !{i64 2157375423}
!46 = !{i64 2157376246}
!47 = !{i64 2157376802}
!48 = !{i64 2157377622}
!49 = !{i64 2157378178}
!50 = !{i64 2157378998}
!51 = !{i64 2157379353}
!52 = !{i64 2157380063}
!53 = !{i64 2157380374}
!54 = !{i64 2157381172}
!55 = !{i64 2157381527}
!56 = !{i64 2157382237}
!57 = !{i64 2157382548}
!58 = !{i64 2157383346}
!59 = !{i64 2157383701}
!60 = !{i64 2157384411}
!61 = !{i64 2157384722}
!62 = !{i64 2157385520}
!63 = !{i64 2157385875}
!64 = !{i64 2157386695}
!65 = !{i64 2157387310}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{!"branch_weights", i32 1, i32 2000}
!68 = !{i64 2157389901}
!69 = !{i64 2157390659}
!70 = !{i64 2157392244}
!71 = !{i64 2157396434}
!72 = !{i64 2157404424}
!73 = !{i64 2157409528}
!74 = !{i64 2157411333}
!75 = !{i64 2157410863}
!76 = !{i64 2157411803}
!77 = !{i64 2157412273}
!78 = !{i64 2157413087}
!79 = !{i64 2157413528}
!80 = !{i64 2157414363}
!81 = !{i64 2157414868}
!82 = !{i64 2157415823}
!83 = !{i64 2157416366}
!84 = !{i64 2157416930}
!85 = !{i64 2157417753}
!86 = !{i64 2157418711}
!87 = !{i64 2157419421}
!88 = !{i64 2157420379}
!89 = !{i64 2157421177}
!90 = !{i64 2157421618}
!91 = !{i64 2157422438}
!92 = !{i64 2157422879}
!93 = !{i64 2157423699}
!94 = !{i64 2157425121}
!95 = !{i64 2157427588}
!96 = !{i64 2157430055}
!97 = !{i64 2157432522}
