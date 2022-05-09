; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/core/bitblit.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/bitblit.c"
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
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.tty_buffer = type { %union.anon, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon = type { ptr }
%struct.llist_head = type { ptr }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.81, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%union.anon.81 = type { ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fbcon_display = type { ptr, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, ptr }

@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fbcon_set_bitops(ptr noundef %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @bit_bmove, ptr %ops, align 4
  %clear = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 1
  %1 = ptrtoint ptr %clear to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bit_clear, ptr %clear, align 4
  %putcs = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 2
  %2 = ptrtoint ptr %putcs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bit_putcs, ptr %putcs, align 4
  %clear_margins = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 3
  %3 = ptrtoint ptr %clear_margins to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bit_clear_margins, ptr %clear_margins, align 4
  %cursor = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 4
  %4 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @bit_cursor, ptr %cursor, align 4
  %update_start = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 5
  %5 = ptrtoint ptr %update_start to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @bit_update_start, ptr %update_start, align 4
  %rotate_font = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 6
  %6 = ptrtoint ptr %rotate_font to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rotate_font, align 4
  %rotate = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 20
  %7 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rotate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @fbcon_set_rotate(ptr noundef %ops) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bit_bmove(ptr nocapture noundef readonly %vc, ptr noundef %info, i32 noundef %sy, i32 noundef %sx, i32 noundef %dy, i32 noundef %dx, i32 noundef %height, i32 noundef %width) #0 align 64 {
entry:
  %area = alloca %struct.fb_copyarea, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %area) #5
  %0 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %2 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %3 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 4
  %4 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28
  %5 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vc_font, align 4
  %mul = mul i32 %6, %sx
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %3, align 4
  %height4 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %8 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height4, align 4
  %mul5 = mul i32 %9, %sy
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul5, ptr %4, align 4
  %mul9 = mul i32 %6, %dx
  %11 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul9, ptr %area, align 4
  %mul13 = mul i32 %9, %dy
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul13, ptr %0, align 4
  %mul17 = mul i32 %9, %height
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul17, ptr %2, align 4
  %mul21 = mul i32 %6, %width
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul21, ptr %1, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %15 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fbops, align 4
  %fb_copyarea = getelementptr inbounds %struct.fb_ops, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %fb_copyarea to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fb_copyarea, align 4
  call void %18(ptr noundef %info, ptr noundef nonnull %area) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %area) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bit_clear(ptr noundef readonly %vc, ptr noundef %info, i32 noundef %sy, i32 noundef %sx, i32 noundef %height, i32 noundef %width) #0 align 64 {
entry:
  %region = alloca %struct.fb_fillrect, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %0 = ptrtoint ptr %vc_hi_font_mask to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_hi_font_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  %cond = select i1 %tobool.not, i32 12, i32 13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %region) #5
  %tobool.not.i = icmp eq ptr %vc, null
  br i1 %tobool.not.i, label %entry.attr_col_ec.exit_crit_edge, label %if.end.i

entry.attr_col_ec.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %attr_col_ec.exit

if.end.i:                                         ; preds = %entry
  %vc_can_do_color.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 37
  %2 = ptrtoint ptr %vc_can_do_color.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %vc_can_do_color.i, align 4
  %3 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool1.not.i = icmp eq i16 %3, 0
  br i1 %tobool1.not.i, label %if.end8.i, label %cond.end.i

cond.end.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %vc_video_erase_char4.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %4 = ptrtoint ptr %vc_video_erase_char4.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vc_video_erase_char4.i, align 4
  %conv5.i = zext i16 %5 to i32
  %shr6.i = lshr i32 %conv5.i, %cond
  br label %attr_col_ec.exit

if.end8.i:                                        ; preds = %if.end.i
  %tobool9.not.i = icmp eq ptr %info, null
  br i1 %tobool9.not.i, label %if.end8.i.attr_col_ec.exit_crit_edge, label %if.end11.i

if.end8.i.attr_col_ec.exit_crit_edge:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %attr_col_ec.exit

if.end11.i:                                       ; preds = %if.end8.i
  %length.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %6 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i.i, align 4
  %length2.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %8 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length2.i.i, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %7, i32 %9) #5
  %length4.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %11 = ptrtoint ptr %length4.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length4.i.i, align 4
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 %10) #5
  %shl.i.i = shl i32 4095, %13
  %neg.i.i = and i32 %shl.i.i, 255
  %and.i.i = xor i32 %neg.i.i, 255
  %visual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %14 = ptrtoint ptr %visual.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %visual.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  %vc_video_erase_char13.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %16 = ptrtoint ptr %vc_video_erase_char13.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vc_video_erase_char13.i, align 4
  %18 = and i16 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool16.not.i = icmp eq i16 %18, 0
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  %cond27.i = select i1 %cmp.i, i32 0, i32 %and.i.i
  br label %attr_col_ec.exit

if.else.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  %cond37.i = select i1 %cmp.i, i32 %and.i.i, i32 0
  br label %attr_col_ec.exit

attr_col_ec.exit:                                 ; preds = %if.else.i, %if.then17.i, %if.end8.i.attr_col_ec.exit_crit_edge, %cond.end.i, %entry.attr_col_ec.exit_crit_edge
  %retval.0.i = phi i32 [ %shr6.i, %cond.end.i ], [ 0, %entry.attr_col_ec.exit_crit_edge ], [ 0, %if.end8.i.attr_col_ec.exit_crit_edge ], [ %cond27.i, %if.then17.i ], [ %cond37.i, %if.else.i ]
  %19 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 5
  %20 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 4
  %21 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 3
  %22 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 2
  %23 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 1
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i, ptr %20, align 4
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28
  %25 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vc_font, align 4
  %mul = mul i32 %26, %sx
  %27 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul, ptr %region, align 4
  %height3 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %28 = ptrtoint ptr %height3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height3, align 4
  %mul4 = mul i32 %29, %sy
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul4, ptr %23, align 4
  %mul7 = mul i32 %26, %width
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul7, ptr %22, align 4
  %mul11 = mul i32 %29, %height
  %32 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul11, ptr %21, align 4
  %33 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %19, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %34 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fbops, align 4
  %fb_fillrect = getelementptr inbounds %struct.fb_ops, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %fb_fillrect to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fb_fillrect, align 4
  call void %37(ptr noundef %info, ptr noundef nonnull %region) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %region) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bit_putcs(ptr nocapture noundef readonly %vc, ptr noundef %info, ptr nocapture noundef readonly %s, i32 noundef %count, i32 noundef %yy, i32 noundef %xx, i32 noundef %fg, i32 noundef %bg) #0 align 64 {
