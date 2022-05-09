; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/core/cfbimgblt.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/cfbimgblt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cfb_imageblit\22, \22a\22\09"
module asm "\09.weak\09__crc_cfb_imageblit\09\09\09\09"
module asm "\09.long\09__crc_cfb_imageblit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfb_imageblit:\09\09\09\09\09"
module asm "\09.asciz \09\22cfb_imageblit\22\09\09\09\09\09"
module asm "__kstrtabns_cfb_imageblit:\09\09\09\09\09"
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

@__kstrtab_cfb_imageblit = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfb_imageblit = external dso_local constant [0 x i8], align 1
@__ksymtab_cfb_imageblit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfb_imageblit to i32), ptr @__kstrtab_cfb_imageblit, ptr @__kstrtabns_cfb_imageblit }, section "___ksymtab+cfb_imageblit", align 4
@__UNIQUE_ID_author301 = internal constant [55 x i8] c"cfbimgblt.author=James Simmons <jsimmons@users.sf.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [67 x i8] c"cfbimgblt.description=Generic software accelerated imaging drawing\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [50 x i8] c"cfbimgblt.file=drivers/video/fbdev/core/cfbimgblt\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [22 x i8] c"cfbimgblt.license=GPL\00", section ".modinfo", align 1
@cfb_tab8_be = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 255, i32 65280, i32 65535, i32 16711680, i32 16711935, i32 16776960, i32 16777215, i32 -16777216, i32 -16776961, i32 -16711936, i32 -16711681, i32 -65536, i32 -65281, i32 -256, i32 -1], [32 x i8] zeroinitializer }, align 32
@cfb_tab8_le = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 -16777216, i32 16711680, i32 -65536, i32 65280, i32 -16711936, i32 16776960, i32 -256, i32 255, i32 -16776961, i32 16711935, i32 -65281, i32 65535, i32 -16711681, i32 16777215, i32 -1], [32 x i8] zeroinitializer }, align 32
@cfb_tab16_be = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 65535, i32 -65536, i32 -1], [16 x i8] zeroinitializer }, align 32
@cfb_tab16_le = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 -65536, i32 65535, i32 -1], [16 x i8] zeroinitializer }, align 32
@cfb_tab32 = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 -1], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.3 = private unnamed_addr constant [12 x i8] c"cfb_tab8_be\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 46, i32 18 }
@___asan_gen_.6 = private unnamed_addr constant [12 x i8] c"cfb_tab8_le\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 53, i32 18 }
@___asan_gen_.9 = private unnamed_addr constant [13 x i8] c"cfb_tab16_be\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 60, i32 18 }
@___asan_gen_.12 = private unnamed_addr constant [13 x i8] c"cfb_tab16_le\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 64, i32 18 }
@___asan_gen_.15 = private unnamed_addr constant [10 x i8] c"cfb_tab32\00", align 1
@___asan_gen_.16 = private constant [40 x i8] c"../drivers/video/fbdev/core/cfbimgblt.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 68, i32 18 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__ksymtab_cfb_imageblit, ptr @cfb_tab8_be, ptr @cfb_tab8_le, ptr @cfb_tab16_be, ptr @cfb_tab16_le, ptr @cfb_tab32], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfb_tab8_be to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfb_tab8_le to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfb_tab16_be to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfb_tab16_le to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfb_tab32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfb_imageblit(ptr noundef %p, ptr nocapture noundef readonly %image) #0 align 64 {
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
    i32 4, label %if.then18.if.then26_crit_edge215
  ]

if.then18.if.then26_crit_edge215:                 ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then26

if.then18.if.then26_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then26

if.then26:                                        ; preds = %if.then18.if.then26_crit_edge, %if.then18.if.then26_crit_edge215
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.067.i, i32 %xor22.i) #1, !srcloc !28
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
  %50 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %line_length, align 4
  %add.ptr.i = getelementptr i8, ptr %dst1.addr.071.i, i32 %51
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
  %52 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bits_per_pixel, align 4
  %54 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %line_length, align 4
  %sub.i = sub i32 32, %53
  %56 = ptrtoint ptr %width1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %width1, align 4
  %add.i113 = add i32 %57, 7
  %div122.i = lshr i32 %add.i113, 3
  %data.i114 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %58 = ptrtoint ptr %data.i114 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %53)
  %cmp.i.i = icmp ult i32 %53, 8
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.else50.fb_compute_bswapmask.exit.i_crit_edge

if.else50.fb_compute_bswapmask.exit.i_crit_edge:  ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #3
  br label %fb_compute_bswapmask.exit.i

land.lhs.true.i.i:                                ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #3
  %nonstd.i.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 12
  %60 = ptrtoint ptr %nonstd.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nonstd.i.i, align 4
  %and.i.i115 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i115)
  %tobool.not.i.i = icmp eq i32 %and.i.i115, 0
  %add.i.i = sub nuw nsw i32 8, %53
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 0, i32 %add.i.i
  br label %fb_compute_bswapmask.exit.i

fb_compute_bswapmask.exit.i:                      ; preds = %land.lhs.true.i.i, %if.else50.fb_compute_bswapmask.exit.i_crit_edge
  %bswapmask.0.i.i = phi i32 [ 0, %if.else50.fb_compute_bswapmask.exit.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %flags.i.i116 = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 2
  %62 = ptrtoint ptr %flags.i.i116 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i.i116, align 4
  %and.i125.i = and i32 %63, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125.i)
  %tobool.i.not.i117 = icmp eq i32 %and.i125.i, 0
  %spec.select.i118 = select i1 %tobool.i.not.i117, i32 0, i32 %sub.i
  %height.i119 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %64 = ptrtoint ptr %height.i119 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %height.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not183.i = icmp eq i32 %65, 0
  br i1 %tobool.not183.i, label %fb_compute_bswapmask.exit.i.cleanup_crit_edge, label %for.body.lr.ph.i

