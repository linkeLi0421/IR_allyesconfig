; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/aty/mach64_accel.c_pt.bc'
source_filename = "../drivers/video/fbdev/aty/mach64_accel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atyfb_par = type { [16 x i32], [256 x %struct.anon], ptr, ptr, ptr, i32, %struct.crtc, %union.aty_pll, %struct.pll_info, i32, i32, i32, i32, i32, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, %struct.aty_interrupt, i32, i32, %struct.spinlock, i32, i32, %struct.crtc, %union.aty_pll }
%struct.anon = type { i8, i8, i8 }
%struct.pll_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aty_interrupt = type { %struct.wait_queue_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.crtc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.aty_pll = type { %struct.pll_ct }
%struct.pll_ct = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.79, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.79 = type { ptr }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.1 = internal global [8 x i64] [i64 6, i64 8, i64 4, i64 8, i64 15, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aty_reset_engine(ptr nocapture noundef %par) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 208
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %3 = and i32 %2, 2147418111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %5, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %3) #4, !srcloc !12
  %6 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %7, i32 208
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %9 = or i32 %8, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %11, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %9) #4, !srcloc !12
  %12 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %13, i32 160
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %15 = or i32 %14, 40960
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %17, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %15) #4, !srcloc !12
  %fifo_space = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 20
  %18 = ptrtoint ptr %fifo_space to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %fifo_space, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aty_init_engine(ptr noundef %par, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %0 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %line_length, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  %div71 = lshr i32 %3, 3
  %div1 = udiv i32 %1, %div71
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %3)
  %cmp = icmp eq i32 %3, 24
  %mul = mul i32 %div1, 3
  %mul5 = mul i32 %5, 3
  %pitch_value.0 = select i1 %cmp, i32 %mul, i32 %div1
  %vxres.0 = select i1 %cmp, i32 %mul5, i32 %5
  %features = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 9
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %features, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then6

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %ati_regbase.i.i = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 4
  %8 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1073741824) #4, !srcloc !12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %13 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %14, i32 -252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 0) #4, !srcloc !12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %19, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 0) #4, !srcloc !12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %entry.if.end7_crit_edge
  %ati_regbase.i.i73 = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 4
  %23 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i.i74 = getelementptr i8, ptr %24, i32 208
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i74) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %26 = and i32 %25, 2147418111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %27 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %28, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %26) #4, !srcloc !12
  %29 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %30, i32 208
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %32 = or i32 %31, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %33 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i16.i75 = getelementptr i8, ptr %34, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i75, i32 %32) #4, !srcloc !12
  %35 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i18.i76 = getelementptr i8, ptr %36, i32 160
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i76) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %38 = or i32 %37, 40960
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %39 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %40, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %38) #4, !srcloc !12
  %fifo_space.i = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 20
  %41 = ptrtoint ptr %fifo_space.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %fifo_space.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %42 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 256) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %44 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i78 = getelementptr i8, ptr %45, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 256) #4, !srcloc !12
  %46 = ptrtoint ptr %fifo_space.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fifo_space.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %47)
  %cmp11.i = icmp ult i32 %47, 14
  br i1 %cmp11.i, label %if.end7.while.body.i_crit_edge, label %if.end7.wait_for_fifo.exit_crit_edge

if.end7.wait_for_fifo.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit

if.end7.while.body.i_crit_edge:                   ; preds = %if.end7
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end7.while.body.i_crit_edge
  %48 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %49, i32 784
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i80) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %51 = and i32 %50, -65536
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i = icmp eq i32 %51, 0
  %53 = tail call i32 @llvm.ctlz.i32(i32 %52, i1 true) #4, !range !13
  %sub.i.neg.op.i = add nsw i32 %53, -16
  %sub.i = select i1 %tobool.not.i.i, i32 16, i32 %sub.i.neg.op.i
  %cmp.i = icmp ult i32 %sub.i, 14
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.wait_for_fifo.exit_crit_edge

while.body.i.wait_for_fifo.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

wait_for_fifo.exit:                               ; preds = %while.body.i.wait_for_fifo.exit_crit_edge, %if.end7.wait_for_fifo.exit_crit_edge
  %fifo_space.0.lcssa.i = phi i32 [ %47, %if.end7.wait_for_fifo.exit_crit_edge ], [ %sub.i, %while.body.i.wait_for_fifo.exit_crit_edge ]
  %sub5.i = add i32 %fifo_space.0.lcssa.i, -14
  %54 = ptrtoint ptr %fifo_space.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub5.i, ptr %fifo_space.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %55 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i82 = getelementptr i8, ptr %56, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 -1) #4, !srcloc !12
  %57 = shl i32 %pitch_value.0, 19
  %shl = and i32 %57, -4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %58 = tail call i32 @llvm.bswap.i32(i32 %shl) #4
  %59 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i84 = getelementptr i8, ptr %60, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 %58) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %61 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i86 = getelementptr i8, ptr %62, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 0) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %63 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i88 = getelementptr i8, ptr %64, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 0) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %65 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i90 = getelementptr i8, ptr %66, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 0) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %67 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i92 = getelementptr i8, ptr %68, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 0) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %69 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i94 = getelementptr i8, ptr %70, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 0) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %71 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i96 = getelementptr i8, ptr %72, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 587202560) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %73 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i98 = getelementptr i8, ptr %74, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 %58) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %75 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i100 = getelementptr i8, ptr %76, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 0) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %77 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i102 = getelementptr i8, ptr %78, i32 408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 16777216) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %79 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i104 = getelementptr i8, ptr %80, i32 420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 0) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %81 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i106 = getelementptr i8, ptr %82, i32 432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 16777216) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %83 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i108 = getelementptr i8, ptr %84, i32 436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 268435456) #4, !srcloc !12
  %85 = ptrtoint ptr %fifo_space.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fifo_space.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %86)
  %cmp11.i110 = icmp ult i32 %86, 13
  br i1 %cmp11.i110, label %wait_for_fifo.exit.while.body.i118_crit_edge, label %wait_for_fifo.exit.wait_for_fifo.exit121_crit_edge

wait_for_fifo.exit.wait_for_fifo.exit121_crit_edge: ; preds = %wait_for_fifo.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit121

wait_for_fifo.exit.while.body.i118_crit_edge:     ; preds = %wait_for_fifo.exit
  br label %while.body.i118

while.body.i118:                                  ; preds = %while.body.i118.while.body.i118_crit_edge, %wait_for_fifo.exit.while.body.i118_crit_edge
  %87 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i.i113 = getelementptr i8, ptr %88, i32 784
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i113) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %90 = and i32 %89, -65536
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i.i114 = icmp eq i32 %90, 0
  %92 = tail call i32 @llvm.ctlz.i32(i32 %91, i1 true) #4, !range !13
  %sub.i.neg.op.i115 = add nsw i32 %92, -16
  %sub.i116 = select i1 %tobool.not.i.i114, i32 16, i32 %sub.i.neg.op.i115
  %cmp.i117 = icmp ult i32 %sub.i116, 13
  br i1 %cmp.i117, label %while.body.i118.while.body.i118_crit_edge, label %while.body.i118.wait_for_fifo.exit121_crit_edge

while.body.i118.wait_for_fifo.exit121_crit_edge:  ; preds = %while.body.i118
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit121

while.body.i118.while.body.i118_crit_edge:        ; preds = %while.body.i118
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i118

wait_for_fifo.exit121:                            ; preds = %while.body.i118.wait_for_fifo.exit121_crit_edge, %wait_for_fifo.exit.wait_for_fifo.exit121_crit_edge
  %fifo_space.0.lcssa.i119 = phi i32 [ %86, %wait_for_fifo.exit.wait_for_fifo.exit121_crit_edge ], [ %sub.i116, %while.body.i118.wait_for_fifo.exit121_crit_edge ]
  %sub5.i120 = add i32 %fifo_space.0.lcssa.i119, -13
  %93 = ptrtoint ptr %fifo_space.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %sub5.i120, ptr %fifo_space.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %94 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i123 = getelementptr i8, ptr %95, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 16777216) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %96 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i125 = getelementptr i8, ptr %97, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 0) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %98 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i127 = getelementptr i8, ptr %99, i32 644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 0) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %100 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i129 = getelementptr i8, ptr %101, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 0) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %102 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i131 = getelementptr i8, ptr %103, i32 672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 0) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %104 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i133 = getelementptr i8, ptr %105, i32 684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 0) #4, !srcloc !12
  %vyres = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 6, i32 1
  %106 = ptrtoint ptr %vyres to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %vyres, align 4
  %sub = add i32 %107, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %108 = tail call i32 @llvm.bswap.i32(i32 %sub) #4
  %109 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i135 = getelementptr i8, ptr %110, i32 688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %108) #4, !srcloc !12
  %sub11 = add i32 %vxres.0, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %111 = tail call i32 @llvm.bswap.i32(i32 %sub11) #4
  %112 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i137 = getelementptr i8, ptr %113, i32 676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137, i32 %111) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %114 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i139 = getelementptr i8, ptr %115, i32 704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 0) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %116 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i141 = getelementptr i8, ptr %117, i32 708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 -1) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %118 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i143 = getelementptr i8, ptr %119, i32 712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 -1) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %120 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i145 = getelementptr i8, ptr %121, i32 724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145, i32 50333440) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %122 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i147 = getelementptr i8, ptr %123, i32 728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 65536) #4, !srcloc !12
  %124 = ptrtoint ptr %fifo_space.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %fifo_space.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %125)
  %cmp11.i149 = icmp ult i32 %125, 3
  br i1 %cmp11.i149, label %wait_for_fifo.exit121.while.body.i157_crit_edge, label %wait_for_fifo.exit121.wait_for_fifo.exit160_crit_edge

wait_for_fifo.exit121.wait_for_fifo.exit160_crit_edge: ; preds = %wait_for_fifo.exit121
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit160

wait_for_fifo.exit121.while.body.i157_crit_edge:  ; preds = %wait_for_fifo.exit121
  br label %while.body.i157

while.body.i157:                                  ; preds = %while.body.i157.while.body.i157_crit_edge, %wait_for_fifo.exit121.while.body.i157_crit_edge
  %126 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i.i152 = getelementptr i8, ptr %127, i32 784
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i152) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %129 = and i32 %128, -65536
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.not.i.i153 = icmp eq i32 %129, 0
  %131 = tail call i32 @llvm.ctlz.i32(i32 %130, i1 true) #4, !range !13
  %sub.i.neg.op.i154 = add nsw i32 %131, -16
  %sub.i155 = select i1 %tobool.not.i.i153, i32 16, i32 %sub.i.neg.op.i154
  %cmp.i156 = icmp ult i32 %sub.i155, 3
  br i1 %cmp.i156, label %while.body.i157.while.body.i157_crit_edge, label %while.body.i157.wait_for_fifo.exit160_crit_edge

while.body.i157.wait_for_fifo.exit160_crit_edge:  ; preds = %while.body.i157
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit160

while.body.i157.while.body.i157_crit_edge:        ; preds = %while.body.i157
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i157

