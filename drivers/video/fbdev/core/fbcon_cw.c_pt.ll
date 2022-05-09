; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/core/fbcon_cw.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fbcon_cw.c"
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
define dso_local void @fbcon_rotate_cw(ptr nocapture noundef writeonly %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @cw_bmove, ptr %ops, align 4
  %clear = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 1
  %1 = ptrtoint ptr %clear to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cw_clear, ptr %clear, align 4
  %putcs = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 2
  %2 = ptrtoint ptr %putcs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @cw_putcs, ptr %putcs, align 4
  %clear_margins = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 3
  %3 = ptrtoint ptr %clear_margins to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cw_clear_margins, ptr %clear_margins, align 4
  %cursor = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 4
  %4 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cw_cursor, ptr %cursor, align 4
  %update_start = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 5
  %5 = ptrtoint ptr %update_start to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cw_update_start, ptr %update_start, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cw_bmove(ptr nocapture noundef readonly %vc, ptr noundef %info, i32 noundef %sy, i32 noundef %sx, i32 noundef %dy, i32 noundef %dx, i32 noundef %height, i32 noundef %width) #1 align 64 {
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
  switch i16 %5, label %lor.lhs.false7 [
    i16 4, label %entry.cond.true_crit_edge
    i16 1, label %entry.cond.true_crit_edge48
  ]

entry.cond.true_crit_edge48:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

entry.cond.true_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

lor.lhs.false7:                                   ; preds = %entry
  %xpanstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 6
  %7 = ptrtoint ptr %xpanstep to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %xpanstep, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %lor.lhs.false7.cond.true_crit_edge, label %cond.false

lor.lhs.false7.cond.true_crit_edge:               ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

cond.true:                                        ; preds = %lor.lhs.false7.cond.true_crit_edge, %entry.cond.true_crit_edge, %entry.cond.true_crit_edge48
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #8
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %var, %cond.true ], [ %xres_virtual, %cond.false ]
  %9 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %10 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 4
  %11 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %12 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %13 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %14 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %cond = load i32, ptr %cond.in, align 4
  %add = add i32 %height, %sy
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28
  %height9 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %15 = ptrtoint ptr %height9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height9, align 4
  %mul = mul i32 %16, %add
  %sub = sub i32 %cond, %mul
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %10, align 4
  %18 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vc_font, align 4
  %mul13 = mul i32 %19, %sx
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul13, ptr %9, align 4
  %add15 = add i32 %height, %dy
  %mul18 = mul i32 %16, %add15
  %sub19 = sub i32 %cond, %mul18
  %21 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub19, ptr %area, align 4
  %mul23 = mul i32 %19, %dx
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul23, ptr %13, align 4
  %mul27 = mul i32 %16, %height
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul27, ptr %12, align 4
  %mul31 = mul i32 %19, %width
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul31, ptr %11, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %25 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fbops, align 4
  %fb_copyarea = getelementptr inbounds %struct.fb_ops, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %fb_copyarea to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fb_copyarea, align 4
  call void %28(ptr noundef %info, ptr noundef nonnull %area) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %area) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cw_clear(ptr noundef readonly %vc, ptr noundef %info, i32 noundef %sy, i32 noundef %sx, i32 noundef %height, i32 noundef %width) #1 align 64 {
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
  switch i16 %7, label %lor.lhs.false8 [
    i16 4, label %entry.cond.true_crit_edge
    i16 1, label %entry.cond.true_crit_edge39
  ]

entry.cond.true_crit_edge39:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

entry.cond.true_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

lor.lhs.false8:                                   ; preds = %entry
  %xpanstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 6
  %9 = ptrtoint ptr %xpanstep to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %xpanstep, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool9.not = icmp eq i16 %10, 0
  br i1 %tobool9.not, label %lor.lhs.false8.cond.true_crit_edge, label %cond.false

lor.lhs.false8.cond.true_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

cond.true:                                        ; preds = %lor.lhs.false8.cond.true_crit_edge, %entry.cond.true_crit_edge, %entry.cond.true_crit_edge39
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #8
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond11.in = phi ptr [ %var, %cond.true ], [ %xres_virtual, %cond.false ]
  %11 = ptrtoint ptr %cond11.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %cond11 = load i32, ptr %cond11.in, align 4
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
  %12 = ptrtoint ptr %vc_can_do_color.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i = load i16, ptr %vc_can_do_color.i, align 4
  %13 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool1.not.i = icmp eq i16 %13, 0
  br i1 %tobool1.not.i, label %if.end8.i, label %cond.end.i

cond.end.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %vc_video_erase_char4.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %14 = ptrtoint ptr %vc_video_erase_char4.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vc_video_erase_char4.i, align 4
  %conv5.i = zext i16 %15 to i32
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
  %16 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i.i, align 4
  %length2.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %18 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length2.i.i, align 4
  %20 = tail call i32 @llvm.umax.i32(i32 %17, i32 %19) #6
  %length4.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %21 = ptrtoint ptr %length4.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length4.i.i, align 4
  %23 = tail call i32 @llvm.umax.i32(i32 %22, i32 %20) #6
  %shl.i.i = shl i32 4095, %23
  %neg.i.i = and i32 %shl.i.i, 255
  %and.i.i = xor i32 %neg.i.i, 255
  %visual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %24 = ptrtoint ptr %visual.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %visual.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  %vc_video_erase_char13.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %26 = ptrtoint ptr %vc_video_erase_char13.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vc_video_erase_char13.i, align 4
  %28 = and i16 %27, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool16.not.i = icmp eq i16 %28, 0
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
  %29 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 5
  %30 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 4
  %31 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 3
  %32 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 2
  %33 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 1
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i, ptr %30, align 4
  %add = add i32 %height, %sy
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28
  %height13 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %35 = ptrtoint ptr %height13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height13, align 4
  %mul = mul i32 %36, %add
  %sub = sub i32 %cond11, %mul
  %37 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub, ptr %region, align 4
  %38 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vc_font, align 4
  %mul16 = mul i32 %39, %sx
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul16, ptr %33, align 4
  %mul19 = mul i32 %39, %width
  %41 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %mul19, ptr %31, align 4
  %mul23 = mul i32 %36, %height
  %42 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul23, ptr %32, align 4
  %43 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %29, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %44 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fbops, align 4
  %fb_fillrect = getelementptr inbounds %struct.fb_ops, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %fb_fillrect to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fb_fillrect, align 4
  call void %47(ptr noundef %info, ptr noundef nonnull %region) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %region) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cw_putcs(ptr nocapture noundef readonly %vc, ptr noundef %info, ptr nocapture noundef readonly %s, i32 noundef %count, i32 noundef %yy, i32 noundef %xx, i32 noundef %fg, i32 noundef %bg) #1 align 64 {
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
  %div119 = lshr i32 %add, 3
  %6 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vc_font, align 4
  %mul = mul i32 %div119, %7
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
  %cmp.i120 = icmp eq i32 %call.i, 1
  %conv.i = zext i16 %15 to i32
  %and.i = lshr i32 %conv.i, 10
  %16 = and i32 %and.i, 3
  %and9.i = lshr i32 %conv.i, 7
  %17 = and i32 %and9.i, 4
  %18 = or i32 %16, %17
  %attribute.2.i = select i1 %cmp.i120, i32 %18, i32 0
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
  switch i16 %22, label %lor.lhs.false17 [
    i16 4, label %entry.cond.end_crit_edge
    i16 1, label %entry.cond.end_crit_edge140
  ]

entry.cond.end_crit_edge140:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