fb_compute_bswapmask.exit.i.cleanup_crit_edge:    ; preds = %fb_compute_bswapmask.exit.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %fb_compute_bswapmask.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bswapmask.0.i.i)
  %tobool.not.i129.i = icmp eq i32 %bswapmask.0.i.i, 0
  %neg18.i.i = xor i32 %bswapmask.0.i.i, -1
  br label %for.body.i120

for.body.i120:                                    ; preds = %if.end63.i.for.body.i120_crit_edge, %for.body.lr.ph.i
  %dec191.in.i = phi i32 [ %65, %for.body.lr.ph.i ], [ %dec191.i, %if.end63.i.for.body.i120_crit_edge ]
  %dst1.addr.0189.i = phi ptr [ %add.ptr, %for.body.lr.ph.i ], [ %dst1.addr.1.i, %if.end63.i.for.body.i120_crit_edge ]
  %src.0187.i = phi ptr [ %59, %for.body.lr.ph.i ], [ %add.ptr64.i, %if.end63.i.for.body.i120_crit_edge ]
  %dst2.0186.i = phi ptr [ %add.ptr, %for.body.lr.ph.i ], [ %dst2.1.i, %if.end63.i.for.body.i120_crit_edge ]
  %start_index.addr.0184.i = phi i32 [ %and, %for.body.lr.ph.i ], [ %start_index.addr.1.i, %if.end63.i.for.body.i120_crit_edge ]
  %dec191.i = add i32 %dec191.in.i, -1
  %66 = ptrtoint ptr %width1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %width1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start_index.addr.0184.i)
  %tobool11.not.i = icmp eq i32 %start_index.addr.0184.i, 0
  br i1 %tobool11.not.i, label %for.body.i120.if.end.i_crit_edge, label %if.then.i

for.body.i120.if.end.i_crit_edge:                 ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i120
  %68 = ptrtoint ptr %flags.i.i116 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags.i.i116, align 4
  %and.i.i.i = and i32 %69, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i129.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #3
  %shr.i.i = lshr i32 -1, %start_index.addr.0184.i
  %shl.i.i = shl nsw i32 -1, %start_index.addr.0184.i
  %cond.i.i = select i1 %tobool.i.not.i.i, i32 %shl.i.i, i32 %shr.i.i
  br label %fb_shifted_pixels_mask_u32.exit.i

if.else.i.i:                                      ; preds = %if.then.i
  %shl3.i.i = select i1 %tobool.i.not.i.i, i32 255, i32 -16777216
  %and.i130.i = and i32 %start_index.addr.0184.i, %bswapmask.0.i.i
  %shl6.i.i = shl i32 -16777216, %and.i130.i
  %shr9.i.i = lshr i32 255, %and.i130.i
  %cond11.i.i = select i1 %tobool.i.not.i.i, i32 %shr9.i.i, i32 %shl6.i.i
  %and12.i.i = and i32 %cond11.i.i, %shl3.i.i
  %and19.i.i = and i32 %start_index.addr.0184.i, %neg18.i.i
  br i1 %tobool.i.not.i.i, label %cond.false28.i.i, label %cond.true24.i.i

cond.true24.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #3
  %shr16.i.i = lshr i32 %and12.i.i, %and19.i.i
  %add.i131.i = add i32 %start_index.addr.0184.i, %bswapmask.0.i.i
  %and26.i.i = and i32 %add.i131.i, %neg18.i.i
  %shr27.i.i = lshr i32 -1, %and26.i.i
  br label %cond.end33.i.i

cond.false28.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #3
  %shl20.i.i = shl i32 %and12.i.i, %and19.i.i
  %add29.i.i = add i32 %start_index.addr.0184.i, %bswapmask.0.i.i
  %and31.i.i = and i32 %add29.i.i, %neg18.i.i
  %shl32.i.i = shl nsw i32 -1, %and31.i.i
  br label %cond.end33.i.i

cond.end33.i.i:                                   ; preds = %cond.false28.i.i, %cond.true24.i.i
  %cond2273.i.i = phi i32 [ %shr16.i.i, %cond.true24.i.i ], [ %shl20.i.i, %cond.false28.i.i ]
  %cond34.i.i = phi i32 [ %shr27.i.i, %cond.true24.i.i ], [ %shl32.i.i, %cond.false28.i.i ]
  %or.i.i = or i32 %cond34.i.i, %cond2273.i.i
  br label %fb_shifted_pixels_mask_u32.exit.i

fb_shifted_pixels_mask_u32.exit.i:                ; preds = %cond.end33.i.i, %if.then.i.i
  %mask.0.i.i = phi i32 [ %or.i.i, %cond.end33.i.i ], [ %cond.i.i, %if.then.i.i ]
  %neg.i = xor i32 %mask.0.i.i, -1
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst1.addr.0189.i) #1, !srcloc !29
  %and.i121 = and i32 %70, %neg.i
  br label %if.end.i

