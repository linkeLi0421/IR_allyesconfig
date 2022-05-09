; ModuleID = '/llk/IR_all_yes/drivers/media/platform/s5p-g2d/g2d-hw.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-g2d/g2d-hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.g2d_dev = type { %struct.v4l2_device, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.g2d_frame = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32 }
%struct.g2d_fmt = type { i32, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @g2d_reset(ptr nocapture noundef readonly %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %regs = getelementptr inbounds %struct.g2d_dev, ptr %d, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #3, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @g2d_set_src_size(ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %regs = getelementptr inbounds %struct.g2d_dev, ptr %d, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  %stride = getelementptr inbounds %struct.g2d_frame, ptr %f, i32 0, i32 7
  %2 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stride, align 4
  %and = and i32 %3, 65535
  %4 = tail call i32 @llvm.bswap.i32(i32 %and)
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %4) #3, !srcloc !10
  %o_height = getelementptr inbounds %struct.g2d_frame, ptr %f, i32 0, i32 5
  %7 = ptrtoint ptr %o_height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %o_height, align 4
  %and6 = shl i32 %8, 16
  %shl = and i32 %and6, 268369920
  %o_width = getelementptr inbounds %struct.g2d_frame, ptr %f, i32 0, i32 4
  %9 = ptrtoint ptr %o_width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %o_width, align 4
  %and7 = and i32 %10, 4095
  %or = or i32 %shl, %and7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %13, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %11) #3, !srcloc !10
  %bottom = getelementptr inbounds %struct.g2d_frame, ptr %f, i32 0, i32 8
  %14 = ptrtoint ptr %bottom to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bottom, align 4
  %and13 = shl i32 %15, 16
  %shl14 = and i32 %and13, 268369920
  %right = getelementptr inbounds %struct.g2d_frame, ptr %f, i32 0, i32 9
  %16 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %right, align 4
  %and15 = and i32 %17, 4095
  %or16 = or i32 %shl14, %and15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %18 = tail call i32 @llvm.bswap.i32(i32 %or16)
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr21 = getelementptr i8, ptr %20, i32 788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %18) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %fmt = getelementptr inbounds %struct.g2d_frame, ptr %f, i32 0, i32 6
  %21 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fmt, align 4
  %hw = getelementptr inbounds %struct.g2d_fmt, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr26 = getelementptr i8, ptr %27, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %25) #3, !srcloc !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @g2d_set_src_addr(ptr nocapture noundef readonly %d, i32 noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %a)
  %regs = getelementptr inbounds %struct.g2d_dev, ptr %d, i32 0, i32 6
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @g2d_set_dst_size(ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %regs = getelementptr inbounds %struct.g2d_dev, ptr %d, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %stride = getelementptr inbounds %struct.g2d_frame, ptr %f, i32 0, i32 7
  %2 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stride, align 4
  %and = and i32 %3, 65535
  %4 = tail call i32 @llvm.bswap.i32(i32 %and)
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %4) #3, !srcloc !10
  %o_height = getelementptr inbounds %struct.g2d_frame, ptr %f, i32 0, i32 5
  %7 = ptrtoint ptr %o_height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %o_height, align 4
  %and6 = shl i32 %8, 16
  %shl = and i32 %and6, 268369920
  %o_width = getelementptr inbounds %struct.g2d_frame, ptr %f, i32 0, i32 4
  %9 = ptrtoint ptr %o_width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %o_width, align 4
  %and7 = and i32 %10, 4095
  %or = or i32 %shl, %and7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %13, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %11) #3, !srcloc !10
  %bottom = getelementptr inbounds %struct.g2d_frame, ptr %f, i32 0, i32 8
  %14 = ptrtoint ptr %bottom to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bottom, align 4
  %and13 = shl i32 %15, 16
  %shl14 = and i32 %and13, 268369920
  %right = getelementptr inbounds %struct.g2d_frame, ptr %f, i32 0, i32 9
  %16 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %right, align 4
  %and15 = and i32 %17, 4095
  %or16 = or i32 %shl14, %and15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  %18 = tail call i32 @llvm.bswap.i32(i32 %or16)
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr21 = getelementptr i8, ptr %20, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %18) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %fmt = getelementptr inbounds %struct.g2d_frame, ptr %f, i32 0, i32 6
  %21 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fmt, align 4
  %hw = getelementptr inbounds %struct.g2d_fmt, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr26 = getelementptr i8, ptr %27, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %25) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @g2d_set_dst_addr(ptr nocapture noundef readonly %d, i32 noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %a)
  %regs = getelementptr inbounds %struct.g2d_dev, ptr %d, i32 0, i32 6
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @g2d_set_rop4(ptr nocapture noundef readonly %d, i32 noundef %r) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %r)
  %regs = getelementptr inbounds %struct.g2d_dev, ptr %d, i32 0, i32 6
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 1556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @g2d_set_flip(ptr nocapture noundef readonly %d, i32 noundef %r) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %r)
  %regs = getelementptr inbounds %struct.g2d_dev, ptr %d, i32 0, i32 6
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @g2d_set_v41_stretch(ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %dst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %regs = getelementptr inbounds %struct.g2d_dev, ptr %d, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %c_width = getelementptr inbounds %struct.g2d_frame, ptr %src, i32 0, i32 2
  %2 = ptrtoint ptr %c_width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_width, align 4
  %shl = shl i32 %3, 16
  %c_width3 = getelementptr inbounds %struct.g2d_frame, ptr %dst, i32 0, i32 2
  %4 = ptrtoint ptr %c_width3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_width3, align 4
  %div = udiv i32 %shl, %5
  %6 = tail call i32 @llvm.bswap.i32(i32 %div)
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %6) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %c_height = getelementptr inbounds %struct.g2d_frame, ptr %src, i32 0, i32 3
  %9 = ptrtoint ptr %c_height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %c_height, align 4
  %shl8 = shl i32 %10, 16
  %c_height9 = getelementptr inbounds %struct.g2d_frame, ptr %dst, i32 0, i32 3
  %11 = ptrtoint ptr %c_height9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %c_height9, align 4
  %div10 = udiv i32 %shl8, %12
  %13 = tail call i32 @llvm.bswap.i32(i32 %div10)
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %15, i32 816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %13) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @g2d_set_cmd(ptr nocapture noundef readonly %d, i32 noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %c)
  %regs = getelementptr inbounds %struct.g2d_dev, ptr %d, i32 0, i32 6
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @g2d_start(ptr nocapture noundef readonly %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.g2d_dev, ptr %d, i32 0, i32 10
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp = icmp eq i16 %3, 3
  br i1 %cmp, label %do.body, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body2

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  tail call void @arm_heavy_mb() #3
  %regs = getelementptr inbounds %struct.g2d_dev, ptr %d, i32 0, i32 6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 117440512) #3, !srcloc !10
  br label %do.body2