lor.lhs.false17:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %xpanstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 6
  %24 = ptrtoint ptr %xpanstep to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %xpanstep, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not = icmp eq i16 %25, 0
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %spec.select = select i1 %tobool.not, ptr %var.i, ptr %xres_virtual
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false17, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge140
  %cond.in = phi ptr [ %var.i, %entry.cond.end_crit_edge ], [ %var.i, %entry.cond.end_crit_edge140 ], [ %spec.select, %lor.lhs.false17 ]
  %fontbuffer = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 23
  %26 = ptrtoint ptr %fontbuffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fontbuffer, align 4
  %tobool19.not = icmp eq ptr %27, null
  br i1 %tobool19.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %28 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %cond = load i32, ptr %cond.in, align 4
  %fg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %29 = ptrtoint ptr %fg_color to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %fg, ptr %fg_color, align 4
  %bg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %30 = ptrtoint ptr %bg_color to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %bg, ptr %bg_color, align 4
  %add20.neg = xor i32 %yy, -1
  %31 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height, align 4
  %mul23.neg = mul i32 %32, %add20.neg
  %sub24 = add i32 %mul23.neg, %cond
  %33 = ptrtoint ptr %image to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub24, ptr %image, align 4
  %34 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vc_font, align 4
  %mul27 = mul i32 %35, %xx
  %dy = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %36 = ptrtoint ptr %dy to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul27, ptr %dy, align 4
  %width30 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %37 = ptrtoint ptr %width30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %32, ptr %width30, align 4
  %depth = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 6
  %38 = ptrtoint ptr %depth to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attribute.2.i)
  %tobool31.not = icmp eq i32 %attribute.2.i, 0
  br i1 %tobool31.not, label %if.end.if.end37_crit_edge, label %if.end8.i

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #9
  %tobool34.not = icmp eq ptr %call9.i, null
  br i1 %tobool34.not, label %if.end8.i.cleanup_crit_edge, label %if.end8.i.if.end37_crit_edge

if.end8.i.if.end37_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end8.i.if.end37_crit_edge, %if.end.if.end37_crit_edge
  %buf.0 = phi ptr [ %call9.i, %if.end8.i.if.end37_crit_edge ], [ null, %if.end.if.end37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool38.not131 = icmp eq i32 %count, 0
  br i1 %tobool38.not131, label %if.end37.while.end_crit_edge, label %while.body.lr.ph

if.end37.while.end_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end37
  %height46 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %neg = sub i32 0, %11
  %neg53 = sub i32 0, %13
  %data = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %vc_hi_font_mask.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %and.i.i = and i32 %attribute.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i122 = icmp ne i32 %and.i.i, 0
  %and16.i.i = and i32 %attribute.2.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  %and26.i.i = shl i32 %attribute.2.i, 30
  %sext.i.i = ashr i32 %and26.i.i, 31
  %neg30.i.i = trunc i32 %sext.i.i to i8
  %fbops.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  br label %while.body

while.body:                                       ; preds = %cw_putcs_aligned.exit.while.body_crit_edge, %while.body.lr.ph
  %s.addr.0133 = phi ptr [ %s, %while.body.lr.ph ], [ %add.ptr, %cw_putcs_aligned.exit.while.body_crit_edge ]
  %count.addr.0132 = phi i32 [ %count, %while.body.lr.ph ], [ %sub60, %cw_putcs_aligned.exit.while.body_crit_edge ]
  %39 = call i32 @llvm.umin.i32(i32 %count.addr.0132, i32 %div3)
  %40 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vc_font, align 4
  %mul45 = mul i32 %41, %39
  %42 = ptrtoint ptr %height46 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul45, ptr %height46, align 4
  %43 = ptrtoint ptr %width30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %width30, align 4
  %add48 = add i32 %44, 7
  %shr = lshr i32 %add48, 3
  %add49 = add i32 %sub, %shr
  %and = and i32 %add49, %neg
  %mul51 = mul i32 %and, %mul45
  %add52 = add i32 %sub8, %mul51
  %and54 = and i32 %add52, %neg53
  %call56 = call ptr @fb_get_buffer_offset(ptr noundef %info, ptr noundef %pixmap, i32 noundef %and54) #6
  %45 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call56, ptr %data, align 4
  %46 = ptrtoint ptr %vc_hi_font_mask.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vc_hi_font_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool.not.i = icmp eq i16 %47, 0
  %conv1.i = select i1 %tobool.not.i, i32 255, i32 511
  %48 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %height, align 4
  %add.i = add i32 %49, 7
  %shr.i = lshr i32 %add.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool2.not5.i = icmp eq i32 %39, 0
  br i1 %tobool2.not5.i, label %while.body.cw_putcs_aligned.exit_crit_edge, label %while.body.lr.ph.i

while.body.cw_putcs_aligned.exit_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cw_putcs_aligned.exit

while.body.lr.ph.i:                               ; preds = %while.body
  %50 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fbcon_par, align 4
  %fontbuffer.i = getelementptr inbounds %struct.fbcon_ops, ptr %51, i32 0, i32 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i)
  %cmp.i123 = icmp eq i32 %shr.i, 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end13.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec9.in.i = phi i32 [ %39, %while.body.lr.ph.i ], [ %dec9.i, %if.end13.i.while.body.i_crit_edge ]
  %dst.addr.07.i = phi ptr [ %call56, %while.body.lr.ph.i ], [ %add.ptr17.i, %if.end13.i.while.body.i_crit_edge ]
  %s.addr.06.i = phi ptr [ %s.addr.0133, %while.body.lr.ph.i ], [ %incdec.ptr.i, %if.end13.i.while.body.i_crit_edge ]
  %dec9.i = add i32 %dec9.in.i, -1
  %52 = ptrtoint ptr %fontbuffer.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fontbuffer.i, align 4
  %incdec.ptr.i = getelementptr i16, ptr %s.addr.06.i, i32 1
  %54 = ptrtoint ptr %s.addr.06.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %s.addr.06.i, align 2
  %conv3.i = zext i16 %55 to i32
  %and.i124 = and i32 %conv1.i, %conv3.i
  %mul.i = mul i32 %and.i124, %mul
  %add.ptr.i = getelementptr i8, ptr %53, i32 %mul.i
  %56 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr = load i32, ptr %vc_font, align 4
  br i1 %tobool31.not, label %while.body.i.if.end.i128_crit_edge, label %if.then.i125

while.body.i.if.end.i128_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i128

if.then.i125:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp658.not.i.i = icmp eq i32 %.pr, 0
  br i1 %cmp658.not.i.i, label %if.end.i128.thread, label %for.cond8.preheader.lr.ph.i.i

for.cond8.preheader.lr.ph.i.i:                    ; preds = %if.then.i125
  %57 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %height, align 4
  %add.i.i = add i32 %58, 7
  %shr.i.i = lshr i32 %add.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %58)
  %cmp.i.i126 = icmp ult i32 %58, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i.i)
  %cmp953.not.i.i = icmp ult i32 %add.i.i, 8
  %conv13.i.i = select i1 %cmp.i.i126, i8 -128, i8 -64
  %idx.neg.i.i = sub nsw i32 0, %shr.i.i
  %umax.i.i = call i32 @llvm.umax.i32(i32 %shr.i.i, i32 1) #6
  br label %for.cond8.preheader.i.i

for.cond8.preheader.i.i:                          ; preds = %for.inc34.i.i.for.cond8.preheader.i.i_crit_edge, %for.cond8.preheader.lr.ph.i.i
  %dst.addr.062.i.i = phi ptr [ %buf.0, %for.cond8.preheader.lr.ph.i.i ], [ %dst.addr.1.lcssa.i.i, %for.inc34.i.i.for.cond8.preheader.i.i_crit_edge ]
  %i.060.i.i = phi i32 [ 0, %for.cond8.preheader.lr.ph.i.i ], [ %inc35.i.i, %for.inc34.i.i.for.cond8.preheader.i.i_crit_edge ]
  %src.addr.059.i.i = phi ptr [ %add.ptr.i, %for.cond8.preheader.lr.ph.i.i ], [ %src.addr.1.lcssa.i.i, %for.inc34.i.i.for.cond8.preheader.i.i_crit_edge ]
  br i1 %cmp953.not.i.i, label %for.cond8.preheader.i.i.for.inc34.i.i_crit_edge, label %for.body11.lr.ph.i.i

