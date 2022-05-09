; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/core/sysimgblt.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/sysimgblt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sys_imageblit\22, \22a\22\09"
module asm "\09.weak\09__crc_sys_imageblit\09\09\09\09"
module asm "\09.long\09__crc_sys_imageblit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sys_imageblit:\09\09\09\09\09"
module asm "\09.asciz \09\22sys_imageblit\22\09\09\09\09\09"
module asm "__kstrtabns_sys_imageblit:\09\09\09\09\09"
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
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_sys_imageblit = external dso_local constant [0 x i8], align 1
@__kstrtabns_sys_imageblit = external dso_local constant [0 x i8], align 1
@__ksymtab_sys_imageblit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sys_imageblit to i32), ptr @__kstrtab_sys_imageblit, ptr @__kstrtabns_sys_imageblit }, section "___ksymtab+sys_imageblit", align 4
@__UNIQUE_ID_author301 = internal constant [51 x i8] c"sysimgblt.author=Antonino Daplas <adaplas@pol.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [75 x i8] c"sysimgblt.description=1-bit/8-bit to 1-32 bit color expansion (sys-to-sys)\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [50 x i8] c"sysimgblt.file=drivers/video/fbdev/core/sysimgblt\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [22 x i8] c"sysimgblt.license=GPL\00", section ".modinfo", align 1
@cfb_tab8_be = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 255, i32 65280, i32 65535, i32 16711680, i32 16711935, i32 16776960, i32 16777215, i32 -16777216, i32 -16776961, i32 -16711936, i32 -16711681, i32 -65536, i32 -65281, i32 -256, i32 -1], [32 x i8] zeroinitializer }, align 32
@cfb_tab8_le = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 -16777216, i32 16711680, i32 -65536, i32 65280, i32 -16711936, i32 16776960, i32 -256, i32 255, i32 -16776961, i32 16711935, i32 -65281, i32 65535, i32 -16711681, i32 16777215, i32 -1], [32 x i8] zeroinitializer }, align 32
@cfb_tab16_be = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 65535, i32 -65536, i32 -1], [16 x i8] zeroinitializer }, align 32
@cfb_tab16_le = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 -65536, i32 65535, i32 -1], [16 x i8] zeroinitializer }, align 32
@cfb_tab32 = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 -1], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.3 = private unnamed_addr constant [12 x i8] c"cfb_tab8_be\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 26, i32 18 }
@___asan_gen_.6 = private unnamed_addr constant [12 x i8] c"cfb_tab8_le\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 33, i32 18 }
@___asan_gen_.9 = private unnamed_addr constant [13 x i8] c"cfb_tab16_be\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 40, i32 18 }
@___asan_gen_.12 = private unnamed_addr constant [13 x i8] c"cfb_tab16_le\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 44, i32 18 }
@___asan_gen_.15 = private unnamed_addr constant [10 x i8] c"cfb_tab32\00", align 1
@___asan_gen_.16 = private constant [40 x i8] c"../drivers/video/fbdev/core/sysimgblt.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 48, i32 18 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__ksymtab_sys_imageblit, ptr @cfb_tab8_be, ptr @cfb_tab8_le, ptr @cfb_tab16_be, ptr @cfb_tab16_le, ptr @cfb_tab32], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfb_tab8_be to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfb_tab8_le to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfb_tab16_be to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfb_tab16_le to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfb_tab32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sys_imageblit(ptr noundef %p, ptr nocapture noundef readonly %image) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  %width1 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %2 = ptrtoint ptr %width1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width1, align 4
  %state = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 28
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %dy3 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %6 = ptrtoint ptr %dy3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dy3, align 4
  %8 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %image, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 7, i32 9
  %10 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %line_length, align 4
  %mul = shl i32 %7, 3
  %mul4 = mul i32 %mul, %11
  %mul5 = mul i32 %9, %1
  %add = add i32 %mul4, %mul5
  %and = and i32 %add, 31
  %and8 = shl i32 %11, 3
  %mul9 = and i32 %and8, 24
  %div106 = lshr i32 %add, 3
  %and11 = and i32 %div106, 536870908
  %12 = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 25
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %and11
  %fbops = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 20
  %15 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fbops, align 4
  %fb_sync = getelementptr inbounds %struct.fb_ops, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %fb_sync to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fb_sync, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %if.then12

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end15

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  %call = tail call i32 %18(ptr noundef %p) #1
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end.if.end15_crit_edge
  %depth = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 6
  %19 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp16 = icmp eq i8 %20, 1
  br i1 %cmp16, label %if.then18, label %if.else52

if.then18:                                        ; preds = %if.end15
  %visual = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 7, i32 5
  %21 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %visual, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %if.else [
    i32 2, label %if.then18.if.then26_crit_edge
    i32 4, label %if.then18.if.then26_crit_edge179
  ]

if.then18.if.then26_crit_edge179:                 ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then26

if.then18.if.then26_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then26

if.then26:                                        ; preds = %if.then18.if.then26_crit_edge, %if.then18.if.then26_crit_edge179
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 27
  %24 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pseudo_palette, align 4
  %fg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %26 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fg_color, align 4
  %arrayidx = getelementptr i32, ptr %25, i32 %27
  %bg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %28 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bg_color, align 4
  %arrayidx28 = getelementptr i32, ptr %25, i32 %29
  br label %if.end31

