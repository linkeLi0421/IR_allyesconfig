; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/mb862xx/mb862xxfb_accel.c_pt.bc'
source_filename = "../drivers/video/fbdev/mb862xx/mb862xxfb_accel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.mb862xxfb_par = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, %struct.mb862xx_l1_cfg, i32, [16 x i32] }
%struct.mb862xx_l1_cfg = type { i16, i16, i16, i16, i16, i16, i16, i16, i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }

@__UNIQUE_ID_file313 = internal constant [53 x i8] c"mb862xxfb.file=drivers/video/fbdev/mb862xx/mb862xxfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license314 = internal constant [25 x i8] c"mb862xxfb.license=GPL v2\00", section ".modinfo", align 1
@mb862xxfb_write_fifo.free = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 8, i64 16]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.4 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@___asan_gen_.5 = private constant [49 x i8] c"../drivers/video/fbdev/mb862xx/mb862xxfb_accel.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 28, i32 13 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_file313, ptr @__UNIQUE_ID_license314, ptr @mb862xxfb_write_fifo.free], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb862xxfb_write_fifo.free to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mb862xxfb_init_accel(ptr nocapture noundef %info, ptr nocapture noundef writeonly %fbops, i32 noundef %xres) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp = icmp eq i32 %3, 32
  br i1 %cmp, label %entry.do.body5_crit_edge, label %do.body

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %disp = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disp, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #7, !srcloc !15
  br label %do.body5

do.body5:                                         ; preds = %do.body, %entry.do.body5_crit_edge
  %mb86290fb_fillrect.sink = phi ptr [ @mb86290fb_fillrect, %do.body ], [ @cfb_fillrect, %entry.do.body5_crit_edge ]
  %mb86290fb_copyarea.sink = phi ptr [ @mb86290fb_copyarea, %do.body ], [ @cfb_copyarea, %entry.do.body5_crit_edge ]
  %mb86290fb_imageblit.sink = phi ptr [ @mb86290fb_imageblit, %do.body ], [ @cfb_imageblit, %entry.do.body5_crit_edge ]
  %6 = getelementptr inbounds %struct.fb_ops, ptr %fbops, i32 0, i32 11
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mb86290fb_fillrect.sink, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fb_ops, ptr %fbops, i32 0, i32 12
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mb86290fb_copyarea.sink, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fb_ops, ptr %fbops, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %mb86290fb_imageblit.sink, ptr %10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %draw = getelementptr inbounds %struct.mb862xxfb_par, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %draw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %draw, align 4
  %add.ptr8 = getelementptr i8, ptr %13, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #7, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %draw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %draw, align 4
  %add.ptr13 = getelementptr i8, ptr %15, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 8388608) #7, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %xres)
  %17 = ptrtoint ptr %draw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %draw, align 4
  %add.ptr18 = getelementptr i8, ptr %18, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %16) #7, !srcloc !15
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %or = or i32 %20, 1792
  store i32 %or, ptr %flags, align 4
  %accel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 12
  %21 = ptrtoint ptr %accel to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 255, ptr %accel, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mb86290fb_fillrect(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %rect) #0 align 64 {
entry:
  %cmd = alloca [7 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds [7 x i32], ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds [7 x i32], ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds [7 x i32], ptr %cmd, i32 0, i32 3
  %3 = getelementptr inbounds [7 x i32], ptr %cmd, i32 0, i32 4
  %4 = getelementptr inbounds [7 x i32], ptr %cmd, i32 0, i32 5
  %5 = getelementptr inbounds [7 x i32], ptr %cmd, i32 0, i32 6
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %6 = getelementptr inbounds i8, ptr %cmd, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %8 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %10 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres_virtual, align 4
  %width2 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %12 = ptrtoint ptr %width2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %height3 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %14 = ptrtoint ptr %height3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not = icmp eq i32 %15, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rect, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %9)
  %cmp = icmp ugt i32 %17, %9
  br i1 %cmp, label %lor.lhs.false5.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false5
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %18 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dy, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %11)
  %cmp7 = icmp ugt i32 %19, %11
  br i1 %cmp7, label %lor.lhs.false6.cleanup_crit_edge, label %if.end

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %add = add i32 %17, %13
  %add12 = add i32 %19, %15
  %20 = tail call i32 @llvm.umin.i32(i32 %add, i32 %9)
  %21 = tail call i32 @llvm.umin.i32(i32 %add12, i32 %11)
  %sub = sub i32 %20, %17
  %sub22 = sub i32 %21, %19
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %22 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %visual, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %if.else [
    i32 2, label %if.end.if.then28_crit_edge
    i32 4, label %if.end.if.then28_crit_edge84
  ]

