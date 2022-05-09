; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/samsung/sxgbe/sxgbe_dma.c_pt.bc'
source_filename = "../drivers/net/ethernet/samsung/sxgbe/sxgbe_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sxgbe_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sxgbe_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@sxgbe_dma_ops = internal constant { %struct.sxgbe_dma_ops, [36 x i8] } { %struct.sxgbe_dma_ops { ptr @sxgbe_dma_init, ptr @sxgbe_dma_channel_init, ptr @sxgbe_enable_dma_transmission, ptr @sxgbe_enable_dma_irq, ptr @sxgbe_disable_dma_irq, ptr @sxgbe_dma_start_tx, ptr @sxgbe_dma_start_tx_queue, ptr @sxgbe_dma_stop_tx, ptr @sxgbe_dma_stop_tx_queue, ptr @sxgbe_dma_start_rx, ptr @sxgbe_dma_stop_rx, ptr @sxgbe_tx_dma_int_status, ptr @sxgbe_rx_dma_int_status, ptr @sxgbe_dma_rx_watchdog, ptr @sxgbe_enable_tso }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"sxgbe_dma_ops\00", align 1
@___asan_gen_.2 = private constant [50 x i8] c"../drivers/net/ethernet/samsung/sxgbe/sxgbe_dma.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 344, i32 35 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @sxgbe_dma_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_dma_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @sxgbe_get_dma_ops() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @sxgbe_dma_ops
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_dma_init(ptr noundef %ioaddr, i32 noundef %fix_burst, i32 noundef %burst_map) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 12292
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fix_burst)
  %tobool.not = icmp eq i32 %fix_burst, 0
  %or = zext i1 %tobool.not to i32
  %shl = shl i32 %burst_map, 1
  %spec.select = or i32 %shl, %or
  %or2 = or i32 %spec.select, %1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %or2)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #4, !srcloc !14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_dma_channel_init(ptr noundef %ioaddr, i32 noundef %cha_num, i32 noundef %fix_burst, i32 noundef %pbl, i32 noundef %dma_tx, i32 noundef %dma_rx, i32 noundef %t_rsize, i32 noundef %r_rsize) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %cha_num, 7
  %add = add i32 %mul, 12544
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fix_burst)
  %tobool.not = icmp eq i32 %fix_burst, 0
  br i1 %tobool.not, label %entry.do.body42_crit_edge, label %if.then

entry.do.body42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body42

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = or i32 %0, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !14
  %add11 = add i32 %mul, 12548
  %add.ptr12 = getelementptr i8, ptr %ioaddr, i32 %add11
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #4, !srcloc !11
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  %shl = shl i32 %pbl, 16
  %or16 = or i32 %3, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %or16)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %4) #4, !srcloc !14
  %add28 = add i32 %mul, 12552
  %add.ptr29 = getelementptr i8, ptr %ioaddr, i32 %add28
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #4, !srcloc !11
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %or34 = or i32 %6, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %or34)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %7) #4, !srcloc !14
  br label %do.body42