if.else:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #3
  %fg_color29 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %bg_color30 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then26
  %fgcolor.0.in = phi ptr [ %arrayidx, %if.then26 ], [ %fg_color29, %if.else ]
  %bgcolor.0.in = phi ptr [ %arrayidx28, %if.then26 ], [ %bg_color30, %if.else ]
  %30 = ptrtoint ptr %bgcolor.0.in to i32
  call void @__asan_load4_noabort(i32 %30)
  %bgcolor.0 = load i32, ptr %bgcolor.0.in, align 4
  %31 = ptrtoint ptr %fgcolor.0.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %fgcolor.0 = load i32, ptr %fgcolor.0.in, align 4
  %.frozen = freeze i32 %1
  %div38 = udiv i32 32, %.frozen
  %32 = mul i32 %div38, %.frozen
  %rem.decomposed = sub i32 32, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp32 = icmp eq i32 %rem.decomposed, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp32, i1 %tobool34.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul9)
  %tobool36.not = icmp eq i32 %mul9, 0
  %or.cond107 = select i1 %or.cond, i1 %tobool36.not, i1 false
  br i1 %or.cond107, label %land.lhs.true37, label %if.end31.if.else50_crit_edge

if.end31.if.else50_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.else50

land.lhs.true37:                                  ; preds = %if.end31
  %sub39 = add nsw i32 %div38, -1
  %and40 = and i32 %sub39, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %cmp41 = icmp eq i32 %and40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp44 = icmp ugt i32 %1, 7
  %or.cond108 = select i1 %cmp41, i1 %cmp44, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %1)
  %cmp47 = icmp ult i32 %1, 33
  %or.cond109 = select i1 %or.cond108, i1 %cmp47, i1 false
  br i1 %or.cond109, label %if.then49, label %land.lhs.true37.if.else50_crit_edge

land.lhs.true37.if.else50_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.else50

if.then49:                                        ; preds = %land.lhs.true37
  %33 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bits_per_pixel, align 4
  %div.i = udiv i32 32, %34
  %35 = ptrtoint ptr %width1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %width1, align 4
  %add.i = add i32 %36, 7
  %div153.i = lshr i32 %add.i, 3
  %data.i = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i, align 4
  %39 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %34, label %sw.epilog.i [
    i32 8, label %sw.bb.i
    i32 16, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #3
  %flags.i.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 2
  %40 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %41, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %cond.i = select i1 %tobool.i.not.i, ptr @cfb_tab8_le, ptr @cfb_tab8_be
  br label %sw.epilog.thread.i

sw.bb2.i:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #3
  %flags.i55.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 2
  %42 = ptrtoint ptr %flags.i55.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i55.i, align 4
  %and.i56.i = and i32 %43, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56.i)
  %tobool.i57.not.i = icmp eq i32 %and.i56.i, 0
  %cond4.i = select i1 %tobool.i57.not.i, ptr @cfb_tab16_le, ptr @cfb_tab16_be
  br label %sw.epilog.thread.i

sw.epilog.thread.i:                               ; preds = %sw.bb2.i, %sw.bb.i
  %tab.0.ph.i = phi ptr [ %cond.i, %sw.bb.i ], [ %cond4.i, %sw.bb2.i ]
  %i.05877.i = add nsw i32 %div.i, -1
  br label %for.body.preheader.i

sw.epilog.i:                                      ; preds = %if.then49
  %i.058.i = add nsw i32 %div.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.058.i)
  %tobool.not59.i = icmp eq i32 %i.058.i, 0
  br i1 %tobool.not59.i, label %sw.epilog.i.for.end.i_crit_edge, label %sw.epilog.i.for.body.preheader.i_crit_edge

sw.epilog.i.for.body.preheader.i_crit_edge:       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body.preheader.i

sw.epilog.i.for.end.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end.i

for.body.preheader.i:                             ; preds = %sw.epilog.i.for.body.preheader.i_crit_edge, %sw.epilog.thread.i
  %i.05881.i = phi i32 [ %i.05877.i, %sw.epilog.thread.i ], [ %i.058.i, %sw.epilog.i.for.body.preheader.i_crit_edge ]
  %tab.079.i = phi ptr [ %tab.0.ph.i, %sw.epilog.thread.i ], [ @cfb_tab32, %sw.epilog.i.for.body.preheader.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.062.i = phi i32 [ %i.0.i, %for.body.i.for.body.i_crit_edge ], [ %i.05881.i, %for.body.preheader.i ]
  %bgx.061.i = phi i32 [ %or7.i, %for.body.i.for.body.i_crit_edge ], [ %bgcolor.0, %for.body.preheader.i ]
  %fgx.060.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ %fgcolor.0, %for.body.preheader.i ]
  %shl.i = shl i32 %fgx.060.i, %34
  %shl6.i = shl i32 %bgx.061.i, %34
  %or.i = or i32 %shl.i, %fgcolor.0
  %or7.i = or i32 %shl6.i, %bgcolor.0
  %i.0.i = add i32 %i.062.i, -1
  %tobool.not.i = icmp eq i32 %i.0.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.epilog.i.for.end.i_crit_edge
  %tab.080.i = phi ptr [ @cfb_tab32, %sw.epilog.i.for.end.i_crit_edge ], [ %tab.079.i, %for.body.i.for.end.i_crit_edge ]
  %fgx.0.lcssa.i = phi i32 [ %fgcolor.0, %sw.epilog.i.for.end.i_crit_edge ], [ %or.i, %for.body.i.for.end.i_crit_edge ]
  %bgx.0.lcssa.i = phi i32 [ %bgcolor.0, %sw.epilog.i.for.end.i_crit_edge ], [ %or7.i, %for.body.i.for.end.i_crit_edge ]
  %notmask.i = shl nsw i32 -1, %div.i
  %sub9.i = xor i32 %notmask.i, -1
  %xor.i = xor i32 %bgx.0.lcssa.i, %fgx.0.lcssa.i
  %div11.i = udiv i32 %36, %div.i
  %height.i = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %44 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool14.not70.i = icmp eq i32 %45, 0
  br i1 %tobool14.not70.i, label %for.end.i.cleanup_crit_edge, label %for.cond16.preheader.lr.ph.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