entry:
  %image = alloca %struct.fb_image, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %image) #5
  %0 = getelementptr inbounds i8, ptr %image, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28
  %2 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vc_font, align 4
  %sub = add i32 %3, 7
  %div119 = lshr i32 %sub, 3
  %height = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %mul = mul i32 %div119, %5
  %pixmap = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10
  %size = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %div3 = udiv i32 %7, %mul
  %scan_align5 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 4
  %8 = ptrtoint ptr %scan_align5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_align5, align 4
  %sub6 = add i32 %9, -1
  %buf_align8 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 3
  %10 = ptrtoint ptr %buf_align8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_align8, align 4
  %sub9 = add i32 %11, -1
  %rem = and i32 %3, 7
  %12 = ptrtoint ptr %s to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %s, align 2
  %var.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %fix.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call.i = tail call i32 @fb_get_color_depth(ptr noundef %var.i, ptr noundef %fix.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i121 = icmp eq i32 %call.i, 1
  %conv.i = zext i16 %13 to i32
  %and.i = lshr i32 %conv.i, 10
  %14 = and i32 %and.i, 3
  %and9.i = lshr i32 %conv.i, 7
  %15 = and i32 %and9.i, 4
  %16 = or i32 %14, %15
  %attribute.2.i = select i1 %cmp.i121, i32 %16, i32 0
  %fg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %17 = ptrtoint ptr %fg_color to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %fg, ptr %fg_color, align 4
  %bg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %18 = ptrtoint ptr %bg_color to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %bg, ptr %bg_color, align 4
  %19 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vc_font, align 4
  %mul15 = mul i32 %20, %xx
  %21 = ptrtoint ptr %image to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul15, ptr %image, align 4
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  %mul18 = mul i32 %23, %yy
  %dy = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %24 = ptrtoint ptr %dy to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul18, ptr %dy, align 4
  %height21 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %25 = ptrtoint ptr %height21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %height21, align 4
  %depth = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 6
  %26 = ptrtoint ptr %depth to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attribute.2.i)
  %tobool.not = icmp eq i32 %attribute.2.i, 0
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %if.end8.i

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.end8.i:                                        ; preds = %entry
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 2592) #8
  %tobool23.not = icmp eq ptr %call9.i, null
  br i1 %tobool23.not, label %if.end8.i.cleanup_crit_edge, label %if.end8.i.if.end25_crit_edge

if.end8.i.if.end25_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end8.i.if.end25_crit_edge, %entry.if.end25_crit_edge
  %buf.0 = phi ptr [ %call9.i, %if.end8.i.if.end25_crit_edge ], [ null, %entry.if.end25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool26.not178 = icmp eq i32 %count, 0
  br i1 %tobool26.not178, label %if.end25.while.end_crit_edge, label %while.body.lr.ph

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end25
  %width32 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %neg = sub i32 0, %9
  %neg41 = sub i32 0, %11
  %data = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool45.not = icmp eq i32 %rem, 0
  %vc_hi_font_mask.i128 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %data.i133 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 3
  %and.i.i135 = and i32 %attribute.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i135)
  %tobool.not.i.i136 = icmp eq i32 %and.i.i135, 0
  %and9.i.i137 = and i32 %attribute.2.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i137)
  %tobool10.not.i.i138 = icmp eq i32 %and9.i.i137, 0
  %and15.i.i139 = shl i32 %attribute.2.i, 30
  %sext.i.i140 = ashr i32 %and15.i.i139, 31
  %neg.i.i141 = trunc i32 %sext.i.i140 to i8
  %fbops.i174 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  br label %while.body

while.body:                                       ; preds = %if.end48.while.body_crit_edge, %while.body.lr.ph
  %s.addr.0180 = phi ptr [ %s, %while.body.lr.ph ], [ %add.ptr, %if.end48.while.body_crit_edge ]
  %count.addr.0179 = phi i32 [ %count, %while.body.lr.ph ], [ %sub54, %if.end48.while.body_crit_edge ]
  %27 = call i32 @llvm.umin.i32(i32 %count.addr.0179, i32 %div3)
  %28 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vc_font, align 4
  %mul31 = mul i32 %29, %27
  %30 = ptrtoint ptr %width32 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul31, ptr %width32, align 4
  %sub35 = add i32 %mul31, 7
  %div36120 = lshr i32 %sub35, 3
  %add37 = add i32 %sub6, %div36120
  %and = and i32 %add37, %neg
  %31 = ptrtoint ptr %height21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height21, align 4
  %mul39 = mul i32 %and, %32
  %add40 = add i32 %sub9, %mul39
  %and42 = and i32 %add40, %neg41
  %call44 = call ptr @fb_get_buffer_offset(ptr noundef %info, ptr noundef %pixmap, i32 noundef %and42) #5
  %33 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call44, ptr %data, align 4
  %34 = ptrtoint ptr %vc_hi_font_mask.i128 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vc_hi_font_mask.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool.not.i = icmp eq i16 %35, 0
  %conv1.i = select i1 %tobool.not.i, i32 255, i32 511
  %36 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vc_font, align 4
  br i1 %tobool45.not, label %if.then46, label %if.else47

if.then46:                                        ; preds = %while.body
  %shr.i = lshr i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool2.not31.i = icmp eq i32 %27, 0
  br i1 %tobool2.not31.i, label %if.then46.if.end48_crit_edge, label %while.body.lr.ph.i

if.then46.if.end48_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

while.body.lr.ph.i:                               ; preds = %if.then46
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i)
  %cmp.i123 = icmp eq i32 %shr.i, 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end12.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec35.in.i = phi i32 [ %27, %while.body.lr.ph.i ], [ %dec35.i, %if.end12.i.while.body.i_crit_edge ]
  %dst.addr.033.i = phi ptr [ %call44, %while.body.lr.ph.i ], [ %add.ptr13.i, %if.end12.i.while.body.i_crit_edge ]
  %s.addr.032.i = phi ptr [ %s.addr.0180, %while.body.lr.ph.i ], [ %incdec.ptr.i, %if.end12.i.while.body.i_crit_edge ]
  %dec35.i = add i32 %dec35.in.i, -1
  %38 = ptrtoint ptr %data.i133 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i133, align 4
  %incdec.ptr.i = getelementptr i16, ptr %s.addr.032.i, i32 1
  %40 = ptrtoint ptr %s.addr.032.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %s.addr.032.i, align 2
  %conv4.i = zext i16 %41 to i32
  %and.i124 = and i32 %conv1.i, %conv4.i
  %mul.i = mul i32 %and.i124, %mul
  %add.ptr.i = getelementptr i8, ptr %39, i32 %mul.i
  br i1 %tobool.not, label %while.body.i.if.end.i127_crit_edge, label %if.then.i126

