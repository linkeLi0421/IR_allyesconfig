; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/core/fbcon_ccw.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fbcon_ccw.c"
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
define dso_local void @fbcon_rotate_ccw(ptr nocapture noundef writeonly %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ccw_bmove, ptr %ops, align 4
  %clear = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 1
  %1 = ptrtoint ptr %clear to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ccw_clear, ptr %clear, align 4
  %putcs = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 2
  %2 = ptrtoint ptr %putcs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ccw_putcs, ptr %putcs, align 4
  %clear_margins = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 3
  %3 = ptrtoint ptr %clear_margins to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ccw_clear_margins, ptr %clear_margins, align 4
  %cursor = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 4
  %4 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ccw_cursor, ptr %cursor, align 4
  %update_start = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 5
  %5 = ptrtoint ptr %update_start to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ccw_update_start, ptr %update_start, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccw_bmove(ptr nocapture noundef readonly %vc, ptr noundef %info, i32 noundef %sy, i32 noundef %sx, i32 noundef %dy, i32 noundef %dx, i32 noundef %height, i32 noundef %width) #1 align 64 {
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
  switch i16 %5, label %cond.false [
    i16 4, label %entry.cond.true_crit_edge
    i16 1, label %entry.cond.true_crit_edge46
  ]

entry.cond.true_crit_edge46:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

entry.cond.true_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

cond.true:                                        ; preds = %entry.cond.true_crit_edge, %entry.cond.true_crit_edge46
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %yres, %cond.true ], [ %yres_virtual, %cond.false ]
  %7 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %8 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 4
  %9 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %10 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %11 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %12 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond = load i32, ptr %cond.in, align 4
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28
  %height8 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %13 = ptrtoint ptr %height8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height8, align 4
  %mul = mul i32 %14, %sy
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul, ptr %8, align 4
  %add = add i32 %width, %sx
  %16 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vc_font, align 4
  %mul12 = mul i32 %17, %add
  %sub = sub i32 %cond, %mul12
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %7, align 4
  %mul16 = mul i32 %14, %dy
  %19 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul16, ptr %area, align 4
  %add18 = add i32 %width, %dx
  %mul21 = mul i32 %17, %add18
  %sub22 = sub i32 %cond, %mul21
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub22, ptr %11, align 4
  %mul26 = mul i32 %14, %height
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul26, ptr %10, align 4
  %mul30 = mul i32 %17, %width
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul30, ptr %9, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %23 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fbops, align 4
  %fb_copyarea = getelementptr inbounds %struct.fb_ops, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %fb_copyarea to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fb_copyarea, align 4
  call void %26(ptr noundef %info, ptr noundef nonnull %area) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %area) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccw_clear(ptr noundef readonly %vc, ptr noundef %info, i32 noundef %sy, i32 noundef %sx, i32 noundef %height, i32 noundef %width) #1 align 64 {
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
  switch i16 %7, label %cond.false [
    i16 4, label %entry.cond.true_crit_edge
    i16 1, label %entry.cond.true_crit_edge36
  ]

entry.cond.true_crit_edge36:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

entry.cond.true_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

cond.true:                                        ; preds = %entry.cond.true_crit_edge, %entry.cond.true_crit_edge36
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond9.in = phi ptr [ %yres, %cond.true ], [ %yres_virtual, %cond.false ]
  %9 = ptrtoint ptr %cond9.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %cond9 = load i32, ptr %cond9.in, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  %cond = select i1 %tobool.not, i32 12, i32 13
  %tobool.not.i = icmp eq ptr %vc, null
  br i1 %tobool.not.i, label %cond.end.attr_col_ec.exit_crit_edge, label %if.end.i

cond.end.attr_col_ec.exit_crit_edge:              ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %attr_col_ec.exit

if.end.i:                                         ; preds = %cond.end
  %vc_can_do_color.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 37
  %10 = ptrtoint ptr %vc_can_do_color.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %vc_can_do_color.i, align 4
  %11 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool1.not.i = icmp eq i16 %11, 0
  br i1 %tobool1.not.i, label %if.end8.i, label %cond.end.i

cond.end.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %vc_video_erase_char4.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %12 = ptrtoint ptr %vc_video_erase_char4.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vc_video_erase_char4.i, align 4
  %conv5.i = zext i16 %13 to i32
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
  %14 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i.i, align 4
  %length2.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %16 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length2.i.i, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %15, i32 %17) #6
  %length4.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %19 = ptrtoint ptr %length4.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length4.i.i, align 4
  %21 = tail call i32 @llvm.umax.i32(i32 %20, i32 %18) #6
  %shl.i.i = shl i32 4095, %21
  %neg.i.i = and i32 %shl.i.i, 255
  %and.i.i = xor i32 %neg.i.i, 255
  %visual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %22 = ptrtoint ptr %visual.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %visual.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i = icmp eq i32 %23, 0
  %vc_video_erase_char13.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %24 = ptrtoint ptr %vc_video_erase_char13.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vc_video_erase_char13.i, align 4
  %26 = and i16 %25, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool16.not.i = icmp eq i16 %26, 0
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %cond27.i = select i1 %cmp.i, i32 0, i32 %and.i.i
  br label %attr_col_ec.exit

if.else.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %cond37.i = select i1 %cmp.i, i32 %and.i.i, i32 0
  br label %attr_col_ec.exit

attr_col_ec.exit:                                 ; preds = %if.else.i, %if.then17.i, %if.end8.i.attr_col_ec.exit_crit_edge, %cond.end.i, %cond.end.attr_col_ec.exit_crit_edge
  %retval.0.i = phi i32 [ %shr6.i, %cond.end.i ], [ 0, %cond.end.attr_col_ec.exit_crit_edge ], [ 0, %if.end8.i.attr_col_ec.exit_crit_edge ], [ %cond27.i, %if.then17.i ], [ %cond37.i, %if.else.i ]
  %27 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 5
  %28 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 4
  %29 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 3
  %30 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 2
  %31 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 1
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i, ptr %28, align 4
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28
  %height11 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %33 = ptrtoint ptr %height11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height11, align 4
  %mul = mul i32 %34, %sy
  %35 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul, ptr %region, align 4
  %add = add i32 %width, %sx
  %36 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vc_font, align 4
  %mul14 = mul i32 %37, %add
  %sub = sub i32 %cond9, %mul14
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub, ptr %31, align 4
  %mul17 = mul i32 %37, %width
  %39 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mul17, ptr %29, align 4
  %mul21 = mul i32 %34, %height
  %40 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul21, ptr %30, align 4
  %41 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %27, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %42 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fbops, align 4
  %fb_fillrect = getelementptr inbounds %struct.fb_ops, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %fb_fillrect to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fb_fillrect, align 4
  call void %45(ptr noundef %info, ptr noundef nonnull %region) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %region) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccw_putcs(ptr nocapture noundef readonly %vc, ptr noundef %info, ptr nocapture noundef readonly %s, i32 noundef %count, i32 noundef %yy, i32 noundef %xx, i32 noundef %fg, i32 noundef %bg) #1 align 64 {
entry:
  %image = alloca %struct.fb_image, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %image) #6
  %0 = getelementptr inbounds i8, ptr %image, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 29
  %2 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fbcon_par, align 4
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28
  %height = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %add = add i32 %5, 7
  %div121 = lshr i32 %add, 3
  %6 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vc_font, align 4
  %mul = mul i32 %div121, %7
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
  %14 = ptrtoint ptr %s to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %s, align 2
  %var.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %fix.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call.i = tail call i32 @fb_get_color_depth(ptr noundef %var.i, ptr noundef %fix.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i122 = icmp eq i32 %call.i, 1
  %conv.i = zext i16 %15 to i32
  %and.i = lshr i32 %conv.i, 10
  %16 = and i32 %and.i, 3
  %and9.i = lshr i32 %conv.i, 7
  %17 = and i32 %and9.i, 4
  %18 = or i32 %16, %17
  %attribute.2.i = select i1 %cmp.i122, i32 %18, i32 0
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
  switch i16 %22, label %cond.false [
    i16 4, label %entry.cond.true_crit_edge
    i16 1, label %entry.cond.true_crit_edge142
  ]

entry.cond.true_crit_edge142:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

entry.cond.true_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

cond.true:                                        ; preds = %entry.cond.true_crit_edge, %entry.cond.true_crit_edge142
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %yres, %cond.true ], [ %yres_virtual, %cond.false ]
  %fontbuffer = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 23
  %24 = ptrtoint ptr %fontbuffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fontbuffer, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %26 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %26)
  %cond = load i32, ptr %cond.in, align 4
  %fg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %27 = ptrtoint ptr %fg_color to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %fg, ptr %fg_color, align 4
  %bg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %28 = ptrtoint ptr %bg_color to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %bg, ptr %bg_color, align 4
  %29 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height, align 4
  %mul20 = mul i32 %30, %yy
  %31 = ptrtoint ptr %image to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul20, ptr %image, align 4
  %add21 = add i32 %xx, %count
  %32 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vc_font, align 4
  %mul24 = mul i32 %33, %add21
  %sub25 = sub i32 %cond, %mul24
  %dy = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %34 = ptrtoint ptr %dy to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub25, ptr %dy, align 4
  %width28 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %35 = ptrtoint ptr %width28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %30, ptr %width28, align 4
  %depth = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 6
  %36 = ptrtoint ptr %depth to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attribute.2.i)
  %tobool29.not = icmp eq i32 %attribute.2.i, 0
  br i1 %tobool29.not, label %if.end.if.end35_crit_edge, label %if.end8.i

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #9
  %tobool32.not = icmp eq ptr %call9.i, null
  br i1 %tobool32.not, label %if.end8.i.cleanup_crit_edge, label %if.end8.i.if.end35_crit_edge