do.body42:                                        ; preds = %if.then, %entry.do.body42_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %add48 = add i32 %mul, 12560
  %add.ptr49 = getelementptr i8, ptr %ioaddr, i32 %add48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 0) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %8 = tail call i32 @llvm.bswap.i32(i32 %dma_tx)
  %add55 = add i32 %mul, 12564
  %add.ptr56 = getelementptr i8, ptr %ioaddr, i32 %add55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %8) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %add64 = add i32 %mul, 12568
  %add.ptr65 = getelementptr i8, ptr %ioaddr, i32 %add64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 0) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %9 = tail call i32 @llvm.bswap.i32(i32 %dma_rx)
  %add72 = add i32 %mul, 12572
  %add.ptr73 = getelementptr i8, ptr %ioaddr, i32 %add72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %9) #4, !srcloc !14
  %sub = add i32 %t_rsize, -1
  %mul74 = shl i32 %sub, 4
  %add75 = add i32 %mul74, %dma_tx
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %10 = tail call i32 @llvm.bswap.i32(i32 %add75)
  %add82 = add i32 %mul, 12580
  %add.ptr83 = getelementptr i8, ptr %ioaddr, i32 %add82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %10) #4, !srcloc !14
  %sub84 = add i32 %r_rsize, -1
  %mul85 = shl i32 %sub84, 4
  %add86 = add i32 %mul85, %dma_rx
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %11 = tail call i32 @llvm.bswap.i32(i32 %add86)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %11) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %12 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %add101 = add i32 %mul, 12592
  %add.ptr102 = getelementptr i8, ptr %ioaddr, i32 %add101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 %12) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %13 = tail call i32 @llvm.bswap.i32(i32 %sub84)
  %add109 = add i32 %mul, 12596
  %add.ptr110 = getelementptr i8, ptr %ioaddr, i32 %add109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 %13) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %add116 = add i32 %mul, 12600
  %add.ptr117 = getelementptr i8, ptr %ioaddr, i32 %add116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 -944701184) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_enable_dma_transmission(ptr noundef %ioaddr, i32 noundef %cha_num) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %cha_num, 7
  %add1 = add i32 %mul, 12548
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %1 = or i32 %0, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_enable_dma_irq(ptr noundef %ioaddr, i32 noundef %dma_cnum) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %mul = shl i32 %dma_cnum, 7
  %add1 = add i32 %mul, 12600
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -944701184) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_disable_dma_irq(ptr noundef %ioaddr, i32 noundef %dma_cnum) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %mul = shl i32 %dma_cnum, 7
  %add1 = add i32 %mul, 12600
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_dma_start_tx(ptr noundef %ioaddr, i32 noundef %tchannels) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tchannels)
  %cmp12 = icmp sgt i32 %tchannels, 0
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %cnum.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %cnum.013, 7
  %add1 = add i32 %mul, 12548
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %1 = or i32 %0, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !14
  %inc = add nuw nsw i32 %cnum.013, 1
  %exitcond.not = icmp eq i32 %inc, %tchannels
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_dma_start_tx_queue(ptr noundef %ioaddr, i32 noundef %dma_cnum) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %dma_cnum, 7
  %add1 = add i32 %mul, 12548
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  %1 = or i32 %0, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_dma_stop_tx(ptr noundef %ioaddr, i32 noundef %tchannels) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tchannels)
  %cmp12 = icmp sgt i32 %tchannels, 0
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %cnum.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %cnum.013, 7
  %add1 = add i32 %mul, 12548
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  %1 = and i32 %0, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !14
  %inc = add nuw nsw i32 %cnum.013, 1
  %exitcond.not = icmp eq i32 %inc, %tchannels
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_dma_stop_tx_queue(ptr noundef %ioaddr, i32 noundef %dma_cnum) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %dma_cnum, 7
  %add1 = add i32 %mul, 12548
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  %1 = and i32 %0, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_dma_start_rx(ptr noundef %ioaddr, i32 noundef %rchannels) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rchannels)
  %cmp12 = icmp sgt i32 %rchannels, 0
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %cnum.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %cnum.013, 7
  %add1 = add i32 %mul, 12552
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  %1 = or i32 %0, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !14
  %inc = add nuw nsw i32 %cnum.013, 1
  %exitcond.not = icmp eq i32 %inc, %rchannels
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_dma_stop_rx(ptr noundef %ioaddr, i32 noundef %rchannels) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rchannels)
  %cmp12 = icmp sgt i32 %rchannels, 0
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %cnum.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %cnum.013, 7
  %add1 = add i32 %mul, 12552
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  %1 = and i32 %0, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !14
  %inc = add nuw nsw i32 %cnum.013, 1
  %exitcond.not = icmp eq i32 %inc, %rchannels
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_tx_dma_int_status(ptr noundef %ioaddr, i32 noundef %channel_no, ptr nocapture noundef %x) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %channel_no, 7
  %add1 = add i32 %mul, 12640
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %and = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then, !prof !47

