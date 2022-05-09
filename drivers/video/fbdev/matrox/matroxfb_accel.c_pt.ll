; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/matrox/matroxfb_accel.c_pt.bc'
source_filename = "../drivers/video/fbdev/matrox/matroxfb_accel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+matrox_cfbX_init\22, \22a\22\09"
module asm "\09.weak\09__crc_matrox_cfbX_init\09\09\09\09"
module asm "\09.long\09__crc_matrox_cfbX_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_matrox_cfbX_init:\09\09\09\09\09"
module asm "\09.asciz \09\22matrox_cfbX_init\22\09\09\09\09\09"
module asm "__kstrtabns_matrox_cfbX_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.78, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.matrox_fb_info = type { %struct.fb_info, %struct.list_head, i32, i32, i32, i32, i32, %struct.matroxfb_par, %struct.matrox_hw_state, %struct.matrox_accel_data, ptr, %struct.anon.81, %struct.anon.82, %struct.anon.83, [3 x %struct.anon.85], [5 x ptr], [5 x ptr], i32, %struct.anon.86, %struct.anon.87, i32, i32, ptr, %struct.anon.88, %struct.anon.89, i32, i32, i32, i32, %struct.anon.90, i32, %struct.anon.91, %struct.fb_ops, %struct.matrox_bios, %struct.anon.94, %struct.anon.95, %struct.anon.97, [16 x i32] }
%struct.matroxfb_par = type { i32, i32, %struct.anon.79 }
%struct.anon.79 = type { i32, i32, i32 }
%struct.matrox_hw_state = type { i32, [6 x i8], [80 x i8], i8, [768 x i8], [25 x i8], [9 x i8], [5 x i8], [9 x i8], [21 x i8], %struct.mavenregs, %struct.matrox_crtc2 }
%struct.mavenregs = type { [256 x i8], i32, i32, i32, i32, i16, i16 }
%struct.matrox_crtc2 = type { i32 }
%struct.matrox_accel_data = type { i8, i32, i32, i32, i32 }
%struct.anon.81 = type { %struct.matrox_vsync, i32, i32, i32 }
%struct.matrox_vsync = type { %struct.wait_queue_head, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.anon.82 = type { %struct.matrox_vsync, i32, i32, ptr, %struct.rw_semaphore }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.83 = type { %struct.rw_semaphore, %struct.anon.84 }
%struct.anon.84 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.85 = type { i32, ptr, ptr, i32, i32 }
%struct.anon.86 = type { i32, %struct.vaddr_t, i32, i32, i32 }
%struct.vaddr_t = type { ptr }
%struct.anon.87 = type { i32, %struct.vaddr_t, i32 }
%struct.anon.88 = type { %struct.matrox_pll_features, %struct.matrox_DAC1064_features }
%struct.matrox_pll_features = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.matrox_DAC1064_features = type { i8, i8 }
%struct.anon.89 = type { %struct.spinlock, %struct.spinlock }
%struct.anon.90 = type { i32, ptr, i32, i32, i32, i32 }
%struct.anon.91 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.matrox_bios = type { i8, i32, [128 x i8], %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i8, i8, i8 }
%struct.anon.93 = type { i8, i8 }
%struct.anon.94 = type { %struct.matrox_pll_limits, %struct.matrox_pll_limits, %struct.matrox_pll_limits }
%struct.matrox_pll_limits = type { i32, i32 }
%struct.anon.95 = type { %struct.matrox_pll_cache, %struct.matrox_pll_cache, %struct.matrox_pll_cache }
%struct.matrox_pll_cache = type { i32, [4 x %struct.anon.96] }
%struct.anon.96 = type { i32, i32 }
%struct.anon.97 = type { %struct.anon.98, %struct.anon.99, %struct.anon.100 }
%struct.anon.98 = type { i32, i32 }
%struct.anon.99 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.100 = type { i8, [3 x i8] }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }

@__kstrtab_matrox_cfbX_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_matrox_cfbX_init = external dso_local constant [0 x i8], align 1
@__ksymtab_matrox_cfbX_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @matrox_cfbX_init to i32), ptr @__kstrtab_matrox_cfbX_init, ptr @__kstrtabns_matrox_cfbX_init }, section "___ksymtab+matrox_cfbX_init", align 4
@__UNIQUE_ID_file305 = internal constant [62 x i8] c"matroxfb_accel.file=drivers/video/fbdev/matrox/matroxfb_accel\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [27 x i8] c"matroxfb_accel.license=GPL\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__ksymtab_matrox_cfbX_init], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @matrox_cfbX_init(ptr nocapture noundef %minfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %minfo, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xres_virtual, align 4
  %fb_copyarea = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 32, i32 12
  %2 = ptrtoint ptr %fb_copyarea to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @cfb_copyarea, ptr %fb_copyarea, align 4
  %fb_fillrect = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 32, i32 11
  %3 = ptrtoint ptr %fb_fillrect to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cfb_fillrect, ptr %fb_fillrect, align 4
  %fb_imageblit = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 32, i32 13
  %4 = ptrtoint ptr %fb_imageblit to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cfb_imageblit, ptr %fb_imageblit, align 4
  %fb_cursor = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 32, i32 14
  %5 = ptrtoint ptr %fb_cursor to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %fb_cursor, align 4
  %accel_flags = getelementptr inbounds %struct.fb_info, ptr %minfo, i32 0, i32 6, i32 16
  %6 = ptrtoint ptr %accel_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %accel_flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %minfo, i32 0, i32 6, i32 6
  %8 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits_per_pixel, align 4
  %10 = add i32 %9, -4
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 30)
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 3, label %sw.bb26
    i32 5, label %sw.bb42
    i32 7, label %sw.bb52
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %shr = lshr i32 %1, 1
  %or = or i32 %shr, 32768
  %cmap = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37
  %13 = ptrtoint ptr %cmap to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %cmap, align 4
  %arrayidx.1.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 1
  %14 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 286331153, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 2
  %15 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 572662306, ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 3
  %16 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 858993459, ptr %arrayidx.3.i, align 4
  %arrayidx.4.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 4
  %17 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1145324612, ptr %arrayidx.4.i, align 4
  %arrayidx.5.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 5
  %18 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1431655765, ptr %arrayidx.5.i, align 4
  %arrayidx.6.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 6
  %19 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1717986918, ptr %arrayidx.6.i, align 4
  %arrayidx.7.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 7
  %20 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2004318071, ptr %arrayidx.7.i, align 4
  %arrayidx.8.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 8
  %21 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -2004318072, ptr %arrayidx.8.i, align 4
  %arrayidx.9.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 9
  %22 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1717986919, ptr %arrayidx.9.i, align 4
  %arrayidx.10.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 10
  %23 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1431655766, ptr %arrayidx.10.i, align 4
  %arrayidx.11.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 11
  %24 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1145324613, ptr %arrayidx.11.i, align 4
  %arrayidx.12.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 12
  %25 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -858993460, ptr %arrayidx.12.i, align 4
  %arrayidx.13.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 13
  %26 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -572662307, ptr %arrayidx.13.i, align 4
  %arrayidx.14.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 14
  %27 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -286331154, ptr %arrayidx.14.i, align 4
  %arrayidx.15.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 15
  %28 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %arrayidx.15.i, align 4
  %cmp.not.not = xor i1 %cmp.not, true
  %29 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool9.not = icmp eq i32 %29, 0
  %or.cond = select i1 %cmp.not.not, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %fb_copyarea to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @matroxfb_cfb4_copyarea, ptr %fb_copyarea, align 4
  %31 = ptrtoint ptr %fb_fillrect to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @matroxfb_cfb4_fillrect, ptr %fb_fillrect, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %cmap15 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37
  %32 = ptrtoint ptr %cmap15 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %cmap15, align 4
  %arrayidx.1.i174 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 1
  %33 = ptrtoint ptr %arrayidx.1.i174 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16843009, ptr %arrayidx.1.i174, align 4
  %arrayidx.2.i175 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 2
  %34 = ptrtoint ptr %arrayidx.2.i175 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 33686018, ptr %arrayidx.2.i175, align 4
  %arrayidx.3.i176 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 3
  %35 = ptrtoint ptr %arrayidx.3.i176 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 50529027, ptr %arrayidx.3.i176, align 4
  %arrayidx.4.i177 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 4
  %36 = ptrtoint ptr %arrayidx.4.i177 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 67372036, ptr %arrayidx.4.i177, align 4
  %arrayidx.5.i178 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 5
  %37 = ptrtoint ptr %arrayidx.5.i178 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 84215045, ptr %arrayidx.5.i178, align 4
  %arrayidx.6.i179 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 6
  %38 = ptrtoint ptr %arrayidx.6.i179 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 101058054, ptr %arrayidx.6.i179, align 4
  %arrayidx.7.i180 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 7
  %39 = ptrtoint ptr %arrayidx.7.i180 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 117901063, ptr %arrayidx.7.i180, align 4
  %arrayidx.8.i181 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 8
  %40 = ptrtoint ptr %arrayidx.8.i181 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 134744072, ptr %arrayidx.8.i181, align 4
  %arrayidx.9.i182 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 9
  %41 = ptrtoint ptr %arrayidx.9.i182 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 151587081, ptr %arrayidx.9.i182, align 4
  %arrayidx.10.i183 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 10
  %42 = ptrtoint ptr %arrayidx.10.i183 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 168430090, ptr %arrayidx.10.i183, align 4
  %arrayidx.11.i184 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 11
  %43 = ptrtoint ptr %arrayidx.11.i184 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 185273099, ptr %arrayidx.11.i184, align 4
  %arrayidx.12.i185 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 12
  %44 = ptrtoint ptr %arrayidx.12.i185 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 202116108, ptr %arrayidx.12.i185, align 4
  %arrayidx.13.i186 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 13
  %45 = ptrtoint ptr %arrayidx.13.i186 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 218959117, ptr %arrayidx.13.i186, align 4
  %arrayidx.14.i187 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 14
  %46 = ptrtoint ptr %arrayidx.14.i187 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 235802126, ptr %arrayidx.14.i187, align 4
  %arrayidx.15.i188 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 37, i32 15
  %47 = ptrtoint ptr %arrayidx.15.i188 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 252645135, ptr %arrayidx.15.i188, align 4
  br i1 %cmp.not, label %sw.bb14.sw.epilog_crit_edge, label %if.then18

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then18:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #5
  %48 = ptrtoint ptr %fb_copyarea to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @matroxfb_copyarea, ptr %fb_copyarea, align 4
  %49 = ptrtoint ptr %fb_fillrect to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @matroxfb_fillrect, ptr %fb_fillrect, align 4
  %50 = ptrtoint ptr %fb_imageblit to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @matroxfb_imageblit, ptr %fb_imageblit, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %length = getelementptr inbounds %struct.fb_info, ptr %minfo, i32 0, i32 6, i32 9, i32 1
  %51 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %52)
  %cmp29 = icmp eq i32 %52, 5
  %. = select i1 %cmp29, i32 -1073741823, i32 1073741825
  br i1 %cmp.not, label %sw.bb26.sw.epilog_crit_edge, label %if.then34

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then34:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #5
  %53 = ptrtoint ptr %fb_copyarea to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @matroxfb_copyarea, ptr %fb_copyarea, align 4
  %54 = ptrtoint ptr %fb_fillrect to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @matroxfb_fillrect, ptr %fb_fillrect, align 4
  %55 = ptrtoint ptr %fb_imageblit to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @matroxfb_imageblit, ptr %fb_imageblit, align 4
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  br i1 %cmp.not, label %sw.bb42.sw.epilog_crit_edge, label %if.then44

