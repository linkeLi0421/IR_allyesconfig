; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }

@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [52 x i8] c"../drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 23, i32 9 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwmac4_dma_reset(ptr noundef %ioaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4096
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %1 = or i32 %0, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #3, !srcloc !14
  %call3 = tail call i64 @ktime_get() #3
  %add.i = add i64 %call3, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 25) #3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not52 = icmp eq i32 %3, 0
  br i1 %tobool.not52, label %entry.for.end.thread_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.thread

land.lhs.true:                                    ; preds = %if.then35.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call23 = tail call i64 @ktime_get() #3
  call void @__sanitizer_cov_trace_cmp8(i64 %call23, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call23, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then35

if.then35:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %5 = and i32 %4, 16777216
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then35.for.end.thread_crit_edge, label %if.then35.land.lhs.true_crit_edge

if.then35.land.lhs.true_crit_edge:                ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

if.then35.for.end.thread_crit_edge:               ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool39.not = icmp eq i32 %7, 0
  br i1 %tobool39.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %8

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.then35.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  br label %8

8:                                                ; preds = %for.end.thread, %for.end._crit_edge
  %9 = phi i32 [ 0, %for.end.thread ], [ -110, %for.end._crit_edge ]
  ret i32 %9
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac4_set_rx_tail_ptr(ptr noundef %ioaddr, i32 noundef %tail_ptr, i32 noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %tail_ptr)
  %mul = shl i32 %chan, 7
  %add1 = add i32 %mul, 4392
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac4_set_tx_tail_ptr(ptr noundef %ioaddr, i32 noundef %tail_ptr, i32 noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %tail_ptr)
  %mul = shl i32 %chan, 7
  %add1 = add i32 %mul, 4384
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac4_dma_start_tx(ptr noundef %ioaddr, i32 noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add1 = add i32 %mul, 4356
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  %1 = or i32 %0, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #3, !srcloc !14
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ioaddr) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  %3 = or i32 %2, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ioaddr, i32 %3) #3, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac4_dma_stop_tx(ptr noundef %ioaddr, i32 noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add1 = add i32 %mul, 4356
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  %1 = and i32 %0, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #3, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac4_dma_start_rx(ptr noundef %ioaddr, i32 noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add1 = add i32 %mul, 4360
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  %1 = or i32 %0, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #3, !srcloc !14
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ioaddr) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ioaddr, i32 %3) #3, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac4_dma_stop_rx(ptr noundef %ioaddr, i32 noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add1 = add i32 %mul, 4360
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %1 = and i32 %0, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #3, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac4_set_tx_ring_len(ptr noundef %ioaddr, i32 noundef %len, i32 noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %len)
  %mul = shl i32 %chan, 7
  %add1 = add i32 %mul, 4396
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac4_set_rx_ring_len(ptr noundef %ioaddr, i32 noundef %len, i32 noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %len)
  %mul = shl i32 %chan, 7
  %add1 = add i32 %mul, 4400
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac4_enable_dma_irq(ptr noundef %ioaddr, i32 noundef %chan, i1 noundef zeroext %rx, i1 noundef zeroext %tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add2 = add i32 %mul, 4404
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add2
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !11
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %or = or i32 %1, 64
  %spec.select = select i1 %rx, i32 %or, i32 %1
  %or6 = zext i1 %tx to i32
  %value.1 = or i32 %spec.select, %or6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %value.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #3, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac410_enable_dma_irq(ptr noundef %ioaddr, i32 noundef %chan, i1 noundef zeroext %rx, i1 noundef zeroext %tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add2 = add i32 %mul, 4404
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add2
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !11
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  %or = or i32 %1, 64
  %spec.select = select i1 %rx, i32 %or, i32 %1
  %or6 = zext i1 %tx to i32
  %value.1 = or i32 %spec.select, %or6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %value.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #3, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac4_disable_dma_irq(ptr noundef %ioaddr, i32 noundef %chan, i1 noundef zeroext %rx, i1 noundef zeroext %tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add2 = add i32 %mul, 4404
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add2
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !11
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  %and = and i32 %1, -65
  %spec.select = select i1 %rx, i32 %and, i32 %1
  %and6 = and i32 %spec.select, -2
  %value.1 = select i1 %tx, i32 %and6, i32 %spec.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %value.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #3, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwmac410_disable_dma_irq(ptr noundef %ioaddr, i32 noundef %chan, i1 noundef zeroext %rx, i1 noundef zeroext %tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add2 = add i32 %mul, 4404
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add2
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !11
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  %and = and i32 %1, -65
  %spec.select = select i1 %rx, i32 %and, i32 %1
  %and6 = and i32 %spec.select, -2
  %value.1 = select i1 %tx, i32 %and6, i32 %spec.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %value.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #3, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwmac4_dma_interrupt(ptr noundef %ioaddr, ptr nocapture noundef %x, i32 noundef %chan, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan, 7
  %add1 = add i32 %mul, 4448
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add1
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !11
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  %add7 = add i32 %mul, 4404
  %add.ptr8 = getelementptr i8, ptr %ioaddr, i32 %add7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  %3 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %dir, label %entry.if.end15_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then13
  ]

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and = and i32 %1, 3734464
  br label %if.end15

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %and14 = and i32 %1, 62471
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then, %entry.if.end15_crit_edge
  %intr_status.0 = phi i32 [ %and, %if.then ], [ %and14, %if.then13 ], [ %1, %entry.if.end15_crit_edge ]
  %and16 = and i32 %intr_status.0, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool.not = icmp eq i32 %and16, 0
  br i1 %tobool.not, label %if.end15.if.end85_crit_edge, label %if.then19, !prof !43

