; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/core/fbcon_ud.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fbcon_ud.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fbcon_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.fb_var_screeninfo, %struct.timer_list, %struct.fb_cursor, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fb_cursor = type { i16, i16, i16, ptr, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.81, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%union.anon.81 = type { ptr }
%struct.fbcon_display = type { ptr, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, ptr }
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
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 4]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 4]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 4]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 4]
@__sancov_gen_cov_switch_values.4 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 4]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @fbcon_rotate_ud(ptr nocapture noundef writeonly %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ud_bmove, ptr %ops, align 4
  %clear = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 1
  %1 = ptrtoint ptr %clear to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ud_clear, ptr %clear, align 4
  %putcs = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 2
  %2 = ptrtoint ptr %putcs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ud_putcs, ptr %putcs, align 4
  %clear_margins = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 3
  %3 = ptrtoint ptr %clear_margins to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ud_clear_margins, ptr %clear_margins, align 4
  %cursor = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 4
  %4 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ud_cursor, ptr %cursor, align 4
  %update_start = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 5
  %5 = ptrtoint ptr %update_start to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ud_update_start, ptr %update_start, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ud_bmove(ptr nocapture noundef readonly %vc, ptr noundef %info, i32 noundef %sy, i32 noundef %sx, i32 noundef %dy, i32 noundef %dx, i32 noundef %height, i32 noundef %width) #1 align 64 {
entry:
  %area = alloca %struct.fb_copyarea, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 29
  %0 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbcon_par, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %area) #6
  %p = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  %scrollmode.i = getelementptr inbounds %struct.fbcon_display, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %scrollmode.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %scrollmode.i, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %lor.lhs.false20 [
    i16 4, label %entry.cond.true21.sink.split_crit_edge
    i16 1, label %entry.cond.true21.sink.split_crit_edge89
  ]

entry.cond.true21.sink.split_crit_edge89:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true21.sink.split

entry.cond.true21.sink.split_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true21.sink.split

lor.lhs.false20:                                  ; preds = %entry
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %7 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %7)
  %cond80 = load i32, ptr %yres_virtual, align 4
  %xpanstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 6
  %8 = ptrtoint ptr %xpanstep to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %xpanstep, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %lor.lhs.false20.cond.true21_crit_edge, label %cond.false23

lor.lhs.false20.cond.true21_crit_edge:            ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true21

cond.true21.sink.split:                           ; preds = %entry.cond.true21.sink.split_crit_edge, %entry.cond.true21.sink.split_crit_edge89
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond = load i32, ptr %yres, align 4
  br label %cond.true21

cond.true21:                                      ; preds = %cond.true21.sink.split, %lor.lhs.false20.cond.true21_crit_edge
  %cond82 = phi i32 [ %cond80, %lor.lhs.false20.cond.true21_crit_edge ], [ %cond, %cond.true21.sink.split ]
  %var22 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  br label %cond.end25

cond.false23:                                     ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #8
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false23, %cond.true21
  %cond81 = phi i32 [ %cond82, %cond.true21 ], [ %cond80, %cond.false23 ]
  %cond26.in = phi ptr [ %var22, %cond.true21 ], [ %xres_virtual, %cond.false23 ]
  %11 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %12 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 4
  %13 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %14 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %15 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %16 = ptrtoint ptr %cond26.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %cond26 = load i32, ptr %cond26.in, align 4
  %add = add i32 %height, %sy
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28
  %height27 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %17 = ptrtoint ptr %height27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height27, align 4
  %mul = mul i32 %18, %add
  %sub = sub i32 %cond81, %mul
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub, ptr %11, align 4
  %add29 = add i32 %width, %sx
  %20 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vc_font, align 4
  %mul32 = mul i32 %21, %add29
  %sub33 = sub i32 %cond26, %mul32
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub33, ptr %12, align 4
  %add35 = add i32 %height, %dy
  %mul38 = mul i32 %18, %add35
  %sub39 = sub i32 %cond81, %mul38
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub39, ptr %15, align 4
  %add41 = add i32 %width, %dx
  %mul44 = mul i32 %21, %add41
  %sub45 = sub i32 %cond26, %mul44
  %24 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub45, ptr %area, align 4
  %mul49 = mul i32 %18, %height
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul49, ptr %13, align 4
  %mul53 = mul i32 %21, %width
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul53, ptr %14, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %27 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fbops, align 4
  %fb_copyarea = getelementptr inbounds %struct.fb_ops, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %fb_copyarea to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fb_copyarea, align 4
  call void %30(ptr noundef %info, ptr noundef nonnull %area) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %area) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ud_clear(ptr noundef readonly %vc, ptr noundef %info, i32 noundef %sy, i32 noundef %sx, i32 noundef %height, i32 noundef %width) #1 align 64 {
entry:
  %region = alloca %struct.fb_fillrect, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 29
  %0 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbcon_par, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %region) #6
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %2 = ptrtoint ptr %vc_hi_font_mask to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vc_hi_font_mask, align 4
  %p = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p, align 4
  %scrollmode.i = getelementptr inbounds %struct.fbcon_display, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %scrollmode.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %scrollmode.i, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %7, label %lor.lhs.false22 [
    i16 4, label %entry.cond.true24.sink.split_crit_edge
    i16 1, label %entry.cond.true24.sink.split_crit_edge76
  ]

entry.cond.true24.sink.split_crit_edge76:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true24.sink.split

entry.cond.true24.sink.split_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true24.sink.split

lor.lhs.false22:                                  ; preds = %entry
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %9 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %9)
  %cond967 = load i32, ptr %yres_virtual, align 4
  %xpanstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 6
  %10 = ptrtoint ptr %xpanstep to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %xpanstep, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool23.not = icmp eq i16 %11, 0
  br i1 %tobool23.not, label %lor.lhs.false22.cond.true24_crit_edge, label %cond.false26

lor.lhs.false22.cond.true24_crit_edge:            ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true24

cond.true24.sink.split:                           ; preds = %entry.cond.true24.sink.split_crit_edge, %entry.cond.true24.sink.split_crit_edge76
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond9 = load i32, ptr %yres, align 4
  br label %cond.true24

cond.true24:                                      ; preds = %cond.true24.sink.split, %lor.lhs.false22.cond.true24_crit_edge
  %cond969 = phi i32 [ %cond967, %lor.lhs.false22.cond.true24_crit_edge ], [ %cond9, %cond.true24.sink.split ]
  %var25 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  br label %cond.end28

cond.false26:                                     ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #8
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false26, %cond.true24
  %cond968 = phi i32 [ %cond969, %cond.true24 ], [ %cond967, %cond.false26 ]
  %cond29.in = phi ptr [ %var25, %cond.true24 ], [ %xres_virtual, %cond.false26 ]
  %13 = ptrtoint ptr %cond29.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %cond29 = load i32, ptr %cond29.in, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  %cond = select i1 %tobool.not, i32 12, i32 13
  %tobool.not.i = icmp eq ptr %vc, null
  br i1 %tobool.not.i, label %cond.end28.attr_col_ec.exit_crit_edge, label %if.end.i

cond.end28.attr_col_ec.exit_crit_edge:            ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %attr_col_ec.exit

if.end.i:                                         ; preds = %cond.end28
  %vc_can_do_color.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 37
  %14 = ptrtoint ptr %vc_can_do_color.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i = load i16, ptr %vc_can_do_color.i, align 4
  %15 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool1.not.i = icmp eq i16 %15, 0
  br i1 %tobool1.not.i, label %if.end8.i, label %cond.end.i

cond.end.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %vc_video_erase_char4.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %16 = ptrtoint ptr %vc_video_erase_char4.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vc_video_erase_char4.i, align 4
  %conv5.i = zext i16 %17 to i32
  %shr6.i = lshr i32 %conv5.i, %cond
  br label %attr_col_ec.exit

if.end8.i:                                        ; preds = %if.end.i
  %tobool9.not.i = icmp eq ptr %info, null
  br i1 %tobool9.not.i, label %if.end8.i.attr_col_ec.exit_crit_edge, label %if.end11.i

if.end8.i.attr_col_ec.exit_crit_edge:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %attr_col_ec.exit