for.cond16.preheader.lr.ph.i:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %36)
  %tobool18.not64.i = icmp ugt i32 %div.i, %36
  br label %for.cond16.preheader.i

for.cond16.preheader.i:                           ; preds = %for.end25.i.for.cond16.preheader.i_crit_edge, %for.cond16.preheader.lr.ph.i
  %dec1375.in.i = phi i32 [ %45, %for.cond16.preheader.lr.ph.i ], [ %dec1375.i, %for.end25.i.for.cond16.preheader.i_crit_edge ]
  %s.073.i = phi ptr [ %38, %for.cond16.preheader.lr.ph.i ], [ %add.ptr26.i, %for.end25.i.for.cond16.preheader.i_crit_edge ]
  %dst1.addr.071.i = phi ptr [ %add.ptr, %for.cond16.preheader.lr.ph.i ], [ %add.ptr.i, %for.end25.i.for.cond16.preheader.i_crit_edge ]
  %dec1375.i = add i32 %dec1375.in.i, -1
  br i1 %tobool18.not64.i, label %for.cond16.preheader.i.for.end25.i_crit_edge, label %for.cond16.preheader.i.for.body19.i_crit_edge

for.cond16.preheader.i.for.body19.i_crit_edge:    ; preds = %for.cond16.preheader.i
  br label %for.body19.i

for.cond16.preheader.i.for.end25.i_crit_edge:     ; preds = %for.cond16.preheader.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end25.i

for.body19.i:                                     ; preds = %for.body19.i.for.body19.i_crit_edge, %for.cond16.preheader.i.for.body19.i_crit_edge
  %j.068.i = phi i32 [ %dec17.i, %for.body19.i.for.body19.i_crit_edge ], [ %div11.i, %for.cond16.preheader.i.for.body19.i_crit_edge ]
  %dst.067.i = phi ptr [ %incdec.ptr.i, %for.body19.i.for.body19.i_crit_edge ], [ %dst1.addr.071.i, %for.cond16.preheader.i.for.body19.i_crit_edge ]
  %src.066.i = phi ptr [ %spec.select54.i, %for.body19.i.for.body19.i_crit_edge ], [ %s.073.i, %for.cond16.preheader.i.for.body19.i_crit_edge ]
  %shift.065.i = phi i32 [ %spec.select.i, %for.body19.i.for.body19.i_crit_edge ], [ 8, %for.cond16.preheader.i.for.body19.i_crit_edge ]
  %dec17.i = add i32 %j.068.i, -1
  %sub20.i = sub i32 %shift.065.i, %div.i
  %46 = ptrtoint ptr %src.066.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %src.066.i, align 1
  %conv.i = zext i8 %47 to i32
  %shr.i = lshr i32 %conv.i, %sub20.i
  %and.i = and i32 %shr.i, %sub9.i
  %arrayidx.i = getelementptr i32, ptr %tab.080.i, i32 %and.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  %and21.i = and i32 %49, %xor.i
  %xor22.i = xor i32 %and21.i, %bgx.0.lcssa.i
  %incdec.ptr.i = getelementptr i32, ptr %dst.067.i, i32 1
  %50 = ptrtoint ptr %dst.067.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %xor22.i, ptr %dst.067.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shift.065.i, i32 %div.i)
  %tobool23.not.i = icmp eq i32 %shift.065.i, %div.i
  %spec.select.i = select i1 %tobool23.not.i, i32 8, i32 %sub20.i
  %spec.select54.idx.i = zext i1 %tobool23.not.i to i32
  %spec.select54.i = getelementptr i8, ptr %src.066.i, i32 %spec.select54.idx.i
  %tobool18.not.i = icmp eq i32 %dec17.i, 0
  br i1 %tobool18.not.i, label %for.body19.i.for.end25.i_crit_edge, label %for.body19.i.for.body19.i_crit_edge

for.body19.i.for.body19.i_crit_edge:              ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body19.i

for.body19.i.for.end25.i_crit_edge:               ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end25.i

for.end25.i:                                      ; preds = %for.body19.i.for.end25.i_crit_edge, %for.cond16.preheader.i.for.end25.i_crit_edge
  %51 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %line_length, align 4
  %add.ptr.i = getelementptr i8, ptr %dst1.addr.071.i, i32 %52
  %add.ptr26.i = getelementptr i8, ptr %s.073.i, i32 %div153.i
  %tobool14.not.i = icmp eq i32 %dec1375.i, 0
  br i1 %tobool14.not.i, label %for.end25.i.cleanup_crit_edge, label %for.end25.i.for.cond16.preheader.i_crit_edge

for.end25.i.for.cond16.preheader.i_crit_edge:     ; preds = %for.end25.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.cond16.preheader.i