if.end15.if.end85_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end85

if.then19:                                        ; preds = %if.end15
  %and20 = and i32 %intr_status.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.then19.if.end29_crit_edge, label %if.then28, !prof !43

if.then19.if.end29_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

if.then28:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #5
  %rx_buf_unav_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 32
  %4 = ptrtoint ptr %rx_buf_unav_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_buf_unav_irq, align 128
  %inc = add i32 %5, 1
  store i32 %inc, ptr %rx_buf_unav_irq, align 128
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.then19.if.end29_crit_edge
  %and30 = and i32 %intr_status.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end40_crit_edge, label %if.then38, !prof !43

if.end29.if.end40_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40

if.then38:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  %rx_process_stopped_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 33
  %6 = ptrtoint ptr %rx_process_stopped_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_process_stopped_irq, align 4
  %inc39 = add i32 %7, 1
  store i32 %inc39, ptr %rx_process_stopped_irq, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end29.if.end40_crit_edge
  %and41 = and i32 %intr_status.0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end51_crit_edge, label %if.then49, !prof !43

if.end40.if.end51_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end51

if.then49:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  %rx_watchdog_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 34
  %8 = ptrtoint ptr %rx_watchdog_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_watchdog_irq, align 8
  %inc50 = add i32 %9, 1
  store i32 %inc50, ptr %rx_watchdog_irq, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end40.if.end51_crit_edge
  %and52 = and i32 %intr_status.0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end62_crit_edge, label %if.then60, !prof !43

if.end51.if.end62_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end62

if.then60:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #5
  %tx_early_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 35
  %10 = ptrtoint ptr %tx_early_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_early_irq, align 4
  %inc61 = add i32 %11, 1
  store i32 %inc61, ptr %tx_early_irq, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end51.if.end62_crit_edge
  %and63 = and i32 %intr_status.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end62.if.end73_crit_edge, label %if.then71, !prof !43

if.end62.if.end73_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end73

if.then71:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #5
  %tx_process_stopped_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 29
  %12 = ptrtoint ptr %tx_process_stopped_irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_process_stopped_irq, align 4
  %inc72 = add i32 %13, 1
  store i32 %inc72, ptr %tx_process_stopped_irq, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end62.if.end73_crit_edge
  %ret.0 = phi i32 [ 1, %if.then71 ], [ 0, %if.end62.if.end73_crit_edge ]
  %and74 = and i32 %intr_status.0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end73.if.end85_crit_edge, label %if.then82, !prof !43

if.end73.if.end85_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end85

if.then82:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #5
  %fatal_bus_error_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 36
  %14 = ptrtoint ptr %fatal_bus_error_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fatal_bus_error_irq, align 16
  %inc83 = add i32 %15, 1
  store i32 %inc83, ptr %fatal_bus_error_irq, align 16
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end73.if.end85_crit_edge, %if.end15.if.end85_crit_edge
  %ret.1 = phi i32 [ 1, %if.then82 ], [ %ret.0, %if.end73.if.end85_crit_edge ], [ 0, %if.end15.if.end85_crit_edge ]
  %and86 = and i32 %intr_status.0, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end85.if.end96_crit_edge, label %if.then94, !prof !44