if.end8.i.if.end35_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %if.end8.i.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %buf.0 = phi ptr [ %call9.i, %if.end8.i.if.end35_crit_edge ], [ null, %if.end.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool37.not133 = icmp eq i32 %count, 0
  br i1 %tobool37.not133, label %if.end35.while.end_crit_edge, label %while.body.lr.ph

if.end35.while.end_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end35
  %sub36 = add i32 %count, -1
  %add.ptr = getelementptr i16, ptr %s, i32 %sub36
  %height45 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %neg = sub i32 0, %11
  %neg52 = sub i32 0, %13
  %data = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %vc_hi_font_mask.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %and.i.i = and i32 %attribute.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool22.not.i.i = icmp eq i32 %and.i.i, 0
  %and45.i.i = and i32 %attribute.2.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i.i)
  %tobool46.not.i.i = icmp eq i32 %and45.i.i, 0
  %and55.i.i = shl i32 %attribute.2.i, 30
  %sext.i.i = ashr i32 %and55.i.i, 31
  %neg59.i.i = trunc i32 %sext.i.i to i8
  %fbops.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  br label %while.body

while.body:                                       ; preds = %ccw_putcs_aligned.exit.while.body_crit_edge, %while.body.lr.ph
  %s.addr.0135 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %add.ptr60, %ccw_putcs_aligned.exit.while.body_crit_edge ]
  %count.addr.0134 = phi i32 [ %count, %while.body.lr.ph ], [ %sub59, %ccw_putcs_aligned.exit.while.body_crit_edge ]
  %37 = call i32 @llvm.umin.i32(i32 %count.addr.0134, i32 %div3)
  %38 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vc_font, align 4
  %mul44 = mul i32 %39, %37
  %40 = ptrtoint ptr %height45 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul44, ptr %height45, align 4
  %41 = ptrtoint ptr %width28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %width28, align 4
  %add47 = add i32 %42, 7
  %shr = lshr i32 %add47, 3
  %add48 = add i32 %sub, %shr
  %and = and i32 %add48, %neg
  %mul50 = mul i32 %and, %mul44
  %add51 = add i32 %sub8, %mul50
  %and53 = and i32 %add51, %neg52
  %call55 = call ptr @fb_get_buffer_offset(ptr noundef %info, ptr noundef %pixmap, i32 noundef %and53) #6
  %43 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call55, ptr %data, align 4
  %44 = ptrtoint ptr %vc_hi_font_mask.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vc_hi_font_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool.not.i = icmp eq i16 %45, 0
  %conv1.i = select i1 %tobool.not.i, i32 255, i32 511
  %46 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %height, align 4
  %add.i = add i32 %47, 7
  %shr.i = lshr i32 %add.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool2.not5.i = icmp eq i32 %37, 0
  br i1 %tobool2.not5.i, label %while.body.ccw_putcs_aligned.exit_crit_edge, label %while.body.lr.ph.i

while.body.ccw_putcs_aligned.exit_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccw_putcs_aligned.exit

while.body.lr.ph.i:                               ; preds = %while.body
  %48 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fbcon_par, align 4
  %fontbuffer.i = getelementptr inbounds %struct.fbcon_ops, ptr %49, i32 0, i32 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i)
  %cmp.i124 = icmp eq i32 %shr.i, 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end13.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec9.in.i = phi i32 [ %37, %while.body.lr.ph.i ], [ %dec9.i, %if.end13.i.while.body.i_crit_edge ]
  %dst.addr.07.i = phi ptr [ %call55, %while.body.lr.ph.i ], [ %add.ptr17.i, %if.end13.i.while.body.i_crit_edge ]
  %s.addr.06.i = phi ptr [ %s.addr.0135, %while.body.lr.ph.i ], [ %incdec.ptr.i, %if.end13.i.while.body.i_crit_edge ]
  %dec9.i = add i32 %dec9.in.i, -1
  %50 = ptrtoint ptr %fontbuffer.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fontbuffer.i, align 4
  %incdec.ptr.i = getelementptr i16, ptr %s.addr.06.i, i32 -1
  %52 = ptrtoint ptr %s.addr.06.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %s.addr.06.i, align 2
  %conv3.i = zext i16 %53 to i32
  %and.i125 = and i32 %conv1.i, %conv3.i
  %mul.i = mul i32 %and.i125, %mul
  %add.ptr.i = getelementptr i8, ptr %51, i32 %mul.i
  br i1 %tobool29.not, label %if.end.i130thread-pre-split, label %if.then.i128

if.then.i128:                                     ; preds = %while.body.i
  %54 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %55)
  %cmp.i.i126 = icmp ult i32 %55, 10
  %cond.i.i = select i1 %cmp.i.i126, i32 1, i32 2
  %rem.i.i = and i32 %55, 7
  %shl.i.i = shl nuw nsw i32 255, %cond.i.i
  %56 = trunc i32 %shl.i.i to i8
  %conv.i.i = xor i8 %56, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i127 = icmp eq i32 %rem.i.i, 0
  %sub.i.i = sub nuw nsw i32 8, %rem.i.i
  %conv5.i.i = zext i8 %conv.i.i to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, %sub.i.i
  %conv7.i.i = trunc i32 %shl6.i.i to i8
  %msk.0.i.i = select i1 %tobool.not.i.i127, i8 %conv.i.i, i8 %conv7.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %rem.i.i)
  %cmp8.i.i = icmp ugt i32 %cond.i.i, %rem.i.i
  %57 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vc_font, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp16102.not.i.i = icmp eq i32 %58, 0
  br i1 %cmp16102.not.i.i, label %if.end.i130.thread, label %for.cond18.preheader.lr.ph.i.i

for.cond18.preheader.lr.ph.i.i:                   ; preds = %if.then.i128
  %add.i.i = add i32 %55, 7
  %shr.i.i = lshr i32 %add.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i.i)
  %cmp1996.not.i.i = icmp ult i32 %add.i.i, 8
  %sub24.i.i = add nsw i32 %shr.i.i, -1
  %sub35.i.i = add nsw i32 %shr.i.i, -2
  %idx.neg.i.i = sub nsw i32 0, %shr.i.i
  %umax.i.i = call i32 @llvm.umax.i32(i32 %shr.i.i, i32 1) #6
  br label %for.cond18.preheader.i.i

for.cond18.preheader.i.i:                         ; preds = %for.inc63.i.i.for.cond18.preheader.i.i_crit_edge, %for.cond18.preheader.lr.ph.i.i
  %i.0105.i.i = phi i32 [ 0, %for.cond18.preheader.lr.ph.i.i ], [ %inc64.i.i, %for.inc63.i.i.for.cond18.preheader.i.i_crit_edge ]
  %dst.addr.0104.i.i = phi ptr [ %buf.0, %for.cond18.preheader.lr.ph.i.i ], [ %dst.addr.1.lcssa.i.i, %for.inc63.i.i.for.cond18.preheader.i.i_crit_edge ]
  %src.addr.0103.i.i = phi ptr [ %add.ptr.i, %for.cond18.preheader.lr.ph.i.i ], [ %src.addr.1.lcssa.i.i, %for.inc63.i.i.for.cond18.preheader.i.i_crit_edge ]
  br i1 %cmp1996.not.i.i, label %for.cond18.preheader.i.i.for.inc63.i.i_crit_edge, label %for.body21.lr.ph.i.i