if.end.if.then28_crit_edge84:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

if.end.if.then28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

if.then28:                                        ; preds = %if.end.if.then28_crit_edge, %if.end.if.then28_crit_edge84
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %25 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pseudo_palette, align 4
  %color = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %27 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %color, align 4
  %arrayidx = getelementptr i32, ptr %26, i32 %28
  br label %if.end30

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %color29 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then28
  %fg.0.in = phi ptr [ %arrayidx, %if.then28 ], [ %color29, %if.else ]
  %29 = ptrtoint ptr %fg.0.in to i32
  call void @__asan_load4_noabort(i32 %29)
  %fg.0 = load i32, ptr %fg.0.in, align 4
  %rop = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 5
  %30 = ptrtoint ptr %rop to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rop, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %31, label %if.end30.sw.epilog_crit_edge [
    i32 1, label %if.end30.sw.epilog.sink.split_crit_edge
    i32 0, label %sw.bb32
  ]

if.end30.sw.epilog.sink.split_crit_edge:          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.end30.sw.epilog_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb32, %if.end30.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 1792, %sw.bb32 ], [ 3328, %if.end30.sw.epilog.sink.split_crit_edge ]
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %0, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end30.sw.epilog_crit_edge
  %34 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -251591632, ptr %cmd, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -838860800, ptr %1, align 4
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %fg.0, ptr %2, align 4
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 155254784, ptr %3, align 4
  %shl = shl i32 %19, 16
  %or = or i32 %shl, %17
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or, ptr %4, align 4
  %shl41 = shl i32 %sub22, 16
  %or42 = or i32 %shl41, %sub
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or42, ptr %5, align 4
  %par1.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %40 = ptrtoint ptr %par1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %par1.i, align 4
  %geo.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %41, i32 0, i32 19
  %draw.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %41, i32 0, i32 18
  %.pr.i = load i32, ptr @mb862xxfb_write_fifo.free, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %sw.epilog
  %42 = phi i32 [ %.pr.i, %sw.epilog ], [ %storemerge.i, %if.end.i.while.body.i_crit_edge ]
  %total.08.i = phi i32 [ 0, %sw.epilog ], [ %total.1.i, %if.end.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %arrayidx.i = getelementptr i32, ptr %cmd, i32 %total.08.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  %46 = ptrtoint ptr %geo.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %geo.i, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %45) #7, !srcloc !15
  %inc.i = add nuw nsw i32 %total.08.i, 1
  %48 = load i32, ptr @mb862xxfb_write_fifo.free, align 4
  %dec.i = add i32 %48, -1
  br label %if.end.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %draw.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %draw.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %50, i32 1032
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !20
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !21
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %do.body.i
  %storemerge.i = phi i32 [ %52, %if.else.i ], [ %dec.i, %do.body.i ]
  %total.1.i = phi i32 [ %total.08.i, %if.else.i ], [ %inc.i, %do.body.i ]
  store i32 %storemerge.i, ptr @mb862xxfb_write_fifo.free, align 4
  %cmp.i = icmp ult i32 %total.1.i, 7
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

cleanup:                                          ; preds = %if.end.i.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cmd) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mb86290fb_copyarea(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %area) #0 align 64 {
entry:
  %cmd = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds [6 x i32], ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i32], ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i32], ptr %cmd, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i32], ptr %cmd, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i32], ptr %cmd, i32 0, i32 5
  %5 = getelementptr inbounds i8, ptr %cmd, i32 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -251591632, ptr %cmd, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1792, ptr %0, align 4
  %sx = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 4
  %9 = ptrtoint ptr %sx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sx, align 4
  %11 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %area, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not = icmp ult i32 %10, %12
  br i1 %cmp.not, label %entry.if.else15_crit_edge, label %land.lhs.true