wait_for_fifo.exit160:                            ; preds = %while.body.i157.wait_for_fifo.exit160_crit_edge, %wait_for_fifo.exit121.wait_for_fifo.exit160_crit_edge
  %fifo_space.0.lcssa.i158 = phi i32 [ %125, %wait_for_fifo.exit121.wait_for_fifo.exit160_crit_edge ], [ %sub.i155, %while.body.i157.wait_for_fifo.exit160_crit_edge ]
  %sub5.i159 = add i32 %fifo_space.0.lcssa.i158, -3
  %132 = ptrtoint ptr %fifo_space.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %sub5.i159, ptr %fifo_space.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %133 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i162 = getelementptr i8, ptr %134, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 0) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %135 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i164 = getelementptr i8, ptr %136, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164, i32 -1) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %137 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i166 = getelementptr i8, ptr %138, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166, i32 0) #4, !srcloc !12
  %139 = ptrtoint ptr %fifo_space.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %fifo_space.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %140)
  %cmp11.i168 = icmp ult i32 %140, 2
  br i1 %cmp11.i168, label %wait_for_fifo.exit160.while.body.i176_crit_edge, label %wait_for_fifo.exit160.wait_for_fifo.exit179_crit_edge

wait_for_fifo.exit160.wait_for_fifo.exit179_crit_edge: ; preds = %wait_for_fifo.exit160
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit179

wait_for_fifo.exit160.while.body.i176_crit_edge:  ; preds = %wait_for_fifo.exit160
  br label %while.body.i176

while.body.i176:                                  ; preds = %while.body.i176.while.body.i176_crit_edge, %wait_for_fifo.exit160.while.body.i176_crit_edge
  %141 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i.i171 = getelementptr i8, ptr %142, i32 784
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i171) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %144 = and i32 %143, -65536
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool.not.i.i172 = icmp eq i32 %144, 0
  %146 = tail call i32 @llvm.ctlz.i32(i32 %145, i1 true) #4, !range !13
  %sub.i.neg.op.i173 = add nsw i32 %146, -16
  %sub.i174 = select i1 %tobool.not.i.i172, i32 16, i32 %sub.i.neg.op.i173
  %cmp.i175 = icmp ult i32 %sub.i174, 2
  br i1 %cmp.i175, label %while.body.i176.while.body.i176_crit_edge, label %while.body.i176.wait_for_fifo.exit179_crit_edge

while.body.i176.wait_for_fifo.exit179_crit_edge:  ; preds = %while.body.i176
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit179

while.body.i176.while.body.i176_crit_edge:        ; preds = %while.body.i176
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i176

wait_for_fifo.exit179:                            ; preds = %while.body.i176.wait_for_fifo.exit179_crit_edge, %wait_for_fifo.exit160.wait_for_fifo.exit179_crit_edge
  %fifo_space.0.lcssa.i177 = phi i32 [ %140, %wait_for_fifo.exit160.wait_for_fifo.exit179_crit_edge ], [ %sub.i174, %while.body.i176.wait_for_fifo.exit179_crit_edge ]
  %sub5.i178 = add i32 %fifo_space.0.lcssa.i177, -2
  %147 = ptrtoint ptr %fifo_space.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %sub5.i178, ptr %fifo_space.i, align 4
  %dp_pix_width = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 6, i32 12
  %148 = ptrtoint ptr %dp_pix_width to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %dp_pix_width, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #4
  %151 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i181 = getelementptr i8, ptr %152, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i181, i32 %150) #4, !srcloc !12
  %dp_chain_mask = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 6, i32 13
  %153 = ptrtoint ptr %dp_chain_mask to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %dp_chain_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #4
  %156 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i183 = getelementptr i8, ptr %157, i32 716
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183, i32 %155) #4, !srcloc !12
  %158 = ptrtoint ptr %fifo_space.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %fifo_space.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %159)
  %cmp11.i185 = icmp ult i32 %159, 5
  br i1 %cmp11.i185, label %wait_for_fifo.exit179.while.body.i193_crit_edge, label %wait_for_fifo.exit179.wait_for_fifo.exit196_crit_edge

wait_for_fifo.exit179.wait_for_fifo.exit196_crit_edge: ; preds = %wait_for_fifo.exit179
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit196

wait_for_fifo.exit179.while.body.i193_crit_edge:  ; preds = %wait_for_fifo.exit179
  br label %while.body.i193

while.body.i193:                                  ; preds = %while.body.i193.while.body.i193_crit_edge, %wait_for_fifo.exit179.while.body.i193_crit_edge
  %160 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i.i188 = getelementptr i8, ptr %161, i32 784
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i188) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %163 = and i32 %162, -65536
  %164 = tail call i32 @llvm.bswap.i32(i32 %163) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool.not.i.i189 = icmp eq i32 %163, 0
  %165 = tail call i32 @llvm.ctlz.i32(i32 %164, i1 true) #4, !range !13
  %sub.i.neg.op.i190 = add nsw i32 %165, -16
  %sub.i191 = select i1 %tobool.not.i.i189, i32 16, i32 %sub.i.neg.op.i190
  %cmp.i192 = icmp ult i32 %sub.i191, 5
  br i1 %cmp.i192, label %while.body.i193.while.body.i193_crit_edge, label %while.body.i193.wait_for_fifo.exit196_crit_edge

while.body.i193.wait_for_fifo.exit196_crit_edge:  ; preds = %while.body.i193
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit196

while.body.i193.while.body.i193_crit_edge:        ; preds = %while.body.i193
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i193

wait_for_fifo.exit196:                            ; preds = %while.body.i193.wait_for_fifo.exit196_crit_edge, %wait_for_fifo.exit179.wait_for_fifo.exit196_crit_edge
  %fifo_space.0.lcssa.i194 = phi i32 [ %159, %wait_for_fifo.exit179.wait_for_fifo.exit196_crit_edge ], [ %sub.i191, %while.body.i193.wait_for_fifo.exit196_crit_edge ]
  %sub5.i195 = add i32 %fifo_space.0.lcssa.i194, -5
  %166 = ptrtoint ptr %fifo_space.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %sub5.i195, ptr %fifo_space.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %167 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i198 = getelementptr i8, ptr %168, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 0) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %169 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i200 = getelementptr i8, ptr %170, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i200, i32 0) #4, !srcloc !12
  %171 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i202 = getelementptr i8, ptr %172, i32 24
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i202) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %174 = and i32 %173, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %175 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i204 = getelementptr i8, ptr %176, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204, i32 %174) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %177 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i206 = getelementptr i8, ptr %178, i32 816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 587206656) #4, !srcloc !12
  %179 = ptrtoint ptr %fifo_space.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %fifo_space.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %180)
  %cmp11.i.i = icmp ult i32 %180, 16
  br i1 %cmp11.i.i, label %wait_for_fifo.exit196.while.body.i.i_crit_edge, label %wait_for_fifo.exit196.wait_for_fifo.exit.i_crit_edge

wait_for_fifo.exit196.wait_for_fifo.exit.i_crit_edge: ; preds = %wait_for_fifo.exit196
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit.i

wait_for_fifo.exit196.while.body.i.i_crit_edge:   ; preds = %wait_for_fifo.exit196
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %wait_for_fifo.exit196.while.body.i.i_crit_edge
  %181 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %182, i32 784
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %184 = and i32 %183, -65536
  %185 = tail call i32 @llvm.bswap.i32(i32 %184) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool.not.i.i.i = icmp eq i32 %184, 0
  %186 = tail call i32 @llvm.ctlz.i32(i32 %185, i1 true) #4, !range !13
  %sub.i.neg.op.i.i = add nsw i32 %186, -16
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 16, i32 %sub.i.neg.op.i.i
  %cmp.i.i = icmp ult i32 %sub.i.i, 16
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.wait_for_fifo.exit.i_crit_edge

while.body.i.i.wait_for_fifo.exit.i_crit_edge:    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

wait_for_fifo.exit.i:                             ; preds = %while.body.i.i.wait_for_fifo.exit.i_crit_edge, %wait_for_fifo.exit196.wait_for_fifo.exit.i_crit_edge
  %fifo_space.0.lcssa.i.i = phi i32 [ %180, %wait_for_fifo.exit196.wait_for_fifo.exit.i_crit_edge ], [ %sub.i.i, %while.body.i.i.wait_for_fifo.exit.i_crit_edge ]
  %sub5.i.i = add i32 %fifo_space.0.lcssa.i.i, -16
  %187 = ptrtoint ptr %fifo_space.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %sub5.i.i, ptr %fifo_space.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %wait_for_fifo.exit.i
  %188 = ptrtoint ptr %ati_regbase.i.i73 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %ati_regbase.i.i73, align 4
  %add.ptr.i.i208 = getelementptr i8, ptr %189, i32 824
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i208) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %191 = and i32 %190, 16777216
  %cmp.not.i = icmp eq i32 %191, 0
  br i1 %cmp.not.i, label %wait_for_idle.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

wait_for_idle.exit:                               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  %blitter_may_be_busy.i = getelementptr inbounds %struct.atyfb_par, ptr %par, i32 0, i32 19
  %192 = ptrtoint ptr %blitter_may_be_busy.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %blitter_may_be_busy.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atyfb_copyarea(ptr noundef %info, ptr noundef %area) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %dy2 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %2 = ptrtoint ptr %dy2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dy2, align 4
  %sy3 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %4 = ptrtoint ptr %sy3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sy3, align 4
  %sx4 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 4
  %6 = ptrtoint ptr %sx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sx4, align 4
  %8 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %area, align 4
  %width6 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %10 = ptrtoint ptr %width6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width6, align 4
  %asleep = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %asleep to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %asleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp ne i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %height = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  br i1 %tobool9.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end11

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %accel_flags = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 18
  %16 = ptrtoint ptr %accel_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %accel_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.not = icmp eq i32 %17, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @cfb_copyarea(ptr noundef %info, ptr noundef %area) #4
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %18 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %19)
  %cmp = icmp eq i32 %19, 24
  %mul = mul i32 %7, 3
  %mul16 = mul i32 %9, 3
  %mul17 = mul i32 %11, 3
  %sx.0 = select i1 %cmp, i32 %mul, i32 %7
  %dx.0 = select i1 %cmp, i32 %mul16, i32 %9
  %width.0 = select i1 %cmp, i32 %mul17, i32 %11
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp21 = icmp ult i32 %5, %3
  %sub = add i32 %15, -1
  %add = select i1 %cmp21, i32 %sub, i32 0
  %dy.0 = add i32 %add, %3
  %sy.0 = add i32 %add, %5
  %direction.0 = select i1 %cmp21, i32 32, i32 34
  call void @__sanitizer_cov_trace_cmp4(i32 %sx.0, i32 %dx.0)
  %cmp28 = icmp ult i32 %sx.0, %dx.0
  %sub30 = add i32 %width.0, -1
  %not.cmp28 = xor i1 %cmp28, true
  %or35 = zext i1 %not.cmp28 to i32
  %direction.1 = or i32 %direction.0, %or35
  %add33 = select i1 %cmp28, i32 %sub30, i32 0
  %sx.1 = add i32 %add33, %sx.0
  %dx.1 = add i32 %add33, %dx.0
  br i1 %cmp, label %if.then40, label %if.end14.if.end41_crit_edge