for.cond18.preheader.i.i.for.inc63.i.i_crit_edge: ; preds = %for.cond18.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc63.i.i

for.body21.lr.ph.i.i:                             ; preds = %for.cond18.preheader.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0105.i.i)
  %tobool48.not.i.i = icmp eq i32 %i.0105.i.i, 0
  %or.cond93.i.i = select i1 %tobool46.not.i.i, i1 true, i1 %tobool48.not.i.i
  br label %for.body21.i.i

for.body21.i.i:                                   ; preds = %if.end54.i.i.for.body21.i.i_crit_edge, %for.body21.lr.ph.i.i
  %j.099.i.i = phi i32 [ 0, %for.body21.lr.ph.i.i ], [ %inc.i.i, %if.end54.i.i.for.body21.i.i_crit_edge ]
  %dst.addr.198.i.i = phi ptr [ %dst.addr.0104.i.i, %for.body21.lr.ph.i.i ], [ %incdec.ptr62.i.i, %if.end54.i.i.for.body21.i.i_crit_edge ]
  %src.addr.197.i.i = phi ptr [ %src.addr.0103.i.i, %for.body21.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.end54.i.i.for.body21.i.i_crit_edge ]
  %59 = ptrtoint ptr %src.addr.197.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %src.addr.197.i.i, align 1
  br i1 %tobool22.not.i.i, label %for.body21.i.i.if.end44.i.i_crit_edge, label %if.then23.i.i

for.body21.i.i.if.end44.i.i_crit_edge:            ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i.i

if.then23.i.i:                                    ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %j.099.i.i, i32 %sub24.i.i)
  %cmp25.i.i = icmp eq i32 %j.099.i.i, %sub24.i.i
  %or3092.i.i = select i1 %cmp25.i.i, i8 %msk.0.i.i, i8 0
  call void @__sanitizer_cov_trace_cmp4(i32 %j.099.i.i, i32 %sub35.i.i)
  %cmp36.i.i = icmp eq i32 %j.099.i.i, %sub35.i.i
  %or.cond.i.i = select i1 %cmp8.i.i, i1 %cmp36.i.i, i1 false
  %61 = zext i1 %or.cond.i.i to i8
  %spec.select.i.i129 = or i8 %or3092.i.i, %61
  %spec.select95.i.i = or i8 %spec.select.i.i129, %60
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.then23.i.i, %for.body21.i.i.if.end44.i.i_crit_edge
  %c.1.i.i = phi i8 [ %60, %for.body21.i.i.if.end44.i.i_crit_edge ], [ %spec.select95.i.i, %if.then23.i.i ]
  br i1 %or.cond93.i.i, label %if.end44.i.i.if.end54.i.i_crit_edge, label %if.then49.i.i

if.end44.i.i.if.end54.i.i_crit_edge:              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i.i

if.then49.i.i:                                    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %dst.addr.198.i.i, i32 %idx.neg.i.i
  %62 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %add.ptr.i.i, align 1
  %or5291.i.i = or i8 %63, %c.1.i.i
  store i8 %or5291.i.i, ptr %add.ptr.i.i, align 1
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then49.i.i, %if.end44.i.i.if.end54.i.i_crit_edge
  %spec.select94.i.i = xor i8 %c.1.i.i, %neg59.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %src.addr.197.i.i, i32 1
  %incdec.ptr62.i.i = getelementptr i8, ptr %dst.addr.198.i.i, i32 1
  %64 = ptrtoint ptr %dst.addr.198.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %spec.select94.i.i, ptr %dst.addr.198.i.i, align 1
  %inc.i.i = add nuw nsw i32 %j.099.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %if.end54.i.i.for.inc63.i.i_crit_edge, label %if.end54.i.i.for.body21.i.i_crit_edge

if.end54.i.i.for.body21.i.i_crit_edge:            ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body21.i.i

if.end54.i.i.for.inc63.i.i_crit_edge:             ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc63.i.i

for.inc63.i.i:                                    ; preds = %if.end54.i.i.for.inc63.i.i_crit_edge, %for.cond18.preheader.i.i.for.inc63.i.i_crit_edge
  %src.addr.1.lcssa.i.i = phi ptr [ %src.addr.0103.i.i, %for.cond18.preheader.i.i.for.inc63.i.i_crit_edge ], [ %incdec.ptr.i.i, %if.end54.i.i.for.inc63.i.i_crit_edge ]
  %dst.addr.1.lcssa.i.i = phi ptr [ %dst.addr.0104.i.i, %for.cond18.preheader.i.i.for.inc63.i.i_crit_edge ], [ %incdec.ptr62.i.i, %if.end54.i.i.for.inc63.i.i_crit_edge ]
  %inc64.i.i = add nuw i32 %i.0105.i.i, 1
  %65 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vc_font, align 4
  %cmp16.i.i = icmp ult i32 %inc64.i.i, %66
  br i1 %cmp16.i.i, label %for.inc63.i.i.for.cond18.preheader.i.i_crit_edge, label %for.inc63.i.i.if.end.i130_crit_edge

for.inc63.i.i.if.end.i130_crit_edge:              ; preds = %for.inc63.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i130

for.inc63.i.i.for.cond18.preheader.i.i_crit_edge: ; preds = %for.inc63.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond18.preheader.i.i

if.end.i130thread-pre-split:                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pr = load i32, ptr %vc_font, align 4
  br label %if.end.i130

if.end.i130:                                      ; preds = %if.end.i130thread-pre-split, %for.inc63.i.i.if.end.i130_crit_edge
  %68 = phi i32 [ %.pr, %if.end.i130thread-pre-split ], [ %66, %for.inc63.i.i.if.end.i130_crit_edge ]
  %src.0.i = phi ptr [ %add.ptr.i, %if.end.i130thread-pre-split ], [ %buf.0, %for.inc63.i.i.if.end.i130_crit_edge ]
  br i1 %cmp.i124, label %if.then9.i, label %if.end.i130.if.else.i_crit_edge, !prof !9

if.end.i130.if.else.i_crit_edge:                  ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.end.i130.thread:                               ; preds = %if.then.i128
  br i1 %cmp.i124, label %if.end.i130.thread.if.end13.i_crit_edge, label %if.end.i130.thread.if.else.i_crit_edge, !prof !9

if.end.i130.thread.if.else.i_crit_edge:           ; preds = %if.end.i130.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.end.i130.thread.if.end13.i_crit_edge:          ; preds = %if.end.i130.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then9.i:                                       ; preds = %if.end.i130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not4.i.i = icmp eq i32 %68, 0
  br i1 %tobool.not4.i.i, label %if.then9.i.if.end13.i_crit_edge, label %if.then9.i.for.cond1.preheader.i.i_crit_edge

if.then9.i.for.cond1.preheader.i.i_crit_edge:     ; preds = %if.then9.i
  br label %for.cond1.preheader.i.i

if.then9.i.if.end13.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

for.cond1.preheader.i.i:                          ; preds = %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge, %if.then9.i.for.cond1.preheader.i.i_crit_edge
  %dec7.in.i.i = phi i32 [ %dec7.i.i, %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge ], [ %68, %if.then9.i.for.cond1.preheader.i.i_crit_edge ]
  %dst.addr.06.i.i = phi ptr [ %add.ptr.i2.i, %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge ], [ %dst.addr.07.i, %if.then9.i.for.cond1.preheader.i.i_crit_edge ]
  %src.addr.05.i.i = phi ptr [ %incdec.ptr.i1.i, %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge ], [ %src.0.i, %if.then9.i.for.cond1.preheader.i.i_crit_edge ]
  %dec7.i.i = add i32 %dec7.in.i.i, -1
  %incdec.ptr.i1.i = getelementptr i8, ptr %src.addr.05.i.i, i32 1
  %69 = ptrtoint ptr %src.addr.05.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %src.addr.05.i.i, align 1
  %71 = ptrtoint ptr %dst.addr.06.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %dst.addr.06.i.i, align 1
  %add.ptr.i2.i = getelementptr i8, ptr %dst.addr.06.i.i, i32 %and
  %tobool.not.i3.i = icmp eq i32 %dec7.i.i, 0
  br i1 %tobool.not.i3.i, label %for.cond1.preheader.i.i.if.end13.i_crit_edge, label %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge

for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge: ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i.if.end13.i_crit_edge:     ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end.i130.thread.if.else.i_crit_edge, %if.end.i130.if.else.i_crit_edge
  %src.0.i138 = phi ptr [ %buf.0, %if.end.i130.thread.if.else.i_crit_edge ], [ %src.0.i, %if.end.i130.if.else.i_crit_edge ]
  %72 = phi i32 [ 0, %if.end.i130.thread.if.else.i_crit_edge ], [ %68, %if.end.i130.if.else.i_crit_edge ]
  call void @fb_pad_aligned_buffer(ptr noundef %dst.addr.07.i, i32 noundef %and, ptr noundef %src.0.i138, i32 noundef %shr.i, i32 noundef %72) #6
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %for.cond1.preheader.i.i.if.end13.i_crit_edge, %if.then9.i.if.end13.i_crit_edge, %if.end.i130.thread.if.end13.i_crit_edge
  %73 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vc_font, align 4
  %mul16.i = mul i32 %74, %and
  %add.ptr17.i = getelementptr i8, ptr %dst.addr.07.i, i32 %mul16.i
  %tobool2.not.i = icmp eq i32 %dec9.i, 0
  br i1 %tobool2.not.i, label %if.end13.i.ccw_putcs_aligned.exit_crit_edge, label %if.end13.i.while.body.i_crit_edge

if.end13.i.while.body.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end13.i.ccw_putcs_aligned.exit_crit_edge:      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccw_putcs_aligned.exit

ccw_putcs_aligned.exit:                           ; preds = %if.end13.i.ccw_putcs_aligned.exit_crit_edge, %while.body.ccw_putcs_aligned.exit_crit_edge
  %75 = ptrtoint ptr %fbops.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fbops.i, align 4
  %fb_imageblit.i = getelementptr inbounds %struct.fb_ops, ptr %76, i32 0, i32 13
  %77 = ptrtoint ptr %fb_imageblit.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %fb_imageblit.i, align 4
  call void %78(ptr noundef %info, ptr noundef nonnull %image) #6
  %79 = ptrtoint ptr %height45 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %height45, align 4
  %81 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dy, align 4
  %add58 = add i32 %82, %80
  store i32 %add58, ptr %dy, align 4
  %sub59 = sub i32 %count.addr.0134, %37
  %idx.neg = sub i32 0, %37
  %add.ptr60 = getelementptr i16, ptr %s.addr.0135, i32 %idx.neg
  %tobool37.not = icmp eq i32 %sub59, 0
  br i1 %tobool37.not, label %ccw_putcs_aligned.exit.while.end_crit_edge, label %ccw_putcs_aligned.exit.while.body_crit_edge

ccw_putcs_aligned.exit.while.body_crit_edge:      ; preds = %ccw_putcs_aligned.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

ccw_putcs_aligned.exit.while.end_crit_edge:       ; preds = %ccw_putcs_aligned.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %ccw_putcs_aligned.exit.while.end_crit_edge, %if.end35.while.end_crit_edge
  %tobool61.not = icmp eq ptr %buf.0, null
  br i1 %tobool61.not, label %while.end.cleanup_crit_edge, label %if.then64, !prof !9

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then64:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %buf.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %while.end.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %image) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccw_clear_margins(ptr nocapture noundef readonly %vc, ptr noundef %info, i32 noundef %color, i32 noundef %bottom_only) #1 align 64 {
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
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yres, align 4
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %6 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vc_cols, align 4
  %mul = mul i32 %7, %1
  %sub = sub i32 %5, %mul
  %8 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %var, align 4
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
  %20 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %region, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %21 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %yoffset, align 4
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %12, align 4
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %14, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %25 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xres_virtual, align 4
  %27 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %13, align 4
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
  %cmp12 = icmp sgt i32 %sub4, 0
  br i1 %cmp12, label %if.then13, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %32 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %xoffset, align 4
  %add = add i32 %33, %mul3
  %34 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add, ptr %region, align 4
  %35 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %12, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %36 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %yres_virtual, align 4
  %38 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %14, align 4
  %39 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub4, ptr %13, align 4
  %fbops20 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %40 = ptrtoint ptr %fbops20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fbops20, align 4
  %fb_fillrect21 = getelementptr inbounds %struct.fb_ops, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %fb_fillrect21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fb_fillrect21, align 4
  call void %43(ptr noundef %info, ptr noundef nonnull %region) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then13, %if.end.if.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %region) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccw_cursor(ptr nocapture noundef readonly %vc, ptr noundef %info, i32 noundef %mode, i32 noundef %fg, i32 noundef %bg) #1 align 64 {
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
  %height = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
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
  %cond.i = sub i32 %add.i, %sub.i
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
  switch i16 %18, label %cond.false [
    i16 4, label %entry.cond.true_crit_edge
    i16 1, label %entry.cond.true_crit_edge581
  ]

entry.cond.true_crit_edge581:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

entry.cond.true_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

cond.true:                                        ; preds = %entry.cond.true_crit_edge, %entry.cond.true_crit_edge581
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond13.in = phi ptr [ %yres, %cond.true ], [ %yres_virtual, %cond.false ]
  %20 = ptrtoint ptr %cond13.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %cond13 = load i32, ptr %cond13.in, align 4
  %fontbuffer = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 23
  %21 = ptrtoint ptr %fontbuffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fontbuffer, align 4
  %tobool14.not = icmp eq ptr %22, null
  br i1 %tobool14.not, label %cond.end.cleanup330_crit_edge, label %if.end

cond.end.cleanup330_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup330

if.end:                                           ; preds = %cond.end
  %23 = ptrtoint ptr %cursor to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %cursor, align 4
  %vc_pos = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 26
  %24 = ptrtoint ptr %vc_pos to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vc_pos, align 4
  %26 = inttoptr i32 %25 to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %26, align 2
  %conv15 = zext i16 %28 to i32
  %var.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %fix.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call.i = tail call i32 @fb_get_color_depth(ptr noundef %var.i, ptr noundef %fix.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i462 = icmp eq i32 %call.i, 1
  %and.i = lshr i32 %conv15, 10
  %29 = and i32 %and.i, 3
  %and9.i = lshr i32 %conv15, 7
  %30 = and i32 %and9.i, 4
  %31 = or i32 %29, %30
  %attribute.2.i = select i1 %cmp.i462, i32 %31, i32 0
  %32 = ptrtoint ptr %fontbuffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fontbuffer, align 4
  %and20 = and i32 %conv1, %conv15
  %34 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vc_font, align 4
  %mul = mul i32 %and20, %shr
  %mul22 = mul i32 %mul, %35
  %add.ptr = getelementptr i8, ptr %33, i32 %mul22
  %image = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5
  %data = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 7
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %cmp23.not = icmp eq ptr %37, %add.ptr
  br i1 %cmp23.not, label %lor.lhs.false25, label %if.end.if.then27_crit_edge

if.end.if.then27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

lor.lhs.false25:                                  ; preds = %if.end
  %cursor_reset = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %38 = ptrtoint ptr %cursor_reset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cursor_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool26.not = icmp eq i32 %39, 0
  br i1 %tobool26.not, label %lor.lhs.false25.if.end34_crit_edge, label %lor.lhs.false25.if.then27_crit_edge

lor.lhs.false25.if.then27_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

lor.lhs.false25.if.end34_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then27:                                        ; preds = %lor.lhs.false25.if.then27_crit_edge, %if.end.if.then27_crit_edge
  %40 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr, ptr %data, align 4
  %41 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %cursor, align 4
  %43 = or i16 %42, 1
  store i16 %43, ptr %cursor, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then27, %lor.lhs.false25.if.end34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attribute.2.i)
  %tobool35.not = icmp eq i32 %attribute.2.i, 0
  br i1 %tobool35.not, label %if.end34.if.end44_crit_edge, label %if.then36

if.end34.if.end44_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then36:                                        ; preds = %if.end34
  %44 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vc_font, align 4
  %46 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shr, i32 %45) #6
  %47 = extractvalue { i32, i1 } %46, 1
  br i1 %47, label %if.then36.cleanup330_crit_edge, label %if.end7.i, !prof !10

if.then36.cleanup330_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup330

if.end7.i:                                        ; preds = %if.then36
  %48 = extractvalue { i32, i1 } %46, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %48, i32 noundef 2592) #9
  %tobool40.not = icmp eq ptr %call8.i, null
  br i1 %tobool40.not, label %if.end7.i.cleanup330_crit_edge, label %if.end42

if.end7.i.cleanup330_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup330

