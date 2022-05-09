; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/core/fbcon_rotate.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fbcon_rotate.c"
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
%struct.fbcon_display = type { ptr, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fbcon_set_rotate(ptr noundef %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rotate_font = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 6
  %0 = ptrtoint ptr %rotate_font to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @fbcon_rotate_font, ptr %rotate_font, align 4
  %rotate = getelementptr inbounds %struct.fbcon_ops, ptr %ops, i32 0, i32 20
  %1 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rotate, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @fbcon_rotate_cw(ptr noundef %ops) #4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @fbcon_rotate_ud(ptr noundef %ops) #4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @fbcon_rotate_ccw(ptr noundef %ops) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbcon_rotate_font(ptr noundef %info, ptr nocapture noundef readonly %vc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fbcon_par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 29
  %0 = ptrtoint ptr %fbcon_par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbcon_par, align 4
  %vc_font = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28
  %data = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %fontdata = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %fontdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fontdata, align 4
  %cmp = icmp eq ptr %3, %5
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %p = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p, align 4
  %con_rotate = getelementptr inbounds %struct.fbcon_display, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %con_rotate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %con_rotate, align 4
  %cur_rotate = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 21
  %10 = ptrtoint ptr %cur_rotate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_rotate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp1 = icmp eq i32 %9, %11
  br i1 %cmp1, label %land.lhs.true.finished_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.finished_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %finished

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %fontdata to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %fontdata, align 4
  %p5 = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %p5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p5, align 4
  %con_rotate6 = getelementptr inbounds %struct.fbcon_display, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %con_rotate6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %con_rotate6, align 4
  %cur_rotate7 = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 21
  %17 = ptrtoint ptr %cur_rotate7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %cur_rotate7, align 4
  %charcount = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 2
  %18 = ptrtoint ptr %charcount to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %charcount, align 4
  %20 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vc_font, align 4
  %add = add i32 %21, 7
  %div129 = lshr i32 %add, 3
  %height = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 28, i32 1
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  %mul = mul i32 %div129, %23
  %rotate = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 20
  %24 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rotate, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %25, label %if.end.if.end22_crit_edge [
    i32 1, label %if.end.if.then14_crit_edge
    i32 3, label %if.end.if.then14_crit_edge223
  ]

if.end.if.then14_crit_edge223:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then14:                                        ; preds = %if.end.if.then14_crit_edge, %if.end.if.then14_crit_edge223
  %add17 = add i32 %23, 7
  %div18130 = lshr i32 %add17, 3
  %mul21 = mul i32 %div18130, %21
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %if.end.if.end22_crit_edge
  %d_cellsize.0 = phi i32 [ %mul21, %if.then14 ], [ %mul, %if.end.if.end22_crit_edge ]
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %27 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fbops, align 4
  %fb_sync = getelementptr inbounds %struct.fb_ops, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %fb_sync to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fb_sync, align 4
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %if.end22.if.end26_crit_edge, label %if.then23

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then23:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %30(ptr noundef %info) #4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end22.if.end26_crit_edge
  %fd_size = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 27
  %31 = ptrtoint ptr %fd_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fd_size, align 4
  %mul27 = mul i32 %d_cellsize.0, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %mul27)
  %cmp28 = icmp ult i32 %32, %mul27
  br i1 %cmp28, label %if.then29, label %if.end26.if.end37_crit_edge

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.then29:                                        ; preds = %if.end26
  %33 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %19, i32 %d_cellsize.0) #4
  %34 = extractvalue { i32, i1 } %33, 1
  br i1 %34, label %if.then29.finished_crit_edge, label %if.end7.i, !prof !9

if.then29.finished_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %finished

if.end7.i:                                        ; preds = %if.then29
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul27, i32 noundef 3264) #7
  %cmp31 = icmp eq ptr %call8.i, null
  br i1 %cmp31, label %if.end7.i.finished_crit_edge, label %if.end33

if.end7.i.finished_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %finished

if.end33:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %fd_size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul27, ptr %fd_size, align 4
  %fontbuffer = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 23
  %36 = ptrtoint ptr %fontbuffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fontbuffer, align 4
  tail call void @kfree(ptr noundef %37) #4
  %38 = ptrtoint ptr %fontbuffer to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call8.i, ptr %fontbuffer, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end33, %if.end26.if.end37_crit_edge
  %fontbuffer38 = getelementptr inbounds %struct.fbcon_ops, ptr %1, i32 0, i32 23
  %39 = ptrtoint ptr %fontbuffer38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fontbuffer38, align 4
  %41 = ptrtoint ptr %fd_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fd_size, align 4
  %43 = call ptr @memset(ptr %40, i32 0, i32 %42)
  %44 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rotate, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %45, label %if.end37.finished_crit_edge [
    i32 2, label %for.cond.preheader
    i32 1, label %for.cond48.preheader
    i32 3, label %for.cond60.preheader
  ]

