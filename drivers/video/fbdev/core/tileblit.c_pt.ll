; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/core/tileblit.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/tileblit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fb_tilemap = type { i32, i32, i32, i32, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.87, i32, ptr, i32, ptr, ptr, ptr, i8 }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.87 = type { ptr }
%struct.fbcon_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.fb_var_screeninfo, %struct.timer_list, %struct.fb_cursor, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32 }
%struct.fb_cursor = type { i16, i16, i16, ptr, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon = type { ptr }
%struct.llist_head = type { ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fb_tilearea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_tile_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_tilerect = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_tileblit = type { i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.fb_tilecursor = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fbcon_set_tileops(ptr nocapture noundef readonly %vc, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %map = alloca %struct.fb_tilemap, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %map) #5
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 29
  %0 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbcon_par, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @tile_bmove, ptr %1, align 4
  %clear = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %clear to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @tile_clear, ptr %clear, align 4
  %putcs = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %putcs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tile_putcs, ptr %putcs, align 4
  %clear_margins = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %clear_margins to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tile_clear_margins, ptr %clear_margins, align 4
  %cursor = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tile_cursor, ptr %cursor, align 4
  %update_start = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %update_start to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tile_update_start, ptr %update_start, align 4
  %p = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = getelementptr inbounds %struct.fb_tilemap, ptr %map, i32 0, i32 4
  %11 = getelementptr inbounds %struct.fb_tilemap, ptr %map, i32 0, i32 3
  %12 = getelementptr inbounds %struct.fb_tilemap, ptr %map, i32 0, i32 2
  %13 = getelementptr inbounds %struct.fb_tilemap, ptr %map, i32 0, i32 1
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28
  %14 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vc_font, align 4
  %16 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %map, align 4
  %height = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %17 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height, align 4
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %13, align 4
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %12, align 4
  %charcount = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 2
  %21 = ptrtoint ptr %charcount to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %charcount, align 4
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %11, align 4
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %9, align 4
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %10, align 4
  %tileops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 24
  %27 = ptrtoint ptr %tileops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tileops, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  call void %30(ptr noundef %info, ptr noundef nonnull %map) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %map) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tile_bmove(ptr nocapture noundef readnone %vc, ptr noundef %info, i32 noundef %sy, i32 noundef %sx, i32 noundef %dy, i32 noundef %dx, i32 noundef %height, i32 noundef %width) #0 align 64 {
entry:
  %area = alloca %struct.fb_tilearea, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %area) #5
  %0 = getelementptr inbounds %struct.fb_tilearea, ptr %area, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fb_tilearea, ptr %area, i32 0, i32 2
  %2 = getelementptr inbounds %struct.fb_tilearea, ptr %area, i32 0, i32 3
  %3 = getelementptr inbounds %struct.fb_tilearea, ptr %area, i32 0, i32 4
  %4 = getelementptr inbounds %struct.fb_tilearea, ptr %area, i32 0, i32 5
  %5 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sx, ptr %area, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sy, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dx, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dy, ptr %2, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %height, ptr %4, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %width, ptr %3, align 4
  %tileops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 24
  %11 = ptrtoint ptr %tileops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tileops, align 4
  %fb_tilecopy = getelementptr inbounds %struct.fb_tile_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %fb_tilecopy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fb_tilecopy, align 4
  call void %14(ptr noundef %info, ptr noundef nonnull %area) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %area) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tile_clear(ptr noundef readonly %vc, ptr noundef %info, i32 noundef %sy, i32 noundef %sx, i32 noundef %height, i32 noundef %width) #0 align 64 {
