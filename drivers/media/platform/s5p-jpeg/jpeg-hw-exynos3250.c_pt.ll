; ModuleID = '/llk/IR_all_yes/drivers/media/platform/s5p-jpeg/jpeg-hw-exynos3250.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-jpeg/jpeg-hw-exynos3250.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.s5p_jpeg_addr = type { i32, i32, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.exynos3250_jpeg_dec_scaling_ratio = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 16777216, i32 0, i32 33554432, i32 0, i32 0, i32 0, i32 50331648], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 825382478, i64 842093913, i64 876758866, i64 877807426, i64 1346520914, i64 1380075346, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.1 = internal global [13 x i64] [i64 11, i64 32, i64 825382478, i64 842093913, i64 842094158, i64 876758866, i64 877807426, i64 1346520914, i64 1380075346, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.2 = internal global [12 x i64] [i64 10, i64 32, i64 825382478, i64 842093913, i64 842094158, i64 876758866, i64 1346520914, i64 1380075346, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@___asan_gen_ = private constant [56 x i8] c"../drivers/media/platform/s5p-jpeg/jpeg-hw-exynos3250.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [47 x i8] c"switch.table.exynos3250_jpeg_dec_scaling_ratio\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @switch.table.exynos3250_jpeg_dec_scaling_ratio], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.exynos3250_jpeg_dec_scaling_ratio to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_reset(ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %add.ptr = getelementptr i8, ptr %regs, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #3, !srcloc !10
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry
  %count.050 = phi i32 [ 1000, %entry ], [ %dec, %while.body.land.rhs_crit_edge ]
  %dec = add nsw i32 %count.050, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp1.not = icmp eq i32 %dec, 0
  br i1 %cmp1.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !12
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %add.ptr23 = getelementptr i8, ptr %regs, i32 12
  br label %land.rhs15

land.rhs15:                                       ; preds = %do.body20.land.rhs15_crit_edge, %while.end
  %count.151 = phi i32 [ 1000, %while.end ], [ %dec16, %do.body20.land.rhs15_crit_edge ]
  %dec16 = add nsw i32 %count.151, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec16)
  %cmp17.not = icmp eq i32 %dec16, 0
  br i1 %cmp17.not, label %land.rhs15.do.body40_crit_edge, label %do.body20

land.rhs15.do.body40_crit_edge:                   ; preds = %land.rhs15
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body40

do.body20:                                        ; preds = %land.rhs15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 16777216) #3, !srcloc !10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !17
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  %cmp14.not = icmp eq i32 %3, 16777216
  br i1 %cmp14.not, label %do.body20.do.body40_crit_edge, label %do.body20.land.rhs15_crit_edge

do.body20.land.rhs15_crit_edge:                   ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs15

do.body20.do.body40_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body40