if.end.i:                                         ; preds = %fb_shifted_pixels_mask_u32.exit.i, %for.body.i120.if.end.i_crit_edge
  %val.0.i = phi i32 [ %and.i121, %fb_shifted_pixels_mask_u32.exit.i ], [ 0, %for.body.i120.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool15.not172.i = icmp eq i32 %67, 0
  br i1 %tobool15.not172.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end.i

while.body.i:                                     ; preds = %if.end50.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %dec14179.in.i = phi i32 [ %dec14179.i, %if.end50.i.while.body.i_crit_edge ], [ %67, %if.end.i.while.body.i_crit_edge ]
  %l.0178.i = phi i32 [ %spec.select124.i, %if.end50.i.while.body.i_crit_edge ], [ 8, %if.end.i.while.body.i_crit_edge ]
  %s.0177.i = phi ptr [ %spec.select123.i, %if.end50.i.while.body.i_crit_edge ], [ %src.0187.i, %if.end.i.while.body.i_crit_edge ]
  %val.1176.i = phi i32 [ %val.2.i, %if.end50.i.while.body.i_crit_edge ], [ %val.0.i, %if.end.i.while.body.i_crit_edge ]
  %dst.0175.i = phi ptr [ %dst.1.i, %if.end50.i.while.body.i_crit_edge ], [ %dst1.addr.0189.i, %if.end.i.while.body.i_crit_edge ]
  %shift.1173.i = phi i32 [ %and52.i, %if.end50.i.while.body.i_crit_edge ], [ %start_index.addr.0184.i, %if.end.i.while.body.i_crit_edge ]
  %dec14179.i = add i32 %dec14179.in.i, -1
  %dec16.i = add i32 %l.0178.i, -1
  %71 = ptrtoint ptr %s.0177.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %s.0177.i, align 1
  %conv.i122 = zext i8 %72 to i32
  %shl17.i = shl nuw i32 1, %dec16.i
  %and18.i = and i32 %shl17.i, %conv.i122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  %shl9.shl.v.i = select i1 %tobool19.not.i, i32 %bgcolor.0, i32 %fgcolor.0
  %shl9.shl.i = shl i32 %shl9.shl.v.i, %spec.select.i118
  %73 = ptrtoint ptr %flags.i.i116 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags.i.i116, align 4
  %and.i133.i = and i32 %74, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i133.i)
  %tobool.i134.not.i = icmp eq i32 %and.i133.i, 0
  %xor.i123 = xor i32 %shift.1173.i, %bswapmask.0.i.i
  %shr.i124 = lshr i32 %shl9.shl.i, %xor.i123
  %shl29.i = shl i32 %shl9.shl.i, %xor.i123
  %cond31.i = select i1 %tobool.i134.not.i, i32 %shl29.i, i32 %shr.i124
  %or.i125 = or i32 %cond31.i, %val.1176.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shift.1173.i, i32 %sub.i)
  %cmp.not.i = icmp ult i32 %shift.1173.i, %sub.i
  br i1 %cmp.not.i, label %while.body.i.if.end50.i_crit_edge, label %if.then33.i

while.body.i.if.end50.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end50.i

if.then33.i:                                      ; preds = %while.body.i
  %incdec.ptr.i126 = getelementptr i32, ptr %dst.0175.i, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.0175.i, i32 %or.i125) #1, !srcloc !28
  call void @__sanitizer_cov_trace_cmp4(i32 %shift.1173.i, i32 %sub.i)
  %cmp34.i = icmp eq i32 %shift.1173.i, %sub.i
  br i1 %cmp34.i, label %if.then33.i.if.end50.i_crit_edge, label %cond.false37.i

if.then33.i.if.end50.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end50.i

cond.false37.i:                                   ; preds = %if.then33.i
  %75 = ptrtoint ptr %flags.i.i116 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags.i.i116, align 4
  %and.i136.i = and i32 %76, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i136.i)
  %tobool.i137.not.i = icmp eq i32 %and.i136.i, 0
  %sub44.i = sub i32 32, %shift.1173.i
  br i1 %tobool.i137.not.i, label %cond.false43.i, label %cond.true40.i

cond.true40.i:                                    ; preds = %cond.false37.i
  call void @__sanitizer_cov_trace_pc() #3
  %shl42.i = shl i32 %shl9.shl.i, %sub44.i
  br label %if.end50.i

cond.false43.i:                                   ; preds = %cond.false37.i
  call void @__sanitizer_cov_trace_pc() #3
  %shr45.i = lshr i32 %shl9.shl.i, %sub44.i
  br label %if.end50.i

if.end50.i:                                       ; preds = %cond.false43.i, %cond.true40.i, %if.then33.i.if.end50.i_crit_edge, %while.body.i.if.end50.i_crit_edge
  %dst.1.i = phi ptr [ %dst.0175.i, %while.body.i.if.end50.i_crit_edge ], [ %incdec.ptr.i126, %cond.true40.i ], [ %incdec.ptr.i126, %cond.false43.i ], [ %incdec.ptr.i126, %if.then33.i.if.end50.i_crit_edge ]
  %val.2.i = phi i32 [ %or.i125, %while.body.i.if.end50.i_crit_edge ], [ %shl42.i, %cond.true40.i ], [ %shr45.i, %cond.false43.i ], [ 0, %if.then33.i.if.end50.i_crit_edge ]
  %add51.i = add i32 %shift.1173.i, %53
  %and52.i = and i32 %add51.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec16.i)
  %tobool53.not.i = icmp eq i32 %dec16.i, 0
  %spec.select123.idx.i = zext i1 %tobool53.not.i to i32
  %spec.select123.i = getelementptr i8, ptr %s.0177.i, i32 %spec.select123.idx.i
  %spec.select124.i = select i1 %tobool53.not.i, i32 8, i32 %dec16.i
  %tobool15.not.i = icmp eq i32 %dec14179.i, 0
  br i1 %tobool15.not.i, label %if.end50.i.while.end.i_crit_edge, label %if.end50.i.while.body.i_crit_edge

if.end50.i.while.body.i_crit_edge:                ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body.i

if.end50.i.while.end.i_crit_edge:                 ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end.i

while.end.i:                                      ; preds = %if.end50.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %shift.1.lcssa.i = phi i32 [ %start_index.addr.0184.i, %if.end.i.while.end.i_crit_edge ], [ %and52.i, %if.end50.i.while.end.i_crit_edge ]
  %dst.0.lcssa.i = phi ptr [ %dst1.addr.0189.i, %if.end.i.while.end.i_crit_edge ], [ %dst.1.i, %if.end50.i.while.end.i_crit_edge ]
  %val.1.lcssa.i = phi i32 [ %val.0.i, %if.end.i.while.end.i_crit_edge ], [ %val.2.i, %if.end50.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shift.1.lcssa.i)
  %tobool57.not.i = icmp eq i32 %shift.1.lcssa.i, 0
  br i1 %tobool57.not.i, label %while.end.i.if.end63.i_crit_edge, label %if.then58.i