if.end14.if.end41_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then40:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %add.i = add i32 %dx.1, 2
  %rotation.0.in.in.i = select i1 %cmp28, i32 %add.i, i32 %dx.1
  %rotation.0.in.i = lshr i32 %rotation.0.in.in.i, 2
  %rotation.0.i = urem i32 %rotation.0.in.i, 6
  %shl.i = shl nuw nsw i32 %rotation.0.i, 8
  %or.i = or i32 %shl.i, 128
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end14.if.end41_crit_edge
  %rotation.0 = phi i32 [ %or.i, %if.then40 ], [ 0, %if.end14.if.end41_crit_edge ]
  %fifo_space1.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 20
  %20 = ptrtoint ptr %fifo_space1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fifo_space1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %cmp11.i = icmp ult i32 %21, 5
  br i1 %cmp11.i, label %while.body.lr.ph.i, label %if.end41.wait_for_fifo.exit_crit_edge

if.end41.wait_for_fifo.exit_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit

while.body.lr.ph.i:                               ; preds = %if.end41
  %ati_regbase.i.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %22 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 784
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %25 = and i32 %24, -65536
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i = icmp eq i32 %25, 0
  %27 = tail call i32 @llvm.ctlz.i32(i32 %26, i1 true) #4, !range !13
  %sub.i.neg.op.i = add nsw i32 %27, -16
  %sub.i = select i1 %tobool.not.i.i, i32 16, i32 %sub.i.neg.op.i
  %cmp.i = icmp ult i32 %sub.i, 5
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.wait_for_fifo.exit_crit_edge

while.body.i.wait_for_fifo.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

wait_for_fifo.exit:                               ; preds = %while.body.i.wait_for_fifo.exit_crit_edge, %if.end41.wait_for_fifo.exit_crit_edge
  %fifo_space.0.lcssa.i = phi i32 [ %21, %if.end41.wait_for_fifo.exit_crit_edge ], [ %sub.i, %while.body.i.wait_for_fifo.exit_crit_edge ]
  %sub5.i = add i32 %fifo_space.0.lcssa.i, -5
  %28 = ptrtoint ptr %fifo_space1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub5.i, ptr %fifo_space1.i, align 4
  %dp_pix_width = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 6, i32 12
  %29 = ptrtoint ptr %dp_pix_width to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dp_pix_width, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #4
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %31) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %34 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i100 = getelementptr i8, ptr %35, i32 728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 196608) #4, !srcloc !12
  %shl = shl i32 %sx.1, 16
  %or42 = or i32 %shl, %sy.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %36 = tail call i32 @llvm.bswap.i32(i32 %or42) #4
  %37 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i102 = getelementptr i8, ptr %38, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %36) #4, !srcloc !12
  %shl43 = shl i32 %width.0, 16
  %39 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height, align 4
  %or45 = or i32 %40, %shl43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %41 = tail call i32 @llvm.bswap.i32(i32 %or45) #4
  %42 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i104 = getelementptr i8, ptr %43, i32 408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %41) #4, !srcloc !12
  %or46 = or i32 %direction.1, %rotation.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %44 = tail call i32 @llvm.bswap.i32(i32 %or46) #4
  %45 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %46, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 %44) #4, !srcloc !12
  %47 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height, align 4
  %49 = ptrtoint ptr %fifo_space1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fifo_space1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp11.i.i = icmp ult i32 %50, 2
  br i1 %cmp11.i.i, label %wait_for_fifo.exit.while.body.i.i_crit_edge, label %wait_for_fifo.exit.draw_rect.exit_crit_edge

wait_for_fifo.exit.draw_rect.exit_crit_edge:      ; preds = %wait_for_fifo.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %draw_rect.exit

wait_for_fifo.exit.while.body.i.i_crit_edge:      ; preds = %wait_for_fifo.exit
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %wait_for_fifo.exit.while.body.i.i_crit_edge
  %51 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %52, i32 784
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %54 = and i32 %53, -65536
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i.i = icmp eq i32 %54, 0
  %56 = tail call i32 @llvm.ctlz.i32(i32 %55, i1 true) #4, !range !13
  %sub.i.neg.op.i.i = add nsw i32 %56, -16
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 16, i32 %sub.i.neg.op.i.i
  %cmp.i.i = icmp ult i32 %sub.i.i, 2
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.draw_rect.exit_crit_edge

while.body.i.i.draw_rect.exit_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %draw_rect.exit

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

draw_rect.exit:                                   ; preds = %while.body.i.i.draw_rect.exit_crit_edge, %wait_for_fifo.exit.draw_rect.exit_crit_edge
  %fifo_space.0.lcssa.i.i = phi i32 [ %50, %wait_for_fifo.exit.draw_rect.exit_crit_edge ], [ %sub.i.i, %while.body.i.i.draw_rect.exit_crit_edge ]
  %sub5.i.i = add i32 %fifo_space.0.lcssa.i.i, -2
  %57 = ptrtoint ptr %fifo_space1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub5.i.i, ptr %fifo_space1.i, align 4
  %conv9.i = shl i32 %dx.1, 16
  %sext = shl i32 %dy.0, 16
  %conv1.i = ashr exact i32 %sext, 16
  %or.i108 = or i32 %conv9.i, %conv1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %58 = tail call i32 @llvm.bswap.i32(i32 %or.i108) #4
  %59 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i110 = getelementptr i8, ptr %60, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i110, i32 %58) #4, !srcloc !12
  %conv4.i = and i32 %48, 65535
  %or5.i = or i32 %conv4.i, %shl43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %61 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #4
  %62 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %63, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %61) #4, !srcloc !12
  %blitter_may_be_busy.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 19
  %64 = ptrtoint ptr %blitter_may_be_busy.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %blitter_may_be_busy.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %draw_rect.exit, %if.then13, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atyfb_fillrect(ptr noundef %info, ptr noundef %rect) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rect, align 4
  %width3 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %4 = ptrtoint ptr %width3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width3, align 4
  %asleep = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %asleep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %height = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %accel_flags = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %accel_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %accel_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @cfb_fillrect(ptr noundef %info, ptr noundef %rect) #4
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %12 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %visual, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.else [
    i32 2, label %if.end11.if.then16_crit_edge
    i32 4, label %if.end11.if.then16_crit_edge67
  ]

if.end11.if.then16_crit_edge67:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then16

if.end11.if.then16_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then16

if.then16:                                        ; preds = %if.end11.if.then16_crit_edge, %if.end11.if.then16_crit_edge67
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %15 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pseudo_palette, align 4
  %color17 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %17 = ptrtoint ptr %color17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %color17, align 4
  %arrayidx = getelementptr i32, ptr %16, i32 %18
  br label %if.end19

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %color18 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then16
  %color.0.in = phi ptr [ %arrayidx, %if.then16 ], [ %color18, %if.else ]
  %19 = ptrtoint ptr %color.0.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %color.0 = load i32, ptr %color.0.in, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %20 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %21)
  %cmp20 = icmp eq i32 %21, 24
  br i1 %cmp20, label %if.then21, label %if.end19.if.end23_crit_edge

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %mul = mul i32 %3, 3
  %mul22 = mul i32 %5, 3
  %rotation.0.in.i = lshr i32 %mul, 2
  %rotation.0.i = urem i32 %rotation.0.in.i, 6
  %shl.i = shl nuw nsw i32 %rotation.0.i, 8
  %phi.bo = or i32 %shl.i, 163
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19.if.end23_crit_edge
  %dx.0 = phi i32 [ %mul, %if.then21 ], [ %3, %if.end19.if.end23_crit_edge ]
  %width.0 = phi i32 [ %mul22, %if.then21 ], [ %5, %if.end19.if.end23_crit_edge ]
  %rotation.0 = phi i32 [ %phi.bo, %if.then21 ], [ 35, %if.end19.if.end23_crit_edge ]
  %fifo_space1.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 20
  %22 = ptrtoint ptr %fifo_space1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fifo_space1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp11.i = icmp ult i32 %23, 4
  br i1 %cmp11.i, label %while.body.lr.ph.i, label %if.end23.wait_for_fifo.exit_crit_edge

if.end23.wait_for_fifo.exit_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit

while.body.lr.ph.i:                               ; preds = %if.end23
  %ati_regbase.i.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %24 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 784
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %27 = and i32 %26, -65536
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i = icmp eq i32 %27, 0
  %29 = tail call i32 @llvm.ctlz.i32(i32 %28, i1 true) #4, !range !13
  %sub.i.neg.op.i = add nsw i32 %29, -16
  %sub.i = select i1 %tobool.not.i.i, i32 16, i32 %sub.i.neg.op.i
  %cmp.i = icmp ult i32 %sub.i, 4
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.wait_for_fifo.exit_crit_edge

while.body.i.wait_for_fifo.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

wait_for_fifo.exit:                               ; preds = %while.body.i.wait_for_fifo.exit_crit_edge, %if.end23.wait_for_fifo.exit_crit_edge
  %fifo_space.0.lcssa.i = phi i32 [ %23, %if.end23.wait_for_fifo.exit_crit_edge ], [ %sub.i, %while.body.i.wait_for_fifo.exit_crit_edge ]
  %sub5.i = add i32 %fifo_space.0.lcssa.i, -4
  %30 = ptrtoint ptr %fifo_space1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub5.i, ptr %fifo_space1.i, align 4
  %dp_pix_width = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 6, i32 12
  %31 = ptrtoint ptr %dp_pix_width to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dp_pix_width, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #4
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %33) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %36 = tail call i32 @llvm.bswap.i32(i32 %color.0) #4
  %37 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %38, i32 708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %36) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %39 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %40, i32 728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 65536) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %41 = tail call i32 @llvm.bswap.i32(i32 %rotation.0) #4
  %42 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %43, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %41) #4, !srcloc !12
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %44 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dy, align 4
  %46 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %height, align 4
  %48 = ptrtoint ptr %fifo_space1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fifo_space1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp11.i.i = icmp ult i32 %49, 2
  br i1 %cmp11.i.i, label %wait_for_fifo.exit.while.body.i.i_crit_edge, label %wait_for_fifo.exit.draw_rect.exit_crit_edge

wait_for_fifo.exit.draw_rect.exit_crit_edge:      ; preds = %wait_for_fifo.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %draw_rect.exit

wait_for_fifo.exit.while.body.i.i_crit_edge:      ; preds = %wait_for_fifo.exit
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %wait_for_fifo.exit.while.body.i.i_crit_edge
  %50 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %51, i32 784
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %53 = and i32 %52, -65536
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i.i = icmp eq i32 %53, 0
  %55 = tail call i32 @llvm.ctlz.i32(i32 %54, i1 true) #4, !range !13
  %sub.i.neg.op.i.i = add nsw i32 %55, -16
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 16, i32 %sub.i.neg.op.i.i
  %cmp.i.i = icmp ult i32 %sub.i.i, 2
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.draw_rect.exit_crit_edge

while.body.i.i.draw_rect.exit_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %draw_rect.exit

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