sw.bb42.sw.epilog_crit_edge:                      ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then44:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #5
  %56 = ptrtoint ptr %fb_copyarea to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @matroxfb_copyarea, ptr %fb_copyarea, align 4
  %57 = ptrtoint ptr %fb_fillrect to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @matroxfb_fillrect, ptr %fb_fillrect, align 4
  %58 = ptrtoint ptr %fb_imageblit to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @matroxfb_imageblit, ptr %fb_imageblit, align 4
  br label %sw.epilog

sw.bb52:                                          ; preds = %entry
  br i1 %cmp.not, label %sw.bb52.sw.epilog_crit_edge, label %if.then54

sw.bb52.sw.epilog_crit_edge:                      ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then54:                                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #5
  %59 = ptrtoint ptr %fb_copyarea to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @matroxfb_copyarea, ptr %fb_copyarea, align 4
  %60 = ptrtoint ptr %fb_fillrect to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @matroxfb_fillrect, ptr %fb_fillrect, align 4
  %61 = ptrtoint ptr %fb_imageblit to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @matroxfb_imageblit, ptr %fb_imageblit, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then54, %sw.bb52.sw.epilog_crit_edge, %if.then44, %sw.bb42.sw.epilog_crit_edge, %if.then34, %sw.bb26.sw.epilog_crit_edge, %if.then18, %sw.bb14.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %maccess.1 = phi i32 [ 2, %if.then54 ], [ 2, %sw.bb52.sw.epilog_crit_edge ], [ 3, %if.then44 ], [ 3, %sw.bb42.sw.epilog_crit_edge ], [ %., %if.then34 ], [ %., %sw.bb26.sw.epilog_crit_edge ], [ 0, %if.then18 ], [ 0, %sw.bb14.sw.epilog_crit_edge ], [ 0, %if.then ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge ]
  %mpitch.0 = phi i32 [ %1, %if.then54 ], [ %1, %sw.bb52.sw.epilog_crit_edge ], [ %1, %if.then44 ], [ %1, %sw.bb42.sw.epilog_crit_edge ], [ %1, %if.then34 ], [ %1, %sw.bb26.sw.epilog_crit_edge ], [ %1, %if.then18 ], [ %1, %sw.bb14.sw.epilog_crit_edge ], [ %or, %if.then ], [ %or, %sw.bb.sw.epilog_crit_edge ], [ %1, %entry.sw.epilog_crit_edge ]
  %mopmode.0 = phi i32 [ 131076, %if.then54 ], [ 131076, %sw.bb52.sw.epilog_crit_edge ], [ 4, %if.then44 ], [ 4, %sw.bb42.sw.epilog_crit_edge ], [ 65540, %if.then34 ], [ 65540, %sw.bb26.sw.epilog_crit_edge ], [ 4, %if.then18 ], [ 4, %sw.bb14.sw.epilog_crit_edge ], [ 4, %if.then ], [ 4, %sw.bb.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge ]
  %vbase = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %sw.epilog
  %62 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %62)
  %.unpack = load i32, ptr %vbase, align 4
  %63 = inttoptr i32 %.unpack to ptr
  %add.ptr.i = getelementptr i8, ptr %63, i32 7696
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %cmp63 = icmp ult i32 %64, 134217728
  br i1 %cmp63, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.end:                                           ; preds = %do.body
  %65 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %65)
  %.unpack164 = load i32, ptr %vbase, align 4
  %66 = inttoptr i32 %.unpack164 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %67 = tail call i32 @llvm.bswap.i32(i32 %mpitch.0) #3
  %add.ptr.i189 = getelementptr i8, ptr %66, i32 7308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i189, i32 %67) #3, !srcloc !17
  %pixels = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 7, i32 2, i32 1
  %68 = ptrtoint ptr %pixels to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pixels, align 4
  %70 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %70)
  %.unpack165 = load i32, ptr %vbase, align 4
  %71 = inttoptr i32 %.unpack165 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %72 = tail call i32 @llvm.bswap.i32(i32 %69) #3
  %add.ptr.i190 = getelementptr i8, ptr %71, i32 7316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190, i32 %72) #3, !srcloc !17
  %plnwt = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 29, i32 4
  %73 = ptrtoint ptr %plnwt to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %plnwt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool71.not = icmp eq i32 %74, 0
  br i1 %tobool71.not, label %do.end.if.end76_crit_edge, label %if.then72

do.end.if.end76_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end76

if.then72:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %75 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %75)
  %.unpack173 = load i32, ptr %vbase, align 4
  %76 = inttoptr i32 %.unpack173 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %add.ptr.i191 = getelementptr i8, ptr %76, i32 7196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i191, i32 -1) #3, !srcloc !17
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %do.end.if.end76_crit_edge
  %srcorg = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 29, i32 5
  %77 = ptrtoint ptr %srcorg to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %srcorg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool78.not = icmp eq i32 %78, 0
  br i1 %tobool78.not, label %if.end76.if.end86_crit_edge, label %if.then79

if.end76.if.end86_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end86

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #5
  %79 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %79)
  %.unpack171 = load i32, ptr %vbase, align 4
  %80 = inttoptr i32 %.unpack171 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %add.ptr.i192 = getelementptr i8, ptr %80, i32 11444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i192, i32 0) #3, !srcloc !17
  %81 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %81)
  %.unpack172 = load i32, ptr %vbase, align 4
  %82 = inttoptr i32 %.unpack172 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %add.ptr.i193 = getelementptr i8, ptr %82, i32 11448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i193, i32 0) #3, !srcloc !17
  br label %if.end86

if.end86:                                         ; preds = %if.then79, %if.end76.if.end86_crit_edge
  %83 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %83)
  %.unpack166 = load i32, ptr %vbase, align 4
  %84 = inttoptr i32 %.unpack166 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %85 = tail call i32 @llvm.bswap.i32(i32 %mopmode.0) #3
  %add.ptr.i194 = getelementptr i8, ptr %84, i32 7764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194, i32 %85) #3, !srcloc !17
  %86 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %86)
  %.unpack167 = load i32, ptr %vbase, align 4
  %87 = inttoptr i32 %.unpack167 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %add.ptr.i195 = getelementptr i8, ptr %87, i32 7296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i195, i32 65535) #3, !srcloc !17
  %88 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %88)
  %.unpack168 = load i32, ptr %vbase, align 4
  %89 = inttoptr i32 %.unpack168 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %add.ptr.i196 = getelementptr i8, ptr %89, i32 7320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i196, i32 0) #3, !srcloc !17
  %90 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %90)
  %.unpack169 = load i32, ptr %vbase, align 4
  %91 = inttoptr i32 %.unpack169 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %add.ptr.i197 = getelementptr i8, ptr %91, i32 7324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i197, i32 -255) #3, !srcloc !17
  %92 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %92)
  %.unpack170 = load i32, ptr %vbase, align 4
  %93 = inttoptr i32 %.unpack170 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %94 = tail call i32 @llvm.bswap.i32(i32 %maccess.1) #3
  %add.ptr.i198 = getelementptr i8, ptr %93, i32 7172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 %94) #3, !srcloc !17
  %m_dwg_rect = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 9, i32 1
  %milleniumII = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 28
  %95 = ptrtoint ptr %milleniumII to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %milleniumII, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool103.not = icmp eq i32 %96, 0
  %spec.store.select = select i1 %tobool103.not, i32 30724, i32 1073772548
  %97 = ptrtoint ptr %m_dwg_rect to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %spec.store.select, ptr %m_dwg_rect, align 4
  %m_opmode = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 9, i32 2
  %98 = ptrtoint ptr %m_opmode to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %mopmode.0, ptr %m_opmode, align 4
  %m_access = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 9, i32 3
  %99 = ptrtoint ptr %m_access to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %maccess.1, ptr %m_access, align 4
  %m_pitch = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 9, i32 4
  %100 = ptrtoint ptr %m_pitch to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %mpitch.0, ptr %m_pitch, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @matroxfb_cfb4_copyarea(ptr noundef %info, ptr noundef %area) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sx = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 4
  %0 = ptrtoint ptr %sx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sx, align 4
  %2 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %area, align 4
  %or = or i32 %3, %1
  %width = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %or1 = or i32 %or, %5
  %and = and i32 %or1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @cfb_copyarea(ptr noundef %info, ptr noundef %area) #3
  br label %if.end

if.else:                                          ; preds = %entry
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xres_virtual, align 4
  %shr = lshr i32 %7, 1
  %sy = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %8 = ptrtoint ptr %sy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sy, align 4
  %shr3 = lshr i32 %1, 1
  %dy = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %10 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dy, align 4
  %shr5 = lshr i32 %3, 1
  %height = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %shr7 = lshr i32 %5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp.i = icmp slt i32 %11, %9
  br i1 %cmp.i, label %if.else.if.then.i_crit_edge, label %lor.lhs.false.i