while.body.i.if.end.i127_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i127

if.then.i126:                                     ; preds = %while.body.i
  %42 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %43)
  %cmp.i.i125 = icmp ult i32 %43, 10
  %cond.neg.i.i = select i1 %cmp.i.i125, i32 -1, i32 -2
  %44 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vc_font, align 4
  %sub.i.i = add i32 %45, 7
  %div36.i.i = lshr i32 %sub.i.i, 3
  %mul.i.i = mul i32 %div36.i.i, %43
  %mul5.neg.i.i = mul nsw i32 %div36.i.i, %cond.neg.i.i
  %sub6.i.i = add i32 %mul5.neg.i.i, %mul.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp737.not.i.i = icmp eq i32 %mul.i.i, 0
  br i1 %cmp737.not.i.i, label %if.then.i126.if.end.i127_crit_edge, label %if.then.i126.for.body.i.i_crit_edge

if.then.i126.for.body.i.i_crit_edge:              ; preds = %if.then.i126
  br label %for.body.i.i

if.then.i126.if.end.i127_crit_edge:               ; preds = %if.then.i126
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i127

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i126.for.body.i.i_crit_edge
  %i.038.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i126.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %add.ptr.i, i32 %i.038.i.i
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.038.i.i, i32 %sub6.i.i)
  %cmp8.not.i.i = icmp slt i32 %i.038.i.i, %sub6.i.i
  %or.cond.i.i = select i1 %tobool.not.i.i136, i1 true, i1 %cmp8.not.i.i
  %c.0.i.i = select i1 %or.cond.i.i, i8 %47, i8 -1
  %48 = lshr i8 %c.0.i.i, 1
  %or.i.i = select i1 %tobool10.not.i.i138, i8 0, i8 %48
  %c.1.i.i = or i8 %or.i.i, %c.0.i.i
  %c.2.i.i = xor i8 %c.1.i.i, %neg.i.i141
  %arrayidx21.i.i = getelementptr i8, ptr %buf.0, i32 %i.038.i.i
  %49 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %c.2.i.i, ptr %arrayidx21.i.i, align 1
  %inc.i.i = add nuw i32 %i.038.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %mul.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end.i127_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.body.i.i.if.end.i127_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i127

if.end.i127:                                      ; preds = %for.body.i.i.if.end.i127_crit_edge, %if.then.i126.if.end.i127_crit_edge, %while.body.i.if.end.i127_crit_edge
  %src.0.i = phi ptr [ %add.ptr.i, %while.body.i.if.end.i127_crit_edge ], [ %buf.0, %if.then.i126.if.end.i127_crit_edge ], [ %buf.0, %for.body.i.i.if.end.i127_crit_edge ]
  %50 = ptrtoint ptr %height21 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height21, align 4
  br i1 %cmp.i123, label %if.then10.i, label %if.else.i, !prof !9

if.then10.i:                                      ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not4.i.i = icmp eq i32 %51, 0
  br i1 %tobool.not4.i.i, label %if.then10.i.if.end12.i_crit_edge, label %if.then10.i.for.cond1.preheader.i.i_crit_edge

if.then10.i.for.cond1.preheader.i.i_crit_edge:    ; preds = %if.then10.i
  br label %for.cond1.preheader.i.i

if.then10.i.if.end12.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

for.cond1.preheader.i.i:                          ; preds = %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge, %if.then10.i.for.cond1.preheader.i.i_crit_edge
  %dec7.in.i.i = phi i32 [ %dec7.i.i, %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge ], [ %51, %if.then10.i.for.cond1.preheader.i.i_crit_edge ]
  %dst.addr.06.i.i = phi ptr [ %add.ptr.i.i, %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge ], [ %dst.addr.033.i, %if.then10.i.for.cond1.preheader.i.i_crit_edge ]
  %src.addr.05.i.i = phi ptr [ %incdec.ptr.i.i, %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge ], [ %src.0.i, %if.then10.i.for.cond1.preheader.i.i_crit_edge ]
  %dec7.i.i = add i32 %dec7.in.i.i, -1
  %incdec.ptr.i.i = getelementptr i8, ptr %src.addr.05.i.i, i32 1
  %52 = ptrtoint ptr %src.addr.05.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %src.addr.05.i.i, align 1
  %54 = ptrtoint ptr %dst.addr.06.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %dst.addr.06.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %dst.addr.06.i.i, i32 %and
  %tobool.not.i29.i = icmp eq i32 %dec7.i.i, 0
  br i1 %tobool.not.i29.i, label %for.cond1.preheader.i.i.if.end12.i_crit_edge, label %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge

for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge: ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i.if.end12.i_crit_edge:     ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #7
  call void @fb_pad_aligned_buffer(ptr noundef %dst.addr.033.i, i32 noundef %and, ptr noundef %src.0.i, i32 noundef %shr.i, i32 noundef %51) #5
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %for.cond1.preheader.i.i.if.end12.i_crit_edge, %if.then10.i.if.end12.i_crit_edge
  %add.ptr13.i = getelementptr i8, ptr %dst.addr.033.i, i32 %div119
  %tobool2.not.i = icmp eq i32 %dec35.i, 0
  br i1 %tobool2.not.i, label %if.end12.i.if.end48_crit_edge, label %if.end12.i.while.body.i_crit_edge

if.end12.i.while.body.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end12.i.if.end48_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.else47:                                        ; preds = %while.body
  %rem.i = and i32 %37, 7
  %shr.i132 = lshr i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool4.not31.i = icmp eq i32 %27, 0
  br i1 %tobool4.not31.i, label %if.else47.if.end48_crit_edge, label %if.else47.while.body.i149_crit_edge

if.else47.while.body.i149_crit_edge:              ; preds = %if.else47
  br label %while.body.i149

if.else47.if.end48_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