for.cond8.preheader.i.i.for.inc34.i.i_crit_edge:  ; preds = %for.cond8.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc34.i.i

for.body11.lr.ph.i.i:                             ; preds = %for.cond8.preheader.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.060.i.i)
  %tobool19.not.i.i = icmp eq i32 %i.060.i.i, 0
  %or.cond52.i.i = select i1 %tobool17.not.i.i, i1 true, i1 %tobool19.not.i.i
  br label %for.body11.i.i

for.body11.i.i:                                   ; preds = %if.end25.i.i.for.body11.i.i_crit_edge, %for.body11.lr.ph.i.i
  %dst.addr.156.i.i = phi ptr [ %dst.addr.062.i.i, %for.body11.lr.ph.i.i ], [ %incdec.ptr33.i.i, %if.end25.i.i.for.body11.i.i_crit_edge ]
  %j.055.i.i = phi i32 [ 0, %for.body11.lr.ph.i.i ], [ %inc.i.i, %if.end25.i.i.for.body11.i.i_crit_edge ]
  %src.addr.154.i.i = phi ptr [ %src.addr.059.i.i, %for.body11.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.end25.i.i.for.body11.i.i_crit_edge ]
  %59 = ptrtoint ptr %src.addr.154.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %src.addr.154.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.055.i.i)
  %tobool12.not.i.i = icmp eq i32 %j.055.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i122, i1 %tobool12.not.i.i, i1 false
  %or.i.i = select i1 %or.cond.i.i, i8 %conv13.i.i, i8 0
  %c.0.i.i = or i8 %or.i.i, %60
  br i1 %or.cond52.i.i, label %for.body11.i.i.if.end25.i.i_crit_edge, label %if.then20.i.i

for.body11.i.i.if.end25.i.i_crit_edge:            ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i.i

if.then20.i.i:                                    ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %src.addr.154.i.i, i32 %idx.neg.i.i
  %61 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %add.ptr.i.i, align 1
  %or2351.i.i = or i8 %62, %c.0.i.i
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.then20.i.i, %for.body11.i.i.if.end25.i.i_crit_edge
  %c.1.i.i = phi i8 [ %or2351.i.i, %if.then20.i.i ], [ %c.0.i.i, %for.body11.i.i.if.end25.i.i_crit_edge ]
  %spec.select.i.i127 = xor i8 %c.1.i.i, %neg30.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %src.addr.154.i.i, i32 1
  %incdec.ptr33.i.i = getelementptr i8, ptr %dst.addr.156.i.i, i32 1
  %63 = ptrtoint ptr %dst.addr.156.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %spec.select.i.i127, ptr %dst.addr.156.i.i, align 1
  %inc.i.i = add nuw nsw i32 %j.055.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %if.end25.i.i.for.inc34.i.i_crit_edge, label %if.end25.i.i.for.body11.i.i_crit_edge

if.end25.i.i.for.body11.i.i_crit_edge:            ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body11.i.i

if.end25.i.i.for.inc34.i.i_crit_edge:             ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc34.i.i

for.inc34.i.i:                                    ; preds = %if.end25.i.i.for.inc34.i.i_crit_edge, %for.cond8.preheader.i.i.for.inc34.i.i_crit_edge
  %src.addr.1.lcssa.i.i = phi ptr [ %src.addr.059.i.i, %for.cond8.preheader.i.i.for.inc34.i.i_crit_edge ], [ %incdec.ptr.i.i, %if.end25.i.i.for.inc34.i.i_crit_edge ]
  %dst.addr.1.lcssa.i.i = phi ptr [ %dst.addr.062.i.i, %for.cond8.preheader.i.i.for.inc34.i.i_crit_edge ], [ %incdec.ptr33.i.i, %if.end25.i.i.for.inc34.i.i_crit_edge ]
  %inc35.i.i = add nuw i32 %i.060.i.i, 1
  %64 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %vc_font, align 4
  %cmp6.i.i = icmp ult i32 %inc35.i.i, %65
  br i1 %cmp6.i.i, label %for.inc34.i.i.for.cond8.preheader.i.i_crit_edge, label %for.inc34.i.i.if.end.i128_crit_edge

for.inc34.i.i.if.end.i128_crit_edge:              ; preds = %for.inc34.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i128

for.inc34.i.i.for.cond8.preheader.i.i_crit_edge:  ; preds = %for.inc34.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond8.preheader.i.i

if.end.i128:                                      ; preds = %for.inc34.i.i.if.end.i128_crit_edge, %while.body.i.if.end.i128_crit_edge
  %66 = phi i32 [ %.pr, %while.body.i.if.end.i128_crit_edge ], [ %65, %for.inc34.i.i.if.end.i128_crit_edge ]
  %src.0.i = phi ptr [ %add.ptr.i, %while.body.i.if.end.i128_crit_edge ], [ %buf.0, %for.inc34.i.i.if.end.i128_crit_edge ]
  br i1 %cmp.i123, label %if.then9.i, label %if.end.i128.if.else.i_crit_edge, !prof !9

if.end.i128.if.else.i_crit_edge:                  ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.end.i128.thread:                               ; preds = %if.then.i125
  br i1 %cmp.i123, label %if.end.i128.thread.if.end13.i_crit_edge, label %if.end.i128.thread.if.else.i_crit_edge, !prof !9

if.end.i128.thread.if.else.i_crit_edge:           ; preds = %if.end.i128.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.end.i128.thread.if.end13.i_crit_edge:          ; preds = %if.end.i128.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then9.i:                                       ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not4.i.i = icmp eq i32 %66, 0
  br i1 %tobool.not4.i.i, label %if.then9.i.if.end13.i_crit_edge, label %if.then9.i.for.cond1.preheader.i.i_crit_edge

if.then9.i.for.cond1.preheader.i.i_crit_edge:     ; preds = %if.then9.i
  br label %for.cond1.preheader.i.i

if.then9.i.if.end13.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

for.cond1.preheader.i.i:                          ; preds = %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge, %if.then9.i.for.cond1.preheader.i.i_crit_edge
  %dec7.in.i.i = phi i32 [ %dec7.i.i, %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge ], [ %66, %if.then9.i.for.cond1.preheader.i.i_crit_edge ]
  %dst.addr.06.i.i = phi ptr [ %add.ptr.i2.i, %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge ], [ %dst.addr.07.i, %if.then9.i.for.cond1.preheader.i.i_crit_edge ]
  %src.addr.05.i.i = phi ptr [ %incdec.ptr.i1.i, %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge ], [ %src.0.i, %if.then9.i.for.cond1.preheader.i.i_crit_edge ]
  %dec7.i.i = add i32 %dec7.in.i.i, -1
  %incdec.ptr.i1.i = getelementptr i8, ptr %src.addr.05.i.i, i32 1
  %67 = ptrtoint ptr %src.addr.05.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %src.addr.05.i.i, align 1
  %69 = ptrtoint ptr %dst.addr.06.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %dst.addr.06.i.i, align 1
  %add.ptr.i2.i = getelementptr i8, ptr %dst.addr.06.i.i, i32 %and
  %tobool.not.i3.i = icmp eq i32 %dec7.i.i, 0
  br i1 %tobool.not.i3.i, label %for.cond1.preheader.i.i.if.end13.i_crit_edge, label %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge

for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge: ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i.if.end13.i_crit_edge:     ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end.i128.thread.if.else.i_crit_edge, %if.end.i128.if.else.i_crit_edge
  %src.0.i136 = phi ptr [ %buf.0, %if.end.i128.thread.if.else.i_crit_edge ], [ %src.0.i, %if.end.i128.if.else.i_crit_edge ]
  %70 = phi i32 [ 0, %if.end.i128.thread.if.else.i_crit_edge ], [ %66, %if.end.i128.if.else.i_crit_edge ]
  call void @fb_pad_aligned_buffer(ptr noundef %dst.addr.07.i, i32 noundef %and, ptr noundef %src.0.i136, i32 noundef %shr.i, i32 noundef %70) #6
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %for.cond1.preheader.i.i.if.end13.i_crit_edge, %if.then9.i.if.end13.i_crit_edge, %if.end.i128.thread.if.end13.i_crit_edge
  %71 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %vc_font, align 4
  %mul16.i = mul i32 %72, %and
  %add.ptr17.i = getelementptr i8, ptr %dst.addr.07.i, i32 %mul16.i
  %tobool2.not.i = icmp eq i32 %dec9.i, 0
  br i1 %tobool2.not.i, label %if.end13.i.cw_putcs_aligned.exit_crit_edge, label %if.end13.i.while.body.i_crit_edge

if.end13.i.while.body.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end13.i.cw_putcs_aligned.exit_crit_edge:       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cw_putcs_aligned.exit

cw_putcs_aligned.exit:                            ; preds = %if.end13.i.cw_putcs_aligned.exit_crit_edge, %while.body.cw_putcs_aligned.exit_crit_edge
  %73 = ptrtoint ptr %fbops.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fbops.i, align 4
  %fb_imageblit.i = getelementptr inbounds %struct.fb_ops, ptr %74, i32 0, i32 13
  %75 = ptrtoint ptr %fb_imageblit.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fb_imageblit.i, align 4
  call void %76(ptr noundef %info, ptr noundef nonnull %image) #6
  %77 = ptrtoint ptr %height46 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %height46, align 4
  %79 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dy, align 4
  %add59 = add i32 %80, %78
  store i32 %add59, ptr %dy, align 4
  %sub60 = sub i32 %count.addr.0132, %39
  %add.ptr = getelementptr i16, ptr %s.addr.0133, i32 %39
  %tobool38.not = icmp eq i32 %sub60, 0
  br i1 %tobool38.not, label %cw_putcs_aligned.exit.while.end_crit_edge, label %cw_putcs_aligned.exit.while.body_crit_edge

cw_putcs_aligned.exit.while.body_crit_edge:       ; preds = %cw_putcs_aligned.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cw_putcs_aligned.exit.while.end_crit_edge:        ; preds = %cw_putcs_aligned.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %cw_putcs_aligned.exit.while.end_crit_edge, %if.end37.while.end_crit_edge
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
define internal void @cw_clear_margins(ptr nocapture noundef readonly %vc, ptr noundef %info, i32 noundef %color, i32 noundef %bottom_only) #1 align 64 {
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
  %add = add i32 %22, %mul
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %12, align 4
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
  %cmp13 = icmp sgt i32 %sub4, 0
  br i1 %cmp13, label %if.then14, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %32 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %xoffset, align 4
  %34 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %region, align 4
  %yoffset18 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %35 = ptrtoint ptr %yoffset18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %yoffset18, align 4
  %37 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %12, align 4
  %38 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %yres, align 4
  %40 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %14, align 4
  %41 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub4, ptr %13, align 4
  %fbops24 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %42 = ptrtoint ptr %fbops24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fbops24, align 4
  %fb_fillrect25 = getelementptr inbounds %struct.fb_ops, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %fb_fillrect25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fb_fillrect25, align 4
  call void %45(ptr noundef %info, ptr noundef nonnull %region) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then14, %if.end.if.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %region) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cw_cursor(ptr nocapture noundef readonly %vc, ptr noundef %info, i32 noundef %mode, i32 noundef %fg, i32 noundef %bg) #1 align 64 {
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
  switch i16 %18, label %lor.lhs.false12 [
    i16 4, label %entry.cond.true_crit_edge
    i16 1, label %entry.cond.true_crit_edge585
  ]

entry.cond.true_crit_edge585:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

entry.cond.true_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

lor.lhs.false12:                                  ; preds = %entry
  %xpanstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 6
  %20 = ptrtoint ptr %xpanstep to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %xpanstep, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool13.not = icmp eq i16 %21, 0
  br i1 %tobool13.not, label %lor.lhs.false12.cond.true_crit_edge, label %cond.false

lor.lhs.false12.cond.true_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

cond.true:                                        ; preds = %lor.lhs.false12.cond.true_crit_edge, %entry.cond.true_crit_edge, %entry.cond.true_crit_edge585
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #8
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond15.in = phi ptr [ %var, %cond.true ], [ %xres_virtual, %cond.false ]
  %22 = ptrtoint ptr %cond15.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %cond15 = load i32, ptr %cond15.in, align 4
  %fontbuffer = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 23
  %23 = ptrtoint ptr %fontbuffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fontbuffer, align 4
  %tobool16.not = icmp eq ptr %24, null
  br i1 %tobool16.not, label %cond.end.cleanup334_crit_edge, label %if.end

cond.end.cleanup334_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup334

if.end:                                           ; preds = %cond.end
  %25 = ptrtoint ptr %cursor to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %cursor, align 4
  %vc_pos = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 26
  %26 = ptrtoint ptr %vc_pos to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vc_pos, align 4
  %28 = inttoptr i32 %27 to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %28, align 2
  %conv17 = zext i16 %30 to i32
  %var.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %fix.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call.i = tail call i32 @fb_get_color_depth(ptr noundef %var.i, ptr noundef %fix.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i468 = icmp eq i32 %call.i, 1
  %and.i = lshr i32 %conv17, 10
  %31 = and i32 %and.i, 3
  %and9.i = lshr i32 %conv17, 7
  %32 = and i32 %and9.i, 4
  %33 = or i32 %31, %32
  %attribute.2.i = select i1 %cmp.i468, i32 %33, i32 0
  %34 = ptrtoint ptr %fontbuffer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fontbuffer, align 4
  %and22 = and i32 %conv1, %conv17
  %36 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vc_font, align 4
  %mul = mul i32 %and22, %shr
  %mul24 = mul i32 %mul, %37
  %add.ptr = getelementptr i8, ptr %35, i32 %mul24
  %image = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5
  %data = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 7
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %cmp25.not = icmp eq ptr %39, %add.ptr
  br i1 %cmp25.not, label %lor.lhs.false27, label %if.end.if.then29_crit_edge

if.end.if.then29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

lor.lhs.false27:                                  ; preds = %if.end
  %cursor_reset = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %40 = ptrtoint ptr %cursor_reset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cursor_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool28.not = icmp eq i32 %41, 0
  br i1 %tobool28.not, label %lor.lhs.false27.if.end36_crit_edge, label %lor.lhs.false27.if.then29_crit_edge

lor.lhs.false27.if.then29_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

lor.lhs.false27.if.end36_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then29:                                        ; preds = %lor.lhs.false27.if.then29_crit_edge, %if.end.if.then29_crit_edge
  %42 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr, ptr %data, align 4
  %43 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %cursor, align 4
  %45 = or i16 %44, 1
  store i16 %45, ptr %cursor, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then29, %lor.lhs.false27.if.end36_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attribute.2.i)
  %tobool37.not = icmp eq i32 %attribute.2.i, 0
  br i1 %tobool37.not, label %if.end36.if.end46_crit_edge, label %if.then38

if.end36.if.end46_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then38:                                        ; preds = %if.end36
  %46 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vc_font, align 4
  %48 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shr, i32 %47) #6
  %49 = extractvalue { i32, i1 } %48, 1
  br i1 %49, label %if.then38.cleanup334_crit_edge, label %if.end7.i, !prof !10

if.then38.cleanup334_crit_edge:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup334

if.end7.i:                                        ; preds = %if.then38
  %50 = extractvalue { i32, i1 } %48, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %50, i32 noundef 2592) #9
  %tobool42.not = icmp eq ptr %call8.i, null
  br i1 %tobool42.not, label %if.end7.i.cleanup334_crit_edge, label %if.end44

if.end7.i.cleanup334_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup334