while.end.i.if.end63.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end63.i

if.then58.i:                                      ; preds = %while.end.i
  %77 = ptrtoint ptr %flags.i.i116 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags.i.i116, align 4
  %and.i.i140.i = and i32 %78, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i140.i)
  %tobool.i.not.i141.i = icmp eq i32 %and.i.i140.i, 0
  br i1 %tobool.not.i129.i, label %if.then.i145.i, label %if.else.i154.i

if.then.i145.i:                                   ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #3
  %shr.i142.i = lshr i32 -1, %shift.1.lcssa.i
  %shl.i143.i = shl nsw i32 -1, %shift.1.lcssa.i
  %cond.i144.i = select i1 %tobool.i.not.i141.i, i32 %shl.i143.i, i32 %shr.i142.i
  br label %fb_shifted_pixels_mask_u32.exit170.i

if.else.i154.i:                                   ; preds = %if.then58.i
  %shl3.i146.i = select i1 %tobool.i.not.i141.i, i32 255, i32 -16777216
  %and.i147.i = and i32 %shift.1.lcssa.i, %bswapmask.0.i.i
  %shl6.i148.i = shl i32 -16777216, %and.i147.i
  %shr9.i149.i = lshr i32 255, %and.i147.i
  %cond11.i150.i = select i1 %tobool.i.not.i141.i, i32 %shr9.i149.i, i32 %shl6.i148.i
  %and12.i151.i = and i32 %cond11.i150.i, %shl3.i146.i
  %and19.i153.i = and i32 %shift.1.lcssa.i, %neg18.i.i
  br i1 %tobool.i.not.i141.i, label %cond.false28.i164.i, label %cond.true24.i159.i

cond.true24.i159.i:                               ; preds = %if.else.i154.i
  call void @__sanitizer_cov_trace_pc() #3
  %shr16.i155.i = lshr i32 %and12.i151.i, %and19.i153.i
  %add.i156.i = add i32 %shift.1.lcssa.i, %bswapmask.0.i.i
  %and26.i157.i = and i32 %add.i156.i, %neg18.i.i
  %shr27.i158.i = lshr i32 -1, %and26.i157.i
  br label %cond.end33.i168.i

cond.false28.i164.i:                              ; preds = %if.else.i154.i
  call void @__sanitizer_cov_trace_pc() #3
  %shl20.i160.i = shl i32 %and12.i151.i, %and19.i153.i
  %add29.i161.i = add i32 %shift.1.lcssa.i, %bswapmask.0.i.i
  %and31.i162.i = and i32 %add29.i161.i, %neg18.i.i
  %shl32.i163.i = shl nsw i32 -1, %and31.i162.i
  br label %cond.end33.i168.i

cond.end33.i168.i:                                ; preds = %cond.false28.i164.i, %cond.true24.i159.i
  %cond2273.i165.i = phi i32 [ %shr16.i155.i, %cond.true24.i159.i ], [ %shl20.i160.i, %cond.false28.i164.i ]
  %cond34.i166.i = phi i32 [ %shr27.i158.i, %cond.true24.i159.i ], [ %shl32.i163.i, %cond.false28.i164.i ]
  %or.i167.i = or i32 %cond34.i166.i, %cond2273.i165.i
  br label %fb_shifted_pixels_mask_u32.exit170.i

fb_shifted_pixels_mask_u32.exit170.i:             ; preds = %cond.end33.i168.i, %if.then.i145.i
  %mask.0.i169.i = phi i32 [ %or.i167.i, %cond.end33.i168.i ], [ %cond.i144.i, %if.then.i145.i ]
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.0.lcssa.i) #1, !srcloc !29
  %and61.i = and i32 %79, %mask.0.i169.i
  %or62.i = or i32 %and61.i, %val.1.lcssa.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.0.lcssa.i, i32 %or62.i) #1, !srcloc !28
  br label %if.end63.i

if.end63.i:                                       ; preds = %fb_shifted_pixels_mask_u32.exit170.i, %while.end.i.if.end63.i_crit_edge
  %add.ptr.i127 = getelementptr i8, ptr %dst1.addr.0189.i, i32 %55
  %add.ptr64.i = getelementptr i8, ptr %src.0187.i, i32 %div122.i
  %add.ptr67.i = getelementptr i32, ptr %dst2.0186.i, i32 %55
  %80 = ptrtoint ptr %add.ptr67.i to i32
  %and68.i = and i32 %80, -4
  %81 = inttoptr i32 %and68.i to ptr
  %add69.i = add i32 %start_index.addr.0184.i, %and8
  %and70.i = and i32 %add69.i, 31
  %start_index.addr.1.i = select i1 %tobool36.not, i32 %start_index.addr.0184.i, i32 %and70.i
  %dst2.1.i = select i1 %tobool36.not, ptr %dst2.0186.i, ptr %add.ptr67.i
  %dst1.addr.1.i = select i1 %tobool36.not, ptr %add.ptr.i127, ptr %81
  %tobool.not.i128 = icmp eq i32 %dec191.i, 0
  br i1 %tobool.not.i128, label %if.end63.i.cleanup_crit_edge, label %if.end63.i.for.body.i120_crit_edge

if.end63.i.for.body.i120_crit_edge:               ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body.i120