if.then:                                          ; preds = %entry
  %normal_irq_n = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 7
  %2 = ptrtoint ptr %normal_irq_n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %normal_irq_n, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %normal_irq_n, align 4
  %and5 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %tx_normal_irq_n = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 8
  %4 = ptrtoint ptr %tx_normal_irq_n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_normal_irq_n, align 4
  %inc8 = add i32 %5, 1
  store i32 %inc8, ptr %tx_normal_irq_n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %clear_val.0 = phi i32 [ 1, %if.then7 ], [ 0, %if.then.if.end_crit_edge ]
  %ret_val.0 = phi i32 [ 4, %if.then7 ], [ 0, %if.then.if.end_crit_edge ]
  %and10 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end.do.body_crit_edge, label %if.then12

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %x, align 4
  %inc13 = add i32 %7, 1
  store i32 %inc13, ptr %x, align 4
  %or14 = or i32 %ret_val.0, 2
  %or15 = or i32 %clear_val.0, 4
  br label %do.body

if.else:                                          ; preds = %entry
  %and17 = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else.do.body_crit_edge, label %if.then25, !prof !48

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then25:                                        ; preds = %if.else
  %and26 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then25.if.end32_crit_edge, label %if.then28

if.then25.if.end32_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  %tx_process_stopped_irq = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 1
  %8 = ptrtoint ptr %tx_process_stopped_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_process_stopped_irq, align 4
  %inc31 = add i32 %9, 1
  store i32 %inc31, ptr %tx_process_stopped_irq, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.then25.if.end32_crit_edge
  %clear_val.1 = phi i32 [ 2, %if.then28 ], [ 0, %if.then25.if.end32_crit_edge ]
  %ret_val.1 = phi i32 [ 1, %if.then28 ], [ 0, %if.then25.if.end32_crit_edge ]
  %and33 = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end60_crit_edge, label %if.then35

if.end32.if.end60_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.then35:                                        ; preds = %if.end32
  %fatal_bus_error_irq = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 15
  %10 = ptrtoint ptr %fatal_bus_error_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fatal_bus_error_irq, align 4
  %inc37 = add i32 %11, 1
  store i32 %inc37, ptr %fatal_bus_error_irq, align 4
  %and38 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else43, label %if.then40

if.then40:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  %tx_read_transfer_err = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 16
  %12 = ptrtoint ptr %tx_read_transfer_err to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_read_transfer_err, align 4
  %inc41 = add i32 %13, 1
  store i32 %inc41, ptr %tx_read_transfer_err, align 4
  %or42 = or i32 %clear_val.1, 65536
  br label %if.end45

if.else43:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  %tx_write_transfer_err = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 17
  %14 = ptrtoint ptr %tx_write_transfer_err to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_write_transfer_err, align 4
  %inc44 = add i32 %15, 1
  store i32 %inc44, ptr %tx_write_transfer_err, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then40
  %clear_val.2 = phi i32 [ %or42, %if.then40 ], [ %clear_val.1, %if.else43 ]
  %and46 = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.else51, label %if.then48

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  %tx_desc_access_err = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 18
  %16 = ptrtoint ptr %tx_desc_access_err to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_desc_access_err, align 4
  %inc49 = add i32 %17, 1
  store i32 %inc49, ptr %tx_desc_access_err, align 4
  %or50 = or i32 %clear_val.2, 131072
  br label %if.end53