entry.if.else15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15

land.lhs.true:                                    ; preds = %entry
  %sy = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %13 = ptrtoint ptr %sy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sy, align 4
  %dy = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %15 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dy, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp3.not = icmp ult i32 %14, %16
  br i1 %cmp3.not, label %land.lhs.true8, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.lhs.true8:                                   ; preds = %land.lhs.true
  %17 = ptrtoint ptr %sy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sy, align 4
  %19 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dy, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp11.not = icmp ugt i32 %18, %20
  br i1 %cmp11.not, label %land.lhs.true8.if.else15_crit_edge, label %land.lhs.true8.if.end30_crit_edge

land.lhs.true8.if.end30_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.lhs.true8.if.else15_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15

if.else15:                                        ; preds = %land.lhs.true8.if.else15_crit_edge, %entry.if.else15_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp18.not = icmp ugt i32 %10, %12
  br i1 %cmp18.not, label %if.else15.if.else26_crit_edge, label %land.lhs.true19

if.else15.if.else26_crit_edge:                    ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else26

land.lhs.true19:                                  ; preds = %if.else15
  %sy20 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %21 = ptrtoint ptr %sy20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sy20, align 4
  %dy21 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %23 = ptrtoint ptr %dy21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dy21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp22.not = icmp ult i32 %22, %24
  br i1 %cmp22.not, label %land.lhs.true19.if.else26_crit_edge, label %land.lhs.true19.if.end30_crit_edge

land.lhs.true19.if.end30_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.lhs.true19.if.else26_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else26

if.else26:                                        ; preds = %land.lhs.true19.if.else26_crit_edge, %if.else15.if.else26_crit_edge
  br label %if.end30

if.end30:                                         ; preds = %if.else26, %land.lhs.true19.if.end30_crit_edge, %land.lhs.true8.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge
  %.sink = phi i32 [ 222756864, %if.else26 ], [ 222560256, %land.lhs.true.if.end30_crit_edge ], [ 222691328, %land.lhs.true8.if.end30_crit_edge ], [ 222625792, %land.lhs.true19.if.end30_crit_edge ]
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %1, align 4
  %sy31 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %26 = ptrtoint ptr %sy31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sy31, align 4
  %shl = shl i32 %27, 16
  %or33 = or i32 %shl, %10
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or33, ptr %2, align 4
  %dy35 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %29 = ptrtoint ptr %dy35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dy35, align 4
  %shl36 = shl i32 %30, 16
  %or38 = or i32 %shl36, %12
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or38, ptr %3, align 4
  %height = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %32 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height, align 4
  %shl40 = shl i32 %33, 16
  %width = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %34 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %width, align 4
  %or41 = or i32 %shl40, %35
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or41, ptr %4, align 4
  %par1.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %37 = ptrtoint ptr %par1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %par1.i, align 4
  %geo.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %38, i32 0, i32 19
  %draw.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %38, i32 0, i32 18
  %.pr.i = load i32, ptr @mb862xxfb_write_fifo.free, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end30
  %39 = phi i32 [ %.pr.i, %if.end30 ], [ %storemerge.i, %if.end.i.while.body.i_crit_edge ]
  %total.08.i = phi i32 [ 0, %if.end30 ], [ %total.1.i, %if.end.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %arrayidx.i = getelementptr i32, ptr %cmd, i32 %total.08.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #7
  %43 = ptrtoint ptr %geo.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %geo.i, align 4
  %add.ptr.i = getelementptr i8, ptr %44, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %42) #7, !srcloc !15
  %inc.i = add nuw nsw i32 %total.08.i, 1
  %45 = load i32, ptr @mb862xxfb_write_fifo.free, align 4
  %dec.i = add i32 %45, -1
  br label %if.end.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %draw.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %draw.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %47, i32 1032
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !20
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !21
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %do.body.i
  %storemerge.i = phi i32 [ %49, %if.else.i ], [ %dec.i, %do.body.i ]
  %total.1.i = phi i32 [ %total.08.i, %if.else.i ], [ %inc.i, %do.body.i ]
  store i32 %storemerge.i, ptr @mb862xxfb_write_fifo.free, align 4
  %cmp.i = icmp ult i32 %total.1.i, 6
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %mb862xxfb_write_fifo.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