if.end37.finished_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %finished

for.cond60.preheader:                             ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool62.not197 = icmp eq i32 %19, 0
  br i1 %tobool62.not197, label %for.cond60.preheader.finished_crit_edge, label %for.cond60.preheader.for.body63_crit_edge

for.cond60.preheader.for.body63_crit_edge:        ; preds = %for.cond60.preheader
  br label %for.body63

for.cond60.preheader.finished_crit_edge:          ; preds = %for.cond60.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %finished

for.cond48.preheader:                             ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool50.not203 = icmp eq i32 %19, 0
  br i1 %tobool50.not203, label %for.cond48.preheader.finished_crit_edge, label %for.cond48.preheader.for.body51_crit_edge

for.cond48.preheader.for.body51_crit_edge:        ; preds = %for.cond48.preheader
  br label %for.body51

for.cond48.preheader.finished_crit_edge:          ; preds = %for.cond48.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %finished

for.cond.preheader:                               ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool41.not209 = icmp eq i32 %19, 0
  br i1 %tobool41.not209, label %for.cond.preheader.finished_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.finished_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %finished

for.body:                                         ; preds = %rotate_ud.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %dst.0213 = phi ptr [ %add.ptr46, %rotate_ud.exit.for.body_crit_edge ], [ %40, %for.cond.preheader.for.body_crit_edge ]
  %src.0211 = phi ptr [ %add.ptr, %rotate_ud.exit.for.body_crit_edge ], [ %3, %for.cond.preheader.for.body_crit_edge ]
  %i.0210 = phi i32 [ %dec, %rotate_ud.exit.for.body_crit_edge ], [ %19, %for.cond.preheader.for.body_crit_edge ]
  %dec = add i32 %i.0210, -1
  %47 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vc_font, align 4
  %49 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %height, align 4
  %add.i = add i32 %48, 7
  %and1.i = and i32 %add.i, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp35.not.i = icmp eq i32 %50, 0
  br i1 %cmp35.not.i, label %for.body.rotate_ud.exit_crit_edge, label %for.cond2.preheader.lr.ph.i

for.body.rotate_ud.exit_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %rotate_ud.exit

for.cond2.preheader.lr.ph.i:                      ; preds = %for.body
  %sub.i = sub i32 0, %48
  %and.i = and i32 %sub.i, 7
  %sub3.i = sub i32 %and1.i, %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i, i32 %and.i)
  %cmp432.not.i = icmp eq i32 %and1.i, %and.i
  %add7.neg.i = add i32 %48, -1
  %umax.i = tail call i32 @llvm.umax.i32(i32 %sub3.i, i32 1) #4
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc11.i.for.cond2.preheader.i_crit_edge, %for.cond2.preheader.lr.ph.i
  %i.036.i = phi i32 [ 0, %for.cond2.preheader.lr.ph.i ], [ %inc12.i, %for.inc11.i.for.cond2.preheader.i_crit_edge ]
  br i1 %cmp432.not.i, label %for.cond2.preheader.i.for.inc11.i_crit_edge, label %for.body5.lr.ph.i

for.cond2.preheader.i.for.inc11.i_crit_edge:      ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc11.i

for.body5.lr.ph.i:                                ; preds = %for.cond2.preheader.i
  %mul.i.i = mul i32 %i.036.i, %and1.i
  %add9.neg.i = xor i32 %i.036.i, -1
  %sub10.i = add i32 %50, %add9.neg.i
  %mul.i27.i = mul i32 %sub10.i, %and1.i
  %sub8.i = add i32 %add7.neg.i, %mul.i27.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.inc.i.for.body5.i_crit_edge, %for.body5.lr.ph.i
  %j.033.i = phi i32 [ 0, %for.body5.lr.ph.i ], [ %inc.i, %for.inc.i.for.body5.i_crit_edge ]
  %add.i.i = add i32 %j.033.i, %mul.i.i
  %div3.i.i = lshr i32 %add.i.i, 3
  %rem.i.i = and i32 %add.i.i, 7
  %add.ptr.i.i = getelementptr i8, ptr %src.0211, i32 %div3.i.i
  %51 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr.i.i, align 1
  %conv.i.i = zext i8 %52 to i32
  %shr.i.i = lshr i32 128, %rem.i.i
  %and.i.i = and i32 %shr.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %for.body5.i.for.inc.i_crit_edge, label %if.then.i