for.end25.i.cleanup_crit_edge:                    ; preds = %for.end25.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.else50:                                        ; preds = %land.lhs.true37.if.else50_crit_edge, %if.end31.if.else50_crit_edge
  %53 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bits_per_pixel, align 4
  %55 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %line_length, align 4
  %sub.i = sub i32 32, %54
  %57 = ptrtoint ptr %width1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %width1, align 4
  %add.i113 = add i32 %58, 7
  %div129.i = lshr i32 %add.i113, 3
  %flags.i.i114 = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 2
  %59 = ptrtoint ptr %flags.i.i114 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags.i.i114, align 4
  %and.i.i115 = and i32 %60, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i115)
  %tobool.i.not.i116 = icmp eq i32 %and.i.i115, 0
  %spec.select.i117 = select i1 %tobool.i.not.i116, i32 0, i32 %sub.i
  %height.i118 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %61 = ptrtoint ptr %height.i118 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %height.i118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not159.i = icmp eq i32 %62, 0
  br i1 %tobool.not159.i, label %if.else50.cleanup_crit_edge, label %for.body.lr.ph.i

if.else50.cleanup_crit_edge:                      ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.else50
  %data.i119 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %63 = ptrtoint ptr %data.i119 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i119, align 4
  br label %for.body.i120

for.body.i120:                                    ; preds = %if.end72.i.for.body.i120_crit_edge, %for.body.lr.ph.i
  %dec167.in.i = phi i32 [ %62, %for.body.lr.ph.i ], [ %dec167.i, %if.end72.i.for.body.i120_crit_edge ]
  %src.0165.i = phi ptr [ %64, %for.body.lr.ph.i ], [ %add.ptr73.i, %if.end72.i.for.body.i120_crit_edge ]
  %dst2.0164.i = phi ptr [ %add.ptr, %for.body.lr.ph.i ], [ %dst2.1.i, %if.end72.i.for.body.i120_crit_edge ]
  %dst1.addr.0162.i = phi ptr [ %add.ptr, %for.body.lr.ph.i ], [ %dst1.addr.1.i, %if.end72.i.for.body.i120_crit_edge ]
  %start_index.addr.0160.i = phi i32 [ %and, %for.body.lr.ph.i ], [ %start_index.addr.1.i, %if.end72.i.for.body.i120_crit_edge ]
  %dec167.i = add i32 %dec167.in.i, -1
  %65 = ptrtoint ptr %width1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %width1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start_index.addr.0160.i)
  %tobool10.not.i = icmp eq i32 %start_index.addr.0160.i, 0
  br i1 %tobool10.not.i, label %for.body.i120.if.end.i_crit_edge, label %if.then.i

for.body.i120.if.end.i_crit_edge:                 ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #3
  %67 = ptrtoint ptr %flags.i.i114 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags.i.i114, align 4
  %and.i136.i = and i32 %68, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i136.i)
  %tobool.i137.not.i = icmp eq i32 %and.i136.i, 0
  %shr.i121 = lshr i32 -1, %start_index.addr.0160.i
  %shl14.i = shl nsw i32 -1, %start_index.addr.0160.i
  %cond16.i = select i1 %tobool.i137.not.i, i32 %shl14.i, i32 %shr.i121
  %neg.i = xor i32 %cond16.i, -1
  %69 = ptrtoint ptr %dst1.addr.0162.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dst1.addr.0162.i, align 4
  %and.i122 = and i32 %70, %neg.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i120.if.end.i_crit_edge
  %val.0.i = phi i32 [ %and.i122, %if.then.i ], [ 0, %for.body.i120.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool18.not148.i = icmp eq i32 %66, 0
  br i1 %tobool18.not148.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end.i

while.body.i:                                     ; preds = %if.end53.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %dec17155.in.i = phi i32 [ %dec17155.i, %if.end53.i.while.body.i_crit_edge ], [ %66, %if.end.i.while.body.i_crit_edge ]
  %l.0154.i = phi i32 [ %spec.select131.i, %if.end53.i.while.body.i_crit_edge ], [ 8, %if.end.i.while.body.i_crit_edge ]
  %s.0153.i = phi ptr [ %spec.select130.i, %if.end53.i.while.body.i_crit_edge ], [ %src.0165.i, %if.end.i.while.body.i_crit_edge ]
  %val.1152.i = phi i32 [ %val.2.i, %if.end53.i.while.body.i_crit_edge ], [ %val.0.i, %if.end.i.while.body.i_crit_edge ]
  %dst.0151.i = phi ptr [ %dst.1.i, %if.end53.i.while.body.i_crit_edge ], [ %dst1.addr.0162.i, %if.end.i.while.body.i_crit_edge ]
  %shift.1149.i = phi i32 [ %and55.i, %if.end53.i.while.body.i_crit_edge ], [ %start_index.addr.0160.i, %if.end.i.while.body.i_crit_edge ]
  %dec17155.i = add i32 %dec17155.in.i, -1
  %dec19.i = add i32 %l.0154.i, -1
  %71 = ptrtoint ptr %s.0153.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %s.0153.i, align 1
  %conv.i123 = zext i8 %72 to i32
  %shl20.i = shl nuw i32 1, %dec19.i
  %and21.i124 = and i32 %shl20.i, %conv.i123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i124)
  %tobool22.not.i = icmp eq i32 %and21.i124, 0
  %shl8.shl.v.i = select i1 %tobool22.not.i, i32 %bgcolor.0, i32 %fgcolor.0
  %shl8.shl.i = shl i32 %shl8.shl.v.i, %spec.select.i117
  %73 = ptrtoint ptr %flags.i.i114 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags.i.i114, align 4
  %and.i139.i = and i32 %74, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i139.i)
  %tobool.i140.not.i = icmp eq i32 %and.i139.i, 0
  %shr30.i = lshr i32 %shl8.shl.i, %shift.1149.i
  %shl32.i = shl i32 %shl8.shl.i, %shift.1149.i
  %cond34.i = select i1 %tobool.i140.not.i, i32 %shl32.i, i32 %shr30.i
  %or.i125 = or i32 %cond34.i, %val.1152.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shift.1149.i, i32 %sub.i)
  %cmp.not.i = icmp ult i32 %shift.1149.i, %sub.i
  br i1 %cmp.not.i, label %while.body.i.if.end53.i_crit_edge, label %if.then36.i