if.end11.i:                                       ; preds = %if.end8.i
  %length.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %18 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i.i, align 4
  %length2.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %20 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length2.i.i, align 4
  %22 = tail call i32 @llvm.umax.i32(i32 %19, i32 %21) #6
  %length4.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %23 = ptrtoint ptr %length4.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length4.i.i, align 4
  %25 = tail call i32 @llvm.umax.i32(i32 %24, i32 %22) #6
  %shl.i.i = shl i32 4095, %25
  %neg.i.i = and i32 %shl.i.i, 255
  %and.i.i = xor i32 %neg.i.i, 255
  %visual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %26 = ptrtoint ptr %visual.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %visual.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i = icmp eq i32 %27, 0
  %vc_video_erase_char13.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %28 = ptrtoint ptr %vc_video_erase_char13.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vc_video_erase_char13.i, align 4
  %30 = and i16 %29, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool16.not.i = icmp eq i16 %30, 0
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %cond27.i = select i1 %cmp.i, i32 0, i32 %and.i.i
  br label %attr_col_ec.exit

if.else.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %cond37.i = select i1 %cmp.i, i32 %and.i.i, i32 0
  br label %attr_col_ec.exit

attr_col_ec.exit:                                 ; preds = %if.else.i, %if.then17.i, %if.end8.i.attr_col_ec.exit_crit_edge, %cond.end.i, %cond.end28.attr_col_ec.exit_crit_edge
  %retval.0.i = phi i32 [ %shr6.i, %cond.end.i ], [ 0, %cond.end28.attr_col_ec.exit_crit_edge ], [ 0, %if.end8.i.attr_col_ec.exit_crit_edge ], [ %cond27.i, %if.then17.i ], [ %cond37.i, %if.else.i ]
  %31 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 5
  %32 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 4
  %33 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 3
  %34 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 2
  %35 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 1
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i, ptr %32, align 4
  %add = add i32 %height, %sy
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28
  %height31 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %37 = ptrtoint ptr %height31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %height31, align 4
  %mul = mul i32 %38, %add
  %sub = sub i32 %cond968, %mul
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub, ptr %35, align 4
  %add32 = add i32 %width, %sx
  %40 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vc_font, align 4
  %mul35 = mul i32 %41, %add32
  %sub36 = sub i32 %cond29, %mul35
  %42 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub36, ptr %region, align 4
  %mul39 = mul i32 %41, %width
  %43 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul39, ptr %34, align 4
  %mul43 = mul i32 %38, %height
  %44 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul43, ptr %33, align 4
  %45 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %31, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %46 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fbops, align 4
  %fb_fillrect = getelementptr inbounds %struct.fb_ops, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %fb_fillrect to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fb_fillrect, align 4
  call void %49(ptr noundef %info, ptr noundef nonnull %region) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %region) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ud_putcs(ptr nocapture noundef readonly %vc, ptr noundef %info, ptr nocapture noundef readonly %s, i32 noundef %count, i32 noundef %yy, i32 noundef %xx, i32 noundef %fg, i32 noundef %bg) #1 align 64 {
entry:
  %image = alloca %struct.fb_image, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %image) #6
  %0 = getelementptr inbounds i8, ptr %image, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 29
  %2 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fbcon_par, align 4
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28
  %4 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vc_font, align 4
  %add = add i32 %5, 7
  %div173 = lshr i32 %add, 3
  %height = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %mul = mul i32 %div173, %7
  %pixmap = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10
  %size = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %div3 = udiv i32 %9, %mul
  %scan_align5 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 4
  %10 = ptrtoint ptr %scan_align5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_align5, align 4
  %sub = add i32 %11, -1
  %buf_align7 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 3
  %12 = ptrtoint ptr %buf_align7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_align7, align 4
  %sub8 = add i32 %13, -1
  %rem = and i32 %5, 7
  %14 = ptrtoint ptr %s to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %s, align 2
  %var.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %fix.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call.i = tail call i32 @fb_get_color_depth(ptr noundef %var.i, ptr noundef %fix.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i174 = icmp eq i32 %call.i, 1
  %conv.i = zext i16 %15 to i32
  %and.i = lshr i32 %conv.i, 10
  %16 = and i32 %and.i, 3
  %and9.i = lshr i32 %conv.i, 7
  %17 = and i32 %and9.i, 4
  %18 = or i32 %16, %17
  %attribute.2.i = select i1 %cmp.i174, i32 %18, i32 0
  %p = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 10
  %19 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p, align 4
  %scrollmode.i = getelementptr inbounds %struct.fbcon_display, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %scrollmode.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %scrollmode.i, align 4
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.2)
  switch i16 %22, label %lor.lhs.false32 [
    i16 4, label %cond.end.thread238
    i16 1, label %lor.lhs.false26.thread
  ]

cond.end.thread238:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %yres239 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  br label %cond.end37

lor.lhs.false26.thread:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  br label %cond.end37

lor.lhs.false32:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %xpanstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 6
  %24 = ptrtoint ptr %xpanstep to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %xpanstep, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not = icmp eq i16 %25, 0
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %spec.select = select i1 %tobool.not, ptr %var.i, ptr %xres_virtual
  br label %cond.end37

cond.end37:                                       ; preds = %lor.lhs.false32, %lor.lhs.false26.thread, %cond.end.thread238
  %cond235.in = phi ptr [ %yres239, %cond.end.thread238 ], [ %yres, %lor.lhs.false26.thread ], [ %yres_virtual, %lor.lhs.false32 ]
  %cond38.in = phi ptr [ %var.i, %cond.end.thread238 ], [ %var.i, %lor.lhs.false26.thread ], [ %spec.select, %lor.lhs.false32 ]
  %fontbuffer = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 23
  %26 = ptrtoint ptr %fontbuffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fontbuffer, align 4
  %tobool39.not = icmp eq ptr %27, null
  br i1 %tobool39.not, label %cond.end37.cleanup_crit_edge, label %if.end

cond.end37.cleanup_crit_edge:                     ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %cond.end37
  %28 = ptrtoint ptr %cond235.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %cond235 = load i32, ptr %cond235.in, align 4
  %29 = ptrtoint ptr %cond38.in to i32
  call void @__asan_load4_noabort(i32 %29)
  %cond38 = load i32, ptr %cond38.in, align 4
  %fg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %30 = ptrtoint ptr %fg_color to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %fg, ptr %fg_color, align 4
  %bg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %31 = ptrtoint ptr %bg_color to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %bg, ptr %bg_color, align 4
  %32 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height, align 4
  %mul42 = mul i32 %33, %yy
  %34 = add i32 %33, %mul42
  %sub46 = sub i32 %cond235, %34
  %dy = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %35 = ptrtoint ptr %dy to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub46, ptr %dy, align 4
  %add47 = add i32 %xx, %count
  %36 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vc_font, align 4
  %mul50 = mul i32 %37, %add47
  %sub51 = sub i32 %cond38, %mul50
  %38 = ptrtoint ptr %image to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub51, ptr %image, align 4
  %height54 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %39 = ptrtoint ptr %height54 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %33, ptr %height54, align 4
  %depth = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 6
  %40 = ptrtoint ptr %depth to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attribute.2.i)
  %tobool55.not = icmp eq i32 %attribute.2.i, 0
  br i1 %tobool55.not, label %if.end.if.end61_crit_edge, label %if.end8.i

if.end.if.end61_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #9
  %tobool58.not = icmp eq ptr %call9.i, null
  br i1 %tobool58.not, label %if.end8.i.cleanup_crit_edge, label %if.end8.i.if.end61_crit_edge

if.end8.i.if.end61_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end61:                                         ; preds = %if.end8.i.if.end61_crit_edge, %if.end.if.end61_crit_edge
  %buf.0 = phi ptr [ %call9.i, %if.end8.i.if.end61_crit_edge ], [ null, %if.end.if.end61_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool63.not245 = icmp eq i32 %count, 0
  br i1 %tobool63.not245, label %if.end61.while.end_crit_edge, label %while.body.lr.ph

if.end61.while.end_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end61
  %sub62 = add i32 %count, -1
  %add.ptr = getelementptr i16, ptr %s, i32 %sub62
  %width71 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %neg = sub i32 0, %11
  %neg78 = sub i32 0, %13
  %data = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool82.not = icmp eq i32 %rem, 0
  %vc_hi_font_mask.i184 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %and.i.i192 = and i32 %attribute.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i192)
  %tobool.not.i.i193 = icmp ne i32 %and.i.i192, 0
  %and8.i.i194 = and i32 %attribute.2.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i194)
  %tobool9.not.i.i195 = icmp eq i32 %and8.i.i194, 0
  %and14.i.i196 = shl i32 %attribute.2.i, 30
  %sext.i.i197 = ashr i32 %and14.i.i196, 31
  %neg.i.i198 = trunc i32 %sext.i.i197 to i8
  %fbops.i231 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  br label %while.body

