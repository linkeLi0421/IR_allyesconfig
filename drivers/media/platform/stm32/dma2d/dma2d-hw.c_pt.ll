; ModuleID = '/llk/IR_all_yes/drivers/media/platform/stm32/dma2d/dma2d-hw.c_pt.bc'
source_filename = "../drivers/media/platform/stm32/dma2d/dma2d-hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dma2d_dev = type { %struct.v4l2_device, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.atomic_t, ptr, ptr, ptr, i32 }
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
%struct.dma2d_frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, [4 x i8], i32, i32, i32 }
%struct.dma2d_fmt = type { i32, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma2d_start(ptr nocapture noundef readonly %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dma2d_dev, ptr %d, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #2, !srcloc !9
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %3) #2, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma2d_get_int(ptr nocapture noundef readonly %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dma2d_dev, ptr %d, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #2, !srcloc !9
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #2
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma2d_clear_int(ptr nocapture noundef readonly %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dma2d_dev, ptr %d, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #2, !srcloc !9
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %and = and i32 %2, 1056964608
  %add.ptr.i3 = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %and) #2, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma2d_config_common(ptr nocapture noundef readonly %d, i32 noundef %op_mode, i16 noundef zeroext %width, i16 noundef zeroext %height) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dma2d_dev, ptr %d, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %shl = shl i32 %op_mode, 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #2, !srcloc !9
  %3 = and i32 %2, -769
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or.i = or i32 %4, %shl
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %5) #2, !srcloc !10
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %conv = zext i16 %width to i32
  %shl2 = shl nuw i32 %conv, 16
  %conv3 = zext i16 %height to i32
  %or = or i32 %shl2, %conv3
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #2
  %add.ptr.i = getelementptr i8, ptr %7, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #2, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma2d_config_out(ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %frm, i32 noundef %o_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dma2d_dev, ptr %d, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #2, !srcloc !9
  %3 = or i32 %2, 2097152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %3) #2, !srcloc !10
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !9
  %7 = or i32 %6, 1048576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %7) #2, !srcloc !10
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #2, !srcloc !9
  %11 = or i32 %10, 524288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %11) #2, !srcloc !10
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #2, !srcloc !9
  %15 = or i32 %14, 131072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %15) #2, !srcloc !10
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #2, !srcloc !9
  %19 = or i32 %18, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %19) #2, !srcloc !10
  %fmt = getelementptr inbounds %struct.dma2d_frame, ptr %frm, i32 0, i32 9
  %20 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fmt, align 4
  %cmode = getelementptr inbounds %struct.dma2d_fmt, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %cmode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %23)
  %cmp7 = icmp ult i32 %23, 5
  br i1 %cmp7, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 52
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #2, !srcloc !9
  %27 = and i32 %26, -117440513
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %or.i52 = or i32 %28, %23
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i52) #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %29) #2, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %o_addr) #2
  %add.ptr.i = getelementptr i8, ptr %31, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %32) #2, !srcloc !10
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %a_rgb = getelementptr inbounds %struct.dma2d_frame, ptr %frm, i32 0, i32 10
  %arrayidx = getelementptr %struct.dma2d_frame, ptr %frm, i32 0, i32 10, i32 3
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %36 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx14 = getelementptr %struct.dma2d_frame, ptr %frm, i32 0, i32 10, i32 2
  %37 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx14, align 2
  %conv15 = zext i8 %38 to i32
  %shl16 = shl nuw nsw i32 %conv15, 16
  %or = or i32 %shl16, %shl
  %arrayidx18 = getelementptr %struct.dma2d_frame, ptr %frm, i32 0, i32 10, i32 1
  %39 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %40 to i32
  %shl20 = shl nuw nsw i32 %conv19, 8
  %or21 = or i32 %or, %shl20
  %41 = ptrtoint ptr %a_rgb to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %a_rgb, align 4
  %conv24 = zext i8 %42 to i32
  %or25 = or i32 %or21, %conv24
  %43 = tail call i32 @llvm.bswap.i32(i32 %or25) #2
  %add.ptr.i53 = getelementptr i8, ptr %34, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %43) #2, !srcloc !10
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %line_offset = getelementptr inbounds %struct.dma2d_frame, ptr %frm, i32 0, i32 8
  %46 = ptrtoint ptr %line_offset to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %line_offset, align 4
  %48 = and i16 %47, 16383
  %and = zext i16 %48 to i32
  %add.ptr.i.i54 = getelementptr i8, ptr %45, i32 64
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i54) #2, !srcloc !9
  %50 = and i32 %49, 12648447
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %or.i56 = or i32 %51, %and
  %52 = tail call i32 @llvm.bswap.i32(i32 %or.i56) #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i54, i32 %52) #2, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma2d_config_fg(ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %frm, i32 noundef %f_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dma2d_dev, ptr %d, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %f_addr) #2
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #2, !srcloc !10
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %line_offset = getelementptr inbounds %struct.dma2d_frame, ptr %frm, i32 0, i32 8
  %5 = ptrtoint ptr %line_offset to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %line_offset, align 4
  %conv = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #2, !srcloc !9
  %8 = and i32 %7, 12648447
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %or.i = or i32 %9, %conv
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #2, !srcloc !10
  %fmt = getelementptr inbounds %struct.dma2d_frame, ptr %frm, i32 0, i32 9
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fmt, align 4
  %cmode = getelementptr inbounds %struct.dma2d_fmt, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %cmode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %14)
  %cmp5 = icmp ult i32 %14, 11
  br i1 %cmp5, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr.i.i40 = getelementptr i8, ptr %16, i32 28
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i40) #2, !srcloc !9
  %18 = and i32 %17, -251658241
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %or.i42 = or i32 %19, %14
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i42) #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i40, i32 %20) #2, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %add.ptr.i.i43 = getelementptr i8, ptr %22, i32 28
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43) #2, !srcloc !9
  %24 = and i32 %23, -769
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i43, i32 %24) #2, !srcloc !10
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %a_rgb = getelementptr inbounds %struct.dma2d_frame, ptr %frm, i32 0, i32 10
  %arrayidx = getelementptr %struct.dma2d_frame, ptr %frm, i32 0, i32 10, i32 3
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %conv12 = zext i8 %28 to i32
  %shl13 = shl nuw i32 %conv12, 24
  %add.ptr.i.i45 = getelementptr i8, ptr %26, i32 28
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i45) #2, !srcloc !9
  %30 = and i32 %29, -256
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %or.i47 = or i32 %31, %shl13
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i47) #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i45, i32 %32) #2, !srcloc !10
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %arrayidx16 = getelementptr %struct.dma2d_frame, ptr %frm, i32 0, i32 10, i32 2
  %35 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx16, align 2
  %conv17 = zext i8 %36 to i32
  %shl18 = shl nuw nsw i32 %conv17, 16
  %arrayidx20 = getelementptr %struct.dma2d_frame, ptr %frm, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %38 to i32
  %shl22 = shl nuw nsw i32 %conv21, 8
  %or = or i32 %shl22, %shl18
  %39 = ptrtoint ptr %a_rgb to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %a_rgb, align 4
  %conv25 = zext i8 %40 to i32
  %or26 = or i32 %or, %conv25
  %41 = tail call i32 @llvm.bswap.i32(i32 %or26) #2
  %add.ptr.i48 = getelementptr i8, ptr %34, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %41) #2, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma2d_config_bg(ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %frm, i32 noundef %b_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dma2d_dev, ptr %d, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %b_addr) #2
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #2, !srcloc !10
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %line_offset = getelementptr inbounds %struct.dma2d_frame, ptr %frm, i32 0, i32 8
  %5 = ptrtoint ptr %line_offset to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %line_offset, align 4
  %conv = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #2, !srcloc !9
  %8 = and i32 %7, 12648447
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %or.i = or i32 %9, %conv
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #2, !srcloc !10
  %fmt = getelementptr inbounds %struct.dma2d_frame, ptr %frm, i32 0, i32 9
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fmt, align 4
  %cmode = getelementptr inbounds %struct.dma2d_fmt, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %cmode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %14)
  %cmp5 = icmp ult i32 %14, 11
  br i1 %cmp5, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr.i.i40 = getelementptr i8, ptr %16, i32 36
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i40) #2, !srcloc !9
  %18 = and i32 %17, -251658241
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %or.i42 = or i32 %19, %14
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i42) #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i40, i32 %20) #2, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %add.ptr.i.i43 = getelementptr i8, ptr %22, i32 36
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43) #2, !srcloc !9
  %24 = and i32 %23, -769
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i43, i32 %24) #2, !srcloc !10
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %a_rgb = getelementptr inbounds %struct.dma2d_frame, ptr %frm, i32 0, i32 10
  %arrayidx = getelementptr %struct.dma2d_frame, ptr %frm, i32 0, i32 10, i32 3
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %conv12 = zext i8 %28 to i32
  %shl13 = shl nuw i32 %conv12, 24
  %add.ptr.i.i45 = getelementptr i8, ptr %26, i32 36
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i45) #2, !srcloc !9
  %30 = and i32 %29, -256
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %or.i47 = or i32 %31, %shl13
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i47) #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i45, i32 %32) #2, !srcloc !10
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %arrayidx16 = getelementptr %struct.dma2d_frame, ptr %frm, i32 0, i32 10, i32 2
  %35 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx16, align 2
  %conv17 = zext i8 %36 to i32
  %shl18 = shl nuw nsw i32 %conv17, 16
  %arrayidx20 = getelementptr %struct.dma2d_frame, ptr %frm, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %38 to i32
  %shl22 = shl nuw nsw i32 %conv21, 8
  %or = or i32 %shl22, %shl18
  %39 = ptrtoint ptr %a_rgb to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %a_rgb, align 4
  %conv25 = zext i8 %40 to i32
  %or26 = or i32 %or, %conv25
  %41 = tail call i32 @llvm.bswap.i32(i32 %or26) #2
  %add.ptr.i48 = getelementptr i8, ptr %34, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %41) #2, !srcloc !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

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
!9 = !{i64 687131}
!10 = !{i64 686713}