while.body.i149:                                  ; preds = %if.end.i173.while.body.i149_crit_edge, %if.else47.while.body.i149_crit_edge
  %dec36.in.i = phi i32 [ %dec36.i, %if.end.i173.while.body.i149_crit_edge ], [ %27, %if.else47.while.body.i149_crit_edge ]
  %shift_high.035.i = phi i32 [ %sub13.i, %if.end.i173.while.body.i149_crit_edge ], [ 8, %if.else47.while.body.i149_crit_edge ]
  %shift_low.034.i = phi i32 [ %and12.i, %if.end.i173.while.body.i149_crit_edge ], [ 0, %if.else47.while.body.i149_crit_edge ]
  %dst.addr.033.i143 = phi ptr [ %add.ptr11.i, %if.end.i173.while.body.i149_crit_edge ], [ %call44, %if.else47.while.body.i149_crit_edge ]
  %s.addr.032.i144 = phi ptr [ %incdec.ptr.i145, %if.end.i173.while.body.i149_crit_edge ], [ %s.addr.0180, %if.else47.while.body.i149_crit_edge ]
  %dec36.i = add i32 %dec36.in.i, -1
  %55 = ptrtoint ptr %data.i133 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i133, align 4
  %incdec.ptr.i145 = getelementptr i16, ptr %s.addr.032.i144, i32 1
  %57 = ptrtoint ptr %s.addr.032.i144 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %s.addr.032.i144, align 2
  %conv6.i = zext i16 %58 to i32
  %and.i146 = and i32 %conv1.i, %conv6.i
  %mul.i147 = mul i32 %and.i146, %mul
  %add.ptr.i148 = getelementptr i8, ptr %56, i32 %mul.i147
  br i1 %tobool.not, label %while.body.i149.if.end.i173_crit_edge, label %if.then.i158

while.body.i149.if.end.i173_crit_edge:            ; preds = %while.body.i149
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i173

if.then.i158:                                     ; preds = %while.body.i149
  %59 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %60)
  %cmp.i.i150 = icmp ult i32 %60, 10
  %cond.neg.i.i151 = select i1 %cmp.i.i150, i32 -1, i32 -2
  %61 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vc_font, align 4
  %sub.i.i152 = add i32 %62, 7
  %div36.i.i153 = lshr i32 %sub.i.i152, 3
  %mul.i.i154 = mul i32 %div36.i.i153, %60
  %mul5.neg.i.i155 = mul nsw i32 %div36.i.i153, %cond.neg.i.i151
  %sub6.i.i156 = add i32 %mul5.neg.i.i155, %mul.i.i154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i154)
  %cmp737.not.i.i157 = icmp eq i32 %mul.i.i154, 0
  br i1 %cmp737.not.i.i157, label %if.then.i158.if.end.i173_crit_edge, label %if.then.i158.for.body.i.i170_crit_edge

if.then.i158.for.body.i.i170_crit_edge:           ; preds = %if.then.i158
  br label %for.body.i.i170

if.then.i158.if.end.i173_crit_edge:               ; preds = %if.then.i158
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i173

for.body.i.i170:                                  ; preds = %for.body.i.i170.for.body.i.i170_crit_edge, %if.then.i158.for.body.i.i170_crit_edge
  %i.038.i.i159 = phi i32 [ %inc.i.i168, %for.body.i.i170.for.body.i.i170_crit_edge ], [ 0, %if.then.i158.for.body.i.i170_crit_edge ]
  %arrayidx.i.i160 = getelementptr i8, ptr %add.ptr.i148, i32 %i.038.i.i159
  %63 = ptrtoint ptr %arrayidx.i.i160 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i.i160, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.038.i.i159, i32 %sub6.i.i156)
  %cmp8.not.i.i161 = icmp slt i32 %i.038.i.i159, %sub6.i.i156
  %or.cond.i.i162 = select i1 %tobool.not.i.i136, i1 true, i1 %cmp8.not.i.i161
  %c.0.i.i163 = select i1 %or.cond.i.i162, i8 %64, i8 -1
  %65 = lshr i8 %c.0.i.i163, 1
  %or.i.i164 = select i1 %tobool10.not.i.i138, i8 0, i8 %65
  %c.1.i.i165 = or i8 %or.i.i164, %c.0.i.i163
  %c.2.i.i166 = xor i8 %c.1.i.i165, %neg.i.i141
  %arrayidx21.i.i167 = getelementptr i8, ptr %buf.0, i32 %i.038.i.i159
  %66 = ptrtoint ptr %arrayidx21.i.i167 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %c.2.i.i166, ptr %arrayidx21.i.i167, align 1
  %inc.i.i168 = add nuw i32 %i.038.i.i159, 1
  %exitcond.not.i.i169 = icmp eq i32 %inc.i.i168, %mul.i.i154
  br i1 %exitcond.not.i.i169, label %for.body.i.i170.if.end.i173_crit_edge, label %for.body.i.i170.for.body.i.i170_crit_edge

for.body.i.i170.for.body.i.i170_crit_edge:        ; preds = %for.body.i.i170
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i170

for.body.i.i170.if.end.i173_crit_edge:            ; preds = %for.body.i.i170
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i173

if.end.i173:                                      ; preds = %for.body.i.i170.if.end.i173_crit_edge, %if.then.i158.if.end.i173_crit_edge, %while.body.i149.if.end.i173_crit_edge
  %src.0.i171 = phi ptr [ %add.ptr.i148, %while.body.i149.if.end.i173_crit_edge ], [ %buf.0, %if.then.i158.if.end.i173_crit_edge ], [ %buf.0, %for.body.i.i170.if.end.i173_crit_edge ]
  %67 = ptrtoint ptr %height21 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %height21, align 4
  call void @fb_pad_unaligned_buffer(ptr noundef %dst.addr.033.i143, i32 noundef %and, ptr noundef %src.0.i171, i32 noundef %shr.i132, i32 noundef %68, i32 noundef %shift_high.035.i, i32 noundef %shift_low.034.i, i32 noundef %rem.i) #5
  %add.i = add nuw nsw i32 %shift_low.034.i, %rem.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i)
  %cmp.i172 = icmp ult i32 %add.i, 8
  %sub.i = sext i1 %cmp.i172 to i32
  %cond10.i = add nsw i32 %div119, %sub.i
  %add.ptr11.i = getelementptr i8, ptr %dst.addr.033.i143, i32 %cond10.i
  %and12.i = and i32 %add.i, 7
  %sub13.i = sub nuw nsw i32 8, %and12.i
  %tobool4.not.i = icmp eq i32 %dec36.i, 0
  br i1 %tobool4.not.i, label %if.end.i173.if.end48_crit_edge, label %if.end.i173.while.body.i149_crit_edge

if.end.i173.while.body.i149_crit_edge:            ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i149