while.body:                                       ; preds = %if.end85.while.body_crit_edge, %while.body.lr.ph
  %s.addr.0247 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %add.ptr90, %if.end85.while.body_crit_edge ]
  %count.addr.0246 = phi i32 [ %count, %while.body.lr.ph ], [ %sub89, %if.end85.while.body_crit_edge ]
  %41 = call i32 @llvm.umin.i32(i32 %count.addr.0246, i32 %div3)
  %42 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vc_font, align 4
  %mul70 = mul i32 %43, %41
  %44 = ptrtoint ptr %width71 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul70, ptr %width71, align 4
  %add73 = add i32 %mul70, 7
  %shr = lshr i32 %add73, 3
  %add74 = add i32 %sub, %shr
  %and = and i32 %add74, %neg
  %45 = ptrtoint ptr %height54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height54, align 4
  %mul76 = mul i32 %and, %46
  %add77 = add i32 %sub8, %mul76
  %and79 = and i32 %add77, %neg78
  %call81 = call ptr @fb_get_buffer_offset(ptr noundef %info, ptr noundef %pixmap, i32 noundef %and79) #6
  %47 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call81, ptr %data, align 4
  %48 = ptrtoint ptr %vc_hi_font_mask.i184 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %vc_hi_font_mask.i184, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool.not.i = icmp eq i16 %49, 0
  %conv1.i = select i1 %tobool.not.i, i32 255, i32 511
  %50 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vc_font, align 4
  br i1 %tobool82.not, label %if.then83, label %if.else84

if.then83:                                        ; preds = %while.body
  %shr.i = lshr i32 %51, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool2.not30.i = icmp eq i32 %41, 0
  br i1 %tobool2.not30.i, label %if.then83.if.end85_crit_edge, label %while.body.lr.ph.i

if.then83.if.end85_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

while.body.lr.ph.i:                               ; preds = %if.then83
  %52 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fbcon_par, align 4
  %fontbuffer.i = getelementptr inbounds %struct.fbcon_ops, ptr %53, i32 0, i32 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i)
  %cmp.i179 = icmp eq i32 %shr.i, 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end11.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec34.in.i = phi i32 [ %41, %while.body.lr.ph.i ], [ %dec34.i, %if.end11.i.while.body.i_crit_edge ]
  %dst.addr.032.i = phi ptr [ %call81, %while.body.lr.ph.i ], [ %add.ptr12.i, %if.end11.i.while.body.i_crit_edge ]
  %s.addr.031.i = phi ptr [ %s.addr.0247, %while.body.lr.ph.i ], [ %incdec.ptr.i, %if.end11.i.while.body.i_crit_edge ]
  %dec34.i = add i32 %dec34.in.i, -1
  %54 = ptrtoint ptr %fontbuffer.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fontbuffer.i, align 4
  %incdec.ptr.i = getelementptr i16, ptr %s.addr.031.i, i32 -1
  %56 = ptrtoint ptr %s.addr.031.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %s.addr.031.i, align 2
  %conv3.i = zext i16 %57 to i32
  %and.i180 = and i32 %conv1.i, %conv3.i
  %mul.i = mul i32 %and.i180, %mul
  %add.ptr.i = getelementptr i8, ptr %55, i32 %mul.i
  br i1 %tobool55.not, label %while.body.i.if.end.i183_crit_edge, label %if.then.i182

while.body.i.if.end.i183_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i183

if.then.i182:                                     ; preds = %while.body.i
  %58 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %59)
  %cmp.i.i181 = icmp ult i32 %59, 10
  %cond.i.i = select i1 %cmp.i.i181, i32 1, i32 2
  %60 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vc_font, align 4
  %add.i.i = add i32 %61, 7
  %shr.i.i = lshr i32 %add.i.i, 3
  %mul.i.i = mul i32 %shr.i.i, %59
  %mul5.i.i = mul nuw nsw i32 %shr.i.i, %cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp634.not.i.i = icmp eq i32 %mul.i.i, 0
  br i1 %cmp634.not.i.i, label %if.then.i182.if.end.i183_crit_edge, label %if.then.i182.for.body.i.i_crit_edge

if.then.i182.for.body.i.i_crit_edge:              ; preds = %if.then.i182
  br label %for.body.i.i

if.then.i182.if.end.i183_crit_edge:               ; preds = %if.then.i182
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i183

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i182.for.body.i.i_crit_edge
  %i.035.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i182.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %add.ptr.i, i32 %i.035.i.i
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.035.i.i, i32 %mul5.i.i)
  %cmp7.i.i = icmp slt i32 %i.035.i.i, %mul5.i.i
  %or.cond.i.i = select i1 %tobool.not.i.i193, i1 %cmp7.i.i, i1 false
  %c.0.i.i = select i1 %or.cond.i.i, i8 -1, i8 %63
  %shl.i.i = shl i8 %c.0.i.i, 1
  %or.i.i = select i1 %tobool9.not.i.i195, i8 0, i8 %shl.i.i
  %c.1.i.i = or i8 %or.i.i, %c.0.i.i
  %c.2.i.i = xor i8 %c.1.i.i, %neg.i.i198
  %arrayidx20.i.i = getelementptr i8, ptr %buf.0, i32 %i.035.i.i
  %64 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %c.2.i.i, ptr %arrayidx20.i.i, align 1
  %inc.i.i = add nuw i32 %i.035.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %mul.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end.i183_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i.if.end.i183_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i183

if.end.i183:                                      ; preds = %for.body.i.i.if.end.i183_crit_edge, %if.then.i182.if.end.i183_crit_edge, %while.body.i.if.end.i183_crit_edge
  %src.0.i = phi ptr [ %add.ptr.i, %while.body.i.if.end.i183_crit_edge ], [ %buf.0, %if.then.i182.if.end.i183_crit_edge ], [ %buf.0, %for.body.i.i.if.end.i183_crit_edge ]
  %65 = ptrtoint ptr %height54 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %height54, align 4
  br i1 %cmp.i179, label %if.then9.i, label %if.else.i, !prof !9

if.then9.i:                                       ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not4.i.i = icmp eq i32 %66, 0
  br i1 %tobool.not4.i.i, label %if.then9.i.if.end11.i_crit_edge, label %if.then9.i.for.cond1.preheader.i.i_crit_edge

if.then9.i.for.cond1.preheader.i.i_crit_edge:     ; preds = %if.then9.i
  br label %for.cond1.preheader.i.i

if.then9.i.if.end11.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

for.cond1.preheader.i.i:                          ; preds = %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge, %if.then9.i.for.cond1.preheader.i.i_crit_edge
  %dec7.in.i.i = phi i32 [ %dec7.i.i, %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge ], [ %66, %if.then9.i.for.cond1.preheader.i.i_crit_edge ]
  %dst.addr.06.i.i = phi ptr [ %add.ptr.i.i, %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge ], [ %dst.addr.032.i, %if.then9.i.for.cond1.preheader.i.i_crit_edge ]
  %src.addr.05.i.i = phi ptr [ %incdec.ptr.i.i, %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge ], [ %src.0.i, %if.then9.i.for.cond1.preheader.i.i_crit_edge ]
  %dec7.i.i = add i32 %dec7.in.i.i, -1
  %incdec.ptr.i.i = getelementptr i8, ptr %src.addr.05.i.i, i32 1
  %67 = ptrtoint ptr %src.addr.05.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %src.addr.05.i.i, align 1
  %69 = ptrtoint ptr %dst.addr.06.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %dst.addr.06.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %dst.addr.06.i.i, i32 %and
  %tobool.not.i28.i = icmp eq i32 %dec7.i.i, 0
  br i1 %tobool.not.i28.i, label %for.cond1.preheader.i.i.if.end11.i_crit_edge, label %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge

for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge: ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i.if.end11.i_crit_edge:     ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.else.i:                                        ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #8
  call void @fb_pad_aligned_buffer(ptr noundef %dst.addr.032.i, i32 noundef %and, ptr noundef %src.0.i, i32 noundef %shr.i, i32 noundef %66) #6
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %for.cond1.preheader.i.i.if.end11.i_crit_edge, %if.then9.i.if.end11.i_crit_edge
  %add.ptr12.i = getelementptr i8, ptr %dst.addr.032.i, i32 %div173
  %tobool2.not.i = icmp eq i32 %dec34.i, 0
  br i1 %tobool2.not.i, label %if.end11.i.if.end85_crit_edge, label %if.end11.i.while.body.i_crit_edge