if.end85.if.end96_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end96

if.then94:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #5
  %normal_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 41
  %16 = ptrtoint ptr %normal_irq_n to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %normal_irq_n, align 4
  %inc95 = add i32 %17, 1
  store i32 %inc95, ptr %normal_irq_n, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end85.if.end96_crit_edge
  %and97 = and i32 %intr_status.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end96.if.end109_crit_edge, label %if.then105, !prof !44

if.end96.if.end109_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end109

if.then105:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #5
  %rx_normal_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 42
  %18 = ptrtoint ptr %rx_normal_irq_n to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_normal_irq_n, align 8
  %inc106 = add i32 %19, 1
  store i32 %inc106, ptr %rx_normal_irq_n, align 8
  %rx_normal_irq_n107 = getelementptr %struct.stmmac_extra_stats, ptr %x, i32 0, i32 119, i32 %chan, i32 1
  %20 = ptrtoint ptr %rx_normal_irq_n107 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_normal_irq_n107, align 4
  %inc108 = add i32 %21, 1
  store i32 %inc108, ptr %rx_normal_irq_n107, align 4
  %or = or i32 %ret.1, 4
  br label %if.end109

if.end109:                                        ; preds = %if.then105, %if.end96.if.end109_crit_edge
  %ret.2 = phi i32 [ %or, %if.then105 ], [ %ret.1, %if.end96.if.end109_crit_edge ]
  %and110 = and i32 %intr_status.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end109.if.end124_crit_edge, label %if.then118, !prof !44

if.end109.if.end124_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end124

if.then118:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #5
  %tx_normal_irq_n = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 44
  %22 = ptrtoint ptr %tx_normal_irq_n to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_normal_irq_n, align 16
  %inc119 = add i32 %23, 1
  store i32 %inc119, ptr %tx_normal_irq_n, align 16
  %tx_normal_irq_n121 = getelementptr %struct.stmmac_extra_stats, ptr %x, i32 0, i32 118, i32 %chan, i32 1
  %24 = ptrtoint ptr %tx_normal_irq_n121 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_normal_irq_n121, align 4
  %inc122 = add i32 %25, 1
  store i32 %inc122, ptr %tx_normal_irq_n121, align 4
  %or123 = or i32 %ret.2, 8
  br label %if.end124

if.end124:                                        ; preds = %if.then118, %if.end109.if.end124_crit_edge
  %ret.3 = phi i32 [ %or123, %if.then118 ], [ %ret.2, %if.end109.if.end124_crit_edge ]
  %and125 = and i32 %intr_status.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.end124.if.end135_crit_edge, label %if.then133, !prof !43

if.end124.if.end135_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end135

if.then133:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #5
  %or134 = or i32 %ret.3, 8
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %if.end124.if.end135_crit_edge
  %ret.4 = phi i32 [ %or134, %if.then133 ], [ %ret.3, %if.end124.if.end135_crit_edge ]
  %and136 = and i32 %intr_status.0, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end135.do.body_crit_edge, label %if.then144, !prof !43

if.end135.do.body_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.then144:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #5
  %rx_early_irq = getelementptr inbounds %struct.stmmac_extra_stats, ptr %x, i32 0, i32 37
  %26 = ptrtoint ptr %rx_early_irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_early_irq, align 4
  %inc145 = add i32 %27, 1
  store i32 %inc145, ptr %rx_early_irq, align 4
  br label %do.body