do.body40:                                        ; preds = %do.body20.do.body40_crit_edge, %land.rhs15.do.body40_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 0) #3, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_poweron(ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  %add.ptr = getelementptr i8, ptr %regs, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_set_dma_num(ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %add.ptr = getelementptr i8, ptr %regs, i32 364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 117901056) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_clk_set(ptr noundef %base) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 308
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %1 = or i32 %0, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_input_raw_fmt(ptr noundef %regs, i32 noundef %fmt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %regs, i32 308
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %1 = lshr i32 %0, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  %and = and i32 %1, 2
  %2 = zext i32 %fmt to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %fmt, label %entry.do.body_crit_edge [
    i32 876758866, label %sw.bb
    i32 877807426, label %sw.bb2
    i32 1346520914, label %sw.bb4
    i32 1380075346, label %sw.bb6
    i32 1448695129, label %sw.bb8
    i32 1431918169, label %sw.bb10
    i32 1498831189, label %sw.bb12
    i32 1498765654, label %sw.bb14
    i32 842093913, label %sw.bb20
    i32 825382478, label %sw.bb18
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or = or i32 %and, 128
  br label %do.body

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or3 = or i32 %and, 136
  br label %do.body

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or5 = or i32 %and, 64
  br label %do.body

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or7 = or i32 %and, 72
  br label %do.body

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or9 = or i32 %and, 32
  br label %do.body

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or11 = or i32 %and, 36
  br label %do.body

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or13 = or i32 %and, 96
  br label %do.body

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or15 = or i32 %and, 100
  br label %do.body

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or19 = or i32 %and, 512
  br label %do.body

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %or21 = or i32 %and, 160
  br label %do.body

do.body:                                          ; preds = %sw.bb20, %sw.bb18, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb, %entry.do.body_crit_edge
  %reg.0 = phi i32 [ %or21, %sw.bb20 ], [ %or19, %sw.bb18 ], [ %or15, %sw.bb14 ], [ %or13, %sw.bb12 ], [ %or11, %sw.bb10 ], [ %or9, %sw.bb8 ], [ %or7, %sw.bb6 ], [ %or5, %sw.bb4 ], [ %or3, %sw.bb2 ], [ %or, %sw.bb ], [ %and, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %3 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_set_y16(ptr noundef %regs, i1 noundef zeroext %y16) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %regs, i32 308
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %1 = and i32 %0, -33554433
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %masksel = select i1 %y16, i32 2, i32 0
  %reg.0 = or i32 %2, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %3 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_proc_mode(ptr noundef %regs, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  %. = select i1 %cmp, i32 0, i32 8
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %regs) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  %1 = and i32 %0, -134217729
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %or = or i32 %2, %.
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  tail call void @arm_heavy_mb() #3
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %regs, i32 %3) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_subsampling_mode(ptr noundef %regs, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %switch.selectcmp = icmp eq i32 %mode, 1
  %switch.select = zext i1 %switch.selectcmp to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %switch.selectcmp8 = icmp eq i32 %mode, 2
  %switch.select9 = select i1 %switch.selectcmp8, i32 2, i32 %switch.select
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %regs) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  %1 = and i32 %0, -117440513
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %or = or i32 %2, %switch.select9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %regs, i32 %3) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos3250_jpeg_get_subsampling_mode(ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %regs) #3, !srcloc !13
  %1 = lshr i32 %0, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  %and = and i32 %1, 7
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_dri(ptr noundef %regs, i32 noundef %dri) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %dri, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %and)
  %add.ptr = getelementptr i8, ptr %regs, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_qtbl(ptr noundef %regs, i32 noundef %t, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %regs, i32 8
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  %sub = shl i32 %t, 1
  %add = add i32 %sub, 6
  %shl2 = shl i32 3, %add
  %neg = xor i32 %shl2, -1
  %and = and i32 %1, %neg
  %shl6 = shl i32 %n, %add
  %and11 = and i32 %shl6, %shl2
  %or = or i32 %and, %and11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_htbl_ac(ptr noundef %regs, i32 noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %regs, i32 8
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  %shl = shl i32 %t, 1
  %sub = add i32 %shl, -1
  %shl2 = shl nuw i32 1, %sub
  %neg = xor i32 %shl2, -1
  %and = and i32 %1, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_htbl_dc(ptr noundef %regs, i32 noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %regs, i32 8
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  %sub = shl i32 %t, 1
  %shl = add i32 %sub, -2
  %shl2 = shl nuw i32 1, %shl
  %neg = xor i32 %shl2, -1
  %and = and i32 %1, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_set_y(ptr noundef %regs, i32 noundef %y) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %y, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %and)
  %add.ptr = getelementptr i8, ptr %regs, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_set_x(ptr noundef %regs, i32 noundef %x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %x, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %and)
  %add.ptr = getelementptr i8, ptr %regs, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_interrupts_enable(ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %regs, i32 28
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  %1 = or i32 %0, 940507136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !43
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_enc_stream_bound(ptr noundef %regs, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %size, 16777152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %and)
  %add.ptr = getelementptr i8, ptr %regs, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_output_raw_fmt(ptr noundef %regs, i32 noundef %fmt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %fmt to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %fmt, label %sw.default [
    i32 876758866, label %entry.do.body_crit_edge
    i32 877807426, label %sw.bb1
    i32 1346520914, label %sw.bb2
    i32 1380075346, label %sw.bb3
    i32 1448695129, label %sw.bb4
    i32 1431918169, label %sw.bb5
    i32 1498831189, label %sw.bb6
    i32 1498765654, label %sw.bb7
    i32 842094158, label %sw.bb8
    i32 825382478, label %sw.bb9
    i32 842093913, label %sw.bb10
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body:                                          ; preds = %sw.default, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.do.body_crit_edge
  %reg.0 = phi i32 [ 0, %sw.default ], [ 4, %sw.bb10 ], [ 512, %sw.bb9 ], [ 0, %sw.bb8 ], [ 67, %sw.bb7 ], [ 3, %sw.bb6 ], [ 65, %sw.bb5 ], [ 1, %sw.bb4 ], [ 133, %sw.bb3 ], [ 5, %sw.bb2 ], [ 134, %sw.bb1 ], [ 6, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %1 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %add.ptr = getelementptr i8, ptr %regs, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_jpgadr(ptr noundef %regs, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %add.ptr = getelementptr i8, ptr %regs, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_imgadr(ptr noundef %regs, ptr nocapture noundef readonly %img_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  tail call void @arm_heavy_mb() #3
  %0 = ptrtoint ptr %img_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %img_addr, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %add.ptr = getelementptr i8, ptr %regs, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  tail call void @arm_heavy_mb() #3
  %cb = getelementptr inbounds %struct.s5p_jpeg_addr, ptr %img_addr, i32 0, i32 1
  %3 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cb, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %add.ptr3 = getelementptr i8, ptr %regs, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !49
  tail call void @arm_heavy_mb() #3
  %cr = getelementptr inbounds %struct.s5p_jpeg_addr, ptr %img_addr, i32 0, i32 2
  %6 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cr, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %add.ptr6 = getelementptr i8, ptr %regs, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %8) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_stride(ptr noundef %regs, i32 noundef %img_fmt, i32 noundef %width) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %img_fmt to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %img_fmt, label %entry.do.body_crit_edge [
    i32 876758866, label %sw.bb
    i32 1346520914, label %entry.sw.bb1_crit_edge
    i32 1380075346, label %entry.sw.bb1_crit_edge21
    i32 1448695129, label %entry.sw.bb1_crit_edge22
    i32 1431918169, label %entry.sw.bb1_crit_edge23
    i32 1498831189, label %entry.sw.bb1_crit_edge24
    i32 1498765654, label %entry.sw.bb1_crit_edge25
    i32 842094158, label %entry.sw.bb3_crit_edge
    i32 825382478, label %entry.sw.bb3_crit_edge26
    i32 842093913, label %sw.bb4
  ]

entry.sw.bb3_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3

entry.sw.bb1_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

entry.sw.bb1_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

entry.sw.bb1_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

entry.sw.bb1_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

entry.sw.bb1_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %mul = shl i32 %width, 2
  br label %do.body

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge21, %entry.sw.bb1_crit_edge22, %entry.sw.bb1_crit_edge23, %entry.sw.bb1_crit_edge24, %entry.sw.bb1_crit_edge25
  %mul2 = shl i32 %width, 1
  br label %do.body

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge26
  br label %do.body

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %div20 = lshr i32 %width, 1
  br label %do.body

do.body:                                          ; preds = %sw.bb4, %sw.bb3, %sw.bb1, %sw.bb, %entry.do.body_crit_edge
  %reg_luma.0 = phi i32 [ 0, %entry.do.body_crit_edge ], [ %width, %sw.bb4 ], [ %width, %sw.bb3 ], [ %mul2, %sw.bb1 ], [ %mul, %sw.bb ]
  %reg_cr.0 = phi i32 [ 0, %entry.do.body_crit_edge ], [ %div20, %sw.bb4 ], [ 0, %sw.bb3 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  %reg_cb.0 = phi i32 [ 0, %entry.do.body_crit_edge ], [ %div20, %sw.bb4 ], [ %width, %sw.bb3 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  tail call void @arm_heavy_mb() #3
  %1 = tail call i32 @llvm.bswap.i32(i32 %reg_luma.0)
  %add.ptr = getelementptr i8, ptr %regs, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %reg_cb.0)
  %add.ptr8 = getelementptr i8, ptr %regs, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %2) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !52
  tail call void @arm_heavy_mb() #3
  %3 = tail call i32 @llvm.bswap.i32(i32 %reg_cr.0)
  %add.ptr12 = getelementptr i8, ptr %regs, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %3) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_offset(ptr noundef %regs, i32 noundef %x_offset, i32 noundef %y_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %y_offset, 18
  %and = and i32 %shl, 2147221504
  %shl1 = shl i32 %x_offset, 2
  %and2 = and i32 %shl1, 32764
  %or = or i32 %and, %and2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  %add.ptr = getelementptr i8, ptr %regs, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !54
  tail call void @arm_heavy_mb() #3
  %add.ptr11 = getelementptr i8, ptr %regs, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %0) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !55
  tail call void @arm_heavy_mb() #3
  %add.ptr20 = getelementptr i8, ptr %regs, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %0) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_coef(ptr noundef %base, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %add.ptr = getelementptr i8, ptr %base, i32 296
  br i1 %cmp, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 506344705) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !56
  tail call void @arm_heavy_mb() #3
  %add.ptr3 = getelementptr i8, ptr %base, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 -2085703680) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !57
  tail call void @arm_heavy_mb() #3
  %add.ptr6 = getelementptr i8, ptr %base, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 333188098) #3, !srcloc !10
  br label %if.end

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1727944700) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !58
  tail call void @arm_heavy_mb() #3
  %add.ptr12 = getelementptr i8, ptr %base, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 1688250628) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !59
  tail call void @arm_heavy_mb() #3
  %add.ptr15 = getelementptr i8, ptr %base, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 33662980) #3, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %do.body7, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_start(ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !60
  tail call void @arm_heavy_mb() #3
  %add.ptr = getelementptr i8, ptr %regs, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_rstart(ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !61
  tail call void @arm_heavy_mb() #3
  %add.ptr = getelementptr i8, ptr %regs, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos3250_jpeg_get_int_status(ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %regs, i32 32
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_clear_int_status(ptr noundef %regs, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %value)
  %add.ptr = getelementptr i8, ptr %regs, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos3250_jpeg_operating(ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %regs, i32 4
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %1 = lshr i32 %0, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !64
  %and = and i32 %1, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos3250_jpeg_compressed_size(ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %regs, i32 24
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !65
  %1 = and i32 %0, -256
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_dec_stream_size(ptr noundef %regs, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !66
  tail call void @arm_heavy_mb() #3
  %and = and i32 %size, 536870911
  %0 = tail call i32 @llvm.bswap.i32(i32 %and)
  %add.ptr = getelementptr i8, ptr %regs, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_dec_scaling_ratio(ptr noundef %regs, i32 noundef %sratio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %sratio, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 7
  br i1 %0, label %switch.lookup, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.exynos3250_jpeg_dec_scaling_ratio, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %do.body

do.body:                                          ; preds = %switch.lookup, %entry.do.body_crit_edge
  %sratio.addr.0 = phi i32 [ 0, %entry.do.body_crit_edge ], [ %switch.load, %switch.lookup ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !67
  tail call void @arm_heavy_mb() #3
  %add.ptr = getelementptr i8, ptr %regs, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %sratio.addr.0) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_set_timer(ptr noundef %regs, i32 noundef %time_value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !68
  tail call void @arm_heavy_mb() #3
  %or = or i32 %time_value, -2147483648
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  %add.ptr = getelementptr i8, ptr %regs, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exynos3250_jpeg_get_timer_status(ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %regs, i32 332
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !69
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos3250_jpeg_clear_timer_status(ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !70
  tail call void @arm_heavy_mb() #3
  %add.ptr = getelementptr i8, ptr %regs, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 128) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

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
!9 = !{i64 2156220484}
!10 = !{i64 694965}
!11 = !{i64 2156221459}
!12 = !{i64 2156221301}
!13 = !{i64 695383}
!14 = !{i64 2156221931}
!15 = !{i64 2156222142}
!16 = !{i64 2156223116}
!17 = !{i64 2156222958}
!18 = !{i64 2156223583}
!19 = !{i64 2156223794}
!20 = !{i64 2156224190}
!21 = !{i64 2156224855}
!22 = !{i64 2156225821}
!23 = !{i64 2156226071}
!24 = !{i64 2156226752}
!25 = !{i64 2156228518}
!26 = !{i64 2156229160}
!27 = !{i64 2156229397}
!28 = !{i64 2156230058}
!29 = !{i64 2156230282}
!30 = !{i64 2156230951}
!31 = !{i64 2156231175}
!32 = !{i64 2156231811}
!33 = !{i64 2156232042}
!34 = !{i64 2156232678}
!35 = !{i64 2156233042}
!36 = !{i64 2156233678}
!37 = !{i64 2156234030}
!38 = !{i64 2156234666}
!39 = !{i64 2156235018}
!40 = !{i64 2156235407}
!41 = !{i64 2156235796}
!42 = !{i64 2156236432}
!43 = !{i64 2156236710}
!44 = !{i64 2156237103}
!45 = !{i64 2156239028}
!46 = !{i64 2156239414}
!47 = !{i64 2156239810}
!48 = !{i64 2156240228}
!49 = !{i64 2156240649}
!50 = !{i64 2156242296}
!51 = !{i64 2156242699}
!52 = !{i64 2156243096}
!53 = !{i64 2156243588}
!54 = !{i64 2156244075}
!55 = !{i64 2156244568}
!56 = !{i64 2156245512}
!57 = !{i64 2156246005}
!58 = !{i64 2156246991}
!59 = !{i64 2156247484}
!60 = !{i64 2156247911}
!61 = !{i64 2156248288}
!62 = !{i64 2156248919}
!63 = !{i64 2156249134}
!64 = !{i64 2156249776}
!65 = !{i64 2156250248}
!66 = !{i64 2156250497}
!67 = !{i64 2156250953}
!68 = !{i64 2156251442}
!69 = !{i64 2156252150}
!70 = !{i64 2156252418}