while.body.i.if.end53.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end53.i

if.then36.i:                                      ; preds = %while.body.i
  %incdec.ptr.i126 = getelementptr i32, ptr %dst.0151.i, i32 1
  %75 = ptrtoint ptr %dst.0151.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or.i125, ptr %dst.0151.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shift.1149.i, i32 %sub.i)
  %cmp37.i = icmp eq i32 %shift.1149.i, %sub.i
  br i1 %cmp37.i, label %if.then36.i.if.end53.i_crit_edge, label %cond.false40.i

if.then36.i.if.end53.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end53.i

cond.false40.i:                                   ; preds = %if.then36.i
  %76 = ptrtoint ptr %flags.i.i114 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags.i.i114, align 4
  %and.i142.i = and i32 %77, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i142.i)
  %tobool.i143.not.i = icmp eq i32 %and.i142.i, 0
  %sub47.i = sub i32 32, %shift.1149.i
  br i1 %tobool.i143.not.i, label %cond.false46.i, label %cond.true43.i

cond.true43.i:                                    ; preds = %cond.false40.i
  call void @__sanitizer_cov_trace_pc() #3
  %shl45.i = shl i32 %shl8.shl.i, %sub47.i
  br label %if.end53.i

cond.false46.i:                                   ; preds = %cond.false40.i
  call void @__sanitizer_cov_trace_pc() #3
  %shr48.i = lshr i32 %shl8.shl.i, %sub47.i
  br label %if.end53.i

if.end53.i:                                       ; preds = %cond.false46.i, %cond.true43.i, %if.then36.i.if.end53.i_crit_edge, %while.body.i.if.end53.i_crit_edge
  %dst.1.i = phi ptr [ %dst.0151.i, %while.body.i.if.end53.i_crit_edge ], [ %incdec.ptr.i126, %cond.true43.i ], [ %incdec.ptr.i126, %cond.false46.i ], [ %incdec.ptr.i126, %if.then36.i.if.end53.i_crit_edge ]
  %val.2.i = phi i32 [ %or.i125, %while.body.i.if.end53.i_crit_edge ], [ %shl45.i, %cond.true43.i ], [ %shr48.i, %cond.false46.i ], [ 0, %if.then36.i.if.end53.i_crit_edge ]
  %add54.i = add i32 %shift.1149.i, %54
  %and55.i = and i32 %add54.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec19.i)
  %tobool56.not.i = icmp eq i32 %dec19.i, 0
  %spec.select130.idx.i = zext i1 %tobool56.not.i to i32
  %spec.select130.i = getelementptr i8, ptr %s.0153.i, i32 %spec.select130.idx.i
  %spec.select131.i = select i1 %tobool56.not.i, i32 8, i32 %dec19.i
  %tobool18.not.i127 = icmp eq i32 %dec17155.i, 0
  br i1 %tobool18.not.i127, label %if.end53.i.while.end.i_crit_edge, label %if.end53.i.while.body.i_crit_edge

if.end53.i.while.body.i_crit_edge:                ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body.i

if.end53.i.while.end.i_crit_edge:                 ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end.i

while.end.i:                                      ; preds = %if.end53.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %shift.1.lcssa.i = phi i32 [ %start_index.addr.0160.i, %if.end.i.while.end.i_crit_edge ], [ %and55.i, %if.end53.i.while.end.i_crit_edge ]
  %dst.0.lcssa.i = phi ptr [ %dst1.addr.0162.i, %if.end.i.while.end.i_crit_edge ], [ %dst.1.i, %if.end53.i.while.end.i_crit_edge ]
  %val.1.lcssa.i = phi i32 [ %val.0.i, %if.end.i.while.end.i_crit_edge ], [ %val.2.i, %if.end53.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shift.1.lcssa.i)
  %tobool60.not.i = icmp eq i32 %shift.1.lcssa.i, 0
  br i1 %tobool60.not.i, label %while.end.i.if.end72.i_crit_edge, label %if.then61.i

while.end.i.if.end72.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end72.i

if.then61.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #3
  %78 = ptrtoint ptr %flags.i.i114 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags.i.i114, align 4
  %and.i145.i = and i32 %79, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i145.i)
  %tobool.i146.not.i = icmp eq i32 %and.i145.i, 0
  %shr65.i = lshr i32 -1, %shift.1.lcssa.i
  %shl67.i = shl nsw i32 -1, %shift.1.lcssa.i
  %cond69.i = select i1 %tobool.i146.not.i, i32 %shl67.i, i32 %shr65.i
  %80 = ptrtoint ptr %dst.0.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dst.0.lcssa.i, align 4
  %and70.i = and i32 %cond69.i, %81
  %or71.i = or i32 %and70.i, %val.1.lcssa.i
  store i32 %or71.i, ptr %dst.0.lcssa.i, align 4
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then61.i, %while.end.i.if.end72.i_crit_edge
  %add.ptr.i128 = getelementptr i8, ptr %dst1.addr.0162.i, i32 %56
  %add.ptr73.i = getelementptr i8, ptr %src.0165.i, i32 %div129.i
  %add.ptr76.i = getelementptr i32, ptr %dst2.0164.i, i32 %56
  %82 = ptrtoint ptr %add.ptr76.i to i32
  %and77.i = and i32 %82, -4
  %83 = inttoptr i32 %and77.i to ptr
  %add78.i = add i32 %start_index.addr.0160.i, %and8
  %and79.i = and i32 %add78.i, 31
  %start_index.addr.1.i = select i1 %tobool36.not, i32 %start_index.addr.0160.i, i32 %and79.i
  %dst1.addr.1.i = select i1 %tobool36.not, ptr %add.ptr.i128, ptr %83
  %dst2.1.i = select i1 %tobool36.not, ptr %dst2.0164.i, ptr %add.ptr76.i
  %tobool.not.i129 = icmp eq i32 %dec167.i, 0
  br i1 %tobool.not.i129, label %if.end72.i.cleanup_crit_edge, label %if.end72.i.for.body.i120_crit_edge