do.body:                                          ; preds = %if.then144, %if.end135.do.body_crit_edge
  %28 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %and147 = and i32 %intr_status.0, %28
  %29 = tail call i32 @llvm.bswap.i32(i32 %and147)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %29) #3, !srcloc !14
  ret i32 %ret.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stmmac_dwmac4_set_mac_addr(ptr noundef %ioaddr, ptr nocapture noundef readonly %addr, i32 noundef %high, i32 noundef %low) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %addr, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx1 = getelementptr i8, ptr %addr, i32 4
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %or = or i32 %shl, %conv2
  %or4 = or i32 %or, -2147483648
  %4 = tail call i32 @llvm.bswap.i32(i32 %or4)
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %high
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #3, !srcloc !14
  %arrayidx5 = getelementptr i8, ptr %addr, i32 3
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %shl7 = shl nuw i32 %conv6, 24
  %arrayidx8 = getelementptr i8, ptr %addr, i32 2
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %8 to i32
  %shl10 = shl nuw nsw i32 %conv9, 16
  %or11 = or i32 %shl10, %shl7
  %arrayidx12 = getelementptr i8, ptr %addr, i32 1
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %10 to i32
  %shl14 = shl nuw nsw i32 %conv13, 8
  %or15 = or i32 %or11, %shl14
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %addr, align 1
  %conv17 = zext i8 %12 to i32
  %or18 = or i32 %or15, %conv17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  tail call void @arm_heavy_mb() #3
  %13 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %add.ptr22 = getelementptr i8, ptr %ioaddr, i32 %low
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %13) #3, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stmmac_dwmac4_set_mac(ptr noundef %ioaddr, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ioaddr) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  %1 = and i32 %0, -50331649
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %masksel = select i1 %enable, i32 3, i32 0
  %value.0 = or i32 %2, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !49
  tail call void @arm_heavy_mb() #3
  %3 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ioaddr, i32 %3) #3, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stmmac_dwmac4_get_mac_addr(ptr noundef %ioaddr, ptr nocapture noundef writeonly %addr, i32 noundef %high, i32 noundef %low) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %high
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !11
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  %add.ptr4 = getelementptr i8, ptr %ioaddr, i32 %low
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #3, !srcloc !11
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  %conv = trunc i32 %3 to i8
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %addr, align 1
  %shr = lshr i32 %3, 8
  %conv9 = trunc i32 %shr to i8
  %arrayidx10 = getelementptr i8, ptr %addr, i32 1
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv9, ptr %arrayidx10, align 1
  %shr11 = lshr i32 %3, 16
  %conv13 = trunc i32 %shr11 to i8
  %arrayidx14 = getelementptr i8, ptr %addr, i32 2
  %6 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv13, ptr %arrayidx14, align 1
  %shr15 = lshr i32 %3, 24
  %conv17 = trunc i32 %shr15 to i8
  %arrayidx18 = getelementptr i8, ptr %addr, i32 3
  %7 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv17, ptr %arrayidx18, align 1
  %conv20 = trunc i32 %1 to i8
  %arrayidx21 = getelementptr i8, ptr %addr, i32 4
  %8 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv20, ptr %arrayidx21, align 1
  %shr22 = lshr i32 %1, 8
  %conv24 = trunc i32 %shr22 to i8
  %arrayidx25 = getelementptr i8, ptr %addr, i32 5
  %9 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv24, ptr %arrayidx25, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

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

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/dwmac4_lib.c", i32 23, i32 9}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 689748}
!12 = !{i64 2156634666}
!13 = !{i64 2156634977}
!14 = !{i64 689330}
!15 = !{i64 2156636980}
!16 = !{i64 2156637474}
!17 = !{i64 2156637852}
!18 = !{i64 2156638456}
!19 = !{i64 2156639442}
!20 = !{i64 2156639893}
!21 = !{i64 2156640618}
!22 = !{i64 2156640929}
!23 = !{i64 2156641868}
!24 = !{i64 2156642319}
!25 = !{i64 2156643295}
!26 = !{i64 2156643746}
!27 = !{i64 2156644471}
!28 = !{i64 2156644782}
!29 = !{i64 2156645721}
!30 = !{i64 2156646172}
!31 = !{i64 2156646761}
!32 = !{i64 2156647345}
!33 = !{i64 2156648321}
!34 = !{i64 2156648904}
!35 = !{i64 2156649886}
!36 = !{i64 2156650469}
!37 = !{i64 2156651451}
!38 = !{i64 2156652034}
!39 = !{i64 2156653016}
!40 = !{i64 2156653599}
!41 = !{i64 2156654581}
!42 = !{i64 2156655342}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{!"branch_weights", i32 1, i32 2000}
!45 = !{i64 2156660242}
!46 = !{i64 2156660842}
!47 = !{i64 2156661319}
!48 = !{i64 2156661997}
!49 = !{i64 2156662554}
!50 = !{i64 2156663207}
!51 = !{i64 2156663673}