if.end.i173.if.end48_crit_edge:                   ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.end48:                                         ; preds = %if.end.i173.if.end48_crit_edge, %if.else47.if.end48_crit_edge, %if.end12.i.if.end48_crit_edge, %if.then46.if.end48_crit_edge
  %69 = ptrtoint ptr %fbops.i174 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fbops.i174, align 4
  %fb_imageblit.i175 = getelementptr inbounds %struct.fb_ops, ptr %70, i32 0, i32 13
  %71 = ptrtoint ptr %fb_imageblit.i175 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fb_imageblit.i175, align 4
  call void %72(ptr noundef %info, ptr noundef nonnull %image) #5
  %73 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vc_font, align 4
  %mul51 = mul i32 %74, %27
  %75 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %image, align 4
  %add53 = add i32 %76, %mul51
  store i32 %add53, ptr %image, align 4
  %sub54 = sub i32 %count.addr.0179, %27
  %add.ptr = getelementptr i16, ptr %s.addr.0180, i32 %27
  %tobool26.not = icmp eq i32 %sub54, 0
  br i1 %tobool26.not, label %if.end48.while.end_crit_edge, label %if.end48.while.body_crit_edge

if.end48.while.body_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end48.while.end_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end48.while.end_crit_edge, %if.end25.while.end_crit_edge
  %tobool55.not = icmp eq ptr %buf.0, null
  br i1 %tobool55.not, label %while.end.cleanup_crit_edge, label %if.then58, !prof !9

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then58:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %buf.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %while.end.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %image) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bit_clear_margins(ptr nocapture noundef readonly %vc, ptr noundef %info, i32 noundef %color, i32 noundef %bottom_only) #0 align 64 {
entry:
  %region = alloca %struct.fb_fillrect, align 4
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %region) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %20 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xoffset, align 4
  %add = add i32 %21, %mul
  %22 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %region, align 4
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %12, align 4
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
  call void %31(ptr noundef %info, ptr noundef nonnull %region) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4)
  %cmp16 = icmp sgt i32 %sub4, 0
  br i1 %cmp16, label %if.then17, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %xoffset19 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %32 = ptrtoint ptr %xoffset19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %xoffset19, align 4
  %34 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %region, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %35 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %yoffset, align 4
  %add22 = add i32 %36, %mul3
  %37 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add22, ptr %12, align 4
  %38 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mul, ptr %13, align 4
  %39 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub4, ptr %14, align 4
  %fbops26 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %40 = ptrtoint ptr %fbops26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fbops26, align 4
  %fb_fillrect27 = getelementptr inbounds %struct.fb_ops, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %fb_fillrect27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fb_fillrect27, align 4
  call void %43(ptr noundef %info, ptr noundef nonnull %region) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then17, %if.end.if.end28_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %region) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bit_cursor(ptr nocapture noundef readonly %vc, ptr noundef %info, i32 noundef %mode, i32 noundef %fg, i32 noundef %bg) #0 align 64 {
entry:
  %cursor = alloca %struct.fb_cursor, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cursor) #5
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
  %sub = add i32 %6, 7
  %div416 = lshr i32 %sub, 3
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
  %17 = ptrtoint ptr %cursor to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %cursor, align 4
  %vc_pos = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 26
  %18 = ptrtoint ptr %vc_pos to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vc_pos, align 4
  %20 = inttoptr i32 %19 to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 2
  %conv3 = zext i16 %22 to i32
  %var.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %fix.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %call.i = tail call i32 @fb_get_color_depth(ptr noundef %var.i, ptr noundef %fix.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i417 = icmp eq i32 %call.i, 1
  %and.i = lshr i32 %conv3, 10
  %23 = and i32 %and.i, 3
  %and9.i = lshr i32 %conv3, 7
  %24 = and i32 %and9.i, 4
  %25 = or i32 %23, %24
  %attribute.2.i = select i1 %cmp.i417, i32 %25, i32 0
  %data = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 3
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %and8 = and i32 %conv1, %conv3
  %height = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %28 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height, align 4
  %mul = mul i32 %and8, %div416
  %mul10 = mul i32 %mul, %29
  %add.ptr = getelementptr i8, ptr %27, i32 %mul10
  %image = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5
  %data11 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 7
  %30 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data11, align 4
  %cmp.not = icmp eq ptr %31, %add.ptr
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %cursor_reset = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %32 = ptrtoint ptr %cursor_reset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cursor_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool13.not = icmp eq i32 %33, 0
  br i1 %tobool13.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %34 = ptrtoint ptr %data11 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr, ptr %data11, align 4
  %35 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %cursor, align 4
  %37 = or i16 %36, 1
  store i16 %37, ptr %cursor, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attribute.2.i)
  %tobool20.not = icmp eq i32 %attribute.2.i, 0
  br i1 %tobool20.not, label %if.end.if.end29_crit_edge, label %if.then21

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then21:                                        ; preds = %if.end
  %38 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height, align 4
  %40 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div416, i32 %39) #5
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %if.then21.cleanup302_crit_edge, label %if.end7.i, !prof !10

if.then21.cleanup302_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup302

if.end7.i:                                        ; preds = %if.then21
  %42 = extractvalue { i32, i1 } %40, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %42, i32 noundef 2592) #8
  %tobool25.not = icmp eq ptr %call8.i, null
  br i1 %tobool25.not, label %if.end7.i.cleanup302_crit_edge, label %if.end27

if.end7.i.cleanup302_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup302

if.end27:                                         ; preds = %if.end7.i
  %cursor_data = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 22
  %43 = ptrtoint ptr %cursor_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cursor_data, align 4
  tail call void @kfree(ptr noundef %44) #5
  %45 = ptrtoint ptr %cursor_data to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call8.i, ptr %cursor_data, align 4
  %46 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %47)
  %cmp.i419 = icmp ult i32 %47, 10
  %cond.neg.i = select i1 %cmp.i419, i32 -1, i32 -2
  %48 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vc_font, align 4
  %sub.i420 = add i32 %49, 7
  %div36.i = lshr i32 %sub.i420, 3
  %mul.i = mul i32 %div36.i, %47
  %mul5.neg.i = mul nsw i32 %div36.i, %cond.neg.i
  %sub6.i = add i32 %mul5.neg.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp737.not.i = icmp eq i32 %mul.i, 0
  br i1 %cmp737.not.i, label %if.end27.if.end29_crit_edge, label %for.body.lr.ph.i

if.end27.if.end29_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