if.end72.i.for.body.i120_crit_edge:               ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body.i120

if.end72.i.cleanup_crit_edge:                     ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.else52:                                        ; preds = %if.end15
  %84 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bits_per_pixel, align 4
  %sub.i132 = sub i32 32, %85
  %pseudo_palette.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 27
  %86 = ptrtoint ptr %pseudo_palette.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pseudo_palette.i, align 4
  %height.i133 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %88 = ptrtoint ptr %height.i133 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %height.i133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not140.i = icmp eq i32 %89, 0
  br i1 %tobool.not140.i, label %if.else52.cleanup_crit_edge, label %for.body.lr.ph.i138

if.else52.cleanup_crit_edge:                      ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

for.body.lr.ph.i138:                              ; preds = %if.else52
  %data.i134 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %90 = ptrtoint ptr %data.i134 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data.i134, align 4
  %flags.i.i136 = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 2
  %visual.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 7, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul9)
  %tobool61.not.i = icmp eq i32 %mul9, 0
  br label %for.body.i139

for.body.i139:                                    ; preds = %if.end59.i.for.body.i139_crit_edge, %for.body.lr.ph.i138
  %dec147.in.i = phi i32 [ %89, %for.body.lr.ph.i138 ], [ %dec147.i, %if.end59.i.for.body.i139_crit_edge ]
  %src.0146.i = phi ptr [ %91, %for.body.lr.ph.i138 ], [ %src.1.lcssa.i, %if.end59.i.for.body.i139_crit_edge ]
  %dst2.0145.i = phi ptr [ %add.ptr, %for.body.lr.ph.i138 ], [ %dst2.1.i166, %if.end59.i.for.body.i139_crit_edge ]
  %dst1.addr.0143.i = phi ptr [ %add.ptr, %for.body.lr.ph.i138 ], [ %dst1.addr.1.i165, %if.end59.i.for.body.i139_crit_edge ]
  %start_index.addr.0141.i = phi i32 [ %and, %for.body.lr.ph.i138 ], [ %start_index.addr.1.i164, %if.end59.i.for.body.i139_crit_edge ]
  %dec147.i = add i32 %dec147.in.i, -1
  %92 = ptrtoint ptr %width1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %width1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start_index.addr.0141.i)
  %tobool1.not.i = icmp eq i32 %start_index.addr.0141.i, 0
  br i1 %tobool1.not.i, label %for.body.i139.if.end.i149_crit_edge, label %if.then.i147

for.body.i139.if.end.i149_crit_edge:              ; preds = %for.body.i139
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end.i149

if.then.i147:                                     ; preds = %for.body.i139
  call void @__sanitizer_cov_trace_pc() #3
  %94 = ptrtoint ptr %flags.i.i136 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags.i.i136, align 4
  %and.i.i140 = and i32 %95, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i140)
  %tobool.i.not.i141 = icmp eq i32 %and.i.i140, 0
  %shr.i142 = lshr i32 -1, %start_index.addr.0141.i
  %shl.i143 = shl nsw i32 -1, %start_index.addr.0141.i
  %cond.i144 = select i1 %tobool.i.not.i141, i32 %shl.i143, i32 %shr.i142
  %neg.i145 = xor i32 %cond.i144, -1
  %96 = ptrtoint ptr %dst1.addr.0143.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dst1.addr.0143.i, align 4
  %and.i146 = and i32 %97, %neg.i145
  br label %if.end.i149