mb862xxfb_write_fifo.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmd) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mb86290fb_imageblit(ptr noundef %info, ptr noundef %image) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %width1 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %0 = ptrtoint ptr %width1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width1, align 4
  %height2 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %2 = ptrtoint ptr %height2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height2, align 4
  %4 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %image, align 4
  %conv5 = trunc i32 %5 to i16
  %dy6 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %6 = ptrtoint ptr %dy6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dy6, align 4
  %conv7 = trunc i32 %7 to i16
  %add = add i32 %5, %1
  %add12 = add i32 %7, %3
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %10 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres_virtual, align 4
  %12 = tail call i32 @llvm.smin.i32(i32 %add, i32 %9)
  %13 = tail call i32 @llvm.smin.i32(i32 %add12, i32 %11)
  %sub = sub i32 %12, %5
  %conv23 = trunc i32 %sub to i16
  %sub25 = sub i32 %13, %7
  %conv26 = trunc i32 %sub25 to i16
  %depth = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 6
  %14 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %depth, align 4
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %15, label %sw.default [
    i8 1, label %sw.bb
    i8 8, label %sw.bb44
    i8 16, label %sw.bb53
  ]

sw.bb:                                            ; preds = %entry
  %conv28 = and i32 %sub, 65535
  %add29 = add nuw nsw i32 %conv28, 31
  %17 = lshr i32 %add29, 5
  %conv31 = and i32 %sub25, 65535
  %mul = mul nuw nsw i32 %17, %conv31
  %add33 = add nuw nsw i32 %mul, 9
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %18 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %visual, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %19, label %if.else [
    i32 2, label %sw.bb.if.then_crit_edge
    i32 4, label %sw.bb.if.then_crit_edge131
  ]

sw.bb.if.then_crit_edge131:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %sw.bb.if.then_crit_edge, %sw.bb.if.then_crit_edge131
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %21 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pseudo_palette, align 4
  %fg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %23 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fg_color, align 4
  %arrayidx = getelementptr i32, ptr %22, i32 %24
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %bg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %27 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bg_color, align 4
  %arrayidx41 = getelementptr i32, ptr %22, i32 %28
  %29 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx41, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %fg_color42 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %31 = ptrtoint ptr %fg_color42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fg_color42, align 4
  %bg_color43 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %33 = ptrtoint ptr %bg_color43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bg_color43, align 4
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv45 = and i32 %sub, 65535
  %add46 = add nuw nsw i32 %conv45, 1
  %35 = lshr i32 %add46, 1
  %conv49 = and i32 %sub25, 65535
  %mul51 = mul nuw nsw i32 %35, %conv49
  %add52 = add nuw nsw i32 %mul51, 3
  br label %sw.epilog

sw.bb53:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv54 = and i32 %sub, 65535
  %add55 = add nuw nsw i32 %conv54, 1
  %36 = lshr i32 %add55, 1
  %conv58 = and i32 %sub25, 65535
  %mul60 = mul nuw nsw i32 %36, %conv58
  %add61 = add nuw nsw i32 %mul60, 3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %image) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb53, %sw.bb44, %if.else, %if.then
  %fgcolor.0 = phi i32 [ 0, %sw.bb53 ], [ 0, %sw.bb44 ], [ %26, %if.then ], [ %32, %if.else ]
  %bgcolor.0 = phi i32 [ 0, %sw.bb53 ], [ 0, %sw.bb44 ], [ %30, %if.then ], [ %34, %if.else ]
  %step.0.in = phi i32 [ %36, %sw.bb53 ], [ %35, %sw.bb44 ], [ %17, %if.then ], [ %17, %if.else ]
  %cmdlen.0 = phi i32 [ %add61, %sw.bb53 ], [ %add52, %sw.bb44 ], [ %add33, %if.then ], [ %add33, %if.else ]
  %cmdfn.0 = phi ptr [ @mb86290fb_imageblit16, %sw.bb53 ], [ @mb86290fb_imageblit8, %sw.bb44 ], [ @mb86290fb_imageblit1, %if.then ], [ @mb86290fb_imageblit1, %if.else ]
  %37 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %cmdlen.0, i32 4) #7
  %38 = extractvalue { i32, i1 } %37, 1
  br i1 %38, label %sw.epilog.if.then62_crit_edge, label %if.end7.i, !prof !22

