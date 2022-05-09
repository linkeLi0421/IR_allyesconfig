; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/aty/mach64_cursor.c_pt.bc'
source_filename = "../drivers/video/fbdev/aty/mach64_cursor.c"
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
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atyfb_par = type { [16 x i32], [256 x %struct.anon.85], ptr, ptr, ptr, i32, %struct.crtc, %union.aty_pll, %struct.pll_info, i32, i32, i32, i32, i32, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, %struct.aty_interrupt, i32, i32, %struct.spinlock, i32, i32, %struct.crtc, %union.aty_pll }
%struct.anon.85 = type { i8, i8, i8 }
%struct.pll_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aty_interrupt = type { %struct.wait_queue_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.crtc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.aty_pll = type { %struct.pll_ct }
%struct.pll_ct = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32 }
%struct.fb_cursor = type { i16, i16, i16, ptr, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }

@cursor_bits_lookup = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00@\10P\04D\14T\01A\11Q\05E\15U", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"cursor_bits_lookup\00", align 1
@___asan_gen_.2 = private constant [43 x i8] c"../drivers/video/fbdev/aty/mach64_cursor.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 63, i32 17 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @cursor_bits_lookup], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cursor_bits_lookup to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aty_init_cursor(ptr nocapture noundef %info, ptr nocapture noundef writeonly %atyfb_ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %smem_len, align 4
  %sub = add i32 %1, -4096
  store i32 %sub, ptr %smem_len, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smem_start, align 4
  %sub2 = add i32 %1, -8392704
  %add = add i32 %sub2, %3
  %call = tail call ptr @ioremap(i32 noundef %add, i32 noundef 1024) #3
  %sprite = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 11
  %4 = ptrtoint ptr %sprite to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %sprite, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %size = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 11, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %size, align 4
  %scan_align = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 11, i32 4
  %6 = ptrtoint ptr %scan_align to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %scan_align, align 4
  %buf_align = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 11, i32 3
  %7 = ptrtoint ptr %buf_align to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %buf_align, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 11, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %flags, align 4
  %fb_cursor = getelementptr inbounds %struct.fb_ops, ptr %atyfb_ops, i32 0, i32 14
  %9 = ptrtoint ptr %fb_cursor to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @atyfb_cursor, ptr %fb_cursor, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atyfb_cursor(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %cursor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %asleep = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %asleep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %asleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %fifo_space1.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %fifo_space1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo_space1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.i = icmp eq i32 %5, 0
  br i1 %cmp11.i, label %while.body.lr.ph.i, label %if.end.wait_for_fifo.exit_crit_edge

if.end.wait_for_fifo.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %wait_for_fifo.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %ati_regbase.i.i = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %6 = ptrtoint ptr %ati_regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ati_regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 784
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %9 = and i32 %8, -65536
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  %11 = tail call i32 @llvm.ctlz.i32(i32 %10, i1 true) #3, !range !13
  %sub.i.neg.op.i = add nsw i32 %11, -16
  %sub.i = select i1 %tobool.not.i.i, i32 16, i32 %sub.i.neg.op.i
  %cmp.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.wait_for_fifo.exit_crit_edge

while.body.i.wait_for_fifo.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %wait_for_fifo.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

wait_for_fifo.exit:                               ; preds = %while.body.i.wait_for_fifo.exit_crit_edge, %if.end.wait_for_fifo.exit_crit_edge
  %fifo_space.0.lcssa.i = phi i32 [ %5, %if.end.wait_for_fifo.exit_crit_edge ], [ %sub.i, %while.body.i.wait_for_fifo.exit_crit_edge ]
  %sub5.i = add i32 %fifo_space.0.lcssa.i, -1
  %12 = ptrtoint ptr %fifo_space1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub5.i, ptr %fifo_space1.i, align 4
  %enable = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 1
  %13 = ptrtoint ptr %enable to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %enable, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool2.not = icmp eq i16 %14, 0
  %ati_regbase.i257 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %ati_regbase.i257 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ati_regbase.i257, align 4
  %add.ptr.i258 = getelementptr i8, ptr %16, i32 208
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i258) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %wait_for_fifo.exit
  call void @__sanitizer_cov_trace_pc() #5
  %18 = or i32 %17, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %19 = ptrtoint ptr %ati_regbase.i257 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ati_regbase.i257, align 4
  %add.ptr.i256 = getelementptr i8, ptr %20, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i256, i32 %18) #3, !srcloc !15
  br label %if.end5