if.else.if.then.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp1.i = icmp ne i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %shr5, i32 %shr3)
  %cmp2.not.i = icmp ugt i32 %shr5, %shr3
  %or.cond.i = or i1 %cmp2.not.i, %cmp1.i
  br i1 %or.cond.i, label %do.body12.preheader.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

do.body12.preheader.i:                            ; preds = %lor.lhs.false.i
  %vbase15.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 19, i32 1
  br label %do.body12.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.else.if.then.i_crit_edge
  %vbase.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 19, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then.i
  %14 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack135.i = load i32, ptr %vbase.i, align 4
  %15 = inttoptr i32 %.unpack135.i to ptr
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 7696
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %cmp3.i = icmp ult i32 %16, 67108864
  br i1 %cmp3.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %m_access.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 9, i32 3
  %17 = ptrtoint ptr %m_access.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %m_access.i.i, align 4
  %19 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack.i.i = load i32, ptr %vbase.i, align 4
  %20 = inttoptr i32 %.unpack.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #3
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 7172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %21) #3, !srcloc !17
  %m_pitch.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 9, i32 4
  %22 = ptrtoint ptr %m_pitch.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %m_pitch.i.i, align 4
  %24 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack8.i.i = load i32, ptr %vbase.i, align 4
  %25 = inttoptr i32 %.unpack8.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %26 = tail call i32 @llvm.bswap.i32(i32 %23) #3
  %add.ptr.i9.i.i = getelementptr i8, ptr %25, i32 7308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i.i, i32 %26) #3, !srcloc !17
  %27 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack136.i = load i32, ptr %vbase.i, align 4
  %28 = inttoptr i32 %.unpack136.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %add.ptr.i138.i = getelementptr i8, ptr %28, i32 7168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138.i, i32 140512260) #3, !srcloc !17
  %29 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack137.i = load i32, ptr %vbase.i, align 4
  %30 = inttoptr i32 %.unpack137.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %31 = tail call i32 @llvm.bswap.i32(i32 %shr) #3
  %add.ptr.i139.i = getelementptr i8, ptr %30, i32 7284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139.i, i32 %31) #3, !srcloc !17
  %dec.i = add nsw i32 %shr7, -1
  %mul.i = mul i32 %9, %shr
  %add.i = add i32 %mul.i, %shr3
  %pixels.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 7, i32 2, i32 1
  %32 = ptrtoint ptr %pixels.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pixels.i, align 4
  %add10.i = add i32 %add.i, %33
  %add11.i = add i32 %add10.i, %dec.i
  br label %if.end.i

do.body12.i:                                      ; preds = %do.body12.i.do.body12.i_crit_edge, %do.body12.preheader.i
  %34 = ptrtoint ptr %vbase15.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack.i = load i32, ptr %vbase15.i, align 4
  %35 = inttoptr i32 %.unpack.i to ptr
  %add.ptr.i140.i = getelementptr i8, ptr %35, i32 7696
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %cmp19.i = icmp ult i32 %36, 83886080
  br i1 %cmp19.i, label %do.body12.i.do.body12.i_crit_edge, label %do.end20.i

do.body12.i.do.body12.i_crit_edge:                ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body12.i

do.end20.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #5
  %m_access.i142.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 9, i32 3
  %37 = ptrtoint ptr %m_access.i142.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %m_access.i142.i, align 4
  %39 = ptrtoint ptr %vbase15.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack.i143.i = load i32, ptr %vbase15.i, align 4
  %40 = inttoptr i32 %.unpack.i143.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #3
  %add.ptr.i.i144.i = getelementptr i8, ptr %40, i32 7172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i144.i, i32 %41) #3, !srcloc !17
  %m_pitch.i145.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 9, i32 4
  %42 = ptrtoint ptr %m_pitch.i145.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %m_pitch.i145.i, align 4
  %44 = ptrtoint ptr %vbase15.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack8.i146.i = load i32, ptr %vbase15.i, align 4
  %45 = inttoptr i32 %.unpack8.i146.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %46 = tail call i32 @llvm.bswap.i32(i32 %43) #3
  %add.ptr.i9.i147.i = getelementptr i8, ptr %45, i32 7308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i147.i, i32 %46) #3, !srcloc !17
  %47 = ptrtoint ptr %vbase15.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.unpack124.i = load i32, ptr %vbase15.i, align 4
  %48 = inttoptr i32 %.unpack124.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %add.ptr.i148.i = getelementptr i8, ptr %48, i32 7168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148.i, i32 138415108) #3, !srcloc !17
  %49 = ptrtoint ptr %vbase15.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.unpack125.i = load i32, ptr %vbase15.i, align 4
  %50 = inttoptr i32 %.unpack125.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %add.ptr.i149.i = getelementptr i8, ptr %50, i32 7256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149.i, i32 83886080) #3, !srcloc !17
  %sub.i = sub nsw i32 0, %shr
  %51 = ptrtoint ptr %vbase15.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.unpack126.i = load i32, ptr %vbase15.i, align 4
  %52 = inttoptr i32 %.unpack126.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %53 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #3
  %add.ptr.i150.i = getelementptr i8, ptr %52, i32 7284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150.i, i32 %53) #3, !srcloc !17
  %dec30.i = add nsw i32 %shr7, -1
  %add31.i = add i32 %13, -1
  %sub32.i = add i32 %add31.i, %9
  %mul33.i = mul i32 %sub32.i, %shr
  %add34.i = add i32 %mul33.i, %shr3
  %pixels37.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 7, i32 2, i32 1
  %54 = ptrtoint ptr %pixels37.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pixels37.i, align 4
  %add38.i = add i32 %add34.i, %55
  %add39.i = add i32 %add38.i, %dec30.i
  %add41.i = add i32 %add31.i, %11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end20.i, %do.end.i
  %dy.addr.0.i = phi i32 [ %11, %do.end.i ], [ %add41.i, %do.end20.i ]
  %width.addr.0.i = phi i32 [ %dec.i, %do.end.i ], [ %dec30.i, %do.end20.i ]
  %start.0.i = phi i32 [ %add10.i, %do.end.i ], [ %add39.i, %do.end20.i ]
  %end.0.i = phi i32 [ %add11.i, %do.end.i ], [ %add38.i, %do.end20.i ]
  %vbase45.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 19, i32 1
  br label %do.body42.i

do.body42.i:                                      ; preds = %do.body42.i.do.body42.i_crit_edge, %if.end.i
  %56 = ptrtoint ptr %vbase45.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.unpack127.i = load i32, ptr %vbase45.i, align 4
  %57 = inttoptr i32 %.unpack127.i to ptr
  %add.ptr.i151.i = getelementptr i8, ptr %57, i32 7696
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %cmp49.i = icmp ult i32 %58, 117440512
  br i1 %cmp49.i, label %do.body42.i.do.body42.i_crit_edge, label %do.end50.i

do.body42.i.do.body42.i_crit_edge:                ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body42.i

do.end50.i:                                       ; preds = %do.body42.i
  %m_access.i153.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 9, i32 3
  %59 = ptrtoint ptr %m_access.i153.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %m_access.i153.i, align 4
  %61 = ptrtoint ptr %vbase45.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.unpack.i154.i = load i32, ptr %vbase45.i, align 4
  %62 = inttoptr i32 %.unpack.i154.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %63 = tail call i32 @llvm.bswap.i32(i32 %60) #3
  %add.ptr.i.i155.i = getelementptr i8, ptr %62, i32 7172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i155.i, i32 %63) #3, !srcloc !17
  %m_pitch.i156.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 9, i32 4
  %64 = ptrtoint ptr %m_pitch.i156.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %m_pitch.i156.i, align 4
  %66 = ptrtoint ptr %vbase45.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.unpack8.i157.i = load i32, ptr %vbase45.i, align 4
  %67 = inttoptr i32 %.unpack8.i157.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %68 = tail call i32 @llvm.bswap.i32(i32 %65) #3
  %add.ptr.i9.i158.i = getelementptr i8, ptr %67, i32 7308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i158.i, i32 %68) #3, !srcloc !17
  %69 = ptrtoint ptr %vbase45.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.unpack128.i = load i32, ptr %vbase45.i, align 4
  %70 = inttoptr i32 %.unpack128.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %71 = tail call i32 @llvm.bswap.i32(i32 %end.0.i) #3
  %add.ptr.i159.i = getelementptr i8, ptr %70, i32 7264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159.i, i32 %71) #3, !srcloc !17
  %72 = ptrtoint ptr %vbase45.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.unpack129.i = load i32, ptr %vbase45.i, align 4
  %73 = inttoptr i32 %.unpack129.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %74 = tail call i32 @llvm.bswap.i32(i32 %start.0.i) #3
  %add.ptr.i160.i = getelementptr i8, ptr %73, i32 7276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160.i, i32 %74) #3, !srcloc !17
  %add59.i = add i32 %width.addr.0.i, %shr5
  %shl.i = shl i32 %add59.i, 16
  %or.i = or i32 %shl.i, %shr5
  %75 = ptrtoint ptr %vbase45.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %.unpack130.i = load i32, ptr %vbase45.i, align 4
  %76 = inttoptr i32 %.unpack130.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %77 = tail call i32 @llvm.bswap.i32(i32 %or.i) #3
  %add.ptr.i161.i = getelementptr i8, ptr %76, i32 7300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161.i, i32 %77) #3, !srcloc !17
  %mul63.i = mul i32 %dy.addr.0.i, %shr
  %shr.i = ashr i32 %mul63.i, 5
  %78 = ptrtoint ptr %vbase45.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.unpack131.i = load i32, ptr %vbase45.i, align 4
  %79 = inttoptr i32 %.unpack131.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %80 = tail call i32 @llvm.bswap.i32(i32 %shr.i) #3
  %add.ptr.i162.i = getelementptr i8, ptr %79, i32 7312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162.i, i32 %80) #3, !srcloc !17
  %81 = ptrtoint ptr %vbase45.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %.unpack132.i = load i32, ptr %vbase45.i, align 4
  %82 = inttoptr i32 %.unpack132.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %83 = tail call i32 @llvm.bswap.i32(i32 %13) #3
  %add.ptr.i163.i = getelementptr i8, ptr %82, i32 7516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163.i, i32 %83) #3, !srcloc !17
  %84 = ptrtoint ptr %vbase45.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %.unpack133.i = load i32, ptr %vbase45.i, align 4
  %85 = inttoptr i32 %.unpack133.i to ptr
  %add.ptr.i164.i = getelementptr i8, ptr %85, i32 7700
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i164.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  br label %do.body73.i