if.end63.i.cleanup_crit_edge:                     ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.else52:                                        ; preds = %if.end15
  %82 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bits_per_pixel, align 4
  %sub.i131 = sub i32 32, %83
  %pseudo_palette.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 27
  %84 = ptrtoint ptr %pseudo_palette.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pseudo_palette.i, align 4
  %data.i132 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %86 = ptrtoint ptr %data.i132 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %data.i132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %83)
  %cmp.i.i133 = icmp ult i32 %83, 8
  br i1 %cmp.i.i133, label %land.lhs.true.i.i139, label %if.else52.fb_compute_bswapmask.exit.i142_crit_edge

if.else52.fb_compute_bswapmask.exit.i142_crit_edge: ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #3
  br label %fb_compute_bswapmask.exit.i142

land.lhs.true.i.i139:                             ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #3
  %nonstd.i.i134 = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 6, i32 12
  %88 = ptrtoint ptr %nonstd.i.i134 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nonstd.i.i134, align 4
  %and.i.i135 = and i32 %89, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i135)
  %tobool.not.i.i136 = icmp eq i32 %and.i.i135, 0
  %add.i.i137 = sub nuw nsw i32 8, %83
  %spec.select.i.i138 = select i1 %tobool.not.i.i136, i32 0, i32 %add.i.i137
  br label %fb_compute_bswapmask.exit.i142

fb_compute_bswapmask.exit.i142:                   ; preds = %land.lhs.true.i.i139, %if.else52.fb_compute_bswapmask.exit.i142_crit_edge
  %bswapmask.0.i.i140 = phi i32 [ 0, %if.else52.fb_compute_bswapmask.exit.i142_crit_edge ], [ %spec.select.i.i138, %land.lhs.true.i.i139 ]
  %height.i141 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %90 = ptrtoint ptr %height.i141 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %height.i141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not164.i = icmp eq i32 %91, 0
  br i1 %tobool.not164.i, label %fb_compute_bswapmask.exit.i142.cleanup_crit_edge, label %for.body.lr.ph.i146

fb_compute_bswapmask.exit.i142.cleanup_crit_edge: ; preds = %fb_compute_bswapmask.exit.i142
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

for.body.lr.ph.i146:                              ; preds = %fb_compute_bswapmask.exit.i142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bswapmask.0.i.i140)
  %tobool.not.i108.i = icmp eq i32 %bswapmask.0.i.i140, 0
  %flags.i.i.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 2
  %neg18.i.i144 = xor i32 %bswapmask.0.i.i140, -1
  %visual.i = getelementptr inbounds %struct.fb_info, ptr %p, i32 0, i32 7, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul9)
  %tobool52.not.i = icmp eq i32 %mul9, 0
  br label %for.body.i147

for.body.i147:                                    ; preds = %if.end50.i203.for.body.i147_crit_edge, %for.body.lr.ph.i146
  %dec171.in.i = phi i32 [ %91, %for.body.lr.ph.i146 ], [ %dec171.i, %if.end50.i203.for.body.i147_crit_edge ]
  %dst1.addr.0169.i = phi ptr [ %add.ptr, %for.body.lr.ph.i146 ], [ %dst1.addr.1.i201, %if.end50.i203.for.body.i147_crit_edge ]
  %start_index.addr.0167.i = phi i32 [ %and, %for.body.lr.ph.i146 ], [ %start_index.addr.1.i200, %if.end50.i203.for.body.i147_crit_edge ]
  %src.0166.i = phi ptr [ %87, %for.body.lr.ph.i146 ], [ %src.1.lcssa.i, %if.end50.i203.for.body.i147_crit_edge ]
  %dst2.0165.i = phi ptr [ %add.ptr, %for.body.lr.ph.i146 ], [ %dst2.1.i199, %if.end50.i203.for.body.i147_crit_edge ]
  %dec171.i = add i32 %dec171.in.i, -1
  %92 = ptrtoint ptr %width1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %width1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start_index.addr.0167.i)
  %tobool1.not.i = icmp eq i32 %start_index.addr.0167.i, 0
  br i1 %tobool1.not.i, label %for.body.i147.if.end.i180_crit_edge, label %if.then.i150

for.body.i147.if.end.i180_crit_edge:              ; preds = %for.body.i147
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end.i180

if.then.i150:                                     ; preds = %for.body.i147
  %94 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i148 = and i32 %95, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i148)
  %tobool.i.not.i.i149 = icmp eq i32 %and.i.i.i148, 0
  br i1 %tobool.not.i108.i, label %if.then.i.i154, label %if.else.i.i161

if.then.i.i154:                                   ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #3
  %shr.i.i151 = lshr i32 -1, %start_index.addr.0167.i
  %shl.i.i152 = shl nsw i32 -1, %start_index.addr.0167.i
  %cond.i.i153 = select i1 %tobool.i.not.i.i149, i32 %shl.i.i152, i32 %shr.i.i151
  br label %fb_shifted_pixels_mask_u32.exit.i178

if.else.i.i161:                                   ; preds = %if.then.i150
  %shl3.i.i155 = select i1 %tobool.i.not.i.i149, i32 255, i32 -16777216
  %and.i109.i = and i32 %start_index.addr.0167.i, %bswapmask.0.i.i140
  %shl6.i.i156 = shl i32 -16777216, %and.i109.i
  %shr9.i.i157 = lshr i32 255, %and.i109.i
  %cond11.i.i158 = select i1 %tobool.i.not.i.i149, i32 %shr9.i.i157, i32 %shl6.i.i156
  %and12.i.i159 = and i32 %cond11.i.i158, %shl3.i.i155
  %and19.i.i160 = and i32 %start_index.addr.0167.i, %neg18.i.i144
  br i1 %tobool.i.not.i.i149, label %cond.false28.i.i170, label %cond.true24.i.i165

cond.true24.i.i165:                               ; preds = %if.else.i.i161
  call void @__sanitizer_cov_trace_pc() #3
  %shr16.i.i162 = lshr i32 %and12.i.i159, %and19.i.i160
  %add.i110.i = add i32 %start_index.addr.0167.i, %bswapmask.0.i.i140
  %and26.i.i163 = and i32 %add.i110.i, %neg18.i.i144
  %shr27.i.i164 = lshr i32 -1, %and26.i.i163
  br label %cond.end33.i.i174