for.body5.i.for.inc.i_crit_edge:                  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.i28.i = sub i32 %sub8.i, %j.033.i
  %div4.i.i = lshr i32 %add.i28.i, 3
  %rem.i29.i = and i32 %add.i28.i, 7
  %add.ptr.i30.i = getelementptr i8, ptr %dst.0213, i32 %div4.i.i
  %shr.i31.i = lshr i32 128, %rem.i29.i
  %53 = ptrtoint ptr %add.ptr.i30.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %add.ptr.i30.i, align 1
  %55 = trunc i32 %shr.i31.i to i8
  %conv1.i.i = or i8 %54, %55
  store i8 %conv1.i.i, ptr %add.ptr.i30.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body5.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %j.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.inc.i.for.inc11.i_crit_edge, label %for.inc.i.for.body5.i_crit_edge

for.inc.i.for.body5.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body5.i

for.inc.i.for.inc11.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc11.i

for.inc11.i:                                      ; preds = %for.inc.i.for.inc11.i_crit_edge, %for.cond2.preheader.i.for.inc11.i_crit_edge
  %inc12.i = add nuw i32 %i.036.i, 1
  %exitcond38.not.i = icmp eq i32 %inc12.i, %50
  br i1 %exitcond38.not.i, label %for.inc11.i.rotate_ud.exit_crit_edge, label %for.inc11.i.for.cond2.preheader.i_crit_edge

for.inc11.i.for.cond2.preheader.i_crit_edge:      ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond2.preheader.i

for.inc11.i.rotate_ud.exit_crit_edge:             ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rotate_ud.exit

rotate_ud.exit:                                   ; preds = %for.inc11.i.rotate_ud.exit_crit_edge, %for.body.rotate_ud.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %src.0211, i32 %mul
  %add.ptr46 = getelementptr i8, ptr %dst.0213, i32 %d_cellsize.0
  %tobool41.not = icmp eq i32 %dec, 0
  br i1 %tobool41.not, label %rotate_ud.exit.finished_crit_edge, label %rotate_ud.exit.for.body_crit_edge

rotate_ud.exit.for.body_crit_edge:                ; preds = %rotate_ud.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

rotate_ud.exit.finished_crit_edge:                ; preds = %rotate_ud.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %finished

for.body51:                                       ; preds = %rotate_cw.exit.for.body51_crit_edge, %for.cond48.preheader.for.body51_crit_edge
  %dst.1207 = phi ptr [ %add.ptr57, %rotate_cw.exit.for.body51_crit_edge ], [ %40, %for.cond48.preheader.for.body51_crit_edge ]
  %src.1205 = phi ptr [ %add.ptr56, %rotate_cw.exit.for.body51_crit_edge ], [ %3, %for.cond48.preheader.for.body51_crit_edge ]
  %i.1204 = phi i32 [ %dec49, %rotate_cw.exit.for.body51_crit_edge ], [ %19, %for.cond48.preheader.for.body51_crit_edge ]
  %dec49 = add i32 %i.1204, -1
  %56 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vc_font, align 4
  %58 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %height, align 4
  %add.i131 = add i32 %57, 7
  %and1.i132 = and i32 %add.i131, -8
  %add2.i = add i32 %59, 7
  %and3.i = and i32 %add2.i, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp33.i = icmp sgt i32 %59, 0
  br i1 %cmp33.i, label %for.cond4.preheader.lr.ph.i, label %for.body51.rotate_cw.exit_crit_edge

for.body51.rotate_cw.exit_crit_edge:              ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #6
  br label %rotate_cw.exit

for.cond4.preheader.lr.ph.i:                      ; preds = %for.body51
  %sub.i133 = sub nsw i32 0, %59
  %and.i134 = and i32 %sub.i133, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp530.i = icmp sgt i32 %57, 0
  %sub8.i135 = sub i32 %and3.i, %and.i134
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.inc10.i.for.cond4.preheader.i_crit_edge, %for.cond4.preheader.lr.ph.i
  %i.034.i = phi i32 [ 0, %for.cond4.preheader.lr.ph.i ], [ %inc11.i, %for.inc10.i.for.cond4.preheader.i_crit_edge ]
  br i1 %cmp530.i, label %for.body6.lr.ph.i, label %for.cond4.preheader.i.for.inc10.i_crit_edge