if.else:                                          ; preds = %wait_for_fifo.exit
  call void @__sanitizer_cov_trace_pc() #5
  %21 = and i32 %17, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %22 = ptrtoint ptr %ati_regbase.i257 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ati_regbase.i257, align 4
  %add.ptr.i260 = getelementptr i8, ptr %23, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i260, i32 %21) #3, !srcloc !15
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %24 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %cursor, align 4
  %26 = and i16 %25, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool7.not = icmp eq i16 %26, 0
  br i1 %tobool7.not, label %if.end5.if.end48_crit_edge, label %if.then8

if.end5.if.end48_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48

if.then8:                                         ; preds = %if.end5
  %image = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5
  %27 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %image, align 4
  %hot = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 4
  %29 = ptrtoint ptr %hot to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hot, align 4
  %conv10 = zext i16 %30 to i32
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %31 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %xoffset, align 4
  %33 = add i32 %32, %conv10
  %sub11 = sub i32 %28, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11)
  %cmp = icmp slt i32 %sub11, 0
  %sub14 = sub i32 0, %sub11
  %phi.cast249 = and i32 %sub14, 65535
  %34 = tail call i32 @llvm.smax.i32(i32 %sub11, i32 0)
  %xoff.0 = select i1 %cmp, i32 %phi.cast249, i32 0
  %dy = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dy, align 4
  %y20 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %y20 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %y20, align 2
  %conv21 = zext i16 %38 to i32
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %39 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %yoffset, align 4
  %41 = add i32 %40, %conv21
  %sub24 = sub i32 %36, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub24)
  %cmp25 = icmp slt i32 %sub24, 0
  %sub28 = sub i32 0, %sub24
  %phi.cast = and i32 %sub28, 65535
  %42 = tail call i32 @llvm.smax.i32(i32 %sub24, i32 0)
  %yoff.0 = select i1 %cmp25, i32 %phi.cast, i32 0
  %height = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 3
  %43 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height, align 4
  %gen_cntl = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 6, i32 11
  %45 = ptrtoint ptr %gen_cntl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %gen_cntl, align 4
  %and33 = and i32 %46, 1
  %y.1 = shl nuw i32 %42, %and33
  %h.0 = shl i32 %44, %and33
  %47 = ptrtoint ptr %fifo_space1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fifo_space1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp11.i262 = icmp ult i32 %48, 3
  br i1 %cmp11.i262, label %while.body.lr.ph.i264, label %if.then8.wait_for_fifo.exit273_crit_edge

if.then8.wait_for_fifo.exit273_crit_edge:         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  br label %wait_for_fifo.exit273

while.body.lr.ph.i264:                            ; preds = %if.then8
  %ati_regbase.i.i263 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  br label %while.body.i270

while.body.i270:                                  ; preds = %while.body.i270.while.body.i270_crit_edge, %while.body.lr.ph.i264
  %49 = ptrtoint ptr %ati_regbase.i.i263 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ati_regbase.i.i263, align 4
  %add.ptr.i.i265 = getelementptr i8, ptr %50, i32 784
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i265) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %52 = and i32 %51, -65536
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i.i266 = icmp eq i32 %52, 0
  %54 = tail call i32 @llvm.ctlz.i32(i32 %53, i1 true) #3, !range !13
  %sub.i.neg.op.i267 = add nsw i32 %54, -16
  %sub.i268 = select i1 %tobool.not.i.i266, i32 16, i32 %sub.i.neg.op.i267
  %cmp.i269 = icmp ult i32 %sub.i268, 3
  br i1 %cmp.i269, label %while.body.i270.while.body.i270_crit_edge, label %while.body.i270.wait_for_fifo.exit273_crit_edge

while.body.i270.wait_for_fifo.exit273_crit_edge:  ; preds = %while.body.i270
  call void @__sanitizer_cov_trace_pc() #5
  br label %wait_for_fifo.exit273