if.end44:                                         ; preds = %if.end7.i
  %cursor_data = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 22
  %51 = ptrtoint ptr %cursor_data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cursor_data, align 4
  tail call void @kfree(ptr noundef %52) #6
  %53 = ptrtoint ptr %cursor_data to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call8.i, ptr %cursor_data, align 4
  %54 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vc_font, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp658.not.i = icmp eq i32 %55, 0
  br i1 %cmp658.not.i, label %if.end44.if.end46_crit_edge, label %for.cond8.preheader.lr.ph.i

if.end44.if.end46_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

for.cond8.preheader.lr.ph.i:                      ; preds = %if.end44
  %56 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %height, align 4
  %add.i470 = add i32 %57, 7
  %shr.i = lshr i32 %add.i470, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %57)
  %cmp.i471 = icmp ult i32 %57, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i470)
  %cmp953.not.i = icmp ult i32 %add.i470, 8
  %and.i472 = and i32 %attribute.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i472)
  %tobool.not.i = icmp ne i32 %and.i472, 0
  %conv13.i = select i1 %cmp.i471, i8 -128, i8 -64
  %and16.i = and i32 %attribute.2.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %idx.neg.i = sub nsw i32 0, %shr.i
  %and26.i = shl i32 %attribute.2.i, 30
  %sext.i = ashr i32 %and26.i, 31
  %neg30.i = trunc i32 %sext.i to i8
  %umax.i = tail call i32 @llvm.umax.i32(i32 %shr.i, i32 1) #6
  br label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %for.inc34.i.for.cond8.preheader.i_crit_edge, %for.cond8.preheader.lr.ph.i
  %dst.addr.062.i = phi ptr [ %call8.i, %for.cond8.preheader.lr.ph.i ], [ %dst.addr.1.lcssa.i, %for.inc34.i.for.cond8.preheader.i_crit_edge ]
  %i.060.i = phi i32 [ 0, %for.cond8.preheader.lr.ph.i ], [ %inc35.i, %for.inc34.i.for.cond8.preheader.i_crit_edge ]
  %src.addr.059.i = phi ptr [ %add.ptr, %for.cond8.preheader.lr.ph.i ], [ %src.addr.1.lcssa.i, %for.inc34.i.for.cond8.preheader.i_crit_edge ]
  br i1 %cmp953.not.i, label %for.cond8.preheader.i.for.inc34.i_crit_edge, label %for.body11.lr.ph.i

for.cond8.preheader.i.for.inc34.i_crit_edge:      ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc34.i

for.body11.lr.ph.i:                               ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.060.i)
  %tobool19.not.i = icmp eq i32 %i.060.i, 0
  %or.cond52.i = select i1 %tobool17.not.i, i1 true, i1 %tobool19.not.i
  br label %for.body11.i

for.body11.i:                                     ; preds = %if.end25.i.for.body11.i_crit_edge, %for.body11.lr.ph.i
  %dst.addr.156.i = phi ptr [ %dst.addr.062.i, %for.body11.lr.ph.i ], [ %incdec.ptr33.i, %if.end25.i.for.body11.i_crit_edge ]
  %j.055.i = phi i32 [ 0, %for.body11.lr.ph.i ], [ %inc.i, %if.end25.i.for.body11.i_crit_edge ]
  %src.addr.154.i = phi ptr [ %src.addr.059.i, %for.body11.lr.ph.i ], [ %incdec.ptr.i, %if.end25.i.for.body11.i_crit_edge ]
  %58 = ptrtoint ptr %src.addr.154.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %src.addr.154.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.055.i)
  %tobool12.not.i = icmp eq i32 %j.055.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool12.not.i, i1 false
  %or.i = select i1 %or.cond.i, i8 %conv13.i, i8 0
  %c.0.i = or i8 %or.i, %59
  br i1 %or.cond52.i, label %for.body11.i.if.end25.i_crit_edge, label %if.then20.i

for.body11.i.if.end25.i_crit_edge:                ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then20.i:                                      ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %src.addr.154.i, i32 %idx.neg.i
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr.i, align 1
  %or2351.i = or i8 %61, %c.0.i
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then20.i, %for.body11.i.if.end25.i_crit_edge
  %c.1.i = phi i8 [ %or2351.i, %if.then20.i ], [ %c.0.i, %for.body11.i.if.end25.i_crit_edge ]
  %spec.select.i = xor i8 %c.1.i, %neg30.i
  %incdec.ptr.i = getelementptr i8, ptr %src.addr.154.i, i32 1
  %incdec.ptr33.i = getelementptr i8, ptr %dst.addr.156.i, i32 1
  %62 = ptrtoint ptr %dst.addr.156.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %spec.select.i, ptr %dst.addr.156.i, align 1
  %inc.i = add nuw nsw i32 %j.055.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %if.end25.i.for.inc34.i_crit_edge, label %if.end25.i.for.body11.i_crit_edge

if.end25.i.for.body11.i_crit_edge:                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body11.i

if.end25.i.for.inc34.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc34.i

for.inc34.i:                                      ; preds = %if.end25.i.for.inc34.i_crit_edge, %for.cond8.preheader.i.for.inc34.i_crit_edge
  %src.addr.1.lcssa.i = phi ptr [ %src.addr.059.i, %for.cond8.preheader.i.for.inc34.i_crit_edge ], [ %incdec.ptr.i, %if.end25.i.for.inc34.i_crit_edge ]
  %dst.addr.1.lcssa.i = phi ptr [ %dst.addr.062.i, %for.cond8.preheader.i.for.inc34.i_crit_edge ], [ %incdec.ptr33.i, %if.end25.i.for.inc34.i_crit_edge ]
  %inc35.i = add nuw i32 %i.060.i, 1
  %63 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %vc_font, align 4
  %cmp6.i = icmp ult i32 %inc35.i, %64
  br i1 %cmp6.i, label %for.inc34.i.for.cond8.preheader.i_crit_edge, label %for.inc34.i.if.end46_crit_edge

for.inc34.i.if.end46_crit_edge:                   ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

for.inc34.i.for.cond8.preheader.i_crit_edge:      ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond8.preheader.i

if.end46:                                         ; preds = %for.inc34.i.if.end46_crit_edge, %if.end44.if.end46_crit_edge, %if.end36.if.end46_crit_edge
  %src.1 = phi ptr [ %add.ptr, %if.end36.if.end46_crit_edge ], [ %call8.i, %if.end44.if.end46_crit_edge ], [ %call8.i, %for.inc34.i.if.end46_crit_edge ]
  %fg_color = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 4
  %65 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fg_color, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %fg)
  %cmp49.not = icmp eq i32 %66, %fg
  br i1 %cmp49.not, label %lor.lhs.false51, label %if.end46.if.then59_crit_edge

if.end46.if.then59_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then59

lor.lhs.false51:                                  ; preds = %if.end46
  %bg_color = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 5
  %67 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bg_color, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %bg)
  %cmp54.not = icmp eq i32 %68, %bg
  br i1 %cmp54.not, label %lor.lhs.false56, label %lor.lhs.false51.if.then59_crit_edge

lor.lhs.false51.if.then59_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then59

lor.lhs.false56:                                  ; preds = %lor.lhs.false51
  %cursor_reset57 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %69 = ptrtoint ptr %cursor_reset57 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cursor_reset57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool58.not = icmp eq i32 %70, 0
  br i1 %tobool58.not, label %lor.lhs.false56.if.end70_crit_edge, label %lor.lhs.false56.if.then59_crit_edge

lor.lhs.false56.if.then59_crit_edge:              ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then59