for.cond4.preheader.i.for.inc10.i_crit_edge:      ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc10.i

for.body6.lr.ph.i:                                ; preds = %for.cond4.preheader.i
  %mul.i.i136 = mul i32 %i.034.i, %and1.i132
  %60 = xor i32 %i.034.i, -1
  %sub9.i = add i32 %sub8.i135, %60
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc.i150.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %j.031.i = phi i32 [ 0, %for.body6.lr.ph.i ], [ %inc.i148, %for.inc.i150.for.body6.i_crit_edge ]
  %add.i.i137 = add i32 %j.031.i, %mul.i.i136
  %div3.i.i138 = lshr i32 %add.i.i137, 3
  %rem.i.i139 = and i32 %add.i.i137, 7
  %add.ptr.i.i140 = getelementptr i8, ptr %src.1205, i32 %div3.i.i138
  %61 = ptrtoint ptr %add.ptr.i.i140 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %add.ptr.i.i140, align 1
  %conv.i.i141 = zext i8 %62 to i32
  %shr.i.i142 = lshr i32 128, %rem.i.i139
  %and.i.i143 = and i32 %shr.i.i142, %conv.i.i141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i143)
  %tobool.not.i144 = icmp eq i32 %and.i.i143, 0
  br i1 %tobool.not.i144, label %for.body6.i.for.inc.i150_crit_edge, label %if.then.i147

for.body6.i.for.inc.i150_crit_edge:               ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i150

if.then.i147:                                     ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i25.i = mul i32 %j.031.i, %and3.i
  %add.i26.i = add i32 %sub9.i, %mul.i25.i
  %div4.i.i145 = lshr i32 %add.i26.i, 3
  %rem.i27.i = and i32 %add.i26.i, 7
  %add.ptr.i28.i = getelementptr i8, ptr %dst.1207, i32 %div4.i.i145
  %shr.i29.i = lshr i32 128, %rem.i27.i
  %63 = ptrtoint ptr %add.ptr.i28.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %add.ptr.i28.i, align 1
  %65 = trunc i32 %shr.i29.i to i8
  %conv1.i.i146 = or i8 %64, %65
  store i8 %conv1.i.i146, ptr %add.ptr.i28.i, align 1
  br label %for.inc.i150

for.inc.i150:                                     ; preds = %if.then.i147, %for.body6.i.for.inc.i150_crit_edge
  %inc.i148 = add nuw nsw i32 %j.031.i, 1
  %exitcond.not.i149 = icmp eq i32 %inc.i148, %57
  br i1 %exitcond.not.i149, label %for.inc.i150.for.inc10.i_crit_edge, label %for.inc.i150.for.body6.i_crit_edge

for.inc.i150.for.body6.i_crit_edge:               ; preds = %for.inc.i150
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body6.i

for.inc.i150.for.inc10.i_crit_edge:               ; preds = %for.inc.i150
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc10.i

for.inc10.i:                                      ; preds = %for.inc.i150.for.inc10.i_crit_edge, %for.cond4.preheader.i.for.inc10.i_crit_edge
  %inc11.i = add nuw nsw i32 %i.034.i, 1
  %exitcond36.not.i = icmp eq i32 %inc11.i, %59
  br i1 %exitcond36.not.i, label %for.inc10.i.rotate_cw.exit_crit_edge, label %for.inc10.i.for.cond4.preheader.i_crit_edge

for.inc10.i.for.cond4.preheader.i_crit_edge:      ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond4.preheader.i

for.inc10.i.rotate_cw.exit_crit_edge:             ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rotate_cw.exit

rotate_cw.exit:                                   ; preds = %for.inc10.i.rotate_cw.exit_crit_edge, %for.body51.rotate_cw.exit_crit_edge
  %add.ptr56 = getelementptr i8, ptr %src.1205, i32 %mul
  %add.ptr57 = getelementptr i8, ptr %dst.1207, i32 %d_cellsize.0
  %tobool50.not = icmp eq i32 %dec49, 0
  br i1 %tobool50.not, label %rotate_cw.exit.finished_crit_edge, label %rotate_cw.exit.for.body51_crit_edge