while.body.i270.while.body.i270_crit_edge:        ; preds = %while.body.i270
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i270

wait_for_fifo.exit273:                            ; preds = %while.body.i270.wait_for_fifo.exit273_crit_edge, %if.then8.wait_for_fifo.exit273_crit_edge
  %fifo_space.0.lcssa.i271 = phi i32 [ %48, %if.then8.wait_for_fifo.exit273_crit_edge ], [ %sub.i268, %while.body.i270.wait_for_fifo.exit273_crit_edge ]
  %sub5.i272 = add i32 %fifo_space.0.lcssa.i271, -3
  %55 = ptrtoint ptr %fifo_space1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub5.i272, ptr %fifo_space1.i, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %56 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %smem_len, align 4
  %shr = lshr i32 %57, 3
  %shl39 = shl nuw nsw i32 %yoff.0, 1
  %add = add nuw nsw i32 %shr, %shl39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %58 = tail call i32 @llvm.bswap.i32(i32 %add) #3
  %ati_regbase.i274 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %59 = ptrtoint ptr %ati_regbase.i274 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ati_regbase.i274, align 4
  %add.ptr.i275 = getelementptr i8, ptr %60, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i275, i32 %58) #3, !srcloc !15
  %sub40 = add nuw nsw i32 %yoff.0, 64
  %add42 = sub i32 %sub40, %h.0
  %shl43 = shl i32 %add42, 16
  %or45 = or i32 %shl43, %xoff.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %61 = tail call i32 @llvm.bswap.i32(i32 %or45) #3
  %62 = ptrtoint ptr %ati_regbase.i274 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ati_regbase.i274, align 4
  %add.ptr.i277 = getelementptr i8, ptr %63, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i277, i32 %61) #3, !srcloc !15
  %shl46 = shl i32 %y.1, 16
  %or47 = or i32 %shl46, %34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %64 = tail call i32 @llvm.bswap.i32(i32 %or47) #3
  %65 = ptrtoint ptr %ati_regbase.i274 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ati_regbase.i274, align 4
  %add.ptr.i279 = getelementptr i8, ptr %66, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i279, i32 %64) #3, !srcloc !15
  br label %if.end48

if.end48:                                         ; preds = %wait_for_fifo.exit273, %if.end5.if.end48_crit_edge
  %67 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %cursor, align 4
  %69 = and i16 %68, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool52.not = icmp eq i16 %69, 0
  br i1 %tobool52.not, label %if.end48.if.end92_crit_edge, label %if.then53

if.end48.if.end92_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end92

if.then53:                                        ; preds = %if.end48
  %fg_color = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 4
  %70 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fg_color, align 4
  %bg_color = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 5
  %72 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bg_color, align 4
  %red = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 2
  %74 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %red, align 4
  %arrayidx = getelementptr i16, ptr %75, i32 %71
  %76 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx, align 2
  %and57 = zext i16 %77 to i32
  %shl58 = shl i32 %and57, 24
  %green = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 3
  %78 = ptrtoint ptr %green to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %green, align 4
  %arrayidx60 = getelementptr i16, ptr %79, i32 %71
  %80 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx60, align 2
  %82 = and i16 %81, 255
  %and62 = zext i16 %82 to i32
  %shl63 = shl nuw nsw i32 %and62, 16
  %or64 = or i32 %shl63, %shl58
  %blue = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 4
  %83 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %blue, align 4
  %arrayidx66 = getelementptr i16, ptr %84, i32 %71
  %85 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx66, align 2
  %87 = shl i16 %86, 8
  %shl69 = zext i16 %87 to i32
  %or70 = or i32 %or64, %shl69
  %or71 = or i32 %or70, 255
  %arrayidx74 = getelementptr i16, ptr %75, i32 %73
  %88 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx74, align 2
  %and76 = zext i16 %89 to i32
  %shl77 = shl i32 %and76, 24
  %arrayidx80 = getelementptr i16, ptr %79, i32 %73
  %90 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx80, align 2
  %92 = and i16 %91, 255
  %and82 = zext i16 %92 to i32
  %shl83 = shl nuw nsw i32 %and82, 16
  %or84 = or i32 %shl83, %shl77
  %arrayidx87 = getelementptr i16, ptr %84, i32 %73
  %93 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx87, align 2
  %95 = shl i16 %94, 8
  %shl90 = zext i16 %95 to i32
  %or91 = or i32 %or84, %shl90
  %96 = ptrtoint ptr %fifo_space1.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %fifo_space1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp11.i281 = icmp ult i32 %97, 2
  br i1 %cmp11.i281, label %while.body.lr.ph.i283, label %if.then53.wait_for_fifo.exit292_crit_edge