if.end11.i.while.body.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end11.i.if.end85_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.else84:                                        ; preds = %while.body
  %rem.i = and i32 %51, 7
  %shr.i188 = lshr i32 %51, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool4.not30.i = icmp eq i32 %41, 0
  br i1 %tobool4.not30.i, label %if.else84.if.end85_crit_edge, label %while.body.lr.ph.i199

if.else84.if.end85_crit_edge:                     ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

while.body.lr.ph.i199:                            ; preds = %if.else84
  %70 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fbcon_par, align 4
  %fontbuffer.i190 = getelementptr inbounds %struct.fbcon_ops, ptr %71, i32 0, i32 23
  br label %while.body.i206

while.body.i206:                                  ; preds = %if.end.i230.while.body.i206_crit_edge, %while.body.lr.ph.i199
  %dec35.in.i = phi i32 [ %41, %while.body.lr.ph.i199 ], [ %dec35.i, %if.end.i230.while.body.i206_crit_edge ]
  %shift_high.034.i = phi i32 [ 8, %while.body.lr.ph.i199 ], [ %sub12.i, %if.end.i230.while.body.i206_crit_edge ]
  %shift_low.033.i = phi i32 [ 0, %while.body.lr.ph.i199 ], [ %and11.i, %if.end.i230.while.body.i206_crit_edge ]
  %dst.addr.032.i200 = phi ptr [ %call81, %while.body.lr.ph.i199 ], [ %add.ptr10.i, %if.end.i230.while.body.i206_crit_edge ]
  %s.addr.031.i201 = phi ptr [ %s.addr.0247, %while.body.lr.ph.i199 ], [ %incdec.ptr.i202, %if.end.i230.while.body.i206_crit_edge ]
  %dec35.i = add i32 %dec35.in.i, -1
  %72 = ptrtoint ptr %fontbuffer.i190 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fontbuffer.i190, align 4
  %incdec.ptr.i202 = getelementptr i16, ptr %s.addr.031.i201, i32 -1
  %74 = ptrtoint ptr %s.addr.031.i201 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %s.addr.031.i201, align 2
  %conv5.i = zext i16 %75 to i32
  %and.i203 = and i32 %conv1.i, %conv5.i
  %mul.i204 = mul i32 %and.i203, %mul
  %add.ptr.i205 = getelementptr i8, ptr %73, i32 %mul.i204
  br i1 %tobool55.not, label %while.body.i206.if.end.i230_crit_edge, label %if.then.i214

while.body.i206.if.end.i230_crit_edge:            ; preds = %while.body.i206
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i230

if.then.i214:                                     ; preds = %while.body.i206
  %76 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %77)
  %cmp.i.i207 = icmp ult i32 %77, 10
  %cond.i.i208 = select i1 %cmp.i.i207, i32 1, i32 2
  %78 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %vc_font, align 4
  %add.i.i209 = add i32 %79, 7
  %shr.i.i210 = lshr i32 %add.i.i209, 3
  %mul.i.i211 = mul i32 %shr.i.i210, %77
  %mul5.i.i212 = mul nuw nsw i32 %shr.i.i210, %cond.i.i208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i211)
  %cmp634.not.i.i213 = icmp eq i32 %mul.i.i211, 0
  br i1 %cmp634.not.i.i213, label %if.then.i214.if.end.i230_crit_edge, label %if.then.i214.for.body.i.i227_crit_edge

if.then.i214.for.body.i.i227_crit_edge:           ; preds = %if.then.i214
  br label %for.body.i.i227

if.then.i214.if.end.i230_crit_edge:               ; preds = %if.then.i214
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i230

for.body.i.i227:                                  ; preds = %for.body.i.i227.for.body.i.i227_crit_edge, %if.then.i214.for.body.i.i227_crit_edge
  %i.035.i.i215 = phi i32 [ %inc.i.i225, %for.body.i.i227.for.body.i.i227_crit_edge ], [ 0, %if.then.i214.for.body.i.i227_crit_edge ]
  %arrayidx.i.i216 = getelementptr i8, ptr %add.ptr.i205, i32 %i.035.i.i215
  %80 = ptrtoint ptr %arrayidx.i.i216 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i.i216, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.035.i.i215, i32 %mul5.i.i212)
  %cmp7.i.i217 = icmp slt i32 %i.035.i.i215, %mul5.i.i212
  %or.cond.i.i218 = select i1 %tobool.not.i.i193, i1 %cmp7.i.i217, i1 false
  %c.0.i.i219 = select i1 %or.cond.i.i218, i8 -1, i8 %81
  %shl.i.i220 = shl i8 %c.0.i.i219, 1
  %or.i.i221 = select i1 %tobool9.not.i.i195, i8 0, i8 %shl.i.i220
  %c.1.i.i222 = or i8 %or.i.i221, %c.0.i.i219
  %c.2.i.i223 = xor i8 %c.1.i.i222, %neg.i.i198
  %arrayidx20.i.i224 = getelementptr i8, ptr %buf.0, i32 %i.035.i.i215
  %82 = ptrtoint ptr %arrayidx20.i.i224 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %c.2.i.i223, ptr %arrayidx20.i.i224, align 1
  %inc.i.i225 = add nuw i32 %i.035.i.i215, 1
  %exitcond.not.i.i226 = icmp eq i32 %inc.i.i225, %mul.i.i211
  br i1 %exitcond.not.i.i226, label %for.body.i.i227.if.end.i230_crit_edge, label %for.body.i.i227.for.body.i.i227_crit_edge

for.body.i.i227.for.body.i.i227_crit_edge:        ; preds = %for.body.i.i227
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i227

for.body.i.i227.if.end.i230_crit_edge:            ; preds = %for.body.i.i227
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i230

if.end.i230:                                      ; preds = %for.body.i.i227.if.end.i230_crit_edge, %if.then.i214.if.end.i230_crit_edge, %while.body.i206.if.end.i230_crit_edge
  %src.0.i228 = phi ptr [ %add.ptr.i205, %while.body.i206.if.end.i230_crit_edge ], [ %buf.0, %if.then.i214.if.end.i230_crit_edge ], [ %buf.0, %for.body.i.i227.if.end.i230_crit_edge ]
  %83 = ptrtoint ptr %height54 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %height54, align 4
  call void @fb_pad_unaligned_buffer(ptr noundef %dst.addr.032.i200, i32 noundef %and, ptr noundef %src.0.i228, i32 noundef %shr.i188, i32 noundef %84, i32 noundef %shift_high.034.i, i32 noundef %shift_low.033.i, i32 noundef %rem.i) #6
  %add.i = add nuw nsw i32 %shift_low.033.i, %rem.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i)
  %cmp.i229 = icmp ult i32 %add.i, 8
  %sub.i = sext i1 %cmp.i229 to i32
  %cond9.i = add nsw i32 %div173, %sub.i
  %add.ptr10.i = getelementptr i8, ptr %dst.addr.032.i200, i32 %cond9.i
  %and11.i = and i32 %add.i, 7
  %sub12.i = sub nuw nsw i32 8, %and11.i
  %tobool4.not.i = icmp eq i32 %dec35.i, 0
  br i1 %tobool4.not.i, label %if.end.i230.if.end85_crit_edge, label %if.end.i230.while.body.i206_crit_edge

if.end.i230.while.body.i206_crit_edge:            ; preds = %if.end.i230
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i206

if.end.i230.if.end85_crit_edge:                   ; preds = %if.end.i230
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.end85:                                         ; preds = %if.end.i230.if.end85_crit_edge, %if.else84.if.end85_crit_edge, %if.end11.i.if.end85_crit_edge, %if.then83.if.end85_crit_edge
  %85 = ptrtoint ptr %fbops.i231 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fbops.i231, align 4
  %fb_imageblit.i232 = getelementptr inbounds %struct.fb_ops, ptr %86, i32 0, i32 13
  %87 = ptrtoint ptr %fb_imageblit.i232 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fb_imageblit.i232, align 4
  call void %88(ptr noundef %info, ptr noundef nonnull %image) #6
  %89 = ptrtoint ptr %width71 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %width71, align 4
  %91 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %image, align 4
  %add88 = add i32 %92, %90
  store i32 %add88, ptr %image, align 4
  %sub89 = sub i32 %count.addr.0246, %41
  %idx.neg = sub i32 0, %41
  %add.ptr90 = getelementptr i16, ptr %s.addr.0247, i32 %idx.neg
  %tobool63.not = icmp eq i32 %sub89, 0
  br i1 %tobool63.not, label %if.end85.while.end_crit_edge, label %if.end85.while.body_crit_edge