rotate_cw.exit.for.body51_crit_edge:              ; preds = %rotate_cw.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body51

rotate_cw.exit.finished_crit_edge:                ; preds = %rotate_cw.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %finished

for.body63:                                       ; preds = %rotate_ccw.exit.for.body63_crit_edge, %for.cond60.preheader.for.body63_crit_edge
  %dst.2201 = phi ptr [ %add.ptr69, %rotate_ccw.exit.for.body63_crit_edge ], [ %40, %for.cond60.preheader.for.body63_crit_edge ]
  %src.2199 = phi ptr [ %add.ptr68, %rotate_ccw.exit.for.body63_crit_edge ], [ %3, %for.cond60.preheader.for.body63_crit_edge ]
  %i.2198 = phi i32 [ %dec61, %rotate_ccw.exit.for.body63_crit_edge ], [ %19, %for.cond60.preheader.for.body63_crit_edge ]
  %dec61 = add i32 %i.2198, -1
  %66 = ptrtoint ptr %vc_font to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vc_font, align 4
  %68 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %height, align 4
  %add.i151 = add i32 %67, 7
  %and1.i152 = and i32 %add.i151, -8
  %add2.i153 = add i32 %69, 7
  %and3.i154 = and i32 %add2.i153, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp33.i155 = icmp sgt i32 %69, 0
  br i1 %cmp33.i155, label %for.cond4.preheader.lr.ph.i160, label %for.body63.rotate_ccw.exit_crit_edge

for.body63.rotate_ccw.exit_crit_edge:             ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #6
  br label %rotate_ccw.exit

for.cond4.preheader.lr.ph.i160:                   ; preds = %for.body63
  %sub.i156 = sub i32 0, %67
  %and.i157 = and i32 %sub.i156, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp530.i158 = icmp sgt i32 %67, 0
  %sub8.i159 = sub i32 %and1.i152, %and.i157
  br label %for.cond4.preheader.i162

for.cond4.preheader.i162:                         ; preds = %for.inc10.i188.for.cond4.preheader.i162_crit_edge, %for.cond4.preheader.lr.ph.i160
  %indvars.iv.i = phi i3 [ 0, %for.cond4.preheader.lr.ph.i160 ], [ %indvars.iv.next.i, %for.inc10.i188.for.cond4.preheader.i162_crit_edge ]
  %i.034.i161 = phi i32 [ 0, %for.cond4.preheader.lr.ph.i160 ], [ %inc11.i186, %for.inc10.i188.for.cond4.preheader.i162_crit_edge ]
  br i1 %cmp530.i158, label %for.body6.lr.ph.i165, label %for.cond4.preheader.i162.for.inc10.i188_crit_edge

for.cond4.preheader.i162.for.inc10.i188_crit_edge: ; preds = %for.cond4.preheader.i162
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc10.i188

for.body6.lr.ph.i165:                             ; preds = %for.cond4.preheader.i162
  %70 = zext i3 %indvars.iv.i to i8
  %mul.i.i163 = mul i32 %i.034.i161, %and1.i152
  %shr.i29.i164 = lshr i8 -128, %70
  br label %for.body6.i175

for.body6.i175:                                   ; preds = %for.inc.i185.for.body6.i175_crit_edge, %for.body6.lr.ph.i165
  %j.031.i166 = phi i32 [ 0, %for.body6.lr.ph.i165 ], [ %inc.i183, %for.inc.i185.for.body6.i175_crit_edge ]
  %add.i.i167 = add i32 %j.031.i166, %mul.i.i163
  %div3.i.i168 = lshr i32 %add.i.i167, 3
  %rem.i.i169 = and i32 %add.i.i167, 7
  %add.ptr.i.i170 = getelementptr i8, ptr %src.2199, i32 %div3.i.i168
  %71 = ptrtoint ptr %add.ptr.i.i170 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %add.ptr.i.i170, align 1
  %conv.i.i171 = zext i8 %72 to i32
  %shr.i.i172 = lshr i32 128, %rem.i.i169
  %and.i.i173 = and i32 %shr.i.i172, %conv.i.i171
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i173)
  %tobool.not.i174 = icmp eq i32 %and.i.i173, 0
  br i1 %tobool.not.i174, label %for.body6.i175.for.inc.i185_crit_edge, label %if.then.i182

for.body6.i175.for.inc.i185_crit_edge:            ; preds = %for.body6.i175
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i185