if.then53.wait_for_fifo.exit292_crit_edge:        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #5
  br label %wait_for_fifo.exit292

while.body.lr.ph.i283:                            ; preds = %if.then53
  %ati_regbase.i.i282 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  br label %while.body.i289

while.body.i289:                                  ; preds = %while.body.i289.while.body.i289_crit_edge, %while.body.lr.ph.i283
  %98 = ptrtoint ptr %ati_regbase.i.i282 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ati_regbase.i.i282, align 4
  %add.ptr.i.i284 = getelementptr i8, ptr %99, i32 784
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i284) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %101 = and i32 %100, -65536
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not.i.i285 = icmp eq i32 %101, 0
  %103 = tail call i32 @llvm.ctlz.i32(i32 %102, i1 true) #3, !range !13
  %sub.i.neg.op.i286 = add nsw i32 %103, -16
  %sub.i287 = select i1 %tobool.not.i.i285, i32 16, i32 %sub.i.neg.op.i286
  %cmp.i288 = icmp ult i32 %sub.i287, 2
  br i1 %cmp.i288, label %while.body.i289.while.body.i289_crit_edge, label %while.body.i289.wait_for_fifo.exit292_crit_edge

while.body.i289.wait_for_fifo.exit292_crit_edge:  ; preds = %while.body.i289
  call void @__sanitizer_cov_trace_pc() #5
  br label %wait_for_fifo.exit292

while.body.i289.while.body.i289_crit_edge:        ; preds = %while.body.i289
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i289

wait_for_fifo.exit292:                            ; preds = %while.body.i289.wait_for_fifo.exit292_crit_edge, %if.then53.wait_for_fifo.exit292_crit_edge
  %fifo_space.0.lcssa.i290 = phi i32 [ %97, %if.then53.wait_for_fifo.exit292_crit_edge ], [ %sub.i287, %while.body.i289.wait_for_fifo.exit292_crit_edge ]
  %sub5.i291 = add i32 %fifo_space.0.lcssa.i290, -2
  %104 = ptrtoint ptr %fifo_space1.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %sub5.i291, ptr %fifo_space1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %105 = tail call i32 @llvm.bswap.i32(i32 %or91) #3
  %ati_regbase.i293 = getelementptr inbounds %struct.atyfb_par, ptr %1, i32 0, i32 4
  %106 = ptrtoint ptr %ati_regbase.i293 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ati_regbase.i293, align 4
  %add.ptr.i294 = getelementptr i8, ptr %107, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i294, i32 %105) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %108 = tail call i32 @llvm.bswap.i32(i32 %or71) #3
  %109 = ptrtoint ptr %ati_regbase.i293 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ati_regbase.i293, align 4
  %add.ptr.i296 = getelementptr i8, ptr %110, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i296, i32 %108) #3, !srcloc !15
  br label %if.end92

if.end92:                                         ; preds = %wait_for_fifo.exit292, %if.end48.if.end92_crit_edge
  %111 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %cursor, align 4
  %113 = and i16 %112, 17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool96.not = icmp eq i16 %113, 0
  br i1 %tobool96.not, label %if.end92.cleanup_crit_edge, label %if.then97

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then97:                                        ; preds = %if.end92
  %data = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 7
  %114 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data, align 4
  %mask = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 3
  %116 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mask, align 4
  %sprite = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 11
  %118 = ptrtoint ptr %sprite to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sprite, align 4
  %width100 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 2
  %120 = ptrtoint ptr %width100 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %width100, align 4
  %add101 = add i32 %121, 7
  %shr102 = lshr i32 %add101, 3
  %height105 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 3
  %122 = ptrtoint ptr %height105 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %height105, align 4
  %scan_align = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 11, i32 4
  %124 = ptrtoint ptr %scan_align to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %scan_align, align 4
  tail call void @mmioset(ptr noundef %119, i32 noundef 170, i32 noundef 1024) #3
  %mul.neg = mul nsw i32 %shr102, -2
  %sub107 = add i32 %mul.neg, %125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp108308.not = icmp eq i32 %123, 0
  br i1 %cmp108308.not, label %if.then97.cleanup_crit_edge, label %for.cond110.preheader.lr.ph