entry:
  %rect = alloca %struct.fb_tilerect, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rect) #5
  %0 = getelementptr inbounds %struct.fb_tilerect, ptr %rect, i32 0, i32 4
  %1 = getelementptr inbounds %struct.fb_tilerect, ptr %rect, i32 0, i32 5
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %2 = getelementptr inbounds i8, ptr %rect, i32 20
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %4 = ptrtoint ptr %vc_hi_font_mask to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vc_hi_font_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  %cond = select i1 %tobool.not, i32 12, i32 13
  %cond4 = select i1 %tobool.not, i32 8, i32 9
  %vc_video_erase_char = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %6 = ptrtoint ptr %vc_video_erase_char to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vc_video_erase_char, align 4
  %conv5 = zext i16 %7 to i32
  %cond9 = select i1 %tobool.not, i32 255, i32 511
  %and = and i32 %cond9, %conv5
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %0, align 4
  %tobool.not.i = icmp eq ptr %vc, null
  br i1 %tobool.not.i, label %attr_col_ec.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %vc_can_do_color.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 37
  %9 = ptrtoint ptr %vc_can_do_color.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %vc_can_do_color.i, align 4
  %10 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool1.not.i = icmp eq i16 %10, 0
  br i1 %tobool1.not.i, label %if.end8.i, label %cond.end.i

cond.end.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %cond.in.i = lshr i32 %conv5, %cond4
  %cond.i = and i32 %cond.in.i, 15
  br label %if.end.i27

if.end8.i:                                        ; preds = %if.end.i
  %tobool9.not.i = icmp eq ptr %info, null
  br i1 %tobool9.not.i, label %if.end.i27.thread, label %if.end11.i

if.end11.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %length.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %11 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i.i, align 4
  %length2.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %13 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length2.i.i, align 4
  %15 = tail call i32 @llvm.umax.i32(i32 %12, i32 %14) #5
  %length4.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %16 = ptrtoint ptr %length4.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length4.i.i, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 %15) #5
  %shl.i.i = shl i32 4095, %18
  %neg.i.i = and i32 %shl.i.i, 255
  %and.i.i = xor i32 %neg.i.i, 255
  %visual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %19 = ptrtoint ptr %visual.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %visual.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp eq i32 %20, 0
  %21 = and i16 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool16.not.i = icmp eq i16 %21, 0
  %spec.select.i = select i1 %cmp.i, i32 %and.i.i, i32 0
  %cond27.i = select i1 %cmp.i, i32 0, i32 %and.i.i
  %fg.0.i = select i1 %tobool16.not.i, i32 %cond27.i, i32 %spec.select.i
  br label %if.end.i27

attr_col_ec.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %1, align 4
  br label %attr_col_ec.exit52

if.end.i27:                                       ; preds = %if.end11.i, %cond.end.i
  %retval.0.i.ph = phi i32 [ %fg.0.i, %if.end11.i ], [ %cond.i, %cond.end.i ]
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i.ph, ptr %1, align 4
  %24 = ptrtoint ptr %vc_can_do_color.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load.i25 = load i16, ptr %vc_can_do_color.i, align 4
  %25 = and i16 %bf.load.i25, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool1.not.i26 = icmp eq i16 %25, 0
  br i1 %tobool1.not.i26, label %if.end8.i35, label %if.end.i27.cond.end.i33_crit_edge

if.end.i27.cond.end.i33_crit_edge:                ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i33

if.end.i27.thread:                                ; preds = %if.end8.i
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %1, align 4
  %27 = ptrtoint ptr %vc_can_do_color.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load.i2556 = load i16, ptr %vc_can_do_color.i, align 4
  %28 = and i16 %bf.load.i2556, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool1.not.i2657 = icmp eq i16 %28, 0
  br i1 %tobool1.not.i2657, label %if.end.i27.thread.attr_col_ec.exit52_crit_edge, label %if.end.i27.thread.cond.end.i33_crit_edge

if.end.i27.thread.cond.end.i33_crit_edge:         ; preds = %if.end.i27.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i33

if.end.i27.thread.attr_col_ec.exit52_crit_edge:   ; preds = %if.end.i27.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %attr_col_ec.exit52

cond.end.i33:                                     ; preds = %if.end.i27.thread.cond.end.i33_crit_edge, %if.end.i27.cond.end.i33_crit_edge
  %cond.in.i31 = lshr i32 %conv5, %cond
  br label %attr_col_ec.exit52

if.end8.i35:                                      ; preds = %if.end.i27
  %tobool9.not.i34 = icmp eq ptr %info, null
  br i1 %tobool9.not.i34, label %if.end8.i35.attr_col_ec.exit52_crit_edge, label %if.end11.i50

if.end8.i35.attr_col_ec.exit52_crit_edge:         ; preds = %if.end8.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %attr_col_ec.exit52