if.end42:                                         ; preds = %if.end7.i
  %cursor_data = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 22
  %49 = ptrtoint ptr %cursor_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cursor_data, align 4
  tail call void @kfree(ptr noundef %50) #6
  %51 = ptrtoint ptr %cursor_data to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call8.i, ptr %cursor_data, align 4
  %52 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %53)
  %cmp.i464 = icmp ult i32 %53, 10
  %cond.i465 = select i1 %cmp.i464, i32 1, i32 2
  %rem.i = and i32 %53, 7
  %shl.i = shl nuw nsw i32 255, %cond.i465
  %54 = trunc i32 %shl.i to i8
  %conv.i466 = xor i8 %54, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %sub.i467 = sub nuw nsw i32 8, %rem.i
  %conv5.i = zext i8 %conv.i466 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, %sub.i467
  %conv7.i = trunc i32 %shl6.i to i8
  %msk.0.i = select i1 %tobool.not.i, i8 %conv.i466, i8 %conv7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i465, i32 %rem.i)
  %cmp8.i = icmp ugt i32 %cond.i465, %rem.i
  %55 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %vc_font, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp16102.not.i = icmp eq i32 %56, 0
  br i1 %cmp16102.not.i, label %if.end42.if.end44_crit_edge, label %for.cond18.preheader.lr.ph.i

if.end42.if.end44_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

for.cond18.preheader.lr.ph.i:                     ; preds = %if.end42
  %add.i468 = add i32 %53, 7
  %shr.i = lshr i32 %add.i468, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i468)
  %cmp1996.not.i = icmp ult i32 %add.i468, 8
  %and.i469 = and i32 %attribute.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i469)
  %tobool22.not.i = icmp eq i32 %and.i469, 0
  %sub24.i = add nsw i32 %shr.i, -1
  %sub35.i = add nsw i32 %shr.i, -2
  %and45.i = and i32 %attribute.2.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  %idx.neg.i = sub nsw i32 0, %shr.i
  %and55.i = shl i32 %attribute.2.i, 30
  %sext.i = ashr i32 %and55.i, 31
  %neg59.i = trunc i32 %sext.i to i8
  %umax.i = tail call i32 @llvm.umax.i32(i32 %shr.i, i32 1) #6
  br label %for.cond18.preheader.i

for.cond18.preheader.i:                           ; preds = %for.inc63.i.for.cond18.preheader.i_crit_edge, %for.cond18.preheader.lr.ph.i
  %i.0105.i = phi i32 [ 0, %for.cond18.preheader.lr.ph.i ], [ %inc64.i, %for.inc63.i.for.cond18.preheader.i_crit_edge ]
  %dst.addr.0104.i = phi ptr [ %call8.i, %for.cond18.preheader.lr.ph.i ], [ %dst.addr.1.lcssa.i, %for.inc63.i.for.cond18.preheader.i_crit_edge ]
  %src.addr.0103.i = phi ptr [ %add.ptr, %for.cond18.preheader.lr.ph.i ], [ %src.addr.1.lcssa.i, %for.inc63.i.for.cond18.preheader.i_crit_edge ]
  br i1 %cmp1996.not.i, label %for.cond18.preheader.i.for.inc63.i_crit_edge, label %for.body21.lr.ph.i

for.cond18.preheader.i.for.inc63.i_crit_edge:     ; preds = %for.cond18.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc63.i

for.body21.lr.ph.i:                               ; preds = %for.cond18.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0105.i)
  %tobool48.not.i = icmp eq i32 %i.0105.i, 0
  %or.cond93.i = select i1 %tobool46.not.i, i1 true, i1 %tobool48.not.i
  br label %for.body21.i

for.body21.i:                                     ; preds = %if.end54.i.for.body21.i_crit_edge, %for.body21.lr.ph.i
  %j.099.i = phi i32 [ 0, %for.body21.lr.ph.i ], [ %inc.i, %if.end54.i.for.body21.i_crit_edge ]
  %dst.addr.198.i = phi ptr [ %dst.addr.0104.i, %for.body21.lr.ph.i ], [ %incdec.ptr62.i, %if.end54.i.for.body21.i_crit_edge ]
  %src.addr.197.i = phi ptr [ %src.addr.0103.i, %for.body21.lr.ph.i ], [ %incdec.ptr.i, %if.end54.i.for.body21.i_crit_edge ]
  %57 = ptrtoint ptr %src.addr.197.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %src.addr.197.i, align 1
  br i1 %tobool22.not.i, label %for.body21.i.if.end44.i_crit_edge, label %if.then23.i

for.body21.i.if.end44.i_crit_edge:                ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

if.then23.i:                                      ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %j.099.i, i32 %sub24.i)
  %cmp25.i = icmp eq i32 %j.099.i, %sub24.i
  %or3092.i = select i1 %cmp25.i, i8 %msk.0.i, i8 0
  call void @__sanitizer_cov_trace_cmp4(i32 %j.099.i, i32 %sub35.i)
  %cmp36.i = icmp eq i32 %j.099.i, %sub35.i
  %or.cond.i = select i1 %cmp8.i, i1 %cmp36.i, i1 false
  %59 = zext i1 %or.cond.i to i8
  %spec.select.i = or i8 %or3092.i, %59
  %spec.select95.i = or i8 %spec.select.i, %58
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then23.i, %for.body21.i.if.end44.i_crit_edge
  %c.1.i = phi i8 [ %58, %for.body21.i.if.end44.i_crit_edge ], [ %spec.select95.i, %if.then23.i ]
  br i1 %or.cond93.i, label %if.end44.i.if.end54.i_crit_edge, label %if.then49.i

if.end44.i.if.end54.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i

if.then49.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %dst.addr.198.i, i32 %idx.neg.i
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr.i, align 1
  %or5291.i = or i8 %61, %c.1.i
  store i8 %or5291.i, ptr %add.ptr.i, align 1
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then49.i, %if.end44.i.if.end54.i_crit_edge
  %spec.select94.i = xor i8 %c.1.i, %neg59.i
  %incdec.ptr.i = getelementptr i8, ptr %src.addr.197.i, i32 1
  %incdec.ptr62.i = getelementptr i8, ptr %dst.addr.198.i, i32 1
  %62 = ptrtoint ptr %dst.addr.198.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %spec.select94.i, ptr %dst.addr.198.i, align 1
  %inc.i = add nuw nsw i32 %j.099.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %if.end54.i.for.inc63.i_crit_edge, label %if.end54.i.for.body21.i_crit_edge

if.end54.i.for.body21.i_crit_edge:                ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body21.i

if.end54.i.for.inc63.i_crit_edge:                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc63.i

for.inc63.i:                                      ; preds = %if.end54.i.for.inc63.i_crit_edge, %for.cond18.preheader.i.for.inc63.i_crit_edge
  %src.addr.1.lcssa.i = phi ptr [ %src.addr.0103.i, %for.cond18.preheader.i.for.inc63.i_crit_edge ], [ %incdec.ptr.i, %if.end54.i.for.inc63.i_crit_edge ]
  %dst.addr.1.lcssa.i = phi ptr [ %dst.addr.0104.i, %for.cond18.preheader.i.for.inc63.i_crit_edge ], [ %incdec.ptr62.i, %if.end54.i.for.inc63.i_crit_edge ]
  %inc64.i = add nuw i32 %i.0105.i, 1
  %63 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %vc_font, align 4
  %cmp16.i = icmp ult i32 %inc64.i, %64
  br i1 %cmp16.i, label %for.inc63.i.for.cond18.preheader.i_crit_edge, label %for.inc63.i.if.end44_crit_edge

for.inc63.i.if.end44_crit_edge:                   ; preds = %for.inc63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

for.inc63.i.for.cond18.preheader.i_crit_edge:     ; preds = %for.inc63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond18.preheader.i

if.end44:                                         ; preds = %for.inc63.i.if.end44_crit_edge, %if.end42.if.end44_crit_edge, %if.end34.if.end44_crit_edge
  %src.1 = phi ptr [ %add.ptr, %if.end34.if.end44_crit_edge ], [ %call8.i, %if.end42.if.end44_crit_edge ], [ %call8.i, %for.inc63.i.if.end44_crit_edge ]
  %fg_color = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 4
  %65 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fg_color, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %fg)
  %cmp47.not = icmp eq i32 %66, %fg
  br i1 %cmp47.not, label %lor.lhs.false49, label %if.end44.if.then57_crit_edge

if.end44.if.then57_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