if.then97.cleanup_crit_edge:                      ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond110.preheader.lr.ph:                      ; preds = %if.then97
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add101)
  %cmp111301.not = icmp ult i32 %add101, 8
  %rop = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 2
  %umax = call i32 @llvm.umax.i32(i32 %shr102, i32 1)
  br label %for.cond110.preheader

for.cond110.preheader:                            ; preds = %for.end.for.cond110.preheader_crit_edge, %for.cond110.preheader.lr.ph
  %i.0312 = phi i32 [ 0, %for.cond110.preheader.lr.ph ], [ %inc172, %for.end.for.cond110.preheader_crit_edge ]
  %dst.0311 = phi ptr [ %119, %for.cond110.preheader.lr.ph ], [ %add.ptr, %for.end.for.cond110.preheader_crit_edge ]
  %msk.0310 = phi ptr [ %117, %for.cond110.preheader.lr.ph ], [ %msk.1.lcssa, %for.end.for.cond110.preheader_crit_edge ]
  %src.0309 = phi ptr [ %115, %for.cond110.preheader.lr.ph ], [ %src.1.lcssa, %for.end.for.cond110.preheader_crit_edge ]
  br i1 %cmp111301.not, label %for.cond110.preheader.for.end_crit_edge, label %for.cond110.preheader.for.body113_crit_edge

for.cond110.preheader.for.body113_crit_edge:      ; preds = %for.cond110.preheader
  br label %for.body113

for.cond110.preheader.for.end_crit_edge:          ; preds = %for.cond110.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body113:                                      ; preds = %if.end162.for.body113_crit_edge, %for.cond110.preheader.for.body113_crit_edge
  %j.0305 = phi i32 [ %add146, %if.end162.for.body113_crit_edge ], [ 0, %for.cond110.preheader.for.body113_crit_edge ]
  %dst.1304 = phi ptr [ %incdec.ptr170, %if.end162.for.body113_crit_edge ], [ %dst.0311, %for.cond110.preheader.for.body113_crit_edge ]
  %msk.1303 = phi ptr [ %incdec.ptr114, %if.end162.for.body113_crit_edge ], [ %msk.0310, %for.cond110.preheader.for.body113_crit_edge ]
  %src.1302 = phi ptr [ %incdec.ptr, %if.end162.for.body113_crit_edge ], [ %src.0309, %for.cond110.preheader.for.body113_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %src.1302, i32 1
  %126 = ptrtoint ptr %src.1302 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %src.1302, align 1
  %incdec.ptr114 = getelementptr i8, ptr %msk.1303, i32 1
  %128 = ptrtoint ptr %msk.1303 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %msk.1303, align 1
  %130 = ptrtoint ptr %rop to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %rop, align 4
  %132 = zext i16 %131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values)
  switch i16 %131, label %for.body113.sw.epilog_crit_edge [
    i16 1, label %sw.bb
    i16 0, label %sw.bb130
  ]

for.body113.sw.epilog_crit_edge:                  ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #5
  %xor248 = xor i8 %129, %127
  br label %sw.epilog.sink.split