draw_rect.exit:                                   ; preds = %while.body.i.i.draw_rect.exit_crit_edge, %wait_for_fifo.exit.draw_rect.exit_crit_edge
  %fifo_space.0.lcssa.i.i = phi i32 [ %49, %wait_for_fifo.exit.draw_rect.exit_crit_edge ], [ %sub.i.i, %while.body.i.i.draw_rect.exit_crit_edge ]
  %sub5.i.i = add i32 %fifo_space.0.lcssa.i.i, -2
  %56 = ptrtoint ptr %fifo_space1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub5.i.i, ptr %fifo_space1.i, align 4
  %conv9.i = shl i32 %dx.0, 16
  %sext = shl i32 %45, 16
  %conv1.i = ashr exact i32 %sext, 16
  %or.i64 = or i32 %conv1.i, %conv9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %57 = tail call i32 @llvm.bswap.i32(i32 %or.i64) #4
  %58 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i.i66 = getelementptr i8, ptr %59, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i66, i32 %57) #4, !srcloc !12
  %conv2.i = shl i32 %width.0, 16
  %conv4.i = and i32 %47, 65535
  %or5.i = or i32 %conv4.i, %conv2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %60 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #4
  %61 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %62, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %60) #4, !srcloc !12
  %blitter_may_be_busy.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 19
  %63 = ptrtoint ptr %blitter_may_be_busy.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %blitter_may_be_busy.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %draw_rect.exit, %if.then10, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atyfb_imageblit(ptr noundef %info, ptr noundef %image) local_unnamed_addr #0 align 64 {
entry:
  %hostdword = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %image, align 4
  %dy3 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %4 = ptrtoint ptr %dy3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dy3, align 4
  %width4 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %6 = ptrtoint ptr %width4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width4, align 4
  %asleep = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %asleep to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %asleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  %or.cond259 = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond259, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %height = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %accel_flags = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %accel_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %accel_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %if.end9.if.then17_crit_edge, label %lor.lhs.false11

if.end9.if.then17_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

lor.lhs.false11:                                  ; preds = %if.end9
  %depth = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 6
  %14 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp.not = icmp eq i8 %15, 1
  br i1 %cmp.not, label %sw.epilog.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false11
  %conv = zext i8 %15 to i32
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %16 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv)
  %cmp15.not = icmp eq i32 %17, %conv
  br i1 %cmp15.not, label %if.end18, label %land.lhs.true.if.then17_crit_edge

land.lhs.true.if.then17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

if.then17:                                        ; preds = %land.lhs.true.if.then17_crit_edge, %if.end9.if.then17_crit_edge
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %image) #4
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true
  %dp_pix_width = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 6, i32 12
  %18 = ptrtoint ptr %dp_pix_width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dp_pix_width, align 4
  %20 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %15, label %if.end18.sw.epilog_crit_edge [
    i8 32, label %sw.bb36
    i8 4, label %sw.bb21
    i8 8, label %sw.bb24
    i8 15, label %sw.bb27
    i8 16, label %sw.bb30
    i8 24, label %sw.bb33
  ]

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %and22 = and i32 %19, -17760257
  %or23 = or i32 %and22, 65536
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %and25 = and i32 %19, -983041
  %or26 = or i32 %and25, 131072
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %and28 = and i32 %19, -983041
  %or29 = or i32 %and28, 196608
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %and31 = and i32 %19, -983041
  %or32 = or i32 %and31, 262144
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %and34 = and i32 %19, -983041
  %or35 = or i32 %and34, 327680
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %and37 = and i32 %19, -983041
  %or38 = or i32 %and37, 393216
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb36, %sw.bb33, %sw.bb30, %sw.bb27, %sw.bb24, %sw.bb21, %if.end18.sw.epilog_crit_edge
  %pix_width.0 = phi i32 [ %19, %if.end18.sw.epilog_crit_edge ], [ %or38, %sw.bb36 ], [ %or35, %sw.bb33 ], [ %or32, %sw.bb30 ], [ %or29, %sw.bb27 ], [ %or26, %sw.bb24 ], [ %or23, %sw.bb21 ]
  %bits_per_pixel40 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %21 = ptrtoint ptr %bits_per_pixel40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bits_per_pixel40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %22)
  %cmp41 = icmp eq i32 %22, 24
  br i1 %cmp41, label %sw.epilog.if.then43_crit_edge, label %if.end61

sw.epilog.if.then43_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

sw.epilog.thread:                                 ; preds = %lor.lhs.false11
  %dp_pix_width319 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 6, i32 12
  %23 = ptrtoint ptr %dp_pix_width319 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dp_pix_width319, align 4
  %and = and i32 %24, -17760257
  %bits_per_pixel40366 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %25 = ptrtoint ptr %bits_per_pixel40366 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bits_per_pixel40366, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %26)
  %cmp41367 = icmp eq i32 %26, 24
  br i1 %cmp41367, label %sw.epilog.thread.if.then43_crit_edge, label %sw.epilog.thread.if.then66_crit_edge

sw.epilog.thread.if.then66_crit_edge:             ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then66

sw.epilog.thread.if.then43_crit_edge:             ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then43

if.then43:                                        ; preds = %sw.epilog.thread.if.then43_crit_edge, %sw.epilog.if.then43_crit_edge
  %bits_per_pixel40373 = phi ptr [ %bits_per_pixel40366, %sw.epilog.thread.if.then43_crit_edge ], [ %bits_per_pixel40, %sw.epilog.if.then43_crit_edge ]
  %pix_width.0368 = phi i32 [ %and, %sw.epilog.thread.if.then43_crit_edge ], [ %pix_width.0, %sw.epilog.if.then43_crit_edge ]
  %mul = mul i32 %3, 3
  %mul44 = mul i32 %7, 3
  %rotation.0.in.i = lshr i32 %mul, 2
  %rotation.0.i = urem i32 %rotation.0.in.i, 6
  %shl.i = shl nuw nsw i32 %rotation.0.i, 8
  %or.i = or i32 %shl.i, 128
  %and45 = and i32 %pix_width.0368, -16
  %or46 = or i32 %and45, 2
  br i1 %cmp.not, label %land.lhs.true51, label %if.then43.if.end81_crit_edge

if.then43.if.end81_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end81

land.lhs.true51:                                  ; preds = %if.then43
  %features = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %features, align 4
  %and52 = and i32 %28, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %land.lhs.true51.if.then66_crit_edge, label %land.lhs.true54

land.lhs.true51.if.then66_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then66

land.lhs.true54:                                  ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #6
  %rem = and i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp56 = icmp eq i32 %rem, 0
  %or59 = or i32 %and45, 8194
  %spec.select = select i1 %cmp56, i32 %or59, i32 %or46
  br label %if.then66

if.end61:                                         ; preds = %sw.epilog
  br i1 %cmp.not, label %if.end61.if.then66_crit_edge, label %if.end61.if.end81_crit_edge

if.end61.if.end81_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end81

if.end61.if.then66_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then66

if.then66:                                        ; preds = %if.end61.if.then66_crit_edge, %land.lhs.true54, %land.lhs.true51.if.then66_crit_edge, %sw.epilog.thread.if.then66_crit_edge
  %bits_per_pixel40371 = phi ptr [ %bits_per_pixel40, %if.end61.if.then66_crit_edge ], [ %bits_per_pixel40373, %land.lhs.true54 ], [ %bits_per_pixel40373, %land.lhs.true51.if.then66_crit_edge ], [ %bits_per_pixel40366, %sw.epilog.thread.if.then66_crit_edge ]
  %rotation.0331 = phi i32 [ 0, %if.end61.if.then66_crit_edge ], [ %or.i, %land.lhs.true54 ], [ %or.i, %land.lhs.true51.if.then66_crit_edge ], [ 0, %sw.epilog.thread.if.then66_crit_edge ]
  %pix_width.1329 = phi i32 [ %pix_width.0, %if.end61.if.then66_crit_edge ], [ %spec.select, %land.lhs.true54 ], [ %or46, %land.lhs.true51.if.then66_crit_edge ], [ %and, %sw.epilog.thread.if.then66_crit_edge ]
  %width.0327 = phi i32 [ %7, %if.end61.if.then66_crit_edge ], [ %mul44, %land.lhs.true54 ], [ %mul44, %land.lhs.true51.if.then66_crit_edge ], [ %7, %sw.epilog.thread.if.then66_crit_edge ]
  %dx.0325 = phi i32 [ %3, %if.end61.if.then66_crit_edge ], [ %mul, %land.lhs.true54 ], [ %mul, %land.lhs.true51.if.then66_crit_edge ], [ %3, %sw.epilog.thread.if.then66_crit_edge ]
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %29 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %visual, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %30, label %if.else [
    i32 2, label %if.then66.if.then74_crit_edge
    i32 4, label %if.then66.if.then74_crit_edge396
  ]

if.then66.if.then74_crit_edge396:                 ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then74

if.then66.if.then74_crit_edge:                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then74

if.then74:                                        ; preds = %if.then66.if.then74_crit_edge, %if.then66.if.then74_crit_edge396
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %32 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pseudo_palette, align 4
  %fg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %34 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fg_color, align 4
  %arrayidx = getelementptr i32, ptr %33, i32 %35
  %bg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %36 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bg_color, align 4
  %arrayidx76 = getelementptr i32, ptr %33, i32 %37
  br label %if.end79

if.else:                                          ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #6
  %fg_color77 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %bg_color78 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  br label %if.end79

if.end79:                                         ; preds = %if.else, %if.then74
  %fg.0.in = phi ptr [ %arrayidx, %if.then74 ], [ %fg_color77, %if.else ]
  %bg.0.in = phi ptr [ %arrayidx76, %if.then74 ], [ %bg_color78, %if.else ]
  %38 = ptrtoint ptr %bg.0.in to i32
  call void @__asan_load4_noabort(i32 %38)
  %bg.0 = load i32, ptr %bg.0.in, align 4
  %39 = ptrtoint ptr %fg.0.in to i32
  call void @__asan_load4_noabort(i32 %39)
  %fg.0 = load i32, ptr %fg.0.in, align 4
  %fifo_space1.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 20
  %40 = ptrtoint ptr %fifo_space1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fifo_space1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp11.i = icmp ult i32 %41, 2
  br i1 %cmp11.i, label %while.body.lr.ph.i, label %if.end79.wait_for_fifo.exit_crit_edge

if.end79.wait_for_fifo.exit_crit_edge:            ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit

while.body.lr.ph.i:                               ; preds = %if.end79
  %ati_regbase.i.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %42 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 784
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %45 = and i32 %44, -65536
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i.i = icmp eq i32 %45, 0
  %47 = tail call i32 @llvm.ctlz.i32(i32 %46, i1 true) #4, !range !13
  %sub.i.neg.op.i = add nsw i32 %47, -16
  %sub.i = select i1 %tobool.not.i.i, i32 16, i32 %sub.i.neg.op.i
  %cmp.i = icmp ult i32 %sub.i, 2
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.wait_for_fifo.exit_crit_edge

while.body.i.wait_for_fifo.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

wait_for_fifo.exit:                               ; preds = %while.body.i.wait_for_fifo.exit_crit_edge, %if.end79.wait_for_fifo.exit_crit_edge
  %fifo_space.0.lcssa.i = phi i32 [ %41, %if.end79.wait_for_fifo.exit_crit_edge ], [ %sub.i, %while.body.i.wait_for_fifo.exit_crit_edge ]
  %sub5.i = add i32 %fifo_space.0.lcssa.i, -2
  %48 = ptrtoint ptr %fifo_space1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub5.i, ptr %fifo_space1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %49 = tail call i32 @llvm.bswap.i32(i32 %bg.0) #4
  %ati_regbase.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %50 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %51, i32 704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %49) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %52 = tail call i32 @llvm.bswap.i32(i32 %fg.0) #4
  %53 = ptrtoint ptr %ati_regbase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ati_regbase.i, align 4
  %add.ptr.i261 = getelementptr i8, ptr %54, i32 708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i261, i32 %52) #4, !srcloc !12
  br label %if.end81