lor.lhs.false49:                                  ; preds = %if.end44
  %bg_color = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 5
  %67 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bg_color, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %bg)
  %cmp52.not = icmp eq i32 %68, %bg
  br i1 %cmp52.not, label %lor.lhs.false54, label %lor.lhs.false49.if.then57_crit_edge

lor.lhs.false49.if.then57_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

lor.lhs.false54:                                  ; preds = %lor.lhs.false49
  %cursor_reset55 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %69 = ptrtoint ptr %cursor_reset55 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cursor_reset55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool56.not = icmp eq i32 %70, 0
  br i1 %tobool56.not, label %lor.lhs.false54.if.end68_crit_edge, label %lor.lhs.false54.if.then57_crit_edge

lor.lhs.false54.if.then57_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

lor.lhs.false54.if.end68_crit_edge:               ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then57:                                        ; preds = %lor.lhs.false54.if.then57_crit_edge, %lor.lhs.false49.if.then57_crit_edge, %if.end44.if.then57_crit_edge
  %71 = ptrtoint ptr %fg_color to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %fg, ptr %fg_color, align 4
  %bg_color63 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 5
  %72 = ptrtoint ptr %bg_color63 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %bg, ptr %bg_color63, align 4
  %73 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %cursor, align 4
  %75 = or i16 %74, 8
  store i16 %75, ptr %cursor, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then57, %lor.lhs.false54.if.end68_crit_edge
  %height71 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 3
  %76 = ptrtoint ptr %height71 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %height71, align 4
  %78 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %vc_font, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %79)
  %cmp74.not = icmp eq i32 %77, %79
  br i1 %cmp74.not, label %lor.lhs.false76, label %if.end68.if.then87_crit_edge

if.end68.if.then87_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then87

lor.lhs.false76:                                  ; preds = %if.end68
  %width79 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 2
  %80 = ptrtoint ptr %width79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %width79, align 4
  %82 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp82.not = icmp eq i32 %81, %83
  br i1 %cmp82.not, label %lor.lhs.false84, label %lor.lhs.false76.if.then87_crit_edge

lor.lhs.false76.if.then87_crit_edge:              ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then87

lor.lhs.false84:                                  ; preds = %lor.lhs.false76
  %cursor_reset85 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %84 = ptrtoint ptr %cursor_reset85 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cursor_reset85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool86.not = icmp eq i32 %85, 0
  br i1 %tobool86.not, label %lor.lhs.false84.if.end102_crit_edge, label %lor.lhs.false84.if.then87_crit_edge

lor.lhs.false84.if.then87_crit_edge:              ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then87

lor.lhs.false84.if.end102_crit_edge:              ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.then87:                                        ; preds = %lor.lhs.false84.if.then87_crit_edge, %lor.lhs.false76.if.then87_crit_edge, %if.end68.if.then87_crit_edge
  %86 = ptrtoint ptr %height71 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %79, ptr %height71, align 4
  %87 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %height, align 4
  %width97 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 2
  %89 = ptrtoint ptr %width97 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %width97, align 4
  %90 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %cursor, align 4
  %92 = or i16 %91, 32
  store i16 %92, ptr %cursor, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then87, %lor.lhs.false84.if.end102_crit_edge
  %93 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %height, align 4
  %mul105 = mul i32 %94, %cond.i
  %95 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %state, align 4
  %add107.neg = xor i32 %96, -1
  %97 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %vc_font, align 4
  %mul110.neg = mul i32 %98, %add107.neg
  %sub = add i32 %mul110.neg, %cond13
  %99 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %image, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %mul105)
  %cmp114.not = icmp eq i32 %100, %mul105
  br i1 %cmp114.not, label %lor.lhs.false116, label %if.end102.if.then125_crit_edge

if.end102.if.then125_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then125

lor.lhs.false116:                                 ; preds = %if.end102
  %dy119 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 1
  %101 = ptrtoint ptr %dy119 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %dy119, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %sub)
  %cmp120.not = icmp eq i32 %102, %sub
  br i1 %cmp120.not, label %lor.lhs.false122, label %lor.lhs.false116.if.then125_crit_edge

lor.lhs.false116.if.then125_crit_edge:            ; preds = %lor.lhs.false116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then125

lor.lhs.false122:                                 ; preds = %lor.lhs.false116
  %cursor_reset123 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %103 = ptrtoint ptr %cursor_reset123 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cursor_reset123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool124.not = icmp eq i32 %104, 0
  br i1 %tobool124.not, label %lor.lhs.false122.if.end136_crit_edge, label %lor.lhs.false122.if.then125_crit_edge

lor.lhs.false122.if.then125_crit_edge:            ; preds = %lor.lhs.false122
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then125

lor.lhs.false122.if.end136_crit_edge:             ; preds = %lor.lhs.false122
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136

if.then125:                                       ; preds = %lor.lhs.false122.if.then125_crit_edge, %lor.lhs.false116.if.then125_crit_edge, %if.end102.if.then125_crit_edge
  %105 = ptrtoint ptr %image to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %mul105, ptr %image, align 4
  %dy131 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 1
  %106 = ptrtoint ptr %dy131 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %sub, ptr %dy131, align 4
  %107 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %cursor, align 4
  %109 = or i16 %108, 2
  store i16 %109, ptr %cursor, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then125, %lor.lhs.false122.if.end136_crit_edge
  %hot = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 4
  %110 = ptrtoint ptr %hot to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %hot, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool140.not = icmp eq i16 %111, 0
  br i1 %tobool140.not, label %lor.lhs.false141, label %if.end136.if.then150_crit_edge

if.end136.if.then150_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then150

lor.lhs.false141:                                 ; preds = %if.end136
  %y144 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 4, i32 1
  %112 = ptrtoint ptr %y144 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %y144, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool146.not = icmp eq i16 %113, 0
  br i1 %tobool146.not, label %lor.lhs.false147, label %lor.lhs.false141.if.then150_crit_edge

lor.lhs.false141.if.then150_crit_edge:            ; preds = %lor.lhs.false141
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then150

lor.lhs.false147:                                 ; preds = %lor.lhs.false141
  %cursor_reset148 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %114 = ptrtoint ptr %cursor_reset148 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cursor_reset148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool149.not = icmp eq i32 %115, 0
  br i1 %tobool149.not, label %lor.lhs.false147.if.end160_crit_edge, label %lor.lhs.false147.if.then150_crit_edge

lor.lhs.false147.if.then150_crit_edge:            ; preds = %lor.lhs.false147
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then150

lor.lhs.false147.if.end160_crit_edge:             ; preds = %lor.lhs.false147
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end160

if.then150:                                       ; preds = %lor.lhs.false147.if.then150_crit_edge, %lor.lhs.false141.if.then150_crit_edge, %if.end136.if.then150_crit_edge
  %y152 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 4, i32 1
  %116 = ptrtoint ptr %y152 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %y152, align 2
  %117 = ptrtoint ptr %hot to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 0, ptr %hot, align 4
  %118 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %cursor, align 4
  %120 = or i16 %119, 4
  store i16 %120, ptr %cursor, align 4
  br label %if.end160

if.end160:                                        ; preds = %if.then150, %lor.lhs.false147.if.end160_crit_edge
  %121 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %cursor, align 4
  %123 = and i16 %122, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool164.not = icmp eq i16 %123, 0
  br i1 %tobool164.not, label %lor.lhs.false165, label %if.end160.if.then177_crit_edge

if.end160.if.then177_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then177

lor.lhs.false165:                                 ; preds = %if.end160
  %124 = ptrtoint ptr %vc_cursor_type to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %vc_cursor_type, align 4
  %126 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %p, align 4
  %cursor_shape = getelementptr inbounds %struct.fbcon_display, ptr %127, i32 0, i32 6
  %128 = ptrtoint ptr %cursor_shape to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cursor_shape, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %129)
  %cmp168.not = icmp eq i32 %125, %129
  br i1 %cmp168.not, label %lor.lhs.false170, label %lor.lhs.false165.if.then177_crit_edge

lor.lhs.false165.if.then177_crit_edge:            ; preds = %lor.lhs.false165
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then177

lor.lhs.false170:                                 ; preds = %lor.lhs.false165
  %mask = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 3
  %130 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mask, align 4
  %cmp172 = icmp eq ptr %131, null
  br i1 %cmp172, label %lor.lhs.false170.if.then177_crit_edge, label %lor.lhs.false174

lor.lhs.false170.if.then177_crit_edge:            ; preds = %lor.lhs.false170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then177