cond.false28.i.i170:                              ; preds = %if.else.i.i161
  call void @__sanitizer_cov_trace_pc() #3
  %shl20.i.i166 = shl i32 %and12.i.i159, %and19.i.i160
  %add29.i.i167 = add i32 %start_index.addr.0167.i, %bswapmask.0.i.i140
  %and31.i.i168 = and i32 %add29.i.i167, %neg18.i.i144
  %shl32.i.i169 = shl nsw i32 -1, %and31.i.i168
  br label %cond.end33.i.i174

cond.end33.i.i174:                                ; preds = %cond.false28.i.i170, %cond.true24.i.i165
  %cond2273.i.i171 = phi i32 [ %shr16.i.i162, %cond.true24.i.i165 ], [ %shl20.i.i166, %cond.false28.i.i170 ]
  %cond34.i.i172 = phi i32 [ %shr27.i.i164, %cond.true24.i.i165 ], [ %shl32.i.i169, %cond.false28.i.i170 ]
  %or.i.i173 = or i32 %cond34.i.i172, %cond2273.i.i171
  br label %fb_shifted_pixels_mask_u32.exit.i178

fb_shifted_pixels_mask_u32.exit.i178:             ; preds = %cond.end33.i.i174, %if.then.i.i154
  %mask.0.i.i175 = phi i32 [ %or.i.i173, %cond.end33.i.i174 ], [ %cond.i.i153, %if.then.i.i154 ]
  %neg.i176 = xor i32 %mask.0.i.i175, -1
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst1.addr.0169.i) #1, !srcloc !29
  %and.i177 = and i32 %96, %neg.i176
  br label %if.end.i180

if.end.i180:                                      ; preds = %fb_shifted_pixels_mask_u32.exit.i178, %for.body.i147.if.end.i180_crit_edge
  %val.0.i179 = phi i32 [ %and.i177, %fb_shifted_pixels_mask_u32.exit.i178 ], [ 0, %for.body.i147.if.end.i180_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool5.not152.i = icmp eq i32 %93, 0
  br i1 %tobool5.not152.i, label %if.end.i180.while.end.i197_crit_edge, label %if.end.i180.while.body.i181_crit_edge

if.end.i180.while.body.i181_crit_edge:            ; preds = %if.end.i180
  br label %while.body.i181

if.end.i180.while.end.i197_crit_edge:             ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end.i197

while.body.i181:                                  ; preds = %if.end41.i.while.body.i181_crit_edge, %if.end.i180.while.body.i181_crit_edge
  %dec4159.in.i = phi i32 [ %dec4159.i, %if.end41.i.while.body.i181_crit_edge ], [ %93, %if.end.i180.while.body.i181_crit_edge ]
  %src.1157.i = phi ptr [ %incdec.ptr43.i, %if.end41.i.while.body.i181_crit_edge ], [ %src.0166.i, %if.end.i180.while.body.i181_crit_edge ]
  %shift.1155.i = phi i32 [ %and42.i, %if.end41.i.while.body.i181_crit_edge ], [ %start_index.addr.0167.i, %if.end.i180.while.body.i181_crit_edge ]
  %val.1154.i = phi i32 [ %val.2.i192, %if.end41.i.while.body.i181_crit_edge ], [ %val.0.i179, %if.end.i180.while.body.i181_crit_edge ]
  %dst.0153.i = phi ptr [ %dst.1.i191, %if.end41.i.while.body.i181_crit_edge ], [ %dst1.addr.0169.i, %if.end.i180.while.body.i181_crit_edge ]
  %dec4159.i = add i32 %dec4159.in.i, -1
  %97 = ptrtoint ptr %visual.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %visual.i, align 4
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %98, label %if.else.i [
    i32 2, label %while.body.i181.if.then9.i_crit_edge
    i32 4, label %while.body.i181.if.then9.i_crit_edge216
  ]

while.body.i181.if.then9.i_crit_edge216:          ; preds = %while.body.i181
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then9.i

while.body.i181.if.then9.i_crit_edge:             ; preds = %while.body.i181
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then9.i

if.then9.i:                                       ; preds = %while.body.i181.if.then9.i_crit_edge, %while.body.i181.if.then9.i_crit_edge216
  %100 = ptrtoint ptr %src.1157.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %src.1157.i, align 1
  %idxprom.i = zext i8 %101 to i32
  %arrayidx.i182 = getelementptr i32, ptr %85, i32 %idxprom.i
  %102 = ptrtoint ptr %arrayidx.i182 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.i182, align 4
  br label %if.end10.i

if.else.i:                                        ; preds = %while.body.i181
  call void @__sanitizer_cov_trace_pc() #3
  %104 = ptrtoint ptr %src.1157.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %src.1157.i, align 1
  %conv.i183 = zext i8 %105 to i32
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.then9.i
  %color.0.i = phi i32 [ %103, %if.then9.i ], [ %conv.i183, %if.else.i ]
  %106 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flags.i.i.i, align 4
  %and.i111.i = and i32 %107, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i111.i)
  %tobool.i.not.i184 = icmp eq i32 %and.i111.i, 0
  %spec.select.i185 = select i1 %tobool.i.not.i184, i32 0, i32 %sub.i131
  %shl.i186 = shl i32 %color.0.i, %spec.select.i185
  %xor.i187 = xor i32 %shift.1155.i, %bswapmask.0.i.i140
  %shr.i188 = lshr i32 %shl.i186, %xor.i187
  %shl19.i = shl i32 %shl.i186, %xor.i187
  %cond21.i = select i1 %tobool.i.not.i184, i32 %shl19.i, i32 %shr.i188
  %or.i189 = or i32 %cond21.i, %val.1154.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shift.1155.i, i32 %sub.i131)
  %cmp22.not.i = icmp ult i32 %shift.1155.i, %sub.i131
  br i1 %cmp22.not.i, label %if.end10.i.if.end41.i_crit_edge, label %if.then24.i