do.body73.i:                                      ; preds = %do.body73.i.do.body73.i_crit_edge, %do.end50.i
  %87 = ptrtoint ptr %vbase45.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %.unpack134.i = load i32, ptr %vbase45.i, align 4
  %88 = inttoptr i32 %.unpack134.i to ptr
  %add.ptr.i165.i = getelementptr i8, ptr %88, i32 7700
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i165.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %90 = and i32 %89, 256
  %tobool.not.i = icmp eq i32 %90, 0
  br i1 %tobool.not.i, label %do.body73.i.if.end_crit_edge, label %do.body73.i.do.body73.i_crit_edge

do.body73.i.do.body73.i_crit_edge:                ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body73.i

do.body73.i.if.end_crit_edge:                     ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %do.body73.i.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @matroxfb_cfb4_fillrect(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %rect) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rop = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 5
  %0 = ptrtoint ptr %rop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %2 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pseudo_palette, align 4
  %color = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %4 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %color, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %8 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dy, align 4
  %10 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rect, align 4
  %height = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %width = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.if.end3.i_crit_edge, label %if.then.i

sw.bb.if.end3.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not.i = icmp eq i32 %15, 0
  br i1 %tobool1.not.i, label %if.then.i.sw.epilog_crit_edge, label %if.end.i

if.then.i.sw.epilog_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %inc.i = add i32 %11, 1
  %dec.i = add i32 %15, -1
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i, %sw.bb.if.end3.i_crit_edge
  %sx.addr.0.i = phi i32 [ %inc.i, %if.end.i ], [ %11, %sw.bb.if.end3.i_crit_edge ]
  %width.addr.0.i = phi i32 [ %dec.i, %if.end.i ], [ %15, %sw.bb.if.end3.i_crit_edge ]
  %whattodo.0.i = phi i32 [ 1, %if.end.i ], [ 0, %sw.bb.if.end3.i_crit_edge ]
  %and4.i = shl i32 %width.addr.0.i, 1
  %16 = and i32 %and4.i, 2
  %17 = or i32 %16, %whattodo.0.i
  %shr.i = ashr i32 %width.addr.0.i, 1
  %shr8.i = ashr i32 %sx.addr.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %width.addr.0.i)
  %tobool9.not.i = icmp ult i32 %width.addr.0.i, 2
  br i1 %tobool9.not.i, label %if.end3.i.if.end46.i_crit_edge, label %do.body.preheader.i

if.end3.i.if.end46.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end46.i

do.body.preheader.i:                              ; preds = %if.end3.i
  %vbase.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 19, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.preheader.i
  %18 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack.i = load i32, ptr %vbase.i, align 4
  %19 = inttoptr i32 %.unpack.i to ptr
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 7696
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %cmp.i = icmp ult i32 %20, 117440512
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %m_access.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 9, i32 3
  %21 = ptrtoint ptr %m_access.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %m_access.i.i, align 4
  %23 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack.i.i = load i32, ptr %vbase.i, align 4
  %24 = inttoptr i32 %.unpack.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %25 = tail call i32 @llvm.bswap.i32(i32 %22) #3
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 7172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %25) #3, !srcloc !17
  %m_pitch.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 9, i32 4
  %26 = ptrtoint ptr %m_pitch.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %m_pitch.i.i, align 4
  %28 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack8.i.i = load i32, ptr %vbase.i, align 4
  %29 = inttoptr i32 %.unpack8.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %30 = tail call i32 @llvm.bswap.i32(i32 %27) #3
  %add.ptr.i9.i.i = getelementptr i8, ptr %29, i32 7308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i.i, i32 %30) #3, !srcloc !17
  %m_dwg_rect.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 9, i32 1
  %31 = ptrtoint ptr %m_dwg_rect.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %m_dwg_rect.i, align 4
  %or14.i = or i32 %32, 786496
  %33 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack155.i = load i32, ptr %vbase.i, align 4
  %34 = inttoptr i32 %.unpack155.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %35 = tail call i32 @llvm.bswap.i32(i32 %or14.i) #3
  %add.ptr.i162.i = getelementptr i8, ptr %34, i32 7168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162.i, i32 %35) #3, !srcloc !17
  %36 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack156.i = load i32, ptr %vbase.i, align 4
  %37 = inttoptr i32 %.unpack156.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %38 = tail call i32 @llvm.bswap.i32(i32 %7) #3
  %add.ptr.i163.i = getelementptr i8, ptr %37, i32 7204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163.i, i32 %38) #3, !srcloc !17
  %add.i = add nsw i32 %shr.i, %shr8.i
  %shl.i = shl i32 %add.i, 16
  %or21.i = or i32 %shl.i, %shr8.i
  %39 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack157.i = load i32, ptr %vbase.i, align 4
  %40 = inttoptr i32 %.unpack157.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %41 = tail call i32 @llvm.bswap.i32(i32 %or21.i) #3
  %add.ptr.i164.i = getelementptr i8, ptr %40, i32 7300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164.i, i32 %41) #3, !srcloc !17
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %42 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %xres_virtual.i, align 4
  %mul.i = mul i32 %43, %9
  %shr25.i = lshr i32 %mul.i, 6
  %44 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack158.i = load i32, ptr %vbase.i, align 4
  %45 = inttoptr i32 %.unpack158.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %46 = tail call i32 @llvm.bswap.i32(i32 %shr25.i) #3
  %add.ptr.i165.i = getelementptr i8, ptr %45, i32 7312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165.i, i32 %46) #3, !srcloc !17
  %47 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.unpack159.i = load i32, ptr %vbase.i, align 4
  %48 = inttoptr i32 %.unpack159.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %49 = tail call i32 @llvm.bswap.i32(i32 %13) #3
  %add.ptr.i166.i = getelementptr i8, ptr %48, i32 7516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166.i, i32 %49) #3, !srcloc !17
  %50 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.unpack160.i = load i32, ptr %vbase.i, align 4
  %51 = inttoptr i32 %.unpack160.i to ptr
  %add.ptr.i167.i = getelementptr i8, ptr %51, i32 7700
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i167.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  br label %do.body35.i

do.body35.i:                                      ; preds = %do.body35.i.do.body35.i_crit_edge, %do.end.i
  %53 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.unpack161.i = load i32, ptr %vbase.i, align 4
  %54 = inttoptr i32 %.unpack161.i to ptr
  %add.ptr.i168.i = getelementptr i8, ptr %54, i32 7700
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i168.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %56 = and i32 %55, 256
  %tobool42.not.i = icmp eq i32 %56, 0
  br i1 %tobool42.not.i, label %do.body35.i.if.end46.i_crit_edge, label %do.body35.i.do.body35.i_crit_edge

do.body35.i.do.body35.i_crit_edge:                ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body35.i

do.body35.i.if.end46.i_crit_edge:                 ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end46.i

if.end46.i:                                       ; preds = %do.body35.i.if.end46.i_crit_edge, %if.end3.i.if.end46.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool47.not.i = icmp eq i32 %17, 0
  br i1 %tobool47.not.i, label %if.end46.i.sw.epilog_crit_edge, label %if.then48.i

if.end46.i.sw.epilog_crit_edge:                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then48.i:                                      ; preds = %if.end46.i
  %xres_virtual51.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %57 = ptrtoint ptr %xres_virtual51.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %xres_virtual51.i, align 4
  %shr52.i = lshr i32 %58, 1
  %vbase54.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 18, i32 1
  %59 = ptrtoint ptr %vbase54.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %vbase53.sroa.0.0.copyload.i = load ptr, ptr %vbase54.i, align 4
  br i1 %tobool.not.i, label %if.then48.i.if.end72.i_crit_edge, label %if.then57.i

if.then48.i.if.end72.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end72.i

if.then57.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp61.not174.i = icmp eq i32 %13, 0
  br i1 %cmp61.not174.i, label %if.then57.i.sw.epilog_crit_edge, label %for.body.lr.ph.i

if.then57.i.sw.epilog_crit_edge:                  ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %if.then57.i
  %add59.i = add nsw i32 %shr8.i, -1
  %mul58.i = mul i32 %shr52.i, %9
  %sub.i = add i32 %add59.i, %mul58.i
  %60 = trunc i32 %7 to i8
  %61 = and i8 %60, -16
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %loop.0176.i = phi i32 [ %13, %for.body.lr.ph.i ], [ %dec71.i, %for.body.i.for.body.i_crit_edge ]
  %uaddr.0175.i = phi i32 [ %sub.i, %for.body.lr.ph.i ], [ %add70.i, %for.body.i.for.body.i_crit_edge ]
  %add.ptr.i169.i = getelementptr i8, ptr %vbase53.sroa.0.0.copyload.i, i32 %uaddr.0175.i
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i169.i) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  %63 = and i8 %62, 15
  %conv68.i = or i8 %63, %61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i169.i, i8 %conv68.i) #3, !srcloc !21
  %add70.i = add i32 %uaddr.0175.i, %shr52.i
  %dec71.i = add i32 %loop.0176.i, -1
  %cmp61.not.i = icmp eq i32 %dec71.i, 0
  br i1 %cmp61.not.i, label %for.body.i.if.end72.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i.if.end72.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end72.i

if.end72.i:                                       ; preds = %for.body.i.if.end72.i_crit_edge, %if.then48.i.if.end72.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool74.not.i = icmp eq i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp85.not177.i = icmp eq i32 %13, 0
  %or.cond.i = or i1 %cmp85.not177.i, %tobool74.not.i
  br i1 %or.cond.i, label %if.end72.i.sw.epilog_crit_edge, label %for.body87.lr.ph.i