if.end85.while.body_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end85.while.end_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end85.while.end_crit_edge, %if.end61.while.end_crit_edge
  %tobool92.not = icmp eq ptr %buf.0, null
  br i1 %tobool92.not, label %while.end.cleanup_crit_edge, label %if.then95, !prof !9

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then95:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %buf.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %while.end.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %cond.end37.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %image) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ud_clear_margins(ptr nocapture noundef readonly %vc, ptr noundef %info, i32 noundef %color, i32 noundef %bottom_only) #1 align 64 {
entry:
  %region = alloca %struct.fb_fillrect, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28
  %0 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vc_font, align 4
  %height = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %4 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %var, align 4
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %6 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vc_cols, align 4
  %mul = mul i32 %7, %1
  %sub = sub i32 %5, %mul
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yres, align 4
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 5
  %10 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vc_rows, align 4
  %mul3 = mul i32 %11, %3
  %sub4 = sub i32 %9, %mul3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %region) #6
  %12 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 1
  %13 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 2
  %14 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 3
  %15 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 4
  %16 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 5
  %17 = call ptr @memset(ptr %region, i32 255, i32 16)
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %color, ptr %15, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp sgt i32 %sub, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bottom_only)
  %tobool.not = icmp eq i32 %bottom_only, 0
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %12, align 4
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %21 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xoffset, align 4
  %23 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %region, align 4
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %13, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %25 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %yres_virtual, align 4
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %14, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %28 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fbops, align 4
  %fb_fillrect = getelementptr inbounds %struct.fb_ops, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %fb_fillrect to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fb_fillrect, align 4
  call void %31(ptr noundef %info, ptr noundef nonnull %region) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4)
  %cmp10 = icmp sgt i32 %sub4, 0
  br i1 %cmp10, label %if.then11, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %32 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %yoffset, align 4
  %34 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %12, align 4
  %xoffset15 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %35 = ptrtoint ptr %xoffset15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %xoffset15, align 4
  %37 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %region, align 4
  %38 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub4, ptr %14, align 4
  %39 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %var, align 4
  %41 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %13, align 4
  %fbops21 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %42 = ptrtoint ptr %fbops21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fbops21, align 4
  %fb_fillrect22 = getelementptr inbounds %struct.fb_ops, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %fb_fillrect22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fb_fillrect22, align 4
  call void %45(ptr noundef %info, ptr noundef nonnull %region) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then11, %if.end.if.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %region) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ud_cursor(ptr nocapture noundef readonly %vc, ptr noundef %info, i32 noundef %mode, i32 noundef %fg, i32 noundef %bg) #1 align 64 {
entry:
  %cursor = alloca %struct.fb_cursor, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cursor) #6
  %0 = call ptr @memset(ptr %cursor, i32 255, i32 72)
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 29
  %1 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fbcon_par, align 4
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %3 = ptrtoint ptr %vc_hi_font_mask to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vc_hi_font_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  %conv1 = select i1 %tobool.not, i32 255, i32 511
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28
  %5 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vc_font, align 4
  %add = add i32 %6, 7
  %shr = lshr i32 %add, 3
  %p = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 10
  %7 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p, align 4
  %state = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 1
  %y2 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %y2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %y2, align 4
  %vrows.i = getelementptr inbounds %struct.fbcon_display, ptr %8, i32 0, i32 5
  %11 = ptrtoint ptr %vrows.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vrows.i, align 4
  %yscroll.i = getelementptr inbounds %struct.fbcon_display, ptr %8, i32 0, i32 4
  %13 = ptrtoint ptr %yscroll.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %yscroll.i, align 4
  %conv.i = sext i16 %14 to i32
  %add.i = add i32 %10, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %12)
  %cmp.i = icmp slt i32 %add.i, %12
  %sub.i = select i1 %cmp.i, i32 0, i32 %12
  %cond.i.neg = sub i32 %sub.i, %add.i
  %vc_cursor_type = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 23
  %15 = ptrtoint ptr %vc_cursor_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vc_cursor_type, align 4
  %scrollmode.i = getelementptr inbounds %struct.fbcon_display, ptr %8, i32 0, i32 2
  %17 = ptrtoint ptr %scrollmode.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %scrollmode.i, align 4
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %18, label %lor.lhs.false26 [
    i16 4, label %entry.cond.true28.sink.split_crit_edge
    i16 1, label %entry.cond.true28.sink.split_crit_edge547
  ]

entry.cond.true28.sink.split_crit_edge547:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true28.sink.split

entry.cond.true28.sink.split_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true28.sink.split

lor.lhs.false26:                                  ; preds = %entry
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %20 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %20)
  %cond13510 = load i32, ptr %yres_virtual, align 4
  %xpanstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 6
  %21 = ptrtoint ptr %xpanstep to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %xpanstep, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool27.not = icmp eq i16 %22, 0
  br i1 %tobool27.not, label %lor.lhs.false26.cond.true28_crit_edge, label %cond.false30

lor.lhs.false26.cond.true28_crit_edge:            ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true28

cond.true28.sink.split:                           ; preds = %entry.cond.true28.sink.split_crit_edge, %entry.cond.true28.sink.split_crit_edge547
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %23)
  %cond13 = load i32, ptr %yres, align 4
  br label %cond.true28

cond.true28:                                      ; preds = %cond.true28.sink.split, %lor.lhs.false26.cond.true28_crit_edge
  %cond13512 = phi i32 [ %cond13510, %lor.lhs.false26.cond.true28_crit_edge ], [ %cond13, %cond.true28.sink.split ]
  %var29 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  br label %cond.end32

cond.false30:                                     ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #8
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false30, %cond.true28
  %cond13511 = phi i32 [ %cond13512, %cond.true28 ], [ %cond13510, %cond.false30 ]
  %cond33.in = phi ptr [ %var29, %cond.true28 ], [ %xres_virtual, %cond.false30 ]
  %24 = ptrtoint ptr %cond33.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %cond33 = load i32, ptr %cond33.in, align 4
  %fontbuffer = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 23
  %25 = ptrtoint ptr %fontbuffer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fontbuffer, align 4
  %tobool34.not = icmp eq ptr %26, null
  br i1 %tobool34.not, label %cond.end32.cleanup338_crit_edge, label %if.end

cond.end32.cleanup338_crit_edge:                  ; preds = %cond.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup338

if.end:                                           ; preds = %cond.end32
  %27 = ptrtoint ptr %cursor to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %cursor, align 4
  %vc_pos = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 26
  %28 = ptrtoint ptr %vc_pos to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vc_pos, align 4
  %30 = inttoptr i32 %29 to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %30, align 2
  %conv35 = zext i16 %32 to i32
  %var.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %fix.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call.i = tail call i32 @fb_get_color_depth(ptr noundef %var.i, ptr noundef %fix.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i469 = icmp eq i32 %call.i, 1
  %and.i = lshr i32 %conv35, 10
  %33 = and i32 %and.i, 3
  %and9.i = lshr i32 %conv35, 7
  %34 = and i32 %and9.i, 4
  %35 = or i32 %33, %34
  %attribute.2.i = select i1 %cmp.i469, i32 %35, i32 0
  %36 = ptrtoint ptr %fontbuffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fontbuffer, align 4
  %and40 = and i32 %conv1, %conv35
  %height = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %38 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height, align 4
  %mul = mul i32 %and40, %shr
  %mul42 = mul i32 %mul, %39
  %add.ptr = getelementptr i8, ptr %37, i32 %mul42
  %image = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5
  %data = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 7
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %cmp43.not = icmp eq ptr %41, %add.ptr
  br i1 %cmp43.not, label %lor.lhs.false45, label %if.end.if.then47_crit_edge

if.end.if.then47_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47

lor.lhs.false45:                                  ; preds = %if.end
  %cursor_reset = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %42 = ptrtoint ptr %cursor_reset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cursor_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool46.not = icmp eq i32 %43, 0
  br i1 %tobool46.not, label %lor.lhs.false45.if.end54_crit_edge, label %lor.lhs.false45.if.then47_crit_edge

lor.lhs.false45.if.then47_crit_edge:              ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then47

lor.lhs.false45.if.end54_crit_edge:               ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then47:                                        ; preds = %lor.lhs.false45.if.then47_crit_edge, %if.end.if.then47_crit_edge
  %44 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr, ptr %data, align 4
  %45 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %cursor, align 4
  %47 = or i16 %46, 1
  store i16 %47, ptr %cursor, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %lor.lhs.false45.if.end54_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attribute.2.i)
  %tobool55.not = icmp eq i32 %attribute.2.i, 0
  br i1 %tobool55.not, label %if.end54.if.end64_crit_edge, label %if.then56