sw.bb130:                                         ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #5
  %and133247 = and i8 %129, %127
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb130, %sw.bb
  %xor248.sink = phi i8 [ %xor248, %sw.bb ], [ %and133247, %sw.bb130 ]
  %xor = zext i8 %xor248.sink to i32
  %133 = lshr i32 %xor, 4
  %arrayidx135 = getelementptr [16 x i8], ptr @cursor_bits_lookup, i32 0, i32 %133
  %134 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx135, align 1
  %conv136 = zext i8 %135 to i16
  %and140 = and i32 %xor, 15
  %arrayidx141 = getelementptr [16 x i8], ptr @cursor_bits_lookup, i32 0, i32 %and140
  %136 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx141, align 1
  %conv142 = zext i8 %137 to i16
  %shl143 = shl nuw i16 %conv142, 8
  %or144 = or i16 %shl143, %conv136
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.body113.sw.epilog_crit_edge
  %l.0 = phi i16 [ -21846, %for.body113.sw.epilog_crit_edge ], [ %or144, %sw.epilog.sink.split ]
  %add146 = add nuw nsw i32 %j.0305, 1
  %mul147 = shl i32 %add146, 3
  %138 = ptrtoint ptr %width100 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %width100, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul147, i32 %139)
  %cmp150 = icmp ugt i32 %mul147, %139
  %extract.t250 = trunc i16 %l.0 to i8
  %extract252 = lshr i16 %l.0, 8
  %extract.t253 = trunc i16 %extract252 to i8
  br i1 %cmp150, label %if.then152, label %sw.epilog.if.end162_crit_edge

sw.epilog.if.end162_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end162

if.then152:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %and156 = shl i32 %139, 1
  %mul157 = and i32 %and156, 14
  %notmask = shl nsw i32 -1, %mul157
  %sub159 = xor i32 %notmask, -1
  %140 = xor i16 %l.0, 10922
  %xor.i = zext i16 %140 to i32
  %and.i = and i32 %sub159, %xor.i
  %xor1.i = xor i32 %and.i, 43690
  %extract.t = trunc i32 %xor1.i to i8
  %extract254 = lshr i32 %xor1.i, 8
  %extract.t251 = trunc i32 %extract254 to i8
  br label %if.end162

if.end162:                                        ; preds = %if.then152, %sw.epilog.if.end162_crit_edge
  %l.1.off0 = phi i8 [ %extract.t, %if.then152 ], [ %extract.t250, %sw.epilog.if.end162_crit_edge ]
  %l.1.off8 = phi i8 [ %extract.t251, %if.then152 ], [ %extract.t253, %sw.epilog.if.end162_crit_edge ]
  %incdec.ptr166 = getelementptr i8, ptr %dst.1304, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %dst.1304, i8 %l.1.off0) #3, !srcloc !16
  %incdec.ptr170 = getelementptr i8, ptr %dst.1304, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %incdec.ptr166, i8 %l.1.off8) #3, !srcloc !16
  %exitcond.not = icmp eq i32 %add146, %umax
  br i1 %exitcond.not, label %if.end162.for.end_crit_edge, label %if.end162.for.body113_crit_edge

if.end162.for.body113_crit_edge:                  ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body113

if.end162.for.end_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %if.end162.for.end_crit_edge, %for.cond110.preheader.for.end_crit_edge
  %src.1.lcssa = phi ptr [ %src.0309, %for.cond110.preheader.for.end_crit_edge ], [ %incdec.ptr, %if.end162.for.end_crit_edge ]
  %msk.1.lcssa = phi ptr [ %msk.0310, %for.cond110.preheader.for.end_crit_edge ], [ %incdec.ptr114, %if.end162.for.end_crit_edge ]
  %dst.1.lcssa = phi ptr [ %dst.0311, %for.cond110.preheader.for.end_crit_edge ], [ %incdec.ptr170, %if.end162.for.end_crit_edge ]
  %add.ptr = getelementptr i8, ptr %dst.1.lcssa, i32 %sub107
  %inc172 = add nuw i32 %i.0312, 1
  %exitcond313.not = icmp eq i32 %inc172, %123
  br i1 %exitcond313.not, label %for.end.cleanup_crit_edge, label %for.end.for.cond110.preheader_crit_edge

for.end.for.cond110.preheader_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond110.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %if.then97.cleanup_crit_edge, %if.end92.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.end92.cleanup_crit_edge ], [ 0, %if.then97.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @cursor_bits_lookup, !1, !"cursor_bits_lookup", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/aty/mach64_cursor.c", i32 63, i32 17}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 4301397}
!12 = !{i64 2155888853}
!13 = !{i32 0, i32 33}
!14 = !{i64 2155889246}
!15 = !{i64 4300979}
!16 = !{i64 4300782}