lor.lhs.false56.if.end70_crit_edge:               ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then59:                                        ; preds = %lor.lhs.false56.if.then59_crit_edge, %lor.lhs.false51.if.then59_crit_edge, %if.end46.if.then59_crit_edge
  %71 = ptrtoint ptr %fg_color to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %fg, ptr %fg_color, align 4
  %bg_color65 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 5
  %72 = ptrtoint ptr %bg_color65 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %bg, ptr %bg_color65, align 4
  %73 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %cursor, align 4
  %75 = or i16 %74, 8
  store i16 %75, ptr %cursor, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then59, %lor.lhs.false56.if.end70_crit_edge
  %height73 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 3
  %76 = ptrtoint ptr %height73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %height73, align 4
  %78 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %vc_font, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %79)
  %cmp76.not = icmp eq i32 %77, %79
  br i1 %cmp76.not, label %lor.lhs.false78, label %if.end70.if.then89_crit_edge

if.end70.if.then89_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then89

lor.lhs.false78:                                  ; preds = %if.end70
  %width81 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 2
  %80 = ptrtoint ptr %width81 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %width81, align 4
  %82 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp84.not = icmp eq i32 %81, %83
  br i1 %cmp84.not, label %lor.lhs.false86, label %lor.lhs.false78.if.then89_crit_edge

lor.lhs.false78.if.then89_crit_edge:              ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then89

lor.lhs.false86:                                  ; preds = %lor.lhs.false78
  %cursor_reset87 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %84 = ptrtoint ptr %cursor_reset87 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cursor_reset87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool88.not = icmp eq i32 %85, 0
  br i1 %tobool88.not, label %lor.lhs.false86.if.end104_crit_edge, label %lor.lhs.false86.if.then89_crit_edge

lor.lhs.false86.if.then89_crit_edge:              ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then89

lor.lhs.false86.if.end104_crit_edge:              ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.then89:                                        ; preds = %lor.lhs.false86.if.then89_crit_edge, %lor.lhs.false78.if.then89_crit_edge, %if.end70.if.then89_crit_edge
  %86 = ptrtoint ptr %height73 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %79, ptr %height73, align 4
  %87 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %height, align 4
  %width99 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 2
  %89 = ptrtoint ptr %width99 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %width99, align 4
  %90 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %cursor, align 4
  %92 = or i16 %91, 32
  store i16 %92, ptr %cursor, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then89, %lor.lhs.false86.if.end104_crit_edge
  %93 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %height, align 4
  %mul107.neg584 = mul i32 %cond.i.neg, %94
  %add110.neg = sub i32 %cond15, %94
  %sub = add i32 %add110.neg, %mul107.neg584
  %95 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %state, align 4
  %97 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %vc_font, align 4
  %mul114 = mul i32 %98, %96
  %99 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %image, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %sub)
  %cmp118.not = icmp eq i32 %100, %sub
  br i1 %cmp118.not, label %lor.lhs.false120, label %if.end104.if.then129_crit_edge

if.end104.if.then129_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then129

lor.lhs.false120:                                 ; preds = %if.end104
  %dy123 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 1
  %101 = ptrtoint ptr %dy123 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %dy123, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %mul114)
  %cmp124.not = icmp eq i32 %102, %mul114
  br i1 %cmp124.not, label %lor.lhs.false126, label %lor.lhs.false120.if.then129_crit_edge

lor.lhs.false120.if.then129_crit_edge:            ; preds = %lor.lhs.false120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then129

lor.lhs.false126:                                 ; preds = %lor.lhs.false120
  %cursor_reset127 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %103 = ptrtoint ptr %cursor_reset127 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cursor_reset127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool128.not = icmp eq i32 %104, 0
  br i1 %tobool128.not, label %lor.lhs.false126.if.end140_crit_edge, label %lor.lhs.false126.if.then129_crit_edge

lor.lhs.false126.if.then129_crit_edge:            ; preds = %lor.lhs.false126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then129

lor.lhs.false126.if.end140_crit_edge:             ; preds = %lor.lhs.false126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end140

if.then129:                                       ; preds = %lor.lhs.false126.if.then129_crit_edge, %lor.lhs.false120.if.then129_crit_edge, %if.end104.if.then129_crit_edge
  %105 = ptrtoint ptr %image to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %sub, ptr %image, align 4
  %dy135 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 1
  %106 = ptrtoint ptr %dy135 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %mul114, ptr %dy135, align 4
  %107 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %cursor, align 4
  %109 = or i16 %108, 2
  store i16 %109, ptr %cursor, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.then129, %lor.lhs.false126.if.end140_crit_edge
  %hot = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 4
  %110 = ptrtoint ptr %hot to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %hot, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool144.not = icmp eq i16 %111, 0
  br i1 %tobool144.not, label %lor.lhs.false145, label %if.end140.if.then154_crit_edge

if.end140.if.then154_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then154

lor.lhs.false145:                                 ; preds = %if.end140
  %y148 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 4, i32 1
  %112 = ptrtoint ptr %y148 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %y148, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool150.not = icmp eq i16 %113, 0
  br i1 %tobool150.not, label %lor.lhs.false151, label %lor.lhs.false145.if.then154_crit_edge

lor.lhs.false145.if.then154_crit_edge:            ; preds = %lor.lhs.false145
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then154

lor.lhs.false151:                                 ; preds = %lor.lhs.false145
  %cursor_reset152 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %114 = ptrtoint ptr %cursor_reset152 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cursor_reset152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool153.not = icmp eq i32 %115, 0
  br i1 %tobool153.not, label %lor.lhs.false151.if.end164_crit_edge, label %lor.lhs.false151.if.then154_crit_edge

lor.lhs.false151.if.then154_crit_edge:            ; preds = %lor.lhs.false151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then154

lor.lhs.false151.if.end164_crit_edge:             ; preds = %lor.lhs.false151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164

if.then154:                                       ; preds = %lor.lhs.false151.if.then154_crit_edge, %lor.lhs.false145.if.then154_crit_edge, %if.end140.if.then154_crit_edge
  %y156 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 4, i32 1
  %116 = ptrtoint ptr %y156 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %y156, align 2
  %117 = ptrtoint ptr %hot to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 0, ptr %hot, align 4
  %118 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %cursor, align 4
  %120 = or i16 %119, 4
  store i16 %120, ptr %cursor, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.then154, %lor.lhs.false151.if.end164_crit_edge
  %121 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %cursor, align 4
  %123 = and i16 %122, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool168.not = icmp eq i16 %123, 0
  br i1 %tobool168.not, label %lor.lhs.false169, label %if.end164.if.then181_crit_edge

if.end164.if.then181_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then181

lor.lhs.false169:                                 ; preds = %if.end164
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
  %cmp172.not = icmp eq i32 %125, %129
  br i1 %cmp172.not, label %lor.lhs.false174, label %lor.lhs.false169.if.then181_crit_edge

lor.lhs.false169.if.then181_crit_edge:            ; preds = %lor.lhs.false169
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then181

lor.lhs.false174:                                 ; preds = %lor.lhs.false169
  %mask = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 3
  %130 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mask, align 4
  %cmp176 = icmp eq ptr %131, null
  br i1 %cmp176, label %lor.lhs.false174.if.then181_crit_edge, label %lor.lhs.false178

lor.lhs.false174.if.then181_crit_edge:            ; preds = %lor.lhs.false174
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then181

lor.lhs.false178:                                 ; preds = %lor.lhs.false174
  %cursor_reset179 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %132 = ptrtoint ptr %cursor_reset179 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cursor_reset179, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool180.not = icmp eq i32 %133, 0
  br i1 %tobool180.not, label %lor.lhs.false178.if.end263_crit_edge, label %lor.lhs.false178.if.then181_crit_edge

lor.lhs.false178.if.then181_crit_edge:            ; preds = %lor.lhs.false178
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then181

lor.lhs.false178.if.end263_crit_edge:             ; preds = %lor.lhs.false178
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end263

if.then181:                                       ; preds = %lor.lhs.false178.if.then181_crit_edge, %lor.lhs.false174.if.then181_crit_edge, %lor.lhs.false169.if.then181_crit_edge, %if.end164.if.then181_crit_edge
  %134 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %vc_font, align 4
  %136 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shr, i32 %135) #6
  %137 = extractvalue { i32, i1 } %136, 1
  br i1 %137, label %if.then181.cleanup334_crit_edge, label %if.end7.i504, !prof !10