if.end54.if.end64_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then56:                                        ; preds = %if.end54
  %48 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %height, align 4
  %50 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shr, i32 %49) #6
  %51 = extractvalue { i32, i1 } %50, 1
  br i1 %51, label %if.then56.cleanup338_crit_edge, label %if.end7.i, !prof !10

if.then56.cleanup338_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup338

if.end7.i:                                        ; preds = %if.then56
  %52 = extractvalue { i32, i1 } %50, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %52, i32 noundef 2592) #9
  %tobool60.not = icmp eq ptr %call8.i, null
  br i1 %tobool60.not, label %if.end7.i.cleanup338_crit_edge, label %if.end62

if.end7.i.cleanup338_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup338

if.end62:                                         ; preds = %if.end7.i
  %cursor_data = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 22
  %53 = ptrtoint ptr %cursor_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cursor_data, align 4
  tail call void @kfree(ptr noundef %54) #6
  %55 = ptrtoint ptr %cursor_data to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call8.i, ptr %cursor_data, align 4
  %56 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %57)
  %cmp.i471 = icmp ult i32 %57, 10
  %cond.i472 = select i1 %cmp.i471, i32 1, i32 2
  %58 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %vc_font, align 4
  %add.i473 = add i32 %59, 7
  %shr.i = lshr i32 %add.i473, 3
  %mul.i = mul i32 %shr.i, %57
  %mul5.i = mul nuw nsw i32 %shr.i, %cond.i472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp634.not.i = icmp eq i32 %mul.i, 0
  br i1 %cmp634.not.i, label %if.end62.if.end64_crit_edge, label %for.body.lr.ph.i

if.end62.if.end64_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

for.body.lr.ph.i:                                 ; preds = %if.end62
  %and.i474 = and i32 %attribute.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i474)
  %tobool.not.i = icmp ne i32 %and.i474, 0
  %and8.i = and i32 %attribute.2.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %and14.i = shl i32 %attribute.2.i, 30
  %sext.i = ashr i32 %and14.i, 31
  %neg.i = trunc i32 %sext.i to i8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.035.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %add.ptr, i32 %i.035.i
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.035.i, i32 %mul5.i)
  %cmp7.i = icmp slt i32 %i.035.i, %mul5.i
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp7.i, i1 false
  %c.0.i = select i1 %or.cond.i, i8 -1, i8 %61
  %shl.i = shl i8 %c.0.i, 1
  %or.i = select i1 %tobool9.not.i, i8 0, i8 %shl.i
  %c.1.i = or i8 %or.i, %c.0.i
  %c.2.i = xor i8 %c.1.i, %neg.i
  %arrayidx20.i = getelementptr i8, ptr %call8.i, i32 %i.035.i
  %62 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %c.2.i, ptr %arrayidx20.i, align 1
  %inc.i = add nuw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %mul.i
  br i1 %exitcond.not.i, label %for.body.i.if.end64_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.if.end64_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.end64:                                         ; preds = %for.body.i.if.end64_crit_edge, %if.end62.if.end64_crit_edge, %if.end54.if.end64_crit_edge
  %src.1 = phi ptr [ %add.ptr, %if.end54.if.end64_crit_edge ], [ %call8.i, %if.end62.if.end64_crit_edge ], [ %call8.i, %for.body.i.if.end64_crit_edge ]
  %fg_color = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 4
  %63 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fg_color, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %fg)
  %cmp67.not = icmp eq i32 %64, %fg
  br i1 %cmp67.not, label %lor.lhs.false69, label %if.end64.if.then77_crit_edge

if.end64.if.then77_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then77

lor.lhs.false69:                                  ; preds = %if.end64
  %bg_color = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 5
  %65 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bg_color, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %bg)
  %cmp72.not = icmp eq i32 %66, %bg
  br i1 %cmp72.not, label %lor.lhs.false74, label %lor.lhs.false69.if.then77_crit_edge

lor.lhs.false69.if.then77_crit_edge:              ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then77

lor.lhs.false74:                                  ; preds = %lor.lhs.false69
  %cursor_reset75 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %67 = ptrtoint ptr %cursor_reset75 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cursor_reset75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool76.not = icmp eq i32 %68, 0
  br i1 %tobool76.not, label %lor.lhs.false74.if.end88_crit_edge, label %lor.lhs.false74.if.then77_crit_edge

lor.lhs.false74.if.then77_crit_edge:              ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then77

lor.lhs.false74.if.end88_crit_edge:               ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

if.then77:                                        ; preds = %lor.lhs.false74.if.then77_crit_edge, %lor.lhs.false69.if.then77_crit_edge, %if.end64.if.then77_crit_edge
  %69 = ptrtoint ptr %fg_color to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %fg, ptr %fg_color, align 4
  %bg_color83 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 5
  %70 = ptrtoint ptr %bg_color83 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %bg, ptr %bg_color83, align 4
  %71 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %cursor, align 4
  %73 = or i16 %72, 8
  store i16 %73, ptr %cursor, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then77, %lor.lhs.false74.if.end88_crit_edge
  %height91 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 3
  %74 = ptrtoint ptr %height91 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %height91, align 4
  %76 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp94.not = icmp eq i32 %75, %77
  br i1 %cmp94.not, label %lor.lhs.false96, label %if.end88.if.then107_crit_edge

if.end88.if.then107_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then107

lor.lhs.false96:                                  ; preds = %if.end88
  %width99 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 2
  %78 = ptrtoint ptr %width99 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %width99, align 4
  %80 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %vc_font, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp102.not = icmp eq i32 %79, %81
  br i1 %cmp102.not, label %lor.lhs.false104, label %lor.lhs.false96.if.then107_crit_edge

lor.lhs.false96.if.then107_crit_edge:             ; preds = %lor.lhs.false96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then107

lor.lhs.false104:                                 ; preds = %lor.lhs.false96
  %cursor_reset105 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %82 = ptrtoint ptr %cursor_reset105 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cursor_reset105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool106.not = icmp eq i32 %83, 0
  br i1 %tobool106.not, label %lor.lhs.false104.if.end122_crit_edge, label %lor.lhs.false104.if.then107_crit_edge

lor.lhs.false104.if.then107_crit_edge:            ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then107

lor.lhs.false104.if.end122_crit_edge:             ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end122

if.then107:                                       ; preds = %lor.lhs.false104.if.then107_crit_edge, %lor.lhs.false96.if.then107_crit_edge, %if.end88.if.then107_crit_edge
  %84 = ptrtoint ptr %height91 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %77, ptr %height91, align 4
  %85 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %vc_font, align 4
  %width117 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 2
  %87 = ptrtoint ptr %width117 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %width117, align 4
  %88 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %cursor, align 4
  %90 = or i16 %89, 32
  store i16 %90, ptr %cursor, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then107, %lor.lhs.false104.if.end122_crit_edge
  %91 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %height, align 4
  %mul125.neg546 = mul i32 %cond.i.neg, %92
  %add128.neg = sub i32 %cond13511, %92
  %sub = add i32 %add128.neg, %mul125.neg546
  %93 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %state, align 4
  %95 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %vc_font, align 4
  %mul132 = mul i32 %96, %94
  %97 = add i32 %96, %mul132
  %sub136 = sub i32 %cond33, %97
  %98 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %image, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %sub136)
  %cmp140.not = icmp eq i32 %99, %sub136
  br i1 %cmp140.not, label %lor.lhs.false142, label %if.end122.if.then151_crit_edge

if.end122.if.then151_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then151

lor.lhs.false142:                                 ; preds = %if.end122
  %dy145 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 1
  %100 = ptrtoint ptr %dy145 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dy145, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %sub)
  %cmp146.not = icmp eq i32 %101, %sub
  br i1 %cmp146.not, label %lor.lhs.false148, label %lor.lhs.false142.if.then151_crit_edge

lor.lhs.false142.if.then151_crit_edge:            ; preds = %lor.lhs.false142
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then151