if.end72.i.sw.epilog_crit_edge:                   ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body87.lr.ph.i:                               ; preds = %if.end72.i
  %add78.i = add nsw i32 %shr.i, %shr8.i
  %mul77.i = mul i32 %shr52.i, %9
  %add79.i = add i32 %add78.i, %mul77.i
  %64 = trunc i32 %7 to i8
  %65 = and i8 %64, 15
  br label %for.body87.i

for.body87.i:                                     ; preds = %for.body87.i.for.body87.i_crit_edge, %for.body87.lr.ph.i
  %loop80.0179.i = phi i32 [ %13, %for.body87.lr.ph.i ], [ %dec97.i, %for.body87.i.for.body87.i_crit_edge ]
  %uaddr76.0178.i = phi i32 [ %add79.i, %for.body87.lr.ph.i ], [ %add95.i, %for.body87.i.for.body87.i_crit_edge ]
  %add.ptr.i171.i = getelementptr i8, ptr %vbase53.sroa.0.0.copyload.i, i32 %uaddr76.0178.i
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i171.i) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  %67 = and i8 %66, -16
  %conv93.i = or i8 %67, %65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i171.i, i8 %conv93.i) #3, !srcloc !21
  %add95.i = add i32 %uaddr76.0178.i, %shr52.i
  %dec97.i = add i32 %loop80.0179.i, -1
  %cmp85.not.i = icmp eq i32 %dec97.i, 0
  br i1 %cmp85.not.i, label %for.body87.i.sw.epilog_crit_edge, label %for.body87.i.for.body87.i_crit_edge

for.body87.i.for.body87.i_crit_edge:              ; preds = %for.body87.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body87.i

for.body87.i.sw.epilog_crit_edge:                 ; preds = %for.body87.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body87.i.sw.epilog_crit_edge, %if.end72.i.sw.epilog_crit_edge, %if.then57.i.sw.epilog_crit_edge, %if.end46.i.sw.epilog_crit_edge, %if.then.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @matroxfb_copyarea(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %area) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xres_virtual, align 4
  %sy = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %2 = ptrtoint ptr %sy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sy, align 4
  %sx = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 4
  %4 = ptrtoint ptr %sx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sx, align 4
  %dy = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %6 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dy, align 4
  %8 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %area, align 4
  %height = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %width = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp.i = icmp slt i32 %7, %3
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp1.i = icmp ne i32 %7, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp2.not.i = icmp sgt i32 %9, %5
  %or.cond.i = or i1 %cmp1.i, %cmp2.not.i
  br i1 %or.cond.i, label %do.body12.preheader.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

do.body12.preheader.i:                            ; preds = %lor.lhs.false.i
  %vbase15.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 19, i32 1
  br label %do.body12.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %vbase.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 19, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then.i
  %14 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack130.i = load i32, ptr %vbase.i, align 4
  %15 = inttoptr i32 %.unpack130.i to ptr
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 7696
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %cmp3.i = icmp ult i32 %16, 67108864
  br i1 %cmp3.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %m_access.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 9, i32 3
  %17 = ptrtoint ptr %m_access.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %m_access.i.i, align 4
  %19 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack.i.i = load i32, ptr %vbase.i, align 4
  %20 = inttoptr i32 %.unpack.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #3
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 7172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %21) #3, !srcloc !17
  %m_pitch.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 9, i32 4
  %22 = ptrtoint ptr %m_pitch.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %m_pitch.i.i, align 4
  %24 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack8.i.i = load i32, ptr %vbase.i, align 4
  %25 = inttoptr i32 %.unpack8.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %26 = tail call i32 @llvm.bswap.i32(i32 %23) #3
  %add.ptr.i9.i.i = getelementptr i8, ptr %25, i32 7308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i.i, i32 %26) #3, !srcloc !17
  %27 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack131.i = load i32, ptr %vbase.i, align 4
  %28 = inttoptr i32 %.unpack131.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %add.ptr.i133.i = getelementptr i8, ptr %28, i32 7168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133.i, i32 140512260) #3, !srcloc !17
  %29 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack132.i = load i32, ptr %vbase.i, align 4
  %30 = inttoptr i32 %.unpack132.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %31 = tail call i32 @llvm.bswap.i32(i32 %1) #3
  %add.ptr.i134.i = getelementptr i8, ptr %30, i32 7284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134.i, i32 %31) #3, !srcloc !17
  %dec.i = add i32 %13, -1
  %mul.i = mul i32 %3, %1
  %add.i = add i32 %mul.i, %5
  %pixels.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 7, i32 2, i32 1
  %32 = ptrtoint ptr %pixels.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pixels.i, align 4
  %add10.i = add i32 %add.i, %33
  %add11.i = add i32 %add10.i, %dec.i
  br label %if.end.i

do.body12.i:                                      ; preds = %do.body12.i.do.body12.i_crit_edge, %do.body12.preheader.i
  %34 = ptrtoint ptr %vbase15.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack.i = load i32, ptr %vbase15.i, align 4
  %35 = inttoptr i32 %.unpack.i to ptr
  %add.ptr.i135.i = getelementptr i8, ptr %35, i32 7696
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %cmp19.i = icmp ult i32 %36, 83886080
  br i1 %cmp19.i, label %do.body12.i.do.body12.i_crit_edge, label %do.end20.i

do.body12.i.do.body12.i_crit_edge:                ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body12.i

do.end20.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #5
  %m_access.i137.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 9, i32 3
  %37 = ptrtoint ptr %m_access.i137.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %m_access.i137.i, align 4
  %39 = ptrtoint ptr %vbase15.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack.i138.i = load i32, ptr %vbase15.i, align 4
  %40 = inttoptr i32 %.unpack.i138.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #3
  %add.ptr.i.i139.i = getelementptr i8, ptr %40, i32 7172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i139.i, i32 %41) #3, !srcloc !17
  %m_pitch.i140.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 9, i32 4
  %42 = ptrtoint ptr %m_pitch.i140.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %m_pitch.i140.i, align 4
  %44 = ptrtoint ptr %vbase15.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack8.i141.i = load i32, ptr %vbase15.i, align 4
  %45 = inttoptr i32 %.unpack8.i141.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %46 = tail call i32 @llvm.bswap.i32(i32 %43) #3
  %add.ptr.i9.i142.i = getelementptr i8, ptr %45, i32 7308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i142.i, i32 %46) #3, !srcloc !17
  %47 = ptrtoint ptr %vbase15.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.unpack120.i = load i32, ptr %vbase15.i, align 4
  %48 = inttoptr i32 %.unpack120.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %add.ptr.i143.i = getelementptr i8, ptr %48, i32 7168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143.i, i32 138415108) #3, !srcloc !17
  %49 = ptrtoint ptr %vbase15.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.unpack121.i = load i32, ptr %vbase15.i, align 4
  %50 = inttoptr i32 %.unpack121.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %add.ptr.i144.i = getelementptr i8, ptr %50, i32 7256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144.i, i32 83886080) #3, !srcloc !17
  %sub.i = sub i32 0, %1
  %51 = ptrtoint ptr %vbase15.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.unpack122.i = load i32, ptr %vbase15.i, align 4
  %52 = inttoptr i32 %.unpack122.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %53 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #3
  %add.ptr.i145.i = getelementptr i8, ptr %52, i32 7284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145.i, i32 %53) #3, !srcloc !17
  %dec30.i = add i32 %13, -1
  %add31.i = add i32 %11, -1
  %sub32.i = add i32 %add31.i, %3
  %mul33.i = mul i32 %sub32.i, %1
  %add34.i = add i32 %mul33.i, %5
  %pixels37.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 7, i32 2, i32 1
  %54 = ptrtoint ptr %pixels37.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pixels37.i, align 4
  %add38.i = add i32 %add34.i, %55
  %add39.i = add i32 %add38.i, %dec30.i
  %add41.i = add i32 %add31.i, %7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end20.i, %do.end.i
  %dy.addr.0.i = phi i32 [ %7, %do.end.i ], [ %add41.i, %do.end20.i ]
  %width.addr.0.i = phi i32 [ %dec.i, %do.end.i ], [ %dec30.i, %do.end20.i ]
  %start.0.i = phi i32 [ %add10.i, %do.end.i ], [ %add39.i, %do.end20.i ]
  %end.0.i = phi i32 [ %add11.i, %do.end.i ], [ %add38.i, %do.end20.i ]
  %vbase45.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 19, i32 1
  br label %do.body42.i

do.body42.i:                                      ; preds = %do.body42.i.do.body42.i_crit_edge, %if.end.i
  %56 = ptrtoint ptr %vbase45.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.unpack123.i = load i32, ptr %vbase45.i, align 4
  %57 = inttoptr i32 %.unpack123.i to ptr
  %add.ptr.i146.i = getelementptr i8, ptr %57, i32 7696
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %cmp49.i = icmp ult i32 %58, 100663296
  br i1 %cmp49.i, label %do.body42.i.do.body42.i_crit_edge, label %do.end50.i

do.body42.i.do.body42.i_crit_edge:                ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body42.i