do.body2:                                         ; preds = %do.body, %entry.do.body2_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  tail call void @arm_heavy_mb() #3
  %regs4 = getelementptr inbounds %struct.g2d_dev, ptr %d, i32 0, i32 6
  %6 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs4, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 16777216) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  %8 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs4, align 4
  %add.ptr9 = getelementptr i8, ptr %9, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 16777216) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @g2d_clear_int(ptr nocapture noundef readonly %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  tail call void @arm_heavy_mb() #3
  %regs = getelementptr inbounds %struct.g2d_dev, ptr %d, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
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
!9 = !{i64 2156190069}
!10 = !{i64 685293}
!11 = !{i64 2156190515}
!12 = !{i64 2156190995}
!13 = !{i64 2156191492}
!14 = !{i64 2156191938}
!15 = !{i64 2156192402}
!16 = !{i64 2156192875}
!17 = !{i64 2156193321}
!18 = !{i64 2156193801}
!19 = !{i64 2156194298}
!20 = !{i64 2156194744}
!21 = !{i64 2156195208}
!22 = !{i64 2156195681}
!23 = !{i64 2156196127}
!24 = !{i64 2156196573}
!25 = !{i64 2156197042}
!26 = !{i64 2156197577}
!27 = !{i64 2156198197}
!28 = !{i64 2156198751}
!29 = !{i64 2156199203}
!30 = !{i64 2156199655}
!31 = !{i64 2156200101}
!32 = !{i64 2156200547}