for.body.lr.ph.i:                                 ; preds = %if.end27
  %and.i421 = and i32 %attribute.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i421)
  %tobool.not.i = icmp eq i32 %and.i421, 0
  %and9.i422 = and i32 %attribute.2.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i422)
  %tobool10.not.i = icmp eq i32 %and9.i422, 0
  %and15.i = shl i32 %attribute.2.i, 30
  %sext.i = ashr i32 %and15.i, 31
  %neg.i = trunc i32 %sext.i to i8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.038.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %add.ptr, i32 %i.038.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.038.i, i32 %sub6.i)
  %cmp8.not.i = icmp slt i32 %i.038.i, %sub6.i
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp8.not.i
  %c.0.i = select i1 %or.cond.i, i8 %51, i8 -1
  %52 = lshr i8 %c.0.i, 1
  %or.i = select i1 %tobool10.not.i, i8 0, i8 %52
  %c.1.i = or i8 %or.i, %c.0.i
  %c.2.i = xor i8 %c.1.i, %neg.i
  %arrayidx21.i = getelementptr i8, ptr %call8.i, i32 %i.038.i
  %53 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %c.2.i, ptr %arrayidx21.i, align 1
  %inc.i = add nuw i32 %i.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %mul.i
  br i1 %exitcond.not.i, label %for.body.i.if.end29_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.if.end29_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.end29:                                         ; preds = %for.body.i.if.end29_crit_edge, %if.end27.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %src.1 = phi ptr [ %add.ptr, %if.end.if.end29_crit_edge ], [ %call8.i, %if.end27.if.end29_crit_edge ], [ %call8.i, %for.body.i.if.end29_crit_edge ]
  %fg_color = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 4
  %54 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fg_color, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %fg)
  %cmp32.not = icmp eq i32 %55, %fg
  br i1 %cmp32.not, label %lor.lhs.false34, label %if.end29.if.then42_crit_edge

if.end29.if.then42_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

lor.lhs.false34:                                  ; preds = %if.end29
  %bg_color = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 5
  %56 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bg_color, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %bg)
  %cmp37.not = icmp eq i32 %57, %bg
  br i1 %cmp37.not, label %lor.lhs.false39, label %lor.lhs.false34.if.then42_crit_edge

lor.lhs.false34.if.then42_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

lor.lhs.false39:                                  ; preds = %lor.lhs.false34
  %cursor_reset40 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %58 = ptrtoint ptr %cursor_reset40 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cursor_reset40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool41.not = icmp eq i32 %59, 0
  br i1 %tobool41.not, label %lor.lhs.false39.if.end53_crit_edge, label %lor.lhs.false39.if.then42_crit_edge

lor.lhs.false39.if.then42_crit_edge:              ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

lor.lhs.false39.if.end53_crit_edge:               ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then42:                                        ; preds = %lor.lhs.false39.if.then42_crit_edge, %lor.lhs.false34.if.then42_crit_edge, %if.end29.if.then42_crit_edge
  %60 = ptrtoint ptr %fg_color to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %fg, ptr %fg_color, align 4
  %bg_color48 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 5
  %61 = ptrtoint ptr %bg_color48 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %bg, ptr %bg_color48, align 4
  %62 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %cursor, align 4
  %64 = or i16 %63, 8
  store i16 %64, ptr %cursor, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then42, %lor.lhs.false39.if.end53_crit_edge
  %65 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %image, align 4
  %67 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %vc_font, align 4
  %69 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %state, align 4
  %mul59 = mul i32 %70, %68
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %mul59)
  %cmp60.not = icmp eq i32 %66, %mul59
  br i1 %cmp60.not, label %lor.lhs.false62, label %if.end53.if.then73_crit_edge

if.end53.if.then73_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then73

lor.lhs.false62:                                  ; preds = %if.end53
  %dy = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 1
  %71 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dy, align 4
  %73 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %height, align 4
  %mul67 = mul i32 %74, %cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %mul67)
  %cmp68.not = icmp eq i32 %72, %mul67
  br i1 %cmp68.not, label %lor.lhs.false70, label %lor.lhs.false62.if.then73_crit_edge

lor.lhs.false62.if.then73_crit_edge:              ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then73

lor.lhs.false70:                                  ; preds = %lor.lhs.false62
  %cursor_reset71 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %75 = ptrtoint ptr %cursor_reset71 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cursor_reset71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool72.not = icmp eq i32 %76, 0
  br i1 %tobool72.not, label %lor.lhs.false70.if.end92_crit_edge, label %lor.lhs.false70.if.then73_crit_edge

lor.lhs.false70.if.then73_crit_edge:              ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then73

lor.lhs.false70.if.end92_crit_edge:               ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

if.then73:                                        ; preds = %lor.lhs.false70.if.then73_crit_edge, %lor.lhs.false62.if.then73_crit_edge, %if.end53.if.then73_crit_edge
  %77 = ptrtoint ptr %image to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %mul59, ptr %image, align 4
  %78 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %height, align 4
  %mul84 = mul i32 %79, %cond.i
  %dy87 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 1
  %80 = ptrtoint ptr %dy87 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %mul84, ptr %dy87, align 4
  %81 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %cursor, align 4
  %83 = or i16 %82, 2
  store i16 %83, ptr %cursor, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then73, %lor.lhs.false70.if.end92_crit_edge
  %height95 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 3
  %84 = ptrtoint ptr %height95 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %height95, align 4
  %86 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %87)
  %cmp98.not = icmp eq i32 %85, %87
  br i1 %cmp98.not, label %lor.lhs.false100, label %if.end92.if.then111_crit_edge

if.end92.if.then111_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then111

lor.lhs.false100:                                 ; preds = %if.end92
  %width103 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 2
  %88 = ptrtoint ptr %width103 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %width103, align 4
  %90 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %vc_font, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %91)
  %cmp106.not = icmp eq i32 %89, %91
  br i1 %cmp106.not, label %lor.lhs.false108, label %lor.lhs.false100.if.then111_crit_edge

lor.lhs.false100.if.then111_crit_edge:            ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then111

lor.lhs.false108:                                 ; preds = %lor.lhs.false100
  %cursor_reset109 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %92 = ptrtoint ptr %cursor_reset109 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cursor_reset109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool110.not = icmp eq i32 %93, 0
  br i1 %tobool110.not, label %lor.lhs.false108.if.end126_crit_edge, label %lor.lhs.false108.if.then111_crit_edge

lor.lhs.false108.if.then111_crit_edge:            ; preds = %lor.lhs.false108
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then111

lor.lhs.false108.if.end126_crit_edge:             ; preds = %lor.lhs.false108
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end126

