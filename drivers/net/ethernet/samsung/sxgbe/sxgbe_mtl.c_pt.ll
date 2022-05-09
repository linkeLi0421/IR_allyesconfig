; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/samsung/sxgbe/sxgbe_mtl.c_pt.bc'
source_filename = "../drivers/net/ethernet/samsung/sxgbe/sxgbe_mtl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sxgbe_mtl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@mtl_ops = internal constant { %struct.sxgbe_mtl_ops, [36 x i8] } { %struct.sxgbe_mtl_ops { ptr @sxgbe_mtl_init, ptr @sxgbe_mtl_set_txfifosize, ptr @sxgbe_mtl_set_rxfifosize, ptr @sxgbe_mtl_enable_txqueue, ptr @sxgbe_mtl_disable_txqueue, ptr @sxgbe_set_tx_mtl_mode, ptr @sxgbe_set_rx_mtl_mode, ptr @sxgbe_mtl_dma_dm_rxqueue, ptr @sxgbe_mtl_fc_active, ptr @sxgbe_mtl_fc_deactive, ptr @sxgbe_mtl_fc_enable, ptr @sxgbe_mtl_fep_enable, ptr @sxgbe_mtl_fep_disable, ptr @sxgbe_mtl_fup_enable, ptr @sxgbe_mtl_fup_disable }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [8 x i8] c"mtl_ops\00", align 1
@___asan_gen_.2 = private constant [50 x i8] c"../drivers/net/ethernet/samsung/sxgbe/sxgbe_mtl.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 230, i32 35 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @mtl_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtl_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @sxgbe_get_mtl_ops() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @mtl_ops
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_mtl_init(ptr noundef %ioaddr, i32 noundef %etsalg, i32 noundef %raa) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4096
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  %1 = and i32 %0, -1610612737
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_mtl_set_txfifosize(ptr noundef %ioaddr, i32 noundef %queue_num, i32 noundef %queue_fifo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %queue_fifo, 256
  %mul = shl i32 %queue_num, 7
  %add = add i32 %mul, 4352
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !16
  %sub = shl i32 %div, 16
  %shl = add i32 %sub, -65536
  %or = or i32 %1, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_mtl_set_rxfifosize(ptr noundef %ioaddr, i32 noundef %queue_num, i32 noundef %queue_fifo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %queue_fifo, 256
  %mul = shl i32 %queue_num, 7
  %add = add i32 %mul, 4416
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  %sub = shl i32 %div, 16
  %shl = add i32 %sub, -65536
  %or = or i32 %1, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_mtl_enable_txqueue(ptr noundef %ioaddr, i32 noundef %queue_num) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %queue_num, 7
  %add = add i32 %mul, 4352
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %1 = or i32 %0, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_mtl_disable_txqueue(ptr noundef %ioaddr, i32 noundef %queue_num) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %queue_num, 7
  %add = add i32 %mul, 4352
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %1 = and i32 %0, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_set_tx_mtl_mode(ptr noundef %ioaddr, i32 noundef %queue_num, i32 noundef %tx_mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %queue_num, 7
  %add = add i32 %mul, 4352
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %tx_mode)
  %cmp = icmp eq i32 %tx_mode, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %1, 2
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %tx_mode)
  %cmp3 = icmp slt i32 %tx_mode, 65
  br i1 %cmp3, label %if.else.do.body_crit_edge, label %if.else6

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 97, i32 %tx_mode)
  %cmp7 = icmp ult i32 %tx_mode, 97
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #6
  %or9 = or i32 %1, 32
  br label %do.body

if.else10:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %tx_mode)
  %cmp11 = icmp ult i32 %tx_mode, 129
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #6
  %or13 = or i32 %1, 48
  br label %do.body

if.else14:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_const_cmp4(i32 193, i32 %tx_mode)
  %cmp15 = icmp ult i32 %tx_mode, 193
  br i1 %cmp15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #6
  %or17 = or i32 %1, 64
  br label %do.body

if.else18:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %tx_mode)
  %cmp19 = icmp ult i32 %tx_mode, 257
  br i1 %cmp19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #6
  %or21 = or i32 %1, 80
  br label %do.body

if.else22:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_const_cmp4(i32 385, i32 %tx_mode)
  %cmp23 = icmp ult i32 %tx_mode, 385
  br i1 %cmp23, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #6
  %or25 = or i32 %1, 96
  br label %do.body

if.else26:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #6
  %or27 = or i32 %1, 112
  br label %do.body