sw.epilog.if.then62_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62

if.end7.i:                                        ; preds = %sw.epilog
  %39 = extractvalue { i32, i1 } %37, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %39, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.if.then62_crit_edge, label %while.body.lr.ph.i

if.end7.i.if.then62_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62

if.then62:                                        ; preds = %if.end7.i.if.then62_crit_edge, %sw.epilog.if.then62_crit_edge
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %image) #7
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %if.end7.i
  %step.0 = trunc i32 %step.0.in to i16
  tail call void %cmdfn.0(ptr noundef nonnull %call8.i, i16 noundef zeroext %step.0, i16 noundef zeroext %conv5, i16 noundef zeroext %conv7, i16 noundef zeroext %conv23, i16 noundef zeroext %conv26, i32 noundef %fgcolor.0, i32 noundef %bgcolor.0, ptr noundef %image, ptr noundef %info) #7, !callees !23
  %par1.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %40 = ptrtoint ptr %par1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %par1.i, align 4
  %geo.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %41, i32 0, i32 19
  %draw.i = getelementptr inbounds %struct.mb862xxfb_par, ptr %41, i32 0, i32 18
  %.pr.i = load i32, ptr @mb862xxfb_write_fifo.free, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i124.while.body.i_crit_edge, %while.body.lr.ph.i
  %42 = phi i32 [ %.pr.i, %while.body.lr.ph.i ], [ %storemerge.i, %if.end.i124.while.body.i_crit_edge ]
  %total.08.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %total.1.i, %if.end.i124.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %arrayidx.i = getelementptr i32, ptr %call8.i, i32 %total.08.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  %46 = ptrtoint ptr %geo.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %geo.i, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %45) #7, !srcloc !15
  %inc.i = add nuw i32 %total.08.i, 1
  %48 = load i32, ptr @mb862xxfb_write_fifo.free, align 4
  %dec.i = add i32 %48, -1
  br label %if.end.i124

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %draw.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %draw.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %50, i32 1032
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !20
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !21
  br label %if.end.i124

if.end.i124:                                      ; preds = %if.else.i, %do.body.i
  %storemerge.i = phi i32 [ %52, %if.else.i ], [ %dec.i, %do.body.i ]
  %total.1.i = phi i32 [ %total.08.i, %if.else.i ], [ %inc.i, %do.body.i ]
  store i32 %storemerge.i, ptr @mb862xxfb_write_fifo.free, align 4
  %cmp.i = icmp ult i32 %total.1.i, %cmdlen.0
  br i1 %cmp.i, label %if.end.i124.while.body.i_crit_edge, label %mb862xxfb_write_fifo.exit

if.end.i124.while.body.i_crit_edge:               ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

mb862xxfb_write_fifo.exit:                        ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call8.i) #7
  br label %cleanup