if.then.i182:                                     ; preds = %for.body6.i175
  call void @__sanitizer_cov_trace_pc() #6
  %73 = xor i32 %j.031.i166, -1
  %sub9.i176 = add i32 %sub8.i159, %73
  %mul.i25.i177 = mul i32 %sub9.i176, %and3.i154
  %add.i26.i178 = add i32 %mul.i25.i177, %i.034.i161
  %div4.i.i179 = lshr i32 %add.i26.i178, 3
  %add.ptr.i28.i180 = getelementptr i8, ptr %dst.2201, i32 %div4.i.i179
  %74 = ptrtoint ptr %add.ptr.i28.i180 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %add.ptr.i28.i180, align 1
  %conv1.i.i181 = or i8 %75, %shr.i29.i164
  store i8 %conv1.i.i181, ptr %add.ptr.i28.i180, align 1
  br label %for.inc.i185

for.inc.i185:                                     ; preds = %if.then.i182, %for.body6.i175.for.inc.i185_crit_edge
  %inc.i183 = add nuw nsw i32 %j.031.i166, 1
  %exitcond.not.i184 = icmp eq i32 %inc.i183, %67
  br i1 %exitcond.not.i184, label %for.inc.i185.for.inc10.i188_crit_edge, label %for.inc.i185.for.body6.i175_crit_edge

for.inc.i185.for.body6.i175_crit_edge:            ; preds = %for.inc.i185
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body6.i175

for.inc.i185.for.inc10.i188_crit_edge:            ; preds = %for.inc.i185
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc10.i188

for.inc10.i188:                                   ; preds = %for.inc.i185.for.inc10.i188_crit_edge, %for.cond4.preheader.i162.for.inc10.i188_crit_edge
  %inc11.i186 = add nuw nsw i32 %i.034.i161, 1
  %indvars.iv.next.i = add i3 %indvars.iv.i, 1
  %exitcond36.not.i187 = icmp eq i32 %inc11.i186, %69
  br i1 %exitcond36.not.i187, label %for.inc10.i188.rotate_ccw.exit_crit_edge, label %for.inc10.i188.for.cond4.preheader.i162_crit_edge

for.inc10.i188.for.cond4.preheader.i162_crit_edge: ; preds = %for.inc10.i188
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond4.preheader.i162

for.inc10.i188.rotate_ccw.exit_crit_edge:         ; preds = %for.inc10.i188
  call void @__sanitizer_cov_trace_pc() #6
  br label %rotate_ccw.exit

rotate_ccw.exit:                                  ; preds = %for.inc10.i188.rotate_ccw.exit_crit_edge, %for.body63.rotate_ccw.exit_crit_edge
  %add.ptr68 = getelementptr i8, ptr %src.2199, i32 %mul
  %add.ptr69 = getelementptr i8, ptr %dst.2201, i32 %d_cellsize.0
  %tobool62.not = icmp eq i32 %dec61, 0
  br i1 %tobool62.not, label %rotate_ccw.exit.finished_crit_edge, label %rotate_ccw.exit.for.body63_crit_edge

rotate_ccw.exit.for.body63_crit_edge:             ; preds = %rotate_ccw.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body63

rotate_ccw.exit.finished_crit_edge:               ; preds = %rotate_ccw.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %finished

finished:                                         ; preds = %rotate_ccw.exit.finished_crit_edge, %rotate_cw.exit.finished_crit_edge, %rotate_ud.exit.finished_crit_edge, %for.cond.preheader.finished_crit_edge, %for.cond48.preheader.finished_crit_edge, %for.cond60.preheader.finished_crit_edge, %if.end37.finished_crit_edge, %if.end7.i.finished_crit_edge, %if.then29.finished_crit_edge, %land.lhs.true.finished_crit_edge
  %err.0 = phi i32 [ 0, %land.lhs.true.finished_crit_edge ], [ 0, %if.end37.finished_crit_edge ], [ -12, %if.end7.i.finished_crit_edge ], [ -12, %if.then29.finished_crit_edge ], [ 0, %for.cond.preheader.finished_crit_edge ], [ 0, %for.cond48.preheader.finished_crit_edge ], [ 0, %for.cond60.preheader.finished_crit_edge ], [ 0, %rotate_ud.exit.finished_crit_edge ], [ 0, %rotate_cw.exit.finished_crit_edge ], [ 0, %rotate_ccw.exit.finished_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_rotate_cw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_rotate_ud(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_rotate_ccw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