lor.lhs.false148:                                 ; preds = %lor.lhs.false142
  %cursor_reset149 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %102 = ptrtoint ptr %cursor_reset149 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cursor_reset149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool150.not = icmp eq i32 %103, 0
  br i1 %tobool150.not, label %lor.lhs.false148.if.end162_crit_edge, label %lor.lhs.false148.if.then151_crit_edge

lor.lhs.false148.if.then151_crit_edge:            ; preds = %lor.lhs.false148
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then151

lor.lhs.false148.if.end162_crit_edge:             ; preds = %lor.lhs.false148
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end162

if.then151:                                       ; preds = %lor.lhs.false148.if.then151_crit_edge, %lor.lhs.false142.if.then151_crit_edge, %if.end122.if.then151_crit_edge
  %104 = ptrtoint ptr %image to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %sub136, ptr %image, align 4
  %dy157 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 1
  %105 = ptrtoint ptr %dy157 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %sub, ptr %dy157, align 4
  %106 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %cursor, align 4
  %108 = or i16 %107, 2
  store i16 %108, ptr %cursor, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.then151, %lor.lhs.false148.if.end162_crit_edge
  %hot = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 4
  %109 = ptrtoint ptr %hot to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %hot, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool166.not = icmp eq i16 %110, 0
  br i1 %tobool166.not, label %lor.lhs.false167, label %if.end162.if.then176_crit_edge

if.end162.if.then176_crit_edge:                   ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then176

lor.lhs.false167:                                 ; preds = %if.end162
  %y170 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 4, i32 1
  %111 = ptrtoint ptr %y170 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %y170, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool172.not = icmp eq i16 %112, 0
  br i1 %tobool172.not, label %lor.lhs.false173, label %lor.lhs.false167.if.then176_crit_edge

lor.lhs.false167.if.then176_crit_edge:            ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then176

lor.lhs.false173:                                 ; preds = %lor.lhs.false167
  %cursor_reset174 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %113 = ptrtoint ptr %cursor_reset174 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cursor_reset174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool175.not = icmp eq i32 %114, 0
  br i1 %tobool175.not, label %lor.lhs.false173.if.end186_crit_edge, label %lor.lhs.false173.if.then176_crit_edge

lor.lhs.false173.if.then176_crit_edge:            ; preds = %lor.lhs.false173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then176

lor.lhs.false173.if.end186_crit_edge:             ; preds = %lor.lhs.false173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186

if.then176:                                       ; preds = %lor.lhs.false173.if.then176_crit_edge, %lor.lhs.false167.if.then176_crit_edge, %if.end162.if.then176_crit_edge
  %115 = ptrtoint ptr %hot to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %hot, align 4
  %116 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %cursor, align 4
  %118 = or i16 %117, 4
  store i16 %118, ptr %cursor, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.then176, %lor.lhs.false173.if.end186_crit_edge
  %119 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %cursor, align 4
  %121 = and i16 %120, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %tobool190.not = icmp eq i16 %121, 0
  br i1 %tobool190.not, label %lor.lhs.false191, label %if.end186.if.then203_crit_edge

if.end186.if.then203_crit_edge:                   ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then203

lor.lhs.false191:                                 ; preds = %if.end186
  %122 = ptrtoint ptr %vc_cursor_type to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %vc_cursor_type, align 4
  %124 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %p, align 4
  %cursor_shape = getelementptr inbounds %struct.fbcon_display, ptr %125, i32 0, i32 6
  %126 = ptrtoint ptr %cursor_shape to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %cursor_shape, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %127)
  %cmp194.not = icmp eq i32 %123, %127
  br i1 %cmp194.not, label %lor.lhs.false196, label %lor.lhs.false191.if.then203_crit_edge

lor.lhs.false191.if.then203_crit_edge:            ; preds = %lor.lhs.false191
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then203

lor.lhs.false196:                                 ; preds = %lor.lhs.false191
  %mask = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 3
  %128 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mask, align 4
  %cmp198 = icmp eq ptr %129, null
  br i1 %cmp198, label %lor.lhs.false196.if.then203_crit_edge, label %lor.lhs.false200

lor.lhs.false196.if.then203_crit_edge:            ; preds = %lor.lhs.false196
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then203

lor.lhs.false200:                                 ; preds = %lor.lhs.false196
  %cursor_reset201 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %130 = ptrtoint ptr %cursor_reset201 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %cursor_reset201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool202.not = icmp eq i32 %131, 0
  br i1 %tobool202.not, label %lor.lhs.false200.if.end267_crit_edge, label %lor.lhs.false200.if.then203_crit_edge

lor.lhs.false200.if.then203_crit_edge:            ; preds = %lor.lhs.false200
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then203

lor.lhs.false200.if.end267_crit_edge:             ; preds = %lor.lhs.false200
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end267

if.then203:                                       ; preds = %lor.lhs.false200.if.then203_crit_edge, %lor.lhs.false196.if.then203_crit_edge, %lor.lhs.false191.if.then203_crit_edge, %if.end186.if.then203_crit_edge
  %132 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %height, align 4
  %134 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shr, i32 %133) #6
  %135 = extractvalue { i32, i1 } %134, 1
  br i1 %135, label %if.then203.cleanup338_crit_edge, label %if.end7.i506, !prof !10

if.then203.cleanup338_crit_edge:                  ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup338

if.end7.i506:                                     ; preds = %if.then203
  %136 = extractvalue { i32, i1 } %134, 0
  %call8.i505 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %136, i32 noundef 2592) #9
  %tobool208.not = icmp eq ptr %call8.i505, null
  br i1 %tobool208.not, label %if.end7.i506.cleanup338_crit_edge, label %if.end210

if.end7.i506.cleanup338_crit_edge:                ; preds = %if.end7.i506
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup338

if.end210:                                        ; preds = %if.end7.i506
  %mask212 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 3
  %137 = ptrtoint ptr %mask212 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mask212, align 4
  tail call void @kfree(ptr noundef %138) #6
  %139 = ptrtoint ptr %mask212 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call8.i505, ptr %mask212, align 4
  %140 = ptrtoint ptr %vc_cursor_type to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %vc_cursor_type, align 4
  %142 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %p, align 4
  %cursor_shape217 = getelementptr inbounds %struct.fbcon_display, ptr %143, i32 0, i32 6
  %144 = ptrtoint ptr %cursor_shape217 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %141, ptr %cursor_shape217, align 4
  %145 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %cursor, align 4
  %147 = or i16 %146, 16
  store i16 %147, ptr %cursor, align 4
  %148 = load ptr, ptr %p, align 4
  %cursor_shape223 = getelementptr inbounds %struct.fbcon_display, ptr %148, i32 0, i32 6
  %149 = ptrtoint ptr %cursor_shape223 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %cursor_shape223, align 4
  %and224 = and i32 %150, 15
  %151 = zext i32 %and224 to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %and224, label %sw.default [
    i32 1, label %if.end210.sw.epilog_crit_edge
    i32 2, label %sw.bb225
    i32 3, label %sw.bb231
    i32 4, label %sw.bb234
    i32 5, label %sw.bb238
  ]

if.end210.sw.epilog_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb225:                                         ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #8
  %152 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %153)
  %cmp228 = icmp ult i32 %153, 10
  %cond230 = select i1 %cmp228, i32 1, i32 2
  br label %sw.epilog

sw.bb231:                                         ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #8
  %154 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %height, align 4
  %div = udiv i32 %155, 3
  br label %sw.epilog

sw.bb234:                                         ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #8
  %156 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %height, align 4
  %shr237 = lshr i32 %157, 1
  br label %sw.epilog

sw.bb238:                                         ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #8
  %158 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %height, align 4
  %shl = shl i32 %159, 1
  %div241 = udiv i32 %shl, 3
  br label %sw.epilog

sw.default:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #8
  %160 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %height, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb238, %sw.bb234, %sw.bb231, %sw.bb225, %if.end210.sw.epilog_crit_edge
  %cur_height.0 = phi i32 [ %161, %sw.default ], [ %div241, %sw.bb238 ], [ %shr237, %sw.bb234 ], [ %div, %sw.bb231 ], [ %cond230, %sw.bb225 ], [ 0, %if.end210.sw.epilog_crit_edge ]
  %mul245 = mul i32 %cur_height.0, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul245)
  %tobool246.not540 = icmp eq i32 %mul245, 0
  br i1 %tobool246.not540, label %sw.epilog.while.end_crit_edge, label %while.body.preheader

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.preheader:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %162 = call ptr @memset(ptr %call8.i505, i32 255, i32 %mul245)
  br label %while.end