cleanup:                                          ; preds = %mb862xxfb_write_fifo.exit, %if.then62, %sw.default
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mb86290fb_imageblit1(ptr nocapture noundef writeonly %cmd, i16 noundef zeroext %step, i16 noundef zeroext %dx, i16 noundef zeroext %dy, i16 noundef zeroext %width, i16 noundef zeroext %height, i32 noundef %fgcolor, i32 noundef %bgcolor, ptr nocapture noundef readonly %image, ptr nocapture noundef readnone %info) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -251591632, ptr %cmd, align 4
  %arrayidx1 = getelementptr i32, ptr %cmd, i32 1
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1792, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr i32, ptr %cmd, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -838860800, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr i32, ptr %cmd, i32 3
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %fgcolor, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i32, ptr %cmd, i32 4
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -838795264, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr i32, ptr %cmd, i32 5
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %bgcolor, ptr %arrayidx5, align 4
  %data = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %width6 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %8 = ptrtoint ptr %width6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width6, align 4
  %conv7 = zext i16 %step to i32
  %conv8 = zext i16 %height to i32
  %mul = mul nuw i32 %conv8, %conv7
  %add9 = add nuw i32 %mul, 2
  %or = or i32 %add9, 188940288
  %arrayidx10 = getelementptr i32, ptr %cmd, i32 6
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %arrayidx10, align 4
  %conv11 = zext i16 %dy to i32
  %shl = shl nuw i32 %conv11, 16
  %conv12 = zext i16 %dx to i32
  %or13 = or i32 %shl, %conv12
  %arrayidx14 = getelementptr i32, ptr %cmd, i32 7
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or13, ptr %arrayidx14, align 4
  %shl16 = shl nuw i32 %conv8, 16
  %conv17 = zext i16 %width to i32
  %or18 = or i32 %shl16, %conv17
  %arrayidx19 = getelementptr i32, ptr %cmd, i32 8
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or18, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %height)
  %cmp46.not = icmp eq i16 %height, 0
  br i1 %cmp46.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %add = add i32 %9, 7
  %shr = lshr i32 %add, 3
  %shl27 = shl nuw nsw i32 %conv7, 2
  %conv28 = and i32 %shr, 65535
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %line.048 = phi ptr [ %7, %while.body.lr.ph ], [ %add.ptr, %while.body.while.body_crit_edge ]
  %i.047 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %mul23 = mul nuw i32 %i.047, %conv7
  %add24 = add nuw i32 %mul23, 9
  %arrayidx25 = getelementptr i32, ptr %cmd, i32 %add24
  %13 = call ptr @memcpy(ptr %arrayidx25, ptr %line.048, i32 %shl27)
  %add.ptr = getelementptr i8, ptr %line.048, i32 %conv28
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, %conv8
  br i1 %exitcond.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mb86290fb_imageblit8(ptr nocapture noundef writeonly %cmd, i16 noundef zeroext %step, i16 noundef zeroext %dx, i16 noundef zeroext %dy, i16 noundef zeroext %width, i16 noundef zeroext %height, i32 noundef %fgcolor, i32 noundef %bgcolor, ptr nocapture noundef readonly %image, ptr nocapture noundef readonly %info) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %height to i32
  %conv1 = zext i16 %step to i32
  %mul = mul nuw i32 %conv, %conv1
  %add = add nuw i32 %mul, 2
  %or = or i32 %add, 188874752
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or, ptr %cmd, align 4
  %conv2 = zext i16 %dy to i32
  %shl = shl nuw i32 %conv2, 16
  %conv3 = zext i16 %dx to i32
  %or4 = or i32 %shl, %conv3
  %arrayidx5 = getelementptr i32, ptr %cmd, i32 1
  %1 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or4, ptr %arrayidx5, align 4
  %shl7 = shl nuw i32 %conv, 16
  %conv8 = zext i16 %width to i32
  %or9 = or i32 %shl7, %conv8
  %arrayidx10 = getelementptr i32, ptr %cmd, i32 2
  %2 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or9, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %height)
  %cmp62.not = icmp eq i16 %height, 0
  br i1 %cmp62.not, label %entry.while.end_crit_edge, label %for.cond.preheader.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