if.then111:                                       ; preds = %lor.lhs.false108.if.then111_crit_edge, %lor.lhs.false100.if.then111_crit_edge, %if.end92.if.then111_crit_edge
  %94 = ptrtoint ptr %height95 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %87, ptr %height95, align 4
  %95 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %vc_font, align 4
  %width121 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 2
  %97 = ptrtoint ptr %width121 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %width121, align 4
  %98 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %cursor, align 4
  %100 = or i16 %99, 32
  store i16 %100, ptr %cursor, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.then111, %lor.lhs.false108.if.end126_crit_edge
  %hot = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 4
  %101 = ptrtoint ptr %hot to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %hot, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %tobool130.not = icmp eq i16 %102, 0
  br i1 %tobool130.not, label %lor.lhs.false131, label %if.end126.if.then140_crit_edge

if.end126.if.then140_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then140

lor.lhs.false131:                                 ; preds = %if.end126
  %y134 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 4, i32 1
  %103 = ptrtoint ptr %y134 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %y134, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool136.not = icmp eq i16 %104, 0
  br i1 %tobool136.not, label %lor.lhs.false137, label %lor.lhs.false131.if.then140_crit_edge

lor.lhs.false131.if.then140_crit_edge:            ; preds = %lor.lhs.false131
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then140

lor.lhs.false137:                                 ; preds = %lor.lhs.false131
  %cursor_reset138 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %105 = ptrtoint ptr %cursor_reset138 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cursor_reset138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool139.not = icmp eq i32 %106, 0
  br i1 %tobool139.not, label %lor.lhs.false137.if.end150_crit_edge, label %lor.lhs.false137.if.then140_crit_edge

lor.lhs.false137.if.then140_crit_edge:            ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then140

lor.lhs.false137.if.end150_crit_edge:             ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end150

if.then140:                                       ; preds = %lor.lhs.false137.if.then140_crit_edge, %lor.lhs.false131.if.then140_crit_edge, %if.end126.if.then140_crit_edge
  %107 = ptrtoint ptr %hot to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %hot, align 4
  %108 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %cursor, align 4
  %110 = or i16 %109, 4
  store i16 %110, ptr %cursor, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.then140, %lor.lhs.false137.if.end150_crit_edge
  %111 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %cursor, align 4
  %113 = and i16 %112, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool154.not = icmp eq i16 %113, 0
  br i1 %tobool154.not, label %lor.lhs.false155, label %if.end150.if.then167_crit_edge

if.end150.if.then167_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then167

lor.lhs.false155:                                 ; preds = %if.end150
  %114 = ptrtoint ptr %vc_cursor_type to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %vc_cursor_type, align 4
  %116 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %p, align 4
  %cursor_shape = getelementptr inbounds %struct.fbcon_display, ptr %117, i32 0, i32 6
  %118 = ptrtoint ptr %cursor_shape to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cursor_shape, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %119)
  %cmp158.not = icmp eq i32 %115, %119
  br i1 %cmp158.not, label %lor.lhs.false160, label %lor.lhs.false155.if.then167_crit_edge

lor.lhs.false155.if.then167_crit_edge:            ; preds = %lor.lhs.false155
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then167

lor.lhs.false160:                                 ; preds = %lor.lhs.false155
  %mask = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 3
  %120 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mask, align 4
  %cmp162 = icmp eq ptr %121, null
  br i1 %cmp162, label %lor.lhs.false160.if.then167_crit_edge, label %lor.lhs.false164

lor.lhs.false160.if.then167_crit_edge:            ; preds = %lor.lhs.false160
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then167

lor.lhs.false164:                                 ; preds = %lor.lhs.false160
  %cursor_reset165 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %122 = ptrtoint ptr %cursor_reset165 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %cursor_reset165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool166.not = icmp eq i32 %123, 0
  br i1 %tobool166.not, label %lor.lhs.false164.if.end231_crit_edge, label %lor.lhs.false164.if.then167_crit_edge

lor.lhs.false164.if.then167_crit_edge:            ; preds = %lor.lhs.false164
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then167

lor.lhs.false164.if.end231_crit_edge:             ; preds = %lor.lhs.false164
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end231

if.then167:                                       ; preds = %lor.lhs.false164.if.then167_crit_edge, %lor.lhs.false160.if.then167_crit_edge, %lor.lhs.false155.if.then167_crit_edge, %if.end150.if.then167_crit_edge
  %124 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %height, align 4
  %126 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div416, i32 %125) #5
  %127 = extractvalue { i32, i1 } %126, 1
  br i1 %127, label %if.then167.cleanup302_crit_edge, label %if.end7.i454, !prof !10

if.then167.cleanup302_crit_edge:                  ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup302

if.end7.i454:                                     ; preds = %if.then167
  %128 = extractvalue { i32, i1 } %126, 0
  %call8.i453 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %128, i32 noundef 2592) #8
  %tobool172.not = icmp eq ptr %call8.i453, null
  br i1 %tobool172.not, label %if.end7.i454.cleanup302_crit_edge, label %if.end174

if.end7.i454.cleanup302_crit_edge:                ; preds = %if.end7.i454
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup302

if.end174:                                        ; preds = %if.end7.i454
  %mask176 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 3
  %129 = ptrtoint ptr %mask176 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mask176, align 4
  tail call void @kfree(ptr noundef %130) #5
  %131 = ptrtoint ptr %mask176 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call8.i453, ptr %mask176, align 4
  %132 = ptrtoint ptr %vc_cursor_type to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %vc_cursor_type, align 4
  %134 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %p, align 4
  %cursor_shape181 = getelementptr inbounds %struct.fbcon_display, ptr %135, i32 0, i32 6
  %136 = ptrtoint ptr %cursor_shape181 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %133, ptr %cursor_shape181, align 4
  %137 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %cursor, align 4
  %139 = or i16 %138, 16
  store i16 %139, ptr %cursor, align 4
  %140 = load ptr, ptr %p, align 4
  %cursor_shape187 = getelementptr inbounds %struct.fbcon_display, ptr %140, i32 0, i32 6
  %141 = ptrtoint ptr %cursor_shape187 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %cursor_shape187, align 4
  %and188 = and i32 %142, 15
  %143 = zext i32 %and188 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and188, label %sw.default [
    i32 1, label %if.end174.sw.epilog_crit_edge
    i32 2, label %sw.bb189
    i32 3, label %sw.bb195
    i32 4, label %sw.bb199
    i32 5, label %sw.bb202
  ]

if.end174.sw.epilog_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb189:                                         ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #7
  %144 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %145)
  %cmp192 = icmp ult i32 %145, 10
  %cond194 = select i1 %cmp192, i32 1, i32 2
  br label %sw.epilog