if.end81:                                         ; preds = %wait_for_fifo.exit, %if.end61.if.end81_crit_edge, %if.then43.if.end81_crit_edge
  %bits_per_pixel40370 = phi ptr [ %bits_per_pixel40371, %wait_for_fifo.exit ], [ %bits_per_pixel40, %if.end61.if.end81_crit_edge ], [ %bits_per_pixel40373, %if.then43.if.end81_crit_edge ]
  %rotation.0330 = phi i32 [ %rotation.0331, %wait_for_fifo.exit ], [ 0, %if.end61.if.end81_crit_edge ], [ %or.i, %if.then43.if.end81_crit_edge ]
  %pix_width.1328 = phi i32 [ %pix_width.1329, %wait_for_fifo.exit ], [ %pix_width.0, %if.end61.if.end81_crit_edge ], [ %or46, %if.then43.if.end81_crit_edge ]
  %width.0326 = phi i32 [ %width.0327, %wait_for_fifo.exit ], [ %7, %if.end61.if.end81_crit_edge ], [ %mul44, %if.then43.if.end81_crit_edge ]
  %dx.0324 = phi i32 [ %dx.0325, %wait_for_fifo.exit ], [ %3, %if.end61.if.end81_crit_edge ], [ %mul, %if.then43.if.end81_crit_edge ]
  %src.0 = phi i32 [ 131328, %wait_for_fifo.exit ], [ 512, %if.end61.if.end81_crit_edge ], [ 512, %if.then43.if.end81_crit_edge ]
  %mix.0 = phi i32 [ 458759, %wait_for_fifo.exit ], [ 327683, %if.end61.if.end81_crit_edge ], [ 327683, %if.then43.if.end81_crit_edge ]
  %fifo_space1.i262 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 20
  %55 = ptrtoint ptr %fifo_space1.i262 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fifo_space1.i262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %56)
  %cmp11.i263 = icmp ult i32 %56, 5
  br i1 %cmp11.i263, label %while.body.lr.ph.i265, label %if.end81.wait_for_fifo.exit274_crit_edge

if.end81.wait_for_fifo.exit274_crit_edge:         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit274

while.body.lr.ph.i265:                            ; preds = %if.end81
  %ati_regbase.i.i264 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  br label %while.body.i271

while.body.i271:                                  ; preds = %while.body.i271.while.body.i271_crit_edge, %while.body.lr.ph.i265
  %57 = ptrtoint ptr %ati_regbase.i.i264 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ati_regbase.i.i264, align 4
  %add.ptr.i.i266 = getelementptr i8, ptr %58, i32 784
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i266) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %60 = and i32 %59, -65536
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i.i267 = icmp eq i32 %60, 0
  %62 = tail call i32 @llvm.ctlz.i32(i32 %61, i1 true) #4, !range !13
  %sub.i.neg.op.i268 = add nsw i32 %62, -16
  %sub.i269 = select i1 %tobool.not.i.i267, i32 16, i32 %sub.i.neg.op.i268
  %cmp.i270 = icmp ult i32 %sub.i269, 5
  br i1 %cmp.i270, label %while.body.i271.while.body.i271_crit_edge, label %while.body.i271.wait_for_fifo.exit274_crit_edge

while.body.i271.wait_for_fifo.exit274_crit_edge:  ; preds = %while.body.i271
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit274

while.body.i271.while.body.i271_crit_edge:        ; preds = %while.body.i271
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i271

wait_for_fifo.exit274:                            ; preds = %while.body.i271.wait_for_fifo.exit274_crit_edge, %if.end81.wait_for_fifo.exit274_crit_edge
  %fifo_space.0.lcssa.i272 = phi i32 [ %56, %if.end81.wait_for_fifo.exit274_crit_edge ], [ %sub.i269, %while.body.i271.wait_for_fifo.exit274_crit_edge ]
  %sub5.i273 = add i32 %fifo_space.0.lcssa.i272, -5
  %63 = ptrtoint ptr %fifo_space1.i262 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub5.i273, ptr %fifo_space1.i262, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %64 = tail call i32 @llvm.bswap.i32(i32 %pix_width.1328) #4
  %ati_regbase.i275 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %65 = ptrtoint ptr %ati_regbase.i275 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ati_regbase.i275, align 4
  %add.ptr.i276 = getelementptr i8, ptr %66, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i276, i32 %64) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %67 = tail call i32 @llvm.bswap.i32(i32 %mix.0) #4
  %68 = ptrtoint ptr %ati_regbase.i275 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ati_regbase.i275, align 4
  %add.ptr.i278 = getelementptr i8, ptr %69, i32 724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i278, i32 %67) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %70 = tail call i32 @llvm.bswap.i32(i32 %src.0) #4
  %71 = ptrtoint ptr %ati_regbase.i275 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ati_regbase.i275, align 4
  %add.ptr.i280 = getelementptr i8, ptr %72, i32 728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i280, i32 %70) #4, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %73 = ptrtoint ptr %ati_regbase.i275 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ati_regbase.i275, align 4
  %add.ptr.i282 = getelementptr i8, ptr %74, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i282, i32 16777216) #4, !srcloc !12
  %or82 = or i32 %rotation.0330, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %75 = tail call i32 @llvm.bswap.i32(i32 %or82) #4
  %76 = ptrtoint ptr %ati_regbase.i275 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ati_regbase.i275, align 4
  %add.ptr.i284 = getelementptr i8, ptr %77, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i284, i32 %75) #4, !srcloc !12
  %78 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %height, align 4
  %80 = ptrtoint ptr %fifo_space1.i262 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fifo_space1.i262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %81)
  %cmp11.i.i = icmp ult i32 %81, 2
  br i1 %cmp11.i.i, label %wait_for_fifo.exit274.while.body.i.i_crit_edge, label %wait_for_fifo.exit274.draw_rect.exit_crit_edge

wait_for_fifo.exit274.draw_rect.exit_crit_edge:   ; preds = %wait_for_fifo.exit274
  call void @__sanitizer_cov_trace_pc() #6
  br label %draw_rect.exit

wait_for_fifo.exit274.while.body.i.i_crit_edge:   ; preds = %wait_for_fifo.exit274
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %wait_for_fifo.exit274.while.body.i.i_crit_edge
  %82 = ptrtoint ptr %ati_regbase.i275 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ati_regbase.i275, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %83, i32 784
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %85 = and i32 %84, -65536
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i.i.i = icmp eq i32 %85, 0
  %87 = tail call i32 @llvm.ctlz.i32(i32 %86, i1 true) #4, !range !13
  %sub.i.neg.op.i.i = add nsw i32 %87, -16
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 16, i32 %sub.i.neg.op.i.i
  %cmp.i.i = icmp ult i32 %sub.i.i, 2
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.draw_rect.exit_crit_edge

while.body.i.i.draw_rect.exit_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %draw_rect.exit

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

draw_rect.exit:                                   ; preds = %while.body.i.i.draw_rect.exit_crit_edge, %wait_for_fifo.exit274.draw_rect.exit_crit_edge
  %fifo_space.0.lcssa.i.i = phi i32 [ %81, %wait_for_fifo.exit274.draw_rect.exit_crit_edge ], [ %sub.i.i, %while.body.i.i.draw_rect.exit_crit_edge ]
  %sub5.i.i = add i32 %fifo_space.0.lcssa.i.i, -2
  %88 = ptrtoint ptr %fifo_space1.i262 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %sub5.i.i, ptr %fifo_space1.i262, align 4
  %conv9.i = shl i32 %dx.0324, 16
  %sext = shl i32 %5, 16
  %conv1.i = ashr exact i32 %sext, 16
  %or.i286 = or i32 %conv9.i, %conv1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %89 = tail call i32 @llvm.bswap.i32(i32 %or.i286) #4
  %90 = ptrtoint ptr %ati_regbase.i275 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ati_regbase.i275, align 4
  %add.ptr.i.i288 = getelementptr i8, ptr %91, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i288, i32 %89) #4, !srcloc !12
  %conv2.i = shl i32 %width.0326, 16
  %conv4.i = and i32 %79, 65535
  %or5.i = or i32 %conv4.i, %conv2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %92 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #4
  %93 = ptrtoint ptr %ati_regbase.i275 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ati_regbase.i275, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %94, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %92) #4, !srcloc !12
  %blitter_may_be_busy.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 19
  %95 = ptrtoint ptr %blitter_may_be_busy.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %blitter_may_be_busy.i, align 4
  %96 = ptrtoint ptr %width4 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %width4, align 4
  %98 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %depth, align 4
  %conv90 = zext i8 %99 to i32
  %mul91 = mul i32 %97, %conv90
  %add = add i32 %mul91, 7
  %div255 = lshr i32 %add, 3
  %100 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %height, align 4
  %mul93 = mul i32 %div255, %101
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %99)
  %cmp96 = icmp eq i8 %99, 1
  br i1 %cmp96, label %land.lhs.true98, label %draw_rect.exit.if.else148_crit_edge

draw_rect.exit.if.else148_crit_edge:              ; preds = %draw_rect.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else148

land.lhs.true98:                                  ; preds = %draw_rect.exit
  %102 = ptrtoint ptr %bits_per_pixel40370 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bits_per_pixel40370, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %103)
  %cmp101 = icmp eq i32 %103, 24
  %and104 = and i32 %pix_width.1328, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  %or.cond = select i1 %cmp101, i1 %tobool105.not, i1 false
  br i1 %or.cond, label %if.then106, label %land.lhs.true98.if.else148_crit_edge

land.lhs.true98.if.else148_crit_edge:             ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else148

if.then106:                                       ; preds = %land.lhs.true98
  %data = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %104 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hostdword) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul93)
  %tobool109.not359 = icmp eq i32 %mul93, 0
  br i1 %tobool109.not359, label %if.then106.for.end147_crit_edge, label %if.then106.for.body_crit_edge

if.then106.for.body_crit_edge:                    ; preds = %if.then106
  br label %for.body

if.then106.for.end147_crit_edge:                  ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end147

for.body:                                         ; preds = %wait_for_fifo.exit301.for.body_crit_edge, %if.then106.for.body_crit_edge
  %pbitmapin.0364 = phi ptr [ %pbitmapin.3386, %wait_for_fifo.exit301.for.body_crit_edge ], [ %105, %if.then106.for.body_crit_edge ]
  %width107.0363 = phi i32 [ %width107.4385, %wait_for_fifo.exit301.for.body_crit_edge ], [ %97, %if.then106.for.body_crit_edge ]
  %mult24.0362 = phi i32 [ %mult24.3395, %wait_for_fifo.exit301.for.body_crit_edge ], [ 0, %if.then106.for.body_crit_edge ]
  %inbit.0361 = phi i32 [ %inbit.4384, %wait_for_fifo.exit301.for.body_crit_edge ], [ 7, %if.then106.for.body_crit_edge ]
  %src_bytes.0360 = phi i32 [ %src_bytes.3383, %wait_for_fifo.exit301.for.body_crit_edge ], [ %mul93, %if.then106.for.body_crit_edge ]
  %106 = ptrtoint ptr %hostdword to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %hostdword, align 4
  br label %for.cond115.preheader