if.end10.i.if.end41.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end41.i

if.then24.i:                                      ; preds = %if.end10.i
  %incdec.ptr.i190 = getelementptr i32, ptr %dst.0153.i, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.0153.i, i32 %or.i189) #1, !srcloc !28
  call void @__sanitizer_cov_trace_cmp4(i32 %shift.1155.i, i32 %sub.i131)
  %cmp25.i = icmp eq i32 %shift.1155.i, %sub.i131
  br i1 %cmp25.i, label %if.then24.i.if.end41.i_crit_edge, label %cond.false28.i

if.then24.i.if.end41.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end41.i

cond.false28.i:                                   ; preds = %if.then24.i
  %108 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flags.i.i.i, align 4
  %and.i116.i = and i32 %109, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116.i)
  %tobool.i117.not.i = icmp eq i32 %and.i116.i, 0
  %sub35.i = sub i32 32, %shift.1155.i
  br i1 %tobool.i117.not.i, label %cond.false34.i, label %cond.true31.i

cond.true31.i:                                    ; preds = %cond.false28.i
  call void @__sanitizer_cov_trace_pc() #3
  %shl33.i = shl i32 %shl.i186, %sub35.i
  br label %if.end41.i

cond.false34.i:                                   ; preds = %cond.false28.i
  call void @__sanitizer_cov_trace_pc() #3
  %shr36.i = lshr i32 %shl.i186, %sub35.i
  br label %if.end41.i

if.end41.i:                                       ; preds = %cond.false34.i, %cond.true31.i, %if.then24.i.if.end41.i_crit_edge, %if.end10.i.if.end41.i_crit_edge
  %dst.1.i191 = phi ptr [ %dst.0153.i, %if.end10.i.if.end41.i_crit_edge ], [ %incdec.ptr.i190, %cond.true31.i ], [ %incdec.ptr.i190, %cond.false34.i ], [ %incdec.ptr.i190, %if.then24.i.if.end41.i_crit_edge ]
  %val.2.i192 = phi i32 [ %or.i189, %if.end10.i.if.end41.i_crit_edge ], [ %shl33.i, %cond.true31.i ], [ %shr36.i, %cond.false34.i ], [ 0, %if.then24.i.if.end41.i_crit_edge ]
  %add.i193 = add i32 %shift.1155.i, %83
  %and42.i = and i32 %add.i193, 31
  %incdec.ptr43.i = getelementptr i8, ptr %src.1157.i, i32 1
  %tobool5.not.i = icmp eq i32 %dec4159.i, 0
  br i1 %tobool5.not.i, label %if.end41.i.while.end.i197_crit_edge, label %if.end41.i.while.body.i181_crit_edge

if.end41.i.while.body.i181_crit_edge:             ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body.i181

if.end41.i.while.end.i197_crit_edge:              ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.end.i197

while.end.i197:                                   ; preds = %if.end41.i.while.end.i197_crit_edge, %if.end.i180.while.end.i197_crit_edge
  %dst.0.lcssa.i194 = phi ptr [ %dst1.addr.0169.i, %if.end.i180.while.end.i197_crit_edge ], [ %dst.1.i191, %if.end41.i.while.end.i197_crit_edge ]
  %val.1.lcssa.i195 = phi i32 [ %val.0.i179, %if.end.i180.while.end.i197_crit_edge ], [ %val.2.i192, %if.end41.i.while.end.i197_crit_edge ]
  %shift.1.lcssa.i196 = phi i32 [ %start_index.addr.0167.i, %if.end.i180.while.end.i197_crit_edge ], [ %and42.i, %if.end41.i.while.end.i197_crit_edge ]
  %src.1.lcssa.i = phi ptr [ %src.0166.i, %if.end.i180.while.end.i197_crit_edge ], [ %incdec.ptr43.i, %if.end41.i.while.end.i197_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shift.1.lcssa.i196)
  %tobool44.not.i = icmp eq i32 %shift.1.lcssa.i196, 0
  br i1 %tobool44.not.i, label %while.end.i197.if.end50.i203_crit_edge, label %if.then45.i

while.end.i197.if.end50.i203_crit_edge:           ; preds = %while.end.i197
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end50.i203

if.then45.i:                                      ; preds = %while.end.i197
  %110 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i120.i = and i32 %111, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i120.i)
  %tobool.i.not.i121.i = icmp eq i32 %and.i.i120.i, 0
  br i1 %tobool.not.i108.i, label %if.then.i125.i, label %if.else.i134.i

if.then.i125.i:                                   ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #3
  %shr.i122.i = lshr i32 -1, %shift.1.lcssa.i196
  %shl.i123.i = shl nsw i32 -1, %shift.1.lcssa.i196
  %cond.i124.i = select i1 %tobool.i.not.i121.i, i32 %shl.i123.i, i32 %shr.i122.i
  br label %fb_shifted_pixels_mask_u32.exit150.i

if.else.i134.i:                                   ; preds = %if.then45.i
  %shl3.i126.i = select i1 %tobool.i.not.i121.i, i32 255, i32 -16777216
  %and.i127.i = and i32 %shift.1.lcssa.i196, %bswapmask.0.i.i140
  %shl6.i128.i = shl i32 -16777216, %and.i127.i
  %shr9.i129.i = lshr i32 255, %and.i127.i
  %cond11.i130.i = select i1 %tobool.i.not.i121.i, i32 %shr9.i129.i, i32 %shl6.i128.i
  %and12.i131.i = and i32 %cond11.i130.i, %shl3.i126.i
  %and19.i133.i = and i32 %shift.1.lcssa.i196, %neg18.i.i144
  br i1 %tobool.i.not.i121.i, label %cond.false28.i144.i, label %cond.true24.i139.i