do.end50.i:                                       ; preds = %do.body42.i
  %m_access.i148.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 9, i32 3
  %59 = ptrtoint ptr %m_access.i148.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %m_access.i148.i, align 4
  %61 = ptrtoint ptr %vbase45.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.unpack.i149.i = load i32, ptr %vbase45.i, align 4
  %62 = inttoptr i32 %.unpack.i149.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %63 = tail call i32 @llvm.bswap.i32(i32 %60) #3
  %add.ptr.i.i150.i = getelementptr i8, ptr %62, i32 7172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i150.i, i32 %63) #3, !srcloc !17
  %m_pitch.i151.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 9, i32 4
  %64 = ptrtoint ptr %m_pitch.i151.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %m_pitch.i151.i, align 4
  %66 = ptrtoint ptr %vbase45.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.unpack8.i152.i = load i32, ptr %vbase45.i, align 4
  %67 = inttoptr i32 %.unpack8.i152.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %68 = tail call i32 @llvm.bswap.i32(i32 %65) #3
  %add.ptr.i9.i153.i = getelementptr i8, ptr %67, i32 7308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i153.i, i32 %68) #3, !srcloc !17
  %69 = ptrtoint ptr %vbase45.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.unpack124.i = load i32, ptr %vbase45.i, align 4
  %70 = inttoptr i32 %.unpack124.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %71 = tail call i32 @llvm.bswap.i32(i32 %end.0.i) #3
  %add.ptr.i154.i = getelementptr i8, ptr %70, i32 7264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154.i, i32 %71) #3, !srcloc !17
  %72 = ptrtoint ptr %vbase45.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.unpack125.i = load i32, ptr %vbase45.i, align 4
  %73 = inttoptr i32 %.unpack125.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %74 = tail call i32 @llvm.bswap.i32(i32 %start.0.i) #3
  %add.ptr.i155.i = getelementptr i8, ptr %73, i32 7276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155.i, i32 %74) #3, !srcloc !17
  %add59.i = add i32 %width.addr.0.i, %9
  %shl.i = shl i32 %add59.i, 16
  %or.i = or i32 %shl.i, %9
  %75 = ptrtoint ptr %vbase45.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %.unpack126.i = load i32, ptr %vbase45.i, align 4
  %76 = inttoptr i32 %.unpack126.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %77 = tail call i32 @llvm.bswap.i32(i32 %or.i) #3
  %add.ptr.i156.i = getelementptr i8, ptr %76, i32 7300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156.i, i32 %77) #3, !srcloc !17
  %shl63.i = shl i32 %dy.addr.0.i, 16
  %or64.i = or i32 %shl63.i, %11
  %78 = ptrtoint ptr %vbase45.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.unpack127.i = load i32, ptr %vbase45.i, align 4
  %79 = inttoptr i32 %.unpack127.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %80 = tail call i32 @llvm.bswap.i32(i32 %or64.i) #3
  %add.ptr.i157.i = getelementptr i8, ptr %79, i32 7560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157.i, i32 %80) #3, !srcloc !17
  %81 = ptrtoint ptr %vbase45.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %.unpack128.i = load i32, ptr %vbase45.i, align 4
  %82 = inttoptr i32 %.unpack128.i to ptr
  %add.ptr.i158.i = getelementptr i8, ptr %82, i32 7700
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i158.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  br label %do.body71.i

do.body71.i:                                      ; preds = %do.body71.i.do.body71.i_crit_edge, %do.end50.i
  %84 = ptrtoint ptr %vbase45.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %.unpack129.i = load i32, ptr %vbase45.i, align 4
  %85 = inttoptr i32 %.unpack129.i to ptr
  %add.ptr.i159.i = getelementptr i8, ptr %85, i32 7700
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i159.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %87 = and i32 %86, 256
  %tobool.not.i = icmp eq i32 %87, 0
  br i1 %tobool.not.i, label %matrox_accel_bmove.exit, label %do.body71.i.do.body71.i_crit_edge

do.body71.i.do.body71.i_crit_edge:                ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body71.i

matrox_accel_bmove.exit:                          ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @matroxfb_fillrect(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %rect) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rop = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 5
  %0 = ptrtoint ptr %rop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %2 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pseudo_palette, align 4
  %color = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %4 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %color, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %8 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dy, align 4
  %10 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rect, align 4
  %height = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %width = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width, align 4
  %vbase.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 19, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %sw.bb
  %16 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack.i = load i32, ptr %vbase.i, align 4
  %17 = inttoptr i32 %.unpack.i to ptr
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 7696
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %cmp.i = icmp ult i32 %18, 117440512
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %m_access.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 9, i32 3
  %19 = ptrtoint ptr %m_access.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %m_access.i.i, align 4
  %21 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack.i.i = load i32, ptr %vbase.i, align 4
  %22 = inttoptr i32 %.unpack.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #3
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 7172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %23) #3, !srcloc !17
  %m_pitch.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 9, i32 4
  %24 = ptrtoint ptr %m_pitch.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %m_pitch.i.i, align 4
  %26 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack8.i.i = load i32, ptr %vbase.i, align 4
  %27 = inttoptr i32 %.unpack8.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %28 = tail call i32 @llvm.bswap.i32(i32 %25) #3
  %add.ptr.i9.i.i = getelementptr i8, ptr %27, i32 7308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i.i, i32 %28) #3, !srcloc !17
  %m_dwg_rect.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 9, i32 1
  %29 = ptrtoint ptr %m_dwg_rect.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %m_dwg_rect.i, align 4
  %or.i = or i32 %30, 786432
  %31 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack40.i = load i32, ptr %vbase.i, align 4
  %32 = inttoptr i32 %.unpack40.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i) #3
  %add.ptr.i46.i = getelementptr i8, ptr %32, i32 7168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 %33) #3, !srcloc !17
  %34 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack41.i = load i32, ptr %vbase.i, align 4
  %35 = inttoptr i32 %.unpack41.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %36 = tail call i32 @llvm.bswap.i32(i32 %7) #3
  %add.ptr.i47.i = getelementptr i8, ptr %35, i32 7204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i, i32 %36) #3, !srcloc !17
  %add.i = add i32 %15, %11
  %shl.i = shl i32 %add.i, 16
  %or9.i = or i32 %shl.i, %11
  %37 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack42.i = load i32, ptr %vbase.i, align 4
  %38 = inttoptr i32 %.unpack42.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %39 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #3
  %add.ptr.i48.i = getelementptr i8, ptr %38, i32 7300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i, i32 %39) #3, !srcloc !17
  %shl13.i = shl i32 %9, 16
  %or14.i = or i32 %13, %shl13.i
  %40 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.unpack43.i = load i32, ptr %vbase.i, align 4
  %41 = inttoptr i32 %.unpack43.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %42 = tail call i32 @llvm.bswap.i32(i32 %or14.i) #3
  %add.ptr.i49.i = getelementptr i8, ptr %41, i32 7560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i, i32 %42) #3, !srcloc !17
  %43 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.unpack44.i = load i32, ptr %vbase.i, align 4
  %44 = inttoptr i32 %.unpack44.i to ptr
  %add.ptr.i50.i = getelementptr i8, ptr %44, i32 7700
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  br label %do.body21.i

do.body21.i:                                      ; preds = %do.body21.i.do.body21.i_crit_edge, %do.end.i
  %46 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.unpack45.i = load i32, ptr %vbase.i, align 4
  %47 = inttoptr i32 %.unpack45.i to ptr
  %add.ptr.i51.i = getelementptr i8, ptr %47, i32 7700
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %49 = and i32 %48, 256
  %tobool.not.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i, label %do.body21.i.sw.epilog_crit_edge, label %do.body21.i.do.body21.i_crit_edge

do.body21.i.do.body21.i_crit_edge:                ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body21.i

do.body21.i.sw.epilog_crit_edge:                  ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body21.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @matroxfb_imageblit(ptr noundef %info, ptr noundef %image) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %depth = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 6
  %0 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %2 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pseudo_palette, align 4
  %fg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %4 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fg_color, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %bg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %8 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bg_color, align 4
  %arrayidx3 = getelementptr i32, ptr %3, i32 %9
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3, align 4
  %data = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %width = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %dy = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %18 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dy, align 4
  %20 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %image, align 4
  %add.i = add i32 %15, 7
  %shr.i = ashr i32 %add.i, 3
  %mul.i = mul i32 %shr.i, %17
  %add1.i = add i32 %mul.i, 3
  %shl2.i = and i32 %add.i, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl2.i, i32 %15)
  %cmp.i = icmp eq i32 %shl2.i, %15
  %mul3.i = select i1 %cmp.i, i32 %17, i32 1
  %vbase.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 19, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then
  %22 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack.i = load i32, ptr %vbase.i, align 4
  %23 = inttoptr i32 %.unpack.i to ptr
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 7696
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %cmp7.i = icmp ult i32 %24, 83886080
  br i1 %cmp7.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %shl.i = shl i32 %19, 16
  %ar0.0.in.i = mul i32 %mul3.i, %15
  %and.i = and i32 %add1.i, -4
  %or.i = or i32 %shl.i, %17
  %ar0.0.i = add i32 %ar0.0.in.i, -1
  %m_access.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 9, i32 3
  %25 = ptrtoint ptr %m_access.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %m_access.i.i, align 4
  %27 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack.i.i = load i32, ptr %vbase.i, align 4
  %28 = inttoptr i32 %.unpack.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %29 = tail call i32 @llvm.bswap.i32(i32 %26) #3
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 7172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %29) #3, !srcloc !17
  %m_pitch.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 9, i32 4
  %30 = ptrtoint ptr %m_pitch.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %m_pitch.i.i, align 4
  %32 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack8.i.i = load i32, ptr %vbase.i, align 4
  %33 = inttoptr i32 %.unpack8.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %34 = tail call i32 @llvm.bswap.i32(i32 %31) #3
  %add.ptr.i9.i.i = getelementptr i8, ptr %33, i32 7308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i.i, i32 %34) #3, !srcloc !17
  %35 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack175.i = load i32, ptr %vbase.i, align 4
  %36 = inttoptr i32 %.unpack175.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %add.ptr.i176.i = getelementptr i8, ptr %36, i32 7168
  br i1 %cmp.i, label %if.then8.i, label %if.else12.i

if.then8.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176.i, i32 -1990194168) #3, !srcloc !17
  br label %if.end16.i

if.else12.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176.i, i32 157289480) #3, !srcloc !17
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else12.i, %if.then8.i
  %37 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack170.i = load i32, ptr %vbase.i, align 4
  %38 = inttoptr i32 %.unpack170.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %39 = tail call i32 @llvm.bswap.i32(i32 %7) #3
  %add.ptr.i178.i = getelementptr i8, ptr %38, i32 7204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178.i, i32 %39) #3, !srcloc !17
  %40 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.unpack171.i = load i32, ptr %vbase.i, align 4
  %41 = inttoptr i32 %.unpack171.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %42 = tail call i32 @llvm.bswap.i32(i32 %11) #3
  %add.ptr.i179.i = getelementptr i8, ptr %41, i32 7200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179.i, i32 %42) #3, !srcloc !17
  %add23.i = add i32 %21, %15
  %sub24.i = shl i32 %add23.i, 16
  %43 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %mmio.sroa.0.0.copyload.i = load ptr, ptr %vbase.i, align 4
  br label %do.body29.i