for.cond115.preheader:                            ; preds = %for.inc143.for.cond115.preheader_crit_edge, %for.body
  %pbitmapout.0354 = phi ptr [ %hostdword, %for.body ], [ %incdec.ptr145, %for.inc143.for.cond115.preheader_crit_edge ]
  %pbitmapin.1353 = phi ptr [ %pbitmapin.0364, %for.body ], [ %pbitmapin.3386, %for.inc143.for.cond115.preheader_crit_edge ]
  %width107.1352 = phi i32 [ %width107.0363, %for.body ], [ %width107.4385, %for.inc143.for.cond115.preheader_crit_edge ]
  %byte_id_in_dword.0351 = phi i32 [ 0, %for.body ], [ %inc144, %for.inc143.for.cond115.preheader_crit_edge ]
  %mult24.1350 = phi i32 [ %mult24.0362, %for.body ], [ %mult24.3395, %for.inc143.for.cond115.preheader_crit_edge ]
  %inbit.1349 = phi i32 [ %inbit.0361, %for.body ], [ %inbit.4384, %for.inc143.for.cond115.preheader_crit_edge ]
  %src_bytes.1348 = phi i32 [ %src_bytes.0360, %for.body ], [ %src_bytes.3383, %for.inc143.for.cond115.preheader_crit_edge ]
  %107 = ptrtoint ptr %pbitmapin.1353 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %pbitmapin.1353, align 1
  %conv119 = zext i8 %108 to i32
  %shr = lshr i32 %conv119, %inbit.1349
  %109 = ptrtoint ptr %pbitmapout.0354 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %pbitmapout.0354, align 1
  %shr.tr = trunc i32 %shr to i8
  %111 = shl i8 %shr.tr, 7
  %conv123 = or i8 %110, %111
  store i8 %conv123, ptr %pbitmapout.0354, align 1
  %inc = add i32 %mult24.1350, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp124 = icmp eq i32 %inc, 3
  %dec = sext i1 %cmp124 to i32
  %inbit.3 = add i32 %inbit.1349, %dec
  %mult24.3 = select i1 %cmp124, i32 0, i32 %inc
  %width107.3 = add i32 %width107.1352, %dec
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inbit.3)
  %cmp129 = icmp slt i32 %inbit.3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %width107.3)
  %cmp132 = icmp eq i32 %width107.3, 0
  %or.cond258 = select i1 %cmp129, i1 true, i1 %cmp132
  br i1 %or.cond258, label %if.then134, label %for.cond115.preheader.for.inc_crit_edge

for.cond115.preheader.for.inc_crit_edge:          ; preds = %for.cond115.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then134:                                       ; preds = %for.cond115.preheader
  %dec135 = add i32 %src_bytes.1348, -1
  %incdec.ptr = getelementptr i8, ptr %pbitmapin.1353, i32 1
  br i1 %cmp132, label %if.then134.for.inc.thread_crit_edge, label %if.then134.for.inc_crit_edge

if.then134.for.inc_crit_edge:                     ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then134.for.inc.thread_crit_edge:              ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.thread

for.inc.thread:                                   ; preds = %if.then134.7.for.inc.thread_crit_edge, %if.then134.6.for.inc.thread_crit_edge, %if.then134.5.for.inc.thread_crit_edge, %if.then134.4.for.inc.thread_crit_edge, %if.then134.3.for.inc.thread_crit_edge, %if.then134.2.for.inc.thread_crit_edge, %if.then134.1.for.inc.thread_crit_edge, %if.then134.for.inc.thread_crit_edge
  %mult24.3.lcssa = phi i32 [ %mult24.3, %if.then134.for.inc.thread_crit_edge ], [ %mult24.3.1, %if.then134.1.for.inc.thread_crit_edge ], [ %mult24.3.2, %if.then134.2.for.inc.thread_crit_edge ], [ %mult24.3.3, %if.then134.3.for.inc.thread_crit_edge ], [ %mult24.3.4, %if.then134.4.for.inc.thread_crit_edge ], [ %mult24.3.5, %if.then134.5.for.inc.thread_crit_edge ], [ %mult24.3.6, %if.then134.6.for.inc.thread_crit_edge ], [ %mult24.3.7, %if.then134.7.for.inc.thread_crit_edge ]
  %dec135.lcssa = phi i32 [ %dec135, %if.then134.for.inc.thread_crit_edge ], [ %dec135.1, %if.then134.1.for.inc.thread_crit_edge ], [ %dec135.2, %if.then134.2.for.inc.thread_crit_edge ], [ %dec135.3, %if.then134.3.for.inc.thread_crit_edge ], [ %dec135.4, %if.then134.4.for.inc.thread_crit_edge ], [ %dec135.5, %if.then134.5.for.inc.thread_crit_edge ], [ %dec135.6, %if.then134.6.for.inc.thread_crit_edge ], [ %dec135.7, %if.then134.7.for.inc.thread_crit_edge ]
  %incdec.ptr.lcssa = phi ptr [ %incdec.ptr, %if.then134.for.inc.thread_crit_edge ], [ %incdec.ptr.1, %if.then134.1.for.inc.thread_crit_edge ], [ %incdec.ptr.2, %if.then134.2.for.inc.thread_crit_edge ], [ %incdec.ptr.3, %if.then134.3.for.inc.thread_crit_edge ], [ %incdec.ptr.4, %if.then134.4.for.inc.thread_crit_edge ], [ %incdec.ptr.5, %if.then134.5.for.inc.thread_crit_edge ], [ %incdec.ptr.6, %if.then134.6.for.inc.thread_crit_edge ], [ %incdec.ptr.7, %if.then134.7.for.inc.thread_crit_edge ]
  %112 = ptrtoint ptr %width4 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %width4, align 4
  br label %for.inc143

for.inc:                                          ; preds = %if.then134.for.inc_crit_edge, %for.cond115.preheader.for.inc_crit_edge
  %src_bytes.3 = phi i32 [ %dec135, %if.then134.for.inc_crit_edge ], [ %src_bytes.1348, %for.cond115.preheader.for.inc_crit_edge ]
  %inbit.4 = phi i32 [ 7, %if.then134.for.inc_crit_edge ], [ %inbit.3, %for.cond115.preheader.for.inc_crit_edge ]
  %pbitmapin.3 = phi ptr [ %incdec.ptr, %if.then134.for.inc_crit_edge ], [ %pbitmapin.1353, %for.cond115.preheader.for.inc_crit_edge ]
  %114 = ptrtoint ptr %pbitmapin.3 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %pbitmapin.3, align 1
  %conv119.1 = zext i8 %115 to i32
  %shr.1 = lshr i32 %conv119.1, %inbit.4
  %116 = ptrtoint ptr %pbitmapout.0354 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %pbitmapout.0354, align 1
  %shr.1.tr = trunc i32 %shr.1 to i8
  %118 = shl i8 %shr.1.tr, 6
  %119 = and i8 %118, 64
  %conv123.1 = or i8 %117, %119
  store i8 %conv123.1, ptr %pbitmapout.0354, align 1
  %inc.1 = add i32 %mult24.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.1)
  %cmp124.1 = icmp eq i32 %inc.1, 3
  %dec.1 = sext i1 %cmp124.1 to i32
  %inbit.3.1 = add i32 %inbit.4, %dec.1
  %mult24.3.1 = select i1 %cmp124.1, i32 0, i32 %inc.1
  %width107.3.1 = add i32 %width107.3, %dec.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inbit.3.1)
  %cmp129.1 = icmp slt i32 %inbit.3.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %width107.3.1)
  %cmp132.1 = icmp eq i32 %width107.3.1, 0
  %or.cond258.1 = select i1 %cmp129.1, i1 true, i1 %cmp132.1
  br i1 %or.cond258.1, label %if.then134.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then134.1:                                     ; preds = %for.inc
  %dec135.1 = add i32 %src_bytes.3, -1
  %incdec.ptr.1 = getelementptr i8, ptr %pbitmapin.3, i32 1
  br i1 %cmp132.1, label %if.then134.1.for.inc.thread_crit_edge, label %if.then134.1.for.inc.1_crit_edge

if.then134.1.for.inc.1_crit_edge:                 ; preds = %if.then134.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then134.1.for.inc.thread_crit_edge:            ; preds = %if.then134.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.thread

for.inc.1:                                        ; preds = %if.then134.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %src_bytes.3.1 = phi i32 [ %dec135.1, %if.then134.1.for.inc.1_crit_edge ], [ %src_bytes.3, %for.inc.for.inc.1_crit_edge ]
  %inbit.4.1 = phi i32 [ 7, %if.then134.1.for.inc.1_crit_edge ], [ %inbit.3.1, %for.inc.for.inc.1_crit_edge ]
  %pbitmapin.3.1 = phi ptr [ %incdec.ptr.1, %if.then134.1.for.inc.1_crit_edge ], [ %pbitmapin.3, %for.inc.for.inc.1_crit_edge ]
  %120 = ptrtoint ptr %pbitmapin.3.1 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %pbitmapin.3.1, align 1
  %conv119.2 = zext i8 %121 to i32
  %shr.2 = lshr i32 %conv119.2, %inbit.4.1
  %122 = ptrtoint ptr %pbitmapout.0354 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %pbitmapout.0354, align 1
  %shr.2.tr = trunc i32 %shr.2 to i8
  %124 = shl i8 %shr.2.tr, 5
  %125 = and i8 %124, 32
  %conv123.2 = or i8 %123, %125
  store i8 %conv123.2, ptr %pbitmapout.0354, align 1
  %inc.2 = add i32 %mult24.3.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.2)
  %cmp124.2 = icmp eq i32 %inc.2, 3
  %dec.2 = sext i1 %cmp124.2 to i32
  %inbit.3.2 = add i32 %inbit.4.1, %dec.2
  %mult24.3.2 = select i1 %cmp124.2, i32 0, i32 %inc.2
  %width107.3.2 = add i32 %width107.3.1, %dec.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inbit.3.2)
  %cmp129.2 = icmp slt i32 %inbit.3.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %width107.3.2)
  %cmp132.2 = icmp eq i32 %width107.3.2, 0
  %or.cond258.2 = select i1 %cmp129.2, i1 true, i1 %cmp132.2
  br i1 %or.cond258.2, label %if.then134.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then134.2:                                     ; preds = %for.inc.1
  %dec135.2 = add i32 %src_bytes.3.1, -1
  %incdec.ptr.2 = getelementptr i8, ptr %pbitmapin.3.1, i32 1
  br i1 %cmp132.2, label %if.then134.2.for.inc.thread_crit_edge, label %if.then134.2.for.inc.2_crit_edge

if.then134.2.for.inc.2_crit_edge:                 ; preds = %if.then134.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then134.2.for.inc.thread_crit_edge:            ; preds = %if.then134.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.thread