if.else51:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  %tx_buffer_access_err = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 19
  %18 = ptrtoint ptr %tx_buffer_access_err to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_buffer_access_err, align 4
  %inc52 = add i32 %19, 1
  store i32 %inc52, ptr %tx_buffer_access_err, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.else51, %if.then48
  %clear_val.3 = phi i32 [ %or50, %if.then48 ], [ %clear_val.2, %if.else51 ]
  %and54 = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end53.if.end60_crit_edge, label %if.then56

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  %tx_data_transfer_err = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 20
  %20 = ptrtoint ptr %tx_data_transfer_err to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_data_transfer_err, align 4
  %inc57 = add i32 %21, 1
  store i32 %inc57, ptr %tx_data_transfer_err, align 4
  %or58 = or i32 %clear_val.3, 262144
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.end53.if.end60_crit_edge, %if.end32.if.end60_crit_edge
  %clear_val.4 = phi i32 [ %or58, %if.then56 ], [ %clear_val.3, %if.end53.if.end60_crit_edge ], [ %clear_val.1, %if.end32.if.end60_crit_edge ]
  %ret_val.2 = phi i32 [ 1, %if.then56 ], [ 1, %if.end53.if.end60_crit_edge ], [ %ret_val.1, %if.end32.if.end60_crit_edge ]
  %and61 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.do.body_crit_edge, label %if.then63

if.end60.do.body_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  %tx_ctxt_desc_err = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 2
  %22 = ptrtoint ptr %tx_ctxt_desc_err to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_ctxt_desc_err, align 4
  %inc64 = add i32 %23, 1
  store i32 %inc64, ptr %tx_ctxt_desc_err, align 4
  %or65 = or i32 %clear_val.4, 8192
  br label %do.body

do.body:                                          ; preds = %if.then63, %if.end60.do.body_crit_edge, %if.else.do.body_crit_edge, %if.then12, %if.end.do.body_crit_edge
  %clear_val.5 = phi i32 [ %or15, %if.then12 ], [ %clear_val.0, %if.end.do.body_crit_edge ], [ %or65, %if.then63 ], [ %clear_val.4, %if.end60.do.body_crit_edge ], [ 0, %if.else.do.body_crit_edge ]
  %ret_val.3 = phi i32 [ %or14, %if.then12 ], [ %ret_val.0, %if.end.do.body_crit_edge ], [ %ret_val.2, %if.then63 ], [ %ret_val.2, %if.end60.do.body_crit_edge ], [ 0, %if.else.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  tail call void @arm_heavy_mb() #4
  %24 = tail call i32 @llvm.bswap.i32(i32 %clear_val.5)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %24) #4, !srcloc !14
  ret i32 %ret_val.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_rx_dma_int_status(ptr noundef %ioaddr, i32 noundef %channel_no, ptr nocapture noundef %x) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %channel_no, 7
  %add1 = add i32 %mul, 12640
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  %and = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then, !prof !47

if.then:                                          ; preds = %entry
  %normal_irq_n = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 7
  %2 = ptrtoint ptr %normal_irq_n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %normal_irq_n, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %normal_irq_n, align 4
  %and5 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then.do.body_crit_edge, label %if.then7

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %rx_normal_irq_n = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 9
  %4 = ptrtoint ptr %rx_normal_irq_n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_normal_irq_n, align 4
  %inc8 = add i32 %5, 1
  store i32 %inc8, ptr %rx_normal_irq_n, align 4
  br label %do.body

if.else:                                          ; preds = %entry
  %and10 = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else.do.body_crit_edge, label %if.then18, !prof !48

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then18:                                        ; preds = %if.else
  %and19 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then18.if.end25_crit_edge, label %if.then21

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  %rx_underflow_irq = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 14
  %6 = ptrtoint ptr %rx_underflow_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_underflow_irq, align 4
  %inc24 = add i32 %7, 1
  store i32 %inc24, ptr %rx_underflow_irq, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.then18.if.end25_crit_edge
  %clear_val.0 = phi i32 [ 128, %if.then21 ], [ 0, %if.then18.if.end25_crit_edge ]
  %ret_val.0 = phi i32 [ 16, %if.then21 ], [ 0, %if.then18.if.end25_crit_edge ]
  %and26 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end32_crit_edge, label %if.then28

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %or29 = or i32 %ret_val.0, 8
  %or30 = or i32 %clear_val.0, 256
  %rx_process_stopped_irq = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 13
  %8 = ptrtoint ptr %rx_process_stopped_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_process_stopped_irq, align 4
  %inc31 = add i32 %9, 1
  store i32 %inc31, ptr %rx_process_stopped_irq, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.end25.if.end32_crit_edge
  %clear_val.1 = phi i32 [ %or30, %if.then28 ], [ %clear_val.0, %if.end25.if.end32_crit_edge ]
  %ret_val.1 = phi i32 [ %or29, %if.then28 ], [ %ret_val.0, %if.end25.if.end32_crit_edge ]
  %and33 = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.do.body_crit_edge, label %if.then35