for.cond.preheader.lr.ph:                         ; preds = %entry
  %width11 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %3 = ptrtoint ptr %width11 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %width11, align 4
  %data = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %step)
  %cmp1659.not = icmp eq i16 %step, 0
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %conv36 = and i32 %4, 65535
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.end.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %line.065 = phi ptr [ %6, %for.cond.preheader.lr.ph ], [ %add.ptr, %for.end.for.cond.preheader_crit_edge ]
  %i.063 = phi i32 [ 0, %for.cond.preheader.lr.ph ], [ %inc37, %for.end.for.cond.preheader_crit_edge ]
  br i1 %cmp1659.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mul20 = mul nuw i32 %i.063, %conv1
  %add21 = add nuw i32 %mul20, 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ptr.061 = phi ptr [ %line.065, %for.body.lr.ph ], [ %incdec.ptr35, %for.body.for.body_crit_edge ]
  %j.060 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %7 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pseudo_palette, align 4
  %9 = ptrtoint ptr %ptr.061 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ptr.061, align 1
  %idxprom = zext i8 %10 to i32
  %arrayidx18 = getelementptr i32, ptr %8, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx18, align 4
  %and = and i32 %12, 65535
  %add22 = add nuw i32 %add21, %j.060
  %arrayidx23 = getelementptr i32, ptr %cmd, i32 %add22
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %arrayidx23, align 4
  %incdec.ptr = getelementptr i8, ptr %ptr.061, i32 1
  %14 = load ptr, ptr %pseudo_palette, align 4
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr, align 1
  %idxprom25 = zext i8 %16 to i32
  %arrayidx26 = getelementptr i32, ptr %14, i32 %idxprom25
  %17 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx26, align 4
  %shl28 = shl i32 %18, 16
  %or34 = or i32 %shl28, %and
  store i32 %or34, ptr %arrayidx23, align 4
  %incdec.ptr35 = getelementptr i8, ptr %ptr.061, i32 2
  %inc = add nuw nsw i32 %j.060, 1
  %exitcond.not = icmp eq i32 %inc, %conv1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %add.ptr = getelementptr i8, ptr %line.065, i32 %conv36
  %inc37 = add nuw nsw i32 %i.063, 1
  %exitcond67.not = icmp eq i32 %inc37, %conv
  br i1 %exitcond67.not, label %for.end.while.end_crit_edge, label %for.end.for.cond.preheader_crit_edge

for.end.for.cond.preheader_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mb86290fb_imageblit16(ptr nocapture noundef writeonly %cmd, i16 noundef zeroext %step, i16 noundef zeroext %dx, i16 noundef zeroext %dy, i16 noundef zeroext %width, i16 noundef zeroext %height, i32 noundef %fgcolor, i32 noundef %bgcolor, ptr nocapture noundef readonly %image, ptr nocapture noundef readnone %info) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %width1 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %2 = ptrtoint ptr %width1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width1, align 4
  %conv2 = zext i16 %step to i32
  %conv3 = zext i16 %height to i32
  %mul = mul nuw i32 %conv3, %conv2
  %add = add nuw i32 %mul, 2
  %or = or i32 %add, 188874752
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %cmd, align 4
  %conv4 = zext i16 %dy to i32
  %shl5 = shl nuw i32 %conv4, 16
  %conv6 = zext i16 %dx to i32
  %or7 = or i32 %shl5, %conv6
  %arrayidx8 = getelementptr i32, ptr %cmd, i32 1
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or7, ptr %arrayidx8, align 4
  %shl10 = shl nuw i32 %conv3, 16
  %conv11 = zext i16 %width to i32
  %or12 = or i32 %shl10, %conv11
  %arrayidx13 = getelementptr i32, ptr %cmd, i32 2
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or12, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %height)
  %cmp33.not = icmp eq i16 %height, 0
  br i1 %cmp33.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %conv = shl i32 %3, 1
  %conv21 = and i32 %conv, 65534
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %line.035 = phi ptr [ %1, %while.body.lr.ph ], [ %add.ptr, %while.body.while.body_crit_edge ]
  %i.034 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %mul17 = mul nuw i32 %i.034, %conv2
  %add18 = add nuw i32 %mul17, 3
  %arrayidx19 = getelementptr i32, ptr %cmd, i32 %add18
  %7 = call ptr @memcpy(ptr %arrayidx19, ptr %line.035, i32 %conv2)
  %add.ptr = getelementptr i8, ptr %line.035, i32 %conv21
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %conv3
  br i1 %exitcond.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @__UNIQUE_ID_file313, !1, !"__UNIQUE_ID_file313", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfb_accel.c", i32 328, i32 1}
!2 = !{ptr @__UNIQUE_ID_license314, !1, !"__UNIQUE_ID_license314", i1 false, i1 false}
!3 = !{ptr @mb862xxfb_write_fifo.free, !4, !"free", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/mb862xx/mb862xxfb_accel.c", i32 28, i32 13}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i64 2156280106}
!15 = !{i64 4303091}
!16 = !{i64 2156280604}
!17 = !{i64 2156281113}
!18 = !{i64 2156281633}
!19 = !{i64 2156273502}
!20 = !{i64 4303509}
!21 = !{i64 2156274328}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{ptr @mb86290fb_imageblit1, ptr @mb86290fb_imageblit16, ptr @mb86290fb_imageblit8}