while.end:                                        ; preds = %while.body.preheader, %sw.epilog.while.end_crit_edge
  %163 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %height, align 4
  %sub249 = sub i32 %164, %cur_height.0
  %mul250 = mul i32 %sub249, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul250)
  %tobool253.not543 = icmp eq i32 %mul250, 0
  br i1 %tobool253.not543, label %while.end.if.end267_crit_edge, label %while.body254.preheader

while.end.if.end267_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end267

while.body254.preheader:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %uglygep = getelementptr i8, ptr %call8.i505, i32 %mul245
  %165 = call ptr @memset(ptr %uglygep, i32 0, i32 %mul250)
  br label %if.end267

if.end267:                                        ; preds = %while.body254.preheader, %while.end.if.end267_crit_edge, %lor.lhs.false200.if.end267_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cond356 = icmp eq i32 %mode, 2
  %166 = trunc i32 %16 to i16
  %167 = lshr i16 %166, 4
  %168 = and i16 %167, 1
  %169 = xor i16 %168, 1
  %.sink = select i1 %cond356, i16 0, i16 %169
  %170 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 1
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %.sink, ptr %170, align 2
  %image278 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5
  %data279 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 7
  %172 = ptrtoint ptr %data279 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %src.1, ptr %data279, align 4
  %173 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %fg_color, align 4
  %fg_color284 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 4
  %175 = ptrtoint ptr %fg_color284 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %fg_color284, align 4
  %bg_color287 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 5
  %176 = ptrtoint ptr %bg_color287 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %bg_color287, align 4
  %bg_color289 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 5
  %178 = ptrtoint ptr %bg_color289 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %bg_color289, align 4
  %179 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %image, align 4
  %181 = ptrtoint ptr %image278 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %image278, align 4
  %dy297 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 1
  %182 = ptrtoint ptr %dy297 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %dy297, align 4
  %dy299 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 1
  %184 = ptrtoint ptr %dy299 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %dy299, align 4
  %185 = ptrtoint ptr %height91 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %height91, align 4
  %height304 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 3
  %187 = ptrtoint ptr %height304 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %height304, align 4
  %width307 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 2
  %188 = ptrtoint ptr %width307 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %width307, align 4
  %width309 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 2
  %190 = ptrtoint ptr %width309 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %width309, align 4
  %191 = ptrtoint ptr %hot to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %hot, align 4
  %hot313 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 4
  %193 = ptrtoint ptr %hot313 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %192, ptr %hot313, align 4
  %y317 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 4, i32 1
  %194 = ptrtoint ptr %y317 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %y317, align 2
  %y319 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 4, i32 1
  %196 = ptrtoint ptr %y319 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %195, ptr %y319, align 2
  %mask321 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 3
  %197 = ptrtoint ptr %mask321 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %mask321, align 4
  %mask322 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 3
  %199 = ptrtoint ptr %mask322 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %198, ptr %mask322, align 4
  %enable325 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 1
  %200 = ptrtoint ptr %enable325 to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %.sink, ptr %enable325, align 2
  %depth = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 6
  %201 = ptrtoint ptr %depth to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 1, ptr %depth, align 4
  %rop = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 2
  %202 = ptrtoint ptr %rop to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 1, ptr %rop, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %203 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %fbops, align 4
  %fb_cursor = getelementptr inbounds %struct.fb_ops, ptr %204, i32 0, i32 14
  %205 = ptrtoint ptr %fb_cursor to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %fb_cursor, align 4
  %tobool327.not = icmp eq ptr %206, null
  br i1 %tobool327.not, label %if.end267.if.then334_crit_edge, label %if.then328

if.end267.if.then334_crit_edge:                   ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then334

if.then328:                                       ; preds = %if.end267
  %call331 = call i32 %206(ptr noundef %info, ptr noundef nonnull %cursor) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call331)
  %phi.cmp = icmp eq i32 %call331, 0
  br i1 %phi.cmp, label %if.then328.if.end336_crit_edge, label %if.then328.if.then334_crit_edge

if.then328.if.then334_crit_edge:                  ; preds = %if.then328
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then334

if.then328.if.end336_crit_edge:                   ; preds = %if.then328
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end336

if.then334:                                       ; preds = %if.then328.if.then334_crit_edge, %if.end267.if.then334_crit_edge
  %call335 = call i32 @soft_cursor(ptr noundef %info, ptr noundef nonnull %cursor) #6
  br label %if.end336

if.end336:                                        ; preds = %if.then334, %if.then328.if.end336_crit_edge
  %cursor_reset337 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %207 = ptrtoint ptr %cursor_reset337 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 0, ptr %cursor_reset337, align 4
  br label %cleanup338

cleanup338:                                       ; preds = %if.end336, %if.end7.i506.cleanup338_crit_edge, %if.then203.cleanup338_crit_edge, %if.end7.i.cleanup338_crit_edge, %if.then56.cleanup338_crit_edge, %cond.end32.cleanup338_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cursor) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ud_update_start(ptr noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 29
  %0 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbcon_par, align 4
  %p = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  %scrollmode.i = getelementptr inbounds %struct.fbcon_display, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %scrollmode.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %scrollmode.i, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %5, label %lor.lhs.false20 [
    i16 4, label %entry.cond.true21.sink.split_crit_edge
    i16 1, label %entry.cond.true21.sink.split_crit_edge100
  ]

entry.cond.true21.sink.split_crit_edge100:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true21.sink.split

entry.cond.true21.sink.split_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true21.sink.split

lor.lhs.false20:                                  ; preds = %entry
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %7 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %7)
  %cond86 = load i32, ptr %yres_virtual, align 4
  %xpanstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 6
  %8 = ptrtoint ptr %xpanstep to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %xpanstep, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %lor.lhs.false20.cond.true21_crit_edge, label %cond.false23

lor.lhs.false20.cond.true21_crit_edge:            ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true21

cond.true21.sink.split:                           ; preds = %entry.cond.true21.sink.split_crit_edge, %entry.cond.true21.sink.split_crit_edge100
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond = load i32, ptr %yres, align 4
  br label %cond.true21

cond.true21:                                      ; preds = %cond.true21.sink.split, %lor.lhs.false20.cond.true21_crit_edge
  %cond88 = phi i32 [ %cond86, %lor.lhs.false20.cond.true21_crit_edge ], [ %cond, %cond.true21.sink.split ]
  %var22 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  br label %cond.end25

cond.false23:                                     ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #8
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false23, %cond.true21
  %cond87 = phi i32 [ %cond88, %cond.true21 ], [ %cond86, %cond.false23 ]
  %cond26.in = phi ptr [ %var22, %cond.true21 ], [ %xres_virtual, %cond.false23 ]
  %11 = ptrtoint ptr %cond26.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %cond26 = load i32, ptr %cond26.in, align 4
  %var27 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %12 = ptrtoint ptr %var27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %var27, align 4
  %xoffset30 = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 7, i32 4
  %14 = ptrtoint ptr %xoffset30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xoffset30, align 4
  %yres33 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %yres33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %yres33, align 4
  %yoffset36 = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 7, i32 5
  %18 = ptrtoint ptr %yoffset36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yoffset36, align 4
  %20 = add i32 %17, %19
  %sub37 = sub i32 %cond87, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub37)
  %cmp38 = icmp slt i32 %sub37, 0
  %add = select i1 %cmp38, i32 %cond87, i32 0
  %spec.select = add i32 %add, %sub37
  %var29 = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 7
  %21 = add i32 %13, %15
  %sub31 = sub i32 %cond26, %21
  %22 = ptrtoint ptr %xoffset30 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub31, ptr %xoffset30, align 4
  %23 = ptrtoint ptr %yoffset36 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select, ptr %yoffset36, align 4
  %call45 = tail call i32 @fb_pan_display(ptr noundef %info, ptr noundef %var29) #6
  %xoffset47 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %24 = ptrtoint ptr %xoffset47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xoffset47, align 4
  %26 = ptrtoint ptr %xoffset30 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %xoffset30, align 4
  %yoffset51 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %27 = ptrtoint ptr %yoffset51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %yoffset51, align 4
  %29 = ptrtoint ptr %yoffset36 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %yoffset36, align 4
  %vmode = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %30 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vmode, align 4
  %vmode56 = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 7, i32 25
  %32 = ptrtoint ptr %vmode56 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %vmode56, align 4
  ret i32 %call45
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_get_buffer_offset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_color_depth(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_pad_aligned_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_pad_unaligned_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @soft_cursor(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_pan_display(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