if.end.i149:                                      ; preds = %if.then.i147, %for.body.i139.if.end.i149_crit_edge
  %val.0.i148 = phi i32 [ %and.i146, %if.then.i147 ], [ 0, %for.body.i139.if.end.i149_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool3.not128.i = icmp eq i32 %93, 0
  br i1 %tobool3.not128.i, label %if.end.i149.while.end.i162_crit_edge, label %if.end.i149.while.body.i150_crit_edge

if.end.i149.while.body.i150_crit_edge:            ; preds = %if.end.i149
  br label %while.body.i150

if.end.i149.while.end.i162_crit_edge:             ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end.i162

while.body.i150:                                  ; preds = %if.end44.i.while.body.i150_crit_edge, %if.end.i149.while.body.i150_crit_edge
  %dec2135.in.i = phi i32 [ %dec2135.i, %if.end44.i.while.body.i150_crit_edge ], [ %93, %if.end.i149.while.body.i150_crit_edge ]
  %src.1133.i = phi ptr [ %incdec.ptr46.i, %if.end44.i.while.body.i150_crit_edge ], [ %src.0146.i, %if.end.i149.while.body.i150_crit_edge ]
  %shift.1131.i = phi i32 [ %and45.i, %if.end44.i.while.body.i150_crit_edge ], [ %start_index.addr.0141.i, %if.end.i149.while.body.i150_crit_edge ]
  %val.1130.i = phi i32 [ %val.2.i157, %if.end44.i.while.body.i150_crit_edge ], [ %val.0.i148, %if.end.i149.while.body.i150_crit_edge ]
  %dst.0129.i = phi ptr [ %dst.1.i156, %if.end44.i.while.body.i150_crit_edge ], [ %dst1.addr.0143.i, %if.end.i149.while.body.i150_crit_edge ]
  %dec2135.i = add i32 %dec2135.in.i, -1
  %98 = ptrtoint ptr %visual.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %visual.i, align 4
  %100 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %99, label %if.else.i [
    i32 2, label %while.body.i150.if.then7.i_crit_edge
    i32 4, label %while.body.i150.if.then7.i_crit_edge180
  ]

while.body.i150.if.then7.i_crit_edge180:          ; preds = %while.body.i150
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then7.i

while.body.i150.if.then7.i_crit_edge:             ; preds = %while.body.i150
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then7.i

if.then7.i:                                       ; preds = %while.body.i150.if.then7.i_crit_edge, %while.body.i150.if.then7.i_crit_edge180
  %101 = ptrtoint ptr %src.1133.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %src.1133.i, align 1
  %idxprom.i = zext i8 %102 to i32
  %arrayidx.i151 = getelementptr i32, ptr %87, i32 %idxprom.i
  %103 = ptrtoint ptr %arrayidx.i151 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i151, align 4
  br label %if.end8.i

if.else.i:                                        ; preds = %while.body.i150
  call void @__sanitizer_cov_trace_pc() #3
  %105 = ptrtoint ptr %src.1133.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %src.1133.i, align 1
  %conv.i152 = zext i8 %106 to i32
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.then7.i
  %color.0.i = phi i32 [ %104, %if.then7.i ], [ %conv.i152, %if.else.i ]
  %107 = ptrtoint ptr %flags.i.i136 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags.i.i136, align 4
  %and.i116.i = and i32 %108, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116.i)
  %tobool.i117.not.i = icmp eq i32 %and.i116.i, 0
  %spec.select.i153 = select i1 %tobool.i117.not.i, i32 0, i32 %sub.i132
  %shl16.i = shl i32 %color.0.i, %spec.select.i153
  %shr20.i = lshr i32 %shl16.i, %shift.1131.i
  %shl22.i = shl i32 %shl16.i, %shift.1131.i
  %cond24.i = select i1 %tobool.i117.not.i, i32 %shl22.i, i32 %shr20.i
  %or.i154 = or i32 %cond24.i, %val.1130.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shift.1131.i, i32 %sub.i132)
  %cmp25.not.i = icmp ult i32 %shift.1131.i, %sub.i132
  br i1 %cmp25.not.i, label %if.end8.i.if.end44.i_crit_edge, label %if.then27.i

if.end8.i.if.end44.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end44.i

if.then27.i:                                      ; preds = %if.end8.i
  %incdec.ptr.i155 = getelementptr i32, ptr %dst.0129.i, i32 1
  %109 = ptrtoint ptr %dst.0129.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or.i154, ptr %dst.0129.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shift.1131.i, i32 %sub.i132)
  %cmp28.i = icmp eq i32 %shift.1131.i, %sub.i132
  br i1 %cmp28.i, label %if.then27.i.if.end44.i_crit_edge, label %cond.false31.i

if.then27.i.if.end44.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end44.i

cond.false31.i:                                   ; preds = %if.then27.i
  %110 = ptrtoint ptr %flags.i.i136 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags.i.i136, align 4
  %and.i122.i = and i32 %111, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i122.i)
  %tobool.i123.not.i = icmp eq i32 %and.i122.i, 0
  %sub38.i = sub i32 32, %shift.1131.i
  br i1 %tobool.i123.not.i, label %cond.false37.i, label %cond.true34.i

cond.true34.i:                                    ; preds = %cond.false31.i
  call void @__sanitizer_cov_trace_pc() #3
  %shl36.i = shl i32 %shl16.i, %sub38.i
  br label %if.end44.i

cond.false37.i:                                   ; preds = %cond.false31.i
  call void @__sanitizer_cov_trace_pc() #3
  %shr39.i = lshr i32 %shl16.i, %sub38.i
  br label %if.end44.i

if.end44.i:                                       ; preds = %cond.false37.i, %cond.true34.i, %if.then27.i.if.end44.i_crit_edge, %if.end8.i.if.end44.i_crit_edge
  %dst.1.i156 = phi ptr [ %dst.0129.i, %if.end8.i.if.end44.i_crit_edge ], [ %incdec.ptr.i155, %cond.true34.i ], [ %incdec.ptr.i155, %cond.false37.i ], [ %incdec.ptr.i155, %if.then27.i.if.end44.i_crit_edge ]
  %val.2.i157 = phi i32 [ %or.i154, %if.end8.i.if.end44.i_crit_edge ], [ %shl36.i, %cond.true34.i ], [ %shr39.i, %cond.false37.i ], [ 0, %if.then27.i.if.end44.i_crit_edge ]
  %add.i158 = add i32 %shift.1131.i, %85
  %and45.i = and i32 %add.i158, 31
  %incdec.ptr46.i = getelementptr i8, ptr %src.1133.i, i32 1
  %tobool3.not.i = icmp eq i32 %dec2135.i, 0
  br i1 %tobool3.not.i, label %if.end44.i.while.end.i162_crit_edge, label %if.end44.i.while.body.i150_crit_edge