for.inc.2:                                        ; preds = %if.then134.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %src_bytes.3.2 = phi i32 [ %dec135.2, %if.then134.2.for.inc.2_crit_edge ], [ %src_bytes.3.1, %for.inc.1.for.inc.2_crit_edge ]
  %inbit.4.2 = phi i32 [ 7, %if.then134.2.for.inc.2_crit_edge ], [ %inbit.3.2, %for.inc.1.for.inc.2_crit_edge ]
  %pbitmapin.3.2 = phi ptr [ %incdec.ptr.2, %if.then134.2.for.inc.2_crit_edge ], [ %pbitmapin.3.1, %for.inc.1.for.inc.2_crit_edge ]
  %126 = ptrtoint ptr %pbitmapin.3.2 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %pbitmapin.3.2, align 1
  %conv119.3 = zext i8 %127 to i32
  %shr.3 = lshr i32 %conv119.3, %inbit.4.2
  %128 = ptrtoint ptr %pbitmapout.0354 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %pbitmapout.0354, align 1
  %shr.3.tr = trunc i32 %shr.3 to i8
  %130 = shl i8 %shr.3.tr, 4
  %131 = and i8 %130, 16
  %conv123.3 = or i8 %129, %131
  store i8 %conv123.3, ptr %pbitmapout.0354, align 1
  %inc.3 = add i32 %mult24.3.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.3)
  %cmp124.3 = icmp eq i32 %inc.3, 3
  %dec.3 = sext i1 %cmp124.3 to i32
  %inbit.3.3 = add i32 %inbit.4.2, %dec.3
  %mult24.3.3 = select i1 %cmp124.3, i32 0, i32 %inc.3
  %width107.3.3 = add i32 %width107.3.2, %dec.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inbit.3.3)
  %cmp129.3 = icmp slt i32 %inbit.3.3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %width107.3.3)
  %cmp132.3 = icmp eq i32 %width107.3.3, 0
  %or.cond258.3 = select i1 %cmp129.3, i1 true, i1 %cmp132.3
  br i1 %or.cond258.3, label %if.then134.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

if.then134.3:                                     ; preds = %for.inc.2
  %dec135.3 = add i32 %src_bytes.3.2, -1
  %incdec.ptr.3 = getelementptr i8, ptr %pbitmapin.3.2, i32 1
  br i1 %cmp132.3, label %if.then134.3.for.inc.thread_crit_edge, label %if.then134.3.for.inc.3_crit_edge

if.then134.3.for.inc.3_crit_edge:                 ; preds = %if.then134.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

if.then134.3.for.inc.thread_crit_edge:            ; preds = %if.then134.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.thread

for.inc.3:                                        ; preds = %if.then134.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %src_bytes.3.3 = phi i32 [ %dec135.3, %if.then134.3.for.inc.3_crit_edge ], [ %src_bytes.3.2, %for.inc.2.for.inc.3_crit_edge ]
  %inbit.4.3 = phi i32 [ 7, %if.then134.3.for.inc.3_crit_edge ], [ %inbit.3.3, %for.inc.2.for.inc.3_crit_edge ]
  %pbitmapin.3.3 = phi ptr [ %incdec.ptr.3, %if.then134.3.for.inc.3_crit_edge ], [ %pbitmapin.3.2, %for.inc.2.for.inc.3_crit_edge ]
  %132 = ptrtoint ptr %pbitmapin.3.3 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %pbitmapin.3.3, align 1
  %conv119.4 = zext i8 %133 to i32
  %shr.4 = lshr i32 %conv119.4, %inbit.4.3
  %134 = ptrtoint ptr %pbitmapout.0354 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %pbitmapout.0354, align 1
  %shr.4.tr = trunc i32 %shr.4 to i8
  %136 = shl i8 %shr.4.tr, 3
  %137 = and i8 %136, 8
  %conv123.4 = or i8 %135, %137
  store i8 %conv123.4, ptr %pbitmapout.0354, align 1
  %inc.4 = add i32 %mult24.3.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.4)
  %cmp124.4 = icmp eq i32 %inc.4, 3
  %dec.4 = sext i1 %cmp124.4 to i32
  %inbit.3.4 = add i32 %inbit.4.3, %dec.4
  %mult24.3.4 = select i1 %cmp124.4, i32 0, i32 %inc.4
  %width107.3.4 = add i32 %width107.3.3, %dec.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inbit.3.4)
  %cmp129.4 = icmp slt i32 %inbit.3.4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %width107.3.4)
  %cmp132.4 = icmp eq i32 %width107.3.4, 0
  %or.cond258.4 = select i1 %cmp129.4, i1 true, i1 %cmp132.4
  br i1 %or.cond258.4, label %if.then134.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4

if.then134.4:                                     ; preds = %for.inc.3
  %dec135.4 = add i32 %src_bytes.3.3, -1
  %incdec.ptr.4 = getelementptr i8, ptr %pbitmapin.3.3, i32 1
  br i1 %cmp132.4, label %if.then134.4.for.inc.thread_crit_edge, label %if.then134.4.for.inc.4_crit_edge

if.then134.4.for.inc.4_crit_edge:                 ; preds = %if.then134.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4

if.then134.4.for.inc.thread_crit_edge:            ; preds = %if.then134.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.thread

for.inc.4:                                        ; preds = %if.then134.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %src_bytes.3.4 = phi i32 [ %dec135.4, %if.then134.4.for.inc.4_crit_edge ], [ %src_bytes.3.3, %for.inc.3.for.inc.4_crit_edge ]
  %inbit.4.4 = phi i32 [ 7, %if.then134.4.for.inc.4_crit_edge ], [ %inbit.3.4, %for.inc.3.for.inc.4_crit_edge ]
  %pbitmapin.3.4 = phi ptr [ %incdec.ptr.4, %if.then134.4.for.inc.4_crit_edge ], [ %pbitmapin.3.3, %for.inc.3.for.inc.4_crit_edge ]
  %138 = ptrtoint ptr %pbitmapin.3.4 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %pbitmapin.3.4, align 1
  %conv119.5 = zext i8 %139 to i32
  %shr.5 = lshr i32 %conv119.5, %inbit.4.4
  %140 = ptrtoint ptr %pbitmapout.0354 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %pbitmapout.0354, align 1
  %shr.5.tr = trunc i32 %shr.5 to i8
  %142 = shl i8 %shr.5.tr, 2
  %143 = and i8 %142, 4
  %conv123.5 = or i8 %141, %143
  store i8 %conv123.5, ptr %pbitmapout.0354, align 1
  %inc.5 = add i32 %mult24.3.4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.5)
  %cmp124.5 = icmp eq i32 %inc.5, 3
  %dec.5 = sext i1 %cmp124.5 to i32
  %inbit.3.5 = add i32 %inbit.4.4, %dec.5
  %mult24.3.5 = select i1 %cmp124.5, i32 0, i32 %inc.5
  %width107.3.5 = add i32 %width107.3.4, %dec.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inbit.3.5)
  %cmp129.5 = icmp slt i32 %inbit.3.5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %width107.3.5)
  %cmp132.5 = icmp eq i32 %width107.3.5, 0
  %or.cond258.5 = select i1 %cmp129.5, i1 true, i1 %cmp132.5
  br i1 %or.cond258.5, label %if.then134.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5

if.then134.5:                                     ; preds = %for.inc.4
  %dec135.5 = add i32 %src_bytes.3.4, -1
  %incdec.ptr.5 = getelementptr i8, ptr %pbitmapin.3.4, i32 1
  br i1 %cmp132.5, label %if.then134.5.for.inc.thread_crit_edge, label %if.then134.5.for.inc.5_crit_edge

if.then134.5.for.inc.5_crit_edge:                 ; preds = %if.then134.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5

if.then134.5.for.inc.thread_crit_edge:            ; preds = %if.then134.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.thread

for.inc.5:                                        ; preds = %if.then134.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %src_bytes.3.5 = phi i32 [ %dec135.5, %if.then134.5.for.inc.5_crit_edge ], [ %src_bytes.3.4, %for.inc.4.for.inc.5_crit_edge ]
  %inbit.4.5 = phi i32 [ 7, %if.then134.5.for.inc.5_crit_edge ], [ %inbit.3.5, %for.inc.4.for.inc.5_crit_edge ]
  %pbitmapin.3.5 = phi ptr [ %incdec.ptr.5, %if.then134.5.for.inc.5_crit_edge ], [ %pbitmapin.3.4, %for.inc.4.for.inc.5_crit_edge ]
  %144 = ptrtoint ptr %pbitmapin.3.5 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %pbitmapin.3.5, align 1
  %conv119.6 = zext i8 %145 to i32
  %shr.6 = lshr i32 %conv119.6, %inbit.4.5
  %146 = ptrtoint ptr %pbitmapout.0354 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %pbitmapout.0354, align 1
  %shr.6.tr = trunc i32 %shr.6 to i8
  %148 = shl i8 %shr.6.tr, 1
  %149 = and i8 %148, 2
  %conv123.6 = or i8 %147, %149
  store i8 %conv123.6, ptr %pbitmapout.0354, align 1
  %inc.6 = add i32 %mult24.3.5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.6)
  %cmp124.6 = icmp eq i32 %inc.6, 3
  %dec.6 = sext i1 %cmp124.6 to i32
  %inbit.3.6 = add i32 %inbit.4.5, %dec.6
  %mult24.3.6 = select i1 %cmp124.6, i32 0, i32 %inc.6
  %width107.3.6 = add i32 %width107.3.5, %dec.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inbit.3.6)
  %cmp129.6 = icmp slt i32 %inbit.3.6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %width107.3.6)
  %cmp132.6 = icmp eq i32 %width107.3.6, 0
  %or.cond258.6 = select i1 %cmp129.6, i1 true, i1 %cmp132.6
  br i1 %or.cond258.6, label %if.then134.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6

if.then134.6:                                     ; preds = %for.inc.5
  %dec135.6 = add i32 %src_bytes.3.5, -1
  %incdec.ptr.6 = getelementptr i8, ptr %pbitmapin.3.5, i32 1
  br i1 %cmp132.6, label %if.then134.6.for.inc.thread_crit_edge, label %if.then134.6.for.inc.6_crit_edge

if.then134.6.for.inc.6_crit_edge:                 ; preds = %if.then134.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6

if.then134.6.for.inc.thread_crit_edge:            ; preds = %if.then134.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.thread

for.inc.6:                                        ; preds = %if.then134.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %src_bytes.3.6 = phi i32 [ %dec135.6, %if.then134.6.for.inc.6_crit_edge ], [ %src_bytes.3.5, %for.inc.5.for.inc.6_crit_edge ]
  %inbit.4.6 = phi i32 [ 7, %if.then134.6.for.inc.6_crit_edge ], [ %inbit.3.6, %for.inc.5.for.inc.6_crit_edge ]
  %pbitmapin.3.6 = phi ptr [ %incdec.ptr.6, %if.then134.6.for.inc.6_crit_edge ], [ %pbitmapin.3.5, %for.inc.5.for.inc.6_crit_edge ]
  %150 = ptrtoint ptr %pbitmapin.3.6 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %pbitmapin.3.6, align 1
  %conv119.7 = zext i8 %151 to i32
  %shr.7 = lshr i32 %conv119.7, %inbit.4.6
  %152 = ptrtoint ptr %pbitmapout.0354 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %pbitmapout.0354, align 1
  %154 = trunc i32 %shr.7 to i8
  %155 = and i8 %154, 1
  %conv123.7 = or i8 %153, %155
  store i8 %conv123.7, ptr %pbitmapout.0354, align 1
  %inc.7 = add i32 %mult24.3.6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.7)
  %cmp124.7 = icmp eq i32 %inc.7, 3
  %dec.7 = sext i1 %cmp124.7 to i32
  %inbit.3.7 = add i32 %inbit.4.6, %dec.7
  %mult24.3.7 = select i1 %cmp124.7, i32 0, i32 %inc.7
  %width107.3.7 = add i32 %width107.3.6, %dec.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inbit.3.7)
  %cmp129.7 = icmp slt i32 %inbit.3.7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %width107.3.7)
  %cmp132.7 = icmp eq i32 %width107.3.7, 0
  %or.cond258.7 = select i1 %cmp129.7, i1 true, i1 %cmp132.7
  br i1 %or.cond258.7, label %if.then134.7, label %for.inc.6.for.inc143_crit_edge