do.body29.i:                                      ; preds = %do.body29.i.do.body29.i_crit_edge, %if.end16.i
  %44 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack172.i = load i32, ptr %vbase.i, align 4
  %45 = inttoptr i32 %.unpack172.i to ptr
  %add.ptr.i180.i = getelementptr i8, ptr %45, i32 7696
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i180.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %cmp36.i = icmp ult i32 %46, 134217728
  br i1 %cmp36.i, label %do.body29.i.do.body29.i_crit_edge, label %do.end37.i

do.body29.i.do.body29.i_crit_edge:                ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body29.i

do.end37.i:                                       ; preds = %do.body29.i
  %shl25.i = add i32 %sub24.i, -65536
  %or26.i = or i32 %shl25.i, %21
  %47 = ptrtoint ptr %m_access.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %m_access.i.i, align 4
  %49 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.unpack.i183.i = load i32, ptr %vbase.i, align 4
  %50 = inttoptr i32 %.unpack.i183.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %51 = tail call i32 @llvm.bswap.i32(i32 %48) #3
  %add.ptr.i.i184.i = getelementptr i8, ptr %50, i32 7172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i184.i, i32 %51) #3, !srcloc !17
  %52 = ptrtoint ptr %m_pitch.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %m_pitch.i.i, align 4
  %54 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.unpack8.i186.i = load i32, ptr %vbase.i, align 4
  %55 = inttoptr i32 %.unpack8.i186.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %56 = tail call i32 @llvm.bswap.i32(i32 %53) #3
  %add.ptr.i9.i187.i = getelementptr i8, ptr %55, i32 7308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i187.i, i32 %56) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %57 = tail call i32 @llvm.bswap.i32(i32 %or26.i) #3
  %add.ptr.i188.i = getelementptr i8, ptr %mmio.sroa.0.0.copyload.i, i32 7300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188.i, i32 %57) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %58 = tail call i32 @llvm.bswap.i32(i32 %ar0.0.i) #3
  %add.ptr.i189.i = getelementptr i8, ptr %mmio.sroa.0.0.copyload.i, i32 7264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i189.i, i32 %58) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %add.ptr.i190.i = getelementptr i8, ptr %mmio.sroa.0.0.copyload.i, i32 7276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190.i, i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  br i1 %cmp.i, label %if.then42.i, label %if.else45.i

if.then42.i:                                      ; preds = %do.end37.i
  %59 = tail call i32 @llvm.bswap.i32(i32 %or.i) #3
  %add.ptr.i191.i = getelementptr i8, ptr %mmio.sroa.0.0.copyload.i, i32 7560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i191.i, i32 %59) #3, !srcloc !17
  %60 = ptrtoint ptr %13 to i32
  %and.i.i = and i32 %60, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp223.i.i = icmp sgt i32 %and.i, 3
  br i1 %tobool.not.i.i, label %while.cond1.preheader.i.i, label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %if.then42.i
  br i1 %cmp223.i.i, label %while.cond.preheader.i.i.while.body.i.i_crit_edge, label %while.cond.preheader.i.i.do.body85.i_crit_edge

while.cond.preheader.i.i.do.body85.i_crit_edge:   ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body85.i

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond1.preheader.i.i:                        ; preds = %if.then42.i
  br i1 %cmp223.i.i, label %while.cond1.preheader.i.i.while.body3.i.i_crit_edge, label %while.cond1.preheader.i.i.do.body85.i_crit_edge

while.cond1.preheader.i.i.do.body85.i_crit_edge:  ; preds = %while.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body85.i

while.cond1.preheader.i.i.while.body3.i.i_crit_edge: ; preds = %while.cond1.preheader.i.i
  br label %while.body3.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %src.addr.022.i.i = phi ptr [ %add.ptr.i192.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %13, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %len.addr.021.i.i = phi i32 [ %sub.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %and.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %addr.020.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %mmio.sroa.0.0.copyload.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %61 = ptrtoint ptr %src.addr.022.i.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %src.addr.022.i.i, align 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr.020.i.i, i32 %62) #3, !srcloc !17
  %incdec.ptr.i.i = getelementptr i32, ptr %addr.020.i.i, i32 1
  %sub.i.i = add nsw i32 %len.addr.021.i.i, -4
  %add.ptr.i192.i = getelementptr i8, ptr %src.addr.022.i.i, i32 4
  %cmp.i.i = icmp ugt i32 %len.addr.021.i.i, 7
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.do.body85.i_crit_edge

while.body.i.i.do.body85.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body85.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i.i

while.body3.i.i:                                  ; preds = %while.body3.i.i.while.body3.i.i_crit_edge, %while.cond1.preheader.i.i.while.body3.i.i_crit_edge
  %src.addr.126.i.i = phi ptr [ %add.ptr6.i.i, %while.body3.i.i.while.body3.i.i_crit_edge ], [ %13, %while.cond1.preheader.i.i.while.body3.i.i_crit_edge ]
  %len.addr.125.i.i = phi i32 [ %sub5.i.i, %while.body3.i.i.while.body3.i.i_crit_edge ], [ %and.i, %while.cond1.preheader.i.i.while.body3.i.i_crit_edge ]
  %addr.124.i.i = phi ptr [ %incdec.ptr4.i.i, %while.body3.i.i.while.body3.i.i_crit_edge ], [ %mmio.sroa.0.0.copyload.i, %while.cond1.preheader.i.i.while.body3.i.i_crit_edge ]
  %63 = ptrtoint ptr %src.addr.126.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %src.addr.126.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr.124.i.i, i32 %64) #3, !srcloc !17
  %incdec.ptr4.i.i = getelementptr i32, ptr %addr.124.i.i, i32 1
  %sub5.i.i = add nsw i32 %len.addr.125.i.i, -4
  %add.ptr6.i.i = getelementptr i8, ptr %src.addr.126.i.i, i32 4
  %cmp2.i.i = icmp ugt i32 %len.addr.125.i.i, 7
  br i1 %cmp2.i.i, label %while.body3.i.i.while.body3.i.i_crit_edge, label %while.body3.i.i.do.body85.i_crit_edge

while.body3.i.i.do.body85.i_crit_edge:            ; preds = %while.body3.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body85.i

while.body3.i.i.while.body3.i.i_crit_edge:        ; preds = %while.body3.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body3.i.i

if.else45.i:                                      ; preds = %do.end37.i
  %add.ptr.i193.i = getelementptr i8, ptr %mmio.sroa.0.0.copyload.i, i32 7284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i193.i, i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %65 = tail call i32 @llvm.bswap.i32(i32 %or.i) #3
  %add.ptr.i194.i = getelementptr i8, ptr %mmio.sroa.0.0.copyload.i, i32 7560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194.i, i32 %65) #3, !srcloc !17
  %66 = and i32 %add.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp49.i = icmp eq i32 %66, 0
  br i1 %cmp49.i, label %if.then50.i, label %if.else52.i

if.then50.i:                                      ; preds = %if.else45.i
  %67 = ptrtoint ptr %13 to i32
  %and.i195.i = and i32 %67, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i195.i)
  %tobool.not.i196.i = icmp eq i32 %and.i195.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mul.i)
  %cmp223.i197.i = icmp sgt i32 %mul.i, 3
  br i1 %tobool.not.i196.i, label %while.cond1.preheader.i199.i, label %while.cond.preheader.i198.i

while.cond.preheader.i198.i:                      ; preds = %if.then50.i
  br i1 %cmp223.i197.i, label %while.cond.preheader.i198.i.while.body.i207.i_crit_edge, label %while.cond.preheader.i198.i.do.body85.i_crit_edge

while.cond.preheader.i198.i.do.body85.i_crit_edge: ; preds = %while.cond.preheader.i198.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body85.i

while.cond.preheader.i198.i.while.body.i207.i_crit_edge: ; preds = %while.cond.preheader.i198.i
  br label %while.body.i207.i

while.cond1.preheader.i199.i:                     ; preds = %if.then50.i
  br i1 %cmp223.i197.i, label %while.cond1.preheader.i199.i.while.body3.i215.i_crit_edge, label %while.cond1.preheader.i199.i.do.body85.i_crit_edge

while.cond1.preheader.i199.i.do.body85.i_crit_edge: ; preds = %while.cond1.preheader.i199.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body85.i

while.cond1.preheader.i199.i.while.body3.i215.i_crit_edge: ; preds = %while.cond1.preheader.i199.i
  br label %while.body3.i215.i

while.body.i207.i:                                ; preds = %while.body.i207.i.while.body.i207.i_crit_edge, %while.cond.preheader.i198.i.while.body.i207.i_crit_edge
  %src.addr.022.i200.i = phi ptr [ %add.ptr.i205.i, %while.body.i207.i.while.body.i207.i_crit_edge ], [ %13, %while.cond.preheader.i198.i.while.body.i207.i_crit_edge ]
  %len.addr.021.i201.i = phi i32 [ %sub.i204.i, %while.body.i207.i.while.body.i207.i_crit_edge ], [ %mul.i, %while.cond.preheader.i198.i.while.body.i207.i_crit_edge ]
  %addr.020.i202.i = phi ptr [ %incdec.ptr.i203.i, %while.body.i207.i.while.body.i207.i_crit_edge ], [ %mmio.sroa.0.0.copyload.i, %while.cond.preheader.i198.i.while.body.i207.i_crit_edge ]
  %68 = ptrtoint ptr %src.addr.022.i200.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %src.addr.022.i200.i, align 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr.020.i202.i, i32 %69) #3, !srcloc !17
  %incdec.ptr.i203.i = getelementptr i32, ptr %addr.020.i202.i, i32 1
  %sub.i204.i = add nsw i32 %len.addr.021.i201.i, -4
  %add.ptr.i205.i = getelementptr i8, ptr %src.addr.022.i200.i, i32 4
  %cmp.i206.i = icmp ugt i32 %len.addr.021.i201.i, 7
  br i1 %cmp.i206.i, label %while.body.i207.i.while.body.i207.i_crit_edge, label %while.body.i207.i.do.body85.i_crit_edge