if.then181.cleanup334_crit_edge:                  ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup334

if.end7.i504:                                     ; preds = %if.then181
  %138 = extractvalue { i32, i1 } %136, 0
  %call8.i503 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %138, i32 noundef 2592) #9
  %tobool191.not = icmp eq ptr %call8.i503, null
  br i1 %tobool191.not, label %if.end7.i504.cleanup334_crit_edge, label %if.end193

if.end7.i504.cleanup334_crit_edge:                ; preds = %if.end7.i504
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup334

if.end193:                                        ; preds = %if.end7.i504
  %139 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %139)
  %div466571.in.in = load i32, ptr %vc_font, align 4
  %div466571.in = add i32 %div466571.in.in, 7
  %div466571 = lshr i32 %div466571.in, 3
  %140 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %height, align 4
  %142 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div466571, i32 %141) #6
  %143 = extractvalue { i32, i1 } %142, 1
  br i1 %143, label %if.end193.if.then198_crit_edge, label %if.end7.i538, !prof !10

if.end193.if.then198_crit_edge:                   ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then198

if.end7.i538:                                     ; preds = %if.end193
  %144 = extractvalue { i32, i1 } %142, 0
  %call8.i537 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %144, i32 noundef 2592) #9
  %tobool197.not = icmp eq ptr %call8.i537, null
  br i1 %tobool197.not, label %if.end7.i538.if.then198_crit_edge, label %if.end199

if.end7.i538.if.then198_crit_edge:                ; preds = %if.end7.i538
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then198

if.then198:                                       ; preds = %if.end7.i538.if.then198_crit_edge, %if.end193.if.then198_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i503) #6
  br label %cleanup334

if.end199:                                        ; preds = %if.end7.i538
  %mask201 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 3
  %145 = ptrtoint ptr %mask201 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mask201, align 4
  tail call void @kfree(ptr noundef %146) #6
  %147 = ptrtoint ptr %mask201 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call8.i503, ptr %mask201, align 4
  %148 = ptrtoint ptr %vc_cursor_type to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %vc_cursor_type, align 4
  %150 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %p, align 4
  %cursor_shape206 = getelementptr inbounds %struct.fbcon_display, ptr %151, i32 0, i32 6
  %152 = ptrtoint ptr %cursor_shape206 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %149, ptr %cursor_shape206, align 4
  %153 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %cursor, align 4
  %155 = or i16 %154, 16
  store i16 %155, ptr %cursor, align 4
  %156 = load ptr, ptr %p, align 4
  %cursor_shape212 = getelementptr inbounds %struct.fbcon_display, ptr %156, i32 0, i32 6
  %157 = ptrtoint ptr %cursor_shape212 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %cursor_shape212, align 4
  %and213 = and i32 %158, 15
  %159 = zext i32 %and213 to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %and213, label %sw.default [
    i32 1, label %if.end199.sw.epilog_crit_edge
    i32 2, label %sw.bb214
    i32 3, label %sw.bb220
    i32 4, label %sw.bb224
    i32 5, label %sw.bb228
  ]

if.end199.sw.epilog_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb214:                                         ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #8
  %160 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %161)
  %cmp217 = icmp ult i32 %161, 10
  %cond219 = select i1 %cmp217, i32 1, i32 2
  br label %sw.epilog

sw.bb220:                                         ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #8
  %162 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %height, align 4
  %div223 = udiv i32 %163, 3
  br label %sw.epilog

sw.bb224:                                         ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #8
  %164 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %height, align 4
  %shr227 = lshr i32 %165, 1
  br label %sw.epilog

sw.bb228:                                         ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #8
  %166 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %height, align 4
  %shl = shl i32 %167, 1
  %div231 = udiv i32 %shl, 3
  br label %sw.epilog

sw.default:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #8
  %168 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %height, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb228, %sw.bb224, %sw.bb220, %sw.bb214, %if.end199.sw.epilog_crit_edge
  %cur_height.0 = phi i32 [ %169, %sw.default ], [ %div231, %sw.bb228 ], [ %shr227, %sw.bb224 ], [ %div223, %sw.bb220 ], [ %cond219, %sw.bb214 ], [ 0, %if.end199.sw.epilog_crit_edge ]
  %170 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %height, align 4
  %sub237 = sub i32 %171, %cur_height.0
  %mul238 = mul i32 %sub237, %div466571
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul238)
  %tobool239.not578 = icmp eq i32 %mul238, 0
  br i1 %tobool239.not578, label %sw.epilog.while.end_crit_edge, label %while.body.preheader

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.preheader:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %172 = call ptr @memset(ptr %call8.i537, i32 0, i32 %mul238)
  br label %while.end

while.end:                                        ; preds = %while.body.preheader, %sw.epilog.while.end_crit_edge
  %mul240 = mul i32 %cur_height.0, %div466571
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul240)
  %tobool243.not581 = icmp eq i32 %mul240, 0
  br i1 %tobool243.not581, label %while.end.while.end247_crit_edge, label %while.body244.preheader

while.end.while.end247_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end247

while.body244.preheader:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %uglygep = getelementptr i8, ptr %call8.i537, i32 %mul238
  %173 = call ptr @memset(ptr %uglygep, i32 255, i32 %mul240)
  br label %while.end247

while.end247:                                     ; preds = %while.body244.preheader, %while.end.while.end247_crit_edge
  %174 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %vc_font, align 4
  %mul250 = mul i32 %175, %shr
  %176 = call ptr @memset(ptr %call8.i503, i32 0, i32 %mul250)
  %177 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %height, align 4
  %add.i541 = add i32 %175, 7
  %and1.i = and i32 %add.i541, -8
  %add2.i = add i32 %178, 7
  %and3.i = and i32 %add2.i, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp33.i = icmp sgt i32 %178, 0
  br i1 %cmp33.i, label %for.cond4.preheader.lr.ph.i, label %while.end247.rotate_cw.exit_crit_edge

while.end247.rotate_cw.exit_crit_edge:            ; preds = %while.end247
  call void @__sanitizer_cov_trace_pc() #8
  br label %rotate_cw.exit

for.cond4.preheader.lr.ph.i:                      ; preds = %while.end247
  %sub.i542 = sub nsw i32 0, %178
  %and.i543 = and i32 %sub.i542, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp530.i = icmp sgt i32 %175, 0
  %sub8.i = sub i32 %and3.i, %and.i543
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.inc10.i.for.cond4.preheader.i_crit_edge, %for.cond4.preheader.lr.ph.i
  %i.034.i = phi i32 [ 0, %for.cond4.preheader.lr.ph.i ], [ %inc11.i, %for.inc10.i.for.cond4.preheader.i_crit_edge ]
  br i1 %cmp530.i, label %for.body6.lr.ph.i, label %for.cond4.preheader.i.for.inc10.i_crit_edge

for.cond4.preheader.i.for.inc10.i_crit_edge:      ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc10.i

for.body6.lr.ph.i:                                ; preds = %for.cond4.preheader.i
  %mul.i.i = mul i32 %i.034.i, %and1.i
  %179 = xor i32 %i.034.i, -1
  %sub9.i = add i32 %sub8.i, %179
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %j.031.i = phi i32 [ 0, %for.body6.lr.ph.i ], [ %inc.i545, %for.inc.i.for.body6.i_crit_edge ]
  %add.i.i = add i32 %j.031.i, %mul.i.i
  %div3.i.i = lshr i32 %add.i.i, 3
  %rem.i.i = and i32 %add.i.i, 7
  %add.ptr.i.i = getelementptr i8, ptr %call8.i537, i32 %div3.i.i
  %180 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %add.ptr.i.i, align 1
  %conv.i.i = zext i8 %181 to i32
  %shr.i.i = lshr i32 128, %rem.i.i
  %and.i.i = and i32 %shr.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i544 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i544, label %for.body6.i.for.inc.i_crit_edge, label %if.then.i