if.end11.i50:                                     ; preds = %if.end8.i35
  call void @__sanitizer_cov_trace_pc() #7
  %length.i.i36 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %29 = ptrtoint ptr %length.i.i36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length.i.i36, align 4
  %length2.i.i37 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %31 = ptrtoint ptr %length2.i.i37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length2.i.i37, align 4
  %33 = tail call i32 @llvm.umax.i32(i32 %30, i32 %32) #5
  %length4.i.i38 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %34 = ptrtoint ptr %length4.i.i38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length4.i.i38, align 4
  %36 = tail call i32 @llvm.umax.i32(i32 %35, i32 %33) #5
  %shl.i.i39 = shl i32 4095, %36
  %neg.i.i40 = and i32 %shl.i.i39, 255
  %and.i.i41 = xor i32 %neg.i.i40, 255
  %visual.i42 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %37 = ptrtoint ptr %visual.i42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %visual.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i43 = icmp eq i32 %38, 0
  %39 = and i16 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool16.not.i45 = icmp eq i16 %39, 0
  %spec.select.i46 = select i1 %cmp.i43, i32 %and.i.i41, i32 0
  %cond27.i47 = select i1 %cmp.i43, i32 0, i32 %and.i.i41
  %bg.0.i49 = select i1 %tobool16.not.i45, i32 %spec.select.i46, i32 %cond27.i47
  br label %attr_col_ec.exit52

attr_col_ec.exit52:                               ; preds = %if.end11.i50, %if.end8.i35.attr_col_ec.exit52_crit_edge, %cond.end.i33, %if.end.i27.thread.attr_col_ec.exit52_crit_edge, %attr_col_ec.exit
  %retval.0.i51 = phi i32 [ %cond.in.i31, %cond.end.i33 ], [ %bg.0.i49, %if.end11.i50 ], [ 0, %attr_col_ec.exit ], [ 0, %if.end8.i35.attr_col_ec.exit52_crit_edge ], [ 0, %if.end.i27.thread.attr_col_ec.exit52_crit_edge ]
  %40 = getelementptr inbounds %struct.fb_tilerect, ptr %rect, i32 0, i32 7
  %41 = getelementptr inbounds %struct.fb_tilerect, ptr %rect, i32 0, i32 6
  %42 = getelementptr inbounds %struct.fb_tilerect, ptr %rect, i32 0, i32 3
  %43 = getelementptr inbounds %struct.fb_tilerect, ptr %rect, i32 0, i32 2
  %44 = getelementptr inbounds %struct.fb_tilerect, ptr %rect, i32 0, i32 1
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %retval.0.i51, ptr %41, align 4
  %46 = ptrtoint ptr %rect to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sx, ptr %rect, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sy, ptr %44, align 4
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %width, ptr %43, align 4
  %49 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %height, ptr %42, align 4
  %50 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %40, align 4
  %tileops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 24
  %51 = ptrtoint ptr %tileops to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tileops, align 4
  %fb_tilefill = getelementptr inbounds %struct.fb_tile_ops, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %fb_tilefill to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fb_tilefill, align 4
  call void %54(ptr noundef %info, ptr noundef nonnull %rect) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rect) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tile_putcs(ptr nocapture noundef readonly %vc, ptr noundef %info, ptr nocapture noundef readonly %s, i32 noundef %count, i32 noundef %yy, i32 noundef %xx, i32 noundef %fg, i32 noundef %bg) #0 align 64 {