for.inc.6.for.inc143_crit_edge:                   ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc143

if.then134.7:                                     ; preds = %for.inc.6
  %dec135.7 = add i32 %src_bytes.3.6, -1
  %incdec.ptr.7 = getelementptr i8, ptr %pbitmapin.3.6, i32 1
  br i1 %cmp132.7, label %if.then134.7.for.inc.thread_crit_edge, label %if.then134.7.for.inc143_crit_edge

if.then134.7.for.inc143_crit_edge:                ; preds = %if.then134.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc143

if.then134.7.for.inc.thread_crit_edge:            ; preds = %if.then134.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.thread

for.inc143:                                       ; preds = %if.then134.7.for.inc143_crit_edge, %for.inc.6.for.inc143_crit_edge, %for.inc.thread
  %mult24.3395 = phi i32 [ %mult24.3.lcssa, %for.inc.thread ], [ %mult24.3.7, %if.then134.7.for.inc143_crit_edge ], [ %mult24.3.7, %for.inc.6.for.inc143_crit_edge ]
  %pbitmapin.3386 = phi ptr [ %incdec.ptr.lcssa, %for.inc.thread ], [ %incdec.ptr.7, %if.then134.7.for.inc143_crit_edge ], [ %pbitmapin.3.6, %for.inc.6.for.inc143_crit_edge ]
  %width107.4385 = phi i32 [ %113, %for.inc.thread ], [ %width107.3.7, %if.then134.7.for.inc143_crit_edge ], [ %width107.3.7, %for.inc.6.for.inc143_crit_edge ]
  %inbit.4384 = phi i32 [ 7, %for.inc.thread ], [ 7, %if.then134.7.for.inc143_crit_edge ], [ %inbit.3.7, %for.inc.6.for.inc143_crit_edge ]
  %src_bytes.3383 = phi i32 [ %dec135.lcssa, %for.inc.thread ], [ %dec135.7, %if.then134.7.for.inc143_crit_edge ], [ %src_bytes.3.6, %for.inc.6.for.inc143_crit_edge ]
  %inc144 = add nuw nsw i32 %byte_id_in_dword.0351, 1
  %incdec.ptr145 = getelementptr i8, ptr %pbitmapout.0354, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %byte_id_in_dword.0351)
  %cmp111 = icmp ugt i32 %byte_id_in_dword.0351, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_bytes.3383)
  %tobool113.not = icmp eq i32 %src_bytes.3383, 0
  %or.cond257 = select i1 %cmp111, i1 true, i1 %tobool113.not
  br i1 %or.cond257, label %for.cond110.for.end146_crit_edge, label %for.inc143.for.cond115.preheader_crit_edge

for.inc143.for.cond115.preheader_crit_edge:       ; preds = %for.inc143
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond115.preheader

for.cond110.for.end146_crit_edge:                 ; preds = %for.inc143
  %156 = ptrtoint ptr %fifo_space1.i262 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %fifo_space1.i262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp11.i290 = icmp eq i32 %157, 0
  br i1 %cmp11.i290, label %for.cond110.for.end146_crit_edge.while.body.i298_crit_edge, label %for.cond110.for.end146_crit_edge.wait_for_fifo.exit301_crit_edge

for.cond110.for.end146_crit_edge.wait_for_fifo.exit301_crit_edge: ; preds = %for.cond110.for.end146_crit_edge
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit301

for.cond110.for.end146_crit_edge.while.body.i298_crit_edge: ; preds = %for.cond110.for.end146_crit_edge
  br label %while.body.i298

while.body.i298:                                  ; preds = %while.body.i298.while.body.i298_crit_edge, %for.cond110.for.end146_crit_edge.while.body.i298_crit_edge
  %158 = ptrtoint ptr %ati_regbase.i275 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ati_regbase.i275, align 4
  %add.ptr.i.i293 = getelementptr i8, ptr %159, i32 784
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i293) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %161 = and i32 %160, -65536
  %162 = tail call i32 @llvm.bswap.i32(i32 %161) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool.not.i.i294 = icmp eq i32 %161, 0
  %163 = tail call i32 @llvm.ctlz.i32(i32 %162, i1 true) #4, !range !13
  %sub.i.neg.op.i295 = add nsw i32 %163, -16
  %sub.i296 = select i1 %tobool.not.i.i294, i32 16, i32 %sub.i.neg.op.i295
  %cmp.i297 = icmp eq i32 %sub.i296, 0
  br i1 %cmp.i297, label %while.body.i298.while.body.i298_crit_edge, label %while.body.i298.wait_for_fifo.exit301_crit_edge

while.body.i298.wait_for_fifo.exit301_crit_edge:  ; preds = %while.body.i298
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit301

while.body.i298.while.body.i298_crit_edge:        ; preds = %while.body.i298
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i298

wait_for_fifo.exit301:                            ; preds = %while.body.i298.wait_for_fifo.exit301_crit_edge, %for.cond110.for.end146_crit_edge.wait_for_fifo.exit301_crit_edge
  %fifo_space.0.lcssa.i299 = phi i32 [ %157, %for.cond110.for.end146_crit_edge.wait_for_fifo.exit301_crit_edge ], [ %sub.i296, %while.body.i298.wait_for_fifo.exit301_crit_edge ]
  %sub5.i300 = add i32 %fifo_space.0.lcssa.i299, -1
  %164 = ptrtoint ptr %fifo_space1.i262 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %sub5.i300, ptr %fifo_space1.i262, align 4
  %165 = ptrtoint ptr %hostdword to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %hostdword, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %167 = ptrtoint ptr %ati_regbase.i275 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ati_regbase.i275, align 4
  %add.ptr.i303 = getelementptr i8, ptr %168, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i303, i32 %166) #4, !srcloc !12
  br i1 %tobool113.not, label %wait_for_fifo.exit301.for.end147_crit_edge, label %wait_for_fifo.exit301.for.body_crit_edge

wait_for_fifo.exit301.for.body_crit_edge:         ; preds = %wait_for_fifo.exit301
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

wait_for_fifo.exit301.for.end147_crit_edge:       ; preds = %wait_for_fifo.exit301
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end147

for.end147:                                       ; preds = %wait_for_fifo.exit301.for.end147_crit_edge, %if.then106.for.end147_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hostdword) #4
  br label %cleanup

if.else148:                                       ; preds = %land.lhs.true98.if.else148_crit_edge, %draw_rect.exit.if.else148_crit_edge
  %add149 = add i32 %mul93, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add149)
  %tobool153.not337 = icmp ult i32 %add149, 4
  br i1 %tobool153.not337, label %if.else148.cleanup_crit_edge, label %for.body154.preheader

if.else148.cleanup_crit_edge:                     ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body154.preheader:                            ; preds = %if.else148
  %data151 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %169 = ptrtoint ptr %data151 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %data151, align 4
  %div150256 = lshr i32 %add149, 2
  br label %for.body154

for.body154:                                      ; preds = %wait_for_fifo.exit316.for.body154_crit_edge, %for.body154.preheader
  %dwords.0339 = phi i32 [ %dec157, %wait_for_fifo.exit316.for.body154_crit_edge ], [ %div150256, %for.body154.preheader ]
  %pbitmap.0338 = phi ptr [ %incdec.ptr158, %wait_for_fifo.exit316.for.body154_crit_edge ], [ %170, %for.body154.preheader ]
  %171 = ptrtoint ptr %fifo_space1.i262 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %fifo_space1.i262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp11.i305 = icmp eq i32 %172, 0
  br i1 %cmp11.i305, label %for.body154.while.body.i313_crit_edge, label %for.body154.wait_for_fifo.exit316_crit_edge

for.body154.wait_for_fifo.exit316_crit_edge:      ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit316

for.body154.while.body.i313_crit_edge:            ; preds = %for.body154
  br label %while.body.i313

while.body.i313:                                  ; preds = %while.body.i313.while.body.i313_crit_edge, %for.body154.while.body.i313_crit_edge
  %173 = ptrtoint ptr %ati_regbase.i275 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ati_regbase.i275, align 4
  %add.ptr.i.i308 = getelementptr i8, ptr %174, i32 784
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i308) #4, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !10
  %176 = and i32 %175, -65536
  %177 = tail call i32 @llvm.bswap.i32(i32 %176) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool.not.i.i309 = icmp eq i32 %176, 0
  %178 = tail call i32 @llvm.ctlz.i32(i32 %177, i1 true) #4, !range !13
  %sub.i.neg.op.i310 = add nsw i32 %178, -16
  %sub.i311 = select i1 %tobool.not.i.i309, i32 16, i32 %sub.i.neg.op.i310
  %cmp.i312 = icmp eq i32 %sub.i311, 0
  br i1 %cmp.i312, label %while.body.i313.while.body.i313_crit_edge, label %while.body.i313.wait_for_fifo.exit316_crit_edge

while.body.i313.wait_for_fifo.exit316_crit_edge:  ; preds = %while.body.i313
  call void @__sanitizer_cov_trace_pc() #6
  br label %wait_for_fifo.exit316

while.body.i313.while.body.i313_crit_edge:        ; preds = %while.body.i313
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i313

wait_for_fifo.exit316:                            ; preds = %while.body.i313.wait_for_fifo.exit316_crit_edge, %for.body154.wait_for_fifo.exit316_crit_edge
  %fifo_space.0.lcssa.i314 = phi i32 [ %172, %for.body154.wait_for_fifo.exit316_crit_edge ], [ %sub.i311, %while.body.i313.wait_for_fifo.exit316_crit_edge ]
  %sub5.i315 = add i32 %fifo_space.0.lcssa.i314, -1
  %179 = ptrtoint ptr %fifo_space1.i262 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %sub5.i315, ptr %fifo_space1.i262, align 4
  %180 = ptrtoint ptr %pbitmap.0338 to i32
  call void @__asan_loadN_noabort(i32 %180, i32 4)
  %181 = load i32, ptr %pbitmap.0338, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %182 = ptrtoint ptr %ati_regbase.i275 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ati_regbase.i275, align 4
  %add.ptr.i318 = getelementptr i8, ptr %183, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i318, i32 %181) #4, !srcloc !12
  %dec157 = add i32 %dwords.0339, -1
  %incdec.ptr158 = getelementptr i32, ptr %pbitmap.0338, i32 1
  %tobool153.not = icmp eq i32 %dec157, 0
  br i1 %tobool153.not, label %wait_for_fifo.exit316.cleanup_crit_edge, label %wait_for_fifo.exit316.for.body154_crit_edge

wait_for_fifo.exit316.for.body154_crit_edge:      ; preds = %wait_for_fifo.exit316
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body154

wait_for_fifo.exit316.cleanup_crit_edge:          ; preds = %wait_for_fifo.exit316
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %wait_for_fifo.exit316.cleanup_crit_edge, %if.else148.cleanup_crit_edge, %for.end147, %if.then17, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
!9 = !{i64 4327463}
!10 = !{i64 2155894995}
!11 = !{i64 2155895388}
!12 = !{i64 4327045}
!13 = !{i32 0, i32 33}