cond.true24.i139.i:                               ; preds = %if.else.i134.i
  call void @__sanitizer_cov_trace_pc() #3
  %shr16.i135.i = lshr i32 %and12.i131.i, %and19.i133.i
  %add.i136.i = add i32 %shift.1.lcssa.i196, %bswapmask.0.i.i140
  %and26.i137.i = and i32 %add.i136.i, %neg18.i.i144
  %shr27.i138.i = lshr i32 -1, %and26.i137.i
  br label %cond.end33.i148.i

cond.false28.i144.i:                              ; preds = %if.else.i134.i
  call void @__sanitizer_cov_trace_pc() #3
  %shl20.i140.i = shl i32 %and12.i131.i, %and19.i133.i
  %add29.i141.i = add i32 %shift.1.lcssa.i196, %bswapmask.0.i.i140
  %and31.i142.i = and i32 %add29.i141.i, %neg18.i.i144
  %shl32.i143.i = shl nsw i32 -1, %and31.i142.i
  br label %cond.end33.i148.i

cond.end33.i148.i:                                ; preds = %cond.false28.i144.i, %cond.true24.i139.i
  %cond2273.i145.i = phi i32 [ %shr16.i135.i, %cond.true24.i139.i ], [ %shl20.i140.i, %cond.false28.i144.i ]
  %cond34.i146.i = phi i32 [ %shr27.i138.i, %cond.true24.i139.i ], [ %shl32.i143.i, %cond.false28.i144.i ]
  %or.i147.i = or i32 %cond34.i146.i, %cond2273.i145.i
  br label %fb_shifted_pixels_mask_u32.exit150.i

fb_shifted_pixels_mask_u32.exit150.i:             ; preds = %cond.end33.i148.i, %if.then.i125.i
  %mask.0.i149.i = phi i32 [ %or.i147.i, %cond.end33.i148.i ], [ %cond.i124.i, %if.then.i125.i ]
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dst.0.lcssa.i194) #1, !srcloc !29
  %and48.i = and i32 %112, %mask.0.i149.i
  %or49.i = or i32 %and48.i, %val.1.lcssa.i195
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.0.lcssa.i194, i32 %or49.i) #1, !srcloc !28
  br label %if.end50.i203

if.end50.i203:                                    ; preds = %fb_shifted_pixels_mask_u32.exit150.i, %while.end.i197.if.end50.i203_crit_edge
  %113 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %line_length, align 4
  %add.ptr.i198 = getelementptr i8, ptr %dst1.addr.0169.i, i32 %114
  %add.ptr56.i = getelementptr i32, ptr %dst2.0165.i, i32 %114
  %115 = ptrtoint ptr %add.ptr56.i to i32
  %and57.i = and i32 %115, -4
  %116 = inttoptr i32 %and57.i to ptr
  %add58.i = add i32 %start_index.addr.0167.i, %and8
  %and59.i = and i32 %add58.i, 31
  %dst2.1.i199 = select i1 %tobool52.not.i, ptr %dst2.0165.i, ptr %add.ptr56.i
  %start_index.addr.1.i200 = select i1 %tobool52.not.i, i32 %start_index.addr.0167.i, i32 %and59.i
  %dst1.addr.1.i201 = select i1 %tobool52.not.i, ptr %add.ptr.i198, ptr %116
  %tobool.not.i202 = icmp eq i32 %dec171.i, 0
  br i1 %tobool.not.i202, label %if.end50.i203.cleanup_crit_edge, label %if.end50.i203.for.body.i147_crit_edge

if.end50.i203.for.body.i147_crit_edge:            ; preds = %if.end50.i203
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body.i147

if.end50.i203.cleanup_crit_edge:                  ; preds = %if.end50.i203
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

cleanup:                                          ; preds = %if.end50.i203.cleanup_crit_edge, %fb_compute_bswapmask.exit.i142.cleanup_crit_edge, %if.end63.i.cleanup_crit_edge, %fb_compute_bswapmask.exit.i.cleanup_crit_edge, %for.end25.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
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

!0 = !{ptr @__ksymtab_cfb_imageblit, !1, !"__ksymtab_cfb_imageblit", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/core/cfbimgblt.c", i32 308, i32 1}
!2 = !{ptr @__UNIQUE_ID_author301, !3, !"__UNIQUE_ID_author301", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/core/cfbimgblt.c", i32 310, i32 1}
!4 = !{ptr @__UNIQUE_ID_description302, !5, !"__UNIQUE_ID_description302", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/core/cfbimgblt.c", i32 311, i32 1}
!6 = !{ptr @__UNIQUE_ID_file303, !7, !"__UNIQUE_ID_file303", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/core/cfbimgblt.c", i32 312, i32 1}
!8 = !{ptr @__UNIQUE_ID_license304, !7, !"__UNIQUE_ID_license304", i1 false, i1 false}
!9 = !{ptr @cfb_tab8_be, !10, !"cfb_tab8_be", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/core/cfbimgblt.c", i32 46, i32 18}
!11 = !{ptr @cfb_tab8_le, !12, !"cfb_tab8_le", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/core/cfbimgblt.c", i32 53, i32 18}
!13 = !{ptr @cfb_tab16_be, !14, !"cfb_tab16_be", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/core/cfbimgblt.c", i32 60, i32 18}
!15 = !{ptr @cfb_tab16_le, !16, !"cfb_tab16_le", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/core/cfbimgblt.c", i32 64, i32 18}
!17 = !{ptr @cfb_tab32, !18, !"cfb_tab32", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/core/cfbimgblt.c", i32 68, i32 18}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 4721147}
!29 = !{i64 4721565}