do.body:                                          ; preds = %if.else26, %if.then24, %if.then20, %if.then16, %if.then12, %if.then8, %if.else.do.body_crit_edge, %if.then
  %reg_val.0 = phi i32 [ %or, %if.then ], [ %or9, %if.then8 ], [ %or13, %if.then12 ], [ %or17, %if.then16 ], [ %or21, %if.then20 ], [ %or25, %if.then24 ], [ %or27, %if.else26 ], [ %1, %if.else.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %reg_val.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_set_rx_mtl_mode(ptr noundef %ioaddr, i32 noundef %queue_num, i32 noundef %rx_mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %queue_num, 7
  %add = add i32 %mul, 4416
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %rx_mode)
  %cmp = icmp eq i32 %rx_mode, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %1, 32
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %rx_mode)
  %cmp3 = icmp slt i32 %rx_mode, 65
  br i1 %cmp3, label %if.else.do.body_crit_edge, label %if.else6

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 97, i32 %rx_mode)
  %cmp7 = icmp ult i32 %rx_mode, 97
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #6
  %or9 = or i32 %1, 2
  br label %do.body

if.else10:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %rx_mode)
  %cmp11 = icmp ult i32 %rx_mode, 129
  %or13 = or i32 %1, 3
  %spec.select = select i1 %cmp11, i32 %or13, i32 %1
  br label %do.body

do.body:                                          ; preds = %if.else10, %if.then8, %if.else.do.body_crit_edge, %if.then
  %reg_val.0 = phi i32 [ %or, %if.then ], [ %or9, %if.then8 ], [ %1, %if.else.do.body_crit_edge ], [ %spec.select, %if.else10 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %reg_val.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_mtl_dma_dm_rxqueue(ptr noundef %ioaddr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 4144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -2139062144) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %add.ptr3 = getelementptr i8, ptr %ioaddr, i32 4148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 -2139062144) #4, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %add.ptr6 = getelementptr i8, ptr %ioaddr, i32 4152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -2139062144) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_mtl_fc_active(ptr noundef %ioaddr, i32 noundef %queue_num, i32 noundef %threshold) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %queue_num, 7
  %add = add i32 %mul, 4416
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  %1 = and i32 %0, -458753
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %shl = shl i32 %threshold, 8
  %or = or i32 %2, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_mtl_fc_deactive(ptr noundef %ioaddr, i32 noundef %queue_num, i32 noundef %threshold) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %queue_num, 7
  %add = add i32 %mul, 4416
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %1 = and i32 %0, -14680065
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %shl = shl i32 %threshold, 13
  %or = or i32 %2, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_mtl_fc_enable(ptr noundef %ioaddr, i32 noundef %queue_num) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %queue_num, 7
  %add = add i32 %mul, 4416
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %1 = or i32 %0, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_mtl_fep_enable(ptr noundef %ioaddr, i32 noundef %queue_num) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %queue_num, 7
  %add = add i32 %mul, 4416
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  %1 = or i32 %0, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_mtl_fep_disable(ptr noundef %ioaddr, i32 noundef %queue_num) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %queue_num, 7
  %add = add i32 %mul, 4416
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %1 = and i32 %0, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_mtl_fup_enable(ptr noundef %ioaddr, i32 noundef %queue_num) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %queue_num, 7
  %add = add i32 %mul, 4416
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  %1 = or i32 %0, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_mtl_fup_disable(ptr noundef %ioaddr, i32 noundef %queue_num) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %queue_num, 7
  %add = add i32 %mul, 4416
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  %1 = and i32 %0, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
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

!0 = !{ptr @mtl_ops, !1, !"mtl_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_mtl.c", i32 230, i32 35}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 690396}
!12 = !{i64 2149423002}
!13 = !{i64 2149423348}
!14 = !{i64 689978}
!15 = !{i64 2149423858}
!16 = !{i64 2149426264}
!17 = !{i64 2149426623}
!18 = !{i64 2149427528}
!19 = !{i64 2149427845}
!20 = !{i64 2149428812}
!21 = !{i64 2149429179}
!22 = !{i64 2149430158}
!23 = !{i64 2149430525}
!24 = !{i64 2149440276}
!25 = !{i64 2149440796}
!26 = !{i64 2149441697}
!27 = !{i64 2149442175}
!28 = !{i64 2149424334}
!29 = !{i64 2149424819}
!30 = !{i64 2149425304}
!31 = !{i64 2149431426}
!32 = !{i64 2149431748}
!33 = !{i64 2149433845}
!34 = !{i64 2149434169}
!35 = !{i64 2149432637}
!36 = !{i64 2149432956}
!37 = !{i64 2149435058}
!38 = !{i64 2149435454}
!39 = !{i64 2149436343}
!40 = !{i64 2149436739}
!41 = !{i64 2149437628}
!42 = !{i64 2149438024}
!43 = !{i64 2149438913}
!44 = !{i64 2149439309}