if.end32.do.body_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then35:                                        ; preds = %if.end32
  %or36 = or i32 %ret_val.1, 8
  %fatal_bus_error_irq = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 15
  %10 = ptrtoint ptr %fatal_bus_error_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fatal_bus_error_irq, align 4
  %inc37 = add i32 %11, 1
  store i32 %inc37, ptr %fatal_bus_error_irq, align 4
  %and38 = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else43, label %if.then40

if.then40:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  %rx_read_transfer_err = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 21
  %12 = ptrtoint ptr %rx_read_transfer_err to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_read_transfer_err, align 4
  %inc41 = add i32 %13, 1
  store i32 %inc41, ptr %rx_read_transfer_err, align 4
  %or42 = or i32 %clear_val.1, 524288
  br label %if.end45

if.else43:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  %rx_write_transfer_err = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 22
  %14 = ptrtoint ptr %rx_write_transfer_err to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_write_transfer_err, align 4
  %inc44 = add i32 %15, 1
  store i32 %inc44, ptr %rx_write_transfer_err, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then40
  %clear_val.2 = phi i32 [ %or42, %if.then40 ], [ %clear_val.1, %if.else43 ]
  %and46 = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.else51, label %if.then48

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  %rx_desc_access_err = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 23
  %16 = ptrtoint ptr %rx_desc_access_err to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_desc_access_err, align 4
  %inc49 = add i32 %17, 1
  store i32 %inc49, ptr %rx_desc_access_err, align 4
  %or50 = or i32 %clear_val.2, 1048576
  br label %if.end53

if.else51:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  %rx_buffer_access_err = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 24
  %18 = ptrtoint ptr %rx_buffer_access_err to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_buffer_access_err, align 4
  %inc52 = add i32 %19, 1
  store i32 %inc52, ptr %rx_buffer_access_err, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.else51, %if.then48
  %clear_val.3 = phi i32 [ %or50, %if.then48 ], [ %clear_val.2, %if.else51 ]
  %and54 = and i32 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end53.do.body_crit_edge, label %if.then56

if.end53.do.body_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  %rx_data_transfer_err = getelementptr inbounds %struct.sxgbe_extra_stats, ptr %x, i32 0, i32 25
  %20 = ptrtoint ptr %rx_data_transfer_err to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_data_transfer_err, align 4
  %inc57 = add i32 %21, 1
  store i32 %inc57, ptr %rx_data_transfer_err, align 4
  %or58 = or i32 %clear_val.3, 2097152
  br label %do.body