entry:
  %blit = alloca %struct.fb_tileblit, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %blit) #5
  %0 = getelementptr inbounds %struct.fb_tileblit, ptr %blit, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fb_tileblit, ptr %blit, i32 0, i32 2
  %2 = getelementptr inbounds %struct.fb_tileblit, ptr %blit, i32 0, i32 3
  %3 = getelementptr inbounds %struct.fb_tileblit, ptr %blit, i32 0, i32 4
  %4 = getelementptr inbounds %struct.fb_tileblit, ptr %blit, i32 0, i32 5
  %5 = getelementptr inbounds %struct.fb_tileblit, ptr %blit, i32 0, i32 6
  %6 = getelementptr inbounds %struct.fb_tileblit, ptr %blit, i32 0, i32 7
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %7 = ptrtoint ptr %vc_hi_font_mask to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vc_hi_font_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  %conv1 = select i1 %tobool.not, i32 255, i32 511
  %mul = shl i32 %count, 2
  %9 = ptrtoint ptr %blit to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %xx, ptr %blit, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %yy, ptr %0, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %count, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %2, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %fg, ptr %3, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %bg, ptr %4, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %count, ptr %5, align 4
  %pixmap = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10
  %call = tail call ptr @fb_get_buffer_offset(ptr noundef %info, ptr noundef %pixmap, i32 noundef %mul) #5
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp16 = icmp sgt i32 %count, 0
  br i1 %cmp16, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %s.addr.017 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %s, %entry.for.body_crit_edge ]
  %incdec.ptr = getelementptr i16, ptr %s.addr.017, i32 1
  %17 = ptrtoint ptr %s.addr.017 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %s.addr.017, align 2
  %conv5 = zext i16 %18 to i32
  %and = and i32 %conv1, %conv5
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %6, align 4
  %arrayidx = getelementptr i32, ptr %20, i32 %i.018
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %tileops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 24
  %22 = ptrtoint ptr %tileops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tileops, align 4
  %fb_tileblit = getelementptr inbounds %struct.fb_tile_ops, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %fb_tileblit to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fb_tileblit, align 4
  call void %25(ptr noundef %info, ptr noundef nonnull %blit) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %blit) #5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tile_clear_margins(ptr nocapture noundef %vc, ptr nocapture noundef %info, i32 noundef %color, i32 noundef %bottom_only) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tile_cursor(ptr nocapture noundef readonly %vc, ptr noundef %info, i32 noundef %mode, i32 noundef %fg, i32 noundef %bg) #0 align 64 {
entry:
  %cursor = alloca %struct.fb_tilecursor, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cursor) #5
  %0 = getelementptr inbounds %struct.fb_tilecursor, ptr %cursor, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fb_tilecursor, ptr %cursor, i32 0, i32 2
  %2 = getelementptr inbounds %struct.fb_tilecursor, ptr %cursor, i32 0, i32 4
  %3 = getelementptr inbounds %struct.fb_tilecursor, ptr %cursor, i32 0, i32 5
  %vc_cursor_type = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 23
  %4 = getelementptr inbounds i8, ptr %cursor, i32 12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %6 = ptrtoint ptr %vc_cursor_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vc_cursor_type, align 4
  %state = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 1
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %10 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %cursor, align 4
  %y = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %y, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp = icmp eq i32 %mode, 2
  %and = lshr i32 %7, 4
  %and.lobit = and i32 %and, 1
  %14 = xor i32 %and.lobit, 1
  %15 = select i1 %cmp, i32 0, i32 %14
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %1, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %fg, ptr %2, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %bg, ptr %3, align 4
  %and6 = and i32 %7, 15
  %switch.tableidx = add nsw i32 %and6, -1
  %19 = call i32 @llvm.umin.i32(i32 %switch.tableidx, i32 5)
  %20 = getelementptr inbounds %struct.fb_tilecursor, ptr %cursor, i32 0, i32 3
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %20, align 4
  %tileops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 24
  %22 = ptrtoint ptr %tileops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tileops, align 4
  %fb_tilecursor = getelementptr inbounds %struct.fb_tile_ops, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %fb_tilecursor to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fb_tilecursor, align 4
  call void %25(ptr noundef %info, ptr noundef nonnull %cursor) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cursor) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tile_update_start(ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 29
  %0 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbcon_par, align 4
  %var = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 7
  %call = tail call i32 @fb_pan_display(ptr noundef %info, ptr noundef %var) #5
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %2 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xoffset, align 4
  %xoffset3 = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 7, i32 4
  %4 = ptrtoint ptr %xoffset3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %xoffset3, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %5 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %yoffset, align 4
  %yoffset6 = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 7, i32 5
  %7 = ptrtoint ptr %yoffset6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %yoffset6, align 4
  %vmode = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %8 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vmode, align 4
  %vmode9 = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 7, i32 25
  %10 = ptrtoint ptr %vmode9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %vmode9, align 4
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_get_buffer_offset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_pan_display(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

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
