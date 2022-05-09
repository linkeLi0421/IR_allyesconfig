; ModuleID = '/llk/IR_all_yes/drivers/staging/sm750fb/ddk750_hwi2c.c_pt.bc'
source_filename = "../drivers/staging/sm750fb/ddk750_hwi2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@mmio750 = external dso_local local_unnamed_addr global ptr, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm750_hw_i2c_init(i8 noundef zeroext %bus_speed_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %0 = load ptr, ptr @mmio750, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 8
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %2 = or i32 %1, 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %3 = load ptr, ptr @mmio750, align 4
  %add.ptr.i8 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %2) #4, !srcloc !12
  tail call void @sm750_enable_i2c(i32 noundef 1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %4 = load ptr, ptr @mmio750, align 4
  %add.ptr.i9 = getelementptr i8, ptr %4, i32 65601
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %6 = and i32 %5, -50331649
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bus_speed_mode)
  %tobool.not = icmp eq i8 %bus_speed_mode, 0
  %or2 = or i32 %7, 2
  %spec.select = select i1 %tobool.not, i32 %7, i32 %or2
  %or3 = or i32 %spec.select, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %8 = tail call i32 @llvm.bswap.i32(i32 %or3) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %9 = load ptr, ptr @mmio750, align 4
  %add.ptr.i10 = getelementptr i8, ptr %9, i32 65601
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %8) #4, !srcloc !12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sm750_enable_i2c(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sm750_hw_i2c_close() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %0 = load ptr, ptr @mmio750, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 65601
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %2 = and i32 %1, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %3 = load ptr, ptr @mmio750, align 4
  %add.ptr.i7 = getelementptr i8, ptr %3, i32 65601
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %2) #4, !srcloc !12
  tail call void @sm750_enable_i2c(i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %4 = load ptr, ptr @mmio750, align 4
  %add.ptr.i8 = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %6 = and i32 %5, -193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %7 = load ptr, ptr @mmio750, align 4
  %add.ptr.i9 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %6) #4, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @sm750_hw_i2c_read_reg(i8 noundef zeroext %addr, i8 noundef zeroext %reg) local_unnamed_addr #0 align 64 {
entry:
  %reg.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %reg.addr, align 1
  %call = call fastcc i32 @hw_i2c_write_data(i8 noundef zeroext %addr, i32 noundef 1, ptr noundef nonnull %reg.addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %1 = or i8 %addr, 1
  %or.i = zext i8 %1 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %2 = shl nuw i32 %or.i, 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %3 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 65603
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %4 = load ptr, ptr @mmio750, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %4, i32 65602
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 0) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %5 = load ptr, ptr @mmio750, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %5, i32 65600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 0) #4, !srcloc !12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %6 = load ptr, ptr @mmio750, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %6, i32 65601
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %8 = or i32 %7, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %9 = load ptr, ptr @mmio750, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %9, i32 65601
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %8) #4, !srcloc !12
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.then
  %timeout.0.i.i = phi i32 [ 983040, %if.then ], [ %dec.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %10 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 65602
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %12 = and i32 %11, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp ne i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i.i)
  %cmp.not.i.i = icmp eq i32 %timeout.0.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %cmp.not.i.i
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  br i1 %or.cond.i.i, label %hw_i2c_wait_tx_done.exit.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i

hw_i2c_wait_tx_done.exit.i:                       ; preds = %while.cond.i.i
  br i1 %cmp.not.i.i, label %hw_i2c_wait_tx_done.exit.i.if.end_crit_edge, label %for.body.i

hw_i2c_wait_tx_done.exit.i.if.end_crit_edge:      ; preds = %hw_i2c_wait_tx_done.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body.i:                                       ; preds = %hw_i2c_wait_tx_done.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %13 = load ptr, ptr @mmio750, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %13, i32 65604
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #4, !srcloc !9
  %15 = lshr i32 %14, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %conv16.i = trunc i32 %15 to i8
  br label %if.end