lor.lhs.false174:                                 ; preds = %lor.lhs.false170
  %cursor_reset175 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %132 = ptrtoint ptr %cursor_reset175 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cursor_reset175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool176.not = icmp eq i32 %133, 0
  br i1 %tobool176.not, label %lor.lhs.false174.if.end259_crit_edge, label %lor.lhs.false174.if.then177_crit_edge

lor.lhs.false174.if.then177_crit_edge:            ; preds = %lor.lhs.false174
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then177

lor.lhs.false174.if.end259_crit_edge:             ; preds = %lor.lhs.false174
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end259

if.then177:                                       ; preds = %lor.lhs.false174.if.then177_crit_edge, %lor.lhs.false170.if.then177_crit_edge, %lor.lhs.false165.if.then177_crit_edge, %if.end160.if.then177_crit_edge
  %134 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %vc_font, align 4
  %136 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shr, i32 %135) #6
  %137 = extractvalue { i32, i1 } %136, 1
  br i1 %137, label %if.then177.cleanup330_crit_edge, label %if.end7.i501, !prof !10

if.then177.cleanup330_crit_edge:                  ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup330

if.end7.i501:                                     ; preds = %if.then177
  %138 = extractvalue { i32, i1 } %136, 0
  %call8.i500 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %138, i32 noundef 2592) #9
  %tobool187.not = icmp eq ptr %call8.i500, null
  br i1 %tobool187.not, label %if.end7.i501.cleanup330_crit_edge, label %if.end189

if.end7.i501.cleanup330_crit_edge:                ; preds = %if.end7.i501
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup330

if.end189:                                        ; preds = %if.end7.i501
  %139 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %139)
  %div460568.in.in = load i32, ptr %vc_font, align 4
  %div460568.in = add i32 %div460568.in.in, 7
  %div460568 = lshr i32 %div460568.in, 3
  %140 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %height, align 4
  %142 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div460568, i32 %141) #6
  %143 = extractvalue { i32, i1 } %142, 1
  br i1 %143, label %if.end189.if.then194_crit_edge, label %if.end7.i535, !prof !10

if.end189.if.then194_crit_edge:                   ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then194

if.end7.i535:                                     ; preds = %if.end189
  %144 = extractvalue { i32, i1 } %142, 0
  %call8.i534 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %144, i32 noundef 2592) #9
  %tobool193.not = icmp eq ptr %call8.i534, null
  br i1 %tobool193.not, label %if.end7.i535.if.then194_crit_edge, label %if.end195

if.end7.i535.if.then194_crit_edge:                ; preds = %if.end7.i535
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then194

if.then194:                                       ; preds = %if.end7.i535.if.then194_crit_edge, %if.end189.if.then194_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i500) #6
  br label %cleanup330

if.end195:                                        ; preds = %if.end7.i535
  %mask197 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 3
  %145 = ptrtoint ptr %mask197 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mask197, align 4
  tail call void @kfree(ptr noundef %146) #6
  %147 = ptrtoint ptr %mask197 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call8.i500, ptr %mask197, align 4
  %148 = ptrtoint ptr %vc_cursor_type to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %vc_cursor_type, align 4
  %150 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %p, align 4
  %cursor_shape202 = getelementptr inbounds %struct.fbcon_display, ptr %151, i32 0, i32 6
  %152 = ptrtoint ptr %cursor_shape202 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %149, ptr %cursor_shape202, align 4
  %153 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %cursor, align 4
  %155 = or i16 %154, 16
  store i16 %155, ptr %cursor, align 4
  %156 = load ptr, ptr %p, align 4
  %cursor_shape208 = getelementptr inbounds %struct.fbcon_display, ptr %156, i32 0, i32 6
  %157 = ptrtoint ptr %cursor_shape208 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %cursor_shape208, align 4
  %and209 = and i32 %158, 15
  %159 = zext i32 %and209 to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %and209, label %sw.default [
    i32 1, label %if.end195.sw.epilog_crit_edge
    i32 2, label %sw.bb210
    i32 3, label %sw.bb216
    i32 4, label %sw.bb220
    i32 5, label %sw.bb224
  ]

if.end195.sw.epilog_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb210:                                         ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #8
  %160 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %161)
  %cmp213 = icmp ult i32 %161, 10
  %cond215 = select i1 %cmp213, i32 1, i32 2
  br label %sw.epilog

sw.bb216:                                         ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #8
  %162 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %height, align 4
  %div219 = udiv i32 %163, 3
  br label %sw.epilog

sw.bb220:                                         ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #8
  %164 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %height, align 4
  %shr223 = lshr i32 %165, 1
  br label %sw.epilog

sw.bb224:                                         ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #8
  %166 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %height, align 4
  %shl = shl i32 %167, 1
  %div227 = udiv i32 %shl, 3
  br label %sw.epilog

sw.default:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #8
  %168 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %height, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb224, %sw.bb220, %sw.bb216, %sw.bb210, %if.end195.sw.epilog_crit_edge
  %cur_height.0 = phi i32 [ %169, %sw.default ], [ %div227, %sw.bb224 ], [ %shr223, %sw.bb220 ], [ %div219, %sw.bb216 ], [ %cond215, %sw.bb210 ], [ 0, %if.end195.sw.epilog_crit_edge ]
  %170 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %height, align 4
  %sub233 = sub i32 %171, %cur_height.0
  %mul234 = mul i32 %sub233, %div460568
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul234)
  %tobool235.not575 = icmp eq i32 %mul234, 0
  br i1 %tobool235.not575, label %sw.epilog.while.end_crit_edge, label %while.body.preheader

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.preheader:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %172 = call ptr @memset(ptr %call8.i534, i32 0, i32 %mul234)
  br label %while.end

while.end:                                        ; preds = %while.body.preheader, %sw.epilog.while.end_crit_edge
  %mul236 = mul i32 %cur_height.0, %div460568
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul236)
  %tobool239.not578 = icmp eq i32 %mul236, 0
  br i1 %tobool239.not578, label %while.end.while.end243_crit_edge, label %while.body240.preheader

while.end.while.end243_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end243

while.body240.preheader:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %uglygep = getelementptr i8, ptr %call8.i534, i32 %mul234
  %173 = call ptr @memset(ptr %uglygep, i32 255, i32 %mul236)
  br label %while.end243

while.end243:                                     ; preds = %while.body240.preheader, %while.end.while.end243_crit_edge
  %174 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %vc_font, align 4
  %mul246 = mul i32 %175, %shr
  %176 = call ptr @memset(ptr %call8.i500, i32 0, i32 %mul246)
  %177 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %height, align 4
  %add.i538 = add i32 %175, 7
  %and1.i = and i32 %add.i538, -8
  %add2.i = add i32 %178, 7
  %and3.i = and i32 %add2.i, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp33.i = icmp sgt i32 %178, 0
  br i1 %cmp33.i, label %for.cond4.preheader.lr.ph.i, label %while.end243.rotate_ccw.exit_crit_edge

while.end243.rotate_ccw.exit_crit_edge:           ; preds = %while.end243
  call void @__sanitizer_cov_trace_pc() #8
  br label %rotate_ccw.exit

for.cond4.preheader.lr.ph.i:                      ; preds = %while.end243
  %sub.i539 = sub i32 0, %175
  %and.i540 = and i32 %sub.i539, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp530.i = icmp sgt i32 %175, 0
  %sub8.i = sub i32 %and1.i, %and.i540
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.inc10.i.for.cond4.preheader.i_crit_edge, %for.cond4.preheader.lr.ph.i
  %indvars.iv.i = phi i3 [ 0, %for.cond4.preheader.lr.ph.i ], [ %indvars.iv.next.i, %for.inc10.i.for.cond4.preheader.i_crit_edge ]
  %i.034.i = phi i32 [ 0, %for.cond4.preheader.lr.ph.i ], [ %inc11.i, %for.inc10.i.for.cond4.preheader.i_crit_edge ]
  br i1 %cmp530.i, label %for.body6.lr.ph.i, label %for.cond4.preheader.i.for.inc10.i_crit_edge

for.cond4.preheader.i.for.inc10.i_crit_edge:      ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc10.i