if.end44.i.while.body.i150_crit_edge:             ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body.i150

if.end44.i.while.end.i162_crit_edge:              ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end.i162

while.end.i162:                                   ; preds = %if.end44.i.while.end.i162_crit_edge, %if.end.i149.while.end.i162_crit_edge
  %dst.0.lcssa.i159 = phi ptr [ %dst1.addr.0143.i, %if.end.i149.while.end.i162_crit_edge ], [ %dst.1.i156, %if.end44.i.while.end.i162_crit_edge ]
  %val.1.lcssa.i160 = phi i32 [ %val.0.i148, %if.end.i149.while.end.i162_crit_edge ], [ %val.2.i157, %if.end44.i.while.end.i162_crit_edge ]
  %shift.1.lcssa.i161 = phi i32 [ %start_index.addr.0141.i, %if.end.i149.while.end.i162_crit_edge ], [ %and45.i, %if.end44.i.while.end.i162_crit_edge ]
  %src.1.lcssa.i = phi ptr [ %src.0146.i, %if.end.i149.while.end.i162_crit_edge ], [ %incdec.ptr46.i, %if.end44.i.while.end.i162_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shift.1.lcssa.i161)
  %tobool47.not.i = icmp eq i32 %shift.1.lcssa.i161, 0
  br i1 %tobool47.not.i, label %while.end.i162.if.end59.i_crit_edge, label %if.then48.i

while.end.i162.if.end59.i_crit_edge:              ; preds = %while.end.i162
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end59.i

if.then48.i:                                      ; preds = %while.end.i162
  call void @__sanitizer_cov_trace_pc() #3
  %112 = ptrtoint ptr %flags.i.i136 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flags.i.i136, align 4
  %and.i125.i = and i32 %113, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125.i)
  %tobool.i126.not.i = icmp eq i32 %and.i125.i, 0
  %shr52.i = lshr i32 -1, %shift.1.lcssa.i161
  %shl54.i = shl nsw i32 -1, %shift.1.lcssa.i161
  %cond56.i = select i1 %tobool.i126.not.i, i32 %shl54.i, i32 %shr52.i
  %114 = ptrtoint ptr %dst.0.lcssa.i159 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dst.0.lcssa.i159, align 4
  %and57.i = and i32 %cond56.i, %115
  %or58.i = or i32 %and57.i, %val.1.lcssa.i160
  store i32 %or58.i, ptr %dst.0.lcssa.i159, align 4
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then48.i, %while.end.i162.if.end59.i_crit_edge
  %116 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %line_length, align 4
  %add.ptr.i163 = getelementptr i8, ptr %dst1.addr.0143.i, i32 %117
  %add.ptr65.i = getelementptr i32, ptr %dst2.0145.i, i32 %117
  %118 = ptrtoint ptr %add.ptr65.i to i32
  %and66.i = and i32 %118, -4
  %119 = inttoptr i32 %and66.i to ptr
  %add67.i = add i32 %start_index.addr.0141.i, %and8
  %and68.i = and i32 %add67.i, 31
  %start_index.addr.1.i164 = select i1 %tobool61.not.i, i32 %start_index.addr.0141.i, i32 %and68.i
  %dst1.addr.1.i165 = select i1 %tobool61.not.i, ptr %add.ptr.i163, ptr %119
  %dst2.1.i166 = select i1 %tobool61.not.i, ptr %dst2.0145.i, ptr %add.ptr65.i
  %tobool.not.i167 = icmp eq i32 %dec147.i, 0
  br i1 %tobool.not.i167, label %if.end59.i.cleanup_crit_edge, label %if.end59.i.for.body.i139_crit_edge

if.end59.i.for.body.i139_crit_edge:               ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body.i139

if.end59.i.cleanup_crit_edge:                     ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

cleanup:                                          ; preds = %if.end59.i.cleanup_crit_edge, %if.else52.cleanup_crit_edge, %if.end72.i.cleanup_crit_edge, %if.else50.cleanup_crit_edge, %for.end25.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__ksymtab_sys_imageblit, !1, !"__ksymtab_sys_imageblit", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/core/sysimgblt.c", i32 283, i32 1}
!2 = !{ptr @__UNIQUE_ID_author301, !3, !"__UNIQUE_ID_author301", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/core/sysimgblt.c", i32 285, i32 1}
!4 = !{ptr @__UNIQUE_ID_description302, !5, !"__UNIQUE_ID_description302", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/core/sysimgblt.c", i32 286, i32 1}
!6 = !{ptr @__UNIQUE_ID_file303, !7, !"__UNIQUE_ID_file303", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/core/sysimgblt.c", i32 287, i32 1}
!8 = !{ptr @__UNIQUE_ID_license304, !7, !"__UNIQUE_ID_license304", i1 false, i1 false}
!9 = !{ptr @cfb_tab8_be, !10, !"cfb_tab8_be", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/core/sysimgblt.c", i32 26, i32 18}
!11 = !{ptr @cfb_tab8_le, !12, !"cfb_tab8_le", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/core/sysimgblt.c", i32 33, i32 18}
!13 = !{ptr @cfb_tab16_be, !14, !"cfb_tab16_be", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/core/sysimgblt.c", i32 40, i32 18}
!15 = !{ptr @cfb_tab16_le, !16, !"cfb_tab16_le", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/core/sysimgblt.c", i32 44, i32 18}
!17 = !{ptr @cfb_tab32, !18, !"cfb_tab32", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/core/sysimgblt.c", i32 48, i32 18}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