if.end:                                           ; preds = %for.body.i, %hw_i2c_wait_tx_done.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %value.1 = phi i8 [ -1, %entry.if.end_crit_edge ], [ -1, %hw_i2c_wait_tx_done.exit.i.if.end_crit_edge ], [ %conv16.i, %for.body.i ]
  ret i8 %value.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hw_i2c_write_data(i8 noundef zeroext %addr, i32 noundef %length, ptr nocapture noundef readonly %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %addr, -2
  %and = zext i8 %0 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %1 = shl nuw i32 %and, 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %2 = load ptr, ptr @mmio750, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 65603
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #4, !srcloc !12
  br label %do.body

do.body:                                          ; preds = %if.end14.do.body_crit_edge, %entry
  %length.addr.0 = phi i32 [ %length, %entry ], [ %sub17, %if.end14.do.body_crit_edge ]
  %buf.addr.0 = phi ptr [ %buf, %entry ], [ %incdec.ptr, %if.end14.do.body_crit_edge ]
  %total_bytes.0 = phi i32 [ 0, %entry ], [ %add20, %if.end14.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %3 = load ptr, ptr @mmio750, align 4
  %add.ptr.i32 = getelementptr i8, ptr %3, i32 65602
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 0) #4, !srcloc !12
  %sub = add i32 %length.addr.0, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %length.addr.0)
  %cmp.inv = icmp ugt i32 %length.addr.0, 15
  %sub.op = and i32 %sub, 255
  %conv3 = select i1 %cmp.inv, i32 15, i32 %sub.op
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %4 = shl nuw i32 %conv3, 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %5 = load ptr, ptr @mmio750, align 4
  %add.ptr.i33 = getelementptr i8, ptr %5, i32 65600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %4) #4, !srcloc !12
  %6 = trunc i32 %conv3 to i8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body
  %conv439 = phi i32 [ 0, %do.body ], [ %conv4, %for.body.for.body_crit_edge ]
  %i.038 = phi i8 [ 0, %do.body ], [ %inc, %for.body.for.body_crit_edge ]
  %buf.addr.137 = phi ptr [ %buf.addr.0, %do.body ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %conv439, 65604
  %incdec.ptr = getelementptr i8, ptr %buf.addr.137, i32 1
  %7 = ptrtoint ptr %buf.addr.137 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf.addr.137, align 1
  %conv9 = zext i8 %8 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %9 = shl nuw i32 %conv9, 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %10 = load ptr, ptr @mmio750, align 4
  %add.ptr.i34 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %9) #4, !srcloc !12
  %inc = add i8 %i.038, 1
  %conv4 = zext i8 %inc to i32
  %cmp6.not = icmp ugt i8 %inc, %6
  br i1 %cmp6.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %11 = load ptr, ptr @mmio750, align 4
  %add.ptr.i35 = getelementptr i8, ptr %11, i32 65601
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %13 = or i32 %12, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %14 = load ptr, ptr @mmio750, align 4
  %add.ptr.i36 = getelementptr i8, ptr %14, i32 65601
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %13) #4, !srcloc !12
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %for.end
  %timeout.0.i = phi i32 [ 983040, %for.end ], [ %dec.i, %while.cond.i.while.cond.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmio750 to i32))
  %15 = load ptr, ptr @mmio750, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 65602
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %17 = and i32 %16, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp ne i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %cmp.not.i = icmp eq i32 %timeout.0.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp.not.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  br i1 %or.cond.i, label %hw_i2c_wait_tx_done.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

hw_i2c_wait_tx_done.exit:                         ; preds = %while.cond.i
  br i1 %cmp.not.i, label %hw_i2c_wait_tx_done.exit.do.end_crit_edge, label %if.end14

hw_i2c_wait_tx_done.exit.do.end_crit_edge:        ; preds = %hw_i2c_wait_tx_done.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end14:                                         ; preds = %hw_i2c_wait_tx_done.exit
  %add16 = add nuw nsw i32 %conv3, 1
  %sub17 = sub i32 %length.addr.0, %add16
  %add20 = add i32 %add16, %total_bytes.0
  %cmp21.not = icmp eq i32 %sub17, 0
  br i1 %cmp21.not, label %if.end14.do.end_crit_edge, label %if.end14.do.body_crit_edge

if.end14.do.body_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end14.do.end_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %if.end14.do.end_crit_edge, %hw_i2c_wait_tx_done.exit.do.end_crit_edge
  %total_bytes.1 = phi i32 [ %total_bytes.0, %hw_i2c_wait_tx_done.exit.do.end_crit_edge ], [ %add20, %if.end14.do.end_crit_edge ]
  ret i32 %total_bytes.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm750_hw_i2c_write_reg(i8 noundef zeroext %addr, i8 noundef zeroext %reg, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  %value = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value) #4
  %0 = getelementptr inbounds [2 x i8], ptr %value, i32 0, i32 1
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %reg, ptr %value, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %data, ptr %0, align 1
  %call = call fastcc i32 @hw_i2c_write_data(i8 noundef zeroext %addr, i32 noundef 2, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp ne i32 %call, 2
  %. = sext i1 %cmp to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value) #4
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

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
!9 = !{i64 691564}
!10 = !{i64 2150626613}
!11 = !{i64 2150626994}
!12 = !{i64 691146}