do.body:                                          ; preds = %if.then56, %if.end53.do.body_crit_edge, %if.end32.do.body_crit_edge, %if.else.do.body_crit_edge, %if.then7, %if.then.do.body_crit_edge
  %clear_val.4 = phi i32 [ 64, %if.then7 ], [ 0, %if.then.do.body_crit_edge ], [ %or58, %if.then56 ], [ %clear_val.3, %if.end53.do.body_crit_edge ], [ %clear_val.1, %if.end32.do.body_crit_edge ], [ 0, %if.else.do.body_crit_edge ]
  %ret_val.2 = phi i32 [ 32, %if.then7 ], [ 0, %if.then.do.body_crit_edge ], [ %or36, %if.then56 ], [ %or36, %if.end53.do.body_crit_edge ], [ %ret_val.1, %if.end32.do.body_crit_edge ], [ 0, %if.else.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %22 = tail call i32 @llvm.bswap.i32(i32 %clear_val.4)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %22) #4, !srcloc !14
  ret i32 %ret_val.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_dma_rx_watchdog(ptr noundef %ioaddr, i32 noundef %riwt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %riwt)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 12604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %add.ptr.1 = getelementptr i8, ptr %ioaddr, i32 12732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1, i32 %0) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %add.ptr.2 = getelementptr i8, ptr %ioaddr, i32 12860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2, i32 %0) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %add.ptr.3 = getelementptr i8, ptr %ioaddr, i32 12988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3, i32 %0) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %add.ptr.4 = getelementptr i8, ptr %ioaddr, i32 13116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.4, i32 %0) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %add.ptr.5 = getelementptr i8, ptr %ioaddr, i32 13244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.5, i32 %0) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %add.ptr.6 = getelementptr i8, ptr %ioaddr, i32 13372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.6, i32 %0) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %add.ptr.7 = getelementptr i8, ptr %ioaddr, i32 13500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.7, i32 %0) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %add.ptr.8 = getelementptr i8, ptr %ioaddr, i32 13628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.8, i32 %0) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %add.ptr.9 = getelementptr i8, ptr %ioaddr, i32 13756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.9, i32 %0) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %add.ptr.10 = getelementptr i8, ptr %ioaddr, i32 13884
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.10, i32 %0) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %add.ptr.11 = getelementptr i8, ptr %ioaddr, i32 14012
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.11, i32 %0) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %add.ptr.12 = getelementptr i8, ptr %ioaddr, i32 14140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.12, i32 %0) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %add.ptr.13 = getelementptr i8, ptr %ioaddr, i32 14268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.13, i32 %0) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %add.ptr.14 = getelementptr i8, ptr %ioaddr, i32 14396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.14, i32 %0) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %add.ptr.15 = getelementptr i8, ptr %ioaddr, i32 14524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.15, i32 %0) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_enable_tso(ptr noundef %ioaddr, i8 noundef zeroext %chan_num) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %chan_num to i32
  %mul = shl nuw nsw i32 %conv, 7
  %add1 = add nuw nsw i32 %mul, 12548
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  %1 = or i32 %0, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @sxgbe_dma_ops, !1, !"sxgbe_dma_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_dma.c", i32 344, i32 35}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 2984715}
!12 = !{i64 2156410429}
!13 = !{i64 2156410778}
!14 = !{i64 2984297}
!15 = !{i64 2156411717}
!16 = !{i64 2156412155}
!17 = !{i64 2156413124}
!18 = !{i64 2156413481}
!19 = !{i64 2156414450}
!20 = !{i64 2156414807}
!21 = !{i64 2156415448}
!22 = !{i64 2156416165}
!23 = !{i64 2156416881}
!24 = !{i64 2156417598}
!25 = !{i64 2156418319}
!26 = !{i64 2156419046}
!27 = !{i64 2156419712}
!28 = !{i64 2156420309}
!29 = !{i64 2156422337}
!30 = !{i64 2156424224}
!31 = !{i64 2156424662}
!32 = !{i64 2156426686}
!33 = !{i64 2156428182}
!34 = !{i64 2156429119}
!35 = !{i64 2156429552}
!36 = !{i64 2156430532}
!37 = !{i64 2156430973}
!38 = !{i64 2156433362}
!39 = !{i64 2156433795}
!40 = !{i64 2156431957}
!41 = !{i64 2156432398}
!42 = !{i64 2156434755}
!43 = !{i64 2156435188}
!44 = !{i64 2156436148}
!45 = !{i64 2156436581}
!46 = !{i64 2156437571}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2156443548}
!50 = !{i64 2156444541}
!51 = !{i64 2156446289}
!52 = !{i64 2156446963}
!53 = !{i64 2156447928}
!54 = !{i64 2156448365}