for.body6.i.for.inc.i_crit_edge:                  ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i25.i = mul i32 %j.031.i, %and3.i
  %add.i26.i = add i32 %sub9.i, %mul.i25.i
  %div4.i.i = lshr i32 %add.i26.i, 3
  %rem.i27.i = and i32 %add.i26.i, 7
  %add.ptr.i28.i = getelementptr i8, ptr %call8.i503, i32 %div4.i.i
  %shr.i29.i = lshr i32 128, %rem.i27.i
  %182 = ptrtoint ptr %add.ptr.i28.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %add.ptr.i28.i, align 1
  %184 = trunc i32 %shr.i29.i to i8
  %conv1.i.i = or i8 %183, %184
  store i8 %conv1.i.i, ptr %add.ptr.i28.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body6.i.for.inc.i_crit_edge
  %inc.i545 = add nuw nsw i32 %j.031.i, 1
  %exitcond.not.i546 = icmp eq i32 %inc.i545, %175
  br i1 %exitcond.not.i546, label %for.inc.i.for.inc10.i_crit_edge, label %for.inc.i.for.body6.i_crit_edge

for.inc.i.for.body6.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6.i

for.inc.i.for.inc10.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc10.i

for.inc10.i:                                      ; preds = %for.inc.i.for.inc10.i_crit_edge, %for.cond4.preheader.i.for.inc10.i_crit_edge
  %inc11.i = add nuw nsw i32 %i.034.i, 1
  %exitcond36.not.i = icmp eq i32 %inc11.i, %178
  br i1 %exitcond36.not.i, label %for.inc10.i.rotate_cw.exit_crit_edge, label %for.inc10.i.for.cond4.preheader.i_crit_edge

for.inc10.i.for.cond4.preheader.i_crit_edge:      ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond4.preheader.i

for.inc10.i.rotate_cw.exit_crit_edge:             ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rotate_cw.exit

rotate_cw.exit:                                   ; preds = %for.inc10.i.rotate_cw.exit_crit_edge, %while.end247.rotate_cw.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i537) #6
  br label %if.end263

if.end263:                                        ; preds = %rotate_cw.exit, %lor.lhs.false178.if.end263_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cond351 = icmp eq i32 %mode, 2
  %185 = trunc i32 %16 to i16
  %186 = lshr i16 %185, 4
  %187 = and i16 %186, 1
  %188 = xor i16 %187, 1
  %.sink = select i1 %cond351, i16 0, i16 %188
  %189 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 1
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %.sink, ptr %189, align 2
  %image274 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5
  %data275 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 7
  %191 = ptrtoint ptr %data275 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %src.1, ptr %data275, align 4
  %192 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %fg_color, align 4
  %fg_color280 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 4
  %194 = ptrtoint ptr %fg_color280 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %fg_color280, align 4
  %bg_color283 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 5
  %195 = ptrtoint ptr %bg_color283 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %bg_color283, align 4
  %bg_color285 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 5
  %197 = ptrtoint ptr %bg_color285 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %bg_color285, align 4
  %198 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %image, align 4
  %200 = ptrtoint ptr %image274 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %image274, align 4
  %dy293 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 1
  %201 = ptrtoint ptr %dy293 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %dy293, align 4
  %dy295 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 1
  %203 = ptrtoint ptr %dy295 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %dy295, align 4
  %204 = ptrtoint ptr %height73 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %height73, align 4
  %height300 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 3
  %206 = ptrtoint ptr %height300 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %height300, align 4
  %width303 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 2
  %207 = ptrtoint ptr %width303 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %width303, align 4
  %width305 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 2
  %209 = ptrtoint ptr %width305 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %width305, align 4
  %210 = ptrtoint ptr %hot to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %hot, align 4
  %hot309 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 4
  %212 = ptrtoint ptr %hot309 to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %211, ptr %hot309, align 4
  %y313 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 4, i32 1
  %213 = ptrtoint ptr %y313 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %y313, align 2
  %y315 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 4, i32 1
  %215 = ptrtoint ptr %y315 to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %214, ptr %y315, align 2
  %mask317 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 3
  %216 = ptrtoint ptr %mask317 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %mask317, align 4
  %mask318 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 3
  %218 = ptrtoint ptr %mask318 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %217, ptr %mask318, align 4
  %enable321 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 1
  %219 = ptrtoint ptr %enable321 to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %.sink, ptr %enable321, align 2
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
  %tobool323.not = icmp eq ptr %225, null
  br i1 %tobool323.not, label %if.end263.if.then330_crit_edge, label %if.then324

if.end263.if.then330_crit_edge:                   ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then330

if.then324:                                       ; preds = %if.end263
  %call327 = call i32 %225(ptr noundef %info, ptr noundef nonnull %cursor) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call327)
  %phi.cmp = icmp eq i32 %call327, 0
  br i1 %phi.cmp, label %if.then324.if.end332_crit_edge, label %if.then324.if.then330_crit_edge

if.then324.if.then330_crit_edge:                  ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then330

if.then324.if.end332_crit_edge:                   ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end332

if.then330:                                       ; preds = %if.then324.if.then330_crit_edge, %if.end263.if.then330_crit_edge
  %call331 = call i32 @soft_cursor(ptr noundef %info, ptr noundef nonnull %cursor) #6
  br label %if.end332

if.end332:                                        ; preds = %if.then330, %if.then324.if.end332_crit_edge
  %cursor_reset333 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %226 = ptrtoint ptr %cursor_reset333 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 0, ptr %cursor_reset333, align 4
  br label %cleanup334

cleanup334:                                       ; preds = %if.end332, %if.then198, %if.end7.i504.cleanup334_crit_edge, %if.then181.cleanup334_crit_edge, %if.end7.i.cleanup334_crit_edge, %if.then38.cleanup334_crit_edge, %cond.end.cleanup334_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cursor) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cw_update_start(ptr noundef %info) #1 align 64 {
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
  switch i16 %5, label %lor.lhs.false7 [
    i16 4, label %entry.cond.true_crit_edge
    i16 1, label %entry.cond.true_crit_edge50
  ]

entry.cond.true_crit_edge50:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

entry.cond.true_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

lor.lhs.false7:                                   ; preds = %entry
  %xpanstep = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 6
  %7 = ptrtoint ptr %xpanstep to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %xpanstep, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %lor.lhs.false7.cond.true_crit_edge, label %cond.false

lor.lhs.false7.cond.true_crit_edge:               ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

cond.true:                                        ; preds = %lor.lhs.false7.cond.true_crit_edge, %entry.cond.true_crit_edge, %entry.cond.true_crit_edge50
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #8
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %var, %cond.true ], [ %xres_virtual, %cond.false ]
  %9 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %cond = load i32, ptr %cond.in, align 4
  %var9 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %10 = ptrtoint ptr %var9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %var9, align 4
  %var11 = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 7
  %yoffset = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 7, i32 5
  %12 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yoffset, align 4
  %14 = add i32 %11, %13
  %sub = sub i32 %cond, %14
  %xoffset13 = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 7, i32 4
  %15 = ptrtoint ptr %xoffset13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xoffset13, align 4
  store i32 %16, ptr %yoffset, align 4
  store i32 %sub, ptr %xoffset13, align 4
  %call19 = tail call i32 @fb_pan_display(ptr noundef %info, ptr noundef %var11) #6
  %xoffset21 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %17 = ptrtoint ptr %xoffset21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xoffset21, align 4
  %19 = ptrtoint ptr %xoffset13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %xoffset13, align 4
  %yoffset25 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %20 = ptrtoint ptr %yoffset25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %yoffset25, align 4
  %22 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %yoffset, align 4
  %vmode = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %23 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vmode, align 4
  %vmode30 = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 7, i32 25
  %25 = ptrtoint ptr %vmode30 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %vmode30, align 4
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