sw.bb195:                                         ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #7
  %146 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %height, align 4
  %div198 = udiv i32 %147, 3
  br label %sw.epilog

sw.bb199:                                         ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #7
  %148 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %height, align 4
  %shr = lshr i32 %149, 1
  br label %sw.epilog

sw.bb202:                                         ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #7
  %150 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %height, align 4
  %shl = shl i32 %151, 1
  %div205 = udiv i32 %shl, 3
  br label %sw.epilog

sw.default:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #7
  %152 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %height, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb202, %sw.bb199, %sw.bb195, %sw.bb189, %if.end174.sw.epilog_crit_edge
  %cur_height.0 = phi i32 [ %153, %sw.default ], [ %div205, %sw.bb202 ], [ %shr, %sw.bb199 ], [ %div198, %sw.bb195 ], [ %cond194, %sw.bb189 ], [ 0, %if.end174.sw.epilog_crit_edge ]
  %154 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %height, align 4
  %sub211 = sub i32 %155, %cur_height.0
  %mul212 = mul i32 %sub211, %div416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul212)
  %tobool213.not477 = icmp eq i32 %mul212, 0
  br i1 %tobool213.not477, label %sw.epilog.while.end_crit_edge, label %while.body.preheader

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.preheader:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %156 = call ptr @memset(ptr %call8.i453, i32 0, i32 %mul212)
  br label %while.end

while.end:                                        ; preds = %while.body.preheader, %sw.epilog.while.end_crit_edge
  %mul216 = mul i32 %cur_height.0, %div416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul216)
  %tobool219.not480 = icmp eq i32 %mul216, 0
  br i1 %tobool219.not480, label %while.end.if.end231_crit_edge, label %while.body220.preheader

while.end.if.end231_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end231

while.body220.preheader:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %uglygep = getelementptr i8, ptr %call8.i453, i32 %mul212
  %157 = call ptr @memset(ptr %uglygep, i32 255, i32 %mul216)
  br label %if.end231

if.end231:                                        ; preds = %while.body220.preheader, %while.end.if.end231_crit_edge, %lor.lhs.false164.if.end231_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cond316 = icmp eq i32 %mode, 2
  %158 = trunc i32 %16 to i16
  %159 = lshr i16 %158, 4
  %160 = and i16 %159, 1
  %161 = xor i16 %160, 1
  %.sink = select i1 %cond316, i16 0, i16 %161
  %162 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 1
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %.sink, ptr %162, align 2
  %image242 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5
  %data243 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 7
  %164 = ptrtoint ptr %data243 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %src.1, ptr %data243, align 4
  %165 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %fg_color, align 4
  %fg_color248 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 4
  %167 = ptrtoint ptr %fg_color248 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %fg_color248, align 4
  %bg_color251 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 5
  %168 = ptrtoint ptr %bg_color251 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %bg_color251, align 4
  %bg_color253 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 5
  %170 = ptrtoint ptr %bg_color253 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %bg_color253, align 4
  %171 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %image, align 4
  %173 = ptrtoint ptr %image242 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %image242, align 4
  %dy261 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 1
  %174 = ptrtoint ptr %dy261 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %dy261, align 4
  %dy263 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 1
  %176 = ptrtoint ptr %dy263 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %dy263, align 4
  %177 = ptrtoint ptr %height95 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %height95, align 4
  %height268 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 3
  %179 = ptrtoint ptr %height268 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %height268, align 4
  %width271 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 5, i32 2
  %180 = ptrtoint ptr %width271 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %width271, align 4
  %width273 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 2
  %182 = ptrtoint ptr %width273 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %width273, align 4
  %183 = ptrtoint ptr %hot to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %hot, align 4
  %hot277 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 4
  %185 = ptrtoint ptr %hot277 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %184, ptr %hot277, align 4
  %y281 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 4, i32 1
  %186 = ptrtoint ptr %y281 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %y281, align 2
  %y283 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 4, i32 1
  %188 = ptrtoint ptr %y283 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %187, ptr %y283, align 2
  %mask285 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 9, i32 3
  %189 = ptrtoint ptr %mask285 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %mask285, align 4
  %mask286 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 3
  %191 = ptrtoint ptr %mask286 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %190, ptr %mask286, align 4
  %enable289 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 1
  %192 = ptrtoint ptr %enable289 to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %.sink, ptr %enable289, align 2
  %depth = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 6
  %193 = ptrtoint ptr %depth to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 1, ptr %depth, align 4
  %rop = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 2
  %194 = ptrtoint ptr %rop to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 1, ptr %rop, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %195 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %fbops, align 4
  %fb_cursor = getelementptr inbounds %struct.fb_ops, ptr %196, i32 0, i32 14
  %197 = ptrtoint ptr %fb_cursor to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %fb_cursor, align 4
  %tobool291.not = icmp eq ptr %198, null
  br i1 %tobool291.not, label %if.end231.if.then298_crit_edge, label %if.then292

if.end231.if.then298_crit_edge:                   ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then298

if.then292:                                       ; preds = %if.end231
  %call295 = call i32 %198(ptr noundef %info, ptr noundef nonnull %cursor) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call295)
  %phi.cmp = icmp eq i32 %call295, 0
  br i1 %phi.cmp, label %if.then292.if.end300_crit_edge, label %if.then292.if.then298_crit_edge

if.then292.if.then298_crit_edge:                  ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then298

if.then292.if.end300_crit_edge:                   ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end300

if.then298:                                       ; preds = %if.then292.if.then298_crit_edge, %if.end231.if.then298_crit_edge
  %call299 = call i32 @soft_cursor(ptr noundef %info, ptr noundef nonnull %cursor) #5
  br label %if.end300

if.end300:                                        ; preds = %if.then298, %if.then292.if.end300_crit_edge
  %cursor_reset301 = getelementptr inbounds %struct.fbcon_ops, ptr %2, i32 0, i32 15
  %199 = ptrtoint ptr %cursor_reset301 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %cursor_reset301, align 4
  br label %cleanup302

cleanup302:                                       ; preds = %if.end300, %if.end7.i454.cleanup302_crit_edge, %if.then167.cleanup302_crit_edge, %if.end7.i.cleanup302_crit_edge, %if.then21.cleanup302_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cursor) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bit_update_start(ptr noundef %info) #0 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_set_rotate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_get_buffer_offset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_color_depth(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_pad_aligned_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_pad_unaligned_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @soft_cursor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_pan_display(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

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