while.body.i207.i.do.body85.i_crit_edge:          ; preds = %while.body.i207.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body85.i

while.body.i207.i.while.body.i207.i_crit_edge:    ; preds = %while.body.i207.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i207.i

while.body3.i215.i:                               ; preds = %while.body3.i215.i.while.body3.i215.i_crit_edge, %while.cond1.preheader.i199.i.while.body3.i215.i_crit_edge
  %src.addr.126.i208.i = phi ptr [ %add.ptr6.i213.i, %while.body3.i215.i.while.body3.i215.i_crit_edge ], [ %13, %while.cond1.preheader.i199.i.while.body3.i215.i_crit_edge ]
  %len.addr.125.i209.i = phi i32 [ %sub5.i212.i, %while.body3.i215.i.while.body3.i215.i_crit_edge ], [ %mul.i, %while.cond1.preheader.i199.i.while.body3.i215.i_crit_edge ]
  %addr.124.i210.i = phi ptr [ %incdec.ptr4.i211.i, %while.body3.i215.i.while.body3.i215.i_crit_edge ], [ %mmio.sroa.0.0.copyload.i, %while.cond1.preheader.i199.i.while.body3.i215.i_crit_edge ]
  %70 = ptrtoint ptr %src.addr.126.i208.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %src.addr.126.i208.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr.124.i210.i, i32 %71) #3, !srcloc !17
  %incdec.ptr4.i211.i = getelementptr i32, ptr %addr.124.i210.i, i32 1
  %sub5.i212.i = add nsw i32 %len.addr.125.i209.i, -4
  %add.ptr6.i213.i = getelementptr i8, ptr %src.addr.126.i208.i, i32 4
  %cmp2.i214.i = icmp ugt i32 %len.addr.125.i209.i, 7
  br i1 %cmp2.i214.i, label %while.body3.i215.i.while.body3.i215.i_crit_edge, label %while.body3.i215.i.do.body85.i_crit_edge

while.body3.i215.i.do.body85.i_crit_edge:         ; preds = %while.body3.i215.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body85.i

while.body3.i215.i.while.body3.i215.i_crit_edge:  ; preds = %while.body3.i215.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body3.i215.i

if.else52.i:                                      ; preds = %if.else45.i
  %72 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %shr.i, label %while.cond70.preheader.i [
    i32 1, label %while.cond.preheader.i
    i32 2, label %while.cond61.preheader.i
  ]

while.cond61.preheader.i:                         ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool63.not225.i = icmp eq i32 %17, 0
  br i1 %tobool63.not225.i, label %while.cond61.preheader.i.do.body85.i_crit_edge, label %while.cond61.preheader.i.while.body64.i_crit_edge

while.cond61.preheader.i.while.body64.i_crit_edge: ; preds = %while.cond61.preheader.i
  br label %while.body64.i

while.cond61.preheader.i.do.body85.i_crit_edge:   ; preds = %while.cond61.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body85.i

while.cond.preheader.i:                           ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool55.not228.i = icmp eq i32 %17, 0
  br i1 %tobool55.not228.i, label %while.cond.preheader.i.do.body85.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.do.body85.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body85.i

while.cond70.preheader.i:                         ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool72.not234.i = icmp eq i32 %17, 0
  br i1 %tobool72.not234.i, label %while.cond70.preheader.i.do.body85.i_crit_edge, label %while.cond70.preheader.i.for.cond.preheader.i_crit_edge

while.cond70.preheader.i.for.cond.preheader.i_crit_edge: ; preds = %while.cond70.preheader.i
  br label %for.cond.preheader.i

while.cond70.preheader.i.do.body85.i_crit_edge:   ; preds = %while.cond70.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body85.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %chardata.addr.0230.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %13, %while.cond.preheader.i.while.body.i_crit_edge ]
  %height.addr.0229.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %17, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec.i = add i32 %height.addr.0229.i, -1
  %73 = ptrtoint ptr %chardata.addr.0230.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %chardata.addr.0230.i, align 1
  %conv.i = zext i8 %74 to i32
  %shl56.i = shl nuw i32 %conv.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mmio.sroa.0.0.copyload.i, i32 %shl56.i) #3, !srcloc !17
  %incdec.ptr.i = getelementptr i8, ptr %chardata.addr.0230.i, i32 1
  %tobool55.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool55.not.i, label %while.body.i.do.body85.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

while.body.i.do.body85.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body85.i

while.body64.i:                                   ; preds = %while.body64.i.while.body64.i_crit_edge, %while.cond61.preheader.i.while.body64.i_crit_edge
  %chardata.addr.1227.i = phi ptr [ %add.ptr.i, %while.body64.i.while.body64.i_crit_edge ], [ %13, %while.cond61.preheader.i.while.body64.i_crit_edge ]
  %height.addr.1226.i = phi i32 [ %dec62.i, %while.body64.i.while.body64.i_crit_edge ], [ %17, %while.cond61.preheader.i.while.body64.i_crit_edge ]
  %dec62.i = add i32 %height.addr.1226.i, -1
  %75 = ptrtoint ptr %chardata.addr.1227.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %chardata.addr.1227.i, align 2
  %conv65.i = zext i16 %76 to i32
  %shl66.i = shl nuw i32 %conv65.i, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mmio.sroa.0.0.copyload.i, i32 %shl66.i) #3, !srcloc !17
  %add.ptr.i = getelementptr i8, ptr %chardata.addr.1227.i, i32 2
  %tobool63.not.i = icmp eq i32 %dec62.i, 0
  br i1 %tobool63.not.i, label %while.body64.i.do.body85.i_crit_edge, label %while.body64.i.while.body64.i_crit_edge

while.body64.i.while.body64.i_crit_edge:          ; preds = %while.body64.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body64.i

while.body64.i.do.body85.i_crit_edge:             ; preds = %while.body64.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body85.i

for.cond.preheader.i:                             ; preds = %for.end.i.for.cond.preheader.i_crit_edge, %while.cond70.preheader.i.for.cond.preheader.i_crit_edge
  %dec71236.in.i = phi i32 [ %dec71236.i, %for.end.i.for.cond.preheader.i_crit_edge ], [ %17, %while.cond70.preheader.i.for.cond.preheader.i_crit_edge ]
  %chardata.addr.2235.i = phi ptr [ %add.ptr79.i, %for.end.i.for.cond.preheader.i_crit_edge ], [ %13, %while.cond70.preheader.i.for.cond.preheader.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.0232.i = phi i32 [ %add78.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i ]
  %add.ptr76.i = getelementptr i8, ptr %chardata.addr.2235.i, i32 %i.0232.i
  %77 = ptrtoint ptr %add.ptr76.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %add.ptr76.i, align 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mmio.sroa.0.0.copyload.i, i32 %78) #3, !srcloc !17
  %add78.i = add i32 %i.0232.i, 4
  %cmp74.i = icmp ult i32 %add78.i, %shr.i
  br i1 %cmp74.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %dec71236.i = add i32 %dec71236.in.i, -1
  %add.ptr79.i = getelementptr i8, ptr %chardata.addr.2235.i, i32 %shr.i
  %tobool72.not.i = icmp eq i32 %dec71236.i, 0
  br i1 %tobool72.not.i, label %for.end.i.do.body85.i_crit_edge, label %for.end.i.for.cond.preheader.i_crit_edge

for.end.i.for.cond.preheader.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.preheader.i

for.end.i.do.body85.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body85.i

do.body85.i:                                      ; preds = %for.end.i.do.body85.i_crit_edge, %while.body64.i.do.body85.i_crit_edge, %while.body.i.do.body85.i_crit_edge, %while.cond70.preheader.i.do.body85.i_crit_edge, %while.cond.preheader.i.do.body85.i_crit_edge, %while.cond61.preheader.i.do.body85.i_crit_edge, %while.body3.i215.i.do.body85.i_crit_edge, %while.body.i207.i.do.body85.i_crit_edge, %while.cond1.preheader.i199.i.do.body85.i_crit_edge, %while.cond.preheader.i198.i.do.body85.i_crit_edge, %while.body3.i.i.do.body85.i_crit_edge, %while.body.i.i.do.body85.i_crit_edge, %while.cond1.preheader.i.i.do.body85.i_crit_edge, %while.cond.preheader.i.i.do.body85.i_crit_edge
  %79 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %.unpack173.i = load i32, ptr %vbase.i, align 4
  %80 = inttoptr i32 %.unpack173.i to ptr
  %add.ptr.i217.i = getelementptr i8, ptr %80, i32 7700
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i217.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  br label %do.body90.i

do.body90.i:                                      ; preds = %do.body90.i.do.body90.i_crit_edge, %do.body85.i
  %82 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.unpack174.i = load i32, ptr %vbase.i, align 4
  %83 = inttoptr i32 %.unpack174.i to ptr
  %add.ptr.i218.i = getelementptr i8, ptr %83, i32 7700
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i218.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %85 = and i32 %84, 256
  %tobool97.not.i = icmp eq i32 %85, 0
  br i1 %tobool97.not.i, label %do.body90.i.if.end_crit_edge, label %do.body90.i.do.body90.i_crit_edge

do.body90.i.do.body90.i_crit_edge:                ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body90.i

do.body90.i.if.end_crit_edge:                     ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %image) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body90.i.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @__ksymtab_matrox_cfbX_init, !1, !"__ksymtab_matrox_cfbX_init", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/matrox/matroxfb_accel.c", i32 200, i32 1}
!2 = !{ptr @__UNIQUE_ID_file305, !3, !"__UNIQUE_ID_file305", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/matrox/matroxfb_accel.c", i32 520, i32 1}
!4 = !{ptr @__UNIQUE_ID_license306, !3, !"__UNIQUE_ID_license306", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i64 6244142}
!15 = !{i64 2156245939}
!16 = !{i64 2156246322}
!17 = !{i64 6243724}
!18 = !{i64 6243922}
!19 = !{i64 2156244294}
!20 = !{i64 2156244677}
!21 = !{i64 6243527}