for.body6.lr.ph.i:                                ; preds = %for.cond4.preheader.i
  %179 = zext i3 %indvars.iv.i to i8
  %mul.i.i = mul i32 %i.034.i, %and1.i
  %shr.i29.i = lshr i8 -128, %179
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %j.031.i = phi i32 [ 0, %for.body6.lr.ph.i ], [ %inc.i542, %for.inc.i.for.body6.i_crit_edge ]
  %add.i.i = add i32 %j.031.i, %mul.i.i
  %div3.i.i = lshr i32 %add.i.i, 3
  %rem.i.i = and i32 %add.i.i, 7
  %add.ptr.i.i = getelementptr i8, ptr %call8.i534, i32 %div3.i.i
  %180 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %add.ptr.i.i, align 1
  %conv.i.i = zext i8 %181 to i32
  %shr.i.i = lshr i32 128, %rem.i.i
  %and.i.i = and i32 %shr.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i541 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i541, label %for.body6.i.for.inc.i_crit_edge, label %if.then.i

for.body6.i.for.inc.i_crit_edge:                  ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  %182 = xor i32 %j.031.i, -1
  %sub9.i = add i32 %sub8.i, %182
  %mul.i25.i = mul i32 %sub9.i, %and3.i
  %add.i26.i = add i32 %mul.i25.i, %i.034.i
  %div4.i.i = lshr i32 %add.i26.i, 3
  %add.ptr.i28.i = getelementptr i8, ptr %call8.i500, i32 %div4.i.i
  %183 = ptrtoint ptr %add.ptr.i28.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %add.ptr.i28.i, align 1
  %conv1.i.i = or i8 %184, %shr.i29.i
  store i8 %conv1.i.i, ptr %add.ptr.i28.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body6.i.for.inc.i_crit_edge
  %inc.i542 = add nuw nsw i32 %j.031.i, 1
  %exitcond.not.i543 = icmp eq i32 %inc.i542, %175
  br i1 %exitcond.not.i543, label %for.inc.i.for.inc10.i_crit_edge, label %for.inc.i.for.body6.i_crit_edge

for.inc.i.for.body6.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6.i

for.inc.i.for.inc10.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc10.i

for.inc10.i:                                      ; preds = %for.inc.i.for.inc10.i_crit_edge, %for.cond4.preheader.i.for.inc10.i_crit_edge
  %inc11.i = add nuw nsw i32 %i.034.i, 1
  %indvars.iv.next.i = add i3 %indvars.iv.i, 1
  %exitcond36.not.i = icmp eq i32 %inc11.i, %178
  br i1 %exitcond36.not.i, label %for.inc10.i.rotate_ccw.exit_crit_edge, label %for.inc10.i.for.cond4.preheader.i_crit_edge

for.inc10.i.for.cond4.preheader.i_crit_edge:      ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond4.preheader.i

for.inc10.i.rotate_ccw.exit_crit_edge:            ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rotate_ccw.exit

rotate_ccw.exit:                                  ; preds = %for.inc10.i.rotate_ccw.exit_crit_edge, %while.end243.rotate_ccw.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i534) #6
  br label %if.end259

if.end259:                                        ; preds = %rotate_ccw.exit, %lor.lhs.false174.if.end259_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cond347 = icmp eq i32 %mode, 2
  %185 = trunc i32 %16 to i16
  %186 = lshr i16 %185, 4
  %187 = and i16 %186, 1
  %188 = xor i16 %187, 1
  %.sink = select i1 %cond347, i16 0, i16 %188
  %189 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 1
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %.sink, ptr %189, align 2
  %image270 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5
  %data271 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 7
  %191 = ptrtoint ptr %data271 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %src.1, ptr %data271, align 4
  %192 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %fg_color, align 4
  %fg_color276 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 4
  %194 = ptrtoint ptr %fg_color276 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %fg_color276, align 4
  %bg_color279 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 5
  %195 = ptrtoint ptr %bg_color279 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %bg_color279, align 4
  %bg_color281 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 5
  %197 = ptrtoint ptr %bg_color281 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %bg_color281, align 4
  %198 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %image, align 4
  %200 = ptrtoint ptr %image270 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %image270, align 4
  %dy289 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 1
  %201 = ptrtoint ptr %dy289 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %dy289, align 4
  %dy291 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 1
  %203 = ptrtoint ptr %dy291 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %dy291, align 4
  %204 = ptrtoint ptr %height71 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %height71, align 4
  %height296 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 3
  %206 = ptrtoint ptr %height296 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %height296, align 4
  %width299 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 2
  %207 = ptrtoint ptr %width299 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %width299, align 4
  %width301 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 2
  %209 = ptrtoint ptr %width301 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %width301, align 4
  %210 = ptrtoint ptr %hot to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %hot, align 4
  %hot305 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 4
  %212 = ptrtoint ptr %hot305 to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %211, ptr %hot305, align 4
  %y309 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 4, i32 1
  %213 = ptrtoint ptr %y309 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %y309, align 2
  %y311 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 4, i32 1
  %215 = ptrtoint ptr %y311 to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %214, ptr %y311, align 2
  %mask313 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 3
  %216 = ptrtoint ptr %mask313 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %mask313, align 4
  %mask314 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 3
  %218 = ptrtoint ptr %mask314 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %217, ptr %mask314, align 4
  %enable317 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 1
  %219 = ptrtoint ptr %enable317 to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %.sink, ptr %enable317, align 2
  %depth = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 6
  %220 = ptrtoint ptr %depth to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 1, ptr %depth, align 4
  %rop = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 2
  %221 = ptrtoint ptr %rop to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 1, ptr %rop, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %222 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %fbops, align 4
  %fb_cursor = getelementptr inbounds %struct.fb_ops, ptr %223, i32 0, i32 14
  %224 = ptrtoint ptr %fb_cursor to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %fb_cursor, align 4
  %tobool319.not = icmp eq ptr %225, null
  br i1 %tobool319.not, label %if.end259.if.then326_crit_edge, label %if.then320

if.end259.if.then326_crit_edge:                   ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then326

if.then320:                                       ; preds = %if.end259
  %call323 = call i32 %225(ptr noundef %info, ptr noundef nonnull %cursor) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call323)
  %phi.cmp = icmp eq i32 %call323, 0
  br i1 %phi.cmp, label %if.then320.if.end328_crit_edge, label %if.then320.if.then326_crit_edge

if.then320.if.then326_crit_edge:                  ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then326

if.then320.if.end328_crit_edge:                   ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end328

if.then326:                                       ; preds = %if.then320.if.then326_crit_edge, %if.end259.if.then326_crit_edge
  %call327 = call i32 @soft_cursor(ptr noundef %info, ptr noundef nonnull %cursor) #6
  br label %if.end328

if.end328:                                        ; preds = %if.then326, %if.then320.if.end328_crit_edge
  %cursor_reset329 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %226 = ptrtoint ptr %cursor_reset329 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 0, ptr %cursor_reset329, align 4
  br label %cleanup330

cleanup330:                                       ; preds = %if.end328, %if.then194, %if.end7.i501.cleanup330_crit_edge, %if.then177.cleanup330_crit_edge, %if.end7.i.cleanup330_crit_edge, %if.then36.cleanup330_crit_edge, %cond.end.cleanup330_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cursor) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccw_update_start(ptr noundef %info) #1 align 64 {
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
  switch i16 %5, label %cond.false [
    i16 4, label %entry.cond.true_crit_edge
    i16 1, label %entry.cond.true_crit_edge50
  ]

entry.cond.true_crit_edge50:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

entry.cond.true_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

cond.true:                                        ; preds = %entry.cond.true_crit_edge, %entry.cond.true_crit_edge50
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %yres, %cond.true ], [ %yres_virtual, %cond.false ]
  %7 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %cond = load i32, ptr %cond.in, align 4
  %yres9 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %yres9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yres9, align 4
  %var10 = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 7
  %xoffset = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 7, i32 4
  %10 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xoffset, align 4
  %12 = add i32 %9, %11
  %sub11 = sub i32 %cond, %12
  %yoffset13 = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 7, i32 5
  %13 = ptrtoint ptr %yoffset13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %yoffset13, align 4
  store i32 %14, ptr %xoffset, align 4
  store i32 %sub11, ptr %yoffset13, align 4
  %call19 = tail call i32 @fb_pan_display(ptr noundef %info, ptr noundef %var10) #6
  %xoffset21 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %15 = ptrtoint ptr %xoffset21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xoffset21, align 4
  %17 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %xoffset, align 4
  %yoffset25 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %18 = ptrtoint ptr %yoffset25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %yoffset25, align 4
  %20 = ptrtoint ptr %yoffset13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %yoffset13, align 4
  %vmode = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %21 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vmode, align 4
  %vmode30 = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 7, i32 25
  %23 = ptrtoint ptr %vmode30 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %vmode30, align 4
  ret i32 %call19
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
declare dso_local i32 @soft_cursor(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_pan_display(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

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
